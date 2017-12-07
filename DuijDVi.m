function d = DuijDVi(Vi, Vj, Gij, Bij, deltai, deltaj, tap)
d = -2*Vi*(tap*Bij+Bij/2)+Vj*(Gij*sin(deltai-deltaj)-Bij*cos(deltai-deltaj));