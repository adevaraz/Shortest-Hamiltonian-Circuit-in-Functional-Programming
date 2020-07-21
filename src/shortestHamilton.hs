import Data.Matrix as M
import Data.Vector as V
import Data.List as L
import Data.Maybe

-- let theList = [ [0, 1, 6, 8],
--                 [1, 0, 1, 8],
--                 [6, 1, 0, 4],
--                 [8, 8, 4, 0]]

-- let theMatrix = fromLists theList

-- shortestHamiltonian (row) (max elm) (matrix) -> (list)
shortestHamiltonian :: Int -> Int -> Matrix Int -> [Int]
shortestHamiltonian n 0 _       = [n]
shortestHamiltonian n max mat   = n : shortestHamiltonian ((fromJust $ L.elemIndex (minFromList ((M.toLists mat)!!(n-1))) ((M.toLists mat)!!(n-1)))+1) (max-1) (M.transpose (scaleRow 0 n (M.transpose (scaleRow 0 n mat))))

minFromList :: [Int] -> Int
minFromList []        = -1
minFromList [x]       = x
minFromList (x:xs)    = minTwoVar x (minFromList xs)

minTwoVar :: Int -> Int -> Int
minTwoVar a b
    | a == 0    = b
    | b == 0    = a
    | a > b     = b
    | a < b     = a
    | a == b    = a