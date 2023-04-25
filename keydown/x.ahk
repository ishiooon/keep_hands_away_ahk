*x::
KeyWait, x, T0.2
   If (ErrorLevel){
    x & LCtrl::Send,ca      
    x & >::F1
    x & /::F2
    x & sc073::F3
    x & sc027::F4
    x & sc028::F5
    x & ]::F6
    x & p::F7
    x & @::F8
    x & [::F9
    x & Enter::F10
    x & <::F11
    x & l::F12
    x & o::F13

   KeyWait, x
   return 
}else{                            
   Send,{Blind}c
   KeyWait,x       
   return
}