-- Create Users table
CREATE TABLE IF NOT EXISTS "AspNetUsers" (
    "Id" TEXT PRIMARY KEY,
    "UserName" TEXT,
    "NormalizedUserName" TEXT,
    "Email" TEXT,
    "NormalizedEmail" TEXT,
    "EmailConfirmed" BOOLEAN NOT NULL DEFAULT FALSE,
    "PasswordHash" TEXT,
    "SecurityStamp" TEXT,
    "ConcurrencyStamp" TEXT,
    "PhoneNumber" TEXT,
    "PhoneNumberConfirmed" BOOLEAN NOT NULL DEFAULT FALSE,
    "TwoFactorEnabled" BOOLEAN NOT NULL DEFAULT FALSE,
    "LockoutEnd" TIMESTAMP WITH TIME ZONE,
    "LockoutEnabled" BOOLEAN NOT NULL DEFAULT FALSE,
    "AccessFailedCount" INTEGER NOT NULL DEFAULT 0
);

-- Create Roles table
CREATE TABLE IF NOT EXISTS "AspNetRoles" (
    "Id" TEXT PRIMARY KEY,
    "Name" TEXT,
    "NormalizedName" TEXT,
    "ConcurrencyStamp" TEXT
);

-- Create UserRoles table
CREATE TABLE IF NOT EXISTS "AspNetUserRoles" (
    "UserId" TEXT NOT NULL,
    "RoleId" TEXT NOT NULL,
    PRIMARY KEY ("UserId", "RoleId"),
    FOREIGN KEY ("UserId") REFERENCES "AspNetUsers" ("Id") ON DELETE CASCADE,
    FOREIGN KEY ("RoleId") REFERENCES "AspNetRoles" ("Id") ON DELETE CASCADE
);

-- Create indexes
CREATE INDEX IF NOT EXISTS "IX_AspNetUsers_Email" ON "AspNetUsers" ("Email");
CREATE INDEX IF NOT EXISTS "IX_AspNetUsers_NormalizedEmail" ON "AspNetUsers" ("NormalizedEmail");
CREATE INDEX IF NOT EXISTS "IX_AspNetUsers_NormalizedUserName" ON "AspNetUsers" ("NormalizedUserName");