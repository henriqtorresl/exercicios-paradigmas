-- Questão 1 item A
import Data.Char
import Prelude

count :: String -> Int
-- implementação não tácita:
-- count str = 
--         length $ listFiltered list
--     where 
--         list = words str
--         lastCharIsLower strAux = isLower $ head $ reverse strAux
--         listFiltered list = filter (\str -> lastCharIsLower str) list

-- implementação tácita:
count = length . filter (\str -> isLower $ head $ reverse str) . words

main = do
    let result = count "Um exemplO de Contagem de PalavraS"
    print result

-- Minha função count conta a quantidade de palavras da string que terminam com letrar minúsculas