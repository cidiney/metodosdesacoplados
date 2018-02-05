function d = DuijDVi(Vi, Vj, Gij, Bij, deltai, deltaj, tap, yshunt)
d = -2*Vi*(tap*Bij+yshunt)+Vj*(Gij*sin(deltai-deltaj)-Bij*cos(deltai-deltaj));