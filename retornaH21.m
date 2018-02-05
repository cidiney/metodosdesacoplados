function H = retornaH21(deltak, Vk, Y)


H = [DuijDdj(Vk(1), Vk(2), real(Y(1,2)), imag(Y(1,2)), 0, deltak(2)) 0 0;
0 DuijDdi(Vk(3), Vk(1), real(Y(3,1)), imag(Y(3,1)), deltak(2), 0) 0;
DqiDdi(2, Vk, real(Y), imag(Y), deltak) 0 DqiDdj(2, 4, Vk, real(Y), imag(Y), deltak);
DqiDdj(4, 2, Vk, real(Y), imag(Y), deltak) DqiDdj(4, 3, Vk, real(Y), imag(Y), deltak) DqiDdi(4, Vk, real(Y), imag(Y), deltak);
0 0 0;
0 0 0];
