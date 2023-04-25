*s::                     
KeyWait, d, T0.2
If (ErrorLevel){      

   s & LCtrl::Send,da
   s & >::1
   s & /::2
   s & sc073::3
   s & sc027::4
   s & sc028::5
   s & ]::6
   s & p::7
   s & @::8
   s & [::9
   s & Enter::0

   KeyWait, s
            
   return 


}else{                            
   Send,{Blind}d
   KeyWait,s         
   return
}