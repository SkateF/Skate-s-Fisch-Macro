;________  ___  __    ________  _________  _______   ________           ________ ___  ________  ________  ___  ___          _____ ______   ________  ________  ________  ________          ___      ___  _____     ________     
;|\   ____\|\  \|\  \ |\   __  \|\___   ___\\  ___ \ |\   ____\         |\  _____\\  \|\   ____\|\   ____\|\  \|\  \        |\   _ \  _   \|\   __  \|\   ____\|\   __  \|\   __  \        |\  \    /  /|/ __  \   |\_____  \    
;\ \  \___|\ \  \/  /|\ \  \|\  \|___ \  \_\ \   __/|\ \  \___|_        \ \  \__/\ \  \ \  \___|\ \  \___|\ \  \\\  \       \ \  \\\__\ \  \ \  \|\  \ \  \___|\ \  \|\  \ \  \|\  \       \ \  \  /  / /\/_|\  \  \|____|\ /_   
; \ \_____  \ \   ___  \ \   __  \   \ \  \ \ \  \_|/_\ \_____  \        \ \   __\\ \  \ \_____  \ \  \    \ \   __  \       \ \  \\|__| \  \ \   __  \ \  \    \ \   _  _\ \  \\\  \       \ \  \/  / /\|/ \ \  \       \|\  \  
;  \|____|\  \ \  \\ \  \ \  \ \  \   \ \  \ \ \  \_|\ \|____|\  \        \ \  \_| \ \  \|____|\  \ \  \____\ \  \ \  \       \ \  \    \ \  \ \  \ \  \ \  \____\ \  \\  \\ \  \\\  \       \ \    / /      \ \  \ ___ __\_\  \ 
;    ____\_\  \ \__\\ \__\ \__\ \__\   \ \__\ \ \_______\____\_\  \        \ \__\   \ \__\____\_\  \ \_______\ \__\ \__\       \ \__\    \ \__\ \__\ \__\ \_______\ \__\\ _\\ \_______\       \ \__/ /        \ \__\\__\\_______\
;   |\_________\|__| \|__|\|__|\|__|    \|__|  \|_______|\_________\        \|__|    \|__|\_________\|_______|\|__|\|__|        \|__|     \|__|\|__|\|__|\|_______|\|__|\|__|\|_______|        \|__|/          \|__\|__\|_______|
;   \|_________|                                        \|_________|                     \|_________|                                                                                                                            
    
#SingleInstance Force
w := 20, h := 65

Gui, Add, Slider, x40 y10 w%w% h%h% AltSubmit vertical +NoTicks +Range0-255 vsR gSliderSub, %Rval%
Gui, Add, Slider, x+10 yp w%w% h%h% AltSubmit vertical +NoTicks +Range0-255 vsG gSliderSub, %Gval%
Gui, Add, Slider, x+10 yp w%w% h%h% AltSubmit vertical +NoTicks +Range0-255 vsB gSliderSub, %Bval%

Gui, Add, Edit, x+10 yp w45 h20 gEditSub veR +Limit3 +Number, %Rval%
Gui, Add, UpDown, Range0-255 vuR gUpDownSub, %Rval%
Gui, Add, Edit, xp y+1 w45 h20 gEditSub veG +Limit3 +Number, %Gval%
Gui, Add, UpDown, Range0-255 vuG gUpDownSub, %Gval%
Gui, Add, Edit, xp y+1 w45 h20 gEditSub veB +Limit3 +Number, %Bval%
Gui, Add, UpDown, Range0-255 vuB gUpDownSub, %Bval%

Gui, Add, Progress, x+10 y10 w%h% h%h% +Border vpC Background%RGBval%
Gui, Add, Text, xp yp wp hp vtP cWhite +BackgroundTrans, Preview
Gui, Add, Button, x120 y80 w110 h20 vbS gButtonSub, Save to Settings

Gui, Show, w351 h105, Color Picker
return

EditSub:
    GuiControlGet, Rval,, eR
    GuiControlGet, Gval,, eG
    GuiControlGet, Bval,, eB
    gosub, UpdatePreview
return

UpDownSub:
    GuiControlGet, Rval,, uR
    GuiControlGet, Gval,, uG
    GuiControlGet, Bval,, uB
    gosub, UpdatePreview
return

SliderSub:
    GuiControlGet, Rval,, sR
    GuiControlGet, Gval,, sG
    GuiControlGet, Bval,, sB
    gosub, UpdatePreview
return

UpdatePreview:
    RGBval := RGB(Rval, Gval, Bval)
    GuiControl, +Background%RGBval%, pC
return

ButtonSub:
    RGBDecimal := (Rval << 16) + (Gval << 8) + Bval
    IniFilePath := A_ScriptDir "\Settings.ini"
    IniWrite, %RGBDecimal%, %IniFilePath%, ColorSettings, Color
    MsgBox, Settings saved as decimal value %RGBDecimal% to Settings.ini.
    ExitApp
return

RGB(r, g, b) {
    return Format("0x{:02X}{:02X}{:02X}", r, g, b)
}

