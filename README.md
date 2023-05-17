# Restormer: A General U-Shaped Transformer for Image Restoration


## Package dependencies
The project is built with PyTorch 1.9.0, Python3.7, CUDA11.1. For package dependencies, you can install them by:
```bash
pip install -r requirements.txt
```


## Data preparation 
### Denoising
For training data of SIDD, you can download the SIDD-Medium dataset from the [official url](https://www.eecs.yorku.ca/~kamel/sidd/dataset.php).
Then generate training patches for training by:
```python
python3 generate_patches_SIDD.py --src_dir ../SIDD_Medium_Srgb/Data --tar_dir ../datasets/denoising/sidd/train
```

## Training
### Denoising
To train Uformer on SIDD, you can begin the training by:

```sh
sh script/train_denoise.sh
```

## Evaluation
To evaluate Uformer, you can run:

```sh
sh script/test.sh
```
