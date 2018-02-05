function H = retornaH22(deltak, Vk, Y)

H = [DuijDVi(Vk(1), Vk(2), real(Y(1,2)), imag(Y(1,2)), 0, deltak(1), -1, 0.05125) DuijDVj(Vk(2), real(Y(1,2)), imag(Y(1,2)), 0, deltak(1)) 0 0;
 DuijDVj(Vk(3), real(Y(3,1)), imag(Y(3,1)), deltak(2),0) 0 DuijDVi(Vk(3), Vk(1), real(Y(3,1)), imag(Y(3,1)), deltak(2), 0, -1, 0.03875) 0;
DqiDVj(2,1, Vk, real(Y), imag(Y), deltak) DqiDVi(2, Vk, real(Y), imag(Y), deltak) 0 DqiDVj(2, 4, Vk, real(Y), imag(Y), deltak);
0 DqiDVj(4,2, Vk, real(Y), imag(Y), deltak) DqiDVj(4,3, Vk, real(Y), imag(Y), deltak) DqiDVi(4, Vk, real(Y), imag(Y), deltak);
0 1 0 0;
0 0 1 0];
