*D:: 
   KeyWait, D, T0.2
   If (ErrorLevel){
         D & LCtrl::Send, {Blind}{TAB}
         D & @::Send, {Blind}{Up}
         D & sc028::Send, {Blind}{Down}
         D & sc027::Send, {Blind}{Left}
         D & ]::Send, {Blind}{Right}
         D & L::Send, {Blind}{BackSpace}
         D & >::IME_SET(0)
         D & /::IME_SET(1)
         D & Tab::Send, {Blind}{Esc}
         D & W::Send, {Blind}{BackSpace}
         D & Q::InsertText("`'----------------------------------------------------------------------`n`'`n`'----------------------------------------------------------------------")
         D & sc073::Send, {Blind}{HOME} 
         D & RShift::Send, {Blind}{END}
         D & Enter::Send, {Blind}{Delete}
         ;D押下中にS押下でAlt
         D & S::
         KeyWait, S, T0.05
         If (ErrorLevel){   
            Send,{Blind}{AltDown}
            KeyWait,S
            Send,{Blind}{AltUp}
            return
         }else{                           
            Send,{Blind}f
            KeyWait,S    
            return
         }
         KeyWait, S
      return
   }else{
      Send, {Blind}f
      KeyWait,D
      return
   }

   InsertText(Content) {
      cb_bk = %ClipboardAll%
      Clipboard = %Content%
      Send, ^v
      Sleep, 200
      Clipboard = %cb_bk%
   }