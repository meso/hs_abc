module Main where

fact 1 = 1
fact n = n * fact (n - 1)

--fact n
--    | n == 1    = 1
--    | otherwise = n * fact (n - 1)

main = do
  print $ fact 5