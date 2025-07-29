-- Create Stocks table
CREATE TABLE IF NOT EXISTS "Stocks" (
    "Id" SERIAL PRIMARY KEY,
    "Symbol" VARCHAR(10) UNIQUE NOT NULL,
    "CompanyName" VARCHAR(200) NOT NULL,
    "Sector" VARCHAR(100),
    "Industry" VARCHAR(100),
    "MarketCap" DECIMAL(20,2),
    "CreatedAt" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    "UpdatedAt" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW()
);

-- Create Stock Prices table
CREATE TABLE IF NOT EXISTS "StockPrices" (
    "Id" SERIAL PRIMARY KEY,
    "StockId" INTEGER NOT NULL,
    "Price" DECIMAL(10,4) NOT NULL,
    "Volume" BIGINT,
    "OpenPrice" DECIMAL(10,4),
    "HighPrice" DECIMAL(10,4),
    "LowPrice" DECIMAL(10,4),
    "ClosePrice" DECIMAL(10,4),
    "Date" DATE NOT NULL,
    "CreatedAt" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    FOREIGN KEY ("StockId") REFERENCES "Stocks" ("Id") ON DELETE CASCADE
);

-- Create indexes
CREATE INDEX IF NOT EXISTS "IX_Stocks_Symbol" ON "Stocks" ("Symbol");
CREATE INDEX IF NOT EXISTS "IX_StockPrices_StockId" ON "StockPrices" ("StockId");
CREATE INDEX IF NOT EXISTS "IX_StockPrices_Date" ON "StockPrices" ("Date");
CREATE UNIQUE INDEX IF NOT EXISTS "IX_StockPrices_StockId_Date" ON "StockPrices" ("StockId", "Date");