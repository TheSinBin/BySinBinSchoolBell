#NoTrayIcon
#include <StaticConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <GuiButton.au3>
#include <ComboConstants.au3>
#include <AutoItConstants.au3>
$settingloc = @ScriptDir & "\settings.ini"
$cuma = GUICreate("Cuma", 361, 609, -1, -1, -1, -1)
#include <Misc.au3>


$saat = GUICtrlCreateLabel("Saat : " & @HOUR & ":" & @MIN & ":" & @SEC & "  Tarih : " & @MDAY & "." & @MON & "." & @YEAR & "  Gün : " & $hgun, 55, 595)

;~ -------
GUICtrlCreateLabel("Aktiflik :", 23, 30, 50, 15, -1, -1)
GUICtrlCreateLabel("Giriş Zili :", 108, 16, 50, 15, -1, -1)
GUICtrlCreateLabel("Saat :", 90, 31, 34, 15, -1, -1)
GUICtrlCreateLabel("Dakika :", 155, 31, 50, 15, -1, -1)
GUICtrlCreateLabel("Müzik :", 241, 31, 36, 15, -1, -1)
GUICtrlCreateLabel("Mola :", 321, 31, 36, 15, -1, -1)
GUICtrlCreateLabel("Cuma", 21, 555, 300, 32, $SS_CENTER, -1)
GUICtrlSetFont(-1, 25, 400, 0)
;~ -------
$cumad1 = GUICtrlCreateCheckbox("1.Ders", 10, 50, 55, 20)
$cumad2 = GUICtrlCreateCheckbox("2.ders", 10, 80, 55, 20)
$cumad3 = GUICtrlCreateCheckbox("3.ders", 10, 110, 55, 20)
$cumad4 = GUICtrlCreateCheckbox("4.ders", 10, 140, 55, 20)
$cumad5 = GUICtrlCreateCheckbox("5.ders", 10, 170, 55, 20)
$cumad6 = GUICtrlCreateCheckbox("6.ders", 10, 200, 55, 20)
$cumad7 = GUICtrlCreateCheckbox("7.ders", 10, 230, 55, 20)
$cumad8 = GUICtrlCreateCheckbox("8.ders", 10, 260, 55, 20)
$cumad9 = GUICtrlCreateCheckbox("9.ders", 10, 290, 55, 20)
$cumad10 = GUICtrlCreateCheckbox("10.ders", 10, 320, 55, 20)
$cumad11 = GUICtrlCreateCheckbox("11.ders", 10, 350, 55, 20)
$cumad12 = GUICtrlCreateCheckbox("12.ders", 10, 380, 55, 20)
$cumad13 = GUICtrlCreateCheckbox("13.ders", 10, 410, 55, 20)
$cumad14 = GUICtrlCreateCheckbox("14.ders", 10, 440, 55, 20)
$cumad15 = GUICtrlCreateCheckbox("15.ders", 10, 470, 55, 20)
$cumad16 = GUICtrlCreateCheckbox("16.ders", 10, 500, 55, 20)
;~ -------
$cumasaatd1 = GUICtrlCreateCombo("", 75, 50, 60, 20)
$cumasaatd2 = GUICtrlCreateCombo("", 75, 80, 60, 20, -1, -1)
$cumasaatd3 = GUICtrlCreateCombo("", 75, 110, 60, 20, -1, -1)
$cumasaatd4 = GUICtrlCreateCombo("", 75, 140, 60, 20, -1, -1)
$cumasaatd5 = GUICtrlCreateCombo("", 75, 170, 60, 20, -1, -1)
$cumasaatd6 = GUICtrlCreateCombo("", 75, 200, 60, 20, -1, -1)
$cumasaatd7 = GUICtrlCreateCombo("", 75, 230, 60, 20, -1, -1)
$cumasaatd8 = GUICtrlCreateCombo("", 75, 260, 60, 20, -1, -1)
$cumasaatd9 = GUICtrlCreateCombo("", 75, 290, 60, 20, -1, -1)
$cumasaatd10 = GUICtrlCreateCombo("", 75, 320, 60, 20, -1, -1)
$cumasaatd11 = GUICtrlCreateCombo("", 75, 350, 60, 20, -1, -1)
$cumasaatd12 = GUICtrlCreateCombo("", 75, 380, 60, 20, -1, -1)
$cumasaatd13 = GUICtrlCreateCombo("", 75, 410, 60, 20, -1, -1)
$cumasaatd14 = GUICtrlCreateCombo("", 75, 440, 60, 20, -1, -1)
$cumasaatd15 = GUICtrlCreateCombo("", 75, 470, 60, 20, -1, -1)
$cumasaatd16 = GUICtrlCreateCombo("", 75, 500, 60, 20, -1, -1)
;~ -------
$topsaat = "!!!|00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24"
GUICtrlSetData($cumasaatd1, $topsaat)
GUICtrlSetData($cumasaatd2, $topsaat)
GUICtrlSetData($cumasaatd3, $topsaat)
GUICtrlSetData($cumasaatd4, $topsaat)
GUICtrlSetData($cumasaatd5, $topsaat)
GUICtrlSetData($cumasaatd6, $topsaat)
GUICtrlSetData($cumasaatd7, $topsaat)
GUICtrlSetData($cumasaatd8, $topsaat)
GUICtrlSetData($cumasaatd9, $topsaat)
GUICtrlSetData($cumasaatd10, $topsaat)
GUICtrlSetData($cumasaatd11, $topsaat)
GUICtrlSetData($cumasaatd12, $topsaat)
GUICtrlSetData($cumasaatd13, $topsaat)
GUICtrlSetData($cumasaatd14, $topsaat)
GUICtrlSetData($cumasaatd15, $topsaat)
GUICtrlSetData($cumasaatd16, $topsaat)
;~ -------
$cumadakikad1 = GUICtrlCreateCombo("", 145, 50, 65, 20, -1, -1)
$cumadakikad2 = GUICtrlCreateCombo("", 145, 80, 65, 20, -1, -1)
$cumadakikad3 = GUICtrlCreateCombo("", 145, 110, 65, 20, -1, -1)
$cumadakikad4 = GUICtrlCreateCombo("", 145, 140, 65, 20, -1, -1)
$cumadakikad5 = GUICtrlCreateCombo("", 145, 170, 65, 20, -1, -1)
$cumadakikad6 = GUICtrlCreateCombo("", 145, 200, 65, 20, -1, -1)
$cumadakikad7 = GUICtrlCreateCombo("", 145, 230, 65, 20, -1, -1)
$cumadakikad8 = GUICtrlCreateCombo("", 145, 260, 65, 20, -1, -1)
$cumadakikad9 = GUICtrlCreateCombo("", 145, 290, 65, 20, -1, -1)
$cumadakikad10 = GUICtrlCreateCombo("", 145, 320, 65, 20, -1, -1)
$cumadakikad11 = GUICtrlCreateCombo("", 145, 350, 65, 20, -1, -1)
$cumadakikad12 = GUICtrlCreateCombo("", 145, 380, 65, 20, -1, -1)
$cumadakikad13 = GUICtrlCreateCombo("", 145, 410, 65, 20, -1, -1)
$cumadakikad14 = GUICtrlCreateCombo("", 145, 440, 65, 20, -1, -1)
$cumadakikad15 = GUICtrlCreateCombo("", 145, 470, 65, 20, -1, -1)
$cumadakikad16 = GUICtrlCreateCombo("", 145, 500, 65, 20, -1, -1)
;~ -------
$topdak = "!!!|00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59"
GUICtrlSetData($cumadakikad1, $topdak)
GUICtrlSetData($cumadakikad2, $topdak)
GUICtrlSetData($cumadakikad3, $topdak)
GUICtrlSetData($cumadakikad4, $topdak)
GUICtrlSetData($cumadakikad5, $topdak)
GUICtrlSetData($cumadakikad6, $topdak)
GUICtrlSetData($cumadakikad7, $topdak)
GUICtrlSetData($cumadakikad8, $topdak)
GUICtrlSetData($cumadakikad9, $topdak)
GUICtrlSetData($cumadakikad10, $topdak)
GUICtrlSetData($cumadakikad11, $topdak)
GUICtrlSetData($cumadakikad12, $topdak)
GUICtrlSetData($cumadakikad13, $topdak)
GUICtrlSetData($cumadakikad14, $topdak)
GUICtrlSetData($cumadakikad15, $topdak)
GUICtrlSetData($cumadakikad16, $topdak)

;~ -------
$cumamuzikd1 = GUICtrlCreateCombo("", 220, 50, 90, 20, -1, -1)
$cumamuzikd2 = GUICtrlCreateCombo("", 220, 80, 90, 20, -1, -1)
$cumamuzikd3 = GUICtrlCreateCombo("", 220, 110, 90, 20, -1, -1)
$cumamuzikd4 = GUICtrlCreateCombo("", 220, 140, 90, 20, -1, -1)
$cumamuzikd5 = GUICtrlCreateCombo("", 220, 170, 90, 20, -1, -1)
$cumamuzikd6 = GUICtrlCreateCombo("", 220, 200, 90, 20, -1, -1)
$cumamuzikd7 = GUICtrlCreateCombo("", 220, 230, 90, 20, -1, -1)
$cumamuzikd8 = GUICtrlCreateCombo("", 220, 260, 90, 20, -1, -1)
$cumamuzikd9 = GUICtrlCreateCombo("", 220, 290, 90, 20, -1, -1)
$cumamuzikd10 = GUICtrlCreateCombo("", 220, 320, 90, 20, -1, -1)
$cumamuzikd11 = GUICtrlCreateCombo("", 220, 350, 90, 20, -1, -1)
$cumamuzikd12 = GUICtrlCreateCombo("", 220, 380, 90, 20, -1, -1)
$cumamuzikd13 = GUICtrlCreateCombo("", 220, 410, 90, 20, -1, -1)
$cumamuzikd14 = GUICtrlCreateCombo("", 220, 440, 90, 20, -1, -1)
$cumamuzikd15 = GUICtrlCreateCombo("", 220, 470, 90, 20, -1, -1)
$cumamuzikd16 = GUICtrlCreateCombo("", 220, 500, 90, 20, -1, -1)
;~ -------

GUICtrlSetData($cumamuzikd1, $topmuz)
GUICtrlSetData($cumamuzikd2, $topmuz)
GUICtrlSetData($cumamuzikd3, $topmuz)
GUICtrlSetData($cumamuzikd4, $topmuz)
GUICtrlSetData($cumamuzikd5, $topmuz)
GUICtrlSetData($cumamuzikd6, $topmuz)
GUICtrlSetData($cumamuzikd7, $topmuz)
GUICtrlSetData($cumamuzikd8, $topmuz)
GUICtrlSetData($cumamuzikd9, $topmuz)
GUICtrlSetData($cumamuzikd10, $topmuz)
GUICtrlSetData($cumamuzikd11, $topmuz)
GUICtrlSetData($cumamuzikd12, $topmuz)
GUICtrlSetData($cumamuzikd13, $topmuz)
GUICtrlSetData($cumamuzikd14, $topmuz)
GUICtrlSetData($cumamuzikd15, $topmuz)
GUICtrlSetData($cumamuzikd16, $topmuz)
;~ -------
$cumamolad1 = GUICtrlCreateRadio("", 324, 50, 20, 20, -1, -1)
$cumamolad2 = GUICtrlCreateRadio("", 324, 80, 20, 20, -1, -1)
$cumamolad3 = GUICtrlCreateRadio("", 324, 110, 20, 20, -1, -1)
$cumamolad4 = GUICtrlCreateRadio("", 324, 140, 20, 20, -1, -1)
$cumamolad5 = GUICtrlCreateRadio("", 324, 170, 20, 20, -1, -1)
$cumamolad6 = GUICtrlCreateRadio("", 324, 200, 20, 20, -1, -1)
$cumamolad7 = GUICtrlCreateRadio("", 324, 230, 20, 20, -1, -1)
$cumamolad8 = GUICtrlCreateRadio("", 324, 260, 20, 20, -1, -1)
$cumamolad9 = GUICtrlCreateRadio("", 324, 290, 20, 20, -1, -1)
$cumamolad10 = GUICtrlCreateRadio("", 324, 320, 20, 20, -1, -1)
$cumamolad11 = GUICtrlCreateRadio("", 324, 350, 20, 20, -1, -1)
$cumamolad12 = GUICtrlCreateRadio("", 324, 380, 20, 20, -1, -1)
$cumamolad13 = GUICtrlCreateRadio("", 324, 410, 20, 20, -1, -1)
$cumamolad14 = GUICtrlCreateRadio("", 324, 440, 20, 20, -1, -1)
$cumamolad15 = GUICtrlCreateRadio("", 324, 470, 20, 20, -1, -1)
$cumamolad16 = GUICtrlCreateRadio("", 324, 500, 20, 20, -1, -1)
$cumamolayok = GUICtrlCreateRadio("", 324, 533, 20, 20, -1, -1)
;~ -------
$cumakopyalanacak = GUICtrlCreateCombo("", 23, 534, 158, 21, -1, -1)
GUICtrlSetData(-1, "P.Tesi|Salı|Çarşamba|Perşembe|Cuma|C.Tesi|Pazar")
$cumakopyala = GUICtrlCreateButton("Kopyala", 222, 533, 80, 22, -1, -1)

GUICtrlSetData($cumasaatd1, IniRead($settingloc, "cuma", "saatd1", "00"))
GUICtrlSetData($cumasaatd2, IniRead($settingloc, "cuma", "saatd2", "00"))
GUICtrlSetData($cumasaatd3, IniRead($settingloc, "cuma", "saatd3", "00"))
GUICtrlSetData($cumasaatd4, IniRead($settingloc, "cuma", "saatd4", "00"))
GUICtrlSetData($cumasaatd5, IniRead($settingloc, "cuma", "saatd5", "00"))
GUICtrlSetData($cumasaatd6, IniRead($settingloc, "cuma", "saatd6", "00"))
GUICtrlSetData($cumasaatd7, IniRead($settingloc, "cuma", "saatd7", "00"))
GUICtrlSetData($cumasaatd8, IniRead($settingloc, "cuma", "saatd8", "00"))
GUICtrlSetData($cumasaatd9, IniRead($settingloc, "cuma", "saatd9", "00"))
GUICtrlSetData($cumasaatd10, IniRead($settingloc, "cuma", "saatd10", "00"))
GUICtrlSetData($cumasaatd11, IniRead($settingloc, "cuma", "saatd11", "00"))
GUICtrlSetData($cumasaatd12, IniRead($settingloc, "cuma", "saatd12", "00"))
GUICtrlSetData($cumasaatd13, IniRead($settingloc, "cuma", "saatd13", "00"))
GUICtrlSetData($cumasaatd14, IniRead($settingloc, "cuma", "saatd14", "00"))
GUICtrlSetData($cumasaatd15, IniRead($settingloc, "cuma", "saatd15", "00"))
GUICtrlSetData($cumasaatd16, IniRead($settingloc, "cuma", "saatd16", "00"))

GUICtrlSetData($cumadakikad1, IniRead($settingloc, "cuma", "dakikad1", "00"))
GUICtrlSetData($cumadakikad2, IniRead($settingloc, "cuma", "dakikad2", "00"))
GUICtrlSetData($cumadakikad3, IniRead($settingloc, "cuma", "dakikad3", "00"))
GUICtrlSetData($cumadakikad4, IniRead($settingloc, "cuma", "dakikad4", "00"))
GUICtrlSetData($cumadakikad5, IniRead($settingloc, "cuma", "dakikad5", "00"))
GUICtrlSetData($cumadakikad6, IniRead($settingloc, "cuma", "dakikad6", "00"))
GUICtrlSetData($cumadakikad7, IniRead($settingloc, "cuma", "dakikad7", "00"))
GUICtrlSetData($cumadakikad8, IniRead($settingloc, "cuma", "dakikad8", "00"))
GUICtrlSetData($cumadakikad9, IniRead($settingloc, "cuma", "dakikad9", "00"))
GUICtrlSetData($cumadakikad10, IniRead($settingloc, "cuma", "dakikad10", "00"))
GUICtrlSetData($cumadakikad11, IniRead($settingloc, "cuma", "dakikad11", "00"))
GUICtrlSetData($cumadakikad12, IniRead($settingloc, "cuma", "dakikad12", "00"))
GUICtrlSetData($cumadakikad13, IniRead($settingloc, "cuma", "dakikad13", "00"))
GUICtrlSetData($cumadakikad14, IniRead($settingloc, "cuma", "dakikad14", "00"))
GUICtrlSetData($cumadakikad15, IniRead($settingloc, "cuma", "dakikad15", "00"))
GUICtrlSetData($cumadakikad16, IniRead($settingloc, "cuma", "dakikad16", "00"))

GUICtrlSetData($cumamuzikd1, IniRead($settingloc, "cuma", "muzikd1", "00"))
GUICtrlSetData($cumamuzikd2, IniRead($settingloc, "cuma", "muzikd2", "00"))
GUICtrlSetData($cumamuzikd3, IniRead($settingloc, "cuma", "muzikd3", "00"))
GUICtrlSetData($cumamuzikd4, IniRead($settingloc, "cuma", "muzikd4", "00"))
GUICtrlSetData($cumamuzikd5, IniRead($settingloc, "cuma", "muzikd5", "00"))
GUICtrlSetData($cumamuzikd6, IniRead($settingloc, "cuma", "muzikd6", "00"))
GUICtrlSetData($cumamuzikd7, IniRead($settingloc, "cuma", "muzikd7", "00"))
GUICtrlSetData($cumamuzikd8, IniRead($settingloc, "cuma", "muzikd8", "00"))
GUICtrlSetData($cumamuzikd9, IniRead($settingloc, "cuma", "muzikd9", "00"))
GUICtrlSetData($cumamuzikd10, IniRead($settingloc, "cuma", "muzikd10", "00"))
GUICtrlSetData($cumamuzikd11, IniRead($settingloc, "cuma", "muzikd11", "00"))
GUICtrlSetData($cumamuzikd12, IniRead($settingloc, "cuma", "muzikd12", "00"))
GUICtrlSetData($cumamuzikd13, IniRead($settingloc, "cuma", "muzikd13", "00"))
GUICtrlSetData($cumamuzikd14, IniRead($settingloc, "cuma", "muzikd14", "00"))
GUICtrlSetData($cumamuzikd15, IniRead($settingloc, "cuma", "muzikd15", "00"))
GUICtrlSetData($cumamuzikd16, IniRead($settingloc, "cuma", "muzikd16", "00"))

If IniRead($settingloc, "cuma", "mola", "1") = 1 Then
	GUICtrlSetState($cumamolad1, $Gui_Checked)
ElseIf IniRead($settingloc, "cuma", "mola", "2") = 2 Then
	GUICtrlSetState($cumamolad2, $Gui_Checked)
ElseIf IniRead($settingloc, "cuma", "mola", "3") = 3 Then
	GUICtrlSetState($cumamolad3, $Gui_Checked)
ElseIf IniRead($settingloc, "cuma", "mola", "4") = 4 Then
	GUICtrlSetState($cumamolad4, $Gui_Checked)
ElseIf IniRead($settingloc, "cuma", "mola", "5") = 5 Then
	GUICtrlSetState($cumamolad5, $Gui_Checked)
ElseIf IniRead($settingloc, "cuma", "mola", "6") = 6 Then
	GUICtrlSetState($cumamolad6, $Gui_Checked)
ElseIf IniRead($settingloc, "cuma", "mola", "7") = 7 Then
	GUICtrlSetState($cumamolad7, $Gui_Checked)
ElseIf IniRead($settingloc, "cuma", "mola", "8") = 8 Then
	GUICtrlSetState($cumamolad8, $Gui_Checked)
ElseIf IniRead($settingloc, "cuma", "mola", "9") = 9 Then
	GUICtrlSetState($cumamolad9, $Gui_Checked)
ElseIf IniRead($settingloc, "cuma", "mola", "10") = 10 Then
	GUICtrlSetState($cumamolad10, $Gui_Checked)
ElseIf IniRead($settingloc, "cuma", "mola", "11") = 11 Then
	GUICtrlSetState($cumamolad11, $Gui_Checked)
ElseIf IniRead($settingloc, "cuma", "mola", "12") = 12 Then
	GUICtrlSetState($cumamolad12, $Gui_Checked)
ElseIf IniRead($settingloc, "cuma", "mola", "13") = 13 Then
	GUICtrlSetState($cumamolad13, $Gui_Checked)
ElseIf IniRead($settingloc, "cuma", "mola", "14") = 14 Then
	GUICtrlSetState($cumamolad14, $Gui_Checked)
ElseIf IniRead($settingloc, "cuma", "mola", "15") = 15 Then
	GUICtrlSetState($cumamolad15, $Gui_Checked)
ElseIf IniRead($settingloc, "cuma", "mola", "16") = 16 Then
	GUICtrlSetState($cumamolad16, $Gui_Checked)
Else
	GUICtrlSetState($cumamolayok, $Gui_Checked)
EndIf

Func cumad1()
	If $mod = 1 Then
		If GUICtrlRead($cumamolad1) = 1 Then
			$temp = 0

			SoundPlay($ogrencizil, 1)

			$temp = $ogretmensure * 60000
			Sleep($temp)

			SoundPlay($ogretmenzil, 1)

			$temp = $ders * 60000
			Sleep($temp)

			SoundPlay($cikiszil, 1)

			If GUICtrlRead($cumamuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 12" Then
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

			If GUICtrlRead($cumamuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 17:55 ogrenci giris 18:00 ogretmen giris 18:40 cikis 18:40~41 seçilen müzik
		EndIf
	Else
		If GUICtrlGetState($cumamolad1) = 80 Then
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

			If GUICtrlRead($cumamuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 12" Then
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

			If GUICtrlRead($cumamuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd1) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 17:55 ogrenci giris 18:00 ogretmen giris 18:40 ara 19:20 cikis 19:20~21 seçilen müzik
		EndIf
	EndIf
EndFunc   ;==>cumad1

Func cumad2()
	If $mod = 1 Then
		If GUICtrlRead($cumamolad2) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)

			If GUICtrlRead($cumamuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 12" Then
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

			If GUICtrlRead($cumamuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($cumamolad2) = 1 Then
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
			If GUICtrlRead($cumamuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 12" Then
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
			If GUICtrlRead($cumamuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd2) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>cumad2

Func cumad3()
	If $mod = 1 Then
		If GUICtrlRead($cumamolad3) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($cumamuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 12" Then
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
			If GUICtrlRead($cumamuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($cumamolad3) = 1 Then
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
			If GUICtrlRead($cumamuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 12" Then
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
			If GUICtrlRead($cumamuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd3) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>cumad3

Func cumad4()
	If $mod = 1 Then
		If GUICtrlRead($cumamolad4) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($cumamuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 12" Then
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
			If GUICtrlRead($cumamuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($cumamolad4) = 1 Then
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
			If GUICtrlRead($cumamuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 12" Then
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
			If GUICtrlRead($cumamuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd4) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>cumad4

Func cumad5()
	If $mod = 1 Then
		If GUICtrlRead($cumamolad5) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($cumamuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 12" Then
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
			If GUICtrlRead($cumamuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($cumamolad5) = 1 Then
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
			If GUICtrlRead($cumamuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 12" Then
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
			If GUICtrlRead($cumamuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd5) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>cumad5

Func cumad6()
	If $mod = 1 Then
		If GUICtrlRead($cumamolad6) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($cumamuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 12" Then
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
			If GUICtrlRead($cumamuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($cumamolad6) = 1 Then
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
			If GUICtrlRead($cumamuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 12" Then
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
			If GUICtrlRead($cumamuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($cumamuzikd6) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>cumad6

Func cumad7()
	If $mod = 1 Then
		If GUICtrlRead($cumamolad7) = 1 Then
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
		If GUICtrlRead($cumamolad7) = 1 Then
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
EndFunc   ;==>cumad7

Func cumad8()
	If $mod = 1 Then
		If GUICtrlRead($cumamolad8) = 1 Then
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
		If GUICtrlRead($cumamolad8) = 1 Then
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
EndFunc   ;==>cumad8

Func cumad9()
	If $mod = 1 Then
		If GUICtrlRead($cumamolad9) = 1 Then
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
		If GUICtrlRead($cumamolad9) = 1 Then
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
EndFunc   ;==>cumad9

Func cumad10()
	If $mod = 1 Then
		If GUICtrlRead($cumamolad10) = 1 Then
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
		If GUICtrlRead($cumamolad10) = 1 Then
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
EndFunc   ;==>cumad10

Func cumad11()
	If $mod = 1 Then
		If GUICtrlRead($cumamolad11) = 1 Then
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
		If GUICtrlRead($cumamolad11) = 1 Then
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
EndFunc   ;==>cumad11

Func cumad12()
	If $mod = 1 Then
		If GUICtrlRead($cumamolad12) = 1 Then
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
		If GUICtrlRead($cumamolad12) = 1 Then
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
EndFunc   ;==>cumad12

Func cumad13()
	If $mod = 1 Then
		If GUICtrlRead($cumamolad13) = 1 Then
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
		If GUICtrlRead($cumamolad13) = 1 Then
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
EndFunc   ;==>cumad13

Func cumad14()
	If $mod = 1 Then
		If GUICtrlRead($cumamolad14) = 1 Then
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
		If GUICtrlRead($cumamolad14) = 1 Then
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
EndFunc   ;==>cumad14

Func cumad15()
	If $mod = 1 Then
		If GUICtrlRead($cumamolad15) = 1 Then
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
		If GUICtrlRead($cumamolad15) = 1 Then
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
EndFunc   ;==>cumad15

Func cumad16()
	If $mod = 1 Then
		If GUICtrlRead($cumamolad16) = 1 Then
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
		If GUICtrlRead($cumamolad16) = 1 Then
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
EndFunc   ;==>cumad16
