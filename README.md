
# Fashion MNIST Dataset Classification using Convulutional Neural Networks

This project demonstrates how to create a simple CNN to classify images from the [Fashion MNIST dataset](https://keras.io/api/datasets/fashion_mnist/) in both **Python** and **R**. The Fashion MNIST dataset consists of 60,000 grayscale images of 10 fashion categories, each 28x28 pixels in size. 

## Requirements

### Python Requirements
- Python 3.6 or higher
- TensorFlow
- Keras
- Numpy
- Matplotlib (optional, for visualizations)

### R Requirements
- R 4.0 or higher
- Keras library for R 
- Magrittr (for piping `%>%`)

## Installation

### Python Setup
1. Clone the repository and navigate to the project directory:
   ```bash
   git clone https://github.com/MugoDom/fashion-mnist-cnn.git
   cd cnn-fashion-mnist-cnn
   ```
2. Install the required Python packages:
   ```bash
   pip install -r requirements.txt
   ```
3. The `requirements.txt` file should include:
   ```plaintext
   tensorflow v 2.8.2
   keras
   numpy 1.2
   matplotlib
   ```

### R Setup
1. Install the `keras` package for R:
   ```R
   install.packages("keras")
   library(keras)
   ```
2. Install Keras and TensorFlow backend:
   ```R
   install_keras()
   ```

## Dataset

The Fashion MNIST dataset can be directly accessed via the Keras library in both Python and R.

## Code Structure

- **Python Code**: `cnn-fashion_mnist/notebook/cnn_fashion_mnist.ipynb`
  - Contains code for loading, preprocessing, training, and evaluating the CNN model in Python.
- **R Code**: `r_file/fashion_mnist_cnn.R`
  - Contains code for the same steps as the Python code but implemented in R.

## Running the Code

### Running the Python Code
1. Open a terminal in the project directory.
2. Run the following command:
   ```bash
   jupyter notebook
   run the cnn_fashion_mnist.ipynb in the notebook
   ```
3. The script will load the data, preprocess it, build the CNN model, train it, and evaluate accuracy on the test set.

### Running the R Code
1. Open RStudio or any R-compatible IDE.
2. Open `fashion_mnist_cnn.R`.
3. Run the script line by line or as a whole.
4. The model training and evaluation results will display in the R console.

## Results

After training, the model should achieve an accuracy of approximately 85-90% on the test set. Both Python and R implementations are expected to yield similar accuracy values given the same model architecture and parameters.

## License

This project is licensed under the MIT License. You are free to use, modify, and distribute this code with proper attribution.

--- 