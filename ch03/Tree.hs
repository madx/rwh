data Tree a = Node a (Maybe (Tree a)) (Maybe (Tree a))
              deriving (Show)

--- Node 3 (Just (Node 2 Nothing Nothing)) (Just (Node 4 Nothing Nothing))

