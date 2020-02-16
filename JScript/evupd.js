// Everything database background updаter v0.2
//               github.com/prog4food (c) 2o2o

var oShell = WScript.CreateObject('Wscript.Shell');
var oFso = WScript.CreateObject('Scripting.FileSystemObject');
fBase = oFso.GetFile(WScript.ScriptFullName).ParentFolder.Path + '\\Everything';
// Update...
oShell.Run('"###.exe" -instance "reindex" -config "###.ini" -db "###.db" -update -exit'.replace(/###/g, fBase), 1, true);
// Kill...
oShell.Run('"###.exe" -exit'.replace(/###/g, fBase), 1, true);
// Startup...
oShell.Run('"###.exe" -read-only -db "###.db" -startup'.replace(/###/g, fBase), 1, false);
// ok
