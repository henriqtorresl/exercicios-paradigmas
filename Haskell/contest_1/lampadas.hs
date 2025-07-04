checkSwitches list =
        foldl predicate (0, 0) list
    where
        updateState state = if state == 1 then 0 else 1
        predicate (a, b) switch
            | switch == 1 = (updateState a, b) -- apertou o primeiro interruptor, ele altera o estado apenas da lampada a
            | otherwise = (updateState a, updateState b) -- apertou o segundo interruptor, ele altera o estado das duas lampadas


main = do
    n <- readLn :: IO Int
    input <- getLine :: IO String
    let switches = map (\ e -> read e :: Int) $ words input
    
    let (a, b) = checkSwitches switches
    print a
    print b
