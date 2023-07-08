#InstallKeybdHook
#UseHook
#SingleInstance Force

; right-ctrl + ijkl to emulate arrow keys
Hotkey, *i, Off
Hotkey, *j, Off
Hotkey, *k, Off
Hotkey, *l, Off

*RCtrl::
    Hotkey, *i, on
    Hotkey, *j, on
    Hotkey, *k, on
    Hotkey, *l, on
return

*RCtrl up::
    Hotkey, *i, off
    Hotkey, *j, off
    Hotkey, *k, off
    Hotkey, *l, off
return

*i::send {blind}{up}
*j::send {blind}{left}
*k::send {blind}{down}
*l::send {blind}{right}

; uncomment below, if you want to enable JP with right-alt and EN with left-alt
; *~LAlt::Send {Blind}{vk07}
; *~RAlt::Send {Blind}{vk07}

; ~LAlt Up::
; if (A_PriorKey = "LAlt") {
;     Send, {vkF2sc070}{vkF3sc029}
; }
; return

; ~RAlt Up::
; if (A_PriorKey = "RAlt") {
;     Send, {vkF2sc070}
; }
; return

; uncomment below, if you want to Switch JP <-> EN with Capslock
sc03A::Send, {vkF3sc029}

; shift + Capslock to CapsLock
+sc03A::Send, {CapsLock}

; Delete with alt + Backspace
!BS::Send, {Del}

; delete whole line with windows + BackSpace
#BS::
    Send, +{Home}{BackSpace}
    return
