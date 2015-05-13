#!/bin/sh

##This will add the app to apple's database. So users will not have to allow it.

sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "delete from access where client='com.example.PasswordUpdater';"

sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "INSERT INTO access VALUES('kTCCServiceAccessibility','com.example.PasswordUpdater',0,1,1,NULL);"