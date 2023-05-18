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


## Repository Structure
dataset/data_senoise.py contains code for cleaning and loading the training data.

-`/script`: Contains two files train_denoise.sh and test.sh.

`/script/train.sh`: This file contains the code to run the model for training.

`/script/test.sh`: This file contains the code to run the model for testing.

-`train/train_denoise.py`: This file contains the code for training the model on SIDD dataset.

-`test/test_denoise.py`: This file contains the code for testing the model on DND dataset.


-`/warmup_scheduler`: It contains the files which has code for creating different types of dynamic scheduler so that the learning should be stable.


-`model.py`: It contains the model architecture of the Neuran Network.

-`generate_pathches_SIDD.py`: It contains the code for generating the image patches from the dataset for training and testing.

-`losses.py`: It contains different types of losses that can be used for the neural network architecture.



