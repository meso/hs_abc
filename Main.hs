module Main where

first (_:x:_) = x

main = do
  print $ first [1..5]
  print $ first "abcdef"