module Problem1Spec where

import Test.Hspec
import Test.QuickCheck
import Problem1

main :: IO ()
main = do
  hspec $ do
    describe "myLast" $ do
      it "returns last element" $ do
         myLast [1,2,3,4] `shouldBe` 4
      it "returns last element" $ do
         myLast ['x','y','z'] `shouldBe` 'z'
