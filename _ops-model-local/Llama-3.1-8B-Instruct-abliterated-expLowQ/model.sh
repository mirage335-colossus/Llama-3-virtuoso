

# https://huggingface.co/mlabonne/Meta-Llama-3.1-8B-Instruct-abliterated-GGUF
_model-Llama-3_1-8B-Instruct-abliterated-expLowQ() {
    _messageNormal "${FUNCNAME[0]}"

    # https://huggingface.co/QuantFactory/NeuralDaredevil-8B-abliterated-GGUF/resolve/main/NeuralDaredevil-8B-abliterated.Q3_K_M.gguf
    # https://huggingface.co/mlabonne/Meta-Llama-3.1-8B-Instruct-abliterated-GGUF/resolve/main/meta-llama-3.1-8b-instruct-abliterated.Q4_K_M.gguf
    #local current_file='meta-llama-3.1-8b-instruct-abliterated.Q3_K_M.gguf'
    #local current_URL='https://huggingface.co/mlabonne/Meta-Llama-3.1-8B-Instruct-abliterated-GGUF/resolve/main/meta-llama-3.1-8b-instruct-abliterated.Q3_K_M.gguf'
    #local current_sha256='c65acbce6dc86ba859472d9594fa54c00252e954dc7d8bdd74cd712a0cecac18'
    #local current_fileDir='Llama-3_1-8B-Instruct-abliterated-expLowQ'

    # Usually actual default to use Q4_K_M .
    local current_file='meta-llama-3.1-8b-instruct-abliterated.Q4_K_M.gguf'
    local current_URL='https://huggingface.co/mlabonne/Meta-Llama-3.1-8B-Instruct-abliterated-GGUF/resolve/main/meta-llama-3.1-8b-instruct-abliterated.Q4_K_M.gguf'
    local current_sha256='c4735f9efaba8eb2c30113291652e3ffe13bf940b675ed61f6be749608b4f266'
    local current_fileDir='Llama-3_1-8B-Instruct-abliterated-expLowQ'

    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    cp -f "$scriptAbsoluteFolder"/license-llama/Notice.txt "$scriptBundle"/ai_models/"$current_fileDir"/

    ! _get_downloadModel-file-HuggingFace && _messageFAIL
    true


    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    
    cat "$currentModelConfigDir"/Modelfile-000-definition >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile

    cat "$currentModelConfigDir"/Modelfile-010-abilities >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile

    #if [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--12t6pCore_8eCore' ]] || [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--6pCore_8eCore' ]]
    #then
        #cat "$currentModelConfigDir"/Modelfile-100-16GB_14core >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    #fi

    echo -n 'LICENSE """' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptBundle"/ai_models/"$current_fileDir"/License-Llama-3.1-8B-Instruct-abliterated.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile

    echo >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    
    cat "$scriptAbsoluteFolder"/license-llama/LICENSE-Llama-3.1.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo '

' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/license-llama/USE-POLICY-Llama-3.1.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile


    echo '"""' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile


    [[ "$OLLAMA_HOST" == "" ]] && _service_ollama
    _service_ollama_augment

    (
        _messagePlain_nominal "${FUNCNAME[0]}"': ollama create'
        cd "$scriptBundle"/ai_models/"$current_fileDir"
        ollama create Llama-3_1-8B-Instruct-abliterated-expLowQ-virtuoso -f Modelfile
        currentExitStatus="$?"

        echo "FROM Llama-3_1-8B-Instruct-abliterated-expLowQ-virtuoso:latest" > Modelfile-128k
        echo "PARAMETER num_ctx 131072" >> Modelfile-128k
        echo "PARAMETER num_keep 131072" >> Modelfile-128k
        echo "PARAMETER num_predict 131072" >> Modelfile-128k
        ollama create Llama-3_1-8B-Instruct-abliterated-expLowQ-128k-virtuoso -f Modelfile-128k
    )
    
}


_experiment-Llama-3_1-8B-Instruct-abliterated-expLowQ() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Llama-3_1-8B-Instruct-abliterated-expLowQ-virtuoso",
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



