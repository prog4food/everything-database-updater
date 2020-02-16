@echo off
SET PATH=C:\Windows\Microsoft.NET\Framework\v2.0.50727;%PATH%
csc.exe /nologo /optimize+ /platform:x86 /target:winexe /out:app.exe app.cs