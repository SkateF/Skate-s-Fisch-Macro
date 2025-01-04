#SingleInstance Force
#Persistent
SetKeyDelay, -1
SetMouseDelay, -1
SetBatchLines, -1
SetTitleMatchMode, 2
CoordMode, Tooltip, Relative
CoordMode, Pixel, Relative
CoordMode, Mouse, Relative


ScriptDirectory := A_ScriptDir  

IniFile := ScriptDirectory . "\Settings.ini" 
IniRead, X, %IniFile%, CameraPlacement, X
X := X
IniRead, Y, %IniFile%, CameraPlacement, Y
Y := Y

IniRead, Webhook, %IniFile%, webhook, Webhook, false
Webhook := %Webhook%
if (Webhook = "false") {
	Webhook := false
} else if (Webhook = "true") {
	Webhook := true
}
IfNotExist, %IniFile%
{
    ExitApp
}

IniRead, LoadConfig, %IniFile%, Settings, LoadConfig, NotFound  

ConfigFolder := LoadConfig



	IniRead, AutoLowerGraphics, %ConfigFolder%, General, AutoLowerGraphics, false
	if (AutoLowerGraphics = "false") {
		AutoLowerGraphics := false
	} else if (AutoLowerGraphics = "true") {
		AutoLowerGraphics := true
	}
	

    IniRead, AutoGraphicsDelay, %ConfigFolder%, General, AutoGraphicsDelay, 50
    AutoGraphicsDelay := AutoGraphicsDelay + 0

    IniRead, AutoZoomInCamera, %ConfigFolder%, General, AutoZoomInCamera, false
    if (AutoZoomInCamera = "false") {
		AutoZoomInCamera := false
	} else if (AutoZoomInCamera = "true") {
		AutoZoomInCamera := true
	}

    IniRead, AutoZoomDelay, %ConfigFolder%, General, AutoZoomDelay, 50
    AutoZoomDelay := AutoZoomDelay + 0

    IniRead, AutoBlurCamera, %ConfigFolder%, General, AutoBlurCamera, false
    if (AutoBlurCamera = "false") {
		AutoBlurCamera := false
	} else if (AutoBlurCamera = "true") {
		AutoBlurCamera := true
	}

    IniRead, AutoBlurDelay, %ConfigFolder%, General, AutoBlurDelay, 50
    AutoBlurDelay := AutoBlurDelay + 0

    IniRead, AutoEnableCameraMode, %ConfigFolder%, General, AutoEnableCameraMode, false
    if (AutoEnableCameraMode = "false") {
		AutoEnableCameraMode := false
	} else if (AutoEnableCameraMode = "true") {
		AutoEnableCameraMode := true
	}

    IniRead, AutoCameraDelay, %ConfigFolder%, General, AutoCameraDelay, 200
    AutoCameraDelay := AutoCameraDelay + 0

    IniRead, AutoLookDownCamera, %ConfigFolder%, General, AutoLookDownCamera, false
    if (AutoLookDownCamera = "false") {
		AutoLookDownCamera := false
	} else if (AutoLookDownCamera = "true") {
		AutoLookDownCamera := true
	}
	
    IniRead, AutoLookDelay, %ConfigFolder%, General, AutoLookDelay, 200
    AutoLookDelay := AutoLookDelay + 0

    IniRead, HoldRodCastDuration, %ConfigFolder%, General, HoldRodCastDuration, 1000
    HoldRodCastDuration := HoldRodCastDuration + 0

    IniRead, NavigationKey, %ConfigFolder%, General, NavigationKey, \
    NavigationKey := NavigationKey

    IniRead, WaitForBobberDelay, %ConfigFolder%, General, WaitForBobberDelay, 1000
    WaitForBobberDelay := WaitForBobberDelay + 0

    IniRead, RestartDelay, %ConfigFolder%, General, RestartDelay, 1000
    RestartDelay := RestartDelay + 0

    ; Shake Tab
    IniRead, ShakeMode, %ConfigFolder%, Shake, ShakeMode, Click
    ShakeMode := ShakeMode
    
    IniRead, FishBarColorTolerance, %ConfigFolder%, Shake, FishBarColorTolerance, 0
    FishBarColorTolerance := FishBarColorTolerance + 0
    
    IniRead, ClickShakeFailsafe, %ConfigFolder%, Shake, ClickShakeFailsafe, 20
    ClickShakeFailsafe := ClickShakeFailsafe + 0
    
    IniRead, ClickShakeColorTolerance, %ConfigFolder%, Shake, ClickShakeColorTolerance, 1
    ClickShakeColorTolerance := ClickShakeColorTolerance + 0
    
    IniRead, ClickScanDelay, %ConfigFolder%, Shake, ClickScanDelay, 100
    ClickScanDelay := ClickScanDelay + 0
    
    IniRead, RepeatBypassCounter, %ConfigFolder%, Shake, RepeatBypassCounter, 10
    RepeatBypassCounter := RepeatBypassCounter + 0
    
    IniRead, NavigationShakeFailsafeShake, %ConfigFolder%, Shake, NavigationShakeFailsafeShake, 30
    NavigationShakeFailsafeShake := NavigationShakeFailsafeShake + 0
    
    IniRead, NavigationSpamDelay, %ConfigFolder%, Shake, NavigationSpamDelay, 10
    NavigationSpamDelay := NavigationSpamDelay + 0

 
    IniRead, ManualBarSize, %ConfigFolder%, Minigame, ManualBarSize, 0
    ManualBarSize := ManualBarSize + 0
    
    IniRead, BarSizeCalculationColorTolerance, %ConfigFolder%, Minigame, BarSizeCalculationColorTolerance, 15
    BarSizeCalculationColorTolerance := BarSizeCalculationColorTolerance + 0
    
    IniRead, WhiteBarColorTolerance, %ConfigFolder%, Minigame, WhiteBarColorTolerance, 5
    WhiteBarColorTolerance := WhiteBarColorTolerance + 0
    
    IniRead, ArrowColorTolerance, %ConfigFolder%, Minigame, ArrowColorTolerance, 0
    ArrowColorTolerance := ArrowColorTolerance + 0
    
    IniRead, StabilizerLoop, %ConfigFolder%, Minigame, StabilizerLoop, 10
    StabilizerLoop := StabilizerLoop + 0
    
    IniRead, StableRightMultiplier, %ConfigFolder%, Minigame, StableRightMultiplier, 2
    StableRightMultiplier := StableRightMultiplier + 0
    
    IniRead, UnstableLeftMultiplier, %ConfigFolder%, Minigame, UnstableLeftMultiplier, 2.4
    UnstableLeftMultiplier := UnstableLeftMultiplier + 0

    IniRead, BarCalculationFailsafe, %ConfigFolder%, Minigame, BarCalculationFailsafe, 10
    BarCalculationFailsafe := BarCalculationFailsafe + 0

    IniRead, ArrowColorTolerance, %ConfigFolder%, Minigame, ArrowColorTolerance, 0
    ArrowColorTolerance := ArrowColorTolerance + 0

    IniRead, SideBarRatio, %ConfigFolder%, Minigame, SideBarRatio, 0.8
    SideBarRatio := SideBarRatio + 0

    IniRead, SideBarWaitMultiplier, %ConfigFolder%, Minigame, SideBarWaitMultiplier, 4.5
    SideBarWaitMultiplier := SideBarWaitMultiplier + 0

    IniRead, StableRightDivision, %ConfigFolder%, Minigame, StableRightDivision, 1.3
    StableRightDivision := StableRightDivision + 0

    IniRead, StableLeftMultiplier, %ConfigFolder%, Minigame, StableLeftMultiplier, 1.8
    StableLeftMultiplier := StableLeftMultiplier + 0

    IniRead, StableLeftDivision, %ConfigFolder%, Minigame, StableLeftDivision, 1.3
    StableLeftDivision := StableLeftDivision + 0

    IniRead, UnstableRightMultiplier, %ConfigFolder%, Minigame, UnstableRightMultiplier, 2.4
    UnstableRightMultiplier := UnstableRightMultiplier + 0

    IniRead, UnstableRightDivision, %ConfigFolder%, Minigame, UnstableRightDivision, 1.3
    UnstableRightDivision := UnstableRightDivision + 0

    IniRead, UnstableLeftDivision, %ConfigFolder%, Minigame, UnstableLeftDivision, 1.3
    UnstableLeftDivision := UnstableLeftDivision + 0

    IniRead, RightAnkleBreakMultiplier, %ConfigFolder%, Minigame, RightAnkleBreakMultiplier, 0.9
    RightAnkleBreakMultiplier := RightAnkleBreakMultiplier + 0

    IniRead, LeftAnkleBreakMultiplier, %ConfigFolder%, Minigame, LeftAnkleBreakMultiplier, 0.5
    LeftAnkleBreakMultiplier := LeftAnkleBreakMultiplier + 0

	IniRead, FarmCanal, %ConfigFolder%, Farm, FarmCanal, false
	if (FarmCanal = "false") {
		FarmCanal := false
	} else if (FarmCanal = "true") {
		FarmCanal := true
	}
	
lastRunTime := 0 
runInterval := 17 * 60000 
CanalCamera := 1

if (AutoLowerGraphics != true and AutoLowerGraphics != false)
	{
	msgbox, AutoLowerGraphics must be set to true or false! (check your spelling)
	exitapp
	}
	
if (AutoEnableCameraMode != true and AutoEnableCameraMode != false)
	{
	msgbox, AutoEnableCameraMode must be set to true or false! (check your spelling)
	exitapp
	}
	
if (AutoZoomInCamera != true and AutoZoomInCamera != false)
	{
	msgbox, AutoZoomInCamera must be set to true or false! (check your spelling)
	exitapp
	}
	
if (AutoLookDownCamera != true and AutoLookDownCamera != false)
	{
	msgbox, AutoLookDownCamera must be set to true or false! (check your spelling)
	exitapp
	}
	
if (AutoBlurCamera != true and AutoBlurCamera != false)
	{
	msgbox, AutoBlurCamera must be set to true or false! (check your spelling)
	exitapp
	}
	
if (ShakeMode != "Navigation" and ShakeMode != "Click")
	{
	msgbox, ShakeMode must be set to "Click" or "Navigation"! (check your spelling)
	exitapp
	}

;====================================================================================================;

WinActivate, Roblox
if WinActive("Roblox")
	{
	WinMaximize, Roblox
	}
else
	{
	msgbox, Roblox Not Found!
	exitapp
	}
	
;====================================================================================================;

send {lbutton up}
send {rbutton up}
send {shift up}

;====================================================================================================;

Calculations:
WinGetActiveStats, Title, WindowWidth, WindowHeight, WindowLeft, WindowTop

CameraCheckLeft := WindowWidth/2.8444
CameraCheckRight := WindowWidth/1.5421
CameraCheckTop := WindowHeight/1.28
CameraCheckBottom := WindowHeight

ClickShakeLeft := WindowWidth/4.6545
ClickShakeRight := WindowWidth/1.2736
ClickShakeTop := WindowHeight/14.08
ClickShakeBottom := WindowHeight/1.3409

FishBarLeft := WindowWidth/3.3160
FishBarRight := WindowWidth/1.4317
FishBarTop := WindowHeight/1.1871
FishBarBottom := WindowHeight/1.1512

FishBarTooltipHeight := WindowHeight/1.0626

ResolutionScaling := 2560/WindowWidth

LookDownX := WindowWidth/2
LookDownY := WindowHeight/4

runtimeS := 0
runtimeM := 0
runtimeH := 0

TooltipX := WindowWidth/20
Tooltip1 := (WindowHeight/2)-(20*9)
Tooltip2 := (WindowHeight/2)-(20*8)
Tooltip3 := (WindowHeight/2)-(20*7)
Tooltip4 := (WindowHeight/2)-(20*6)
Tooltip5 := (WindowHeight/2)-(20*5)
Tooltip6 := (WindowHeight/2)-(20*4)
Tooltip7 := (WindowHeight/2)-(20*3)
Tooltip8 := (WindowHeight/2)-(20*2)
Tooltip9 := (WindowHeight/2)-(20*1)
Tooltip10 := (WindowHeight/2)
Tooltip11 := (WindowHeight/2)+(20*1)
Tooltip12 := (WindowHeight/2)+(20*2)
Tooltip13 := (WindowHeight/2)+(20*3)
Tooltip14 := (WindowHeight/2)+(20*4)
Tooltip15 := (WindowHeight/2)+(20*5)
Tooltip16 := (WindowHeight/2)+(20*6)
Tooltip17 := (WindowHeight/2)+(20*7)
Tooltip18 := (WindowHeight/2)+(20*8)
Tooltip19 := (WindowHeight/2)+(20*9)
Tooltip20 := (WindowHeight/2)+(20*10)

tooltip, Made By SkateF || AsphaltCake, %TooltipX%, %Tooltip1%, 1
tooltip, Runtime: 0h 0m 0s, %TooltipX%, %Tooltip2%, 2

tooltip, Press "P" to Start, %TooltipX%, %Tooltip4%, 4
tooltip, Press "O" to Reload, %TooltipX%, %Tooltip5%, 5
tooltip, Press "L" to Exit, %TooltipX%, %Tooltip6%, 6

if (AutoLowerGraphics == true)
	{
	tooltip, AutoLowerGraphics: true, %TooltipX%, %Tooltip8%, 8
	}
else
	{
	tooltip, AutoLowerGraphics: false, %TooltipX%, %Tooltip8%, 8
	}
	
if (AutoEnableCameraMode == true)
	{
	tooltip, AutoEnableCameraMode: true, %TooltipX%, %Tooltip9%, 9
	}
else
	{
	tooltip, AutoEnableCameraMode: false, %TooltipX%, %Tooltip9%, 9
	}
	
if (AutoZoomInCamera == true)
	{
	tooltip, AutoZoomInCamera: true, %TooltipX%, %Tooltip10%, 10
	}
else
	{
	tooltip, AutoZoomInCamera: false, %TooltipX%, %Tooltip10%, 10
	}
	
if (AutoLookDownCamera == true)
	{
	tooltip, AutoLookDownCamera: true, %TooltipX%, %Tooltip11%, 11
	}
else
	{
	tooltip, AutoLookDownCamera: false, %TooltipX%, %Tooltip11%, 11
	}
	
if (AutoBlurCamera == true)
	{
	tooltip, AutoBlurCamera: true, %TooltipX%, %Tooltip12%, 12
	}
else
	{
	tooltip, AutoBlurCamera: false, %TooltipX%, %Tooltip12%, 12
	}

tooltip, Navigation Key: "%NavigationKey%", %TooltipX%, %Tooltip14%, 14

if (ShakeMode == "Click")
	{
	tooltip, Shake Mode: "Click", %TooltipX%, %Tooltip16%, 16
	}
else
	{
	tooltip, Shake Mode: "Navigation", %TooltipX%, %Tooltip16%, 16
	}
return

;====================================================================================================;

runtime:
runtimeS++
if (runtimeS >= 60)
	{
	runtimeS := 0
	runtimeM++
	}
if (runtimeM >= 60)
	{
	runtimeM := 0
	runtimeH++
	}

if WinActive("Roblox")
	{
	tooltip, Runtime: %runtimeH%h %runtimeM%m %runtimeS%s, %TooltipX%, %Tooltip2%, 2
	}
else
	{
	exitapp
	}
return

;====================================================================================================;

$o:: 
    reload  
    Process, Close, Webhook.ahk
    Run, % A_ScriptDir "\Webhook.ahk"
$l:: 
    exitapp 
$p:: 
;====================================================================================================;

gosub, Calculations
settimer, runtime, 1000

tooltip, Press "O" to Reload, %TooltipX%, %Tooltip4%, 4
tooltip, Press "L" to Exit, %TooltipX%, %Tooltip5%, 5

tooltip, , , , 6
tooltip, , , , 10
tooltip, , , , 11
tooltip, , , , 12
tooltip, , , , 14
tooltip, , , , 16

tooltip, Current Task: AutoLowerGraphics, %TooltipX%, %Tooltip7%, 7
tooltip, F10 Count: 0/20, %TooltipX%, %Tooltip9%, 9
f10counter := 0
if (AutoLowerGraphics == true)
	{
	send {shift}
	tooltip, Action: Press Shift, %TooltipX%, %Tooltip8%, 8
	sleep %AutoGraphicsDelay%
	send {shift down}
	tooltip, Action: Hold Shift, %TooltipX%, %Tooltip8%, 8
	sleep %AutoGraphicsDelay%
	loop, 20
		{
		f10counter++
		tooltip, F10 Count: %f10counter%/20, %TooltipX%, %Tooltip9%, 9
		send {f10}
		tooltip, Action: Press F10, %TooltipX%, %Tooltip8%, 8
		sleep %AutoGraphicsDelay%
		}
	send {shift up}
	tooltip, Action: Release Shift, %TooltipX%, %Tooltip8%, 8
	sleep %AutoGraphicsDelay%
	}

tooltip, Current Task: AutoZoomInCamera, %TooltipX%, %Tooltip7%, 7
tooltip, Scroll In: 0/20, %TooltipX%, %Tooltip9%, 9
tooltip, Scroll Out: 0/1, %TooltipX%, %Tooltip10%, 10
scrollcounter := 0
if (AutoZoomInCamera == true)
	{
	sleep %AutoZoomDelay%
	loop, 20
		{
		scrollcounter++
		tooltip, Scroll In: %scrollcounter%/20, %TooltipX%, %Tooltip9%, 9
		send {wheelup}
		tooltip, Action: Scroll In, %TooltipX%, %Tooltip8%, 8
		sleep %AutoZoomDelay%
		}
	send {wheeldown}
	tooltip, Scroll Out: 1/1, %TooltipX%, %Tooltip10%, 10
	tooltip, Action: Scroll Out, %TooltipX%, %Tooltip8%, 8
	AutoZoomDelay := AutoZoomDelay*5
	sleep %AutoZoomDelay%
	}
	
tooltip, , , , 10

tooltip, Current Task: AutoEnableCameraMode, %TooltipX%, %Tooltip7%, 7
tooltip, Right Count: 0/10, %TooltipX%, %Tooltip9%, 9
rightcounter := 0
if (AutoEnableCameraMode == true && FarmCanal == false)
	{
	PixelSearch, , , CameraCheckLeft, CameraCheckTop, CameraCheckRight, CameraCheckBottom, 0xFFFFFF, 0, Fast
	if (ErrorLevel == 0)
		{
		sleep %AutoCameraDelay%
		send {2}
		tooltip, Action: Presss 2, %TooltipX%, %Tooltip8%, 8
		sleep %AutoCameraDelay%
		send {1}
		tooltip, Action: Press 1, %TooltipX%, %Tooltip8%, 8
		sleep %AutoCameraDelay%
		send {%NavigationKey%}
		tooltip, Action: Press %NavigationKey%, %TooltipX%, %Tooltip8%, 8
		sleep %AutoCameraDelay%
		loop, 10
			{
			rightcounter++
			tooltip, Right Count: %rightcounter%/10, %TooltipX%, %Tooltip9%, 9
			send {right}
			tooltip, Action: Press Right, %TooltipX%, %Tooltip8%, 8
			sleep %AutoCameraDelay%
			}
		send {enter}
		tooltip, Action: Press Enter, %TooltipX%, %Tooltip8%, 8
		sleep %AutoCameraDelay%
		}
	}
RestartMacro:
    currentTime := A_TickCount 
    timeSinceLastRun := currentTime - lastRunTime

    If (timeSinceLastRun >= runInterval || lastRunTime == 0) {
        lastRunTime := currentTime

    	if (FarmCanal == true) {
			if (AutoEnableCameraMode == true)
				{
				tooltip, Current Task: Auto Canal Farm, %TooltipX%, %Tooltip7%, 7
				PixelSearch, , , CameraCheckLeft, CameraCheckTop, CameraCheckRight, CameraCheckBottom, 0xFFFFFF, 0, Fast
				if (ErrorLevel == 1)
					{
					sleep %AutoCameraDelay%
					send {2}
					tooltip, Action: Presss 2, %TooltipX%, %Tooltip8%, 8
					sleep %AutoCameraDelay%
					send {1}
					tooltip, Action: Press 1, %TooltipX%, %Tooltip8%, 8
					sleep %AutoCameraDelay%
					send {%NavigationKey%}
					tooltip, Action: Press %NavigationKey%, %TooltipX%, %Tooltip8%, 8
					sleep %AutoCameraDelay%
					loop, 10
						{
						rightcounter++
						tooltip, Right Count: %rightcounter%/10, %TooltipX%, %Tooltip9%, 9
						send {right}
						tooltip, Action: Press Right, %TooltipX%, %Tooltip8%, 8
						sleep %AutoCameraDelay%
						}
					send {enter}
					tooltip, Action: Press Enter, %TooltipX%, %Tooltip8%, 8
					sleep %AutoCameraDelay%
					Send, {%NavigationKey%}
					sleep 300
					Click, left
					}
				}
			MouseMove 500 500, 0 
			MouseMove 500 500, 0 
			sleep 3000
			send {rbutton up}
			sleep %AutoLookDelay%
			mousemove, LookDownX, LookDownY
			sleep %AutoLookDelay%
			send {rbutton down}
			sleep %AutoLookDelay%
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 10000)
			sleep %AutoLookDelay%
			send {rbutton up}
			sleep %AutoLookDelay%
			mousemove, LookDownX, LookDownY
			sleep %AutoLookDelay%
			send {rbutton up}
			sleep %AutoLookDelay%
			mousemove, LookDownX, LookDownY
			sleep %AutoLookDelay%
			send {rbutton down}
			sleep %AutoLookDelay%
			DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 10000)
			sleep %AutoLookDelay%
			send {rbutton up}
			sleep %AutoLookDelay%
			mousemove, LookDownX, LookDownY
			sleep %AutoLookDelay%
			Loop, 10 {
                Send {WheelDown}
                Sleep AutoZoomDelay
            }

            screenWidth := A_ScreenWidth
            screenHeight := A_ScreenHeight
            

            centerStripWidth := 5
            centerXStart := (screenWidth // 2) - (centerStripWidth // 2)
            centerXEnd := (screenWidth // 2) + (centerStripWidth // 2)

      
            Loop {
              
                PixelSearch, foundX, foundY, centerXStart, 0, centerXEnd, screenHeight, 0x75B7E6, 5, Fast
                
                if (ErrorLevel = 0) { 
       
                    Send {Right up}
                    break
                }

       
                Send {Right down}  
                Sleep 10          
                Send {Right up}    
                Sleep 50      
            }

    
            sleep 3000

   
            Loop, 10 {
                Send {WheelDown}
                Sleep AutoZoomDelay
            }

            sleep 100
            send {9 down}
			sleep 1000
			MouseMove 500 500, 0 
			MouseMove 500 500, 0 
            sleep 100
            send {9 up}
            sleep 100
		

   
            Click, 1000, 1000

            sleep 1000

			send {9 down}
            sleep 100
            send {9 up}
            sleep 100


     
            send {1 down}
            sleep 1000
            send {1 up}
			sleep 3000

			Click, 500, 500
		
            sleep 100
            Loop, 6 {
                Send {WheelDown}
                Sleep AutoZoomDelay
            }

            Send {d up}{w up}{s up}{a up}{Space up}
            Sleep 100

     
            Send {d down}
            Sleep 1300
            Send {w down}
            Sleep 850
            Send {w up}{s down}
            Sleep 2700
            Send {d up}e
            Sleep 200
            Send {s up}e
            Sleep 200

            Loop, 5 {
                Send e
                Sleep 25
            }
            Sleep 200

            Send {Space down}{w down}{d down}e
            Sleep 1000
            Send {d up}
            Sleep 1000
            Send {Space up}
            Sleep 4250
            Send {d down}{Space down}
            Sleep 5600
            Send {w up}{Space up}
            Sleep 1450
            Send {Space down}
            Sleep 6000
            Send {d up}{Space up}
            Sleep 100
            Send {Space down}{a down}{s down}
            Sleep 4400
            Send {a up}
            Sleep 500
            Send {Space up}
            Sleep 3600
            Send {a down}{s up}
            Sleep 1500
            Send {w down}
            Sleep 200
            Send {w up}
            Sleep 3800
            Send {s down}
            Sleep 200
            Send {a up}
            Sleep 500
            Send {a down}{w down}{s up}
            Sleep 1250
            Send {a up}
            Sleep 1500
            Send {w up}
            Sleep 300

    
            Loop, 25 {
                Send {WheelUp}
                Sleep AutoZoomDelay
            }
            Loop, 1 {
                Send {WheelDown}
                Sleep AutoZoomDelay
            }
            Sleep AutoZoomDelay * 5
			sleep, 300

			if (AutoEnableCameraMode == true)
				{
				Click, left, %X%, %Y%
				sleep, 300
				MouseMove 500 500, 0 
				sleep 20
				MouseMove 500 500, 0 
				sleep 20
				MouseMove 500 500, 0 
				sleep 20
				sleep, 300
				}
			sleep, 300
     
            StopFarmingAt := A_TickCount + 35 * 60000
			sleep 2500
        }
	}


tooltip, , , , 9

tooltip, Current Task: AutoLookDownCamera, %TooltipX%, %Tooltip7%, 7
if (AutoLookDownCamera == true)
	{
	send {rbutton up}
	sleep %AutoLookDelay%
	mousemove, LookDownX, LookDownY
	tooltip, Action: Position Mouse, %TooltipX%, %Tooltip8%, 8
	sleep %AutoLookDelay%
	send {rbutton down}
	tooltip, Action: Hold Right Click, %TooltipX%, %Tooltip8%, 8
	sleep %AutoLookDelay%
	DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 10000)
	tooltip, Action: Move Mouse Down, %TooltipX%, %Tooltip8%, 8
	sleep %AutoLookDelay%
	send {rbutton up}
	tooltip, Action: Release Right Click, %TooltipX%, %Tooltip8%, 8
	sleep %AutoLookDelay%
	mousemove, LookDownX, LookDownY
	tooltip, Action: Position Mouse, %TooltipX%, %Tooltip8%, 8
	sleep %AutoLookDelay%
	}
	
tooltip, Current Task: AutoBlurCamera, %TooltipX%, %Tooltip7%, 7	
if (AutoBlurCamera == true && FarmCanal = false)
	{
	sleep %AutoBlurDelay%
	send {m}
	tooltip, Action: Press M, %TooltipX%, %Tooltip8%, 8
	sleep %AutoBlurDelay%
	}

tooltip, Current Task: Casting Rod, %TooltipX%, %Tooltip7%, 7
send {lbutton down}
tooltip, Action: Casting For %HoldRodCastDuration%ms, %TooltipX%, %Tooltip8%, 8
sleep %HoldRodCastDuration%
send {lbutton up}
tooltip, Action: Waiting For Bobber (%WaitForBobberDelay%ms), %TooltipX%, %Tooltip8%, 8
sleep %WaitForBobberDelay%

if (ShakeMode == "Click")
goto ClickShakeMode
else if (ShakeMode == "Navigation")
goto NavigationShakeMode

;====================================================================================================;

ClickShakeFailsafe:
ClickFailsafeCount++
tooltip, Failsafe: %ClickFailsafeCount%/%ClickShakeFailsafe%, %TooltipX%, %Tooltip14%, 14
if (ClickFailsafeCount >= ClickShakeFailsafe)
	{
	settimer, ClickShakeFailsafe, off
	ForceReset := true
	}
return

ClickShakeMode:

tooltip, Current Task: Shaking, %TooltipX%, %Tooltip7%, 7
tooltip, Click X: None, %TooltipX%, %Tooltip8%, 8
tooltip, Click Y: None, %TooltipX%, %Tooltip9%, 9

tooltip, Click Count: 0, %TooltipX%, %Tooltip11%, 11
tooltip, Bypass Count: 0/%RepeatBypassCounter%, %TooltipX%, %Tooltip12%, 12

tooltip, Failsafe: 0/%ClickShakeFailsafe%, %TooltipX%, %Tooltip14%, 14

ClickFailsafeCount := 0
ClickCount := 0
ClickShakeRepeatBypassCounter := 0
MemoryX := 0
MemoryY := 0
ForceReset := false

settimer, ClickShakeFailsafe, 1000

ClickShakeModeRedo:
if (ForceReset == true)
	{
	tooltip, , , , 11
	tooltip, , , , 12
	tooltip, , , , 14
	goto RestartMacro
	}
sleep %ClickScanDelay%
PixelSearch, , , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
if (ErrorLevel == 0)
	{
	settimer, ClickShakeFailsafe, off
	tooltip, , , , 9
	tooltip, , , , 11
	tooltip, , , , 12
	tooltip, , , , 14
	goto BarMinigame
	}
else
	{
	PixelSearch, ClickX, ClickY, ClickShakeLeft, ClickShakeTop, ClickShakeRight, ClickShakeBottom, 0xFFFFFF, %ClickShakeColorTolerance%, Fast
	if (ErrorLevel == 0)
		{
		tooltip, Click X: %ClickX%, %TooltipX%, %Tooltip8%, 8
		tooltip, Click Y: %ClickY%, %TooltipX%, %Tooltip9%, 9
		if (ClickX != MemoryX and ClickY != MemoryY)
			{
			ClickShakeRepeatBypassCounter := 0
			tooltip, Bypass Count: %ClickShakeRepeatBypassCounter%/%RepeatBypassCounter%, %TooltipX%, %Tooltip12%, 12
			ClickCount++
			click, %ClickX%, %ClickY%
			tooltip, Click Count: %ClickCount%, %TooltipX%, %Tooltip11%, 11
			MemoryX := ClickX
			MemoryY := ClickY
			goto ClickShakeModeRedo
			}
		else
			{
			ClickShakeRepeatBypassCounter++
			tooltip, Bypass Count: %ClickShakeRepeatBypassCounter%/%RepeatBypassCounter%, %TooltipX%, %Tooltip12%, 12
			if (ClickShakeRepeatBypassCounter >= RepeatBypassCounter)
				{
				MemoryX := 0
				MemoryY := 0
				}
			goto ClickShakeModeRedo
			}
		}
	else
		{
		goto ClickShakeModeRedo
		}
	}

;====================================================================================================;

NavigationShakeFailsafe:
NavigationFailsafeCount++
tooltip, Failsafe: %NavigationFailsafeCount%/%NavigationShakeFailsafe%, %TooltipX%, %Tooltip10%, 10
if (NavigationFailsafeCount >= NavigationShakeFailsafe)
	{
	settimer, NavigationShakeFailsafe, off
	ForceReset := true
	}
return

NavigationShakeMode:

tooltip, Current Task: Shaking, %TooltipX%, %Tooltip7%, 7
tooltip, Attempt Count: 0, %TooltipX%, %Tooltip8%, 8

tooltip, Failsafe: 0/%NavigationShakeFailsafe%, %TooltipX%, %Tooltip10%, 10

NavigationFailsafeCount := 0
NavigationCounter := 0
ForceReset := false
settimer, NavigationShakeFailsafe, 1000
send {%NavigationKey%}
NavigationShakeModeRedo:
if (ForceReset == true)
	{
	tooltip, , , , 10
	goto RestartMacro
	}
sleep %NavigationSpamDelay%
PixelSearch, , , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
if (ErrorLevel == 0)
	{
	settimer, NavigationShakeFailsafe, off
	goto BarMinigame
	}
else
	{
	NavigationCounter++
	tooltip, Attempt Count: %NavigationCounter%, %TooltipX%, %Tooltip8%, 8
	sleep 1
	send {s}
	sleep 1
	send {enter}
	goto NavigationShakeModeRedo
	}

;====================================================================================================;

BarCalculationFailsafe:
BarCalcFailsafeCounter++
tooltip, Failsafe: %BarCalcFailsafeCounter%/%BarCalculationFailsafe%, %TooltipX%, %Tooltip10%, 10
if (BarCalcFailsafeCounter >= BarCalculationFailsafe)
	{
	settimer, BarCalculationFailsafe, off
	ForceReset := true
	}
return

BarMinigame:

tooltip, Current Task: Calculating Bar Size, %TooltipX%, %Tooltip7%, 7
tooltip, Bar Size: Not Found, %TooltipX%, %Tooltip8%, 8
tooltip, Failsafe: 0/%BarCalculationFailsafe%, %TooltipX%, %Tooltip10%, 10

ForceReset := false
BarCalcFailsafeCounter := 0
settimer, BarCalculationFailsafe, 1000

BarMinigameRedo:
if (ForceReset == true)
	{
	tooltip, , , , 10
	goto RestartMacro
	}
PixelSearch, BarX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0xFFFFFF, %BarSizeCalculationColorTolerance%, Fast
if (ErrorLevel == 0)
	{
	settimer, BarCalculationFailsafe, off
	if (ManualBarSize != 0)
		{
		WhiteBarSize := ManualBarSize
		goto BarMinigameSingle
		}
	WhiteBarSize := (FishBarRight-(BarX-FishBarLeft))-BarX
	goto BarMinigameSingle
	}
sleep 1
goto BarMinigameRedo

;====================================================================================================;

BarMinigameSingle:

tooltip, Current Task: Playing Bar Minigame, %TooltipX%, %Tooltip7%, 7
tooltip, Bar Size: %WhiteBarSize%, %TooltipX%, %Tooltip8%, 8

tooltip, Direction: None, %TooltipX%, %Tooltip10%, 10
tooltip, Forward Delay: None, %TooltipX%, %Tooltip11%, 11
tooltip, Counter Delay: None, %TooltipX%, %Tooltip12%, 12
tooltip, Ankle Delay: None, %TooltipX%, %Tooltip13%, 13

tooltip, Side Delay: None, %TooltipX%, %Tooltip15%, 15

HalfBarSize := WhiteBarSize/2
SideDelay := 0
AnkleBreakDelay := 0
DirectionalToggle := "Disabled"
AtLeastFindWhiteBar := false

MaxLeftToggle := false
MaxRightToggle := false
MaxLeftBar := FishBarLeft+WhiteBarSize*SideBarRatio
MaxRightBar := FishBarRight-WhiteBarSize*SideBarRatio

tooltip, |, %MaxLeftBar%, %FishBarTooltipHeight%, 18
tooltip, |, %MaxRightBar%, %FishBarTooltipHeight%, 17

BarMinigame2:
sleep 1
PixelSearch, FishX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
if (ErrorLevel == 0)
	{
	tooltip, ., %FishX%, %FishBarTooltipHeight%, 20
	if (FishX < MaxLeftBar)
		{
		if (MaxLeftToggle == false)
			{
			tooltip, <, %MaxLeftBar%, %FishBarTooltipHeight%, 19
			tooltip, Direction: Max Left, %TooltipX%, %Tooltip10%, 10
			tooltip, Forward Delay: Infinite, %TooltipX%, %Tooltip11%, 11
			tooltip, Counter Delay: None, %TooltipX%, %Tooltip12%, 12
			tooltip, Ankle Delay: 0, %TooltipX%, %Tooltip13%, 13
			DirectionalToggle := "Right"
			MaxLeftToggle := true
			send {lbutton up}
			sleep 1
			send {lbutton up}
			sleep %SideDelay%
			AnkleBreakDelay := 0
			SideDelay := 0
			tooltip, Side Delay: 0, %TooltipX%, %Tooltip15%, 15
			}
		goto BarMinigame2
		}
	else if (FishX > MaxRightBar)
		{
		if (MaxRightToggle == false)
			{
			tooltip, >, %MaxRightBar%, %FishBarTooltipHeight%, 19
			tooltip, Direction: Max Right, %TooltipX%, %Tooltip10%, 10
			tooltip, Forward Delay: Infinite, %TooltipX%, %Tooltip11%, 11
			tooltip, Counter Delay: None, %TooltipX%, %Tooltip12%, 12
			tooltip, Ankle Delay: 0, %TooltipX%, %Tooltip13%, 13
			DirectionalToggle := "Left"
			MaxRightToggle := true
			send {lbutton down}
			sleep 1
			send {lbutton down}
			sleep %SideDelay%
			AnkleBreakDelay := 0
			SideDelay := 0
			tooltip, Side Delay: 0, %TooltipX%, %Tooltip15%, 15
			}
		goto BarMinigame2
		}
	MaxLeftToggle := false
	MaxRightToggle := false
	PixelSearch, BarX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0xFFFFFF, %WhiteBarColorTolerance%, Fast
	if (ErrorLevel == 0)
		{
		AtLeastFindWhiteBar := true
		BarX := BarX+(WhiteBarSize/2)
		if (BarX > FishX)
			{
			tooltip, <, %BarX%, %FishBarTooltipHeight%, 19
			tooltip, Direction: <, %TooltipX%, %Tooltip10%, 10
			Difference := (BarX-FishX)*ResolutionScaling*StableLeftMultiplier
			CounterDifference := Difference/StableLeftDivision
			tooltip, Forward Delay: %Difference%, %TooltipX%, %Tooltip11%, 11
			tooltip, Counter Delay: %CounterDifference%, %TooltipX%, %Tooltip12%, 12
			send {lbutton up}
			if (DirectionalToggle == "Right")
				{
				tooltip, Ankle Delay: 0, %TooltipX%, %Tooltip13%, 13
				sleep %AnkleBreakDelay%
				AnkleBreakDelay := 0
				}
			else
				{
				AnkleBreakDelay := AnkleBreakDelay+(Difference-CounterDifference)*LeftAnkleBreakMultiplier
				SideDelay := AnkleBreakDelay/LeftAnkleBreakMultiplier*SideBarWaitMultiplier
				tooltip, Ankle Delay: %AnkleBreakDelay%, %TooltipX%, %Tooltip13%, 13
				tooltip, Side Delay: %SideDelay%, %TooltipX%, %Tooltip15%, 15
				}
			sleep %Difference%
			PixelSearch, FishX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
				{
				if (FishX < MaxLeftBar)
				goto BarMinigame2
				}
			send {lbutton down}
			sleep %CounterDifference%
			loop, %StabilizerLoop%
				{
				send {lbutton down}
				send {lbutton up}
				}
			DirectionalToggle := "Left"
			}
		else
			{
			tooltip, >, %BarX%, %FishBarTooltipHeight%, 19
			tooltip, Direction: >, %TooltipX%, %Tooltip10%, 10
			Difference := (FishX-BarX)*ResolutionScaling*StableRightMultiplier
			CounterDifference := Difference/StableRightDivision
			tooltip, Forward Delay: %Difference%, %TooltipX%, %Tooltip11%, 11
			tooltip, Counter Delay: %CounterDifference%, %TooltipX%, %Tooltip12%, 12
			send {lbutton down}
			if (DirectionalToggle == "Left")
				{
				tooltip, Ankle Delay: 0, %TooltipX%, %Tooltip13%, 13
				sleep %AnkleBreakDelay%
				AnkleBreakDelay := 0
				}
			else
				{
				AnkleBreakDelay := AnkleBreakDelay+(Difference-CounterDifference)*RightAnkleBreakMultiplier
				SideDelay := AnkleBreakDelay/RightAnkleBreakMultiplier*SideBarWaitMultiplier
				tooltip, Ankle Delay: %AnkleBreakDelay%, %TooltipX%, %Tooltip13%, 13
				tooltip, Side Delay: %SideDelay%, %TooltipX%, %Tooltip15%, 15
				}
			sleep %Difference%
			PixelSearch, FishX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
				{
				if (FishX > MaxRightBar)
				goto BarMinigame2
				}
			send {lbutton up}
			sleep %CounterDifference%
			loop, %StabilizerLoop%
				{
				send {lbutton down}
				send {lbutton up}
				}
			DirectionalToggle := "Right"
			}
		}
	else
		{
		if (AtLeastFindWhiteBar == false)
			{
			send {lbutton down}
			send {lbutton up}
			goto BarMinigame2
			}
		PixelSearch, ArrowX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x878584, %ArrowColorTolerance%, Fast
		if (ArrowX > FishX)
			{
			tooltip, <, %ArrowX%, %FishBarTooltipHeight%, 19
			tooltip, Direction: <<<, %TooltipX%, %Tooltip10%, 10
			Difference := HalfBarSize*UnstableLeftMultiplier
			CounterDifference := Difference/UnstableLeftDivision
			tooltip, Forward Delay: %Difference%, %TooltipX%, %Tooltip11%, 11
			tooltip, Counter Delay: %CounterDifference%, %TooltipX%, %Tooltip12%, 12
			send {lbutton up}
			if (DirectionalToggle == "Right")
				{
				tooltip, Ankle Delay: 0, %TooltipX%, %Tooltip13%, 13
				sleep %AnkleBreakDelay%
				AnkleBreakDelay := 0
				}
			else
				{
				AnkleBreakDelay := AnkleBreakDelay+(Difference-CounterDifference)*LeftAnkleBreakMultiplier
				SideDelay := AnkleBreakDelay/LeftAnkleBreakMultiplier*SideBarWaitMultiplier
				tooltip, Ankle Delay: %AnkleBreakDelay%, %TooltipX%, %Tooltip13%, 13
				tooltip, Side Delay: %SideDelay%, %TooltipX%, %Tooltip15%, 15
				}
			sleep %Difference%
			PixelSearch, FishX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
				{
				if (FishX < MaxLeftBar)
				goto BarMinigame2
				}
			send {lbutton down}
			sleep %CounterDifference%
			loop, %StabilizerLoop%
				{
				send {lbutton down}
				send {lbutton up}
				}
			DirectionalToggle := "Left"
			}
		else
			{
			tooltip, >, %ArrowX%, %FishBarTooltipHeight%, 19
			tooltip, Direction: >>>, %TooltipX%, %Tooltip10%, 10
			Difference := HalfBarSize*UnstableRightMultiplier
			CounterDifference := Difference/UnstableRightDivision
			tooltip, Forward Delay: %Difference%, %TooltipX%, %Tooltip11%, 11
			tooltip, Counter Delay: %CounterDifference%, %TooltipX%, %Tooltip12%, 12
			send {lbutton down}
			if (DirectionalToggle == "Left")
				{
				tooltip, Ankle Delay: 0, %TooltipX%, %Tooltip13%, 13
				sleep %AnkleBreakDelay%
				AnkleBreakDelay := 0
				}
			else
				{
				AnkleBreakDelay := AnkleBreakDelay+(Difference-CounterDifference)*RightAnkleBreakMultiplier
				SideDelay := AnkleBreakDelay/RightAnkleBreakMultiplier*SideBarWaitMultiplier
				tooltip, Ankle Delay: %AnkleBreakDelay%, %TooltipX%, %Tooltip13%, 13
				tooltip, Side Delay: %SideDelay%, %TooltipX%, %Tooltip15%, 15
				}
			sleep %Difference%
			PixelSearch, FishX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
				{
				if (FishX > MaxRightBar)
				goto BarMinigame2
				}
			send {lbutton up}
			sleep %CounterDifference%
			loop, %StabilizerLoop%
				{
				send {lbutton down}
				send {lbutton up}
				}
			DirectionalToggle := "Right"
			}
		}
	goto BarMinigame2
	}
else {
		sleep, %RestartDelay%
		
		if (FarmCanal == false && Webhook == true && AutoEnableCameraMode == true) {
			sleep, 300
			Click, left, %X%, %Y%
			sleep, 300
			Click, left, 500, 500
			Send, z
			sleep, 300
			Click, left, %X%, %Y%
			sleep, 300
		}
		else if (FarmCanal == true && Webhook == true && AutoEnableCameraMode == true) {
			sleep, 300
			Click, left, %X%, %Y%
			sleep, 300
			Click, left, 500, 500
			Send, z
			sleep, 300
			Click, left, %X%, %Y%
			sleep, 300
		}
		else if (FarmCanal == false && Webhook == true && AutoEnableCameraMode == false) {
			sleep, 300
			Send, z
			sleep, 300
		}
		
		goto, RestartMacro
	}
