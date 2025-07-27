#!/bin/bash

# Function to test the backend API
test_backend() {
  echo "Testing backend API..."
  local BASE_URL="http://localhost:5284"
  
  # Test the root endpoint
  echo -e "\nTesting root endpoint..."
  RESPONSE=$(curl -s $BASE_URL)
  echo "Response: $RESPONSE"
  
  # Test the login endpoint with testuser
  echo -e "\nTesting login with testuser..."
  RESPONSE=$(curl -s -X POST -H "Content-Type: application/json" \
    -d '{"username":"testuser","password":"password"}' \
    $BASE_URL/api/auth/login)
  echo "Response: $RESPONSE"
  
  # Check if the response contains a token
  if [[ $RESPONSE == *"token"* ]]; then
    echo -e "\n✅ Backend API is working correctly!"
    return 0
  else
    echo -e "\n❌ Backend API test failed!"
    return 1
  fi
}

# Test the backend
test_backend

# Create a fixed environment.ts file
create_environment_file() {
  cat > /workspaces/Login-Dashboard-Mini-Project/LoginDashboardProject/frontend/src/environments/environment.ts << EOF
export const environment = {
  production: false,
  apiUrl: 'http://localhost:5284/api'
};
EOF

  echo "Created environment.ts file with local backend URL."
}

# Create the environment file
create_environment_file

echo -e "\n\nPlease try to access the application using port forwarding in GitHub Codespaces."
echo "1. Click on the PORTS tab in the bottom panel"
echo "2. Make sure ports 4200 (frontend) and 5284 (backend) are forwarded"
echo "3. Click on the 'Open in Browser' icon for port 4200"
echo "4. Try logging in with username: testuser, password: password"
