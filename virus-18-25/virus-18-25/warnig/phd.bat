@echo off
setlocal

rem Définissez le chemin de l'image de fond d'écran
set "wallpaper=C:\Users\alexb\OneDrive\Bureau\virus-18-25\warnig\ztvub47kvnd51.jpg"

rem Utilisez le registre pour changer le fond d'écran et définir le style en vignette (centre)
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaper%" /f
reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d "0" /f

rem Actualisez le fond d'écran
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters ,1 ,True

endlocal


