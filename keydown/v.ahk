*v::b                 
;KeyWait, V, T0.2
;If (ErrorLevel){      
;V & z::Send,{Blind}{sc07B}
;V & N::Send,{Blind}{,}
;V & M::Send,{Blind}{.}
;V & J::Send,{Blind}{;}
;V & K::Send,{Blind}{'}
;V & o::Send,{Blind}{-}
;V & p::Send,{Blind}{=}
;V & u::Send,{Blind}[
;V & i::Send,{Blind}]
;V & ,::Send,{Blind}/
;V & l::Send,{Blind}\
;
;   KeyWait, V    
;   return
;}else{                           
;   Send,{Blind}v   
;   KeyWait, V              
;return
;}