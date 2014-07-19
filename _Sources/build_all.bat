@echo off
SET LOCATION=%~dp0
SET OLD_CD=%CD%
SET KITCHEN_HOME=D:\Devices\S960_AllegroROM2.0

call build Apollo
call build Calculator
call build CMFileManager
call build CMSettings
call build Contacts
call build DeskClock
call build Dialer
call build DSPManager
call build Email
call build Exchange
call build Gallery2
call build goldrenard-framework
call build Keyguard
call build LockClock
call build OTAUpdater
call build SettingsProvider
call build SetupWizard
call build Superuser
call build SystemUI
call build Torch

cd "%OLD_CD%"