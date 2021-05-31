module Test.Main where

import Prelude
import Data.Array.Search (largestLessThan, finalSatisfying)
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Test.Assert (assertEqual)

main :: Effect Unit
main = do
  testlargestLessThan
  testFinalSatisfying

testlargestLessThan :: Effect Unit
testlargestLessThan = do
  assertEqual
    { actual: largestLessThan [ 1, 2, 3, 4 ] 3
    , expected: Just 2
    }
  assertEqual
    { actual: largestLessThan [ 1, 2, 3, 4 ] 0
    , expected: Nothing
    }

testFinalSatisfying :: Effect Unit
testFinalSatisfying = do
  assertEqual
    { actual: finalSatisfying [ 1, 2, 3, 4 ] (\x -> mod x 2 == 1)
    , expected: Just 3
    }
  assertEqual
    { actual: finalSatisfying [ 1, 2, 3, 4 ] (\x -> mod x 2 == 3)
    , expected: Nothing
    }
