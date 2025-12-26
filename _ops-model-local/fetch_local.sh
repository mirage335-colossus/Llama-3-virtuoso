
# ATTENTION: NOTICE: Essential, dependencies.
_fetch_local() {
    _messageNormal '@ '"${FUNCNAME[0]}"

    _model-Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual

    _model-Llama-3_1-8B-Instruct-abliterated

    _model-Llama-3-NeuralDaredevil-8B-abliterated

    #_model-Llama-3_1-Nemotron-Nano-8B-v1

    _model-NVIDIA-Nemotron-Nano-9B-v2

    _model-Nemotron-3-Nano-30B-A3B

    _model-Llama-3_3-distill-r1-1776-70b-abliterated

    _model-Llama-3_3-Valkyrie-49B-v1
    _model-Llama-3_3-Valkyrie-49B-v1-INSTRUCT

    _model-Llama-3_3-Nemotron-Super-49B-v1_5

    _model-Phi-4-reasoning-plus

    _model-Phi-4-mini-reasoning-abliterated

    _model-Qwen-2_5-VL-7B-Instruct

    _model-Devstral-Small-2507

    _model-Mistral-Small-3_2-24B-Instruct-2506

    _model-Magistral-Small-2506

    _model-gpt-oss-20b

    _model-Qwen3-Coder-30b

    # Changes to KV Cache Quantization, etc, are now less of an issue. Shell script 'augment' functions will now detect if a larger quant 'virtuoso' model exists, as a workaround to get enough accuracy with both the default (smaller included model with more aggressive global settings) and after installation of both larger models and more memory efficient global settings, etc.
    # New 'augment' prompts should still be tested with lower bit quant models, despite that plausible situations will be slightly more robust.
    #
    # These models exist to test especially constrained (ie. low bit quantization) plausible models to ensure such configuration changes as KV Cache Quantization do not break embedded AI use (ie. 'Llama-3-augment' used in place of 'grep', etc, in shell scripts, etc).
    if [[ "$compute_devWorkstation"='true' ]]
    then
        _model-Llama-3-NeuralDaredevil-8B-abliterated-expLowQ
        _model-Llama-3_1-8B-Instruct-abliterated-expLowQ
    fi
}

# ATTENTION: NOTICE: VERY STRONGLY RECOMMENDED.
_fetch_local_large() {
    # gpt-oss-120b
    _model-gpt-oss-120b

    _model-gpt-oss-abliterated-120b
}


# WARNING: Agentic AI necessitates fast input prompt processing, which, even for MoE, especially in the case of DeepSeek-R1, etc, usually requires the model to actually fit in VRAM.
# At least >6-8X consumer GPUs required, with still prohibitive limits on context length for relevant use cases.
#_fetch_local_huge() {
    ## DeepSeek-R1-0528-671b
    ## Llama-3_1-Nemotron-Ultra-253B-v1
    ## Kimi K2 Thinking

    #true
#}

