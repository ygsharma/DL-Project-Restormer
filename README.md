# Restormer: Efficient Transformer for High-Resolution Image Denoising


## Package dependencies
The project is built with PyTorch 1.9.0, Python3.7, CUDA11.1. For package dependencies, you can install them by:
```bash
pip install -r requirements.txt
```

## Results from the best trained model
- Restormer_B: [SIDD](https://cloud.neuronsquare.com/s/6yEHYTRxDAmX2er)

## Test Results from trained model
- Restormer_Test: [DND](https://cloud.neuronsquare.com/s/xA9QbCMFTHxLrgg)


## Data preparation for Denoising 
For training data of SIDD, you can download the SIDD-Medium dataset from the [official url](https://www.eecs.yorku.ca/~kamel/sidd/dataset.php).
Then generate training patches for training by:
```python
python3 generate_patches_SIDD.py --src_dir ../SIDD_Medium_Srgb/Data --tar_dir ../datasets/denoising/sidd/train
```

## Training on SIDD Denoising
To train on SIDD, you can begin the training by:

```sh
sh script/train_denoise.sh
```

## Evaluation
To evaluate, you can run:

```sh
sh script/test.sh
```

## Computational Cost

We provide a simple script to calculate the flops by ourselves, a simple script has been added in `model.py`. You can change the configuration and run:

```python
python3 model.py
```


