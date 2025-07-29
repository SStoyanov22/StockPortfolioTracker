-- Create Portfolios table
CREATE TABLE IF NOT EXISTS "Portfolios" (
    "Id" SERIAL PRIMARY KEY,
    "UserId" TEXT NOT NULL,
    "Name" VARCHAR(100) NOT NULL,
    "Description" TEXT,
    "IsPublic" BOOLEAN NOT NULL DEFAULT FALSE,
    "CreatedAt" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    "UpdatedAt" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW()
);

-- Create Transactions table
CREATE TABLE IF NOT EXISTS "Transactions" (
    "Id" SERIAL PRIMARY KEY,
    "PortfolioId" INTEGER NOT NULL,
    "StockSymbol" VARCHAR(10) NOT NULL,
    "TransactionType" VARCHAR(10) NOT NULL CHECK (TransactionType IN ('BUY', 'SELL')),
    "Quantity" DECIMAL(10,2) NOT NULL,
    "Price" DECIMAL(10,4) NOT NULL,
    "TransactionDate" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    "Commission" DECIMAL(10,2) DEFAULT 0,
    "Notes" TEXT,
    FOREIGN KEY ("PortfolioId") REFERENCES "Portfolios" ("Id") ON DELETE CASCADE
);

-- Create Portfolio Holdings table (calculated view)
CREATE TABLE IF NOT EXISTS "PortfolioHoldings" (
    "Id" SERIAL PRIMARY KEY,
    "PortfolioId" INTEGER NOT NULL,
    "StockSymbol" VARCHAR(10) NOT NULL,
    "TotalQuantity" DECIMAL(10,2) NOT NULL,
    "AverageCost" DECIMAL(10,4) NOT NULL,
    "LastUpdated" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    FOREIGN KEY ("PortfolioId") REFERENCES "Portfolios" ("Id") ON DELETE CASCADE,
    UNIQUE ("PortfolioId", "StockSymbol")
);

-- Create indexes
CREATE INDEX IF NOT EXISTS "IX_Portfolios_UserId" ON "Portfolios" ("UserId");
CREATE INDEX IF NOT EXISTS "IX_Transactions_PortfolioId" ON "Transactions" ("PortfolioId");
CREATE INDEX IF NOT EXISTS "IX_Transactions_StockSymbol" ON "Transactions" ("StockSymbol");
CREATE INDEX IF NOT EXISTS "IX_Transactions_TransactionDate" ON "Transactions" ("TransactionDate");