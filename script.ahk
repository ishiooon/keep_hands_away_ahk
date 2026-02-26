InstallKeybdHook  
#UseHook
SendMode "Event"

;IS_CHSNGEを切り替える
#SuspendExempt
*Pause::Suspend
;#SuspendExempt false
*ScrollLock::Reload


;右手のホームポジションをNumpadに移動
#Include keydown/rightHand.ahk
;左手のホームポジションを左上にずらす
#Include keydown/leftHand.ahk
;使用しないキーを無効にする
; #Include keydown/disabled.ahk

