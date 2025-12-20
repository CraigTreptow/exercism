module HelloWorld exposing (..)

helloWorld : Maybe String -> String
helloWorld name =
    "Hello, " ++ toString name ++ "!"