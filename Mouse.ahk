AppsKey::
	KeyWait, AppsKey, T0.0
	If (ErrorLevel){
		;左クリック
		AppsKey & c::       
			Click, Down
			KeyWait,c
			Click,Up
		return
		AppsKey & >::       
			Click, Down
			KeyWait,>
			Click,Up
		return
			
		;右クリック
		AppsKey & v::MouseClick,right
		AppsKey & sc073::MouseClick,right

		;画面中央に移動
		AppsKey & Tab::jumpMouseByNum(0,getDenominator(),505)

		AppsKey & [::MouseClick,WheelUp ;ホイールアップ
		AppsKey & /::MouseClick,WheelDown ;ホイールダウン
		AppsKey & p::XButton1 ;進むボタン
		AppsKey & Enter::XButton2 ;戻るボタン
		;カーソル移動速度調整
		AppsKey & LCtrl::
			SIZE := 2
			return
		AppsKey & a::
			SIZE := 7
			return
		AppsKey & s::
			SIZE := 13
			return
		AppsKey & d::
			SIZE := 60
			return
		AppsKey & @::
		AppsKey & sc027::
		AppsKey & sc028::
		AppsKey & ]::
		If(!SIZE) {
			SIZE := 7
		}
		;カーソル移動
		While (GetKeyState("AppsKey", "P"))			
		{
			MoveX := 0, MoveY := 0
			MoveY += GetKeyState("@", "P") ? -SIZE : 0	;GetKeyState() と ?:演算子(条件) (三項演算子) の組み合わせ
			MoveX += GetKeyState("sc027", "P") ? -SIZE : 0
			MoveY += GetKeyState("sc028", "P") ? SIZE : 0
			MoveX += GetKeyState("]", "P") ? SIZE : 0
			MouseMove, %MoveX%, %MoveY%, 1, R		;マウスカーソルを移動する
			Sleep, 0					;負荷が高い場合は設定を変更 設定できる値は-1、0、10～m秒 詳細はSleep
		}
		Return

		AppsKey & -::                        
			KeyWait, -, T0.05
			If (ErrorLevel){   
				WinGetPos, X, Y, Width, Height, A
				;新規
				ToolTip,10,(Width) * 10/ 99,(Height) * 10/ 99,1
				ToolTip,20,(Width) * 20/ 99,(Height) * 20/ 99,2
				ToolTip,30,(Width) * 30/ 99,(Height) * 30/ 99,3
				ToolTip,40,(Width) * 40/ 99,(Height) * 40/ 99,4
				ToolTip,50,(Width) * 50/ 99,(Height) * 50/ 99,5
				ToolTip,60,(Width) * 60/ 99,(Height) * 60/ 99,6
				ToolTip,70,(Width) * 70/ 99,(Height) * 70/ 99,7
				ToolTip,80,(Width) * 80/ 99,(Height) * 80/ 99,8
				ToolTip,90,(Width) * 90/ 99,(Height) * 90/ 99,9
				KeyWait,-
				remove_tooltip_all()

				return
			}else{                           
				KeyWait,-
			return
			}

			AppsKey & 0::
			Axis := jumpMouseByNum(0,getDenominator(),Axis) 
			return
			AppsKey & 1::
			Axis := jumpMouseByNum(1,getDenominator(),Axis) 
			return
			AppsKey & 2::
			Axis := jumpMouseByNum(2,getDenominator(),Axis) 
			return
			AppsKey & 3::
			Axis := jumpMouseByNum(3,getDenominator(),Axis) 
			return
			AppsKey & 4::
			Axis := jumpMouseByNum(4,getDenominator(),Axis) 
			return
			AppsKey & 5::
			Axis := jumpMouseByNum(5,getDenominator(),Axis) 
			return
			AppsKey & 6::
			Axis := jumpMouseByNum(6,getDenominator(),Axis) 
			return
			AppsKey & 7::
			Axis := jumpMouseByNum(7,getDenominator(),Axis) 
			return
			AppsKey & 8::
			Axis := jumpMouseByNum(8,getDenominator(),Axis) 
			return
			AppsKey & 9::
			Axis := jumpMouseByNum(9,getDenominator(),Axis) 
			return
			AppsKey & x::
			Axis := null 
			return
			KeyWait, AppsKey
			Axis := True
			ToolTip
			return 

		KeyWait, AppsKey
		Axis := True
		return 
	}else{
		Send,{Blind}{Enter}
		KeyWait,  AppsKey      
		return
	}

;アクティブウィンドウ幅のnumerator分のdenominatorの位置に
;X軸・Y軸交互に呼ばれるたびに移動する
;numerator 分子
;denominator　分母
;Axis　座標軸選択
jumpMouse(numerator,denominator,Axis){
	WinGetPos, X, Y, Width, Height, A ;アクティブなウィンドウの座標とサイズを取得
	MouseGetPos, xpos, ypos
	If (Axis){
		Axis := False
		x := (Width) * numerator / denominator
		y := ypos
	}else{
		Axis := True
		x := xpos
		y := (Height) * numerator / denominator
	}
	Click %x%,%y%,0
	remove_tooltip_all()
	return Axis
}

jumpMouseByNum(numerator,denominator,Axis){
	WinGetPos, X, Y, Width, Height, A ;アクティブなウィンドウの座標とサイズを取得
	Axis := Axis . numerator
	If (StrLen(Axis)>=4){
		ToolTip,%Axis%,,,10
		x:=SubStr(Axis, 1 , 2)
		x := (Width) * x / denominator
		y:=SubStr(Axis, 3 , 2)
		y := (Height) * y / denominator
		Click %x%,%y%,0
		remove_tooltip_all()
		Axis := Null
		Return Axis
	}else{
		ToolTip,%Axis%,,,10
		Return Axis
	}
}

;定数の設定がわからないため関数で返す
getDenominator(){
	return 99
}

remove_tooltip_all(){
	SetTimer, remove_tooltip, Off
	Loop, 20
	ToolTip, , , , % A_Index
	Return
}