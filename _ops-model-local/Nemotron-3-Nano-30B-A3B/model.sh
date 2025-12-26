





# https://huggingface.co/nvidia/NVIDIA-Nemotron-3-Nano-30B-A3B-BF16
# https://huggingface.co/unsloth/Nemotron-3-Nano-30B-A3B-GGUF
# https://huggingface.co/unsloth/Nemotron-3-Nano-30B-A3B-GGUF/blob/main/Nemotron-3-Nano-30B-A3B-IQ4_NL.gguf
_model-Nemotron-3-Nano-30B-A3B() {
    _messageNormal "${FUNCNAME[0]}"


    local current_file='Nemotron-3-Nano-30B-A3B-IQ4_NL.gguf'
    local current_URL='https://huggingface.co/unsloth/Nemotron-3-Nano-30B-A3B-GGUF/resolve/main/Nemotron-3-Nano-30B-A3B-IQ4_NL.gguf'
    local current_sha256='8f4b73f1d0e2d0bd810117f3a6198e7c2d1151fdbdbb821c825dbe8872cf6af4'
    local current_fileDir='Nemotron-3-Nano-30B-A3B'

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

    echo 'LICENSE """Licensed by NVIDIA Corporation under the NVIDIA Nemotron Model License.

Governing Terms: Use of this model is governed by the NVIDIA Nemotron Open Model License.
https://www.nvidia.com/en-us/agreements/enterprise-software/nvidia-nemotron-open-model-license/

https://huggingface.co/nvidia/NVIDIA-Nemotron-3-Nano-30B-A3B-BF16


' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    #cat "$scriptAbsoluteFolder"/'license-nvidia/NVIDIA_Open_Model_License_Agreement-2025-06-16.txt' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/'license-nvidia/NVIDIA_Nemotron_Open_Model_License-2025-12-15.txt' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo '


' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/'license-nvidia/NVIDIA_Agreements_Trustworthy_AI-2024-06-27.txt' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    #cat "$scriptAbsoluteFolder"/'license-nvidia/NVIDIA_Open_Model_License_Agreement-2025-10-24.txt' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
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
        ollama create Nemotron-3-Nano-30B-A3B-virtuoso -f Modelfile
        currentExitStatus="$?"

        echo "FROM Nemotron-3-Nano-30B-A3B-virtuoso:latest" > Modelfile-128k
        echo "PARAMETER num_ctx 131072" >> Modelfile-128k
        echo "PARAMETER num_keep 131072" >> Modelfile-128k
        echo "PARAMETER num_predict 131072" >> Modelfile-128k
        echo "PARAMETER num_gpu 999" >> Modelfile-128k
        ollama create Nemotron-3-Nano-30B-A3B-128k-virtuoso -f Modelfile-128k

        echo "FROM Nemotron-3-Nano-30B-A3B-virtuoso:latest" > Modelfile-256k
        echo "PARAMETER num_ctx 262144" >> Modelfile-256k
        echo "PARAMETER num_keep 262144" >> Modelfile-256k
        echo "PARAMETER num_predict 262144" >> Modelfile-256k
        echo "PARAMETER num_gpu 999" >> Modelfile-256k
        ollama create Nemotron-3-Nano-30B-A3B-256k-virtuoso -f Modelfile-256k

        # 1M , 1024k
        echo "FROM Nemotron-3-Nano-30B-A3B-virtuoso:latest" > Modelfile-1M
        echo "PARAMETER num_ctx 1048576" >> Modelfile-1M
        echo "PARAMETER num_keep 1048576" >> Modelfile-1M
        echo "PARAMETER num_predict 1048576" >> Modelfile-1M
        echo "PARAMETER num_gpu 999" >> Modelfile-1M
        ollama create Nemotron-3-Nano-30B-A3B-1M-virtuoso -f Modelfile-1M

        [[ "$?" == "0" ]] && [[ "$currentExitStatus" == "0" ]]
    )
    
}


_experiment-Nemotron-3-Nano-30B-A3B() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Nemotron-3-Nano-30B-A3B-virtuoso",
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



