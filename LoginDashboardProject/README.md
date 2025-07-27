# Login & Dashboard Mini Project

## Overview

This project is a simple login and dashboard application built using a .NET Core backend and an Angular frontend. The application allows users to log in and view a dashboard with chart data.

## Project Structure

```
LoginDashboardProject
├── backend
│   ├── Controllers
│   ├── Models
│   ├── Services
│   ├── Middleware
│   ├── Program.cs
│   ├── appsettings.json
│   └── appsettings.Development.json
├── frontend
│   ├── src
│   │   ├── app
│   │   ├── environments
│   │   ├── index.html
│   │   └── styles.scss
│   ├── angular.json
│   ├── package.json
│   └── tsconfig.json
├── .gitignore
└── README.md
```

## Features

1. **Login Page**: 
   - Users can enter their username and password.
   - On successful login, users are redirected to the dashboard.
   - Basic error messages are displayed for invalid login attempts.

2. **Dashboard Page**: 
   - Displays a chart using hardcoded data (e.g., ticket count by status or sales data).
   - Utilizes a charting library for visualization.

## Backend

- Built using .NET Core.
- Implements APIs for user authentication and dashboard data retrieval.
- Includes a rate-limiting mechanism for the login API to prevent brute force attacks.
- Returns an authentication token upon successful login, which is validated in protected API calls.

## Frontend

- Developed using Angular.
- Contains components for login and dashboard functionalities.
- Uses services to handle API calls and manage authentication.

## Getting Started

### Prerequisites

- .NET Core SDK
- Node.js and npm
- Angular CLI

### Installation

1. Clone the repository:
   ```
   git clone <repository-url>
   cd LoginDashboardProject
   ```

2. Set up the backend:
   - Navigate to the `backend` directory.
   - Restore dependencies:
     ```
     dotnet restore
     ```
   - Run the backend:
     ```
     dotnet run
     ```

3. Set up the frontend:
   - Navigate to the `frontend` directory.
   - Install dependencies:
     ```
     npm install
     ```
   - Run the frontend:
     ```
     ng serve
     ```

### Usage

- Access the application at `http://localhost:4200`.
- Use the login form to authenticate and access the dashboard.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## License

This project is licensed under the MIT License.