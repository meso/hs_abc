qsort []     = return []
--qsort (n:xs) = trace dbg $ qsort lt ++ [n] ++ qsort gteq
--    where
--        dbg  = "qsort " ++ show (n:xs) ++ " = qsort " ++
--               show lt ++ " ++ " ++ show [n] ++ " ++ " ++ show gteq
--        lt   = [x | x <- xs, x <  n]
--        gteq = [x | x <- xs, x >= n]


--qsort (n:xs) = do
--  putStrLn dbg
--  qlt   <- qsort lt
--  qgteq <- qsort gteq
--  return $ qlt ++ [n] ++ qgteq
--  where  
--    dbg  = "qsort " ++ show (n:xs) ++ " = qsort " ++
--             show lt ++ " ++ " ++ show [n] ++ " ++ " ++ show gteq
--    lt   = [x | x <- xs, x <  n]
--    gteq = [x | x <- xs, x >= n]

qsort (n:xs) = do
    putStrLn dbg
    qlt   <- qsort lt
    qgteq <- qsort gteq
    return $ qlt ++ [n] ++ qgteq
    where
        dbg  = "qsort " ++ show (n:xs) ++ " = qsort " ++
               show lt ++ " ++ " ++ show [n] ++ " ++ " ++ show gteq
        lt   = [x | x <- xs, x <  n]
        gteq = [x | x <- xs, x >= n]


main = do
    print =<< qsort [4, 6, 9, 8, 3, 5, 1, 7, 2]
