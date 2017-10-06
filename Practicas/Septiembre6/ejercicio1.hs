

data Point = Point Float Float deriving(Show)

data Shape = Circle Float | Rectangle Point Point deriving (Show)

--area (Circle r) = pi * r * r

area (Rectangle(Point x1 y1)(Point x2 y2)) = (x2-x1) * (y2-y1)


--definir una fecha
data Date = Date Int String Int deriving (Show)


get_day(Date day _ _) = day
get_month(Date _ month _) = month
get_year(Date _ _ year) = year

-- asi se le pone nombre a cada variable y read funciona para poder decir que tipo es cada variable
data Fecha = Fecha{day::Int, month::String, year::Int} deriving (Show, Read)


--let x = read "Fecha{day=10, month=\"march\", year=2016}"::Fecha


-- define un dato y sus datos pero sin tener que definirlos
data Pair key value = Pair key value deriving(Show)
-- let z = Pair 5 "hola"


-- asi se sabe que es una variable que tiene elementos concateniados de si mismo
data Lista a = Vacia | Concat a (Lista a) deriving Show

------------------------------ arbol binario

data Tree x = EmptyTree | Node x (Tree x) (Tree x) deriving Show

insertt x EmptyTree = Node x EmptyTree EmptyTree
insertt x (Node z le ri)
        | x == z = Node z le ri
        | x < z = Node z (insertt x le) ri
        | otherwise = Node z le (insertt x ri)


--
-- insertarr l EmptyTree = Node head(l) EmptyTree EmptyTree
-- insertarr l (Node z le ri)
--       | head(l) == z Node z le ri
--       | head(l) > z = Node z(insertarr tail(l) le ) ri
--       | head(l) < z = Node z le (insertarr tail(l) ri)
--       | l == [] = Node z le ri



-- ejercicio insertar arreglo en arbol
--insertarr [] (Node z le ri) = Node z le ri
insertarr l tree
            | length l == 0 = tree
            | otherwise = insertarr (tail l) (insertt (head l) tree)

create l = insertarr l Empty
