function d = DuijDVj(Vi, Gij, Bij, deltai, deltaj)
d = Vi*(Gij*sin(deltai-deltaj)-Bij*cos(deltai-deltaj));