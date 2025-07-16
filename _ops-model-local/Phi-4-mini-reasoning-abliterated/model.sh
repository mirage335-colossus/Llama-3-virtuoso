





# https://huggingface.co/microsoft/Phi-4-mini-reasoning
_model-Phi-4-mini-reasoning-abliterated() {
    _messageNormal "${FUNCNAME[0]}"

    # https://huggingface.co/microsoft/Phi-4-mini-reasoning
    # https://huggingface.co/microsoft/Phi-4-mini-reasoning/blob/main/LICENSE
    # https://huggingface.co/microsoft/Phi-4-mini-reasoning/blob/main/NOTICE.md

    # https://huggingface.co/huihui-ai/Phi-4-mini-reasoning-abliterated
    # https://huggingface.co/huihui-ai/Phi-4-mini-reasoning-abliterated/blob/main/LICENSE
    # https://huggingface.co/huihui-ai/Phi-4-mini-reasoning-abliterated/blob/main/NOTICE.md

    # https://huggingface.co/Triangle104/Phi-4-mini-reasoning-abliterated-Q8_0-GGUF
    #  'License: mit'

    # https://huggingface.co/bartowski/microsoft_Phi-4-reasoning-plus-GGUF
    # https://huggingface.co/bartowski/microsoft_Phi-4-reasoning-plus-GGUF/tree/main
    #  'License: mit'

    # https://huggingface.co/Triangle104/Phi-4-mini-reasoning-abliterated-Q8_0-GGUF/blob/main/phi-4-mini-reasoning-abliterated-q8_0.gguf
    local current_file='phi-4-mini-reasoning-abliterated-q8_0.gguf'
    local current_URL='https://huggingface.co/Triangle104/Phi-4-mini-reasoning-abliterated-Q8_0-GGUF/resolve/main/phi-4-mini-reasoning-abliterated-q8_0.gguf'
    local current_sha256='3de0686c825109b8109e9ab80a25eb97f1990847a674172aaa565d3756b8282a'
    local current_fileDir='Phi-4-mini-reasoning-abliterated'

    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    cat "$scriptAbsoluteFolder"/license-llama/Notice.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    cat "$scriptAbsoluteFolder"/license-nvidia/Notice.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

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
    echo >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$currentModelConfigDir"/NOTICE.md >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo '"""' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile


    [[ "$OLLAMA_HOST" == "" ]] && _service_ollama || _service_ollama_augment

    (
        _messagePlain_nominal "${FUNCNAME[0]}"': ollama create'
        cd "$scriptBundle"/ai_models/"$current_fileDir"
        ollama create Phi-4-mini-reasoning-abliterated-virtuoso -f Modelfile
    )
    
}


_experiment-Phi-4-mini-reasoning() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Phi-4-mini-reasoning-abliterated-virtuoso",
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



