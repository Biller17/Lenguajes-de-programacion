-- ejercicio condiciones para z^2=x^2+y^2
[(x,y,z) | x<-[1..1000], y<-[1..1000], z<-[1..1000], z^2 == x^2 + y^2]


-- ejercicio cuantos negativos

length[x | x<-[-1000 .. 1000], x>0]


-- ejercicio suma de impares abajo de 1000000

sum[x | x<-[1..1000000], mod x 2 == 1]


-- ejercicio pasar a mayusculas
--map toUpper [x | x <- "haskell"]


maxlist[] = error "e"
maxlist[e] = e
maxlist(h:t) = max h (maxlist t)


factorial 0 = 1
factorial 1 = 1
factorial x = x * (factorial x-1)

lastt a [] = error "e"
lastt a b 0 = b
lastt a b c = a!!length b ++ (lastt a-1 b)
