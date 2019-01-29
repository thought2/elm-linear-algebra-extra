module Math.Vector3.Extra exposing (..)

import Math.Vector2 as V2 exposing (Vec2, vec2)
import Math.Vector3 as V3 exposing (..)
import Random exposing (Generator)


div : Vec3 -> Vec3 -> Vec3
div v1 v2 =
    vec3
        (getX v1 / getX v2)
        (getY v1 / getY v2)
        (getZ v1 / getZ v2)


mul : Vec3 -> Vec3 -> Vec3
mul v1 v2 =
    vec3
        (getX v1 * getX v2)
        (getY v1 * getY v2)
        (getZ v1 * getZ v2)


toVec2 : Vec3 -> Vec2
toVec2 v =
    vec2 (getX v) (getY v)


fromVec2 : Vec2 -> Float -> Vec3
fromVec2 v z =
    vec3 (V2.getX v) (V2.getY v) z


updateX : (Float -> Float) -> Vec3 -> Vec3
updateX f v =
    vec3 (f <| getX v) (getY v) (getZ v)


updateY : (Float -> Float) -> Vec3 -> Vec3
updateY f v =
    vec3 (getX v) (f <| getY v) (getZ v)


updateZ : (Float -> Float) -> Vec3 -> Vec3
updateZ f v =
    vec3 (getX v) (getY v) (f <| getZ v)


updateAll : (Float -> Float) -> Vec3 -> Vec3
updateAll f v =
    vec3 (f <| getX v) (f <| getY v) (f <| getZ v)


random : Float -> Float -> Generator Vec3
random from to =
    Random.map3 vec3
        (Random.float from to)
        (Random.float from to)
        (Random.float from to)
