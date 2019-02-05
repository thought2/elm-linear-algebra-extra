module Math.Vector4.Extra exposing (..)

{-| Some convenient functions to work with 4D Vectors.

@docs fromColor

-}

import Color exposing (Color)
import Math.Vector4 as V4 exposing (Vec4, vec4)


{-| Create a 4D Vector from a Color
-}
fromColor : Color -> Vec4
fromColor color =
    let
        { red, green, blue, alpha } =
            Color.toRgb color
    in
    vec4
        (toFloat red / 255)
        (toFloat green / 255)
        (toFloat blue / 255)
        alpha
