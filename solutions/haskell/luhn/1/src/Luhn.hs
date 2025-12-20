module Luhn (isValid) where

import Data.Char

isValid :: String -> Bool
isValid "0"  = False
isValid " 0" = False
isValid s
  | length s <= 1 = False
  | otherwise     = isSumValid summedDigits
  where reversedString = reverse $ normalize s
        digits         = map digitToInt reversedString
        doubledDigits  = doubleDigits digits
        summedDigits   = sum doubledDigits

isSumValid :: Int -> Bool
isSumValid n = if n `mod` 10 == 0 then True else False

doubleDigits :: [Int] -> [Int]
doubleDigits []        = []
doubleDigits [x]       = [x]
doubleDigits (x:xx:xs) = x : (possiblyDouble xx) : doubleDigits xs

possiblyDouble :: Int -> Int
possiblyDouble x = if doubled > 9 then doubled - 9 else doubled
  where doubled = x + x

normalize :: String -> String
normalize word = filter isDigit word

