##### Core

# ATTENTION
#_request_license_acceptance_CEL_1_00


_setupVirtuoso() {
    _messageNormal "${FUNCNAME[0]}" "$objectName"

    # Generic hook . Recent versions of any 'virtuoso' project should set the same variables by the same rules, etc.
    mkdir -p "$HOME"/.virtuoso

    local virtuosoHookFile="$HOME"/.virtuoso/virtuoso_hook.sh

    ! grep virtuoso_hook "$HOME"/.bashrc > /dev/null 2>&1 && _messagePlain_probe "$virtuosoHookFile"' >> '"$HOME"/.bashrc && echo ". ""$virtuosoHookFile" >> "$HOME"/.bashrc
	! grep virtuoso_hook "$HOME"/.bashrc > /dev/null 2>&1 && _messagePlain_bad 'missing: bashrc hook' && _messageFAIL && return 1
    
    if _if_cygwin && ( [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--6pCore_8eCore' ]] )
    then
        setx OLLAMA_NUM_THREADS 18 /m
        setx OLLAMA_NUM_THREADS 18

        setx OLLAMA_FLASH_ATTENTION 1 /m
        setx OLLAMA_KV_CACHE_TYPE q8_0 /m
        setx OLLAMA_NEW_ENGINE true /m
        setx OLLAMA_NOHISTORY true /m
        setx OLLAMA_NUM_PARALLEL 4 /m
        setx OLLAMA_SCHED_SPREAD 1 /m

        setx OLLAMA_FLASH_ATTENTION 1
        setx OLLAMA_KV_CACHE_TYPE q8_0
        setx OLLAMA_NEW_ENGINE true
        setx OLLAMA_NOHISTORY true
        setx OLLAMA_NUM_PARALLEL 4
        setx OLLAMA_SCHED_SPREAD 1
    fi
    if _if_cygwin && ! ( [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--6pCore_8eCore' ]] )
    then
        setx OLLAMA_FLASH_ATTENTION 1 /m
        setx OLLAMA_KV_CACHE_TYPE q8_0 /m
        setx OLLAMA_NEW_ENGINE true /m
        setx OLLAMA_NOHISTORY true /m
        setx OLLAMA_NUM_PARALLEL 4 /m
        setx OLLAMA_SCHED_SPREAD 1 /m

        setx OLLAMA_FLASH_ATTENTION 1
        setx OLLAMA_KV_CACHE_TYPE q8_0
        setx OLLAMA_NEW_ENGINE true
        setx OLLAMA_NOHISTORY true
        setx OLLAMA_NUM_PARALLEL 4
        setx OLLAMA_SCHED_SPREAD 1
    fi

    if ! _if_cygwin && ( [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--6pCore_8eCore' ]] )
    then
        sudo -n mkdir -p /etc/systemd/system/ollama.service.d

        echo '[Service]
        Environment="OLLAMA_NUM_THREADS=18"
        Environment="OLLAMA_FLASH_ATTENTION=1"
        Environment="OLLAMA_KV_CACHE_TYPE=q8_0"
        Environment="OLLAMA_NEW_ENGINE=true"
        Environment="OLLAMA_NOHISTORY=true"
        Environment="OLLAMA_NUM_PARALLEL=4"
        Environment="OLLAMA_SCHED_SPREAD=1"' | sudo -n tee /etc/systemd/system/ollama.service.d/override.conf > /dev/null

        echo 'export="OLLAMA_NUM_THREADS=18"
        export="OLLAMA_FLASH_ATTENTION=1"
        export="OLLAMA_KV_CACHE_TYPE=q8_0"
        export="OLLAMA_NEW_ENGINE=true"
        export="OLLAMA_NOHISTORY=true"
        export="OLLAMA_NUM_PARALLEL=4"
        export="OLLAMA_SCHED_SPREAD=1"' > "$virtuosoHookFile"

        sudo -n chmod 755 /etc/systemd/system/ollama.service.d
        sudo -n chmod 644 /etc/systemd/system/ollama.service.d/override.conf
    fi
    if ! _if_cygwin && ! ( [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--6pCore_8eCore' ]] )
    then
        sudo -n mkdir -p /etc/systemd/system/ollama.service.d

        echo '[Service]
        Environment="OLLAMA_FLASH_ATTENTION=1"
        Environment="OLLAMA_KV_CACHE_TYPE=q8_0"
        Environment="OLLAMA_NEW_ENGINE=true"
        Environment="OLLAMA_NOHISTORY=true"
        Environment="OLLAMA_NUM_PARALLEL=4"
        Environment="OLLAMA_SCHED_SPREAD=1"' | sudo -n tee /etc/systemd/system/ollama.service.d/override.conf > /dev/null

        echo 'export="OLLAMA_FLASH_ATTENTION=1"
        export="OLLAMA_KV_CACHE_TYPE=q8_0"
        export="OLLAMA_NEW_ENGINE=true"
        export="OLLAMA_NOHISTORY=true"
        export="OLLAMA_NUM_PARALLEL=4"
        export="OLLAMA_SCHED_SPREAD=1"' > "$virtuosoHookFile"

        sudo -n chmod 755 /etc/systemd/system/ollama.service.d
        sudo -n chmod 644 /etc/systemd/system/ollama.service.d/override.conf
    fi

    # DUBIOUS . More project-specific hook.
    #echo > "$HOME"/.virtuoso/"$objectName"-hook.sh
    #grep ...

}








# Function '_bash' has special meaning to '_bash.bat' , which may default to using the '_bash' function of wherever 'ubcp' is found, etc (ie. DUBIOUS) .
_facade() {
    _bash "$@"
}

_refresh_anchors() {
    cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_facade.bat
    cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_setupVirtuoso.bat
}


