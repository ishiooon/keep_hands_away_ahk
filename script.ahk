;#Include gridMouse.ahk

#InstallKeybdHook  
#UseHook

;ツールチップ
#Include helper/tooltip.ahk

;言語切り替え用
#Include IME.ahk

;無変換の長押し、短押し
#Include keydown/sc07B.ahk

;キーの変換
;左手のホームポジションを1つ左にずらす
#Include keydown/tab.ahk            ;tabの変換(Q)
#Include keydown/q.ahk              ;qの変換(W)
#Include keydown/w.ahk              ;wの変換(E)
#Include keydown/e.ahk              ;eの変換(R)
#Include keydown/r.ahk              ;rの変換(T)
#Include keydown/LeftCtrl.ahk       ;ctrlの変換(A)
#Include keydown/a.ahk              ;aの変換(S)
#Include keydown/s.ahk              ;sの変換(D)
#Include keydown/d.ahk              ;dの変換(F)
#Include keydown/f.ahk              ;fの変換(G)     
#Include keydown/LeftShift.ahk      ;shiftの変換(Z)
#Include keydown/z.ahk              ;zの変換(X)
#Include keydown/x.ahk              ;xの変換(C)
#Include keydown/c.ahk              ;cの変換(V) 
#Include keydown/v.ahk              ;vの変換(B)
#Include keydown/LeftAlt.ahk        ;altの変換

;右手のホームポジションを3つ右にずらす
#Include keydown/rightHand.ahk

;マウスの設定(rightAlt)
#Include Mouse.ahk

;使用しないキーを無効にする
#Include keydown/disabled.ahk

*Escape::
   Send,{Ctrl Down}{Alt Down}{Shift Down}{Alt Up}{Ctrl Up}{Shift Up}
   Sleep, 2
   Reload
return

#InstallKeybdHook Off 　
#UseHook Off
