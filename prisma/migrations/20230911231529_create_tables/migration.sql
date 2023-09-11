-- CreateEnum
CREATE TYPE "group_type" AS ENUM ('pc', 'kg', 'Veic', 'pla');

-- CreateEnum
CREATE TYPE "product_type" AS ENUM ('MP', 'PA', 'PI', 'SC', 'SV');

-- CreateTable
CREATE TABLE "Groups" (
    "id" TEXT NOT NULL,
    "group_name" TEXT NOT NULL,
    "group_type" "group_type" NOT NULL,

    CONSTRAINT "Groups_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Storages" (
    "id" TEXT NOT NULL,
    "storage_code" TEXT NOT NULL,
    "storage_name" TEXT NOT NULL,

    CONSTRAINT "Storages_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Products" (
    "id" TEXT NOT NULL,
    "product_name" TEXT NOT NULL,
    "product_type" "product_type" NOT NULL,

    CONSTRAINT "Products_pkey" PRIMARY KEY ("id")
);
