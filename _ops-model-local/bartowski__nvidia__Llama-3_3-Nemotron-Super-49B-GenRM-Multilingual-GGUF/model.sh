





# https://huggingface.co/nvidia/Llama-3_3-Nemotron-Super-49B-v1
# https://huggingface.co/bartowski/nvidia_Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-GGUF
_model-bartowski__nvidia__Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-GGUF() {
    local current_file='nvidia_Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-IQ2_XXS.gguf'
    local current_URL='https://huggingface.co/bartowski/nvidia_Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-GGUF/resolve/main/nvidia_Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-IQ2_XXS.gguf'
    local current_sha256='416f7596e62e03321bd7e66b9644ca3fc4174ca795780fec30c86e657971a433'
    local current_fileDir='Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-GGUF'

    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    #! _get_downloadModel-file-HuggingFace && return 1
    
    
    
}



