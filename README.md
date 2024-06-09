# Auto Minimize ToneTuningTool.exe to System Tray
## for EKSA Gaming Headsets

**What is this?**
EKSA headphones come with a companion app to tweak the sound output. This companion app launches at startup as a foreground app, and only when closed manually does this app minimize to the system tray as a background process. This simple script checks for the program running and closes the foreground window.

**How to:**
- Download and extract the latest build to `C:\AutoCloseEKSAToneTuningTool`.
- Copy the extracted `RunClose.vbs`.
- Press `Win+R` on your keyboard and type: `shell:startup`.
- In your Startup folder, paste `RunClose.vbs` as a shortcut.

The script will now run at startup, checking every half a second for `ToneTuningTool.exe` running. It will then close it after a 2-second delay (to ensure the foreground app has fully opened/the splash screen has finished). It will then close the foreground app, leaving the background process intact.

**Bonus Tip:**
Click the little cog beside the notification `ToneTuningTool` sends to your notification center and turn off all notifications for the program.


**Support:**
[Discord](https://discord.gg/e3eXGTJbjx).