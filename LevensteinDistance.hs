module LevensteinDistance where

main :: IO ()
main = putStrLn testExpr

testExpr :: String
testExpr = show $ levensteinDistance "hello" "hellish"

levensteinDistance :: String -> String -> Int
levensteinDistance a "" = length a
levensteinDistance "" b = length b
levensteinDistance a b  =
  minimum [ levensteinDistance a1 b + 1
          , levensteinDistance a b1 + 1
          , levensteinDistance a1 b1 + if last a == last b then 0 else 2]
  where a1 = take (length a - 1) a
        b1 = take (length b - 1) b

