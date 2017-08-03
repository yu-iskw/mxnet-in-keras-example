# Example of Apache MXNet in Keras

[dmlc/keras](https://github.com/dmlc/keras) offers Apache MXNet background for Keras.

## Requirements
- Anaconda 4.3+

## Setup

```
# create an anaconda environment and install Keras for MXNet background
make install

# Set Keras background to MXNet and run Jupyter Notebook
KERAS_BACKEND=mxnet jupyter-notebook


# Remove the anaconda environment
make conda-delete
```

## Note
Unfortunately, the Keras version is 1.2.2 in August, 2017.
The latest version is currently 2.0.6.
It is very outdated.
We definitely need to contribute to make Apache MXNet one of the official keras background.

## Links

- [Using MXNet in Keras \| Number 2147483647](https://no2147483647.wordpress.com/2017/05/31/using-mxnet-in-keras/)
