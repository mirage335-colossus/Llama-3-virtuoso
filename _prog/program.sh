#####Program





_request_license_acceptance_CEL_1_00() {

	# === ConsumerEconomy License (CEL-1.00) Click-Wrap Enforcement ===

	if ! grep 'CEL-1\.00' "$scriptAbsoluteFolder"/.acceptedProjectLicense	> /dev/null 2>&1
	then
		
		# 1. Verify that both files exist
		if [[ ! -e "$scriptAbsoluteFolder"/LICENSE-CEL-1.00.md ]] || [[ ! -e "$scriptAbsoluteFolder"/SUMMARY-CEL-1.00.md ]]
		then
			echo "Error: CEL license files not found in '$scriptAbsoluteFolder'."
			echo "Ensure both LICENSE-CEL-1.00.md and SUMMARY-CEL-1.00.md are present."
			exit 1
		fi

		if ! type whiptail > /dev/null 2>&1 && ! type dialog > /dev/null 2>&1 && ! type less > /dev/null 2>&1
		then
			echo "Error: Neither whiptail, dialog, nor less is available."
			echo "Please install one of these utilities to view the license."
			exit 1
		fi

		# 2. Show prominent notice and hyperlinks
		_here_projectLicense_prominentNotice_etc_CEL() {
		cat <<EOF

==============================================================
This software is distributed under the ConsumerEconomy License (CEL-1.00).
You must read and accept the terms below before proceeding.
==============================================================
Full License:  "$scriptAbsoluteFolder/LICENSE-CEL-1.00.md"
One-Page Summary:  "$scriptAbsoluteFolder/SUMMARY-CEL-1.00.md"
Online (HTML):  
• https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/LICENSE-CEL-1.00.md  
• https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/SUMMARY-CEL-1.00.md
==============================================================

EOF
		}
		_here_projectLicense_prominentNotice_etc_CEL

		# 3. Display with scroll-box: prefer whiptail/dialog, else fallback to less
		current_ClickWrap_etc_rows_cols=($(stty size))
		current_ClickWrap_etc_rows=${current_ClickWrap_etc_rows_cols[0]}
		current_ClickWrap_etc_cols=${current_ClickWrap_etc_rows_cols[1]}

		if [[ "$current_ClickWrap_etc_rows" -lt 50 ]] || [[ "$current_ClickWrap_etc_cols" -lt 140 ]]
		then
		echo "Error: Terminal size is too small for displaying the license."
		echo "Please resize your terminal to at least 50 rows and 140 columns."
		exit 1
		fi

		if command -v whiptail &>/dev/null; then
		whiptail --title "CEL-1.00 Full License" --scrolltext --textbox "$scriptAbsoluteFolder"/LICENSE-CEL-1.00.md "$current_ClickWrap_etc_rows" "$current_ClickWrap_etc_cols"
		whiptail --title "CEL-1.00 One-Page Summary" --scrolltext --textbox "$scriptAbsoluteFolder"/SUMMARY-CEL-1.00.md "$current_ClickWrap_etc_rows" "$current_ClickWrap_etc_cols"
		# whiptail exit code 0 == OK
		elif command -v dialog &>/dev/null; then
		dialog --title "CEL-1.00 Full License" --textbox "$scriptAbsoluteFolder"/LICENSE-CEL-1.00.md "$current_ClickWrap_etc_rows" "$current_ClickWrap_etc_cols"
		dialog --title "CEL-1.00 One-Page Summary" --textbox "$scriptAbsoluteFolder"/SUMMARY-CEL-1.00.md "$current_ClickWrap_etc_rows" "$current_ClickWrap_etc_cols"
		else
		# Fallback to pager
		${PAGER:-less} "$scriptAbsoluteFolder"/LICENSE-CEL-1.00.md
		${PAGER:-less} "$scriptAbsoluteFolder"/SUMMARY-CEL-1.00.md
		fi

		clear
		_here_projectLicense_prominentNotice_etc_CEL

		# 4. Prompt for explicit assent
		echo
		read -p "Type 'I AGREE' to accept the CEL-1.00 terms and continue: " current_ClickWrap_etc_CONSENT
		if [[ "$current_ClickWrap_etc_CONSENT" != "I AGREE" ]]; then
		echo "You did not accept the ConsumerEconomy License. Exiting."
		exit 1
		fi

		# === User agreed; shift to actual program ===

		unset current_ClickWrap_etc_CONSENT
		unset current_ClickWrap_etc_rows_cols
		unset current_ClickWrap_etc_rows
		unset current_ClickWrap_etc_cols

		echo "Thank you. Launching program..."

		echo 'CEL-1.00' >> "$scriptAbsoluteFolder"/.acceptedProjectLicense

	else

		echo "ConsumerEconomy License (CEL-1.00) already accepted."
		
	fi

}





#Typically launches an application - ie. through virtualized container.
_launch() {
	false
	#"$@"
}

#Typically gathers command/variable scripts from other (ie. yaml) file types (ie. AppImage recipes).
_collect() {
	false
}

#Typical program entry point, absent any instancing support.
_enter() {
	_launch "$@"
}

#Typical program entry point.
_main() {
	_request_license_acceptance_CEL_1_00
	
	_start
	
	_collect
	
	_enter "$@"
	
	_stop
}


_request_license_acceptance_CEL_1_00
