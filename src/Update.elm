module Update exposing (update, Msg(..))

import Model exposing (Model)


type Msg
    = Up
    | Down
    | Right
    | Left


update : Msg -> Model -> Model
update msg model =
    case msg of
        Up ->
            { model | y = model.y + 30 }

        Down ->
            { model | y = model.y - 30 }

        Right ->
            { model | x = model.x + 30 }

        Left ->
            { model | x = model.x - 30 }
