module Acronym (abbreviate) where

import Data.Char

abbreviate :: String -> String
abbreviate xs =
  -- works for phrases split by whitespace
  -- Fails for HyperText Markup Language
  -- map toUpper (concat (map (take 1) (words xs)))

  map toUpper (map head (words xs))

  --filter isKeeper xs

-- isKeeper :: Char -> Bool
-- isKeeper x =
  -- isUpper x ||
  -- (isLower x && x == 'o')
