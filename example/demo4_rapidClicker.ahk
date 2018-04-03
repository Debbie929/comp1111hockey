!c::Suspend

LButton::
Loop
{
SetMouseDelay 10
Click
If (GetKeyState("LButton","P")=0)
Break
}