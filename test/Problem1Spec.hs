module Problem1Spec where

import Test.Hspec
import Test.QuickCheck
import Problem1

main :: IO ()
main = do
  hspec $ do
    describe "myLast" $ do
      it "returns last element of [1,2,3,4]" $ do
         myLast [1,2,3,4] `shouldBe` 4
      it "returns last element of [x,y,z]" $ do
         myLast ['x','y','z'] `shouldBe` 'z'
      it "returns last element of random [Char]" $
        property $ \xs -> not (null xs) ==>
          myLast xs == (last xs :: [Char])
      it "returns last element of random [Integer]" $
        property $ \xs -> not (null xs) ==>
          myLast xs == (last xs :: [Integer])
