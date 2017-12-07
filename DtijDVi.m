function d = DtijDVi(Vi, Vj, Gij, Bij, deltai, deltaj, tap)
d = -2*tap*Gij*Vi+Vj*(Gij*cos(deltai-deltaj)+Bij*sin(deltai-deltaj));