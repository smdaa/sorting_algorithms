let rec bubble_sort a =
        let  rec _bubble_sort = function 
                | x :: x2 :: xs when x > x2 ->
                               x2 :: _bubble_sort (x :: xs)
                | x :: x2 :: xs ->
                               x :: _bubble_sort (x2 :: xs)
                | a -> a
        in 
        let t = _bubble_sort a in 
                if t = a then t
                else _bubble_sort t 
             
