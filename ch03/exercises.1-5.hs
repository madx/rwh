myLength :: [a] -> Int
myLength (x:xs) = 1 + myLength xs
myLength []     = 0

mean :: [Float] -> Float
mean xs = sum xs / fromIntegral (length xs)

palindrome :: [a] -> [a]
palindrome xs = xs ++ reverse xs

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs | length (xs) `mod` 2 /= 0 = False
                | otherwise                = palindrome half == xs
                  where half = take (length xs `div` 2) xs

intersperse :: a -> [[a]] -> [a]
intersperse s (x:xs) | null xs   = x
                     | otherwise = x ++ [s] ++ intersperse s xs
intersperse s [] = []


data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)
treeHeight (Node _ a b) = 1 + max (treeHeight a) (treeHeight b)
treeHeight Empty = 0
-- *Main> treeHeight (Node 1 (Node 2 (Node 3 Empty Empty) Empty) Empty)
-- 3

