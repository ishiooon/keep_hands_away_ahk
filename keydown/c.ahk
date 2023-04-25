*c::
KeyWait, c, T0.2
    If (ErrorLevel){
    c & w::Send,ve
    c & o::-
    c & p::^
    c & @::@
    c & [::[
    c & ]::]
    c & sc027::Send, {Blind}`;
    c & sc028::Send, {Blind}`:
    c & .::,
    c & /::.
    c & sc073::/
    c & RShift::_
    KeyWait, c
    return 
}else{
   Send,{Blind}v
   KeyWait,c       
   return
}