

# https://huggingface.co/mradermacher/r1-1776-distill-llama-70b-abliterated-i1-GGUF
_model-Llama-3_3-distill-r1-1776-70b-abliterated() {
    _messageNormal "${FUNCNAME[0]}"

    local current_file='r1-1776-distill-llama-70b-abliterated.i1-IQ2_XXS.gguf'
    local current_URL='https://huggingface.co/mradermacher/r1-1776-distill-llama-70b-abliterated-i1-GGUF/resolve/main/r1-1776-distill-llama-70b-abliterated.i1-IQ2_XXS.gguf'
    local current_sha256='ede7f23f2e4b214c049e37e1f719550fa115b72feba96502677902e9ba6533f5'
    local current_fileDir='Llama-3_3-distill-r1-1776-70b-abliterated'

    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    cp -f "$scriptAbsoluteFolder"/license-llama/Notice.txt "$scriptBundle"/ai_models/"$current_fileDir"/

    #! _get_downloadModel-file-HuggingFace && _messageFAIL
    true


    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    
    cat "$currentModelConfigDir"/Modelfile-000-definition >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile

    cat "$currentModelConfigDir"/Modelfile-010-abilities >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile

    if [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--12t6pCore_8eCore' ]]
    then
        cat "$currentModelConfigDir"/Modelfile-100-16GB_18core >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    fi

    if [[ "$AI_acceleration" == '16GB_internal--11GB_eGPU--6pCore_8eCore' ]]
    then
        cat "$currentModelConfigDir"/Modelfile-100-16GB_14core >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    fi

    echo -n 'LICENSE """' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$currentModelConfigDir"/License-simultaneous-other.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    
    
    echo >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/license-llama/LICENSE-Llama-3.3.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo '

' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/license-llama/USE-POLICY-Llama-3.3.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo '"""' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile


    [[ "$OLLAMA_HOST" == "" ]] && _service_ollama
    _service_ollama_augment

    (
        _messagePlain_nominal "${FUNCNAME[0]}"': ollama create'
        cd "$scriptBundle"/ai_models/"$current_fileDir"
        ollama create Llama-3_3-distill-r1-1776-70b-abliterated-virtuoso -f Modelfile
    )
    
}


_experiment-Llama-3_3-distill-r1-1776-70b-abliterated() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Llama-3_3-distill-r1-1776-70b-abliterated-virtuoso",
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



