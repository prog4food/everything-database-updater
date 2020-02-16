@echo off
SET PATH=C:\Windows\Microsoft.NET\Framework\v2.0.50727;%PATH%
SET APP=evupd
csc.exe /nologo /optimize+ /platform:x86 /target:winexe /out:%APP%.exe %APP%.cs
