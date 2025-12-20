module LeapYear (isLeapYear) where

-- A leap year in the Gregorian calendar occurs:
-- on every year that is evenly divisible by 4
--   except every year that is evenly divisible by 100
--     unless the year is also evenly divisible by 40

-- 3 rules
-- 1) Leap day every 4 years
-- 2) No leap year if it is a new century
-- 3) unless it is divisible by 400

isLeapYear :: Integer -> Bool
isLeapYear year
  | divisibleBy year 400 = True
  | divisibleBy year 100 = False
  | divisibleBy year   4 = True 
  | otherwise            = False

divisibleBy :: Integer -> Integer -> Bool
divisibleBy year m =
  year `mod` m == 0

