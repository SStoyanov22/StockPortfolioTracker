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
StockPortfolioTracker/
├── src/
│ ├── Services/
│ │ ├── IdentityService/
│ │ │ ├── Controllers/
│ │ │ ├── Models/
│ │ │ ├── Services/
│ │ │ ├── Data/
│ │ │ │ └── Scripts/
│ │ │ └── Hubs/
│ │ ├── PortfolioService/
│ │ │ ├── Controllers/
│ │ │ ├── Models/
│ │ │ ├── Services/
│ │ │ ├── Data/
│ │ │ │ └── Scripts/
│ │ │ └── Hubs/
│ │ ├── StockDataService/
│ │ │ ├── Controllers/
│ │ │ ├── Models/
│ │ │ ├── Services/
│ │ │ ├── Data/
│ │ │ │ └── Scripts/
│ │ │ └── Hubs/
│ │ ├── NotificationService/
│ │ │ ├── Controllers/
│ │ │ ├── Models/
│ │ │ ├── Services/
│ │ │ ├── Data/
│ │ │ │ └── Scripts/
│ │ │ └── Hubs/
│ │ └── ApiGateway/
│ └── Shared/
│ ├── Common/
│ │ ├── Extensions/
│ │ ├── Helpers/
│ │ ├── Constants/
│ │ └── Middleware/
│ ├── Models/
│ │ ├── Entities/
│ │ ├── DTOs/
│ │ └── Enums/
│ └── Contracts/
│ ├── Interfaces/
│ └── Events/
├── tests/
│ ├── IdentityService.Tests/
│ │ ├── Controllers/
│ │ ├── Services/
│ │ └── Data/
│ ├── PortfolioService.Tests/
│ │ ├── Controllers/
│ │ ├── Services/
│ │ └── Data/
│ ├── StockDataService.Tests/
│ │ ├── Controllers/
│ │ ├── Services/
│ │ └── Data/
│ └── Integration.Tests/
├── docker/
│ └── Dockerfiles/
├── scripts/
│ └── migration-scripts/
├── docs/
│ └── images/
├── .github/
│ └── workflows/
└── tools/
├── postman/
└── database/
├── backup-scripts/
└── restore-scripts/

## **🏗️ Architecture Overview**

### **Microservices:**
- **IdentityService** - User authentication and authorization
- **PortfolioService** - Portfolio management and transactions
- **StockDataService** - Stock data and market information
- **NotificationService** - Email and in-app notifications
- **ApiGateway** - API routing and aggregation

### **Shared Libraries:**
- **Common** - Extensions, helpers, and middleware
- **Models** - Entities, DTOs, and enums
- **Contracts** - Interfaces and events

### **Technology Stack:**
- **.NET 8** - Backend framework
- **PostgreSQL** - Primary database with Dapper ORM
- **Redis** - Caching and session storage
- **SignalR** - Real-time updates
- **JWT** - Authentication
- **Docker** - Containerization
- **GitHub Actions** - CI/CD

### **Database Schema:**
- **stockportfolio_identity** - User management
- **stockportfolio_portfolio** - Portfolio and transactions
- **stockportfolio_stockdata** - Stock and market data
- **stockportfolio_notification** - Notifications and alerts

## �� Testing

```bash
# Run all tests
dotnet test

# Run specific test project
dotnet test tests/PortfolioService.Tests/
```

## 🐳 Docker

```bash
# Build and run with Docker Compose
docker-compose up --build
```

## 📚 API Documentation

Each service includes Swagger documentation available at:
- Identity Service: `https://localhost:5001/swagger`
- Portfolio Service: `https://localhost:5002/swagger`
- Stock Data Service: `https://localhost:5003/swagger`

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

Your Name - [Your Email]

## �� Acknowledgments

- .NET team for the excellent framework
- Dapper team for the lightweight ORM
- All contributors and supporters