# Stock Portfolio Tracker

A microservices-based stock portfolio management system built with .NET 8, Dapper ORM, and modern web technologies.

## 🏗️ Architecture

This project follows a microservices architecture with the following services:

- **IdentityService** - User authentication and authorization
- **PortfolioService** - Portfolio management and transactions
- **StockDataService** - Stock data and market information
- **NotificationService** - Email and in-app notifications
- **ApiGateway** - API routing and aggregation

## 🛠️ Technology Stack

- **.NET 8** - Backend framework
- **Dapper** - Micro ORM for data access
- **SQL Server** - Primary database
- **Redis** - Caching and session storage
- **SignalR** - Real-time updates
- **JWT** - Authentication
- **Docker** - Containerization
- **GitHub Actions** - CI/CD

## 🚀 Getting Started

### Prerequisites
- .NET 8 SDK
- SQL Server
- Redis (optional)
- Docker (optional)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/YOUR_USERNAME/StockPortfolioTracker.git
   cd StockPortfolioTracker
   ```

2. **Restore packages**
   ```bash
   dotnet restore
   ```

3. **Update connection strings**
   - Edit `appsettings.json` in each service
   - Update database connection strings

4. **Run the services**
   ```bash
   # Run Identity Service
   cd src/IdentityService
   dotnet run

   # Run Portfolio Service (new terminal)
   cd src/PortfolioService
   dotnet run

   # Run Stock Data Service (new terminal)
   cd src/StockDataService
   dotnet run
   ```

## 📁 Project Structure
