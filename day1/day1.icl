module day1

import Data.Func
import Data.List
import StdFunctions

sonar :: [Int]
sonar =
  [ 199
  , 200
  , 208
  , 210
  , 200
  , 207
  , 240
  , 269
  , 260
  , 263
  ]

Start = sum o map (\(a, b) -> if (a < b) 1 0) $ zip2 sonar (tail sonar)
