# python ../train/train_denoise.py --arch Restormer_B --batch_size 5 --gpu '0,1' \
#     --train_ps 128 --train_dir ../datasets/denoising/sidd/train --env _0706 \
#     --val_dir ../datasets/denoising/sidd/val --save_dir ./logs/ \
#     --dataset sidd --warmup --lr 1e-3 --nepoch 10 --weight_decay 0.05 \
#     --optimizer adamw