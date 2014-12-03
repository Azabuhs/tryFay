{-# LANGUAGE RebindableSyntax, OverloadedStrings #-}

import Fay.Text (fromString)
import JQuery
import Prelude

makeSquare :: JQuery -> Fay JQuery
makeSquare = setWidth  400 >=>
             setHeight 400

makeBlack :: JQuery -> Fay JQuery
makeBlack = setCss "background-color" "black"


makeHide :: JQuery -> Fay JQuery
makeHide = hide Slow

makeHide :: JQuery -> Fay JQuery
makeHide = hide Slow

on "d"

main :: Fay ()
main = ready $ do
       select "#test" >>= makeSquare
       select "#test" >>= makeBlack
       select "#test" >>= makeHide
       return ()
