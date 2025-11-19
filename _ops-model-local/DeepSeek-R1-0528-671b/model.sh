
# https://huggingface.co/deepseek-ai/DeepSeek-R1-0528
# https://huggingface.co/unsloth/DeepSeek-R1-0528-GGUF
# https://docs.unsloth.ai/models/tutorials-how-to-fine-tune-and-run-llms/deepseek-r1-0528-how-to-run-locally#run-in-ollama-open-webui
# 'License: mit'
_model-DeepSeek-R1-0528-671b() {
    _messageNormal "${FUNCNAME[0]}"
    

    local current_fileDir='DeepSeek-R1-0528-671b'

    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt


    local current_file_concatenated='DeepSeek-R1-0528-UD-IQ2_XXS.gguf'
    local current_sha256_concatenated='38c524ed76a60173485340d3e6e49055b199129ce78984ee153731c2852d9c19'
    local current_fileDir='DeepSeek-R1-0528-671b'
    local currentIteration=0
    if [[ ! -e "$scriptBundle"/ai_models/"$current_fileDir"/"$current_file_concatenated" ]] || ( [[ "$current_sha256_concatenated" != "" ]] && [[ $(sha256sum "$scriptBundle"/ai_models/"$current_fileDir"/"$current_file_concatenated" | head -c 64 | tr -dc 'a-fA-F0-9' 2>/dev/null) != $(echo "$current_sha256_concatenated" | head -c 64 | tr -dc 'a-fA-F0-9' 2>/dev/null) ]] )
    then

        local current_file='DeepSeek-R1-0528-UD-IQ2_XXS-00001-of-00005.gguf'
        local current_URL='https://huggingface.co/unsloth/DeepSeek-R1-0528-GGUF/resolve/main/UD-IQ2_XXS/DeepSeek-R1-0528-UD-IQ2_XXS-00001-of-00005.gguf'
        local current_sha256='f22d766e3743920db0bc5c4eafb879d54d599fc3917b500616739b4f5352714c'

        ! _get_downloadModel-file-HuggingFace && _messageFAIL
        true

        local current_file='DeepSeek-R1-0528-UD-IQ2_XXS-00002-of-00005.gguf'
        local current_URL='https://huggingface.co/unsloth/DeepSeek-R1-0528-GGUF/resolve/main/UD-IQ2_XXS/DeepSeek-R1-0528-UD-IQ2_XXS-00002-of-00005.gguf'
        local current_sha256='b032e8a2c4b49b3639f7a5f51c97fe45dba496baa4eedb3d8aa3e353c6abcc57'

        ! _get_downloadModel-file-HuggingFace && _messageFAIL
        true

        local current_file='DeepSeek-R1-0528-UD-IQ2_XXS-00003-of-00005.gguf'
        local current_URL='https://huggingface.co/unsloth/DeepSeek-R1-0528-GGUF/resolve/main/UD-IQ2_XXS/DeepSeek-R1-0528-UD-IQ2_XXS-00003-of-00005.gguf'
        local current_sha256='01be19abc3ac006ae213445ffa25ddb29acf01808db1de39a2dd39dddb1f7421'

        ! _get_downloadModel-file-HuggingFace && _messageFAIL
        true

        local current_file='DeepSeek-R1-0528-UD-IQ2_XXS-00004-of-00005.gguf'
        local current_URL='https://huggingface.co/unsloth/DeepSeek-R1-0528-GGUF/resolve/main/UD-IQ2_XXS/DeepSeek-R1-0528-UD-IQ2_XXS-00004-of-00005.gguf'
        local current_sha256='1fd6abe7dc40792f52784daed9f15a1b6d8ff903b84329625e5251c801e38a8b'

        ! _get_downloadModel-file-HuggingFace && _messageFAIL
        true

        local current_file='DeepSeek-R1-0528-UD-IQ2_XXS-00005-of-00005.gguf'
        local current_URL='https://huggingface.co/unsloth/DeepSeek-R1-0528-GGUF/resolve/main/UD-IQ2_XXS/DeepSeek-R1-0528-UD-IQ2_XXS-00005-of-00005.gguf'
        local current_sha256='669b49c65e55261465b234d90f8371de2c64ca8e028871edf05cd1ae807fb712'

        ! _get_downloadModel-file-HuggingFace && _messageFAIL
        true

        cat "$scriptBundle"/ai_models/"$current_fileDir"/DeepSeek-R1-0528-UD-IQ2_XXS-00001-of-00005.gguf "$scriptBundle"/ai_models/"$current_fileDir"/DeepSeek-R1-0528-UD-IQ2_XXS-00002-of-00005.gguf "$scriptBundle"/ai_models/"$current_fileDir"/DeepSeek-R1-0528-UD-IQ2_XXS-00003-of-00005.gguf "$scriptBundle"/ai_models/"$current_fileDir"/DeepSeek-R1-0528-UD-IQ2_XXS-00004-of-00005.gguf "$scriptBundle"/ai_models/"$current_fileDir"/DeepSeek-R1-0528-UD-IQ2_XXS-00005-of-00005.gguf > "$scriptBundle"/ai_models/"$current_fileDir"/DeepSeek-R1-0528-UD-IQ2_XXS.gguf

    else

        _messagePlain_good 'good: '"$current_file_concatenated"

    fi

    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/DeepSeek-R1-0528-UD-IQ2_XXS-00001-of-00005.gguf
    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/DeepSeek-R1-0528-UD-IQ2_XXS-00002-of-00005.gguf
    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/DeepSeek-R1-0528-UD-IQ2_XXS-00003-of-00005.gguf
    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/DeepSeek-R1-0528-UD-IQ2_XXS-00004-of-00005.gguf
    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/DeepSeek-R1-0528-UD-IQ2_XXS-00005-of-00005.gguf


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
        ollama create DeepSeek-R1-0528-671b-virtuoso -f Modelfile
        currentExitStatus="$?"

        echo "FROM DeepSeek-R1-0528-671b-virtuoso:latest" > Modelfile-128k
        echo "PARAMETER num_ctx 131072" >> Modelfile-128k
        echo "PARAMETER num_keep 131072" >> Modelfile-128k
        echo "PARAMETER num_predict 24576" >> Modelfile-128k
        ollama create DeepSeek-R1-0528-671b-128k-virtuoso -f Modelfile-128k

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


_experiment-DeepSeek-R1-0528-671b() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "DeepSeek-R1-0528-671b-virtuoso",
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



