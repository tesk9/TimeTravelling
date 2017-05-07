module Styles
    exposing
        ( Classes(..)
        , css
        , class
        , id
        , classList
        , snippets
        )

import Css exposing (..)
import Css.Namespace exposing (namespace)
import Html.CssHelpers exposing (Namespace, withNamespace)


type Classes
    = Controls
    | World
    | Sky
    | Grass
    | Character
    | Head
    | Torso
    | Skirt
    | Legs
    | Leg


snippets : List Snippet
snippets =
    [ Css.class World
        [ position relative
        , height (px 500)
        , displayFlex
        , flexDirection column
        ]
    , Css.class Sky
        [ backgroundColor (hex "#add8e6")
        , flexGrow (num 2)
        ]
    , Css.class Grass
        [ backgroundColor (hex "008000")
        , flexGrow (num 1)
        ]
    , Css.class Character
        [ position absolute
        ]
    , Css.class Head
        [ borderRadius (pct 50)
        , backgroundColor (hex "#d2b48c")
        , width (px 20)
        , height (px 20)
        , marginLeft (px 10)
        ]
    , Css.class Torso
        [ height (px 30)
        , width (px 20)
        , marginTop (px 2)
        , marginLeft (px 10)
        , backgroundColor (hex "#ffc0cb")
        ]
    , Css.class Skirt
        [ borderBottom3 (px 20) solid (hex "0000ff")
        , borderLeft3 (px 10) solid transparent
        , borderRight3 (px 10) solid transparent
        , height zero
        , width (px 20)
        ]
    , Css.class Legs
        [ marginLeft (px 10)
        , displayFlex
        , width (px 20)
        , justifyContent spaceBetween
        ]
    , Css.class Leg
        [ backgroundColor (hex "#d2b48c")
        , height (px 10)
        , width (px 8)
        ]
    , Css.class Controls
        [ backgroundColor (hex "#808080")
        , displayFlex
        , justifyContent spaceAround
        , height (px 30)
        ]
    ]


{ class, classList, id } =
    currentNamespace


currentNamespace : Html.CssHelpers.Namespace String a b c
currentNamespace =
    withNamespace "TimeTravelling-"


css : String
css =
    snippets
        |> namespace currentNamespace.name
        |> stylesheet
        |> (\x -> [ x ])
        |> compile
        |> .css
