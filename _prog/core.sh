##### Core

# ATTENTION
#_request_license_acceptance_CEL_1_00


# Function '_bash' has special meaning to '_bash.bat' , which may default to using the '_bash' function of wherever 'ubcp' is found, etc (ie. DUBIOUS) .
_facade() {
    _bash "$@"
}

_refresh_anchors() {
    cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_facade.bat
}


