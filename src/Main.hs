module Main where



main :: Monoid Ordering a => a -> IO ()
main mempty = putStrLn 0;
main a = do
  putStr 1
  putStrLn a
  a <> a
