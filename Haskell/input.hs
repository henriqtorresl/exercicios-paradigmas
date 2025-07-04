main = do
    putStrLn "Insira uma string: "
    str <- getLine
    putStrLn $ "A string inserida foi: '" ++ str ++ "'"