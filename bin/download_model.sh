docker compose exec llama-swap sh -lc \
  'llama-server --host 127.0.0.1 --port 18080 -hf unsloth/Qwen3.6-35B-A3B-MTP-GGUF:UD-Q4_K_XL'
