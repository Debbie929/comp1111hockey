;This is the main Activitiy that we can create hotkeys for CST students.

;------------------------------------------
; #1: More hot strings [vicky]
; #1-1: abbreviation
; #1-2: auto signature
;------------------------------------------

::wsig::Vicky{enter}Student{enter}BCIT

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
; #4-2: hotkey for command-line.
; #4-3: hotkey for D2L.
;------------------------------------------

#0::Run C:\Users\disne\Desktop\Comp1111
#1::Run C:\Windows\System32\cmd.exe		;where cmd.exe in cmd to get location
#2::Run https://learn.bcit.ca/d2l/home

;------------------------------------------
; #5: how variable works [johnny]
; #5-1: what's variable
; #5-1: hotket that copy something and google it.
;------------------------------------------

#g:: Run http://www.google.com/search?q=%clipboard%

;------------------------------------------
; #6: rapid clicker [luca]
; #6-1: try it on https://cookie.riimu.net/speed/
;------------------------------------------


;[please refer to the rapid clicker in example folder]


;------------------------------------------
; #7 Drag windows by clicking anywhere (not just on the title bar) [johnny]
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

; Note: You can optionally release CapsLock or the middle mouse button after
; pressing down the mouse button rather than holding it down the whole time.
; This script requires v1.0.25+.


;------------------------------------------
; #8: don't forget the final RETURN
;------------------------------------------

return




