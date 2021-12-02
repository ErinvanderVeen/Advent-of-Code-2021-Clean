module day2

import Data.Func
import Data.List
import StdEnv

:: Commands :== [Command]

:: Command
  = Forward Int
  | Down Int
  | Up Int

:: Delta :== (Int, Int)

input :: Commands
input =
  [ Forward 5
  , Down 5
  , Forward 8
  , Up 3
  , Down 8
  , Forward 2
  ]

Start = multiplyDelta $ foldl (\delta command -> addDelta delta $ toDelta command) (0, 0) input

toDelta :: Command -> Delta
toDelta (Forward n) = (n, 0)
toDelta (Down n) = (0, n)
toDelta (Up n) = (0, 0 - n)

addDelta :: Delta Delta -> Delta
addDelta (h1, v1) (h2, v2) = (h1 + h2, v1 + v2)

multiplyDelta :: Delta -> Int
multiplyDelta (h, v) = h * v
