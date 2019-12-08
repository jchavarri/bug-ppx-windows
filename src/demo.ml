let css xs = xs |> String.concat " "
let label x = x ^ "!"
let prop x = x

let foo = [%css [
  prop "1";
  prop "2";
]]

let bar ~x = [%css [
  prop x;
]]

let baz ~x ~y = [%css [
  prop x;
  prop y;
]]

let empty = [%css []]

type t = A | B

let fn1 x = [%css (
  match x with
  | A -> [ prop "a"; ]
  | B -> [ prop "b"; ]
)]

let () = Js.log "Hello, BuckleScript"
