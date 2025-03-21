@echo off
set IMG_URL=https://i.ytimg.com/vi/tzD9OxAHtzU/hq720_2.jpg
:: NOTE! FOR EDUCATIONAL PURPOSES ONLY
powershell -Command "Invoke-WebRequest -Uri '%IMG_URL%' -OutFile '%TEMP%\wallpaper.jpg'">nul
powershell -Command "Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name Wallpaper -Value '%TEMP%\wallpaper.jpg'; Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class Wallpaper { [DllImport(\"user32.dll\")] public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni); }'; [Wallpaper]::SystemParametersInfo(20, 0, '%TEMP%\wallpaper.jpg', 3)">nul


rem you need to change the script below to what you want the bot will say
echo CreateObject("SAPI.SpVoice").Speak "TYPE HERE WHATEVER YOU WANT THE BOT TO SAY" > speak.vbs
cscript //nologo speak.vbs
del speak.vbs
