module Test.Main where

import Prelude
import Data.Array.Search
  ( some
  , every
  , findEachIndex
  , largest
  , largestBelow
  , largestWhere
  , smallest
  , smallestAbove
  , smallestWhere
  )
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Test.Assert (assertEqual)

empty :: Array Int
empty = []

main :: Effect Unit
main = do
  assertEqual
    { actual: some (\x -> x > 1) [ 1, 2, 3, 4 ]
    , expected: true
    }
  assertEqual
    { actual: some (\x -> x > 5) [ 1, 2, 3, 4 ]
    , expected: false
    }
  assertEqual
    { actual: every (\x -> x > 0) [ 1, 2, 3, 4 ]
    , expected: true
    }
  assertEqual
    { actual: every (\x -> x > 1) [ 1, 2, 3, 4 ]
    , expected: false
    }
  assertEqual
    { actual: findEachIndex (\x -> x > 1) [ 1, 2, 3, 4 ]
    , expected: [ 1, 2, 3 ]
    }
  assertEqual
    { actual: findEachIndex (\x -> x > 5) [ 1, 2, 3, 4 ]
    , expected: []
    }
  assertEqual
    { actual: smallest [ 1, 2, 3, 4 ]
    , expected: Just 1
    }
  assertEqual
    { actual: smallest empty
    , expected: Nothing
    }
  assertEqual
    { actual: largest [ 1, 2, 3, 4 ]
    , expected: Just 4
    }
  assertEqual
    { actual: largest empty
    , expected: Nothing
    }
  assertEqual
    { actual: smallestWhere (\x -> x > 1) [ 1, 2, 3, 4 ]
    , expected: Just 2
    }
  assertEqual
    { actual: smallestWhere (\x -> x > 5) [ 1, 2, 3, 4 ]
    , expected: Nothing
    }
  assertEqual
    { actual: largestWhere (\x -> x > 1) [ 1, 2, 3, 4 ]
    , expected: Just 4
    }
  assertEqual
    { actual: largestWhere (\x -> x > 5) [ 1, 2, 3, 4 ]
    , expected: Nothing
    }
  assertEqual
    { actual: smallestAbove 1 [ 1, 2, 3, 4 ]
    , expected: Just 2
    }
  assertEqual
    { actual: smallestAbove 5 [ 1, 2, 3, 4 ]
    , expected: Nothing
    }
  assertEqual
    { actual: largestBelow 2 [ 1, 2, 3, 4 ]
    , expected: Just 1
    }
  assertEqual
    { actual: largestBelow 1 [ 1, 2, 3, 4 ]
    , expected: Nothing
    }
