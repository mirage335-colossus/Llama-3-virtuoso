
# WARNING: Vision may NOT be supported , due to Q3_K_S quantization (or possibly even smaller) needed for ~16GB VRAM (ie. laptop) compatibility, and apparently not available (apparent ollama regression no longer able to derive Q3_K_S quantization if that was even sufficient).
# STRONGLY RECOMMENDED to instead use 'qwen2_5vl-virtuoso' .


# https://huggingface.co/mradermacher/Huihui-gpt-oss-120b-BF16-abliterated-i1-GGUF
# https://huggingface.co/huihui-ai/Huihui-gpt-oss-120b-BF16-abliterated
# https://huggingface.co/unsloth/gpt-oss-120b-BF16
# https://huggingface.co/openai/gpt-oss-120b
# 'License: apache-2.0'
_model-gpt-oss-abliterated-120b() {
    _messageNormal "${FUNCNAME[0]}"
    

    local current_fileDir='gpt-oss-abliterated-120b'

    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt


    local current_file='Huihui-gpt-oss-120b-BF16-abliterated.i1-IQ4_XS.gguf.part1of2'
    local current_URL='https://huggingface.co/mradermacher/Huihui-gpt-oss-120b-BF16-abliterated-i1-GGUF/resolve/main/Huihui-gpt-oss-120b-BF16-abliterated.i1-IQ4_XS.gguf.part1of2'
    local current_sha256='eb52c49c902f905838d06341ada8684621d69227694bc01f87568dea0e699812'
    local current_fileDir='gpt-oss-abliterated-120b'

    ! _get_downloadModel-file-HuggingFace && _messageFAIL
    true

    local current_file='Huihui-gpt-oss-120b-BF16-abliterated.i1-IQ4_XS.gguf.part2of2'
    local current_URL='https://huggingface.co/mradermacher/Huihui-gpt-oss-120b-BF16-abliterated-i1-GGUF/resolve/main/Huihui-gpt-oss-120b-BF16-abliterated.i1-IQ4_XS.gguf.part2of2'
    local current_sha256='79cf43862e04a51d94c993b852c8ff130a1391a7f18b1d0eed0fb021ecfb5686'
    local current_fileDir='gpt-oss-abliterated-120b'

    ! _get_downloadModel-file-HuggingFace && _messageFAIL
    true


    cat "$scriptBundle"/ai_models/"$current_fileDir"/Huihui-gpt-oss-120b-BF16-abliterated.i1-IQ4_XS.gguf.part1of2 "$scriptBundle"/ai_models/"$current_fileDir"/Huihui-gpt-oss-120b-BF16-abliterated.i1-IQ4_XS.gguf.part2of2 > "$scriptBundle"/ai_models/"$current_fileDir"/Huihui-gpt-oss-120b-BF16-abliterated.i1-IQ4_XS.gguf


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
        ollama create gpt-oss-abliterated-120b-virtuoso -f Modelfile
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


_experiment-gpt-oss-abliterated-120b() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "gpt-oss-abliterated-120b-virtuoso",
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



