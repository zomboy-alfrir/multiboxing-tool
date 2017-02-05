; ======================================
; Zomboy's Multiboxing Tool
; ======================================


; ====== Standard stuff
; ======================

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ====== Read EVE characters from file.
;        Name and key number should be
;        separated by a tab character 
; ======================

FileRead, ToonList, toons.txt
StringSplit, ToonListArray, ToonList, `n


; ====== Start drawing the UI
; ======================

Gui, Add, Picture, x-0 y-0 wS_CLIPSIBLINGS , img\bg.png
Gui, Add, Picture, x272 y529 w200 h50 gCreatedBy, img\createdby.png

Loop 5 {
	height := 179 + (A_Index - 1) * 58
	toon_line = % ToonListArray%A_Index%
	StringSplit, toon_line_parsed, toon_line, `t
	
	toon_name = % toon_line_parsed1
	toon_key = % toon_line_parsed2	
	
	Gui, Add, Edit, x32 y%height% w380 h20 ReadOnly -Wrap, %toon_name%
	Gui, Add, Edit, x440 y%height% w30 h20 ReadOnly -Wrap, %toon_key%
}

Gui, Add, Button, x160 y459 w190 h50 gSaveButton, Save

; ====== Show the UI
; ======================

Gui, Show, x649 y202 h600 w500, Zomboy's Multiboxing Tool


; ====== Setup the Hotkeys
; ======================

SaveButton:	
	
	; Only switch if the window is already active
	Hotkey, IfWinActive, ahk_exe exefile.exe
	
	Loop 5 {		
		
		Hotkey, %A_Index%, SwitchTo%A_Index%
	}

Return

; =======================================================================
; End of Main subroutine
; =======================================================================

; ====== Show my EVE profile
; ======================

CreatedBy:
	Run "https://gate.eveonline.com/Profile/Zomboy Alfrir"
Return

; ====== Labels can't be created dynamically AFAIK
;        So I must repeat code like a monkey.
;        These are the labels that get called when
;        the corresponding key gets pressed
; ======================

SwitchTo1:
	toon_line = % ToonListArray1
	StringSplit, toon_line_parsed, toon_line, `t
	win_name = EVE - %toon_line_parsed1%
	IfWinNotActive, %win_name%
	{
		WinActivate  %win_name%
	}
Return

SwitchTo2:
	toon_line = % ToonListArray2
	StringSplit, toon_line_parsed, toon_line, `t
	win_name = EVE - %toon_line_parsed1%
	IfWinNotActive, %win_name%
	{
		WinActivate  %win_name%
	}
Return

SwitchTo3:
	toon_line = % ToonListArray3
	StringSplit, toon_line_parsed, toon_line, `t
	win_name = EVE - %toon_line_parsed1%
	IfWinNotActive, %win_name%
	{
		WinActivate  %win_name%
	}
Return

SwitchTo4:
	toon_line = % ToonListArray4
	StringSplit, toon_line_parsed, toon_line, `t
	win_name = EVE - %toon_line_parsed1%
	IfWinNotActive, %win_name%
	{
		WinActivate  %win_name%
	}
Return

SwitchTo5:
	toon_line = % ToonListArray5
	StringSplit, toon_line_parsed, toon_line, `t
	win_name = EVE - %toon_line_parsed1%
	IfWinNotActive, %win_name%
	{
		WinActivate  %win_name%
	}
Return



GuiClose:
ExitApp