#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=D:\scanceladadev\src\public\favicon.ico
#AutoIt3Wrapper_Compile_Both=y
#AutoIt3Wrapper_UseX64=y
#AutoIt3Wrapper_Res_Comment=Simple tool cursor position
#AutoIt3Wrapper_Res_Description=Get the cursor position and the Hex color of the screen
#AutoIt3Wrapper_Res_CompanyName=ocancelada.dev
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#Region INCLUDE
#include <GuiConstantsEx.au3>
#include <WindowsConstants.au3>
#EndRegion INCLUDE
; author: ocancelada.dev
GUICreate("Sample GUI", 300, 100,0,900,-1,$WS_EX_TOPMOST)
#Region GUI MESSAGE LOOP
	GUISetState(@SW_SHOW)
	#Region PROGRESS
	$posText = GUICtrlCreateLabel("Cursor Coords:", 5, 8, 220)
	GUICtrlSetFont($posText, 14)
	$text = GUICtrlCreateLabel(":", 155, 8, 160)
	GUICtrlSetFont($text, 13)
	GUICtrlSetColor($text, 0xFF0000)
	$colorLabel = GUICtrlCreateLabel("Color:", 5, 35, 120)
	GUICtrlSetFont($colorLabel, 14)
	$color = GUICtrlCreateLabel(":", 55, 35, 160)
	GUICtrlSetColor($color, 0xFF0000)
	GUICtrlSetFont($color, 13)
	$pos = 0
	$iColor = 0
	#EndRegion PROGRESS

	While 1
		$pos = MouseGetPos()
		$iColor = PixelGetColor($pos[0], $pos[1])
		GUICtrlSetData($color," #" & Hex($iColor, 6))
		GUICtrlSetData($text,'X: ' & $pos[0] & "    Y: " & $pos[1])
		Switch GUIGetMsg()
			Case $GUI_EVENT_CLOSE
				ExitLoop

		EndSwitch
	WEnd

	GUIDelete()
#EndRegion GUI MESSAGE LOOP