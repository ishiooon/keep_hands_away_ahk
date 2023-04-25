*LShift::
KeyWait, LShift, T0.2
If (ErrorLevel){   
   Send,{Blind}{LWinDown}
   KeyWait,LShift
   Send,{Blind}{LWinUp}
   return
}else{                           
   Send,{Blind}z
   KeyWait, z            
   return
}