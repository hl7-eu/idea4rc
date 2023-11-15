
for /R ..\input\fsh\models\idea4rc %%f in (*.fsh) do (
	echo %%f
 CALL :processFshFile %%f  
)


:processFshFile

 fart %~1  \"Description: Description:
 fart %~1  \"Title: Title:
 fart %~1  "\"* " "* "
 fart %~1  ##334#\" \"\"\"
 fart %~1  ##334# \"\"\"
 fart %~1  ##34#\" \"
 fart %~1  ##34# \"
 fart %~1  #handle)\" #handle)
 REM fart -C %~1  \t\t\t\t\r\n\t\t\t\t\r\n \r\n
 REM fart -C %~1  \t\r\n\t\r\n \r\n
 REM fart -C %~1  \r\n\r\n \r\n
 
 GOTO :EOF


