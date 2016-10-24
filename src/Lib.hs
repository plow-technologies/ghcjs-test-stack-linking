module Lib where

printHelloMsg :: String -> IO ()
printHelloMsg msg = print ("Hello " ++ msg ++ "!")


-- stack exec -- ghcjs -O -o sharedBits -generate-base src/Onping/GHCJS/App.hs onping-ghcjs/Main.hs
-- stack exec -- ghcjs -O -o specificBits -use-base sharedBits.jsexe/out.base.symbs custom-table-live-vdom/custom-table-export/Main.hs

-- stack exec -- ghcjs -O -o sharedBits -generate-base src/Lib.hs dummy/Main.hs
-- stack exec -- ghcjs -O -o app1 -use-base sharedBits.jsexe/out.base.symbs app1/Main.hs
-- stack exec -- ghcjs -O -o app2 -use-base sharedBits.jsexe/out.base.symbs app2/Main.hs
