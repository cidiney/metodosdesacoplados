function d = deltdeldeltaj(Vi, Vj, Gij, Bij, deltai, deltaj)
d = Vi*Vj*(Gij*sin(deltai-deltaj)-Bij*cos(deltai-deltaj));