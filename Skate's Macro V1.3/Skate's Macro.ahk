;________  ___  __    ________  _________  _______   ________           ________ ___  ________  ________  ___  ___          _____ ______   ________  ________  ________  ________          ___      ___  _____     ________     
;|\   ____\|\  \|\  \ |\   __  \|\___   ___\\  ___ \ |\   ____\         |\  _____\\  \|\   ____\|\   ____\|\  \|\  \        |\   _ \  _   \|\   __  \|\   ____\|\   __  \|\   __  \        |\  \    /  /|/ __  \   |\_____  \    
;\ \  \___|\ \  \/  /|\ \  \|\  \|___ \  \_\ \   __/|\ \  \___|_        \ \  \__/\ \  \ \  \___|\ \  \___|\ \  \\\  \       \ \  \\\__\ \  \ \  \|\  \ \  \___|\ \  \|\  \ \  \|\  \       \ \  \  /  / /\/_|\  \  \|____|\ /_   
; \ \_____  \ \   ___  \ \   __  \   \ \  \ \ \  \_|/_\ \_____  \        \ \   __\\ \  \ \_____  \ \  \    \ \   __  \       \ \  \\|__| \  \ \   __  \ \  \    \ \   _  _\ \  \\\  \       \ \  \/  / /\|/ \ \  \       \|\  \  
;  \|____|\  \ \  \\ \  \ \  \ \  \   \ \  \ \ \  \_|\ \|____|\  \        \ \  \_| \ \  \|____|\  \ \  \____\ \  \ \  \       \ \  \    \ \  \ \  \ \  \ \  \____\ \  \\  \\ \  \\\  \       \ \    / /      \ \  \ ___ __\_\  \ 
;    ____\_\  \ \__\\ \__\ \__\ \__\   \ \__\ \ \_______\____\_\  \        \ \__\   \ \__\____\_\  \ \_______\ \__\ \__\       \ \__\    \ \__\ \__\ \__\ \_______\ \__\\ _\\ \_______\       \ \__/ /        \ \__\\__\\_______\
;   |\_________\|__| \|__|\|__|\|__|    \|__|  \|_______|\_________\        \|__|    \|__|\_________\|_______|\|__|\|__|        \|__|     \|__|\|__|\|__|\|_______|\|__|\|__|\|_______|        \|__|/          \|__\|__\|_______|
;   \|_________|                                        \|_________|                     \|_________|                                                                                                                            
    
#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%
setkeydelay, -1
setmousedelay, -1
setbatchlines, -1
SetTitleMatchMode 2

CoordMode, Tooltip, Relative
CoordMode, Pixel, Relative
CoordMode, Mouse, Relative



Gui Add, Tab3, vSettingsTab x0 y2 w485 h240 +Bottom , General|Shake|Minigame|Farming|Webhook|Config Management|Misc
Gui Tab, 1
Gui Add, GroupBox, x8 y8 w240 h150, Camera & Graphics Settings
Gui Add, Checkbox, vAutoLowerGraphics x16 y32 w121 h13, Auto Lower Graphics
Gui Add, Text, x144 y32 w27 h13, % " (ms):"
Gui Add, Edit, vAutoGraphicsDelay x176 y24 w49 h21, 50
Gui Add, Checkbox, vAutoZoomInCamera x16 y56 w125 h13, Auto Zoom In Camera
Gui Add, Text, x144 y56 w24 h13, (ms):
Gui Add, Edit, vAutoZoomDelay x176 y48 w50 h21, 50
Gui Add, Checkbox, vAutoBlurCamera x16 y80 w104 h13, Auto Blur Camera
Gui Add, Text, x144 y80 w23 h13, (ms):
Gui Add, Edit, vAutoBlurDelay x176 y72 w50 h21, 50
Gui Add, Checkbox, vAutoEnableCameraMode x16 y104 w149 h13, Auto Enable Camera Mode
Gui Add, Text, x168 y104 w25 h13, (ms):
Gui Add, Edit, vAutoCameraDelay x192 y96 w50 h21, 50
Gui Add, Checkbox, vAutoLookDownCamera x16 y128 w141 h13, Auto Look Down Camera
Gui Add, Text, x160 y128 w24 h13, (ms):
Gui Add, Edit, vAutoLookDelay x192 y120 w50 h21, 200
Gui Add, Text, x264 y104 w137 h13, Hold Rod Cast Duration (ms):
Gui Add, Edit, vHoldRodCastDuration x408 y96 w50 h21, 1000
Gui Add, GroupBox, x256 y8 w206 h160, Rod & Bobber Settings
Gui Add, Text, x264 y32 w89 h13, Restart Delay (ms):
Gui Add, Edit, vRestartDelay x360 y24 w50 h21, 1000
Gui Add, Text, x264 y56 w129 h13, Wait for Bobber Delay (ms):
Gui Add, Edit, vWaitForBobberDelay x400 y48 w50 h21, 1000
Gui Add, Text, x264 y80 w75 h13, Navigation Key:
Gui Add, Edit, vNavigationKey x344 y72 w50 h21, \
Gui, Add, Checkbox, vSeraphic gSeraphicCheckbox x16 y187 w100 h30, Seraphic Rod Fix
Gui, Add, Text, x130 y194 w270 h30 cRed, ⚠ This will override manual bar size to 465! ⚠
Gui Add, Checkbox, vBaitFix x16 y159 w150 h30, Enable Bait Fix

Gui Tab, 2
Gui Add, GroupBox, x8 y8 w250 h200, Shake Mode Settings
Gui Add, DropDownList, vShakeMode x20 y30 w200, Click||Navigation
Gui Add, Text, x20 y60 w119 h13, Fish Bar Color Tolerance:
Gui Add, Edit, vFishBarColorTolerance x200 y60 w50 h21, 5
Gui Add, Text, x20 y90 w113 h13, Click Shake Failsafe (s):
Gui Add, Edit, vClickShakeFailsafe x200 y90 w50 h21, 20
Gui Add, Text, x20 y120 w112 h13, Shake Color Tolerance:
Gui Add, Edit, vClickShakeColorTolerance x200 y120 w50 h21, 3
Gui Add, Text, x20 y150 w106 h13, Click Scan Delay (ms):
Gui Add, Edit, vClickScanDelay x200 y150 w50 h21, 10
Gui Add, Text, x20 y180 w115 h13, Repeat Bypass Counter:
Gui Add, Edit, vRepeatBypassCounter x200 y180 w50 h21, 10
Gui Add, GroupBox, x264 y8 w199 h200, Navigation Settings
Gui Add, Text, x272 y32 w141 h13, Navigation Shake Failsafe (s):
Gui Add, Edit, vNavigationShakeFailsafeShake x416 y24 w37 h21, 30
Gui Add, Text, x272 y56 w136 h13, Navigation Spam Delay (ms):
Gui Add, Edit, vNavigationSpamDelay x416 y48 w36 h21, 10

Gui Tab, 3
Gui Add, GroupBox, x0 y8 w173 h136, Bar & Color Settings
Gui Add, Text, x20 y30 w80 h13, Manual Bar Size:
Gui Add, Edit, vManualBarSize x104 y24 w50 h21, 0
Gui Add, Text, x16 y56 w97 h13, Bar Color Tolerance:
Gui Add, Edit, vBarSizeCalculationColorTolerance x120 y48 w50 h21, 15
Gui Add, Text, x16 y80 w101 h13, White Bar Tolerance:
Gui Add, Edit, vWhiteBarColorTolerance x120 y72 w50 h21, 16
Gui Add, Text, x16 y104 w81 h13, Arrow Tolerance:
Gui Add, Edit, vArrowColorTolerance x104 y96 w50 h21, 6
Gui Add, GroupBox, x176 y8 w296 h194, Stability Settings
Gui Add, Text, x192 y32 w72 h13, Stabilizer Loop:
Gui Add, Edit, vStabilizerLoop x272 y24 w20 h21, 10
Gui Add, Text, x192 y56 w105 h13, Stable Right Multiplier:
Gui Add, Edit, vStableRightMultiplier x304 y48 w17 h21, 2.25
Gui Add, Text, x192 y80 w110 h13, Unstable Left Multiplier:
Gui Add, Edit, vUnstableLeftMultiplier x304 y72 w24 h21, 2.1
Gui Add, Text, x192 y104 w113 h13, Bar Calculation Failsafe:
Gui Add, Edit, vBarCalculationFailsafe x312 y96 w21 h21, 10
Gui Add, Text, x192 y128 w67 h13, Sidebar Ratio:
Gui Add, Edit, vSideBarRatio x264 y120 w23 h21, 0.75
Gui Add, Text, x192 y152 w108 h13, Sidebar Wait Multiplier:
Gui Add, Edit, vSideBarWaitMultiplier x304 y144 w24 h21, 4.5
Gui Add, Text, x192 y176 w101 h13, Stable Right Division:
Gui Add, Edit, vStableRightDivision x296 y168 w22 h21, 1.46
Gui Add, Text, x336 y80 w98 h13, Stable Left Multiplier:
Gui Add, Edit, vStableLeftMultiplier x440 y72 w24 h21, 1.2
Gui Add, Text, x344 y104 w94 h13, Stable Left Division:
Gui Add, Edit, vStableLeftDivision x440 y96 w22 h21, 1.11
Gui Add, Text, x328 y56 w117 h13, Unstable Right Multiplier:
Gui Add, Edit, vUnstableRightMultiplier x448 y48 w20 h21, 2.4
Gui Add, Text, x336 y152 w113 h13, Unstable Right Division:
Gui Add, Edit, vUnstableRightDivision x448 y144 w21 h21, 1.5
Gui Add, Text, x328 y176 w106 h13, Unstable Left Division:
Gui Add, Edit, vUnstableLeftDivision x440 y168 w25 h21, 1.1
Gui Add, Text, x296 y128 w133 h13, Right Ankle Break Multiplier:
Gui Add, Edit, vRightAnkleBreakMultiplier x432 y120 w21 h21, 1.28
Gui Add, Text, x296 y32 w126 h13, Left Ankle Break Multiplier:
Gui Add, Edit, vLeftAnkleBreakMultiplier x424 y24 w24 h21, 0.65

Gui, Tab, 4 
Gui, Add, GroupBox, x8 y8 w600 h400, Farming Settings 
Gui, Add, Checkbox, vFarmCanal x16 y32 w121 h20, Farm Canal
Gui, Font, s8, Segoe UI


Gui, Add, Edit, x140 y16 w325 h200 vInstructions ReadOnly +VScroll, 
(
Please make sure that when FARM CANAL is enabled:
-> YOURE CAMERA MODE IS ON (CANT SEE UI'S)
-> YOU HAVE NO CAMERA SHAKE SET IN GAME (NEAR AUTOSELL SETTING)
-> Have your spawn point at Grotto Glacier.
-> Equip the Winter Cloak and the Advanced Oxygen Tank.
-> Have conches in your 9th inventory slot (uses a conch about every 17 minutes, so buy them at the start accordingly).
-> Run the camera placement in CONFIG TAB
-> Make sure you are facing North!
-? HAVE NO CAMERA SHAKE ON IN SETTINGS!!!!!

== Once loaded, just press P to start.

=== Having Do not rely on no Camera Shake off is recommended

BIG THANK YOU to 0x3b5 for allowing me to use some of his code for this. 
You can join his macro's server here: https://discord.gg/aTNKqT8Jfq
)

Gui Tab


IniFile := A_ScriptDir . "\Lib\Settings.ini"

IniRead, Webhook, %IniFile%, webhook, Webhook, false
IniRead, WebhookDiscord, %IniFile%, webhook, WebhookURL, https://discord.com/api/webhooks/...
IniRead, ShowFishCaught, %IniFile%, Webhook, ShowFishCaught, true
IniRead, ShowFishLost, %IniFile%, Webhook, ShowFishLost, true
IniRead, ShowTotalFish, %IniFile%, Webhook, ShowTotalFish, true
IniRead, ShowLevel, %IniFile%, Webhook, ShowLevel, true
IniRead, ShowCaughtLine, %IniFile%, Webhook, ShowCaughtLine, true
IniRead, ShowMoney, %IniFile%, Webhook, ShowMoney, true
IniRead, ShowRunningTime, %IniFile%, Webhook, ShowRunningTime, true
IniRead, ShowCatchStreak, %IniFile%, Webhook, ShowCatchStreak, true
IniRead, ShowBestCatchStreak, %IniFile%, Webhook, ShowBestCatchStreak, true
IniRead, ShowSuccessRate, %IniFile%, Webhook, ShowSuccessRate, true
IniRead, Color, %IniFile%, ColorSettings, Color, 15844367

Webhook := (Webhook = "true")
ShowFishCaught := (ShowFishCaught = "true")
ShowFishLost := (ShowFishLost = "true")
ShowTotalFish := (ShowTotalFish = "true")
ShowLevel := (ShowLevel = "true")
ShowCaughtLine := (ShowCaughtLine = "true")
ShowMoney := (ShowMoney = "true")
ShowRunningTime := (ShowRunningTime = "true")
ShowCatchStreak := (ShowCatchStreak = "true")
ShowBestCatchStreak := (ShowBestCatchStreak = "true")
ShowSuccessRate := (ShowSuccessRate = "true")


Gui, Tab, 5
Gui, Add, GroupBox, x8 y8 w198 h180, Webhook Settings
Gui, Add, Text, x24 y40 w75 h13, Webhook URL:
Gui, Add, Edit, vWebhookDiscord x24 y64 w174 h103, %WebhookDiscord%
Gui, Add, GroupBox, x208 y8 w249 h180, Embed Toggleables
Gui, Add, Checkbox, vShowFishCaught x216 y32 w108 h27, Show Fish Caught
Gui, Add, Checkbox, vShowFishLost x216 y56 w94 h25, Show Fish Lost
Gui, Add, Checkbox, vShowTotalFish x216 y80 w98 h25, Show Total Fish
Gui, Add, Checkbox, vShowRunningTime x336 y32 w118 h25, Show Running Time
Gui, Add, Checkbox, vShowCatchStreak x336 y80 w114 h25, Show Catch Streak
Gui, Add, Checkbox, vShowBestCatchStreak x312 y104 w138 h25, Show Best Catch Streak
Gui, Add, Checkbox, vShowSuccessRate x336 y128 w119 h25, Show Success Rate
Gui, Add, Checkbox, vWebhook x136 y190 w120 h30, Enable Webhook
Gui, Add, Button, x24 y190 w100 h30 gSaveSettingsW, Save
Gui, Add, Button, x300 y190 w100 h30 gPick, Pick Embed Color


GuiControl,, ShowFishCaught, %ShowFishCaught%
GuiControl,, ShowFishLost, %ShowFishLost%
GuiControl,, ShowTotalFish, %ShowTotalFish%
GuiControl,, ShowRunningTime, %ShowRunningTime%
GuiControl,, ShowCatchStreak, %ShowCatchStreak%
GuiControl,, ShowBestCatchStreak, %ShowBestCatchStreak%
GuiControl,, ShowSuccessRate, %ShowSuccessRate%
GuiControl,, Webhook, %Webhook%



Gui, Tab, 6
Gui, Add, GroupBox, x8 y8 w455 h140, Config Management
Gui, Add, Text, x16 y28 w120 h20, New Config Name:
Gui, Add, Edit, vNewConfigNameGeneral x140 y24 w180 h21
Gui, Add, Button, gCreateNewConfigGeneral x330 y24 w120 h30, Create New Config
Gui, Add, Text, x16 y58 w120 h20, Load Config:
Gui, Add, DropDownList, vLoadConfigGeneral x140 y54 w180 h500, % GetConfigFiles()
Gui, Add, Button, gLoadConfigFileGeneral x330 y54 w120 h30, Load Config

Gui, Add, Button, gSetCameraPlacement x8 y100 w110 h30, Set Camera Placement
Gui, Add, Button, gJoinMacroServer x128 y100 w150 h30, Join Macro Discord
Gui, Add, Button, gStart x288 y100 w85 h30, Start
Gui, Add, Button, gSaveAllSettings x383 y100 w85 h30, Save Settings

Gui, Add, GroupBox, x8 y140 w455 h100, Server Management
Gui, Add, Button, gOpenFisch x16 y160 w200 h30, Launch Public Server
Gui, Add, Button, gOpenFischPrivate x226 y160 w200 h30, Launch Private Server
Gui, Add, Text, x16 y200 w120 h20, Private Server Link:
Gui, Add, Edit, vFischPrivateLink x140 y196 w300 h21

Gui, Tab, 7  
Gui, Add, GroupBox, x8 y8 w220 h100, Bar Size Calculator
Gui, Add, Text, x16 y32 w80 h20, Control:
Gui, Add, Edit, vUserInput x100 y32 w80 h20  
Gui, Add, Button, gCalculate x16 y60 w80 h20, Calculate 
Gui, Add, Text, x100 y60 w80 h20, Bar Size:
Gui, Add, Text, vBarSizeResult x180 y60 w45 h20, 0  

Gui, Add, GroupBox, x240 y8 w220 h100, Convert Configs
Gui, Add, Text, x250 y32 w180 h30, Convert configs from other macros (v12, AHK)
Gui, Add, Button, gConvert x250 y70 w80 h20, Convert
Gui, Add, Text, x340 y60 w100 h20, (May not work!)


Gui Show, w470 h245, Skate's Macro V1.3
Return

Calculate:
    GuiControlGet, userInput,, UserInput
    if (userInput = "")
        result := 0
    else
        result := Round(userInput * 1242)
    GuiControl,, BarSizeResult, %result%
return
JoinMacroServer:
Run, https://discord.gg/srfUWwXUKd
Return

SaveSettingsW:
    GuiControlGet, WebhookDiscord
    GuiControlGet, ShowFishCaught
    GuiControlGet, ShowFishLost
    GuiControlGet, ShowTotalFish
    GuiControlGet, ShowRunningTime
    GuiControlGet, ShowCatchStreak
    GuiControlGet, ShowBestCatchStreak
    GuiControlGet, ShowSuccessRate
    GuiControlGet, Webhook

    IniWrite, % (Webhook ? "true" : "false"), %IniFile%, webhook, Webhook
    IniWrite, %WebhookDiscord%, %IniFile%, webhook, WebhookURL
    IniWrite, % (ShowFishCaught ? "true" : "false"), %IniFile%, Webhook, ShowFishCaught
    IniWrite, % (ShowFishLost ? "true" : "false"), %IniFile%, Webhook, ShowFishLost
    IniWrite, % (ShowTotalFish ? "true" : "false"), %IniFile%, Webhook, ShowTotalFish
    IniWrite, % (ShowRunningTime ? "true" : "false"), %IniFile%, Webhook, ShowRunningTime
    IniWrite, % (ShowCatchStreak ? "true" : "false"), %IniFile%, Webhook, ShowCatchStreak
    IniWrite, % (ShowBestCatchStreak ? "true" : "false"), %IniFile%, Webhook, ShowBestCatchStreak
    IniWrite, % (ShowSuccessRate ? "true" : "false"), %IniFile%, Webhook, ShowSuccessRate

    MsgBox, Settings saved successfully!
Return 

OpenFisch:
run, "roblox://placeId=16732694052/"
return

OpenFischPrivate:
Gui, Submit, NoHide
Run, %FischPrivateLink%
return

Gui Show, w470 h245, Skate's Macro V1.2.5
Return
Pick:
ScriptDirectory := A_ScriptDir 
LibFolder := ScriptDirectory . "\Lib"  

IfNotExist, %LibFolder%
{
    FileCreateDir, %LibFolder%
}

Picker := LibFolder . "\Picker.ahk"

if (ProcessExists("Picker.ahk")) {
    Process, Close, Picker.ahk
}
IfExist, %Picker%
{
Sleep 500
    Run, %Picker%
}
Else
{
    MsgBox, Could not find Picker.ahk in: %Picker%
}
Return

DebugContent := "Config Variables Applied:nn"
for Index, Line in ConfigLines {
    Line := Trim(Line)
    if (Line = "" || !InStr(Line, ":="))
        continue

    Parts := StrSplit(Line, ":=")
    VarName := Trim(Parts[1])
    VarValue := Trim(Parts[2])
    DebugContent .= VarName . ": " . VarValue . "n"
}
MsgBox, % DebugContent
Gui, Destroy
return

; Create New Config for General
CreateNewConfigGeneral:
    Gui, Submit, NoHide
    ConfigDir := A_ScriptDir . "\Config"
    if !FileExist(ConfigDir)
        FileCreateDir, % ConfigDir
    FileDelete, % ConfigDir . "\" . NewConfigNameGeneral . ".ini"
    FileAppend, , % ConfigDir . "\" . NewConfigNameGeneral . ".ini"
    MsgBox, New config file created: %NewConfigNameGeneral%.ini
    GuiControl,, LoadConfigGeneral, % GetConfigFiles() 
return

; Load Config File for General
LoadConfigFileGeneral:
    Gui, Submit, NoHide
    SelectedFile := LoadConfigGeneral
    if (SelectedFile != "") {
        FileRead, Config, % SelectedFile
        MsgBox, Loaded config from: %SelectedFile%
  
        Goto RunReadConfigCode
    }
return

SeraphicCheckbox:
    GuiControlGet, Seraphic,, Seraphic
    if (Seraphic = 1) {
        GuiControl,, ManualBarSize, 465
        GuiControl, Disable, ManualBarSize
    } else {
        GuiControl, Enable, ManualBarSize
        GuiControl,, ManualBarSize, 0  
    }
return

Start:
    ScriptDirectory := A_ScriptDir 
    LibFolder := ScriptDirectory . "\Lib"  
    
    IfNotExist, %LibFolder%
    {
        FileCreateDir, %LibFolder%
    }
 
    IniFile := LibFolder . "\Settings.ini"
    Load := ScriptDirectory . "\Config\" . SelectedFile
    
    IniWrite, %ConfigFile%, %IniFile%, Settings, LoadConfig

    GameScriptPath := LibFolder . "\Game.ahk"
    WebhookScriptPath := LibFolder . "\Webhook.ahk"

    if (ProcessExists("Game.ahk")) {
        Process, Close, Game.ahk
    }
    IfExist, %GameScriptPath%
    {
	Sleep 500
        Run, %GameScriptPath%
    }
    Else
    {
        MsgBox, Could not find Game.ahk in: %GameScriptPath%
    }

    if (ProcessExists("Webhook.ahk")) {
        Process, Close, Webhook.ahk
    }
    IfExist, %WebhookScriptPath%
    {
        Run, %WebhookScriptPath%
    }
    Else
    {
        MsgBox, Could not find Webhook.ahk in: %WebhookScriptPath%
    }
Return

ProcessExists(ProcessName) {
    Process, Exist, %ProcessName%
    return ErrorLevel
}



GetConfigFiles() {
    ConfigFiles := ""
    Loop, %A_ScriptDir%\Config\*.ini
        ConfigFiles .= A_LoopFileName . "|"
    return ConfigFiles
}

SaveAllSettings:
    Gui, Submit, NoHide

    SelectedFile := A_ScriptDir . "\Config\" . LoadConfigGeneral
    if (SelectedFile = "") {
        MsgBox, Please load a configuration file before saving.
        return
    }


    ConfigDir := A_ScriptDir . "\Config"
    if !FileExist(ConfigDir)
        FileCreateDir, %ConfigDir%


    ; General Tab
    IniWrite, % (AutoLowerGraphics ? "true" : "false"), %SelectedFile%, General, AutoLowerGraphics
    IniWrite, % AutoGraphicsDelay, %SelectedFile%, General, AutoGraphicsDelay
    IniWrite, % NavigationKey, %SelectedFile%, General, NavigationKey
    IniWrite, % WaitForBobberDelay, %SelectedFile%, General, WaitForBobberDelay
    IniWrite, % RestartDelay, %SelectedFile%, General, RestartDelay
    IniWrite, % AutoGraphicsDelay, %SelectedFile%, General, AutoGraphicsDelay
    IniWrite, % (AutoZoomInCamera ? "true" : "false"), %SelectedFile%, General, AutoZoomInCamera
    IniWrite, % AutoZoomDelay, %SelectedFile%, General, AutoZoomDelay
    IniWrite, % (AutoBlurCamera ? "true" : "false"), %SelectedFile%, General, AutoBlurCamera
    IniWrite, % AutoBlurDelay, %SelectedFile%, General, AutoBlurDelay
    IniWrite, % (AutoEnableCameraMode ? "true" : "false"), %SelectedFile%, General, AutoEnableCameraMode
    IniWrite, % AutoCameraDelay, %SelectedFile%, General, AutoCameraDelay
    IniWrite, % (AutoLookDownCamera ? "true" : "false"), %SelectedFile%, General, AutoLookDownCamera
    IniWrite, % AutoLookDelay, %SelectedFile%, General, AutoLookDelay
    IniWrite, % HoldRodCastDuration, %SelectedFile%, General, HoldRodCastDuration
    IniWrite, % (Seraphic ? "true" : "false"), %SelectedFile%, General, Seraphic
    IniWrite, % (BaitFix ? "true" : "false"), %SelectedFile%, General, BaitFix


    ; Shake Tab
    IniWrite, % ShakeMode, %SelectedFile%, Shake, ShakeMode
    IniWrite, % FishBarColorTolerance, %SelectedFile%, Shake, FishBarColorTolerance
    IniWrite, % ClickShakeFailsafe, %SelectedFile%, Shake, ClickShakeFailsafe
    IniWrite, % ClickShakeColorTolerance, %SelectedFile%, Shake, ClickShakeColorTolerance
    IniWrite, % ClickScanDelay, %SelectedFile%, Shake, ClickScanDelay
    IniWrite, % RepeatBypassCounter, %SelectedFile%, Shake, RepeatBypassCounter
    IniWrite, % NavigationShakeFailsafeShake, %SelectedFile%, Shake, NavigationShakeFailsafeShake
    IniWrite, % NavigationSpamDelay, %SelectedFile%, Shake, NavigationSpamDelay

    ; Minigame Tab
    IniWrite, % ManualBarSize, %SelectedFile%, Minigame, ManualBarSize
    IniWrite, % BarSizeCalculationColorTolerance, %SelectedFile%, Minigame, BarSizeCalculationColorTolerance
    IniWrite, % WhiteBarColorTolerance, %SelectedFile%, Minigame, WhiteBarColorTolerance
    IniWrite, % ArrowColorTolerance, %SelectedFile%, Minigame, ArrowColorTolerance
    IniWrite, % StabilizerLoop, %SelectedFile%, Minigame, StabilizerLoop
    IniWrite, % StableRightMultiplier, %SelectedFile%, Minigame, StableRightMultiplier
    IniWrite, % UnstableLeftMultiplier, %SelectedFile%, Minigame, UnstableLeftMultiplier
    IniWrite, % BarCalculationFailsafe, %SelectedFile%, Minigame, BarCalculationFailsafe
    IniWrite, % ArrowColorTolerance, %SelectedFile%, Minigame, ArrowColorTolerance
    IniWrite, % SideBarRatio, %SelectedFile%, Minigame, SideBarRatio
    IniWrite, % SideBarWaitMultiplier, %SelectedFile%, Minigame, SideBarWaitMultiplier
    IniWrite, % StableRightDivision, %SelectedFile%, Minigame, StableRightDivision
    IniWrite, % StableLeftMultiplier, %SelectedFile%, Minigame, StableLeftMultiplier
    IniWrite, % StableLeftDivision, %SelectedFile%, Minigame, StableLeftDivision
    IniWrite, % UnstableRightMultiplier, %SelectedFile%, Minigame, UnstableRightMultiplier
    IniWrite, % UnstableRightDivision, %SelectedFile%, Minigame, UnstableRightDivision
    IniWrite, % UnstableLeftDivision, %SelectedFile%, Minigame, UnstableLeftDivision
    IniWrite, % RightAnkleBreakMultiplier, %SelectedFile%, Minigame, RightAnkleBreakMultiplier
    IniWrite, % LeftAnkleBreakMultiplier, %SelectedFile%, Minigame, LeftAnkleBreakMultiplier
    IniWrite, % (FarmCanal ? "true" : "false"), %SelectedFile%, Farm, FarmCanal

    MsgBox, Settings have been saved to %SelectedFile%
return

RunReadConfigCode:
    ConfigFile := A_ScriptDir . "\Config\" . LoadConfigGeneral


    if !FileExist(ConfigFile) {
        MsgBox, Error: Configuration file not found: %ConfigFile%
        return
    }

    ; General Tab
    IniRead, AutoLowerGraphics, %ConfigFile%, General, AutoLowerGraphics, false
    GuiControl,, AutoLowerGraphics, % (AutoLowerGraphics = "true" ? "1" : "0")

    IniRead, AutoGraphicsDelay, %ConfigFile%, General, AutoGraphicsDelay, 50
    GuiControl,, AutoGraphicsDelay, % AutoGraphicsDelay

    IniRead, AutoZoomInCamera, %ConfigFile%, General, AutoZoomInCamera, false
    GuiControl,, AutoZoomInCamera, % (AutoZoomInCamera = "true" ? "1" : "0")

    IniRead, AutoZoomDelay, %ConfigFile%, General, AutoZoomDelay, 50
    GuiControl,, AutoZoomDelay, % AutoZoomDelay

    IniRead, AutoBlurCamera, %ConfigFile%, General, AutoBlurCamera, false
    GuiControl,, AutoBlurCamera, % (AutoBlurCamera = "true" ? "1" : "0")

    IniRead, AutoBlurDelay, %ConfigFile%, General, AutoBlurDelay, 50
    GuiControl,, AutoBlurDelay, % AutoBlurDelay

    IniRead, AutoEnableCameraMode, %ConfigFile%, General, AutoEnableCameraMode, false
    GuiControl,, AutoEnableCameraMode, % (AutoEnableCameraMode = "true" ? "1" : "0")

    IniRead, AutoCameraDelay, %ConfigFile%, General, AutoCameraDelay, 200
    GuiControl,, AutoCameraDelay, % AutoCameraDelay

    IniRead, AutoLookDownCamera, %ConfigFile%, General, AutoLookDownCamera, false
    GuiControl,, AutoLookDownCamera, % (AutoLookDownCamera = "true" ? "1" : "0")

    IniRead, AutoLookDelay, %ConfigFile%, General, AutoLookDelay, 200
    GuiControl,, AutoLookDelay, % AutoLookDelay

    IniRead, HoldRodCastDuration, %ConfigFile%, General, HoldRodCastDuration, 1000
    GuiControl,, HoldRodCastDuration, % HoldRodCastDuration

    IniRead, NavigationKey, %ConfigFile%, General, NavigationKey, \
    GuiControl,, NavigationKey, % NavigationKey

    IniRead, WaitForBobberDelay, %ConfigFile%, General, WaitForBobberDelay, 1000
    GuiControl,, WaitForBobberDelay, % WaitForBobberDelay

    IniRead, RestartDelay, %ConfigFile%, General, RestartDelay, 1000
    GuiControl,, RestartDelay, % RestartDelay

    IniRead, Seraphic, %ConfigFile%, General, Seraphic, false
    GuiControl,, Seraphic, % (Seraphic = "true" ? "1" : "0")

    IniRead, BaitFix, %ConfigFile%, General, BaitFix, false
    GuiControl,, BaitFix, % (BaitFix = "true" ? "1" : "0")

    ; Shake Tab
    IniRead, ShakeMode, %ConfigFile%, Shake, ShakeMode, Click
    GuiControl,, ShakeMode, % ShakeMode

    IniRead, FishBarColorTolerance, %ConfigFile%, Shake, FishBarColorTolerance, 0
    GuiControl,, FishBarColorTolerance, % FishBarColorTolerance

    IniRead, ClickShakeFailsafe, %ConfigFile%, Shake, ClickShakeFailsafe, 20
    GuiControl,, ClickShakeFailsafe, % ClickShakeFailsafe

    IniRead, ClickShakeColorTolerance, %ConfigFile%, Shake, ClickShakeColorTolerance, 1
    GuiControl,, ClickShakeColorTolerance, % ClickShakeColorTolerance

    IniRead, ClickScanDelay, %ConfigFile%, Shake, ClickScanDelay, 100
    GuiControl,, ClickScanDelay, % ClickScanDelay

    IniRead, RepeatBypassCounter, %ConfigFile%, Shake, RepeatBypassCounter, 10
    GuiControl,, RepeatBypassCounter, % RepeatBypassCounter

    IniRead, NavigationShakeFailsafeShake, %ConfigFile%, Shake, NavigationShakeFailsafeShake, 30
    GuiControl,, NavigationShakeFailsafeShake, % NavigationShakeFailsafeShake

    IniRead, NavigationSpamDelay, %ConfigFile%, Shake, NavigationSpamDelay, 10
    GuiControl,, NavigationSpamDelay, % NavigationSpamDelay

    ; Minigame Tab
    IniRead, ManualBarSize, %ConfigFile%, Minigame, ManualBarSize, 0
    GuiControl,, ManualBarSize, % ManualBarSize

    IniRead, BarSizeCalculationColorTolerance, %ConfigFile%, Minigame, BarSizeCalculationColorTolerance, 15
    GuiControl,, BarSizeCalculationColorTolerance, % BarSizeCalculationColorTolerance

    IniRead, WhiteBarColorTolerance, %ConfigFile%, Minigame, WhiteBarColorTolerance, 5
    GuiControl,, WhiteBarColorTolerance, % WhiteBarColorTolerance

    IniRead, ArrowColorTolerance, %ConfigFile%, Minigame, ArrowColorTolerance, 0
    GuiControl,, ArrowColorTolerance, % ArrowColorTolerance

    IniRead, StabilizerLoop, %ConfigFile%, Minigame, StabilizerLoop, 10
    GuiControl,, StabilizerLoop, % StabilizerLoop

    IniRead, StableRightMultiplier, %ConfigFile%, Minigame, StableRightMultiplier, 2
    GuiControl,, StableRightMultiplier, % StableRightMultiplier

    IniRead, UnstableLeftMultiplier, %ConfigFile%, Minigame, UnstableLeftMultiplier, 2.4
    GuiControl,, UnstableLeftMultiplier, % UnstableLeftMultiplier

    IniRead, BarCalculationFailsafe, %ConfigFile%, Minigame, BarCalculationFailsafe, 10
    GuiControl,, BarCalculationFailsafe, % BarCalculationFailsafe

    IniRead, SideBarRatio, %ConfigFile%, Minigame, SideBarRatio, 0.8
    GuiControl,, SideBarRatio, % SideBarRatio

    IniRead, SideBarWaitMultiplier, %ConfigFile%, Minigame, SideBarWaitMultiplier, 4.5
    GuiControl,, SideBarWaitMultiplier, % SideBarWaitMultiplier

    IniRead, StableRightDivision, %ConfigFile%, Minigame, StableRightDivision, 1.3
    GuiControl,, StableRightDivision, % StableRightDivision

    IniRead, StableLeftMultiplier, %ConfigFile%, Minigame, StableLeftMultiplier, 1.8
    GuiControl,, StableLeftMultiplier, % StableLeftMultiplier

    IniRead, StableLeftDivision, %ConfigFile%, Minigame, StableLeftDivision, 1.3
    GuiControl,, StableLeftDivision, % StableLeftDivision

    IniRead, UnstableRightMultiplier, %ConfigFile%, Minigame, UnstableRightMultiplier, 2.4
    GuiControl,, UnstableRightMultiplier, % UnstableRightMultiplier

    IniRead, UnstableRightDivision, %ConfigFile%, Minigame, UnstableRightDivision, 1.3
    GuiControl,, UnstableRightDivision, % UnstableRightDivision

    IniRead, UnstableLeftDivision, %ConfigFile%, Minigame, UnstableLeftDivision, 1.3
    GuiControl,, UnstableLeftDivision, % UnstableLeftDivision

    IniRead, RightAnkleBreakMultiplier, %ConfigFile%, Minigame, RightAnkleBreakMultiplier, 0.9
    GuiControl,, RightAnkleBreakMultiplier, % RightAnkleBreakMultiplier

    IniRead, LeftAnkleBreakMultiplier, %ConfigFile%, Minigame, LeftAnkleBreakMultiplier, 0.5
    GuiControl,, LeftAnkleBreakMultiplier, % LeftAnkleBreakMultiplier

    IniRead, FarmCanal, %ConfigFile%, Farm, FarmCanal, false
    GuiControl,, FarmCanal, % (FarmCanal = "true" ? "1" : "0")


    IniRead, DontRelyOnNoCameraShake, %ConfigFile%, Farm, DontRelyOnNoCameraShake, false
    GuiControl,, DontRelyOnNoCameraShake, % (DontRelyOnNoCameraShake = "true" ? "1" : "0")




    MsgBox, Config successfully loaded from: %ConfigFile%
return


SetCameraPlacement:
    MsgBox, Right-click on the camera icon in Roblox at the top left to set the camera placement after clicking OK.

    KeyWait, RButton, D  
    MouseGetPos, mouseX, mouseY  
    MsgBox, Camera placement set at X: %mouseX% Y: %mouseY%
    

    IniFile := A_ScriptDir . "\Lib\settings.ini"

    IniWrite, %mouseX%, %IniFile%, CameraPlacement, X  
    IniWrite, %mouseY%, %IniFile%, CameraPlacement, Y  
return

Convert:
; =============================== CONFIGURATION ===============================
keyMap := { General: { AutoLowerGraphics: ["AutoLowerGraphics", "auto-graphics", "AutoLower"]
    , AutoGraphicsDelay: ["AutoGraphicsDelay", "GraphicsDelay"]
    , NavigationKey: ["NavigationKey", "nav-key", "NavKey"]
    , WaitForBobberDelay: ["WaitForBobberDelay", "BobberDelay"]
    , RestartDelay: ["RestartDelay", "ResetDelay"]
    , AutoZoomInCamera: ["AutoZoomInCamera", "auto-zoom-camera", "AutoZoom"]
    , AutoZoomDelay: ["AutoZoomDelay", "ZoomDelay"]
    , AutoBlurCamera: ["AutoBlurCamera", "auto-blur", "AutoBlur"]
    , AutoBlurDelay: ["AutoBlurDelay", "BlurDelay"]
    , AutoEnableCameraMode: ["AutoEnableCameraMode", "auto-enable-camera", "EnableCamera"]
    , AutoCameraDelay: ["AutoCameraDelay", "CameraDelay"]
    , AutoLookDownCamera: ["AutoLookDownCamera", "auto-look-down", "AutoLookDown"]
    , AutoLookDelay: ["AutoLookDelay", "LookDelay"]
    , HoldRodCastDuration: ["HoldRodCastDuration", "CastDuration", "RodCastTime"] }
, Shake: { ShakeMode: ["ShakeMode", "auto-shake", "ShakeType"]
   , FishBarColorTolerance: ["FishBarColorTolerance", "FishColorTol"]
   , ClickShakeFailsafe: ["ClickShakeFailsafe", "shake-failsafe", "ClickFailsafe"]
   , ClickShakeColorTolerance: ["ClickShakeColorTolerance", "ClickColorTol"]
   , ClickScanDelay: ["ClickScanDelay", "ClickDelay"]
   , RepeatBypassCounter: ["RepeatBypassCounter", "BypassCounter"]
   , NavigationShakeFailsafeShake: ["NavigationShakeFailsafeShake", "NavigationShakeFailsafe"]
   , NavigationSpamDelay: ["NavigationSpamDelay", "NavSpamDelay"] }
, Minigame: { ManualBarSize: ["ManualBarSize", "Bar Size", "BarSize"]
      , BarSizeCalculationColorTolerance: ["BarSizeCalculationColorTolerance", "BarCalculationTol"]
      , WhiteBarColorTolerance: ["WhiteBarColorTolerance", "WhiteTol"]
      , ArrowColorTolerance: ["ArrowColorTolerance", "ArrowTol"]
      , StabilizerLoop: ["StabilizerLoop", "StabilizerCycles"]
      , StableRightMultiplier: ["StableRightMultiplier", "Stable-Right"]
      , UnstableLeftMultiplier: ["UnstableLeftMultiplier", "Unstable-Left"]
      , BarCalculationFailsafe: ["BarCalculationFailsafe", "BarFailsafe"]
      , SideBarRatio: ["SideBarRatio", "SideRatio"]
      , SideBarWaitMultiplier: ["SideBarWaitMultiplier", "SideWaitMult"]
      , StableRightDivision: ["StableRightDivision", "Stable-RightD"]
      , StableLeftMultiplier: ["StableLeftMultiplier", "Stable-Left"]
      , StableLeftDivision: ["StableLeftDivision", "Stable-LeftD"]
      , UnstableRightMultiplier: ["UnstableRightMultiplier", "Unstable-Right"]
      , UnstableRightDivision: ["UnstableRightDivision", "Unstable-RightD"]
      , UnstableLeftDivision: ["UnstableLeftDivision", "Unstable-LeftD"]
      , RightAnkleBreakMultiplier: ["RightAnkleBreakMultiplier", "RightAnkleMult"]
      , LeftAnkleBreakMultiplier: ["LeftAnkleBreakMultiplier", "LeftAnkleMult"] }
, Farm: { FarmCanal: ["FarmCanal", "CanalFarming"] } }

booleanKeys := { General: ["AutoLowerGraphics", "AutoZoomInCamera", "AutoBlurCamera", "AutoEnableCameraMode", "AutoLookDownCamera"] }

defaults := { General: { AutoLowerGraphics: "true", AutoGraphicsDelay: 50, NavigationKey: "\", WaitForBobberDelay: 1000, RestartDelay: 1000, AutoZoomInCamera: "true", AutoZoomDelay: 50, AutoBlurCamera: "false", AutoBlurDelay: 50, AutoEnableCameraMode: "true", AutoCameraDelay: 200, AutoLookDownCamera: "true", AutoLookDelay: 200, HoldRodCastDuration: 1000 }
, Shake: { ShakeMode: "Click", FishBarColorTolerance: 0, ClickShakeFailsafe: 20, ClickShakeColorTolerance: 1, ClickScanDelay: 100, RepeatBypassCounter: 10, NavigationShakeFailsafeShake: 30, NavigationSpamDelay: 10 }
, Minigame: { ManualBarSize: 0, BarSizeCalculationColorTolerance: 15, WhiteBarColorTolerance: 5, ArrowColorTolerance: 0, StabilizerLoop: 10, StableRightMultiplier: 2, UnstableLeftMultiplier: 2.4, BarCalculationFailsafe: 10, SideBarRatio: 0.8, SideBarWaitMultiplier: 4.5, StableRightDivision: 1.3, StableLeftMultiplier: 1.8, StableLeftDivision: 1.3, UnstableRightMultiplier: 2.4, UnstableRightDivision: 1.3, UnstableLeftDivision: 1.3, RightAnkleBreakMultiplier: 0.9, LeftAnkleBreakMultiplier: 0.5 }
, Farm: { FarmCanal: "false" } }

sectionOrder := ["General", "Shake", "Minigame", "Farm"]
keyOrder := { General: ["AutoLowerGraphics", "AutoGraphicsDelay", "NavigationKey", "WaitForBobberDelay", "RestartDelay", "AutoZoomInCamera", "AutoZoomDelay", "AutoBlurCamera", "AutoBlurDelay", "AutoEnableCameraMode", "AutoCameraDelay", "AutoLookDownCamera", "AutoLookDelay", "HoldRodCastDuration"]
, Shake: ["ShakeMode", "FishBarColorTolerance", "ClickShakeFailsafe", "ClickShakeColorTolerance", "ClickScanDelay", "RepeatBypassCounter", "NavigationShakeFailsafeShake", "NavigationSpamDelay"]
, Minigame: ["ManualBarSize", "BarSizeCalculationColorTolerance", "WhiteBarColorTolerance", "ArrowColorTolerance", "StabilizerLoop", "StableRightMultiplier", "UnstableLeftMultiplier", "BarCalculationFailsafe", "SideBarRatio", "SideBarWaitMultiplier", "StableRightDivision", "StableLeftMultiplier", "StableLeftDivision", "UnstableRightMultiplier", "UnstableRightDivision", "UnstableLeftDivision", "RightAnkleBreakMultiplier", "LeftAnkleBreakMultiplier"]
, Farm: ["FarmCanal"] }

; =============================== MAIN SCRIPT ===============================
FileSelectFile, inputFile, 3,, Select Config File to Convert, *.ini; *.ahk
if (inputFile = "")


SplitPath, inputFile, fileName,,, nameNoExt
if (InStr(fileName, ".ini"))
config := ParseINIFile(inputFile)
else if (InStr(fileName, ".ahk"))
config := ParseAHKFile(inputFile)
else
{
MsgBox, 16, Error, Unsupported file format!
}

output := ""
for index, section in sectionOrder
{
output .= "[" section "]`r`n"
for _, key in keyOrder[section]
{
value := config[section].HasKey(key) ? config[section][key] : defaults[section][key]
output .= key "=" value "`r`n"
}
output .= "`r`n"
}

outputFile := A_ScriptDir "\" nameNoExt " Converted SFM.ini"
FileDelete, %outputFile%
FileAppend, %output%, %outputFile%

MsgBox, 64, Conversion Complete, File saved to:`n%outputFile%

; =============================== FUNCTIONS ===============================
ParseINIFile(filePath) {
global keyMap, booleanKeys, defaults
config := {}

for section in defaults {
config[section] := {}
for key in defaults[section] {
value := ""
found := false


IniRead, value, %filePath%, %section%, %key%
if (value != "ERROR") {
found := true
}


if (!found && keyMap[section].HasKey(key)) {
for _, alias in keyMap[section][key] {
    IniRead, value, %filePath%, %section%, %alias%
    if (value != "ERROR") {
        found := true
        break
    }
}
}


if (found) {
value := Trim(value)
if (booleanKeys[section].HasValue(key)) {
    value := ConvertBoolean(value)
}
} else {
value := defaults[section][key]
}

config[section][key] := value
}
}
return config
}

ParseAHKFile(filePath) {
global keyMap, booleanKeys, defaults
config := {}
FileRead, ahkContent, %filePath%


for section in defaults
config[section] := {}

currentSection := "General"
Loop, Parse, ahkContent, `n, `r
{
line := Trim(A_LoopField)


if (RegExMatch(line, "i);\s*(\w+)\s*SETTINGS", match)) {
currentSection := MapAHKSection(match1)
continue
}


if (RegExMatch(line, "i)^\s*([A-Za-z0-9_-]+)\s*[:=]+\s*(.*?)(\s*;.*)?$", match)) {
key := Trim(match1)
rawValue := Trim(match2)

value := ""
if (RegExMatch(rawValue, "^\s*""(.*)""\s*$", quoteMatch)) {
value := Trim(quoteMatch1)
} else {
value := Trim(rawValue)
}


if value is number
value := value + 0


for section, sections in keyMap {
for iniKey, aliases in sections {
    for _, alias in aliases {
        if (alias = key) {

            if (booleanKeys[section].HasValue(iniKey)) {
                value := ConvertBoolean(value)
            }
            
            config[section][iniKey] := value
            break 3
        }
    }
}
}
}
}
return config
}

MapAHKSection(ahkSection) {
ahkSection := StrReplace(ahkSection, " ", "")
if InStr(ahkSection, "GENERAL") || InStr(ahkSection, "MAIN")
return "General"
if InStr(ahkSection, "SHAKE") || InStr(ahkSection, "FISHING")
return "Shake"
if InStr(ahkSection, "MINIGAME") || InStr(ahkSection, "GAME")
return "Minigame"
if InStr(ahkSection, "FARM") || InStr(ahkSection, "CANAL")
return "Farm"
return "General"
}

ConvertBoolean(val) {
val := Trim(val)
if val in 1,true,yes,on,enable,enabled
return "true"
if val in 0,false,no,off,disable,disabled
return "false"
return val
}
