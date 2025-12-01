
# https://huggingface.co/Qwen/Qwen3-Coder-30B-A3B-Instruct
# https://huggingface.co/unsloth/Qwen3-Coder-30B-A3B-Instruct-GGUF
# https://docs.unsloth.ai/models/qwen3-coder-how-to-run-locally
# 'License: apache-2.0'
_model-Qwen3-Coder-30B-A3B-Instruct() {
    _messageNormal "${FUNCNAME[0]}"
    

    local current_fileDir='Qwen3-Coder-30B-A3B-Instruct'

    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    local current_fileDir='Qwen3-Coder-30B-A3B-Instruct'

    local current_file='Qwen3-Coder-30B-A3B-Instruct-UD-Q5_K_XL.gguf'
    local current_URL='https://huggingface.co/unsloth/Qwen3-Coder-30B-A3B-Instruct-GGUF/resolve/main/Qwen3-Coder-30B-A3B-Instruct-UD-Q5_K_XL.gguf'
    local current_sha256='eb331a4eee8eb6b5a8eb25f44f96f45c71b8d10f553c0a456190dd590a7ef77d'

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
        ollama create Qwen3-Coder-30B-A3B-Instruct-virtuoso -f Modelfile
        currentExitStatus="$?"

        #echo "FROM Qwen3-Coder-30B-A3B-Instruct-virtuoso:latest" > Modelfile-32k
        #echo "PARAMETER num_ctx 32768" >> Modelfile-32k
        #echo "PARAMETER num_keep 32768" >> Modelfile-32k
        #echo "PARAMETER num_predict 32768" >> Modelfile-32k
        #ollama create Qwen3-Coder-30B-A3B-Instruct-32k-virtuoso -f Modelfile-32k

        echo "FROM Qwen3-Coder-30B-A3B-Instruct-virtuoso:latest" > Modelfile-128k
        echo "PARAMETER num_ctx 131072" >> Modelfile-128k
        echo "PARAMETER num_keep 131072" >> Modelfile-128k
        echo "PARAMETER num_predict 49152" >> Modelfile-128k
        ollama create Qwen3-Coder-30B-A3B-Instruct-128k-virtuoso -f Modelfile-128k

        echo "FROM Qwen3-Coder-30B-A3B-Instruct-virtuoso:latest" > Modelfile-256k
        echo "PARAMETER num_ctx 262144" >> Modelfile-256k
        echo "PARAMETER num_keep 262144" >> Modelfile-256k
        echo "PARAMETER num_predict 49152" >> Modelfile-256k
        ollama create Qwen3-Coder-30B-A3B-Instruct-256k-virtuoso -f Modelfile-256k

        [[ "$?" == "0" ]] && [[ "$currentExitStatus" == "0" ]]
    )

    
}


_experiment-Qwen3-Coder-30B-A3B-Instruct() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Qwen3-Coder-30B-A3B-Instruct-virtuoso",
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



