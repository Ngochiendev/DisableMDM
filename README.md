# Disable Device Enrollment Program (DEP) notification on macOS BigSur and Monterey

# Requirements

1.	Restart in Recovery Mode 

	Restart your Mac then hold down the **Command & R** keys together until you're in the Recovery Mode menu

2.	Click on **Utilities** then select: **Startup Security Utility**

3.	The 3-choices popup appears: select (**No security**) (no confirmation button to press)

4.	Restart again in Recovery Mode (**Command+R**)
5. Open Utilities → Terminal and type

	`csrutil disable`
	
6. Restart in **Recovery Mode** again and continue with **Main Procedure**

# Main Procedure

1. Enter Disk Utility, and mount the `Macintosh HD` volume (or whatever your main volume is named).  (It might already be mounted.)

2. Open **Utilities** → **Terminal** and type

	`curl -L https://raw.githubusercontent.com/luminositystudio/mactuts/main/disable_DEP.sh -O`

3. Then

	`chmod 775 disable_DEP.sh`

4. Then

	`./disable_DEP.sh`

5. Reboot

# Verification

1. After a normal boot, you can verify the DEP status in Terminal.

	`profiles status -type enrollment
	`	

2. Disable DEP Status successful.

	```
	Enrolled via DEP: No
	MDM enrollment: No
	```
