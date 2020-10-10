let rec insert e l =
 match l with 
 [] -> [e]
 | h::t -> if e < h then e::l else h :: insert e t

(* TESTS *)
let%test _ = insert 3 []=[3]
let%test _ = insert 3 [2;4;5]=[2;3;4;5]
let%test _ = insert 6 [3;2;1]=[3;2;1;6]


let rec insertion_sort l =  
 match l with 
 [] -> []
 | h :: t -> insert h (insertion_sort t)

(* TESTS *)
let%test _ = insertion_sort [] =[]
let%test _ = insertion_sort [4;2;4;3;1] =[1;2;3;4;4]
