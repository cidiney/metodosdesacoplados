function H = retornaH11(deltak, Vk, Y)
H = [DtijDdj(Vk(1), Vk(2), real(Y(1,2)), imag(Y(1,2)), 0, deltak(1)) 0 0;
    0 DtijDj(Vk(3), Vk(1), real(Y(3,1)), imag(Y(3,1)), deltak(2), 0) 0;
    DpiDdi(1,2, Vk, real(Y), imag(Y), 0, deltak(1)), 0, 0;
    