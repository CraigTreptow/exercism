module CryptoSquare (encode) where

import Data.Char (toLower, isLetter, isDigit)
import Data.List (transpose)
import Data.List.Split (chunksOf)

-- I had a look at other solutions to learn about:
-- transpose
-- how to add a library not in base e.g. Data.List.Split
-- also, the sqSize is magic.  I don't know why it works in all cases

encode :: String -> String
encode s = unwords . transpose $ chunksOf sqSize normalizedString
  where normalizedString = normalize s
        sqSize           = ceiling (doubleSqSize normalizedString)

doubleSqSize :: String -> Double
doubleSqSize ns = sqrt . fromIntegral $ length ns

normalize :: String -> String
normalize word = filter lettersToKeep (map toLower word)

lettersToKeep :: Char -> Bool
lettersToKeep c = (isLetter c) || (isDigit c)

