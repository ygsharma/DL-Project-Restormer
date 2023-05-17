# ### test on SIDD ###
# python ../test/test_sidd.py \
#     --input_dir ../datasets/denoising/sidd/val/ \
#     --result_dir ./results/denoising/sidd/ \
#     --weights ./logs/denoising/sidd/Restormer_B_0706/models/model_best.pth \
#     --gpus 0 

### test on DND ###
# python test/test_dnd.py \
#     --input_dir datasets/denoising/dnd/input/ \
#     --result_dir script/results/denoising/DND/ \
#     --weights script/logs/denoising/sidd/Restormer_B_0706/models/model_best.pth \
#     --gpus 0