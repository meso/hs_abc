import Data.Char

rot13 ""     = ""
rot13 (x:xs) = shift13 x : rot13 xs

shift13 c
  | 'A' <= c && c <= 'M' ||
    'a' <= c && c <= 'm' = chr $ ord c + 13
  | 'N' <= c && c <= 'Z' ||
    'n' <= c && c <= 'z' = chr $ ord c - 13
  | otherwise = c

main = do
  let str = "Hello, World!"
  print $ rot13 str
  print $ rot13 (rot13 str)