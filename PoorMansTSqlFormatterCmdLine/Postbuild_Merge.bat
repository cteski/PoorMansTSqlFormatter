"c:\Program Files\Microsoft\ILMerge\ILMerge.exe" /t:exe /out:%1SqlFormatterTemp.exe %1SqlFormatterExeAssembly.exe %1PoorMansTSqlFormatterLib.dll %1NDesk.Options.dll %1LinqBridge.dll %1es\SqlFormatterExeAssembly.resources.dll
IF %ERRORLEVEL% NEQ 0 GOTO END

"c:\Program Files\Microsoft\ILMerge\ILMerge.exe" /t:exe /out:%1SqlFormatter.exe %1SqlFormatterTemp.exe %1fr\SqlFormatterExeAssembly.resources.dll
IF %ERRORLEVEL% NEQ 0 GOTO END

del %1LinqBridge.dll
del %1NDesk.Options.dll
del %1PoorMansTSqlFormatterLib.dll
del %1PoorMansTSqlFormatterLib.pdb
del %1SqlFormatterExeAssembly.exe
del %1SqlFormatterExeAssembly.pdb
del %1SqlFormatterTemp.exe
del %1SqlFormatterTemp.pdb
del %1es\*.* /Q
del %1fr\*.* /Q
:END