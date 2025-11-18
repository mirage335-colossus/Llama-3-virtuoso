
# WARNING: Vision may NOT be supported , due to Q3_K_S quantization (or possibly even smaller) needed for ~16GB VRAM (ie. laptop) compatibility, and apparently not available (apparent ollama regression no longer able to derive Q3_K_S quantization if that was even sufficient).
# STRONGLY RECOMMENDED to instead use 'qwen2_5vl-virtuoso' .


# https://huggingface.co/mistralai/Devstral-Small-2507
# https://ollama.com/library/devstral
_model-Devstral-Small-2507() {
    _messageNormal "${FUNCNAME[0]}"

    # https://huggingface.co/unsloth/Devstral-Small-2507-GGUF
    #  'License: apache-2.0'
    

    local current_fileDir='Devstral-Small-2507'

    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt


    local current_file='Devstral-Small-2507-IQ4_XS.gguf'
    local current_URL='https://huggingface.co/unsloth/Devstral-Small-2507-GGUF/resolve/main/Devstral-Small-2507-IQ4_XS.gguf'
    local current_sha256='47e03bcb00955b2adc4361e567fe7597e4975356c52ab917bc66b8a219b871b5'
    local current_fileDir='Devstral-Small-2507'

    ! _get_downloadModel-file-HuggingFace && _messageFAIL
    true


    # (presumably)
    local current_file='mmproj-BF16.gguf'
    local current_URL='https://huggingface.co/unsloth/Magistral-Small-2506-GGUF/resolve/main/mmproj-BF16.gguf'
    local current_sha256='26c877400a69146fdaf8b9da566a7d8a283e335c9e17c74360b2af30ff15a40a'
    local current_fileDir='Devstral-Small-2507'

    ! _get_downloadModel-file-HuggingFace && _messageFAIL
    true


    local current_file='mmproj-F16.gguf'
    local current_URL='https://huggingface.co/unsloth/Devstral-Small-2507-GGUF/resolve/main/mmproj-F16.gguf'
    local current_sha256='402640c0a0e4e00cdb1e94349adf7c2289acab05fee2b20ee635725ef588f994'
    local current_fileDir='Devstral-Small-2507'

    ! _get_downloadModel-file-HuggingFace && _messageFAIL
    true


    local current_file='mmproj-F32.gguf'
    local current_URL='https://huggingface.co/unsloth/Devstral-Small-2507-GGUF/resolve/main/mmproj-F32.gguf'
    local current_sha256='fe008d4fa9f135369cdfab450e2267212989fc76d533ef67242d1ccbde449efc'
    local current_fileDir='Devstral-Small-2507'

    ! _get_downloadModel-file-HuggingFace && _messageFAIL
    true



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



    [[ "$OLLAMA_HOST" == "" ]] && _service_ollama
    _service_ollama_augment

    (
        _messagePlain_nominal "${FUNCNAME[0]}"': ollama create'
        cd "$scriptBundle"/ai_models/"$current_fileDir"
        #ollama create -q q3_k_s mistral-small3.2:24b-instruct-2506-virtuoso -f Modelfile
        ollama create Devstral-Small-2507-virtuoso -f Modelfile
        currentExitStatus="$?"

        echo "FROM Devstral-Small-2507-virtuoso" > Modelfile-128k
        echo "PARAMETER num_ctx 131072" >> Modelfile-128k
        echo "PARAMETER num_keep 131072" >> Modelfile-128k
        echo "PARAMETER num_predict 24576" >> Modelfile-128k
        echo "PARAMETER num_gpu 999" >> Modelfile-128k
        ollama create Devstral-Small-2507-128k-virtuoso -f Modelfile-128k

        [[ "$?" == "0" ]] && [[ "$currentExitStatus" == "0" ]]
    )


    
	# 16GB VRAM Vision AI model (general purpose - vision encoder to language model)
	# ATTENTION: TODO: More robust convention may be to place the 'g41' suffix after the upstream model name.
	# https://github.com/ollama/ollama/issues/10393
	#ollama pull mistral-small3.1:24b-instruct-2503-fp16
	#echo FROM mistral-small3.1:24b-instruct-2503-fp16 > Modelfile
	#ollama create -q q3_k_s mistral-small3.1:24b-instruct-2503-q3_k_s
	#echo FROM mistral-small3.1:24b-instruct-2503-q3_k_s > Modelfile
	#echo PARAMETER num_gpu 41 >> Modelfile
	#ollama create mistral-small3.1:24b-instruct-2503-g41-q3_k_s
	#ollama run mistral-small3.1:24b-instruct-2503-g41-q3_k_s describe this image ./download.png









    
}


_experiment-Devstral-Small-2507() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Devstral-Small-2507-virtuoso",
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



