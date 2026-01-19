#!/bin/bash

#export T_LLM_URL="http://localhost:11434/v1"
#export T_MODEL_NAME="deepseek-r1:14b"
export T_LLM_URL="http://localhost:1234/v1"
export T_MODEL_NAME="deepseek/deepseek-r1-0528-qwen3-8b"
export T_API_KEY="ollama"
python run_benchmarks.py \
    --llm_url ${T_LLM_URL} \
    --api_key ${T_API_KEY} \
    --model ${T_MODEL_NAME} \
    --use_long_context