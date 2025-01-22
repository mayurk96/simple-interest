#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3
    local interest

    # Calculate Simple Interest
    interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

    echo "Simple Interest: $interest"
}

# Welcome Message
echo "Welcome to the Simple Interest Calculator!"

# Prompt user for input
read -p "Enter Principal Amount (P): " principal
read -p "Enter Rate of Interest (R): " rate
read -p "Enter Time (in years) (T): " time

# Validate input
if [[ ! $principal =~ ^[0-9]+([.][0-9]+)?$ || ! $rate =~ ^[0-9]+([.][0-9]+)?$ || ! $time =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values for Principal, Rate, and Time."
    exit 1
fi

# Call the function to calculate and display the result
calculate_simple_interest $principal $rate $time

