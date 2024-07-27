#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_simple_interest() {
  local principal=$1
  local rate=$2
  local time=$3

  # Calculate simple interest
  local interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc -l)

  # Print the result
  echo "Simple Interest: ₹$interest"
}

# Check if the required arguments are provided
if [ $# -ne 3 ]; then
  echo "Usage: $0 <principal> <rate> <time>"
  echo "Example: $0 10000 5 2"
  exit 1
fi

# Call the function with the provided arguments
calculate_simple_interest $1 $2 $3
