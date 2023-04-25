;ツールチップの表示を行う

; コピーした時
OnClipboardChange:
  my_tooltip_function("copyed", 300)
Return

; 上書き保存した時
^s::
  Send, {Blind}s
  my_tooltip_function("saved", 300)
Return


;↓↓実際の処理部分↓↓
my_tooltip_function(str, delay) {
  ToolTip, %str%
  SetTimer, remove_tooltip, -%delay%
}

remove_tooltip:
  ToolTip
Return

remove_tooltip_all:
  SetTimer, remove_tooltip, Off
  Loop, 20
  ToolTip, , , , % A_Index
Return