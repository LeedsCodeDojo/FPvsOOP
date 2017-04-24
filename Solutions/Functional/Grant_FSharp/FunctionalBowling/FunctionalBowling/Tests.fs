module Tests

open NUnit.Framework
open FsUnit

open Bowling

[<Test>]
let ``simple scores should get the expected score`` () =
    calculate [1] |> should equal 1
    calculate [1;5;8;1] |> should equal 15

[<Test>]
let ``spare should include score of next ball`` () =
    calculate [5;5;5;0;0] |> should equal 20
    calculate [1;1;5;5;1;1;5;5;1;0;0] |> should equal 27

[<Test>]
let ``strike should include score of next two balls`` () =
    calculate [10;5;4;0;0] |> should equal 28
    calculate [10;1;1;10;1;1;0;0] |> should equal 28
    calculate [10;10;10;1;1;0;0] |> should equal 65

[<Test>]
let ``balls after 10th frame should not be counted separately`` () =
    calculate [1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;10;1;1] |> should equal 30

