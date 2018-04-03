;This is the main Activitiy that we can create hotkeys for CST students.

;------------------------------------------
; #1: More hot strings
; #1-1: abbreviation
; #1-2: auto signature
;------------------------------------------

::idk::I don't know
::thx::thanks

::wsig::Your Name{enter}Your Title{enter}Your Company Name{enter}Your Contact Info
::wsigl::Luca Hsieh{enter}student{enter}BCIT{enter}Phone: 778-8610000

;------------------------------------------
; #2: Remap your keyboard
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
; #3: make a window always on the top
;------------------------------------------

^SPACE:: Winset, Alwaysontop, , A  ; ctrl + space

;------------------------------------------
; #4: open a folder, program.
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
; #5: how variable works
; #5-1: what's variable
; #5-1: hotket that copy something and google it.
;------------------------------------------

#g:: Run http://www.google.com/search?q=%clipboard%

;------------------------------------------
; #6: mouse unstucker
; #6-1: open new notepade and name it run chrome.ahk
; #6-1: hotkey that allow you to exit a frezed game by lunch chrome.
;------------------------------------------

Run, http://www.google.com/ ; Runs default browser and opens google

;------------------------------------------
; #7: use autohotkey to control autohotkey
; #7-1: hotkey to suspend autohotkey
; #7-2: hotkey to exit autohotkey
;------------------------------------------

!x::Suspend
Escape::ExitApp

;------------------------------------------
; #8: rapid clicker
; #8-1: new notepad for rapid clicker
; #8-2: write suspend and clicker
; #8-3: put short-cut key here.
; #8-4: try it on https://cookie.riimu.net/speed/
;------------------------------------------

#5::Run C:\Users\disne\Desktop\hockey\demo4_rapidClicker.exe

;------------------------------------------
; #9: don't forget the final RETURN
;------------------------------------------

return

