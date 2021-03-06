function d = DpiDdi(i,V, G, B, delta)
soma = 0;
delta = [0; delta];
for n=1:size(G,2)
    if n~=i
        soma = soma + V(n)*(-G(i,n)*sin(delta(i)-delta(n))+B(i,n)*cos(delta(i)-delta(n)));
    end
end

d = V(i)*soma;