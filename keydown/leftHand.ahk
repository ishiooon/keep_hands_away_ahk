;左手を左上に一つ移動
*sc029::q
*1::w
*2::e
*3::r
*4::t
*Tab::a
*q::s

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; wはdに置換・長押し中はnumレイヤに移動
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
*w::{
   if KeyWait('w', 'T0.13'){
      Send '{Blind}d'
      KeyWait 'w'
   }
}
w & Numpad4::Send '{Blind}{1}'
w & NumpadLeft::Send '{Blind}{1}'
w & Numpad5::Send '{Blind}{2}'
w & NumpadClear::Send '{Blind}{2}'
w & Numpad6::Send '{Blind}{3}'
w & NumpadRight::Send '{Blind}{3}'
w & Numpad7::Send '{Blind}{4}'
w & NumpadHome::Send '{Blind}{4}'
w & Numpad8::Send '{Blind}{5}'
w & NumpadUp::Send '{Blind}{5}'
w & Numpad9::Send '{Blind}{6}'
w & NumpadPgup::Send '{Blind}{6}'
w & NumLock::Send '{Blind}{7}'
w & NumpadDiv::Send '{Blind}{8}'
w & NumpadMult::Send '{Blind}{9}'
w & NumpadAdd::Send '{Blind}{0}'

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; eはfに置換・長押し中はfunctionレイヤに移動
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
*e::{
   if KeyWait('e', 'T0.13'){
      Send '{Blind}f'
      KeyWait 'e'
   }
}
e & sc029::{
    Send '{sc07B}'
    Send '{Blind}{Escape}'
}
e & 2::Send '{Blind}{Backspace}'
e & NumLock::Send '{Blind}{BackSpace}' 
e & NumpadSub::Send '{Blind}{Delete}'
e & NumpadAdd::Send '{Blind}{Delete}'
e & PgDn::Send '{Blind}{Left}'
e & Numpad7::Send '{Blind}{Down}' 
e & NumpadHome::Send '{Blind}{Down}'
e & Numpad8::Send '{Blind}{Up}' 
e & NumpadUp::Send '{Blind}{Up}'
e & Numpad9::Send '{Blind}{Right}' 
e & NumpadPgup::Send '{Blind}{Right}'
e & Tab::Send '{Blind}{TAB}'
e & Numpad4::Send '{Blind}{sc029}'
e & NumpadLeft::Send '{Blind}{sc029}'
e & Numpad5::Send '{Blind}{sc029}'
e & NumpadClear::Send '{Blind}{sc029}'
e & w::
{
   if KeyWait('w', 'D'){
      Send '{Blind}{LAlt DownTemp}'
      KeyWait 'w'
      Send '{Blind}{LAlt Up}'
   }
} 


*r::g
;LCtrl長押しでwindowsKey短押しでz
*LCtrl::{
   if KeyWait('LCtrl', 'T0.2'){
      Send '{Blind}z'
      KeyWait 'LCtrl'
   }else{
      Send '{Blind}{LWin DownTemp}'
      KeyWait 'LCtrl'
      Send '{Blind}{LWin Up}'
   }
}
*a::x

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; sはcに置換・長押し中はファンクションキーレイヤに移動
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
*s::{
   if KeyWait('s', 'T0.13'){
      Send '{Blind}c'
      KeyWait 's'
   }
}
s & Numpad4::Send '{Blind}{F1}'
s & NumpadLeft::Send '{Blind}{F1}'
s & Numpad5::Send '{Blind}{F2}'
s & NumpadClear::Send '{Blind}{F2}'
s & Numpad6::Send '{Blind}{F3}'
s & NumpadRight::Send '{Blind}{F3}'
s & Numpad7::Send '{Blind}{F4}'
s & NumpadHome::Send '{Blind}{F4}'
s & Numpad8::Send '{Blind}{F5}'
s & NumpadUp::Send '{Blind}{F5}'
s & Numpad9::Send '{Blind}{F6}'
s & NumpadPgup::Send '{Blind}{F6}'
s & NumLock::Send '{Blind}{F7}'
s & NumpadDiv::Send '{Blind}{F8}'
s & NumpadMult::Send '{Blind}{F9}'
s & NumpadSub::Send '{Blind}{F10}'
s & NumpadAdd::Send '{Blind}{F11}'
s & PgDn::Send '{Blind}{F12}'


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; dはvに置換・長押し中は記号レイヤに移動
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
*d::{
   if KeyWait('d', 'T0.13'){
      Send '{Blind}v'
      KeyWait 'd'
   }
}
d & Numpad4::Send '{Blind}{,}'
d & NumpadLeft::Send '{Blind}{,}'
d & Numpad5::Send '{Blind}{.}'
d & NumpadClear::Send '{Blind}{.}'
d & Numpad6::Send '{Blind}{/}'
d & NumpadRight::Send '{Blind}{/}'
d & Numpad7::Send '{Blind}{;}'
d & NumpadHome::Send '{Blind}{;}'
d & Numpad8::Send '{Blind}{:}'
d & NumpadUp::Send '{Blind}{:}'
d & Numpad9::Send '{Blind}{]}'
d & NumpadPgup::Send '{Blind}{]}'
d & NumLock::Send '{Blind}{^}'
d & NumpadDiv::Send '{Blind}{@}'
d & NumpadMult::Send '{Blind}{[}'
d & NumpadAdd::Send '{Blind}{sc073}'
d & PgUp::Send '{Blind}{-}'
d & PgDn::Send '{Blind}{\}'

*f::b
;長押しでshift、短押しでspace
*Space::                        
{
   if KeyWait('Space', 'T0.13'){
      Send '{Blind}{Space}'
      KeyWait 'Space'
      return
   }else{
      Send '{Blind}{LShift Down}'
      KeyWait 'Space'
      Send '{Blind}{LShift Up}'
   }
}

;長押しでコントロール、短押しでエンター
*sc07B::                        
{
   if KeyWait('sc07B', 'T0.13'){
      Send '{Blind}{Enter}'
      KeyWait 'sc07B'
   }else{
      Send '{Blind}{LCtrl Down}'
      KeyWait 'sc07B'
      Send '{Blind}{LCtrl Up}'
   }
}

