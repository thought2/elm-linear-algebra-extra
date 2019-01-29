module Math.Vector2.Extra exposing (..)

{-| Some convenient functions to work with 3D Vectors.


# Update

@docs updateX, updateY, updateAll


# Operations

@docs div, mul


# Conversions

@docs toVec3, fromVec3


# Random

@docs random

-}

import Math.Vector2 as V2 exposing (..)
import Math.Vector3 as V3 exposing (Vec3, vec3)
import Random exposing (Generator)


-- UPDATE


{-| Apply a function to the x component of a vector
-}
updateX : (Float -> Float) -> Vec2 -> Vec2
updateX f v =
    vec2 (f <| getX v) (getY v)


{-| Apply a function to the y component of a vector
-}
updateY : (Float -> Float) -> Vec2 -> Vec2
updateY f v =
    vec2 (getX v) (f <| getY v)


{-| Apply a function to all components of a vector
-}
updateAll : (Float -> Float) -> Vec2 -> Vec2
updateAll f v =
    vec2 (f <| getX v) (f <| getY v)



-- OPERATIONS


{-| Vector division: a / b
-}
div : Vec2 -> Vec2 -> Vec2
div v1 v2 =
    vec2
        (getX v1 / getX v2)
        (getY v1 / getY v2)


{-| Vector multiplication: a * b
-}
mul : Vec2 -> Vec2 -> Vec2
mul v1 v2 =
    vec2
        (getX v1 * getX v2)
        (getY v1 * getY v2)



-- CONVERSIONS


{-| Create a 3D Vector from a 2D vector and a z-value
-}
toVec3 : Vec2 -> Float -> Vec3
toVec3 v z =
    vec3 (getX v) (getY v) z


{-| Convert a 3D vector to a 2D vector
-}
fromVec3 : Vec3 -> Vec2
fromVec3 v =
    vec2 (V3.getX v) (V3.getY v)



-- RANDOM


random : Float -> Float -> Generator Vec2
random from to =
    Random.map2 vec2
        (Random.float from to)
        (Random.float from to)
