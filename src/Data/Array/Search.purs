module Data.Array.Search
  ( every
  , findEachIndex
  , largest
  , largestBelow
  , largestWhere
  , smallest
  , smallestAbove
  , smallestWhere
  , some
  ) where

import Prelude
import Data.Array (filter, foldl, head, reverse, snoc, sort)
import Data.FoldableWithIndex (foldlWithIndex)
import Data.Maybe (Maybe)

some :: forall a. (a -> Boolean) -> Array a -> Boolean
some f arr = foldl (\acc x -> acc || f x) false arr

every :: forall a. (a -> Boolean) -> Array a -> Boolean
every f arr = foldl (\acc x -> acc && f x) true arr

findEachIndex :: forall a. (a -> Boolean) -> Array a -> Array Int
findEachIndex f arr = foldlWithIndex collect [] arr
  where
  collect i acc x
    | f x = snoc acc i
    | otherwise = acc

smallest :: forall a. Ord a => Array a -> Maybe a
smallest arr = head $ sort arr

largest :: forall a. Ord a => Array a -> Maybe a
largest arr = head <<< reverse <<< sort $ arr

smallestWhere :: forall a. Ord a => (a -> Boolean) -> Array a -> Maybe a
smallestWhere f arr = smallest $ filter f arr

largestWhere :: forall a. Ord a => (a -> Boolean) -> Array a -> Maybe a
largestWhere f arr = largest $ filter f arr

smallestAbove :: forall a. Ord a => a -> Array a -> Maybe a
smallestAbove n arr = smallest $ filter (\x -> x > n) arr

largestBelow :: forall a. Ord a => a -> Array a -> Maybe a
largestBelow n arr = largest $ filter (\x -> x < n) arr
