;無変換長押しでコントロール、短押しでエンター
*sc079::                        
KeyWait, sc079, T0.12
If (ErrorLevel){   

   Send,{Blind}{Blind}{Ctrl DownTemp}
   KeyWait,sc079
   Send,{Blind}{Ctrl Up}
   return
}else{                           
   Send,{Blind}{Enter}
   KeyWait, sc079    
   return
}