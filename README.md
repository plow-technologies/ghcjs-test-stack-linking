# Test GHCJS Linking

First inspect `stack.yaml` and change the compiler as necessary. Then run the
following commands to build things (you need `stack build` to get dependencies).

```
stack setup
stack build
stack exec -- ghcjs -O -o sharedBits -generate-base src/Lib.hs dummy/Main.hs
stack exec -- ghcjs -O -o app1 -use-base sharedBits.jsexe/out.base.symbs app1/Main.hs
stack exec -- ghcjs -O -o app2 -use-base sharedBits.jsexe/out.base.symbs app2/Main.hs
```

open `app1.html` in a browser.

If working correctly you should see a message in the console:

```
Hello App1!
```
