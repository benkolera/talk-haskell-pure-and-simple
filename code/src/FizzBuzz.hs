module FizzBuzz (fizzbuzz) where

import Control.Monad (mapM_)

data Result = Number Integer | Fizz | Buzz | FizzBuzz deriving (Show,Eq)

fizzbuzz :: IO ()
fizzbuzz = mapM_ (print . result) [1..100]

result :: Integer -> Result
result n | n `mod` 15 == 0 = FizzBuzz
         | n `mod` 5  == 0 = Fizz
         | n `mod` 3  == 0 = Buzz
         | otherwise       = Number n
