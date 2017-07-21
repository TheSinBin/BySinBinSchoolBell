If _Singleton("BySinBin Okul Zili", 1) = 0 Then
	MsgBox(16, "Hata", "Program zaten çalışıyor.")
	Exit
EndIf

$settingloc = @ScriptDir & "\settings.ini"

#include <TrayConstants.au3>
#include <MsgBoxConstants.au3>
#include <GUIConstantsEx.au3>
#include <AutoItConstants.au3>

$firstop = GUICreate("home", 253, 120, -1, -1, -1, -1)
$tek = GUICtrlCreateButton("Tek Ders", 20, 70, 100, 30, -1, -1)
$cift = GUICtrlCreateButton("Çift Ders", 137, 70, 100, 30, -1, -1)
GUICtrlCreateLabel("Lütfen Ders Modunu Seçiniz :", 50, 30, 148, 15, -1, -1)

If IniRead($settingloc, "mainsettings", "firstopen", "0") = 0 Then
	GUISetState(@SW_SHOW, $firstop)
Else
EndIf

Opt("TrayMenuMode", 3)

TrayCreateItem("") ; Create a separator line.
$idayarlar = TrayCreateItem("Ayarlar")
$idgunler = TrayCreateMenu("Günler")
$idptesi = TrayCreateItem("Pazartesi", $idgunler)
$idsali = TrayCreateItem("Salı", $idgunler)
$idcarsamba = TrayCreateItem("Çarşamba", $idgunler)
$idpersembe = TrayCreateItem("Perşembe", $idgunler)
$idcuma = TrayCreateItem("Cuma", $idgunler)
$idctesi = TrayCreateItem("Cumartesi", $idgunler)
$idpazar = TrayCreateItem("Pazar", $idgunler)

$idinfo = TrayCreateItem("Hakkında")

$idExit = TrayCreateItem("Çıkış")

TraySetState($TRAY_ICONSTATE_SHOW)

$hgun = ""
If @WDAY = 1 Then
	$hgun = "Pazar"
ElseIf @WDAY = 2 Then
	$hgun = "P.Tesi"
ElseIf @WDAY = 3 Then
	$hgun = "Salı"
ElseIf @WDAY = 4 Then
	$hgun = "Çarşamba"
ElseIf @WDAY = 5 Then
	$hgun = "Perşembe"
ElseIf @WDAY = 6 Then
	$hgun = "Cuma"
Else
	$hgun = "C.Tesi"
EndIf

$combodakika = "00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59"

$mod = IniRead($settingloc, "mainsettings", "mod", "1") ; 1  : 1 ders 40 dk  2 : 1 ders 80 dk 40.dk de ara zil
$ogretmensure = IniRead($settingloc, "mainsettings", "ogretmensure", "1") ; öğrenci zilinden 5 dk sonra öğretmen zili çalcak
$ders = IniRead($settingloc, "mainsettings", "derssure", "80") ; 1 ders kaç dakika
$mola = IniRead($settingloc, "mainsettings", "molasure", "20") ; mola da kaç dakika beklensin
$ara = $ders / 2 ;mod 2 ise öğretmen zilinden 40 dk sonra zil çalcak

$topmuz = "Müzik Yok|Müzik 1|Müzik 2|Müzik 3|Müzik 4|Müzik 5|Müzik 6|Müzik 7|Müzik 8|Müzik 9|Müzik 10|Müzik 11|Müzik 12"

$muzik1 = IniRead($settingloc, "mainsettings", "muzik1", @ScriptDir & "\muzik1.waw")
$muzik2 = IniRead($settingloc, "mainsettings", "muzik2", @ScriptDir & "\muzik2.waw")
$muzik3 = IniRead($settingloc, "mainsettings", "muzik3", @ScriptDir & "\muzik3.waw")
$muzik4 = IniRead($settingloc, "mainsettings", "muzik4", @ScriptDir & "\muzik4.waw")
$muzik5 = IniRead($settingloc, "mainsettings", "muzik5", @ScriptDir & "\muzik5.waw")
$muzik6 = IniRead($settingloc, "mainsettings", "muzik6", @ScriptDir & "\muzik6.waw")
$muzik7 = IniRead($settingloc, "mainsettings", "muzik7", @ScriptDir & "\muzik7.waw")
$muzik8 = IniRead($settingloc, "mainsettings", "muzik8", @ScriptDir & "\muzik8.waw")
$muzik9 = IniRead($settingloc, "mainsettings", "muzik9", @ScriptDir & "\muzik9.waw")
$muzik10 = IniRead($settingloc, "mainsettings", "muzik10", @ScriptDir & "\muzik10.waw")
$muzik11 = IniRead($settingloc, "mainsettings", "muzik11", @ScriptDir & "\muzik11.waw")
$muzik12 = IniRead($settingloc, "mainsettings", "muzik12", @ScriptDir & "\muzik12.waw")

#include "ayarlar.au3"
#include "ptesi.au3"
#include "sali.au3"
#include "carsamba.au3"
#include "persembe.au3"
#include "cuma.au3"
#include "ctesi.au3"
#include "pazar.au3"
While 1

	Switch TrayGetMsg()
		Case $idayarlar ; Exit the loop.
			GUISetState(@SW_SHOW, $ayarlar)
		Case $idExit ; Exit the loop.
			Exit
		Case $idptesi
			GUISetState(@SW_SHOW, $ptesi)
		Case $idsali
			GUISetState(@SW_SHOW, $sali)
		Case $idcarsamba
			GUISetState(@SW_SHOW, $carsamba)
		Case $idpersembe
			GUISetState(@SW_SHOW, $persembe)
		Case $idcuma
			GUISetState(@SW_SHOW, $cuma)
		Case $idctesi
			GUISetState(@SW_SHOW, $ctesi)
		Case $idpazar
			GUISetState(@SW_SHOW, $pazar)
		Case $idinfo
			MsgBox($MB_SYSTEMMODAL, "BySinBin Okul Zili.", "BySinBin Okul Zili." & @CRLF & @CRLF & "YeşilYayla MTAL ")
	EndSwitch

	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			GUISetState(@SW_HIDE, $ayarlar)
			GUISetState(@SW_HIDE, $ptesi)
			GUISetState(@SW_HIDE, $sali)
			GUISetState(@SW_HIDE, $carsamba)
			GUISetState(@SW_HIDE, $persembe)
			GUISetState(@SW_HIDE, $cuma)
			GUISetState(@SW_HIDE, $ctesi)
			GUISetState(@SW_HIDE, $pazar)
			GUISetState(@SW_HIDE, $firstop)
		Case $cift
			GUISetState(@SW_HIDE, $firstop)
			IniWrite($settingloc, "mainsettings", "mod", "2")
			IniWrite($settingloc, "mainsettings", "firstopen", "1")

		Case $tek
			GUISetState(@SW_HIDE, $firstop)
			IniWrite($settingloc, "mainsettings", "mod", "1")
			IniWrite($settingloc, "mainsettings", "firstopen", "1")

		Case $m1d
			$temp = FileOpenDialog("Lütfen 1.Müzigi Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "muzik1", $temp)
			GUICtrlSetData($m1t, IniRead($settingloc, "mainsettings", "muzik1", "00"))
		Case $m2d
			$temp = FileOpenDialog("Lütfen 2.Müzigi Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "muzik2", $temp)
			GUICtrlSetData($m2t, IniRead($settingloc, "mainsettings", "muzik2", "00"))
		Case $m3d
			$temp = FileOpenDialog("Lütfen 3.Müzigi Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "muzik3", $temp)
			GUICtrlSetData($m3t, IniRead($settingloc, "mainsettings", "muzik3", "00"))
		Case $m4d
			$temp = FileOpenDialog("Lütfen 4.Müzigi Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "muzik4", $temp)
			GUICtrlSetData($m4t, IniRead($settingloc, "mainsettings", "muzik4", "00"))
		Case $m5d
			$temp = FileOpenDialog("Lütfen 5.Müzigi Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "muzik5", $temp)
			GUICtrlSetData($m5t, IniRead($settingloc, "mainsettings", "muzik5", "00"))
		Case $m6d
			$temp = FileOpenDialog("Lütfen 6.Müzigi Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "muzik6", $temp)
			GUICtrlSetData($m6t, IniRead($settingloc, "mainsettings", "muzik6", "00"))
		Case $m7d
			$temp = FileOpenDialog("Lütfen 7.Müzigi Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "muzik7", $temp)
			GUICtrlSetData($m7t, IniRead($settingloc, "mainsettings", "muzik7", "00"))
		Case $m8d
			$temp = FileOpenDialog("Lütfen 8.Müzigi Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "muzik8", $temp)
			GUICtrlSetData($m8t, IniRead($settingloc, "mainsettings", "muzik8", "00"))
		Case $m9d
			$temp = FileOpenDialog("Lütfen 9.Müzigi Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "muzik9", $temp)
			GUICtrlSetData($m9t, IniRead($settingloc, "mainsettings", "muzik9", "00"))
		Case $m10d
			$temp = FileOpenDialog("Lütfen 10.Müzigi Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "muzik10", $temp)
			GUICtrlSetData($m10t, IniRead($settingloc, "mainsettings", "muzik10", "00"))
		Case $m11d
			$temp = FileOpenDialog("Lütfen 11.Müzigi Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "muzik11", $temp)
			GUICtrlSetData($m11t, IniRead($settingloc, "mainsettings", "muzik11", "00"))
		Case $m12d
			$temp = FileOpenDialog("Lütfen 12.Müzigi Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "muzik12", $temp)
			GUICtrlSetData($m12t, IniRead($settingloc, "mainsettings", "muzik12", "00"))
		Case $ogrencizild
			$temp = FileOpenDialog("Lütfen Ögrenci Giris Zilini Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "ogrencizil", $temp)
			GUICtrlSetData($ogrencizil, IniRead($settingloc, "mainsettings", "ogrencizil", "00"))
		Case $ogretmenzild
			$temp = FileOpenDialog("Lütfen Ögretmen Giris Zilini Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "ogretmenzil", $temp)
			GUICtrlSetData($ogretmenzil, IniRead($settingloc, "mainsettings", "ogretmenzil", "00"))
		Case $arazild
			$temp = FileOpenDialog("Lütfen Ara Zilini Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "arazil", $temp)
			GUICtrlSetData($arazil, IniRead($settingloc, "mainsettings", "arazil", "00"))
		Case $cikiszild
			$temp = FileOpenDialog("Lütfen Çikis Zilini Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "cikiszil", $temp)
			GUICtrlSetData($cikiszil, IniRead($settingloc, "mainsettings", "cikiszil", "00"))
		Case $molazild
			$temp = FileOpenDialog("Lütfen Mola Zilini Seçiniz.", @ScriptDir & "\", "All (*.*) ")
			IniWrite($settingloc, "mainsettings", "molazil", $temp)
			GUICtrlSetData($molazil, IniRead($settingloc, "mainsettings", "molazil", "00"))
		Case $ptesid1
			If IniRead($settingloc, "ptesi", "ptesid1", "1") = 1 Then
				IniWrite($settingloc, "ptesi", "ptesid1", "0")
			Else
				IniWrite($settingloc, "ptesi", "ptesid1", "1")
			EndIf
		Case $ptesid2
			If IniRead($settingloc, "ptesi", "ptesid2", "1") = 1 Then
				IniWrite($settingloc, "ptesi", "ptesid2", "0")
			Else
				IniWrite($settingloc, "ptesi", "ptesid2", "1")
			EndIf
		Case $ptesid3
			If IniRead($settingloc, "ptesi", "ptesid3", "1") = 1 Then
				IniWrite($settingloc, "ptesi", "ptesid3", "0")
			Else
				IniWrite($settingloc, "ptesi", "ptesid3", "1")
			EndIf
		Case $ptesid4
			If IniRead($settingloc, "ptesi", "ptesid4", "1") = 1 Then
				IniWrite($settingloc, "ptesi", "ptesid4", "0")
			Else
				IniWrite($settingloc, "ptesi", "ptesid4", "1")
			EndIf
		Case $ptesid5
			If IniRead($settingloc, "ptesi", "ptesid5", "1") = 1 Then
				IniWrite($settingloc, "ptesi", "ptesid5", "0")
			Else
				IniWrite($settingloc, "ptesi", "ptesid5", "1")
			EndIf
		Case $ptesid6
			If IniRead($settingloc, "ptesi", "ptesid6", "1") = 1 Then
				IniWrite($settingloc, "ptesi", "ptesid6", "0")
			Else
				IniWrite($settingloc, "ptesi", "ptesid6", "1")
			EndIf
		Case $ptesid7
			If IniRead($settingloc, "ptesi", "ptesid7", "1") = 1 Then
				IniWrite($settingloc, "ptesi", "ptesid7", "0")
			Else
				IniWrite($settingloc, "ptesi", "ptesid7", "1")
			EndIf
		Case $ptesid8
			If IniRead($settingloc, "ptesi", "ptesid8", "1") = 1 Then
				IniWrite($settingloc, "ptesi", "ptesid8", "0")
			Else
				IniWrite($settingloc, "ptesi", "ptesid8", "1")
			EndIf
		Case $ptesid9
			If IniRead($settingloc, "ptesi", "ptesid9", "1") = 1 Then
				IniWrite($settingloc, "ptesi", "ptesid9", "0")
			Else
				IniWrite($settingloc, "ptesi", "ptesid9", "1")
			EndIf
		Case $ptesid10
			If IniRead($settingloc, "ptesi", "ptesid10", "1") = 1 Then
				IniWrite($settingloc, "ptesi", "ptesid10", "0")
			Else
				IniWrite($settingloc, "ptesi", "ptesid10", "1")
			EndIf
		Case $ptesid11
			If IniRead($settingloc, "ptesi", "ptesid11", "1") = 1 Then
				IniWrite($settingloc, "ptesi", "ptesid11", "0")
			Else
				IniWrite($settingloc, "ptesi", "ptesid11", "1")
			EndIf
		Case $ptesid12
			If IniRead($settingloc, "ptesi", "ptesid12", "1") = 1 Then
				IniWrite($settingloc, "ptesi", "ptesid12", "0")
			Else
				IniWrite($settingloc, "ptesi", "ptesid12", "1")
			EndIf
		Case $ptesid13
			If IniRead($settingloc, "ptesi", "ptesid13", "1") = 1 Then
				IniWrite($settingloc, "ptesi", "ptesid13", "0")
			Else
				IniWrite($settingloc, "ptesi", "ptesid13", "1")
			EndIf
		Case $ptesid14
			If IniRead($settingloc, "ptesi", "ptesid14", "1") = 1 Then
				IniWrite($settingloc, "ptesi", "ptesid14", "0")
			Else
				IniWrite($settingloc, "ptesi", "ptesid14", "1")
			EndIf
		Case $ptesid15
			If IniRead($settingloc, "ptesi", "ptesid15", "1") = 1 Then
				IniWrite($settingloc, "ptesi", "ptesid15", "0")
			Else
				IniWrite($settingloc, "ptesi", "ptesid15", "1")
			EndIf
		Case $ptesid16
			If IniRead($settingloc, "ptesi", "ptesid16", "1") = 1 Then
				IniWrite($settingloc, "ptesi", "ptesid16", "0")
			Else
				IniWrite($settingloc, "ptesi", "ptesid16", "1")
			EndIf
		Case $ptesisaatd1
			IniWrite($settingloc, "ptesi", "saatd1", GUICtrlRead($ptesisaatd1))
			GUICtrlSetData($ptesisaatd1, IniRead($settingloc, "ptesi", "saatd1", "00"))
		Case $ptesisaatd2
			IniWrite($settingloc, "ptesi", "saatd2", GUICtrlRead($ptesisaatd2))
			GUICtrlSetData($ptesisaatd2, IniRead($settingloc, "ptesi", "saatd2", "00"))
		Case $ptesisaatd3
			IniWrite($settingloc, "ptesi", "saatd3", GUICtrlRead($ptesisaatd3))
			GUICtrlSetData($ptesisaatd3, IniRead($settingloc, "ptesi", "saatd3", "00"))
		Case $ptesisaatd4
			IniWrite($settingloc, "ptesi", "saatd4", GUICtrlRead($ptesisaatd4))
			GUICtrlSetData($ptesisaatd4, IniRead($settingloc, "ptesi", "saatd4", "00"))
		Case $ptesisaatd5
			IniWrite($settingloc, "ptesi", "saatd5", GUICtrlRead($ptesisaatd5))
			GUICtrlSetData($ptesisaatd5, IniRead($settingloc, "ptesi", "saatd5", "00"))
		Case $ptesisaatd6
			IniWrite($settingloc, "ptesi", "saatd6", GUICtrlRead($ptesisaatd6))
			GUICtrlSetData($ptesisaatd6, IniRead($settingloc, "ptesi", "saatd6", "00"))
		Case $ptesisaatd7
			IniWrite($settingloc, "ptesi", "saatd7", GUICtrlRead($ptesisaatd7))
			GUICtrlSetData($ptesisaatd7, IniRead($settingloc, "ptesi", "saatd7", "00"))
		Case $ptesisaatd8
			IniWrite($settingloc, "ptesi", "saatd8", GUICtrlRead($ptesisaatd8))
			GUICtrlSetData($ptesisaatd8, IniRead($settingloc, "ptesi", "saatd8", "00"))
		Case $ptesisaatd9
			IniWrite($settingloc, "ptesi", "saatd9", GUICtrlRead($ptesisaatd9))
			GUICtrlSetData($ptesisaatd9, IniRead($settingloc, "ptesi", "saatd9", "00"))
		Case $ptesisaatd10
			IniWrite($settingloc, "ptesi", "saatd10", GUICtrlRead($ptesisaatd10))
			GUICtrlSetData($ptesisaatd10, IniRead($settingloc, "ptesi", "saatd10", "00"))
		Case $ptesisaatd11
			IniWrite($settingloc, "ptesi", "saatd11", GUICtrlRead($ptesisaatd11))
			GUICtrlSetData($ptesisaatd11, IniRead($settingloc, "ptesi", "saatd11", "00"))
		Case $ptesisaatd12
			IniWrite($settingloc, "ptesi", "saatd12", GUICtrlRead($ptesisaatd12))
			GUICtrlSetData($ptesisaatd12, IniRead($settingloc, "ptesi", "saatd12", "00"))
		Case $ptesisaatd13
			IniWrite($settingloc, "ptesi", "saatd13", GUICtrlRead($ptesisaatd13))
			GUICtrlSetData($ptesisaatd13, IniRead($settingloc, "ptesi", "saatd13", "00"))
		Case $ptesisaatd14
			IniWrite($settingloc, "ptesi", "saatd14", GUICtrlRead($ptesisaatd14))
			GUICtrlSetData($ptesisaatd14, IniRead($settingloc, "ptesi", "saatd14", "00"))
		Case $ptesisaatd15
			IniWrite($settingloc, "ptesi", "saatd15", GUICtrlRead($ptesisaatd15))
			GUICtrlSetData($ptesisaatd15, IniRead($settingloc, "ptesi", "saatd15", "00"))
		Case $ptesisaatd16
			IniWrite($settingloc, "ptesi", "saatd16", GUICtrlRead($ptesisaatd16))
			GUICtrlSetData($ptesisaatd16, IniRead($settingloc, "ptesi", "saatd16", "00"))
		Case $ptesidakikad1
			IniWrite($settingloc, "ptesi", "dakikad1", GUICtrlRead($ptesidakikad1))
			GUICtrlSetData($ptesidakikad1, IniRead($settingloc, "ptesi", "dakikad1", "00"))
		Case $ptesidakikad2
			IniWrite($settingloc, "ptesi", "dakikad2", GUICtrlRead($ptesidakikad2))
			GUICtrlSetData($ptesidakikad2, IniRead($settingloc, "ptesi", "dakikad2", "00"))
		Case $ptesidakikad3
			IniWrite($settingloc, "ptesi", "dakikad3", GUICtrlRead($ptesidakikad3))
			GUICtrlSetData($ptesidakikad3, IniRead($settingloc, "ptesi", "dakikad3", "00"))
		Case $ptesidakikad4
			IniWrite($settingloc, "ptesi", "dakikad4", GUICtrlRead($ptesidakikad4))
			GUICtrlSetData($ptesidakikad4, IniRead($settingloc, "ptesi", "dakikad4", "00"))
		Case $ptesidakikad5
			IniWrite($settingloc, "ptesi", "dakikad5", GUICtrlRead($ptesidakikad5))
			GUICtrlSetData($ptesidakikad5, IniRead($settingloc, "ptesi", "dakikad5", "00"))
		Case $ptesidakikad6
			IniWrite($settingloc, "ptesi", "dakikad6", GUICtrlRead($ptesidakikad6))
			GUICtrlSetData($ptesidakikad6, IniRead($settingloc, "ptesi", "dakikad6", "00"))
		Case $ptesidakikad7
			IniWrite($settingloc, "ptesi", "dakikad7", GUICtrlRead($ptesidakikad7))
			GUICtrlSetData($ptesidakikad7, IniRead($settingloc, "ptesi", "dakikad7", "00"))
		Case $ptesidakikad8
			IniWrite($settingloc, "ptesi", "dakikad8", GUICtrlRead($ptesidakikad8))
			GUICtrlSetData($ptesidakikad8, IniRead($settingloc, "ptesi", "dakikad8", "00"))
		Case $ptesidakikad9
			IniWrite($settingloc, "ptesi", "dakikad9", GUICtrlRead($ptesidakikad9))
			GUICtrlSetData($ptesidakikad9, IniRead($settingloc, "ptesi", "dakikad9", "00"))
		Case $ptesidakikad10
			IniWrite($settingloc, "ptesi", "dakikad10", GUICtrlRead($ptesidakikad10))
			GUICtrlSetData($ptesidakikad10, IniRead($settingloc, "ptesi", "dakikad10", "00"))
		Case $ptesidakikad11
			IniWrite($settingloc, "ptesi", "dakikad11", GUICtrlRead($ptesidakikad11))
			GUICtrlSetData($ptesidakikad11, IniRead($settingloc, "ptesi", "dakikad11", "00"))
		Case $ptesidakikad12
			IniWrite($settingloc, "ptesi", "dakikad12", GUICtrlRead($ptesidakikad12))
			GUICtrlSetData($ptesidakikad12, IniRead($settingloc, "ptesi", "dakikad12", "00"))
		Case $ptesidakikad13
			IniWrite($settingloc, "ptesi", "dakikad13", GUICtrlRead($ptesidakikad13))
			GUICtrlSetData($ptesidakikad13, IniRead($settingloc, "ptesi", "dakikad13", "00"))
		Case $ptesidakikad14
			IniWrite($settingloc, "ptesi", "dakikad14", GUICtrlRead($ptesidakikad14))
			GUICtrlSetData($ptesidakikad14, IniRead($settingloc, "ptesi", "dakikad14", "00"))
		Case $ptesidakikad15
			IniWrite($settingloc, "ptesi", "dakikad15", GUICtrlRead($ptesidakikad15))
			GUICtrlSetData($ptesidakikad15, IniRead($settingloc, "ptesi", "dakikad15", "00"))
		Case $ptesidakikad16
			IniWrite($settingloc, "ptesi", "dakikad16", GUICtrlRead($ptesidakikad16))
			GUICtrlSetData($ptesidakikad16, IniRead($settingloc, "ptesi", "dakikad16", "00"))
		Case $ptesimuzikd1
			IniWrite($settingloc, "ptesi", "muzikd1", GUICtrlRead($ptesimuzikd1))
			GUICtrlSetData($ptesimuzikd1, IniRead($settingloc, "ptesi", "muzikd1", "00"))
		Case $ptesimuzikd2
			IniWrite($settingloc, "ptesi", "muzikd2", GUICtrlRead($ptesimuzikd2))
			GUICtrlSetData($ptesimuzikd2, IniRead($settingloc, "ptesi", "muzikd2", "00"))
		Case $ptesimuzikd3
			IniWrite($settingloc, "ptesi", "muzikd3", GUICtrlRead($ptesimuzikd3))
			GUICtrlSetData($ptesimuzikd3, IniRead($settingloc, "ptesi", "muzikd3", "00"))
		Case $ptesimuzikd4
			IniWrite($settingloc, "ptesi", "muzikd4", GUICtrlRead($ptesimuzikd4))
			GUICtrlSetData($ptesimuzikd4, IniRead($settingloc, "ptesi", "muzikd4", "00"))
		Case $ptesimuzikd5
			IniWrite($settingloc, "ptesi", "muzikd5", GUICtrlRead($ptesimuzikd5))
			GUICtrlSetData($ptesimuzikd5, IniRead($settingloc, "ptesi", "muzikd5", "00"))
		Case $ptesimuzikd6
			IniWrite($settingloc, "ptesi", "muzikd6", GUICtrlRead($ptesimuzikd6))
			GUICtrlSetData($ptesimuzikd6, IniRead($settingloc, "ptesi", "muzikd6", "00"))
		Case $ptesimuzikd7
			IniWrite($settingloc, "ptesi", "muzikd7", GUICtrlRead($ptesimuzikd7))
			GUICtrlSetData($ptesimuzikd7, IniRead($settingloc, "ptesi", "muzikd7", "00"))
		Case $ptesimuzikd8
			IniWrite($settingloc, "ptesi", "muzikd8", GUICtrlRead($ptesimuzikd8))
			GUICtrlSetData($ptesimuzikd8, IniRead($settingloc, "ptesi", "muzikd8", "00"))
		Case $ptesimuzikd9
			IniWrite($settingloc, "ptesi", "muzikd9", GUICtrlRead($ptesimuzikd9))
			GUICtrlSetData($ptesimuzikd9, IniRead($settingloc, "ptesi", "muzikd9", "00"))
		Case $ptesimuzikd10
			IniWrite($settingloc, "ptesi", "muzikd10", GUICtrlRead($ptesimuzikd10))
			GUICtrlSetData($ptesimuzikd10, IniRead($settingloc, "ptesi", "muzikd10", "00"))
		Case $ptesimuzikd11
			IniWrite($settingloc, "ptesi", "muzikd11", GUICtrlRead($ptesimuzikd11))
			GUICtrlSetData($ptesimuzikd11, IniRead($settingloc, "ptesi", "muzikd11", "00"))
		Case $ptesimuzikd12
			IniWrite($settingloc, "ptesi", "muzikd12", GUICtrlRead($ptesimuzikd12))
			GUICtrlSetData($ptesimuzikd12, IniRead($settingloc, "ptesi", "muzikd12", "00"))
		Case $ptesimuzikd13
			IniWrite($settingloc, "ptesi", "muzikd13", GUICtrlRead($ptesimuzikd13))
			GUICtrlSetData($ptesimuzikd13, IniRead($settingloc, "ptesi", "muzikd13", "00"))
		Case $ptesimuzikd14
			IniWrite($settingloc, "ptesi", "muzikd14", GUICtrlRead($ptesimuzikd14))
			GUICtrlSetData($ptesimuzikd14, IniRead($settingloc, "ptesi", "muzikd14", "00"))
		Case $ptesimuzikd15
			IniWrite($settingloc, "ptesi", "muzikd15", GUICtrlRead($ptesimuzikd15))
			GUICtrlSetData($ptesimuzikd15, IniRead($settingloc, "ptesi", "muzikd15", "00"))
		Case $ptesimuzikd16
			IniWrite($settingloc, "ptesi", "muzikd16", GUICtrlRead($ptesimuzikd16))
			GUICtrlSetData($ptesimuzikd16, IniRead($settingloc, "ptesi", "muzikd16", "00"))
		Case $ptesimolad1
			IniWrite($settingloc, "ptesi", "mola", "1")
		Case $ptesimolad2
			IniWrite($settingloc, "ptesi", "mola", "2")
		Case $ptesimolad3
			IniWrite($settingloc, "ptesi", "mola", "3")
		Case $ptesimolad4
			IniWrite($settingloc, "ptesi", "mola", "4")
		Case $ptesimolad5
			IniWrite($settingloc, "ptesi", "mola", "5")
		Case $ptesimolad6
			IniWrite($settingloc, "ptesi", "mola", "6")
		Case $ptesimolad7
			IniWrite($settingloc, "ptesi", "mola", "7")
		Case $ptesimolad8
			IniWrite($settingloc, "ptesi", "mola", "8")
		Case $ptesimolad9
			IniWrite($settingloc, "ptesi", "mola", "9")
		Case $ptesimolad10
			IniWrite($settingloc, "ptesi", "mola", "10")
		Case $ptesimolad11
			IniWrite($settingloc, "ptesi", "mola", "11")
		Case $ptesimolad12
			IniWrite($settingloc, "ptesi", "mola", "12")
		Case $ptesimolad13
			IniWrite($settingloc, "ptesi", "mola", "13")
		Case $ptesimolad14
			IniWrite($settingloc, "ptesi", "mola", "14")
		Case $ptesimolad15
			IniWrite($settingloc, "ptesi", "mola", "15")
		Case $ptesimolad16
			IniWrite($settingloc, "ptesi", "mola", "16")
		Case $ptesimolayok
			IniWrite($settingloc, "ptesi", "mola", "0")
		Case $salid1
			If IniRead($settingloc, "sali", "salid1", "1") = 1 Then
				IniWrite($settingloc, "sali", "salid1", "0")
			Else
				IniWrite($settingloc, "sali", "salid1", "1")
			EndIf
		Case $salid2
			If IniRead($settingloc, "sali", "salid2", "1") = 1 Then
				IniWrite($settingloc, "sali", "salid2", "0")
			Else
				IniWrite($settingloc, "sali", "salid2", "1")
			EndIf
		Case $salid3
			If IniRead($settingloc, "sali", "salid3", "1") = 1 Then
				IniWrite($settingloc, "sali", "salid3", "0")
			Else
				IniWrite($settingloc, "sali", "salid3", "1")
			EndIf
		Case $salid4
			If IniRead($settingloc, "sali", "salid4", "1") = 1 Then
				IniWrite($settingloc, "sali", "salid4", "0")
			Else
				IniWrite($settingloc, "sali", "salid4", "1")
			EndIf
		Case $salid5
			If IniRead($settingloc, "sali", "salid5", "1") = 1 Then
				IniWrite($settingloc, "sali", "salid5", "0")
			Else
				IniWrite($settingloc, "sali", "salid5", "1")
			EndIf
		Case $salid6
			If IniRead($settingloc, "sali", "salid6", "1") = 1 Then
				IniWrite($settingloc, "sali", "salid6", "0")
			Else
				IniWrite($settingloc, "sali", "salid6", "1")
			EndIf
		Case $salid7
			If IniRead($settingloc, "sali", "salid7", "1") = 1 Then
				IniWrite($settingloc, "sali", "salid7", "0")
			Else
				IniWrite($settingloc, "sali", "salid7", "1")
			EndIf
		Case $salid8
			If IniRead($settingloc, "sali", "salid8", "1") = 1 Then
				IniWrite($settingloc, "sali", "salid8", "0")
			Else
				IniWrite($settingloc, "sali", "salid8", "1")
			EndIf
		Case $salid9
			If IniRead($settingloc, "sali", "salid9", "1") = 1 Then
				IniWrite($settingloc, "sali", "salid9", "0")
			Else
				IniWrite($settingloc, "sali", "salid9", "1")
			EndIf
		Case $salid10
			If IniRead($settingloc, "sali", "salid10", "1") = 1 Then
				IniWrite($settingloc, "sali", "salid10", "0")
			Else
				IniWrite($settingloc, "sali", "salid10", "1")
			EndIf
		Case $salid11
			If IniRead($settingloc, "sali", "salid11", "1") = 1 Then
				IniWrite($settingloc, "sali", "salid11", "0")
			Else
				IniWrite($settingloc, "sali", "salid11", "1")
			EndIf
		Case $salid12
			If IniRead($settingloc, "sali", "salid12", "1") = 1 Then
				IniWrite($settingloc, "sali", "salid12", "0")
			Else
				IniWrite($settingloc, "sali", "salid12", "1")
			EndIf
		Case $salid13
			If IniRead($settingloc, "sali", "salid13", "1") = 1 Then
				IniWrite($settingloc, "sali", "salid13", "0")
			Else
				IniWrite($settingloc, "sali", "salid13", "1")
			EndIf
		Case $salid14
			If IniRead($settingloc, "sali", "salid14", "1") = 1 Then
				IniWrite($settingloc, "sali", "salid14", "0")
			Else
				IniWrite($settingloc, "sali", "salid14", "1")
			EndIf
		Case $salid15
			If IniRead($settingloc, "sali", "salid15", "1") = 1 Then
				IniWrite($settingloc, "sali", "salid15", "0")
			Else
				IniWrite($settingloc, "sali", "salid15", "1")
			EndIf
		Case $salid16
			If IniRead($settingloc, "sali", "salid16", "1") = 1 Then
				IniWrite($settingloc, "sali", "salid16", "0")
			Else
				IniWrite($settingloc, "sali", "salid16", "1")
			EndIf
		Case $salisaatd1
			IniWrite($settingloc, "sali", "saatd1", GUICtrlRead($salisaatd1))
			GUICtrlSetData($salisaatd1, IniRead($settingloc, "sali", "saatd1", "00"))
		Case $salisaatd2
			IniWrite($settingloc, "sali", "saatd2", GUICtrlRead($salisaatd2))
			GUICtrlSetData($salisaatd2, IniRead($settingloc, "sali", "saatd2", "00"))
		Case $salisaatd3
			IniWrite($settingloc, "sali", "saatd3", GUICtrlRead($salisaatd3))
			GUICtrlSetData($salisaatd3, IniRead($settingloc, "sali", "saatd3", "00"))
		Case $salisaatd4
			IniWrite($settingloc, "sali", "saatd4", GUICtrlRead($salisaatd4))
			GUICtrlSetData($salisaatd4, IniRead($settingloc, "sali", "saatd4", "00"))
		Case $salisaatd5
			IniWrite($settingloc, "sali", "saatd5", GUICtrlRead($salisaatd5))
			GUICtrlSetData($salisaatd5, IniRead($settingloc, "sali", "saatd5", "00"))
		Case $salisaatd6
			IniWrite($settingloc, "sali", "saatd6", GUICtrlRead($salisaatd6))
			GUICtrlSetData($salisaatd6, IniRead($settingloc, "sali", "saatd6", "00"))
		Case $salisaatd7
			IniWrite($settingloc, "sali", "saatd7", GUICtrlRead($salisaatd7))
			GUICtrlSetData($salisaatd7, IniRead($settingloc, "sali", "saatd7", "00"))
		Case $salisaatd8
			IniWrite($settingloc, "sali", "saatd8", GUICtrlRead($salisaatd8))
			GUICtrlSetData($salisaatd8, IniRead($settingloc, "sali", "saatd8", "00"))
		Case $salisaatd9
			IniWrite($settingloc, "sali", "saatd9", GUICtrlRead($salisaatd9))
			GUICtrlSetData($salisaatd9, IniRead($settingloc, "sali", "saatd9", "00"))
		Case $salisaatd10
			IniWrite($settingloc, "sali", "saatd10", GUICtrlRead($salisaatd10))
			GUICtrlSetData($salisaatd10, IniRead($settingloc, "sali", "saatd10", "00"))
		Case $salisaatd11
			IniWrite($settingloc, "sali", "saatd11", GUICtrlRead($salisaatd11))
			GUICtrlSetData($salisaatd11, IniRead($settingloc, "sali", "saatd11", "00"))
		Case $salisaatd12
			IniWrite($settingloc, "sali", "saatd12", GUICtrlRead($salisaatd12))
			GUICtrlSetData($salisaatd12, IniRead($settingloc, "sali", "saatd12", "00"))
		Case $salisaatd13
			IniWrite($settingloc, "sali", "saatd13", GUICtrlRead($salisaatd13))
			GUICtrlSetData($salisaatd13, IniRead($settingloc, "sali", "saatd13", "00"))
		Case $salisaatd14
			IniWrite($settingloc, "sali", "saatd14", GUICtrlRead($salisaatd14))
			GUICtrlSetData($salisaatd14, IniRead($settingloc, "sali", "saatd14", "00"))
		Case $salisaatd15
			IniWrite($settingloc, "sali", "saatd15", GUICtrlRead($salisaatd15))
			GUICtrlSetData($salisaatd15, IniRead($settingloc, "sali", "saatd15", "00"))
		Case $salisaatd16
			IniWrite($settingloc, "sali", "saatd16", GUICtrlRead($salisaatd16))
			GUICtrlSetData($salisaatd16, IniRead($settingloc, "sali", "saatd16", "00"))
		Case $salidakikad1
			IniWrite($settingloc, "sali", "dakikad1", GUICtrlRead($salidakikad1))
			GUICtrlSetData($salidakikad1, IniRead($settingloc, "sali", "dakikad1", "00"))
		Case $salidakikad2
			IniWrite($settingloc, "sali", "dakikad2", GUICtrlRead($salidakikad2))
			GUICtrlSetData($salidakikad2, IniRead($settingloc, "sali", "dakikad2", "00"))
		Case $salidakikad3
			IniWrite($settingloc, "sali", "dakikad3", GUICtrlRead($salidakikad3))
			GUICtrlSetData($salidakikad3, IniRead($settingloc, "sali", "dakikad3", "00"))
		Case $salidakikad4
			IniWrite($settingloc, "sali", "dakikad4", GUICtrlRead($salidakikad4))
			GUICtrlSetData($salidakikad4, IniRead($settingloc, "sali", "dakikad4", "00"))
		Case $salidakikad5
			IniWrite($settingloc, "sali", "dakikad5", GUICtrlRead($salidakikad5))
			GUICtrlSetData($salidakikad5, IniRead($settingloc, "sali", "dakikad5", "00"))
		Case $salidakikad6
			IniWrite($settingloc, "sali", "dakikad6", GUICtrlRead($salidakikad6))
			GUICtrlSetData($salidakikad6, IniRead($settingloc, "sali", "dakikad6", "00"))
		Case $salidakikad7
			IniWrite($settingloc, "sali", "dakikad7", GUICtrlRead($salidakikad7))
			GUICtrlSetData($salidakikad7, IniRead($settingloc, "sali", "dakikad7", "00"))
		Case $salidakikad8
			IniWrite($settingloc, "sali", "dakikad8", GUICtrlRead($salidakikad8))
			GUICtrlSetData($salidakikad8, IniRead($settingloc, "sali", "dakikad8", "00"))
		Case $salidakikad9
			IniWrite($settingloc, "sali", "dakikad9", GUICtrlRead($salidakikad9))
			GUICtrlSetData($salidakikad9, IniRead($settingloc, "sali", "dakikad9", "00"))
		Case $salidakikad10
			IniWrite($settingloc, "sali", "dakikad10", GUICtrlRead($salidakikad10))
			GUICtrlSetData($salidakikad10, IniRead($settingloc, "sali", "dakikad10", "00"))
		Case $salidakikad11
			IniWrite($settingloc, "sali", "dakikad11", GUICtrlRead($salidakikad11))
			GUICtrlSetData($salidakikad11, IniRead($settingloc, "sali", "dakikad11", "00"))
		Case $salidakikad12
			IniWrite($settingloc, "sali", "dakikad12", GUICtrlRead($salidakikad12))
			GUICtrlSetData($salidakikad12, IniRead($settingloc, "sali", "dakikad12", "00"))
		Case $salidakikad13
			IniWrite($settingloc, "sali", "dakikad13", GUICtrlRead($salidakikad13))
			GUICtrlSetData($salidakikad13, IniRead($settingloc, "sali", "dakikad13", "00"))
		Case $salidakikad14
			IniWrite($settingloc, "sali", "dakikad14", GUICtrlRead($salidakikad14))
			GUICtrlSetData($salidakikad14, IniRead($settingloc, "sali", "dakikad14", "00"))
		Case $salidakikad15
			IniWrite($settingloc, "sali", "dakikad15", GUICtrlRead($salidakikad15))
			GUICtrlSetData($salidakikad15, IniRead($settingloc, "sali", "dakikad15", "00"))
		Case $salidakikad16
			IniWrite($settingloc, "sali", "dakikad16", GUICtrlRead($salidakikad16))
			GUICtrlSetData($salidakikad16, IniRead($settingloc, "sali", "dakikad16", "00"))
		Case $salimuzikd1
			IniWrite($settingloc, "sali", "muzikd1", GUICtrlRead($salimuzikd1))
			GUICtrlSetData($salimuzikd1, IniRead($settingloc, "sali", "muzikd1", "00"))
		Case $salimuzikd2
			IniWrite($settingloc, "sali", "muzikd2", GUICtrlRead($salimuzikd2))
			GUICtrlSetData($salimuzikd2, IniRead($settingloc, "sali", "muzikd2", "00"))
		Case $salimuzikd3
			IniWrite($settingloc, "sali", "muzikd3", GUICtrlRead($salimuzikd3))
			GUICtrlSetData($salimuzikd3, IniRead($settingloc, "sali", "muzikd3", "00"))
		Case $salimuzikd4
			IniWrite($settingloc, "sali", "muzikd4", GUICtrlRead($salimuzikd4))
			GUICtrlSetData($salimuzikd4, IniRead($settingloc, "sali", "muzikd4", "00"))
		Case $salimuzikd5
			IniWrite($settingloc, "sali", "muzikd5", GUICtrlRead($salimuzikd5))
			GUICtrlSetData($salimuzikd5, IniRead($settingloc, "sali", "muzikd5", "00"))
		Case $salimuzikd6
			IniWrite($settingloc, "sali", "muzikd6", GUICtrlRead($salimuzikd6))
			GUICtrlSetData($salimuzikd6, IniRead($settingloc, "sali", "muzikd6", "00"))
		Case $salimuzikd7
			IniWrite($settingloc, "sali", "muzikd7", GUICtrlRead($salimuzikd7))
			GUICtrlSetData($salimuzikd7, IniRead($settingloc, "sali", "muzikd7", "00"))
		Case $salimuzikd8
			IniWrite($settingloc, "sali", "muzikd8", GUICtrlRead($salimuzikd8))
			GUICtrlSetData($salimuzikd8, IniRead($settingloc, "sali", "muzikd8", "00"))
		Case $salimuzikd9
			IniWrite($settingloc, "sali", "muzikd9", GUICtrlRead($salimuzikd9))
			GUICtrlSetData($salimuzikd9, IniRead($settingloc, "sali", "muzikd9", "00"))
		Case $salimuzikd10
			IniWrite($settingloc, "sali", "muzikd10", GUICtrlRead($salimuzikd10))
			GUICtrlSetData($salimuzikd10, IniRead($settingloc, "sali", "muzikd10", "00"))
		Case $salimuzikd11
			IniWrite($settingloc, "sali", "muzikd11", GUICtrlRead($salimuzikd11))
			GUICtrlSetData($salimuzikd11, IniRead($settingloc, "sali", "muzikd11", "00"))
		Case $salimuzikd12
			IniWrite($settingloc, "sali", "muzikd12", GUICtrlRead($salimuzikd12))
			GUICtrlSetData($salimuzikd12, IniRead($settingloc, "sali", "muzikd12", "00"))
		Case $salimuzikd13
			IniWrite($settingloc, "sali", "muzikd13", GUICtrlRead($salimuzikd13))
			GUICtrlSetData($salimuzikd13, IniRead($settingloc, "sali", "muzikd13", "00"))
		Case $salimuzikd14
			IniWrite($settingloc, "sali", "muzikd14", GUICtrlRead($salimuzikd14))
			GUICtrlSetData($salimuzikd14, IniRead($settingloc, "sali", "muzikd14", "00"))
		Case $salimuzikd15
			IniWrite($settingloc, "sali", "muzikd15", GUICtrlRead($salimuzikd15))
			GUICtrlSetData($salimuzikd15, IniRead($settingloc, "sali", "muzikd15", "00"))
		Case $salimuzikd16
			IniWrite($settingloc, "sali", "muzikd16", GUICtrlRead($salimuzikd16))
			GUICtrlSetData($salimuzikd16, IniRead($settingloc, "sali", "muzikd16", "00"))
		Case $salimolad1
			IniWrite($settingloc, "sali", "mola", "1")
		Case $salimolad2
			IniWrite($settingloc, "sali", "mola", "2")
		Case $salimolad3
			IniWrite($settingloc, "sali", "mola", "3")
		Case $salimolad4
			IniWrite($settingloc, "sali", "mola", "4")
		Case $salimolad5
			IniWrite($settingloc, "sali", "mola", "5")
		Case $salimolad6
			IniWrite($settingloc, "sali", "mola", "6")
		Case $salimolad7
			IniWrite($settingloc, "sali", "mola", "7")
		Case $salimolad8
			IniWrite($settingloc, "sali", "mola", "8")
		Case $salimolad9
			IniWrite($settingloc, "sali", "mola", "9")
		Case $salimolad10
			IniWrite($settingloc, "sali", "mola", "10")
		Case $salimolad11
			IniWrite($settingloc, "sali", "mola", "11")
		Case $salimolad12
			IniWrite($settingloc, "sali", "mola", "12")
		Case $salimolad13
			IniWrite($settingloc, "sali", "mola", "13")
		Case $salimolad14
			IniWrite($settingloc, "sali", "mola", "14")
		Case $salimolad15
			IniWrite($settingloc, "sali", "mola", "15")
		Case $salimolad16
			IniWrite($settingloc, "sali", "mola", "16")
		Case $salimolayok
			IniWrite($settingloc, "sali", "mola", "0")
		Case $carsambad1
			If IniRead($settingloc, "carsamba", "carsambad1", "1") = 1 Then
				IniWrite($settingloc, "carsamba", "carsambad1", "0")
			Else
				IniWrite($settingloc, "carsamba", "carsambad1", "1")
			EndIf
		Case $carsambad2
			If IniRead($settingloc, "carsamba", "carsambad2", "1") = 1 Then
				IniWrite($settingloc, "carsamba", "carsambad2", "0")
			Else
				IniWrite($settingloc, "carsamba", "carsambad2", "1")
			EndIf
		Case $carsambad3
			If IniRead($settingloc, "carsamba", "carsambad3", "1") = 1 Then
				IniWrite($settingloc, "carsamba", "carsambad3", "0")
			Else
				IniWrite($settingloc, "carsamba", "carsambad3", "1")
			EndIf
		Case $carsambad4
			If IniRead($settingloc, "carsamba", "carsambad4", "1") = 1 Then
				IniWrite($settingloc, "carsamba", "carsambad4", "0")
			Else
				IniWrite($settingloc, "carsamba", "carsambad4", "1")
			EndIf
		Case $carsambad5
			If IniRead($settingloc, "carsamba", "carsambad5", "1") = 1 Then
				IniWrite($settingloc, "carsamba", "carsambad5", "0")
			Else
				IniWrite($settingloc, "carsamba", "carsambad5", "1")
			EndIf
		Case $carsambad6
			If IniRead($settingloc, "carsamba", "carsambad6", "1") = 1 Then
				IniWrite($settingloc, "carsamba", "carsambad6", "0")
			Else
				IniWrite($settingloc, "carsamba", "carsambad6", "1")
			EndIf
		Case $carsambad7
			If IniRead($settingloc, "carsamba", "carsambad7", "1") = 1 Then
				IniWrite($settingloc, "carsamba", "carsambad7", "0")
			Else
				IniWrite($settingloc, "carsamba", "carsambad7", "1")
			EndIf
		Case $carsambad8
			If IniRead($settingloc, "carsamba", "carsambad8", "1") = 1 Then
				IniWrite($settingloc, "carsamba", "carsambad8", "0")
			Else
				IniWrite($settingloc, "carsamba", "carsambad8", "1")
			EndIf
		Case $carsambad9
			If IniRead($settingloc, "carsamba", "carsambad9", "1") = 1 Then
				IniWrite($settingloc, "carsamba", "carsambad9", "0")
			Else
				IniWrite($settingloc, "carsamba", "carsambad9", "1")
			EndIf
		Case $carsambad10
			If IniRead($settingloc, "carsamba", "carsambad10", "1") = 1 Then
				IniWrite($settingloc, "carsamba", "carsambad10", "0")
			Else
				IniWrite($settingloc, "carsamba", "carsambad10", "1")
			EndIf
		Case $carsambad11
			If IniRead($settingloc, "carsamba", "carsambad11", "1") = 1 Then
				IniWrite($settingloc, "carsamba", "carsambad11", "0")
			Else
				IniWrite($settingloc, "carsamba", "carsambad11", "1")
			EndIf
		Case $carsambad12
			If IniRead($settingloc, "carsamba", "carsambad12", "1") = 1 Then
				IniWrite($settingloc, "carsamba", "carsambad12", "0")
			Else
				IniWrite($settingloc, "carsamba", "carsambad12", "1")
			EndIf
		Case $carsambad13
			If IniRead($settingloc, "carsamba", "carsambad13", "1") = 1 Then
				IniWrite($settingloc, "carsamba", "carsambad13", "0")
			Else
				IniWrite($settingloc, "carsamba", "carsambad13", "1")
			EndIf
		Case $carsambad14
			If IniRead($settingloc, "carsamba", "carsambad14", "1") = 1 Then
				IniWrite($settingloc, "carsamba", "carsambad14", "0")
			Else
				IniWrite($settingloc, "carsamba", "carsambad14", "1")
			EndIf
		Case $carsambad15
			If IniRead($settingloc, "carsamba", "carsambad15", "1") = 1 Then
				IniWrite($settingloc, "carsamba", "carsambad15", "0")
			Else
				IniWrite($settingloc, "carsamba", "carsambad15", "1")
			EndIf
		Case $carsambad16
			If IniRead($settingloc, "carsamba", "carsambad16", "1") = 1 Then
				IniWrite($settingloc, "carsamba", "carsambad16", "0")
			Else
				IniWrite($settingloc, "carsamba", "carsambad16", "1")
			EndIf
		Case $carsambasaatd1
			IniWrite($settingloc, "carsamba", "saatd1", GUICtrlRead($carsambasaatd1))
			GUICtrlSetData($carsambasaatd1, IniRead($settingloc, "carsamba", "saatd1", "00"))
		Case $carsambasaatd2
			IniWrite($settingloc, "carsamba", "saatd2", GUICtrlRead($carsambasaatd2))
			GUICtrlSetData($carsambasaatd2, IniRead($settingloc, "carsamba", "saatd2", "00"))
		Case $carsambasaatd3
			IniWrite($settingloc, "carsamba", "saatd3", GUICtrlRead($carsambasaatd3))
			GUICtrlSetData($carsambasaatd3, IniRead($settingloc, "carsamba", "saatd3", "00"))
		Case $carsambasaatd4
			IniWrite($settingloc, "carsamba", "saatd4", GUICtrlRead($carsambasaatd4))
			GUICtrlSetData($carsambasaatd4, IniRead($settingloc, "carsamba", "saatd4", "00"))
		Case $carsambasaatd5
			IniWrite($settingloc, "carsamba", "saatd5", GUICtrlRead($carsambasaatd5))
			GUICtrlSetData($carsambasaatd5, IniRead($settingloc, "carsamba", "saatd5", "00"))
		Case $carsambasaatd6
			IniWrite($settingloc, "carsamba", "saatd6", GUICtrlRead($carsambasaatd6))
			GUICtrlSetData($carsambasaatd6, IniRead($settingloc, "carsamba", "saatd6", "00"))
		Case $carsambasaatd7
			IniWrite($settingloc, "carsamba", "saatd7", GUICtrlRead($carsambasaatd7))
			GUICtrlSetData($carsambasaatd7, IniRead($settingloc, "carsamba", "saatd7", "00"))
		Case $carsambasaatd8
			IniWrite($settingloc, "carsamba", "saatd8", GUICtrlRead($carsambasaatd8))
			GUICtrlSetData($carsambasaatd8, IniRead($settingloc, "carsamba", "saatd8", "00"))
		Case $carsambasaatd9
			IniWrite($settingloc, "carsamba", "saatd9", GUICtrlRead($carsambasaatd9))
			GUICtrlSetData($carsambasaatd9, IniRead($settingloc, "carsamba", "saatd9", "00"))
		Case $carsambasaatd10
			IniWrite($settingloc, "carsamba", "saatd10", GUICtrlRead($carsambasaatd10))
			GUICtrlSetData($carsambasaatd10, IniRead($settingloc, "carsamba", "saatd10", "00"))
		Case $carsambasaatd11
			IniWrite($settingloc, "carsamba", "saatd11", GUICtrlRead($carsambasaatd11))
			GUICtrlSetData($carsambasaatd11, IniRead($settingloc, "carsamba", "saatd11", "00"))
		Case $carsambasaatd12
			IniWrite($settingloc, "carsamba", "saatd12", GUICtrlRead($carsambasaatd12))
			GUICtrlSetData($carsambasaatd12, IniRead($settingloc, "carsamba", "saatd12", "00"))
		Case $carsambasaatd13
			IniWrite($settingloc, "carsamba", "saatd13", GUICtrlRead($carsambasaatd13))
			GUICtrlSetData($carsambasaatd13, IniRead($settingloc, "carsamba", "saatd13", "00"))
		Case $carsambasaatd14
			IniWrite($settingloc, "carsamba", "saatd14", GUICtrlRead($carsambasaatd14))
			GUICtrlSetData($carsambasaatd14, IniRead($settingloc, "carsamba", "saatd14", "00"))
		Case $carsambasaatd15
			IniWrite($settingloc, "carsamba", "saatd15", GUICtrlRead($carsambasaatd15))
			GUICtrlSetData($carsambasaatd15, IniRead($settingloc, "carsamba", "saatd15", "00"))
		Case $carsambasaatd16
			IniWrite($settingloc, "carsamba", "saatd16", GUICtrlRead($carsambasaatd16))
			GUICtrlSetData($carsambasaatd16, IniRead($settingloc, "carsamba", "saatd16", "00"))
		Case $carsambadakikad1
			IniWrite($settingloc, "carsamba", "dakikad1", GUICtrlRead($carsambadakikad1))
			GUICtrlSetData($carsambadakikad1, IniRead($settingloc, "carsamba", "dakikad1", "00"))
		Case $carsambadakikad2
			IniWrite($settingloc, "carsamba", "dakikad2", GUICtrlRead($carsambadakikad2))
			GUICtrlSetData($carsambadakikad2, IniRead($settingloc, "carsamba", "dakikad2", "00"))
		Case $carsambadakikad3
			IniWrite($settingloc, "carsamba", "dakikad3", GUICtrlRead($carsambadakikad3))
			GUICtrlSetData($carsambadakikad3, IniRead($settingloc, "carsamba", "dakikad3", "00"))
		Case $carsambadakikad4
			IniWrite($settingloc, "carsamba", "dakikad4", GUICtrlRead($carsambadakikad4))
			GUICtrlSetData($carsambadakikad4, IniRead($settingloc, "carsamba", "dakikad4", "00"))
		Case $carsambadakikad5
			IniWrite($settingloc, "carsamba", "dakikad5", GUICtrlRead($carsambadakikad5))
			GUICtrlSetData($carsambadakikad5, IniRead($settingloc, "carsamba", "dakikad5", "00"))
		Case $carsambadakikad6
			IniWrite($settingloc, "carsamba", "dakikad6", GUICtrlRead($carsambadakikad6))
			GUICtrlSetData($carsambadakikad6, IniRead($settingloc, "carsamba", "dakikad6", "00"))
		Case $carsambadakikad7
			IniWrite($settingloc, "carsamba", "dakikad7", GUICtrlRead($carsambadakikad7))
			GUICtrlSetData($carsambadakikad7, IniRead($settingloc, "carsamba", "dakikad7", "00"))
		Case $carsambadakikad8
			IniWrite($settingloc, "carsamba", "dakikad8", GUICtrlRead($carsambadakikad8))
			GUICtrlSetData($carsambadakikad8, IniRead($settingloc, "carsamba", "dakikad8", "00"))
		Case $carsambadakikad9
			IniWrite($settingloc, "carsamba", "dakikad9", GUICtrlRead($carsambadakikad9))
			GUICtrlSetData($carsambadakikad9, IniRead($settingloc, "carsamba", "dakikad9", "00"))
		Case $carsambadakikad10
			IniWrite($settingloc, "carsamba", "dakikad10", GUICtrlRead($carsambadakikad10))
			GUICtrlSetData($carsambadakikad10, IniRead($settingloc, "carsamba", "dakikad10", "00"))
		Case $carsambadakikad11
			IniWrite($settingloc, "carsamba", "dakikad11", GUICtrlRead($carsambadakikad11))
			GUICtrlSetData($carsambadakikad11, IniRead($settingloc, "carsamba", "dakikad11", "00"))
		Case $carsambadakikad12
			IniWrite($settingloc, "carsamba", "dakikad12", GUICtrlRead($carsambadakikad12))
			GUICtrlSetData($carsambadakikad12, IniRead($settingloc, "carsamba", "dakikad12", "00"))
		Case $carsambadakikad13
			IniWrite($settingloc, "carsamba", "dakikad13", GUICtrlRead($carsambadakikad13))
			GUICtrlSetData($carsambadakikad13, IniRead($settingloc, "carsamba", "dakikad13", "00"))
		Case $carsambadakikad14
			IniWrite($settingloc, "carsamba", "dakikad14", GUICtrlRead($carsambadakikad14))
			GUICtrlSetData($carsambadakikad14, IniRead($settingloc, "carsamba", "dakikad14", "00"))
		Case $carsambadakikad15
			IniWrite($settingloc, "carsamba", "dakikad15", GUICtrlRead($carsambadakikad15))
			GUICtrlSetData($carsambadakikad15, IniRead($settingloc, "carsamba", "dakikad15", "00"))
		Case $carsambadakikad16
			IniWrite($settingloc, "carsamba", "dakikad16", GUICtrlRead($carsambadakikad16))
			GUICtrlSetData($carsambadakikad16, IniRead($settingloc, "carsamba", "dakikad16", "00"))
		Case $carsambamuzikd1
			IniWrite($settingloc, "carsamba", "muzikd1", GUICtrlRead($carsambamuzikd1))
			GUICtrlSetData($carsambamuzikd1, IniRead($settingloc, "carsamba", "muzikd1", "00"))
		Case $carsambamuzikd2
			IniWrite($settingloc, "carsamba", "muzikd2", GUICtrlRead($carsambamuzikd2))
			GUICtrlSetData($carsambamuzikd2, IniRead($settingloc, "carsamba", "muzikd2", "00"))
		Case $carsambamuzikd3
			IniWrite($settingloc, "carsamba", "muzikd3", GUICtrlRead($carsambamuzikd3))
			GUICtrlSetData($carsambamuzikd3, IniRead($settingloc, "carsamba", "muzikd3", "00"))
		Case $carsambamuzikd4
			IniWrite($settingloc, "carsamba", "muzikd4", GUICtrlRead($carsambamuzikd4))
			GUICtrlSetData($carsambamuzikd4, IniRead($settingloc, "carsamba", "muzikd4", "00"))
		Case $carsambamuzikd5
			IniWrite($settingloc, "carsamba", "muzikd5", GUICtrlRead($carsambamuzikd5))
			GUICtrlSetData($carsambamuzikd5, IniRead($settingloc, "carsamba", "muzikd5", "00"))
		Case $carsambamuzikd6
			IniWrite($settingloc, "carsamba", "muzikd6", GUICtrlRead($carsambamuzikd6))
			GUICtrlSetData($carsambamuzikd6, IniRead($settingloc, "carsamba", "muzikd6", "00"))
		Case $carsambamuzikd7
			IniWrite($settingloc, "carsamba", "muzikd7", GUICtrlRead($carsambamuzikd7))
			GUICtrlSetData($carsambamuzikd7, IniRead($settingloc, "carsamba", "muzikd7", "00"))
		Case $carsambamuzikd8
			IniWrite($settingloc, "carsamba", "muzikd8", GUICtrlRead($carsambamuzikd8))
			GUICtrlSetData($carsambamuzikd8, IniRead($settingloc, "carsamba", "muzikd8", "00"))
		Case $carsambamuzikd9
			IniWrite($settingloc, "carsamba", "muzikd9", GUICtrlRead($carsambamuzikd9))
			GUICtrlSetData($carsambamuzikd9, IniRead($settingloc, "carsamba", "muzikd9", "00"))
		Case $carsambamuzikd10
			IniWrite($settingloc, "carsamba", "muzikd10", GUICtrlRead($carsambamuzikd10))
			GUICtrlSetData($carsambamuzikd10, IniRead($settingloc, "carsamba", "muzikd10", "00"))
		Case $carsambamuzikd11
			IniWrite($settingloc, "carsamba", "muzikd11", GUICtrlRead($carsambamuzikd11))
			GUICtrlSetData($carsambamuzikd11, IniRead($settingloc, "carsamba", "muzikd11", "00"))
		Case $carsambamuzikd12
			IniWrite($settingloc, "carsamba", "muzikd12", GUICtrlRead($carsambamuzikd12))
			GUICtrlSetData($carsambamuzikd12, IniRead($settingloc, "carsamba", "muzikd12", "00"))
		Case $carsambamuzikd13
			IniWrite($settingloc, "carsamba", "muzikd13", GUICtrlRead($carsambamuzikd13))
			GUICtrlSetData($carsambamuzikd13, IniRead($settingloc, "carsamba", "muzikd13", "00"))
		Case $carsambamuzikd14
			IniWrite($settingloc, "carsamba", "muzikd14", GUICtrlRead($carsambamuzikd14))
			GUICtrlSetData($carsambamuzikd14, IniRead($settingloc, "carsamba", "muzikd14", "00"))
		Case $carsambamuzikd15
			IniWrite($settingloc, "carsamba", "muzikd15", GUICtrlRead($carsambamuzikd15))
			GUICtrlSetData($carsambamuzikd15, IniRead($settingloc, "carsamba", "muzikd15", "00"))
		Case $carsambamuzikd16
			IniWrite($settingloc, "carsamba", "muzikd16", GUICtrlRead($carsambamuzikd16))
			GUICtrlSetData($carsambamuzikd16, IniRead($settingloc, "carsamba", "muzikd16", "00"))
		Case $carsambamolad1
			IniWrite($settingloc, "carsamba", "mola", "1")
		Case $carsambamolad2
			IniWrite($settingloc, "carsamba", "mola", "2")
		Case $carsambamolad3
			IniWrite($settingloc, "carsamba", "mola", "3")
		Case $carsambamolad4
			IniWrite($settingloc, "carsamba", "mola", "4")
		Case $carsambamolad5
			IniWrite($settingloc, "carsamba", "mola", "5")
		Case $carsambamolad6
			IniWrite($settingloc, "carsamba", "mola", "6")
		Case $carsambamolad7
			IniWrite($settingloc, "carsamba", "mola", "7")
		Case $carsambamolad8
			IniWrite($settingloc, "carsamba", "mola", "8")
		Case $carsambamolad9
			IniWrite($settingloc, "carsamba", "mola", "9")
		Case $carsambamolad10
			IniWrite($settingloc, "carsamba", "mola", "10")
		Case $carsambamolad11
			IniWrite($settingloc, "carsamba", "mola", "11")
		Case $carsambamolad12
			IniWrite($settingloc, "carsamba", "mola", "12")
		Case $carsambamolad13
			IniWrite($settingloc, "carsamba", "mola", "13")
		Case $carsambamolad14
			IniWrite($settingloc, "carsamba", "mola", "14")
		Case $carsambamolad15
			IniWrite($settingloc, "carsamba", "mola", "15")
		Case $carsambamolad16
			IniWrite($settingloc, "carsamba", "mola", "16")
		Case $carsambamolayok
			IniWrite($settingloc, "carsamba", "mola", "0")
		Case $persembed1
			If IniRead($settingloc, "persembe", "persembed1", "1") = 1 Then
				IniWrite($settingloc, "persembe", "persembed1", "0")
			Else
				IniWrite($settingloc, "persembe", "persembed1", "1")
			EndIf
		Case $persembed2
			If IniRead($settingloc, "persembe", "persembed2", "1") = 1 Then
				IniWrite($settingloc, "persembe", "persembed2", "0")
			Else
				IniWrite($settingloc, "persembe", "persembed2", "1")
			EndIf
		Case $persembed3
			If IniRead($settingloc, "persembe", "persembed3", "1") = 1 Then
				IniWrite($settingloc, "persembe", "persembed3", "0")
			Else
				IniWrite($settingloc, "persembe", "persembed3", "1")
			EndIf
		Case $persembed4
			If IniRead($settingloc, "persembe", "persembed4", "1") = 1 Then
				IniWrite($settingloc, "persembe", "persembed4", "0")
			Else
				IniWrite($settingloc, "persembe", "persembed4", "1")
			EndIf
		Case $persembed5
			If IniRead($settingloc, "persembe", "persembed5", "1") = 1 Then
				IniWrite($settingloc, "persembe", "persembed5", "0")
			Else
				IniWrite($settingloc, "persembe", "persembed5", "1")
			EndIf
		Case $persembed6
			If IniRead($settingloc, "persembe", "persembed6", "1") = 1 Then
				IniWrite($settingloc, "persembe", "persembed6", "0")
			Else
				IniWrite($settingloc, "persembe", "persembed6", "1")
			EndIf
		Case $persembed7
			If IniRead($settingloc, "persembe", "persembed7", "1") = 1 Then
				IniWrite($settingloc, "persembe", "persembed7", "0")
			Else
				IniWrite($settingloc, "persembe", "persembed7", "1")
			EndIf
		Case $persembed8
			If IniRead($settingloc, "persembe", "persembed8", "1") = 1 Then
				IniWrite($settingloc, "persembe", "persembed8", "0")
			Else
				IniWrite($settingloc, "persembe", "persembed8", "1")
			EndIf
		Case $persembed9
			If IniRead($settingloc, "persembe", "persembed9", "1") = 1 Then
				IniWrite($settingloc, "persembe", "persembed9", "0")
			Else
				IniWrite($settingloc, "persembe", "persembed9", "1")
			EndIf
		Case $persembed10
			If IniRead($settingloc, "persembe", "persembed10", "1") = 1 Then
				IniWrite($settingloc, "persembe", "persembed10", "0")
			Else
				IniWrite($settingloc, "persembe", "persembed10", "1")
			EndIf
		Case $persembed11
			If IniRead($settingloc, "persembe", "persembed11", "1") = 1 Then
				IniWrite($settingloc, "persembe", "persembed11", "0")
			Else
				IniWrite($settingloc, "persembe", "persembed11", "1")
			EndIf
		Case $persembed12
			If IniRead($settingloc, "persembe", "persembed12", "1") = 1 Then
				IniWrite($settingloc, "persembe", "persembed12", "0")
			Else
				IniWrite($settingloc, "persembe", "persembed12", "1")
			EndIf
		Case $persembed13
			If IniRead($settingloc, "persembe", "persembed13", "1") = 1 Then
				IniWrite($settingloc, "persembe", "persembed13", "0")
			Else
				IniWrite($settingloc, "persembe", "persembed13", "1")
			EndIf
		Case $persembed14
			If IniRead($settingloc, "persembe", "persembed14", "1") = 1 Then
				IniWrite($settingloc, "persembe", "persembed14", "0")
			Else
				IniWrite($settingloc, "persembe", "persembed14", "1")
			EndIf
		Case $persembed15
			If IniRead($settingloc, "persembe", "persembed15", "1") = 1 Then
				IniWrite($settingloc, "persembe", "persembed15", "0")
			Else
				IniWrite($settingloc, "persembe", "persembed15", "1")
			EndIf
		Case $persembed16
			If IniRead($settingloc, "persembe", "persembed16", "1") = 1 Then
				IniWrite($settingloc, "persembe", "persembed16", "0")
			Else
				IniWrite($settingloc, "persembe", "persembed16", "1")
			EndIf
		Case $persembesaatd1
			IniWrite($settingloc, "persembe", "saatd1", GUICtrlRead($persembesaatd1))
			GUICtrlSetData($persembesaatd1, IniRead($settingloc, "persembe", "saatd1", "00"))
		Case $persembesaatd2
			IniWrite($settingloc, "persembe", "saatd2", GUICtrlRead($persembesaatd2))
			GUICtrlSetData($persembesaatd2, IniRead($settingloc, "persembe", "saatd2", "00"))
		Case $persembesaatd3
			IniWrite($settingloc, "persembe", "saatd3", GUICtrlRead($persembesaatd3))
			GUICtrlSetData($persembesaatd3, IniRead($settingloc, "persembe", "saatd3", "00"))
		Case $persembesaatd4
			IniWrite($settingloc, "persembe", "saatd4", GUICtrlRead($persembesaatd4))
			GUICtrlSetData($persembesaatd4, IniRead($settingloc, "persembe", "saatd4", "00"))
		Case $persembesaatd5
			IniWrite($settingloc, "persembe", "saatd5", GUICtrlRead($persembesaatd5))
			GUICtrlSetData($persembesaatd5, IniRead($settingloc, "persembe", "saatd5", "00"))
		Case $persembesaatd6
			IniWrite($settingloc, "persembe", "saatd6", GUICtrlRead($persembesaatd6))
			GUICtrlSetData($persembesaatd6, IniRead($settingloc, "persembe", "saatd6", "00"))
		Case $persembesaatd7
			IniWrite($settingloc, "persembe", "saatd7", GUICtrlRead($persembesaatd7))
			GUICtrlSetData($persembesaatd7, IniRead($settingloc, "persembe", "saatd7", "00"))
		Case $persembesaatd8
			IniWrite($settingloc, "persembe", "saatd8", GUICtrlRead($persembesaatd8))
			GUICtrlSetData($persembesaatd8, IniRead($settingloc, "persembe", "saatd8", "00"))
		Case $persembesaatd9
			IniWrite($settingloc, "persembe", "saatd9", GUICtrlRead($persembesaatd9))
			GUICtrlSetData($persembesaatd9, IniRead($settingloc, "persembe", "saatd9", "00"))
		Case $persembesaatd10
			IniWrite($settingloc, "persembe", "saatd10", GUICtrlRead($persembesaatd10))
			GUICtrlSetData($persembesaatd10, IniRead($settingloc, "persembe", "saatd10", "00"))
		Case $persembesaatd11
			IniWrite($settingloc, "persembe", "saatd11", GUICtrlRead($persembesaatd11))
			GUICtrlSetData($persembesaatd11, IniRead($settingloc, "persembe", "saatd11", "00"))
		Case $persembesaatd12
			IniWrite($settingloc, "persembe", "saatd12", GUICtrlRead($persembesaatd12))
			GUICtrlSetData($persembesaatd12, IniRead($settingloc, "persembe", "saatd12", "00"))
		Case $persembesaatd13
			IniWrite($settingloc, "persembe", "saatd13", GUICtrlRead($persembesaatd13))
			GUICtrlSetData($persembesaatd13, IniRead($settingloc, "persembe", "saatd13", "00"))
		Case $persembesaatd14
			IniWrite($settingloc, "persembe", "saatd14", GUICtrlRead($persembesaatd14))
			GUICtrlSetData($persembesaatd14, IniRead($settingloc, "persembe", "saatd14", "00"))
		Case $persembesaatd15
			IniWrite($settingloc, "persembe", "saatd15", GUICtrlRead($persembesaatd15))
			GUICtrlSetData($persembesaatd15, IniRead($settingloc, "persembe", "saatd15", "00"))
		Case $persembesaatd16
			IniWrite($settingloc, "persembe", "saatd16", GUICtrlRead($persembesaatd16))
			GUICtrlSetData($persembesaatd16, IniRead($settingloc, "persembe", "saatd16", "00"))
		Case $persembedakikad1
			IniWrite($settingloc, "persembe", "dakikad1", GUICtrlRead($persembedakikad1))
			GUICtrlSetData($persembedakikad1, IniRead($settingloc, "persembe", "dakikad1", "00"))
		Case $persembedakikad2
			IniWrite($settingloc, "persembe", "dakikad2", GUICtrlRead($persembedakikad2))
			GUICtrlSetData($persembedakikad2, IniRead($settingloc, "persembe", "dakikad2", "00"))
		Case $persembedakikad3
			IniWrite($settingloc, "persembe", "dakikad3", GUICtrlRead($persembedakikad3))
			GUICtrlSetData($persembedakikad3, IniRead($settingloc, "persembe", "dakikad3", "00"))
		Case $persembedakikad4
			IniWrite($settingloc, "persembe", "dakikad4", GUICtrlRead($persembedakikad4))
			GUICtrlSetData($persembedakikad4, IniRead($settingloc, "persembe", "dakikad4", "00"))
		Case $persembedakikad5
			IniWrite($settingloc, "persembe", "dakikad5", GUICtrlRead($persembedakikad5))
			GUICtrlSetData($persembedakikad5, IniRead($settingloc, "persembe", "dakikad5", "00"))
		Case $persembedakikad6
			IniWrite($settingloc, "persembe", "dakikad6", GUICtrlRead($persembedakikad6))
			GUICtrlSetData($persembedakikad6, IniRead($settingloc, "persembe", "dakikad6", "00"))
		Case $persembedakikad7
			IniWrite($settingloc, "persembe", "dakikad7", GUICtrlRead($persembedakikad7))
			GUICtrlSetData($persembedakikad7, IniRead($settingloc, "persembe", "dakikad7", "00"))
		Case $persembedakikad8
			IniWrite($settingloc, "persembe", "dakikad8", GUICtrlRead($persembedakikad8))
			GUICtrlSetData($persembedakikad8, IniRead($settingloc, "persembe", "dakikad8", "00"))
		Case $persembedakikad9
			IniWrite($settingloc, "persembe", "dakikad9", GUICtrlRead($persembedakikad9))
			GUICtrlSetData($persembedakikad9, IniRead($settingloc, "persembe", "dakikad9", "00"))
		Case $persembedakikad10
			IniWrite($settingloc, "persembe", "dakikad10", GUICtrlRead($persembedakikad10))
			GUICtrlSetData($persembedakikad10, IniRead($settingloc, "persembe", "dakikad10", "00"))
		Case $persembedakikad11
			IniWrite($settingloc, "persembe", "dakikad11", GUICtrlRead($persembedakikad11))
			GUICtrlSetData($persembedakikad11, IniRead($settingloc, "persembe", "dakikad11", "00"))
		Case $persembedakikad12
			IniWrite($settingloc, "persembe", "dakikad12", GUICtrlRead($persembedakikad12))
			GUICtrlSetData($persembedakikad12, IniRead($settingloc, "persembe", "dakikad12", "00"))
		Case $persembedakikad13
			IniWrite($settingloc, "persembe", "dakikad13", GUICtrlRead($persembedakikad13))
			GUICtrlSetData($persembedakikad13, IniRead($settingloc, "persembe", "dakikad13", "00"))
		Case $persembedakikad14
			IniWrite($settingloc, "persembe", "dakikad14", GUICtrlRead($persembedakikad14))
			GUICtrlSetData($persembedakikad14, IniRead($settingloc, "persembe", "dakikad14", "00"))
		Case $persembedakikad15
			IniWrite($settingloc, "persembe", "dakikad15", GUICtrlRead($persembedakikad15))
			GUICtrlSetData($persembedakikad15, IniRead($settingloc, "persembe", "dakikad15", "00"))
		Case $persembedakikad16
			IniWrite($settingloc, "persembe", "dakikad16", GUICtrlRead($persembedakikad16))
			GUICtrlSetData($persembedakikad16, IniRead($settingloc, "persembe", "dakikad16", "00"))
		Case $persembemuzikd1
			IniWrite($settingloc, "persembe", "muzikd1", GUICtrlRead($persembemuzikd1))
			GUICtrlSetData($persembemuzikd1, IniRead($settingloc, "persembe", "muzikd1", "00"))
		Case $persembemuzikd2
			IniWrite($settingloc, "persembe", "muzikd2", GUICtrlRead($persembemuzikd2))
			GUICtrlSetData($persembemuzikd2, IniRead($settingloc, "persembe", "muzikd2", "00"))
		Case $persembemuzikd3
			IniWrite($settingloc, "persembe", "muzikd3", GUICtrlRead($persembemuzikd3))
			GUICtrlSetData($persembemuzikd3, IniRead($settingloc, "persembe", "muzikd3", "00"))
		Case $persembemuzikd4
			IniWrite($settingloc, "persembe", "muzikd4", GUICtrlRead($persembemuzikd4))
			GUICtrlSetData($persembemuzikd4, IniRead($settingloc, "persembe", "muzikd4", "00"))
		Case $persembemuzikd5
			IniWrite($settingloc, "persembe", "muzikd5", GUICtrlRead($persembemuzikd5))
			GUICtrlSetData($persembemuzikd5, IniRead($settingloc, "persembe", "muzikd5", "00"))
		Case $persembemuzikd6
			IniWrite($settingloc, "persembe", "muzikd6", GUICtrlRead($persembemuzikd6))
			GUICtrlSetData($persembemuzikd6, IniRead($settingloc, "persembe", "muzikd6", "00"))
		Case $persembemuzikd7
			IniWrite($settingloc, "persembe", "muzikd7", GUICtrlRead($persembemuzikd7))
			GUICtrlSetData($persembemuzikd7, IniRead($settingloc, "persembe", "muzikd7", "00"))
		Case $persembemuzikd8
			IniWrite($settingloc, "persembe", "muzikd8", GUICtrlRead($persembemuzikd8))
			GUICtrlSetData($persembemuzikd8, IniRead($settingloc, "persembe", "muzikd8", "00"))
		Case $persembemuzikd9
			IniWrite($settingloc, "persembe", "muzikd9", GUICtrlRead($persembemuzikd9))
			GUICtrlSetData($persembemuzikd9, IniRead($settingloc, "persembe", "muzikd9", "00"))
		Case $persembemuzikd10
			IniWrite($settingloc, "persembe", "muzikd10", GUICtrlRead($persembemuzikd10))
			GUICtrlSetData($persembemuzikd10, IniRead($settingloc, "persembe", "muzikd10", "00"))
		Case $persembemuzikd11
			IniWrite($settingloc, "persembe", "muzikd11", GUICtrlRead($persembemuzikd11))
			GUICtrlSetData($persembemuzikd11, IniRead($settingloc, "persembe", "muzikd11", "00"))
		Case $persembemuzikd12
			IniWrite($settingloc, "persembe", "muzikd12", GUICtrlRead($persembemuzikd12))
			GUICtrlSetData($persembemuzikd12, IniRead($settingloc, "persembe", "muzikd12", "00"))
		Case $persembemuzikd13
			IniWrite($settingloc, "persembe", "muzikd13", GUICtrlRead($persembemuzikd13))
			GUICtrlSetData($persembemuzikd13, IniRead($settingloc, "persembe", "muzikd13", "00"))
		Case $persembemuzikd14
			IniWrite($settingloc, "persembe", "muzikd14", GUICtrlRead($persembemuzikd14))
			GUICtrlSetData($persembemuzikd14, IniRead($settingloc, "persembe", "muzikd14", "00"))
		Case $persembemuzikd15
			IniWrite($settingloc, "persembe", "muzikd15", GUICtrlRead($persembemuzikd15))
			GUICtrlSetData($persembemuzikd15, IniRead($settingloc, "persembe", "muzikd15", "00"))
		Case $persembemuzikd16
			IniWrite($settingloc, "persembe", "muzikd16", GUICtrlRead($persembemuzikd16))
			GUICtrlSetData($persembemuzikd16, IniRead($settingloc, "persembe", "muzikd16", "00"))
		Case $persembemolad1
			IniWrite($settingloc, "persembe", "mola", "1")
		Case $persembemolad2
			IniWrite($settingloc, "persembe", "mola", "2")
		Case $persembemolad3
			IniWrite($settingloc, "persembe", "mola", "3")
		Case $persembemolad4
			IniWrite($settingloc, "persembe", "mola", "4")
		Case $persembemolad5
			IniWrite($settingloc, "persembe", "mola", "5")
		Case $persembemolad6
			IniWrite($settingloc, "persembe", "mola", "6")
		Case $persembemolad7
			IniWrite($settingloc, "persembe", "mola", "7")
		Case $persembemolad8
			IniWrite($settingloc, "persembe", "mola", "8")
		Case $persembemolad9
			IniWrite($settingloc, "persembe", "mola", "9")
		Case $persembemolad10
			IniWrite($settingloc, "persembe", "mola", "10")
		Case $persembemolad11
			IniWrite($settingloc, "persembe", "mola", "11")
		Case $persembemolad12
			IniWrite($settingloc, "persembe", "mola", "12")
		Case $persembemolad13
			IniWrite($settingloc, "persembe", "mola", "13")
		Case $persembemolad14
			IniWrite($settingloc, "persembe", "mola", "14")
		Case $persembemolad15
			IniWrite($settingloc, "persembe", "mola", "15")
		Case $persembemolad16
			IniWrite($settingloc, "persembe", "mola", "16")
		Case $persembemolayok
			IniWrite($settingloc, "persembe", "mola", "0")
		Case $cumad1
			If IniRead($settingloc, "cuma", "cumad1", "1") = 1 Then
				IniWrite($settingloc, "cuma", "cumad1", "0")
			Else
				IniWrite($settingloc, "cuma", "cumad1", "1")
			EndIf
		Case $cumad2
			If IniRead($settingloc, "cuma", "cumad2", "1") = 1 Then
				IniWrite($settingloc, "cuma", "cumad2", "0")
			Else
				IniWrite($settingloc, "cuma", "cumad2", "1")
			EndIf
		Case $cumad3
			If IniRead($settingloc, "cuma", "cumad3", "1") = 1 Then
				IniWrite($settingloc, "cuma", "cumad3", "0")
			Else
				IniWrite($settingloc, "cuma", "cumad3", "1")
			EndIf
		Case $cumad4
			If IniRead($settingloc, "cuma", "cumad4", "1") = 1 Then
				IniWrite($settingloc, "cuma", "cumad4", "0")
			Else
				IniWrite($settingloc, "cuma", "cumad4", "1")
			EndIf
		Case $cumad5
			If IniRead($settingloc, "cuma", "cumad5", "1") = 1 Then
				IniWrite($settingloc, "cuma", "cumad5", "0")
			Else
				IniWrite($settingloc, "cuma", "cumad5", "1")
			EndIf
		Case $cumad6
			If IniRead($settingloc, "cuma", "cumad6", "1") = 1 Then
				IniWrite($settingloc, "cuma", "cumad6", "0")
			Else
				IniWrite($settingloc, "cuma", "cumad6", "1")
			EndIf
		Case $cumad7
			If IniRead($settingloc, "cuma", "cumad7", "1") = 1 Then
				IniWrite($settingloc, "cuma", "cumad7", "0")
			Else
				IniWrite($settingloc, "cuma", "cumad7", "1")
			EndIf
		Case $cumad8
			If IniRead($settingloc, "cuma", "cumad8", "1") = 1 Then
				IniWrite($settingloc, "cuma", "cumad8", "0")
			Else
				IniWrite($settingloc, "cuma", "cumad8", "1")
			EndIf
		Case $cumad9
			If IniRead($settingloc, "cuma", "cumad9", "1") = 1 Then
				IniWrite($settingloc, "cuma", "cumad9", "0")
			Else
				IniWrite($settingloc, "cuma", "cumad9", "1")
			EndIf
		Case $cumad10
			If IniRead($settingloc, "cuma", "cumad10", "1") = 1 Then
				IniWrite($settingloc, "cuma", "cumad10", "0")
			Else
				IniWrite($settingloc, "cuma", "cumad10", "1")
			EndIf
		Case $cumad11
			If IniRead($settingloc, "cuma", "cumad11", "1") = 1 Then
				IniWrite($settingloc, "cuma", "cumad11", "0")
			Else
				IniWrite($settingloc, "cuma", "cumad11", "1")
			EndIf
		Case $cumad12
			If IniRead($settingloc, "cuma", "cumad12", "1") = 1 Then
				IniWrite($settingloc, "cuma", "cumad12", "0")
			Else
				IniWrite($settingloc, "cuma", "cumad12", "1")
			EndIf
		Case $cumad13
			If IniRead($settingloc, "cuma", "cumad13", "1") = 1 Then
				IniWrite($settingloc, "cuma", "cumad13", "0")
			Else
				IniWrite($settingloc, "cuma", "cumad13", "1")
			EndIf
		Case $cumad14
			If IniRead($settingloc, "cuma", "cumad14", "1") = 1 Then
				IniWrite($settingloc, "cuma", "cumad14", "0")
			Else
				IniWrite($settingloc, "cuma", "cumad14", "1")
			EndIf
		Case $cumad15
			If IniRead($settingloc, "cuma", "cumad15", "1") = 1 Then
				IniWrite($settingloc, "cuma", "cumad15", "0")
			Else
				IniWrite($settingloc, "cuma", "cumad15", "1")
			EndIf
		Case $cumad16
			If IniRead($settingloc, "cuma", "cumad16", "1") = 1 Then
				IniWrite($settingloc, "cuma", "cumad16", "0")
			Else
				IniWrite($settingloc, "cuma", "cumad16", "1")
			EndIf
		Case $cumasaatd1
			IniWrite($settingloc, "cuma", "saatd1", GUICtrlRead($cumasaatd1))
			GUICtrlSetData($cumasaatd1, IniRead($settingloc, "cuma", "saatd1", "00"))
		Case $cumasaatd2
			IniWrite($settingloc, "cuma", "saatd2", GUICtrlRead($cumasaatd2))
			GUICtrlSetData($cumasaatd2, IniRead($settingloc, "cuma", "saatd2", "00"))
		Case $cumasaatd3
			IniWrite($settingloc, "cuma", "saatd3", GUICtrlRead($cumasaatd3))
			GUICtrlSetData($cumasaatd3, IniRead($settingloc, "cuma", "saatd3", "00"))
		Case $cumasaatd4
			IniWrite($settingloc, "cuma", "saatd4", GUICtrlRead($cumasaatd4))
			GUICtrlSetData($cumasaatd4, IniRead($settingloc, "cuma", "saatd4", "00"))
		Case $cumasaatd5
			IniWrite($settingloc, "cuma", "saatd5", GUICtrlRead($cumasaatd5))
			GUICtrlSetData($cumasaatd5, IniRead($settingloc, "cuma", "saatd5", "00"))
		Case $cumasaatd6
			IniWrite($settingloc, "cuma", "saatd6", GUICtrlRead($cumasaatd6))
			GUICtrlSetData($cumasaatd6, IniRead($settingloc, "cuma", "saatd6", "00"))
		Case $cumasaatd7
			IniWrite($settingloc, "cuma", "saatd7", GUICtrlRead($cumasaatd7))
			GUICtrlSetData($cumasaatd7, IniRead($settingloc, "cuma", "saatd7", "00"))
		Case $cumasaatd8
			IniWrite($settingloc, "cuma", "saatd8", GUICtrlRead($cumasaatd8))
			GUICtrlSetData($cumasaatd8, IniRead($settingloc, "cuma", "saatd8", "00"))
		Case $cumasaatd9
			IniWrite($settingloc, "cuma", "saatd9", GUICtrlRead($cumasaatd9))
			GUICtrlSetData($cumasaatd9, IniRead($settingloc, "cuma", "saatd9", "00"))
		Case $cumasaatd10
			IniWrite($settingloc, "cuma", "saatd10", GUICtrlRead($cumasaatd10))
			GUICtrlSetData($cumasaatd10, IniRead($settingloc, "cuma", "saatd10", "00"))
		Case $cumasaatd11
			IniWrite($settingloc, "cuma", "saatd11", GUICtrlRead($cumasaatd11))
			GUICtrlSetData($cumasaatd11, IniRead($settingloc, "cuma", "saatd11", "00"))
		Case $cumasaatd12
			IniWrite($settingloc, "cuma", "saatd12", GUICtrlRead($cumasaatd12))
			GUICtrlSetData($cumasaatd12, IniRead($settingloc, "cuma", "saatd12", "00"))
		Case $cumasaatd13
			IniWrite($settingloc, "cuma", "saatd13", GUICtrlRead($cumasaatd13))
			GUICtrlSetData($cumasaatd13, IniRead($settingloc, "cuma", "saatd13", "00"))
		Case $cumasaatd14
			IniWrite($settingloc, "cuma", "saatd14", GUICtrlRead($cumasaatd14))
			GUICtrlSetData($cumasaatd14, IniRead($settingloc, "cuma", "saatd14", "00"))
		Case $cumasaatd15
			IniWrite($settingloc, "cuma", "saatd15", GUICtrlRead($cumasaatd15))
			GUICtrlSetData($cumasaatd15, IniRead($settingloc, "cuma", "saatd15", "00"))
		Case $cumasaatd16
			IniWrite($settingloc, "cuma", "saatd16", GUICtrlRead($cumasaatd16))
			GUICtrlSetData($cumasaatd16, IniRead($settingloc, "cuma", "saatd16", "00"))
		Case $cumadakikad1
			IniWrite($settingloc, "cuma", "dakikad1", GUICtrlRead($cumadakikad1))
			GUICtrlSetData($cumadakikad1, IniRead($settingloc, "cuma", "dakikad1", "00"))
		Case $cumadakikad2
			IniWrite($settingloc, "cuma", "dakikad2", GUICtrlRead($cumadakikad2))
			GUICtrlSetData($cumadakikad2, IniRead($settingloc, "cuma", "dakikad2", "00"))
		Case $cumadakikad3
			IniWrite($settingloc, "cuma", "dakikad3", GUICtrlRead($cumadakikad3))
			GUICtrlSetData($cumadakikad3, IniRead($settingloc, "cuma", "dakikad3", "00"))
		Case $cumadakikad4
			IniWrite($settingloc, "cuma", "dakikad4", GUICtrlRead($cumadakikad4))
			GUICtrlSetData($cumadakikad4, IniRead($settingloc, "cuma", "dakikad4", "00"))
		Case $cumadakikad5
			IniWrite($settingloc, "cuma", "dakikad5", GUICtrlRead($cumadakikad5))
			GUICtrlSetData($cumadakikad5, IniRead($settingloc, "cuma", "dakikad5", "00"))
		Case $cumadakikad6
			IniWrite($settingloc, "cuma", "dakikad6", GUICtrlRead($cumadakikad6))
			GUICtrlSetData($cumadakikad6, IniRead($settingloc, "cuma", "dakikad6", "00"))
		Case $cumadakikad7
			IniWrite($settingloc, "cuma", "dakikad7", GUICtrlRead($cumadakikad7))
			GUICtrlSetData($cumadakikad7, IniRead($settingloc, "cuma", "dakikad7", "00"))
		Case $cumadakikad8
			IniWrite($settingloc, "cuma", "dakikad8", GUICtrlRead($cumadakikad8))
			GUICtrlSetData($cumadakikad8, IniRead($settingloc, "cuma", "dakikad8", "00"))
		Case $cumadakikad9
			IniWrite($settingloc, "cuma", "dakikad9", GUICtrlRead($cumadakikad9))
			GUICtrlSetData($cumadakikad9, IniRead($settingloc, "cuma", "dakikad9", "00"))
		Case $cumadakikad10
			IniWrite($settingloc, "cuma", "dakikad10", GUICtrlRead($cumadakikad10))
			GUICtrlSetData($cumadakikad10, IniRead($settingloc, "cuma", "dakikad10", "00"))
		Case $cumadakikad11
			IniWrite($settingloc, "cuma", "dakikad11", GUICtrlRead($cumadakikad11))
			GUICtrlSetData($cumadakikad11, IniRead($settingloc, "cuma", "dakikad11", "00"))
		Case $cumadakikad12
			IniWrite($settingloc, "cuma", "dakikad12", GUICtrlRead($cumadakikad12))
			GUICtrlSetData($cumadakikad12, IniRead($settingloc, "cuma", "dakikad12", "00"))
		Case $cumadakikad13
			IniWrite($settingloc, "cuma", "dakikad13", GUICtrlRead($cumadakikad13))
			GUICtrlSetData($cumadakikad13, IniRead($settingloc, "cuma", "dakikad13", "00"))
		Case $cumadakikad14
			IniWrite($settingloc, "cuma", "dakikad14", GUICtrlRead($cumadakikad14))
			GUICtrlSetData($cumadakikad14, IniRead($settingloc, "cuma", "dakikad14", "00"))
		Case $cumadakikad15
			IniWrite($settingloc, "cuma", "dakikad15", GUICtrlRead($cumadakikad15))
			GUICtrlSetData($cumadakikad15, IniRead($settingloc, "cuma", "dakikad15", "00"))
		Case $cumadakikad16
			IniWrite($settingloc, "cuma", "dakikad16", GUICtrlRead($cumadakikad16))
			GUICtrlSetData($cumadakikad16, IniRead($settingloc, "cuma", "dakikad16", "00"))
		Case $cumamuzikd1
			IniWrite($settingloc, "cuma", "muzikd1", GUICtrlRead($cumamuzikd1))
			GUICtrlSetData($cumamuzikd1, IniRead($settingloc, "cuma", "muzikd1", "00"))
		Case $cumamuzikd2
			IniWrite($settingloc, "cuma", "muzikd2", GUICtrlRead($cumamuzikd2))
			GUICtrlSetData($cumamuzikd2, IniRead($settingloc, "cuma", "muzikd2", "00"))
		Case $cumamuzikd3
			IniWrite($settingloc, "cuma", "muzikd3", GUICtrlRead($cumamuzikd3))
			GUICtrlSetData($cumamuzikd3, IniRead($settingloc, "cuma", "muzikd3", "00"))
		Case $cumamuzikd4
			IniWrite($settingloc, "cuma", "muzikd4", GUICtrlRead($cumamuzikd4))
			GUICtrlSetData($cumamuzikd4, IniRead($settingloc, "cuma", "muzikd4", "00"))
		Case $cumamuzikd5
			IniWrite($settingloc, "cuma", "muzikd5", GUICtrlRead($cumamuzikd5))
			GUICtrlSetData($cumamuzikd5, IniRead($settingloc, "cuma", "muzikd5", "00"))
		Case $cumamuzikd6
			IniWrite($settingloc, "cuma", "muzikd6", GUICtrlRead($cumamuzikd6))
			GUICtrlSetData($cumamuzikd6, IniRead($settingloc, "cuma", "muzikd6", "00"))
		Case $cumamuzikd7
			IniWrite($settingloc, "cuma", "muzikd7", GUICtrlRead($cumamuzikd7))
			GUICtrlSetData($cumamuzikd7, IniRead($settingloc, "cuma", "muzikd7", "00"))
		Case $cumamuzikd8
			IniWrite($settingloc, "cuma", "muzikd8", GUICtrlRead($cumamuzikd8))
			GUICtrlSetData($cumamuzikd8, IniRead($settingloc, "cuma", "muzikd8", "00"))
		Case $cumamuzikd9
			IniWrite($settingloc, "cuma", "muzikd9", GUICtrlRead($cumamuzikd9))
			GUICtrlSetData($cumamuzikd9, IniRead($settingloc, "cuma", "muzikd9", "00"))
		Case $cumamuzikd10
			IniWrite($settingloc, "cuma", "muzikd10", GUICtrlRead($cumamuzikd10))
			GUICtrlSetData($cumamuzikd10, IniRead($settingloc, "cuma", "muzikd10", "00"))
		Case $cumamuzikd11
			IniWrite($settingloc, "cuma", "muzikd11", GUICtrlRead($cumamuzikd11))
			GUICtrlSetData($cumamuzikd11, IniRead($settingloc, "cuma", "muzikd11", "00"))
		Case $cumamuzikd12
			IniWrite($settingloc, "cuma", "muzikd12", GUICtrlRead($cumamuzikd12))
			GUICtrlSetData($cumamuzikd12, IniRead($settingloc, "cuma", "muzikd12", "00"))
		Case $cumamuzikd13
			IniWrite($settingloc, "cuma", "muzikd13", GUICtrlRead($cumamuzikd13))
			GUICtrlSetData($cumamuzikd13, IniRead($settingloc, "cuma", "muzikd13", "00"))
		Case $cumamuzikd14
			IniWrite($settingloc, "cuma", "muzikd14", GUICtrlRead($cumamuzikd14))
			GUICtrlSetData($cumamuzikd14, IniRead($settingloc, "cuma", "muzikd14", "00"))
		Case $cumamuzikd15
			IniWrite($settingloc, "cuma", "muzikd15", GUICtrlRead($cumamuzikd15))
			GUICtrlSetData($cumamuzikd15, IniRead($settingloc, "cuma", "muzikd15", "00"))
		Case $cumamuzikd16
			IniWrite($settingloc, "cuma", "muzikd16", GUICtrlRead($cumamuzikd16))
			GUICtrlSetData($cumamuzikd16, IniRead($settingloc, "cuma", "muzikd16", "00"))
		Case $cumamolad1
			IniWrite($settingloc, "cuma", "mola", "1")
		Case $cumamolad2
			IniWrite($settingloc, "cuma", "mola", "2")
		Case $cumamolad3
			IniWrite($settingloc, "cuma", "mola", "3")
		Case $cumamolad4
			IniWrite($settingloc, "cuma", "mola", "4")
		Case $cumamolad5
			IniWrite($settingloc, "cuma", "mola", "5")
		Case $cumamolad6
			IniWrite($settingloc, "cuma", "mola", "6")
		Case $cumamolad7
			IniWrite($settingloc, "cuma", "mola", "7")
		Case $cumamolad8
			IniWrite($settingloc, "cuma", "mola", "8")
		Case $cumamolad9
			IniWrite($settingloc, "cuma", "mola", "9")
		Case $cumamolad10
			IniWrite($settingloc, "cuma", "mola", "10")
		Case $cumamolad11
			IniWrite($settingloc, "cuma", "mola", "11")
		Case $cumamolad12
			IniWrite($settingloc, "cuma", "mola", "12")
		Case $cumamolad13
			IniWrite($settingloc, "cuma", "mola", "13")
		Case $cumamolad14
			IniWrite($settingloc, "cuma", "mola", "14")
		Case $cumamolad15
			IniWrite($settingloc, "cuma", "mola", "15")
		Case $cumamolad16
			IniWrite($settingloc, "cuma", "mola", "16")
		Case $cumamolayok
			IniWrite($settingloc, "cuma", "mola", "0")
		Case $ctesid1
			If IniRead($settingloc, "ctesi", "ctesid1", "1") = 1 Then
				IniWrite($settingloc, "ctesi", "ctesid1", "0")
			Else
				IniWrite($settingloc, "ctesi", "ctesid1", "1")
			EndIf
		Case $ctesid2
			If IniRead($settingloc, "ctesi", "ctesid2", "1") = 1 Then
				IniWrite($settingloc, "ctesi", "ctesid2", "0")
			Else
				IniWrite($settingloc, "ctesi", "ctesid2", "1")
			EndIf
		Case $ctesid3
			If IniRead($settingloc, "ctesi", "ctesid3", "1") = 1 Then
				IniWrite($settingloc, "ctesi", "ctesid3", "0")
			Else
				IniWrite($settingloc, "ctesi", "ctesid3", "1")
			EndIf
		Case $ctesid4
			If IniRead($settingloc, "ctesi", "ctesid4", "1") = 1 Then
				IniWrite($settingloc, "ctesi", "ctesid4", "0")
			Else
				IniWrite($settingloc, "ctesi", "ctesid4", "1")
			EndIf
		Case $ctesid5
			If IniRead($settingloc, "ctesi", "ctesid5", "1") = 1 Then
				IniWrite($settingloc, "ctesi", "ctesid5", "0")
			Else
				IniWrite($settingloc, "ctesi", "ctesid5", "1")
			EndIf
		Case $ctesid6
			If IniRead($settingloc, "ctesi", "ctesid6", "1") = 1 Then
				IniWrite($settingloc, "ctesi", "ctesid6", "0")
			Else
				IniWrite($settingloc, "ctesi", "ctesid6", "1")
			EndIf
		Case $ctesid7
			If IniRead($settingloc, "ctesi", "ctesid7", "1") = 1 Then
				IniWrite($settingloc, "ctesi", "ctesid7", "0")
			Else
				IniWrite($settingloc, "ctesi", "ctesid7", "1")
			EndIf
		Case $ctesid8
			If IniRead($settingloc, "ctesi", "ctesid8", "1") = 1 Then
				IniWrite($settingloc, "ctesi", "ctesid8", "0")
			Else
				IniWrite($settingloc, "ctesi", "ctesid8", "1")
			EndIf
		Case $ctesid9
			If IniRead($settingloc, "ctesi", "ctesid9", "1") = 1 Then
				IniWrite($settingloc, "ctesi", "ctesid9", "0")
			Else
				IniWrite($settingloc, "ctesi", "ctesid9", "1")
			EndIf
		Case $ctesid10
			If IniRead($settingloc, "ctesi", "ctesid10", "1") = 1 Then
				IniWrite($settingloc, "ctesi", "ctesid10", "0")
			Else
				IniWrite($settingloc, "ctesi", "ctesid10", "1")
			EndIf
		Case $ctesid11
			If IniRead($settingloc, "ctesi", "ctesid11", "1") = 1 Then
				IniWrite($settingloc, "ctesi", "ctesid11", "0")
			Else
				IniWrite($settingloc, "ctesi", "ctesid11", "1")
			EndIf
		Case $ctesid12
			If IniRead($settingloc, "ctesi", "ctesid12", "1") = 1 Then
				IniWrite($settingloc, "ctesi", "ctesid12", "0")
			Else
				IniWrite($settingloc, "ctesi", "ctesid12", "1")
			EndIf
		Case $ctesid13
			If IniRead($settingloc, "ctesi", "ctesid13", "1") = 1 Then
				IniWrite($settingloc, "ctesi", "ctesid13", "0")
			Else
				IniWrite($settingloc, "ctesi", "ctesid13", "1")
			EndIf
		Case $ctesid14
			If IniRead($settingloc, "ctesi", "ctesid14", "1") = 1 Then
				IniWrite($settingloc, "ctesi", "ctesid14", "0")
			Else
				IniWrite($settingloc, "ctesi", "ctesid14", "1")
			EndIf
		Case $ctesid15
			If IniRead($settingloc, "ctesi", "ctesid15", "1") = 1 Then
				IniWrite($settingloc, "ctesi", "ctesid15", "0")
			Else
				IniWrite($settingloc, "ctesi", "ctesid15", "1")
			EndIf
		Case $ctesid16
			If IniRead($settingloc, "ctesi", "ctesid16", "1") = 1 Then
				IniWrite($settingloc, "ctesi", "ctesid16", "0")
			Else
				IniWrite($settingloc, "ctesi", "ctesid16", "1")
			EndIf
		Case $ctesisaatd1
			IniWrite($settingloc, "ctesi", "saatd1", GUICtrlRead($ctesisaatd1))
			GUICtrlSetData($ctesisaatd1, IniRead($settingloc, "ctesi", "saatd1", "00"))
		Case $ctesisaatd2
			IniWrite($settingloc, "ctesi", "saatd2", GUICtrlRead($ctesisaatd2))
			GUICtrlSetData($ctesisaatd2, IniRead($settingloc, "ctesi", "saatd2", "00"))
		Case $ctesisaatd3
			IniWrite($settingloc, "ctesi", "saatd3", GUICtrlRead($ctesisaatd3))
			GUICtrlSetData($ctesisaatd3, IniRead($settingloc, "ctesi", "saatd3", "00"))
		Case $ctesisaatd4
			IniWrite($settingloc, "ctesi", "saatd4", GUICtrlRead($ctesisaatd4))
			GUICtrlSetData($ctesisaatd4, IniRead($settingloc, "ctesi", "saatd4", "00"))
		Case $ctesisaatd5
			IniWrite($settingloc, "ctesi", "saatd5", GUICtrlRead($ctesisaatd5))
			GUICtrlSetData($ctesisaatd5, IniRead($settingloc, "ctesi", "saatd5", "00"))
		Case $ctesisaatd6
			IniWrite($settingloc, "ctesi", "saatd6", GUICtrlRead($ctesisaatd6))
			GUICtrlSetData($ctesisaatd6, IniRead($settingloc, "ctesi", "saatd6", "00"))
		Case $ctesisaatd7
			IniWrite($settingloc, "ctesi", "saatd7", GUICtrlRead($ctesisaatd7))
			GUICtrlSetData($ctesisaatd7, IniRead($settingloc, "ctesi", "saatd7", "00"))
		Case $ctesisaatd8
			IniWrite($settingloc, "ctesi", "saatd8", GUICtrlRead($ctesisaatd8))
			GUICtrlSetData($ctesisaatd8, IniRead($settingloc, "ctesi", "saatd8", "00"))
		Case $ctesisaatd9
			IniWrite($settingloc, "ctesi", "saatd9", GUICtrlRead($ctesisaatd9))
			GUICtrlSetData($ctesisaatd9, IniRead($settingloc, "ctesi", "saatd9", "00"))
		Case $ctesisaatd10
			IniWrite($settingloc, "ctesi", "saatd10", GUICtrlRead($ctesisaatd10))
			GUICtrlSetData($ctesisaatd10, IniRead($settingloc, "ctesi", "saatd10", "00"))
		Case $ctesisaatd11
			IniWrite($settingloc, "ctesi", "saatd11", GUICtrlRead($ctesisaatd11))
			GUICtrlSetData($ctesisaatd11, IniRead($settingloc, "ctesi", "saatd11", "00"))
		Case $ctesisaatd12
			IniWrite($settingloc, "ctesi", "saatd12", GUICtrlRead($ctesisaatd12))
			GUICtrlSetData($ctesisaatd12, IniRead($settingloc, "ctesi", "saatd12", "00"))
		Case $ctesisaatd13
			IniWrite($settingloc, "ctesi", "saatd13", GUICtrlRead($ctesisaatd13))
			GUICtrlSetData($ctesisaatd13, IniRead($settingloc, "ctesi", "saatd13", "00"))
		Case $ctesisaatd14
			IniWrite($settingloc, "ctesi", "saatd14", GUICtrlRead($ctesisaatd14))
			GUICtrlSetData($ctesisaatd14, IniRead($settingloc, "ctesi", "saatd14", "00"))
		Case $ctesisaatd15
			IniWrite($settingloc, "ctesi", "saatd15", GUICtrlRead($ctesisaatd15))
			GUICtrlSetData($ctesisaatd15, IniRead($settingloc, "ctesi", "saatd15", "00"))
		Case $ctesisaatd16
			IniWrite($settingloc, "ctesi", "saatd16", GUICtrlRead($ctesisaatd16))
			GUICtrlSetData($ctesisaatd16, IniRead($settingloc, "ctesi", "saatd16", "00"))
		Case $ctesidakikad1
			IniWrite($settingloc, "ctesi", "dakikad1", GUICtrlRead($ctesidakikad1))
			GUICtrlSetData($ctesidakikad1, IniRead($settingloc, "ctesi", "dakikad1", "00"))
		Case $ctesidakikad2
			IniWrite($settingloc, "ctesi", "dakikad2", GUICtrlRead($ctesidakikad2))
			GUICtrlSetData($ctesidakikad2, IniRead($settingloc, "ctesi", "dakikad2", "00"))
		Case $ctesidakikad3
			IniWrite($settingloc, "ctesi", "dakikad3", GUICtrlRead($ctesidakikad3))
			GUICtrlSetData($ctesidakikad3, IniRead($settingloc, "ctesi", "dakikad3", "00"))
		Case $ctesidakikad4
			IniWrite($settingloc, "ctesi", "dakikad4", GUICtrlRead($ctesidakikad4))
			GUICtrlSetData($ctesidakikad4, IniRead($settingloc, "ctesi", "dakikad4", "00"))
		Case $ctesidakikad5
			IniWrite($settingloc, "ctesi", "dakikad5", GUICtrlRead($ctesidakikad5))
			GUICtrlSetData($ctesidakikad5, IniRead($settingloc, "ctesi", "dakikad5", "00"))
		Case $ctesidakikad6
			IniWrite($settingloc, "ctesi", "dakikad6", GUICtrlRead($ctesidakikad6))
			GUICtrlSetData($ctesidakikad6, IniRead($settingloc, "ctesi", "dakikad6", "00"))
		Case $ctesidakikad7
			IniWrite($settingloc, "ctesi", "dakikad7", GUICtrlRead($ctesidakikad7))
			GUICtrlSetData($ctesidakikad7, IniRead($settingloc, "ctesi", "dakikad7", "00"))
		Case $ctesidakikad8
			IniWrite($settingloc, "ctesi", "dakikad8", GUICtrlRead($ctesidakikad8))
			GUICtrlSetData($ctesidakikad8, IniRead($settingloc, "ctesi", "dakikad8", "00"))
		Case $ctesidakikad9
			IniWrite($settingloc, "ctesi", "dakikad9", GUICtrlRead($ctesidakikad9))
			GUICtrlSetData($ctesidakikad9, IniRead($settingloc, "ctesi", "dakikad9", "00"))
		Case $ctesidakikad10
			IniWrite($settingloc, "ctesi", "dakikad10", GUICtrlRead($ctesidakikad10))
			GUICtrlSetData($ctesidakikad10, IniRead($settingloc, "ctesi", "dakikad10", "00"))
		Case $ctesidakikad11
			IniWrite($settingloc, "ctesi", "dakikad11", GUICtrlRead($ctesidakikad11))
			GUICtrlSetData($ctesidakikad11, IniRead($settingloc, "ctesi", "dakikad11", "00"))
		Case $ctesidakikad12
			IniWrite($settingloc, "ctesi", "dakikad12", GUICtrlRead($ctesidakikad12))
			GUICtrlSetData($ctesidakikad12, IniRead($settingloc, "ctesi", "dakikad12", "00"))
		Case $ctesidakikad13
			IniWrite($settingloc, "ctesi", "dakikad13", GUICtrlRead($ctesidakikad13))
			GUICtrlSetData($ctesidakikad13, IniRead($settingloc, "ctesi", "dakikad13", "00"))
		Case $ctesidakikad14
			IniWrite($settingloc, "ctesi", "dakikad14", GUICtrlRead($ctesidakikad14))
			GUICtrlSetData($ctesidakikad14, IniRead($settingloc, "ctesi", "dakikad14", "00"))
		Case $ctesidakikad15
			IniWrite($settingloc, "ctesi", "dakikad15", GUICtrlRead($ctesidakikad15))
			GUICtrlSetData($ctesidakikad15, IniRead($settingloc, "ctesi", "dakikad15", "00"))
		Case $ctesidakikad16
			IniWrite($settingloc, "ctesi", "dakikad16", GUICtrlRead($ctesidakikad16))
			GUICtrlSetData($ctesidakikad16, IniRead($settingloc, "ctesi", "dakikad16", "00"))
		Case $ctesimuzikd1
			IniWrite($settingloc, "ctesi", "muzikd1", GUICtrlRead($ctesimuzikd1))
			GUICtrlSetData($ctesimuzikd1, IniRead($settingloc, "ctesi", "muzikd1", "00"))
		Case $ctesimuzikd2
			IniWrite($settingloc, "ctesi", "muzikd2", GUICtrlRead($ctesimuzikd2))
			GUICtrlSetData($ctesimuzikd2, IniRead($settingloc, "ctesi", "muzikd2", "00"))
		Case $ctesimuzikd3
			IniWrite($settingloc, "ctesi", "muzikd3", GUICtrlRead($ctesimuzikd3))
			GUICtrlSetData($ctesimuzikd3, IniRead($settingloc, "ctesi", "muzikd3", "00"))
		Case $ctesimuzikd4
			IniWrite($settingloc, "ctesi", "muzikd4", GUICtrlRead($ctesimuzikd4))
			GUICtrlSetData($ctesimuzikd4, IniRead($settingloc, "ctesi", "muzikd4", "00"))
		Case $ctesimuzikd5
			IniWrite($settingloc, "ctesi", "muzikd5", GUICtrlRead($ctesimuzikd5))
			GUICtrlSetData($ctesimuzikd5, IniRead($settingloc, "ctesi", "muzikd5", "00"))
		Case $ctesimuzikd6
			IniWrite($settingloc, "ctesi", "muzikd6", GUICtrlRead($ctesimuzikd6))
			GUICtrlSetData($ctesimuzikd6, IniRead($settingloc, "ctesi", "muzikd6", "00"))
		Case $ctesimuzikd7
			IniWrite($settingloc, "ctesi", "muzikd7", GUICtrlRead($ctesimuzikd7))
			GUICtrlSetData($ctesimuzikd7, IniRead($settingloc, "ctesi", "muzikd7", "00"))
		Case $ctesimuzikd8
			IniWrite($settingloc, "ctesi", "muzikd8", GUICtrlRead($ctesimuzikd8))
			GUICtrlSetData($ctesimuzikd8, IniRead($settingloc, "ctesi", "muzikd8", "00"))
		Case $ctesimuzikd9
			IniWrite($settingloc, "ctesi", "muzikd9", GUICtrlRead($ctesimuzikd9))
			GUICtrlSetData($ctesimuzikd9, IniRead($settingloc, "ctesi", "muzikd9", "00"))
		Case $ctesimuzikd10
			IniWrite($settingloc, "ctesi", "muzikd10", GUICtrlRead($ctesimuzikd10))
			GUICtrlSetData($ctesimuzikd10, IniRead($settingloc, "ctesi", "muzikd10", "00"))
		Case $ctesimuzikd11
			IniWrite($settingloc, "ctesi", "muzikd11", GUICtrlRead($ctesimuzikd11))
			GUICtrlSetData($ctesimuzikd11, IniRead($settingloc, "ctesi", "muzikd11", "00"))
		Case $ctesimuzikd12
			IniWrite($settingloc, "ctesi", "muzikd12", GUICtrlRead($ctesimuzikd12))
			GUICtrlSetData($ctesimuzikd12, IniRead($settingloc, "ctesi", "muzikd12", "00"))
		Case $ctesimuzikd13
			IniWrite($settingloc, "ctesi", "muzikd13", GUICtrlRead($ctesimuzikd13))
			GUICtrlSetData($ctesimuzikd13, IniRead($settingloc, "ctesi", "muzikd13", "00"))
		Case $ctesimuzikd14
			IniWrite($settingloc, "ctesi", "muzikd14", GUICtrlRead($ctesimuzikd14))
			GUICtrlSetData($ctesimuzikd14, IniRead($settingloc, "ctesi", "muzikd14", "00"))
		Case $ctesimuzikd15
			IniWrite($settingloc, "ctesi", "muzikd15", GUICtrlRead($ctesimuzikd15))
			GUICtrlSetData($ctesimuzikd15, IniRead($settingloc, "ctesi", "muzikd15", "00"))
		Case $ctesimuzikd16
			IniWrite($settingloc, "ctesi", "muzikd16", GUICtrlRead($ctesimuzikd16))
			GUICtrlSetData($ctesimuzikd16, IniRead($settingloc, "ctesi", "muzikd16", "00"))
		Case $ctesimolad1
			IniWrite($settingloc, "ctesi", "mola", "1")
		Case $ctesimolad2
			IniWrite($settingloc, "ctesi", "mola", "2")
		Case $ctesimolad3
			IniWrite($settingloc, "ctesi", "mola", "3")
		Case $ctesimolad4
			IniWrite($settingloc, "ctesi", "mola", "4")
		Case $ctesimolad5
			IniWrite($settingloc, "ctesi", "mola", "5")
		Case $ctesimolad6
			IniWrite($settingloc, "ctesi", "mola", "6")
		Case $ctesimolad7
			IniWrite($settingloc, "ctesi", "mola", "7")
		Case $ctesimolad8
			IniWrite($settingloc, "ctesi", "mola", "8")
		Case $ctesimolad9
			IniWrite($settingloc, "ctesi", "mola", "9")
		Case $ctesimolad10
			IniWrite($settingloc, "ctesi", "mola", "10")
		Case $ctesimolad11
			IniWrite($settingloc, "ctesi", "mola", "11")
		Case $ctesimolad12
			IniWrite($settingloc, "ctesi", "mola", "12")
		Case $ctesimolad13
			IniWrite($settingloc, "ctesi", "mola", "13")
		Case $ctesimolad14
			IniWrite($settingloc, "ctesi", "mola", "14")
		Case $ctesimolad15
			IniWrite($settingloc, "ctesi", "mola", "15")
		Case $ctesimolad16
			IniWrite($settingloc, "ctesi", "mola", "16")
		Case $ctesimolayok
			IniWrite($settingloc, "ctesi", "mola", "0")
		Case $pazard1
			If IniRead($settingloc, "pazar", "pazard1", "1") = 1 Then
				IniWrite($settingloc, "pazar", "pazard1", "0")
			Else
				IniWrite($settingloc, "pazar", "pazard1", "1")
			EndIf
		Case $pazard2
			If IniRead($settingloc, "pazar", "pazard2", "1") = 1 Then
				IniWrite($settingloc, "pazar", "pazard2", "0")
			Else
				IniWrite($settingloc, "pazar", "pazard2", "1")
			EndIf
		Case $pazard3
			If IniRead($settingloc, "pazar", "pazard3", "1") = 1 Then
				IniWrite($settingloc, "pazar", "pazard3", "0")
			Else
				IniWrite($settingloc, "pazar", "pazard3", "1")
			EndIf
		Case $pazard4
			If IniRead($settingloc, "pazar", "pazard4", "1") = 1 Then
				IniWrite($settingloc, "pazar", "pazard4", "0")
			Else
				IniWrite($settingloc, "pazar", "pazard4", "1")
			EndIf
		Case $pazard5
			If IniRead($settingloc, "pazar", "pazard5", "1") = 1 Then
				IniWrite($settingloc, "pazar", "pazard5", "0")
			Else
				IniWrite($settingloc, "pazar", "pazard5", "1")
			EndIf
		Case $pazard6
			If IniRead($settingloc, "pazar", "pazard6", "1") = 1 Then
				IniWrite($settingloc, "pazar", "pazard6", "0")
			Else
				IniWrite($settingloc, "pazar", "pazard6", "1")
			EndIf
		Case $pazard7
			If IniRead($settingloc, "pazar", "pazard7", "1") = 1 Then
				IniWrite($settingloc, "pazar", "pazard7", "0")
			Else
				IniWrite($settingloc, "pazar", "pazard7", "1")
			EndIf
		Case $pazard8
			If IniRead($settingloc, "pazar", "pazard8", "1") = 1 Then
				IniWrite($settingloc, "pazar", "pazard8", "0")
			Else
				IniWrite($settingloc, "pazar", "pazard8", "1")
			EndIf
		Case $pazard9
			If IniRead($settingloc, "pazar", "pazard9", "1") = 1 Then
				IniWrite($settingloc, "pazar", "pazard9", "0")
			Else
				IniWrite($settingloc, "pazar", "pazard9", "1")
			EndIf
		Case $pazard10
			If IniRead($settingloc, "pazar", "pazard10", "1") = 1 Then
				IniWrite($settingloc, "pazar", "pazard10", "0")
			Else
				IniWrite($settingloc, "pazar", "pazard10", "1")
			EndIf
		Case $pazard11
			If IniRead($settingloc, "pazar", "pazard11", "1") = 1 Then
				IniWrite($settingloc, "pazar", "pazard11", "0")
			Else
				IniWrite($settingloc, "pazar", "pazard11", "1")
			EndIf
		Case $pazard12
			If IniRead($settingloc, "pazar", "pazard12", "1") = 1 Then
				IniWrite($settingloc, "pazar", "pazard12", "0")
			Else
				IniWrite($settingloc, "pazar", "pazard12", "1")
			EndIf
		Case $pazard13
			If IniRead($settingloc, "pazar", "pazard13", "1") = 1 Then
				IniWrite($settingloc, "pazar", "pazard13", "0")
			Else
				IniWrite($settingloc, "pazar", "pazard13", "1")
			EndIf
		Case $pazard14
			If IniRead($settingloc, "pazar", "pazard14", "1") = 1 Then
				IniWrite($settingloc, "pazar", "pazard14", "0")
			Else
				IniWrite($settingloc, "pazar", "pazard14", "1")
			EndIf
		Case $pazard15
			If IniRead($settingloc, "pazar", "pazard15", "1") = 1 Then
				IniWrite($settingloc, "pazar", "pazard15", "0")
			Else
				IniWrite($settingloc, "pazar", "pazard15", "1")
			EndIf
		Case $pazard16
			If IniRead($settingloc, "pazar", "pazard16", "1") = 1 Then
				IniWrite($settingloc, "pazar", "pazard16", "0")
			Else
				IniWrite($settingloc, "pazar", "pazard16", "1")
			EndIf
		Case $pazarsaatd1
			IniWrite($settingloc, "pazar", "saatd1", GUICtrlRead($pazarsaatd1))
			GUICtrlSetData($pazarsaatd1, IniRead($settingloc, "pazar", "saatd1", "00"))
		Case $pazarsaatd2
			IniWrite($settingloc, "pazar", "saatd2", GUICtrlRead($pazarsaatd2))
			GUICtrlSetData($pazarsaatd2, IniRead($settingloc, "pazar", "saatd2", "00"))
		Case $pazarsaatd3
			IniWrite($settingloc, "pazar", "saatd3", GUICtrlRead($pazarsaatd3))
			GUICtrlSetData($pazarsaatd3, IniRead($settingloc, "pazar", "saatd3", "00"))
		Case $pazarsaatd4
			IniWrite($settingloc, "pazar", "saatd4", GUICtrlRead($pazarsaatd4))
			GUICtrlSetData($pazarsaatd4, IniRead($settingloc, "pazar", "saatd4", "00"))
		Case $pazarsaatd5
			IniWrite($settingloc, "pazar", "saatd5", GUICtrlRead($pazarsaatd5))
			GUICtrlSetData($pazarsaatd5, IniRead($settingloc, "pazar", "saatd5", "00"))
		Case $pazarsaatd6
			IniWrite($settingloc, "pazar", "saatd6", GUICtrlRead($pazarsaatd6))
			GUICtrlSetData($pazarsaatd6, IniRead($settingloc, "pazar", "saatd6", "00"))
		Case $pazarsaatd7
			IniWrite($settingloc, "pazar", "saatd7", GUICtrlRead($pazarsaatd7))
			GUICtrlSetData($pazarsaatd7, IniRead($settingloc, "pazar", "saatd7", "00"))
		Case $pazarsaatd8
			IniWrite($settingloc, "pazar", "saatd8", GUICtrlRead($pazarsaatd8))
			GUICtrlSetData($pazarsaatd8, IniRead($settingloc, "pazar", "saatd8", "00"))
		Case $pazarsaatd9
			IniWrite($settingloc, "pazar", "saatd9", GUICtrlRead($pazarsaatd9))
			GUICtrlSetData($pazarsaatd9, IniRead($settingloc, "pazar", "saatd9", "00"))
		Case $pazarsaatd10
			IniWrite($settingloc, "pazar", "saatd10", GUICtrlRead($pazarsaatd10))
			GUICtrlSetData($pazarsaatd10, IniRead($settingloc, "pazar", "saatd10", "00"))
		Case $pazarsaatd11
			IniWrite($settingloc, "pazar", "saatd11", GUICtrlRead($pazarsaatd11))
			GUICtrlSetData($pazarsaatd11, IniRead($settingloc, "pazar", "saatd11", "00"))
		Case $pazarsaatd12
			IniWrite($settingloc, "pazar", "saatd12", GUICtrlRead($pazarsaatd12))
			GUICtrlSetData($pazarsaatd12, IniRead($settingloc, "pazar", "saatd12", "00"))
		Case $pazarsaatd13
			IniWrite($settingloc, "pazar", "saatd13", GUICtrlRead($pazarsaatd13))
			GUICtrlSetData($pazarsaatd13, IniRead($settingloc, "pazar", "saatd13", "00"))
		Case $pazarsaatd14
			IniWrite($settingloc, "pazar", "saatd14", GUICtrlRead($pazarsaatd14))
			GUICtrlSetData($pazarsaatd14, IniRead($settingloc, "pazar", "saatd14", "00"))
		Case $pazarsaatd15
			IniWrite($settingloc, "pazar", "saatd15", GUICtrlRead($pazarsaatd15))
			GUICtrlSetData($pazarsaatd15, IniRead($settingloc, "pazar", "saatd15", "00"))
		Case $pazarsaatd16
			IniWrite($settingloc, "pazar", "saatd16", GUICtrlRead($pazarsaatd16))
			GUICtrlSetData($pazarsaatd16, IniRead($settingloc, "pazar", "saatd16", "00"))
		Case $pazardakikad1
			IniWrite($settingloc, "pazar", "dakikad1", GUICtrlRead($pazardakikad1))
			GUICtrlSetData($pazardakikad1, IniRead($settingloc, "pazar", "dakikad1", "00"))
		Case $pazardakikad2
			IniWrite($settingloc, "pazar", "dakikad2", GUICtrlRead($pazardakikad2))
			GUICtrlSetData($pazardakikad2, IniRead($settingloc, "pazar", "dakikad2", "00"))
		Case $pazardakikad3
			IniWrite($settingloc, "pazar", "dakikad3", GUICtrlRead($pazardakikad3))
			GUICtrlSetData($pazardakikad3, IniRead($settingloc, "pazar", "dakikad3", "00"))
		Case $pazardakikad4
			IniWrite($settingloc, "pazar", "dakikad4", GUICtrlRead($pazardakikad4))
			GUICtrlSetData($pazardakikad4, IniRead($settingloc, "pazar", "dakikad4", "00"))
		Case $pazardakikad5
			IniWrite($settingloc, "pazar", "dakikad5", GUICtrlRead($pazardakikad5))
			GUICtrlSetData($pazardakikad5, IniRead($settingloc, "pazar", "dakikad5", "00"))
		Case $pazardakikad6
			IniWrite($settingloc, "pazar", "dakikad6", GUICtrlRead($pazardakikad6))
			GUICtrlSetData($pazardakikad6, IniRead($settingloc, "pazar", "dakikad6", "00"))
		Case $pazardakikad7
			IniWrite($settingloc, "pazar", "dakikad7", GUICtrlRead($pazardakikad7))
			GUICtrlSetData($pazardakikad7, IniRead($settingloc, "pazar", "dakikad7", "00"))
		Case $pazardakikad8
			IniWrite($settingloc, "pazar", "dakikad8", GUICtrlRead($pazardakikad8))
			GUICtrlSetData($pazardakikad8, IniRead($settingloc, "pazar", "dakikad8", "00"))
		Case $pazardakikad9
			IniWrite($settingloc, "pazar", "dakikad9", GUICtrlRead($pazardakikad9))
			GUICtrlSetData($pazardakikad9, IniRead($settingloc, "pazar", "dakikad9", "00"))
		Case $pazardakikad10
			IniWrite($settingloc, "pazar", "dakikad10", GUICtrlRead($pazardakikad10))
			GUICtrlSetData($pazardakikad10, IniRead($settingloc, "pazar", "dakikad10", "00"))
		Case $pazardakikad11
			IniWrite($settingloc, "pazar", "dakikad11", GUICtrlRead($pazardakikad11))
			GUICtrlSetData($pazardakikad11, IniRead($settingloc, "pazar", "dakikad11", "00"))
		Case $pazardakikad12
			IniWrite($settingloc, "pazar", "dakikad12", GUICtrlRead($pazardakikad12))
			GUICtrlSetData($pazardakikad12, IniRead($settingloc, "pazar", "dakikad12", "00"))
		Case $pazardakikad13
			IniWrite($settingloc, "pazar", "dakikad13", GUICtrlRead($pazardakikad13))
			GUICtrlSetData($pazardakikad13, IniRead($settingloc, "pazar", "dakikad13", "00"))
		Case $pazardakikad14
			IniWrite($settingloc, "pazar", "dakikad14", GUICtrlRead($pazardakikad14))
			GUICtrlSetData($pazardakikad14, IniRead($settingloc, "pazar", "dakikad14", "00"))
		Case $pazardakikad15
			IniWrite($settingloc, "pazar", "dakikad15", GUICtrlRead($pazardakikad15))
			GUICtrlSetData($pazardakikad15, IniRead($settingloc, "pazar", "dakikad15", "00"))
		Case $pazardakikad16
			IniWrite($settingloc, "pazar", "dakikad16", GUICtrlRead($pazardakikad16))
			GUICtrlSetData($pazardakikad16, IniRead($settingloc, "pazar", "dakikad16", "00"))
		Case $pazarmuzikd1
			IniWrite($settingloc, "pazar", "muzikd1", GUICtrlRead($pazarmuzikd1))
			GUICtrlSetData($pazarmuzikd1, IniRead($settingloc, "pazar", "muzikd1", "00"))
		Case $pazarmuzikd2
			IniWrite($settingloc, "pazar", "muzikd2", GUICtrlRead($pazarmuzikd2))
			GUICtrlSetData($pazarmuzikd2, IniRead($settingloc, "pazar", "muzikd2", "00"))
		Case $pazarmuzikd3
			IniWrite($settingloc, "pazar", "muzikd3", GUICtrlRead($pazarmuzikd3))
			GUICtrlSetData($pazarmuzikd3, IniRead($settingloc, "pazar", "muzikd3", "00"))
		Case $pazarmuzikd4
			IniWrite($settingloc, "pazar", "muzikd4", GUICtrlRead($pazarmuzikd4))
			GUICtrlSetData($pazarmuzikd4, IniRead($settingloc, "pazar", "muzikd4", "00"))
		Case $pazarmuzikd5
			IniWrite($settingloc, "pazar", "muzikd5", GUICtrlRead($pazarmuzikd5))
			GUICtrlSetData($pazarmuzikd5, IniRead($settingloc, "pazar", "muzikd5", "00"))
		Case $pazarmuzikd6
			IniWrite($settingloc, "pazar", "muzikd6", GUICtrlRead($pazarmuzikd6))
			GUICtrlSetData($pazarmuzikd6, IniRead($settingloc, "pazar", "muzikd6", "00"))
		Case $pazarmuzikd7
			IniWrite($settingloc, "pazar", "muzikd7", GUICtrlRead($pazarmuzikd7))
			GUICtrlSetData($pazarmuzikd7, IniRead($settingloc, "pazar", "muzikd7", "00"))
		Case $pazarmuzikd8
			IniWrite($settingloc, "pazar", "muzikd8", GUICtrlRead($pazarmuzikd8))
			GUICtrlSetData($pazarmuzikd8, IniRead($settingloc, "pazar", "muzikd8", "00"))
		Case $pazarmuzikd9
			IniWrite($settingloc, "pazar", "muzikd9", GUICtrlRead($pazarmuzikd9))
			GUICtrlSetData($pazarmuzikd9, IniRead($settingloc, "pazar", "muzikd9", "00"))
		Case $pazarmuzikd10
			IniWrite($settingloc, "pazar", "muzikd10", GUICtrlRead($pazarmuzikd10))
			GUICtrlSetData($pazarmuzikd10, IniRead($settingloc, "pazar", "muzikd10", "00"))
		Case $pazarmuzikd11
			IniWrite($settingloc, "pazar", "muzikd11", GUICtrlRead($pazarmuzikd11))
			GUICtrlSetData($pazarmuzikd11, IniRead($settingloc, "pazar", "muzikd11", "00"))
		Case $pazarmuzikd12
			IniWrite($settingloc, "pazar", "muzikd12", GUICtrlRead($pazarmuzikd12))
			GUICtrlSetData($pazarmuzikd12, IniRead($settingloc, "pazar", "muzikd12", "00"))
		Case $pazarmuzikd13
			IniWrite($settingloc, "pazar", "muzikd13", GUICtrlRead($pazarmuzikd13))
			GUICtrlSetData($pazarmuzikd13, IniRead($settingloc, "pazar", "muzikd13", "00"))
		Case $pazarmuzikd14
			IniWrite($settingloc, "pazar", "muzikd14", GUICtrlRead($pazarmuzikd14))
			GUICtrlSetData($pazarmuzikd14, IniRead($settingloc, "pazar", "muzikd14", "00"))
		Case $pazarmuzikd15
			IniWrite($settingloc, "pazar", "muzikd15", GUICtrlRead($pazarmuzikd15))
			GUICtrlSetData($pazarmuzikd15, IniRead($settingloc, "pazar", "muzikd15", "00"))
		Case $pazarmuzikd16
			IniWrite($settingloc, "pazar", "muzikd16", GUICtrlRead($pazarmuzikd16))
			GUICtrlSetData($pazarmuzikd16, IniRead($settingloc, "pazar", "muzikd16", "00"))
		Case $pazarmolad1
			IniWrite($settingloc, "pazar", "mola", "1")
		Case $pazarmolad2
			IniWrite($settingloc, "pazar", "mola", "2")
		Case $pazarmolad3
			IniWrite($settingloc, "pazar", "mola", "3")
		Case $pazarmolad4
			IniWrite($settingloc, "pazar", "mola", "4")
		Case $pazarmolad5
			IniWrite($settingloc, "pazar", "mola", "5")
		Case $pazarmolad6
			IniWrite($settingloc, "pazar", "mola", "6")
		Case $pazarmolad7
			IniWrite($settingloc, "pazar", "mola", "7")
		Case $pazarmolad8
			IniWrite($settingloc, "pazar", "mola", "8")
		Case $pazarmolad9
			IniWrite($settingloc, "pazar", "mola", "9")
		Case $pazarmolad10
			IniWrite($settingloc, "pazar", "mola", "10")
		Case $pazarmolad11
			IniWrite($settingloc, "pazar", "mola", "11")
		Case $pazarmolad12
			IniWrite($settingloc, "pazar", "mola", "12")
		Case $pazarmolad13
			IniWrite($settingloc, "pazar", "mola", "13")
		Case $pazarmolad14
			IniWrite($settingloc, "pazar", "mola", "14")
		Case $pazarmolad15
			IniWrite($settingloc, "pazar", "mola", "15")
		Case $pazarmolad16
			IniWrite($settingloc, "pazar", "mola", "16")
		Case $pazarmolayok
			IniWrite($settingloc, "pazar", "mola", "0")
		Case $ptesikopyala
			If GUICtrlRead($ptesikopyalanacak) = "P.Tesi" Then
				IniWrite($settingloc, "ptesi", "saatd1", GUICtrlRead($ptesisaatd1))
				IniWrite($settingloc, "ptesi", "saatd2", GUICtrlRead($ptesisaatd2))
				IniWrite($settingloc, "ptesi", "saatd3", GUICtrlRead($ptesisaatd3))
				IniWrite($settingloc, "ptesi", "saatd4", GUICtrlRead($ptesisaatd4))
				IniWrite($settingloc, "ptesi", "saatd5", GUICtrlRead($ptesisaatd5))
				IniWrite($settingloc, "ptesi", "saatd6", GUICtrlRead($ptesisaatd6))
				IniWrite($settingloc, "ptesi", "saatd7", GUICtrlRead($ptesisaatd7))
				IniWrite($settingloc, "ptesi", "saatd8", GUICtrlRead($ptesisaatd8))
				IniWrite($settingloc, "ptesi", "saatd9", GUICtrlRead($ptesisaatd9))
				IniWrite($settingloc, "ptesi", "saatd10", GUICtrlRead($ptesisaatd10))
				IniWrite($settingloc, "ptesi", "saatd11", GUICtrlRead($ptesisaatd11))
				IniWrite($settingloc, "ptesi", "saatd12", GUICtrlRead($ptesisaatd12))
				IniWrite($settingloc, "ptesi", "saatd13", GUICtrlRead($ptesisaatd13))
				IniWrite($settingloc, "ptesi", "saatd14", GUICtrlRead($ptesisaatd14))
				IniWrite($settingloc, "ptesi", "saatd15", GUICtrlRead($ptesisaatd15))
				IniWrite($settingloc, "ptesi", "saatd16", GUICtrlRead($ptesisaatd16))

				IniWrite($settingloc, "ptesi", "dakikad1", GUICtrlRead($ptesidakikad1))
				IniWrite($settingloc, "ptesi", "dakikad2", GUICtrlRead($ptesidakikad2))
				IniWrite($settingloc, "ptesi", "dakikad3", GUICtrlRead($ptesidakikad3))
				IniWrite($settingloc, "ptesi", "dakikad4", GUICtrlRead($ptesidakikad4))
				IniWrite($settingloc, "ptesi", "dakikad5", GUICtrlRead($ptesidakikad5))
				IniWrite($settingloc, "ptesi", "dakikad6", GUICtrlRead($ptesidakikad6))
				IniWrite($settingloc, "ptesi", "dakikad7", GUICtrlRead($ptesidakikad7))
				IniWrite($settingloc, "ptesi", "dakikad8", GUICtrlRead($ptesidakikad8))
				IniWrite($settingloc, "ptesi", "dakikad9", GUICtrlRead($ptesidakikad9))
				IniWrite($settingloc, "ptesi", "dakikad10", GUICtrlRead($ptesidakikad10))
				IniWrite($settingloc, "ptesi", "dakikad11", GUICtrlRead($ptesidakikad11))
				IniWrite($settingloc, "ptesi", "dakikad12", GUICtrlRead($ptesidakikad12))
				IniWrite($settingloc, "ptesi", "dakikad13", GUICtrlRead($ptesidakikad13))
				IniWrite($settingloc, "ptesi", "dakikad14", GUICtrlRead($ptesidakikad14))
				IniWrite($settingloc, "ptesi", "dakikad15", GUICtrlRead($ptesidakikad15))
				IniWrite($settingloc, "ptesi", "dakikad16", GUICtrlRead($ptesidakikad16))

				IniWrite($settingloc, "ptesi", "muzikd1", GUICtrlRead($ptesimuzikd1))
				IniWrite($settingloc, "ptesi", "muzikd2", GUICtrlRead($ptesimuzikd2))
				IniWrite($settingloc, "ptesi", "muzikd3", GUICtrlRead($ptesimuzikd3))
				IniWrite($settingloc, "ptesi", "muzikd4", GUICtrlRead($ptesimuzikd4))
				IniWrite($settingloc, "ptesi", "muzikd5", GUICtrlRead($ptesimuzikd5))
				IniWrite($settingloc, "ptesi", "muzikd6", GUICtrlRead($ptesimuzikd6))
				IniWrite($settingloc, "ptesi", "muzikd7", GUICtrlRead($ptesimuzikd7))
				IniWrite($settingloc, "ptesi", "muzikd8", GUICtrlRead($ptesimuzikd8))
				IniWrite($settingloc, "ptesi", "muzikd9", GUICtrlRead($ptesimuzikd9))
				IniWrite($settingloc, "ptesi", "muzikd10", GUICtrlRead($ptesimuzikd10))
				IniWrite($settingloc, "ptesi", "muzikd11", GUICtrlRead($ptesimuzikd11))
				IniWrite($settingloc, "ptesi", "muzikd12", GUICtrlRead($ptesimuzikd12))
				IniWrite($settingloc, "ptesi", "muzikd13", GUICtrlRead($ptesimuzikd13))
				IniWrite($settingloc, "ptesi", "muzikd14", GUICtrlRead($ptesimuzikd14))
				IniWrite($settingloc, "ptesi", "muzikd15", GUICtrlRead($ptesimuzikd15))
				IniWrite($settingloc, "ptesi", "muzikd16", GUICtrlRead($ptesimuzikd16))

				IniWrite($settingloc, "ptesi", "ptesid1", IniRead($settingloc, "ptesi", "ptesid1", "1"))
				IniWrite($settingloc, "ptesi", "ptesid2", IniRead($settingloc, "ptesi", "ptesid2", "1"))
				IniWrite($settingloc, "ptesi", "ptesid3", IniRead($settingloc, "ptesi", "ptesid3", "1"))
				IniWrite($settingloc, "ptesi", "ptesid4", IniRead($settingloc, "ptesi", "ptesid4", "1"))
				IniWrite($settingloc, "ptesi", "ptesid5", IniRead($settingloc, "ptesi", "ptesid5", "1"))
				IniWrite($settingloc, "ptesi", "ptesid6", IniRead($settingloc, "ptesi", "ptesid6", "1"))
				IniWrite($settingloc, "ptesi", "ptesid7", IniRead($settingloc, "ptesi", "ptesid7", "1"))
				IniWrite($settingloc, "ptesi", "ptesid8", IniRead($settingloc, "ptesi", "ptesid8", "1"))
				IniWrite($settingloc, "ptesi", "ptesid9", IniRead($settingloc, "ptesi", "ptesid9", "1"))
				IniWrite($settingloc, "ptesi", "ptesid10", IniRead($settingloc, "ptesi", "ptesid10", "1"))
				IniWrite($settingloc, "ptesi", "ptesid11", IniRead($settingloc, "ptesi", "ptesid11", "1"))
				IniWrite($settingloc, "ptesi", "ptesid12", IniRead($settingloc, "ptesi", "ptesid12", "1"))
				IniWrite($settingloc, "ptesi", "ptesid13", IniRead($settingloc, "ptesi", "ptesid13", "1"))
				IniWrite($settingloc, "ptesi", "ptesid14", IniRead($settingloc, "ptesi", "ptesid14", "1"))
				IniWrite($settingloc, "ptesi", "ptesid15", IniRead($settingloc, "ptesi", "ptesid15", "1"))
				IniWrite($settingloc, "ptesi", "ptesid16", IniRead($settingloc, "ptesi", "ptesid16", "1"))

			ElseIf GUICtrlRead($ptesikopyalanacak) = "Salı" Then
				IniWrite($settingloc, "sali", "saatd1", GUICtrlRead($ptesisaatd1))
				IniWrite($settingloc, "sali", "saatd2", GUICtrlRead($ptesisaatd2))
				IniWrite($settingloc, "sali", "saatd3", GUICtrlRead($ptesisaatd3))
				IniWrite($settingloc, "sali", "saatd4", GUICtrlRead($ptesisaatd4))
				IniWrite($settingloc, "sali", "saatd5", GUICtrlRead($ptesisaatd5))
				IniWrite($settingloc, "sali", "saatd6", GUICtrlRead($ptesisaatd6))
				IniWrite($settingloc, "sali", "saatd7", GUICtrlRead($ptesisaatd7))
				IniWrite($settingloc, "sali", "saatd8", GUICtrlRead($ptesisaatd8))
				IniWrite($settingloc, "sali", "saatd9", GUICtrlRead($ptesisaatd9))
				IniWrite($settingloc, "sali", "saatd10", GUICtrlRead($ptesisaatd10))
				IniWrite($settingloc, "sali", "saatd11", GUICtrlRead($ptesisaatd11))
				IniWrite($settingloc, "sali", "saatd12", GUICtrlRead($ptesisaatd12))
				IniWrite($settingloc, "sali", "saatd13", GUICtrlRead($ptesisaatd13))
				IniWrite($settingloc, "sali", "saatd14", GUICtrlRead($ptesisaatd14))
				IniWrite($settingloc, "sali", "saatd15", GUICtrlRead($ptesisaatd15))
				IniWrite($settingloc, "sali", "saatd16", GUICtrlRead($ptesisaatd16))

				IniWrite($settingloc, "sali", "dakikad1", GUICtrlRead($ptesidakikad1))
				IniWrite($settingloc, "sali", "dakikad2", GUICtrlRead($ptesidakikad2))
				IniWrite($settingloc, "sali", "dakikad3", GUICtrlRead($ptesidakikad3))
				IniWrite($settingloc, "sali", "dakikad4", GUICtrlRead($ptesidakikad4))
				IniWrite($settingloc, "sali", "dakikad5", GUICtrlRead($ptesidakikad5))
				IniWrite($settingloc, "sali", "dakikad6", GUICtrlRead($ptesidakikad6))
				IniWrite($settingloc, "sali", "dakikad7", GUICtrlRead($ptesidakikad7))
				IniWrite($settingloc, "sali", "dakikad8", GUICtrlRead($ptesidakikad8))
				IniWrite($settingloc, "sali", "dakikad9", GUICtrlRead($ptesidakikad9))
				IniWrite($settingloc, "sali", "dakikad10", GUICtrlRead($ptesidakikad10))
				IniWrite($settingloc, "sali", "dakikad11", GUICtrlRead($ptesidakikad11))
				IniWrite($settingloc, "sali", "dakikad12", GUICtrlRead($ptesidakikad12))
				IniWrite($settingloc, "sali", "dakikad13", GUICtrlRead($ptesidakikad13))
				IniWrite($settingloc, "sali", "dakikad14", GUICtrlRead($ptesidakikad14))
				IniWrite($settingloc, "sali", "dakikad15", GUICtrlRead($ptesidakikad15))
				IniWrite($settingloc, "sali", "dakikad16", GUICtrlRead($ptesidakikad16))

				IniWrite($settingloc, "sali", "muzikd1", GUICtrlRead($ptesimuzikd1))
				IniWrite($settingloc, "sali", "muzikd2", GUICtrlRead($ptesimuzikd2))
				IniWrite($settingloc, "sali", "muzikd3", GUICtrlRead($ptesimuzikd3))
				IniWrite($settingloc, "sali", "muzikd4", GUICtrlRead($ptesimuzikd4))
				IniWrite($settingloc, "sali", "muzikd5", GUICtrlRead($ptesimuzikd5))
				IniWrite($settingloc, "sali", "muzikd6", GUICtrlRead($ptesimuzikd6))
				IniWrite($settingloc, "sali", "muzikd7", GUICtrlRead($ptesimuzikd7))
				IniWrite($settingloc, "sali", "muzikd8", GUICtrlRead($ptesimuzikd8))
				IniWrite($settingloc, "sali", "muzikd9", GUICtrlRead($ptesimuzikd9))
				IniWrite($settingloc, "sali", "muzikd10", GUICtrlRead($ptesimuzikd10))
				IniWrite($settingloc, "sali", "muzikd11", GUICtrlRead($ptesimuzikd11))
				IniWrite($settingloc, "sali", "muzikd12", GUICtrlRead($ptesimuzikd12))
				IniWrite($settingloc, "sali", "muzikd13", GUICtrlRead($ptesimuzikd13))
				IniWrite($settingloc, "sali", "muzikd14", GUICtrlRead($ptesimuzikd14))
				IniWrite($settingloc, "sali", "muzikd15", GUICtrlRead($ptesimuzikd15))
				IniWrite($settingloc, "sali", "muzikd16", GUICtrlRead($ptesimuzikd16))

				IniWrite($settingloc, "sali", "salid1", IniRead($settingloc, "ptesi", "ptesid1", "1"))
				IniWrite($settingloc, "sali", "salid2", IniRead($settingloc, "ptesi", "ptesid2", "1"))
				IniWrite($settingloc, "sali", "salid3", IniRead($settingloc, "ptesi", "ptesid3", "1"))
				IniWrite($settingloc, "sali", "salid4", IniRead($settingloc, "ptesi", "ptesid4", "1"))
				IniWrite($settingloc, "sali", "salid5", IniRead($settingloc, "ptesi", "ptesid5", "1"))
				IniWrite($settingloc, "sali", "salid6", IniRead($settingloc, "ptesi", "ptesid6", "1"))
				IniWrite($settingloc, "sali", "salid7", IniRead($settingloc, "ptesi", "ptesid7", "1"))
				IniWrite($settingloc, "sali", "salid8", IniRead($settingloc, "ptesi", "ptesid8", "1"))
				IniWrite($settingloc, "sali", "salid9", IniRead($settingloc, "ptesi", "ptesid9", "1"))
				IniWrite($settingloc, "sali", "salid10", IniRead($settingloc, "ptesi", "ptesid10", "1"))
				IniWrite($settingloc, "sali", "salid11", IniRead($settingloc, "ptesi", "ptesid11", "1"))
				IniWrite($settingloc, "sali", "salid12", IniRead($settingloc, "ptesi", "ptesid12", "1"))
				IniWrite($settingloc, "sali", "salid13", IniRead($settingloc, "ptesi", "ptesid13", "1"))
				IniWrite($settingloc, "sali", "salid14", IniRead($settingloc, "ptesi", "ptesid14", "1"))
				IniWrite($settingloc, "sali", "salid15", IniRead($settingloc, "ptesi", "ptesid15", "1"))
				IniWrite($settingloc, "sali", "salid16", IniRead($settingloc, "ptesi", "ptesid16", "1"))

			ElseIf GUICtrlRead($ptesikopyalanacak) = "Çarşamba" Then
				IniWrite($settingloc, "carsamba", "saatd1", GUICtrlRead($ptesisaatd1))
				IniWrite($settingloc, "carsamba", "saatd2", GUICtrlRead($ptesisaatd2))
				IniWrite($settingloc, "carsamba", "saatd3", GUICtrlRead($ptesisaatd3))
				IniWrite($settingloc, "carsamba", "saatd4", GUICtrlRead($ptesisaatd4))
				IniWrite($settingloc, "carsamba", "saatd5", GUICtrlRead($ptesisaatd5))
				IniWrite($settingloc, "carsamba", "saatd6", GUICtrlRead($ptesisaatd6))
				IniWrite($settingloc, "carsamba", "saatd7", GUICtrlRead($ptesisaatd7))
				IniWrite($settingloc, "carsamba", "saatd8", GUICtrlRead($ptesisaatd8))
				IniWrite($settingloc, "carsamba", "saatd9", GUICtrlRead($ptesisaatd9))
				IniWrite($settingloc, "carsamba", "saatd10", GUICtrlRead($ptesisaatd10))
				IniWrite($settingloc, "carsamba", "saatd11", GUICtrlRead($ptesisaatd11))
				IniWrite($settingloc, "carsamba", "saatd12", GUICtrlRead($ptesisaatd12))
				IniWrite($settingloc, "carsamba", "saatd13", GUICtrlRead($ptesisaatd13))
				IniWrite($settingloc, "carsamba", "saatd14", GUICtrlRead($ptesisaatd14))
				IniWrite($settingloc, "carsamba", "saatd15", GUICtrlRead($ptesisaatd15))
				IniWrite($settingloc, "carsamba", "saatd16", GUICtrlRead($ptesisaatd16))

				IniWrite($settingloc, "carsamba", "dakikad1", GUICtrlRead($ptesidakikad1))
				IniWrite($settingloc, "carsamba", "dakikad2", GUICtrlRead($ptesidakikad2))
				IniWrite($settingloc, "carsamba", "dakikad3", GUICtrlRead($ptesidakikad3))
				IniWrite($settingloc, "carsamba", "dakikad4", GUICtrlRead($ptesidakikad4))
				IniWrite($settingloc, "carsamba", "dakikad5", GUICtrlRead($ptesidakikad5))
				IniWrite($settingloc, "carsamba", "dakikad6", GUICtrlRead($ptesidakikad6))
				IniWrite($settingloc, "carsamba", "dakikad7", GUICtrlRead($ptesidakikad7))
				IniWrite($settingloc, "carsamba", "dakikad8", GUICtrlRead($ptesidakikad8))
				IniWrite($settingloc, "carsamba", "dakikad9", GUICtrlRead($ptesidakikad9))
				IniWrite($settingloc, "carsamba", "dakikad10", GUICtrlRead($ptesidakikad10))
				IniWrite($settingloc, "carsamba", "dakikad11", GUICtrlRead($ptesidakikad11))
				IniWrite($settingloc, "carsamba", "dakikad12", GUICtrlRead($ptesidakikad12))
				IniWrite($settingloc, "carsamba", "dakikad13", GUICtrlRead($ptesidakikad13))
				IniWrite($settingloc, "carsamba", "dakikad14", GUICtrlRead($ptesidakikad14))
				IniWrite($settingloc, "carsamba", "dakikad15", GUICtrlRead($ptesidakikad15))
				IniWrite($settingloc, "carsamba", "dakikad16", GUICtrlRead($ptesidakikad16))

				IniWrite($settingloc, "carsamba", "muzikd1", GUICtrlRead($ptesimuzikd1))
				IniWrite($settingloc, "carsamba", "muzikd2", GUICtrlRead($ptesimuzikd2))
				IniWrite($settingloc, "carsamba", "muzikd3", GUICtrlRead($ptesimuzikd3))
				IniWrite($settingloc, "carsamba", "muzikd4", GUICtrlRead($ptesimuzikd4))
				IniWrite($settingloc, "carsamba", "muzikd5", GUICtrlRead($ptesimuzikd5))
				IniWrite($settingloc, "carsamba", "muzikd6", GUICtrlRead($ptesimuzikd6))
				IniWrite($settingloc, "carsamba", "muzikd7", GUICtrlRead($ptesimuzikd7))
				IniWrite($settingloc, "carsamba", "muzikd8", GUICtrlRead($ptesimuzikd8))
				IniWrite($settingloc, "carsamba", "muzikd9", GUICtrlRead($ptesimuzikd9))
				IniWrite($settingloc, "carsamba", "muzikd10", GUICtrlRead($ptesimuzikd10))
				IniWrite($settingloc, "carsamba", "muzikd11", GUICtrlRead($ptesimuzikd11))
				IniWrite($settingloc, "carsamba", "muzikd12", GUICtrlRead($ptesimuzikd12))
				IniWrite($settingloc, "carsamba", "muzikd13", GUICtrlRead($ptesimuzikd13))
				IniWrite($settingloc, "carsamba", "muzikd14", GUICtrlRead($ptesimuzikd14))
				IniWrite($settingloc, "carsamba", "muzikd15", GUICtrlRead($ptesimuzikd15))
				IniWrite($settingloc, "carsamba", "muzikd16", GUICtrlRead($ptesimuzikd16))

				IniWrite($settingloc, "carsamba", "carsambad1", IniRead($settingloc, "ptesi", "ptesid1", "1"))
				IniWrite($settingloc, "carsamba", "carsambad2", IniRead($settingloc, "ptesi", "ptesid2", "1"))
				IniWrite($settingloc, "carsamba", "carsambad3", IniRead($settingloc, "ptesi", "ptesid3", "1"))
				IniWrite($settingloc, "carsamba", "carsambad4", IniRead($settingloc, "ptesi", "ptesid4", "1"))
				IniWrite($settingloc, "carsamba", "carsambad5", IniRead($settingloc, "ptesi", "ptesid5", "1"))
				IniWrite($settingloc, "carsamba", "carsambad6", IniRead($settingloc, "ptesi", "ptesid6", "1"))
				IniWrite($settingloc, "carsamba", "carsambad7", IniRead($settingloc, "ptesi", "ptesid7", "1"))
				IniWrite($settingloc, "carsamba", "carsambad8", IniRead($settingloc, "ptesi", "ptesid8", "1"))
				IniWrite($settingloc, "carsamba", "carsambad9", IniRead($settingloc, "ptesi", "ptesid9", "1"))
				IniWrite($settingloc, "carsamba", "carsambad10", IniRead($settingloc, "ptesi", "ptesid10", "1"))
				IniWrite($settingloc, "carsamba", "carsambad11", IniRead($settingloc, "ptesi", "ptesid11", "1"))
				IniWrite($settingloc, "carsamba", "carsambad12", IniRead($settingloc, "ptesi", "ptesid12", "1"))
				IniWrite($settingloc, "carsamba", "carsambad13", IniRead($settingloc, "ptesi", "ptesid13", "1"))
				IniWrite($settingloc, "carsamba", "carsambad14", IniRead($settingloc, "ptesi", "ptesid14", "1"))
				IniWrite($settingloc, "carsamba", "carsambad15", IniRead($settingloc, "ptesi", "ptesid15", "1"))
				IniWrite($settingloc, "carsamba", "carsambad16", IniRead($settingloc, "ptesi", "ptesid16", "1"))

			ElseIf GUICtrlRead($ptesikopyalanacak) = "Perşembe" Then
				IniWrite($settingloc, "persembe", "saatd1", GUICtrlRead($ptesisaatd1))
				IniWrite($settingloc, "persembe", "saatd2", GUICtrlRead($ptesisaatd2))
				IniWrite($settingloc, "persembe", "saatd3", GUICtrlRead($ptesisaatd3))
				IniWrite($settingloc, "persembe", "saatd4", GUICtrlRead($ptesisaatd4))
				IniWrite($settingloc, "persembe", "saatd5", GUICtrlRead($ptesisaatd5))
				IniWrite($settingloc, "persembe", "saatd6", GUICtrlRead($ptesisaatd6))
				IniWrite($settingloc, "persembe", "saatd7", GUICtrlRead($ptesisaatd7))
				IniWrite($settingloc, "persembe", "saatd8", GUICtrlRead($ptesisaatd8))
				IniWrite($settingloc, "persembe", "saatd9", GUICtrlRead($ptesisaatd9))
				IniWrite($settingloc, "persembe", "saatd10", GUICtrlRead($ptesisaatd10))
				IniWrite($settingloc, "persembe", "saatd11", GUICtrlRead($ptesisaatd11))
				IniWrite($settingloc, "persembe", "saatd12", GUICtrlRead($ptesisaatd12))
				IniWrite($settingloc, "persembe", "saatd13", GUICtrlRead($ptesisaatd13))
				IniWrite($settingloc, "persembe", "saatd14", GUICtrlRead($ptesisaatd14))
				IniWrite($settingloc, "persembe", "saatd15", GUICtrlRead($ptesisaatd15))
				IniWrite($settingloc, "persembe", "saatd16", GUICtrlRead($ptesisaatd16))

				IniWrite($settingloc, "persembe", "dakikad1", GUICtrlRead($ptesidakikad1))
				IniWrite($settingloc, "persembe", "dakikad2", GUICtrlRead($ptesidakikad2))
				IniWrite($settingloc, "persembe", "dakikad3", GUICtrlRead($ptesidakikad3))
				IniWrite($settingloc, "persembe", "dakikad4", GUICtrlRead($ptesidakikad4))
				IniWrite($settingloc, "persembe", "dakikad5", GUICtrlRead($ptesidakikad5))
				IniWrite($settingloc, "persembe", "dakikad6", GUICtrlRead($ptesidakikad6))
				IniWrite($settingloc, "persembe", "dakikad7", GUICtrlRead($ptesidakikad7))
				IniWrite($settingloc, "persembe", "dakikad8", GUICtrlRead($ptesidakikad8))
				IniWrite($settingloc, "persembe", "dakikad9", GUICtrlRead($ptesidakikad9))
				IniWrite($settingloc, "persembe", "dakikad10", GUICtrlRead($ptesidakikad10))
				IniWrite($settingloc, "persembe", "dakikad11", GUICtrlRead($ptesidakikad11))
				IniWrite($settingloc, "persembe", "dakikad12", GUICtrlRead($ptesidakikad12))
				IniWrite($settingloc, "persembe", "dakikad13", GUICtrlRead($ptesidakikad13))
				IniWrite($settingloc, "persembe", "dakikad14", GUICtrlRead($ptesidakikad14))
				IniWrite($settingloc, "persembe", "dakikad15", GUICtrlRead($ptesidakikad15))
				IniWrite($settingloc, "persembe", "dakikad16", GUICtrlRead($ptesidakikad16))

				IniWrite($settingloc, "persembe", "muzikd1", GUICtrlRead($ptesimuzikd1))
				IniWrite($settingloc, "persembe", "muzikd2", GUICtrlRead($ptesimuzikd2))
				IniWrite($settingloc, "persembe", "muzikd3", GUICtrlRead($ptesimuzikd3))
				IniWrite($settingloc, "persembe", "muzikd4", GUICtrlRead($ptesimuzikd4))
				IniWrite($settingloc, "persembe", "muzikd5", GUICtrlRead($ptesimuzikd5))
				IniWrite($settingloc, "persembe", "muzikd6", GUICtrlRead($ptesimuzikd6))
				IniWrite($settingloc, "persembe", "muzikd7", GUICtrlRead($ptesimuzikd7))
				IniWrite($settingloc, "persembe", "muzikd8", GUICtrlRead($ptesimuzikd8))
				IniWrite($settingloc, "persembe", "muzikd9", GUICtrlRead($ptesimuzikd9))
				IniWrite($settingloc, "persembe", "muzikd10", GUICtrlRead($ptesimuzikd10))
				IniWrite($settingloc, "persembe", "muzikd11", GUICtrlRead($ptesimuzikd11))
				IniWrite($settingloc, "persembe", "muzikd12", GUICtrlRead($ptesimuzikd12))
				IniWrite($settingloc, "persembe", "muzikd13", GUICtrlRead($ptesimuzikd13))
				IniWrite($settingloc, "persembe", "muzikd14", GUICtrlRead($ptesimuzikd14))
				IniWrite($settingloc, "persembe", "muzikd15", GUICtrlRead($ptesimuzikd15))
				IniWrite($settingloc, "persembe", "muzikd16", GUICtrlRead($ptesimuzikd16))

				IniWrite($settingloc, "persembe", "persembed1", IniRead($settingloc, "ptesi", "ptesid1", "1"))
				IniWrite($settingloc, "persembe", "persembed2", IniRead($settingloc, "ptesi", "ptesid2", "1"))
				IniWrite($settingloc, "persembe", "persembed3", IniRead($settingloc, "ptesi", "ptesid3", "1"))
				IniWrite($settingloc, "persembe", "persembed4", IniRead($settingloc, "ptesi", "ptesid4", "1"))
				IniWrite($settingloc, "persembe", "persembed5", IniRead($settingloc, "ptesi", "ptesid5", "1"))
				IniWrite($settingloc, "persembe", "persembed6", IniRead($settingloc, "ptesi", "ptesid6", "1"))
				IniWrite($settingloc, "persembe", "persembed7", IniRead($settingloc, "ptesi", "ptesid7", "1"))
				IniWrite($settingloc, "persembe", "persembed8", IniRead($settingloc, "ptesi", "ptesid8", "1"))
				IniWrite($settingloc, "persembe", "persembed9", IniRead($settingloc, "ptesi", "ptesid9", "1"))
				IniWrite($settingloc, "persembe", "persembed10", IniRead($settingloc, "ptesi", "ptesid10", "1"))
				IniWrite($settingloc, "persembe", "persembed11", IniRead($settingloc, "ptesi", "ptesid11", "1"))
				IniWrite($settingloc, "persembe", "persembed12", IniRead($settingloc, "ptesi", "ptesid12", "1"))
				IniWrite($settingloc, "persembe", "persembed13", IniRead($settingloc, "ptesi", "ptesid13", "1"))
				IniWrite($settingloc, "persembe", "persembed14", IniRead($settingloc, "ptesi", "ptesid14", "1"))
				IniWrite($settingloc, "persembe", "persembed15", IniRead($settingloc, "ptesi", "ptesid15", "1"))
				IniWrite($settingloc, "persembe", "persembed16", IniRead($settingloc, "ptesi", "ptesid16", "1"))

			ElseIf GUICtrlRead($ptesikopyalanacak) = "Cuma" Then
				IniWrite($settingloc, "cuma", "saatd1", GUICtrlRead($ptesisaatd1))
				IniWrite($settingloc, "cuma", "saatd2", GUICtrlRead($ptesisaatd2))
				IniWrite($settingloc, "cuma", "saatd3", GUICtrlRead($ptesisaatd3))
				IniWrite($settingloc, "cuma", "saatd4", GUICtrlRead($ptesisaatd4))
				IniWrite($settingloc, "cuma", "saatd5", GUICtrlRead($ptesisaatd5))
				IniWrite($settingloc, "cuma", "saatd6", GUICtrlRead($ptesisaatd6))
				IniWrite($settingloc, "cuma", "saatd7", GUICtrlRead($ptesisaatd7))
				IniWrite($settingloc, "cuma", "saatd8", GUICtrlRead($ptesisaatd8))
				IniWrite($settingloc, "cuma", "saatd9", GUICtrlRead($ptesisaatd9))
				IniWrite($settingloc, "cuma", "saatd10", GUICtrlRead($ptesisaatd10))
				IniWrite($settingloc, "cuma", "saatd11", GUICtrlRead($ptesisaatd11))
				IniWrite($settingloc, "cuma", "saatd12", GUICtrlRead($ptesisaatd12))
				IniWrite($settingloc, "cuma", "saatd13", GUICtrlRead($ptesisaatd13))
				IniWrite($settingloc, "cuma", "saatd14", GUICtrlRead($ptesisaatd14))
				IniWrite($settingloc, "cuma", "saatd15", GUICtrlRead($ptesisaatd15))
				IniWrite($settingloc, "cuma", "saatd16", GUICtrlRead($ptesisaatd16))

				IniWrite($settingloc, "cuma", "dakikad1", GUICtrlRead($ptesidakikad1))
				IniWrite($settingloc, "cuma", "dakikad2", GUICtrlRead($ptesidakikad2))
				IniWrite($settingloc, "cuma", "dakikad3", GUICtrlRead($ptesidakikad3))
				IniWrite($settingloc, "cuma", "dakikad4", GUICtrlRead($ptesidakikad4))
				IniWrite($settingloc, "cuma", "dakikad5", GUICtrlRead($ptesidakikad5))
				IniWrite($settingloc, "cuma", "dakikad6", GUICtrlRead($ptesidakikad6))
				IniWrite($settingloc, "cuma", "dakikad7", GUICtrlRead($ptesidakikad7))
				IniWrite($settingloc, "cuma", "dakikad8", GUICtrlRead($ptesidakikad8))
				IniWrite($settingloc, "cuma", "dakikad9", GUICtrlRead($ptesidakikad9))
				IniWrite($settingloc, "cuma", "dakikad10", GUICtrlRead($ptesidakikad10))
				IniWrite($settingloc, "cuma", "dakikad11", GUICtrlRead($ptesidakikad11))
				IniWrite($settingloc, "cuma", "dakikad12", GUICtrlRead($ptesidakikad12))
				IniWrite($settingloc, "cuma", "dakikad13", GUICtrlRead($ptesidakikad13))
				IniWrite($settingloc, "cuma", "dakikad14", GUICtrlRead($ptesidakikad14))
				IniWrite($settingloc, "cuma", "dakikad15", GUICtrlRead($ptesidakikad15))
				IniWrite($settingloc, "cuma", "dakikad16", GUICtrlRead($ptesidakikad16))

				IniWrite($settingloc, "cuma", "muzikd1", GUICtrlRead($ptesimuzikd1))
				IniWrite($settingloc, "cuma", "muzikd2", GUICtrlRead($ptesimuzikd2))
				IniWrite($settingloc, "cuma", "muzikd3", GUICtrlRead($ptesimuzikd3))
				IniWrite($settingloc, "cuma", "muzikd4", GUICtrlRead($ptesimuzikd4))
				IniWrite($settingloc, "cuma", "muzikd5", GUICtrlRead($ptesimuzikd5))
				IniWrite($settingloc, "cuma", "muzikd6", GUICtrlRead($ptesimuzikd6))
				IniWrite($settingloc, "cuma", "muzikd7", GUICtrlRead($ptesimuzikd7))
				IniWrite($settingloc, "cuma", "muzikd8", GUICtrlRead($ptesimuzikd8))
				IniWrite($settingloc, "cuma", "muzikd9", GUICtrlRead($ptesimuzikd9))
				IniWrite($settingloc, "cuma", "muzikd10", GUICtrlRead($ptesimuzikd10))
				IniWrite($settingloc, "cuma", "muzikd11", GUICtrlRead($ptesimuzikd11))
				IniWrite($settingloc, "cuma", "muzikd12", GUICtrlRead($ptesimuzikd12))
				IniWrite($settingloc, "cuma", "muzikd13", GUICtrlRead($ptesimuzikd13))
				IniWrite($settingloc, "cuma", "muzikd14", GUICtrlRead($ptesimuzikd14))
				IniWrite($settingloc, "cuma", "muzikd15", GUICtrlRead($ptesimuzikd15))
				IniWrite($settingloc, "cuma", "muzikd16", GUICtrlRead($ptesimuzikd16))

				IniWrite($settingloc, "cuma", "cumad1", IniRead($settingloc, "ptesi", "ptesid1", "1"))
				IniWrite($settingloc, "cuma", "cumad2", IniRead($settingloc, "ptesi", "ptesid2", "1"))
				IniWrite($settingloc, "cuma", "cumad3", IniRead($settingloc, "ptesi", "ptesid3", "1"))
				IniWrite($settingloc, "cuma", "cumad4", IniRead($settingloc, "ptesi", "ptesid4", "1"))
				IniWrite($settingloc, "cuma", "cumad5", IniRead($settingloc, "ptesi", "ptesid5", "1"))
				IniWrite($settingloc, "cuma", "cumad6", IniRead($settingloc, "ptesi", "ptesid6", "1"))
				IniWrite($settingloc, "cuma", "cumad7", IniRead($settingloc, "ptesi", "ptesid7", "1"))
				IniWrite($settingloc, "cuma", "cumad8", IniRead($settingloc, "ptesi", "ptesid8", "1"))
				IniWrite($settingloc, "cuma", "cumad9", IniRead($settingloc, "ptesi", "ptesid9", "1"))
				IniWrite($settingloc, "cuma", "cumad10", IniRead($settingloc, "ptesi", "ptesid10", "1"))
				IniWrite($settingloc, "cuma", "cumad11", IniRead($settingloc, "ptesi", "ptesid11", "1"))
				IniWrite($settingloc, "cuma", "cumad12", IniRead($settingloc, "ptesi", "ptesid12", "1"))
				IniWrite($settingloc, "cuma", "cumad13", IniRead($settingloc, "ptesi", "ptesid13", "1"))
				IniWrite($settingloc, "cuma", "cumad14", IniRead($settingloc, "ptesi", "ptesid14", "1"))
				IniWrite($settingloc, "cuma", "cumad15", IniRead($settingloc, "ptesi", "ptesid15", "1"))
				IniWrite($settingloc, "cuma", "cumad16", IniRead($settingloc, "ptesi", "ptesid16", "1"))

			ElseIf GUICtrlRead($ptesikopyalanacak) = "C.Tesi" Then
				IniWrite($settingloc, "ctesi", "saatd1", GUICtrlRead($ptesisaatd1))
				IniWrite($settingloc, "ctesi", "saatd2", GUICtrlRead($ptesisaatd2))
				IniWrite($settingloc, "ctesi", "saatd3", GUICtrlRead($ptesisaatd3))
				IniWrite($settingloc, "ctesi", "saatd4", GUICtrlRead($ptesisaatd4))
				IniWrite($settingloc, "ctesi", "saatd5", GUICtrlRead($ptesisaatd5))
				IniWrite($settingloc, "ctesi", "saatd6", GUICtrlRead($ptesisaatd6))
				IniWrite($settingloc, "ctesi", "saatd7", GUICtrlRead($ptesisaatd7))
				IniWrite($settingloc, "ctesi", "saatd8", GUICtrlRead($ptesisaatd8))
				IniWrite($settingloc, "ctesi", "saatd9", GUICtrlRead($ptesisaatd9))
				IniWrite($settingloc, "ctesi", "saatd10", GUICtrlRead($ptesisaatd10))
				IniWrite($settingloc, "ctesi", "saatd11", GUICtrlRead($ptesisaatd11))
				IniWrite($settingloc, "ctesi", "saatd12", GUICtrlRead($ptesisaatd12))
				IniWrite($settingloc, "ctesi", "saatd13", GUICtrlRead($ptesisaatd13))
				IniWrite($settingloc, "ctesi", "saatd14", GUICtrlRead($ptesisaatd14))
				IniWrite($settingloc, "ctesi", "saatd15", GUICtrlRead($ptesisaatd15))
				IniWrite($settingloc, "ctesi", "saatd16", GUICtrlRead($ptesisaatd16))

				IniWrite($settingloc, "ctesi", "dakikad1", GUICtrlRead($ptesidakikad1))
				IniWrite($settingloc, "ctesi", "dakikad2", GUICtrlRead($ptesidakikad2))
				IniWrite($settingloc, "ctesi", "dakikad3", GUICtrlRead($ptesidakikad3))
				IniWrite($settingloc, "ctesi", "dakikad4", GUICtrlRead($ptesidakikad4))
				IniWrite($settingloc, "ctesi", "dakikad5", GUICtrlRead($ptesidakikad5))
				IniWrite($settingloc, "ctesi", "dakikad6", GUICtrlRead($ptesidakikad6))
				IniWrite($settingloc, "ctesi", "dakikad7", GUICtrlRead($ptesidakikad7))
				IniWrite($settingloc, "ctesi", "dakikad8", GUICtrlRead($ptesidakikad8))
				IniWrite($settingloc, "ctesi", "dakikad9", GUICtrlRead($ptesidakikad9))
				IniWrite($settingloc, "ctesi", "dakikad10", GUICtrlRead($ptesidakikad10))
				IniWrite($settingloc, "ctesi", "dakikad11", GUICtrlRead($ptesidakikad11))
				IniWrite($settingloc, "ctesi", "dakikad12", GUICtrlRead($ptesidakikad12))
				IniWrite($settingloc, "ctesi", "dakikad13", GUICtrlRead($ptesidakikad13))
				IniWrite($settingloc, "ctesi", "dakikad14", GUICtrlRead($ptesidakikad14))
				IniWrite($settingloc, "ctesi", "dakikad15", GUICtrlRead($ptesidakikad15))
				IniWrite($settingloc, "ctesi", "dakikad16", GUICtrlRead($ptesidakikad16))

				IniWrite($settingloc, "ctesi", "muzikd1", GUICtrlRead($ptesimuzikd1))
				IniWrite($settingloc, "ctesi", "muzikd2", GUICtrlRead($ptesimuzikd2))
				IniWrite($settingloc, "ctesi", "muzikd3", GUICtrlRead($ptesimuzikd3))
				IniWrite($settingloc, "ctesi", "muzikd4", GUICtrlRead($ptesimuzikd4))
				IniWrite($settingloc, "ctesi", "muzikd5", GUICtrlRead($ptesimuzikd5))
				IniWrite($settingloc, "ctesi", "muzikd6", GUICtrlRead($ptesimuzikd6))
				IniWrite($settingloc, "ctesi", "muzikd7", GUICtrlRead($ptesimuzikd7))
				IniWrite($settingloc, "ctesi", "muzikd8", GUICtrlRead($ptesimuzikd8))
				IniWrite($settingloc, "ctesi", "muzikd9", GUICtrlRead($ptesimuzikd9))
				IniWrite($settingloc, "ctesi", "muzikd10", GUICtrlRead($ptesimuzikd10))
				IniWrite($settingloc, "ctesi", "muzikd11", GUICtrlRead($ptesimuzikd11))
				IniWrite($settingloc, "ctesi", "muzikd12", GUICtrlRead($ptesimuzikd12))
				IniWrite($settingloc, "ctesi", "muzikd13", GUICtrlRead($ptesimuzikd13))
				IniWrite($settingloc, "ctesi", "muzikd14", GUICtrlRead($ptesimuzikd14))
				IniWrite($settingloc, "ctesi", "muzikd15", GUICtrlRead($ptesimuzikd15))
				IniWrite($settingloc, "ctesi", "muzikd16", GUICtrlRead($ptesimuzikd16))

				IniWrite($settingloc, "ctesi", "ctesid1", IniRead($settingloc, "ptesi", "ptesid1", "1"))
				IniWrite($settingloc, "ctesi", "ctesid2", IniRead($settingloc, "ptesi", "ptesid2", "1"))
				IniWrite($settingloc, "ctesi", "ctesid3", IniRead($settingloc, "ptesi", "ptesid3", "1"))
				IniWrite($settingloc, "ctesi", "ctesid4", IniRead($settingloc, "ptesi", "ptesid4", "1"))
				IniWrite($settingloc, "ctesi", "ctesid5", IniRead($settingloc, "ptesi", "ptesid5", "1"))
				IniWrite($settingloc, "ctesi", "ctesid6", IniRead($settingloc, "ptesi", "ptesid6", "1"))
				IniWrite($settingloc, "ctesi", "ctesid7", IniRead($settingloc, "ptesi", "ptesid7", "1"))
				IniWrite($settingloc, "ctesi", "ctesid8", IniRead($settingloc, "ptesi", "ptesid8", "1"))
				IniWrite($settingloc, "ctesi", "ctesid9", IniRead($settingloc, "ptesi", "ptesid9", "1"))
				IniWrite($settingloc, "ctesi", "ctesid10", IniRead($settingloc, "ptesi", "ptesid10", "1"))
				IniWrite($settingloc, "ctesi", "ctesid11", IniRead($settingloc, "ptesi", "ptesid11", "1"))
				IniWrite($settingloc, "ctesi", "ctesid12", IniRead($settingloc, "ptesi", "ptesid12", "1"))
				IniWrite($settingloc, "ctesi", "ctesid13", IniRead($settingloc, "ptesi", "ptesid13", "1"))
				IniWrite($settingloc, "ctesi", "ctesid14", IniRead($settingloc, "ptesi", "ptesid14", "1"))
				IniWrite($settingloc, "ctesi", "ctesid15", IniRead($settingloc, "ptesi", "ptesid15", "1"))
				IniWrite($settingloc, "ctesi", "ctesid16", IniRead($settingloc, "ptesi", "ptesid16", "1"))

			ElseIf GUICtrlRead($ptesikopyalanacak) = "Pazar" Then
				IniWrite($settingloc, "pazar", "saatd1", GUICtrlRead($ptesisaatd1))
				IniWrite($settingloc, "pazar", "saatd2", GUICtrlRead($ptesisaatd2))
				IniWrite($settingloc, "pazar", "saatd3", GUICtrlRead($ptesisaatd3))
				IniWrite($settingloc, "pazar", "saatd4", GUICtrlRead($ptesisaatd4))
				IniWrite($settingloc, "pazar", "saatd5", GUICtrlRead($ptesisaatd5))
				IniWrite($settingloc, "pazar", "saatd6", GUICtrlRead($ptesisaatd6))
				IniWrite($settingloc, "pazar", "saatd7", GUICtrlRead($ptesisaatd7))
				IniWrite($settingloc, "pazar", "saatd8", GUICtrlRead($ptesisaatd8))
				IniWrite($settingloc, "pazar", "saatd9", GUICtrlRead($ptesisaatd9))
				IniWrite($settingloc, "pazar", "saatd10", GUICtrlRead($ptesisaatd10))
				IniWrite($settingloc, "pazar", "saatd11", GUICtrlRead($ptesisaatd11))
				IniWrite($settingloc, "pazar", "saatd12", GUICtrlRead($ptesisaatd12))
				IniWrite($settingloc, "pazar", "saatd13", GUICtrlRead($ptesisaatd13))
				IniWrite($settingloc, "pazar", "saatd14", GUICtrlRead($ptesisaatd14))
				IniWrite($settingloc, "pazar", "saatd15", GUICtrlRead($ptesisaatd15))
				IniWrite($settingloc, "pazar", "saatd16", GUICtrlRead($ptesisaatd16))

				IniWrite($settingloc, "pazar", "dakikad1", GUICtrlRead($ptesidakikad1))
				IniWrite($settingloc, "pazar", "dakikad2", GUICtrlRead($ptesidakikad2))
				IniWrite($settingloc, "pazar", "dakikad3", GUICtrlRead($ptesidakikad3))
				IniWrite($settingloc, "pazar", "dakikad4", GUICtrlRead($ptesidakikad4))
				IniWrite($settingloc, "pazar", "dakikad5", GUICtrlRead($ptesidakikad5))
				IniWrite($settingloc, "pazar", "dakikad6", GUICtrlRead($ptesidakikad6))
				IniWrite($settingloc, "pazar", "dakikad7", GUICtrlRead($ptesidakikad7))
				IniWrite($settingloc, "pazar", "dakikad8", GUICtrlRead($ptesidakikad8))
				IniWrite($settingloc, "pazar", "dakikad9", GUICtrlRead($ptesidakikad9))
				IniWrite($settingloc, "pazar", "dakikad10", GUICtrlRead($ptesidakikad10))
				IniWrite($settingloc, "pazar", "dakikad11", GUICtrlRead($ptesidakikad11))
				IniWrite($settingloc, "pazar", "dakikad12", GUICtrlRead($ptesidakikad12))
				IniWrite($settingloc, "pazar", "dakikad13", GUICtrlRead($ptesidakikad13))
				IniWrite($settingloc, "pazar", "dakikad14", GUICtrlRead($ptesidakikad14))
				IniWrite($settingloc, "pazar", "dakikad15", GUICtrlRead($ptesidakikad15))
				IniWrite($settingloc, "pazar", "dakikad16", GUICtrlRead($ptesidakikad16))

				IniWrite($settingloc, "pazar", "muzikd1", GUICtrlRead($ptesimuzikd1))
				IniWrite($settingloc, "pazar", "muzikd2", GUICtrlRead($ptesimuzikd2))
				IniWrite($settingloc, "pazar", "muzikd3", GUICtrlRead($ptesimuzikd3))
				IniWrite($settingloc, "pazar", "muzikd4", GUICtrlRead($ptesimuzikd4))
				IniWrite($settingloc, "pazar", "muzikd5", GUICtrlRead($ptesimuzikd5))
				IniWrite($settingloc, "pazar", "muzikd6", GUICtrlRead($ptesimuzikd6))
				IniWrite($settingloc, "pazar", "muzikd7", GUICtrlRead($ptesimuzikd7))
				IniWrite($settingloc, "pazar", "muzikd8", GUICtrlRead($ptesimuzikd8))
				IniWrite($settingloc, "pazar", "muzikd9", GUICtrlRead($ptesimuzikd9))
				IniWrite($settingloc, "pazar", "muzikd10", GUICtrlRead($ptesimuzikd10))
				IniWrite($settingloc, "pazar", "muzikd11", GUICtrlRead($ptesimuzikd11))
				IniWrite($settingloc, "pazar", "muzikd12", GUICtrlRead($ptesimuzikd12))
				IniWrite($settingloc, "pazar", "muzikd13", GUICtrlRead($ptesimuzikd13))
				IniWrite($settingloc, "pazar", "muzikd14", GUICtrlRead($ptesimuzikd14))
				IniWrite($settingloc, "pazar", "muzikd15", GUICtrlRead($ptesimuzikd15))
				IniWrite($settingloc, "pazar", "muzikd16", GUICtrlRead($ptesimuzikd16))

				IniWrite($settingloc, "pazar", "pazard1", IniRead($settingloc, "ptesi", "ptesid1", "1"))
				IniWrite($settingloc, "pazar", "pazard2", IniRead($settingloc, "ptesi", "ptesid2", "1"))
				IniWrite($settingloc, "pazar", "pazard3", IniRead($settingloc, "ptesi", "ptesid3", "1"))
				IniWrite($settingloc, "pazar", "pazard4", IniRead($settingloc, "ptesi", "ptesid4", "1"))
				IniWrite($settingloc, "pazar", "pazard5", IniRead($settingloc, "ptesi", "ptesid5", "1"))
				IniWrite($settingloc, "pazar", "pazard6", IniRead($settingloc, "ptesi", "ptesid6", "1"))
				IniWrite($settingloc, "pazar", "pazard7", IniRead($settingloc, "ptesi", "ptesid7", "1"))
				IniWrite($settingloc, "pazar", "pazard8", IniRead($settingloc, "ptesi", "ptesid8", "1"))
				IniWrite($settingloc, "pazar", "pazard9", IniRead($settingloc, "ptesi", "ptesid9", "1"))
				IniWrite($settingloc, "pazar", "pazard10", IniRead($settingloc, "ptesi", "ptesid10", "1"))
				IniWrite($settingloc, "pazar", "pazard11", IniRead($settingloc, "ptesi", "ptesid11", "1"))
				IniWrite($settingloc, "pazar", "pazard12", IniRead($settingloc, "ptesi", "ptesid12", "1"))
				IniWrite($settingloc, "pazar", "pazard13", IniRead($settingloc, "ptesi", "ptesid13", "1"))
				IniWrite($settingloc, "pazar", "pazard14", IniRead($settingloc, "ptesi", "ptesid14", "1"))
				IniWrite($settingloc, "pazar", "pazard15", IniRead($settingloc, "ptesi", "ptesid15", "1"))
				IniWrite($settingloc, "pazar", "pazard16", IniRead($settingloc, "ptesi", "ptesid16", "1"))
			EndIf

		Case $salikopyala
			If GUICtrlRead($salikopyalanacak) = "P.Tesi" Then
				IniWrite($settingloc, "ptesi", "saatd1", GUICtrlRead($salisaatd1))
				IniWrite($settingloc, "ptesi", "saatd2", GUICtrlRead($salisaatd2))
				IniWrite($settingloc, "ptesi", "saatd3", GUICtrlRead($salisaatd3))
				IniWrite($settingloc, "ptesi", "saatd4", GUICtrlRead($salisaatd4))
				IniWrite($settingloc, "ptesi", "saatd5", GUICtrlRead($salisaatd5))
				IniWrite($settingloc, "ptesi", "saatd6", GUICtrlRead($salisaatd6))
				IniWrite($settingloc, "ptesi", "saatd7", GUICtrlRead($salisaatd7))
				IniWrite($settingloc, "ptesi", "saatd8", GUICtrlRead($salisaatd8))
				IniWrite($settingloc, "ptesi", "saatd9", GUICtrlRead($salisaatd9))
				IniWrite($settingloc, "ptesi", "saatd10", GUICtrlRead($salisaatd10))
				IniWrite($settingloc, "ptesi", "saatd11", GUICtrlRead($salisaatd11))
				IniWrite($settingloc, "ptesi", "saatd12", GUICtrlRead($salisaatd12))
				IniWrite($settingloc, "ptesi", "saatd13", GUICtrlRead($salisaatd13))
				IniWrite($settingloc, "ptesi", "saatd14", GUICtrlRead($salisaatd14))
				IniWrite($settingloc, "ptesi", "saatd15", GUICtrlRead($salisaatd15))
				IniWrite($settingloc, "ptesi", "saatd16", GUICtrlRead($salisaatd16))

				IniWrite($settingloc, "ptesi", "dakikad1", GUICtrlRead($salidakikad1))
				IniWrite($settingloc, "ptesi", "dakikad2", GUICtrlRead($salidakikad2))
				IniWrite($settingloc, "ptesi", "dakikad3", GUICtrlRead($salidakikad3))
				IniWrite($settingloc, "ptesi", "dakikad4", GUICtrlRead($salidakikad4))
				IniWrite($settingloc, "ptesi", "dakikad5", GUICtrlRead($salidakikad5))
				IniWrite($settingloc, "ptesi", "dakikad6", GUICtrlRead($salidakikad6))
				IniWrite($settingloc, "ptesi", "dakikad7", GUICtrlRead($salidakikad7))
				IniWrite($settingloc, "ptesi", "dakikad8", GUICtrlRead($salidakikad8))
				IniWrite($settingloc, "ptesi", "dakikad9", GUICtrlRead($salidakikad9))
				IniWrite($settingloc, "ptesi", "dakikad10", GUICtrlRead($salidakikad10))
				IniWrite($settingloc, "ptesi", "dakikad11", GUICtrlRead($salidakikad11))
				IniWrite($settingloc, "ptesi", "dakikad12", GUICtrlRead($salidakikad12))
				IniWrite($settingloc, "ptesi", "dakikad13", GUICtrlRead($salidakikad13))
				IniWrite($settingloc, "ptesi", "dakikad14", GUICtrlRead($salidakikad14))
				IniWrite($settingloc, "ptesi", "dakikad15", GUICtrlRead($salidakikad15))
				IniWrite($settingloc, "ptesi", "dakikad16", GUICtrlRead($salidakikad16))

				IniWrite($settingloc, "ptesi", "muzikd1", GUICtrlRead($salimuzikd1))
				IniWrite($settingloc, "ptesi", "muzikd2", GUICtrlRead($salimuzikd2))
				IniWrite($settingloc, "ptesi", "muzikd3", GUICtrlRead($salimuzikd3))
				IniWrite($settingloc, "ptesi", "muzikd4", GUICtrlRead($salimuzikd4))
				IniWrite($settingloc, "ptesi", "muzikd5", GUICtrlRead($salimuzikd5))
				IniWrite($settingloc, "ptesi", "muzikd6", GUICtrlRead($salimuzikd6))
				IniWrite($settingloc, "ptesi", "muzikd7", GUICtrlRead($salimuzikd7))
				IniWrite($settingloc, "ptesi", "muzikd8", GUICtrlRead($salimuzikd8))
				IniWrite($settingloc, "ptesi", "muzikd9", GUICtrlRead($salimuzikd9))
				IniWrite($settingloc, "ptesi", "muzikd10", GUICtrlRead($salimuzikd10))
				IniWrite($settingloc, "ptesi", "muzikd11", GUICtrlRead($salimuzikd11))
				IniWrite($settingloc, "ptesi", "muzikd12", GUICtrlRead($salimuzikd12))
				IniWrite($settingloc, "ptesi", "muzikd13", GUICtrlRead($salimuzikd13))
				IniWrite($settingloc, "ptesi", "muzikd14", GUICtrlRead($salimuzikd14))
				IniWrite($settingloc, "ptesi", "muzikd15", GUICtrlRead($salimuzikd15))
				IniWrite($settingloc, "ptesi", "muzikd16", GUICtrlRead($salimuzikd16))

				IniWrite($settingloc, "ptesi", "ptesid1", IniRead($settingloc, "sali", "salid1", "1"))
				IniWrite($settingloc, "ptesi", "ptesid2", IniRead($settingloc, "sali", "salid2", "1"))
				IniWrite($settingloc, "ptesi", "ptesid3", IniRead($settingloc, "sali", "salid3", "1"))
				IniWrite($settingloc, "ptesi", "ptesid4", IniRead($settingloc, "sali", "salid4", "1"))
				IniWrite($settingloc, "ptesi", "ptesid5", IniRead($settingloc, "sali", "salid5", "1"))
				IniWrite($settingloc, "ptesi", "ptesid6", IniRead($settingloc, "sali", "salid6", "1"))
				IniWrite($settingloc, "ptesi", "ptesid7", IniRead($settingloc, "sali", "salid7", "1"))
				IniWrite($settingloc, "ptesi", "ptesid8", IniRead($settingloc, "sali", "salid8", "1"))
				IniWrite($settingloc, "ptesi", "ptesid9", IniRead($settingloc, "sali", "salid9", "1"))
				IniWrite($settingloc, "ptesi", "ptesid10", IniRead($settingloc, "sali", "salid10", "1"))
				IniWrite($settingloc, "ptesi", "ptesid11", IniRead($settingloc, "sali", "salid11", "1"))
				IniWrite($settingloc, "ptesi", "ptesid12", IniRead($settingloc, "sali", "salid12", "1"))
				IniWrite($settingloc, "ptesi", "ptesid13", IniRead($settingloc, "sali", "salid13", "1"))
				IniWrite($settingloc, "ptesi", "ptesid14", IniRead($settingloc, "sali", "salid14", "1"))
				IniWrite($settingloc, "ptesi", "ptesid15", IniRead($settingloc, "sali", "salid15", "1"))
				IniWrite($settingloc, "ptesi", "ptesid16", IniRead($settingloc, "sali", "salid16", "1"))

			ElseIf GUICtrlRead($salikopyalanacak) = "Salı" Then
				IniWrite($settingloc, "sali", "saatd1", GUICtrlRead($salisaatd1))
				IniWrite($settingloc, "sali", "saatd2", GUICtrlRead($salisaatd2))
				IniWrite($settingloc, "sali", "saatd3", GUICtrlRead($salisaatd3))
				IniWrite($settingloc, "sali", "saatd4", GUICtrlRead($salisaatd4))
				IniWrite($settingloc, "sali", "saatd5", GUICtrlRead($salisaatd5))
				IniWrite($settingloc, "sali", "saatd6", GUICtrlRead($salisaatd6))
				IniWrite($settingloc, "sali", "saatd7", GUICtrlRead($salisaatd7))
				IniWrite($settingloc, "sali", "saatd8", GUICtrlRead($salisaatd8))
				IniWrite($settingloc, "sali", "saatd9", GUICtrlRead($salisaatd9))
				IniWrite($settingloc, "sali", "saatd10", GUICtrlRead($salisaatd10))
				IniWrite($settingloc, "sali", "saatd11", GUICtrlRead($salisaatd11))
				IniWrite($settingloc, "sali", "saatd12", GUICtrlRead($salisaatd12))
				IniWrite($settingloc, "sali", "saatd13", GUICtrlRead($salisaatd13))
				IniWrite($settingloc, "sali", "saatd14", GUICtrlRead($salisaatd14))
				IniWrite($settingloc, "sali", "saatd15", GUICtrlRead($salisaatd15))
				IniWrite($settingloc, "sali", "saatd16", GUICtrlRead($salisaatd16))

				IniWrite($settingloc, "sali", "dakikad1", GUICtrlRead($salidakikad1))
				IniWrite($settingloc, "sali", "dakikad2", GUICtrlRead($salidakikad2))
				IniWrite($settingloc, "sali", "dakikad3", GUICtrlRead($salidakikad3))
				IniWrite($settingloc, "sali", "dakikad4", GUICtrlRead($salidakikad4))
				IniWrite($settingloc, "sali", "dakikad5", GUICtrlRead($salidakikad5))
				IniWrite($settingloc, "sali", "dakikad6", GUICtrlRead($salidakikad6))
				IniWrite($settingloc, "sali", "dakikad7", GUICtrlRead($salidakikad7))
				IniWrite($settingloc, "sali", "dakikad8", GUICtrlRead($salidakikad8))
				IniWrite($settingloc, "sali", "dakikad9", GUICtrlRead($salidakikad9))
				IniWrite($settingloc, "sali", "dakikad10", GUICtrlRead($salidakikad10))
				IniWrite($settingloc, "sali", "dakikad11", GUICtrlRead($salidakikad11))
				IniWrite($settingloc, "sali", "dakikad12", GUICtrlRead($salidakikad12))
				IniWrite($settingloc, "sali", "dakikad13", GUICtrlRead($salidakikad13))
				IniWrite($settingloc, "sali", "dakikad14", GUICtrlRead($salidakikad14))
				IniWrite($settingloc, "sali", "dakikad15", GUICtrlRead($salidakikad15))
				IniWrite($settingloc, "sali", "dakikad16", GUICtrlRead($salidakikad16))

				IniWrite($settingloc, "sali", "muzikd1", GUICtrlRead($salimuzikd1))
				IniWrite($settingloc, "sali", "muzikd2", GUICtrlRead($salimuzikd2))
				IniWrite($settingloc, "sali", "muzikd3", GUICtrlRead($salimuzikd3))
				IniWrite($settingloc, "sali", "muzikd4", GUICtrlRead($salimuzikd4))
				IniWrite($settingloc, "sali", "muzikd5", GUICtrlRead($salimuzikd5))
				IniWrite($settingloc, "sali", "muzikd6", GUICtrlRead($salimuzikd6))
				IniWrite($settingloc, "sali", "muzikd7", GUICtrlRead($salimuzikd7))
				IniWrite($settingloc, "sali", "muzikd8", GUICtrlRead($salimuzikd8))
				IniWrite($settingloc, "sali", "muzikd9", GUICtrlRead($salimuzikd9))
				IniWrite($settingloc, "sali", "muzikd10", GUICtrlRead($salimuzikd10))
				IniWrite($settingloc, "sali", "muzikd11", GUICtrlRead($salimuzikd11))
				IniWrite($settingloc, "sali", "muzikd12", GUICtrlRead($salimuzikd12))
				IniWrite($settingloc, "sali", "muzikd13", GUICtrlRead($salimuzikd13))
				IniWrite($settingloc, "sali", "muzikd14", GUICtrlRead($salimuzikd14))
				IniWrite($settingloc, "sali", "muzikd15", GUICtrlRead($salimuzikd15))
				IniWrite($settingloc, "sali", "muzikd16", GUICtrlRead($salimuzikd16))

				IniWrite($settingloc, "sali", "salid1", IniRead($settingloc, "sali", "salid1", "1"))
				IniWrite($settingloc, "sali", "salid2", IniRead($settingloc, "sali", "salid2", "1"))
				IniWrite($settingloc, "sali", "salid3", IniRead($settingloc, "sali", "salid3", "1"))
				IniWrite($settingloc, "sali", "salid4", IniRead($settingloc, "sali", "salid4", "1"))
				IniWrite($settingloc, "sali", "salid5", IniRead($settingloc, "sali", "salid5", "1"))
				IniWrite($settingloc, "sali", "salid6", IniRead($settingloc, "sali", "salid6", "1"))
				IniWrite($settingloc, "sali", "salid7", IniRead($settingloc, "sali", "salid7", "1"))
				IniWrite($settingloc, "sali", "salid8", IniRead($settingloc, "sali", "salid8", "1"))
				IniWrite($settingloc, "sali", "salid9", IniRead($settingloc, "sali", "salid9", "1"))
				IniWrite($settingloc, "sali", "salid10", IniRead($settingloc, "sali", "salid10", "1"))
				IniWrite($settingloc, "sali", "salid11", IniRead($settingloc, "sali", "salid11", "1"))
				IniWrite($settingloc, "sali", "salid12", IniRead($settingloc, "sali", "salid12", "1"))
				IniWrite($settingloc, "sali", "salid13", IniRead($settingloc, "sali", "salid13", "1"))
				IniWrite($settingloc, "sali", "salid14", IniRead($settingloc, "sali", "salid14", "1"))
				IniWrite($settingloc, "sali", "salid15", IniRead($settingloc, "sali", "salid15", "1"))
				IniWrite($settingloc, "sali", "salid16", IniRead($settingloc, "sali", "salid16", "1"))

			ElseIf GUICtrlRead($salikopyalanacak) = "Çarşamba" Then
				IniWrite($settingloc, "carsamba", "saatd1", GUICtrlRead($salisaatd1))
				IniWrite($settingloc, "carsamba", "saatd2", GUICtrlRead($salisaatd2))
				IniWrite($settingloc, "carsamba", "saatd3", GUICtrlRead($salisaatd3))
				IniWrite($settingloc, "carsamba", "saatd4", GUICtrlRead($salisaatd4))
				IniWrite($settingloc, "carsamba", "saatd5", GUICtrlRead($salisaatd5))
				IniWrite($settingloc, "carsamba", "saatd6", GUICtrlRead($salisaatd6))
				IniWrite($settingloc, "carsamba", "saatd7", GUICtrlRead($salisaatd7))
				IniWrite($settingloc, "carsamba", "saatd8", GUICtrlRead($salisaatd8))
				IniWrite($settingloc, "carsamba", "saatd9", GUICtrlRead($salisaatd9))
				IniWrite($settingloc, "carsamba", "saatd10", GUICtrlRead($salisaatd10))
				IniWrite($settingloc, "carsamba", "saatd11", GUICtrlRead($salisaatd11))
				IniWrite($settingloc, "carsamba", "saatd12", GUICtrlRead($salisaatd12))
				IniWrite($settingloc, "carsamba", "saatd13", GUICtrlRead($salisaatd13))
				IniWrite($settingloc, "carsamba", "saatd14", GUICtrlRead($salisaatd14))
				IniWrite($settingloc, "carsamba", "saatd15", GUICtrlRead($salisaatd15))
				IniWrite($settingloc, "carsamba", "saatd16", GUICtrlRead($salisaatd16))

				IniWrite($settingloc, "carsamba", "dakikad1", GUICtrlRead($salidakikad1))
				IniWrite($settingloc, "carsamba", "dakikad2", GUICtrlRead($salidakikad2))
				IniWrite($settingloc, "carsamba", "dakikad3", GUICtrlRead($salidakikad3))
				IniWrite($settingloc, "carsamba", "dakikad4", GUICtrlRead($salidakikad4))
				IniWrite($settingloc, "carsamba", "dakikad5", GUICtrlRead($salidakikad5))
				IniWrite($settingloc, "carsamba", "dakikad6", GUICtrlRead($salidakikad6))
				IniWrite($settingloc, "carsamba", "dakikad7", GUICtrlRead($salidakikad7))
				IniWrite($settingloc, "carsamba", "dakikad8", GUICtrlRead($salidakikad8))
				IniWrite($settingloc, "carsamba", "dakikad9", GUICtrlRead($salidakikad9))
				IniWrite($settingloc, "carsamba", "dakikad10", GUICtrlRead($salidakikad10))
				IniWrite($settingloc, "carsamba", "dakikad11", GUICtrlRead($salidakikad11))
				IniWrite($settingloc, "carsamba", "dakikad12", GUICtrlRead($salidakikad12))
				IniWrite($settingloc, "carsamba", "dakikad13", GUICtrlRead($salidakikad13))
				IniWrite($settingloc, "carsamba", "dakikad14", GUICtrlRead($salidakikad14))
				IniWrite($settingloc, "carsamba", "dakikad15", GUICtrlRead($salidakikad15))
				IniWrite($settingloc, "carsamba", "dakikad16", GUICtrlRead($salidakikad16))

				IniWrite($settingloc, "carsamba", "muzikd1", GUICtrlRead($salimuzikd1))
				IniWrite($settingloc, "carsamba", "muzikd2", GUICtrlRead($salimuzikd2))
				IniWrite($settingloc, "carsamba", "muzikd3", GUICtrlRead($salimuzikd3))
				IniWrite($settingloc, "carsamba", "muzikd4", GUICtrlRead($salimuzikd4))
				IniWrite($settingloc, "carsamba", "muzikd5", GUICtrlRead($salimuzikd5))
				IniWrite($settingloc, "carsamba", "muzikd6", GUICtrlRead($salimuzikd6))
				IniWrite($settingloc, "carsamba", "muzikd7", GUICtrlRead($salimuzikd7))
				IniWrite($settingloc, "carsamba", "muzikd8", GUICtrlRead($salimuzikd8))
				IniWrite($settingloc, "carsamba", "muzikd9", GUICtrlRead($salimuzikd9))
				IniWrite($settingloc, "carsamba", "muzikd10", GUICtrlRead($salimuzikd10))
				IniWrite($settingloc, "carsamba", "muzikd11", GUICtrlRead($salimuzikd11))
				IniWrite($settingloc, "carsamba", "muzikd12", GUICtrlRead($salimuzikd12))
				IniWrite($settingloc, "carsamba", "muzikd13", GUICtrlRead($salimuzikd13))
				IniWrite($settingloc, "carsamba", "muzikd14", GUICtrlRead($salimuzikd14))
				IniWrite($settingloc, "carsamba", "muzikd15", GUICtrlRead($salimuzikd15))
				IniWrite($settingloc, "carsamba", "muzikd16", GUICtrlRead($salimuzikd16))

				IniWrite($settingloc, "carsamba", "carsambad1", IniRead($settingloc, "sali", "salid1", "1"))
				IniWrite($settingloc, "carsamba", "carsambad2", IniRead($settingloc, "sali", "salid2", "1"))
				IniWrite($settingloc, "carsamba", "carsambad3", IniRead($settingloc, "sali", "salid3", "1"))
				IniWrite($settingloc, "carsamba", "carsambad4", IniRead($settingloc, "sali", "salid4", "1"))
				IniWrite($settingloc, "carsamba", "carsambad5", IniRead($settingloc, "sali", "salid5", "1"))
				IniWrite($settingloc, "carsamba", "carsambad6", IniRead($settingloc, "sali", "salid6", "1"))
				IniWrite($settingloc, "carsamba", "carsambad7", IniRead($settingloc, "sali", "salid7", "1"))
				IniWrite($settingloc, "carsamba", "carsambad8", IniRead($settingloc, "sali", "salid8", "1"))
				IniWrite($settingloc, "carsamba", "carsambad9", IniRead($settingloc, "sali", "salid9", "1"))
				IniWrite($settingloc, "carsamba", "carsambad10", IniRead($settingloc, "sali", "salid10", "1"))
				IniWrite($settingloc, "carsamba", "carsambad11", IniRead($settingloc, "sali", "salid11", "1"))
				IniWrite($settingloc, "carsamba", "carsambad12", IniRead($settingloc, "sali", "salid12", "1"))
				IniWrite($settingloc, "carsamba", "carsambad13", IniRead($settingloc, "sali", "salid13", "1"))
				IniWrite($settingloc, "carsamba", "carsambad14", IniRead($settingloc, "sali", "salid14", "1"))
				IniWrite($settingloc, "carsamba", "carsambad15", IniRead($settingloc, "sali", "salid15", "1"))
				IniWrite($settingloc, "carsamba", "carsambad16", IniRead($settingloc, "sali", "salid16", "1"))

			ElseIf GUICtrlRead($salikopyalanacak) = "Perşembe" Then
				IniWrite($settingloc, "persembe", "saatd1", GUICtrlRead($salisaatd1))
				IniWrite($settingloc, "persembe", "saatd2", GUICtrlRead($salisaatd2))
				IniWrite($settingloc, "persembe", "saatd3", GUICtrlRead($salisaatd3))
				IniWrite($settingloc, "persembe", "saatd4", GUICtrlRead($salisaatd4))
				IniWrite($settingloc, "persembe", "saatd5", GUICtrlRead($salisaatd5))
				IniWrite($settingloc, "persembe", "saatd6", GUICtrlRead($salisaatd6))
				IniWrite($settingloc, "persembe", "saatd7", GUICtrlRead($salisaatd7))
				IniWrite($settingloc, "persembe", "saatd8", GUICtrlRead($salisaatd8))
				IniWrite($settingloc, "persembe", "saatd9", GUICtrlRead($salisaatd9))
				IniWrite($settingloc, "persembe", "saatd10", GUICtrlRead($salisaatd10))
				IniWrite($settingloc, "persembe", "saatd11", GUICtrlRead($salisaatd11))
				IniWrite($settingloc, "persembe", "saatd12", GUICtrlRead($salisaatd12))
				IniWrite($settingloc, "persembe", "saatd13", GUICtrlRead($salisaatd13))
				IniWrite($settingloc, "persembe", "saatd14", GUICtrlRead($salisaatd14))
				IniWrite($settingloc, "persembe", "saatd15", GUICtrlRead($salisaatd15))
				IniWrite($settingloc, "persembe", "saatd16", GUICtrlRead($salisaatd16))

				IniWrite($settingloc, "persembe", "dakikad1", GUICtrlRead($salidakikad1))
				IniWrite($settingloc, "persembe", "dakikad2", GUICtrlRead($salidakikad2))
				IniWrite($settingloc, "persembe", "dakikad3", GUICtrlRead($salidakikad3))
				IniWrite($settingloc, "persembe", "dakikad4", GUICtrlRead($salidakikad4))
				IniWrite($settingloc, "persembe", "dakikad5", GUICtrlRead($salidakikad5))
				IniWrite($settingloc, "persembe", "dakikad6", GUICtrlRead($salidakikad6))
				IniWrite($settingloc, "persembe", "dakikad7", GUICtrlRead($salidakikad7))
				IniWrite($settingloc, "persembe", "dakikad8", GUICtrlRead($salidakikad8))
				IniWrite($settingloc, "persembe", "dakikad9", GUICtrlRead($salidakikad9))
				IniWrite($settingloc, "persembe", "dakikad10", GUICtrlRead($salidakikad10))
				IniWrite($settingloc, "persembe", "dakikad11", GUICtrlRead($salidakikad11))
				IniWrite($settingloc, "persembe", "dakikad12", GUICtrlRead($salidakikad12))
				IniWrite($settingloc, "persembe", "dakikad13", GUICtrlRead($salidakikad13))
				IniWrite($settingloc, "persembe", "dakikad14", GUICtrlRead($salidakikad14))
				IniWrite($settingloc, "persembe", "dakikad15", GUICtrlRead($salidakikad15))
				IniWrite($settingloc, "persembe", "dakikad16", GUICtrlRead($salidakikad16))

				IniWrite($settingloc, "persembe", "muzikd1", GUICtrlRead($salimuzikd1))
				IniWrite($settingloc, "persembe", "muzikd2", GUICtrlRead($salimuzikd2))
				IniWrite($settingloc, "persembe", "muzikd3", GUICtrlRead($salimuzikd3))
				IniWrite($settingloc, "persembe", "muzikd4", GUICtrlRead($salimuzikd4))
				IniWrite($settingloc, "persembe", "muzikd5", GUICtrlRead($salimuzikd5))
				IniWrite($settingloc, "persembe", "muzikd6", GUICtrlRead($salimuzikd6))
				IniWrite($settingloc, "persembe", "muzikd7", GUICtrlRead($salimuzikd7))
				IniWrite($settingloc, "persembe", "muzikd8", GUICtrlRead($salimuzikd8))
				IniWrite($settingloc, "persembe", "muzikd9", GUICtrlRead($salimuzikd9))
				IniWrite($settingloc, "persembe", "muzikd10", GUICtrlRead($salimuzikd10))
				IniWrite($settingloc, "persembe", "muzikd11", GUICtrlRead($salimuzikd11))
				IniWrite($settingloc, "persembe", "muzikd12", GUICtrlRead($salimuzikd12))
				IniWrite($settingloc, "persembe", "muzikd13", GUICtrlRead($salimuzikd13))
				IniWrite($settingloc, "persembe", "muzikd14", GUICtrlRead($salimuzikd14))
				IniWrite($settingloc, "persembe", "muzikd15", GUICtrlRead($salimuzikd15))
				IniWrite($settingloc, "persembe", "muzikd16", GUICtrlRead($salimuzikd16))

				IniWrite($settingloc, "persembe", "persembed1", IniRead($settingloc, "sali", "salid1", "1"))
				IniWrite($settingloc, "persembe", "persembed2", IniRead($settingloc, "sali", "salid2", "1"))
				IniWrite($settingloc, "persembe", "persembed3", IniRead($settingloc, "sali", "salid3", "1"))
				IniWrite($settingloc, "persembe", "persembed4", IniRead($settingloc, "sali", "salid4", "1"))
				IniWrite($settingloc, "persembe", "persembed5", IniRead($settingloc, "sali", "salid5", "1"))
				IniWrite($settingloc, "persembe", "persembed6", IniRead($settingloc, "sali", "salid6", "1"))
				IniWrite($settingloc, "persembe", "persembed7", IniRead($settingloc, "sali", "salid7", "1"))
				IniWrite($settingloc, "persembe", "persembed8", IniRead($settingloc, "sali", "salid8", "1"))
				IniWrite($settingloc, "persembe", "persembed9", IniRead($settingloc, "sali", "salid9", "1"))
				IniWrite($settingloc, "persembe", "persembed10", IniRead($settingloc, "sali", "salid10", "1"))
				IniWrite($settingloc, "persembe", "persembed11", IniRead($settingloc, "sali", "salid11", "1"))
				IniWrite($settingloc, "persembe", "persembed12", IniRead($settingloc, "sali", "salid12", "1"))
				IniWrite($settingloc, "persembe", "persembed13", IniRead($settingloc, "sali", "salid13", "1"))
				IniWrite($settingloc, "persembe", "persembed14", IniRead($settingloc, "sali", "salid14", "1"))
				IniWrite($settingloc, "persembe", "persembed15", IniRead($settingloc, "sali", "salid15", "1"))
				IniWrite($settingloc, "persembe", "persembed16", IniRead($settingloc, "sali", "salid16", "1"))

			ElseIf GUICtrlRead($salikopyalanacak) = "Cuma" Then
				IniWrite($settingloc, "cuma", "saatd1", GUICtrlRead($salisaatd1))
				IniWrite($settingloc, "cuma", "saatd2", GUICtrlRead($salisaatd2))
				IniWrite($settingloc, "cuma", "saatd3", GUICtrlRead($salisaatd3))
				IniWrite($settingloc, "cuma", "saatd4", GUICtrlRead($salisaatd4))
				IniWrite($settingloc, "cuma", "saatd5", GUICtrlRead($salisaatd5))
				IniWrite($settingloc, "cuma", "saatd6", GUICtrlRead($salisaatd6))
				IniWrite($settingloc, "cuma", "saatd7", GUICtrlRead($salisaatd7))
				IniWrite($settingloc, "cuma", "saatd8", GUICtrlRead($salisaatd8))
				IniWrite($settingloc, "cuma", "saatd9", GUICtrlRead($salisaatd9))
				IniWrite($settingloc, "cuma", "saatd10", GUICtrlRead($salisaatd10))
				IniWrite($settingloc, "cuma", "saatd11", GUICtrlRead($salisaatd11))
				IniWrite($settingloc, "cuma", "saatd12", GUICtrlRead($salisaatd12))
				IniWrite($settingloc, "cuma", "saatd13", GUICtrlRead($salisaatd13))
				IniWrite($settingloc, "cuma", "saatd14", GUICtrlRead($salisaatd14))
				IniWrite($settingloc, "cuma", "saatd15", GUICtrlRead($salisaatd15))
				IniWrite($settingloc, "cuma", "saatd16", GUICtrlRead($salisaatd16))

				IniWrite($settingloc, "cuma", "dakikad1", GUICtrlRead($salidakikad1))
				IniWrite($settingloc, "cuma", "dakikad2", GUICtrlRead($salidakikad2))
				IniWrite($settingloc, "cuma", "dakikad3", GUICtrlRead($salidakikad3))
				IniWrite($settingloc, "cuma", "dakikad4", GUICtrlRead($salidakikad4))
				IniWrite($settingloc, "cuma", "dakikad5", GUICtrlRead($salidakikad5))
				IniWrite($settingloc, "cuma", "dakikad6", GUICtrlRead($salidakikad6))
				IniWrite($settingloc, "cuma", "dakikad7", GUICtrlRead($salidakikad7))
				IniWrite($settingloc, "cuma", "dakikad8", GUICtrlRead($salidakikad8))
				IniWrite($settingloc, "cuma", "dakikad9", GUICtrlRead($salidakikad9))
				IniWrite($settingloc, "cuma", "dakikad10", GUICtrlRead($salidakikad10))
				IniWrite($settingloc, "cuma", "dakikad11", GUICtrlRead($salidakikad11))
				IniWrite($settingloc, "cuma", "dakikad12", GUICtrlRead($salidakikad12))
				IniWrite($settingloc, "cuma", "dakikad13", GUICtrlRead($salidakikad13))
				IniWrite($settingloc, "cuma", "dakikad14", GUICtrlRead($salidakikad14))
				IniWrite($settingloc, "cuma", "dakikad15", GUICtrlRead($salidakikad15))
				IniWrite($settingloc, "cuma", "dakikad16", GUICtrlRead($salidakikad16))

				IniWrite($settingloc, "cuma", "muzikd1", GUICtrlRead($salimuzikd1))
				IniWrite($settingloc, "cuma", "muzikd2", GUICtrlRead($salimuzikd2))
				IniWrite($settingloc, "cuma", "muzikd3", GUICtrlRead($salimuzikd3))
				IniWrite($settingloc, "cuma", "muzikd4", GUICtrlRead($salimuzikd4))
				IniWrite($settingloc, "cuma", "muzikd5", GUICtrlRead($salimuzikd5))
				IniWrite($settingloc, "cuma", "muzikd6", GUICtrlRead($salimuzikd6))
				IniWrite($settingloc, "cuma", "muzikd7", GUICtrlRead($salimuzikd7))
				IniWrite($settingloc, "cuma", "muzikd8", GUICtrlRead($salimuzikd8))
				IniWrite($settingloc, "cuma", "muzikd9", GUICtrlRead($salimuzikd9))
				IniWrite($settingloc, "cuma", "muzikd10", GUICtrlRead($salimuzikd10))
				IniWrite($settingloc, "cuma", "muzikd11", GUICtrlRead($salimuzikd11))
				IniWrite($settingloc, "cuma", "muzikd12", GUICtrlRead($salimuzikd12))
				IniWrite($settingloc, "cuma", "muzikd13", GUICtrlRead($salimuzikd13))
				IniWrite($settingloc, "cuma", "muzikd14", GUICtrlRead($salimuzikd14))
				IniWrite($settingloc, "cuma", "muzikd15", GUICtrlRead($salimuzikd15))
				IniWrite($settingloc, "cuma", "muzikd16", GUICtrlRead($salimuzikd16))

				IniWrite($settingloc, "cuma", "cumad1", IniRead($settingloc, "sali", "salid1", "1"))
				IniWrite($settingloc, "cuma", "cumad2", IniRead($settingloc, "sali", "salid2", "1"))
				IniWrite($settingloc, "cuma", "cumad3", IniRead($settingloc, "sali", "salid3", "1"))
				IniWrite($settingloc, "cuma", "cumad4", IniRead($settingloc, "sali", "salid4", "1"))
				IniWrite($settingloc, "cuma", "cumad5", IniRead($settingloc, "sali", "salid5", "1"))
				IniWrite($settingloc, "cuma", "cumad6", IniRead($settingloc, "sali", "salid6", "1"))
				IniWrite($settingloc, "cuma", "cumad7", IniRead($settingloc, "sali", "salid7", "1"))
				IniWrite($settingloc, "cuma", "cumad8", IniRead($settingloc, "sali", "salid8", "1"))
				IniWrite($settingloc, "cuma", "cumad9", IniRead($settingloc, "sali", "salid9", "1"))
				IniWrite($settingloc, "cuma", "cumad10", IniRead($settingloc, "sali", "salid10", "1"))
				IniWrite($settingloc, "cuma", "cumad11", IniRead($settingloc, "sali", "salid11", "1"))
				IniWrite($settingloc, "cuma", "cumad12", IniRead($settingloc, "sali", "salid12", "1"))
				IniWrite($settingloc, "cuma", "cumad13", IniRead($settingloc, "sali", "salid13", "1"))
				IniWrite($settingloc, "cuma", "cumad14", IniRead($settingloc, "sali", "salid14", "1"))
				IniWrite($settingloc, "cuma", "cumad15", IniRead($settingloc, "sali", "salid15", "1"))
				IniWrite($settingloc, "cuma", "cumad16", IniRead($settingloc, "sali", "salid16", "1"))

			ElseIf GUICtrlRead($salikopyalanacak) = "C.Tesi" Then
				IniWrite($settingloc, "ctesi", "saatd1", GUICtrlRead($salisaatd1))
				IniWrite($settingloc, "ctesi", "saatd2", GUICtrlRead($salisaatd2))
				IniWrite($settingloc, "ctesi", "saatd3", GUICtrlRead($salisaatd3))
				IniWrite($settingloc, "ctesi", "saatd4", GUICtrlRead($salisaatd4))
				IniWrite($settingloc, "ctesi", "saatd5", GUICtrlRead($salisaatd5))
				IniWrite($settingloc, "ctesi", "saatd6", GUICtrlRead($salisaatd6))
				IniWrite($settingloc, "ctesi", "saatd7", GUICtrlRead($salisaatd7))
				IniWrite($settingloc, "ctesi", "saatd8", GUICtrlRead($salisaatd8))
				IniWrite($settingloc, "ctesi", "saatd9", GUICtrlRead($salisaatd9))
				IniWrite($settingloc, "ctesi", "saatd10", GUICtrlRead($salisaatd10))
				IniWrite($settingloc, "ctesi", "saatd11", GUICtrlRead($salisaatd11))
				IniWrite($settingloc, "ctesi", "saatd12", GUICtrlRead($salisaatd12))
				IniWrite($settingloc, "ctesi", "saatd13", GUICtrlRead($salisaatd13))
				IniWrite($settingloc, "ctesi", "saatd14", GUICtrlRead($salisaatd14))
				IniWrite($settingloc, "ctesi", "saatd15", GUICtrlRead($salisaatd15))
				IniWrite($settingloc, "ctesi", "saatd16", GUICtrlRead($salisaatd16))

				IniWrite($settingloc, "ctesi", "dakikad1", GUICtrlRead($salidakikad1))
				IniWrite($settingloc, "ctesi", "dakikad2", GUICtrlRead($salidakikad2))
				IniWrite($settingloc, "ctesi", "dakikad3", GUICtrlRead($salidakikad3))
				IniWrite($settingloc, "ctesi", "dakikad4", GUICtrlRead($salidakikad4))
				IniWrite($settingloc, "ctesi", "dakikad5", GUICtrlRead($salidakikad5))
				IniWrite($settingloc, "ctesi", "dakikad6", GUICtrlRead($salidakikad6))
				IniWrite($settingloc, "ctesi", "dakikad7", GUICtrlRead($salidakikad7))
				IniWrite($settingloc, "ctesi", "dakikad8", GUICtrlRead($salidakikad8))
				IniWrite($settingloc, "ctesi", "dakikad9", GUICtrlRead($salidakikad9))
				IniWrite($settingloc, "ctesi", "dakikad10", GUICtrlRead($salidakikad10))
				IniWrite($settingloc, "ctesi", "dakikad11", GUICtrlRead($salidakikad11))
				IniWrite($settingloc, "ctesi", "dakikad12", GUICtrlRead($salidakikad12))
				IniWrite($settingloc, "ctesi", "dakikad13", GUICtrlRead($salidakikad13))
				IniWrite($settingloc, "ctesi", "dakikad14", GUICtrlRead($salidakikad14))
				IniWrite($settingloc, "ctesi", "dakikad15", GUICtrlRead($salidakikad15))
				IniWrite($settingloc, "ctesi", "dakikad16", GUICtrlRead($salidakikad16))

				IniWrite($settingloc, "ctesi", "muzikd1", GUICtrlRead($salimuzikd1))
				IniWrite($settingloc, "ctesi", "muzikd2", GUICtrlRead($salimuzikd2))
				IniWrite($settingloc, "ctesi", "muzikd3", GUICtrlRead($salimuzikd3))
				IniWrite($settingloc, "ctesi", "muzikd4", GUICtrlRead($salimuzikd4))
				IniWrite($settingloc, "ctesi", "muzikd5", GUICtrlRead($salimuzikd5))
				IniWrite($settingloc, "ctesi", "muzikd6", GUICtrlRead($salimuzikd6))
				IniWrite($settingloc, "ctesi", "muzikd7", GUICtrlRead($salimuzikd7))
				IniWrite($settingloc, "ctesi", "muzikd8", GUICtrlRead($salimuzikd8))
				IniWrite($settingloc, "ctesi", "muzikd9", GUICtrlRead($salimuzikd9))
				IniWrite($settingloc, "ctesi", "muzikd10", GUICtrlRead($salimuzikd10))
				IniWrite($settingloc, "ctesi", "muzikd11", GUICtrlRead($salimuzikd11))
				IniWrite($settingloc, "ctesi", "muzikd12", GUICtrlRead($salimuzikd12))
				IniWrite($settingloc, "ctesi", "muzikd13", GUICtrlRead($salimuzikd13))
				IniWrite($settingloc, "ctesi", "muzikd14", GUICtrlRead($salimuzikd14))
				IniWrite($settingloc, "ctesi", "muzikd15", GUICtrlRead($salimuzikd15))
				IniWrite($settingloc, "ctesi", "muzikd16", GUICtrlRead($salimuzikd16))

				IniWrite($settingloc, "ctesi", "ctesid1", IniRead($settingloc, "sali", "salid1", "1"))
				IniWrite($settingloc, "ctesi", "ctesid2", IniRead($settingloc, "sali", "salid2", "1"))
				IniWrite($settingloc, "ctesi", "ctesid3", IniRead($settingloc, "sali", "salid3", "1"))
				IniWrite($settingloc, "ctesi", "ctesid4", IniRead($settingloc, "sali", "salid4", "1"))
				IniWrite($settingloc, "ctesi", "ctesid5", IniRead($settingloc, "sali", "salid5", "1"))
				IniWrite($settingloc, "ctesi", "ctesid6", IniRead($settingloc, "sali", "salid6", "1"))
				IniWrite($settingloc, "ctesi", "ctesid7", IniRead($settingloc, "sali", "salid7", "1"))
				IniWrite($settingloc, "ctesi", "ctesid8", IniRead($settingloc, "sali", "salid8", "1"))
				IniWrite($settingloc, "ctesi", "ctesid9", IniRead($settingloc, "sali", "salid9", "1"))
				IniWrite($settingloc, "ctesi", "ctesid10", IniRead($settingloc, "sali", "salid10", "1"))
				IniWrite($settingloc, "ctesi", "ctesid11", IniRead($settingloc, "sali", "salid11", "1"))
				IniWrite($settingloc, "ctesi", "ctesid12", IniRead($settingloc, "sali", "salid12", "1"))
				IniWrite($settingloc, "ctesi", "ctesid13", IniRead($settingloc, "sali", "salid13", "1"))
				IniWrite($settingloc, "ctesi", "ctesid14", IniRead($settingloc, "sali", "salid14", "1"))
				IniWrite($settingloc, "ctesi", "ctesid15", IniRead($settingloc, "sali", "salid15", "1"))
				IniWrite($settingloc, "ctesi", "ctesid16", IniRead($settingloc, "sali", "salid16", "1"))

			ElseIf GUICtrlRead($salikopyalanacak) = "Pazar" Then
				IniWrite($settingloc, "pazar", "saatd1", GUICtrlRead($salisaatd1))
				IniWrite($settingloc, "pazar", "saatd2", GUICtrlRead($salisaatd2))
				IniWrite($settingloc, "pazar", "saatd3", GUICtrlRead($salisaatd3))
				IniWrite($settingloc, "pazar", "saatd4", GUICtrlRead($salisaatd4))
				IniWrite($settingloc, "pazar", "saatd5", GUICtrlRead($salisaatd5))
				IniWrite($settingloc, "pazar", "saatd6", GUICtrlRead($salisaatd6))
				IniWrite($settingloc, "pazar", "saatd7", GUICtrlRead($salisaatd7))
				IniWrite($settingloc, "pazar", "saatd8", GUICtrlRead($salisaatd8))
				IniWrite($settingloc, "pazar", "saatd9", GUICtrlRead($salisaatd9))
				IniWrite($settingloc, "pazar", "saatd10", GUICtrlRead($salisaatd10))
				IniWrite($settingloc, "pazar", "saatd11", GUICtrlRead($salisaatd11))
				IniWrite($settingloc, "pazar", "saatd12", GUICtrlRead($salisaatd12))
				IniWrite($settingloc, "pazar", "saatd13", GUICtrlRead($salisaatd13))
				IniWrite($settingloc, "pazar", "saatd14", GUICtrlRead($salisaatd14))
				IniWrite($settingloc, "pazar", "saatd15", GUICtrlRead($salisaatd15))
				IniWrite($settingloc, "pazar", "saatd16", GUICtrlRead($salisaatd16))

				IniWrite($settingloc, "pazar", "dakikad1", GUICtrlRead($salidakikad1))
				IniWrite($settingloc, "pazar", "dakikad2", GUICtrlRead($salidakikad2))
				IniWrite($settingloc, "pazar", "dakikad3", GUICtrlRead($salidakikad3))
				IniWrite($settingloc, "pazar", "dakikad4", GUICtrlRead($salidakikad4))
				IniWrite($settingloc, "pazar", "dakikad5", GUICtrlRead($salidakikad5))
				IniWrite($settingloc, "pazar", "dakikad6", GUICtrlRead($salidakikad6))
				IniWrite($settingloc, "pazar", "dakikad7", GUICtrlRead($salidakikad7))
				IniWrite($settingloc, "pazar", "dakikad8", GUICtrlRead($salidakikad8))
				IniWrite($settingloc, "pazar", "dakikad9", GUICtrlRead($salidakikad9))
				IniWrite($settingloc, "pazar", "dakikad10", GUICtrlRead($salidakikad10))
				IniWrite($settingloc, "pazar", "dakikad11", GUICtrlRead($salidakikad11))
				IniWrite($settingloc, "pazar", "dakikad12", GUICtrlRead($salidakikad12))
				IniWrite($settingloc, "pazar", "dakikad13", GUICtrlRead($salidakikad13))
				IniWrite($settingloc, "pazar", "dakikad14", GUICtrlRead($salidakikad14))
				IniWrite($settingloc, "pazar", "dakikad15", GUICtrlRead($salidakikad15))
				IniWrite($settingloc, "pazar", "dakikad16", GUICtrlRead($salidakikad16))

				IniWrite($settingloc, "pazar", "muzikd1", GUICtrlRead($salimuzikd1))
				IniWrite($settingloc, "pazar", "muzikd2", GUICtrlRead($salimuzikd2))
				IniWrite($settingloc, "pazar", "muzikd3", GUICtrlRead($salimuzikd3))
				IniWrite($settingloc, "pazar", "muzikd4", GUICtrlRead($salimuzikd4))
				IniWrite($settingloc, "pazar", "muzikd5", GUICtrlRead($salimuzikd5))
				IniWrite($settingloc, "pazar", "muzikd6", GUICtrlRead($salimuzikd6))
				IniWrite($settingloc, "pazar", "muzikd7", GUICtrlRead($salimuzikd7))
				IniWrite($settingloc, "pazar", "muzikd8", GUICtrlRead($salimuzikd8))
				IniWrite($settingloc, "pazar", "muzikd9", GUICtrlRead($salimuzikd9))
				IniWrite($settingloc, "pazar", "muzikd10", GUICtrlRead($salimuzikd10))
				IniWrite($settingloc, "pazar", "muzikd11", GUICtrlRead($salimuzikd11))
				IniWrite($settingloc, "pazar", "muzikd12", GUICtrlRead($salimuzikd12))
				IniWrite($settingloc, "pazar", "muzikd13", GUICtrlRead($salimuzikd13))
				IniWrite($settingloc, "pazar", "muzikd14", GUICtrlRead($salimuzikd14))
				IniWrite($settingloc, "pazar", "muzikd15", GUICtrlRead($salimuzikd15))
				IniWrite($settingloc, "pazar", "muzikd16", GUICtrlRead($salimuzikd16))

				IniWrite($settingloc, "pazar", "pazard1", IniRead($settingloc, "sali", "salid1", "1"))
				IniWrite($settingloc, "pazar", "pazard2", IniRead($settingloc, "sali", "salid2", "1"))
				IniWrite($settingloc, "pazar", "pazard3", IniRead($settingloc, "sali", "salid3", "1"))
				IniWrite($settingloc, "pazar", "pazard4", IniRead($settingloc, "sali", "salid4", "1"))
				IniWrite($settingloc, "pazar", "pazard5", IniRead($settingloc, "sali", "salid5", "1"))
				IniWrite($settingloc, "pazar", "pazard6", IniRead($settingloc, "sali", "salid6", "1"))
				IniWrite($settingloc, "pazar", "pazard7", IniRead($settingloc, "sali", "salid7", "1"))
				IniWrite($settingloc, "pazar", "pazard8", IniRead($settingloc, "sali", "salid8", "1"))
				IniWrite($settingloc, "pazar", "pazard9", IniRead($settingloc, "sali", "salid9", "1"))
				IniWrite($settingloc, "pazar", "pazard10", IniRead($settingloc, "sali", "salid10", "1"))
				IniWrite($settingloc, "pazar", "pazard11", IniRead($settingloc, "sali", "salid11", "1"))
				IniWrite($settingloc, "pazar", "pazard12", IniRead($settingloc, "sali", "salid12", "1"))
				IniWrite($settingloc, "pazar", "pazard13", IniRead($settingloc, "sali", "salid13", "1"))
				IniWrite($settingloc, "pazar", "pazard14", IniRead($settingloc, "sali", "salid14", "1"))
				IniWrite($settingloc, "pazar", "pazard15", IniRead($settingloc, "sali", "salid15", "1"))
				IniWrite($settingloc, "pazar", "pazard16", IniRead($settingloc, "sali", "salid16", "1"))
			EndIf

		Case $carsambakopyala
			If GUICtrlRead($carsambakopyalanacak) = "P.Tesi" Then
				IniWrite($settingloc, "ptesi", "saatd1", GUICtrlRead($carsambasaatd1))
				IniWrite($settingloc, "ptesi", "saatd2", GUICtrlRead($carsambasaatd2))
				IniWrite($settingloc, "ptesi", "saatd3", GUICtrlRead($carsambasaatd3))
				IniWrite($settingloc, "ptesi", "saatd4", GUICtrlRead($carsambasaatd4))
				IniWrite($settingloc, "ptesi", "saatd5", GUICtrlRead($carsambasaatd5))
				IniWrite($settingloc, "ptesi", "saatd6", GUICtrlRead($carsambasaatd6))
				IniWrite($settingloc, "ptesi", "saatd7", GUICtrlRead($carsambasaatd7))
				IniWrite($settingloc, "ptesi", "saatd8", GUICtrlRead($carsambasaatd8))
				IniWrite($settingloc, "ptesi", "saatd9", GUICtrlRead($carsambasaatd9))
				IniWrite($settingloc, "ptesi", "saatd10", GUICtrlRead($carsambasaatd10))
				IniWrite($settingloc, "ptesi", "saatd11", GUICtrlRead($carsambasaatd11))
				IniWrite($settingloc, "ptesi", "saatd12", GUICtrlRead($carsambasaatd12))
				IniWrite($settingloc, "ptesi", "saatd13", GUICtrlRead($carsambasaatd13))
				IniWrite($settingloc, "ptesi", "saatd14", GUICtrlRead($carsambasaatd14))
				IniWrite($settingloc, "ptesi", "saatd15", GUICtrlRead($carsambasaatd15))
				IniWrite($settingloc, "ptesi", "saatd16", GUICtrlRead($carsambasaatd16))

				IniWrite($settingloc, "ptesi", "dakikad1", GUICtrlRead($carsambadakikad1))
				IniWrite($settingloc, "ptesi", "dakikad2", GUICtrlRead($carsambadakikad2))
				IniWrite($settingloc, "ptesi", "dakikad3", GUICtrlRead($carsambadakikad3))
				IniWrite($settingloc, "ptesi", "dakikad4", GUICtrlRead($carsambadakikad4))
				IniWrite($settingloc, "ptesi", "dakikad5", GUICtrlRead($carsambadakikad5))
				IniWrite($settingloc, "ptesi", "dakikad6", GUICtrlRead($carsambadakikad6))
				IniWrite($settingloc, "ptesi", "dakikad7", GUICtrlRead($carsambadakikad7))
				IniWrite($settingloc, "ptesi", "dakikad8", GUICtrlRead($carsambadakikad8))
				IniWrite($settingloc, "ptesi", "dakikad9", GUICtrlRead($carsambadakikad9))
				IniWrite($settingloc, "ptesi", "dakikad10", GUICtrlRead($carsambadakikad10))
				IniWrite($settingloc, "ptesi", "dakikad11", GUICtrlRead($carsambadakikad11))
				IniWrite($settingloc, "ptesi", "dakikad12", GUICtrlRead($carsambadakikad12))
				IniWrite($settingloc, "ptesi", "dakikad13", GUICtrlRead($carsambadakikad13))
				IniWrite($settingloc, "ptesi", "dakikad14", GUICtrlRead($carsambadakikad14))
				IniWrite($settingloc, "ptesi", "dakikad15", GUICtrlRead($carsambadakikad15))
				IniWrite($settingloc, "ptesi", "dakikad16", GUICtrlRead($carsambadakikad16))

				IniWrite($settingloc, "ptesi", "muzikd1", GUICtrlRead($carsambamuzikd1))
				IniWrite($settingloc, "ptesi", "muzikd2", GUICtrlRead($carsambamuzikd2))
				IniWrite($settingloc, "ptesi", "muzikd3", GUICtrlRead($carsambamuzikd3))
				IniWrite($settingloc, "ptesi", "muzikd4", GUICtrlRead($carsambamuzikd4))
				IniWrite($settingloc, "ptesi", "muzikd5", GUICtrlRead($carsambamuzikd5))
				IniWrite($settingloc, "ptesi", "muzikd6", GUICtrlRead($carsambamuzikd6))
				IniWrite($settingloc, "ptesi", "muzikd7", GUICtrlRead($carsambamuzikd7))
				IniWrite($settingloc, "ptesi", "muzikd8", GUICtrlRead($carsambamuzikd8))
				IniWrite($settingloc, "ptesi", "muzikd9", GUICtrlRead($carsambamuzikd9))
				IniWrite($settingloc, "ptesi", "muzikd10", GUICtrlRead($carsambamuzikd10))
				IniWrite($settingloc, "ptesi", "muzikd11", GUICtrlRead($carsambamuzikd11))
				IniWrite($settingloc, "ptesi", "muzikd12", GUICtrlRead($carsambamuzikd12))
				IniWrite($settingloc, "ptesi", "muzikd13", GUICtrlRead($carsambamuzikd13))
				IniWrite($settingloc, "ptesi", "muzikd14", GUICtrlRead($carsambamuzikd14))
				IniWrite($settingloc, "ptesi", "muzikd15", GUICtrlRead($carsambamuzikd15))
				IniWrite($settingloc, "ptesi", "muzikd16", GUICtrlRead($carsambamuzikd16))

				IniWrite($settingloc, "ptesi", "ptesid1", IniRead($settingloc, "carsamba", "carsambad1", "1"))
				IniWrite($settingloc, "ptesi", "ptesid2", IniRead($settingloc, "carsamba", "carsambad2", "1"))
				IniWrite($settingloc, "ptesi", "ptesid3", IniRead($settingloc, "carsamba", "carsambad3", "1"))
				IniWrite($settingloc, "ptesi", "ptesid4", IniRead($settingloc, "carsamba", "carsambad4", "1"))
				IniWrite($settingloc, "ptesi", "ptesid5", IniRead($settingloc, "carsamba", "carsambad5", "1"))
				IniWrite($settingloc, "ptesi", "ptesid6", IniRead($settingloc, "carsamba", "carsambad6", "1"))
				IniWrite($settingloc, "ptesi", "ptesid7", IniRead($settingloc, "carsamba", "carsambad7", "1"))
				IniWrite($settingloc, "ptesi", "ptesid8", IniRead($settingloc, "carsamba", "carsambad8", "1"))
				IniWrite($settingloc, "ptesi", "ptesid9", IniRead($settingloc, "carsamba", "carsambad9", "1"))
				IniWrite($settingloc, "ptesi", "ptesid10", IniRead($settingloc, "carsamba", "carsambad10", "1"))
				IniWrite($settingloc, "ptesi", "ptesid11", IniRead($settingloc, "carsamba", "carsambad11", "1"))
				IniWrite($settingloc, "ptesi", "ptesid12", IniRead($settingloc, "carsamba", "carsambad12", "1"))
				IniWrite($settingloc, "ptesi", "ptesid13", IniRead($settingloc, "carsamba", "carsambad13", "1"))
				IniWrite($settingloc, "ptesi", "ptesid14", IniRead($settingloc, "carsamba", "carsambad14", "1"))
				IniWrite($settingloc, "ptesi", "ptesid15", IniRead($settingloc, "carsamba", "carsambad15", "1"))
				IniWrite($settingloc, "ptesi", "ptesid16", IniRead($settingloc, "carsamba", "carsambad16", "1"))

			ElseIf GUICtrlRead($carsambakopyalanacak) = "Salı" Then
				IniWrite($settingloc, "sali", "saatd1", GUICtrlRead($carsambasaatd1))
				IniWrite($settingloc, "sali", "saatd2", GUICtrlRead($carsambasaatd2))
				IniWrite($settingloc, "sali", "saatd3", GUICtrlRead($carsambasaatd3))
				IniWrite($settingloc, "sali", "saatd4", GUICtrlRead($carsambasaatd4))
				IniWrite($settingloc, "sali", "saatd5", GUICtrlRead($carsambasaatd5))
				IniWrite($settingloc, "sali", "saatd6", GUICtrlRead($carsambasaatd6))
				IniWrite($settingloc, "sali", "saatd7", GUICtrlRead($carsambasaatd7))
				IniWrite($settingloc, "sali", "saatd8", GUICtrlRead($carsambasaatd8))
				IniWrite($settingloc, "sali", "saatd9", GUICtrlRead($carsambasaatd9))
				IniWrite($settingloc, "sali", "saatd10", GUICtrlRead($carsambasaatd10))
				IniWrite($settingloc, "sali", "saatd11", GUICtrlRead($carsambasaatd11))
				IniWrite($settingloc, "sali", "saatd12", GUICtrlRead($carsambasaatd12))
				IniWrite($settingloc, "sali", "saatd13", GUICtrlRead($carsambasaatd13))
				IniWrite($settingloc, "sali", "saatd14", GUICtrlRead($carsambasaatd14))
				IniWrite($settingloc, "sali", "saatd15", GUICtrlRead($carsambasaatd15))
				IniWrite($settingloc, "sali", "saatd16", GUICtrlRead($carsambasaatd16))

				IniWrite($settingloc, "sali", "dakikad1", GUICtrlRead($carsambadakikad1))
				IniWrite($settingloc, "sali", "dakikad2", GUICtrlRead($carsambadakikad2))
				IniWrite($settingloc, "sali", "dakikad3", GUICtrlRead($carsambadakikad3))
				IniWrite($settingloc, "sali", "dakikad4", GUICtrlRead($carsambadakikad4))
				IniWrite($settingloc, "sali", "dakikad5", GUICtrlRead($carsambadakikad5))
				IniWrite($settingloc, "sali", "dakikad6", GUICtrlRead($carsambadakikad6))
				IniWrite($settingloc, "sali", "dakikad7", GUICtrlRead($carsambadakikad7))
				IniWrite($settingloc, "sali", "dakikad8", GUICtrlRead($carsambadakikad8))
				IniWrite($settingloc, "sali", "dakikad9", GUICtrlRead($carsambadakikad9))
				IniWrite($settingloc, "sali", "dakikad10", GUICtrlRead($carsambadakikad10))
				IniWrite($settingloc, "sali", "dakikad11", GUICtrlRead($carsambadakikad11))
				IniWrite($settingloc, "sali", "dakikad12", GUICtrlRead($carsambadakikad12))
				IniWrite($settingloc, "sali", "dakikad13", GUICtrlRead($carsambadakikad13))
				IniWrite($settingloc, "sali", "dakikad14", GUICtrlRead($carsambadakikad14))
				IniWrite($settingloc, "sali", "dakikad15", GUICtrlRead($carsambadakikad15))
				IniWrite($settingloc, "sali", "dakikad16", GUICtrlRead($carsambadakikad16))

				IniWrite($settingloc, "sali", "muzikd1", GUICtrlRead($carsambamuzikd1))
				IniWrite($settingloc, "sali", "muzikd2", GUICtrlRead($carsambamuzikd2))
				IniWrite($settingloc, "sali", "muzikd3", GUICtrlRead($carsambamuzikd3))
				IniWrite($settingloc, "sali", "muzikd4", GUICtrlRead($carsambamuzikd4))
				IniWrite($settingloc, "sali", "muzikd5", GUICtrlRead($carsambamuzikd5))
				IniWrite($settingloc, "sali", "muzikd6", GUICtrlRead($carsambamuzikd6))
				IniWrite($settingloc, "sali", "muzikd7", GUICtrlRead($carsambamuzikd7))
				IniWrite($settingloc, "sali", "muzikd8", GUICtrlRead($carsambamuzikd8))
				IniWrite($settingloc, "sali", "muzikd9", GUICtrlRead($carsambamuzikd9))
				IniWrite($settingloc, "sali", "muzikd10", GUICtrlRead($carsambamuzikd10))
				IniWrite($settingloc, "sali", "muzikd11", GUICtrlRead($carsambamuzikd11))
				IniWrite($settingloc, "sali", "muzikd12", GUICtrlRead($carsambamuzikd12))
				IniWrite($settingloc, "sali", "muzikd13", GUICtrlRead($carsambamuzikd13))
				IniWrite($settingloc, "sali", "muzikd14", GUICtrlRead($carsambamuzikd14))
				IniWrite($settingloc, "sali", "muzikd15", GUICtrlRead($carsambamuzikd15))
				IniWrite($settingloc, "sali", "muzikd16", GUICtrlRead($carsambamuzikd16))

				IniWrite($settingloc, "sali", "salid1", IniRead($settingloc, "carsamba", "carsambad1", "1"))
				IniWrite($settingloc, "sali", "salid2", IniRead($settingloc, "carsamba", "carsambad2", "1"))
				IniWrite($settingloc, "sali", "salid3", IniRead($settingloc, "carsamba", "carsambad3", "1"))
				IniWrite($settingloc, "sali", "salid4", IniRead($settingloc, "carsamba", "carsambad4", "1"))
				IniWrite($settingloc, "sali", "salid5", IniRead($settingloc, "carsamba", "carsambad5", "1"))
				IniWrite($settingloc, "sali", "salid6", IniRead($settingloc, "carsamba", "carsambad6", "1"))
				IniWrite($settingloc, "sali", "salid7", IniRead($settingloc, "carsamba", "carsambad7", "1"))
				IniWrite($settingloc, "sali", "salid8", IniRead($settingloc, "carsamba", "carsambad8", "1"))
				IniWrite($settingloc, "sali", "salid9", IniRead($settingloc, "carsamba", "carsambad9", "1"))
				IniWrite($settingloc, "sali", "salid10", IniRead($settingloc, "carsamba", "carsambad10", "1"))
				IniWrite($settingloc, "sali", "salid11", IniRead($settingloc, "carsamba", "carsambad11", "1"))
				IniWrite($settingloc, "sali", "salid12", IniRead($settingloc, "carsamba", "carsambad12", "1"))
				IniWrite($settingloc, "sali", "salid13", IniRead($settingloc, "carsamba", "carsambad13", "1"))
				IniWrite($settingloc, "sali", "salid14", IniRead($settingloc, "carsamba", "carsambad14", "1"))
				IniWrite($settingloc, "sali", "salid15", IniRead($settingloc, "carsamba", "carsambad15", "1"))
				IniWrite($settingloc, "sali", "salid16", IniRead($settingloc, "carsamba", "carsambad16", "1"))

			ElseIf GUICtrlRead($carsambakopyalanacak) = "Çarşamba" Then
				IniWrite($settingloc, "carsamba", "saatd1", GUICtrlRead($carsambasaatd1))
				IniWrite($settingloc, "carsamba", "saatd2", GUICtrlRead($carsambasaatd2))
				IniWrite($settingloc, "carsamba", "saatd3", GUICtrlRead($carsambasaatd3))
				IniWrite($settingloc, "carsamba", "saatd4", GUICtrlRead($carsambasaatd4))
				IniWrite($settingloc, "carsamba", "saatd5", GUICtrlRead($carsambasaatd5))
				IniWrite($settingloc, "carsamba", "saatd6", GUICtrlRead($carsambasaatd6))
				IniWrite($settingloc, "carsamba", "saatd7", GUICtrlRead($carsambasaatd7))
				IniWrite($settingloc, "carsamba", "saatd8", GUICtrlRead($carsambasaatd8))
				IniWrite($settingloc, "carsamba", "saatd9", GUICtrlRead($carsambasaatd9))
				IniWrite($settingloc, "carsamba", "saatd10", GUICtrlRead($carsambasaatd10))
				IniWrite($settingloc, "carsamba", "saatd11", GUICtrlRead($carsambasaatd11))
				IniWrite($settingloc, "carsamba", "saatd12", GUICtrlRead($carsambasaatd12))
				IniWrite($settingloc, "carsamba", "saatd13", GUICtrlRead($carsambasaatd13))
				IniWrite($settingloc, "carsamba", "saatd14", GUICtrlRead($carsambasaatd14))
				IniWrite($settingloc, "carsamba", "saatd15", GUICtrlRead($carsambasaatd15))
				IniWrite($settingloc, "carsamba", "saatd16", GUICtrlRead($carsambasaatd16))

				IniWrite($settingloc, "carsamba", "dakikad1", GUICtrlRead($carsambadakikad1))
				IniWrite($settingloc, "carsamba", "dakikad2", GUICtrlRead($carsambadakikad2))
				IniWrite($settingloc, "carsamba", "dakikad3", GUICtrlRead($carsambadakikad3))
				IniWrite($settingloc, "carsamba", "dakikad4", GUICtrlRead($carsambadakikad4))
				IniWrite($settingloc, "carsamba", "dakikad5", GUICtrlRead($carsambadakikad5))
				IniWrite($settingloc, "carsamba", "dakikad6", GUICtrlRead($carsambadakikad6))
				IniWrite($settingloc, "carsamba", "dakikad7", GUICtrlRead($carsambadakikad7))
				IniWrite($settingloc, "carsamba", "dakikad8", GUICtrlRead($carsambadakikad8))
				IniWrite($settingloc, "carsamba", "dakikad9", GUICtrlRead($carsambadakikad9))
				IniWrite($settingloc, "carsamba", "dakikad10", GUICtrlRead($carsambadakikad10))
				IniWrite($settingloc, "carsamba", "dakikad11", GUICtrlRead($carsambadakikad11))
				IniWrite($settingloc, "carsamba", "dakikad12", GUICtrlRead($carsambadakikad12))
				IniWrite($settingloc, "carsamba", "dakikad13", GUICtrlRead($carsambadakikad13))
				IniWrite($settingloc, "carsamba", "dakikad14", GUICtrlRead($carsambadakikad14))
				IniWrite($settingloc, "carsamba", "dakikad15", GUICtrlRead($carsambadakikad15))
				IniWrite($settingloc, "carsamba", "dakikad16", GUICtrlRead($carsambadakikad16))

				IniWrite($settingloc, "carsamba", "muzikd1", GUICtrlRead($carsambamuzikd1))
				IniWrite($settingloc, "carsamba", "muzikd2", GUICtrlRead($carsambamuzikd2))
				IniWrite($settingloc, "carsamba", "muzikd3", GUICtrlRead($carsambamuzikd3))
				IniWrite($settingloc, "carsamba", "muzikd4", GUICtrlRead($carsambamuzikd4))
				IniWrite($settingloc, "carsamba", "muzikd5", GUICtrlRead($carsambamuzikd5))
				IniWrite($settingloc, "carsamba", "muzikd6", GUICtrlRead($carsambamuzikd6))
				IniWrite($settingloc, "carsamba", "muzikd7", GUICtrlRead($carsambamuzikd7))
				IniWrite($settingloc, "carsamba", "muzikd8", GUICtrlRead($carsambamuzikd8))
				IniWrite($settingloc, "carsamba", "muzikd9", GUICtrlRead($carsambamuzikd9))
				IniWrite($settingloc, "carsamba", "muzikd10", GUICtrlRead($carsambamuzikd10))
				IniWrite($settingloc, "carsamba", "muzikd11", GUICtrlRead($carsambamuzikd11))
				IniWrite($settingloc, "carsamba", "muzikd12", GUICtrlRead($carsambamuzikd12))
				IniWrite($settingloc, "carsamba", "muzikd13", GUICtrlRead($carsambamuzikd13))
				IniWrite($settingloc, "carsamba", "muzikd14", GUICtrlRead($carsambamuzikd14))
				IniWrite($settingloc, "carsamba", "muzikd15", GUICtrlRead($carsambamuzikd15))
				IniWrite($settingloc, "carsamba", "muzikd16", GUICtrlRead($carsambamuzikd16))

				IniWrite($settingloc, "carsamba", "carsambad1", IniRead($settingloc, "carsamba", "carsambad1", "1"))
				IniWrite($settingloc, "carsamba", "carsambad2", IniRead($settingloc, "carsamba", "carsambad2", "1"))
				IniWrite($settingloc, "carsamba", "carsambad3", IniRead($settingloc, "carsamba", "carsambad3", "1"))
				IniWrite($settingloc, "carsamba", "carsambad4", IniRead($settingloc, "carsamba", "carsambad4", "1"))
				IniWrite($settingloc, "carsamba", "carsambad5", IniRead($settingloc, "carsamba", "carsambad5", "1"))
				IniWrite($settingloc, "carsamba", "carsambad6", IniRead($settingloc, "carsamba", "carsambad6", "1"))
				IniWrite($settingloc, "carsamba", "carsambad7", IniRead($settingloc, "carsamba", "carsambad7", "1"))
				IniWrite($settingloc, "carsamba", "carsambad8", IniRead($settingloc, "carsamba", "carsambad8", "1"))
				IniWrite($settingloc, "carsamba", "carsambad9", IniRead($settingloc, "carsamba", "carsambad9", "1"))
				IniWrite($settingloc, "carsamba", "carsambad10", IniRead($settingloc, "carsamba", "carsambad10", "1"))
				IniWrite($settingloc, "carsamba", "carsambad11", IniRead($settingloc, "carsamba", "carsambad11", "1"))
				IniWrite($settingloc, "carsamba", "carsambad12", IniRead($settingloc, "carsamba", "carsambad12", "1"))
				IniWrite($settingloc, "carsamba", "carsambad13", IniRead($settingloc, "carsamba", "carsambad13", "1"))
				IniWrite($settingloc, "carsamba", "carsambad14", IniRead($settingloc, "carsamba", "carsambad14", "1"))
				IniWrite($settingloc, "carsamba", "carsambad15", IniRead($settingloc, "carsamba", "carsambad15", "1"))
				IniWrite($settingloc, "carsamba", "carsambad16", IniRead($settingloc, "carsamba", "carsambad16", "1"))

			ElseIf GUICtrlRead($carsambakopyalanacak) = "Perşembe" Then
				IniWrite($settingloc, "persembe", "saatd1", GUICtrlRead($carsambasaatd1))
				IniWrite($settingloc, "persembe", "saatd2", GUICtrlRead($carsambasaatd2))
				IniWrite($settingloc, "persembe", "saatd3", GUICtrlRead($carsambasaatd3))
				IniWrite($settingloc, "persembe", "saatd4", GUICtrlRead($carsambasaatd4))
				IniWrite($settingloc, "persembe", "saatd5", GUICtrlRead($carsambasaatd5))
				IniWrite($settingloc, "persembe", "saatd6", GUICtrlRead($carsambasaatd6))
				IniWrite($settingloc, "persembe", "saatd7", GUICtrlRead($carsambasaatd7))
				IniWrite($settingloc, "persembe", "saatd8", GUICtrlRead($carsambasaatd8))
				IniWrite($settingloc, "persembe", "saatd9", GUICtrlRead($carsambasaatd9))
				IniWrite($settingloc, "persembe", "saatd10", GUICtrlRead($carsambasaatd10))
				IniWrite($settingloc, "persembe", "saatd11", GUICtrlRead($carsambasaatd11))
				IniWrite($settingloc, "persembe", "saatd12", GUICtrlRead($carsambasaatd12))
				IniWrite($settingloc, "persembe", "saatd13", GUICtrlRead($carsambasaatd13))
				IniWrite($settingloc, "persembe", "saatd14", GUICtrlRead($carsambasaatd14))
				IniWrite($settingloc, "persembe", "saatd15", GUICtrlRead($carsambasaatd15))
				IniWrite($settingloc, "persembe", "saatd16", GUICtrlRead($carsambasaatd16))

				IniWrite($settingloc, "persembe", "dakikad1", GUICtrlRead($carsambadakikad1))
				IniWrite($settingloc, "persembe", "dakikad2", GUICtrlRead($carsambadakikad2))
				IniWrite($settingloc, "persembe", "dakikad3", GUICtrlRead($carsambadakikad3))
				IniWrite($settingloc, "persembe", "dakikad4", GUICtrlRead($carsambadakikad4))
				IniWrite($settingloc, "persembe", "dakikad5", GUICtrlRead($carsambadakikad5))
				IniWrite($settingloc, "persembe", "dakikad6", GUICtrlRead($carsambadakikad6))
				IniWrite($settingloc, "persembe", "dakikad7", GUICtrlRead($carsambadakikad7))
				IniWrite($settingloc, "persembe", "dakikad8", GUICtrlRead($carsambadakikad8))
				IniWrite($settingloc, "persembe", "dakikad9", GUICtrlRead($carsambadakikad9))
				IniWrite($settingloc, "persembe", "dakikad10", GUICtrlRead($carsambadakikad10))
				IniWrite($settingloc, "persembe", "dakikad11", GUICtrlRead($carsambadakikad11))
				IniWrite($settingloc, "persembe", "dakikad12", GUICtrlRead($carsambadakikad12))
				IniWrite($settingloc, "persembe", "dakikad13", GUICtrlRead($carsambadakikad13))
				IniWrite($settingloc, "persembe", "dakikad14", GUICtrlRead($carsambadakikad14))
				IniWrite($settingloc, "persembe", "dakikad15", GUICtrlRead($carsambadakikad15))
				IniWrite($settingloc, "persembe", "dakikad16", GUICtrlRead($carsambadakikad16))

				IniWrite($settingloc, "persembe", "muzikd1", GUICtrlRead($carsambamuzikd1))
				IniWrite($settingloc, "persembe", "muzikd2", GUICtrlRead($carsambamuzikd2))
				IniWrite($settingloc, "persembe", "muzikd3", GUICtrlRead($carsambamuzikd3))
				IniWrite($settingloc, "persembe", "muzikd4", GUICtrlRead($carsambamuzikd4))
				IniWrite($settingloc, "persembe", "muzikd5", GUICtrlRead($carsambamuzikd5))
				IniWrite($settingloc, "persembe", "muzikd6", GUICtrlRead($carsambamuzikd6))
				IniWrite($settingloc, "persembe", "muzikd7", GUICtrlRead($carsambamuzikd7))
				IniWrite($settingloc, "persembe", "muzikd8", GUICtrlRead($carsambamuzikd8))
				IniWrite($settingloc, "persembe", "muzikd9", GUICtrlRead($carsambamuzikd9))
				IniWrite($settingloc, "persembe", "muzikd10", GUICtrlRead($carsambamuzikd10))
				IniWrite($settingloc, "persembe", "muzikd11", GUICtrlRead($carsambamuzikd11))
				IniWrite($settingloc, "persembe", "muzikd12", GUICtrlRead($carsambamuzikd12))
				IniWrite($settingloc, "persembe", "muzikd13", GUICtrlRead($carsambamuzikd13))
				IniWrite($settingloc, "persembe", "muzikd14", GUICtrlRead($carsambamuzikd14))
				IniWrite($settingloc, "persembe", "muzikd15", GUICtrlRead($carsambamuzikd15))
				IniWrite($settingloc, "persembe", "muzikd16", GUICtrlRead($carsambamuzikd16))

				IniWrite($settingloc, "persembe", "persembed1", IniRead($settingloc, "carsamba", "carsambad1", "1"))
				IniWrite($settingloc, "persembe", "persembed2", IniRead($settingloc, "carsamba", "carsambad2", "1"))
				IniWrite($settingloc, "persembe", "persembed3", IniRead($settingloc, "carsamba", "carsambad3", "1"))
				IniWrite($settingloc, "persembe", "persembed4", IniRead($settingloc, "carsamba", "carsambad4", "1"))
				IniWrite($settingloc, "persembe", "persembed5", IniRead($settingloc, "carsamba", "carsambad5", "1"))
				IniWrite($settingloc, "persembe", "persembed6", IniRead($settingloc, "carsamba", "carsambad6", "1"))
				IniWrite($settingloc, "persembe", "persembed7", IniRead($settingloc, "carsamba", "carsambad7", "1"))
				IniWrite($settingloc, "persembe", "persembed8", IniRead($settingloc, "carsamba", "carsambad8", "1"))
				IniWrite($settingloc, "persembe", "persembed9", IniRead($settingloc, "carsamba", "carsambad9", "1"))
				IniWrite($settingloc, "persembe", "persembed10", IniRead($settingloc, "carsamba", "carsambad10", "1"))
				IniWrite($settingloc, "persembe", "persembed11", IniRead($settingloc, "carsamba", "carsambad11", "1"))
				IniWrite($settingloc, "persembe", "persembed12", IniRead($settingloc, "carsamba", "carsambad12", "1"))
				IniWrite($settingloc, "persembe", "persembed13", IniRead($settingloc, "carsamba", "carsambad13", "1"))
				IniWrite($settingloc, "persembe", "persembed14", IniRead($settingloc, "carsamba", "carsambad14", "1"))
				IniWrite($settingloc, "persembe", "persembed15", IniRead($settingloc, "carsamba", "carsambad15", "1"))
				IniWrite($settingloc, "persembe", "persembed16", IniRead($settingloc, "carsamba", "carsambad16", "1"))

			ElseIf GUICtrlRead($carsambakopyalanacak) = "Cuma" Then
				IniWrite($settingloc, "cuma", "saatd1", GUICtrlRead($carsambasaatd1))
				IniWrite($settingloc, "cuma", "saatd2", GUICtrlRead($carsambasaatd2))
				IniWrite($settingloc, "cuma", "saatd3", GUICtrlRead($carsambasaatd3))
				IniWrite($settingloc, "cuma", "saatd4", GUICtrlRead($carsambasaatd4))
				IniWrite($settingloc, "cuma", "saatd5", GUICtrlRead($carsambasaatd5))
				IniWrite($settingloc, "cuma", "saatd6", GUICtrlRead($carsambasaatd6))
				IniWrite($settingloc, "cuma", "saatd7", GUICtrlRead($carsambasaatd7))
				IniWrite($settingloc, "cuma", "saatd8", GUICtrlRead($carsambasaatd8))
				IniWrite($settingloc, "cuma", "saatd9", GUICtrlRead($carsambasaatd9))
				IniWrite($settingloc, "cuma", "saatd10", GUICtrlRead($carsambasaatd10))
				IniWrite($settingloc, "cuma", "saatd11", GUICtrlRead($carsambasaatd11))
				IniWrite($settingloc, "cuma", "saatd12", GUICtrlRead($carsambasaatd12))
				IniWrite($settingloc, "cuma", "saatd13", GUICtrlRead($carsambasaatd13))
				IniWrite($settingloc, "cuma", "saatd14", GUICtrlRead($carsambasaatd14))
				IniWrite($settingloc, "cuma", "saatd15", GUICtrlRead($carsambasaatd15))
				IniWrite($settingloc, "cuma", "saatd16", GUICtrlRead($carsambasaatd16))

				IniWrite($settingloc, "cuma", "dakikad1", GUICtrlRead($carsambadakikad1))
				IniWrite($settingloc, "cuma", "dakikad2", GUICtrlRead($carsambadakikad2))
				IniWrite($settingloc, "cuma", "dakikad3", GUICtrlRead($carsambadakikad3))
				IniWrite($settingloc, "cuma", "dakikad4", GUICtrlRead($carsambadakikad4))
				IniWrite($settingloc, "cuma", "dakikad5", GUICtrlRead($carsambadakikad5))
				IniWrite($settingloc, "cuma", "dakikad6", GUICtrlRead($carsambadakikad6))
				IniWrite($settingloc, "cuma", "dakikad7", GUICtrlRead($carsambadakikad7))
				IniWrite($settingloc, "cuma", "dakikad8", GUICtrlRead($carsambadakikad8))
				IniWrite($settingloc, "cuma", "dakikad9", GUICtrlRead($carsambadakikad9))
				IniWrite($settingloc, "cuma", "dakikad10", GUICtrlRead($carsambadakikad10))
				IniWrite($settingloc, "cuma", "dakikad11", GUICtrlRead($carsambadakikad11))
				IniWrite($settingloc, "cuma", "dakikad12", GUICtrlRead($carsambadakikad12))
				IniWrite($settingloc, "cuma", "dakikad13", GUICtrlRead($carsambadakikad13))
				IniWrite($settingloc, "cuma", "dakikad14", GUICtrlRead($carsambadakikad14))
				IniWrite($settingloc, "cuma", "dakikad15", GUICtrlRead($carsambadakikad15))
				IniWrite($settingloc, "cuma", "dakikad16", GUICtrlRead($carsambadakikad16))

				IniWrite($settingloc, "cuma", "muzikd1", GUICtrlRead($carsambamuzikd1))
				IniWrite($settingloc, "cuma", "muzikd2", GUICtrlRead($carsambamuzikd2))
				IniWrite($settingloc, "cuma", "muzikd3", GUICtrlRead($carsambamuzikd3))
				IniWrite($settingloc, "cuma", "muzikd4", GUICtrlRead($carsambamuzikd4))
				IniWrite($settingloc, "cuma", "muzikd5", GUICtrlRead($carsambamuzikd5))
				IniWrite($settingloc, "cuma", "muzikd6", GUICtrlRead($carsambamuzikd6))
				IniWrite($settingloc, "cuma", "muzikd7", GUICtrlRead($carsambamuzikd7))
				IniWrite($settingloc, "cuma", "muzikd8", GUICtrlRead($carsambamuzikd8))
				IniWrite($settingloc, "cuma", "muzikd9", GUICtrlRead($carsambamuzikd9))
				IniWrite($settingloc, "cuma", "muzikd10", GUICtrlRead($carsambamuzikd10))
				IniWrite($settingloc, "cuma", "muzikd11", GUICtrlRead($carsambamuzikd11))
				IniWrite($settingloc, "cuma", "muzikd12", GUICtrlRead($carsambamuzikd12))
				IniWrite($settingloc, "cuma", "muzikd13", GUICtrlRead($carsambamuzikd13))
				IniWrite($settingloc, "cuma", "muzikd14", GUICtrlRead($carsambamuzikd14))
				IniWrite($settingloc, "cuma", "muzikd15", GUICtrlRead($carsambamuzikd15))
				IniWrite($settingloc, "cuma", "muzikd16", GUICtrlRead($carsambamuzikd16))

				IniWrite($settingloc, "cuma", "cumad1", IniRead($settingloc, "carsamba", "carsambad1", "1"))
				IniWrite($settingloc, "cuma", "cumad2", IniRead($settingloc, "carsamba", "carsambad2", "1"))
				IniWrite($settingloc, "cuma", "cumad3", IniRead($settingloc, "carsamba", "carsambad3", "1"))
				IniWrite($settingloc, "cuma", "cumad4", IniRead($settingloc, "carsamba", "carsambad4", "1"))
				IniWrite($settingloc, "cuma", "cumad5", IniRead($settingloc, "carsamba", "carsambad5", "1"))
				IniWrite($settingloc, "cuma", "cumad6", IniRead($settingloc, "carsamba", "carsambad6", "1"))
				IniWrite($settingloc, "cuma", "cumad7", IniRead($settingloc, "carsamba", "carsambad7", "1"))
				IniWrite($settingloc, "cuma", "cumad8", IniRead($settingloc, "carsamba", "carsambad8", "1"))
				IniWrite($settingloc, "cuma", "cumad9", IniRead($settingloc, "carsamba", "carsambad9", "1"))
				IniWrite($settingloc, "cuma", "cumad10", IniRead($settingloc, "carsamba", "carsambad10", "1"))
				IniWrite($settingloc, "cuma", "cumad11", IniRead($settingloc, "carsamba", "carsambad11", "1"))
				IniWrite($settingloc, "cuma", "cumad12", IniRead($settingloc, "carsamba", "carsambad12", "1"))
				IniWrite($settingloc, "cuma", "cumad13", IniRead($settingloc, "carsamba", "carsambad13", "1"))
				IniWrite($settingloc, "cuma", "cumad14", IniRead($settingloc, "carsamba", "carsambad14", "1"))
				IniWrite($settingloc, "cuma", "cumad15", IniRead($settingloc, "carsamba", "carsambad15", "1"))
				IniWrite($settingloc, "cuma", "cumad16", IniRead($settingloc, "carsamba", "carsambad16", "1"))

			ElseIf GUICtrlRead($carsambakopyalanacak) = "C.Tesi" Then
				IniWrite($settingloc, "ctesi", "saatd1", GUICtrlRead($carsambasaatd1))
				IniWrite($settingloc, "ctesi", "saatd2", GUICtrlRead($carsambasaatd2))
				IniWrite($settingloc, "ctesi", "saatd3", GUICtrlRead($carsambasaatd3))
				IniWrite($settingloc, "ctesi", "saatd4", GUICtrlRead($carsambasaatd4))
				IniWrite($settingloc, "ctesi", "saatd5", GUICtrlRead($carsambasaatd5))
				IniWrite($settingloc, "ctesi", "saatd6", GUICtrlRead($carsambasaatd6))
				IniWrite($settingloc, "ctesi", "saatd7", GUICtrlRead($carsambasaatd7))
				IniWrite($settingloc, "ctesi", "saatd8", GUICtrlRead($carsambasaatd8))
				IniWrite($settingloc, "ctesi", "saatd9", GUICtrlRead($carsambasaatd9))
				IniWrite($settingloc, "ctesi", "saatd10", GUICtrlRead($carsambasaatd10))
				IniWrite($settingloc, "ctesi", "saatd11", GUICtrlRead($carsambasaatd11))
				IniWrite($settingloc, "ctesi", "saatd12", GUICtrlRead($carsambasaatd12))
				IniWrite($settingloc, "ctesi", "saatd13", GUICtrlRead($carsambasaatd13))
				IniWrite($settingloc, "ctesi", "saatd14", GUICtrlRead($carsambasaatd14))
				IniWrite($settingloc, "ctesi", "saatd15", GUICtrlRead($carsambasaatd15))
				IniWrite($settingloc, "ctesi", "saatd16", GUICtrlRead($carsambasaatd16))

				IniWrite($settingloc, "ctesi", "dakikad1", GUICtrlRead($carsambadakikad1))
				IniWrite($settingloc, "ctesi", "dakikad2", GUICtrlRead($carsambadakikad2))
				IniWrite($settingloc, "ctesi", "dakikad3", GUICtrlRead($carsambadakikad3))
				IniWrite($settingloc, "ctesi", "dakikad4", GUICtrlRead($carsambadakikad4))
				IniWrite($settingloc, "ctesi", "dakikad5", GUICtrlRead($carsambadakikad5))
				IniWrite($settingloc, "ctesi", "dakikad6", GUICtrlRead($carsambadakikad6))
				IniWrite($settingloc, "ctesi", "dakikad7", GUICtrlRead($carsambadakikad7))
				IniWrite($settingloc, "ctesi", "dakikad8", GUICtrlRead($carsambadakikad8))
				IniWrite($settingloc, "ctesi", "dakikad9", GUICtrlRead($carsambadakikad9))
				IniWrite($settingloc, "ctesi", "dakikad10", GUICtrlRead($carsambadakikad10))
				IniWrite($settingloc, "ctesi", "dakikad11", GUICtrlRead($carsambadakikad11))
				IniWrite($settingloc, "ctesi", "dakikad12", GUICtrlRead($carsambadakikad12))
				IniWrite($settingloc, "ctesi", "dakikad13", GUICtrlRead($carsambadakikad13))
				IniWrite($settingloc, "ctesi", "dakikad14", GUICtrlRead($carsambadakikad14))
				IniWrite($settingloc, "ctesi", "dakikad15", GUICtrlRead($carsambadakikad15))
				IniWrite($settingloc, "ctesi", "dakikad16", GUICtrlRead($carsambadakikad16))

				IniWrite($settingloc, "ctesi", "muzikd1", GUICtrlRead($carsambamuzikd1))
				IniWrite($settingloc, "ctesi", "muzikd2", GUICtrlRead($carsambamuzikd2))
				IniWrite($settingloc, "ctesi", "muzikd3", GUICtrlRead($carsambamuzikd3))
				IniWrite($settingloc, "ctesi", "muzikd4", GUICtrlRead($carsambamuzikd4))
				IniWrite($settingloc, "ctesi", "muzikd5", GUICtrlRead($carsambamuzikd5))
				IniWrite($settingloc, "ctesi", "muzikd6", GUICtrlRead($carsambamuzikd6))
				IniWrite($settingloc, "ctesi", "muzikd7", GUICtrlRead($carsambamuzikd7))
				IniWrite($settingloc, "ctesi", "muzikd8", GUICtrlRead($carsambamuzikd8))
				IniWrite($settingloc, "ctesi", "muzikd9", GUICtrlRead($carsambamuzikd9))
				IniWrite($settingloc, "ctesi", "muzikd10", GUICtrlRead($carsambamuzikd10))
				IniWrite($settingloc, "ctesi", "muzikd11", GUICtrlRead($carsambamuzikd11))
				IniWrite($settingloc, "ctesi", "muzikd12", GUICtrlRead($carsambamuzikd12))
				IniWrite($settingloc, "ctesi", "muzikd13", GUICtrlRead($carsambamuzikd13))
				IniWrite($settingloc, "ctesi", "muzikd14", GUICtrlRead($carsambamuzikd14))
				IniWrite($settingloc, "ctesi", "muzikd15", GUICtrlRead($carsambamuzikd15))
				IniWrite($settingloc, "ctesi", "muzikd16", GUICtrlRead($carsambamuzikd16))

				IniWrite($settingloc, "ctesi", "ctesid1", IniRead($settingloc, "carsamba", "carsambad1", "1"))
				IniWrite($settingloc, "ctesi", "ctesid2", IniRead($settingloc, "carsamba", "carsambad2", "1"))
				IniWrite($settingloc, "ctesi", "ctesid3", IniRead($settingloc, "carsamba", "carsambad3", "1"))
				IniWrite($settingloc, "ctesi", "ctesid4", IniRead($settingloc, "carsamba", "carsambad4", "1"))
				IniWrite($settingloc, "ctesi", "ctesid5", IniRead($settingloc, "carsamba", "carsambad5", "1"))
				IniWrite($settingloc, "ctesi", "ctesid6", IniRead($settingloc, "carsamba", "carsambad6", "1"))
				IniWrite($settingloc, "ctesi", "ctesid7", IniRead($settingloc, "carsamba", "carsambad7", "1"))
				IniWrite($settingloc, "ctesi", "ctesid8", IniRead($settingloc, "carsamba", "carsambad8", "1"))
				IniWrite($settingloc, "ctesi", "ctesid9", IniRead($settingloc, "carsamba", "carsambad9", "1"))
				IniWrite($settingloc, "ctesi", "ctesid10", IniRead($settingloc, "carsamba", "carsambad10", "1"))
				IniWrite($settingloc, "ctesi", "ctesid11", IniRead($settingloc, "carsamba", "carsambad11", "1"))
				IniWrite($settingloc, "ctesi", "ctesid12", IniRead($settingloc, "carsamba", "carsambad12", "1"))
				IniWrite($settingloc, "ctesi", "ctesid13", IniRead($settingloc, "carsamba", "carsambad13", "1"))
				IniWrite($settingloc, "ctesi", "ctesid14", IniRead($settingloc, "carsamba", "carsambad14", "1"))
				IniWrite($settingloc, "ctesi", "ctesid15", IniRead($settingloc, "carsamba", "carsambad15", "1"))
				IniWrite($settingloc, "ctesi", "ctesid16", IniRead($settingloc, "carsamba", "carsambad16", "1"))

			ElseIf GUICtrlRead($carsambakopyalanacak) = "Pazar" Then
				IniWrite($settingloc, "pazar", "saatd1", GUICtrlRead($carsambasaatd1))
				IniWrite($settingloc, "pazar", "saatd2", GUICtrlRead($carsambasaatd2))
				IniWrite($settingloc, "pazar", "saatd3", GUICtrlRead($carsambasaatd3))
				IniWrite($settingloc, "pazar", "saatd4", GUICtrlRead($carsambasaatd4))
				IniWrite($settingloc, "pazar", "saatd5", GUICtrlRead($carsambasaatd5))
				IniWrite($settingloc, "pazar", "saatd6", GUICtrlRead($carsambasaatd6))
				IniWrite($settingloc, "pazar", "saatd7", GUICtrlRead($carsambasaatd7))
				IniWrite($settingloc, "pazar", "saatd8", GUICtrlRead($carsambasaatd8))
				IniWrite($settingloc, "pazar", "saatd9", GUICtrlRead($carsambasaatd9))
				IniWrite($settingloc, "pazar", "saatd10", GUICtrlRead($carsambasaatd10))
				IniWrite($settingloc, "pazar", "saatd11", GUICtrlRead($carsambasaatd11))
				IniWrite($settingloc, "pazar", "saatd12", GUICtrlRead($carsambasaatd12))
				IniWrite($settingloc, "pazar", "saatd13", GUICtrlRead($carsambasaatd13))
				IniWrite($settingloc, "pazar", "saatd14", GUICtrlRead($carsambasaatd14))
				IniWrite($settingloc, "pazar", "saatd15", GUICtrlRead($carsambasaatd15))
				IniWrite($settingloc, "pazar", "saatd16", GUICtrlRead($carsambasaatd16))

				IniWrite($settingloc, "pazar", "dakikad1", GUICtrlRead($carsambadakikad1))
				IniWrite($settingloc, "pazar", "dakikad2", GUICtrlRead($carsambadakikad2))
				IniWrite($settingloc, "pazar", "dakikad3", GUICtrlRead($carsambadakikad3))
				IniWrite($settingloc, "pazar", "dakikad4", GUICtrlRead($carsambadakikad4))
				IniWrite($settingloc, "pazar", "dakikad5", GUICtrlRead($carsambadakikad5))
				IniWrite($settingloc, "pazar", "dakikad6", GUICtrlRead($carsambadakikad6))
				IniWrite($settingloc, "pazar", "dakikad7", GUICtrlRead($carsambadakikad7))
				IniWrite($settingloc, "pazar", "dakikad8", GUICtrlRead($carsambadakikad8))
				IniWrite($settingloc, "pazar", "dakikad9", GUICtrlRead($carsambadakikad9))
				IniWrite($settingloc, "pazar", "dakikad10", GUICtrlRead($carsambadakikad10))
				IniWrite($settingloc, "pazar", "dakikad11", GUICtrlRead($carsambadakikad11))
				IniWrite($settingloc, "pazar", "dakikad12", GUICtrlRead($carsambadakikad12))
				IniWrite($settingloc, "pazar", "dakikad13", GUICtrlRead($carsambadakikad13))
				IniWrite($settingloc, "pazar", "dakikad14", GUICtrlRead($carsambadakikad14))
				IniWrite($settingloc, "pazar", "dakikad15", GUICtrlRead($carsambadakikad15))
				IniWrite($settingloc, "pazar", "dakikad16", GUICtrlRead($carsambadakikad16))

				IniWrite($settingloc, "pazar", "muzikd1", GUICtrlRead($carsambamuzikd1))
				IniWrite($settingloc, "pazar", "muzikd2", GUICtrlRead($carsambamuzikd2))
				IniWrite($settingloc, "pazar", "muzikd3", GUICtrlRead($carsambamuzikd3))
				IniWrite($settingloc, "pazar", "muzikd4", GUICtrlRead($carsambamuzikd4))
				IniWrite($settingloc, "pazar", "muzikd5", GUICtrlRead($carsambamuzikd5))
				IniWrite($settingloc, "pazar", "muzikd6", GUICtrlRead($carsambamuzikd6))
				IniWrite($settingloc, "pazar", "muzikd7", GUICtrlRead($carsambamuzikd7))
				IniWrite($settingloc, "pazar", "muzikd8", GUICtrlRead($carsambamuzikd8))
				IniWrite($settingloc, "pazar", "muzikd9", GUICtrlRead($carsambamuzikd9))
				IniWrite($settingloc, "pazar", "muzikd10", GUICtrlRead($carsambamuzikd10))
				IniWrite($settingloc, "pazar", "muzikd11", GUICtrlRead($carsambamuzikd11))
				IniWrite($settingloc, "pazar", "muzikd12", GUICtrlRead($carsambamuzikd12))
				IniWrite($settingloc, "pazar", "muzikd13", GUICtrlRead($carsambamuzikd13))
				IniWrite($settingloc, "pazar", "muzikd14", GUICtrlRead($carsambamuzikd14))
				IniWrite($settingloc, "pazar", "muzikd15", GUICtrlRead($carsambamuzikd15))
				IniWrite($settingloc, "pazar", "muzikd16", GUICtrlRead($carsambamuzikd16))

				IniWrite($settingloc, "pazar", "pazard1", IniRead($settingloc, "carsamba", "carsambad1", "1"))
				IniWrite($settingloc, "pazar", "pazard2", IniRead($settingloc, "carsamba", "carsambad2", "1"))
				IniWrite($settingloc, "pazar", "pazard3", IniRead($settingloc, "carsamba", "carsambad3", "1"))
				IniWrite($settingloc, "pazar", "pazard4", IniRead($settingloc, "carsamba", "carsambad4", "1"))
				IniWrite($settingloc, "pazar", "pazard5", IniRead($settingloc, "carsamba", "carsambad5", "1"))
				IniWrite($settingloc, "pazar", "pazard6", IniRead($settingloc, "carsamba", "carsambad6", "1"))
				IniWrite($settingloc, "pazar", "pazard7", IniRead($settingloc, "carsamba", "carsambad7", "1"))
				IniWrite($settingloc, "pazar", "pazard8", IniRead($settingloc, "carsamba", "carsambad8", "1"))
				IniWrite($settingloc, "pazar", "pazard9", IniRead($settingloc, "carsamba", "carsambad9", "1"))
				IniWrite($settingloc, "pazar", "pazard10", IniRead($settingloc, "carsamba", "carsambad10", "1"))
				IniWrite($settingloc, "pazar", "pazard11", IniRead($settingloc, "carsamba", "carsambad11", "1"))
				IniWrite($settingloc, "pazar", "pazard12", IniRead($settingloc, "carsamba", "carsambad12", "1"))
				IniWrite($settingloc, "pazar", "pazard13", IniRead($settingloc, "carsamba", "carsambad13", "1"))
				IniWrite($settingloc, "pazar", "pazard14", IniRead($settingloc, "carsamba", "carsambad14", "1"))
				IniWrite($settingloc, "pazar", "pazard15", IniRead($settingloc, "carsamba", "carsambad15", "1"))
				IniWrite($settingloc, "pazar", "pazard16", IniRead($settingloc, "carsamba", "carsambad16", "1"))
			EndIf

		Case $persembekopyala
			If GUICtrlRead($persembekopyalanacak) = "P.Tesi" Then
				IniWrite($settingloc, "ptesi", "saatd1", GUICtrlRead($persembesaatd1))
				IniWrite($settingloc, "ptesi", "saatd2", GUICtrlRead($persembesaatd2))
				IniWrite($settingloc, "ptesi", "saatd3", GUICtrlRead($persembesaatd3))
				IniWrite($settingloc, "ptesi", "saatd4", GUICtrlRead($persembesaatd4))
				IniWrite($settingloc, "ptesi", "saatd5", GUICtrlRead($persembesaatd5))
				IniWrite($settingloc, "ptesi", "saatd6", GUICtrlRead($persembesaatd6))
				IniWrite($settingloc, "ptesi", "saatd7", GUICtrlRead($persembesaatd7))
				IniWrite($settingloc, "ptesi", "saatd8", GUICtrlRead($persembesaatd8))
				IniWrite($settingloc, "ptesi", "saatd9", GUICtrlRead($persembesaatd9))
				IniWrite($settingloc, "ptesi", "saatd10", GUICtrlRead($persembesaatd10))
				IniWrite($settingloc, "ptesi", "saatd11", GUICtrlRead($persembesaatd11))
				IniWrite($settingloc, "ptesi", "saatd12", GUICtrlRead($persembesaatd12))
				IniWrite($settingloc, "ptesi", "saatd13", GUICtrlRead($persembesaatd13))
				IniWrite($settingloc, "ptesi", "saatd14", GUICtrlRead($persembesaatd14))
				IniWrite($settingloc, "ptesi", "saatd15", GUICtrlRead($persembesaatd15))
				IniWrite($settingloc, "ptesi", "saatd16", GUICtrlRead($persembesaatd16))

				IniWrite($settingloc, "ptesi", "dakikad1", GUICtrlRead($persembedakikad1))
				IniWrite($settingloc, "ptesi", "dakikad2", GUICtrlRead($persembedakikad2))
				IniWrite($settingloc, "ptesi", "dakikad3", GUICtrlRead($persembedakikad3))
				IniWrite($settingloc, "ptesi", "dakikad4", GUICtrlRead($persembedakikad4))
				IniWrite($settingloc, "ptesi", "dakikad5", GUICtrlRead($persembedakikad5))
				IniWrite($settingloc, "ptesi", "dakikad6", GUICtrlRead($persembedakikad6))
				IniWrite($settingloc, "ptesi", "dakikad7", GUICtrlRead($persembedakikad7))
				IniWrite($settingloc, "ptesi", "dakikad8", GUICtrlRead($persembedakikad8))
				IniWrite($settingloc, "ptesi", "dakikad9", GUICtrlRead($persembedakikad9))
				IniWrite($settingloc, "ptesi", "dakikad10", GUICtrlRead($persembedakikad10))
				IniWrite($settingloc, "ptesi", "dakikad11", GUICtrlRead($persembedakikad11))
				IniWrite($settingloc, "ptesi", "dakikad12", GUICtrlRead($persembedakikad12))
				IniWrite($settingloc, "ptesi", "dakikad13", GUICtrlRead($persembedakikad13))
				IniWrite($settingloc, "ptesi", "dakikad14", GUICtrlRead($persembedakikad14))
				IniWrite($settingloc, "ptesi", "dakikad15", GUICtrlRead($persembedakikad15))
				IniWrite($settingloc, "ptesi", "dakikad16", GUICtrlRead($persembedakikad16))

				IniWrite($settingloc, "ptesi", "muzikd1", GUICtrlRead($persembemuzikd1))
				IniWrite($settingloc, "ptesi", "muzikd2", GUICtrlRead($persembemuzikd2))
				IniWrite($settingloc, "ptesi", "muzikd3", GUICtrlRead($persembemuzikd3))
				IniWrite($settingloc, "ptesi", "muzikd4", GUICtrlRead($persembemuzikd4))
				IniWrite($settingloc, "ptesi", "muzikd5", GUICtrlRead($persembemuzikd5))
				IniWrite($settingloc, "ptesi", "muzikd6", GUICtrlRead($persembemuzikd6))
				IniWrite($settingloc, "ptesi", "muzikd7", GUICtrlRead($persembemuzikd7))
				IniWrite($settingloc, "ptesi", "muzikd8", GUICtrlRead($persembemuzikd8))
				IniWrite($settingloc, "ptesi", "muzikd9", GUICtrlRead($persembemuzikd9))
				IniWrite($settingloc, "ptesi", "muzikd10", GUICtrlRead($persembemuzikd10))
				IniWrite($settingloc, "ptesi", "muzikd11", GUICtrlRead($persembemuzikd11))
				IniWrite($settingloc, "ptesi", "muzikd12", GUICtrlRead($persembemuzikd12))
				IniWrite($settingloc, "ptesi", "muzikd13", GUICtrlRead($persembemuzikd13))
				IniWrite($settingloc, "ptesi", "muzikd14", GUICtrlRead($persembemuzikd14))
				IniWrite($settingloc, "ptesi", "muzikd15", GUICtrlRead($persembemuzikd15))
				IniWrite($settingloc, "ptesi", "muzikd16", GUICtrlRead($persembemuzikd16))

				IniWrite($settingloc, "ptesi", "ptesid1", IniRead($settingloc, "persembe", "persembed1", "1"))
				IniWrite($settingloc, "ptesi", "ptesid2", IniRead($settingloc, "persembe", "persembed2", "1"))
				IniWrite($settingloc, "ptesi", "ptesid3", IniRead($settingloc, "persembe", "persembed3", "1"))
				IniWrite($settingloc, "ptesi", "ptesid4", IniRead($settingloc, "persembe", "persembed4", "1"))
				IniWrite($settingloc, "ptesi", "ptesid5", IniRead($settingloc, "persembe", "persembed5", "1"))
				IniWrite($settingloc, "ptesi", "ptesid6", IniRead($settingloc, "persembe", "persembed6", "1"))
				IniWrite($settingloc, "ptesi", "ptesid7", IniRead($settingloc, "persembe", "persembed7", "1"))
				IniWrite($settingloc, "ptesi", "ptesid8", IniRead($settingloc, "persembe", "persembed8", "1"))
				IniWrite($settingloc, "ptesi", "ptesid9", IniRead($settingloc, "persembe", "persembed9", "1"))
				IniWrite($settingloc, "ptesi", "ptesid10", IniRead($settingloc, "persembe", "persembed10", "1"))
				IniWrite($settingloc, "ptesi", "ptesid11", IniRead($settingloc, "persembe", "persembed11", "1"))
				IniWrite($settingloc, "ptesi", "ptesid12", IniRead($settingloc, "persembe", "persembed12", "1"))
				IniWrite($settingloc, "ptesi", "ptesid13", IniRead($settingloc, "persembe", "persembed13", "1"))
				IniWrite($settingloc, "ptesi", "ptesid14", IniRead($settingloc, "persembe", "persembed14", "1"))
				IniWrite($settingloc, "ptesi", "ptesid15", IniRead($settingloc, "persembe", "persembed15", "1"))
				IniWrite($settingloc, "ptesi", "ptesid16", IniRead($settingloc, "persembe", "persembed16", "1"))

			ElseIf GUICtrlRead($persembekopyalanacak) = "Salı" Then
				IniWrite($settingloc, "sali", "saatd1", GUICtrlRead($persembesaatd1))
				IniWrite($settingloc, "sali", "saatd2", GUICtrlRead($persembesaatd2))
				IniWrite($settingloc, "sali", "saatd3", GUICtrlRead($persembesaatd3))
				IniWrite($settingloc, "sali", "saatd4", GUICtrlRead($persembesaatd4))
				IniWrite($settingloc, "sali", "saatd5", GUICtrlRead($persembesaatd5))
				IniWrite($settingloc, "sali", "saatd6", GUICtrlRead($persembesaatd6))
				IniWrite($settingloc, "sali", "saatd7", GUICtrlRead($persembesaatd7))
				IniWrite($settingloc, "sali", "saatd8", GUICtrlRead($persembesaatd8))
				IniWrite($settingloc, "sali", "saatd9", GUICtrlRead($persembesaatd9))
				IniWrite($settingloc, "sali", "saatd10", GUICtrlRead($persembesaatd10))
				IniWrite($settingloc, "sali", "saatd11", GUICtrlRead($persembesaatd11))
				IniWrite($settingloc, "sali", "saatd12", GUICtrlRead($persembesaatd12))
				IniWrite($settingloc, "sali", "saatd13", GUICtrlRead($persembesaatd13))
				IniWrite($settingloc, "sali", "saatd14", GUICtrlRead($persembesaatd14))
				IniWrite($settingloc, "sali", "saatd15", GUICtrlRead($persembesaatd15))
				IniWrite($settingloc, "sali", "saatd16", GUICtrlRead($persembesaatd16))

				IniWrite($settingloc, "sali", "dakikad1", GUICtrlRead($persembedakikad1))
				IniWrite($settingloc, "sali", "dakikad2", GUICtrlRead($persembedakikad2))
				IniWrite($settingloc, "sali", "dakikad3", GUICtrlRead($persembedakikad3))
				IniWrite($settingloc, "sali", "dakikad4", GUICtrlRead($persembedakikad4))
				IniWrite($settingloc, "sali", "dakikad5", GUICtrlRead($persembedakikad5))
				IniWrite($settingloc, "sali", "dakikad6", GUICtrlRead($persembedakikad6))
				IniWrite($settingloc, "sali", "dakikad7", GUICtrlRead($persembedakikad7))
				IniWrite($settingloc, "sali", "dakikad8", GUICtrlRead($persembedakikad8))
				IniWrite($settingloc, "sali", "dakikad9", GUICtrlRead($persembedakikad9))
				IniWrite($settingloc, "sali", "dakikad10", GUICtrlRead($persembedakikad10))
				IniWrite($settingloc, "sali", "dakikad11", GUICtrlRead($persembedakikad11))
				IniWrite($settingloc, "sali", "dakikad12", GUICtrlRead($persembedakikad12))
				IniWrite($settingloc, "sali", "dakikad13", GUICtrlRead($persembedakikad13))
				IniWrite($settingloc, "sali", "dakikad14", GUICtrlRead($persembedakikad14))
				IniWrite($settingloc, "sali", "dakikad15", GUICtrlRead($persembedakikad15))
				IniWrite($settingloc, "sali", "dakikad16", GUICtrlRead($persembedakikad16))

				IniWrite($settingloc, "sali", "muzikd1", GUICtrlRead($persembemuzikd1))
				IniWrite($settingloc, "sali", "muzikd2", GUICtrlRead($persembemuzikd2))
				IniWrite($settingloc, "sali", "muzikd3", GUICtrlRead($persembemuzikd3))
				IniWrite($settingloc, "sali", "muzikd4", GUICtrlRead($persembemuzikd4))
				IniWrite($settingloc, "sali", "muzikd5", GUICtrlRead($persembemuzikd5))
				IniWrite($settingloc, "sali", "muzikd6", GUICtrlRead($persembemuzikd6))
				IniWrite($settingloc, "sali", "muzikd7", GUICtrlRead($persembemuzikd7))
				IniWrite($settingloc, "sali", "muzikd8", GUICtrlRead($persembemuzikd8))
				IniWrite($settingloc, "sali", "muzikd9", GUICtrlRead($persembemuzikd9))
				IniWrite($settingloc, "sali", "muzikd10", GUICtrlRead($persembemuzikd10))
				IniWrite($settingloc, "sali", "muzikd11", GUICtrlRead($persembemuzikd11))
				IniWrite($settingloc, "sali", "muzikd12", GUICtrlRead($persembemuzikd12))
				IniWrite($settingloc, "sali", "muzikd13", GUICtrlRead($persembemuzikd13))
				IniWrite($settingloc, "sali", "muzikd14", GUICtrlRead($persembemuzikd14))
				IniWrite($settingloc, "sali", "muzikd15", GUICtrlRead($persembemuzikd15))
				IniWrite($settingloc, "sali", "muzikd16", GUICtrlRead($persembemuzikd16))

				IniWrite($settingloc, "sali", "salid1", IniRead($settingloc, "persembe", "persembed1", "1"))
				IniWrite($settingloc, "sali", "salid2", IniRead($settingloc, "persembe", "persembed2", "1"))
				IniWrite($settingloc, "sali", "salid3", IniRead($settingloc, "persembe", "persembed3", "1"))
				IniWrite($settingloc, "sali", "salid4", IniRead($settingloc, "persembe", "persembed4", "1"))
				IniWrite($settingloc, "sali", "salid5", IniRead($settingloc, "persembe", "persembed5", "1"))
				IniWrite($settingloc, "sali", "salid6", IniRead($settingloc, "persembe", "persembed6", "1"))
				IniWrite($settingloc, "sali", "salid7", IniRead($settingloc, "persembe", "persembed7", "1"))
				IniWrite($settingloc, "sali", "salid8", IniRead($settingloc, "persembe", "persembed8", "1"))
				IniWrite($settingloc, "sali", "salid9", IniRead($settingloc, "persembe", "persembed9", "1"))
				IniWrite($settingloc, "sali", "salid10", IniRead($settingloc, "persembe", "persembed10", "1"))
				IniWrite($settingloc, "sali", "salid11", IniRead($settingloc, "persembe", "persembed11", "1"))
				IniWrite($settingloc, "sali", "salid12", IniRead($settingloc, "persembe", "persembed12", "1"))
				IniWrite($settingloc, "sali", "salid13", IniRead($settingloc, "persembe", "persembed13", "1"))
				IniWrite($settingloc, "sali", "salid14", IniRead($settingloc, "persembe", "persembed14", "1"))
				IniWrite($settingloc, "sali", "salid15", IniRead($settingloc, "persembe", "persembed15", "1"))
				IniWrite($settingloc, "sali", "salid16", IniRead($settingloc, "persembe", "persembed16", "1"))

			ElseIf GUICtrlRead($persembekopyalanacak) = "Çarşamba" Then
				IniWrite($settingloc, "carsamba", "saatd1", GUICtrlRead($persembesaatd1))
				IniWrite($settingloc, "carsamba", "saatd2", GUICtrlRead($persembesaatd2))
				IniWrite($settingloc, "carsamba", "saatd3", GUICtrlRead($persembesaatd3))
				IniWrite($settingloc, "carsamba", "saatd4", GUICtrlRead($persembesaatd4))
				IniWrite($settingloc, "carsamba", "saatd5", GUICtrlRead($persembesaatd5))
				IniWrite($settingloc, "carsamba", "saatd6", GUICtrlRead($persembesaatd6))
				IniWrite($settingloc, "carsamba", "saatd7", GUICtrlRead($persembesaatd7))
				IniWrite($settingloc, "carsamba", "saatd8", GUICtrlRead($persembesaatd8))
				IniWrite($settingloc, "carsamba", "saatd9", GUICtrlRead($persembesaatd9))
				IniWrite($settingloc, "carsamba", "saatd10", GUICtrlRead($persembesaatd10))
				IniWrite($settingloc, "carsamba", "saatd11", GUICtrlRead($persembesaatd11))
				IniWrite($settingloc, "carsamba", "saatd12", GUICtrlRead($persembesaatd12))
				IniWrite($settingloc, "carsamba", "saatd13", GUICtrlRead($persembesaatd13))
				IniWrite($settingloc, "carsamba", "saatd14", GUICtrlRead($persembesaatd14))
				IniWrite($settingloc, "carsamba", "saatd15", GUICtrlRead($persembesaatd15))
				IniWrite($settingloc, "carsamba", "saatd16", GUICtrlRead($persembesaatd16))

				IniWrite($settingloc, "carsamba", "dakikad1", GUICtrlRead($persembedakikad1))
				IniWrite($settingloc, "carsamba", "dakikad2", GUICtrlRead($persembedakikad2))
				IniWrite($settingloc, "carsamba", "dakikad3", GUICtrlRead($persembedakikad3))
				IniWrite($settingloc, "carsamba", "dakikad4", GUICtrlRead($persembedakikad4))
				IniWrite($settingloc, "carsamba", "dakikad5", GUICtrlRead($persembedakikad5))
				IniWrite($settingloc, "carsamba", "dakikad6", GUICtrlRead($persembedakikad6))
				IniWrite($settingloc, "carsamba", "dakikad7", GUICtrlRead($persembedakikad7))
				IniWrite($settingloc, "carsamba", "dakikad8", GUICtrlRead($persembedakikad8))
				IniWrite($settingloc, "carsamba", "dakikad9", GUICtrlRead($persembedakikad9))
				IniWrite($settingloc, "carsamba", "dakikad10", GUICtrlRead($persembedakikad10))
				IniWrite($settingloc, "carsamba", "dakikad11", GUICtrlRead($persembedakikad11))
				IniWrite($settingloc, "carsamba", "dakikad12", GUICtrlRead($persembedakikad12))
				IniWrite($settingloc, "carsamba", "dakikad13", GUICtrlRead($persembedakikad13))
				IniWrite($settingloc, "carsamba", "dakikad14", GUICtrlRead($persembedakikad14))
				IniWrite($settingloc, "carsamba", "dakikad15", GUICtrlRead($persembedakikad15))
				IniWrite($settingloc, "carsamba", "dakikad16", GUICtrlRead($persembedakikad16))

				IniWrite($settingloc, "carsamba", "muzikd1", GUICtrlRead($persembemuzikd1))
				IniWrite($settingloc, "carsamba", "muzikd2", GUICtrlRead($persembemuzikd2))
				IniWrite($settingloc, "carsamba", "muzikd3", GUICtrlRead($persembemuzikd3))
				IniWrite($settingloc, "carsamba", "muzikd4", GUICtrlRead($persembemuzikd4))
				IniWrite($settingloc, "carsamba", "muzikd5", GUICtrlRead($persembemuzikd5))
				IniWrite($settingloc, "carsamba", "muzikd6", GUICtrlRead($persembemuzikd6))
				IniWrite($settingloc, "carsamba", "muzikd7", GUICtrlRead($persembemuzikd7))
				IniWrite($settingloc, "carsamba", "muzikd8", GUICtrlRead($persembemuzikd8))
				IniWrite($settingloc, "carsamba", "muzikd9", GUICtrlRead($persembemuzikd9))
				IniWrite($settingloc, "carsamba", "muzikd10", GUICtrlRead($persembemuzikd10))
				IniWrite($settingloc, "carsamba", "muzikd11", GUICtrlRead($persembemuzikd11))
				IniWrite($settingloc, "carsamba", "muzikd12", GUICtrlRead($persembemuzikd12))
				IniWrite($settingloc, "carsamba", "muzikd13", GUICtrlRead($persembemuzikd13))
				IniWrite($settingloc, "carsamba", "muzikd14", GUICtrlRead($persembemuzikd14))
				IniWrite($settingloc, "carsamba", "muzikd15", GUICtrlRead($persembemuzikd15))
				IniWrite($settingloc, "carsamba", "muzikd16", GUICtrlRead($persembemuzikd16))

				IniWrite($settingloc, "carsamba", "carsambad1", IniRead($settingloc, "persembe", "persembed1", "1"))
				IniWrite($settingloc, "carsamba", "carsambad2", IniRead($settingloc, "persembe", "persembed2", "1"))
				IniWrite($settingloc, "carsamba", "carsambad3", IniRead($settingloc, "persembe", "persembed3", "1"))
				IniWrite($settingloc, "carsamba", "carsambad4", IniRead($settingloc, "persembe", "persembed4", "1"))
				IniWrite($settingloc, "carsamba", "carsambad5", IniRead($settingloc, "persembe", "persembed5", "1"))
				IniWrite($settingloc, "carsamba", "carsambad6", IniRead($settingloc, "persembe", "persembed6", "1"))
				IniWrite($settingloc, "carsamba", "carsambad7", IniRead($settingloc, "persembe", "persembed7", "1"))
				IniWrite($settingloc, "carsamba", "carsambad8", IniRead($settingloc, "persembe", "persembed8", "1"))
				IniWrite($settingloc, "carsamba", "carsambad9", IniRead($settingloc, "persembe", "persembed9", "1"))
				IniWrite($settingloc, "carsamba", "carsambad10", IniRead($settingloc, "persembe", "persembed10", "1"))
				IniWrite($settingloc, "carsamba", "carsambad11", IniRead($settingloc, "persembe", "persembed11", "1"))
				IniWrite($settingloc, "carsamba", "carsambad12", IniRead($settingloc, "persembe", "persembed12", "1"))
				IniWrite($settingloc, "carsamba", "carsambad13", IniRead($settingloc, "persembe", "persembed13", "1"))
				IniWrite($settingloc, "carsamba", "carsambad14", IniRead($settingloc, "persembe", "persembed14", "1"))
				IniWrite($settingloc, "carsamba", "carsambad15", IniRead($settingloc, "persembe", "persembed15", "1"))
				IniWrite($settingloc, "carsamba", "carsambad16", IniRead($settingloc, "persembe", "persembed16", "1"))

			ElseIf GUICtrlRead($persembekopyalanacak) = "Perşembe" Then
				IniWrite($settingloc, "persembe", "saatd1", GUICtrlRead($persembesaatd1))
				IniWrite($settingloc, "persembe", "saatd2", GUICtrlRead($persembesaatd2))
				IniWrite($settingloc, "persembe", "saatd3", GUICtrlRead($persembesaatd3))
				IniWrite($settingloc, "persembe", "saatd4", GUICtrlRead($persembesaatd4))
				IniWrite($settingloc, "persembe", "saatd5", GUICtrlRead($persembesaatd5))
				IniWrite($settingloc, "persembe", "saatd6", GUICtrlRead($persembesaatd6))
				IniWrite($settingloc, "persembe", "saatd7", GUICtrlRead($persembesaatd7))
				IniWrite($settingloc, "persembe", "saatd8", GUICtrlRead($persembesaatd8))
				IniWrite($settingloc, "persembe", "saatd9", GUICtrlRead($persembesaatd9))
				IniWrite($settingloc, "persembe", "saatd10", GUICtrlRead($persembesaatd10))
				IniWrite($settingloc, "persembe", "saatd11", GUICtrlRead($persembesaatd11))
				IniWrite($settingloc, "persembe", "saatd12", GUICtrlRead($persembesaatd12))
				IniWrite($settingloc, "persembe", "saatd13", GUICtrlRead($persembesaatd13))
				IniWrite($settingloc, "persembe", "saatd14", GUICtrlRead($persembesaatd14))
				IniWrite($settingloc, "persembe", "saatd15", GUICtrlRead($persembesaatd15))
				IniWrite($settingloc, "persembe", "saatd16", GUICtrlRead($persembesaatd16))

				IniWrite($settingloc, "persembe", "dakikad1", GUICtrlRead($persembedakikad1))
				IniWrite($settingloc, "persembe", "dakikad2", GUICtrlRead($persembedakikad2))
				IniWrite($settingloc, "persembe", "dakikad3", GUICtrlRead($persembedakikad3))
				IniWrite($settingloc, "persembe", "dakikad4", GUICtrlRead($persembedakikad4))
				IniWrite($settingloc, "persembe", "dakikad5", GUICtrlRead($persembedakikad5))
				IniWrite($settingloc, "persembe", "dakikad6", GUICtrlRead($persembedakikad6))
				IniWrite($settingloc, "persembe", "dakikad7", GUICtrlRead($persembedakikad7))
				IniWrite($settingloc, "persembe", "dakikad8", GUICtrlRead($persembedakikad8))
				IniWrite($settingloc, "persembe", "dakikad9", GUICtrlRead($persembedakikad9))
				IniWrite($settingloc, "persembe", "dakikad10", GUICtrlRead($persembedakikad10))
				IniWrite($settingloc, "persembe", "dakikad11", GUICtrlRead($persembedakikad11))
				IniWrite($settingloc, "persembe", "dakikad12", GUICtrlRead($persembedakikad12))
				IniWrite($settingloc, "persembe", "dakikad13", GUICtrlRead($persembedakikad13))
				IniWrite($settingloc, "persembe", "dakikad14", GUICtrlRead($persembedakikad14))
				IniWrite($settingloc, "persembe", "dakikad15", GUICtrlRead($persembedakikad15))
				IniWrite($settingloc, "persembe", "dakikad16", GUICtrlRead($persembedakikad16))

				IniWrite($settingloc, "persembe", "muzikd1", GUICtrlRead($persembemuzikd1))
				IniWrite($settingloc, "persembe", "muzikd2", GUICtrlRead($persembemuzikd2))
				IniWrite($settingloc, "persembe", "muzikd3", GUICtrlRead($persembemuzikd3))
				IniWrite($settingloc, "persembe", "muzikd4", GUICtrlRead($persembemuzikd4))
				IniWrite($settingloc, "persembe", "muzikd5", GUICtrlRead($persembemuzikd5))
				IniWrite($settingloc, "persembe", "muzikd6", GUICtrlRead($persembemuzikd6))
				IniWrite($settingloc, "persembe", "muzikd7", GUICtrlRead($persembemuzikd7))
				IniWrite($settingloc, "persembe", "muzikd8", GUICtrlRead($persembemuzikd8))
				IniWrite($settingloc, "persembe", "muzikd9", GUICtrlRead($persembemuzikd9))
				IniWrite($settingloc, "persembe", "muzikd10", GUICtrlRead($persembemuzikd10))
				IniWrite($settingloc, "persembe", "muzikd11", GUICtrlRead($persembemuzikd11))
				IniWrite($settingloc, "persembe", "muzikd12", GUICtrlRead($persembemuzikd12))
				IniWrite($settingloc, "persembe", "muzikd13", GUICtrlRead($persembemuzikd13))
				IniWrite($settingloc, "persembe", "muzikd14", GUICtrlRead($persembemuzikd14))
				IniWrite($settingloc, "persembe", "muzikd15", GUICtrlRead($persembemuzikd15))
				IniWrite($settingloc, "persembe", "muzikd16", GUICtrlRead($persembemuzikd16))

				IniWrite($settingloc, "persembe", "persembed1", IniRead($settingloc, "persembe", "persembed1", "1"))
				IniWrite($settingloc, "persembe", "persembed2", IniRead($settingloc, "persembe", "persembed2", "1"))
				IniWrite($settingloc, "persembe", "persembed3", IniRead($settingloc, "persembe", "persembed3", "1"))
				IniWrite($settingloc, "persembe", "persembed4", IniRead($settingloc, "persembe", "persembed4", "1"))
				IniWrite($settingloc, "persembe", "persembed5", IniRead($settingloc, "persembe", "persembed5", "1"))
				IniWrite($settingloc, "persembe", "persembed6", IniRead($settingloc, "persembe", "persembed6", "1"))
				IniWrite($settingloc, "persembe", "persembed7", IniRead($settingloc, "persembe", "persembed7", "1"))
				IniWrite($settingloc, "persembe", "persembed8", IniRead($settingloc, "persembe", "persembed8", "1"))
				IniWrite($settingloc, "persembe", "persembed9", IniRead($settingloc, "persembe", "persembed9", "1"))
				IniWrite($settingloc, "persembe", "persembed10", IniRead($settingloc, "persembe", "persembed10", "1"))
				IniWrite($settingloc, "persembe", "persembed11", IniRead($settingloc, "persembe", "persembed11", "1"))
				IniWrite($settingloc, "persembe", "persembed12", IniRead($settingloc, "persembe", "persembed12", "1"))
				IniWrite($settingloc, "persembe", "persembed13", IniRead($settingloc, "persembe", "persembed13", "1"))
				IniWrite($settingloc, "persembe", "persembed14", IniRead($settingloc, "persembe", "persembed14", "1"))
				IniWrite($settingloc, "persembe", "persembed15", IniRead($settingloc, "persembe", "persembed15", "1"))
				IniWrite($settingloc, "persembe", "persembed16", IniRead($settingloc, "persembe", "persembed16", "1"))

			ElseIf GUICtrlRead($persembekopyalanacak) = "Cuma" Then
				IniWrite($settingloc, "cuma", "saatd1", GUICtrlRead($persembesaatd1))
				IniWrite($settingloc, "cuma", "saatd2", GUICtrlRead($persembesaatd2))
				IniWrite($settingloc, "cuma", "saatd3", GUICtrlRead($persembesaatd3))
				IniWrite($settingloc, "cuma", "saatd4", GUICtrlRead($persembesaatd4))
				IniWrite($settingloc, "cuma", "saatd5", GUICtrlRead($persembesaatd5))
				IniWrite($settingloc, "cuma", "saatd6", GUICtrlRead($persembesaatd6))
				IniWrite($settingloc, "cuma", "saatd7", GUICtrlRead($persembesaatd7))
				IniWrite($settingloc, "cuma", "saatd8", GUICtrlRead($persembesaatd8))
				IniWrite($settingloc, "cuma", "saatd9", GUICtrlRead($persembesaatd9))
				IniWrite($settingloc, "cuma", "saatd10", GUICtrlRead($persembesaatd10))
				IniWrite($settingloc, "cuma", "saatd11", GUICtrlRead($persembesaatd11))
				IniWrite($settingloc, "cuma", "saatd12", GUICtrlRead($persembesaatd12))
				IniWrite($settingloc, "cuma", "saatd13", GUICtrlRead($persembesaatd13))
				IniWrite($settingloc, "cuma", "saatd14", GUICtrlRead($persembesaatd14))
				IniWrite($settingloc, "cuma", "saatd15", GUICtrlRead($persembesaatd15))
				IniWrite($settingloc, "cuma", "saatd16", GUICtrlRead($persembesaatd16))

				IniWrite($settingloc, "cuma", "dakikad1", GUICtrlRead($persembedakikad1))
				IniWrite($settingloc, "cuma", "dakikad2", GUICtrlRead($persembedakikad2))
				IniWrite($settingloc, "cuma", "dakikad3", GUICtrlRead($persembedakikad3))
				IniWrite($settingloc, "cuma", "dakikad4", GUICtrlRead($persembedakikad4))
				IniWrite($settingloc, "cuma", "dakikad5", GUICtrlRead($persembedakikad5))
				IniWrite($settingloc, "cuma", "dakikad6", GUICtrlRead($persembedakikad6))
				IniWrite($settingloc, "cuma", "dakikad7", GUICtrlRead($persembedakikad7))
				IniWrite($settingloc, "cuma", "dakikad8", GUICtrlRead($persembedakikad8))
				IniWrite($settingloc, "cuma", "dakikad9", GUICtrlRead($persembedakikad9))
				IniWrite($settingloc, "cuma", "dakikad10", GUICtrlRead($persembedakikad10))
				IniWrite($settingloc, "cuma", "dakikad11", GUICtrlRead($persembedakikad11))
				IniWrite($settingloc, "cuma", "dakikad12", GUICtrlRead($persembedakikad12))
				IniWrite($settingloc, "cuma", "dakikad13", GUICtrlRead($persembedakikad13))
				IniWrite($settingloc, "cuma", "dakikad14", GUICtrlRead($persembedakikad14))
				IniWrite($settingloc, "cuma", "dakikad15", GUICtrlRead($persembedakikad15))
				IniWrite($settingloc, "cuma", "dakikad16", GUICtrlRead($persembedakikad16))

				IniWrite($settingloc, "cuma", "muzikd1", GUICtrlRead($persembemuzikd1))
				IniWrite($settingloc, "cuma", "muzikd2", GUICtrlRead($persembemuzikd2))
				IniWrite($settingloc, "cuma", "muzikd3", GUICtrlRead($persembemuzikd3))
				IniWrite($settingloc, "cuma", "muzikd4", GUICtrlRead($persembemuzikd4))
				IniWrite($settingloc, "cuma", "muzikd5", GUICtrlRead($persembemuzikd5))
				IniWrite($settingloc, "cuma", "muzikd6", GUICtrlRead($persembemuzikd6))
				IniWrite($settingloc, "cuma", "muzikd7", GUICtrlRead($persembemuzikd7))
				IniWrite($settingloc, "cuma", "muzikd8", GUICtrlRead($persembemuzikd8))
				IniWrite($settingloc, "cuma", "muzikd9", GUICtrlRead($persembemuzikd9))
				IniWrite($settingloc, "cuma", "muzikd10", GUICtrlRead($persembemuzikd10))
				IniWrite($settingloc, "cuma", "muzikd11", GUICtrlRead($persembemuzikd11))
				IniWrite($settingloc, "cuma", "muzikd12", GUICtrlRead($persembemuzikd12))
				IniWrite($settingloc, "cuma", "muzikd13", GUICtrlRead($persembemuzikd13))
				IniWrite($settingloc, "cuma", "muzikd14", GUICtrlRead($persembemuzikd14))
				IniWrite($settingloc, "cuma", "muzikd15", GUICtrlRead($persembemuzikd15))
				IniWrite($settingloc, "cuma", "muzikd16", GUICtrlRead($persembemuzikd16))

				IniWrite($settingloc, "cuma", "cumad1", IniRead($settingloc, "persembe", "persembed1", "1"))
				IniWrite($settingloc, "cuma", "cumad2", IniRead($settingloc, "persembe", "persembed2", "1"))
				IniWrite($settingloc, "cuma", "cumad3", IniRead($settingloc, "persembe", "persembed3", "1"))
				IniWrite($settingloc, "cuma", "cumad4", IniRead($settingloc, "persembe", "persembed4", "1"))
				IniWrite($settingloc, "cuma", "cumad5", IniRead($settingloc, "persembe", "persembed5", "1"))
				IniWrite($settingloc, "cuma", "cumad6", IniRead($settingloc, "persembe", "persembed6", "1"))
				IniWrite($settingloc, "cuma", "cumad7", IniRead($settingloc, "persembe", "persembed7", "1"))
				IniWrite($settingloc, "cuma", "cumad8", IniRead($settingloc, "persembe", "persembed8", "1"))
				IniWrite($settingloc, "cuma", "cumad9", IniRead($settingloc, "persembe", "persembed9", "1"))
				IniWrite($settingloc, "cuma", "cumad10", IniRead($settingloc, "persembe", "persembed10", "1"))
				IniWrite($settingloc, "cuma", "cumad11", IniRead($settingloc, "persembe", "persembed11", "1"))
				IniWrite($settingloc, "cuma", "cumad12", IniRead($settingloc, "persembe", "persembed12", "1"))
				IniWrite($settingloc, "cuma", "cumad13", IniRead($settingloc, "persembe", "persembed13", "1"))
				IniWrite($settingloc, "cuma", "cumad14", IniRead($settingloc, "persembe", "persembed14", "1"))
				IniWrite($settingloc, "cuma", "cumad15", IniRead($settingloc, "persembe", "persembed15", "1"))
				IniWrite($settingloc, "cuma", "cumad16", IniRead($settingloc, "persembe", "persembed16", "1"))

			ElseIf GUICtrlRead($persembekopyalanacak) = "C.Tesi" Then
				IniWrite($settingloc, "ctesi", "saatd1", GUICtrlRead($persembesaatd1))
				IniWrite($settingloc, "ctesi", "saatd2", GUICtrlRead($persembesaatd2))
				IniWrite($settingloc, "ctesi", "saatd3", GUICtrlRead($persembesaatd3))
				IniWrite($settingloc, "ctesi", "saatd4", GUICtrlRead($persembesaatd4))
				IniWrite($settingloc, "ctesi", "saatd5", GUICtrlRead($persembesaatd5))
				IniWrite($settingloc, "ctesi", "saatd6", GUICtrlRead($persembesaatd6))
				IniWrite($settingloc, "ctesi", "saatd7", GUICtrlRead($persembesaatd7))
				IniWrite($settingloc, "ctesi", "saatd8", GUICtrlRead($persembesaatd8))
				IniWrite($settingloc, "ctesi", "saatd9", GUICtrlRead($persembesaatd9))
				IniWrite($settingloc, "ctesi", "saatd10", GUICtrlRead($persembesaatd10))
				IniWrite($settingloc, "ctesi", "saatd11", GUICtrlRead($persembesaatd11))
				IniWrite($settingloc, "ctesi", "saatd12", GUICtrlRead($persembesaatd12))
				IniWrite($settingloc, "ctesi", "saatd13", GUICtrlRead($persembesaatd13))
				IniWrite($settingloc, "ctesi", "saatd14", GUICtrlRead($persembesaatd14))
				IniWrite($settingloc, "ctesi", "saatd15", GUICtrlRead($persembesaatd15))
				IniWrite($settingloc, "ctesi", "saatd16", GUICtrlRead($persembesaatd16))

				IniWrite($settingloc, "ctesi", "dakikad1", GUICtrlRead($persembedakikad1))
				IniWrite($settingloc, "ctesi", "dakikad2", GUICtrlRead($persembedakikad2))
				IniWrite($settingloc, "ctesi", "dakikad3", GUICtrlRead($persembedakikad3))
				IniWrite($settingloc, "ctesi", "dakikad4", GUICtrlRead($persembedakikad4))
				IniWrite($settingloc, "ctesi", "dakikad5", GUICtrlRead($persembedakikad5))
				IniWrite($settingloc, "ctesi", "dakikad6", GUICtrlRead($persembedakikad6))
				IniWrite($settingloc, "ctesi", "dakikad7", GUICtrlRead($persembedakikad7))
				IniWrite($settingloc, "ctesi", "dakikad8", GUICtrlRead($persembedakikad8))
				IniWrite($settingloc, "ctesi", "dakikad9", GUICtrlRead($persembedakikad9))
				IniWrite($settingloc, "ctesi", "dakikad10", GUICtrlRead($persembedakikad10))
				IniWrite($settingloc, "ctesi", "dakikad11", GUICtrlRead($persembedakikad11))
				IniWrite($settingloc, "ctesi", "dakikad12", GUICtrlRead($persembedakikad12))
				IniWrite($settingloc, "ctesi", "dakikad13", GUICtrlRead($persembedakikad13))
				IniWrite($settingloc, "ctesi", "dakikad14", GUICtrlRead($persembedakikad14))
				IniWrite($settingloc, "ctesi", "dakikad15", GUICtrlRead($persembedakikad15))
				IniWrite($settingloc, "ctesi", "dakikad16", GUICtrlRead($persembedakikad16))

				IniWrite($settingloc, "ctesi", "muzikd1", GUICtrlRead($persembemuzikd1))
				IniWrite($settingloc, "ctesi", "muzikd2", GUICtrlRead($persembemuzikd2))
				IniWrite($settingloc, "ctesi", "muzikd3", GUICtrlRead($persembemuzikd3))
				IniWrite($settingloc, "ctesi", "muzikd4", GUICtrlRead($persembemuzikd4))
				IniWrite($settingloc, "ctesi", "muzikd5", GUICtrlRead($persembemuzikd5))
				IniWrite($settingloc, "ctesi", "muzikd6", GUICtrlRead($persembemuzikd6))
				IniWrite($settingloc, "ctesi", "muzikd7", GUICtrlRead($persembemuzikd7))
				IniWrite($settingloc, "ctesi", "muzikd8", GUICtrlRead($persembemuzikd8))
				IniWrite($settingloc, "ctesi", "muzikd9", GUICtrlRead($persembemuzikd9))
				IniWrite($settingloc, "ctesi", "muzikd10", GUICtrlRead($persembemuzikd10))
				IniWrite($settingloc, "ctesi", "muzikd11", GUICtrlRead($persembemuzikd11))
				IniWrite($settingloc, "ctesi", "muzikd12", GUICtrlRead($persembemuzikd12))
				IniWrite($settingloc, "ctesi", "muzikd13", GUICtrlRead($persembemuzikd13))
				IniWrite($settingloc, "ctesi", "muzikd14", GUICtrlRead($persembemuzikd14))
				IniWrite($settingloc, "ctesi", "muzikd15", GUICtrlRead($persembemuzikd15))
				IniWrite($settingloc, "ctesi", "muzikd16", GUICtrlRead($persembemuzikd16))

				IniWrite($settingloc, "ctesi", "ctesid1", IniRead($settingloc, "persembe", "persembed1", "1"))
				IniWrite($settingloc, "ctesi", "ctesid2", IniRead($settingloc, "persembe", "persembed2", "1"))
				IniWrite($settingloc, "ctesi", "ctesid3", IniRead($settingloc, "persembe", "persembed3", "1"))
				IniWrite($settingloc, "ctesi", "ctesid4", IniRead($settingloc, "persembe", "persembed4", "1"))
				IniWrite($settingloc, "ctesi", "ctesid5", IniRead($settingloc, "persembe", "persembed5", "1"))
				IniWrite($settingloc, "ctesi", "ctesid6", IniRead($settingloc, "persembe", "persembed6", "1"))
				IniWrite($settingloc, "ctesi", "ctesid7", IniRead($settingloc, "persembe", "persembed7", "1"))
				IniWrite($settingloc, "ctesi", "ctesid8", IniRead($settingloc, "persembe", "persembed8", "1"))
				IniWrite($settingloc, "ctesi", "ctesid9", IniRead($settingloc, "persembe", "persembed9", "1"))
				IniWrite($settingloc, "ctesi", "ctesid10", IniRead($settingloc, "persembe", "persembed10", "1"))
				IniWrite($settingloc, "ctesi", "ctesid11", IniRead($settingloc, "persembe", "persembed11", "1"))
				IniWrite($settingloc, "ctesi", "ctesid12", IniRead($settingloc, "persembe", "persembed12", "1"))
				IniWrite($settingloc, "ctesi", "ctesid13", IniRead($settingloc, "persembe", "persembed13", "1"))
				IniWrite($settingloc, "ctesi", "ctesid14", IniRead($settingloc, "persembe", "persembed14", "1"))
				IniWrite($settingloc, "ctesi", "ctesid15", IniRead($settingloc, "persembe", "persembed15", "1"))
				IniWrite($settingloc, "ctesi", "ctesid16", IniRead($settingloc, "persembe", "persembed16", "1"))

			ElseIf GUICtrlRead($persembekopyalanacak) = "Pazar" Then
				IniWrite($settingloc, "pazar", "saatd1", GUICtrlRead($persembesaatd1))
				IniWrite($settingloc, "pazar", "saatd2", GUICtrlRead($persembesaatd2))
				IniWrite($settingloc, "pazar", "saatd3", GUICtrlRead($persembesaatd3))
				IniWrite($settingloc, "pazar", "saatd4", GUICtrlRead($persembesaatd4))
				IniWrite($settingloc, "pazar", "saatd5", GUICtrlRead($persembesaatd5))
				IniWrite($settingloc, "pazar", "saatd6", GUICtrlRead($persembesaatd6))
				IniWrite($settingloc, "pazar", "saatd7", GUICtrlRead($persembesaatd7))
				IniWrite($settingloc, "pazar", "saatd8", GUICtrlRead($persembesaatd8))
				IniWrite($settingloc, "pazar", "saatd9", GUICtrlRead($persembesaatd9))
				IniWrite($settingloc, "pazar", "saatd10", GUICtrlRead($persembesaatd10))
				IniWrite($settingloc, "pazar", "saatd11", GUICtrlRead($persembesaatd11))
				IniWrite($settingloc, "pazar", "saatd12", GUICtrlRead($persembesaatd12))
				IniWrite($settingloc, "pazar", "saatd13", GUICtrlRead($persembesaatd13))
				IniWrite($settingloc, "pazar", "saatd14", GUICtrlRead($persembesaatd14))
				IniWrite($settingloc, "pazar", "saatd15", GUICtrlRead($persembesaatd15))
				IniWrite($settingloc, "pazar", "saatd16", GUICtrlRead($persembesaatd16))

				IniWrite($settingloc, "pazar", "dakikad1", GUICtrlRead($persembedakikad1))
				IniWrite($settingloc, "pazar", "dakikad2", GUICtrlRead($persembedakikad2))
				IniWrite($settingloc, "pazar", "dakikad3", GUICtrlRead($persembedakikad3))
				IniWrite($settingloc, "pazar", "dakikad4", GUICtrlRead($persembedakikad4))
				IniWrite($settingloc, "pazar", "dakikad5", GUICtrlRead($persembedakikad5))
				IniWrite($settingloc, "pazar", "dakikad6", GUICtrlRead($persembedakikad6))
				IniWrite($settingloc, "pazar", "dakikad7", GUICtrlRead($persembedakikad7))
				IniWrite($settingloc, "pazar", "dakikad8", GUICtrlRead($persembedakikad8))
				IniWrite($settingloc, "pazar", "dakikad9", GUICtrlRead($persembedakikad9))
				IniWrite($settingloc, "pazar", "dakikad10", GUICtrlRead($persembedakikad10))
				IniWrite($settingloc, "pazar", "dakikad11", GUICtrlRead($persembedakikad11))
				IniWrite($settingloc, "pazar", "dakikad12", GUICtrlRead($persembedakikad12))
				IniWrite($settingloc, "pazar", "dakikad13", GUICtrlRead($persembedakikad13))
				IniWrite($settingloc, "pazar", "dakikad14", GUICtrlRead($persembedakikad14))
				IniWrite($settingloc, "pazar", "dakikad15", GUICtrlRead($persembedakikad15))
				IniWrite($settingloc, "pazar", "dakikad16", GUICtrlRead($persembedakikad16))

				IniWrite($settingloc, "pazar", "muzikd1", GUICtrlRead($persembemuzikd1))
				IniWrite($settingloc, "pazar", "muzikd2", GUICtrlRead($persembemuzikd2))
				IniWrite($settingloc, "pazar", "muzikd3", GUICtrlRead($persembemuzikd3))
				IniWrite($settingloc, "pazar", "muzikd4", GUICtrlRead($persembemuzikd4))
				IniWrite($settingloc, "pazar", "muzikd5", GUICtrlRead($persembemuzikd5))
				IniWrite($settingloc, "pazar", "muzikd6", GUICtrlRead($persembemuzikd6))
				IniWrite($settingloc, "pazar", "muzikd7", GUICtrlRead($persembemuzikd7))
				IniWrite($settingloc, "pazar", "muzikd8", GUICtrlRead($persembemuzikd8))
				IniWrite($settingloc, "pazar", "muzikd9", GUICtrlRead($persembemuzikd9))
				IniWrite($settingloc, "pazar", "muzikd10", GUICtrlRead($persembemuzikd10))
				IniWrite($settingloc, "pazar", "muzikd11", GUICtrlRead($persembemuzikd11))
				IniWrite($settingloc, "pazar", "muzikd12", GUICtrlRead($persembemuzikd12))
				IniWrite($settingloc, "pazar", "muzikd13", GUICtrlRead($persembemuzikd13))
				IniWrite($settingloc, "pazar", "muzikd14", GUICtrlRead($persembemuzikd14))
				IniWrite($settingloc, "pazar", "muzikd15", GUICtrlRead($persembemuzikd15))
				IniWrite($settingloc, "pazar", "muzikd16", GUICtrlRead($persembemuzikd16))

				IniWrite($settingloc, "pazar", "pazard1", IniRead($settingloc, "persembe", "persembed1", "1"))
				IniWrite($settingloc, "pazar", "pazard2", IniRead($settingloc, "persembe", "persembed2", "1"))
				IniWrite($settingloc, "pazar", "pazard3", IniRead($settingloc, "persembe", "persembed3", "1"))
				IniWrite($settingloc, "pazar", "pazard4", IniRead($settingloc, "persembe", "persembed4", "1"))
				IniWrite($settingloc, "pazar", "pazard5", IniRead($settingloc, "persembe", "persembed5", "1"))
				IniWrite($settingloc, "pazar", "pazard6", IniRead($settingloc, "persembe", "persembed6", "1"))
				IniWrite($settingloc, "pazar", "pazard7", IniRead($settingloc, "persembe", "persembed7", "1"))
				IniWrite($settingloc, "pazar", "pazard8", IniRead($settingloc, "persembe", "persembed8", "1"))
				IniWrite($settingloc, "pazar", "pazard9", IniRead($settingloc, "persembe", "persembed9", "1"))
				IniWrite($settingloc, "pazar", "pazard10", IniRead($settingloc, "persembe", "persembed10", "1"))
				IniWrite($settingloc, "pazar", "pazard11", IniRead($settingloc, "persembe", "persembed11", "1"))
				IniWrite($settingloc, "pazar", "pazard12", IniRead($settingloc, "persembe", "persembed12", "1"))
				IniWrite($settingloc, "pazar", "pazard13", IniRead($settingloc, "persembe", "persembed13", "1"))
				IniWrite($settingloc, "pazar", "pazard14", IniRead($settingloc, "persembe", "persembed14", "1"))
				IniWrite($settingloc, "pazar", "pazard15", IniRead($settingloc, "persembe", "persembed15", "1"))
				IniWrite($settingloc, "pazar", "pazard16", IniRead($settingloc, "persembe", "persembed16", "1"))
			EndIf

		Case $cumakopyala
			If GUICtrlRead($cumakopyalanacak) = "P.Tesi" Then
				IniWrite($settingloc, "ptesi", "saatd1", GUICtrlRead($cumasaatd1))
				IniWrite($settingloc, "ptesi", "saatd2", GUICtrlRead($cumasaatd2))
				IniWrite($settingloc, "ptesi", "saatd3", GUICtrlRead($cumasaatd3))
				IniWrite($settingloc, "ptesi", "saatd4", GUICtrlRead($cumasaatd4))
				IniWrite($settingloc, "ptesi", "saatd5", GUICtrlRead($cumasaatd5))
				IniWrite($settingloc, "ptesi", "saatd6", GUICtrlRead($cumasaatd6))
				IniWrite($settingloc, "ptesi", "saatd7", GUICtrlRead($cumasaatd7))
				IniWrite($settingloc, "ptesi", "saatd8", GUICtrlRead($cumasaatd8))
				IniWrite($settingloc, "ptesi", "saatd9", GUICtrlRead($cumasaatd9))
				IniWrite($settingloc, "ptesi", "saatd10", GUICtrlRead($cumasaatd10))
				IniWrite($settingloc, "ptesi", "saatd11", GUICtrlRead($cumasaatd11))
				IniWrite($settingloc, "ptesi", "saatd12", GUICtrlRead($cumasaatd12))
				IniWrite($settingloc, "ptesi", "saatd13", GUICtrlRead($cumasaatd13))
				IniWrite($settingloc, "ptesi", "saatd14", GUICtrlRead($cumasaatd14))
				IniWrite($settingloc, "ptesi", "saatd15", GUICtrlRead($cumasaatd15))
				IniWrite($settingloc, "ptesi", "saatd16", GUICtrlRead($cumasaatd16))

				IniWrite($settingloc, "ptesi", "dakikad1", GUICtrlRead($cumadakikad1))
				IniWrite($settingloc, "ptesi", "dakikad2", GUICtrlRead($cumadakikad2))
				IniWrite($settingloc, "ptesi", "dakikad3", GUICtrlRead($cumadakikad3))
				IniWrite($settingloc, "ptesi", "dakikad4", GUICtrlRead($cumadakikad4))
				IniWrite($settingloc, "ptesi", "dakikad5", GUICtrlRead($cumadakikad5))
				IniWrite($settingloc, "ptesi", "dakikad6", GUICtrlRead($cumadakikad6))
				IniWrite($settingloc, "ptesi", "dakikad7", GUICtrlRead($cumadakikad7))
				IniWrite($settingloc, "ptesi", "dakikad8", GUICtrlRead($cumadakikad8))
				IniWrite($settingloc, "ptesi", "dakikad9", GUICtrlRead($cumadakikad9))
				IniWrite($settingloc, "ptesi", "dakikad10", GUICtrlRead($cumadakikad10))
				IniWrite($settingloc, "ptesi", "dakikad11", GUICtrlRead($cumadakikad11))
				IniWrite($settingloc, "ptesi", "dakikad12", GUICtrlRead($cumadakikad12))
				IniWrite($settingloc, "ptesi", "dakikad13", GUICtrlRead($cumadakikad13))
				IniWrite($settingloc, "ptesi", "dakikad14", GUICtrlRead($cumadakikad14))
				IniWrite($settingloc, "ptesi", "dakikad15", GUICtrlRead($cumadakikad15))
				IniWrite($settingloc, "ptesi", "dakikad16", GUICtrlRead($cumadakikad16))

				IniWrite($settingloc, "ptesi", "muzikd1", GUICtrlRead($cumamuzikd1))
				IniWrite($settingloc, "ptesi", "muzikd2", GUICtrlRead($cumamuzikd2))
				IniWrite($settingloc, "ptesi", "muzikd3", GUICtrlRead($cumamuzikd3))
				IniWrite($settingloc, "ptesi", "muzikd4", GUICtrlRead($cumamuzikd4))
				IniWrite($settingloc, "ptesi", "muzikd5", GUICtrlRead($cumamuzikd5))
				IniWrite($settingloc, "ptesi", "muzikd6", GUICtrlRead($cumamuzikd6))
				IniWrite($settingloc, "ptesi", "muzikd7", GUICtrlRead($cumamuzikd7))
				IniWrite($settingloc, "ptesi", "muzikd8", GUICtrlRead($cumamuzikd8))
				IniWrite($settingloc, "ptesi", "muzikd9", GUICtrlRead($cumamuzikd9))
				IniWrite($settingloc, "ptesi", "muzikd10", GUICtrlRead($cumamuzikd10))
				IniWrite($settingloc, "ptesi", "muzikd11", GUICtrlRead($cumamuzikd11))
				IniWrite($settingloc, "ptesi", "muzikd12", GUICtrlRead($cumamuzikd12))
				IniWrite($settingloc, "ptesi", "muzikd13", GUICtrlRead($cumamuzikd13))
				IniWrite($settingloc, "ptesi", "muzikd14", GUICtrlRead($cumamuzikd14))
				IniWrite($settingloc, "ptesi", "muzikd15", GUICtrlRead($cumamuzikd15))
				IniWrite($settingloc, "ptesi", "muzikd16", GUICtrlRead($cumamuzikd16))

				IniWrite($settingloc, "ptesi", "ptesid1", IniRead($settingloc, "cuma", "cumad1", "1"))
				IniWrite($settingloc, "ptesi", "ptesid2", IniRead($settingloc, "cuma", "cumad2", "1"))
				IniWrite($settingloc, "ptesi", "ptesid3", IniRead($settingloc, "cuma", "cumad3", "1"))
				IniWrite($settingloc, "ptesi", "ptesid4", IniRead($settingloc, "cuma", "cumad4", "1"))
				IniWrite($settingloc, "ptesi", "ptesid5", IniRead($settingloc, "cuma", "cumad5", "1"))
				IniWrite($settingloc, "ptesi", "ptesid6", IniRead($settingloc, "cuma", "cumad6", "1"))
				IniWrite($settingloc, "ptesi", "ptesid7", IniRead($settingloc, "cuma", "cumad7", "1"))
				IniWrite($settingloc, "ptesi", "ptesid8", IniRead($settingloc, "cuma", "cumad8", "1"))
				IniWrite($settingloc, "ptesi", "ptesid9", IniRead($settingloc, "cuma", "cumad9", "1"))
				IniWrite($settingloc, "ptesi", "ptesid10", IniRead($settingloc, "cuma", "cumad10", "1"))
				IniWrite($settingloc, "ptesi", "ptesid11", IniRead($settingloc, "cuma", "cumad11", "1"))
				IniWrite($settingloc, "ptesi", "ptesid12", IniRead($settingloc, "cuma", "cumad12", "1"))
				IniWrite($settingloc, "ptesi", "ptesid13", IniRead($settingloc, "cuma", "cumad13", "1"))
				IniWrite($settingloc, "ptesi", "ptesid14", IniRead($settingloc, "cuma", "cumad14", "1"))
				IniWrite($settingloc, "ptesi", "ptesid15", IniRead($settingloc, "cuma", "cumad15", "1"))
				IniWrite($settingloc, "ptesi", "ptesid16", IniRead($settingloc, "cuma", "cumad16", "1"))

			ElseIf GUICtrlRead($cumakopyalanacak) = "Salı" Then
				IniWrite($settingloc, "sali", "saatd1", GUICtrlRead($cumasaatd1))
				IniWrite($settingloc, "sali", "saatd2", GUICtrlRead($cumasaatd2))
				IniWrite($settingloc, "sali", "saatd3", GUICtrlRead($cumasaatd3))
				IniWrite($settingloc, "sali", "saatd4", GUICtrlRead($cumasaatd4))
				IniWrite($settingloc, "sali", "saatd5", GUICtrlRead($cumasaatd5))
				IniWrite($settingloc, "sali", "saatd6", GUICtrlRead($cumasaatd6))
				IniWrite($settingloc, "sali", "saatd7", GUICtrlRead($cumasaatd7))
				IniWrite($settingloc, "sali", "saatd8", GUICtrlRead($cumasaatd8))
				IniWrite($settingloc, "sali", "saatd9", GUICtrlRead($cumasaatd9))
				IniWrite($settingloc, "sali", "saatd10", GUICtrlRead($cumasaatd10))
				IniWrite($settingloc, "sali", "saatd11", GUICtrlRead($cumasaatd11))
				IniWrite($settingloc, "sali", "saatd12", GUICtrlRead($cumasaatd12))
				IniWrite($settingloc, "sali", "saatd13", GUICtrlRead($cumasaatd13))
				IniWrite($settingloc, "sali", "saatd14", GUICtrlRead($cumasaatd14))
				IniWrite($settingloc, "sali", "saatd15", GUICtrlRead($cumasaatd15))
				IniWrite($settingloc, "sali", "saatd16", GUICtrlRead($cumasaatd16))

				IniWrite($settingloc, "sali", "dakikad1", GUICtrlRead($cumadakikad1))
				IniWrite($settingloc, "sali", "dakikad2", GUICtrlRead($cumadakikad2))
				IniWrite($settingloc, "sali", "dakikad3", GUICtrlRead($cumadakikad3))
				IniWrite($settingloc, "sali", "dakikad4", GUICtrlRead($cumadakikad4))
				IniWrite($settingloc, "sali", "dakikad5", GUICtrlRead($cumadakikad5))
				IniWrite($settingloc, "sali", "dakikad6", GUICtrlRead($cumadakikad6))
				IniWrite($settingloc, "sali", "dakikad7", GUICtrlRead($cumadakikad7))
				IniWrite($settingloc, "sali", "dakikad8", GUICtrlRead($cumadakikad8))
				IniWrite($settingloc, "sali", "dakikad9", GUICtrlRead($cumadakikad9))
				IniWrite($settingloc, "sali", "dakikad10", GUICtrlRead($cumadakikad10))
				IniWrite($settingloc, "sali", "dakikad11", GUICtrlRead($cumadakikad11))
				IniWrite($settingloc, "sali", "dakikad12", GUICtrlRead($cumadakikad12))
				IniWrite($settingloc, "sali", "dakikad13", GUICtrlRead($cumadakikad13))
				IniWrite($settingloc, "sali", "dakikad14", GUICtrlRead($cumadakikad14))
				IniWrite($settingloc, "sali", "dakikad15", GUICtrlRead($cumadakikad15))
				IniWrite($settingloc, "sali", "dakikad16", GUICtrlRead($cumadakikad16))

				IniWrite($settingloc, "sali", "muzikd1", GUICtrlRead($cumamuzikd1))
				IniWrite($settingloc, "sali", "muzikd2", GUICtrlRead($cumamuzikd2))
				IniWrite($settingloc, "sali", "muzikd3", GUICtrlRead($cumamuzikd3))
				IniWrite($settingloc, "sali", "muzikd4", GUICtrlRead($cumamuzikd4))
				IniWrite($settingloc, "sali", "muzikd5", GUICtrlRead($cumamuzikd5))
				IniWrite($settingloc, "sali", "muzikd6", GUICtrlRead($cumamuzikd6))
				IniWrite($settingloc, "sali", "muzikd7", GUICtrlRead($cumamuzikd7))
				IniWrite($settingloc, "sali", "muzikd8", GUICtrlRead($cumamuzikd8))
				IniWrite($settingloc, "sali", "muzikd9", GUICtrlRead($cumamuzikd9))
				IniWrite($settingloc, "sali", "muzikd10", GUICtrlRead($cumamuzikd10))
				IniWrite($settingloc, "sali", "muzikd11", GUICtrlRead($cumamuzikd11))
				IniWrite($settingloc, "sali", "muzikd12", GUICtrlRead($cumamuzikd12))
				IniWrite($settingloc, "sali", "muzikd13", GUICtrlRead($cumamuzikd13))
				IniWrite($settingloc, "sali", "muzikd14", GUICtrlRead($cumamuzikd14))
				IniWrite($settingloc, "sali", "muzikd15", GUICtrlRead($cumamuzikd15))
				IniWrite($settingloc, "sali", "muzikd16", GUICtrlRead($cumamuzikd16))

				IniWrite($settingloc, "sali", "salid1", IniRead($settingloc, "cuma", "cumad1", "1"))
				IniWrite($settingloc, "sali", "salid2", IniRead($settingloc, "cuma", "cumad2", "1"))
				IniWrite($settingloc, "sali", "salid3", IniRead($settingloc, "cuma", "cumad3", "1"))
				IniWrite($settingloc, "sali", "salid4", IniRead($settingloc, "cuma", "cumad4", "1"))
				IniWrite($settingloc, "sali", "salid5", IniRead($settingloc, "cuma", "cumad5", "1"))
				IniWrite($settingloc, "sali", "salid6", IniRead($settingloc, "cuma", "cumad6", "1"))
				IniWrite($settingloc, "sali", "salid7", IniRead($settingloc, "cuma", "cumad7", "1"))
				IniWrite($settingloc, "sali", "salid8", IniRead($settingloc, "cuma", "cumad8", "1"))
				IniWrite($settingloc, "sali", "salid9", IniRead($settingloc, "cuma", "cumad9", "1"))
				IniWrite($settingloc, "sali", "salid10", IniRead($settingloc, "cuma", "cumad10", "1"))
				IniWrite($settingloc, "sali", "salid11", IniRead($settingloc, "cuma", "cumad11", "1"))
				IniWrite($settingloc, "sali", "salid12", IniRead($settingloc, "cuma", "cumad12", "1"))
				IniWrite($settingloc, "sali", "salid13", IniRead($settingloc, "cuma", "cumad13", "1"))
				IniWrite($settingloc, "sali", "salid14", IniRead($settingloc, "cuma", "cumad14", "1"))
				IniWrite($settingloc, "sali", "salid15", IniRead($settingloc, "cuma", "cumad15", "1"))
				IniWrite($settingloc, "sali", "salid16", IniRead($settingloc, "cuma", "cumad16", "1"))

			ElseIf GUICtrlRead($cumakopyalanacak) = "Çarşamba" Then
				IniWrite($settingloc, "carsamba", "saatd1", GUICtrlRead($cumasaatd1))
				IniWrite($settingloc, "carsamba", "saatd2", GUICtrlRead($cumasaatd2))
				IniWrite($settingloc, "carsamba", "saatd3", GUICtrlRead($cumasaatd3))
				IniWrite($settingloc, "carsamba", "saatd4", GUICtrlRead($cumasaatd4))
				IniWrite($settingloc, "carsamba", "saatd5", GUICtrlRead($cumasaatd5))
				IniWrite($settingloc, "carsamba", "saatd6", GUICtrlRead($cumasaatd6))
				IniWrite($settingloc, "carsamba", "saatd7", GUICtrlRead($cumasaatd7))
				IniWrite($settingloc, "carsamba", "saatd8", GUICtrlRead($cumasaatd8))
				IniWrite($settingloc, "carsamba", "saatd9", GUICtrlRead($cumasaatd9))
				IniWrite($settingloc, "carsamba", "saatd10", GUICtrlRead($cumasaatd10))
				IniWrite($settingloc, "carsamba", "saatd11", GUICtrlRead($cumasaatd11))
				IniWrite($settingloc, "carsamba", "saatd12", GUICtrlRead($cumasaatd12))
				IniWrite($settingloc, "carsamba", "saatd13", GUICtrlRead($cumasaatd13))
				IniWrite($settingloc, "carsamba", "saatd14", GUICtrlRead($cumasaatd14))
				IniWrite($settingloc, "carsamba", "saatd15", GUICtrlRead($cumasaatd15))
				IniWrite($settingloc, "carsamba", "saatd16", GUICtrlRead($cumasaatd16))

				IniWrite($settingloc, "carsamba", "dakikad1", GUICtrlRead($cumadakikad1))
				IniWrite($settingloc, "carsamba", "dakikad2", GUICtrlRead($cumadakikad2))
				IniWrite($settingloc, "carsamba", "dakikad3", GUICtrlRead($cumadakikad3))
				IniWrite($settingloc, "carsamba", "dakikad4", GUICtrlRead($cumadakikad4))
				IniWrite($settingloc, "carsamba", "dakikad5", GUICtrlRead($cumadakikad5))
				IniWrite($settingloc, "carsamba", "dakikad6", GUICtrlRead($cumadakikad6))
				IniWrite($settingloc, "carsamba", "dakikad7", GUICtrlRead($cumadakikad7))
				IniWrite($settingloc, "carsamba", "dakikad8", GUICtrlRead($cumadakikad8))
				IniWrite($settingloc, "carsamba", "dakikad9", GUICtrlRead($cumadakikad9))
				IniWrite($settingloc, "carsamba", "dakikad10", GUICtrlRead($cumadakikad10))
				IniWrite($settingloc, "carsamba", "dakikad11", GUICtrlRead($cumadakikad11))
				IniWrite($settingloc, "carsamba", "dakikad12", GUICtrlRead($cumadakikad12))
				IniWrite($settingloc, "carsamba", "dakikad13", GUICtrlRead($cumadakikad13))
				IniWrite($settingloc, "carsamba", "dakikad14", GUICtrlRead($cumadakikad14))
				IniWrite($settingloc, "carsamba", "dakikad15", GUICtrlRead($cumadakikad15))
				IniWrite($settingloc, "carsamba", "dakikad16", GUICtrlRead($cumadakikad16))

				IniWrite($settingloc, "carsamba", "muzikd1", GUICtrlRead($cumamuzikd1))
				IniWrite($settingloc, "carsamba", "muzikd2", GUICtrlRead($cumamuzikd2))
				IniWrite($settingloc, "carsamba", "muzikd3", GUICtrlRead($cumamuzikd3))
				IniWrite($settingloc, "carsamba", "muzikd4", GUICtrlRead($cumamuzikd4))
				IniWrite($settingloc, "carsamba", "muzikd5", GUICtrlRead($cumamuzikd5))
				IniWrite($settingloc, "carsamba", "muzikd6", GUICtrlRead($cumamuzikd6))
				IniWrite($settingloc, "carsamba", "muzikd7", GUICtrlRead($cumamuzikd7))
				IniWrite($settingloc, "carsamba", "muzikd8", GUICtrlRead($cumamuzikd8))
				IniWrite($settingloc, "carsamba", "muzikd9", GUICtrlRead($cumamuzikd9))
				IniWrite($settingloc, "carsamba", "muzikd10", GUICtrlRead($cumamuzikd10))
				IniWrite($settingloc, "carsamba", "muzikd11", GUICtrlRead($cumamuzikd11))
				IniWrite($settingloc, "carsamba", "muzikd12", GUICtrlRead($cumamuzikd12))
				IniWrite($settingloc, "carsamba", "muzikd13", GUICtrlRead($cumamuzikd13))
				IniWrite($settingloc, "carsamba", "muzikd14", GUICtrlRead($cumamuzikd14))
				IniWrite($settingloc, "carsamba", "muzikd15", GUICtrlRead($cumamuzikd15))
				IniWrite($settingloc, "carsamba", "muzikd16", GUICtrlRead($cumamuzikd16))

				IniWrite($settingloc, "carsamba", "carsambad1", IniRead($settingloc, "cuma", "cumad1", "1"))
				IniWrite($settingloc, "carsamba", "carsambad2", IniRead($settingloc, "cuma", "cumad2", "1"))
				IniWrite($settingloc, "carsamba", "carsambad3", IniRead($settingloc, "cuma", "cumad3", "1"))
				IniWrite($settingloc, "carsamba", "carsambad4", IniRead($settingloc, "cuma", "cumad4", "1"))
				IniWrite($settingloc, "carsamba", "carsambad5", IniRead($settingloc, "cuma", "cumad5", "1"))
				IniWrite($settingloc, "carsamba", "carsambad6", IniRead($settingloc, "cuma", "cumad6", "1"))
				IniWrite($settingloc, "carsamba", "carsambad7", IniRead($settingloc, "cuma", "cumad7", "1"))
				IniWrite($settingloc, "carsamba", "carsambad8", IniRead($settingloc, "cuma", "cumad8", "1"))
				IniWrite($settingloc, "carsamba", "carsambad9", IniRead($settingloc, "cuma", "cumad9", "1"))
				IniWrite($settingloc, "carsamba", "carsambad10", IniRead($settingloc, "cuma", "cumad10", "1"))
				IniWrite($settingloc, "carsamba", "carsambad11", IniRead($settingloc, "cuma", "cumad11", "1"))
				IniWrite($settingloc, "carsamba", "carsambad12", IniRead($settingloc, "cuma", "cumad12", "1"))
				IniWrite($settingloc, "carsamba", "carsambad13", IniRead($settingloc, "cuma", "cumad13", "1"))
				IniWrite($settingloc, "carsamba", "carsambad14", IniRead($settingloc, "cuma", "cumad14", "1"))
				IniWrite($settingloc, "carsamba", "carsambad15", IniRead($settingloc, "cuma", "cumad15", "1"))
				IniWrite($settingloc, "carsamba", "carsambad16", IniRead($settingloc, "cuma", "cumad16", "1"))

			ElseIf GUICtrlRead($cumakopyalanacak) = "Perşembe" Then
				IniWrite($settingloc, "persembe", "saatd1", GUICtrlRead($cumasaatd1))
				IniWrite($settingloc, "persembe", "saatd2", GUICtrlRead($cumasaatd2))
				IniWrite($settingloc, "persembe", "saatd3", GUICtrlRead($cumasaatd3))
				IniWrite($settingloc, "persembe", "saatd4", GUICtrlRead($cumasaatd4))
				IniWrite($settingloc, "persembe", "saatd5", GUICtrlRead($cumasaatd5))
				IniWrite($settingloc, "persembe", "saatd6", GUICtrlRead($cumasaatd6))
				IniWrite($settingloc, "persembe", "saatd7", GUICtrlRead($cumasaatd7))
				IniWrite($settingloc, "persembe", "saatd8", GUICtrlRead($cumasaatd8))
				IniWrite($settingloc, "persembe", "saatd9", GUICtrlRead($cumasaatd9))
				IniWrite($settingloc, "persembe", "saatd10", GUICtrlRead($cumasaatd10))
				IniWrite($settingloc, "persembe", "saatd11", GUICtrlRead($cumasaatd11))
				IniWrite($settingloc, "persembe", "saatd12", GUICtrlRead($cumasaatd12))
				IniWrite($settingloc, "persembe", "saatd13", GUICtrlRead($cumasaatd13))
				IniWrite($settingloc, "persembe", "saatd14", GUICtrlRead($cumasaatd14))
				IniWrite($settingloc, "persembe", "saatd15", GUICtrlRead($cumasaatd15))
				IniWrite($settingloc, "persembe", "saatd16", GUICtrlRead($cumasaatd16))

				IniWrite($settingloc, "persembe", "dakikad1", GUICtrlRead($cumadakikad1))
				IniWrite($settingloc, "persembe", "dakikad2", GUICtrlRead($cumadakikad2))
				IniWrite($settingloc, "persembe", "dakikad3", GUICtrlRead($cumadakikad3))
				IniWrite($settingloc, "persembe", "dakikad4", GUICtrlRead($cumadakikad4))
				IniWrite($settingloc, "persembe", "dakikad5", GUICtrlRead($cumadakikad5))
				IniWrite($settingloc, "persembe", "dakikad6", GUICtrlRead($cumadakikad6))
				IniWrite($settingloc, "persembe", "dakikad7", GUICtrlRead($cumadakikad7))
				IniWrite($settingloc, "persembe", "dakikad8", GUICtrlRead($cumadakikad8))
				IniWrite($settingloc, "persembe", "dakikad9", GUICtrlRead($cumadakikad9))
				IniWrite($settingloc, "persembe", "dakikad10", GUICtrlRead($cumadakikad10))
				IniWrite($settingloc, "persembe", "dakikad11", GUICtrlRead($cumadakikad11))
				IniWrite($settingloc, "persembe", "dakikad12", GUICtrlRead($cumadakikad12))
				IniWrite($settingloc, "persembe", "dakikad13", GUICtrlRead($cumadakikad13))
				IniWrite($settingloc, "persembe", "dakikad14", GUICtrlRead($cumadakikad14))
				IniWrite($settingloc, "persembe", "dakikad15", GUICtrlRead($cumadakikad15))
				IniWrite($settingloc, "persembe", "dakikad16", GUICtrlRead($cumadakikad16))

				IniWrite($settingloc, "persembe", "muzikd1", GUICtrlRead($cumamuzikd1))
				IniWrite($settingloc, "persembe", "muzikd2", GUICtrlRead($cumamuzikd2))
				IniWrite($settingloc, "persembe", "muzikd3", GUICtrlRead($cumamuzikd3))
				IniWrite($settingloc, "persembe", "muzikd4", GUICtrlRead($cumamuzikd4))
				IniWrite($settingloc, "persembe", "muzikd5", GUICtrlRead($cumamuzikd5))
				IniWrite($settingloc, "persembe", "muzikd6", GUICtrlRead($cumamuzikd6))
				IniWrite($settingloc, "persembe", "muzikd7", GUICtrlRead($cumamuzikd7))
				IniWrite($settingloc, "persembe", "muzikd8", GUICtrlRead($cumamuzikd8))
				IniWrite($settingloc, "persembe", "muzikd9", GUICtrlRead($cumamuzikd9))
				IniWrite($settingloc, "persembe", "muzikd10", GUICtrlRead($cumamuzikd10))
				IniWrite($settingloc, "persembe", "muzikd11", GUICtrlRead($cumamuzikd11))
				IniWrite($settingloc, "persembe", "muzikd12", GUICtrlRead($cumamuzikd12))
				IniWrite($settingloc, "persembe", "muzikd13", GUICtrlRead($cumamuzikd13))
				IniWrite($settingloc, "persembe", "muzikd14", GUICtrlRead($cumamuzikd14))
				IniWrite($settingloc, "persembe", "muzikd15", GUICtrlRead($cumamuzikd15))
				IniWrite($settingloc, "persembe", "muzikd16", GUICtrlRead($cumamuzikd16))

				IniWrite($settingloc, "persembe", "persembed1", IniRead($settingloc, "cuma", "cumad1", "1"))
				IniWrite($settingloc, "persembe", "persembed2", IniRead($settingloc, "cuma", "cumad2", "1"))
				IniWrite($settingloc, "persembe", "persembed3", IniRead($settingloc, "cuma", "cumad3", "1"))
				IniWrite($settingloc, "persembe", "persembed4", IniRead($settingloc, "cuma", "cumad4", "1"))
				IniWrite($settingloc, "persembe", "persembed5", IniRead($settingloc, "cuma", "cumad5", "1"))
				IniWrite($settingloc, "persembe", "persembed6", IniRead($settingloc, "cuma", "cumad6", "1"))
				IniWrite($settingloc, "persembe", "persembed7", IniRead($settingloc, "cuma", "cumad7", "1"))
				IniWrite($settingloc, "persembe", "persembed8", IniRead($settingloc, "cuma", "cumad8", "1"))
				IniWrite($settingloc, "persembe", "persembed9", IniRead($settingloc, "cuma", "cumad9", "1"))
				IniWrite($settingloc, "persembe", "persembed10", IniRead($settingloc, "cuma", "cumad10", "1"))
				IniWrite($settingloc, "persembe", "persembed11", IniRead($settingloc, "cuma", "cumad11", "1"))
				IniWrite($settingloc, "persembe", "persembed12", IniRead($settingloc, "cuma", "cumad12", "1"))
				IniWrite($settingloc, "persembe", "persembed13", IniRead($settingloc, "cuma", "cumad13", "1"))
				IniWrite($settingloc, "persembe", "persembed14", IniRead($settingloc, "cuma", "cumad14", "1"))
				IniWrite($settingloc, "persembe", "persembed15", IniRead($settingloc, "cuma", "cumad15", "1"))
				IniWrite($settingloc, "persembe", "persembed16", IniRead($settingloc, "cuma", "cumad16", "1"))

			ElseIf GUICtrlRead($cumakopyalanacak) = "Cuma" Then
				IniWrite($settingloc, "cuma", "saatd1", GUICtrlRead($cumasaatd1))
				IniWrite($settingloc, "cuma", "saatd2", GUICtrlRead($cumasaatd2))
				IniWrite($settingloc, "cuma", "saatd3", GUICtrlRead($cumasaatd3))
				IniWrite($settingloc, "cuma", "saatd4", GUICtrlRead($cumasaatd4))
				IniWrite($settingloc, "cuma", "saatd5", GUICtrlRead($cumasaatd5))
				IniWrite($settingloc, "cuma", "saatd6", GUICtrlRead($cumasaatd6))
				IniWrite($settingloc, "cuma", "saatd7", GUICtrlRead($cumasaatd7))
				IniWrite($settingloc, "cuma", "saatd8", GUICtrlRead($cumasaatd8))
				IniWrite($settingloc, "cuma", "saatd9", GUICtrlRead($cumasaatd9))
				IniWrite($settingloc, "cuma", "saatd10", GUICtrlRead($cumasaatd10))
				IniWrite($settingloc, "cuma", "saatd11", GUICtrlRead($cumasaatd11))
				IniWrite($settingloc, "cuma", "saatd12", GUICtrlRead($cumasaatd12))
				IniWrite($settingloc, "cuma", "saatd13", GUICtrlRead($cumasaatd13))
				IniWrite($settingloc, "cuma", "saatd14", GUICtrlRead($cumasaatd14))
				IniWrite($settingloc, "cuma", "saatd15", GUICtrlRead($cumasaatd15))
				IniWrite($settingloc, "cuma", "saatd16", GUICtrlRead($cumasaatd16))

				IniWrite($settingloc, "cuma", "dakikad1", GUICtrlRead($cumadakikad1))
				IniWrite($settingloc, "cuma", "dakikad2", GUICtrlRead($cumadakikad2))
				IniWrite($settingloc, "cuma", "dakikad3", GUICtrlRead($cumadakikad3))
				IniWrite($settingloc, "cuma", "dakikad4", GUICtrlRead($cumadakikad4))
				IniWrite($settingloc, "cuma", "dakikad5", GUICtrlRead($cumadakikad5))
				IniWrite($settingloc, "cuma", "dakikad6", GUICtrlRead($cumadakikad6))
				IniWrite($settingloc, "cuma", "dakikad7", GUICtrlRead($cumadakikad7))
				IniWrite($settingloc, "cuma", "dakikad8", GUICtrlRead($cumadakikad8))
				IniWrite($settingloc, "cuma", "dakikad9", GUICtrlRead($cumadakikad9))
				IniWrite($settingloc, "cuma", "dakikad10", GUICtrlRead($cumadakikad10))
				IniWrite($settingloc, "cuma", "dakikad11", GUICtrlRead($cumadakikad11))
				IniWrite($settingloc, "cuma", "dakikad12", GUICtrlRead($cumadakikad12))
				IniWrite($settingloc, "cuma", "dakikad13", GUICtrlRead($cumadakikad13))
				IniWrite($settingloc, "cuma", "dakikad14", GUICtrlRead($cumadakikad14))
				IniWrite($settingloc, "cuma", "dakikad15", GUICtrlRead($cumadakikad15))
				IniWrite($settingloc, "cuma", "dakikad16", GUICtrlRead($cumadakikad16))

				IniWrite($settingloc, "cuma", "muzikd1", GUICtrlRead($cumamuzikd1))
				IniWrite($settingloc, "cuma", "muzikd2", GUICtrlRead($cumamuzikd2))
				IniWrite($settingloc, "cuma", "muzikd3", GUICtrlRead($cumamuzikd3))
				IniWrite($settingloc, "cuma", "muzikd4", GUICtrlRead($cumamuzikd4))
				IniWrite($settingloc, "cuma", "muzikd5", GUICtrlRead($cumamuzikd5))
				IniWrite($settingloc, "cuma", "muzikd6", GUICtrlRead($cumamuzikd6))
				IniWrite($settingloc, "cuma", "muzikd7", GUICtrlRead($cumamuzikd7))
				IniWrite($settingloc, "cuma", "muzikd8", GUICtrlRead($cumamuzikd8))
				IniWrite($settingloc, "cuma", "muzikd9", GUICtrlRead($cumamuzikd9))
				IniWrite($settingloc, "cuma", "muzikd10", GUICtrlRead($cumamuzikd10))
				IniWrite($settingloc, "cuma", "muzikd11", GUICtrlRead($cumamuzikd11))
				IniWrite($settingloc, "cuma", "muzikd12", GUICtrlRead($cumamuzikd12))
				IniWrite($settingloc, "cuma", "muzikd13", GUICtrlRead($cumamuzikd13))
				IniWrite($settingloc, "cuma", "muzikd14", GUICtrlRead($cumamuzikd14))
				IniWrite($settingloc, "cuma", "muzikd15", GUICtrlRead($cumamuzikd15))
				IniWrite($settingloc, "cuma", "muzikd16", GUICtrlRead($cumamuzikd16))

				IniWrite($settingloc, "cuma", "cumad1", IniRead($settingloc, "cuma", "cumad1", "1"))
				IniWrite($settingloc, "cuma", "cumad2", IniRead($settingloc, "cuma", "cumad2", "1"))
				IniWrite($settingloc, "cuma", "cumad3", IniRead($settingloc, "cuma", "cumad3", "1"))
				IniWrite($settingloc, "cuma", "cumad4", IniRead($settingloc, "cuma", "cumad4", "1"))
				IniWrite($settingloc, "cuma", "cumad5", IniRead($settingloc, "cuma", "cumad5", "1"))
				IniWrite($settingloc, "cuma", "cumad6", IniRead($settingloc, "cuma", "cumad6", "1"))
				IniWrite($settingloc, "cuma", "cumad7", IniRead($settingloc, "cuma", "cumad7", "1"))
				IniWrite($settingloc, "cuma", "cumad8", IniRead($settingloc, "cuma", "cumad8", "1"))
				IniWrite($settingloc, "cuma", "cumad9", IniRead($settingloc, "cuma", "cumad9", "1"))
				IniWrite($settingloc, "cuma", "cumad10", IniRead($settingloc, "cuma", "cumad10", "1"))
				IniWrite($settingloc, "cuma", "cumad11", IniRead($settingloc, "cuma", "cumad11", "1"))
				IniWrite($settingloc, "cuma", "cumad12", IniRead($settingloc, "cuma", "cumad12", "1"))
				IniWrite($settingloc, "cuma", "cumad13", IniRead($settingloc, "cuma", "cumad13", "1"))
				IniWrite($settingloc, "cuma", "cumad14", IniRead($settingloc, "cuma", "cumad14", "1"))
				IniWrite($settingloc, "cuma", "cumad15", IniRead($settingloc, "cuma", "cumad15", "1"))
				IniWrite($settingloc, "cuma", "cumad16", IniRead($settingloc, "cuma", "cumad16", "1"))

			ElseIf GUICtrlRead($cumakopyalanacak) = "C.Tesi" Then
				IniWrite($settingloc, "ctesi", "saatd1", GUICtrlRead($cumasaatd1))
				IniWrite($settingloc, "ctesi", "saatd2", GUICtrlRead($cumasaatd2))
				IniWrite($settingloc, "ctesi", "saatd3", GUICtrlRead($cumasaatd3))
				IniWrite($settingloc, "ctesi", "saatd4", GUICtrlRead($cumasaatd4))
				IniWrite($settingloc, "ctesi", "saatd5", GUICtrlRead($cumasaatd5))
				IniWrite($settingloc, "ctesi", "saatd6", GUICtrlRead($cumasaatd6))
				IniWrite($settingloc, "ctesi", "saatd7", GUICtrlRead($cumasaatd7))
				IniWrite($settingloc, "ctesi", "saatd8", GUICtrlRead($cumasaatd8))
				IniWrite($settingloc, "ctesi", "saatd9", GUICtrlRead($cumasaatd9))
				IniWrite($settingloc, "ctesi", "saatd10", GUICtrlRead($cumasaatd10))
				IniWrite($settingloc, "ctesi", "saatd11", GUICtrlRead($cumasaatd11))
				IniWrite($settingloc, "ctesi", "saatd12", GUICtrlRead($cumasaatd12))
				IniWrite($settingloc, "ctesi", "saatd13", GUICtrlRead($cumasaatd13))
				IniWrite($settingloc, "ctesi", "saatd14", GUICtrlRead($cumasaatd14))
				IniWrite($settingloc, "ctesi", "saatd15", GUICtrlRead($cumasaatd15))
				IniWrite($settingloc, "ctesi", "saatd16", GUICtrlRead($cumasaatd16))

				IniWrite($settingloc, "ctesi", "dakikad1", GUICtrlRead($cumadakikad1))
				IniWrite($settingloc, "ctesi", "dakikad2", GUICtrlRead($cumadakikad2))
				IniWrite($settingloc, "ctesi", "dakikad3", GUICtrlRead($cumadakikad3))
				IniWrite($settingloc, "ctesi", "dakikad4", GUICtrlRead($cumadakikad4))
				IniWrite($settingloc, "ctesi", "dakikad5", GUICtrlRead($cumadakikad5))
				IniWrite($settingloc, "ctesi", "dakikad6", GUICtrlRead($cumadakikad6))
				IniWrite($settingloc, "ctesi", "dakikad7", GUICtrlRead($cumadakikad7))
				IniWrite($settingloc, "ctesi", "dakikad8", GUICtrlRead($cumadakikad8))
				IniWrite($settingloc, "ctesi", "dakikad9", GUICtrlRead($cumadakikad9))
				IniWrite($settingloc, "ctesi", "dakikad10", GUICtrlRead($cumadakikad10))
				IniWrite($settingloc, "ctesi", "dakikad11", GUICtrlRead($cumadakikad11))
				IniWrite($settingloc, "ctesi", "dakikad12", GUICtrlRead($cumadakikad12))
				IniWrite($settingloc, "ctesi", "dakikad13", GUICtrlRead($cumadakikad13))
				IniWrite($settingloc, "ctesi", "dakikad14", GUICtrlRead($cumadakikad14))
				IniWrite($settingloc, "ctesi", "dakikad15", GUICtrlRead($cumadakikad15))
				IniWrite($settingloc, "ctesi", "dakikad16", GUICtrlRead($cumadakikad16))

				IniWrite($settingloc, "ctesi", "muzikd1", GUICtrlRead($cumamuzikd1))
				IniWrite($settingloc, "ctesi", "muzikd2", GUICtrlRead($cumamuzikd2))
				IniWrite($settingloc, "ctesi", "muzikd3", GUICtrlRead($cumamuzikd3))
				IniWrite($settingloc, "ctesi", "muzikd4", GUICtrlRead($cumamuzikd4))
				IniWrite($settingloc, "ctesi", "muzikd5", GUICtrlRead($cumamuzikd5))
				IniWrite($settingloc, "ctesi", "muzikd6", GUICtrlRead($cumamuzikd6))
				IniWrite($settingloc, "ctesi", "muzikd7", GUICtrlRead($cumamuzikd7))
				IniWrite($settingloc, "ctesi", "muzikd8", GUICtrlRead($cumamuzikd8))
				IniWrite($settingloc, "ctesi", "muzikd9", GUICtrlRead($cumamuzikd9))
				IniWrite($settingloc, "ctesi", "muzikd10", GUICtrlRead($cumamuzikd10))
				IniWrite($settingloc, "ctesi", "muzikd11", GUICtrlRead($cumamuzikd11))
				IniWrite($settingloc, "ctesi", "muzikd12", GUICtrlRead($cumamuzikd12))
				IniWrite($settingloc, "ctesi", "muzikd13", GUICtrlRead($cumamuzikd13))
				IniWrite($settingloc, "ctesi", "muzikd14", GUICtrlRead($cumamuzikd14))
				IniWrite($settingloc, "ctesi", "muzikd15", GUICtrlRead($cumamuzikd15))
				IniWrite($settingloc, "ctesi", "muzikd16", GUICtrlRead($cumamuzikd16))

				IniWrite($settingloc, "ctesi", "ctesid1", IniRead($settingloc, "cuma", "cumad1", "1"))
				IniWrite($settingloc, "ctesi", "ctesid2", IniRead($settingloc, "cuma", "cumad2", "1"))
				IniWrite($settingloc, "ctesi", "ctesid3", IniRead($settingloc, "cuma", "cumad3", "1"))
				IniWrite($settingloc, "ctesi", "ctesid4", IniRead($settingloc, "cuma", "cumad4", "1"))
				IniWrite($settingloc, "ctesi", "ctesid5", IniRead($settingloc, "cuma", "cumad5", "1"))
				IniWrite($settingloc, "ctesi", "ctesid6", IniRead($settingloc, "cuma", "cumad6", "1"))
				IniWrite($settingloc, "ctesi", "ctesid7", IniRead($settingloc, "cuma", "cumad7", "1"))
				IniWrite($settingloc, "ctesi", "ctesid8", IniRead($settingloc, "cuma", "cumad8", "1"))
				IniWrite($settingloc, "ctesi", "ctesid9", IniRead($settingloc, "cuma", "cumad9", "1"))
				IniWrite($settingloc, "ctesi", "ctesid10", IniRead($settingloc, "cuma", "cumad10", "1"))
				IniWrite($settingloc, "ctesi", "ctesid11", IniRead($settingloc, "cuma", "cumad11", "1"))
				IniWrite($settingloc, "ctesi", "ctesid12", IniRead($settingloc, "cuma", "cumad12", "1"))
				IniWrite($settingloc, "ctesi", "ctesid13", IniRead($settingloc, "cuma", "cumad13", "1"))
				IniWrite($settingloc, "ctesi", "ctesid14", IniRead($settingloc, "cuma", "cumad14", "1"))
				IniWrite($settingloc, "ctesi", "ctesid15", IniRead($settingloc, "cuma", "cumad15", "1"))
				IniWrite($settingloc, "ctesi", "ctesid16", IniRead($settingloc, "cuma", "cumad16", "1"))

			ElseIf GUICtrlRead($cumakopyalanacak) = "Pazar" Then
				IniWrite($settingloc, "pazar", "saatd1", GUICtrlRead($cumasaatd1))
				IniWrite($settingloc, "pazar", "saatd2", GUICtrlRead($cumasaatd2))
				IniWrite($settingloc, "pazar", "saatd3", GUICtrlRead($cumasaatd3))
				IniWrite($settingloc, "pazar", "saatd4", GUICtrlRead($cumasaatd4))
				IniWrite($settingloc, "pazar", "saatd5", GUICtrlRead($cumasaatd5))
				IniWrite($settingloc, "pazar", "saatd6", GUICtrlRead($cumasaatd6))
				IniWrite($settingloc, "pazar", "saatd7", GUICtrlRead($cumasaatd7))
				IniWrite($settingloc, "pazar", "saatd8", GUICtrlRead($cumasaatd8))
				IniWrite($settingloc, "pazar", "saatd9", GUICtrlRead($cumasaatd9))
				IniWrite($settingloc, "pazar", "saatd10", GUICtrlRead($cumasaatd10))
				IniWrite($settingloc, "pazar", "saatd11", GUICtrlRead($cumasaatd11))
				IniWrite($settingloc, "pazar", "saatd12", GUICtrlRead($cumasaatd12))
				IniWrite($settingloc, "pazar", "saatd13", GUICtrlRead($cumasaatd13))
				IniWrite($settingloc, "pazar", "saatd14", GUICtrlRead($cumasaatd14))
				IniWrite($settingloc, "pazar", "saatd15", GUICtrlRead($cumasaatd15))
				IniWrite($settingloc, "pazar", "saatd16", GUICtrlRead($cumasaatd16))

				IniWrite($settingloc, "pazar", "dakikad1", GUICtrlRead($cumadakikad1))
				IniWrite($settingloc, "pazar", "dakikad2", GUICtrlRead($cumadakikad2))
				IniWrite($settingloc, "pazar", "dakikad3", GUICtrlRead($cumadakikad3))
				IniWrite($settingloc, "pazar", "dakikad4", GUICtrlRead($cumadakikad4))
				IniWrite($settingloc, "pazar", "dakikad5", GUICtrlRead($cumadakikad5))
				IniWrite($settingloc, "pazar", "dakikad6", GUICtrlRead($cumadakikad6))
				IniWrite($settingloc, "pazar", "dakikad7", GUICtrlRead($cumadakikad7))
				IniWrite($settingloc, "pazar", "dakikad8", GUICtrlRead($cumadakikad8))
				IniWrite($settingloc, "pazar", "dakikad9", GUICtrlRead($cumadakikad9))
				IniWrite($settingloc, "pazar", "dakikad10", GUICtrlRead($cumadakikad10))
				IniWrite($settingloc, "pazar", "dakikad11", GUICtrlRead($cumadakikad11))
				IniWrite($settingloc, "pazar", "dakikad12", GUICtrlRead($cumadakikad12))
				IniWrite($settingloc, "pazar", "dakikad13", GUICtrlRead($cumadakikad13))
				IniWrite($settingloc, "pazar", "dakikad14", GUICtrlRead($cumadakikad14))
				IniWrite($settingloc, "pazar", "dakikad15", GUICtrlRead($cumadakikad15))
				IniWrite($settingloc, "pazar", "dakikad16", GUICtrlRead($cumadakikad16))

				IniWrite($settingloc, "pazar", "muzikd1", GUICtrlRead($cumamuzikd1))
				IniWrite($settingloc, "pazar", "muzikd2", GUICtrlRead($cumamuzikd2))
				IniWrite($settingloc, "pazar", "muzikd3", GUICtrlRead($cumamuzikd3))
				IniWrite($settingloc, "pazar", "muzikd4", GUICtrlRead($cumamuzikd4))
				IniWrite($settingloc, "pazar", "muzikd5", GUICtrlRead($cumamuzikd5))
				IniWrite($settingloc, "pazar", "muzikd6", GUICtrlRead($cumamuzikd6))
				IniWrite($settingloc, "pazar", "muzikd7", GUICtrlRead($cumamuzikd7))
				IniWrite($settingloc, "pazar", "muzikd8", GUICtrlRead($cumamuzikd8))
				IniWrite($settingloc, "pazar", "muzikd9", GUICtrlRead($cumamuzikd9))
				IniWrite($settingloc, "pazar", "muzikd10", GUICtrlRead($cumamuzikd10))
				IniWrite($settingloc, "pazar", "muzikd11", GUICtrlRead($cumamuzikd11))
				IniWrite($settingloc, "pazar", "muzikd12", GUICtrlRead($cumamuzikd12))
				IniWrite($settingloc, "pazar", "muzikd13", GUICtrlRead($cumamuzikd13))
				IniWrite($settingloc, "pazar", "muzikd14", GUICtrlRead($cumamuzikd14))
				IniWrite($settingloc, "pazar", "muzikd15", GUICtrlRead($cumamuzikd15))
				IniWrite($settingloc, "pazar", "muzikd16", GUICtrlRead($cumamuzikd16))

				IniWrite($settingloc, "pazar", "pazard1", IniRead($settingloc, "cuma", "cumad1", "1"))
				IniWrite($settingloc, "pazar", "pazard2", IniRead($settingloc, "cuma", "cumad2", "1"))
				IniWrite($settingloc, "pazar", "pazard3", IniRead($settingloc, "cuma", "cumad3", "1"))
				IniWrite($settingloc, "pazar", "pazard4", IniRead($settingloc, "cuma", "cumad4", "1"))
				IniWrite($settingloc, "pazar", "pazard5", IniRead($settingloc, "cuma", "cumad5", "1"))
				IniWrite($settingloc, "pazar", "pazard6", IniRead($settingloc, "cuma", "cumad6", "1"))
				IniWrite($settingloc, "pazar", "pazard7", IniRead($settingloc, "cuma", "cumad7", "1"))
				IniWrite($settingloc, "pazar", "pazard8", IniRead($settingloc, "cuma", "cumad8", "1"))
				IniWrite($settingloc, "pazar", "pazard9", IniRead($settingloc, "cuma", "cumad9", "1"))
				IniWrite($settingloc, "pazar", "pazard10", IniRead($settingloc, "cuma", "cumad10", "1"))
				IniWrite($settingloc, "pazar", "pazard11", IniRead($settingloc, "cuma", "cumad11", "1"))
				IniWrite($settingloc, "pazar", "pazard12", IniRead($settingloc, "cuma", "cumad12", "1"))
				IniWrite($settingloc, "pazar", "pazard13", IniRead($settingloc, "cuma", "cumad13", "1"))
				IniWrite($settingloc, "pazar", "pazard14", IniRead($settingloc, "cuma", "cumad14", "1"))
				IniWrite($settingloc, "pazar", "pazard15", IniRead($settingloc, "cuma", "cumad15", "1"))
				IniWrite($settingloc, "pazar", "pazard16", IniRead($settingloc, "cuma", "cumad16", "1"))
			EndIf

		Case $ctesikopyala
			If GUICtrlRead($ctesikopyalanacak) = "P.Tesi" Then
				IniWrite($settingloc, "ptesi", "saatd1", GUICtrlRead($ctesisaatd1))
				IniWrite($settingloc, "ptesi", "saatd2", GUICtrlRead($ctesisaatd2))
				IniWrite($settingloc, "ptesi", "saatd3", GUICtrlRead($ctesisaatd3))
				IniWrite($settingloc, "ptesi", "saatd4", GUICtrlRead($ctesisaatd4))
				IniWrite($settingloc, "ptesi", "saatd5", GUICtrlRead($ctesisaatd5))
				IniWrite($settingloc, "ptesi", "saatd6", GUICtrlRead($ctesisaatd6))
				IniWrite($settingloc, "ptesi", "saatd7", GUICtrlRead($ctesisaatd7))
				IniWrite($settingloc, "ptesi", "saatd8", GUICtrlRead($ctesisaatd8))
				IniWrite($settingloc, "ptesi", "saatd9", GUICtrlRead($ctesisaatd9))
				IniWrite($settingloc, "ptesi", "saatd10", GUICtrlRead($ctesisaatd10))
				IniWrite($settingloc, "ptesi", "saatd11", GUICtrlRead($ctesisaatd11))
				IniWrite($settingloc, "ptesi", "saatd12", GUICtrlRead($ctesisaatd12))
				IniWrite($settingloc, "ptesi", "saatd13", GUICtrlRead($ctesisaatd13))
				IniWrite($settingloc, "ptesi", "saatd14", GUICtrlRead($ctesisaatd14))
				IniWrite($settingloc, "ptesi", "saatd15", GUICtrlRead($ctesisaatd15))
				IniWrite($settingloc, "ptesi", "saatd16", GUICtrlRead($ctesisaatd16))

				IniWrite($settingloc, "ptesi", "dakikad1", GUICtrlRead($ctesidakikad1))
				IniWrite($settingloc, "ptesi", "dakikad2", GUICtrlRead($ctesidakikad2))
				IniWrite($settingloc, "ptesi", "dakikad3", GUICtrlRead($ctesidakikad3))
				IniWrite($settingloc, "ptesi", "dakikad4", GUICtrlRead($ctesidakikad4))
				IniWrite($settingloc, "ptesi", "dakikad5", GUICtrlRead($ctesidakikad5))
				IniWrite($settingloc, "ptesi", "dakikad6", GUICtrlRead($ctesidakikad6))
				IniWrite($settingloc, "ptesi", "dakikad7", GUICtrlRead($ctesidakikad7))
				IniWrite($settingloc, "ptesi", "dakikad8", GUICtrlRead($ctesidakikad8))
				IniWrite($settingloc, "ptesi", "dakikad9", GUICtrlRead($ctesidakikad9))
				IniWrite($settingloc, "ptesi", "dakikad10", GUICtrlRead($ctesidakikad10))
				IniWrite($settingloc, "ptesi", "dakikad11", GUICtrlRead($ctesidakikad11))
				IniWrite($settingloc, "ptesi", "dakikad12", GUICtrlRead($ctesidakikad12))
				IniWrite($settingloc, "ptesi", "dakikad13", GUICtrlRead($ctesidakikad13))
				IniWrite($settingloc, "ptesi", "dakikad14", GUICtrlRead($ctesidakikad14))
				IniWrite($settingloc, "ptesi", "dakikad15", GUICtrlRead($ctesidakikad15))
				IniWrite($settingloc, "ptesi", "dakikad16", GUICtrlRead($ctesidakikad16))

				IniWrite($settingloc, "ptesi", "muzikd1", GUICtrlRead($ctesimuzikd1))
				IniWrite($settingloc, "ptesi", "muzikd2", GUICtrlRead($ctesimuzikd2))
				IniWrite($settingloc, "ptesi", "muzikd3", GUICtrlRead($ctesimuzikd3))
				IniWrite($settingloc, "ptesi", "muzikd4", GUICtrlRead($ctesimuzikd4))
				IniWrite($settingloc, "ptesi", "muzikd5", GUICtrlRead($ctesimuzikd5))
				IniWrite($settingloc, "ptesi", "muzikd6", GUICtrlRead($ctesimuzikd6))
				IniWrite($settingloc, "ptesi", "muzikd7", GUICtrlRead($ctesimuzikd7))
				IniWrite($settingloc, "ptesi", "muzikd8", GUICtrlRead($ctesimuzikd8))
				IniWrite($settingloc, "ptesi", "muzikd9", GUICtrlRead($ctesimuzikd9))
				IniWrite($settingloc, "ptesi", "muzikd10", GUICtrlRead($ctesimuzikd10))
				IniWrite($settingloc, "ptesi", "muzikd11", GUICtrlRead($ctesimuzikd11))
				IniWrite($settingloc, "ptesi", "muzikd12", GUICtrlRead($ctesimuzikd12))
				IniWrite($settingloc, "ptesi", "muzikd13", GUICtrlRead($ctesimuzikd13))
				IniWrite($settingloc, "ptesi", "muzikd14", GUICtrlRead($ctesimuzikd14))
				IniWrite($settingloc, "ptesi", "muzikd15", GUICtrlRead($ctesimuzikd15))
				IniWrite($settingloc, "ptesi", "muzikd16", GUICtrlRead($ctesimuzikd16))

				IniWrite($settingloc, "ptesi", "ptesid1", IniRead($settingloc, "ctesi", "ctesid1", "1"))
				IniWrite($settingloc, "ptesi", "ptesid2", IniRead($settingloc, "ctesi", "ctesid2", "1"))
				IniWrite($settingloc, "ptesi", "ptesid3", IniRead($settingloc, "ctesi", "ctesid3", "1"))
				IniWrite($settingloc, "ptesi", "ptesid4", IniRead($settingloc, "ctesi", "ctesid4", "1"))
				IniWrite($settingloc, "ptesi", "ptesid5", IniRead($settingloc, "ctesi", "ctesid5", "1"))
				IniWrite($settingloc, "ptesi", "ptesid6", IniRead($settingloc, "ctesi", "ctesid6", "1"))
				IniWrite($settingloc, "ptesi", "ptesid7", IniRead($settingloc, "ctesi", "ctesid7", "1"))
				IniWrite($settingloc, "ptesi", "ptesid8", IniRead($settingloc, "ctesi", "ctesid8", "1"))
				IniWrite($settingloc, "ptesi", "ptesid9", IniRead($settingloc, "ctesi", "ctesid9", "1"))
				IniWrite($settingloc, "ptesi", "ptesid10", IniRead($settingloc, "ctesi", "ctesid10", "1"))
				IniWrite($settingloc, "ptesi", "ptesid11", IniRead($settingloc, "ctesi", "ctesid11", "1"))
				IniWrite($settingloc, "ptesi", "ptesid12", IniRead($settingloc, "ctesi", "ctesid12", "1"))
				IniWrite($settingloc, "ptesi", "ptesid13", IniRead($settingloc, "ctesi", "ctesid13", "1"))
				IniWrite($settingloc, "ptesi", "ptesid14", IniRead($settingloc, "ctesi", "ctesid14", "1"))
				IniWrite($settingloc, "ptesi", "ptesid15", IniRead($settingloc, "ctesi", "ctesid15", "1"))
				IniWrite($settingloc, "ptesi", "ptesid16", IniRead($settingloc, "ctesi", "ctesid16", "1"))

			ElseIf GUICtrlRead($ctesikopyalanacak) = "Salı" Then
				IniWrite($settingloc, "sali", "saatd1", GUICtrlRead($ctesisaatd1))
				IniWrite($settingloc, "sali", "saatd2", GUICtrlRead($ctesisaatd2))
				IniWrite($settingloc, "sali", "saatd3", GUICtrlRead($ctesisaatd3))
				IniWrite($settingloc, "sali", "saatd4", GUICtrlRead($ctesisaatd4))
				IniWrite($settingloc, "sali", "saatd5", GUICtrlRead($ctesisaatd5))
				IniWrite($settingloc, "sali", "saatd6", GUICtrlRead($ctesisaatd6))
				IniWrite($settingloc, "sali", "saatd7", GUICtrlRead($ctesisaatd7))
				IniWrite($settingloc, "sali", "saatd8", GUICtrlRead($ctesisaatd8))
				IniWrite($settingloc, "sali", "saatd9", GUICtrlRead($ctesisaatd9))
				IniWrite($settingloc, "sali", "saatd10", GUICtrlRead($ctesisaatd10))
				IniWrite($settingloc, "sali", "saatd11", GUICtrlRead($ctesisaatd11))
				IniWrite($settingloc, "sali", "saatd12", GUICtrlRead($ctesisaatd12))
				IniWrite($settingloc, "sali", "saatd13", GUICtrlRead($ctesisaatd13))
				IniWrite($settingloc, "sali", "saatd14", GUICtrlRead($ctesisaatd14))
				IniWrite($settingloc, "sali", "saatd15", GUICtrlRead($ctesisaatd15))
				IniWrite($settingloc, "sali", "saatd16", GUICtrlRead($ctesisaatd16))

				IniWrite($settingloc, "sali", "dakikad1", GUICtrlRead($ctesidakikad1))
				IniWrite($settingloc, "sali", "dakikad2", GUICtrlRead($ctesidakikad2))
				IniWrite($settingloc, "sali", "dakikad3", GUICtrlRead($ctesidakikad3))
				IniWrite($settingloc, "sali", "dakikad4", GUICtrlRead($ctesidakikad4))
				IniWrite($settingloc, "sali", "dakikad5", GUICtrlRead($ctesidakikad5))
				IniWrite($settingloc, "sali", "dakikad6", GUICtrlRead($ctesidakikad6))
				IniWrite($settingloc, "sali", "dakikad7", GUICtrlRead($ctesidakikad7))
				IniWrite($settingloc, "sali", "dakikad8", GUICtrlRead($ctesidakikad8))
				IniWrite($settingloc, "sali", "dakikad9", GUICtrlRead($ctesidakikad9))
				IniWrite($settingloc, "sali", "dakikad10", GUICtrlRead($ctesidakikad10))
				IniWrite($settingloc, "sali", "dakikad11", GUICtrlRead($ctesidakikad11))
				IniWrite($settingloc, "sali", "dakikad12", GUICtrlRead($ctesidakikad12))
				IniWrite($settingloc, "sali", "dakikad13", GUICtrlRead($ctesidakikad13))
				IniWrite($settingloc, "sali", "dakikad14", GUICtrlRead($ctesidakikad14))
				IniWrite($settingloc, "sali", "dakikad15", GUICtrlRead($ctesidakikad15))
				IniWrite($settingloc, "sali", "dakikad16", GUICtrlRead($ctesidakikad16))

				IniWrite($settingloc, "sali", "muzikd1", GUICtrlRead($ctesimuzikd1))
				IniWrite($settingloc, "sali", "muzikd2", GUICtrlRead($ctesimuzikd2))
				IniWrite($settingloc, "sali", "muzikd3", GUICtrlRead($ctesimuzikd3))
				IniWrite($settingloc, "sali", "muzikd4", GUICtrlRead($ctesimuzikd4))
				IniWrite($settingloc, "sali", "muzikd5", GUICtrlRead($ctesimuzikd5))
				IniWrite($settingloc, "sali", "muzikd6", GUICtrlRead($ctesimuzikd6))
				IniWrite($settingloc, "sali", "muzikd7", GUICtrlRead($ctesimuzikd7))
				IniWrite($settingloc, "sali", "muzikd8", GUICtrlRead($ctesimuzikd8))
				IniWrite($settingloc, "sali", "muzikd9", GUICtrlRead($ctesimuzikd9))
				IniWrite($settingloc, "sali", "muzikd10", GUICtrlRead($ctesimuzikd10))
				IniWrite($settingloc, "sali", "muzikd11", GUICtrlRead($ctesimuzikd11))
				IniWrite($settingloc, "sali", "muzikd12", GUICtrlRead($ctesimuzikd12))
				IniWrite($settingloc, "sali", "muzikd13", GUICtrlRead($ctesimuzikd13))
				IniWrite($settingloc, "sali", "muzikd14", GUICtrlRead($ctesimuzikd14))
				IniWrite($settingloc, "sali", "muzikd15", GUICtrlRead($ctesimuzikd15))
				IniWrite($settingloc, "sali", "muzikd16", GUICtrlRead($ctesimuzikd16))

				IniWrite($settingloc, "sali", "salid1", IniRead($settingloc, "ctesi", "ctesid1", "1"))
				IniWrite($settingloc, "sali", "salid2", IniRead($settingloc, "ctesi", "ctesid2", "1"))
				IniWrite($settingloc, "sali", "salid3", IniRead($settingloc, "ctesi", "ctesid3", "1"))
				IniWrite($settingloc, "sali", "salid4", IniRead($settingloc, "ctesi", "ctesid4", "1"))
				IniWrite($settingloc, "sali", "salid5", IniRead($settingloc, "ctesi", "ctesid5", "1"))
				IniWrite($settingloc, "sali", "salid6", IniRead($settingloc, "ctesi", "ctesid6", "1"))
				IniWrite($settingloc, "sali", "salid7", IniRead($settingloc, "ctesi", "ctesid7", "1"))
				IniWrite($settingloc, "sali", "salid8", IniRead($settingloc, "ctesi", "ctesid8", "1"))
				IniWrite($settingloc, "sali", "salid9", IniRead($settingloc, "ctesi", "ctesid9", "1"))
				IniWrite($settingloc, "sali", "salid10", IniRead($settingloc, "ctesi", "ctesid10", "1"))
				IniWrite($settingloc, "sali", "salid11", IniRead($settingloc, "ctesi", "ctesid11", "1"))
				IniWrite($settingloc, "sali", "salid12", IniRead($settingloc, "ctesi", "ctesid12", "1"))
				IniWrite($settingloc, "sali", "salid13", IniRead($settingloc, "ctesi", "ctesid13", "1"))
				IniWrite($settingloc, "sali", "salid14", IniRead($settingloc, "ctesi", "ctesid14", "1"))
				IniWrite($settingloc, "sali", "salid15", IniRead($settingloc, "ctesi", "ctesid15", "1"))
				IniWrite($settingloc, "sali", "salid16", IniRead($settingloc, "ctesi", "ctesid16", "1"))

			ElseIf GUICtrlRead($ctesikopyalanacak) = "Çarşamba" Then
				IniWrite($settingloc, "carsamba", "saatd1", GUICtrlRead($ctesisaatd1))
				IniWrite($settingloc, "carsamba", "saatd2", GUICtrlRead($ctesisaatd2))
				IniWrite($settingloc, "carsamba", "saatd3", GUICtrlRead($ctesisaatd3))
				IniWrite($settingloc, "carsamba", "saatd4", GUICtrlRead($ctesisaatd4))
				IniWrite($settingloc, "carsamba", "saatd5", GUICtrlRead($ctesisaatd5))
				IniWrite($settingloc, "carsamba", "saatd6", GUICtrlRead($ctesisaatd6))
				IniWrite($settingloc, "carsamba", "saatd7", GUICtrlRead($ctesisaatd7))
				IniWrite($settingloc, "carsamba", "saatd8", GUICtrlRead($ctesisaatd8))
				IniWrite($settingloc, "carsamba", "saatd9", GUICtrlRead($ctesisaatd9))
				IniWrite($settingloc, "carsamba", "saatd10", GUICtrlRead($ctesisaatd10))
				IniWrite($settingloc, "carsamba", "saatd11", GUICtrlRead($ctesisaatd11))
				IniWrite($settingloc, "carsamba", "saatd12", GUICtrlRead($ctesisaatd12))
				IniWrite($settingloc, "carsamba", "saatd13", GUICtrlRead($ctesisaatd13))
				IniWrite($settingloc, "carsamba", "saatd14", GUICtrlRead($ctesisaatd14))
				IniWrite($settingloc, "carsamba", "saatd15", GUICtrlRead($ctesisaatd15))
				IniWrite($settingloc, "carsamba", "saatd16", GUICtrlRead($ctesisaatd16))

				IniWrite($settingloc, "carsamba", "dakikad1", GUICtrlRead($ctesidakikad1))
				IniWrite($settingloc, "carsamba", "dakikad2", GUICtrlRead($ctesidakikad2))
				IniWrite($settingloc, "carsamba", "dakikad3", GUICtrlRead($ctesidakikad3))
				IniWrite($settingloc, "carsamba", "dakikad4", GUICtrlRead($ctesidakikad4))
				IniWrite($settingloc, "carsamba", "dakikad5", GUICtrlRead($ctesidakikad5))
				IniWrite($settingloc, "carsamba", "dakikad6", GUICtrlRead($ctesidakikad6))
				IniWrite($settingloc, "carsamba", "dakikad7", GUICtrlRead($ctesidakikad7))
				IniWrite($settingloc, "carsamba", "dakikad8", GUICtrlRead($ctesidakikad8))
				IniWrite($settingloc, "carsamba", "dakikad9", GUICtrlRead($ctesidakikad9))
				IniWrite($settingloc, "carsamba", "dakikad10", GUICtrlRead($ctesidakikad10))
				IniWrite($settingloc, "carsamba", "dakikad11", GUICtrlRead($ctesidakikad11))
				IniWrite($settingloc, "carsamba", "dakikad12", GUICtrlRead($ctesidakikad12))
				IniWrite($settingloc, "carsamba", "dakikad13", GUICtrlRead($ctesidakikad13))
				IniWrite($settingloc, "carsamba", "dakikad14", GUICtrlRead($ctesidakikad14))
				IniWrite($settingloc, "carsamba", "dakikad15", GUICtrlRead($ctesidakikad15))
				IniWrite($settingloc, "carsamba", "dakikad16", GUICtrlRead($ctesidakikad16))

				IniWrite($settingloc, "carsamba", "muzikd1", GUICtrlRead($ctesimuzikd1))
				IniWrite($settingloc, "carsamba", "muzikd2", GUICtrlRead($ctesimuzikd2))
				IniWrite($settingloc, "carsamba", "muzikd3", GUICtrlRead($ctesimuzikd3))
				IniWrite($settingloc, "carsamba", "muzikd4", GUICtrlRead($ctesimuzikd4))
				IniWrite($settingloc, "carsamba", "muzikd5", GUICtrlRead($ctesimuzikd5))
				IniWrite($settingloc, "carsamba", "muzikd6", GUICtrlRead($ctesimuzikd6))
				IniWrite($settingloc, "carsamba", "muzikd7", GUICtrlRead($ctesimuzikd7))
				IniWrite($settingloc, "carsamba", "muzikd8", GUICtrlRead($ctesimuzikd8))
				IniWrite($settingloc, "carsamba", "muzikd9", GUICtrlRead($ctesimuzikd9))
				IniWrite($settingloc, "carsamba", "muzikd10", GUICtrlRead($ctesimuzikd10))
				IniWrite($settingloc, "carsamba", "muzikd11", GUICtrlRead($ctesimuzikd11))
				IniWrite($settingloc, "carsamba", "muzikd12", GUICtrlRead($ctesimuzikd12))
				IniWrite($settingloc, "carsamba", "muzikd13", GUICtrlRead($ctesimuzikd13))
				IniWrite($settingloc, "carsamba", "muzikd14", GUICtrlRead($ctesimuzikd14))
				IniWrite($settingloc, "carsamba", "muzikd15", GUICtrlRead($ctesimuzikd15))
				IniWrite($settingloc, "carsamba", "muzikd16", GUICtrlRead($ctesimuzikd16))

				IniWrite($settingloc, "carsamba", "carsambad1", IniRead($settingloc, "ctesi", "ctesid1", "1"))
				IniWrite($settingloc, "carsamba", "carsambad2", IniRead($settingloc, "ctesi", "ctesid2", "1"))
				IniWrite($settingloc, "carsamba", "carsambad3", IniRead($settingloc, "ctesi", "ctesid3", "1"))
				IniWrite($settingloc, "carsamba", "carsambad4", IniRead($settingloc, "ctesi", "ctesid4", "1"))
				IniWrite($settingloc, "carsamba", "carsambad5", IniRead($settingloc, "ctesi", "ctesid5", "1"))
				IniWrite($settingloc, "carsamba", "carsambad6", IniRead($settingloc, "ctesi", "ctesid6", "1"))
				IniWrite($settingloc, "carsamba", "carsambad7", IniRead($settingloc, "ctesi", "ctesid7", "1"))
				IniWrite($settingloc, "carsamba", "carsambad8", IniRead($settingloc, "ctesi", "ctesid8", "1"))
				IniWrite($settingloc, "carsamba", "carsambad9", IniRead($settingloc, "ctesi", "ctesid9", "1"))
				IniWrite($settingloc, "carsamba", "carsambad10", IniRead($settingloc, "ctesi", "ctesid10", "1"))
				IniWrite($settingloc, "carsamba", "carsambad11", IniRead($settingloc, "ctesi", "ctesid11", "1"))
				IniWrite($settingloc, "carsamba", "carsambad12", IniRead($settingloc, "ctesi", "ctesid12", "1"))
				IniWrite($settingloc, "carsamba", "carsambad13", IniRead($settingloc, "ctesi", "ctesid13", "1"))
				IniWrite($settingloc, "carsamba", "carsambad14", IniRead($settingloc, "ctesi", "ctesid14", "1"))
				IniWrite($settingloc, "carsamba", "carsambad15", IniRead($settingloc, "ctesi", "ctesid15", "1"))
				IniWrite($settingloc, "carsamba", "carsambad16", IniRead($settingloc, "ctesi", "ctesid16", "1"))

			ElseIf GUICtrlRead($ctesikopyalanacak) = "Perşembe" Then
				IniWrite($settingloc, "persembe", "saatd1", GUICtrlRead($ctesisaatd1))
				IniWrite($settingloc, "persembe", "saatd2", GUICtrlRead($ctesisaatd2))
				IniWrite($settingloc, "persembe", "saatd3", GUICtrlRead($ctesisaatd3))
				IniWrite($settingloc, "persembe", "saatd4", GUICtrlRead($ctesisaatd4))
				IniWrite($settingloc, "persembe", "saatd5", GUICtrlRead($ctesisaatd5))
				IniWrite($settingloc, "persembe", "saatd6", GUICtrlRead($ctesisaatd6))
				IniWrite($settingloc, "persembe", "saatd7", GUICtrlRead($ctesisaatd7))
				IniWrite($settingloc, "persembe", "saatd8", GUICtrlRead($ctesisaatd8))
				IniWrite($settingloc, "persembe", "saatd9", GUICtrlRead($ctesisaatd9))
				IniWrite($settingloc, "persembe", "saatd10", GUICtrlRead($ctesisaatd10))
				IniWrite($settingloc, "persembe", "saatd11", GUICtrlRead($ctesisaatd11))
				IniWrite($settingloc, "persembe", "saatd12", GUICtrlRead($ctesisaatd12))
				IniWrite($settingloc, "persembe", "saatd13", GUICtrlRead($ctesisaatd13))
				IniWrite($settingloc, "persembe", "saatd14", GUICtrlRead($ctesisaatd14))
				IniWrite($settingloc, "persembe", "saatd15", GUICtrlRead($ctesisaatd15))
				IniWrite($settingloc, "persembe", "saatd16", GUICtrlRead($ctesisaatd16))

				IniWrite($settingloc, "persembe", "dakikad1", GUICtrlRead($ctesidakikad1))
				IniWrite($settingloc, "persembe", "dakikad2", GUICtrlRead($ctesidakikad2))
				IniWrite($settingloc, "persembe", "dakikad3", GUICtrlRead($ctesidakikad3))
				IniWrite($settingloc, "persembe", "dakikad4", GUICtrlRead($ctesidakikad4))
				IniWrite($settingloc, "persembe", "dakikad5", GUICtrlRead($ctesidakikad5))
				IniWrite($settingloc, "persembe", "dakikad6", GUICtrlRead($ctesidakikad6))
				IniWrite($settingloc, "persembe", "dakikad7", GUICtrlRead($ctesidakikad7))
				IniWrite($settingloc, "persembe", "dakikad8", GUICtrlRead($ctesidakikad8))
				IniWrite($settingloc, "persembe", "dakikad9", GUICtrlRead($ctesidakikad9))
				IniWrite($settingloc, "persembe", "dakikad10", GUICtrlRead($ctesidakikad10))
				IniWrite($settingloc, "persembe", "dakikad11", GUICtrlRead($ctesidakikad11))
				IniWrite($settingloc, "persembe", "dakikad12", GUICtrlRead($ctesidakikad12))
				IniWrite($settingloc, "persembe", "dakikad13", GUICtrlRead($ctesidakikad13))
				IniWrite($settingloc, "persembe", "dakikad14", GUICtrlRead($ctesidakikad14))
				IniWrite($settingloc, "persembe", "dakikad15", GUICtrlRead($ctesidakikad15))
				IniWrite($settingloc, "persembe", "dakikad16", GUICtrlRead($ctesidakikad16))

				IniWrite($settingloc, "persembe", "muzikd1", GUICtrlRead($ctesimuzikd1))
				IniWrite($settingloc, "persembe", "muzikd2", GUICtrlRead($ctesimuzikd2))
				IniWrite($settingloc, "persembe", "muzikd3", GUICtrlRead($ctesimuzikd3))
				IniWrite($settingloc, "persembe", "muzikd4", GUICtrlRead($ctesimuzikd4))
				IniWrite($settingloc, "persembe", "muzikd5", GUICtrlRead($ctesimuzikd5))
				IniWrite($settingloc, "persembe", "muzikd6", GUICtrlRead($ctesimuzikd6))
				IniWrite($settingloc, "persembe", "muzikd7", GUICtrlRead($ctesimuzikd7))
				IniWrite($settingloc, "persembe", "muzikd8", GUICtrlRead($ctesimuzikd8))
				IniWrite($settingloc, "persembe", "muzikd9", GUICtrlRead($ctesimuzikd9))
				IniWrite($settingloc, "persembe", "muzikd10", GUICtrlRead($ctesimuzikd10))
				IniWrite($settingloc, "persembe", "muzikd11", GUICtrlRead($ctesimuzikd11))
				IniWrite($settingloc, "persembe", "muzikd12", GUICtrlRead($ctesimuzikd12))
				IniWrite($settingloc, "persembe", "muzikd13", GUICtrlRead($ctesimuzikd13))
				IniWrite($settingloc, "persembe", "muzikd14", GUICtrlRead($ctesimuzikd14))
				IniWrite($settingloc, "persembe", "muzikd15", GUICtrlRead($ctesimuzikd15))
				IniWrite($settingloc, "persembe", "muzikd16", GUICtrlRead($ctesimuzikd16))

				IniWrite($settingloc, "persembe", "persembed1", IniRead($settingloc, "ctesi", "ctesid1", "1"))
				IniWrite($settingloc, "persembe", "persembed2", IniRead($settingloc, "ctesi", "ctesid2", "1"))
				IniWrite($settingloc, "persembe", "persembed3", IniRead($settingloc, "ctesi", "ctesid3", "1"))
				IniWrite($settingloc, "persembe", "persembed4", IniRead($settingloc, "ctesi", "ctesid4", "1"))
				IniWrite($settingloc, "persembe", "persembed5", IniRead($settingloc, "ctesi", "ctesid5", "1"))
				IniWrite($settingloc, "persembe", "persembed6", IniRead($settingloc, "ctesi", "ctesid6", "1"))
				IniWrite($settingloc, "persembe", "persembed7", IniRead($settingloc, "ctesi", "ctesid7", "1"))
				IniWrite($settingloc, "persembe", "persembed8", IniRead($settingloc, "ctesi", "ctesid8", "1"))
				IniWrite($settingloc, "persembe", "persembed9", IniRead($settingloc, "ctesi", "ctesid9", "1"))
				IniWrite($settingloc, "persembe", "persembed10", IniRead($settingloc, "ctesi", "ctesid10", "1"))
				IniWrite($settingloc, "persembe", "persembed11", IniRead($settingloc, "ctesi", "ctesid11", "1"))
				IniWrite($settingloc, "persembe", "persembed12", IniRead($settingloc, "ctesi", "ctesid12", "1"))
				IniWrite($settingloc, "persembe", "persembed13", IniRead($settingloc, "ctesi", "ctesid13", "1"))
				IniWrite($settingloc, "persembe", "persembed14", IniRead($settingloc, "ctesi", "ctesid14", "1"))
				IniWrite($settingloc, "persembe", "persembed15", IniRead($settingloc, "ctesi", "ctesid15", "1"))
				IniWrite($settingloc, "persembe", "persembed16", IniRead($settingloc, "ctesi", "ctesid16", "1"))

			ElseIf GUICtrlRead($ctesikopyalanacak) = "Cuma" Then
				IniWrite($settingloc, "cuma", "saatd1", GUICtrlRead($ctesisaatd1))
				IniWrite($settingloc, "cuma", "saatd2", GUICtrlRead($ctesisaatd2))
				IniWrite($settingloc, "cuma", "saatd3", GUICtrlRead($ctesisaatd3))
				IniWrite($settingloc, "cuma", "saatd4", GUICtrlRead($ctesisaatd4))
				IniWrite($settingloc, "cuma", "saatd5", GUICtrlRead($ctesisaatd5))
				IniWrite($settingloc, "cuma", "saatd6", GUICtrlRead($ctesisaatd6))
				IniWrite($settingloc, "cuma", "saatd7", GUICtrlRead($ctesisaatd7))
				IniWrite($settingloc, "cuma", "saatd8", GUICtrlRead($ctesisaatd8))
				IniWrite($settingloc, "cuma", "saatd9", GUICtrlRead($ctesisaatd9))
				IniWrite($settingloc, "cuma", "saatd10", GUICtrlRead($ctesisaatd10))
				IniWrite($settingloc, "cuma", "saatd11", GUICtrlRead($ctesisaatd11))
				IniWrite($settingloc, "cuma", "saatd12", GUICtrlRead($ctesisaatd12))
				IniWrite($settingloc, "cuma", "saatd13", GUICtrlRead($ctesisaatd13))
				IniWrite($settingloc, "cuma", "saatd14", GUICtrlRead($ctesisaatd14))
				IniWrite($settingloc, "cuma", "saatd15", GUICtrlRead($ctesisaatd15))
				IniWrite($settingloc, "cuma", "saatd16", GUICtrlRead($ctesisaatd16))

				IniWrite($settingloc, "cuma", "dakikad1", GUICtrlRead($ctesidakikad1))
				IniWrite($settingloc, "cuma", "dakikad2", GUICtrlRead($ctesidakikad2))
				IniWrite($settingloc, "cuma", "dakikad3", GUICtrlRead($ctesidakikad3))
				IniWrite($settingloc, "cuma", "dakikad4", GUICtrlRead($ctesidakikad4))
				IniWrite($settingloc, "cuma", "dakikad5", GUICtrlRead($ctesidakikad5))
				IniWrite($settingloc, "cuma", "dakikad6", GUICtrlRead($ctesidakikad6))
				IniWrite($settingloc, "cuma", "dakikad7", GUICtrlRead($ctesidakikad7))
				IniWrite($settingloc, "cuma", "dakikad8", GUICtrlRead($ctesidakikad8))
				IniWrite($settingloc, "cuma", "dakikad9", GUICtrlRead($ctesidakikad9))
				IniWrite($settingloc, "cuma", "dakikad10", GUICtrlRead($ctesidakikad10))
				IniWrite($settingloc, "cuma", "dakikad11", GUICtrlRead($ctesidakikad11))
				IniWrite($settingloc, "cuma", "dakikad12", GUICtrlRead($ctesidakikad12))
				IniWrite($settingloc, "cuma", "dakikad13", GUICtrlRead($ctesidakikad13))
				IniWrite($settingloc, "cuma", "dakikad14", GUICtrlRead($ctesidakikad14))
				IniWrite($settingloc, "cuma", "dakikad15", GUICtrlRead($ctesidakikad15))
				IniWrite($settingloc, "cuma", "dakikad16", GUICtrlRead($ctesidakikad16))

				IniWrite($settingloc, "cuma", "muzikd1", GUICtrlRead($ctesimuzikd1))
				IniWrite($settingloc, "cuma", "muzikd2", GUICtrlRead($ctesimuzikd2))
				IniWrite($settingloc, "cuma", "muzikd3", GUICtrlRead($ctesimuzikd3))
				IniWrite($settingloc, "cuma", "muzikd4", GUICtrlRead($ctesimuzikd4))
				IniWrite($settingloc, "cuma", "muzikd5", GUICtrlRead($ctesimuzikd5))
				IniWrite($settingloc, "cuma", "muzikd6", GUICtrlRead($ctesimuzikd6))
				IniWrite($settingloc, "cuma", "muzikd7", GUICtrlRead($ctesimuzikd7))
				IniWrite($settingloc, "cuma", "muzikd8", GUICtrlRead($ctesimuzikd8))
				IniWrite($settingloc, "cuma", "muzikd9", GUICtrlRead($ctesimuzikd9))
				IniWrite($settingloc, "cuma", "muzikd10", GUICtrlRead($ctesimuzikd10))
				IniWrite($settingloc, "cuma", "muzikd11", GUICtrlRead($ctesimuzikd11))
				IniWrite($settingloc, "cuma", "muzikd12", GUICtrlRead($ctesimuzikd12))
				IniWrite($settingloc, "cuma", "muzikd13", GUICtrlRead($ctesimuzikd13))
				IniWrite($settingloc, "cuma", "muzikd14", GUICtrlRead($ctesimuzikd14))
				IniWrite($settingloc, "cuma", "muzikd15", GUICtrlRead($ctesimuzikd15))
				IniWrite($settingloc, "cuma", "muzikd16", GUICtrlRead($ctesimuzikd16))

				IniWrite($settingloc, "cuma", "cumad1", IniRead($settingloc, "ctesi", "ctesid1", "1"))
				IniWrite($settingloc, "cuma", "cumad2", IniRead($settingloc, "ctesi", "ctesid2", "1"))
				IniWrite($settingloc, "cuma", "cumad3", IniRead($settingloc, "ctesi", "ctesid3", "1"))
				IniWrite($settingloc, "cuma", "cumad4", IniRead($settingloc, "ctesi", "ctesid4", "1"))
				IniWrite($settingloc, "cuma", "cumad5", IniRead($settingloc, "ctesi", "ctesid5", "1"))
				IniWrite($settingloc, "cuma", "cumad6", IniRead($settingloc, "ctesi", "ctesid6", "1"))
				IniWrite($settingloc, "cuma", "cumad7", IniRead($settingloc, "ctesi", "ctesid7", "1"))
				IniWrite($settingloc, "cuma", "cumad8", IniRead($settingloc, "ctesi", "ctesid8", "1"))
				IniWrite($settingloc, "cuma", "cumad9", IniRead($settingloc, "ctesi", "ctesid9", "1"))
				IniWrite($settingloc, "cuma", "cumad10", IniRead($settingloc, "ctesi", "ctesid10", "1"))
				IniWrite($settingloc, "cuma", "cumad11", IniRead($settingloc, "ctesi", "ctesid11", "1"))
				IniWrite($settingloc, "cuma", "cumad12", IniRead($settingloc, "ctesi", "ctesid12", "1"))
				IniWrite($settingloc, "cuma", "cumad13", IniRead($settingloc, "ctesi", "ctesid13", "1"))
				IniWrite($settingloc, "cuma", "cumad14", IniRead($settingloc, "ctesi", "ctesid14", "1"))
				IniWrite($settingloc, "cuma", "cumad15", IniRead($settingloc, "ctesi", "ctesid15", "1"))
				IniWrite($settingloc, "cuma", "cumad16", IniRead($settingloc, "ctesi", "ctesid16", "1"))

			ElseIf GUICtrlRead($ctesikopyalanacak) = "C.Tesi" Then
				IniWrite($settingloc, "ctesi", "saatd1", GUICtrlRead($ctesisaatd1))
				IniWrite($settingloc, "ctesi", "saatd2", GUICtrlRead($ctesisaatd2))
				IniWrite($settingloc, "ctesi", "saatd3", GUICtrlRead($ctesisaatd3))
				IniWrite($settingloc, "ctesi", "saatd4", GUICtrlRead($ctesisaatd4))
				IniWrite($settingloc, "ctesi", "saatd5", GUICtrlRead($ctesisaatd5))
				IniWrite($settingloc, "ctesi", "saatd6", GUICtrlRead($ctesisaatd6))
				IniWrite($settingloc, "ctesi", "saatd7", GUICtrlRead($ctesisaatd7))
				IniWrite($settingloc, "ctesi", "saatd8", GUICtrlRead($ctesisaatd8))
				IniWrite($settingloc, "ctesi", "saatd9", GUICtrlRead($ctesisaatd9))
				IniWrite($settingloc, "ctesi", "saatd10", GUICtrlRead($ctesisaatd10))
				IniWrite($settingloc, "ctesi", "saatd11", GUICtrlRead($ctesisaatd11))
				IniWrite($settingloc, "ctesi", "saatd12", GUICtrlRead($ctesisaatd12))
				IniWrite($settingloc, "ctesi", "saatd13", GUICtrlRead($ctesisaatd13))
				IniWrite($settingloc, "ctesi", "saatd14", GUICtrlRead($ctesisaatd14))
				IniWrite($settingloc, "ctesi", "saatd15", GUICtrlRead($ctesisaatd15))
				IniWrite($settingloc, "ctesi", "saatd16", GUICtrlRead($ctesisaatd16))

				IniWrite($settingloc, "ctesi", "dakikad1", GUICtrlRead($ctesidakikad1))
				IniWrite($settingloc, "ctesi", "dakikad2", GUICtrlRead($ctesidakikad2))
				IniWrite($settingloc, "ctesi", "dakikad3", GUICtrlRead($ctesidakikad3))
				IniWrite($settingloc, "ctesi", "dakikad4", GUICtrlRead($ctesidakikad4))
				IniWrite($settingloc, "ctesi", "dakikad5", GUICtrlRead($ctesidakikad5))
				IniWrite($settingloc, "ctesi", "dakikad6", GUICtrlRead($ctesidakikad6))
				IniWrite($settingloc, "ctesi", "dakikad7", GUICtrlRead($ctesidakikad7))
				IniWrite($settingloc, "ctesi", "dakikad8", GUICtrlRead($ctesidakikad8))
				IniWrite($settingloc, "ctesi", "dakikad9", GUICtrlRead($ctesidakikad9))
				IniWrite($settingloc, "ctesi", "dakikad10", GUICtrlRead($ctesidakikad10))
				IniWrite($settingloc, "ctesi", "dakikad11", GUICtrlRead($ctesidakikad11))
				IniWrite($settingloc, "ctesi", "dakikad12", GUICtrlRead($ctesidakikad12))
				IniWrite($settingloc, "ctesi", "dakikad13", GUICtrlRead($ctesidakikad13))
				IniWrite($settingloc, "ctesi", "dakikad14", GUICtrlRead($ctesidakikad14))
				IniWrite($settingloc, "ctesi", "dakikad15", GUICtrlRead($ctesidakikad15))
				IniWrite($settingloc, "ctesi", "dakikad16", GUICtrlRead($ctesidakikad16))

				IniWrite($settingloc, "ctesi", "muzikd1", GUICtrlRead($ctesimuzikd1))
				IniWrite($settingloc, "ctesi", "muzikd2", GUICtrlRead($ctesimuzikd2))
				IniWrite($settingloc, "ctesi", "muzikd3", GUICtrlRead($ctesimuzikd3))
				IniWrite($settingloc, "ctesi", "muzikd4", GUICtrlRead($ctesimuzikd4))
				IniWrite($settingloc, "ctesi", "muzikd5", GUICtrlRead($ctesimuzikd5))
				IniWrite($settingloc, "ctesi", "muzikd6", GUICtrlRead($ctesimuzikd6))
				IniWrite($settingloc, "ctesi", "muzikd7", GUICtrlRead($ctesimuzikd7))
				IniWrite($settingloc, "ctesi", "muzikd8", GUICtrlRead($ctesimuzikd8))
				IniWrite($settingloc, "ctesi", "muzikd9", GUICtrlRead($ctesimuzikd9))
				IniWrite($settingloc, "ctesi", "muzikd10", GUICtrlRead($ctesimuzikd10))
				IniWrite($settingloc, "ctesi", "muzikd11", GUICtrlRead($ctesimuzikd11))
				IniWrite($settingloc, "ctesi", "muzikd12", GUICtrlRead($ctesimuzikd12))
				IniWrite($settingloc, "ctesi", "muzikd13", GUICtrlRead($ctesimuzikd13))
				IniWrite($settingloc, "ctesi", "muzikd14", GUICtrlRead($ctesimuzikd14))
				IniWrite($settingloc, "ctesi", "muzikd15", GUICtrlRead($ctesimuzikd15))
				IniWrite($settingloc, "ctesi", "muzikd16", GUICtrlRead($ctesimuzikd16))

				IniWrite($settingloc, "ctesi", "ctesid1", IniRead($settingloc, "ctesi", "ctesid1", "1"))
				IniWrite($settingloc, "ctesi", "ctesid2", IniRead($settingloc, "ctesi", "ctesid2", "1"))
				IniWrite($settingloc, "ctesi", "ctesid3", IniRead($settingloc, "ctesi", "ctesid3", "1"))
				IniWrite($settingloc, "ctesi", "ctesid4", IniRead($settingloc, "ctesi", "ctesid4", "1"))
				IniWrite($settingloc, "ctesi", "ctesid5", IniRead($settingloc, "ctesi", "ctesid5", "1"))
				IniWrite($settingloc, "ctesi", "ctesid6", IniRead($settingloc, "ctesi", "ctesid6", "1"))
				IniWrite($settingloc, "ctesi", "ctesid7", IniRead($settingloc, "ctesi", "ctesid7", "1"))
				IniWrite($settingloc, "ctesi", "ctesid8", IniRead($settingloc, "ctesi", "ctesid8", "1"))
				IniWrite($settingloc, "ctesi", "ctesid9", IniRead($settingloc, "ctesi", "ctesid9", "1"))
				IniWrite($settingloc, "ctesi", "ctesid10", IniRead($settingloc, "ctesi", "ctesid10", "1"))
				IniWrite($settingloc, "ctesi", "ctesid11", IniRead($settingloc, "ctesi", "ctesid11", "1"))
				IniWrite($settingloc, "ctesi", "ctesid12", IniRead($settingloc, "ctesi", "ctesid12", "1"))
				IniWrite($settingloc, "ctesi", "ctesid13", IniRead($settingloc, "ctesi", "ctesid13", "1"))
				IniWrite($settingloc, "ctesi", "ctesid14", IniRead($settingloc, "ctesi", "ctesid14", "1"))
				IniWrite($settingloc, "ctesi", "ctesid15", IniRead($settingloc, "ctesi", "ctesid15", "1"))
				IniWrite($settingloc, "ctesi", "ctesid16", IniRead($settingloc, "ctesi", "ctesid16", "1"))

			ElseIf GUICtrlRead($ctesikopyalanacak) = "Pazar" Then
				IniWrite($settingloc, "pazar", "saatd1", GUICtrlRead($ctesisaatd1))
				IniWrite($settingloc, "pazar", "saatd2", GUICtrlRead($ctesisaatd2))
				IniWrite($settingloc, "pazar", "saatd3", GUICtrlRead($ctesisaatd3))
				IniWrite($settingloc, "pazar", "saatd4", GUICtrlRead($ctesisaatd4))
				IniWrite($settingloc, "pazar", "saatd5", GUICtrlRead($ctesisaatd5))
				IniWrite($settingloc, "pazar", "saatd6", GUICtrlRead($ctesisaatd6))
				IniWrite($settingloc, "pazar", "saatd7", GUICtrlRead($ctesisaatd7))
				IniWrite($settingloc, "pazar", "saatd8", GUICtrlRead($ctesisaatd8))
				IniWrite($settingloc, "pazar", "saatd9", GUICtrlRead($ctesisaatd9))
				IniWrite($settingloc, "pazar", "saatd10", GUICtrlRead($ctesisaatd10))
				IniWrite($settingloc, "pazar", "saatd11", GUICtrlRead($ctesisaatd11))
				IniWrite($settingloc, "pazar", "saatd12", GUICtrlRead($ctesisaatd12))
				IniWrite($settingloc, "pazar", "saatd13", GUICtrlRead($ctesisaatd13))
				IniWrite($settingloc, "pazar", "saatd14", GUICtrlRead($ctesisaatd14))
				IniWrite($settingloc, "pazar", "saatd15", GUICtrlRead($ctesisaatd15))
				IniWrite($settingloc, "pazar", "saatd16", GUICtrlRead($ctesisaatd16))

				IniWrite($settingloc, "pazar", "dakikad1", GUICtrlRead($ctesidakikad1))
				IniWrite($settingloc, "pazar", "dakikad2", GUICtrlRead($ctesidakikad2))
				IniWrite($settingloc, "pazar", "dakikad3", GUICtrlRead($ctesidakikad3))
				IniWrite($settingloc, "pazar", "dakikad4", GUICtrlRead($ctesidakikad4))
				IniWrite($settingloc, "pazar", "dakikad5", GUICtrlRead($ctesidakikad5))
				IniWrite($settingloc, "pazar", "dakikad6", GUICtrlRead($ctesidakikad6))
				IniWrite($settingloc, "pazar", "dakikad7", GUICtrlRead($ctesidakikad7))
				IniWrite($settingloc, "pazar", "dakikad8", GUICtrlRead($ctesidakikad8))
				IniWrite($settingloc, "pazar", "dakikad9", GUICtrlRead($ctesidakikad9))
				IniWrite($settingloc, "pazar", "dakikad10", GUICtrlRead($ctesidakikad10))
				IniWrite($settingloc, "pazar", "dakikad11", GUICtrlRead($ctesidakikad11))
				IniWrite($settingloc, "pazar", "dakikad12", GUICtrlRead($ctesidakikad12))
				IniWrite($settingloc, "pazar", "dakikad13", GUICtrlRead($ctesidakikad13))
				IniWrite($settingloc, "pazar", "dakikad14", GUICtrlRead($ctesidakikad14))
				IniWrite($settingloc, "pazar", "dakikad15", GUICtrlRead($ctesidakikad15))
				IniWrite($settingloc, "pazar", "dakikad16", GUICtrlRead($ctesidakikad16))

				IniWrite($settingloc, "pazar", "muzikd1", GUICtrlRead($ctesimuzikd1))
				IniWrite($settingloc, "pazar", "muzikd2", GUICtrlRead($ctesimuzikd2))
				IniWrite($settingloc, "pazar", "muzikd3", GUICtrlRead($ctesimuzikd3))
				IniWrite($settingloc, "pazar", "muzikd4", GUICtrlRead($ctesimuzikd4))
				IniWrite($settingloc, "pazar", "muzikd5", GUICtrlRead($ctesimuzikd5))
				IniWrite($settingloc, "pazar", "muzikd6", GUICtrlRead($ctesimuzikd6))
				IniWrite($settingloc, "pazar", "muzikd7", GUICtrlRead($ctesimuzikd7))
				IniWrite($settingloc, "pazar", "muzikd8", GUICtrlRead($ctesimuzikd8))
				IniWrite($settingloc, "pazar", "muzikd9", GUICtrlRead($ctesimuzikd9))
				IniWrite($settingloc, "pazar", "muzikd10", GUICtrlRead($ctesimuzikd10))
				IniWrite($settingloc, "pazar", "muzikd11", GUICtrlRead($ctesimuzikd11))
				IniWrite($settingloc, "pazar", "muzikd12", GUICtrlRead($ctesimuzikd12))
				IniWrite($settingloc, "pazar", "muzikd13", GUICtrlRead($ctesimuzikd13))
				IniWrite($settingloc, "pazar", "muzikd14", GUICtrlRead($ctesimuzikd14))
				IniWrite($settingloc, "pazar", "muzikd15", GUICtrlRead($ctesimuzikd15))
				IniWrite($settingloc, "pazar", "muzikd16", GUICtrlRead($ctesimuzikd16))

				IniWrite($settingloc, "pazar", "pazard1", IniRead($settingloc, "ctesi", "ctesid1", "1"))
				IniWrite($settingloc, "pazar", "pazard2", IniRead($settingloc, "ctesi", "ctesid2", "1"))
				IniWrite($settingloc, "pazar", "pazard3", IniRead($settingloc, "ctesi", "ctesid3", "1"))
				IniWrite($settingloc, "pazar", "pazard4", IniRead($settingloc, "ctesi", "ctesid4", "1"))
				IniWrite($settingloc, "pazar", "pazard5", IniRead($settingloc, "ctesi", "ctesid5", "1"))
				IniWrite($settingloc, "pazar", "pazard6", IniRead($settingloc, "ctesi", "ctesid6", "1"))
				IniWrite($settingloc, "pazar", "pazard7", IniRead($settingloc, "ctesi", "ctesid7", "1"))
				IniWrite($settingloc, "pazar", "pazard8", IniRead($settingloc, "ctesi", "ctesid8", "1"))
				IniWrite($settingloc, "pazar", "pazard9", IniRead($settingloc, "ctesi", "ctesid9", "1"))
				IniWrite($settingloc, "pazar", "pazard10", IniRead($settingloc, "ctesi", "ctesid10", "1"))
				IniWrite($settingloc, "pazar", "pazard11", IniRead($settingloc, "ctesi", "ctesid11", "1"))
				IniWrite($settingloc, "pazar", "pazard12", IniRead($settingloc, "ctesi", "ctesid12", "1"))
				IniWrite($settingloc, "pazar", "pazard13", IniRead($settingloc, "ctesi", "ctesid13", "1"))
				IniWrite($settingloc, "pazar", "pazard14", IniRead($settingloc, "ctesi", "ctesid14", "1"))
				IniWrite($settingloc, "pazar", "pazard15", IniRead($settingloc, "ctesi", "ctesid15", "1"))
				IniWrite($settingloc, "pazar", "pazard16", IniRead($settingloc, "ctesi", "ctesid16", "1"))
			EndIf

		Case $pazarkopyala
			If GUICtrlRead($pazarkopyalanacak) = "P.Tesi" Then
				IniWrite($settingloc, "ptesi", "saatd1", GUICtrlRead($pazarsaatd1))
				IniWrite($settingloc, "ptesi", "saatd2", GUICtrlRead($pazarsaatd2))
				IniWrite($settingloc, "ptesi", "saatd3", GUICtrlRead($pazarsaatd3))
				IniWrite($settingloc, "ptesi", "saatd4", GUICtrlRead($pazarsaatd4))
				IniWrite($settingloc, "ptesi", "saatd5", GUICtrlRead($pazarsaatd5))
				IniWrite($settingloc, "ptesi", "saatd6", GUICtrlRead($pazarsaatd6))
				IniWrite($settingloc, "ptesi", "saatd7", GUICtrlRead($pazarsaatd7))
				IniWrite($settingloc, "ptesi", "saatd8", GUICtrlRead($pazarsaatd8))
				IniWrite($settingloc, "ptesi", "saatd9", GUICtrlRead($pazarsaatd9))
				IniWrite($settingloc, "ptesi", "saatd10", GUICtrlRead($pazarsaatd10))
				IniWrite($settingloc, "ptesi", "saatd11", GUICtrlRead($pazarsaatd11))
				IniWrite($settingloc, "ptesi", "saatd12", GUICtrlRead($pazarsaatd12))
				IniWrite($settingloc, "ptesi", "saatd13", GUICtrlRead($pazarsaatd13))
				IniWrite($settingloc, "ptesi", "saatd14", GUICtrlRead($pazarsaatd14))
				IniWrite($settingloc, "ptesi", "saatd15", GUICtrlRead($pazarsaatd15))
				IniWrite($settingloc, "ptesi", "saatd16", GUICtrlRead($pazarsaatd16))

				IniWrite($settingloc, "ptesi", "dakikad1", GUICtrlRead($pazardakikad1))
				IniWrite($settingloc, "ptesi", "dakikad2", GUICtrlRead($pazardakikad2))
				IniWrite($settingloc, "ptesi", "dakikad3", GUICtrlRead($pazardakikad3))
				IniWrite($settingloc, "ptesi", "dakikad4", GUICtrlRead($pazardakikad4))
				IniWrite($settingloc, "ptesi", "dakikad5", GUICtrlRead($pazardakikad5))
				IniWrite($settingloc, "ptesi", "dakikad6", GUICtrlRead($pazardakikad6))
				IniWrite($settingloc, "ptesi", "dakikad7", GUICtrlRead($pazardakikad7))
				IniWrite($settingloc, "ptesi", "dakikad8", GUICtrlRead($pazardakikad8))
				IniWrite($settingloc, "ptesi", "dakikad9", GUICtrlRead($pazardakikad9))
				IniWrite($settingloc, "ptesi", "dakikad10", GUICtrlRead($pazardakikad10))
				IniWrite($settingloc, "ptesi", "dakikad11", GUICtrlRead($pazardakikad11))
				IniWrite($settingloc, "ptesi", "dakikad12", GUICtrlRead($pazardakikad12))
				IniWrite($settingloc, "ptesi", "dakikad13", GUICtrlRead($pazardakikad13))
				IniWrite($settingloc, "ptesi", "dakikad14", GUICtrlRead($pazardakikad14))
				IniWrite($settingloc, "ptesi", "dakikad15", GUICtrlRead($pazardakikad15))
				IniWrite($settingloc, "ptesi", "dakikad16", GUICtrlRead($pazardakikad16))

				IniWrite($settingloc, "ptesi", "muzikd1", GUICtrlRead($pazarmuzikd1))
				IniWrite($settingloc, "ptesi", "muzikd2", GUICtrlRead($pazarmuzikd2))
				IniWrite($settingloc, "ptesi", "muzikd3", GUICtrlRead($pazarmuzikd3))
				IniWrite($settingloc, "ptesi", "muzikd4", GUICtrlRead($pazarmuzikd4))
				IniWrite($settingloc, "ptesi", "muzikd5", GUICtrlRead($pazarmuzikd5))
				IniWrite($settingloc, "ptesi", "muzikd6", GUICtrlRead($pazarmuzikd6))
				IniWrite($settingloc, "ptesi", "muzikd7", GUICtrlRead($pazarmuzikd7))
				IniWrite($settingloc, "ptesi", "muzikd8", GUICtrlRead($pazarmuzikd8))
				IniWrite($settingloc, "ptesi", "muzikd9", GUICtrlRead($pazarmuzikd9))
				IniWrite($settingloc, "ptesi", "muzikd10", GUICtrlRead($pazarmuzikd10))
				IniWrite($settingloc, "ptesi", "muzikd11", GUICtrlRead($pazarmuzikd11))
				IniWrite($settingloc, "ptesi", "muzikd12", GUICtrlRead($pazarmuzikd12))
				IniWrite($settingloc, "ptesi", "muzikd13", GUICtrlRead($pazarmuzikd13))
				IniWrite($settingloc, "ptesi", "muzikd14", GUICtrlRead($pazarmuzikd14))
				IniWrite($settingloc, "ptesi", "muzikd15", GUICtrlRead($pazarmuzikd15))
				IniWrite($settingloc, "ptesi", "muzikd16", GUICtrlRead($pazarmuzikd16))

				IniWrite($settingloc, "ptesi", "ptesid1", IniRead($settingloc, "pazar", "pazard1", "1"))
				IniWrite($settingloc, "ptesi", "ptesid2", IniRead($settingloc, "pazar", "pazard2", "1"))
				IniWrite($settingloc, "ptesi", "ptesid3", IniRead($settingloc, "pazar", "pazard3", "1"))
				IniWrite($settingloc, "ptesi", "ptesid4", IniRead($settingloc, "pazar", "pazard4", "1"))
				IniWrite($settingloc, "ptesi", "ptesid5", IniRead($settingloc, "pazar", "pazard5", "1"))
				IniWrite($settingloc, "ptesi", "ptesid6", IniRead($settingloc, "pazar", "pazard6", "1"))
				IniWrite($settingloc, "ptesi", "ptesid7", IniRead($settingloc, "pazar", "pazard7", "1"))
				IniWrite($settingloc, "ptesi", "ptesid8", IniRead($settingloc, "pazar", "pazard8", "1"))
				IniWrite($settingloc, "ptesi", "ptesid9", IniRead($settingloc, "pazar", "pazard9", "1"))
				IniWrite($settingloc, "ptesi", "ptesid10", IniRead($settingloc, "pazar", "pazard10", "1"))
				IniWrite($settingloc, "ptesi", "ptesid11", IniRead($settingloc, "pazar", "pazard11", "1"))
				IniWrite($settingloc, "ptesi", "ptesid12", IniRead($settingloc, "pazar", "pazard12", "1"))
				IniWrite($settingloc, "ptesi", "ptesid13", IniRead($settingloc, "pazar", "pazard13", "1"))
				IniWrite($settingloc, "ptesi", "ptesid14", IniRead($settingloc, "pazar", "pazard14", "1"))
				IniWrite($settingloc, "ptesi", "ptesid15", IniRead($settingloc, "pazar", "pazard15", "1"))
				IniWrite($settingloc, "ptesi", "ptesid16", IniRead($settingloc, "pazar", "pazard16", "1"))

			ElseIf GUICtrlRead($pazarkopyalanacak) = "Salı" Then
				IniWrite($settingloc, "sali", "saatd1", GUICtrlRead($pazarsaatd1))
				IniWrite($settingloc, "sali", "saatd2", GUICtrlRead($pazarsaatd2))
				IniWrite($settingloc, "sali", "saatd3", GUICtrlRead($pazarsaatd3))
				IniWrite($settingloc, "sali", "saatd4", GUICtrlRead($pazarsaatd4))
				IniWrite($settingloc, "sali", "saatd5", GUICtrlRead($pazarsaatd5))
				IniWrite($settingloc, "sali", "saatd6", GUICtrlRead($pazarsaatd6))
				IniWrite($settingloc, "sali", "saatd7", GUICtrlRead($pazarsaatd7))
				IniWrite($settingloc, "sali", "saatd8", GUICtrlRead($pazarsaatd8))
				IniWrite($settingloc, "sali", "saatd9", GUICtrlRead($pazarsaatd9))
				IniWrite($settingloc, "sali", "saatd10", GUICtrlRead($pazarsaatd10))
				IniWrite($settingloc, "sali", "saatd11", GUICtrlRead($pazarsaatd11))
				IniWrite($settingloc, "sali", "saatd12", GUICtrlRead($pazarsaatd12))
				IniWrite($settingloc, "sali", "saatd13", GUICtrlRead($pazarsaatd13))
				IniWrite($settingloc, "sali", "saatd14", GUICtrlRead($pazarsaatd14))
				IniWrite($settingloc, "sali", "saatd15", GUICtrlRead($pazarsaatd15))
				IniWrite($settingloc, "sali", "saatd16", GUICtrlRead($pazarsaatd16))

				IniWrite($settingloc, "sali", "dakikad1", GUICtrlRead($pazardakikad1))
				IniWrite($settingloc, "sali", "dakikad2", GUICtrlRead($pazardakikad2))
				IniWrite($settingloc, "sali", "dakikad3", GUICtrlRead($pazardakikad3))
				IniWrite($settingloc, "sali", "dakikad4", GUICtrlRead($pazardakikad4))
				IniWrite($settingloc, "sali", "dakikad5", GUICtrlRead($pazardakikad5))
				IniWrite($settingloc, "sali", "dakikad6", GUICtrlRead($pazardakikad6))
				IniWrite($settingloc, "sali", "dakikad7", GUICtrlRead($pazardakikad7))
				IniWrite($settingloc, "sali", "dakikad8", GUICtrlRead($pazardakikad8))
				IniWrite($settingloc, "sali", "dakikad9", GUICtrlRead($pazardakikad9))
				IniWrite($settingloc, "sali", "dakikad10", GUICtrlRead($pazardakikad10))
				IniWrite($settingloc, "sali", "dakikad11", GUICtrlRead($pazardakikad11))
				IniWrite($settingloc, "sali", "dakikad12", GUICtrlRead($pazardakikad12))
				IniWrite($settingloc, "sali", "dakikad13", GUICtrlRead($pazardakikad13))
				IniWrite($settingloc, "sali", "dakikad14", GUICtrlRead($pazardakikad14))
				IniWrite($settingloc, "sali", "dakikad15", GUICtrlRead($pazardakikad15))
				IniWrite($settingloc, "sali", "dakikad16", GUICtrlRead($pazardakikad16))

				IniWrite($settingloc, "sali", "muzikd1", GUICtrlRead($pazarmuzikd1))
				IniWrite($settingloc, "sali", "muzikd2", GUICtrlRead($pazarmuzikd2))
				IniWrite($settingloc, "sali", "muzikd3", GUICtrlRead($pazarmuzikd3))
				IniWrite($settingloc, "sali", "muzikd4", GUICtrlRead($pazarmuzikd4))
				IniWrite($settingloc, "sali", "muzikd5", GUICtrlRead($pazarmuzikd5))
				IniWrite($settingloc, "sali", "muzikd6", GUICtrlRead($pazarmuzikd6))
				IniWrite($settingloc, "sali", "muzikd7", GUICtrlRead($pazarmuzikd7))
				IniWrite($settingloc, "sali", "muzikd8", GUICtrlRead($pazarmuzikd8))
				IniWrite($settingloc, "sali", "muzikd9", GUICtrlRead($pazarmuzikd9))
				IniWrite($settingloc, "sali", "muzikd10", GUICtrlRead($pazarmuzikd10))
				IniWrite($settingloc, "sali", "muzikd11", GUICtrlRead($pazarmuzikd11))
				IniWrite($settingloc, "sali", "muzikd12", GUICtrlRead($pazarmuzikd12))
				IniWrite($settingloc, "sali", "muzikd13", GUICtrlRead($pazarmuzikd13))
				IniWrite($settingloc, "sali", "muzikd14", GUICtrlRead($pazarmuzikd14))
				IniWrite($settingloc, "sali", "muzikd15", GUICtrlRead($pazarmuzikd15))
				IniWrite($settingloc, "sali", "muzikd16", GUICtrlRead($pazarmuzikd16))

				IniWrite($settingloc, "sali", "salid1", IniRead($settingloc, "pazar", "pazard1", "1"))
				IniWrite($settingloc, "sali", "salid2", IniRead($settingloc, "pazar", "pazard2", "1"))
				IniWrite($settingloc, "sali", "salid3", IniRead($settingloc, "pazar", "pazard3", "1"))
				IniWrite($settingloc, "sali", "salid4", IniRead($settingloc, "pazar", "pazard4", "1"))
				IniWrite($settingloc, "sali", "salid5", IniRead($settingloc, "pazar", "pazard5", "1"))
				IniWrite($settingloc, "sali", "salid6", IniRead($settingloc, "pazar", "pazard6", "1"))
				IniWrite($settingloc, "sali", "salid7", IniRead($settingloc, "pazar", "pazard7", "1"))
				IniWrite($settingloc, "sali", "salid8", IniRead($settingloc, "pazar", "pazard8", "1"))
				IniWrite($settingloc, "sali", "salid9", IniRead($settingloc, "pazar", "pazard9", "1"))
				IniWrite($settingloc, "sali", "salid10", IniRead($settingloc, "pazar", "pazard10", "1"))
				IniWrite($settingloc, "sali", "salid11", IniRead($settingloc, "pazar", "pazard11", "1"))
				IniWrite($settingloc, "sali", "salid12", IniRead($settingloc, "pazar", "pazard12", "1"))
				IniWrite($settingloc, "sali", "salid13", IniRead($settingloc, "pazar", "pazard13", "1"))
				IniWrite($settingloc, "sali", "salid14", IniRead($settingloc, "pazar", "pazard14", "1"))
				IniWrite($settingloc, "sali", "salid15", IniRead($settingloc, "pazar", "pazard15", "1"))
				IniWrite($settingloc, "sali", "salid16", IniRead($settingloc, "pazar", "pazard16", "1"))

			ElseIf GUICtrlRead($pazarkopyalanacak) = "Çarşamba" Then
				IniWrite($settingloc, "carsamba", "saatd1", GUICtrlRead($pazarsaatd1))
				IniWrite($settingloc, "carsamba", "saatd2", GUICtrlRead($pazarsaatd2))
				IniWrite($settingloc, "carsamba", "saatd3", GUICtrlRead($pazarsaatd3))
				IniWrite($settingloc, "carsamba", "saatd4", GUICtrlRead($pazarsaatd4))
				IniWrite($settingloc, "carsamba", "saatd5", GUICtrlRead($pazarsaatd5))
				IniWrite($settingloc, "carsamba", "saatd6", GUICtrlRead($pazarsaatd6))
				IniWrite($settingloc, "carsamba", "saatd7", GUICtrlRead($pazarsaatd7))
				IniWrite($settingloc, "carsamba", "saatd8", GUICtrlRead($pazarsaatd8))
				IniWrite($settingloc, "carsamba", "saatd9", GUICtrlRead($pazarsaatd9))
				IniWrite($settingloc, "carsamba", "saatd10", GUICtrlRead($pazarsaatd10))
				IniWrite($settingloc, "carsamba", "saatd11", GUICtrlRead($pazarsaatd11))
				IniWrite($settingloc, "carsamba", "saatd12", GUICtrlRead($pazarsaatd12))
				IniWrite($settingloc, "carsamba", "saatd13", GUICtrlRead($pazarsaatd13))
				IniWrite($settingloc, "carsamba", "saatd14", GUICtrlRead($pazarsaatd14))
				IniWrite($settingloc, "carsamba", "saatd15", GUICtrlRead($pazarsaatd15))
				IniWrite($settingloc, "carsamba", "saatd16", GUICtrlRead($pazarsaatd16))

				IniWrite($settingloc, "carsamba", "dakikad1", GUICtrlRead($pazardakikad1))
				IniWrite($settingloc, "carsamba", "dakikad2", GUICtrlRead($pazardakikad2))
				IniWrite($settingloc, "carsamba", "dakikad3", GUICtrlRead($pazardakikad3))
				IniWrite($settingloc, "carsamba", "dakikad4", GUICtrlRead($pazardakikad4))
				IniWrite($settingloc, "carsamba", "dakikad5", GUICtrlRead($pazardakikad5))
				IniWrite($settingloc, "carsamba", "dakikad6", GUICtrlRead($pazardakikad6))
				IniWrite($settingloc, "carsamba", "dakikad7", GUICtrlRead($pazardakikad7))
				IniWrite($settingloc, "carsamba", "dakikad8", GUICtrlRead($pazardakikad8))
				IniWrite($settingloc, "carsamba", "dakikad9", GUICtrlRead($pazardakikad9))
				IniWrite($settingloc, "carsamba", "dakikad10", GUICtrlRead($pazardakikad10))
				IniWrite($settingloc, "carsamba", "dakikad11", GUICtrlRead($pazardakikad11))
				IniWrite($settingloc, "carsamba", "dakikad12", GUICtrlRead($pazardakikad12))
				IniWrite($settingloc, "carsamba", "dakikad13", GUICtrlRead($pazardakikad13))
				IniWrite($settingloc, "carsamba", "dakikad14", GUICtrlRead($pazardakikad14))
				IniWrite($settingloc, "carsamba", "dakikad15", GUICtrlRead($pazardakikad15))
				IniWrite($settingloc, "carsamba", "dakikad16", GUICtrlRead($pazardakikad16))

				IniWrite($settingloc, "carsamba", "muzikd1", GUICtrlRead($pazarmuzikd1))
				IniWrite($settingloc, "carsamba", "muzikd2", GUICtrlRead($pazarmuzikd2))
				IniWrite($settingloc, "carsamba", "muzikd3", GUICtrlRead($pazarmuzikd3))
				IniWrite($settingloc, "carsamba", "muzikd4", GUICtrlRead($pazarmuzikd4))
				IniWrite($settingloc, "carsamba", "muzikd5", GUICtrlRead($pazarmuzikd5))
				IniWrite($settingloc, "carsamba", "muzikd6", GUICtrlRead($pazarmuzikd6))
				IniWrite($settingloc, "carsamba", "muzikd7", GUICtrlRead($pazarmuzikd7))
				IniWrite($settingloc, "carsamba", "muzikd8", GUICtrlRead($pazarmuzikd8))
				IniWrite($settingloc, "carsamba", "muzikd9", GUICtrlRead($pazarmuzikd9))
				IniWrite($settingloc, "carsamba", "muzikd10", GUICtrlRead($pazarmuzikd10))
				IniWrite($settingloc, "carsamba", "muzikd11", GUICtrlRead($pazarmuzikd11))
				IniWrite($settingloc, "carsamba", "muzikd12", GUICtrlRead($pazarmuzikd12))
				IniWrite($settingloc, "carsamba", "muzikd13", GUICtrlRead($pazarmuzikd13))
				IniWrite($settingloc, "carsamba", "muzikd14", GUICtrlRead($pazarmuzikd14))
				IniWrite($settingloc, "carsamba", "muzikd15", GUICtrlRead($pazarmuzikd15))
				IniWrite($settingloc, "carsamba", "muzikd16", GUICtrlRead($pazarmuzikd16))

				IniWrite($settingloc, "carsamba", "carsambad1", IniRead($settingloc, "pazar", "pazard1", "1"))
				IniWrite($settingloc, "carsamba", "carsambad2", IniRead($settingloc, "pazar", "pazard2", "1"))
				IniWrite($settingloc, "carsamba", "carsambad3", IniRead($settingloc, "pazar", "pazard3", "1"))
				IniWrite($settingloc, "carsamba", "carsambad4", IniRead($settingloc, "pazar", "pazard4", "1"))
				IniWrite($settingloc, "carsamba", "carsambad5", IniRead($settingloc, "pazar", "pazard5", "1"))
				IniWrite($settingloc, "carsamba", "carsambad6", IniRead($settingloc, "pazar", "pazard6", "1"))
				IniWrite($settingloc, "carsamba", "carsambad7", IniRead($settingloc, "pazar", "pazard7", "1"))
				IniWrite($settingloc, "carsamba", "carsambad8", IniRead($settingloc, "pazar", "pazard8", "1"))
				IniWrite($settingloc, "carsamba", "carsambad9", IniRead($settingloc, "pazar", "pazard9", "1"))
				IniWrite($settingloc, "carsamba", "carsambad10", IniRead($settingloc, "pazar", "pazard10", "1"))
				IniWrite($settingloc, "carsamba", "carsambad11", IniRead($settingloc, "pazar", "pazard11", "1"))
				IniWrite($settingloc, "carsamba", "carsambad12", IniRead($settingloc, "pazar", "pazard12", "1"))
				IniWrite($settingloc, "carsamba", "carsambad13", IniRead($settingloc, "pazar", "pazard13", "1"))
				IniWrite($settingloc, "carsamba", "carsambad14", IniRead($settingloc, "pazar", "pazard14", "1"))
				IniWrite($settingloc, "carsamba", "carsambad15", IniRead($settingloc, "pazar", "pazard15", "1"))
				IniWrite($settingloc, "carsamba", "carsambad16", IniRead($settingloc, "pazar", "pazard16", "1"))

			ElseIf GUICtrlRead($pazarkopyalanacak) = "Perşembe" Then
				IniWrite($settingloc, "persembe", "saatd1", GUICtrlRead($pazarsaatd1))
				IniWrite($settingloc, "persembe", "saatd2", GUICtrlRead($pazarsaatd2))
				IniWrite($settingloc, "persembe", "saatd3", GUICtrlRead($pazarsaatd3))
				IniWrite($settingloc, "persembe", "saatd4", GUICtrlRead($pazarsaatd4))
				IniWrite($settingloc, "persembe", "saatd5", GUICtrlRead($pazarsaatd5))
				IniWrite($settingloc, "persembe", "saatd6", GUICtrlRead($pazarsaatd6))
				IniWrite($settingloc, "persembe", "saatd7", GUICtrlRead($pazarsaatd7))
				IniWrite($settingloc, "persembe", "saatd8", GUICtrlRead($pazarsaatd8))
				IniWrite($settingloc, "persembe", "saatd9", GUICtrlRead($pazarsaatd9))
				IniWrite($settingloc, "persembe", "saatd10", GUICtrlRead($pazarsaatd10))
				IniWrite($settingloc, "persembe", "saatd11", GUICtrlRead($pazarsaatd11))
				IniWrite($settingloc, "persembe", "saatd12", GUICtrlRead($pazarsaatd12))
				IniWrite($settingloc, "persembe", "saatd13", GUICtrlRead($pazarsaatd13))
				IniWrite($settingloc, "persembe", "saatd14", GUICtrlRead($pazarsaatd14))
				IniWrite($settingloc, "persembe", "saatd15", GUICtrlRead($pazarsaatd15))
				IniWrite($settingloc, "persembe", "saatd16", GUICtrlRead($pazarsaatd16))

				IniWrite($settingloc, "persembe", "dakikad1", GUICtrlRead($pazardakikad1))
				IniWrite($settingloc, "persembe", "dakikad2", GUICtrlRead($pazardakikad2))
				IniWrite($settingloc, "persembe", "dakikad3", GUICtrlRead($pazardakikad3))
				IniWrite($settingloc, "persembe", "dakikad4", GUICtrlRead($pazardakikad4))
				IniWrite($settingloc, "persembe", "dakikad5", GUICtrlRead($pazardakikad5))
				IniWrite($settingloc, "persembe", "dakikad6", GUICtrlRead($pazardakikad6))
				IniWrite($settingloc, "persembe", "dakikad7", GUICtrlRead($pazardakikad7))
				IniWrite($settingloc, "persembe", "dakikad8", GUICtrlRead($pazardakikad8))
				IniWrite($settingloc, "persembe", "dakikad9", GUICtrlRead($pazardakikad9))
				IniWrite($settingloc, "persembe", "dakikad10", GUICtrlRead($pazardakikad10))
				IniWrite($settingloc, "persembe", "dakikad11", GUICtrlRead($pazardakikad11))
				IniWrite($settingloc, "persembe", "dakikad12", GUICtrlRead($pazardakikad12))
				IniWrite($settingloc, "persembe", "dakikad13", GUICtrlRead($pazardakikad13))
				IniWrite($settingloc, "persembe", "dakikad14", GUICtrlRead($pazardakikad14))
				IniWrite($settingloc, "persembe", "dakikad15", GUICtrlRead($pazardakikad15))
				IniWrite($settingloc, "persembe", "dakikad16", GUICtrlRead($pazardakikad16))

				IniWrite($settingloc, "persembe", "muzikd1", GUICtrlRead($pazarmuzikd1))
				IniWrite($settingloc, "persembe", "muzikd2", GUICtrlRead($pazarmuzikd2))
				IniWrite($settingloc, "persembe", "muzikd3", GUICtrlRead($pazarmuzikd3))
				IniWrite($settingloc, "persembe", "muzikd4", GUICtrlRead($pazarmuzikd4))
				IniWrite($settingloc, "persembe", "muzikd5", GUICtrlRead($pazarmuzikd5))
				IniWrite($settingloc, "persembe", "muzikd6", GUICtrlRead($pazarmuzikd6))
				IniWrite($settingloc, "persembe", "muzikd7", GUICtrlRead($pazarmuzikd7))
				IniWrite($settingloc, "persembe", "muzikd8", GUICtrlRead($pazarmuzikd8))
				IniWrite($settingloc, "persembe", "muzikd9", GUICtrlRead($pazarmuzikd9))
				IniWrite($settingloc, "persembe", "muzikd10", GUICtrlRead($pazarmuzikd10))
				IniWrite($settingloc, "persembe", "muzikd11", GUICtrlRead($pazarmuzikd11))
				IniWrite($settingloc, "persembe", "muzikd12", GUICtrlRead($pazarmuzikd12))
				IniWrite($settingloc, "persembe", "muzikd13", GUICtrlRead($pazarmuzikd13))
				IniWrite($settingloc, "persembe", "muzikd14", GUICtrlRead($pazarmuzikd14))
				IniWrite($settingloc, "persembe", "muzikd15", GUICtrlRead($pazarmuzikd15))
				IniWrite($settingloc, "persembe", "muzikd16", GUICtrlRead($pazarmuzikd16))

				IniWrite($settingloc, "persembe", "persembed1", IniRead($settingloc, "pazar", "pazard1", "1"))
				IniWrite($settingloc, "persembe", "persembed2", IniRead($settingloc, "pazar", "pazard2", "1"))
				IniWrite($settingloc, "persembe", "persembed3", IniRead($settingloc, "pazar", "pazard3", "1"))
				IniWrite($settingloc, "persembe", "persembed4", IniRead($settingloc, "pazar", "pazard4", "1"))
				IniWrite($settingloc, "persembe", "persembed5", IniRead($settingloc, "pazar", "pazard5", "1"))
				IniWrite($settingloc, "persembe", "persembed6", IniRead($settingloc, "pazar", "pazard6", "1"))
				IniWrite($settingloc, "persembe", "persembed7", IniRead($settingloc, "pazar", "pazard7", "1"))
				IniWrite($settingloc, "persembe", "persembed8", IniRead($settingloc, "pazar", "pazard8", "1"))
				IniWrite($settingloc, "persembe", "persembed9", IniRead($settingloc, "pazar", "pazard9", "1"))
				IniWrite($settingloc, "persembe", "persembed10", IniRead($settingloc, "pazar", "pazard10", "1"))
				IniWrite($settingloc, "persembe", "persembed11", IniRead($settingloc, "pazar", "pazard11", "1"))
				IniWrite($settingloc, "persembe", "persembed12", IniRead($settingloc, "pazar", "pazard12", "1"))
				IniWrite($settingloc, "persembe", "persembed13", IniRead($settingloc, "pazar", "pazard13", "1"))
				IniWrite($settingloc, "persembe", "persembed14", IniRead($settingloc, "pazar", "pazard14", "1"))
				IniWrite($settingloc, "persembe", "persembed15", IniRead($settingloc, "pazar", "pazard15", "1"))
				IniWrite($settingloc, "persembe", "persembed16", IniRead($settingloc, "pazar", "pazard16", "1"))

			ElseIf GUICtrlRead($pazarkopyalanacak) = "Cuma" Then
				IniWrite($settingloc, "cuma", "saatd1", GUICtrlRead($pazarsaatd1))
				IniWrite($settingloc, "cuma", "saatd2", GUICtrlRead($pazarsaatd2))
				IniWrite($settingloc, "cuma", "saatd3", GUICtrlRead($pazarsaatd3))
				IniWrite($settingloc, "cuma", "saatd4", GUICtrlRead($pazarsaatd4))
				IniWrite($settingloc, "cuma", "saatd5", GUICtrlRead($pazarsaatd5))
				IniWrite($settingloc, "cuma", "saatd6", GUICtrlRead($pazarsaatd6))
				IniWrite($settingloc, "cuma", "saatd7", GUICtrlRead($pazarsaatd7))
				IniWrite($settingloc, "cuma", "saatd8", GUICtrlRead($pazarsaatd8))
				IniWrite($settingloc, "cuma", "saatd9", GUICtrlRead($pazarsaatd9))
				IniWrite($settingloc, "cuma", "saatd10", GUICtrlRead($pazarsaatd10))
				IniWrite($settingloc, "cuma", "saatd11", GUICtrlRead($pazarsaatd11))
				IniWrite($settingloc, "cuma", "saatd12", GUICtrlRead($pazarsaatd12))
				IniWrite($settingloc, "cuma", "saatd13", GUICtrlRead($pazarsaatd13))
				IniWrite($settingloc, "cuma", "saatd14", GUICtrlRead($pazarsaatd14))
				IniWrite($settingloc, "cuma", "saatd15", GUICtrlRead($pazarsaatd15))
				IniWrite($settingloc, "cuma", "saatd16", GUICtrlRead($pazarsaatd16))

				IniWrite($settingloc, "cuma", "dakikad1", GUICtrlRead($pazardakikad1))
				IniWrite($settingloc, "cuma", "dakikad2", GUICtrlRead($pazardakikad2))
				IniWrite($settingloc, "cuma", "dakikad3", GUICtrlRead($pazardakikad3))
				IniWrite($settingloc, "cuma", "dakikad4", GUICtrlRead($pazardakikad4))
				IniWrite($settingloc, "cuma", "dakikad5", GUICtrlRead($pazardakikad5))
				IniWrite($settingloc, "cuma", "dakikad6", GUICtrlRead($pazardakikad6))
				IniWrite($settingloc, "cuma", "dakikad7", GUICtrlRead($pazardakikad7))
				IniWrite($settingloc, "cuma", "dakikad8", GUICtrlRead($pazardakikad8))
				IniWrite($settingloc, "cuma", "dakikad9", GUICtrlRead($pazardakikad9))
				IniWrite($settingloc, "cuma", "dakikad10", GUICtrlRead($pazardakikad10))
				IniWrite($settingloc, "cuma", "dakikad11", GUICtrlRead($pazardakikad11))
				IniWrite($settingloc, "cuma", "dakikad12", GUICtrlRead($pazardakikad12))
				IniWrite($settingloc, "cuma", "dakikad13", GUICtrlRead($pazardakikad13))
				IniWrite($settingloc, "cuma", "dakikad14", GUICtrlRead($pazardakikad14))
				IniWrite($settingloc, "cuma", "dakikad15", GUICtrlRead($pazardakikad15))
				IniWrite($settingloc, "cuma", "dakikad16", GUICtrlRead($pazardakikad16))

				IniWrite($settingloc, "cuma", "muzikd1", GUICtrlRead($pazarmuzikd1))
				IniWrite($settingloc, "cuma", "muzikd2", GUICtrlRead($pazarmuzikd2))
				IniWrite($settingloc, "cuma", "muzikd3", GUICtrlRead($pazarmuzikd3))
				IniWrite($settingloc, "cuma", "muzikd4", GUICtrlRead($pazarmuzikd4))
				IniWrite($settingloc, "cuma", "muzikd5", GUICtrlRead($pazarmuzikd5))
				IniWrite($settingloc, "cuma", "muzikd6", GUICtrlRead($pazarmuzikd6))
				IniWrite($settingloc, "cuma", "muzikd7", GUICtrlRead($pazarmuzikd7))
				IniWrite($settingloc, "cuma", "muzikd8", GUICtrlRead($pazarmuzikd8))
				IniWrite($settingloc, "cuma", "muzikd9", GUICtrlRead($pazarmuzikd9))
				IniWrite($settingloc, "cuma", "muzikd10", GUICtrlRead($pazarmuzikd10))
				IniWrite($settingloc, "cuma", "muzikd11", GUICtrlRead($pazarmuzikd11))
				IniWrite($settingloc, "cuma", "muzikd12", GUICtrlRead($pazarmuzikd12))
				IniWrite($settingloc, "cuma", "muzikd13", GUICtrlRead($pazarmuzikd13))
				IniWrite($settingloc, "cuma", "muzikd14", GUICtrlRead($pazarmuzikd14))
				IniWrite($settingloc, "cuma", "muzikd15", GUICtrlRead($pazarmuzikd15))
				IniWrite($settingloc, "cuma", "muzikd16", GUICtrlRead($pazarmuzikd16))

				IniWrite($settingloc, "cuma", "cumad1", IniRead($settingloc, "pazar", "pazard1", "1"))
				IniWrite($settingloc, "cuma", "cumad2", IniRead($settingloc, "pazar", "pazard2", "1"))
				IniWrite($settingloc, "cuma", "cumad3", IniRead($settingloc, "pazar", "pazard3", "1"))
				IniWrite($settingloc, "cuma", "cumad4", IniRead($settingloc, "pazar", "pazard4", "1"))
				IniWrite($settingloc, "cuma", "cumad5", IniRead($settingloc, "pazar", "pazard5", "1"))
				IniWrite($settingloc, "cuma", "cumad6", IniRead($settingloc, "pazar", "pazard6", "1"))
				IniWrite($settingloc, "cuma", "cumad7", IniRead($settingloc, "pazar", "pazard7", "1"))
				IniWrite($settingloc, "cuma", "cumad8", IniRead($settingloc, "pazar", "pazard8", "1"))
				IniWrite($settingloc, "cuma", "cumad9", IniRead($settingloc, "pazar", "pazard9", "1"))
				IniWrite($settingloc, "cuma", "cumad10", IniRead($settingloc, "pazar", "pazard10", "1"))
				IniWrite($settingloc, "cuma", "cumad11", IniRead($settingloc, "pazar", "pazard11", "1"))
				IniWrite($settingloc, "cuma", "cumad12", IniRead($settingloc, "pazar", "pazard12", "1"))
				IniWrite($settingloc, "cuma", "cumad13", IniRead($settingloc, "pazar", "pazard13", "1"))
				IniWrite($settingloc, "cuma", "cumad14", IniRead($settingloc, "pazar", "pazard14", "1"))
				IniWrite($settingloc, "cuma", "cumad15", IniRead($settingloc, "pazar", "pazard15", "1"))
				IniWrite($settingloc, "cuma", "cumad16", IniRead($settingloc, "pazar", "pazard16", "1"))

			ElseIf GUICtrlRead($pazarkopyalanacak) = "C.Tesi" Then
				IniWrite($settingloc, "ctesi", "saatd1", GUICtrlRead($pazarsaatd1))
				IniWrite($settingloc, "ctesi", "saatd2", GUICtrlRead($pazarsaatd2))
				IniWrite($settingloc, "ctesi", "saatd3", GUICtrlRead($pazarsaatd3))
				IniWrite($settingloc, "ctesi", "saatd4", GUICtrlRead($pazarsaatd4))
				IniWrite($settingloc, "ctesi", "saatd5", GUICtrlRead($pazarsaatd5))
				IniWrite($settingloc, "ctesi", "saatd6", GUICtrlRead($pazarsaatd6))
				IniWrite($settingloc, "ctesi", "saatd7", GUICtrlRead($pazarsaatd7))
				IniWrite($settingloc, "ctesi", "saatd8", GUICtrlRead($pazarsaatd8))
				IniWrite($settingloc, "ctesi", "saatd9", GUICtrlRead($pazarsaatd9))
				IniWrite($settingloc, "ctesi", "saatd10", GUICtrlRead($pazarsaatd10))
				IniWrite($settingloc, "ctesi", "saatd11", GUICtrlRead($pazarsaatd11))
				IniWrite($settingloc, "ctesi", "saatd12", GUICtrlRead($pazarsaatd12))
				IniWrite($settingloc, "ctesi", "saatd13", GUICtrlRead($pazarsaatd13))
				IniWrite($settingloc, "ctesi", "saatd14", GUICtrlRead($pazarsaatd14))
				IniWrite($settingloc, "ctesi", "saatd15", GUICtrlRead($pazarsaatd15))
				IniWrite($settingloc, "ctesi", "saatd16", GUICtrlRead($pazarsaatd16))

				IniWrite($settingloc, "ctesi", "dakikad1", GUICtrlRead($pazardakikad1))
				IniWrite($settingloc, "ctesi", "dakikad2", GUICtrlRead($pazardakikad2))
				IniWrite($settingloc, "ctesi", "dakikad3", GUICtrlRead($pazardakikad3))
				IniWrite($settingloc, "ctesi", "dakikad4", GUICtrlRead($pazardakikad4))
				IniWrite($settingloc, "ctesi", "dakikad5", GUICtrlRead($pazardakikad5))
				IniWrite($settingloc, "ctesi", "dakikad6", GUICtrlRead($pazardakikad6))
				IniWrite($settingloc, "ctesi", "dakikad7", GUICtrlRead($pazardakikad7))
				IniWrite($settingloc, "ctesi", "dakikad8", GUICtrlRead($pazardakikad8))
				IniWrite($settingloc, "ctesi", "dakikad9", GUICtrlRead($pazardakikad9))
				IniWrite($settingloc, "ctesi", "dakikad10", GUICtrlRead($pazardakikad10))
				IniWrite($settingloc, "ctesi", "dakikad11", GUICtrlRead($pazardakikad11))
				IniWrite($settingloc, "ctesi", "dakikad12", GUICtrlRead($pazardakikad12))
				IniWrite($settingloc, "ctesi", "dakikad13", GUICtrlRead($pazardakikad13))
				IniWrite($settingloc, "ctesi", "dakikad14", GUICtrlRead($pazardakikad14))
				IniWrite($settingloc, "ctesi", "dakikad15", GUICtrlRead($pazardakikad15))
				IniWrite($settingloc, "ctesi", "dakikad16", GUICtrlRead($pazardakikad16))

				IniWrite($settingloc, "ctesi", "muzikd1", GUICtrlRead($pazarmuzikd1))
				IniWrite($settingloc, "ctesi", "muzikd2", GUICtrlRead($pazarmuzikd2))
				IniWrite($settingloc, "ctesi", "muzikd3", GUICtrlRead($pazarmuzikd3))
				IniWrite($settingloc, "ctesi", "muzikd4", GUICtrlRead($pazarmuzikd4))
				IniWrite($settingloc, "ctesi", "muzikd5", GUICtrlRead($pazarmuzikd5))
				IniWrite($settingloc, "ctesi", "muzikd6", GUICtrlRead($pazarmuzikd6))
				IniWrite($settingloc, "ctesi", "muzikd7", GUICtrlRead($pazarmuzikd7))
				IniWrite($settingloc, "ctesi", "muzikd8", GUICtrlRead($pazarmuzikd8))
				IniWrite($settingloc, "ctesi", "muzikd9", GUICtrlRead($pazarmuzikd9))
				IniWrite($settingloc, "ctesi", "muzikd10", GUICtrlRead($pazarmuzikd10))
				IniWrite($settingloc, "ctesi", "muzikd11", GUICtrlRead($pazarmuzikd11))
				IniWrite($settingloc, "ctesi", "muzikd12", GUICtrlRead($pazarmuzikd12))
				IniWrite($settingloc, "ctesi", "muzikd13", GUICtrlRead($pazarmuzikd13))
				IniWrite($settingloc, "ctesi", "muzikd14", GUICtrlRead($pazarmuzikd14))
				IniWrite($settingloc, "ctesi", "muzikd15", GUICtrlRead($pazarmuzikd15))
				IniWrite($settingloc, "ctesi", "muzikd16", GUICtrlRead($pazarmuzikd16))

				IniWrite($settingloc, "ctesi", "ctesid1", IniRead($settingloc, "pazar", "pazard1", "1"))
				IniWrite($settingloc, "ctesi", "ctesid2", IniRead($settingloc, "pazar", "pazard2", "1"))
				IniWrite($settingloc, "ctesi", "ctesid3", IniRead($settingloc, "pazar", "pazard3", "1"))
				IniWrite($settingloc, "ctesi", "ctesid4", IniRead($settingloc, "pazar", "pazard4", "1"))
				IniWrite($settingloc, "ctesi", "ctesid5", IniRead($settingloc, "pazar", "pazard5", "1"))
				IniWrite($settingloc, "ctesi", "ctesid6", IniRead($settingloc, "pazar", "pazard6", "1"))
				IniWrite($settingloc, "ctesi", "ctesid7", IniRead($settingloc, "pazar", "pazard7", "1"))
				IniWrite($settingloc, "ctesi", "ctesid8", IniRead($settingloc, "pazar", "pazard8", "1"))
				IniWrite($settingloc, "ctesi", "ctesid9", IniRead($settingloc, "pazar", "pazard9", "1"))
				IniWrite($settingloc, "ctesi", "ctesid10", IniRead($settingloc, "pazar", "pazard10", "1"))
				IniWrite($settingloc, "ctesi", "ctesid11", IniRead($settingloc, "pazar", "pazard11", "1"))
				IniWrite($settingloc, "ctesi", "ctesid12", IniRead($settingloc, "pazar", "pazard12", "1"))
				IniWrite($settingloc, "ctesi", "ctesid13", IniRead($settingloc, "pazar", "pazard13", "1"))
				IniWrite($settingloc, "ctesi", "ctesid14", IniRead($settingloc, "pazar", "pazard14", "1"))
				IniWrite($settingloc, "ctesi", "ctesid15", IniRead($settingloc, "pazar", "pazard15", "1"))
				IniWrite($settingloc, "ctesi", "ctesid16", IniRead($settingloc, "pazar", "pazard16", "1"))

			ElseIf GUICtrlRead($pazarkopyalanacak) = "Pazar" Then
				IniWrite($settingloc, "pazar", "saatd1", GUICtrlRead($pazarsaatd1))
				IniWrite($settingloc, "pazar", "saatd2", GUICtrlRead($pazarsaatd2))
				IniWrite($settingloc, "pazar", "saatd3", GUICtrlRead($pazarsaatd3))
				IniWrite($settingloc, "pazar", "saatd4", GUICtrlRead($pazarsaatd4))
				IniWrite($settingloc, "pazar", "saatd5", GUICtrlRead($pazarsaatd5))
				IniWrite($settingloc, "pazar", "saatd6", GUICtrlRead($pazarsaatd6))
				IniWrite($settingloc, "pazar", "saatd7", GUICtrlRead($pazarsaatd7))
				IniWrite($settingloc, "pazar", "saatd8", GUICtrlRead($pazarsaatd8))
				IniWrite($settingloc, "pazar", "saatd9", GUICtrlRead($pazarsaatd9))
				IniWrite($settingloc, "pazar", "saatd10", GUICtrlRead($pazarsaatd10))
				IniWrite($settingloc, "pazar", "saatd11", GUICtrlRead($pazarsaatd11))
				IniWrite($settingloc, "pazar", "saatd12", GUICtrlRead($pazarsaatd12))
				IniWrite($settingloc, "pazar", "saatd13", GUICtrlRead($pazarsaatd13))
				IniWrite($settingloc, "pazar", "saatd14", GUICtrlRead($pazarsaatd14))
				IniWrite($settingloc, "pazar", "saatd15", GUICtrlRead($pazarsaatd15))
				IniWrite($settingloc, "pazar", "saatd16", GUICtrlRead($pazarsaatd16))

				IniWrite($settingloc, "pazar", "dakikad1", GUICtrlRead($pazardakikad1))
				IniWrite($settingloc, "pazar", "dakikad2", GUICtrlRead($pazardakikad2))
				IniWrite($settingloc, "pazar", "dakikad3", GUICtrlRead($pazardakikad3))
				IniWrite($settingloc, "pazar", "dakikad4", GUICtrlRead($pazardakikad4))
				IniWrite($settingloc, "pazar", "dakikad5", GUICtrlRead($pazardakikad5))
				IniWrite($settingloc, "pazar", "dakikad6", GUICtrlRead($pazardakikad6))
				IniWrite($settingloc, "pazar", "dakikad7", GUICtrlRead($pazardakikad7))
				IniWrite($settingloc, "pazar", "dakikad8", GUICtrlRead($pazardakikad8))
				IniWrite($settingloc, "pazar", "dakikad9", GUICtrlRead($pazardakikad9))
				IniWrite($settingloc, "pazar", "dakikad10", GUICtrlRead($pazardakikad10))
				IniWrite($settingloc, "pazar", "dakikad11", GUICtrlRead($pazardakikad11))
				IniWrite($settingloc, "pazar", "dakikad12", GUICtrlRead($pazardakikad12))
				IniWrite($settingloc, "pazar", "dakikad13", GUICtrlRead($pazardakikad13))
				IniWrite($settingloc, "pazar", "dakikad14", GUICtrlRead($pazardakikad14))
				IniWrite($settingloc, "pazar", "dakikad15", GUICtrlRead($pazardakikad15))
				IniWrite($settingloc, "pazar", "dakikad16", GUICtrlRead($pazardakikad16))

				IniWrite($settingloc, "pazar", "muzikd1", GUICtrlRead($pazarmuzikd1))
				IniWrite($settingloc, "pazar", "muzikd2", GUICtrlRead($pazarmuzikd2))
				IniWrite($settingloc, "pazar", "muzikd3", GUICtrlRead($pazarmuzikd3))
				IniWrite($settingloc, "pazar", "muzikd4", GUICtrlRead($pazarmuzikd4))
				IniWrite($settingloc, "pazar", "muzikd5", GUICtrlRead($pazarmuzikd5))
				IniWrite($settingloc, "pazar", "muzikd6", GUICtrlRead($pazarmuzikd6))
				IniWrite($settingloc, "pazar", "muzikd7", GUICtrlRead($pazarmuzikd7))
				IniWrite($settingloc, "pazar", "muzikd8", GUICtrlRead($pazarmuzikd8))
				IniWrite($settingloc, "pazar", "muzikd9", GUICtrlRead($pazarmuzikd9))
				IniWrite($settingloc, "pazar", "muzikd10", GUICtrlRead($pazarmuzikd10))
				IniWrite($settingloc, "pazar", "muzikd11", GUICtrlRead($pazarmuzikd11))
				IniWrite($settingloc, "pazar", "muzikd12", GUICtrlRead($pazarmuzikd12))
				IniWrite($settingloc, "pazar", "muzikd13", GUICtrlRead($pazarmuzikd13))
				IniWrite($settingloc, "pazar", "muzikd14", GUICtrlRead($pazarmuzikd14))
				IniWrite($settingloc, "pazar", "muzikd15", GUICtrlRead($pazarmuzikd15))
				IniWrite($settingloc, "pazar", "muzikd16", GUICtrlRead($pazarmuzikd16))

				IniWrite($settingloc, "pazar", "pazard1", IniRead($settingloc, "pazar", "pazard1", "1"))
				IniWrite($settingloc, "pazar", "pazard2", IniRead($settingloc, "pazar", "pazard2", "1"))
				IniWrite($settingloc, "pazar", "pazard3", IniRead($settingloc, "pazar", "pazard3", "1"))
				IniWrite($settingloc, "pazar", "pazard4", IniRead($settingloc, "pazar", "pazard4", "1"))
				IniWrite($settingloc, "pazar", "pazard5", IniRead($settingloc, "pazar", "pazard5", "1"))
				IniWrite($settingloc, "pazar", "pazard6", IniRead($settingloc, "pazar", "pazard6", "1"))
				IniWrite($settingloc, "pazar", "pazard7", IniRead($settingloc, "pazar", "pazard7", "1"))
				IniWrite($settingloc, "pazar", "pazard8", IniRead($settingloc, "pazar", "pazard8", "1"))
				IniWrite($settingloc, "pazar", "pazard9", IniRead($settingloc, "pazar", "pazard9", "1"))
				IniWrite($settingloc, "pazar", "pazard10", IniRead($settingloc, "pazar", "pazard10", "1"))
				IniWrite($settingloc, "pazar", "pazard11", IniRead($settingloc, "pazar", "pazard11", "1"))
				IniWrite($settingloc, "pazar", "pazard12", IniRead($settingloc, "pazar", "pazard12", "1"))
				IniWrite($settingloc, "pazar", "pazard13", IniRead($settingloc, "pazar", "pazard13", "1"))
				IniWrite($settingloc, "pazar", "pazard14", IniRead($settingloc, "pazar", "pazard14", "1"))
				IniWrite($settingloc, "pazar", "pazard15", IniRead($settingloc, "pazar", "pazard15", "1"))
				IniWrite($settingloc, "pazar", "pazard16", IniRead($settingloc, "pazar", "pazard16", "1"))
			EndIf

	EndSwitch

	If IniRead($settingloc, "ptesi", "ptesid1", "1") = 1 Then
		GUICtrlSetState($ptesid1, $gui_checked)
	Else
		GUICtrlSetState($ptesid1, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ptesi", "ptesid2", "1") = 1 Then
		GUICtrlSetState($ptesid2, $gui_checked)
	Else
		GUICtrlSetState($ptesid2, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ptesi", "ptesid3", "1") = 1 Then
		GUICtrlSetState($ptesid3, $gui_checked)
	Else
		GUICtrlSetState($ptesid3, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ptesi", "ptesid4", "1") = 1 Then
		GUICtrlSetState($ptesid4, $gui_checked)
	Else
		GUICtrlSetState($ptesid4, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ptesi", "ptesid5", "1") = 1 Then
		GUICtrlSetState($ptesid5, $gui_checked)
	Else
		GUICtrlSetState($ptesid5, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ptesi", "ptesid6", "1") = 1 Then
		GUICtrlSetState($ptesid6, $gui_checked)
	Else
		GUICtrlSetState($ptesid6, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ptesi", "ptesid7", "1") = 1 Then
		GUICtrlSetState($ptesid7, $gui_checked)
	Else
		GUICtrlSetState($ptesid7, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ptesi", "ptesid8", "1") = 1 Then
		GUICtrlSetState($ptesid8, $gui_checked)
	Else
		GUICtrlSetState($ptesid8, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ptesi", "ptesid9", "1") = 1 Then
		GUICtrlSetState($ptesid9, $gui_checked)
	Else
		GUICtrlSetState($ptesid9, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ptesi", "ptesid10", "1") = 1 Then
		GUICtrlSetState($ptesid10, $gui_checked)
	Else
		GUICtrlSetState($ptesid10, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ptesi", "ptesid11", "1") = 1 Then
		GUICtrlSetState($ptesid11, $gui_checked)
	Else
		GUICtrlSetState($ptesid11, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ptesi", "ptesid12", "1") = 1 Then
		GUICtrlSetState($ptesid12, $gui_checked)
	Else
		GUICtrlSetState($ptesid12, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ptesi", "ptesid13", "1") = 1 Then
		GUICtrlSetState($ptesid13, $gui_checked)
	Else
		GUICtrlSetState($ptesid13, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ptesi", "ptesid14", "1") = 1 Then
		GUICtrlSetState($ptesid14, $gui_checked)
	Else
		GUICtrlSetState($ptesid14, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ptesi", "ptesid15", "1") = 1 Then
		GUICtrlSetState($ptesid15, $gui_checked)
	Else
		GUICtrlSetState($ptesid15, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ptesi", "ptesid16", "1") = 1 Then
		GUICtrlSetState($ptesid16, $gui_checked)
	Else
		GUICtrlSetState($ptesid16, $gui_unchecked)
	EndIf

	If (GUICtrlRead($ptesisaatd1) = @HOUR And GUICtrlRead($ptesidakikad1) = @MIN And GUICtrlRead($ptesid1) = 1 And @WDAY = "2") Then
		ptesid1()
	ElseIf (GUICtrlRead($ptesisaatd2) = @HOUR And GUICtrlRead($ptesidakikad2) = @MIN And GUICtrlRead($ptesid2) = 1 And @WDAY = "2") Then
		ptesid2()
	ElseIf (GUICtrlRead($ptesisaatd3) = @HOUR And GUICtrlRead($ptesidakikad3) = @MIN And GUICtrlRead($ptesid3) = 1 And @WDAY = "2") Then
		ptesid3()
	ElseIf (GUICtrlRead($ptesisaatd4) = @HOUR And GUICtrlRead($ptesidakikad4) = @MIN And GUICtrlRead($ptesid4) = 1 And @WDAY = "2") Then
		ptesid4()
	ElseIf (GUICtrlRead($ptesisaatd5) = @HOUR And GUICtrlRead($ptesidakikad5) = @MIN And GUICtrlRead($ptesid5) = 1 And @WDAY = "2") Then
		ptesid5()
	ElseIf (GUICtrlRead($ptesisaatd6) = @HOUR And GUICtrlRead($ptesidakikad6) = @MIN And GUICtrlRead($ptesid6) = 1 And @WDAY = "2") Then
		ptesid6()
	ElseIf (GUICtrlRead($ptesisaatd7) = @HOUR And GUICtrlRead($ptesidakikad7) = @MIN And GUICtrlRead($ptesid7) = 1 And @WDAY = "2") Then
		ptesid7()
	ElseIf (GUICtrlRead($ptesisaatd8) = @HOUR And GUICtrlRead($ptesidakikad8) = @MIN And GUICtrlRead($ptesid8) = 1 And @WDAY = "2") Then
		ptesid8()
	ElseIf (GUICtrlRead($ptesisaatd9) = @HOUR And GUICtrlRead($ptesidakikad9) = @MIN And GUICtrlRead($ptesid9) = 1 And @WDAY = "2") Then
		ptesid9()
	ElseIf (GUICtrlRead($ptesisaatd10) = @HOUR And GUICtrlRead($ptesidakikad10) = @MIN And GUICtrlRead($ptesid10) = 1 And @WDAY = "2") Then
		ptesid10()
	ElseIf (GUICtrlRead($ptesisaatd11) = @HOUR And GUICtrlRead($ptesidakikad11) = @MIN And GUICtrlRead($ptesid11) = 1 And @WDAY = "2") Then
		ptesid11()
	ElseIf (GUICtrlRead($ptesisaatd12) = @HOUR And GUICtrlRead($ptesidakikad12) = @MIN And GUICtrlRead($ptesid12) = 1 And @WDAY = "2") Then
		ptesid12()
	ElseIf (GUICtrlRead($ptesisaatd13) = @HOUR And GUICtrlRead($ptesidakikad13) = @MIN And GUICtrlRead($ptesid13) = 1 And @WDAY = "2") Then
		ptesid13()
	ElseIf (GUICtrlRead($ptesisaatd14) = @HOUR And GUICtrlRead($ptesidakikad14) = @MIN And GUICtrlRead($ptesid14) = 1 And @WDAY = "2") Then
		ptesid14()
	ElseIf (GUICtrlRead($ptesisaatd15) = @HOUR And GUICtrlRead($ptesidakikad15) = @MIN And GUICtrlRead($ptesid15) = 1 And @WDAY = "2") Then
		ptesid15()
	ElseIf (GUICtrlRead($ptesisaatd16) = @HOUR And GUICtrlRead($ptesidakikad16) = @MIN And GUICtrlRead($ptesid16) = 1 And @WDAY = "2") Then
		ptesid16()
	EndIf

	If IniRead($settingloc, "sali", "salid1", "1") = 1 Then
		GUICtrlSetState($salid1, $gui_checked)
	Else
		GUICtrlSetState($salid1, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "sali", "salid2", "1") = 1 Then
		GUICtrlSetState($salid2, $gui_checked)
	Else
		GUICtrlSetState($salid2, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "sali", "salid3", "1") = 1 Then
		GUICtrlSetState($salid3, $gui_checked)
	Else
		GUICtrlSetState($salid3, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "sali", "salid4", "1") = 1 Then
		GUICtrlSetState($salid4, $gui_checked)
	Else
		GUICtrlSetState($salid4, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "sali", "salid5", "1") = 1 Then
		GUICtrlSetState($salid5, $gui_checked)
	Else
		GUICtrlSetState($salid5, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "sali", "salid6", "1") = 1 Then
		GUICtrlSetState($salid6, $gui_checked)
	Else
		GUICtrlSetState($salid6, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "sali", "salid7", "1") = 1 Then
		GUICtrlSetState($salid7, $gui_checked)
	Else
		GUICtrlSetState($salid7, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "sali", "salid8", "1") = 1 Then
		GUICtrlSetState($salid8, $gui_checked)
	Else
		GUICtrlSetState($salid8, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "sali", "salid9", "1") = 1 Then
		GUICtrlSetState($salid9, $gui_checked)
	Else
		GUICtrlSetState($salid9, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "sali", "salid10", "1") = 1 Then
		GUICtrlSetState($salid10, $gui_checked)
	Else
		GUICtrlSetState($salid10, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "sali", "salid11", "1") = 1 Then
		GUICtrlSetState($salid11, $gui_checked)
	Else
		GUICtrlSetState($salid11, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "sali", "salid12", "1") = 1 Then
		GUICtrlSetState($salid12, $gui_checked)
	Else
		GUICtrlSetState($salid12, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "sali", "salid13", "1") = 1 Then
		GUICtrlSetState($salid13, $gui_checked)
	Else
		GUICtrlSetState($salid13, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "sali", "salid14", "1") = 1 Then
		GUICtrlSetState($salid14, $gui_checked)
	Else
		GUICtrlSetState($salid14, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "sali", "salid15", "1") = 1 Then
		GUICtrlSetState($salid15, $gui_checked)
	Else
		GUICtrlSetState($salid15, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "sali", "salid16", "1") = 1 Then
		GUICtrlSetState($salid16, $gui_checked)
	Else
		GUICtrlSetState($salid16, $gui_unchecked)
	EndIf

	If (GUICtrlRead($salisaatd1) = @HOUR And GUICtrlRead($salidakikad1) = @MIN And GUICtrlRead($salid1) = 1 And @WDAY = "3") Then
		salid1()
	ElseIf (GUICtrlRead($salisaatd2) = @HOUR And GUICtrlRead($salidakikad2) = @MIN And GUICtrlRead($salid2) = 1 And @WDAY = "3") Then
		salid2()
	ElseIf (GUICtrlRead($salisaatd3) = @HOUR And GUICtrlRead($salidakikad3) = @MIN And GUICtrlRead($salid3) = 1 And @WDAY = "3") Then
		salid3()
	ElseIf (GUICtrlRead($salisaatd4) = @HOUR And GUICtrlRead($salidakikad4) = @MIN And GUICtrlRead($salid4) = 1 And @WDAY = "3") Then
		salid4()
	ElseIf (GUICtrlRead($salisaatd5) = @HOUR And GUICtrlRead($salidakikad5) = @MIN And GUICtrlRead($salid5) = 1 And @WDAY = "3") Then
		salid5()
	ElseIf (GUICtrlRead($salisaatd6) = @HOUR And GUICtrlRead($salidakikad6) = @MIN And GUICtrlRead($salid6) = 1 And @WDAY = "3") Then
		salid6()
	ElseIf (GUICtrlRead($salisaatd7) = @HOUR And GUICtrlRead($salidakikad7) = @MIN And GUICtrlRead($salid7) = 1 And @WDAY = "3") Then
		salid7()
	ElseIf (GUICtrlRead($salisaatd8) = @HOUR And GUICtrlRead($salidakikad8) = @MIN And GUICtrlRead($salid8) = 1 And @WDAY = "3") Then
		salid8()
	ElseIf (GUICtrlRead($salisaatd9) = @HOUR And GUICtrlRead($salidakikad9) = @MIN And GUICtrlRead($salid9) = 1 And @WDAY = "3") Then
		salid9()
	ElseIf (GUICtrlRead($salisaatd10) = @HOUR And GUICtrlRead($salidakikad10) = @MIN And GUICtrlRead($salid10) = 1 And @WDAY = "3") Then
		salid10()
	ElseIf (GUICtrlRead($salisaatd11) = @HOUR And GUICtrlRead($salidakikad11) = @MIN And GUICtrlRead($salid11) = 1 And @WDAY = "3") Then
		salid11()
	ElseIf (GUICtrlRead($salisaatd12) = @HOUR And GUICtrlRead($salidakikad12) = @MIN And GUICtrlRead($salid12) = 1 And @WDAY = "3") Then
		salid12()
	ElseIf (GUICtrlRead($salisaatd13) = @HOUR And GUICtrlRead($salidakikad13) = @MIN And GUICtrlRead($salid13) = 1 And @WDAY = "3") Then
		salid13()
	ElseIf (GUICtrlRead($salisaatd14) = @HOUR And GUICtrlRead($salidakikad14) = @MIN And GUICtrlRead($salid14) = 1 And @WDAY = "3") Then
		salid14()
	ElseIf (GUICtrlRead($salisaatd15) = @HOUR And GUICtrlRead($salidakikad15) = @MIN And GUICtrlRead($salid15) = 1 And @WDAY = "3") Then
		salid15()
	ElseIf (GUICtrlRead($salisaatd16) = @HOUR And GUICtrlRead($salidakikad16) = @MIN And GUICtrlRead($salid16) = 1 And @WDAY = "3") Then
		salid16()
	EndIf

	If IniRead($settingloc, "carsamba", "carsambad1", "1") = 1 Then
		GUICtrlSetState($carsambad1, $gui_checked)
	Else
		GUICtrlSetState($carsambad1, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "carsamba", "carsambad2", "1") = 1 Then
		GUICtrlSetState($carsambad2, $gui_checked)
	Else
		GUICtrlSetState($carsambad2, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "carsamba", "carsambad3", "1") = 1 Then
		GUICtrlSetState($carsambad3, $gui_checked)
	Else
		GUICtrlSetState($carsambad3, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "carsamba", "carsambad4", "1") = 1 Then
		GUICtrlSetState($carsambad4, $gui_checked)
	Else
		GUICtrlSetState($carsambad4, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "carsamba", "carsambad5", "1") = 1 Then
		GUICtrlSetState($carsambad5, $gui_checked)
	Else
		GUICtrlSetState($carsambad5, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "carsamba", "carsambad6", "1") = 1 Then
		GUICtrlSetState($carsambad6, $gui_checked)
	Else
		GUICtrlSetState($carsambad6, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "carsamba", "carsambad7", "1") = 1 Then
		GUICtrlSetState($carsambad7, $gui_checked)
	Else
		GUICtrlSetState($carsambad7, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "carsamba", "carsambad8", "1") = 1 Then
		GUICtrlSetState($carsambad8, $gui_checked)
	Else
		GUICtrlSetState($carsambad8, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "carsamba", "carsambad9", "1") = 1 Then
		GUICtrlSetState($carsambad9, $gui_checked)
	Else
		GUICtrlSetState($carsambad9, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "carsamba", "carsambad10", "1") = 1 Then
		GUICtrlSetState($carsambad10, $gui_checked)
	Else
		GUICtrlSetState($carsambad10, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "carsamba", "carsambad11", "1") = 1 Then
		GUICtrlSetState($carsambad11, $gui_checked)
	Else
		GUICtrlSetState($carsambad11, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "carsamba", "carsambad12", "1") = 1 Then
		GUICtrlSetState($carsambad12, $gui_checked)
	Else
		GUICtrlSetState($carsambad12, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "carsamba", "carsambad13", "1") = 1 Then
		GUICtrlSetState($carsambad13, $gui_checked)
	Else
		GUICtrlSetState($carsambad13, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "carsamba", "carsambad14", "1") = 1 Then
		GUICtrlSetState($carsambad14, $gui_checked)
	Else
		GUICtrlSetState($carsambad14, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "carsamba", "carsambad15", "1") = 1 Then
		GUICtrlSetState($carsambad15, $gui_checked)
	Else
		GUICtrlSetState($carsambad15, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "carsamba", "carsambad16", "1") = 1 Then
		GUICtrlSetState($carsambad16, $gui_checked)
	Else
		GUICtrlSetState($carsambad16, $gui_unchecked)
	EndIf

	If (GUICtrlRead($carsambasaatd1) = @HOUR And GUICtrlRead($carsambadakikad1) = @MIN And GUICtrlRead($carsambad1) = 1 And @WDAY = "4") Then
		carsambad1()
	ElseIf (GUICtrlRead($carsambasaatd2) = @HOUR And GUICtrlRead($carsambadakikad2) = @MIN And GUICtrlRead($carsambad2) = 1 And @WDAY = "4") Then
		carsambad2()
	ElseIf (GUICtrlRead($carsambasaatd3) = @HOUR And GUICtrlRead($carsambadakikad3) = @MIN And GUICtrlRead($carsambad3) = 1 And @WDAY = "4") Then
		carsambad3()
	ElseIf (GUICtrlRead($carsambasaatd4) = @HOUR And GUICtrlRead($carsambadakikad4) = @MIN And GUICtrlRead($carsambad4) = 1 And @WDAY = "4") Then
		carsambad4()
	ElseIf (GUICtrlRead($carsambasaatd5) = @HOUR And GUICtrlRead($carsambadakikad5) = @MIN And GUICtrlRead($carsambad5) = 1 And @WDAY = "4") Then
		carsambad5()
	ElseIf (GUICtrlRead($carsambasaatd6) = @HOUR And GUICtrlRead($carsambadakikad6) = @MIN And GUICtrlRead($carsambad6) = 1 And @WDAY = "4") Then
		carsambad6()
	ElseIf (GUICtrlRead($carsambasaatd7) = @HOUR And GUICtrlRead($carsambadakikad7) = @MIN And GUICtrlRead($carsambad7) = 1 And @WDAY = "4") Then
		carsambad7()
	ElseIf (GUICtrlRead($carsambasaatd8) = @HOUR And GUICtrlRead($carsambadakikad8) = @MIN And GUICtrlRead($carsambad8) = 1 And @WDAY = "4") Then
		carsambad8()
	ElseIf (GUICtrlRead($carsambasaatd9) = @HOUR And GUICtrlRead($carsambadakikad9) = @MIN And GUICtrlRead($carsambad9) = 1 And @WDAY = "4") Then
		carsambad9()
	ElseIf (GUICtrlRead($carsambasaatd10) = @HOUR And GUICtrlRead($carsambadakikad10) = @MIN And GUICtrlRead($carsambad10) = 1 And @WDAY = "4") Then
		carsambad10()
	ElseIf (GUICtrlRead($carsambasaatd11) = @HOUR And GUICtrlRead($carsambadakikad11) = @MIN And GUICtrlRead($carsambad11) = 1 And @WDAY = "4") Then
		carsambad11()
	ElseIf (GUICtrlRead($carsambasaatd12) = @HOUR And GUICtrlRead($carsambadakikad12) = @MIN And GUICtrlRead($carsambad12) = 1 And @WDAY = "4") Then
		carsambad12()
	ElseIf (GUICtrlRead($carsambasaatd13) = @HOUR And GUICtrlRead($carsambadakikad13) = @MIN And GUICtrlRead($carsambad13) = 1 And @WDAY = "4") Then
		carsambad13()
	ElseIf (GUICtrlRead($carsambasaatd14) = @HOUR And GUICtrlRead($carsambadakikad14) = @MIN And GUICtrlRead($carsambad14) = 1 And @WDAY = "4") Then
		carsambad14()
	ElseIf (GUICtrlRead($carsambasaatd15) = @HOUR And GUICtrlRead($carsambadakikad15) = @MIN And GUICtrlRead($carsambad15) = 1 And @WDAY = "4") Then
		carsambad15()
	ElseIf (GUICtrlRead($carsambasaatd16) = @HOUR And GUICtrlRead($carsambadakikad16) = @MIN And GUICtrlRead($carsambad16) = 1 And @WDAY = "4") Then
		carsambad16()
	EndIf

	If IniRead($settingloc, "persembe", "persembed1", "1") = 1 Then
		GUICtrlSetState($persembed1, $gui_checked)
	Else
		GUICtrlSetState($persembed1, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "persembe", "persembed2", "1") = 1 Then
		GUICtrlSetState($persembed2, $gui_checked)
	Else
		GUICtrlSetState($persembed2, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "persembe", "persembed3", "1") = 1 Then
		GUICtrlSetState($persembed3, $gui_checked)
	Else
		GUICtrlSetState($persembed3, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "persembe", "persembed4", "1") = 1 Then
		GUICtrlSetState($persembed4, $gui_checked)
	Else
		GUICtrlSetState($persembed4, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "persembe", "persembed5", "1") = 1 Then
		GUICtrlSetState($persembed5, $gui_checked)
	Else
		GUICtrlSetState($persembed5, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "persembe", "persembed6", "1") = 1 Then
		GUICtrlSetState($persembed6, $gui_checked)
	Else
		GUICtrlSetState($persembed6, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "persembe", "persembed7", "1") = 1 Then
		GUICtrlSetState($persembed7, $gui_checked)
	Else
		GUICtrlSetState($persembed7, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "persembe", "persembed8", "1") = 1 Then
		GUICtrlSetState($persembed8, $gui_checked)
	Else
		GUICtrlSetState($persembed8, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "persembe", "persembed9", "1") = 1 Then
		GUICtrlSetState($persembed9, $gui_checked)
	Else
		GUICtrlSetState($persembed9, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "persembe", "persembed10", "1") = 1 Then
		GUICtrlSetState($persembed10, $gui_checked)
	Else
		GUICtrlSetState($persembed10, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "persembe", "persembed11", "1") = 1 Then
		GUICtrlSetState($persembed11, $gui_checked)
	Else
		GUICtrlSetState($persembed11, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "persembe", "persembed12", "1") = 1 Then
		GUICtrlSetState($persembed12, $gui_checked)
	Else
		GUICtrlSetState($persembed12, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "persembe", "persembed13", "1") = 1 Then
		GUICtrlSetState($persembed13, $gui_checked)
	Else
		GUICtrlSetState($persembed13, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "persembe", "persembed14", "1") = 1 Then
		GUICtrlSetState($persembed14, $gui_checked)
	Else
		GUICtrlSetState($persembed14, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "persembe", "persembed15", "1") = 1 Then
		GUICtrlSetState($persembed15, $gui_checked)
	Else
		GUICtrlSetState($persembed15, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "persembe", "persembed16", "1") = 1 Then
		GUICtrlSetState($persembed16, $gui_checked)
	Else
		GUICtrlSetState($persembed16, $gui_unchecked)
	EndIf

	If (GUICtrlRead($persembesaatd1) = @HOUR And GUICtrlRead($persembedakikad1) = @MIN And GUICtrlRead($persembed1) = 1 And @WDAY = "5") Then
		persembed1()
	ElseIf (GUICtrlRead($persembesaatd2) = @HOUR And GUICtrlRead($persembedakikad2) = @MIN And GUICtrlRead($persembed2) = 1 And @WDAY = "5") Then
		persembed2()
	ElseIf (GUICtrlRead($persembesaatd3) = @HOUR And GUICtrlRead($persembedakikad3) = @MIN And GUICtrlRead($persembed3) = 1 And @WDAY = "5") Then
		persembed3()
	ElseIf (GUICtrlRead($persembesaatd4) = @HOUR And GUICtrlRead($persembedakikad4) = @MIN And GUICtrlRead($persembed4) = 1 And @WDAY = "5") Then
		persembed4()
	ElseIf (GUICtrlRead($persembesaatd5) = @HOUR And GUICtrlRead($persembedakikad5) = @MIN And GUICtrlRead($persembed5) = 1 And @WDAY = "5") Then
		persembed5()
	ElseIf (GUICtrlRead($persembesaatd6) = @HOUR And GUICtrlRead($persembedakikad6) = @MIN And GUICtrlRead($persembed6) = 1 And @WDAY = "5") Then
		persembed6()
	ElseIf (GUICtrlRead($persembesaatd7) = @HOUR And GUICtrlRead($persembedakikad7) = @MIN And GUICtrlRead($persembed7) = 1 And @WDAY = "5") Then
		persembed7()
	ElseIf (GUICtrlRead($persembesaatd8) = @HOUR And GUICtrlRead($persembedakikad8) = @MIN And GUICtrlRead($persembed8) = 1 And @WDAY = "5") Then
		persembed8()
	ElseIf (GUICtrlRead($persembesaatd9) = @HOUR And GUICtrlRead($persembedakikad9) = @MIN And GUICtrlRead($persembed9) = 1 And @WDAY = "5") Then
		persembed9()
	ElseIf (GUICtrlRead($persembesaatd10) = @HOUR And GUICtrlRead($persembedakikad10) = @MIN And GUICtrlRead($persembed10) = 1 And @WDAY = "5") Then
		persembed10()
	ElseIf (GUICtrlRead($persembesaatd11) = @HOUR And GUICtrlRead($persembedakikad11) = @MIN And GUICtrlRead($persembed11) = 1 And @WDAY = "5") Then
		persembed11()
	ElseIf (GUICtrlRead($persembesaatd12) = @HOUR And GUICtrlRead($persembedakikad12) = @MIN And GUICtrlRead($persembed12) = 1 And @WDAY = "5") Then
		persembed12()
	ElseIf (GUICtrlRead($persembesaatd13) = @HOUR And GUICtrlRead($persembedakikad13) = @MIN And GUICtrlRead($persembed13) = 1 And @WDAY = "5") Then
		persembed13()
	ElseIf (GUICtrlRead($persembesaatd14) = @HOUR And GUICtrlRead($persembedakikad14) = @MIN And GUICtrlRead($persembed14) = 1 And @WDAY = "5") Then
		persembed14()
	ElseIf (GUICtrlRead($persembesaatd15) = @HOUR And GUICtrlRead($persembedakikad15) = @MIN And GUICtrlRead($persembed15) = 1 And @WDAY = "5") Then
		persembed15()
	ElseIf (GUICtrlRead($persembesaatd16) = @HOUR And GUICtrlRead($persembedakikad16) = @MIN And GUICtrlRead($persembed16) = 1 And @WDAY = "5") Then
		persembed16()
	EndIf

	If IniRead($settingloc, "cuma", "cumad1", "1") = 1 Then
		GUICtrlSetState($cumad1, $gui_checked)
	Else
		GUICtrlSetState($cumad1, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "cuma", "cumad2", "1") = 1 Then
		GUICtrlSetState($cumad2, $gui_checked)
	Else
		GUICtrlSetState($cumad2, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "cuma", "cumad3", "1") = 1 Then
		GUICtrlSetState($cumad3, $gui_checked)
	Else
		GUICtrlSetState($cumad3, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "cuma", "cumad4", "1") = 1 Then
		GUICtrlSetState($cumad4, $gui_checked)
	Else
		GUICtrlSetState($cumad4, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "cuma", "cumad5", "1") = 1 Then
		GUICtrlSetState($cumad5, $gui_checked)
	Else
		GUICtrlSetState($cumad5, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "cuma", "cumad6", "1") = 1 Then
		GUICtrlSetState($cumad6, $gui_checked)
	Else
		GUICtrlSetState($cumad6, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "cuma", "cumad7", "1") = 1 Then
		GUICtrlSetState($cumad7, $gui_checked)
	Else
		GUICtrlSetState($cumad7, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "cuma", "cumad8", "1") = 1 Then
		GUICtrlSetState($cumad8, $gui_checked)
	Else
		GUICtrlSetState($cumad8, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "cuma", "cumad9", "1") = 1 Then
		GUICtrlSetState($cumad9, $gui_checked)
	Else
		GUICtrlSetState($cumad9, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "cuma", "cumad10", "1") = 1 Then
		GUICtrlSetState($cumad10, $gui_checked)
	Else
		GUICtrlSetState($cumad10, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "cuma", "cumad11", "1") = 1 Then
		GUICtrlSetState($cumad11, $gui_checked)
	Else
		GUICtrlSetState($cumad11, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "cuma", "cumad12", "1") = 1 Then
		GUICtrlSetState($cumad12, $gui_checked)
	Else
		GUICtrlSetState($cumad12, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "cuma", "cumad13", "1") = 1 Then
		GUICtrlSetState($cumad13, $gui_checked)
	Else
		GUICtrlSetState($cumad13, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "cuma", "cumad14", "1") = 1 Then
		GUICtrlSetState($cumad14, $gui_checked)
	Else
		GUICtrlSetState($cumad14, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "cuma", "cumad15", "1") = 1 Then
		GUICtrlSetState($cumad15, $gui_checked)
	Else
		GUICtrlSetState($cumad15, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "cuma", "cumad16", "1") = 1 Then
		GUICtrlSetState($cumad16, $gui_checked)
	Else
		GUICtrlSetState($cumad16, $gui_unchecked)
	EndIf

	If (GUICtrlRead($cumasaatd1) = @HOUR And GUICtrlRead($cumadakikad1) = @MIN And GUICtrlRead($cumad1) = 1 And @WDAY = "6") Then
		cumad1()
	ElseIf (GUICtrlRead($cumasaatd2) = @HOUR And GUICtrlRead($cumadakikad2) = @MIN And GUICtrlRead($cumad2) = 1 And @WDAY = "6") Then
		cumad2()
	ElseIf (GUICtrlRead($cumasaatd3) = @HOUR And GUICtrlRead($cumadakikad3) = @MIN And GUICtrlRead($cumad3) = 1 And @WDAY = "6") Then
		cumad3()
	ElseIf (GUICtrlRead($cumasaatd4) = @HOUR And GUICtrlRead($cumadakikad4) = @MIN And GUICtrlRead($cumad4) = 1 And @WDAY = "6") Then
		cumad4()
	ElseIf (GUICtrlRead($cumasaatd5) = @HOUR And GUICtrlRead($cumadakikad5) = @MIN And GUICtrlRead($cumad5) = 1 And @WDAY = "6") Then
		cumad5()
	ElseIf (GUICtrlRead($cumasaatd6) = @HOUR And GUICtrlRead($cumadakikad6) = @MIN And GUICtrlRead($cumad6) = 1 And @WDAY = "6") Then
		cumad6()
	ElseIf (GUICtrlRead($cumasaatd7) = @HOUR And GUICtrlRead($cumadakikad7) = @MIN And GUICtrlRead($cumad7) = 1 And @WDAY = "6") Then
		cumad7()
	ElseIf (GUICtrlRead($cumasaatd8) = @HOUR And GUICtrlRead($cumadakikad8) = @MIN And GUICtrlRead($cumad8) = 1 And @WDAY = "6") Then
		cumad8()
	ElseIf (GUICtrlRead($cumasaatd9) = @HOUR And GUICtrlRead($cumadakikad9) = @MIN And GUICtrlRead($cumad9) = 1 And @WDAY = "6") Then
		cumad9()
	ElseIf (GUICtrlRead($cumasaatd10) = @HOUR And GUICtrlRead($cumadakikad10) = @MIN And GUICtrlRead($cumad10) = 1 And @WDAY = "6") Then
		cumad10()
	ElseIf (GUICtrlRead($cumasaatd11) = @HOUR And GUICtrlRead($cumadakikad11) = @MIN And GUICtrlRead($cumad11) = 1 And @WDAY = "6") Then
		cumad11()
	ElseIf (GUICtrlRead($cumasaatd12) = @HOUR And GUICtrlRead($cumadakikad12) = @MIN And GUICtrlRead($cumad12) = 1 And @WDAY = "6") Then
		cumad12()
	ElseIf (GUICtrlRead($cumasaatd13) = @HOUR And GUICtrlRead($cumadakikad13) = @MIN And GUICtrlRead($cumad13) = 1 And @WDAY = "6") Then
		cumad13()
	ElseIf (GUICtrlRead($cumasaatd14) = @HOUR And GUICtrlRead($cumadakikad14) = @MIN And GUICtrlRead($cumad14) = 1 And @WDAY = "6") Then
		cumad14()
	ElseIf (GUICtrlRead($cumasaatd15) = @HOUR And GUICtrlRead($cumadakikad15) = @MIN And GUICtrlRead($cumad15) = 1 And @WDAY = "6") Then
		cumad15()
	ElseIf (GUICtrlRead($cumasaatd16) = @HOUR And GUICtrlRead($cumadakikad16) = @MIN And GUICtrlRead($cumad16) = 1 And @WDAY = "6") Then
		cumad16()
	EndIf

	If IniRead($settingloc, "ctesi", "ctesid1", "1") = 1 Then
		GUICtrlSetState($ctesid1, $gui_checked)
	Else
		GUICtrlSetState($ctesid1, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ctesi", "ctesid2", "1") = 1 Then
		GUICtrlSetState($ctesid2, $gui_checked)
	Else
		GUICtrlSetState($ctesid2, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ctesi", "ctesid3", "1") = 1 Then
		GUICtrlSetState($ctesid3, $gui_checked)
	Else
		GUICtrlSetState($ctesid3, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ctesi", "ctesid4", "1") = 1 Then
		GUICtrlSetState($ctesid4, $gui_checked)
	Else
		GUICtrlSetState($ctesid4, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ctesi", "ctesid5", "1") = 1 Then
		GUICtrlSetState($ctesid5, $gui_checked)
	Else
		GUICtrlSetState($ctesid5, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ctesi", "ctesid6", "1") = 1 Then
		GUICtrlSetState($ctesid6, $gui_checked)
	Else
		GUICtrlSetState($ctesid6, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ctesi", "ctesid7", "1") = 1 Then
		GUICtrlSetState($ctesid7, $gui_checked)
	Else
		GUICtrlSetState($ctesid7, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ctesi", "ctesid8", "1") = 1 Then
		GUICtrlSetState($ctesid8, $gui_checked)
	Else
		GUICtrlSetState($ctesid8, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ctesi", "ctesid9", "1") = 1 Then
		GUICtrlSetState($ctesid9, $gui_checked)
	Else
		GUICtrlSetState($ctesid9, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ctesi", "ctesid10", "1") = 1 Then
		GUICtrlSetState($ctesid10, $gui_checked)
	Else
		GUICtrlSetState($ctesid10, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ctesi", "ctesid11", "1") = 1 Then
		GUICtrlSetState($ctesid11, $gui_checked)
	Else
		GUICtrlSetState($ctesid11, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ctesi", "ctesid12", "1") = 1 Then
		GUICtrlSetState($ctesid12, $gui_checked)
	Else
		GUICtrlSetState($ctesid12, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ctesi", "ctesid13", "1") = 1 Then
		GUICtrlSetState($ctesid13, $gui_checked)
	Else
		GUICtrlSetState($ctesid13, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ctesi", "ctesid14", "1") = 1 Then
		GUICtrlSetState($ctesid14, $gui_checked)
	Else
		GUICtrlSetState($ctesid14, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ctesi", "ctesid15", "1") = 1 Then
		GUICtrlSetState($ctesid15, $gui_checked)
	Else
		GUICtrlSetState($ctesid15, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "ctesi", "ctesid16", "1") = 1 Then
		GUICtrlSetState($ctesid16, $gui_checked)
	Else
		GUICtrlSetState($ctesid16, $gui_unchecked)
	EndIf

	If (GUICtrlRead($ctesisaatd1) = @HOUR And GUICtrlRead($ctesidakikad1) = @MIN And GUICtrlRead($ctesid1) = 1 And @WDAY = "7") Then
		ctesid1()
	ElseIf (GUICtrlRead($ctesisaatd2) = @HOUR And GUICtrlRead($ctesidakikad2) = @MIN And GUICtrlRead($ctesid2) = 1 And @WDAY = "7") Then
		ctesid2()
	ElseIf (GUICtrlRead($ctesisaatd3) = @HOUR And GUICtrlRead($ctesidakikad3) = @MIN And GUICtrlRead($ctesid3) = 1 And @WDAY = "7") Then
		ctesid3()
	ElseIf (GUICtrlRead($ctesisaatd4) = @HOUR And GUICtrlRead($ctesidakikad4) = @MIN And GUICtrlRead($ctesid4) = 1 And @WDAY = "7") Then
		ctesid4()
	ElseIf (GUICtrlRead($ctesisaatd5) = @HOUR And GUICtrlRead($ctesidakikad5) = @MIN And GUICtrlRead($ctesid5) = 1 And @WDAY = "7") Then
		ctesid5()
	ElseIf (GUICtrlRead($ctesisaatd6) = @HOUR And GUICtrlRead($ctesidakikad6) = @MIN And GUICtrlRead($ctesid6) = 1 And @WDAY = "7") Then
		ctesid6()
	ElseIf (GUICtrlRead($ctesisaatd7) = @HOUR And GUICtrlRead($ctesidakikad7) = @MIN And GUICtrlRead($ctesid7) = 1 And @WDAY = "7") Then
		ctesid7()
	ElseIf (GUICtrlRead($ctesisaatd8) = @HOUR And GUICtrlRead($ctesidakikad8) = @MIN And GUICtrlRead($ctesid8) = 1 And @WDAY = "7") Then
		ctesid8()
	ElseIf (GUICtrlRead($ctesisaatd9) = @HOUR And GUICtrlRead($ctesidakikad9) = @MIN And GUICtrlRead($ctesid9) = 1 And @WDAY = "7") Then
		ctesid9()
	ElseIf (GUICtrlRead($ctesisaatd10) = @HOUR And GUICtrlRead($ctesidakikad10) = @MIN And GUICtrlRead($ctesid10) = 1 And @WDAY = "7") Then
		ctesid10()
	ElseIf (GUICtrlRead($ctesisaatd11) = @HOUR And GUICtrlRead($ctesidakikad11) = @MIN And GUICtrlRead($ctesid11) = 1 And @WDAY = "7") Then
		ctesid11()
	ElseIf (GUICtrlRead($ctesisaatd12) = @HOUR And GUICtrlRead($ctesidakikad12) = @MIN And GUICtrlRead($ctesid12) = 1 And @WDAY = "7") Then
		ctesid12()
	ElseIf (GUICtrlRead($ctesisaatd13) = @HOUR And GUICtrlRead($ctesidakikad13) = @MIN And GUICtrlRead($ctesid13) = 1 And @WDAY = "7") Then
		ctesid13()
	ElseIf (GUICtrlRead($ctesisaatd14) = @HOUR And GUICtrlRead($ctesidakikad14) = @MIN And GUICtrlRead($ctesid14) = 1 And @WDAY = "7") Then
		ctesid14()
	ElseIf (GUICtrlRead($ctesisaatd15) = @HOUR And GUICtrlRead($ctesidakikad15) = @MIN And GUICtrlRead($ctesid15) = 1 And @WDAY = "7") Then
		ctesid15()
	ElseIf (GUICtrlRead($ctesisaatd16) = @HOUR And GUICtrlRead($ctesidakikad16) = @MIN And GUICtrlRead($ctesid16) = 1 And @WDAY = "7") Then
		ctesid16()
	EndIf

	If IniRead($settingloc, "pazar", "pazard1", "1") = 1 Then
		GUICtrlSetState($pazard1, $gui_checked)
	Else
		GUICtrlSetState($pazard1, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "pazar", "pazard2", "1") = 1 Then
		GUICtrlSetState($pazard2, $gui_checked)
	Else
		GUICtrlSetState($pazard2, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "pazar", "pazard3", "1") = 1 Then
		GUICtrlSetState($pazard3, $gui_checked)
	Else
		GUICtrlSetState($pazard3, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "pazar", "pazard4", "1") = 1 Then
		GUICtrlSetState($pazard4, $gui_checked)
	Else
		GUICtrlSetState($pazard4, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "pazar", "pazard5", "1") = 1 Then
		GUICtrlSetState($pazard5, $gui_checked)
	Else
		GUICtrlSetState($pazard5, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "pazar", "pazard6", "1") = 1 Then
		GUICtrlSetState($pazard6, $gui_checked)
	Else
		GUICtrlSetState($pazard6, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "pazar", "pazard7", "1") = 1 Then
		GUICtrlSetState($pazard7, $gui_checked)
	Else
		GUICtrlSetState($pazard7, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "pazar", "pazard8", "1") = 1 Then
		GUICtrlSetState($pazard8, $gui_checked)
	Else
		GUICtrlSetState($pazard8, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "pazar", "pazard9", "1") = 1 Then
		GUICtrlSetState($pazard9, $gui_checked)
	Else
		GUICtrlSetState($pazard9, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "pazar", "pazard10", "1") = 1 Then
		GUICtrlSetState($pazard10, $gui_checked)
	Else
		GUICtrlSetState($pazard10, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "pazar", "pazard11", "1") = 1 Then
		GUICtrlSetState($pazard11, $gui_checked)
	Else
		GUICtrlSetState($pazard11, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "pazar", "pazard12", "1") = 1 Then
		GUICtrlSetState($pazard12, $gui_checked)
	Else
		GUICtrlSetState($pazard12, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "pazar", "pazard13", "1") = 1 Then
		GUICtrlSetState($pazard13, $gui_checked)
	Else
		GUICtrlSetState($pazard13, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "pazar", "pazard14", "1") = 1 Then
		GUICtrlSetState($pazard14, $gui_checked)
	Else
		GUICtrlSetState($pazard14, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "pazar", "pazard15", "1") = 1 Then
		GUICtrlSetState($pazard15, $gui_checked)
	Else
		GUICtrlSetState($pazard15, $gui_unchecked)
	EndIf

	If IniRead($settingloc, "pazar", "pazard16", "1") = 1 Then
		GUICtrlSetState($pazard16, $gui_checked)
	Else
		GUICtrlSetState($pazard16, $gui_unchecked)
	EndIf

	If (GUICtrlRead($pazarsaatd1) = @HOUR And GUICtrlRead($pazardakikad1) = @MIN And GUICtrlRead($pazard1) = 1 And @WDAY = "1") Then
		pazard1()
	ElseIf (GUICtrlRead($pazarsaatd2) = @HOUR And GUICtrlRead($pazardakikad2) = @MIN And GUICtrlRead($pazard2) = 1 And @WDAY = "1") Then
		pazard2()
	ElseIf (GUICtrlRead($pazarsaatd3) = @HOUR And GUICtrlRead($pazardakikad3) = @MIN And GUICtrlRead($pazard3) = 1 And @WDAY = "1") Then
		pazard3()
	ElseIf (GUICtrlRead($pazarsaatd4) = @HOUR And GUICtrlRead($pazardakikad4) = @MIN And GUICtrlRead($pazard4) = 1 And @WDAY = "1") Then
		pazard4()
	ElseIf (GUICtrlRead($pazarsaatd5) = @HOUR And GUICtrlRead($pazardakikad5) = @MIN And GUICtrlRead($pazard5) = 1 And @WDAY = "1") Then
		pazard5()
	ElseIf (GUICtrlRead($pazarsaatd6) = @HOUR And GUICtrlRead($pazardakikad6) = @MIN And GUICtrlRead($pazard6) = 1 And @WDAY = "1") Then
		pazard6()
	ElseIf (GUICtrlRead($pazarsaatd7) = @HOUR And GUICtrlRead($pazardakikad7) = @MIN And GUICtrlRead($pazard7) = 1 And @WDAY = "1") Then
		pazard7()
	ElseIf (GUICtrlRead($pazarsaatd8) = @HOUR And GUICtrlRead($pazardakikad8) = @MIN And GUICtrlRead($pazard8) = 1 And @WDAY = "1") Then
		pazard8()
	ElseIf (GUICtrlRead($pazarsaatd9) = @HOUR And GUICtrlRead($pazardakikad9) = @MIN And GUICtrlRead($pazard9) = 1 And @WDAY = "1") Then
		pazard9()
	ElseIf (GUICtrlRead($pazarsaatd10) = @HOUR And GUICtrlRead($pazardakikad10) = @MIN And GUICtrlRead($pazard10) = 1 And @WDAY = "1") Then
		pazard10()
	ElseIf (GUICtrlRead($pazarsaatd11) = @HOUR And GUICtrlRead($pazardakikad11) = @MIN And GUICtrlRead($pazard11) = 1 And @WDAY = "1") Then
		pazard11()
	ElseIf (GUICtrlRead($pazarsaatd12) = @HOUR And GUICtrlRead($pazardakikad12) = @MIN And GUICtrlRead($pazard12) = 1 And @WDAY = "1") Then
		pazard12()
	ElseIf (GUICtrlRead($pazarsaatd13) = @HOUR And GUICtrlRead($pazardakikad13) = @MIN And GUICtrlRead($pazard13) = 1 And @WDAY = "1") Then
		pazard13()
	ElseIf (GUICtrlRead($pazarsaatd14) = @HOUR And GUICtrlRead($pazardakikad14) = @MIN And GUICtrlRead($pazard14) = 1 And @WDAY = "1") Then
		pazard14()
	ElseIf (GUICtrlRead($pazarsaatd15) = @HOUR And GUICtrlRead($pazardakikad15) = @MIN And GUICtrlRead($pazard15) = 1 And @WDAY = "1") Then
		pazard15()
	ElseIf (GUICtrlRead($pazarsaatd16) = @HOUR And GUICtrlRead($pazardakikad16) = @MIN And GUICtrlRead($pazard16) = 1 And @WDAY = "1") Then
		pazard16()
	EndIf

	If IniRead($settingloc, "mainsettings", "mod", "1") = 1 Then
		GUICtrlSetState($tekmod, $GUI_CHECKED)
	Else
		GUICtrlSetState($ciftmod, $GUI_CHECKED)
	EndIf

WEnd
