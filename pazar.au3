#NoTrayIcon
#include <StaticConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <GuiButton.au3>
#include <ComboConstants.au3>
#include <AutoItConstants.au3>
$settingloc = @ScriptDir & "\settings.ini"
$pazar = GUICreate("Pazar", 361, 609, -1, -1, -1, -1)
#include <Misc.au3>


$saat = GUICtrlCreateLabel("Saat : " & @HOUR & ":" & @MIN & ":" & @SEC & "  Tarih : " & @MDAY & "." & @MON & "." & @YEAR & "  Gün : " & $hgun, 55, 595)

;~ -------
GUICtrlCreateLabel("Aktiflik :", 23, 30, 50, 15, -1, -1)
GUICtrlCreateLabel("Giriş Zili :", 108, 16, 50, 15, -1, -1)
GUICtrlCreateLabel("Saat :", 90, 31, 34, 15, -1, -1)
GUICtrlCreateLabel("Dakika :", 155, 31, 50, 15, -1, -1)
GUICtrlCreateLabel("Müzik :", 241, 31, 36, 15, -1, -1)
GUICtrlCreateLabel("Mola :", 321, 31, 36, 15, -1, -1)
GUICtrlCreateLabel("Pazar", 21, 555, 300, 32, $SS_CENTER, -1)
GUICtrlSetFont(-1, 25, 400, 0)
;~ -------
$pazard1 = GUICtrlCreateCheckbox("1.Ders", 10, 50, 55, 20)
$pazard2 = GUICtrlCreateCheckbox("2.ders", 10, 80, 55, 20)
$pazard3 = GUICtrlCreateCheckbox("3.ders", 10, 110, 55, 20)
$pazard4 = GUICtrlCreateCheckbox("4.ders", 10, 140, 55, 20)
$pazard5 = GUICtrlCreateCheckbox("5.ders", 10, 170, 55, 20)
$pazard6 = GUICtrlCreateCheckbox("6.ders", 10, 200, 55, 20)
$pazard7 = GUICtrlCreateCheckbox("7.ders", 10, 230, 55, 20)
$pazard8 = GUICtrlCreateCheckbox("8.ders", 10, 260, 55, 20)
$pazard9 = GUICtrlCreateCheckbox("9.ders", 10, 290, 55, 20)
$pazard10 = GUICtrlCreateCheckbox("10.ders", 10, 320, 55, 20)
$pazard11 = GUICtrlCreateCheckbox("11.ders", 10, 350, 55, 20)
$pazard12 = GUICtrlCreateCheckbox("12.ders", 10, 380, 55, 20)
$pazard13 = GUICtrlCreateCheckbox("13.ders", 10, 410, 55, 20)
$pazard14 = GUICtrlCreateCheckbox("14.ders", 10, 440, 55, 20)
$pazard15 = GUICtrlCreateCheckbox("15.ders", 10, 470, 55, 20)
$pazard16 = GUICtrlCreateCheckbox("16.ders", 10, 500, 55, 20)
;~ -------
$pazarsaatd1 = GUICtrlCreateCombo("", 75, 50, 60, 20)
$pazarsaatd2 = GUICtrlCreateCombo("", 75, 80, 60, 20, -1, -1)
$pazarsaatd3 = GUICtrlCreateCombo("", 75, 110, 60, 20, -1, -1)
$pazarsaatd4 = GUICtrlCreateCombo("", 75, 140, 60, 20, -1, -1)
$pazarsaatd5 = GUICtrlCreateCombo("", 75, 170, 60, 20, -1, -1)
$pazarsaatd6 = GUICtrlCreateCombo("", 75, 200, 60, 20, -1, -1)
$pazarsaatd7 = GUICtrlCreateCombo("", 75, 230, 60, 20, -1, -1)
$pazarsaatd8 = GUICtrlCreateCombo("", 75, 260, 60, 20, -1, -1)
$pazarsaatd9 = GUICtrlCreateCombo("", 75, 290, 60, 20, -1, -1)
$pazarsaatd10 = GUICtrlCreateCombo("", 75, 320, 60, 20, -1, -1)
$pazarsaatd11 = GUICtrlCreateCombo("", 75, 350, 60, 20, -1, -1)
$pazarsaatd12 = GUICtrlCreateCombo("", 75, 380, 60, 20, -1, -1)
$pazarsaatd13 = GUICtrlCreateCombo("", 75, 410, 60, 20, -1, -1)
$pazarsaatd14 = GUICtrlCreateCombo("", 75, 440, 60, 20, -1, -1)
$pazarsaatd15 = GUICtrlCreateCombo("", 75, 470, 60, 20, -1, -1)
$pazarsaatd16 = GUICtrlCreateCombo("", 75, 500, 60, 20, -1, -1)
;~ -------
$topsaat = "!!!|00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24"
GUICtrlSetData($pazarsaatd1, $topsaat)
GUICtrlSetData($pazarsaatd2, $topsaat)
GUICtrlSetData($pazarsaatd3, $topsaat)
GUICtrlSetData($pazarsaatd4, $topsaat)
GUICtrlSetData($pazarsaatd5, $topsaat)
GUICtrlSetData($pazarsaatd6, $topsaat)
GUICtrlSetData($pazarsaatd7, $topsaat)
GUICtrlSetData($pazarsaatd8, $topsaat)
GUICtrlSetData($pazarsaatd9, $topsaat)
GUICtrlSetData($pazarsaatd10, $topsaat)
GUICtrlSetData($pazarsaatd11, $topsaat)
GUICtrlSetData($pazarsaatd12, $topsaat)
GUICtrlSetData($pazarsaatd13, $topsaat)
GUICtrlSetData($pazarsaatd14, $topsaat)
GUICtrlSetData($pazarsaatd15, $topsaat)
GUICtrlSetData($pazarsaatd16, $topsaat)
;~ -------
$pazardakikad1 = GUICtrlCreateCombo("", 145, 50, 65, 20, -1, -1)
$pazardakikad2 = GUICtrlCreateCombo("", 145, 80, 65, 20, -1, -1)
$pazardakikad3 = GUICtrlCreateCombo("", 145, 110, 65, 20, -1, -1)
$pazardakikad4 = GUICtrlCreateCombo("", 145, 140, 65, 20, -1, -1)
$pazardakikad5 = GUICtrlCreateCombo("", 145, 170, 65, 20, -1, -1)
$pazardakikad6 = GUICtrlCreateCombo("", 145, 200, 65, 20, -1, -1)
$pazardakikad7 = GUICtrlCreateCombo("", 145, 230, 65, 20, -1, -1)
$pazardakikad8 = GUICtrlCreateCombo("", 145, 260, 65, 20, -1, -1)
$pazardakikad9 = GUICtrlCreateCombo("", 145, 290, 65, 20, -1, -1)
$pazardakikad10 = GUICtrlCreateCombo("", 145, 320, 65, 20, -1, -1)
$pazardakikad11 = GUICtrlCreateCombo("", 145, 350, 65, 20, -1, -1)
$pazardakikad12 = GUICtrlCreateCombo("", 145, 380, 65, 20, -1, -1)
$pazardakikad13 = GUICtrlCreateCombo("", 145, 410, 65, 20, -1, -1)
$pazardakikad14 = GUICtrlCreateCombo("", 145, 440, 65, 20, -1, -1)
$pazardakikad15 = GUICtrlCreateCombo("", 145, 470, 65, 20, -1, -1)
$pazardakikad16 = GUICtrlCreateCombo("", 145, 500, 65, 20, -1, -1)
;~ -------
$topdak = "!!!|00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59"
GUICtrlSetData($pazardakikad1, $topdak)
GUICtrlSetData($pazardakikad2, $topdak)
GUICtrlSetData($pazardakikad3, $topdak)
GUICtrlSetData($pazardakikad4, $topdak)
GUICtrlSetData($pazardakikad5, $topdak)
GUICtrlSetData($pazardakikad6, $topdak)
GUICtrlSetData($pazardakikad7, $topdak)
GUICtrlSetData($pazardakikad8, $topdak)
GUICtrlSetData($pazardakikad9, $topdak)
GUICtrlSetData($pazardakikad10, $topdak)
GUICtrlSetData($pazardakikad11, $topdak)
GUICtrlSetData($pazardakikad12, $topdak)
GUICtrlSetData($pazardakikad13, $topdak)
GUICtrlSetData($pazardakikad14, $topdak)
GUICtrlSetData($pazardakikad15, $topdak)
GUICtrlSetData($pazardakikad16, $topdak)

;~ -------
$pazarmuzikd1 = GUICtrlCreateCombo("", 220, 50, 90, 20, -1, -1)
$pazarmuzikd2 = GUICtrlCreateCombo("", 220, 80, 90, 20, -1, -1)
$pazarmuzikd3 = GUICtrlCreateCombo("", 220, 110, 90, 20, -1, -1)
$pazarmuzikd4 = GUICtrlCreateCombo("", 220, 140, 90, 20, -1, -1)
$pazarmuzikd5 = GUICtrlCreateCombo("", 220, 170, 90, 20, -1, -1)
$pazarmuzikd6 = GUICtrlCreateCombo("", 220, 200, 90, 20, -1, -1)
$pazarmuzikd7 = GUICtrlCreateCombo("", 220, 230, 90, 20, -1, -1)
$pazarmuzikd8 = GUICtrlCreateCombo("", 220, 260, 90, 20, -1, -1)
$pazarmuzikd9 = GUICtrlCreateCombo("", 220, 290, 90, 20, -1, -1)
$pazarmuzikd10 = GUICtrlCreateCombo("", 220, 320, 90, 20, -1, -1)
$pazarmuzikd11 = GUICtrlCreateCombo("", 220, 350, 90, 20, -1, -1)
$pazarmuzikd12 = GUICtrlCreateCombo("", 220, 380, 90, 20, -1, -1)
$pazarmuzikd13 = GUICtrlCreateCombo("", 220, 410, 90, 20, -1, -1)
$pazarmuzikd14 = GUICtrlCreateCombo("", 220, 440, 90, 20, -1, -1)
$pazarmuzikd15 = GUICtrlCreateCombo("", 220, 470, 90, 20, -1, -1)
$pazarmuzikd16 = GUICtrlCreateCombo("", 220, 500, 90, 20, -1, -1)
;~ -------

GUICtrlSetData($pazarmuzikd1, $topmuz)
GUICtrlSetData($pazarmuzikd2, $topmuz)
GUICtrlSetData($pazarmuzikd3, $topmuz)
GUICtrlSetData($pazarmuzikd4, $topmuz)
GUICtrlSetData($pazarmuzikd5, $topmuz)
GUICtrlSetData($pazarmuzikd6, $topmuz)
GUICtrlSetData($pazarmuzikd7, $topmuz)
GUICtrlSetData($pazarmuzikd8, $topmuz)
GUICtrlSetData($pazarmuzikd9, $topmuz)
GUICtrlSetData($pazarmuzikd10, $topmuz)
GUICtrlSetData($pazarmuzikd11, $topmuz)
GUICtrlSetData($pazarmuzikd12, $topmuz)
GUICtrlSetData($pazarmuzikd13, $topmuz)
GUICtrlSetData($pazarmuzikd14, $topmuz)
GUICtrlSetData($pazarmuzikd15, $topmuz)
GUICtrlSetData($pazarmuzikd16, $topmuz)
;~ -------
$pazarmolad1 = GUICtrlCreateRadio("", 324, 50, 20, 20, -1, -1)
$pazarmolad2 = GUICtrlCreateRadio("", 324, 80, 20, 20, -1, -1)
$pazarmolad3 = GUICtrlCreateRadio("", 324, 110, 20, 20, -1, -1)
$pazarmolad4 = GUICtrlCreateRadio("", 324, 140, 20, 20, -1, -1)
$pazarmolad5 = GUICtrlCreateRadio("", 324, 170, 20, 20, -1, -1)
$pazarmolad6 = GUICtrlCreateRadio("", 324, 200, 20, 20, -1, -1)
$pazarmolad7 = GUICtrlCreateRadio("", 324, 230, 20, 20, -1, -1)
$pazarmolad8 = GUICtrlCreateRadio("", 324, 260, 20, 20, -1, -1)
$pazarmolad9 = GUICtrlCreateRadio("", 324, 290, 20, 20, -1, -1)
$pazarmolad10 = GUICtrlCreateRadio("", 324, 320, 20, 20, -1, -1)
$pazarmolad11 = GUICtrlCreateRadio("", 324, 350, 20, 20, -1, -1)
$pazarmolad12 = GUICtrlCreateRadio("", 324, 380, 20, 20, -1, -1)
$pazarmolad13 = GUICtrlCreateRadio("", 324, 410, 20, 20, -1, -1)
$pazarmolad14 = GUICtrlCreateRadio("", 324, 440, 20, 20, -1, -1)
$pazarmolad15 = GUICtrlCreateRadio("", 324, 470, 20, 20, -1, -1)
$pazarmolad16 = GUICtrlCreateRadio("", 324, 500, 20, 20, -1, -1)
$pazarmolayok = GUICtrlCreateRadio("", 324, 533, 20, 20, -1, -1)
;~ -------
$pazarkopyalanacak = GUICtrlCreateCombo("", 23, 534, 158, 21, -1, -1)
GUICtrlSetData(-1, "P.Tesi|Salı|Çarşamba|Perşembe|pazar|C.Tesi|Pazar")
$pazarkopyala = GUICtrlCreateButton("Kopyala", 222, 533, 80, 22, -1, -1)

GUICtrlSetData($pazarsaatd1, IniRead($settingloc, "pazar", "saatd1", "00"))
GUICtrlSetData($pazarsaatd2, IniRead($settingloc, "pazar", "saatd2", "00"))
GUICtrlSetData($pazarsaatd3, IniRead($settingloc, "pazar", "saatd3", "00"))
GUICtrlSetData($pazarsaatd4, IniRead($settingloc, "pazar", "saatd4", "00"))
GUICtrlSetData($pazarsaatd5, IniRead($settingloc, "pazar", "saatd5", "00"))
GUICtrlSetData($pazarsaatd6, IniRead($settingloc, "pazar", "saatd6", "00"))
GUICtrlSetData($pazarsaatd7, IniRead($settingloc, "pazar", "saatd7", "00"))
GUICtrlSetData($pazarsaatd8, IniRead($settingloc, "pazar", "saatd8", "00"))
GUICtrlSetData($pazarsaatd9, IniRead($settingloc, "pazar", "saatd9", "00"))
GUICtrlSetData($pazarsaatd10, IniRead($settingloc, "pazar", "saatd10", "00"))
GUICtrlSetData($pazarsaatd11, IniRead($settingloc, "pazar", "saatd11", "00"))
GUICtrlSetData($pazarsaatd12, IniRead($settingloc, "pazar", "saatd12", "00"))
GUICtrlSetData($pazarsaatd13, IniRead($settingloc, "pazar", "saatd13", "00"))
GUICtrlSetData($pazarsaatd14, IniRead($settingloc, "pazar", "saatd14", "00"))
GUICtrlSetData($pazarsaatd15, IniRead($settingloc, "pazar", "saatd15", "00"))
GUICtrlSetData($pazarsaatd16, IniRead($settingloc, "pazar", "saatd16", "00"))

GUICtrlSetData($pazardakikad1, IniRead($settingloc, "pazar", "dakikad1", "00"))
GUICtrlSetData($pazardakikad2, IniRead($settingloc, "pazar", "dakikad2", "00"))
GUICtrlSetData($pazardakikad3, IniRead($settingloc, "pazar", "dakikad3", "00"))
GUICtrlSetData($pazardakikad4, IniRead($settingloc, "pazar", "dakikad4", "00"))
GUICtrlSetData($pazardakikad5, IniRead($settingloc, "pazar", "dakikad5", "00"))
GUICtrlSetData($pazardakikad6, IniRead($settingloc, "pazar", "dakikad6", "00"))
GUICtrlSetData($pazardakikad7, IniRead($settingloc, "pazar", "dakikad7", "00"))
GUICtrlSetData($pazardakikad8, IniRead($settingloc, "pazar", "dakikad8", "00"))
GUICtrlSetData($pazardakikad9, IniRead($settingloc, "pazar", "dakikad9", "00"))
GUICtrlSetData($pazardakikad10, IniRead($settingloc, "pazar", "dakikad10", "00"))
GUICtrlSetData($pazardakikad11, IniRead($settingloc, "pazar", "dakikad11", "00"))
GUICtrlSetData($pazardakikad12, IniRead($settingloc, "pazar", "dakikad12", "00"))
GUICtrlSetData($pazardakikad13, IniRead($settingloc, "pazar", "dakikad13", "00"))
GUICtrlSetData($pazardakikad14, IniRead($settingloc, "pazar", "dakikad14", "00"))
GUICtrlSetData($pazardakikad15, IniRead($settingloc, "pazar", "dakikad15", "00"))
GUICtrlSetData($pazardakikad16, IniRead($settingloc, "pazar", "dakikad16", "00"))

GUICtrlSetData($pazarmuzikd1, IniRead($settingloc, "pazar", "muzikd1", "00"))
GUICtrlSetData($pazarmuzikd2, IniRead($settingloc, "pazar", "muzikd2", "00"))
GUICtrlSetData($pazarmuzikd3, IniRead($settingloc, "pazar", "muzikd3", "00"))
GUICtrlSetData($pazarmuzikd4, IniRead($settingloc, "pazar", "muzikd4", "00"))
GUICtrlSetData($pazarmuzikd5, IniRead($settingloc, "pazar", "muzikd5", "00"))
GUICtrlSetData($pazarmuzikd6, IniRead($settingloc, "pazar", "muzikd6", "00"))
GUICtrlSetData($pazarmuzikd7, IniRead($settingloc, "pazar", "muzikd7", "00"))
GUICtrlSetData($pazarmuzikd8, IniRead($settingloc, "pazar", "muzikd8", "00"))
GUICtrlSetData($pazarmuzikd9, IniRead($settingloc, "pazar", "muzikd9", "00"))
GUICtrlSetData($pazarmuzikd10, IniRead($settingloc, "pazar", "muzikd10", "00"))
GUICtrlSetData($pazarmuzikd11, IniRead($settingloc, "pazar", "muzikd11", "00"))
GUICtrlSetData($pazarmuzikd12, IniRead($settingloc, "pazar", "muzikd12", "00"))
GUICtrlSetData($pazarmuzikd13, IniRead($settingloc, "pazar", "muzikd13", "00"))
GUICtrlSetData($pazarmuzikd14, IniRead($settingloc, "pazar", "muzikd14", "00"))
GUICtrlSetData($pazarmuzikd15, IniRead($settingloc, "pazar", "muzikd15", "00"))
GUICtrlSetData($pazarmuzikd16, IniRead($settingloc, "pazar", "muzikd16", "00"))

If IniRead($settingloc, "pazar", "mola", "1") = 1 Then
	GUICtrlSetState($pazarmolad1, $Gui_Checked)
ElseIf IniRead($settingloc, "pazar", "mola", "2") = 2 Then
	GUICtrlSetState($pazarmolad2, $Gui_Checked)
ElseIf IniRead($settingloc, "pazar", "mola", "3") = 3 Then
	GUICtrlSetState($pazarmolad3, $Gui_Checked)
ElseIf IniRead($settingloc, "pazar", "mola", "4") = 4 Then
	GUICtrlSetState($pazarmolad4, $Gui_Checked)
ElseIf IniRead($settingloc, "pazar", "mola", "5") = 5 Then
	GUICtrlSetState($pazarmolad5, $Gui_Checked)
ElseIf IniRead($settingloc, "pazar", "mola", "6") = 6 Then
	GUICtrlSetState($pazarmolad6, $Gui_Checked)
ElseIf IniRead($settingloc, "pazar", "mola", "7") = 7 Then
	GUICtrlSetState($pazarmolad7, $Gui_Checked)
ElseIf IniRead($settingloc, "pazar", "mola", "8") = 8 Then
	GUICtrlSetState($pazarmolad8, $Gui_Checked)
ElseIf IniRead($settingloc, "pazar", "mola", "9") = 9 Then
	GUICtrlSetState($pazarmolad9, $Gui_Checked)
ElseIf IniRead($settingloc, "pazar", "mola", "10") = 10 Then
	GUICtrlSetState($pazarmolad10, $Gui_Checked)
ElseIf IniRead($settingloc, "pazar", "mola", "11") = 11 Then
	GUICtrlSetState($pazarmolad11, $Gui_Checked)
ElseIf IniRead($settingloc, "pazar", "mola", "12") = 12 Then
	GUICtrlSetState($pazarmolad12, $Gui_Checked)
ElseIf IniRead($settingloc, "pazar", "mola", "13") = 13 Then
	GUICtrlSetState($pazarmolad13, $Gui_Checked)
ElseIf IniRead($settingloc, "pazar", "mola", "14") = 14 Then
	GUICtrlSetState($pazarmolad14, $Gui_Checked)
ElseIf IniRead($settingloc, "pazar", "mola", "15") = 15 Then
	GUICtrlSetState($pazarmolad15, $Gui_Checked)
ElseIf IniRead($settingloc, "pazar", "mola", "16") = 16 Then
	GUICtrlSetState($pazarmolad16, $Gui_Checked)
Else
	GUICtrlSetState($pazarmolayok, $Gui_Checked)
EndIf

Func pazard1()
	If $mod = 1 Then
		If GUICtrlRead($pazarmolad1) = 1 Then
			$temp = 0

			SoundPlay($ogrencizil, 1)

			$temp = $ogretmensure * 60000
			Sleep($temp)

			SoundPlay($ogretmenzil, 1)

			$temp = $ders * 60000
			Sleep($temp)

			SoundPlay($cikiszil, 1)

			If GUICtrlRead($pazarmuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 12" Then
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

			If GUICtrlRead($pazarmuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 17:55 ogrenci giris 18:00 ogretmen giris 18:40 cikis 18:40~41 seçilen müzik
		EndIf
	Else
		If GUICtrlGetState($pazarmolad1) = 80 Then
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

			If GUICtrlRead($pazarmuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 12" Then
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

			If GUICtrlRead($pazarmuzikd1) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd1) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 17:55 ogrenci giris 18:00 ogretmen giris 18:40 ara 19:20 cikis 19:20~21 seçilen müzik
		EndIf
	EndIf
EndFunc   ;==>pazard1

Func pazard2()
	If $mod = 1 Then
		If GUICtrlRead($pazarmolad2) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)

			If GUICtrlRead($pazarmuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 12" Then
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

			If GUICtrlRead($pazarmuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($pazarmolad2) = 1 Then
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
			If GUICtrlRead($pazarmuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 12" Then
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
			If GUICtrlRead($pazarmuzikd2) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd2) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>pazard2

Func pazard3()
	If $mod = 1 Then
		If GUICtrlRead($pazarmolad3) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($pazarmuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 12" Then
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
			If GUICtrlRead($pazarmuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($pazarmolad3) = 1 Then
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
			If GUICtrlRead($pazarmuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 12" Then
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
			If GUICtrlRead($pazarmuzikd3) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd3) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>pazard3

Func pazard4()
	If $mod = 1 Then
		If GUICtrlRead($pazarmolad4) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($pazarmuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 12" Then
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
			If GUICtrlRead($pazarmuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($pazarmolad4) = 1 Then
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
			If GUICtrlRead($pazarmuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 12" Then
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
			If GUICtrlRead($pazarmuzikd4) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd4) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>pazard4

Func pazard5()
	If $mod = 1 Then
		If GUICtrlRead($pazarmolad5) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($pazarmuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 12" Then
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
			If GUICtrlRead($pazarmuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($pazarmolad5) = 1 Then
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
			If GUICtrlRead($pazarmuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 12" Then
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
			If GUICtrlRead($pazarmuzikd5) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd5) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>pazard5

Func pazard6()
	If $mod = 1 Then
		If GUICtrlRead($pazarmolad6) = 1 Then
			$temp = 0
			SoundPlay($ogrencizil, 1)
			$temp = $ogretmensure * 60000
			Sleep($temp)
			SoundPlay($ogretmenzil, 1)
			$temp = $ders * 60000
			Sleep($temp)
			SoundPlay($cikiszil, 1)
			If GUICtrlRead($pazarmuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 12" Then
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
			If GUICtrlRead($pazarmuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 18:50 ogrenci giris 18:55 ogretmen giris 19:35 cikis 19:35~36 seçilen müzik
		EndIf
	Else
		If GUICtrlRead($pazarmolad6) = 1 Then
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
			If GUICtrlRead($pazarmuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 12" Then
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
			If GUICtrlRead($pazarmuzikd6) = "Müzik 1" Then
				SoundPlay($muzik1, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 2" Then
				SoundPlay($muzik2, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 3" Then
				SoundPlay($muzik3, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 4" Then
				SoundPlay($muzik4, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 5" Then
				SoundPlay($muzik5, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 6" Then
				SoundPlay($muzik6, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 7" Then
				SoundPlay($muzik7, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 8" Then
				SoundPlay($muzik8, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 9" Then
				SoundPlay($muzik9, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 10" Then
				SoundPlay($muzik10, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 11" Then
				SoundPlay($muzik11, 1)
			ElseIf GUICtrlRead($pazarmuzikd6) = "Müzik 12" Then
				SoundPlay($muzik12, 1)
			Else
			EndIf
;~ 19:30 ogrenci giris 19:35 ogretmen giris 20:15 ara 20:55 cikis 20:55~56 seçilen  müzik
		EndIf
	EndIf
EndFunc   ;==>pazard6

Func pazard7()
	If $mod = 1 Then
		If GUICtrlRead($pazarmolad7) = 1 Then
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
		If GUICtrlRead($pazarmolad7) = 1 Then
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
EndFunc   ;==>pazard7

Func pazard8()
	If $mod = 1 Then
		If GUICtrlRead($pazarmolad8) = 1 Then
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
		If GUICtrlRead($pazarmolad8) = 1 Then
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
EndFunc   ;==>pazard8

Func pazard9()
	If $mod = 1 Then
		If GUICtrlRead($pazarmolad9) = 1 Then
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
		If GUICtrlRead($pazarmolad9) = 1 Then
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
EndFunc   ;==>pazard9

Func pazard10()
	If $mod = 1 Then
		If GUICtrlRead($pazarmolad10) = 1 Then
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
		If GUICtrlRead($pazarmolad10) = 1 Then
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
EndFunc   ;==>pazard10

Func pazard11()
	If $mod = 1 Then
		If GUICtrlRead($pazarmolad11) = 1 Then
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
		If GUICtrlRead($pazarmolad11) = 1 Then
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
EndFunc   ;==>pazard11

Func pazard12()
	If $mod = 1 Then
		If GUICtrlRead($pazarmolad12) = 1 Then
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
		If GUICtrlRead($pazarmolad12) = 1 Then
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
EndFunc   ;==>pazard12

Func pazard13()
	If $mod = 1 Then
		If GUICtrlRead($pazarmolad13) = 1 Then
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
		If GUICtrlRead($pazarmolad13) = 1 Then
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
EndFunc   ;==>pazard13

Func pazard14()
	If $mod = 1 Then
		If GUICtrlRead($pazarmolad14) = 1 Then
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
		If GUICtrlRead($pazarmolad14) = 1 Then
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
EndFunc   ;==>pazard14

Func pazard15()
	If $mod = 1 Then
		If GUICtrlRead($pazarmolad15) = 1 Then
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
		If GUICtrlRead($pazarmolad15) = 1 Then
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
EndFunc   ;==>pazard15

Func pazard16()
	If $mod = 1 Then
		If GUICtrlRead($pazarmolad16) = 1 Then
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
		If GUICtrlRead($pazarmolad16) = 1 Then
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
EndFunc   ;==>pazard16
