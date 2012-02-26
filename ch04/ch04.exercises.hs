import Char

-- 1
asInt_fold :: String -> Int
asInt_fold s
  | head s == '-' = -1 * asInt_fold (tail s)
  | otherwise = foldl step 0 s where
                step a b = a*10 + digitToInt' b where
                    digitToInt' x = let i = digitToInt x
                          in if i < 10
                              then i
                              else error "non digit character"

-- 2
-- type ErrorMessage = String
-- asInt_either :: String -> Either String Int
-- asInt_either s
--   | head s == '-' = -1 * asInt_either (tail s)
--   | otherwise = foldl step (Right 0) s where
--               step (Left acc) _ = Left acc
--               step (Right acc) b = acc*10 + digitToInt' b where
--                     digitToInt' x = let i = digitToInt x
--                           in if i < 10
--                               then Right i
--                               else Left "non digit character"

-- 3
concat :: [[a]] -> [a]
concat xs = foldr step [] xs where
  step acc b = acc ++ b
