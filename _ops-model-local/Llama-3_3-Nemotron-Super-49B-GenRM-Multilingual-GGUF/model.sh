





# https://huggingface.co/nvidia/Llama-3_3-Nemotron-Super-49B-v1
# https://huggingface.co/bartowski/nvidia_Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-GGUF
_model-Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual() {
    _messageNormal "${FUNCNAME[0]}"


    local current_file='nvidia_Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-IQ2_XXS.gguf'
    local current_URL='https://huggingface.co/bartowski/nvidia_Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-GGUF/resolve/main/nvidia_Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-IQ2_XXS.gguf'
    local current_sha256='d7737e1ca71e309517cd086536a0dbca2db58e6c6e2b80062c0cc7a5b1e46a02'
    local current_fileDir='Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual'

    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    cat "$scriptAbsoluteFolder"/license-llama/Notice.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    cat "$scriptAbsoluteFolder"/license-nvidia/Notice.txt >> "$scriptBundle"/ai_models/"$current_fileDir"/Notice.txt

    ! _get_downloadModel-file-HuggingFace && _messageFAIL
    true


    rm -f "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile
    
    cat "$currentModelConfigDir"/Modelfile-003-definition-compact >> "$scriptBundle"/ai_models/"$current_fileDir"/Modelfile

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

https://huggingface.co/bartowski/nvidia_Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-GGUF
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
        ollama create Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-virtuoso -f Modelfile
    )
    
}


_experiment-Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-virtuoso",
        "messages": [
        { "role": "user", "content": "Tell me about Canada." },
        { "role": "assistant", "content": "Here is a brief fact about Canada:\n\nCanada is home to more lakes than any other country in the world, with over 2 million lakes covering about 8 % of its land area." },
        { "role": "assistant", "content": "Here is a brief fact about Canada:\n\nCanada has more lakes than any other country in the world, with over 2 million lakes covering about 8% of its land area." }
        ],
        "stream": false,
        "temperature": 0.04,
        "top_k": 7,
        "max_tokens": 2048
    }'
    echo
}



