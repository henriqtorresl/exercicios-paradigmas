-- Questão 2 item A
import Prelude

eval :: [Int] -> Int -> Int
eval coeffs x = foldl (\acc a -> acc * x + a) 0 coeffs

main :: IO ()
main = do
    let result = eval [1, -5, 6] 2
    print result