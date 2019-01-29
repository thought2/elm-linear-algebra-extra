module Tests.Math.Vector3.Extra exposing (..)

import Expect exposing (Expectation)
import Math.Vector2 as V2 exposing (vec2)
import Math.Vector2.Extra as V2
import Math.Vector3 as V3 exposing (vec3)
import Math.Vector3.Extra as V3
import Test exposing (..)


-- UPDATE


updateX : Test
updateX =
    describe "updateX"
        [ test "changes x" <|
            \_ ->
                V3.updateX ((*) 2) (vec3 3 4 5)
                    |> Expect.equal (vec3 6 4 5)
        ]


updateY : Test
updateY =
    describe "updateY"
        [ test "changes y" <|
            \_ ->
                V3.updateY ((*) 2) (vec3 3 4 5)
                    |> Expect.equal (vec3 3 8 5)
        ]


updateZ : Test
updateZ =
    describe "updateZ"
        [ test "changes z" <|
            \_ ->
                V3.updateZ ((*) 2) (vec3 3 4 5)
                    |> Expect.equal (vec3 3 4 10)
        ]


updateAll : Test
updateAll =
    describe "updateAll"
        [ test "changes all" <|
            \_ ->
                V3.updateAll ((*) 2) (vec3 3 4 5)
                    |> Expect.equal (vec3 6 8 10)
        ]



-- -- OPERATIONS


div : Test
div =
    describe "div"
        [ test "divides all" <|
            \_ ->
                V3.div
                    (vec3 4 6 8)
                    (vec3 2 3 4)
                    |> Expect.equal (vec3 2 2 2)
        ]


mul : Test
mul =
    describe "mul"
        [ test "multiplies all" <|
            \_ ->
                V3.mul
                    (vec3 2 3 4)
                    (vec3 5 6 7)
                    |> Expect.equal (vec3 10 18 28)
        ]
