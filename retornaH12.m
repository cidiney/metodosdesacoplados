function H = retornaH12(deltak, Vk, Y)


H = [DtijDVi(Vk(1), Vk(2), real(Y(1,2)), imag(Y(1,2)), 0, deltak(1), 1) DtijDVj(Vk(2), real(Y(1,2)), imag(Y(1,2)), 0, deltak(1)) 0 0;
DtijDVj(Vk(3), real(Y(3,1)), imag(Y(3,1)), deltak(2), 0) 0 DtijDVi(Vk(3), Vk(1), real(Y(3,1)), imag(Y(3,1)), deltak(2), 0, 1) 0;
DpiDVj(2, 1, Vk, real(Y), imag(Y), deltak) DpiDVi(2, Vk, real(Y), imag(Y), deltak) 0  DpiDVj(2, 4, Vk, real(Y), imag(Y), deltak)
0 DpiDVj(4, 2, Vk, real(Y), imag(Y), deltak) DpiDVj(4, 3, Vk, real(Y), imag(Y), deltak) DpiDVi(4, Vk, real(Y), imag(Y), deltak)];
