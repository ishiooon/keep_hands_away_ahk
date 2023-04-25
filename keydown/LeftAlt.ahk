;左alt長押しでコントロール、短押しでエンター
*LAlt::                        
KeyWait, LAlt, T0.13
If (ErrorLevel){
   Send,{Blind}{Ctrl DownTemp}
   KeyWait,LAlt
   Send,{Blind}{Ctrl Up}
   return
}else{                           
   Send,{Blind}{Enter}
   KeyWait, LAlt    
   return
}