function d = DqiDVj(i,n, V, G, B, delta)
soma = 0;
delta = [0; delta];
% for n=1:size(G,2)
%     if i~=n
%         soma = soma + (G(i,n)*sin(delta(i)-delta(n))-B(i,n)*cos(delta(i)-delta(n)));
%     end
% end
d = V(i)*(G(i,n)*sin(delta(i)-delta(n))-B(i,n)*cos(delta(i)-delta(n)));