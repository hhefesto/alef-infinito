module Main where

import Control.Concurrent

circle :: Floating a => a -> a
circle x
  | (isInfinite x) = 0
  | _ = circle (logBase 2 x)

main :: Floating a -> IO()
main x = do
  threadDelay 10000000
  putStrLn (circle x)
