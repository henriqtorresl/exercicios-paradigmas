-- Questão 2 item L
count_vowels :: String -> Int
count_vowels [] = 0
count_vowels (x:xs)
  | x `elem` "aeiou" = 1 + count_vowels xs
  | otherwise        = count_vowels xs

main = do
    let result1 = count_vowels "paradigmas"   -- deve retornar 4
    let result2 = count_vowels "haskell"      -- deve retornar 2
    print result1
    print result2
