deepspeed --num_gpus 2 --num_nodes 1 cli/train.py \
    --output_dir /workspace/.cache/models \
    --init_ckpt /pretrained/tinyllama-2-1b \
    --data_path /datasets/qi/ar/task112_asset_simple_sentence_identification.train.jsonl \
    --max_seq_len 128 \
    --train_steps 1000 \
    --eval_steps 10 \
    --save_steps 100 \
    --log_steps 1 \
    --pipe_parallel_size 2 \
    --model_parallel_size 1 \
    --use_flash_attn true \
    --use_fused_ops true \
    --deepspeed_config ./configs/llama.json