import Data.List

getCamilaAge = head . tail . sort

main = do
    age1 <- readLn :: IO Int
    age2 <- readLn :: IO Int
    age3 <- readLn :: IO Int

    print $ getCamilaAge [age1, age2, age3]