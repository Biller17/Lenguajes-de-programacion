

factorialTail x = ft(x-1) x
  where ft n res
  |  n == 0 = res
  |  otherwise = ft (n-1) (res * n)
