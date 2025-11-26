
# ATTENTION: Create '.env.sh' file to override !
# Functional example. Sets defaults .




export AI_acceleration='4core_8GB_RAM'




export AI_acceleration='24GB_VRAM'

export AI_acceleration='32GB_VRAM'




# RTX 4090 GPU, i9-13900H CPU, HyperThreading disabled.
export AI_acceleration='16GB_internal--6pCore_8eCore'
export AI_acceleration='16GB_internal--11GB_eGPU--6pCore_8eCore'


# Default. RTX 4090 GPU, i9-13900H CPU .
export AI_acceleration='16GB_internal--12t6pCore_8eCore'
export AI_acceleration='16GB_internal--11GB_eGPU--12t6pCore_8eCore'




# CAUTION: NOTICE: 'Qwen-2_5-VL-7B-Instruct-virtuoso, etc', may be completely NON-FUNCTIONAL if KV_CACHE quantization is configured "q4_0".
#  Developer workstations and servers usually do NOT need this. 

# Forces such possibly degrading defaults as q4 KV cache quantization, to ensure the usually merely optional long-context models are usable with reasonable VRAM, and also ensure prompts, etc, are developed to support that.
#export compute_devWorkstation='true'
#[[ "$compute_devWorkstation" == 'true' ]] #&& export compute_agenticServer='true'
#export compute_agenticServer='true'

