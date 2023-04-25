;無変換長押しでコントロール、短押しでエンター
*sc07B::                        
KeyWait, sc07B, T0.13
If (ErrorLevel){   
   Send,{Blind}{Shift DownTemp}
   KeyWait,sc07B
   Send,{Blind}{Shift Up}
   return
}else{
   Send,{Blind}{Space}
   KeyWait,sc07B        
   return
}