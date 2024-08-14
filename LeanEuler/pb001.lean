-- If we list all the natural numbers below 10 that are multiples of 3 or 5,
-- we get 3, 5, 6 and 9. The sum of these multiples is 23.

-- Find the sum of all the multiples of 3 or 5 below 1000.

def multiples (k: Nat) (stopEx: Nat): List Nat := Id.run do
  let mut r: List (Nat) := []
  for i in [k:stopEx:k] do
    r <- r ++ [i]
  return r

def union [BEq α](a b: List α): List α :=
  List.foldr .insert a b

def sum (l: List Nat): Nat :=
  l.foldr (.+.) 0

#eval sum $ union (multiples 3 1000) (multiples 5 1000)
#eval union (multiples 3 1000) (multiples 5 1000) |> sum
