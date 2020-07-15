import System.Random
import Control.Monad

newRand :: IO String
newRand = show <$> (randomIO :: IO Int)

numbers :: IO [()]
numbers = replicateM 10 (newRand >>= putStrLn)
main :: IO ()
main = do
   _ <- numbers
   return ()
