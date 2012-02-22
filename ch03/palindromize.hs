palindromize :: [a] -> [a]
palindromize xs = xs ++ (reverse xs)
