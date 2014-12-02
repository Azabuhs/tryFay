{-# LANGUAGE RebindableSyntax, OverloadedStrings #-}

import Fay.Text (fromString)
import JQuery
import Prelude

(>=>>) :: (a -> Fay b) -> (b -> Fay c) -> a -> Fay c
f >=>> g = \x -> f x >>= g

makeSquare :: JQuery -> Fay JQuery
makeSquare = addClass "square" >=>>
             setWidth 400 >=>>
             setHeight 400

-- `ready` is the same as jQuery(document).ready(%1);
-- You generally need to wait for this event to fire before modifying the DOM.
main :: Fay ()
main = ready $ do
       select "#ToMakeSquare" >>= makeSquare
       return ()
