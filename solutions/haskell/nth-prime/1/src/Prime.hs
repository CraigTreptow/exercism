module Prime (nth) where

nth :: Int -> Maybe Integer
nth 0 = Nothing
nth n = Just (last (take n (primes)))

-- Source: https://wiki.haskell.org/Prime_numbers#Sieve_of_Eratosthenes
-- genuine yet wasteful sieve of Eratosthenes

primes :: [Integer]
primes = eratos [2..]
    where
    eratos []     = []
    eratos (p:xs) = p : eratos (xs `minus` [p, p+p..])

minus :: Ord a => [a] -> [a] -> [a]
minus (x:xs) (y:ys) = case (compare x y) of
           LT -> x : minus  xs  (y:ys)
           EQ ->     minus  xs     ys 
           GT ->     minus (x:xs)  ys
minus  xs     _     = xs

