function H = retornaH11(deltak, Vk, Y)


H = [DtijDdj(Vk(1), Vk(2), real(Y(1,2)), imag(Y(1,2)), 0, deltak(1)) 0 0;

      0 DtijDdi(Vk(3), Vk(1), real(Y(3,1)), imag(Y(3,1)), deltak(2), 0) 0;

    DpiDdi(2, Vk, real(Y), imag(Y), deltak), 0, DpiDdj(2,4, Vk, real(Y), imag(Y), deltak);
    DpiDdj(4,2, Vk, real(Y), imag(Y), deltak), DpiDdj(4,3, Vk, real(Y), imag(Y), deltak), DpiDdi(4,Vk, real(Y), imag(Y), deltak)];