@echo off
SET LOCATION=%~dp0
SET OLD_CD=%CD%
SET KITCHEN_HOME=D:\Devices\S960_AllegroROM2.0

call clean Apollo
call clean Calculator
call clean CMFileManager
call clean CMSettings
call clean Contacts
call clean DeskClock
call clean Dialer
call clean DSPManager
call clean Email
call clean Exchange
call clean Gallery2
call clean goldrenard-framework
call clean Keyguard
call clean LockClock
call clean SettingsProvider
call clean SetupWizard
call clean Superuser
call clean SystemUI
call clean Torch

cd "%OLD_CD%"