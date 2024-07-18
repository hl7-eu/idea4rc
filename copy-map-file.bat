@echo off
REM Remove all *-map.xml files from map directory
del input\pagecontent\*-map.xml
del input\images-source\*-map.plantuml

REM Copy all *-map.xml files from test/foo/subdir to test/foo
copy input\pagecontent\map\*-map.xml input\pagecontent\
copy input\images-source\map\*-map.plantuml input\images-source\

REM Print completion message
echo Files have been removed and copied successfully.
