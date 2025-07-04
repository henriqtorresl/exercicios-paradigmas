-- Questão 1 item D
import Prelude

palindromes :: String -> Int
-- implementação não tácita:
-- palindromes str = 
--         length isPalidromeList
--     where
--         list = words str
--         isPalindrome word = word == reverse word
--         isPalidromeList = filter (\ w -> isPalindrome w) list

-- implementação tácita:
palindromes =  length . filter (\ w -> w == reverse w) . words

main = do
    let result = palindromes "Aia mussum ou mirim" 
    print result