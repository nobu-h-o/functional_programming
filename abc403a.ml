(*https://atcoder.jp/contests/abc403/tasks/abc403_a*)

let n = read_int()

let a = 
  String.split_on_char ' ' (read_line ())
  |> List.map int_of_string
  |> Array.of_list

let sum_odd_indices arr =
  let result = ref 0 in
  for i = 0 to (Array.length arr - 1) do
    (* For 1-indexed odd elements, we need 0-indexed even positions *)
    if i mod 2 = 0 then
      result := !result + arr.(i)
  done;
  !result

let () = 
  let result = sum_odd_indices a in
  Printf.printf "%d\n" result
