module View exposing (view)

import Html exposing (..)
import Html.Attributes
import Html.Events exposing (onClick)
import Html.CssHelpers
import Model exposing (Model)
import Styles exposing (..)
import Update exposing (Msg(..))


view : Model -> Html Msg
view model =
    div
        []
        [ Html.CssHelpers.style css
        , viewWorld model
        , div [ class [ Controls ] ]
            [ button [ onClick Left ] [ text "Left" ]
            , button [ onClick Right ] [ text "Right" ]
            , button [ onClick Up ] [ text "Up" ]
            , button [ onClick Down ] [ text "Down" ]
            ]
        ]


viewWorld : Model -> Html Msg
viewWorld model =
    div
        [ class [ World ] ]
        [ div [ class [ Sky ] ] []
        , div [ class [ Grass ] ] []
        , viewCharacter model
        ]


viewCharacter : Model -> Html msg
viewCharacter { x, y } =
    div
        [ class [ Character ]
        , Html.Attributes.style
            [ ( "bottom", toString y ++ "px" )
            , ( "left", toString x ++ "px" )
            ]
        ]
        [ div [ class [ Head ] ] []
        , div [ class [ Torso ] ] []
        , div [ class [ Skirt ] ] []
        , legs
        ]


legs : Html msg
legs =
    div [ class [ Legs ] ] [ leg, leg ]


leg : Html msg
leg =
    div [ class [ Leg ] ] []
