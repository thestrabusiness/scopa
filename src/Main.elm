module Main exposing (main)

import Browser exposing (Document)
import Html exposing (Html, div)
import Html.Attributes exposing (class)


init : () -> ( Model, Cmd Msg )
init () =
    ( {}, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


viewBoard : Html Msg
viewBoard =
    div []
        [ viewCard
        , viewCard
        , viewCard
        , viewCard
        ]


viewCard : Html Msg
viewCard =
    div [ class "card" ] []


view : Model -> Document Msg
view model =
    { title = "Scopa"
    , body =
        [ div []
            [ viewBoard
            ]
        ]
    }


type Msg
    = NoOp


type alias Model =
    {}


main : Program () Model Msg
main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }
