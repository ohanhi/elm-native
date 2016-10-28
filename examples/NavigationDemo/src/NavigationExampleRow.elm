module NavigationExampleRow exposing (button, label)

import NativeUi as Ui exposing (Node, Property, string, style)
import NativeUi.Elements exposing (touchableHighlight, text, view)
import NativeUi.Events as Events exposing (onPress)
import NativeUi.Style as Style
import Navigation exposing (underlayColor)


label : String -> Node msg
label label =
    view [ Ui.style styleRow ]
        [ text
            [ Ui.style
                [ Style.fontSize 17 ]
            ]
            [ Ui.string label ]
        ]


button : String -> msg -> Node msg
button label onPressMsg =
    touchableHighlight
        [ style styleRow
        , underlayColor "#D0D0D0"
        , Events.onPress onPressMsg
        ]
        [ text
            [ Ui.style
                [ Style.fontSize 17
                , Style.fontWeight "500"
                ]
            ]
            [ Ui.string label ]
        ]


styleRow : List Style.Style
styleRow =
    [ Style.padding 15
    , Style.backgroundColor "white"
    , Style.borderBottomWidth 1
    , Style.borderBottomColor "#CDCDCD"
    ]