#!/bin/bash

# Get user input for principal, rate, and time
read -p "Enter principal amount (e.g., 1000): " principal
read -p "Enter interest rate (e.g., 5): " rate
read -p "Enter time period (in years): " time

# Validate user input (optional)
if [[ ! "$principal" =~ ^[0-9]+$ || ! "$rate" =~ ^[0-9]+$ || ! "$time" =~ ^[0-9]+$ ]]; then
  echo "Error: Invalid inputs. Please enter positive numbers only."
  exit 1
fi

# Calculate simple interest (SI = P * R * T / 100)
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Display the result
echo "Simple Interest = $interest"