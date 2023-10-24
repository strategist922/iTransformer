export CUDA_VISIBLE_DEVICES=1

model_name=Informer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/electricity/ \
  --data_path electricity.csv \
  --model_id ECL_96_96 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 64 \
  --dec_in 64 \
  --c_out 64 \
  --des 'Exp' \
  --channel_independent true \
  --exp_name partial_train \
  --batch_size 8 \
  --d_model 32 \
  --d_ff 64 \
  --itr 1

model_name=iInformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/electricity/ \
  --data_path electricity.csv \
  --model_id ECL_96_96 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 64 \
  --dec_in 64 \
  --c_out 64 \
  --des 'Exp' \
  --exp_name partial_train \
  --itr 1