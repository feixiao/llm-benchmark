#!/bin/bash

# ollama 
# export T_LLM_URL="http://localhost:11434/v1"
# export T_MODEL_NAME="deepseek-r1:70b"
# export T_API_KEY="ollama"

#lm studio
export T_LLM_URL="http://localhost:1234/v1"
export T_MODEL_NAME="deepseek/deepseek-r1-distill-qwen-32b"
export T_API_KEY="lmstudio"
python run_benchmarks.py \
    --llm_url ${T_LLM_URL} \
    --api_key ${T_API_KEY} \
    --model ${T_MODEL_NAME} \
    --use_long_context
