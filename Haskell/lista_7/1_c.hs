-- Questão 1 item C
import Prelude

odds :: Int -> Int
-- implementação não tácita:
-- odds number =
--         length oddsList
--     where
--         str = show number
--         toNumber char = read [char] :: Int
--         oddsList = filter (\ e -> (toNumber e) `mod` 2 /= 0 ) str

-- implementação tácita:
odds = length . filter (\ e -> (read [e] :: Int) `mod` 2 /= 0 ) . show

main = do
    let result = odds 12345
    print result