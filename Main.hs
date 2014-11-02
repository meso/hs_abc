module Main where

second (_:x:_) = x

main = do
  print $ second [1..5]
  print $ second (drop 2 "abcdef")