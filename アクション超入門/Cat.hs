import System.Random

box :: IO Int
box = getStdRandom $ randomR (0, 1)

main = do
  cat <- box
  print $ ["Dead", "Alive"] !! cat
