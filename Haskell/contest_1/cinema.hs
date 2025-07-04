getPrice age
    | age >= 1 && age <= 17 = 15
    | age <= 59 = 30
    | age >= 60 = 20

main = do
    age1 <- readLn :: IO Int
    age2 <- readLn :: IO Int

    let totalPrice = getPrice age1 + getPrice age2
    print totalPrice