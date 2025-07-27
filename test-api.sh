#!/bin/bash

echo "Testing API endpoints..."

# Test login endpoint with testuser
echo "Testing login with testuser..."
curl -X POST -H "Content-Type: application/json" \
  -d '{"username":"testuser","password":"password"}' \
  https://fantastic-carnival-596p94vx9643vgqg-5284.app.github.dev/api/auth/login

echo -e "\n\nTesting login with admin..."
curl -X POST -H "Content-Type: application/json" \
  -d '{"username":"admin","password":"password"}' \
  https://fantastic-carnival-596p94vx9643vgqg-5284.app.github.dev/api/auth/login

echo -e "\n\nTesting root endpoint..."
curl https://fantastic-carnival-596p94vx9643vgqg-5284.app.github.dev/

echo -e "\n\nDone testing."
