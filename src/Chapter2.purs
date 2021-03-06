module Chapter2 where

import Prelude
import Debug.Trace
import Math (sqrt, pi)

diagonal :: Prim.Number -> Prim.Number -> Prim.Number
diagonal w h = sqrt (w * w + h * h)

iAmANumber =
  let square x = x * x
    in square 42

iterate f 0 x = x
iterate f n x = iterate f (n - 1) (f x)

circleArea r = pi * r * r

factorial n = if n < 2 then 1 else n * factorial (n-1)
