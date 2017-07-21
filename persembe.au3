#NoTrayIcon
#include <StaticConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <GuiButton.au3>
#include <ComboConstants.au3>
#include <AutoItConstants.au3>
$settingloc = @ScriptDir & "\settings.ini"
$persembe = GUICreate("Perşembe", 361, 609, -1, -1, -1, -1)
#include <Misc.au3>


$saat = GUICtrlCreateLabel("Saat : " & @HOUR & ":" & @MIN & ":" & @SEC & "  Tarih : " & @MDAY & "." & @MON & "." & @YEAR & "  Gün : " & $hgun, 55, 595)

;~ -------
GUICtrlCreateLabel("Aktiflik :", 23, 30, 50, 15, -1, -1)
GUICtrlCreateLabel("Giriş Zili :", 108, 16, 50, 15, -1, -1)
GUICtrlCreateLabel("Saat :", 90, 31, 34, 15, -1, -1)
GUICtrlCreateLabel("Dakika :", 155, 31, 50, 15, -1, -1)
GUICtrlCreateLabel("Müzik :", 241, 31, 36, 15, -1, -1)
GUICtrlCreateLabel("Mola :", 321, 31, 36, 15, -1, -1)
GUICtrlCreateLabel("Perşembe", 21, 555, 300, 32, $SS_CENTER, -1)
GUICtrlSetFont(-1, 25, 400, 0)
;~ -------
$persembed1 = GUICtrlCreateCheckbox("1.Ders", 10, 50, 55, 20)
$persembed2 = GUICtrlCreateCheckbox("2.ders", 10, 80, 55, 20)
$persembed3 = GUICtrlCreateCheckbox("3.ders", 10, 110, 55, 20)
$persembed4 = GUICtrlCreateCheckbox("4.ders", 10, 140, 55, 20)
$persembed5 = GUICtrlCreateCheckbox("5.ders", 10, 170, 55, 20)
$persembed6 = GUICtrlCreateCheckbox("6.ders", 10, 200, 55, 20)
$persembed7 = GUICtrlCreateCheckbox("7.ders", 10, 230, 55, 20)
$persembed8 = GUICtrlCreateCheckbox("8.ders", 10, 260, 55, 20)
$persembed9 = GUICtrlCreateCheckbox("9.ders", 10, 290, 55, 20)
$persembed10 = GUICtrlCreateCheckbox("10.ders", 10, 320, 55, 20)
$persembed11 = GUICtrlCreateCheckbox("11.ders", 10, 350, 55, 20)
$persembed12 = GUICtrlCreateCheckbox("12.ders", 10, 380, 55, 20)
$persembed13 = GUICtrlCreateCheckbox("13.ders", 10, 410, 55, 20)
$persembed14 = GUICtrlCreateCheckbox("14.ders", 10, 440, 55, 20)
$persembed15 = GUICtrlCreateCheckbox("15.ders", 10, 470, 55, 20)
$persembed16 = GUICtrlCreateCheckbox("16.ders", 10, 500, 55, 20)
;~ -------
$persembesaatd1 = GUICtrlCreateCombo("", 75, 50, 60, 20)
$persembesaatd2 = GUICtrlCreateCombo("", 75, 80, 60, 20, -1, -1)
$persembesaatd3 = GUICtrlCreateCombo("", 75, 110, 60, 20, -1, -1)
$persembesaatd4 = GUICtrlCreateCombo("", 75, 140, 60, 20, -1, -1)
$persembesaatd5 = GUICtrlCreateCombo("", 75, 170, 60, 20, -1, -1)
$persembesaatd6 = GUICtrlCreateCombo("", 75, 200, 60, 20, -1, -1)
$persembesaatd7 = GUICtrlCreateCombo("", 75, 230, 60, 20, -1, -1)
$persembesaatd8 = GUICtrlCreateCombo("", 75, 260, 60, 20, -1, -1)
$persembesaatd9 = GUICtrlCreateCombo("", 75, 290, 60, 20, -1, -1)
$persembesaatd10 = GUICtrlCreateCombo("", 75, 320, 60, 20, -1, -1)
$persembesaatd11 = GUICtrlCreateCombo("", 75, 350, 60, 20, -1, -1)
$persembesaatd12 = GUICtrlCreateCombo("", 75, 380, 60, 20, -1, -1)
$persembesaatd13 = GUICtrlCreateCombo("", 75, 410, 60, 20, -1, -1)
$persembesaatd14 = GUICtrlCreateCombo("", 75, 440, 60, 20, -1, -1)
$persembesaatd15 = GUICtrlCreateCombo("", 75, 470, 60, 20, -1, -1)
$persembesaatd16 = GUICtrlCreateCombo("", 75, 500, 60, 20, -1, -1)
;~ -------
$topsaat = "!!!|00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24"
GUICtrlSetData($persembesaatd1, $topsaat)
GUICtrlSetData($persembesaatd2, $topsaat)
GUICtrlSetData($persembesaatd3, $topsaat)
GUICtrlSetData($persembesaatd4, $topsaat)
GUICtrlSetData($persembesaatd5, $topsaat)
GUICtrlSetData($persembesaatd6, $topsaat)
GUICtrlSetData($persembesaatd7, $topsaat)
GUICtrlSetData($persembesaatd8, $topsaat)
GUICtrlSetData($persembesaatd9, $topsaat)
GUICtrlSetData($persembesaatd10, $topsaat)
GUICtrlSetData($persembesaatd11, $topsaat)
GUICtrlSetData($persembesaatd12, $topsaat)
GUICtrlSetData($persembesaatd13, $topsaat)
GUICtrlSetData($persembesaatd14, $topsaat)
GUICtrlSetData($persembesaatd15, $topsaat)
GUICtrlSetData($persembesaatd16, $topsaat)
;~ -------
$persembedakikad1 = GUICtrlCreateCombo("", 145, 50, 65, 20, -1, -1)
$persembedakikad2 = GUICtrlCreateCombo("", 145, 80, 65, 20, -1, -1)
$persembedakikad3 = GUICtrlCreateCombo("", 145, 110, 65, 20, -1, -1)
$persembedakikad4 = GUICtrlCreateCombo("", 145, 140, 65, 20, -1, -1)
$persembedakikad5 = GUICtrlCreateCombo("", 145, 170, 65, 20, -1, -1)
$persembedakikad6 = GUICtrlCreateCombo("", 145, 200, 65, 20, -1, -1)
$persembedakikad7 = GUICtrlCreateCombo("", 145, 230, 65, 20, -1, -1)
$persembedakikad8 = GUICtrlCreateCombo("", 145, 260, 65, 20, -1, -1)
$persembedakikad9 = GUICtrlCreateCombo("", 145, 290, 65, 20, -1, -1)
$persembedakikad10 = GUICtrlCreateCombo("", 145, 320, 65, 20, -1, -1)
$persembedakikad11 = GUICtrlCreateCombo("", 145, 350, 65, 20, -1, -1)
$persembedakikad12 = GUICtrlCreateCombo("", 145, 380, 65, 20, -1, -1)
$persembedakikad13 = GUICtrlCreateCombo("", 145, 410, 65, 20, -1, -1)
$persembedakikad14 = GUICtrlCreateCombo("", 145, 440, 65, 20, -1, -1)
$persembedakikad15 = GUICtrlCreateCombo("", 145, 470, 65, 20, -1, -1)
$persembedakikad16 = GUICtrlCreateCombo("", 145, 500, 65, 20, -1, -1)
;~ -------
$topdak = "!!!|00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59"
GUICtrlSetData($persembedakikad1, $topdak)
GUICtrlSetData($persembedakikad2, $topdak)
GUICtrlSetData($persembedakikad3, $topdak)
GUICtrlSetData($persembedakikad4, $topdak)
GUICtrlSetData($persembedakikad5, $topdak)
GUICtrlSetData($persembedakikad6, $topdak)
GUICtrlSetData($persembedakikad7, $topdak)
GUICtrlSetData($persembedakikad8, $topdak)
GUICtrlSetData($persembedakikad9, $topdak)
GUICtrlSetData($persembedakikad10, $topdak)
GUICtrlSetData($persembedakikad11, $topdak)
GUICtrlSetData($persembedakikad12, $topdak)
GUICtrlSetData($persembedakikad13, $topdak)
GUICtrlSetData($persembedakikad14, $topdak)
GUICtrlSetData($persembedakikad15, $topdak)
GUICtrlSetData($persembedakikad16, $topdak)

;~ -------
$persembemuzikd1 = GUICtrlCreateCombo("", 220, 50, 90, 20, -1, -1)
$persembemuzikd2 = GUICtrlCreateCombo("", 220, 80, 90, 20, -1, -1)
$persembemuzikd3 = GUICtrlCreateCombo("", 220, 110, 90, 20, -1, -1)
$persembemuzikd4 = GUICtrlCreateCombo("", 220, 140, 90, 20, -1, -1)
$persembemuzikd5 = GUICtrlCreateCombo("", 220, 170, 90, 20, -1, -1)
$persembemuzikd6 = GUICtrlCreateCombo("", 220, 200, 90, 20, -1, -1)
$persembemuzikd7 = GUICtrlCreateCombo("", 220, 230, 90, 20, -1, -1)
$persembemuzikd8 = GUICtrlCreateCombo("", 220, 260, 90, 20, -1, -1)
$persembemuzikd9 = GUICtrlCreateCombo("", 220, 290, 90, 20, -1, -1)
$persembemuzikd10 = GUICtrlCreateCombo("", 220, 320, 90, 20, -1, -1)
$persembemuzikd11 = GUICtrlCreateCombo("", 220, 350, 90, 20, -1, -1)
$persembemuzikd12 = GUICtrlCreateCombo("", 220, 380, 90, 20, -1, -1)
$persembemuzikd13 = GUICtrlCreateCombo("", 220, 410, 90, 20, -1, -1)
$persembemuzikd14 = GUICtrlCreateCombo("", 220, 440, 90, 20, -1, -1)
$persembemuzikd15 = GUICtrlCreateCombo("", 220, 470, 90, 20, -1, -1)
$persembemuzikd16 = GUICtrlCreateCombo("", 220, 500, 90, 20, -1, -1)
;~ -------

GUICtrlSetData($persembemuzikd1, $topmuz)
GUICtrlSetData($persembemuzikd2, $topmuz)
GUICtrlSetData($persembemuzikd3, $topmuz)
GUICtrlSetData($persembemuzikd4, $topmuz)
GUICtrlSetData($persembemuzikd5, $topmuz)
GUICtrlSetData($persembemuzikd6, $topmuz)
GUICtrlSetData($persembemuzikd7, $topmuz)
GUICtrlSetData($persembemuzikd8, $topmuz)
GUICtrlSetData($persembemuzikd9, $topmuz)
GUICtrlSetData($persembemuzikd10, $topmuz)
GUICtrlSetData($persembemuzikd11, $topmuz)
GUICtrlSetData($persembemuzikd12, $topmuz)
GUICtrlSetData($persembemuzikd13, $topmuz)
GUICtrlSetData($persembemuzikd14, $topmuz)
GUICtrlSetData($persembemuzikd15, $topmuz)
GUICtrlSetData($persembemuzikd16, $topmuz)
;~ -------
$persembemolad1 = GUICtrlCreateRadio("", 324, 50, 20, 20, -1, -1)
$persembemolad2 = GUICtrlCreateRadio("", 324, 80, 20, 20, -1, -1)
$persembemolad3 = GUICtrlCreateRadio("", 324, 110, 20, 20, -1, -1)
$persembemolad4 = GUICtrlCreateRadio("", 324, 140, 20, 20, -1, -1)
$persembemolad5 = GUICtrlCreateRadio("", 324, 170, 20, 20, -1, -1)
$persembemolad6 = GUICtrlCreateRadio("", 324, 200, 20, 20, -1, -1)
$persembemolad7 = GUICtrlCreateRadio("", 324, 230, 20, 20, -1, -1)
$persembemolad8 = GUICtrlCreateRadio("", 324, 260, 20, 20, -1, -1)
$persembemolad9 = GUICtrlCreateRadio("", 324, 290, 20, 20, -1, -1)
$persembemolad10 = GUICtrlCreateRadio("", 324, 320, 20, 20, -1, -1)
$persembemolad11 = GUICtrlCreateRadio("", 324, 350, 20, 20, -1, -1)
$persembemolad12 = GUICtrlCreateRadio("", 324, 380, 20, 20, -1, -1)
$persembemolad13 = GUICtrlCreateRadio("", 324, 410, 20, 20, -1, -1)
$persembemolad14 = GUICtrlCreateRadio("", 324, 440, 20, 20, -1, -1)
$persembemolad15 = GUICtrlCreateRadio("", 324, 470, 20, 20, -1, -1)
$persembemolad16 = GUICtrlCreateRadio("", 324, 500, 20, 20, -1, -1)
$persembemolayok = GUICtrlCreateRadio("", 324, 533, 20, 20, -1, -1)
;~ -------
$persembekopyalanacak = GUICtrlCreateCombo("", 23, 534, 158, 21, -1, -1)
GUICtrlSetData(-1, "P.Tesi|Salı|Çarşamba|Perşembe|Cuma|C.Tesi|Pazar")
$persembekopyala = GUICtrlCreateButton("Kopyala", 222, 533, 80, 22, -1, -1)

GUICtrlSetData($persembesaatd1, IniRead($settingloc, "persembe", "saatd1", "00"))
GUICtrlSetData($persembesaatd2, IniRead($settingloc, "persembe", "saatd2", "00"))
GUICtrlSetData($persembesaatd3, IniRead($settingloc, "persembe", "saatd3", "00"))
GUICtrlSetData($persembesaatd4, IniRead($settingloc, "persembe", "saatd4", "00"))
GUICtrlSetData($persembesaatd5, IniRead($settingloc, "persembe", "saatd5", "00"))
GUICtrlSetData($persembesaatd6, IniRead($settingloc, "persembe", "saatd6", "00"))
GUICtrlSetData($persembesaatd7, IniRead($settingloc, "persembe", "saatd7", "00"))
GUICtrlSetData($persembesaatd8, IniRead($settingloc, "persembe", "saatd8", "00"))
GUICtrlSetData($persembesaatd9, IniRead($settingloc, "persembe", "saatd9", "00"))
GUICtrlSetData($persembesaatd10, IniRead($settingloc, "persembe", "saatd10", "00"))
GUICtrlSetData($persembesaatd11, IniRead($settingloc, "persembe", "saatd11", "00"))
GUICtrlSetData($persembesaatd12, IniRead($settingloc, "persembe", "saatd12", "00"))
GUICtrlSetData($persembesaatd13, IniRead($settingloc, "persembe", "saatd13", "00"))
GUICtrlSetData($persembesaatd14, IniRead($settingloc, "persembe", "saatd14", "00"))
GUICtrlSetData($persembesaatd15, IniRead($settingloc, "persembe", "saatd15", "00"))
GUICtrlSetData($persembesaatd16, IniRead($settingloc, "persembe", "saatd16", "00"))

GUICtrlSetData($persembedakikad1, IniRead($settingloc, "persembe", "dakikad1", "00"))
GUICtrlSetData($persembedakikad2, IniRead($settingloc, "persembe", "dakikad2", "00"))
GUICtrlSetData($persembedakikad3, IniRead($settingloc, "persembe", "dakikad3", "00"))
GUICtrlSetData($persembedakikad4, IniRead($settingloc, "persembe", "dakikad4", "00"))
GUICtrlSetData($persembedakikad5, IniRead($settingloc, "persembe", "dakikad5", "00"))
GUICtrlSetData($persembedakikad6, IniRead($settingloc, "persembe", "dakikad6", "00"))
GUICtrlSetData($persembedakikad7, IniRead($settingloc, "persembe", "dakikad7", "00"))
GUICtrlSetData($persembedakikad8, IniRead($settingloc, "persembe", "dakikad8", "00"))
GUICtrlSetData($persembedakikad9, IniRead($settingloc, "persembe", "dakikad9", "00"))
GUICtrlSetData($persembedakikad10, IniRead($settingloc, "persembe", "dakikad10", "00"))
GUICtrlSetData($persembedakikad11, IniRead($settingloc, "persembe", "dakikad11", "00"))
GUICtrlSetData($persembedakikad12, IniRead($settingloc, "persembe", "dakikad12", "00"))
GUICtrlSetData($persembedakikad13, IniRead($settingloc, "persembe", "dakikad13", "00"))
GUICtrlSetData($persembedakikad14, IniRead($settingloc, "persembe", "dakikad14", "00"))
GUICtrlSetData($persembedakikad15, IniRead($settingloc, "persembe", "dakikad15", "00"))
GUICtrlSetData($persembedakikad16, IniRead($settingloc, "persembe", "dakikad16", "00"))

GUICtrlSetData($persembemuzikd1, IniRead($settingloc, "persembe", "muzikd1", "00"))
GUICtrlSetData($persembemuzikd2, IniRead($settingloc, "persembe", "muzikd2", "00"))
GUICtrlSetData($persembemuzikd3, IniRead($settingloc, "persembe", "muzikd3", "00"))
GUICtrlSetData($persembemuzikd4, IniRead($settingloc, "persembe", "muzikd4", "00"))
GUICtrlSetData($persembemuzikd5, IniRead($settingloc, "persembe", "muzikd5", "00"))
GUICtrlSetData($persembemuzikd6, IniRead($settingloc, "persembe", "muzikd6", "00"))
GUICtrlSetData($persembemuzikd7, IniRead($settingloc, "persembe", "muzikd7", "00"))
GUICtrlSetData($persembemuzikd8, IniRead($settingloc, "persembe", "muzikd8", "00"))
GUICtrlSetData($persembemuzikd9, IniRead($settingloc, "persembe", "muzikd9", "00"))
GUICtrlSetData($persembemuzikd10, IniRead($settingloc, "persembe", "muzikd10", "00"))
GUICtrlSetData($persembemuzikd11, IniRead($settingloc, "persembe", "muzikd11", "00"))
GUICtrlSetData($persembemuzikd12, IniRead($settingloc, "persembe", "muzikd12", "00"))
GUICtrlSetData($persembemuzikd13, IniRead($settingloc, "persembe", "muzikd13", "00"))
GUICtrlSetData($persembemuzikd14, IniRead($settingloc, "persembe", "muzikd14", "00"))
GUICtrlSetData($persembemuzikd15, IniRead($settingloc, "persembe", "muzikd15", "00"))
GUICtrlSetData($persembemuzikd16, IniRead($settingloc, "persembe", "muzikd16", "00"))

If IniRead($settingloc, "persembe", "mola", "1") = 1 Then
	GUICtrlSetState($persembemolad1, $Gui_Checked)
ElseIf IniRead($settingloc, "persembe", "mola", "2") = 2 Then
	GUICtrlSetState($persembemolad2, $Gui_Checked)
ElseIf IniRead($settingloc, "persembe", "mola", "3") = 3 Then
	GUICtrlSetState($persembemolad3, $Gui_Checked)
ElseIf IniRead($settingloc, "persembe", "mola", "4") = 4 Then
	GUICtrlSetState($persembemolad4, $Gui_Checked)
ElseIf IniRead($settingloc, "persembe", "mola", "5") = 5 Then
	GUICtrlSetState($persembemolad5, $Gui_Checked)
ElseIf IniRead($settingloc, "persembe", "mola", "6") = 6 Then
	GUICtrlSetState($persembemolad6, $Gui_Checked)
ElseIf IniRead($settingloc, "persembe", "mola", "7") = 7 Then
	GUICtrlSetState($persembemolad7, $Gui_Checked)
ElseIf IniRead($settingloc, "persembe", "mola", "8") = 8 Then
	GUICtrlSetState($persembemolad8, $Gui_Checked)
ElseIf IniRead($settingloc, "persembe", "mola", "9") = 9 Then
	GUICtrlSetState($persembemolad9, $Gui_Checked)
ElseIf IniRead($settingloc, "persembe", "mola", "10") = 10 Then
	GUICtrlSetState($persembemolad10, $Gui_Checked)
ElseIf IniRead($settingloc, "persembe", "mola", "11") = 11 Then
	GUICtrlSetState($persembemolad11, $Gui_Checked)
ElseIf IniRead($settingloc, "persembe", "mola", "12") = 12 Then
	GUICtrlSetState($persembemolad12, $Gui_Checked)
ElseIf IniRead($settingloc, "persembe", "mola", "13") = 13 Then
	GUICtrlSetState($persembemolad13, $Gui_Checked)
ElseIf IniRead($settingloc, "persembe", "mola", "14") = 14 Then
	GUICtrlSetState($persembemolad14, $Gui_Checked)
ElseIf IniRead($settingloc, "persembe", "mola", "15") = 15 Then
	GUICtrlSetState($persembemolad15, $Gui_Checked)
ElseIf IniRead($settingloc, "persembe", "mola", "16") = 16 Then
	GUICtrlSetState($persembemolad16, $Gui_Checked)
Else
	GUICtrlSetState($persembemolayok, $Gui_Checked)
EndIf

Func persembed1()
	If $mod = 1 Then
		If GUICtrlRead($persembemolad1) = 1 Then
			$temp = 0

			SoundPlay($ogrencizil, 1)

			$temp = $ogretmensure * 60000
			Sleep($temp)

			SoundPlay($ogretmenzil, 1)

			$temp = $ders * 60000
			Sleep($temp)

			SoundPlay($cikiszil, 1)

			If GUICtrlRead($persembemuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf


			$temp = $mola * 60000
			Sleep($temp)
;~ 17:55 ogrenci giris 18:00 ogretmen giris 18:40 cikis 18:40~41 seçilen müziği başlat programı 20 dk dondur
		Else
			$temp = 0

			SoundPlay($ogrencizil, 1)

			$temp = $ogretmensure * 60000
			Sleep($temp)

			SoundPlay($ogretmenzil, 1)

			$temp = $ders * 60000
			Sleep($temp)

			SoundPlay($cikiszil, 1)

			If GUICtrlRead($persembemuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 17:55 ogrenci giris 18:00 ogretmen giris 18:40 cikis 18:40~41 seçilen müzik
		EndIf
	Else
		If GUICtrlGetState($persembemolad1) = 80 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)

			If GUICtrlRead($persembemuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf

			$temp = $mola * 60000
			Sleep($temp)
;~ 17:55 ogrenci giris 18:00 ogretmen giris 18:40 ara 19:20 cikis 19:20~21 seçilen müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)

			If GUICtrlRead($persembemuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd1) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 17:55 ogrenci giris 18:00 ogretmen giris 18:40 ara 19:20 cikis 19:20~21 seçilen müzik
		EndIf
	EndIf
EndFunc   ;==>persembed1

Func persembed2()
	If $mod = 1 Then
		If GUICtrlRead($persembemolad2) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)

			If GUICtrlRead($persembemuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf

			$temp = $mola * 60000
			Sleep($temp)

;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen  müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)

			If GUICtrlRead($persembemuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($persembemolad2) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
			$temp = $mola * 60000
			Sleep($temp)

;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd2) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>persembed2

Func persembed3()
	If $mod = 1 Then
		If GUICtrlRead($persembemolad3) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
			$temp = $mola * 60000
			Sleep($temp)

;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen  müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($persembemolad3) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
			$temp = $mola * 60000
			Sleep($temp)

;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd3) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>persembed3

Func persembed4()
	If $mod = 1 Then
		If GUICtrlRead($persembemolad4) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
			$temp = $mola * 60000
			Sleep($temp)

;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen  müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($persembemolad4) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
			$temp = $mola * 60000
			Sleep($temp)

;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd4) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>persembed4

Func persembed5()
	If $mod = 1 Then
		If GUICtrlRead($persembemolad5) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
			$temp = $mola * 60000
			Sleep($temp)

;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen  müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($persembemolad5) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
			$temp = $mola * 60000
			Sleep($temp)

;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd5) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>persembed5

Func persembed6()
	If $mod = 1 Then
		If GUICtrlRead($persembemolad6) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
			$temp = $mola * 60000
			Sleep($temp)

;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen  müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($persembemolad6) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
			$temp = $mola * 60000
			Sleep($temp)

;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($persembemuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($persembemuzikd6) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>persembed6

Func persembed7()
	If $mod = 1 Then
		If GUICtrlRead($persembemolad7) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen  müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($persembemolad7) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>persembed7

Func persembed8()
	If $mod = 1 Then
		If GUICtrlRead($persembemolad8) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen  müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($persembemolad8) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>persembed8

Func persembed9()
	If $mod = 1 Then
		If GUICtrlRead($persembemolad9) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen  müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($persembemolad9) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>persembed9

Func persembed10()
	If $mod = 1 Then
		If GUICtrlRead($persembemolad10) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen  müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($persembemolad10) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>persembed10

Func persembed11()
	If $mod = 1 Then
		If GUICtrlRead($persembemolad11) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen  müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($persembemolad11) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>persembed11

Func persembed12()
	If $mod = 1 Then
		If GUICtrlRead($persembemolad12) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen  müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($persembemolad12) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>persembed12

Func persembed13()
	If $mod = 1 Then
		If GUICtrlRead($persembemolad13) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen  müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($persembemolad13) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>persembed13

Func persembed14()
	If $mod = 1 Then
		If GUICtrlRead($persembemolad14) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen  müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($persembemolad14) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>persembed14

Func persembed15()
	If $mod = 1 Then
		If GUICtrlRead($persembemolad15) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen  müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($persembemolad15) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>persembed15

Func persembed16()
	If $mod = 1 Then
		If GUICtrlRead($persembemolad16) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen  müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($persembemolad16) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
			$temp = $mola * 60000
			Sleep($temp)

;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen müziği başlat 20 dk dondur
		Else
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ara * 60000
			Sleep($temp)
			SoundPlay($arazil, 1)
			$temp = $ders - $ara
			$temp = $temp * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			MsgBox(1, "", @HOUR & " . " & @MIN & " mzik")
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>persembed16
