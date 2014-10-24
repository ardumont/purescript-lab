module Chapter2 where

import Debug.Trace

iAmANumber = 
  let square x = x * x
    in square 42

iterate f 0 x = x
iterate f n x = iterate f (n - 1) (f x)

main = do
  trace "Hello, World!"
  print iAmANumber
  print $ iterate ((+) 1) 10 0
  

