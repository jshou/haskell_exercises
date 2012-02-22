mean :: (Integral a, Fractional b) => [a] -> b
mean xs = (fromIntegral (sum xs)) / (fromIntegral (length xs))
