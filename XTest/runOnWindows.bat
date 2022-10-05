cd %~dp0

set DEST="/data/local/tmp/xtest-agent"
set ADB="WindowsAdb/adb.exe"

%ADB% push xtest-agent %DEST%
%ADB% shell chmod 755 %DEST%
%ADB% shell %DEST% server --stop
%ADB% shell %DEST% server -d "$@"