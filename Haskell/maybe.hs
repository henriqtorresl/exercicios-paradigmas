-- Para mostrar o Maybe melhor, vou implementar uma função head segura, pois se eu executar (head []) ele lança uma exceção
safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:xs) = Just x

main = do
    let resultado = safeHead [1, 2, 3]

    case resultado of
        Nothing    -> putStrLn "A lista estava vazia, não pude pegar o primeiro elemento."
        Just valor -> putStrLn ("O primeiro elemento é: " ++ show valor)