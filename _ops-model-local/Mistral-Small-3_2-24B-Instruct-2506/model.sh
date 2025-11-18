
# WARNING: Vision may NOT be supported , due to Q3_K_S quantization (or possibly even smaller) needed for ~16GB VRAM (ie. laptop) compatibility, and apparently not available (apparent ollama regression no longer able to derive Q3_K_S quantization if that was even sufficient).
# STRONGLY RECOMMENDED to instead use 'qwen2_5vl-virtuoso' .


# https://huggingface.co/mistralai/Mistral-Small-3.2-24B-Instruct-2506
# https://ollama.com/library/mistral-small3.2
_model-Mistral-Small-3_2-24B-Instruct-2506() {
    _messageNormal "${FUNCNAME[0]}"

    # https://huggingface.co/mistralai/Mistral-Small-3.2-24B-Instruct-2506
    # https://huggingface.co/unsloth/Mistral-Small-3.2-24B-Instruct-2506-GGUF
    # https://huggingface.co/bartowski/mistralai_Mistral-Small-3.2-24B-Instruct-2506-GGUF
    #  'License: apache-2.0'
    

    local current_fileDir='Mistral-Small-3_2-24B-Instruct-2506'

    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt


    local current_file='Mistral-Small-3.2-24B-Instruct-2506-UD-IQ3_XXS.gguf'
    local current_URL='https://huggingface.co/unsloth/Mistral-Small-3.2-24B-Instruct-2506-GGUF/resolve/main/Mistral-Small-3.2-24B-Instruct-2506-UD-IQ3_XXS.gguf'
    local current_sha256='bc71d2c47a758fac13f3650a9fff7ddf3700bc73363d388c5ec21c0f2233fb3f'
    local current_fileDir='Mistral-Small-3_2-24B-Instruct-2506'

    ! _get_downloadModel-file-HuggingFace && _messageFAIL
    true


    local current_file='mmproj-BF16.gguf'
    local current_URL='https://huggingface.co/unsloth/Mistral-Small-3.2-24B-Instruct-2506-GGUF/resolve/main/mmproj-BF16.gguf'
    local current_sha256='a88b4880ee68c52ad58165e733509db69bdac0adeacd49e06a8f6a0f749ca2ca'
    local current_fileDir='Mistral-Small-3_2-24B-Instruct-2506'

    ! _get_downloadModel-file-HuggingFace && _messageFAIL
    true


    local current_file='mmproj-F16.gguf'
    local current_URL='https://huggingface.co/unsloth/Mistral-Small-3.2-24B-Instruct-2506-GGUF/resolve/main/mmproj-F16.gguf'
    local current_sha256='d6af684ae9136398eaa0b59ea9e0b0b850bb6ac5084f1e8c5cb8f85251825eaf'
    local current_fileDir='Mistral-Small-3_2-24B-Instruct-2506'

    ! _get_downloadModel-file-HuggingFace && _messageFAIL
    true


    local current_file='mmproj-F32.gguf'
    local current_URL='https://huggingface.co/unsloth/Mistral-Small-3.2-24B-Instruct-2506-GGUF/resolve/main/mmproj-F32.gguf'
    local current_sha256='02c8e1a274a44de00c97354d50539e14bf73256491ad5bf4812d1b5719bce09f'
    local current_fileDir='Mistral-Small-3_2-24B-Instruct-2506'

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
        ollama create Mistral-Small-3_2-24B-Instruct-2506-virtuoso -f Modelfile
        currentExitStatus="$?"

        echo "FROM Mistral-Small-3_2-24B-Instruct-2506-virtuoso" > Modelfile-128k
        echo "PARAMETER num_ctx 131072" >> Modelfile-128k
        echo "PARAMETER num_keep 131072" >> Modelfile-128k
        echo "PARAMETER num_predict 24576" >> Modelfile-128k
        echo "PARAMETER num_gpu 999" >> Modelfile-128k
        ollama create Mistral-Small-3_2-24B-Instruct-2506-128k-virtuoso -f Modelfile-128k

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


_experiment-Mistral-Small-3_2-24B-Instruct-2506() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Mistral-Small-3_2-24B-Instruct-2506-virtuoso",
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



