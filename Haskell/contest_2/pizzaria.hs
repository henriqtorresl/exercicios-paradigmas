qntFatias g p =
        qntAmigos
    where
        qntFatiasPizzaGrande = g * 8
        qntFatiasPizzaPequena = p * 4
        totalFatias = qntFatiasPizzaGrande + qntFatiasPizzaPequena
        qntAmigos = totalFatias - 2

main = do
    g <- readLn :: IO Int
    p <- readLn :: IO Int

    let qntAmigos = qntFatias g p

    print qntAmigos