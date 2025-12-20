module Anagram (anagramsFor) where

import Data.List
import Data.Char

anagramsFor :: String -> [String] -> [String]
anagramsFor xs xss = filter (\x -> isAnagram xs x) xss

isAnagram :: String -> String -> Bool
isAnagram s1 s2
  | notSameLength s1 s2  = False
  | isItself s1 s2       = False
  | allCharsInEach s1 s2 = True
  | otherwise            = False

allCharsInEach :: String -> String -> Bool
allCharsInEach s1 s2 = Data.List.sort (map toLower s1) == Data.List.sort (map toLower s2)

isItself :: String -> String -> Bool
isItself s1 s2 = (map toLower s1) == (map toLower s2)

notSameLength :: String -> String -> Bool
notSameLength s1 s2 = (length s1) /= (length s2)
