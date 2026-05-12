# week20_day1_linear_prediction.py

import numpy as np

# ---------------------------------------------------
# STEP 1: Define feature matrix X
# ---------------------------------------------------
# We have 3 examples (rows)
# and 2 features (columns)
#
# Example format:
# [feature1, feature2]

X = np.array([
    [1, 2],
    [2, 1],
    [3, 4]
])

# ---------------------------------------------------
# STEP 2: Define weights and bias
# ---------------------------------------------------
# w = weight vector
# b = bias (single number)

w = np.array([0.5, 1.0])
b = 2

# ---------------------------------------------------
# STEP 3: Compute predictions
# ---------------------------------------------------
# Formula:
# prediction = X @ w + b
#
# @ means matrix multiplication

predictions = X @ w + b

# ---------------------------------------------------
# STEP 4: Print results
# ---------------------------------------------------

print("ORIGINAL PREDICTIONS")
print("-" * 40)

for i in range(len(X)):
    weighted_sum = X[i] @ w + b

    print(f"Example {i + 1}")
    print(f"Features: {X[i]}")
    print(f"Weighted Sum: {weighted_sum}")
    print(f"Prediction: {predictions[i]}")
    print()

# ---------------------------------------------------
# STEP 5: Change one weight
# ---------------------------------------------------
# Let's increase the first weight

new_w = np.array([1.5, 1.0])

new_predictions = X @ new_w + b

print("\nNEW PREDICTIONS AFTER CHANGING WEIGHT")
print("-" * 40)

for i in range(len(X)):
    weighted_sum = X[i] @ new_w + b

    print(f"Example {i + 1}")
    print(f"Features: {X[i]}")
    print(f"Weighted Sum: {weighted_sum}")
    print(f"Prediction: {new_predictions[i]}")
    print()

# ---------------------------------------------------
# HAND-WORKED EXAMPLE
# ---------------------------------------------------
#
# Example 1:
# Features = [1, 2]
#
# Original weights:
# w = [0.5, 1.0]
# b = 2
#
# Calculation:
#
# (1 * 0.5) + (2 * 1.0) + 2
#
# = 0.5 + 2 + 2
#
# = 4.5
#
# So prediction = 4.5
#
# ---------------------------------------------------