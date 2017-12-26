function d = DqiDdj(i,j, V, G, B, delta)

delta = [0; delta];
soma = 0;
% for n=1:size(G,2)
%     if i~=n
%         soma = soma + V(n)*(G(i,n)*cos(delta(i)-delta(n))-B(i,n)*sin(delta(i)-delta(n)));
%     end
% end
n = j;
soma = V(n)*(G(i,n)*cos(delta(i)-delta(n))-B(i,n)*sin(delta(i)-delta(n)));

d = -V(i)*soma;