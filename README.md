# Restormer: Efficient Transformer for High-Resolution Image Denoising
---
*While Convolutional Neural Networks (CNNs) have excelled in learning image priors from large-scale data, Transformers have shown superior performance in natural language and high-level vision tasks. However, Transformers are computationally complex for image restoration tasks with high-resolution images due to their quadratic growth with spatial resolution. To address this issue, the authors propose an efficient Transformer model called Restoration Transformer (Restormer). Restormer incorporates key design modifications in multi-head attention and feed-forward networks to capture long-range pixel interactions while remaining applicable to large images. Restormer achieves state-of-the-art results in various image restoration tasks.*

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

## Testing on DND
To test, you can run:

```sh
sh script/test.sh
```

## Computational Cost

We provide a simple script to calculate the flops by ourselves, a simple script has been added in `model.py`. You can change the configuration and run:

```python
python3 model.py
```


## Repository Structure
---

| Files | Description |
| ----------- | ----------- |
| `/dataset/data_senoise.py` | contains code for cleaning and loading the data for training, validating and testing. |
| `/script` | contains files to run the model for training and testing. |
| `/train/train_denoise.py` | contains the code for training the model on SIDD dataset.|
| `/test/test_denoise.py` | contains the code for testing the model on DND dataset. |
| `/utils` | contains basic utility functions for models, I/O operations, bundling, image manipulations, etc. |
| `/warmup_scheduler` | contains the files which has code for creating different types of dynamic scheduler so that the learning should be stable. |
| `/model.py` | contains the model architecture of the Restormer. |
| `/generate_pathches_SIDD.py` | contains the code for generating the image patches from the dataset for training and testing. |
| `/losses.py` | contains different types of losses that can be used for the neural network architecture. |
| `/options.py` | describes various CLI args to use the project functionalties. |
 

 ## Acknowledgements
 The code heavily borrows from [Restormer](https://github.com/swz30/Restormer) and [UFormer](https://github.com/ZhendongWang6/Uformer).
