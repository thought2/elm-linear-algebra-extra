module Math.Vector2.Extra exposing (..)

import Math.Vector2 as V2 exposing (..)
import Math.Vector3 as V3 exposing (Vec3, vec3)
import Random exposing (Generator)


div : Vec2 -> Vec2 -> Vec2
div v1 v2 =
    vec2
        (getX v1 / getX v2)
        (getY v1 / getY v2)


mul : Vec2 -> Vec2 -> Vec2
mul v1 v2 =
    vec2
        (getX v1 * getX v2)
        (getY v1 * getY v2)


toVec3 : Vec2 -> Float -> Vec3
toVec3 v z =
    vec3 (getX v) (getY v) z


fromVec3 : Vec3 -> Vec2
fromVec3 v =
    vec2 (V3.getX v) (V3.getY v)


updateX : (Float -> Float) -> Vec2 -> Vec2
updateX f v =
    vec2 (f <| getX v) (getY v)


updateY : (Float -> Float) -> Vec2 -> Vec2
updateY f v =
    vec2 (getX v) (f <| getY v)


updateAll : (Float -> Float) -> Vec2 -> Vec2
updateAll f v =
    vec2 (f <| getX v) (f <| getY v)


random : Float -> Float -> Generator Vec2
random from to =
    Random.map2 vec2
        (Random.float from to)
        (Random.float from to)
