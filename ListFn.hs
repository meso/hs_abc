module ListFn where

length' []     = 0
length' (_:xs) = 1 + length' xs

take' 0 _      = []
take' _ []     = []
take' n (x:xs) = x : take' (n - 1) xs

drop' 0 xs     = xs
drop' _ []     = []
drop' n (x:xs) = drop' (n - 1) xs

reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]

sum' []      = 0
sum' (x:xs)  = x + sum' xs

product' []     = 1
product' (x:xs) = x * product' xs

fact' n = product' [1..n]

main = do
  print $ length' "abcdef"
  print $ take' 3 "abcdef"
  print $ drop' 3 "abcdef"
  print $ reverse' "abcdef"
  print $ sum' [1, 2, 3, 4, 5]
  print $ product' [1, 2, 3, 4, 5]
  print $ fact' 5