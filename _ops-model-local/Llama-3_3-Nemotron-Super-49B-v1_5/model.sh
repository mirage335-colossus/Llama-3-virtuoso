





# https://huggingface.co/nvidia/Llama-3_3-Nemotron-Super-49B-v1_5

_model-Llama-3_3-Nemotron-Super-49B-v1_5() {
    _messageNormal "${FUNCNAME[0]}"


    local current_fileDir='Llama-3_3-Nemotron-Super-49B-v1_5'


    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    cat "$scriptAbsoluteFolder"/license-llama/Notice.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    cat "$scriptAbsoluteFolder"/license-nvidia/Notice.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt








    local current_OLLAMA_MODELS="$scriptBundle"/ai_models/"$current_fileDir"/OLLAMA_MODELS
    mkdir -p "$current_OLLAMA_MODELS"

    local current_origModelInstalled='false'

    if _if_cygwin
    then
        _messagePlain_nominal '(cygwin)' ollama pull hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF:IQ2_XXS

        local current_user_OLLAMA_MODELS=$(cygpath -u "$USERPROFILE")
        current_user_OLLAMA_MODELS="$current_user_OLLAMA_MODELS"/.ollama/models

        [[ -e "$current_user_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/IQ2_XXS ]] && current_origModelInstalled='true' && echo current_origModelInstalled

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

        ollama ls hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF:IQ2_XXS
        
        _messagePlain_probe 'while... ollama pull'
        local currentIteration=0
        #while ( [[ ! -e "$current_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/IQ2_XXS ]] || [[ ! -e "$current_OLLAMA_MODELS"/get_Llama-3_3-Nemotron-Super-49B-v1_5 ]] ) && ( ! env OLLAMA_MODELS="$current_OLLAMA_MODELS_msw" ollama pull hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF:IQ2_XXS || ! env OLLAMA_MODELS="$current_OLLAMA_MODELS_msw" ollama ls | grep -i 'hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF:IQ2_XXS' )
        while ( [[ ! -e "$current_user_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/IQ2_XXS ]] || [[ ! -e "$current_user_OLLAMA_MODELS"/get_Llama-3_3-Nemotron-Super-49B-v1_5 ]] ) && ( ! ollama pull hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF:IQ2_XXS || ! ollama ls | grep -i 'hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF:IQ2_XXS' )
        do
            _messagePlain_probe 'iteration'
            (( currentIteration++ ))

            if [[ "$currentIteration" -gt 3 ]]
            then
                _messagePlain_bad 'bad: ''ollama pull hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF:IQ2_XXS'
                _messageFAIL
                #return 1
            fi

            # Deliberately prefer always delay to show previous messages, unless download program (ie. 'aria2c') is sufficiently quiet. 
            sleep 1
            [[ "$currentIteration" -gt 0 ]] && sleep 1
        done
        [[ -e "$current_user_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/IQ2_XXS ]] && mkdir -p "$current_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF && rsync --size-only -r -v "$current_user_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/. "$current_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/.
        [[ ! -e "$current_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/IQ2_XXS ]] && _messageFAIL

        local currentBlobHash
        grep -aoE 'sha256:[0-9a-f]{64}' "$current_user_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/IQ2_XXS | tr ':' '-' | while IFS= read -r currentBlobHash; do
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
        ! ollama ls | grep -i 'hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF:IQ2_XXS' && _messageFAIL
    fi


    # WARNING: May be untested.
    if ! _if_cygwin
    then
        _messagePlain_nominal ollama pull hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF:IQ2_XXS

        local current_user_OLLAMA_MODELS
        [[ -e "$HOME"/.ollama/models ]] && current_user_OLLAMA_MODELS="$HOME"/.ollama/models
        [[ -e /var/lib/ollama/.ollama ]] && current_user_OLLAMA_MODELS=/var/lib/ollama/.ollama/models
        [[ -e /usr/share/ollama/.ollama ]] && current_user_OLLAMA_MODELS=/usr/share/ollama/.ollama/models
        [[ "$current_user_OLLAMA_MODELS" == "" ]] && _messagePlain_bad 'bad: ollama models dir' && _messageFAIL
        sudo -n -u ollama mkdir -p "$current_user_OLLAMA_MODELS"
        mkdir -p "$current_user_OLLAMA_MODELS"

        [[ -e "$current_user_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/IQ2_XXS ]] && current_origModelInstalled='true' && echo current_origModelInstalled

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
        #while ( [[ ! -e "$current_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/IQ2_XXS ]] || [[ ! -e "$current_OLLAMA_MODELS"/get_Llama-3_3-Nemotron-Super-49B-v1_5 ]] ) && ( ! env OLLAMA_MODELS="$current_OLLAMA_MODELS" ollama pull hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF:IQ2_XXS || ! env OLLAMA_MODELS="$current_OLLAMA_MODELS" ollama ls | grep -i 'hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF:IQ2_XXS' )
        while ( [[ ! -e "$current_user_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/IQ2_XXS ]] || [[ ! -e "$current_user_OLLAMA_MODELS"/get_Llama-3_3-Nemotron-Super-49B-v1_5 ]] ) && ( ! ollama pull hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF:IQ2_XXS || ! ollama ls | grep -i 'hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF:IQ2_XXS' )
        do
            _messagePlain_probe 'iteration'
            (( currentIteration++ ))

            if [[ "$currentIteration" -gt 3 ]]
            then
                _messagePlain_bad 'bad: ''ollama pull hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF:IQ2_XXS'
                _messageFAIL
                #return 1
            fi

            # Deliberately prefer always delay to show previous messages, unless download program (ie. 'aria2c') is sufficiently quiet. 
            sleep 1
            [[ "$currentIteration" -gt 0 ]] && sleep 1
        done
        [[ -e "$current_user_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/IQ2_XXS ]] && mkdir -p "$current_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF && rsync --size-only -r -v "$current_user_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/. "$current_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/.
        [[ ! -e "$current_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/IQ2_XXS ]] && _messageFAIL

        local currentBlobHash
        grep -aoE 'sha256:[0-9a-f]{64}' "$current_user_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/IQ2_XXS | tr ':' '-' | while IFS= read -r currentBlobHash; do
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
        ! ollama ls | grep -i 'hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF:IQ2_XXS' && _messageFAIL
    fi
    









    ##local current_file='Llama-3_3-Nemotron-Super-49B-v1-IQ2_XXS.gguf'
    ##local current_URL='https://huggingface.co/bartowski/nvidia_Llama-3_3-Nemotron-Super-49B-v1-GGUF/resolve/main/nvidia_Llama-3_3-Nemotron-Super-49B-v1-IQ2_XXS.gguf'
    ##local current_sha256='e8d0c0186ba2e3deb914d17a23caf8e21a5ec885ccf4ccb54101ccbcd95c8a36'
    ##local current_fileDir='Llama-3_3-Nemotron-Super-49B-v1'
    
    ##local current_file='nvidia_Llama-3_3-Nemotron-Super-49B-v1_5-IQ2_XXS.gguf'
    ##local current_URL='https://huggingface.co/bartowski/nvidia_Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/resolve/main/nvidia_Llama-3_3-Nemotron-Super-49B-v1_5-IQ2_XXS.gguf'
    ##local current_sha256='a4f8438e649c1f7215632731fcc59dbdab2530dfe1b38b7102cac9089d6474a3'
    ##local current_fileDir='Llama-3_3-Nemotron-Super-49B-v1_5'
    
    #local current_file='Llama-3_3-Nemotron-Super-49B-v1_5-UD-IQ2_XXS.gguf'
    #local current_URL='https://huggingface.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/resolve/main/Llama-3_3-Nemotron-Super-49B-v1_5-UD-IQ2_XXS.gguf'
    #local current_sha256='94340f0a2e67c8167eb6e038338e5baaa70dafaabd0dcbc2daca9c6e011564b7'
    #local current_fileDir='Llama-3_3-Nemotron-Super-49B-v1_5'

    #mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    #local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    #cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    #rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    #cat "$scriptAbsoluteFolder"/license-llama/Notice.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    #cat "$scriptAbsoluteFolder"/license-nvidia/Notice.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    #! _get_downloadModel-file-HuggingFace && _messageFAIL
    #true


    _messagePlain_nominal 'ollama create Llama-3_3-Nemotron-Super-49B-v1_5-virtuoso'

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

    echo 'LICENSE """Built with Llama
Llama 3.3 is licensed under the Llama 3.3 Community License, Copyright © Meta Platforms, Inc. All Rights Reserved.

Licensed by NVIDIA Corporation under the NVIDIA Open Model License

https://www.llama.com/llama3_3/license/
https://www.llama.com/llama3_3/use-policy/

GOVERNING TERMS: Use of this model is governed by the NVIDIA Open Model License . Additional Information: Llama 3.3 Community License Agreement. Built with Llama.
https://www.llama.com/llama3_3/license/
https://www.nvidia.com/en-us/agreements/enterprise-software/nvidia-open-model-license/

https://huggingface.co/meta-llama/Llama-3.3-70B-Instruct
 "Instruction tuned text only models"

https://huggingface.co/nvidia/Llama-3_3-Nemotron-Super-49B-v1_5
 "LLlama-3.3-Nemotron-Super-49B-v1.5 is a significantly upgraded version of Llama-3.3-Nemotron-Super-49B-v1 and is a large language model (LLM) which is a derivative of Meta Llama-3.3-70B-Instruct (AKA the reference model). It is a reasoning model that is post trained for reasoning, human chat preferences, and agentic tasks, such as RAG and tool calling. The model supports a context length of 128K tokens."

https://huggingface.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/blob/main/Llama-3_3-Nemotron-Super-49B-v1_5-UD-IQ2_XXS.gguf
Quantized Model, System Prompt, inherits Llama and NVIDIA licenses, obligations, etc .


' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/'license-nvidia/NVIDIA_Open_Model_License_Agreement-2025-10-24.txt' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo '


' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/'license-nvidia/NVIDIA_Agreements_Trustworthy_AI-2024-06-27.txt' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo '


' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/license-llama/LICENSE-Llama-3.3.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo '

' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/license-llama/USE-POLICY-Llama-3.3.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo '"""' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile


    _messagePlain_probe 'service...'
    [[ "$OLLAMA_HOST" == "" ]] && _service_ollama
    _service_ollama_augment

    (
        _messagePlain_nominal "${FUNCNAME[0]}"': ollama create'
        cd "$scriptBundle"/ai_models/"$current_fileDir"
        dos2unix Modelfile
        ollama create Llama-3_3-Nemotron-Super-49B-v1_5-virtuoso -f Modelfile && [[ "$current_OLLAMA_MODELS" != "" ]] && echo > "$current_user_OLLAMA_MODELS"/get_Llama-3_3-Nemotron-Super-49B-v1_5
        currentExitStatus="$?"

        echo "FROM Llama-3_3-Nemotron-Super-49B-v1_5-virtuoso" > Modelfile-12k
        echo "PARAMETER num_ctx 12288" >> Modelfile-12k
        echo "PARAMETER num_keep 12288" >> Modelfile-12k
        echo "PARAMETER num_predict 24576" >> Modelfile-12k
        echo "PARAMETER num_gpu 999" >> Modelfile-12k
        ollama create Llama-3_3-Nemotron-Super-49B-v1_5-12k-virtuoso -f Modelfile-12k

        # 24GB VRAM, OLLAMA_KV_CACHE_TYPE=q4_0
        # 2x16GB=32GB VRAM, OLLAMA_KV_CACHE_TYPE=q4_0
        #  Other configuration may be necessary.
        # Do NOT expect adding another 16GB VRAM GPu will allow any larger context.
        echo "FROM Llama-3_3-Nemotron-Super-49B-v1_5-virtuoso" > Modelfile-40k
        echo "PARAMETER num_ctx 40960" >> Modelfile-40k
        echo "PARAMETER num_keep 40960" >> Modelfile-40k
        echo "PARAMETER num_predict 49152" >> Modelfile-40k
        echo "PARAMETER num_gpu 999" >> Modelfile-40k
        ollama create Llama-3_3-Nemotron-Super-49B-v1_5-40k-virtuoso -f Modelfile-40k

        # Agentic Server use cases should call this unless 24GB VRAM GPUs definitely are not available.
        #
        # 2x24GB=48GB VRAM, OLLAMA_KV_CACHE_TYPE=q4_0
        #  Other configuration may be necessary.
        # Calling this model guarantees >80k context. Larger context limit, 80k, 96k, 128k, may be given if not known to exceed VRAM limits in the 2x24GB=48GB VRAM situation.
        # As usual, intended to assure input prompt processing happens very quickly, ~300t/s or better, with 2x24GB=48GB VRAM .
        # 81920 , 98304 , 131072
        echo "FROM Llama-3_3-Nemotron-Super-49B-v1_5-virtuoso" > Modelfile-80k
        echo "PARAMETER num_ctx 131072" >> Modelfile-80k
        echo "PARAMETER num_keep 131072" >> Modelfile-80k
        echo "PARAMETER num_predict 49152" >> Modelfile-80k
        echo "PARAMETER num_gpu 999" >> Modelfile-80k
        ollama create Llama-3_3-Nemotron-Super-49B-v1_5-80k-virtuoso -f Modelfile-80k

        # WARNING: Experimental. Minimizes thermal load for indeterminate background processing use cases.
        # May be deprecated.
        echo "FROM Llama-3_3-Nemotron-Super-49B-v1_5-virtuoso" > Modelfile-128k
        echo "PARAMETER num_ctx 131072" >> Modelfile-128k
        echo "PARAMETER num_keep 131072" >> Modelfile-128k
        echo "PARAMETER num_predict 49152" >> Modelfile-128k
        echo "PARAMETER num_gpu 0" >> Modelfile-128k
        ollama create Llama-3_3-Nemotron-Super-49B-v1_5-128k-virtuoso -f Modelfile-128k

        [[ "$?" == "0" ]] && [[ "$currentExitStatus" == "0" ]]
    )

    [[ "$current_origModelInstalled" != "true" ]] && ollama rm hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF:IQ2_XXS
    #rm -f "$current_user_OLLAMA_MODELS"/manifests/hf.co/unsloth/Llama-3_3-Nemotron-Super-49B-v1_5-GGUF/IQ2_XXS
}


_experiment-Llama-3_3-Nemotron-Super-49B-v1_5() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Llama-3_3-Nemotron-Super-49B-v1_5-virtuoso",
        "messages": [
        { "role": "user", "content": "Tell me about Canada." }
        ],
        "stream": false,
        "temperature": 0.04,
        "top_k": 7,
        "max_tokens": 2048
    }'
    echo
}



