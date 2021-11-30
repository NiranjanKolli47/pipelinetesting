Rem Turns the echo on so that each command will be shown as executed 
echo on 
echo "Hello World" 

Rem Turns the echo off so that each command will not be shown when executed 
@echo off 
echo "Hello World" 

echo %Date% %Time%
echo "This is your first instance of pulling code from Git through Jenkins"

Rem Displays the contents of the PATH variable 
echo %PATH%

Copy "H:\Downloads back up on 18-06-21\evt_api_event_pkg.sql" G:\

if exist G:\evt_api_event_pkg.sql (echo "File exists" ) else (echo "File does not exist")

<<<<<<< HEAD
--SET a = Hello 
--SET b = World 
--SET c= %a% and %b%
--echo %c%
=======
SET a = Hello 
SET b = World 
SET c= "%a%" and "%b%"
echo %c%
echo "Testing for github-webhook from Jenkins"
>>>>>>> 6239eb3db164930a23b37730a0d5fb5d4fa2f590
