fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

fib2 n
    | n == 0    = 0
    | n == 1    = 1
    | otherwise = fib2 (n - 1) + fib2 (n - 2)

fib3 n = case n of
  0 -> 0
  1 -> 1
  _ -> fib3 (n - 1) + fib3 (n - 2)

main = do
  print $ fib 20
  print $ fib2 21
  print $ fib3 22