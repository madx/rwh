data List a = Cons a (List a)
            | Nil
              deriving (Show)

fromList :: [a] -> List a
fromList (x:xs) = Cons x (fromList xs)
fromList _      = Nil

toList :: List a -> [a]
toList (Cons x xs) = x : toList xs
toList _           = []

{-
  *Main> fromList [1,2,3]
  Cons 1 (Cons 2 (Cons 3 Nil))
  *Main> toList it
  [1,2,3]
 -}
