isRightAmount n list p m =
        if p' >= p && m' >= m then "S" else "N"
    where
        p' = length $ filter (== 1) list
        m' = length $ filter (== 2) list

main = do
    n <- readLn :: IO Int
    sizesStr <- getLine
    let sizes = map (\e -> read e :: Int) $ words sizesStr
    qntP <- readLn :: IO Int
    qntM <- readLn :: IO Int

    putStrLn $ isRightAmount n sizes qntP qntM
