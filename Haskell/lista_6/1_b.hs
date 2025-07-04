-- Questão 1 item B
body :: [a] -> Maybe [a]
body list =
    if length list < 3 then
        Nothing
    else
        Just $ reverse $ tail aux
        where aux = reverse $ tail list

main = do
    let resultado1 = body [1, 2, 3, 4, 5] 
    let resultado2 = body [1]

    print resultado1
    print resultado2