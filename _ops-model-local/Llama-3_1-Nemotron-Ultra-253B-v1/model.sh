





# https://huggingface.co/nvidia/Llama-3_1-Nemotron-Ultra-253B-v1
_model-Llama-3_1-Nemotron-Ultra-253B-v1() {
    _messageNormal "${FUNCNAME[0]}"
    local current_fileDir='Llama-3_1-Nemotron-Ultra-253B-v1'

    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    cat "$scriptAbsoluteFolder"/license-llama/Notice.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    cat "$scriptAbsoluteFolder"/license-nvidia/Notice.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt


    local current_file_concatenated='nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS.gguf'
    local current_sha256_concatenated=''
    local current_fileDir='Llama-3_1-Nemotron-Ultra-253B-v1'
    local currentIteration=0
    if [[ ! -e "$scriptBundle"/ai_models/"$current_fileDir"/"$current_file_concatenated" ]] || ( [[ "$current_sha256_concatenated" != "" ]] && [[ $(sha256sum "$scriptBundle"/ai_models/"$current_fileDir"/"$current_file_concatenated" | head -c 64 | tr -dc 'a-fA-F0-9' 2>/dev/null) != $(echo "$current_sha256_concatenated" | head -c 64 | tr -dc 'a-fA-F0-9' 2>/dev/null) ]] )
    then

        local current_file='nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS-00001-of-00002.gguf'
        local current_URL='https://huggingface.co/bartowski/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-GGUF/resolve/main/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS-00001-of-00002.gguf'
        local current_sha256='6af589ad4e9dbf8d798ccf2b5f88b1abf9cea47d804e7b9083db1428520e66b9'
        local current_fileDir='Llama-3_1-Nemotron-Ultra-253B-v1'

        ! _get_downloadModel-file-HuggingFace && _messageFAIL
        true

        local current_file='nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS-00002-of-00002.gguf'
        local current_URL='https://huggingface.co/bartowski/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-GGUF/resolve/main/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS-00002-of-00002.gguf'
        local current_sha256='ee88c90bbba346be6999f7e470b49328e8e5582a3a0289e19ab6d9ff1ad15c6c'
        local current_fileDir='Llama-3_1-Nemotron-Ultra-253B-v1'

        ! _get_downloadModel-file-HuggingFace && _messageFAIL
        true


        #cat "$scriptBundle"/ai_models/"$current_fileDir"/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS-00001-of-00002.gguf "$scriptBundle"/ai_models/"$current_fileDir"/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS-00002-of-00002.gguf > "$scriptBundle"/ai_models/"$current_fileDir"/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS.gguf

        
        rm -f "$scriptBundle"/ai_models/"$current_fileDir"/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS.gguf
        if _if_cygwin
        then
            _userMSW "$scriptLib"/llama_cpp/llama-b7097-bin-win-cpu-x64/llama-gguf-split.exe --merge "$scriptBundle"/ai_models/"$current_fileDir"/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS-00001-of-00002.gguf "$scriptBundle"/ai_models/"$current_fileDir"/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS.gguf
        fi

        if ! _if_cygwin
        then
            chmod ugoa+x "$scriptLib"/llama_cpp/llama-b7097-bin-ubuntu-x64/build/bin/llama-gguf-split
            "$scriptLib"/llama_cpp/llama-b7097-bin-ubuntu-x64/build/bin/llama-gguf-split --merge "$scriptBundle"/ai_models/"$current_fileDir"/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS-00001-of-00002.gguf "$scriptBundle"/ai_models/"$current_fileDir"/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS.gguf
        fi


    else

        _messagePlain_good 'good: '"$current_file_concatenated"

    fi

    #rm -f "$scriptBundle"/ai_models/"$current_fileDir"/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS-00001-of-00002.gguf
    #rm -f "$scriptBundle"/ai_models/"$current_fileDir"/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS-00002-of-00002.gguf


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
Llama 3.1 is licensed under the Llama 3.1 Community License, Copyright © Meta Platforms, Inc. All Rights Reserved.

Licensed by NVIDIA Corporation under the NVIDIA Open Model License

https://www.llama.com/llama3_1/license/
https://www.llama.com/llama3_1/use-policy/

GOVERNING TERMS: Your use of this model is governed by the NVIDIA Open Model License. Additional Information: Llama 3.1 Community License Agreement. Built with Llama.
https://www.llama.com/llama3_1/license/
https://www.nvidia.com/en-us/agreements/enterprise-software/nvidia-open-model-license/

https://huggingface.co/nvidia/Llama-3_1-Nemotron-Ultra-253B-v1
 "Llama-3.1-Nemotron-Ultra-253B-v1 is a large language model (LLM) which is a derivative of Meta Llama-3.1-8B-Instruct (AKA the reference model). It is a reasoning model that is post trained for reasoning, human chat preferences, and tasks, such as RAG and tool calling."

https://huggingface.co/bartowski/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-GGUF/tree/main/nvidia_Llama-3_1-Nemotron-Ultra-253B-v1-IQ2_XXS
Quantized Model, System Prompt, inherits Llama and NVIDIA licenses, obligations, etc .


' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    #cat "$scriptAbsoluteFolder"/'license-nvidia/NVIDIA_Open_Model_License_Agreement-2025-06-16.txt' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/'license-nvidia/NVIDIA_Open_Model_License_Agreement-2025-10-24.txt' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo '


' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/'license-nvidia/NVIDIA_Agreements_Trustworthy_AI-2024-06-27.txt' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo '


' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
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
        ollama create Llama-3_1-Nemotron-Ultra-253B-v1-virtuoso -f Modelfile
    )
    
}


_experiment-Llama-3_1-Nemotron-Ultra-253B-v1() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Llama-3_1-Nemotron-Ultra-253B-v1-virtuoso",
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



