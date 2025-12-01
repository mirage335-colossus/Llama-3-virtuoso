##### Core

# ATTENTION
#_request_license_acceptance_CEL_1_00

# Usually a dedicated Linux inference server... which may alternatively be manually configured instead of using ollama, etc.
# WARNING: May be untested.
# ATTENTION: Override with 'ops.sh' or similar. Maybe override with '.env' if actually appropriate.
_setupVirtuoso-server() {
    _setupVirtuoso

    _messageNormal "${FUNCNAME[0]}" "$objectName"


    # WARNING: Beware even with dedicated hardware and presumably otherwise adequate VRAM, very large or unusual models (eg. Kimi-K2-Instruct), increasing PARALLEL may still use prohibitive amounts of VRAM !


    _if_cygwin && _messagePlain_bad 'bad: _setupVirtuoso-server does not support MSWindows, etc' && _messageFAIL && return 1

    # Discouraged.
    #sed -i '/OLLAMA_NUM_PARALLEL/d' "$HOME"/.virtuoso/virtuoso_hook.sh
    #echo 'export OLLAMA_NUM_PARALLEL=4' >> "$HOME"/.virtuoso/virtuoso_hook.sh
    
    sudo -n mkdir -p /etc/systemd/system/ollama.service.d

    # Discouraged.
    #sed -i '/OLLAMA_NUM_PARALLEL/d' /etc/systemd/system/ollama.service.d/override.conf
    #echo 'Environment="OLLAMA_NUM_PARALLEL=4"' | sudo -n tee -a /etc/systemd/system/ollama.service.d/override.conf > /dev/null

    sudo -n chmod 755 /etc/systemd/system/ollama.service.d
    sudo -n chmod 644 /etc/systemd/system/ollama.service.d/override.conf
}

_if_virtuoso_KV_CACHE_TYPE() {
    [[ "$compute_devWorkstation" != "true" ]] && [[ "$compute_agenticServer" != "true" ]]
}

# ATTENTION: Override with 'ops.sh' or similar. Maybe override with '.env' if actually appropriate.
_setupVirtuoso() {
    _messageNormal "${FUNCNAME[0]}" "$objectName"


    # WARNING: These variables are the result of iterative testing to minimize the *risk* of such subtle issues as 'Llama-3_3-Nemotron-Super-49B-v1' causing 'freezing' (ie. non-responsive desktop UI and slow generation) possibly due to sparse layers offloading to shared GPU memory, etc.
    # In particular, after doing most testing with 'OLLAMA_NUM_PARALLEL=4', resulting in mostly tolerant context window settings, etc, 'OLLAMA_NUM_PARALLEL=1' was made default to prevent issues occurring in some less usual situations (such as having configured all models with '_fetch_local' with '.env' configured for an eGPU, then unplugged the eGPU).
    # ATTENTION: Not all models are guaranteed to work in such situations as eGPU detachment, nor with OLLAMA_NUM_PARALLEL=4, however, it is *VERY IMPORTANT* that at least some models used for gathering information from a client device (eg. _ops-model-local/Qwen-2_5-VL-7B-Instruct) can resume working without intervention after unexected eGPU detachment (eg. power failure), etc.
    # ATTENTION: 'OLLAMA_NUM_PARALLEL' in particular has drastic consequences: multiplying the VRAM used by the context window!


    # Generic hook . Recent versions of any 'virtuoso' project should set the same variables by the same rules, etc.
    mkdir -p "$HOME"/.virtuoso

    local virtuosoHookFile="$HOME"/.virtuoso/virtuoso_hook.sh

    ! grep virtuoso_hook "$HOME"/.bashrc > /dev/null 2>&1 && _messagePlain_probe "$virtuosoHookFile"' >> '"$HOME"/.bashrc && echo ". ""$virtuosoHookFile" >> "$HOME"/.bashrc
	! grep virtuoso_hook "$HOME"/.bashrc > /dev/null 2>&1 && _messagePlain_bad 'missing: bashrc hook' && _messageFAIL && return 1

    local current_KV_CACHE_TYPE
    _if_virtuoso_KV_CACHE_TYPE && current_KV_CACHE_TYPE=q8_0
    ! _if_virtuoso_KV_CACHE_TYPE && current_KV_CACHE_TYPE=q4_0
    _messagePlain_probe_var current_KV_CACHE_TYPE
    
    if _if_cygwin && ( [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--6pCore_8eCore' ]] )
    then
        #setx OLLAMA_CONTEXT_LENGTH 32768 /m
        #setx OLLAMA_CONTEXT_LENGTH 32768
        
        setx OLLAMA_NUM_THREADS 18 /m
        setx OLLAMA_NUM_THREADS 18

        setx OLLAMA_FLASH_ATTENTION 1 /m
        #setx OLLAMA_KV_CACHE_TYPE q8_0 /m
        _if_virtuoso_KV_CACHE_TYPE && setx OLLAMA_KV_CACHE_TYPE q8_0 /m
        ! _if_virtuoso_KV_CACHE_TYPE && setx OLLAMA_KV_CACHE_TYPE q4_0 /m
        setx OLLAMA_NEW_ENGINE true /m
        setx OLLAMA_NOHISTORY true /m
        setx OLLAMA_NUM_PARALLEL 1 /m
        [[ "$compute_agenticServer" != "true" ]] && setx OLLAMA_SCHED_SPREAD 1 /m

        setx OLLAMA_FLASH_ATTENTION 1
        #setx OLLAMA_KV_CACHE_TYPE q8_0
        _if_virtuoso_KV_CACHE_TYPE && setx OLLAMA_KV_CACHE_TYPE q8_0
        ! _if_virtuoso_KV_CACHE_TYPE && setx OLLAMA_KV_CACHE_TYPE q4_0
        setx OLLAMA_NEW_ENGINE true
        setx OLLAMA_NOHISTORY true
        setx OLLAMA_NUM_PARALLEL 1
        [[ "$compute_agenticServer" != "true" ]] && setx OLLAMA_SCHED_SPREAD 1

        setx OLLAMA_MAX_LOADED_MODELS 1 /m
        setx OLLAMA_MAX_LOADED_MODELS 1

        [[ "$compute_agenticServer" != "true" ]] && setx OLLAMA_GPU_OVERHEAD 603979776 /m
        [[ "$compute_agenticServer" != "true" ]] && setx OLLAMA_GPU_OVERHEAD 603979776
    fi
    if _if_cygwin && ! ( [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--6pCore_8eCore' ]] )
    then
        #setx OLLAMA_CONTEXT_LENGTH 32768 /m
        #setx OLLAMA_CONTEXT_LENGTH 32768

        setx OLLAMA_FLASH_ATTENTION 1 /m
        #setx OLLAMA_KV_CACHE_TYPE q8_0 /m
        _if_virtuoso_KV_CACHE_TYPE && setx OLLAMA_KV_CACHE_TYPE q8_0 /m
        ! _if_virtuoso_KV_CACHE_TYPE && setx OLLAMA_KV_CACHE_TYPE q4_0 /m
        setx OLLAMA_NEW_ENGINE true /m
        setx OLLAMA_NOHISTORY true /m
        setx OLLAMA_NUM_PARALLEL 1 /m
        [[ "$compute_agenticServer" != "true" ]] && setx OLLAMA_SCHED_SPREAD 1 /m

        setx OLLAMA_FLASH_ATTENTION 1
        #setx OLLAMA_KV_CACHE_TYPE q8_0
        _if_virtuoso_KV_CACHE_TYPE && setx OLLAMA_KV_CACHE_TYPE q8_0
        ! _if_virtuoso_KV_CACHE_TYPE && setx OLLAMA_KV_CACHE_TYPE q4_0
        setx OLLAMA_NEW_ENGINE true
        setx OLLAMA_NOHISTORY true
        setx OLLAMA_NUM_PARALLEL 1
        [[ "$compute_agenticServer" != "true" ]] && setx OLLAMA_SCHED_SPREAD 1

        setx OLLAMA_MAX_LOADED_MODELS 1 /m
        setx OLLAMA_MAX_LOADED_MODELS 1

        [[ "$compute_agenticServer" != "true" ]] && setx OLLAMA_GPU_OVERHEAD 603979776 /m
        [[ "$compute_agenticServer" != "true" ]] && setx OLLAMA_GPU_OVERHEAD 603979776
    fi

    if ! _if_cygwin && ( [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--6pCore_8eCore' ]] )
    then
        sudo -n mkdir -p /etc/systemd/system/ollama.service.d

        ( echo '[Service]
        Environment="OLLAMA_NUM_THREADS=18"
        Environment="OLLAMA_FLASH_ATTENTION=1"
        Environment="OLLAMA_KV_CACHE_TYPE="'"$current_KV_CACHE_TYPE"'"
        Environment="OLLAMA_NEW_ENGINE=true"
        Environment="OLLAMA_NOHISTORY=true"
        Environment="OLLAMA_NUM_PARALLEL=1"
        Environment="OLLAMA_MAX_LOADED_MODELS=1"'
        [[ "$compute_agenticServer" != "true" ]] && echo '        Environment="OLLAMA_SCHED_SPREAD=1"'
        [[ "$compute_agenticServer" != "true" ]] && echo '        Environment="OLLAMA_GPU_OVERHEAD=603979776"'
        ) | sudo -n tee /etc/systemd/system/ollama.service.d/override.conf > /dev/null

        sudo -n chmod 755 /etc/systemd/system/ollama.service.d
        sudo -n chmod 644 /etc/systemd/system/ollama.service.d/override.conf
    fi
    if ( [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--6pCore_8eCore' ]] )
    then
        ( echo '        export OLLAMA_NUM_THREADS=18
        export OLLAMA_FLASH_ATTENTION=1
        export OLLAMA_KV_CACHE_TYPE="'"$current_KV_CACHE_TYPE"'"
        export OLLAMA_NEW_ENGINE=true
        export OLLAMA_NOHISTORY=true
        export OLLAMA_NUM_PARALLEL=1
        export OLLAMA_MAX_LOADED_MODELS=1'
        [[ "$compute_agenticServer" != "true" ]] && echo '        export OLLAMA_SCHED_SPREAD=1'
        [[ "$compute_agenticServer" != "true" ]] && echo '        export OLLAMA_GPU_OVERHEAD=603979776'
        ) > "$virtuosoHookFile"
    fi
    if ! _if_cygwin && ! ( [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--6pCore_8eCore' ]] )
    then
        sudo -n mkdir -p /etc/systemd/system/ollama.service.d

        ( echo '[Service]
        Environment="OLLAMA_FLASH_ATTENTION=1"
        Environment="OLLAMA_KV_CACHE_TYPE="'"$current_KV_CACHE_TYPE"'"
        Environment="OLLAMA_NEW_ENGINE=true"
        Environment="OLLAMA_NOHISTORY=true"
        Environment="OLLAMA_NUM_PARALLEL=1"
        Environment="OLLAMA_MAX_LOADED_MODELS=1"'
        [[ "$compute_agenticServer" != "true" ]] && echo '        Environment="OLLAMA_SCHED_SPREAD=1"'
        [[ "$compute_agenticServer" != "true" ]] && echo '        Environment="OLLAMA_GPU_OVERHEAD=603979776"'
        ) | sudo -n tee /etc/systemd/system/ollama.service.d/override.conf > /dev/null

        sudo -n chmod 755 /etc/systemd/system/ollama.service.d
        sudo -n chmod 644 /etc/systemd/system/ollama.service.d/override.conf
    fi
    if ! ( [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--6pCore_8eCore' ]] )
    then
        ( echo '        export OLLAMA_FLASH_ATTENTION=1
        export OLLAMA_KV_CACHE_TYPE="'"$current_KV_CACHE_TYPE"'"
        export OLLAMA_NEW_ENGINE=true
        export OLLAMA_NOHISTORY=true
        export OLLAMA_NUM_PARALLEL=1
        export OLLAMA_MAX_LOADED_MODELS=1'
        [[ "$compute_agenticServer" != "true" ]] && echo '        export OLLAMA_SCHED_SPREAD=1'
        [[ "$compute_agenticServer" != "true" ]] && echo '        export OLLAMA_GPU_OVERHEAD=603979776'
        ) > "$virtuosoHookFile"
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
    cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_fetch_local.bat
    cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_fetch_local_large.bat

    cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_facade.bat
    cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_setupVirtuoso.bat
}


