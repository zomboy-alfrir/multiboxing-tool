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
StringReplace, ToonListNoR, ToonList, `r ,, All

TrimmedToon = % RegExReplace(ToonListNoR,"\s*$","")
StringSplit, ToonListArray, TrimmedToon, `n


; ====== Start drawing the UI
; ======================

Gui, Add, Picture, x-0 y-0 wS_CLIPSIBLINGS , img\bg.png
Gui, Add, Picture, x272 y529 gCreatedBy, img\createdby.png

Loop %ToonListArray0% {
	height := 169 + (A_Index - 1) * 28
	toon_line = % ToonListArray%A_Index%
	StringSplit, toon_line_parsed, toon_line, `t
	
	toon_name = % toon_line_parsed1
	toon_key = % toon_line_parsed2
	
	Gui, Add, Edit, x23 y%height% w300 h20 ReadOnly -Wrap, %toon_name%
	Gui, Add, Edit, x360 y%height% w115 h20 ReadOnly -Wrap, %toon_key%
}

; ====== Show the UI
; ======================

Gui, Show, x649 y202 h600 w500, Zomboy's Multiboxing Tool


; ====== Setup the Hotkeys
; ======================

Loop %ToonListArray0% {

	toon_line = % ToonListArray%A_Index%
	StringSplit, toon_line_parsed, toon_line, `t
	key_to_press = % toon_line_parsed2
	key_to_press = % Hparse(key_to_press)
	
	Hotkey%A_Index% = %key_to_press%
	
	win_name = EVE - %toon_line_parsed1%
	
	SetTitleMatchMode, 2
	
	Hotkey, IfWinExist, %win_name% ahk_exe exefile.exe
	Hotkey, %key_to_press%, SwitchTo%A_Index%
}

Hotkey, IfWinActive
Hotkey, 0, PositionEVEWindows

Return

; =======================================================================
; End of Main subroutine
; =======================================================================






; ====== Show my EVE profile
; ======================

CreatedBy:
	Run "https://gate.eveonline.com/Profile/Zomboy Alfrir"
Return


PositionEVEWindows:
	SetTitleMatchMode, 2
	WinGet, id, list, ahk_exe exefile.exe
	Loop, %id%
	{	
		this_id := id%A_Index%
		WinMove, ahk_id %this_id%,,0,0,1920,900
	}
Return



; ====== Labels can't be created dynamically AFAIK
;        So I must repeat code like a monkey.
;        These are the labels that get called when
;        the corresponding key gets pressed
; ======================

SwitchTo1:
	; Only switch if the window is already active
	IfWinActive, ahk_exe exefile.exe
	{
		toon_line = % ToonListArray1
		StringSplit, toon_line_parsed, toon_line, `t
		win_name = EVE - %toon_line_parsed1%
		IfWinNotActive, %win_name% ahk_exe exefile.exe
		{
			WinActivate  %win_name% ahk_exe exefile.exe
		}
	}
	else
	{
		SendInput %Hotkey1%
	}
	Return

SwitchTo2:
	; Only switch if the window is already active
	IfWinActive, ahk_exe exefile.exe
	{
		toon_line = % ToonListArray2
		StringSplit, toon_line_parsed, toon_line, `t
		win_name = EVE - %toon_line_parsed1%
		IfWinNotActive, %win_name% ahk_exe exefile.exe
		{
			WinActivate  %win_name% ahk_exe exefile.exe
		}
	}
	else
	{
		SendInput %Hotkey2%
	}
	Return

SwitchTo3:
	; Only switch if the window is already active
	IfWinActive, ahk_exe exefile.exe
	{
		toon_line = % ToonListArray3
		StringSplit, toon_line_parsed, toon_line, `t
		win_name = EVE - %toon_line_parsed1%
		IfWinNotActive, %win_name% ahk_exe exefile.exe
		{
			WinActivate  %win_name% ahk_exe exefile.exe
		}
	}
	else
	{
		SendInput %Hotkey3%
	}
	Return

SwitchTo4:
	; Only switch if the window is already active
	IfWinActive, ahk_exe exefile.exe
	{
		toon_line = % ToonListArray4
		StringSplit, toon_line_parsed, toon_line, `t
		win_name = EVE - %toon_line_parsed1%
		IfWinNotActive, %win_name% ahk_exe exefile.exe
		{
			WinActivate  %win_name% ahk_exe exefile.exe
		}
	}
	else
	{
		SendInput %Hotkey4%
	}
	Return

SwitchTo5:
	; Only switch if the window is already active
	IfWinActive, ahk_exe exefile.exe
	{
		toon_line = % ToonListArray5
		StringSplit, toon_line_parsed, toon_line, `t
		win_name = EVE - %toon_line_parsed1%
		IfWinNotActive, %win_name% ahk_exe exefile.exe
		{
			WinActivate  %win_name% ahk_exe exefile.exe
		}
	}
	else
	{
		SendInput %Hotkey5%
	}
	Return

SwitchTo6:
	; Only switch if the window is already active
	IfWinActive, ahk_exe exefile.exe
	{
		toon_line = % ToonListArray6
		StringSplit, toon_line_parsed, toon_line, `t
		win_name = EVE - %toon_line_parsed1%
		IfWinNotActive, %win_name% ahk_exe exefile.exe
		{
			WinActivate  %win_name% ahk_exe exefile.exe
		}
	}
	else
	{
		SendInput %Hotkey6%
	}
	Return

SwitchTo7:
	; Only switch if the window is already active
	IfWinActive, ahk_exe exefile.exe
	{
		toon_line = % ToonListArray7
		StringSplit, toon_line_parsed, toon_line, `t
		win_name = EVE - %toon_line_parsed1%
		IfWinNotActive, %win_name% ahk_exe exefile.exe
		{
			WinActivate  %win_name% ahk_exe exefile.exe
		}
	}
	else
	{
		SendInput %Hotkey7%
	}
	Return

SwitchTo8:
	; Only switch if the window is already active
	IfWinActive, ahk_exe exefile.exe
	{
		toon_line = % ToonListArray8
		StringSplit, toon_line_parsed, toon_line, `t
		win_name = EVE - %toon_line_parsed1%
		IfWinNotActive, %win_name% ahk_exe exefile.exe
		{
			WinActivate  %win_name% ahk_exe exefile.exe
		}
	}
	else
	{
		SendInput %Hotkey8%
	}
	Return

SwitchTo9:
	; Only switch if the window is already active
	IfWinActive, ahk_exe exefile.exe
	{
		toon_line = % ToonListArray9
		StringSplit, toon_line_parsed, toon_line, `t
		win_name = EVE - %toon_line_parsed1%
		IfWinNotActive, %win_name% ahk_exe exefile.exe
		{
			WinActivate  %win_name% ahk_exe exefile.exe
		}
	}
	else
	{
		SendInput %Hotkey9%
	}
	Return

SwitchTo10:
	; Only switch if the window is already active
	IfWinActive, ahk_exe exefile.exe
	{
		toon_line = % ToonListArray10
		StringSplit, toon_line_parsed, toon_line, `t
		win_name = EVE - %toon_line_parsed1%
		IfWinNotActive, %win_name% ahk_exe exefile.exe
		{
			WinActivate  %win_name% ahk_exe exefile.exe
		}
	}
	else
	{
		SendInput %Hotkey10%
	}
	Return

SwitchTo11:
	; Only switch if the window is already active
	IfWinActive, ahk_exe exefile.exe
	{
		toon_line = % ToonListArray11
		StringSplit, toon_line_parsed, toon_line, `t
		win_name = EVE - %toon_line_parsed1%
		IfWinNotActive, %win_name% ahk_exe exefile.exe
		{
			WinActivate  %win_name% ahk_exe exefile.exe
		}
	}
	else
	{
		SendInput %Hotkey11%
	}
	Return

SwitchTo12:
	; Only switch if the window is already active
	IfWinActive, ahk_exe exefile.exe
	{
		toon_line = % ToonListArray12
		StringSplit, toon_line_parsed, toon_line, `t
		win_name = EVE - %toon_line_parsed1%
		IfWinNotActive, %win_name% ahk_exe exefile.exe
		{
			WinActivate  %win_name% ahk_exe exefile.exe
		}
	}
	else
	{
		SendInput %Hotkey12%
	}
	Return

SwitchTo13:
	; Only switch if the window is already active
	IfWinActive, ahk_exe exefile.exe
	{
		toon_line = % ToonListArray13
		StringSplit, toon_line_parsed, toon_line, `t
		win_name = EVE - %toon_line_parsed1%
		IfWinNotActive, %win_name% ahk_exe exefile.exe
		{
			WinActivate  %win_name% ahk_exe exefile.exe
		}
	}
	else
	{
		SendInput %Hotkey13%
	}
	Return




GuiClose:
ExitApp

#Include, vendor\HotkeyParser.ahk