let rec partition l p =
  match l with 
  | [] -> [],[]
  | h::t -> let (l1, l2) = (partition t p) in if(h < p) then (h::l1,l2) else (l1,h::l2)

let rec quick_sort l =
  match l with 
  | [] -> [];
  | h::t -> let (l1, l2) = (partition t h) in (quick_sort l1)@(h::(quick_sort l2))

(* TESTS *)
let%test _ = quick_sort [] = []
let%test _ = quick_sort [4;2;4;3;1] = [1;2;3;4;4]
let%test _ = quick_sort [10;4;2;6;7] = [2;4;6;7;10]
