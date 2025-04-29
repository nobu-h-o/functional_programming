let rec power n x =
        if n=0 then 1
        else if n mod 2 = 0 then power(n/2) x * power(n/2) x
        else x*power(n-1)x;;

Printf.printf "2^3 = %d\n" (power 3 2);  (* Should print 8 *)
Printf.printf "3^4 = %d\n" (power 4 3);  (* Should print 81 *)
Printf.printf "5^0 = %d\n" (power 0 5);  (* Should print 1 *)
Printf.printf "2^10 = %d\n" (power 10 2);  (* Should print 1024 *)
