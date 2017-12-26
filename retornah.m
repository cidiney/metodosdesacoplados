function h = retornah(deltak, Vk, Y)

%Z = [[t12 t31 P2 P4]'; [u12 u31 Q2 Q4 V2 V3]']
h = zeros(10,1);

h(1) = -0*real(Y(1,2))*Vk(1)^2+Vk(1)*Vk(2)*(real(Y(1,2))*cos(0-deltak(1))+imag(Y(1,2))*sin(0-deltak(1)));
h(2) = -0*real(Y(3,1))*Vk(3)^2+Vk(3)*Vk(1)*(real(Y(3,1))*cos(deltak(2)-0)+imag(Y(3,1))*sin(deltak(2)-0));
h(3) = Vk(2)*(Vk(1)*(real(Y(2,1))*cos(deltak(1)-0)+imag(Y(2,1))*sin(deltak(1)-0))+Vk(4)*(real(Y(2,4))*cos(deltak(1)-deltak(3))+imag(Y(2,4))*sin(deltak(1)-deltak(3))));
h(4) = Vk(4)*(Vk(2)*(real(Y(4,2))*cos(deltak(3)-deltak(1))+imag(Y(4,2))*sin(deltak(3)-deltak(1)))+Vk(3)*(real(Y(4,3))*cos(deltak(3)-deltak(2))+imag(Y(4,3))*sin(deltak(3)-deltak(2))));
h(5) = -Vk(1)^2*(0*imag(Y(1,2))+0.05125)+Vk(1)*Vk(2)*(real(Y(1,2))*sin(0-deltak(1))-imag(Y(1,2))*cos(0-deltak(1)));
h(6) = -Vk(3)^2*(0*imag(Y(3,1))+0.03875)+Vk(3)*Vk(1)*(real(Y(3,1))*sin(deltak(2)-0)-imag(Y(3,1))*cos(deltak(2)-0));
h(7) = Vk(2)*(Vk(1)*(real(Y(2,1))*sin(deltak(1)-0)-imag(Y(2,1))*cos(deltak(1)-0))+Vk(4)*(real(Y(2,4))*sin(deltak(1)-deltak(3))-imag(Y(2,4))*cos(deltak(1)-deltak(3))));
h(8) = Vk(4)*(Vk(2)*(real(Y(4,2))*sin(deltak(3)-deltak(1))-imag(Y(4,2))*cos(deltak(3)-deltak(1)))+Vk(3)*(real(Y(4,3))*sin(deltak(3)-deltak(2))-imag(Y(4,3))*cos(deltak(3)-deltak(2))));
h(9) = Vk(2);
h(10) = Vk(3);
