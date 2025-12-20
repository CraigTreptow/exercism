module Clock (addDelta, fromHourMin, toString) where

import Text.Printf

data Clock = Clock { seconds :: Int }

instance Eq Clock where
  a == b = (seconds a) == (seconds b)

instance Show Clock where
  show c = printf "%02d:%02d" h m
    where
      h = secondsToHours (seconds c)
      m = secondsToMinutes (seconds c)

fromHourMin :: Int -> Int -> Clock
fromHourMin hour 60 =
  Clock { seconds = s }
  where s = (h * 60 * 60)
        h = (hour `mod` 24) + 1

fromHourMin hour minute =
  Clock { seconds = s }
  where s = (h * 60 * 60) + (m * 60)
        h = ((hour `mod` 24) + (minute `div` 60)) `mod` 24
        m = minute `mod` 60

secondsToHours :: Int -> Int
secondsToHours s = h `mod` 24
  where h = (s `div` 60) `div` 60

secondsToMinutes :: Int -> Int
secondsToMinutes s = m
  where m = (s `div`60) `mod` 60

toString :: Clock -> String
toString clock = show clock

addDelta :: Int -> Int -> Clock -> Clock
addDelta hour minute clock =
  Clock { seconds = s }
    where
      s = (seconds clock) + (hour * 60 * 60) + (minute * 60)

