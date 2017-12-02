module Problem2Spec where

import Test.Hspec
import Test.QuickCheck
import Problem2

main :: IO ()
main = do
  hspec $ do
    describe "myButLast" $ do
      it "returns last but one element of [1,2,3,4]" $ do
         myButLast [1,2,3,4] `shouldBe` 3
      it "returns last but one element of [x,y,z]" $ do
         myButLast ['x','y','z'] `shouldBe` 'y'
      it "returns last but one element of random [Char]" $
        property $ \xs -> length xs > 1 ==>
          myButLast xs == (last (init xs) :: [Char])
