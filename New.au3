#include <FastFind.au3>
#include <AutoItConstants.au3>
#include <MsgBoxConstants.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <GuiStatusBar.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

Global $handle = WinGetHandle("Nox")
;~ WinMove($handle,'',5,5,682, 394)
FFSetWnd($handle)
Global $ChooseFish = False
Global $FishHooked = False
Global $Finish = False
Global $Fish_count = 0
Global $Tool_count = 0


#Region ### START Koda GUI section ### Form=d:\autoit\bigfarm\form.kxf
$Title = GUICreate("Auto fishing", 270, 223, 330, 449)
$Pic = GUICtrlCreatePic("D:\AutoIT\BigFarm\Icon and Image\Luoicau1.jpg", 16, 8, 44, 44, BitOR($GUI_SS_DEFAULT_PIC,$WS_BORDER))
$Pic1 = GUICtrlCreatePic("D:\AutoIT\BigFarm\Icon and Image\Luoicau2.jpg", 16, 64, 44, 44, BitOR($GUI_SS_DEFAULT_PIC,$WS_BORDER,$WS_CLIPSIBLINGS))
$Pic2 = GUICtrlCreatePic("D:\AutoIT\BigFarm\Icon and Image\Luoicau3.jpg", 144, 8, 44, 44, BitOR($GUI_SS_DEFAULT_PIC,$WS_BORDER))
$Pic4 = GUICtrlCreatePic("D:\AutoIT\BigFarm\Icon and Image\Luoicau4.jpg", 144, 64, 44, 44, BitOR($GUI_SS_DEFAULT_PIC,$WS_BORDER,$WS_CLIPSIBLINGS))
$Radio_Luoicau1 = GUICtrlCreateRadio("Common", 64, 16, 57, 25, BitOR($GUI_SS_DEFAULT_RADIO,$BS_CENTER,$BS_VCENTER))
GUICtrlSetState(-1, $GUI_CHECKED)
$Radio_Luoicau2 = GUICtrlCreateRadio("Uncommon", 64, 72, 73, 25, BitOR($GUI_SS_DEFAULT_RADIO,$BS_CENTER,$BS_VCENTER))
$Radio_Luoicau3 = GUICtrlCreateRadio("Premium", 192, 16, 57, 25, BitOR($GUI_SS_DEFAULT_RADIO,$BS_CENTER,$BS_VCENTER))
$Radio_Luoicau4 = GUICtrlCreateRadio("Super", 192, 72, 49, 25, BitOR($GUI_SS_DEFAULT_RADIO,$BS_CENTER,$BS_VCENTER))
$Btn_auto = GUICtrlCreateButton("AUTO", 144, 120, 113, 25, $WS_CLIPSIBLINGS)
$label_Repeat = GUICtrlCreateLabel("Repeat", 10, 120, 46, 24, BitOR($SS_CENTER,$SS_CENTERIMAGE))
GUICtrlSetFont(-1, 9, 400, 0, "MS Sans Serif")
Global $Repeat_input = GUICtrlCreateInput("-1", 64, 120, 73, 24, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$WS_BORDER))
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
Global $Status = GUICtrlCreateLabel("NULL", 8, 192, 260, 25, BitOR($SS_CENTER,$SS_CENTERIMAGE))
GUICtrlSetFont(-1, 8, 800, 1, "MS Sans Serif")
GUICtrlSetColor(-1, 0xFF0000)
Global $Fish_count_text = GUICtrlCreateLabel("0", 56, 152, 76, 28, $SS_CENTERIMAGE)
GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
GUICtrlSetColor(-1, 0xFF0000)
$Fish_label = GUICtrlCreateLabel("Fish:", 18, 152, 38, 32, $SS_CENTERIMAGE)
GUICtrlSetFont(-1, 9, 400, 0, "MS Sans Serif")
Global $Tool_count_text = GUICtrlCreateLabel("0", 184, 152, 76, 28, $SS_CENTERIMAGE)
GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
GUICtrlSetColor(-1, 0xFF0000)
$Tool_label = GUICtrlCreateLabel("Tool:", 146, 152, 38, 32, $SS_CENTERIMAGE)
GUICtrlSetFont(-1, 9, 400, 0, "MS Sans Serif")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Btn_auto
			Auto()
	EndSwitch
WEnd

;=====================================================================================
Func VaoCau()
	GUICtrlSetData($Status,"Đang chọn mồi câu")
	ControlClick($handle,"","",'left',1,359, 221)
	If GUICtrlRead($Radio_Luoicau1) = 1 Then
		GUICtrlSetData($Status,"Chọn mồi câu số 1")
		Sleep(500)
		ControlClick($handle,"","",'left',1,171, 364) ;Lưỡi câu 1
		Sleep(200)
		ControlClick($handle,"","",'left',1,359, 221)
		Sleep(200)
		ControlClick($handle,"","",'left',1,359, 221)
		Sleep(500)
		ControlClick($handle,"","",'left',1,524, 282)
	ElseIf GUICtrlRead($Radio_Luoicau2) = 1 Then
		GUICtrlSetData($Status,"Chọn mồi câu số 2")
		Sleep(500)
		ControlClick($handle,"","",'left',1,235, 367) ;Lưỡi câu 2
		Sleep(200)
		ControlClick($handle,"","",'left',1,359, 221)
		Sleep(200)
		ControlClick($handle,"","",'left',1,359, 221)
		Sleep(500)
		ControlClick($handle,"","",'left',1,614, 283)
	ElseIf GUICtrlRead($Radio_Luoicau3) = 1 Then
		GUICtrlSetData($Status,"Chọn mồi câu số 3")
		Sleep(500)
		ControlClick($handle,"","",'left',1,295, 363) ;Lưỡi câu 3
		Sleep(500)
		ControlClick($handle,"","",'left',1,359, 221)
		Sleep(500)
		ControlClick($handle,"","",'left',1,359, 221)
		Sleep(500)
		ControlClick($handle,"","",'left',1,614, 283)
	ElseIf GUICtrlRead($Radio_Luoicau4) = 1 Then
		GUICtrlSetData($Status,"Chọn mồi câu số 4")
		Sleep(500)
		ControlClick($handle,"","",'left',1,355, 364) ;Lưỡi câu 4
		Sleep(500)
		ControlClick($handle,"","",'left',1,359, 221)
		Sleep(500)
		ControlClick($handle,"","",'left',1,359, 221)
		Sleep(500)
		ControlClick($handle,"","",'left',1,559, 281)
	EndIf
	;-----

EndFunc
;~ ;=====================================================================================
;~ Ngang = 34 ô 20 pixel
;~ 	- Ô đầu tiên [0][0] : (0 ,110,20,120)
;~ 	- Ô thứ 2    [0][1]	: (20,110,40,120)
;~ 	- Ô thứ 3	 [0][2] : (40,110,60,120)
;~ Dọc	  = 24 ô 10 pixel
;~ 	- Ô đầu tiên [1][0]: (0,110,20,120)
;~ 	- Ô thứ 2    [2][0]: (0,120,20,130)
;~ 	- Ô thứ 3    [3][0]: (0,130,20,140)
Func CheckFishPosition($x, $y)
	$x1 = 0 + 20 * ($x - 1)
	$y1 = 110 + 10 * ($y - 1)
	$x2 = 20 + 20 * ($x - 1)
	$y2 = 120 + 10 * ($y - 1)
	Local $count_1 = FFColorCount(0x0875AD, 0, True,$x1,$y1,$x2,$y2) ;~ 0x0875AD
	Local $count_2 = FFColorCount(0x1075AD, 0, True,$x1,$y1,$x2,$y2) ;~ 0x1075AD

;~ 	ConsoleWrite($x1 &@LF)
;~ 	ConsoleWrite($y1 &@LF)
;~ 	ConsoleWrite($x2 &@LF)
;~ 	ConsoleWrite($y2)

	If $count_1>5 Or $count_2>5 Then
		ControlClick($handle,"","",'left',1,$x1+10,$y1+5)
		$ChooseFish = True
		Return 1
	Else
		Return 0
	EndIf
EndFunc
;=====================================================================================
Func SearchAndChooseFish()
	For $i = 1 to 24
		For $j = 1 to 34
			CheckFishPosition($j,$i)
		Next
	Next
EndFunc
;=====================================================================================
Func ClickFishHook()
	Local $count = FFColorCount(0xDE4D21,0,True,0,110,680,390)
;~ 	ConsoleWrite($count)
	If $count>50 Then
		$FishHooked = True
		ControlClick($handle,"","",'left',1,200,200)
	EndIf
EndFunc
;=====================================================================================
Func KeoCa()
	Local $count = FFColorCount(0x39FFA5,0,True,577, 274,583, 274)
	Local $Fry_lable = FFColorCount(0x7BBE39,0,True,330, 325,447, 363)
	Local $Sell_tool = FFColorCount(0xAD3873,0,True,330, 325,447, 363)
	If $count>5 Then
		ControlClick($handle,'','','left',1,300,300)
		Sleep(100)
	EndIf
	If $Fry_lable > 50 Then
		Sleep(100)
		$Fish_count = $Fish_count +1
		GUICtrlSetData($Fish_count_text,$Fish_count)
		ControlClick($handle,'','','left',1,248, 343) ;sell
		$Finish = True
	ElseIf $Sell_tool > 50 Then
		Sleep(100)
		$Tool_count = $Tool_count +1
		GUICtrlSetData($Tool_count_text,$Tool_count)
		ControlClick($handle,'','','left',1,268, 351) ;sell
		$Finish = True
	EndIf
EndFunc
;=====================================================================================
Func Test()
	VaoCau()
EndFunc
;=====================================================================================

Func Auto()
	$Solanchay = GUICtrlRead($Repeat_input)
	If $Solanchay = -1 Then
		$Solanchay = 9999999
	EndIf
	For $i = 1 to $Solanchay
		VaoCau()
		;---------
		Sleep(1000)
		GUICtrlSetData($Status,'Đang chọn cá')
		While Not $ChooseFish
			SearchAndChooseFish()
		WEnd
		$ChooseFish =False
		GUICtrlSetData($Status,'Đã chọn cá xong')
		;---------
		GUICtrlSetData($Status,'Đang đợi cá cắn câu')
		While Not $FishHooked
			ClickFishHook()
		WEnd
		$FishHooked =False
		GUICtrlSetData($Status,'Cá đã cắn câu')
		;---------
		GUICtrlSetData($Status,'Đang click kéo cá')
		While Not $Finish
			KeoCa()
		WEnd
		$Finish = False
		GUICtrlSetData($Status,'Đã câu được cá')
		Sleep(3000)
	Next
EndFunc
