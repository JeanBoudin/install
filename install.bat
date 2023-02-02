@echo off

REM Téléchargez le fichier d'installation Steam
bitsadmin /transfer SteamDownloadJob /download /priority high https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe %userprofile%\Downloads\SteamSetup.exe
REM Installez Steam
echo Installation de Steam.
start "" "%userprofile%\Downloads\SteamSetup.exe"

REM Téléchargez le fichier d'installation Epic Games
bitsadmin /transfer EpicDownloadJob /download /priority high https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi %userprofile%\Downloads\EpicGamesLauncherInstaller.msi
REM Installez Epic Games
echo Installation de Epic game.
start "" "%userprofile%\Downloads\EpicGamesLauncherInstaller.msi"

REM Téléchargez le fichier d'installation Parsec
bitsadmin /transfer ParsecDownloadJob /download /priority high https://s3.amazonaws.com/parsec-build/package/parsec-windows.exe %userprofile%\Downloads\parsec-windows.exe
REM Installez Parsec
echo Installation de Parsec.
start "" "%userprofile%\Downloads\parsec-windows.exe"

REM Téléchargez le fichier d'installation Brave
bitsadmin /transfer BraveDownloadJob /download /priority high https://laptop-updates.brave.com/latest/winx64 %userprofile%\Downloads\brave.exe
REM Installez Brave
echo Installation de Brave.
start "" "%userprofile%\Downloads\brave.exe"

REM Téléchargez le fichier d'installation Spotify
bitsadmin /transfer SpotifyDownloadJob /download /priority high https://download.scdn.co/SpotifySetup.exe %userprofile%\Downloads\SpotifySetup.exe
REM Installez Spotify
echo Installation de Spotify.
start "" "%userprofile%\Downloads\SpotifySetup.exe"

REM Téléchargez le fichier d'installation Discord
bitsadmin /transfer DiscordDownloadJob /download /priority high https://dl.discordapp.net/apps/win/0.0.306/DiscordSetup.exe %userprofile%\Downloads\DiscordSetup.exe
REM Installez Discord
echo Installation de Discord.
start "" "%userprofile%\Downloads\DiscordSetup.exe"

REM Téléchargez le fichier d'installation Visual Studio Code
bitsadmin /transfer VSCodeDownloadJob /download /priority high https://update.code.visualstudio.com/latest/win32-x64-user/stable %userprofile%\Downloads\VSCodeSetup.exe
REM Installez Visual Studio Code
echo Installation de Visual studio code.
start "" "%userprofile%\Downloads\VSCodeSetup.exe"

REM Téléchargez le fichier d'installation Gforce Experience
bitsadmin /transfer GFEDownloadJob /download /priority high https://fr.download.nvidia.com/GFE/GFEClient/3.27.0.112/GeForce_Experience_v3.27.0.112.exe %userprofile%\Downloads\GFEInstaller.exe
REM Installez Gforce Experience
echo Installation de Geforce experience.
start "" "%userprofile%\Downloads\GFEInstaller.exe"

REM Téléchargez le fichier d'installation VoiceMeeter
bitsadmin /transfer VoiceMeeterDownloadJob /download /priority high https://download.vb-audio.com/Download_CABLE/VoicemeeterProSetup.exe %userprofile%\Downloads\VoicemeeterProSetup.exe
REM Installez VoiceMeeter
echo Installation de VoiceMeeter.
start "" "%userprofile%\Downloads\VoicemeeterProSetup.exe"

echo Installation terminée.
pause 

del "%userprofile%\Downloads\GFEInstaller.exe"
del "%userprofile%\Downloads\VSCodeSetup.exe"
del "%userprofile%\Downloads\DiscordSetup.exe"
del "%userprofile%\Downloads\SpotifySetup.exe"
del "%userprofile%\Downloads\brave.exe"
del "%userprofile%\Downloads\parsec-windows.exe"
del "%userprofile%\Downloads\EpicGamesLauncherInstaller.msi"
del "%userprofile%\Downloads\SteamSetup.exe"
del "%userprofile%\Downloads\VoicemeeterProSetup.exe"