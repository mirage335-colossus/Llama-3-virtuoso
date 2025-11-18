





# https://huggingface.co/nvidia/NVIDIA-Nemotron-Nano-9B-v2
_model-NVIDIA-Nemotron-Nano-9B-v2() {
    _messageNormal "${FUNCNAME[0]}"


    local current_file='nvidia_NVIDIA-Nemotron-Nano-9B-v2-Q6_K_L.gguf'
    local current_URL='https://huggingface.co/bartowski/nvidia_NVIDIA-Nemotron-Nano-9B-v2-GGUF/resolve/main/nvidia_NVIDIA-Nemotron-Nano-9B-v2-Q6_K_L.gguf'
    local current_sha256='95ee1b5339df8b4c735564cc2297572c972f181222cced619e726ba428adfc83'
    local current_fileDir='NVIDIA-Nemotron-Nano-9B-v2'

    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    #cat "$scriptAbsoluteFolder"/license-llama/Notice.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    cat "$scriptAbsoluteFolder"/license-nvidia/Notice.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    ! _get_downloadModel-file-HuggingFace && _messageFAIL
    true

    
    #_messagePlain_warn 'warn: DISABLED: Not yet supported by ollama. Maybe use the GGUF file with LMStudio.'
    #return 0


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

    echo 'LICENSE """Licensed by NVIDIA Corporation under the NVIDIA Open Model License

GOVERNING TERMS: Use of this model is governed by the NVIDIA Open Model License Agreement.
https://www.nvidia.com/en-us/agreements/enterprise-software/nvidia-open-model-license/

https://huggingface.co/nvidia/NVIDIA-Nemotron-Nano-9B-v2
https://huggingface.co/nvidia/NVIDIA-Nemotron-Nano-12B-v2


' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/'license-nvidia/NVIDIA_Open_Model_License_Agreement-2025-06-16.txt' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo '


' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    #cat "$scriptAbsoluteFolder"/'license-nvidia/NVIDIA_Agreements_Trustworthy_AI-2024-06-27.txt' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/'license-nvidia/NVIDIA_Open_Model_License_Agreement-2025-10-24.txt' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
if false
then
    echo '


' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/license-llama/LICENSE-Llama-3.1.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo '

' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/license-llama/USE-POLICY-Llama-3.1.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
fi
    echo '"""' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile


    [[ "$OLLAMA_HOST" == "" ]] && _service_ollama
    _service_ollama_augment

    (
        _messagePlain_nominal "${FUNCNAME[0]}"': ollama create'
        cd "$scriptBundle"/ai_models/"$current_fileDir"
        ollama create NVIDIA-Nemotron-Nano-9B-v2-virtuoso -f Modelfile
        currentExitStatus="$?"

        echo "FROM NVIDIA-Nemotron-Nano-9B-v2-virtuoso:latest" > Modelfile-128k
        echo "PARAMETER num_ctx 131072" >> Modelfile-128k
        echo "PARAMETER num_keep 131072" >> Modelfile-128k
        echo "PARAMETER num_predict 131072" >> Modelfile-128k
        echo "PARAMETER num_gpu 999" >> Modelfile-128k
        ollama create NVIDIA-Nemotron-Nano-9B-v2-128k-virtuoso -f Modelfile-128k

        [[ "$?" == "0" ]] && [[ "$currentExitStatus" == "0" ]]
    )
    
}
``

_experiment-NVIDIA-Nemotron-Nano-9B-v2() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "NVIDIA-Nemotron-Nano-9B-v2-virtuoso",
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



