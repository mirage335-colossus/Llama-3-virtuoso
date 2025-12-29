
# WARNING: You usually do NOT want this AI LLM model. The smaller dense INSTRUCT model is usually preferable.
# Applying more logic and knowledge directly to visual problem solving, or CPU-only inference, may or may not in some situations benefit.
# Benchmarks suggest the 30B Mixture-of-Experts (MoE) model may be less accurate (ie. worse) than much smaller models, but the MoE model may or may not have some extra knowledge, etc, relative to much smaller models, not well tested by the benchmarks.
# https://huggingface.co/Qwen/Qwen3-VL-30B-A3B-Thinking
# https://huggingface.co/Qwen/Qwen3-VL-32B-Thinking

# https://ollama.com/library/qwen3-vl
# https://ollama.com/adelnazmy2002/Qwen3-VL-8B-Instruct
# https://huggingface.co/Qwen/Qwen3-VL-8B-Instruct
# https://huggingface.co/Qwen/Qwen3-VL-30B-A3B-Thinking
# https://huggingface.co/Qwen/Qwen3-VL-32B-Thinking
_model-Qwen-3-VL-32B() {
    _messageNormal "${FUNCNAME[0]}"

    # https://ollama.com/library/qwen3-vl
    # https://ollama.com/adelnazmy2002/Qwen3-VL-8B-Instruct
    # https://huggingface.co/Qwen/Qwen3-VL-8B-Instruct
    # https://huggingface.co/Qwen/Qwen3-VL-30B-A3B-Thinking
    # https://huggingface.co/Qwen/Qwen3-VL-32B-Thinking
    #  'License: apache-2.0'


    local current_fileDir='Qwen-3-VL-32B'


    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt



    local current_OLLAMA_MODELS="$scriptBundle"/ai_models/"$current_fileDir"/OLLAMA_MODELS
    mkdir -p "$current_OLLAMA_MODELS"

    local current_origModelInstalled='false'

    if _if_cygwin
    then
        _messagePlain_nominal '(cygwin)' ollama pull qwen3-vl:32b-thinking-q4_K_M

        local current_user_OLLAMA_MODELS=$(cygpath -u "$USERPROFILE")
        current_user_OLLAMA_MODELS="$current_user_OLLAMA_MODELS"/.ollama/models

        [[ -e "$current_user_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/32b-thinking-q4_K_M ]] && current_origModelInstalled='true' && echo current_origModelInstalled

        local current_OLLAMA_MODELS_msw=$(cygpath -w "$current_OLLAMA_MODELS")

        #taskkill /IM "ollama app.exe" /F
        #taskkill /IM ollama.exe /F
        #sleep 3
        #(
            _messagePlain_probe 'service...'
            #export OLLAMA_MODELS="$current_OLLAMA_MODELS_msw"
            #[[ "$OLLAMA_HOST" == "" ]] && _service_ollama
            #_service_ollama_augment
            #sleep 3
            #env OLLAMA_MODELS="$current_OLLAMA_MODELS_msw" ollama ls

            #echo "$current_OLLAMA_MODELS"
            #echo "$current_OLLAMA_MODELS_msw"
            #exit
        #)

        _messagePlain_probe 'copy...'
        rsync --size-only -r -v "$current_OLLAMA_MODELS"/. "$current_user_OLLAMA_MODELS"/.

        ollama ls qwen3-vl:32b-thinking-q4_K_M
        
        _messagePlain_probe 'while... ollama pull'
        local currentIteration=0
        #while ( [[ ! -e "$current_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/32b-thinking-q4_K_M ]] || [[ ! -e "$current_OLLAMA_MODELS"/get_qwen3vl32b ]] ) && ( ! env OLLAMA_MODELS="$current_OLLAMA_MODELS_msw" ollama pull qwen3-vl:32b-thinking-q4_K_M || ! env OLLAMA_MODELS="$current_OLLAMA_MODELS_msw" ollama ls | grep -i 'qwen3-vl:32b-thinking-q4_K_M' )
        while ( [[ ! -e "$current_user_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/32b-thinking-q4_K_M ]] || [[ ! -e "$current_user_OLLAMA_MODELS"/get_qwen3vl32b ]] ) && ( ! ollama pull qwen3-vl:32b-thinking-q4_K_M || ! ollama ls | grep -i 'qwen3-vl:32b-thinking-q4_K_M' )
        do
            _messagePlain_probe 'iteration'
            (( currentIteration++ ))

            if [[ "$currentIteration" -gt 3 ]]
            then
                _messagePlain_bad 'bad: ''ollama pull qwen3-vl:32b-thinking-q4_K_M'
                _messageFAIL
                #return 1
            fi

            # Deliberately prefer always delay to show previous messages, unless download program (ie. 'aria2c') is sufficiently quiet. 
            sleep 1
            [[ "$currentIteration" -gt 0 ]] && sleep 1
        done
        [[ -e "$current_user_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/32b-thinking-q4_K_M ]] && mkdir -p "$current_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl && rsync --size-only -r -v "$current_user_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/. "$current_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/.
        [[ ! -e "$current_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/32b-thinking-q4_K_M ]] && _messageFAIL

        local currentBlobHash
        grep -aoE 'sha256:[0-9a-f]{64}' "$current_user_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/32b-thinking-q4_K_M | tr ':' '-' | while IFS= read -r currentBlobHash; do
        if [[ -e "$current_user_OLLAMA_MODELS"/blobs/"$currentBlobHash" ]]
        then
            ! mkdir -p "$current_OLLAMA_MODELS"/blobs && _messageFAIL
            rsync --size-only -v "$current_user_OLLAMA_MODELS"/blobs/"$currentBlobHash" "$current_OLLAMA_MODELS"/blobs/
        else
            _messagePlain_warn "warn: missing: blob: ""$current_user_OLLAMA_MODELS"/blobs/"$currentBlobHash"
        fi
        done


        #taskkill /IM "ollama app.exe" /F
        #taskkill /IM ollama.exe /F
        #sleep 3
        
        #_messagePlain_probe 'copy...'
        #cp -r -f "$current_OLLAMA_MODELS"/* "$current_user_OLLAMA_MODELS"/
        #rsync -ax "$current_OLLAMA_MODELS"/. "$current_user_OLLAMA_MODELS"/.
        #rsync --size-only -r -v "$current_OLLAMA_MODELS"/. "$current_user_OLLAMA_MODELS"/.

        
        _messagePlain_probe 'service...'
        (
            #export OLLAMA_MODELS="$current_OLLAMA_MODELS"
            [[ "$OLLAMA_HOST" == "" ]] && _service_ollama
            _service_ollama_augment
            sleep 3
        )
        
        _messagePlain_probe 'ls...'
        ! ollama ls | grep -i 'qwen3-vl:32b-thinking-q4_K_M' && _messageFAIL
    fi


    # WARNING: May be untested.
    if ! _if_cygwin
    then
        _messagePlain_nominal ollama pull qwen3-vl:32b-thinking-q4_K_M

        local current_user_OLLAMA_MODELS
        [[ -e "$HOME"/.ollama/models ]] && current_user_OLLAMA_MODELS="$HOME"/.ollama/models
        [[ -e /var/lib/ollama/.ollama ]] && current_user_OLLAMA_MODELS=/var/lib/ollama/.ollama/models
        [[ -e /usr/share/ollama/.ollama ]] && current_user_OLLAMA_MODELS=/usr/share/ollama/.ollama/models
        [[ "$current_user_OLLAMA_MODELS" == "" ]] && _messagePlain_bad 'bad: ollama models dir' && _messageFAIL
        sudo -n -u ollama mkdir -p "$current_user_OLLAMA_MODELS"
        mkdir -p "$current_user_OLLAMA_MODELS"

        [[ -e "$current_user_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/32b-thinking-q4_K_M ]] && current_origModelInstalled='true' && echo current_origModelInstalled

        #sudo -n systemctl stop ollama
        #sudo -n pkill ollama
        #pkill ollama
        #sleep 1
        #sudo -n pkill -KILL ollama
        #pkill -KILL ollama
        #sleep 3
        #(
            _messagePlain_probe 'service...'
            #export OLLAMA_MODELS="$current_OLLAMA_MODELS"
            #[[ "$OLLAMA_HOST" == "" ]] && _service_ollama
            #_service_ollama_augment
            #sleep 3
            #env OLLAMA_MODELS="$current_OLLAMA_MODELS" ollama ls

            #echo "$current_OLLAMA_MODELS"
            #exit
        #)

        _messagePlain_probe 'copy...'
        sudo -n -u ollama rsync --size-only -r -v "$current_OLLAMA_MODELS"/. "$current_user_OLLAMA_MODELS"/.
        rsync --size-only -r -v "$current_OLLAMA_MODELS"/. "$current_user_OLLAMA_MODELS"/.
        
        _messagePlain_probe 'while... ollama pull'
        local currentIteration=0
        #while ( [[ ! -e "$current_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/32b-thinking-q4_K_M ]] || [[ ! -e "$current_OLLAMA_MODELS"/get_qwen3vl32b ]] ) && ( ! env OLLAMA_MODELS="$current_OLLAMA_MODELS" ollama pull qwen3-vl:32b-thinking-q4_K_M || ! env OLLAMA_MODELS="$current_OLLAMA_MODELS" ollama ls | grep -i 'qwen3-vl:32b-thinking-q4_K_M' )
        while ( [[ ! -e "$current_user_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/32b-thinking-q4_K_M ]] || [[ ! -e "$current_user_OLLAMA_MODELS"/get_qwen3vl32b ]] ) && ( ! ollama pull qwen3-vl:32b-thinking-q4_K_M || ! ollama ls | grep -i 'qwen3-vl:32b-thinking-q4_K_M' )
        do
            _messagePlain_probe 'iteration'
            (( currentIteration++ ))

            if [[ "$currentIteration" -gt 3 ]]
            then
                _messagePlain_bad 'bad: ''ollama pull qwen3-vl:32b-thinking-q4_K_M'
                _messageFAIL
                #return 1
            fi

            # Deliberately prefer always delay to show previous messages, unless download program (ie. 'aria2c') is sufficiently quiet. 
            sleep 1
            [[ "$currentIteration" -gt 0 ]] && sleep 1
        done
        [[ -e "$current_user_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/32b-thinking-q4_K_M ]] && mkdir -p "$current_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl && rsync --size-only -r -v "$current_user_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/. "$current_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/.
        [[ ! -e "$current_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/32b-thinking-q4_K_M ]] && _messageFAIL

        local currentBlobHash
        grep -aoE 'sha256:[0-9a-f]{64}' "$current_user_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/32b-thinking-q4_K_M | tr ':' '-' | while IFS= read -r currentBlobHash; do
        if [[ -e "$current_user_OLLAMA_MODELS"/blobs/"$currentBlobHash" ]]
        then
            ! mkdir -p "$current_OLLAMA_MODELS"/blobs && _messageFAIL
            rsync --size-only -v "$current_user_OLLAMA_MODELS"/blobs/"$currentBlobHash" "$current_OLLAMA_MODELS"/blobs/
        else
            _messagePlain_warn "warn: missing: blob: ""$current_user_OLLAMA_MODELS"/blobs/"$currentBlobHash"
        fi
        done


        #sudo -n systemctl stop ollama
        #sudo -n pkill ollama
        #pkill ollama
        #sleep 1
        #sudo -n pkill -KILL ollama
        #pkill -KILL ollama
        #sleep 3
        
        #_messagePlain_probe 'copy...'
        #cp -r -f "$current_OLLAMA_MODELS"/* "$current_user_OLLAMA_MODELS"/
        #rsync -ax "$current_OLLAMA_MODELS"/. "$current_user_OLLAMA_MODELS"/.
        #rsync --size-only -r -v "$current_OLLAMA_MODELS"/. "$current_user_OLLAMA_MODELS"/.
        
        sudo -n -u ollama rsync --size-only -r -v "$current_OLLAMA_MODELS"/. "$current_user_OLLAMA_MODELS"/.
        rsync --size-only -r -v "$current_OLLAMA_MODELS"/. "$current_user_OLLAMA_MODELS"/.

        
        _messagePlain_probe 'service...'
        (
            #export OLLAMA_MODELS="$current_OLLAMA_MODELS"
            [[ "$OLLAMA_HOST" == "" ]] && _service_ollama
            _service_ollama_augment
            sleep 3
        )
        
        _messagePlain_probe 'ls...'
        ! ollama ls | grep -i 'qwen3-vl:32b-thinking-q4_K_M' && _messageFAIL
    fi
    



    _messagePlain_nominal 'ollama create Qwen-3-VL-32B-virtuoso'

    _messagePlain_probe 'write...'

    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    
    cat "$currentModelConfigDir"/Modelfile-000-definition >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile

    cat "$currentModelConfigDir"/Modelfile-010-abilities >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile

    if [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--6pCore_8eCore' ]]
    then
        cat "$currentModelConfigDir"/Modelfile-100-16GB_14core-11GB_eGPU >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    fi

    if [[ "$AI_acceleration" == '16GB_internal--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--6pCore_8eCore' ]]
    then
        cat "$currentModelConfigDir"/Modelfile-100-16GB_14core >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    fi

    echo -n 'LICENSE """' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$currentModelConfigDir"/LICENSE >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo '"""' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile


    _messagePlain_probe 'service...'
    [[ "$OLLAMA_HOST" == "" ]] && _service_ollama
    _service_ollama_augment

    (
        _messagePlain_nominal "${FUNCNAME[0]}"': ollama create'
        cd "$scriptBundle"/ai_models/"$current_fileDir"
        ollama create Qwen-3-VL-32B-virtuoso -f Modelfile && echo > "$current_user_OLLAMA_MODELS"/get_qwen3vl32b
    )


    [[ "$current_origModelInstalled" != "true" ]] && ollama rm qwen3-vl:32b-thinking-q4_K_M
    #rm -f "$current_user_OLLAMA_MODELS"/manifests/registry.ollama.ai/library/qwen3-vl/32b-thinking-q4_K_M

    true
}


_experiment-Qwen-3-VL-32B() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Qwen-3-VL-32B-virtuoso",
        "messages": [
        { "role": "user", "content": "Tell me about Canada." }
        ],
        "stream": false,
        "temperature": 0.8,
        "top_k": 50,
        "max_tokens": 2048
    }'
    echo
}



