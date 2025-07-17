





# https://huggingface.co/nvidia/Llama-3_3-Nemotron-Super-49B-v1
# https://huggingface.co/TheDrummer/Valkyrie-49B-v1
# https://huggingface.co/bartowski/TheDrummer_Valkyrie-49B-v1-GGUF
_model-Llama-3_3-Valkyrie-49B-v1() {
    _messageNormal "${FUNCNAME[0]}"

    # Q2_K quantization of this model may have some track record, and may be an appropriate choice if I-Matrix quantization shows unreliability, etc.
    # https://huggingface.co/TheDrummer/Valkyrie-49B-v1-GGUF/blob/main/Valkyrie-49B-v1a-Q2_K.gguf

    # May be untested.
    # https://huggingface.co/bartowski/TheDrummer_Valkyrie-49B-v1-GGUF/blob/main/TheDrummer_Valkyrie-49B-v1-IQ2_XXS.gguf
    # https://huggingface.co/bartowski/TheDrummer_Valkyrie-49B-v1-GGUF/resolve/main/TheDrummer_Valkyrie-49B-v1-IQ2_XXS.gguf
    # https://huggingface.co/bartowski/TheDrummer_Valkyrie-49B-v1-GGUF/resolve/main/TheDrummer_Valkyrie-49B-v1-IQ3_XXS.gguf

    local current_file='TheDrummer_Valkyrie-49B-v1-IQ2_XXS.gguf'
    local current_URL='https://huggingface.co/bartowski/TheDrummer_Valkyrie-49B-v1-GGUF/resolve/main/TheDrummer_Valkyrie-49B-v1-IQ2_XXS.gguf'
    local current_sha256='f17f8c7152816a5ef3aabc157113717708575784d625f52884f1c2f811923f52'
    local current_fileDir='Llama-3_3-Valkyrie-49B-v1'

    #local current_file='Valkyrie-49B-v1a-Q2_K.gguf'
    #local current_URL='https://huggingface.co/TheDrummer/Valkyrie-49B-v1-GGUF/resolve/main/Valkyrie-49B-v1a-Q2_K.gguf'
    #local current_sha256='e9b7cc67d88a23f2adb9c787b4d611966efe80fe21a06a717fba5e143db60ac2'
    #local current_fileDir='Llama-3_3-Valkyrie-49B-v1'

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

    echo 'LICENSE """Built with Llama
Llama 3.3 is licensed under the Llama 3.3 Community License, Copyright © Meta Platforms, Inc. All Rights Reserved.

Licensed by NVIDIA Corporation under the NVIDIA Open Model License

https://www.llama.com/llama3_3/license/
https://www.llama.com/llama3_3/use-policy/

GOVERNING TERMS: Use of this model is governed by the NVIDIA Open Model License . Additional Information: Llama 3.3 Community License Agreement. Built with Llama.
https://www.llama.com/llama3_3/license/
https://www.nvidia.com/en-us/agreements/enterprise-software/nvidia-open-model-license/

https://huggingface.co/meta-llama/Llama-3.3-70B-Instruct
 "Instruction tuned text only models"

https://huggingface.co/nvidia/Llama-3_3-Nemotron-Super-49B-v1
 "Llama-3.3-Nemotron-Super-49B-v1 is a large language model (LLM) which is a derivative of Meta Llama-3.3-70B-Instruct (AKA the reference model). It is a reasoning model that is post trained for reasoning, human chat preferences, and tasks, such as RAG and tool calling. The model supports a context length of 128K tokens."

https://huggingface.co/bartowski/TheDrummer_Valkyrie-49B-v1-GGUF
Quantized Model, System Prompt, inherits Llama and NVIDIA licenses, obligations, etc .


' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/'license-nvidia/NVIDIA_Open_Model_License_Agreement-2025-06-16.txt' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo '


' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    cat "$scriptAbsoluteFolder"/'license-nvidia/NVIDIA_Agreements_Trustworthy_AI-2024-06-27.txt' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    echo '


' >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
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
        ollama create Llama-3_3-Valkyrie-49B-v1-virtuoso -f Modelfile
    )
    
}


_experiment-LLlama-3_3-Valkyrie-49B-v1() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Llama-3_3-Valkyrie-49B-v1-virtuoso",
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



