import System.Random
import Control.Applicative

randAlpha :: IO Char
randAlpha = getStdRandom $ randomR ('A', 'Z')

dice :: IO Int
dice = getStdRandom $ randomR (1, 6)

add x y = return $ x + y

inc x = x + 1

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

  print =<< (add =<< return 1) =<< return 2
  print =<< inc <$> return 1