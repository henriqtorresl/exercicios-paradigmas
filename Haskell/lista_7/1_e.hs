-- Questão 1 item E
import Prelude

isOctNumber :: Int -> Bool
-- implementação não tácita:
-- isOctNumber number =
--         length isntOctNumberList == 0
--     where
--         str = show number
--         isntOctNumber char = char `elem` ['8', '9']
--         isntOctNumberList = filter (\e -> isntOctNumber e) str

-- implementação tácita:
isOctNumber = (== 0) . length . filter (\e -> e `elem` ['8', '9']) . show

main = do
    let result = isOctNumber 1203577
    print result