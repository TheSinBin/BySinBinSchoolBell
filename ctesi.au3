#NoTrayIcon
#include <StaticConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <GuiButton.au3>
#include <ComboConstants.au3>
#include <AutoItConstants.au3>
$settingloc = @ScriptDir & "\settings.ini"
$ctesi = GUICreate("C.Tesi", 361, 609, -1, -1, -1, -1)
#include <Misc.au3>


$saat = GUICtrlCreateLabel("Saat : " & @HOUR & ":" & @MIN & ":" & @SEC & "  Tarih : " & @MDAY & "." & @MON & "." & @YEAR & "  Gün : " & $hgun, 55, 595)

;~ -------
GUICtrlCreateLabel("Aktiflik :", 23, 30, 50, 15, -1, -1)
GUICtrlCreateLabel("Giriş Zili :", 108, 16, 50, 15, -1, -1)
GUICtrlCreateLabel("Saat :", 90, 31, 34, 15, -1, -1)
GUICtrlCreateLabel("Dakika :", 155, 31, 50, 15, -1, -1)
GUICtrlCreateLabel("Müzik :", 241, 31, 36, 15, -1, -1)
GUICtrlCreateLabel("Mola :", 321, 31, 36, 15, -1, -1)
GUICtrlCreateLabel("C.Tesi", 21, 555, 300, 32, $SS_CENTER, -1)
GUICtrlSetFont(-1, 25, 400, 0)
;~ -------
$ctesid1 = GUICtrlCreateCheckbox("1.Ders", 10, 50, 55, 20)
$ctesid2 = GUICtrlCreateCheckbox("2.ders", 10, 80, 55, 20)
$ctesid3 = GUICtrlCreateCheckbox("3.ders", 10, 110, 55, 20)
$ctesid4 = GUICtrlCreateCheckbox("4.ders", 10, 140, 55, 20)
$ctesid5 = GUICtrlCreateCheckbox("5.ders", 10, 170, 55, 20)
$ctesid6 = GUICtrlCreateCheckbox("6.ders", 10, 200, 55, 20)
$ctesid7 = GUICtrlCreateCheckbox("7.ders", 10, 230, 55, 20)
$ctesid8 = GUICtrlCreateCheckbox("8.ders", 10, 260, 55, 20)
$ctesid9 = GUICtrlCreateCheckbox("9.ders", 10, 290, 55, 20)
$ctesid10 = GUICtrlCreateCheckbox("10.ders", 10, 320, 55, 20)
$ctesid11 = GUICtrlCreateCheckbox("11.ders", 10, 350, 55, 20)
$ctesid12 = GUICtrlCreateCheckbox("12.ders", 10, 380, 55, 20)
$ctesid13 = GUICtrlCreateCheckbox("13.ders", 10, 410, 55, 20)
$ctesid14 = GUICtrlCreateCheckbox("14.ders", 10, 440, 55, 20)
$ctesid15 = GUICtrlCreateCheckbox("15.ders", 10, 470, 55, 20)
$ctesid16 = GUICtrlCreateCheckbox("16.ders", 10, 500, 55, 20)
;~ -------
$ctesisaatd1 = GUICtrlCreateCombo("", 75, 50, 60, 20)
$ctesisaatd2 = GUICtrlCreateCombo("", 75, 80, 60, 20, -1, -1)
$ctesisaatd3 = GUICtrlCreateCombo("", 75, 110, 60, 20, -1, -1)
$ctesisaatd4 = GUICtrlCreateCombo("", 75, 140, 60, 20, -1, -1)
$ctesisaatd5 = GUICtrlCreateCombo("", 75, 170, 60, 20, -1, -1)
$ctesisaatd6 = GUICtrlCreateCombo("", 75, 200, 60, 20, -1, -1)
$ctesisaatd7 = GUICtrlCreateCombo("", 75, 230, 60, 20, -1, -1)
$ctesisaatd8 = GUICtrlCreateCombo("", 75, 260, 60, 20, -1, -1)
$ctesisaatd9 = GUICtrlCreateCombo("", 75, 290, 60, 20, -1, -1)
$ctesisaatd10 = GUICtrlCreateCombo("", 75, 320, 60, 20, -1, -1)
$ctesisaatd11 = GUICtrlCreateCombo("", 75, 350, 60, 20, -1, -1)
$ctesisaatd12 = GUICtrlCreateCombo("", 75, 380, 60, 20, -1, -1)
$ctesisaatd13 = GUICtrlCreateCombo("", 75, 410, 60, 20, -1, -1)
$ctesisaatd14 = GUICtrlCreateCombo("", 75, 440, 60, 20, -1, -1)
$ctesisaatd15 = GUICtrlCreateCombo("", 75, 470, 60, 20, -1, -1)
$ctesisaatd16 = GUICtrlCreateCombo("", 75, 500, 60, 20, -1, -1)
;~ -------
$topsaat = "!!!|00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24"
GUICtrlSetData($ctesisaatd1, $topsaat)
GUICtrlSetData($ctesisaatd2, $topsaat)
GUICtrlSetData($ctesisaatd3, $topsaat)
GUICtrlSetData($ctesisaatd4, $topsaat)
GUICtrlSetData($ctesisaatd5, $topsaat)
GUICtrlSetData($ctesisaatd6, $topsaat)
GUICtrlSetData($ctesisaatd7, $topsaat)
GUICtrlSetData($ctesisaatd8, $topsaat)
GUICtrlSetData($ctesisaatd9, $topsaat)
GUICtrlSetData($ctesisaatd10, $topsaat)
GUICtrlSetData($ctesisaatd11, $topsaat)
GUICtrlSetData($ctesisaatd12, $topsaat)
GUICtrlSetData($ctesisaatd13, $topsaat)
GUICtrlSetData($ctesisaatd14, $topsaat)
GUICtrlSetData($ctesisaatd15, $topsaat)
GUICtrlSetData($ctesisaatd16, $topsaat)
;~ -------
$ctesidakikad1 = GUICtrlCreateCombo("", 145, 50, 65, 20, -1, -1)
$ctesidakikad2 = GUICtrlCreateCombo("", 145, 80, 65, 20, -1, -1)
$ctesidakikad3 = GUICtrlCreateCombo("", 145, 110, 65, 20, -1, -1)
$ctesidakikad4 = GUICtrlCreateCombo("", 145, 140, 65, 20, -1, -1)
$ctesidakikad5 = GUICtrlCreateCombo("", 145, 170, 65, 20, -1, -1)
$ctesidakikad6 = GUICtrlCreateCombo("", 145, 200, 65, 20, -1, -1)
$ctesidakikad7 = GUICtrlCreateCombo("", 145, 230, 65, 20, -1, -1)
$ctesidakikad8 = GUICtrlCreateCombo("", 145, 260, 65, 20, -1, -1)
$ctesidakikad9 = GUICtrlCreateCombo("", 145, 290, 65, 20, -1, -1)
$ctesidakikad10 = GUICtrlCreateCombo("", 145, 320, 65, 20, -1, -1)
$ctesidakikad11 = GUICtrlCreateCombo("", 145, 350, 65, 20, -1, -1)
$ctesidakikad12 = GUICtrlCreateCombo("", 145, 380, 65, 20, -1, -1)
$ctesidakikad13 = GUICtrlCreateCombo("", 145, 410, 65, 20, -1, -1)
$ctesidakikad14 = GUICtrlCreateCombo("", 145, 440, 65, 20, -1, -1)
$ctesidakikad15 = GUICtrlCreateCombo("", 145, 470, 65, 20, -1, -1)
$ctesidakikad16 = GUICtrlCreateCombo("", 145, 500, 65, 20, -1, -1)
;~ -------
$topdak = "!!!|00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59"
GUICtrlSetData($ctesidakikad1, $topdak)
GUICtrlSetData($ctesidakikad2, $topdak)
GUICtrlSetData($ctesidakikad3, $topdak)
GUICtrlSetData($ctesidakikad4, $topdak)
GUICtrlSetData($ctesidakikad5, $topdak)
GUICtrlSetData($ctesidakikad6, $topdak)
GUICtrlSetData($ctesidakikad7, $topdak)
GUICtrlSetData($ctesidakikad8, $topdak)
GUICtrlSetData($ctesidakikad9, $topdak)
GUICtrlSetData($ctesidakikad10, $topdak)
GUICtrlSetData($ctesidakikad11, $topdak)
GUICtrlSetData($ctesidakikad12, $topdak)
GUICtrlSetData($ctesidakikad13, $topdak)
GUICtrlSetData($ctesidakikad14, $topdak)
GUICtrlSetData($ctesidakikad15, $topdak)
GUICtrlSetData($ctesidakikad16, $topdak)

;~ -------
$ctesimuzikd1 = GUICtrlCreateCombo("", 220, 50, 90, 20, -1, -1)
$ctesimuzikd2 = GUICtrlCreateCombo("", 220, 80, 90, 20, -1, -1)
$ctesimuzikd3 = GUICtrlCreateCombo("", 220, 110, 90, 20, -1, -1)
$ctesimuzikd4 = GUICtrlCreateCombo("", 220, 140, 90, 20, -1, -1)
$ctesimuzikd5 = GUICtrlCreateCombo("", 220, 170, 90, 20, -1, -1)
$ctesimuzikd6 = GUICtrlCreateCombo("", 220, 200, 90, 20, -1, -1)
$ctesimuzikd7 = GUICtrlCreateCombo("", 220, 230, 90, 20, -1, -1)
$ctesimuzikd8 = GUICtrlCreateCombo("", 220, 260, 90, 20, -1, -1)
$ctesimuzikd9 = GUICtrlCreateCombo("", 220, 290, 90, 20, -1, -1)
$ctesimuzikd10 = GUICtrlCreateCombo("", 220, 320, 90, 20, -1, -1)
$ctesimuzikd11 = GUICtrlCreateCombo("", 220, 350, 90, 20, -1, -1)
$ctesimuzikd12 = GUICtrlCreateCombo("", 220, 380, 90, 20, -1, -1)
$ctesimuzikd13 = GUICtrlCreateCombo("", 220, 410, 90, 20, -1, -1)
$ctesimuzikd14 = GUICtrlCreateCombo("", 220, 440, 90, 20, -1, -1)
$ctesimuzikd15 = GUICtrlCreateCombo("", 220, 470, 90, 20, -1, -1)
$ctesimuzikd16 = GUICtrlCreateCombo("", 220, 500, 90, 20, -1, -1)
;~ -------

GUICtrlSetData($ctesimuzikd1, $topmuz)
GUICtrlSetData($ctesimuzikd2, $topmuz)
GUICtrlSetData($ctesimuzikd3, $topmuz)
GUICtrlSetData($ctesimuzikd4, $topmuz)
GUICtrlSetData($ctesimuzikd5, $topmuz)
GUICtrlSetData($ctesimuzikd6, $topmuz)
GUICtrlSetData($ctesimuzikd7, $topmuz)
GUICtrlSetData($ctesimuzikd8, $topmuz)
GUICtrlSetData($ctesimuzikd9, $topmuz)
GUICtrlSetData($ctesimuzikd10, $topmuz)
GUICtrlSetData($ctesimuzikd11, $topmuz)
GUICtrlSetData($ctesimuzikd12, $topmuz)
GUICtrlSetData($ctesimuzikd13, $topmuz)
GUICtrlSetData($ctesimuzikd14, $topmuz)
GUICtrlSetData($ctesimuzikd15, $topmuz)
GUICtrlSetData($ctesimuzikd16, $topmuz)
;~ -------
$ctesimolad1 = GUICtrlCreateRadio("", 324, 50, 20, 20, -1, -1)
$ctesimolad2 = GUICtrlCreateRadio("", 324, 80, 20, 20, -1, -1)
$ctesimolad3 = GUICtrlCreateRadio("", 324, 110, 20, 20, -1, -1)
$ctesimolad4 = GUICtrlCreateRadio("", 324, 140, 20, 20, -1, -1)
$ctesimolad5 = GUICtrlCreateRadio("", 324, 170, 20, 20, -1, -1)
$ctesimolad6 = GUICtrlCreateRadio("", 324, 200, 20, 20, -1, -1)
$ctesimolad7 = GUICtrlCreateRadio("", 324, 230, 20, 20, -1, -1)
$ctesimolad8 = GUICtrlCreateRadio("", 324, 260, 20, 20, -1, -1)
$ctesimolad9 = GUICtrlCreateRadio("", 324, 290, 20, 20, -1, -1)
$ctesimolad10 = GUICtrlCreateRadio("", 324, 320, 20, 20, -1, -1)
$ctesimolad11 = GUICtrlCreateRadio("", 324, 350, 20, 20, -1, -1)
$ctesimolad12 = GUICtrlCreateRadio("", 324, 380, 20, 20, -1, -1)
$ctesimolad13 = GUICtrlCreateRadio("", 324, 410, 20, 20, -1, -1)
$ctesimolad14 = GUICtrlCreateRadio("", 324, 440, 20, 20, -1, -1)
$ctesimolad15 = GUICtrlCreateRadio("", 324, 470, 20, 20, -1, -1)
$ctesimolad16 = GUICtrlCreateRadio("", 324, 500, 20, 20, -1, -1)
$ctesimolayok = GUICtrlCreateRadio("", 324, 533, 20, 20, -1, -1)
;~ -------
$ctesikopyalanacak = GUICtrlCreateCombo("", 23, 534, 158, 21, -1, -1)
GUICtrlSetData(-1, "P.Tesi|Salı|Çarşamba|Perşembe|ctesi|C.Tesi|Pazar")
$ctesikopyala = GUICtrlCreateButton("Kopyala", 222, 533, 80, 22, -1, -1)

GUICtrlSetData($ctesisaatd1, IniRead($settingloc, "ctesi", "saatd1", "00"))
GUICtrlSetData($ctesisaatd2, IniRead($settingloc, "ctesi", "saatd2", "00"))
GUICtrlSetData($ctesisaatd3, IniRead($settingloc, "ctesi", "saatd3", "00"))
GUICtrlSetData($ctesisaatd4, IniRead($settingloc, "ctesi", "saatd4", "00"))
GUICtrlSetData($ctesisaatd5, IniRead($settingloc, "ctesi", "saatd5", "00"))
GUICtrlSetData($ctesisaatd6, IniRead($settingloc, "ctesi", "saatd6", "00"))
GUICtrlSetData($ctesisaatd7, IniRead($settingloc, "ctesi", "saatd7", "00"))
GUICtrlSetData($ctesisaatd8, IniRead($settingloc, "ctesi", "saatd8", "00"))
GUICtrlSetData($ctesisaatd9, IniRead($settingloc, "ctesi", "saatd9", "00"))
GUICtrlSetData($ctesisaatd10, IniRead($settingloc, "ctesi", "saatd10", "00"))
GUICtrlSetData($ctesisaatd11, IniRead($settingloc, "ctesi", "saatd11", "00"))
GUICtrlSetData($ctesisaatd12, IniRead($settingloc, "ctesi", "saatd12", "00"))
GUICtrlSetData($ctesisaatd13, IniRead($settingloc, "ctesi", "saatd13", "00"))
GUICtrlSetData($ctesisaatd14, IniRead($settingloc, "ctesi", "saatd14", "00"))
GUICtrlSetData($ctesisaatd15, IniRead($settingloc, "ctesi", "saatd15", "00"))
GUICtrlSetData($ctesisaatd16, IniRead($settingloc, "ctesi", "saatd16", "00"))

GUICtrlSetData($ctesidakikad1, IniRead($settingloc, "ctesi", "dakikad1", "00"))
GUICtrlSetData($ctesidakikad2, IniRead($settingloc, "ctesi", "dakikad2", "00"))
GUICtrlSetData($ctesidakikad3, IniRead($settingloc, "ctesi", "dakikad3", "00"))
GUICtrlSetData($ctesidakikad4, IniRead($settingloc, "ctesi", "dakikad4", "00"))
GUICtrlSetData($ctesidakikad5, IniRead($settingloc, "ctesi", "dakikad5", "00"))
GUICtrlSetData($ctesidakikad6, IniRead($settingloc, "ctesi", "dakikad6", "00"))
GUICtrlSetData($ctesidakikad7, IniRead($settingloc, "ctesi", "dakikad7", "00"))
GUICtrlSetData($ctesidakikad8, IniRead($settingloc, "ctesi", "dakikad8", "00"))
GUICtrlSetData($ctesidakikad9, IniRead($settingloc, "ctesi", "dakikad9", "00"))
GUICtrlSetData($ctesidakikad10, IniRead($settingloc, "ctesi", "dakikad10", "00"))
GUICtrlSetData($ctesidakikad11, IniRead($settingloc, "ctesi", "dakikad11", "00"))
GUICtrlSetData($ctesidakikad12, IniRead($settingloc, "ctesi", "dakikad12", "00"))
GUICtrlSetData($ctesidakikad13, IniRead($settingloc, "ctesi", "dakikad13", "00"))
GUICtrlSetData($ctesidakikad14, IniRead($settingloc, "ctesi", "dakikad14", "00"))
GUICtrlSetData($ctesidakikad15, IniRead($settingloc, "ctesi", "dakikad15", "00"))
GUICtrlSetData($ctesidakikad16, IniRead($settingloc, "ctesi", "dakikad16", "00"))

GUICtrlSetData($ctesimuzikd1, IniRead($settingloc, "ctesi", "muzikd1", "00"))
GUICtrlSetData($ctesimuzikd2, IniRead($settingloc, "ctesi", "muzikd2", "00"))
GUICtrlSetData($ctesimuzikd3, IniRead($settingloc, "ctesi", "muzikd3", "00"))
GUICtrlSetData($ctesimuzikd4, IniRead($settingloc, "ctesi", "muzikd4", "00"))
GUICtrlSetData($ctesimuzikd5, IniRead($settingloc, "ctesi", "muzikd5", "00"))
GUICtrlSetData($ctesimuzikd6, IniRead($settingloc, "ctesi", "muzikd6", "00"))
GUICtrlSetData($ctesimuzikd7, IniRead($settingloc, "ctesi", "muzikd7", "00"))
GUICtrlSetData($ctesimuzikd8, IniRead($settingloc, "ctesi", "muzikd8", "00"))
GUICtrlSetData($ctesimuzikd9, IniRead($settingloc, "ctesi", "muzikd9", "00"))
GUICtrlSetData($ctesimuzikd10, IniRead($settingloc, "ctesi", "muzikd10", "00"))
GUICtrlSetData($ctesimuzikd11, IniRead($settingloc, "ctesi", "muzikd11", "00"))
GUICtrlSetData($ctesimuzikd12, IniRead($settingloc, "ctesi", "muzikd12", "00"))
GUICtrlSetData($ctesimuzikd13, IniRead($settingloc, "ctesi", "muzikd13", "00"))
GUICtrlSetData($ctesimuzikd14, IniRead($settingloc, "ctesi", "muzikd14", "00"))
GUICtrlSetData($ctesimuzikd15, IniRead($settingloc, "ctesi", "muzikd15", "00"))
GUICtrlSetData($ctesimuzikd16, IniRead($settingloc, "ctesi", "muzikd16", "00"))

If IniRead($settingloc, "ctesi", "mola", "1") = 1 Then
	GUICtrlSetState($ctesimolad1, $Gui_Checked)
ElseIf IniRead($settingloc, "ctesi", "mola", "2") = 2 Then
	GUICtrlSetState($ctesimolad2, $Gui_Checked)
ElseIf IniRead($settingloc, "ctesi", "mola", "3") = 3 Then
	GUICtrlSetState($ctesimolad3, $Gui_Checked)
ElseIf IniRead($settingloc, "ctesi", "mola", "4") = 4 Then
	GUICtrlSetState($ctesimolad4, $Gui_Checked)
ElseIf IniRead($settingloc, "ctesi", "mola", "5") = 5 Then
	GUICtrlSetState($ctesimolad5, $Gui_Checked)
ElseIf IniRead($settingloc, "ctesi", "mola", "6") = 6 Then
	GUICtrlSetState($ctesimolad6, $Gui_Checked)
ElseIf IniRead($settingloc, "ctesi", "mola", "7") = 7 Then
	GUICtrlSetState($ctesimolad7, $Gui_Checked)
ElseIf IniRead($settingloc, "ctesi", "mola", "8") = 8 Then
	GUICtrlSetState($ctesimolad8, $Gui_Checked)
ElseIf IniRead($settingloc, "ctesi", "mola", "9") = 9 Then
	GUICtrlSetState($ctesimolad9, $Gui_Checked)
ElseIf IniRead($settingloc, "ctesi", "mola", "10") = 10 Then
	GUICtrlSetState($ctesimolad10, $Gui_Checked)
ElseIf IniRead($settingloc, "ctesi", "mola", "11") = 11 Then
	GUICtrlSetState($ctesimolad11, $Gui_Checked)
ElseIf IniRead($settingloc, "ctesi", "mola", "12") = 12 Then
	GUICtrlSetState($ctesimolad12, $Gui_Checked)
ElseIf IniRead($settingloc, "ctesi", "mola", "13") = 13 Then
	GUICtrlSetState($ctesimolad13, $Gui_Checked)
ElseIf IniRead($settingloc, "ctesi", "mola", "14") = 14 Then
	GUICtrlSetState($ctesimolad14, $Gui_Checked)
ElseIf IniRead($settingloc, "ctesi", "mola", "15") = 15 Then
	GUICtrlSetState($ctesimolad15, $Gui_Checked)
ElseIf IniRead($settingloc, "ctesi", "mola", "16") = 16 Then
	GUICtrlSetState($ctesimolad16, $Gui_Checked)
Else
	GUICtrlSetState($ctesimolayok, $Gui_Checked)
EndIf

Func ctesid1()
	If $mod = 1 Then
		If GUICtrlRead($ctesimolad1) = 1 Then
			$temp = 0

			SoundPlay($ogrencizil, 1)

			$temp = $ogretmensure * 60000
			Sleep($temp)

			SoundPlay($ogretmenzil, 1)

			$temp = $ders * 60000
			Sleep($temp)

			SoundPlay($cikiszil, 1)

			If GUICtrlRead($ctesimuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 12" Then
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

			If GUICtrlRead($ctesimuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 17:55 ogrenci giris 18:00 ogretmen giris 18:40 cikis 18:40~41 seçilen müzik
		EndIf
	Else
		If GUICtrlGetState($ctesimolad1) = 80 Then
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

			If GUICtrlRead($ctesimuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 12" Then
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

			If GUICtrlRead($ctesimuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd1) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 17:55 ogrenci giris 18:00 ogretmen giris 18:40 ara 19:20 cikis 19:20~21 seçilen müzik
		EndIf
	EndIf
EndFunc   ;==>ctesid1

Func ctesid2()
	If $mod = 1 Then
		If GUICtrlRead($ctesimolad2) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)

			If GUICtrlRead($ctesimuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 12" Then
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

			If GUICtrlRead($ctesimuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($ctesimolad2) = 1 Then
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
			If GUICtrlRead($ctesimuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 12" Then
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
			If GUICtrlRead($ctesimuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd2) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>ctesid2

Func ctesid3()
	If $mod = 1 Then
		If GUICtrlRead($ctesimolad3) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($ctesimuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 12" Then
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
			If GUICtrlRead($ctesimuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($ctesimolad3) = 1 Then
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
			If GUICtrlRead($ctesimuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 12" Then
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
			If GUICtrlRead($ctesimuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd3) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>ctesid3

Func ctesid4()
	If $mod = 1 Then
		If GUICtrlRead($ctesimolad4) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($ctesimuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 12" Then
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
			If GUICtrlRead($ctesimuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($ctesimolad4) = 1 Then
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
			If GUICtrlRead($ctesimuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 12" Then
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
			If GUICtrlRead($ctesimuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd4) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>ctesid4

Func ctesid5()
	If $mod = 1 Then
		If GUICtrlRead($ctesimolad5) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($ctesimuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 12" Then
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
			If GUICtrlRead($ctesimuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($ctesimolad5) = 1 Then
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
			If GUICtrlRead($ctesimuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 12" Then
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
			If GUICtrlRead($ctesimuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd5) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>ctesid5

Func ctesid6()
	If $mod = 1 Then
		If GUICtrlRead($ctesimolad6) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($ctesimuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 12" Then
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
			If GUICtrlRead($ctesimuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($ctesimolad6) = 1 Then
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
			If GUICtrlRead($ctesimuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 12" Then
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
			If GUICtrlRead($ctesimuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($ctesimuzikd6) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>ctesid6

Func ctesid7()
	If $mod = 1 Then
		If GUICtrlRead($ctesimolad7) = 1 Then
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
		If GUICtrlRead($ctesimolad7) = 1 Then
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
EndFunc   ;==>ctesid7

Func ctesid8()
	If $mod = 1 Then
		If GUICtrlRead($ctesimolad8) = 1 Then
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
		If GUICtrlRead($ctesimolad8) = 1 Then
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
EndFunc   ;==>ctesid8

Func ctesid9()
	If $mod = 1 Then
		If GUICtrlRead($ctesimolad9) = 1 Then
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
		If GUICtrlRead($ctesimolad9) = 1 Then
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
EndFunc   ;==>ctesid9

Func ctesid10()
	If $mod = 1 Then
		If GUICtrlRead($ctesimolad10) = 1 Then
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
		If GUICtrlRead($ctesimolad10) = 1 Then
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
EndFunc   ;==>ctesid10

Func ctesid11()
	If $mod = 1 Then
		If GUICtrlRead($ctesimolad11) = 1 Then
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
		If GUICtrlRead($ctesimolad11) = 1 Then
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
EndFunc   ;==>ctesid11

Func ctesid12()
	If $mod = 1 Then
		If GUICtrlRead($ctesimolad12) = 1 Then
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
		If GUICtrlRead($ctesimolad12) = 1 Then
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
EndFunc   ;==>ctesid12

Func ctesid13()
	If $mod = 1 Then
		If GUICtrlRead($ctesimolad13) = 1 Then
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
		If GUICtrlRead($ctesimolad13) = 1 Then
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
EndFunc   ;==>ctesid13

Func ctesid14()
	If $mod = 1 Then
		If GUICtrlRead($ctesimolad14) = 1 Then
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
		If GUICtrlRead($ctesimolad14) = 1 Then
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
EndFunc   ;==>ctesid14

Func ctesid15()
	If $mod = 1 Then
		If GUICtrlRead($ctesimolad15) = 1 Then
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
		If GUICtrlRead($ctesimolad15) = 1 Then
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
EndFunc   ;==>ctesid15

Func ctesid16()
	If $mod = 1 Then
		If GUICtrlRead($ctesimolad16) = 1 Then
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
		If GUICtrlRead($ctesimolad16) = 1 Then
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
EndFunc   ;==>ctesid16
