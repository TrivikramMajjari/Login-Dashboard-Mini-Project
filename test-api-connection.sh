#!/bin/bash

echo "Testing backend connectivity..."

# Get the GitHub Codespaces hostname from VS Code
HOSTNAME=$(hostname)
CODESPACE_NAME=$(echo $HOSTNAME | cut -d'-' -f1)

# Base URL for GitHub Codespaces
BASE_URL="https://fantastic-carnival-596p94vx9643vgqg-5284.app.github.dev"

echo "Using backend URL: $BASE_URL"

# Test the root endpoint
echo -e "\nTesting root endpoint..."
curl -v $BASE_URL

# Test the login endpoint with testuser
echo -e "\n\nTesting login with testuser..."
curl -v -X POST -H "Content-Type: application/json" \
  -d '{"username":"testuser","password":"password"}' \
  $BASE_URL/api/auth/login

echo -e "\n\nDone testing."
