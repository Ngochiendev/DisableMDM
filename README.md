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

	`curl -L https://raw.githubusercontent.com/ngochiendev/DisableMDM/main/disable_DEP.sh -O`

3. Then

	`chmod 775 disable_DEP.sh`

4. Then

	`./disable_DEP.sh`

5. Reboot

This will show you the current enrollment configuration your Mac has, you can even block the domain mentioned in ConfigurationURL just to be safe, example:

`echo "0.0.0.0 yourDomainMentionedInConfigurationURL" | sudo tee -a /etc/hosts`

After that, I proceed to delete the profile, in my regular session, not recovery, although it would probably also work in recovery:

`sudo profiles remove -all`

# Verification

1. After a normal boot, you can verify the DEP status in Terminal.

	`profiles status -type enrollment
	`	

2. Disable DEP Status successful.

	```
	Enrolled via DEP: No
	MDM enrollment: No
	```
	
# Notes
1. After each upgrade to the latest BigSur and Monterey, apply this method again to disable DEP.

2. Method has been tested and worked on following macOS BigSur and Monterey version:
	
	* 12.1 (Monterey)
	* 12.0.1 (Monterey)
	* 11.5.2 (BigSur)
	* 11.3.1
	* 11.3
	* 11.2.3 
	* 11.2.2 
	* 11.2.1 
	* 11.2
	* 11.1
	* 11.0.1
