--reversa [lista]

--reverse_list l = rList [] l 0
  --              where rList r l n
    --                        | n == ((length l) - 1) = (l!!n:r)
      --                      | otherwise = rList (l!!n:r) l (n+1)



-- lista con maximo y minimo
max_min l = mm l 0 (l!!0) (l!!0)
              where mm list pos maxnumber minnumber
                        | pos == ((length list)) = (maxnumber, minnumber)
                        | maxnumber < list!!pos = mm list (pos + 1) (list!!pos) minnumber
                        | minnumber > list!!pos = mm list (pos + 1) maxnumber (list!!pos)
                        | otherwise = mm list (pos + 1) maxnumber minnumber
