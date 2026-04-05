### LMSudito单独测试

```
source .venv/bin/activate
pip install mlx-lm
# 远程
.venv/bin/python -m mlx_lm generate --model mlx-community/Qwen2.5-7B-Instruct-4bit --prompt "你好"

# 本地
export LLM=~/.lmstudio/models/mlx-community/gemma-4-26b-a4b-it-4bit
export LLM=~/.lmstudio/models/mlx-community/gpt-oss-20b-MXFP4-Q8
export LLM=~/.lmstudio/models/mlx-community/Qwen3.5-27B-Claude-4.6-Opus-Distilled-MLX-4bit
.venv/bin/python -m mlx_lm generate --model $LLM --prompt "你好" 
```

```shell
.venv/bin/python -m mlx_lm.server \
  --model $LLM \
  --host 0.0.0.0 \
  --port 8080 \
  --trust-remote-code \
  --log-level DEBUG
```