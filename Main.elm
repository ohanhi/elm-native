module Main where

import Time
import Signal
import Json.Encode
import ReactNative.ReactNative as RN
import ReactNative.NativeApp as NativeApp
import ReactNative.Style as Style
import VirtualDom

main =
  NativeApp.start { model = model, view = view, update = update, init = init }


type alias Model = Int


model : Model
model = 9000


view : Signal.Address Action -> Model -> RN.Node
view address count =
  RN.view
  [
    Style.style [
      Style.backgroundColor "pink"
    ]
  ]
  [
    RN.text
    [
      RN.onPress address Increment
    ]
    ("Hello: " ++ toString count)
  ]


type Action = Increment | Decrement


update : Action -> Model -> Model
update action model =
  case action of
    Increment -> model + 1
    Decrement -> model - 1


-- for the first vtree
port init : Signal ()
