link = "https://www.one.com/"
nombre_fois = 55555 ' Vous pouvez changer ce chiffre pour le nombre de fois que vous voulez ouvrir la page

Set WshShell = CreateObject("WScript.Shell")

For i = 1 To nombre_fois
    WshShell.Run "chrome.exe " & link, 1, False
    WshShell.Run "msedge.exe " & link, 1, False
Next
