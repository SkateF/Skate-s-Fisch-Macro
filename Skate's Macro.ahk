

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


Gui Add, Tab3, vSettingsTab x0 y2 w485 h240 +Bottom , General|Shake|Minigame|Farming|Webhook|Config Management
Gui Tab, 1
Gui Add, GroupBox, x8 y8 w240 h177, Camera & Graphics Settings
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
Gui Add, GroupBox, x256 y8 w206 h177, Rod & Bobber Settings
Gui Add, Text, x264 y32 w89 h13, Restart Delay (ms):
Gui Add, Edit, vRestartDelay x360 y24 w50 h21, 1000
Gui Add, Text, x264 y56 w129 h13, Wait for Bobber Delay (ms):
Gui Add, Edit, vWaitForBobberDelay x400 y48 w50 h21, 1000
Gui Add, Text, x264 y80 w75 h13, Navigation Key:
Gui Add, Edit, vNavigationKey x344 y72 w50 h21, \

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

Gui Tab, 4
Gui Add, GroupBox, x8 y8 w459 h300, Farming Settings
Gui Add, Checkbox, vFarmCanal x16 y32 w121 h13, Farm Canal
Gui Add, Text, x16 y56 w450 h200, Please make sure that when this is enabled,, have your spawn point at Grotto Glacier, are equipped with the Winter Cloak and the Advanced Oxygen Tank, have conches in your 9th inventory slot (uses a conch about every 17 minutes, so buy them at the start accordingly), make sure you run the camera placement in the webhook tab, and finally, are not facing north (can't even see the N in the compass). Once loaded, just press p to start. (Please also note that AutoCamera is also auto-disabled even if turned on.)                                                                     BIG THANK YOU to 0x3b5 for allowing me to use some of his code for this, you can join his macro's server here: https://discord.gg/aTNKqT8Jfq
Gui Tab


IniFile := A_ScriptDir . "\Lib\settings.ini"

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
Gui, Add, Checkbox, vShowFishCaught x216 y32 w108 h13, Show Fish Caught
Gui, Add, Checkbox, vShowFishLost x216 y56 w94 h13, Show Fish Lost
Gui, Add, Checkbox, vShowTotalFish x216 y80 w98 h13, Show Total Fish
Gui, Add, Checkbox, vShowLevel x216 y104 w78 h13, Show Level
Gui, Add, Checkbox, vShowCaughtLine x216 y128 w109 h13, Show Caught Line
Gui, Add, Checkbox, vShowMoney x336 y56 w84 h13, Show Money
Gui, Add, Checkbox, vShowRunningTime x336 y32 w118 h13, Show Running Time
Gui, Add, Checkbox, vShowCatchStreak x336 y80 w114 h13, Show Catch Streak
Gui, Add, Checkbox, vShowBestCatchStreak x312 y104 w138 h13, Show Best Catch Streak
Gui, Add, Checkbox, vShowSuccessRate x336 y128 w119 h13, Show Success Rate
Gui, Add, Checkbox, vWebhook x136 y190 w120 h30, Enable Webhook
Gui, Add, Button, x24 y190 w100 h30 gSaveSettingsW, Save
Gui, Add, Button, x300 y190 w150 h30 gSetCameraPlacement, Set Camera Placement

Gui Tab, 6
Gui Add, GroupBox, x8 y8 w459 h100, Config Management
Gui Add, Text, x20 y30 w89 h13, New Config Name:
Gui Add, Edit, vNewConfigNameGeneral x120 y30 w150 h21
Gui Add, Button, gCreateNewConfigGeneral x280 y30 w100 h30, Create New Config
Gui Add, Text, x20 y70 w60 h13, Load Config:
Gui Add, DropDownList, vLoadConfigGeneral x120 y70 w150, % GetConfigFiles()
Gui Add, Button, gLoadConfigFileGeneral x280 y70 w100 h30, Load Config
Gui Add, Button, gSaveAllSettings x104 y144 w89 h40, Save All Settings
Gui Add, Button, gStart x240 y144 w89 h40, Start
Gui Add, Text, x16 y180 w450 h40, Please note that saving all settings applies to only the config and not to the webhook settings. To modify and activate the webhook, you will need to save those settings specifically and run through the camera placement function. (The camera icon at the top right of the game)
Gui Tab

GuiControl,, ShowFishCaught, %ShowFishCaught%
GuiControl,, ShowFishLost, %ShowFishLost%
GuiControl,, ShowTotalFish, %ShowTotalFish%
GuiControl,, ShowLevel, %ShowLevel%
GuiControl,, ShowCaughtLine, %ShowCaughtLine%
GuiControl,, ShowMoney, %ShowMoney%
GuiControl,, ShowRunningTime, %ShowRunningTime%
GuiControl,, ShowCatchStreak, %ShowCatchStreak%
GuiControl,, ShowBestCatchStreak, %ShowBestCatchStreak%
GuiControl,, ShowSuccessRate, %ShowSuccessRate%
GuiControl,, Webhook, %Webhook%

Gui, Show, AutoSize, Settings
Return

SaveSettingsW:
    GuiControlGet, WebhookDiscord
    GuiControlGet, ShowFishCaught
    GuiControlGet, ShowFishLost
    GuiControlGet, ShowTotalFish
    GuiControlGet, ShowLevel
    GuiControlGet, ShowCaughtLine
    GuiControlGet, ShowMoney
    GuiControlGet, ShowRunningTime
    GuiControlGet, ShowCatchStreak
    GuiControlGet, ShowBestCatchStreak
    GuiControlGet, ShowSuccessRate
    GuiControlGet, Webhook

    ; Write settings to INI file
    IniWrite, % (Webhook ? "true" : "false"), %IniFile%, webhook, Webhook
    IniWrite, %WebhookDiscord%, %IniFile%, webhook, WebhookURL
    IniWrite, % (ShowFishCaught ? "true" : "false"), %IniFile%, Webhook, ShowFishCaught
    IniWrite, % (ShowFishLost ? "true" : "false"), %IniFile%, Webhook, ShowFishLost
    IniWrite, % (ShowTotalFish ? "true" : "false"), %IniFile%, Webhook, ShowTotalFish
    IniWrite, % (ShowLevel ? "true" : "false"), %IniFile%, Webhook, ShowLevel
    IniWrite, % (ShowCaughtLine ? "true" : "false"), %IniFile%, Webhook, ShowCaughtLine
    IniWrite, % (ShowMoney ? "true" : "false"), %IniFile%, Webhook, ShowMoney
    IniWrite, % (ShowRunningTime ? "true" : "false"), %IniFile%, Webhook, ShowRunningTime
    IniWrite, % (ShowCatchStreak ? "true" : "false"), %IniFile%, Webhook, ShowCatchStreak
    IniWrite, % (ShowBestCatchStreak ? "true" : "false"), %IniFile%, Webhook, ShowBestCatchStreak
    IniWrite, % (ShowSuccessRate ? "true" : "false"), %IniFile%, Webhook, ShowSuccessRate

    MsgBox, Settings saved successfully!
Return 



Gui Show, w470 h245, Skate's Macro V1.2
Return


; Show a summary of the variables for debugging
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
    GuiControl,, LoadConfigGeneral, % GetConfigFiles() ; Refresh dropdown
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



Start:

    MsgBox, Loaded config from: %SelectedFile%
    
    ScriptDirectory := A_ScriptDir 
    LibFolder := ScriptDirectory . "\Lib"  
    
    IfNotExist, %LibFolder%
    {

        FileCreateDir, %LibFolder%
    }

 
    IniFile := LibFolder . "\Settings.ini"
    Load := ScriptDirectory . "\Config\" . SelectedFile
    
    Msgbox 
    IniWrite, %ConfigFile%, %IniFile%, Settings, LoadConfig


    MsgBox, Path saved to settings.ini: %SelectedFile%

    GameScriptPath := LibFolder . "\Game.ahk"
    IfExist, %GameScriptPath%
    {
        Run, %GameScriptPath%
        Exitapp
    }
    Else
    {
        MsgBox, Could not find Game.ahk in: %GameScriptPath%
    }
    WebhookScriptPath := LibFolder . "\Webhook.ahk"
    IfExist, %WebhookScriptPath%
    {
        Run, %WebhookScriptPath%
        Exitapp
    }
    Else
    {
        MsgBox, Could not find Game.ahk in: %GameScriptPath%
    }
Return






; Create New Config for Shake
CreateNewConfigShake:
    Gui, Submit, NoHide
    ConfigDir := A_ScriptDir . "\Config"
    if !FileExist(ConfigDir)
        FileCreateDir, % ConfigDir
    FileDelete, % ConfigDir . "\" . NewConfigNameShake . ".ini"
    FileAppend, , % ConfigDir . "\" . NewConfigNameShake . ".ini"
    MsgBox, New config file created: %NewConfigNameShake%.ini
    GuiControl,, LoadConfigShake, % GetConfigFiles() ; Refresh dropdown
return

; Load Config File for Shake
LoadConfigFileShake:
    Gui, Submit, NoHide
    SelectedFile := LoadConfigShake
    if (SelectedFile != "") {
        FileRead, Config, % SelectedFile
        MsgBox, Loaded config from: %SelectedFile%
    }
return

; Create New Config for Minigame
CreateNewConfigMinigame:
    Gui, Submit, NoHide
    ConfigDir := A_ScriptDir . "\Config"
    if !FileExist(ConfigDir)
        FileCreateDir, % ConfigDir
    FileDelete, % ConfigDir . "\" . NewConfigNameMinigame . ".ini"
    FileAppend, , % ConfigDir . "\" . NewConfigNameMinigame . ".ini"
    MsgBox, New config file created: %NewConfigNameMinigame%.ini
    GuiControl,, LoadConfigMinigame, % GetConfigFiles() ; Refresh dropdown
return

; Load Config File for Minigame
LoadConfigFileMinigame:
    Gui, Submit, NoHide
    SelectedFile := LoadConfigMinigame
    if (SelectedFile != "") {
        FileRead, Config, % SelectedFile
        MsgBox, Loaded config from: %SelectedFile%
    }
return

; Create New Config for Webhook
CreateNewConfigWebhook:
    Gui, Submit, NoHide
    ConfigDir := A_ScriptDir . "\Config"
    if !FileExist(ConfigDir)
        FileCreateDir, % ConfigDir
    FileDelete, % ConfigDir . "\" . NewConfigNameWebhook . ".ini"
    FileAppend, , % ConfigDir . "\" . NewConfigNameWebhook . ".ini"
    MsgBox, New config file created: %NewConfigNameWebhook%.ini
    GuiControl,, LoadConfigWebhook, % GetConfigFiles() ; Refresh dropdown
return

; Load Config File for Webhook
LoadConfigFileWebhook:
    Gui, Submit, NoHide
    SelectedFile := LoadConfigWebhook
    if (SelectedFile != "") {
        FileRead, Config, % SelectedFile
        MsgBox, Loaded config from: %SelectedFile%
    }
return


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
