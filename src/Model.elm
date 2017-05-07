module Model exposing (..)


type alias Model =
    { x : Int
    , y : Int
    }


init : Model
init =
    { x = 0, y = 0 }
