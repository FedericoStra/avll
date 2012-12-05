import Data.List

main = interact printAvll

{-
main = interact function

is equivalent to

main = do
    contents <- getContents
    putStr $ function contents
-}

printAvll :: String -> String
printAvll s = "Average line length: " ++ show (avll s) ++ "\n"

{-
avll :: String -> Float
avll str = let (t, n) = aux str 0 0 in fromIntegral(t) / fromIntegral(n)
    where aux [] t n = (t, n)
          aux (x:xs) t n
            | x == '\n' = aux xs t (n+1)
            | otherwise = aux xs (t+1) n
-}

avll :: String -> Float
avll = average . (map length) . lines

--average :: (Real a, Fractional b) => [a] -> b
--average xs = realToFrac (sum xs) / genericLength xs

average xs = realToFrac(t) / realToFrac(n)
    where (t, n) = foldl' (\(b, c) a -> (a+b, c+1)) (0, 0) xs
