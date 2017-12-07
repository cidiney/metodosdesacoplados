function d = DuijDdj(Vi, Vj, Gij, Bij, deltai, deltaj)
d = -Vi*Vj*(Gij*cos(deltai-deltaj)+Bij*sin(deltai-deltaj));