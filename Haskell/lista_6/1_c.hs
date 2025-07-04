-- Questão 1 item C
median :: [a] -> Maybe a
median list 
    | length list == 0 = Nothing
    | otherwise =
        if mod size 2 == 0 then
            Just $ head $ drop pair list
        else
            Just $ head $ drop odd list
        where 
            size = length list
            pair = (size `div`  2) - 1    -- elemento do meio se for par
            odd = (size - 1) `div` 2      -- elemento do meio se for impar

main = do
    let resultado1 = median [1, 2, 3, 4, 5, 6]
    let resultado2 = median ([]  :: [Int])

    print resultado1
    print resultado2