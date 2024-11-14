
# 1.Set working directory

#setwd() to your working directory

install.packages("keras")
install_keras()

#Load the library
library(keras)

# 2. Load the dataset
fashion_mnist <- dataset_fashion_mnist()
c(train_images, train_labels) %<-% fashion_mnist$train
c(test_images, test_labels) %<-% fashion_mnist$test

# 3. Preprocess the Data
train_images <- train_images / 255
test_images <- test_images / 255

train_images <- array_reshape(train_images, c(nrow(train_images), 28, 28, 1))
test_images <- array_reshape(test_images, c(nrow(test_images), 28, 28, 1))

# 4. Define the Model
model <- keras_model_sequential() %>%
  layer_conv_2d(filters = 32, kernel_size = c(3, 3), activation = "relu", input_shape = c(28, 28, 1)) %>%
  layer_max_pooling_2d(pool_size = c(2, 2)) %>%
  layer_conv_2d(filters = 64, kernel_size = c(3, 3), activation = "relu") %>%
  layer_max_pooling_2d(pool_size = c(2, 2)) %>%
  layer_flatten() %>%
  layer_dense(units = 128, activation = "relu") %>%
  layer_dense(units = 10, activation = "softmax")

# 5. Compile the Model
model %>% compile(
  optimizer = "adam",
  loss = "sparse_categorical_crossentropy",
  metrics = "accuracy"
)

# 6. Train the Model
history <- model %>% fit(
  train_images, train_labels,
  epochs = 10,
  batch_size = 64,
  validation_split = 0.2
)

# 7. Model Evaluation
test_loss, test_accuracy <- model %>% evaluate(test_images, test_labels)
cat("Test accuracy:", test_accuracy, "\n")

# 8. Make a prediction
predictions <- model %>% predict(test_images)
