function d = DqiDVi(i,j, V, G, B, deltai, deltaj)
soma = 0;
for n=1:size(G,2)
    soma = soma + (G(i,j)*sin(deltai-deltaj)-B(i,j)*cos(deltai-deltaj));
end

d = soma;