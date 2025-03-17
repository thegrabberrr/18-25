Dim oPlayer
Set oPlayer = CreateObject("WMPlayer.OCX")

' Play audio
oPlayer.URL = "error.mp3"
oPlayer.controls.play 
While oPlayer.playState <> 1 ' 10000000 = Stopped
  WScript.Sleep 100
Wend

' Release the audio file
oPlayer.close

' Ceci lance le son error, il sera spamm� car la msgbox (msg.vbs) va tellement vite que le son ne se lance pas