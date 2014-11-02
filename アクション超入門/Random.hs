import System.Random

randAlpha :: IO Char
randAlpha = getStdRandom $ randomR ('A', 'Z')

dice :: IO Int
dice = getStdRandom $ randomR (1, 6)

main = do
  r <- randAlpha
  print r
  r <- randAlpha
  print r
  r <- randAlpha
  print r

  let r' = randAlpha
  r'' <- r'
  print r''

  print =<< randAlpha
  randAlpha >>= print

  r <- dice
  print r
  r <- dice
  print r
  r <- dice
  print r
  