#NoTrayIcon
#include <StaticConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <GuiButton.au3>
#include <ComboConstants.au3>
#include <AutoItConstants.au3>
$settingloc = @ScriptDir & "\settings.ini"
$sali = GUICreate("Salı", 361, 609, -1, -1, -1, -1)
#include <Misc.au3>


$saat = GUICtrlCreateLabel("Saat : " & @HOUR & ":" & @MIN & ":" & @SEC & "  Tarih : " & @MDAY & "." & @MON & "." & @YEAR & "  Gün : " & $hgun, 55, 595)

;~ -------
GUICtrlCreateLabel("Aktiflik :", 23, 30, 50, 15, -1, -1)
GUICtrlCreateLabel("Giriş Zili :", 108, 16, 50, 15, -1, -1)
GUICtrlCreateLabel("Saat :", 90, 31, 34, 15, -1, -1)
GUICtrlCreateLabel("Dakika :", 155, 31, 50, 15, -1, -1)
GUICtrlCreateLabel("Müzik :", 241, 31, 36, 15, -1, -1)
GUICtrlCreateLabel("Mola :", 321, 31, 36, 15, -1, -1)
GUICtrlCreateLabel("Salı", 21, 555, 300, 32, $SS_CENTER, -1)
GUICtrlSetFont(-1, 25, 400, 0)
;~ -------
$salid1 = GUICtrlCreateCheckbox("1.Ders", 10, 50, 55, 20)
$salid2 = GUICtrlCreateCheckbox("2.ders", 10, 80, 55, 20)
$salid3 = GUICtrlCreateCheckbox("3.ders", 10, 110, 55, 20)
$salid4 = GUICtrlCreateCheckbox("4.ders", 10, 140, 55, 20)
$salid5 = GUICtrlCreateCheckbox("5.ders", 10, 170, 55, 20)
$salid6 = GUICtrlCreateCheckbox("6.ders", 10, 200, 55, 20)
$salid7 = GUICtrlCreateCheckbox("7.ders", 10, 230, 55, 20)
$salid8 = GUICtrlCreateCheckbox("8.ders", 10, 260, 55, 20)
$salid9 = GUICtrlCreateCheckbox("9.ders", 10, 290, 55, 20)
$salid10 = GUICtrlCreateCheckbox("10.ders", 10, 320, 55, 20)
$salid11 = GUICtrlCreateCheckbox("11.ders", 10, 350, 55, 20)
$salid12 = GUICtrlCreateCheckbox("12.ders", 10, 380, 55, 20)
$salid13 = GUICtrlCreateCheckbox("13.ders", 10, 410, 55, 20)
$salid14 = GUICtrlCreateCheckbox("14.ders", 10, 440, 55, 20)
$salid15 = GUICtrlCreateCheckbox("15.ders", 10, 470, 55, 20)
$salid16 = GUICtrlCreateCheckbox("16.ders", 10, 500, 55, 20)
;~ -------
$salisaatd1 = GUICtrlCreateCombo("", 75, 50, 60, 20)
$salisaatd2 = GUICtrlCreateCombo("", 75, 80, 60, 20, -1, -1)
$salisaatd3 = GUICtrlCreateCombo("", 75, 110, 60, 20, -1, -1)
$salisaatd4 = GUICtrlCreateCombo("", 75, 140, 60, 20, -1, -1)
$salisaatd5 = GUICtrlCreateCombo("", 75, 170, 60, 20, -1, -1)
$salisaatd6 = GUICtrlCreateCombo("", 75, 200, 60, 20, -1, -1)
$salisaatd7 = GUICtrlCreateCombo("", 75, 230, 60, 20, -1, -1)
$salisaatd8 = GUICtrlCreateCombo("", 75, 260, 60, 20, -1, -1)
$salisaatd9 = GUICtrlCreateCombo("", 75, 290, 60, 20, -1, -1)
$salisaatd10 = GUICtrlCreateCombo("", 75, 320, 60, 20, -1, -1)
$salisaatd11 = GUICtrlCreateCombo("", 75, 350, 60, 20, -1, -1)
$salisaatd12 = GUICtrlCreateCombo("", 75, 380, 60, 20, -1, -1)
$salisaatd13 = GUICtrlCreateCombo("", 75, 410, 60, 20, -1, -1)
$salisaatd14 = GUICtrlCreateCombo("", 75, 440, 60, 20, -1, -1)
$salisaatd15 = GUICtrlCreateCombo("", 75, 470, 60, 20, -1, -1)
$salisaatd16 = GUICtrlCreateCombo("", 75, 500, 60, 20, -1, -1)
;~ -------
$topsaat = "!!!|00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24"
GUICtrlSetData($salisaatd1, $topsaat)
GUICtrlSetData($salisaatd2, $topsaat)
GUICtrlSetData($salisaatd3, $topsaat)
GUICtrlSetData($salisaatd4, $topsaat)
GUICtrlSetData($salisaatd5, $topsaat)
GUICtrlSetData($salisaatd6, $topsaat)
GUICtrlSetData($salisaatd7, $topsaat)
GUICtrlSetData($salisaatd8, $topsaat)
GUICtrlSetData($salisaatd9, $topsaat)
GUICtrlSetData($salisaatd10, $topsaat)
GUICtrlSetData($salisaatd11, $topsaat)
GUICtrlSetData($salisaatd12, $topsaat)
GUICtrlSetData($salisaatd13, $topsaat)
GUICtrlSetData($salisaatd14, $topsaat)
GUICtrlSetData($salisaatd15, $topsaat)
GUICtrlSetData($salisaatd16, $topsaat)
;~ -------
$salidakikad1 = GUICtrlCreateCombo("", 145, 50, 65, 20, -1, -1)
$salidakikad2 = GUICtrlCreateCombo("", 145, 80, 65, 20, -1, -1)
$salidakikad3 = GUICtrlCreateCombo("", 145, 110, 65, 20, -1, -1)
$salidakikad4 = GUICtrlCreateCombo("", 145, 140, 65, 20, -1, -1)
$salidakikad5 = GUICtrlCreateCombo("", 145, 170, 65, 20, -1, -1)
$salidakikad6 = GUICtrlCreateCombo("", 145, 200, 65, 20, -1, -1)
$salidakikad7 = GUICtrlCreateCombo("", 145, 230, 65, 20, -1, -1)
$salidakikad8 = GUICtrlCreateCombo("", 145, 260, 65, 20, -1, -1)
$salidakikad9 = GUICtrlCreateCombo("", 145, 290, 65, 20, -1, -1)
$salidakikad10 = GUICtrlCreateCombo("", 145, 320, 65, 20, -1, -1)
$salidakikad11 = GUICtrlCreateCombo("", 145, 350, 65, 20, -1, -1)
$salidakikad12 = GUICtrlCreateCombo("", 145, 380, 65, 20, -1, -1)
$salidakikad13 = GUICtrlCreateCombo("", 145, 410, 65, 20, -1, -1)
$salidakikad14 = GUICtrlCreateCombo("", 145, 440, 65, 20, -1, -1)
$salidakikad15 = GUICtrlCreateCombo("", 145, 470, 65, 20, -1, -1)
$salidakikad16 = GUICtrlCreateCombo("", 145, 500, 65, 20, -1, -1)
;~ -------
$topdak = "!!!|00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59"
GUICtrlSetData($salidakikad1, $topdak)
GUICtrlSetData($salidakikad2, $topdak)
GUICtrlSetData($salidakikad3, $topdak)
GUICtrlSetData($salidakikad4, $topdak)
GUICtrlSetData($salidakikad5, $topdak)
GUICtrlSetData($salidakikad6, $topdak)
GUICtrlSetData($salidakikad7, $topdak)
GUICtrlSetData($salidakikad8, $topdak)
GUICtrlSetData($salidakikad9, $topdak)
GUICtrlSetData($salidakikad10, $topdak)
GUICtrlSetData($salidakikad11, $topdak)
GUICtrlSetData($salidakikad12, $topdak)
GUICtrlSetData($salidakikad13, $topdak)
GUICtrlSetData($salidakikad14, $topdak)
GUICtrlSetData($salidakikad15, $topdak)
GUICtrlSetData($salidakikad16, $topdak)

;~ -------
$salimuzikd1 = GUICtrlCreateCombo("", 220, 50, 90, 20, -1, -1)
$salimuzikd2 = GUICtrlCreateCombo("", 220, 80, 90, 20, -1, -1)
$salimuzikd3 = GUICtrlCreateCombo("", 220, 110, 90, 20, -1, -1)
$salimuzikd4 = GUICtrlCreateCombo("", 220, 140, 90, 20, -1, -1)
$salimuzikd5 = GUICtrlCreateCombo("", 220, 170, 90, 20, -1, -1)
$salimuzikd6 = GUICtrlCreateCombo("", 220, 200, 90, 20, -1, -1)
$salimuzikd7 = GUICtrlCreateCombo("", 220, 230, 90, 20, -1, -1)
$salimuzikd8 = GUICtrlCreateCombo("", 220, 260, 90, 20, -1, -1)
$salimuzikd9 = GUICtrlCreateCombo("", 220, 290, 90, 20, -1, -1)
$salimuzikd10 = GUICtrlCreateCombo("", 220, 320, 90, 20, -1, -1)
$salimuzikd11 = GUICtrlCreateCombo("", 220, 350, 90, 20, -1, -1)
$salimuzikd12 = GUICtrlCreateCombo("", 220, 380, 90, 20, -1, -1)
$salimuzikd13 = GUICtrlCreateCombo("", 220, 410, 90, 20, -1, -1)
$salimuzikd14 = GUICtrlCreateCombo("", 220, 440, 90, 20, -1, -1)
$salimuzikd15 = GUICtrlCreateCombo("", 220, 470, 90, 20, -1, -1)
$salimuzikd16 = GUICtrlCreateCombo("", 220, 500, 90, 20, -1, -1)
;~ -------

GUICtrlSetData($salimuzikd1, $topmuz)
GUICtrlSetData($salimuzikd2, $topmuz)
GUICtrlSetData($salimuzikd3, $topmuz)
GUICtrlSetData($salimuzikd4, $topmuz)
GUICtrlSetData($salimuzikd5, $topmuz)
GUICtrlSetData($salimuzikd6, $topmuz)
GUICtrlSetData($salimuzikd7, $topmuz)
GUICtrlSetData($salimuzikd8, $topmuz)
GUICtrlSetData($salimuzikd9, $topmuz)
GUICtrlSetData($salimuzikd10, $topmuz)
GUICtrlSetData($salimuzikd11, $topmuz)
GUICtrlSetData($salimuzikd12, $topmuz)
GUICtrlSetData($salimuzikd13, $topmuz)
GUICtrlSetData($salimuzikd14, $topmuz)
GUICtrlSetData($salimuzikd15, $topmuz)
GUICtrlSetData($salimuzikd16, $topmuz)
;~ -------
$salimolad1 = GUICtrlCreateRadio("", 324, 50, 20, 20, -1, -1)
$salimolad2 = GUICtrlCreateRadio("", 324, 80, 20, 20, -1, -1)
$salimolad3 = GUICtrlCreateRadio("", 324, 110, 20, 20, -1, -1)
$salimolad4 = GUICtrlCreateRadio("", 324, 140, 20, 20, -1, -1)
$salimolad5 = GUICtrlCreateRadio("", 324, 170, 20, 20, -1, -1)
$salimolad6 = GUICtrlCreateRadio("", 324, 200, 20, 20, -1, -1)
$salimolad7 = GUICtrlCreateRadio("", 324, 230, 20, 20, -1, -1)
$salimolad8 = GUICtrlCreateRadio("", 324, 260, 20, 20, -1, -1)
$salimolad9 = GUICtrlCreateRadio("", 324, 290, 20, 20, -1, -1)
$salimolad10 = GUICtrlCreateRadio("", 324, 320, 20, 20, -1, -1)
$salimolad11 = GUICtrlCreateRadio("", 324, 350, 20, 20, -1, -1)
$salimolad12 = GUICtrlCreateRadio("", 324, 380, 20, 20, -1, -1)
$salimolad13 = GUICtrlCreateRadio("", 324, 410, 20, 20, -1, -1)
$salimolad14 = GUICtrlCreateRadio("", 324, 440, 20, 20, -1, -1)
$salimolad15 = GUICtrlCreateRadio("", 324, 470, 20, 20, -1, -1)
$salimolad16 = GUICtrlCreateRadio("", 324, 500, 20, 20, -1, -1)
$salimolayok = GUICtrlCreateRadio("", 324, 533, 20, 20, -1, -1)
;~ -------
$salikopyalanacak = GUICtrlCreateCombo("", 23, 534, 158, 21, -1, -1)
GUICtrlSetData(-1, "P.Tesi|Salı|Çarşamba|Perşembe|Cuma|C.Tesi|Pazar")
$salikopyala = GUICtrlCreateButton("Kopyala", 222, 533, 80, 22, -1, -1)

GUICtrlSetData($salisaatd1, IniRead($settingloc, "sali", "saatd1", "00"))
GUICtrlSetData($salisaatd2, IniRead($settingloc, "sali", "saatd2", "00"))
GUICtrlSetData($salisaatd3, IniRead($settingloc, "sali", "saatd3", "00"))
GUICtrlSetData($salisaatd4, IniRead($settingloc, "sali", "saatd4", "00"))
GUICtrlSetData($salisaatd5, IniRead($settingloc, "sali", "saatd5", "00"))
GUICtrlSetData($salisaatd6, IniRead($settingloc, "sali", "saatd6", "00"))
GUICtrlSetData($salisaatd7, IniRead($settingloc, "sali", "saatd7", "00"))
GUICtrlSetData($salisaatd8, IniRead($settingloc, "sali", "saatd8", "00"))
GUICtrlSetData($salisaatd9, IniRead($settingloc, "sali", "saatd9", "00"))
GUICtrlSetData($salisaatd10, IniRead($settingloc, "sali", "saatd10", "00"))
GUICtrlSetData($salisaatd11, IniRead($settingloc, "sali", "saatd11", "00"))
GUICtrlSetData($salisaatd12, IniRead($settingloc, "sali", "saatd12", "00"))
GUICtrlSetData($salisaatd13, IniRead($settingloc, "sali", "saatd13", "00"))
GUICtrlSetData($salisaatd14, IniRead($settingloc, "sali", "saatd14", "00"))
GUICtrlSetData($salisaatd15, IniRead($settingloc, "sali", "saatd15", "00"))
GUICtrlSetData($salisaatd16, IniRead($settingloc, "sali", "saatd16", "00"))

GUICtrlSetData($salidakikad1, IniRead($settingloc, "sali", "dakikad1", "00"))
GUICtrlSetData($salidakikad2, IniRead($settingloc, "sali", "dakikad2", "00"))
GUICtrlSetData($salidakikad3, IniRead($settingloc, "sali", "dakikad3", "00"))
GUICtrlSetData($salidakikad4, IniRead($settingloc, "sali", "dakikad4", "00"))
GUICtrlSetData($salidakikad5, IniRead($settingloc, "sali", "dakikad5", "00"))
GUICtrlSetData($salidakikad6, IniRead($settingloc, "sali", "dakikad6", "00"))
GUICtrlSetData($salidakikad7, IniRead($settingloc, "sali", "dakikad7", "00"))
GUICtrlSetData($salidakikad8, IniRead($settingloc, "sali", "dakikad8", "00"))
GUICtrlSetData($salidakikad9, IniRead($settingloc, "sali", "dakikad9", "00"))
GUICtrlSetData($salidakikad10, IniRead($settingloc, "sali", "dakikad10", "00"))
GUICtrlSetData($salidakikad11, IniRead($settingloc, "sali", "dakikad11", "00"))
GUICtrlSetData($salidakikad12, IniRead($settingloc, "sali", "dakikad12", "00"))
GUICtrlSetData($salidakikad13, IniRead($settingloc, "sali", "dakikad13", "00"))
GUICtrlSetData($salidakikad14, IniRead($settingloc, "sali", "dakikad14", "00"))
GUICtrlSetData($salidakikad15, IniRead($settingloc, "sali", "dakikad15", "00"))
GUICtrlSetData($salidakikad16, IniRead($settingloc, "sali", "dakikad16", "00"))

GUICtrlSetData($salimuzikd1, IniRead($settingloc, "sali", "muzikd1", "00"))
GUICtrlSetData($salimuzikd2, IniRead($settingloc, "sali", "muzikd2", "00"))
GUICtrlSetData($salimuzikd3, IniRead($settingloc, "sali", "muzikd3", "00"))
GUICtrlSetData($salimuzikd4, IniRead($settingloc, "sali", "muzikd4", "00"))
GUICtrlSetData($salimuzikd5, IniRead($settingloc, "sali", "muzikd5", "00"))
GUICtrlSetData($salimuzikd6, IniRead($settingloc, "sali", "muzikd6", "00"))
GUICtrlSetData($salimuzikd7, IniRead($settingloc, "sali", "muzikd7", "00"))
GUICtrlSetData($salimuzikd8, IniRead($settingloc, "sali", "muzikd8", "00"))
GUICtrlSetData($salimuzikd9, IniRead($settingloc, "sali", "muzikd9", "00"))
GUICtrlSetData($salimuzikd10, IniRead($settingloc, "sali", "muzikd10", "00"))
GUICtrlSetData($salimuzikd11, IniRead($settingloc, "sali", "muzikd11", "00"))
GUICtrlSetData($salimuzikd12, IniRead($settingloc, "sali", "muzikd12", "00"))
GUICtrlSetData($salimuzikd13, IniRead($settingloc, "sali", "muzikd13", "00"))
GUICtrlSetData($salimuzikd14, IniRead($settingloc, "sali", "muzikd14", "00"))
GUICtrlSetData($salimuzikd15, IniRead($settingloc, "sali", "muzikd15", "00"))
GUICtrlSetData($salimuzikd16, IniRead($settingloc, "sali", "muzikd16", "00"))

If IniRead($settingloc, "sali", "mola", "1") = 1 Then
	GUICtrlSetState($salimolad1, $Gui_Checked)
ElseIf IniRead($settingloc, "sali", "mola", "2") = 2 Then
	GUICtrlSetState($salimolad2, $Gui_Checked)
ElseIf IniRead($settingloc, "sali", "mola", "3") = 3 Then
	GUICtrlSetState($salimolad3, $Gui_Checked)
ElseIf IniRead($settingloc, "sali", "mola", "4") = 4 Then
	GUICtrlSetState($salimolad4, $Gui_Checked)
ElseIf IniRead($settingloc, "sali", "mola", "5") = 5 Then
	GUICtrlSetState($salimolad5, $Gui_Checked)
ElseIf IniRead($settingloc, "sali", "mola", "6") = 6 Then
	GUICtrlSetState($salimolad6, $Gui_Checked)
ElseIf IniRead($settingloc, "sali", "mola", "7") = 7 Then
	GUICtrlSetState($salimolad7, $Gui_Checked)
ElseIf IniRead($settingloc, "sali", "mola", "8") = 8 Then
	GUICtrlSetState($salimolad8, $Gui_Checked)
ElseIf IniRead($settingloc, "sali", "mola", "9") = 9 Then
	GUICtrlSetState($salimolad9, $Gui_Checked)
ElseIf IniRead($settingloc, "sali", "mola", "10") = 10 Then
	GUICtrlSetState($salimolad10, $Gui_Checked)
ElseIf IniRead($settingloc, "sali", "mola", "11") = 11 Then
	GUICtrlSetState($salimolad11, $Gui_Checked)
ElseIf IniRead($settingloc, "sali", "mola", "12") = 12 Then
	GUICtrlSetState($salimolad12, $Gui_Checked)
ElseIf IniRead($settingloc, "sali", "mola", "13") = 13 Then
	GUICtrlSetState($salimolad13, $Gui_Checked)
ElseIf IniRead($settingloc, "sali", "mola", "14") = 14 Then
	GUICtrlSetState($salimolad14, $Gui_Checked)
ElseIf IniRead($settingloc, "sali", "mola", "15") = 15 Then
	GUICtrlSetState($salimolad15, $Gui_Checked)
ElseIf IniRead($settingloc, "sali", "mola", "16") = 16 Then
	GUICtrlSetState($salimolad16, $Gui_Checked)
Else
	GUICtrlSetState($salimolayok, $Gui_Checked)
EndIf

Func salid1()
	If $mod = 1 Then
		If GUICtrlRead($salimolad1) = 1 Then
			$temp = 0

			SoundPlay($ogrencizil, 1)

			$temp = $ogretmensure * 60000
			Sleep($temp)

			SoundPlay($ogretmenzil, 1)

			$temp = $ders * 60000
			Sleep($temp)

			SoundPlay($cikiszil, 1)

			If GUICtrlRead($salimuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 12" Then
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

			If GUICtrlRead($salimuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 17:55 ogrenci giris 18:00 ogretmen giris 18:40 cikis 18:40~41 seçilen müzik
		EndIf
	Else
		If GUICtrlGetState($salimolad1) = 80 Then
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

			If GUICtrlRead($salimuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 12" Then
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

			If GUICtrlRead($salimuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd1) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 17:55 ogrenci giris 18:00 ogretmen giris 18:40 ara 19:20 cikis 19:20~21 seçilen müzik
		EndIf
	EndIf
EndFunc   ;==>salid1

Func salid2()
	If $mod = 1 Then
		If GUICtrlRead($salimolad2) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)

			If GUICtrlRead($salimuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 12" Then
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

			If GUICtrlRead($salimuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($salimolad2) = 1 Then
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
			If GUICtrlRead($salimuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 12" Then
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
			If GUICtrlRead($salimuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd2) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>salid2

Func salid3()
	If $mod = 1 Then
		If GUICtrlRead($salimolad3) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($salimuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 12" Then
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
			If GUICtrlRead($salimuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($salimolad3) = 1 Then
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
			If GUICtrlRead($salimuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 12" Then
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
			If GUICtrlRead($salimuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd3) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>salid3

Func salid4()
	If $mod = 1 Then
		If GUICtrlRead($salimolad4) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($salimuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 12" Then
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
			If GUICtrlRead($salimuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($salimolad4) = 1 Then
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
			If GUICtrlRead($salimuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 12" Then
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
			If GUICtrlRead($salimuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd4) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>salid4

Func salid5()
	If $mod = 1 Then
		If GUICtrlRead($salimolad5) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($salimuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 12" Then
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
			If GUICtrlRead($salimuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($salimolad5) = 1 Then
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
			If GUICtrlRead($salimuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 12" Then
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
			If GUICtrlRead($salimuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd5) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>salid5

Func salid6()
	If $mod = 1 Then
		If GUICtrlRead($salimolad6) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($salimuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 12" Then
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
			If GUICtrlRead($salimuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($salimolad6) = 1 Then
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
			If GUICtrlRead($salimuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 12" Then
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
			If GUICtrlRead($salimuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($salimuzikd6) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>salid6

Func salid7()
	If $mod = 1 Then
		If GUICtrlRead($salimolad7) = 1 Then
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
		If GUICtrlRead($salimolad7) = 1 Then
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
EndFunc   ;==>salid7

Func salid8()
	If $mod = 1 Then
		If GUICtrlRead($salimolad8) = 1 Then
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
		If GUICtrlRead($salimolad8) = 1 Then
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
EndFunc   ;==>salid8

Func salid9()
	If $mod = 1 Then
		If GUICtrlRead($salimolad9) = 1 Then
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
		If GUICtrlRead($salimolad9) = 1 Then
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
EndFunc   ;==>salid9

Func salid10()
	If $mod = 1 Then
		If GUICtrlRead($salimolad10) = 1 Then
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
		If GUICtrlRead($salimolad10) = 1 Then
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
EndFunc   ;==>salid10

Func salid11()
	If $mod = 1 Then
		If GUICtrlRead($salimolad11) = 1 Then
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
		If GUICtrlRead($salimolad11) = 1 Then
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
EndFunc   ;==>salid11

Func salid12()
	If $mod = 1 Then
		If GUICtrlRead($salimolad12) = 1 Then
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
		If GUICtrlRead($salimolad12) = 1 Then
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
EndFunc   ;==>salid12

Func salid13()
	If $mod = 1 Then
		If GUICtrlRead($salimolad13) = 1 Then
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
		If GUICtrlRead($salimolad13) = 1 Then
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
EndFunc   ;==>salid13

Func salid14()
	If $mod = 1 Then
		If GUICtrlRead($salimolad14) = 1 Then
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
		If GUICtrlRead($salimolad14) = 1 Then
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
EndFunc   ;==>salid14

Func salid15()
	If $mod = 1 Then
		If GUICtrlRead($salimolad15) = 1 Then
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
		If GUICtrlRead($salimolad15) = 1 Then
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
EndFunc   ;==>salid15

Func salid16()
	If $mod = 1 Then
		If GUICtrlRead($salimolad16) = 1 Then
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
		If GUICtrlRead($salimolad16) = 1 Then
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
EndFunc   ;==>salid16
