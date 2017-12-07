function d = DtijDVj(Vi, Gij, Bij, deltai, deltaj)
d = Vi*(Gij*cos(deltai-deltaj)+Bij*sin(deltaj-deltaj));