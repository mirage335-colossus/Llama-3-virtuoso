
# ATTENTION: Must already have called:
#_service_ollama

# ATTENTION: All functions may be sequences without explicit naming as such.



_get_downloadModel-file-HuggingFace() {
    #local current_file="$1"
    #local current_URL="$2"
    #local current_sha256="$3"
    #local current_fileDir="$4"

    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"

    local currentIteration=0
    while [[ ! -e "$scriptBundle"/ai_models/"$current_fileDir"/"$current_file" ]] && ( [[ "$current_sha256" != "" ]] && [[ $(sha256sum "$scriptBundle"/ai_models/"$current_fileDir"/"$current_file" | head -c 64 | tr -dc 'a-fA-F0-9' 2>/dev/null) != "$current_sha256" ]] )
    do
        rm -f "$scriptBundle"/ai_models/"$current_fileDir"/"$current_file"
        if [[ "$currentIteration" -gt 3 ]]
        then
            return 1
        fi

        [[ "$currentIteration" -gt 0 ]] && sleep 1
        
        aria2c --log=- --log-level=info -x "3" --async-dns=false -o "$scriptBundle"/ai_models/"$current_fileDir"/"$current_file" "$current_URL"
        [[ ! -e "$current_file" ]] && aria2c --log=- --log-level=info -x "3" --async-dns=false -o "$scriptBundle"/ai_models/"$current_fileDir"/"$current_file" "$current_URL" --disable-ipv6=true

        (( currentIteration++ ))
    done

    return 0
}



unset current_prog_ops_file
while IFS= read -r -d '' current_prog_ops_file
do
    source "$current_prog_ops_file"
done < <(find "$scriptAbsoluteFolder"/_ops-model-local -type f -name '*.sh' -print0)








