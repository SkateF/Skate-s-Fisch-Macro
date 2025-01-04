#SingleInstance Force
#Persistent
#Include Gdip_All.ahk

tesseractPath := "C:\Program Files\Tesseract-OCR\tesseract.exe"
ConfigFile := A_ScriptDir . "\Settings.ini"
msgbox % ConfigFile
; Toggle variables for embed fields
IniRead, Webhook, %ConfigFile%, webhook, Webhook, false
Webhook := %Webhook%

if (Webhook = false) {
    ExitApp  
}

IniRead, WebhookURL, %ConfigFile%, webhook, WebhookURL, https://discord.com/api/webhooks/...

if (WebhookURL = "" or WebhookURL = "https://discord.com/api/webhooks/...") {
    MsgBox, The Webhook URL is either blank or set to the default value. Exiting the application.
    ExitApp  ; Exit the application
}

; Read other settings
IniRead, ShowFishCaught, %ConfigFile%, webhook, ShowFishCaught, true

ShowFishCaught := %ShowFishCaught%

IniRead, ShowFishLost, %ConfigFile%, webhook, ShowFishLost, true

ShowFishLost := %ShowFishLost%
IniRead, ShowTotalFish, %ConfigFile%, webhook, ShowTotalFish, true

ShowTotalFish := %ShowTotalFish%
IniRead, ShowLevel, %ConfigFile%, webhook, ShowLevel, true

ShowLevel := %ShowLevel%
IniRead, ShowCaughtLine, %ConfigFile%, webhook, ShowCaughtLine, true

ShowCaughtLine := %ShowCaughtLine%
IniRead, ShowMoney, %ConfigFile%, webhook, ShowMoney, true

ShowMoney := %ShowMoney%
IniRead, ShowRunningTime, %ConfigFile%, webhook, ShowRunningTime, true

ShowRunningTime := %ShowRunningTime%
IniRead, ShowCatchStreak, %ConfigFile%, webhook, ShowCatchStreak, true

ShowCatchStreak := %ShowCatchStreak%
IniRead, ShowBestCatchStreak, %ConfigFile%, webhook, ShowBestCatchStreak, true

ShowBestCatchStreak := %ShowBestCatchStreak%
IniRead, ShowSuccessRate, %ConfigFile%, webhook, ShowSuccessRate, true

ShowSuccessRate := %ShowSuccessRate%

; Initialize variables
fishCaught := 0
fishLost := 0
caughtLine := ""
levelString := ""
moneyString := ""
highestLevel := 0
highestMoney := 0
runningTime := 0
totalfish := 0
catchStreak := 0
bestCatchStreak := 0
successRate := 0

; Start a timer to update running time every second
SetTimer, UpdateRunningTime, 1000
m:: exitapp
z:: 
{
    scriptDir := A_ScriptDir
    imagePath := scriptDir . "\caught.png"
    tempFile := A_Temp "\screenshot.png"
    ocrResultFile := A_Temp "\output.txt"
    caughtDetected := false
    levelString := ""
    moneyString := ""
    foundOCR := false

    if !pToken := Gdip_Startup() {
        MsgBox, GDI+ failed to start.
        return
    }

    screenWidth := DllCall("GetSystemMetrics", "Int", 0)
    screenHeight := DllCall("GetSystemMetrics", "Int", 1)
    area := "0|" screenHeight//2 "|" screenWidth "|" screenHeight//2

    pBitmap := Gdip_BitmapFromScreen(area)
    if !pBitmap {
        MsgBox, Failed to capture the screen.
        Gdip_Shutdown(pToken)
        return
    }
    Gdip_SaveBitmapToFile(pBitmap, tempFile)
    Gdip_DisposeImage(pBitmap)
    Gdip_Shutdown(pToken)

    RunWait, %tesseractPath% "%tempFile%" "%A_Temp%\output" --psm 6 --oem 3 -l eng, , Hide
    FileRead, ocrResult, %ocrResultFile%

    lines := StrSplit(ocrResult, "`n")
    for line in lines {
        if (InStr(line, "caught a") || InStr(line, "caught") || InStr(line, "just caught") || InStr(line, "caught at") || InStr(line, "kg")) {
            ocrCaughtLine := line
            caughtDetected := true
            foundOCR := true
            totalfish++
            catchStreak++
            if (catchStreak > bestCatchStreak)
                bestCatchStreak := catchStreak
        } else if (InStr(line, "lost")) {
            caughtDetected := false
            catchStreak := 0
        }

        if InStr(line, "Level", false) {
            if InStr(line, "Max Level", false) {
                levelString := "Max Level"
                highestLevel := "Max Level"
            } else {
                RegExMatch(line, "Level\s*(\d+)", levelMatch)
                if (levelMatch1 != "") {
                    currentLevel := levelMatch1
                    if (currentLevel > highestLevel) {
                        highestLevel := currentLevel
                        levelString := "Level " . highestLevel
                    }
                }
            }
        }

        if InStr(line, "C", false) {
            RegExMatch(line, "(\d{1,3}(?:,\d{3})*)\s*C", moneyMatch)
            if (moneyMatch1 != "") {
                currentMoney := StrReplace(moneyMatch1, ",", "")
                if (currentMoney > highestMoney) {
                    highestMoney := currentMoney
                    moneyString := "C$ " . highestMoney
                }
            }
        }
    }

    if (levelString = "") {
        if (highestLevel = "Max Level") {
            levelString := "Max Level"
        } else {
            levelString := "Level " . highestLevel
        }
    }

    if (moneyString = "") {
        moneyString := "C$ " . highestMoney
    }

    if (caughtDetected) {
        caughtLine := ocrCaughtLine
        fishCaught++
    } else {
        ImageSearch, foundX, foundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *3 %imagePath%
        if (ErrorLevel = 0) {
            caughtLine := "Fish caught but didn't detect (from image search)"
            fishCaught++
        } else {
            caughtLine := "Fish lost"
            fishLost++
            catchStreak := 0
        }
    }

    if (fishCaught + fishLost) > 0 {
        successRate := (fishCaught / (fishCaught + fishLost)) * 100
    }

    embed := "{""embeds"":[{""title"":""Fishing Update"",""fields"":["

    if (ShowFishCaught == true)
        embed .= "{""name"":""Fish Caught"",""value"":""" . fishCaught . """,""inline"":true}," 
    if (ShowFishLost == true)
        embed .= "{""name"":""Fish Lost"",""value"":""" . fishLost . """,""inline"":true}," 
    if (ShowCaughtLine == true)
        embed .= "{""name"":""Caught Line"",""value"":""" . caughtLine . """,""inline"":false}," 
    if (ShowLevel == true)
        embed .= "{""name"":""Level"",""value"":""" . levelString . """,""inline"":true}," 
    if (ShowMoney == true)
        embed .= "{""name"":""Money"",""value"":""" . moneyString . """,""inline"":true}," 
    if (ShowRunningTime == true)
        embed .= "{""name"":""Running Time"",""value"":""" . FormatTime(runningTime) . """,""inline"":true}," 
    if (ShowTotalFish == true)
        embed .= "{""name"":""Total Fish"",""value"":""" . totalfish . """,""inline"":true}," 
    if (ShowCatchStreak == true)
        embed .= "{""name"":""Catch Streak"",""value"":""" . catchStreak . """,""inline"":true}," 
    if (ShowBestCatchStreak == true)
        embed .= "{""name"":""Best Catch Streak"",""value"":""" . bestCatchStreak . """,""inline"":true}," 
    if (ShowSuccessRate == true)
        embed .= "{""name"":""Success Rate"",""value"":""" . Round(successRate, 2) . "%""}" 

    if (SubStr(embed, -1) = ",")
        embed := SubStr(embed, 1, -1)
    embed .= "],""color"":5814783}]}" 

    response := HttpRequest(WebhookURL, embed)

    FileDelete, %tempFile%
    FileDelete, %ocrResultFile%
    Gdip_DisposeImage(pBitmap)
    Gdip_Shutdown(pToken)
}

UpdateRunningTime:
    runningTime++
    return

FormatTime(seconds) {
    hours := Floor(seconds / 3600)
    minutes := Floor((seconds - (hours * 3600)) / 60)
    seconds := seconds - (hours * 3600) - (minutes * 60)
    return Format("{:02}:{:02}:{:02}", hours, minutes, seconds)
}

HttpRequest(url, json) {
    hRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    hRequest.Open("POST", url, false)
    hRequest.SetRequestHeader("Content-Type", "application/json")
    hRequest.Send(json)
    return hRequest.ResponseText
}


