#NoTrayIcon
#Include <TrayConstants.au3>
#Include <Misc.au3>

Opt("TrayMenuMode", 1) ; Disable default tray menu items

TraySetToolTip("Clipboard")

; Postavi ikonicu (možeš koristiti bilo koji .ico fajl)
; TraySetIcon("attach-2-48.ico") ; Primer: koristi ikonu iz sistema

; Dodaj meni opcije
$showClipboard = TrayCreateItem("Clipboard History (Win+V)")
TrayCreateItem("") ; separator
$exitItem = TrayCreateItem("Exit")

TraySetState($TRAY_ICONSTATE_SHOW)

While 1
    Switch TrayGetMsg()
        Case $showClipboard
            ; Simulacija Win + V
            Send("#v") ; '#' je taster za Win u AutoIt-u

        Case $exitItem
            ExitLoop
    EndSwitch
WEnd
