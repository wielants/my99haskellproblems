module Problem_1_10 where

-- 1)
myLast :: [a] -> a
myLast [x] = x
myLast (_:xs) = myLast xs
myLast [] = error "empty lists do not have a last element!"

myLast' :: [a] -> a
myLast' = head . reverse

-- 2)
myButLast :: [a] -> a
myButLast (x:[_]) = x
myButLast (_:xs) = myButLast xs

myButLast' :: [a] -> a
myButLast' xs = (reverse xs) !! 1

-- 3)
elementAt :: [a] -> Int -> a
elementAt (x:_) 1 = x
elementAt (_:xs) n
  | n > 1 = elementAt xs (n - 1)
  | otherwise = error "zero or negative index not allowed!"
elementAt [] _ = error "empty lists do not have elements!"

elementAt' :: [a] -> Int -> a
elementAt' xs n = xs !! (n - 1)
