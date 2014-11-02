mmerge xs [] = xs
mmerge [] ys = ys
mmerge (x:xs) (y:ys)
  | x < y     = x : mmerge xs (y:ys)
  | otherwise = y : mmerge (x:xs) ys

msort [] = []
msort [x] = [x]
msort xs = mmerge (msort (take h xs)) (msort (drop h xs))
  where
    h = (length xs) `div` 2

main = do
  print $ mmerge [4, 9, 13] [2, 3, 7, 11]
  print $ msort  [9, 4, 13, 3, 7, 2, 11]