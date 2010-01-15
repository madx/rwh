lastButOne :: [a] -> a
lastButOne (x:_:[]) = x
lastButOne (x:xs) = lastButOne xs

-- *Main> lastButOne [1]
-- *** Exception: lastButOne.hs:(2,0)-(3,32): Non-exhaustive patterns in function lastButOne
