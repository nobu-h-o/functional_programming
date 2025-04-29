let res1 = 
  let x = 9 in
  x * (let x = x/3 in x+x);;

Printf.printf "%d\n" res1

let res2 =
  let a=3 and b=4 in
  let f x = a*x + b in
  let a=5 and b=6 in f 2;;

Printf.printf "%d" res2



let rec member x lst =
  match lst with
  | [] -> false
  | h::t -> h = x || member x t

let rec union a b =
  match a with
  | [] -> b
  | h::t -> if member h b
            then union t b
            else h :: union t b
