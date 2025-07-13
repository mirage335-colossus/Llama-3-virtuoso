
# ATTENTION: Must already have called:
#_service_ollama

# ATTENTION: All functions may be sequences without explicit naming as such.



_get_downloadModel-file-HuggingFace() {
    _messagePlain_nominal "${FUNCNAME[0]}"
    
    #local current_file="$1"
    #local current_URL="$2"
    #local current_sha256="$3"
    #local current_fileDir="$4"

    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"

    local currentIteration=0
    while [[ ! -e "$scriptBundle"/ai_models/"$current_fileDir"/"$current_file" ]] || ( [[ "$current_sha256" != "" ]] && [[ $(sha256sum "$scriptBundle"/ai_models/"$current_fileDir"/"$current_file" | head -c 64 | tr -dc 'a-fA-F0-9' 2>/dev/null) != $(echo "$current_sha256" | head -c 64 | tr -dc 'a-fA-F0-9' 2>/dev/null) ]] )
    do
        #rm -f "$scriptBundle"/ai_models/"$current_fileDir"/"$current_file"*
        if [[ "$currentIteration" -gt 3 ]]
        then
            _messagePlain_bad 'bad: '"$current_file"
            return 1
        fi

        # Deliberately prefer always delay to show previous messages, unless download program (ie. 'aria2c') is sufficiently quiet. 
        sleep 1
        [[ "$currentIteration" -gt 0 ]] && sleep 1
        
        aria2c --show-console-readout=false --log=- --log-level=warn --summary-interval=15 -x "3" --async-dns=false -d "$scriptBundle"/ai_models/"$current_fileDir" -o "$current_file" "$current_URL"
        [[ ! -e "$scriptBundle"/ai_models/"$current_fileDir"/"$current_file" ]] && aria2c --show-console-readout=false --log=- --log-level=warn --summary-interval=15 -x "3" --async-dns=false -d "$scriptBundle"/ai_models/"$current_fileDir" -o "$current_file" "$current_URL" --disable-ipv6=true

        (( currentIteration++ ))
    done

    _messagePlain_good 'good: '"$current_file"
    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/"$current_file".*
    return 0
}



unset current_prog_ops_file
while IFS= read -r -d '' current_prog_ops_file
do
    source "$current_prog_ops_file"
done < <(find "$scriptAbsoluteFolder"/_ops-model-local -type f -name '*.sh' -print0)








