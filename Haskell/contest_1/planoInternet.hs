import Control.Monad

predictNextMonthPrice x ms = 
        nextMonthPrice
    where
        rest = foldl (\ acc e -> (acc + x) - e) 0 ms
        nextMonthPrice = x + rest

main = do
    x <- readLn :: IO Int
    n <- readLn :: IO Int
    ms <- replicateM n readLn :: IO [Int]

    print $ predictNextMonthPrice x ms