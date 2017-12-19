bases = [100 230]; %[Sbase, Vbase]

%parametros de redes todos em p.u.
params = [1 2 0.01008 0.05040 10.25/100 0.05125;
    1 3 0.00744 0.03720 7.75/100 0.03875;
    2 4 0.00744 0.03720 7.75/100 0.03875;
    3 4 0.01272 0.06360 12.75/100 0.06375];

%% montagem do triangulo superior da matriz de admitância nodal Y
Y = zeros(max(max(params(:,1:2))));
for n=1:size(Y,1)
    for m=n+1:size(Y,2)
        aux = params(find(params(:,1)==n),:);
        if ~isempty(aux)
            aux = aux(find(aux(:,2)==m),:);
        else
            aux = params(find(params(:,2)==n),:);
            if ~isempty(aux)
                aux = aux(find(aux(:,1)==m),:);
            end
        end
        
        if ~isempty(aux)
            Y(n,m) = -1/(aux(3) + j*aux(4));
        else
            Y(n,m) = 0.0+j*0.0;
        end
    end
end

for n=1:size(Y,1)
    for m=1:size(Y,2)
        Y(m,n) = Y(n,m);
    end
end

for n=1:size(Y,1)
    Y(n,n) = -sum(Y(n,:));
end

%% Matriz de variâncias R
RPdelta = eye(4)*10^-4;
RQV = eye(6)*10^-4;
R = [[RPdelta zeros(size(RPdelta,1), size(RQV,2))];
    [zeros(size(RQV,1), size(RPdelta,2)) RQV]];

%especificando a tolerância
toler = min(R)*0.1;

%% Montagem do vetor de quantidades medidas do problema
%Z = [[t12 t31 P2 P4]'; [V2 V3 u12 u31 Q2 Q4]']
Z = [0.38041 -0.97527 -1.68090 2.38200 0.98381 0.96892 0.22423 -0.64493 -1.04220 1.30830]';

%% Montagem do vetor de estados
%x = [delta2 delta3 delta4 V1 V2 V3 V4]'
x = [0 0 0 1 1 1 1]'; %valores iniciais

%% Montagem das submatrizes
H11 = retornaH11();
H12 = retornaH12();
H21 = retornH21();
H22 = retornaH22();


%% Cálculo da matriz Gpdelta
Gpdelta = H11'*inv(R)*H11 + H21'*inv(R)*H21;

%% Cálculo da matriz GQV
GQV = H12'*inv(R)*H12 + H22'*inv(R)*H22;

%% ESTIMADOR DESACOPLADO NO ALGORITMO
Ddeltak = 10^6;
DeltaVk = 10^6;
deltak = [0 0 0]';
Vk = [1 1 1 1]';
while max(abs(Ddeltak, DeltaVk)) >= toler
    h = retornah();
    Ddeltak = inv(Gpdelta)*H11'*inv(RPdelta)*(Z(1:4) - h(1:4));
    deltak = deltak + Ddeltak;
    
    H22 = retornaH22();
    DeltaVk = inv(GQV)*H22'*inv(RQV)*(Z(5:end)-h(5:end));
    Vk = Vk + DeltaVk;
    
    H11 = retornaH11();
end


%% ESTIMADOR DESACOPLADO NO MODELO
