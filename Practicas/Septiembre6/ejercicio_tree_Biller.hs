
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
