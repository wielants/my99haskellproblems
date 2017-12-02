module Problem1 where

myLast :: [a] -> a
myLast [] = error "There is no last element in an empty list!"
myLast [x] = x
myLast (x:xs) = myLast xs
