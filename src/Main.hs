-- src/Main.hs

module Main where

main :: IO ()
main = do
    putStr "Please entry the number of vertices: "
    n <- getLine

    -- read matrix