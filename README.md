# Test GHCJS Linking

Run the following commands to build things
```
stack setup
stack exec -- ghcjs -O -o sharedBits -generate-base src/Onping/GHCJS/App.hs onping-ghcjs/Main.hs
stack exec -- ghcjs -O -o specificBits -use-base sharedBits.jsexe/out.base.symbs custom-table-live-vdom/custom-table-export/Main.hs
```

open `app1.html` in a browser.

If working correctly you should see a message in the console:

```
Hello App1!
```

current error message:

```
uncaught exception in Haskell main thread: TypeError: Cannot read property 't' of null

rts.js:8855 TypeError: Cannot read property 't' of null
    at h$ap_1_0 (rts.js:10892)
    at h$runThreadSlice (rts.js:9855)
    at h$runThreadSliceCatch (rts.js:9813)
    at h$mainLoop (rts.js:9808)
    at rts.js:3675
    at runIfPresent (rts.js:3693)
    at onGlobalMessage (rts.js:3734)

rts.js:10180 Uncaught h$ThreadAbortedError {code: 0}
```
