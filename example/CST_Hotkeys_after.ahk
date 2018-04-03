;This is the main Activitiy that we can create hotkeys for CST students.

;------------------------------------------
; #1: More hot strings [vicky]
; #1-1: abbreviation
; #1-2: auto signature
;------------------------------------------

::idk::I don't know
::thx::thanks

::wsig::Your Name{enter}Your Title{enter}Your Company Name{enter}Your Contact Info
::wsigl::Luca Hsieh{enter}student{enter}BCIT{enter}Phone: 778-8610000

;------------------------------------------
; #2: Remap your keyboard [johnny]
; #2-1: remap your keyboard to dvorak keyboard
; #2-2: permanently set CapsLock, numLock, scrollLock
;------------------------------------------

a::b   ;make the "a" key behave like the "b" key.
b::a

SetNumlockState, AlwaysOn
SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff

; Locks CapsLock, NumLock and ScrollLock while script is active. 
; Change 'on' or 'off' to the desired state

;------------------------------------------
; #3: make a window always on the top [luca]
;------------------------------------------

^SPACE:: Winset, Alwaysontop, , A  ; ctrl + space

;------------------------------------------
; #4: open a folder, program. [vicky]
; #4-1: hotkey for comp1111 folder.
; #4-2: hotkey for eclipse.
; #4-3: hotkey for command-line.
; #4-4: hotkey for D2L.
;------------------------------------------

#0::Run C:\Users\disne\Desktop\Comp1111
#1::Run C:\Program Files\Eclipse\Eclipse.exe
#2::Run C:\Windows\System32\cmd.exe		;where cmd.exe in cmd to get location
#3::Run https://learn.bcit.ca/d2l/home

;------------------------------------------
; #5: how variable works [vicky]
; #5-1: what's variable
; #5-1: hotket that copy something and google it.
;------------------------------------------

#g:: Run http://www.google.com/search?q=%clipboard%

;------------------------------------------
; #6: mouse unstucker [luca]
; #6-1: open new notepade and name it run chrome.ahk
; #6-1: hotkey that allow you to exit a frezed game by lunch chrome.
;------------------------------------------

Run, http://www.google.com/ ; Runs default browser and opens google

;------------------------------------------
; #7: use autohotkey to control autohotkey [luca]
; #7-1: hotkey to suspend autohotkey
; #7-2: hotkey to exit autohotkey
;------------------------------------------

!x::Suspend
Escape::ExitApp

;------------------------------------------
; #8: rapid clicker [luca]
; #8-1: new notepad for rapid clicker
; #8-2: write suspend and clicker
; #8-3: put short-cut key here.
; #8-4: try it on https://cookie.riimu.net/speed/
;------------------------------------------

#5::Run C:\Users\disne\Desktop\hockey\demo4_rapidClicker.exe


;------------------------------------------
; #9 Drag windows by clicking anywhere (not just on the title bar) [johnny]
;------------------------------------------

+LButton::
CoordMode, Mouse  ; Switch to screen/absolute coordinates.
MouseGetPos, EWD_MouseStartX, EWD_MouseStartY, EWD_MouseWin
WinGetPos, EWD_OriginalPosX, EWD_OriginalPosY,,, ahk_id %EWD_MouseWin%
WinGet, EWD_WinState, MinMax, ahk_id %EWD_MouseWin% 
if EWD_WinState = 0  ; Only if the window isn't maximized
    SetTimer, EWD_WatchMouse, 10 ; Track the mouse as the user drags it.
return

EWD_WatchMouse:
GetKeyState, EWD_LButtonState, LButton, P
if EWD_LButtonState = U  ; Button has been released, so drag is complete.
{
    SetTimer, EWD_WatchMouse, Off
    return
}
GetKeyState, EWD_EscapeState, Escape, P
if EWD_EscapeState = D  ; Escape has been pressed, so drag is cancelled.
{
    SetTimer, EWD_WatchMouse, Off
    WinMove, ahk_id %EWD_MouseWin%,, %EWD_OriginalPosX%, %EWD_OriginalPosY%
    return
}
; Otherwise, reposition the window to match the change in mouse coordinates
; caused by the user having dragged the mouse:
CoordMode, Mouse
MouseGetPos, EWD_MouseX, EWD_MouseY
WinGetPos, EWD_WinX, EWD_WinY,,, ahk_id %EWD_MouseWin%
SetWinDelay, -1   ; Makes the below move faster/smoother.
WinMove, ahk_id %EWD_MouseWin%,, EWD_WinX + EWD_MouseX - EWD_MouseStartX, EWD_WinY + EWD_MouseY - EWD_MouseStartY
EWD_MouseStartX := EWD_MouseX  ; Update for the next timer-call to this subroutine.
EWD_MouseStartY := EWD_MouseY
return




;------------------------------------------
; #10: don't forget the final RETURN
;------------------------------------------

return

; Note: You can optionally release CapsLock or the middle mouse button after
; pressing down the mouse button rather than holding it down the whole time.
; This script requires v1.0.25+.



<<<<<<< HEAD
=======
;------------------------------------------
; #10 Drag windows by clicking anywhere (not just on the title bar)
;------------------------------------------

+LButton::
CoordMode, Mouse  ; Switch to screen/absolute coordinates.
MouseGetPos, EWD_MouseStartX, EWD_MouseStartY, EWD_MouseWin
WinGetPos, EWD_OriginalPosX, EWD_OriginalPosY,,, ahk_id %EWD_MouseWin%
WinGet, EWD_WinState, MinMax, ahk_id %EWD_MouseWin% 
if EWD_WinState = 0  ; Only if the window isn't maximized
    SetTimer, EWD_WatchMouse, 10 ; Track the mouse as the user drags it.
return

EWD_WatchMouse:
GetKeyState, EWD_LButtonState, LButton, P
if EWD_LButtonState = U  ; Button has been released, so drag is complete.
{
    SetTimer, EWD_WatchMouse, Off
    return
}
GetKeyState, EWD_EscapeState, Escape, P
if EWD_EscapeState = D  ; Escape has been pressed, so drag is cancelled.
{
    SetTimer, EWD_WatchMouse, Off
    WinMove, ahk_id %EWD_MouseWin%,, %EWD_OriginalPosX%, %EWD_OriginalPosY%
    return
}
; Otherwise, reposition the window to match the change in mouse coordinates
; caused by the user having dragged the mouse:
CoordMode, Mouse
MouseGetPos, EWD_MouseX, EWD_MouseY
WinGetPos, EWD_WinX, EWD_WinY,,, ahk_id %EWD_MouseWin%
SetWinDelay, -1   ; Makes the below move faster/smoother.
WinMove, ahk_id %EWD_MouseWin%,, EWD_WinX + EWD_MouseX - EWD_MouseStartX, EWD_WinY + EWD_MouseY - EWD_MouseStartY
EWD_MouseStartX := EWD_MouseX  ; Update for the next timer-call to this subroutine.
EWD_MouseStartY := EWD_MouseY
return




;------------------------------------------

;------------------------------------------


>>>>>>> 7bae0a1e44b172e08ba1ebd5b9281ef9cc0d58d0


