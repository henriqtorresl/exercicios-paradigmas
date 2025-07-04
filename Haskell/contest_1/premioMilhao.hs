import Control.Monad

timeInDays list = length . takeWhile (< 1000000) $ scanl (+) 0 list
        
main = do
    n <- readLn :: IO Int
    accessPerDay <- replicateM n readLn :: IO [Int]

    print $ timeInDays accessPerDay
