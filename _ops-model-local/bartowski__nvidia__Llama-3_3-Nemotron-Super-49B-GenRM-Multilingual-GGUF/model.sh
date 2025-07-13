





# https://huggingface.co/nvidia/Llama-3_3-Nemotron-Super-49B-v1
# https://huggingface.co/bartowski/nvidia_Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-GGUF
_model-bartowski__nvidia__Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-GGUF() {
    _messageNormal "${FUNCNAME[0]}"


    local current_file='nvidia_Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-IQ2_XXS.gguf'
    local current_URL='https://huggingface.co/bartowski/nvidia_Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-GGUF/resolve/main/nvidia_Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-IQ2_XXS.gguf'
    local current_sha256='d7737e1ca71e309517cd086536a0dbca2db58e6c6e2b80062c0cc7a5b1e46a02'
    local current_fileDir='Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-GGUF'

    mkdir -p "$scriptBundle"/ai_models/"$current_fileDir"
    local currentModelConfigDir=$(_getAbsoluteFolder "${BASH_SOURCE[0]}")
    cp -f "$currentModelConfigDir"/* "$scriptBundle"/ai_models/"$current_fileDir"/

    ! _get_downloadModel-file-HuggingFace && return 1
    true
    
    
}



