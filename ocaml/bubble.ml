let rec is_sorted l =
  match l with 
  | h1::h2::t -> if h1 > h2 then false else is_sorted(h2::t)
  | _ -> true

(* TESTS *)
let%test _ = is_sorted [] = true
let%test _ = is_sorted [4;2;4;3;1] = false
let%test _ = is_sorted [1;2;3;4;5] = true
let%test _ = is_sorted [1;2;1;4;5] = false


let rec bubble_sort l =
  if (is_sorted l) then l 
  else 
  match l with 
  | h1::h2::t  -> if (h2 < h1) then bubble_sort(h2::(bubble_sort (h1::t))) else bubble_sort(h1::(bubble_sort (h2::t))) 
  | _ -> l


(* TESTS *)
let%test _ = bubble_sort [] =[]
let%test _ = bubble_sort [4;2;4;3;1] =[1;2;3;4;4]
let%test _ = bubble_sort [10;4;2;6;7] =[2;4;6;7;10]
