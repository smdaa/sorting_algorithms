let rec split l =
 match l with 
 [] -> [],[]
 | h1::h2::t -> (h1 :: (fst (split t))),(h2 :: (snd (split t)))
 | h::t -> ([h],t)

(* TESTS *)
let%test _ = split [1;2;3;4] = ([1;3],[2;4])
let%test _ = split [1;2;3] = ([1;3],[2])
let%test _ = split [1] = ([1],[])
let%test _ = split [] = ([],[]) 

let rec fuse l1 l2 =
 match l2 with 
 [] -> l1
 | h2::t2 -> match l1 with 
             [] -> l2
             | h1::t1 -> if h1 < h2 then h1 :: fuse l2 t1 else h2 :: fuse l1 t2 

(* TESTS *)
let%test _ = fuse [1;2;4;5;6] [3;4] = [1;2;3;4;4;5;6]
let%test _ = fuse [1;2;4] [3;4] = [1;2;3;4;4]
let%test _ = fuse [1;2;4] [3;4;8;9;10] = [1;2;3;4;4;8;9;10]
let%test _ = fuse [] [] = []
let%test _ = fuse [1] [] = [1]
let%test _ = fuse [] [1] = [1]
let%test _ = fuse [1] [2] = [1;2]

let rec merge_sort l =
 match l with 
  [] -> []
 |[a] -> [a]
 | _ -> fuse (merge_sort (fst (split l))) (merge_sort (snd (split l)))

(* TESTS *)
let%test _ = merge_sort [] =[]
let%test _ = merge_sort [4;2;4;3;1] =[1;2;3;4;4]
