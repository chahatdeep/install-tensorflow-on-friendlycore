## Installing Tensorflow 1.14.0 on FriendlyCore/FriendlyDesktop
Here are the packages and utilities your system will have after you follow the instructions in this tutorial:
* Tensorflow 1.14.0
* Python 3.5.6

## Currently supported boards 
* RK3399  
NanoPC T4  
NanoPC M4  
NanoPC NEO4  
  
## Installation 
### Step1 - Clone this repository on target board
```
git clone https://github.com/friendlyarm/install-tensorflow-on-friendlycore.git
```
### Step2 - Build python3.5 from source
```
cd install-tensorflow-on-friendlycore
./01-install-python-3.5.sh
```

### Step3 - Install tensorflow 1.14.0-aarch64
```
./02-install-tensorflow.sh
```

## Test image recognition sample
```
git submodule init
git submodule update
cd examples/models/tutorials/image/imagenet
python3 classify_image.py
```
classify_image.py downloads the trained model from Google’s backend, when the program runs the first time. You'll need about 200 MB of free space available on your disk.    
![image](https://github.com/friendlyarm/install-tensorflow-on-friendlycore/raw/master/examples/images/cropped_panda.jpg)  
The above commands will classify a supplied image of a panda bear.  
If the model runs correctly, the script will produce the following output:  
```
giant panda, panda, panda bear, coon bear, Ailuropoda melanoleuca (score = 0.89107)
indri, indris, Indri indri, Indri brevicaudatus (score = 0.00779)
lesser panda, red panda, panda, bear cat, cat bear, Ailurus fulgens (score = 0.00296)
custard apple (score = 0.00147)
earthstar (score = 0.00117)
```
