--Adrian Biller A01018940
--ejercicio 1


minimum [x | x <- [1000..10000000], sum (map (mod x) [1..20]) == 0]
--division n = sum(map (mod n) [1..20])


-- ejercicio 2



isPrime k = null [ x | x <- [2..k - 1], k `mod`x  == 0]
-- prime num =  primenum 0 2
--               where primenum count num
--                       |isPrime == null = primenum count num+1
--                       |isPrime



prime = (filter isPrime[2..])!!10001



-- ejercicio 3


palindromo =  maximum [ x*y | x <- [100..999], y <- [100..999], reverse (show(x*y)) == show (x*y)]



--ejercicio 4
data Tree x = Empty | Node x (Tree x ) (Tree x) deriving (Show)

tree_list Empty = []
tree_list (Node n left right) = tree_list left ++ [n] ++ tree_list right
