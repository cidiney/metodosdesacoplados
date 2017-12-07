function d = DpiDVj(i,j, V, G, B, deltai, deltaj)
soma = 0;
for n=1:size(G,2)
    soma = soma + V(n)*(G(i,j)*cos(deltai-deltaj)+B(i,j)*sin(deltai-deltaj));
end

d = V(i)*soma;