-- Questão 1 item A
second :: [a] -> Maybe a
second list =
    if length list == 1 then
        Nothing
    else
        Just $ head $ tail list

main = do
    let resultado1 = second [1,2,3]
    let resultado2 = second [1]


    print resultado1
    print resultado2
