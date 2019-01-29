module Tests.Math.Vector2.Extra exposing (..)

import Expect exposing (Expectation)
import Math.Vector2 as V2 exposing (vec2)
import Math.Vector2.Extra as V2
import Math.Vector3 as V3 exposing (vec3)
import Test exposing (..)


-- UPDATE


updateX : Test
updateX =
    describe "updateX"
        [ test "changes x" <|
            \_ ->
                V2.updateX ((*) 2) (vec2 2 2)
                    |> Expect.equal (vec2 4 2)
        ]


updateY : Test
updateY =
    describe "updateY"
        [ test "changes y" <|
            \_ ->
                V2.updateY ((*) 2) (vec2 2 2)
                    |> Expect.equal (vec2 2 4)
        ]


updateAll : Test
updateAll =
    describe "updateAll"
        [ test "changes all" <|
            \_ ->
                V2.updateAll ((*) 2) (vec2 2 3)
                    |> Expect.equal (vec2 4 6)
        ]



-- OPERATIONS


div : Test
div =
    describe "div"
        [ test "divides all" <|
            \_ ->
                V2.div
                    (vec2 8 15)
                    (vec2 2 3)
                    |> Expect.equal (vec2 4 5)
        ]


mul : Test
mul =
    describe "mul"
        [ test "multiplies all" <|
            \_ ->
                V2.mul
                    (vec2 4 5)
                    (vec2 2 3)
                    |> Expect.equal (vec2 8 15)
        ]



-- CONVERSIONS


toVec3 : Test
toVec3 =
    describe "toVec3"
        [ test "creates a 3D Vector" <|
            \_ ->
                V2.toVec3 (vec2 1 2) 3
                    |> Expect.equal (vec3 1 2 3)
        ]


fromVec3 : Test
fromVec3 =
    describe "fromVec3"
        [ test "creates a 2D Vector" <|
            \_ ->
                V2.fromVec3 (vec3 1 2 3)
                    |> Expect.equal (vec2 1 2)
        ]
