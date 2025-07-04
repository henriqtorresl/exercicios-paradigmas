-- Questão 1 item B
import Prelude

inverses :: [Int] -> [Double]
-- implementação não tácita:
-- inverses intList =
--         map (\e -> 1 / fromIntegral e) listWithNotNull
--     where
--         listWithNotNull = filter (\e -> e > 0) intList

-- implementação tácita:
inverses = map (\e -> 1 / fromIntegral e) . filter (\e -> e > 0)

main = do
    let result = inverses [0, 1, 0, 2, 0, 4]
    print result