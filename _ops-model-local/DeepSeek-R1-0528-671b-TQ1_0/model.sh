
# https://huggingface.co/deepseek-ai/DeepSeek-R1-0528
# https://huggingface.co/unsloth/DeepSeek-R1-0528-GGUF
# https://docs.unsloth.ai/models/tutorials-how-to-fine-tune-and-run-llms/deepseek-r1-0528-how-to-run-locally#run-in-ollama-open-webui
# 'License: mit'
_model-DeepSeek-R1-0528-671b-TQ1_0() {
    _messageNormal "${FUNCNAME[0]}"
    

    local current_fileDir='DeepSeek-R1-0528-671b-TQ1_0'

    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    local current_fileDir='DeepSeek-R1-0528-671b-TQ1_0'

    local current_file='DeepSeek-R1-0528-UD-TQ1_0.gguf'
    local current_URL='https://huggingface.co/unsloth/DeepSeek-R1-0528-GGUF/resolve/main/DeepSeek-R1-0528-UD-TQ1_0.gguf'
    local current_sha256='fe40cbf872192b5cbb7af80d9c33bcb7d52d0d224be09e919249678209ec0c44'

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
        ollama create DeepSeek-R1-0528-671b-TQ1_0-virtuoso -f Modelfile
        currentExitStatus="$?"

        echo "FROM DeepSeek-R1-0528-671b-TQ1_0-virtuoso:latest" > Modelfile-128k
        echo "PARAMETER num_ctx 131072" >> Modelfile-128k
        echo "PARAMETER num_keep 131072" >> Modelfile-128k
        echo "PARAMETER num_predict 24576" >> Modelfile-128k
        ollama create DeepSeek-R1-0528-671b-128k-TQ1_0-virtuoso -f Modelfile-128k

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


_experiment-DeepSeek-R1-0528-671b-TQ1_0() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "DeepSeek-R1-0528-671b-TQ1_0-virtuoso",
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



