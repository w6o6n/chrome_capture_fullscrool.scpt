(*
chrome_capture_fullscrool.scpt

Tested on macOS 10.11.6 + Google Chrome 72.0.3626.121

Take full-length capture of web page using default Chrome function.
Open "Developer Tools" and execute "caputure full size screenshot".
A screenshot file (PNG) will save to download folder.

Input: None (Before use, open the website with Chrome and bring the tab to frontmost).
Output: screenshot (PNG) in Downloads folder.
*)

tell application "Google Chrome"
	activate
	tell application "System Events"
		--Open "Developer Tools"
		keystroke "i" using {command down, option down}
		delay 1
		--command mode
		keystroke "p" using {command down, shift down}
		delay 0.5
		--search "caputure full size screenshot" command
		keystroke "capture f"
		delay 0.5
		key code 36 --return (execute command)
		delay 2
		--Close "Developer Tools"
		keystroke "i" using {command down, option down}
	end tell
end tell