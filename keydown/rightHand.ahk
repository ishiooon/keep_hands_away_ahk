;右手をnumpad上に移動
*Numpad4::n
*NumpadLeft::n
*Numpad5::m
*NumpadClear::m
*Numpad7::j
*NumpadHome::j
*Numpad8::k
*NumpadUp::k
*Numpad9::l
*NumpadPgup::l
*NumLock::u
*Pause::u
*NumpadDiv::i
*NumpadMult::o
*NumpadAdd::p
*PgUp::y
*PgDn::h

;長押しでshift、短押しでspace
*Down::                        
{
   if KeyWait('Down', 'T0.13'){
      Send '{Blind}{Space}'
      KeyWait 'Down'
   }else{
      Send '{Blind}{RShift DownTemp}'
      KeyWait 'Down'
      Send '{Blind}{RShift Up}'
   }
}

;長押しでコントロール、短押しでエンター
*Right::                        
{
   if KeyWait('Right', 'T0.13'){
      Send '{Blind}{Enter}'
      KeyWait 'Right'
   }else{
      Send '{Blind}{RCtrl DownTemp}'
      KeyWait 'Right'
      Send '{Blind}{RCtrl Up}'
   }
}
