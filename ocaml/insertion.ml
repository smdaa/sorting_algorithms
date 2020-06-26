let rec insert x a =
  match a with 
    [] -> [x]
  | h :: t -> if x <= h then x :: h :: t 
                        else h :: insert x t

let rec insertion_sort a =
    match a with 
      [] -> []
    | h :: t -> insert h (insertion_sort t)
