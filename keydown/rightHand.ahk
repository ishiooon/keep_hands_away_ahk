*o::y
*p::u
*@::i
*[::o
*Enter::p
*l::h
*sc027::j
*sc028::k
*]::l
*.::n
*/::m
*RShift::Send,{sc073}

;長押しでshift、短押しでspace
*RAlt::                        
KeyWait, RAlt, T0.13
If (ErrorLevel){   
   Send,{Blind}{RShift DownTemp}
   KeyWait,RAlt
   Send,{Blind}{RShift Up}
   return
}else{                           
   Send,{Blind}{Space}
   KeyWait,RAlt        
   return
}
   
;AppsKey長押しでコントロール、短押しでエンター
*AppsKey::                        
KeyWait, AppsKey, T0.13
If (ErrorLevel){   
   Send,{Blind}{Ctrl DownTemp}
   KeyWait,AppsKey
   Send,{Blind}{Ctrl Up}
   return
}else{                           
   Send,{Blind}{Enter}
   KeyWait,AppsKey        
   return
}