@echo off

TITLE BACKING UP DB

echo.
echo.
echo    PRESS ANY KEY TO BACKUP DROPBOX
echo.
echo.

PAUSE

CLS

echo.
echo.
echo    COPYING DROPBOX CONTENT TO YOUR DESKTOP
echo.
echo.

CD "%userprofile%\Dropbox"
XCOPY "%userprofile%\Dropbox" "%userprofile%\Desktop\DB Backup %date%\" /E /Q

CLS

CD "%userprofile%\Desktop\DB Backup %date%"
powershell -command "Compress-Archive -Path '%userprofile%\Desktop\DB Backup %date%\' -DestinationPath '%userprofile%\Desktop\DB Backup %date%'"

CLS

echo.
echo.
echo    DELETING THE UNZIPPED BACKUP FOLDER
echo.
echo.

CD "%userprofile%\Desktop"
RD /S /Q "%userprofile%\Desktop\DB Backup %date%\"