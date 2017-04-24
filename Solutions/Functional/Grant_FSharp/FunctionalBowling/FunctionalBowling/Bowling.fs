module Bowling

let spare ball1 ball2 = ball1 + ball2 = 10
let strike ball1 = ball1 = 10

let rec calculate (score:int list) =
    match score with
    | [] -> 0
    | ball1::extra1::extra2::[] when strike ball1 -> ball1 + extra1 + extra2
    | ball1::rest when strike ball1 -> ball1 + (rest |> Seq.take 2 |> Seq.sum) + (calculate rest)
    | ball1::ball2::rest when spare ball1 ball2 -> ball1 + ball2 + Seq.head rest + (calculate rest)
    | ball1::ball2::rest -> ball1 + ball2 + (calculate rest)
    | ball1::_ -> ball1
