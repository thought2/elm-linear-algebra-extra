module Math.Vector3.Extra exposing (..)

{-| Some convenient functions to work with 3D Vectors.


# Update

@docs updateX, updateY, updateZ, updateAll


# Operations

@docs div, mul


# Conversions

@docs toVec2, fromVec2, fromColor

-}

import Color exposing (Color)
import Math.Vector2 as V2 exposing (Vec2, vec2)
import Math.Vector3 as V3 exposing (..)


-- UPDATE


{-| Apply a function to the x component of a vector
-}
updateX : (Float -> Float) -> Vec3 -> Vec3
updateX f v =
    vec3 (f <| getX v) (getY v) (getZ v)


{-| Apply a function to the y component of a vector
-}
updateY : (Float -> Float) -> Vec3 -> Vec3
updateY f v =
    vec3 (getX v) (f <| getY v) (getZ v)


{-| Apply a function to the z component of a vector
-}
updateZ : (Float -> Float) -> Vec3 -> Vec3
updateZ f v =
    vec3 (getX v) (getY v) (f <| getZ v)


{-| Apply a function to all components of a vector
-}
updateAll : (Float -> Float) -> Vec3 -> Vec3
updateAll f v =
    vec3 (f <| getX v) (f <| getY v) (f <| getZ v)



-- OPERATIONS


{-| Vector division: a / b
-}
div : Vec3 -> Vec3 -> Vec3
div v1 v2 =
    vec3
        (getX v1 / getX v2)
        (getY v1 / getY v2)
        (getZ v1 / getZ v2)


{-| Vector multiplication: a * b
-}
mul : Vec3 -> Vec3 -> Vec3
mul v1 v2 =
    vec3
        (getX v1 * getX v2)
        (getY v1 * getY v2)
        (getZ v1 * getZ v2)



-- CONVERSIONS


{-| Convert a 3D vector to a 2D vector
-}
toVec2 : Vec3 -> Vec2
toVec2 v =
    vec2 (getX v) (getY v)


{-| Create a 3D Vector from a 2D vector and a z-value
-}
fromVec2 : Vec2 -> Float -> Vec3
fromVec2 v z =
    vec3 (V2.getX v) (V2.getY v) z


{-| Create a 3D Vector from a Color
-}
fromColor : Color -> Vec3
fromColor color =
    let
        { red, green, blue, alpha } =
            Color.toRgb color
    in
    vec3
        (toFloat red / 255)
        (toFloat green / 255)
        (toFloat blue / 255)
