module Problem2 where

myButLast :: [a] -> a
myButLast [] = error "There is no last but one element in an empty list!"
myButLast (_:[]) = error "There is no last but one element in a list of one element!"
myButLast (x:_:[]) = x
myButLast (x:xs) = myButLast xs
