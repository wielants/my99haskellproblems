module Problem2Spec where

import Test.Hspec
import Test.QuickCheck
import Problem2

main :: IO ()
main = do
  hspec $ do
    describe "myButLast" $ do
      it "returns last but one element" $ do
         myButLast [1,2,3,4] `shouldBe` 3
      it "returns last but one element" $ do
         myButLast ['x','y','z'] `shouldBe` 'y'
