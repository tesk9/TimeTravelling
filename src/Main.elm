module Main exposing (..)

import Html exposing (beginnerProgram)
import Model
import Update
import View


main : Program Never Model.Model Update.Msg
main =
    beginnerProgram
        { model = Model.init
        , update = Update.update
        , view = View.view
        }
