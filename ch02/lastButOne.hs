-- file: ch02/lastButOne.hs
-- this function returns the second to last item in a list. it fails if the input list is length of one or less

lastButOne xs = if null (tail (tail xs))
                then head xs
                else lastButOne (tail xs)
