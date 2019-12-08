# Bug on CI when using ppx on Windows

Trying to isolate a bug that happens when using ppx on BuckleScript projects.

- Only on Windows
- Only on CI (but in different platforms, happens in Azure and Appveyor)

```
[1/3] [34mBuilding[39m [2msrc\demo.mlast[22m
FAILED: src/demo.mlast 
"D:\a\1\s\node_modules\bs-platform\lib\bsc.exe"  -w -30-40+6+7+27+32..39+44+45+101 -warn-error +101 -color always -ppx "D:\a\1\s\node_modules\@ahrefs\bs-emotion-ppx\bin\bs-emotion-ppx"  -o src\demo.mlast -bs-syntax-only -bs-binary-ast D:\a\1\s\src\demo.ml
File "D:\a\1\s\src\demo.ml", line 1:
Error: External preprocessor does not produce a valid file
Command line: D:\a\1\s\node_modules\@ahrefs\bs-emotion-ppx\bin\bs-emotion-ppx "C:\Users\VSSADM~1\AppData\Local\Temp\camlppx566a81" "C:\Users\VSSADM~1\AppData\Local\Temp\camlppx6d44b2"

File "_none_", line 1:
Error: I/O error: C:\Users\VSSADM~1\AppData\Local\Temp\camlppx566a81: No such file or directory
```


## Run locally
```
npm install
npm run build
```

## Sample failing CI run

https://dev.azure.com/javierchavarri/javier_chavarri/_build/results?buildId=7
