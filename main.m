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

%%