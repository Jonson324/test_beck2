/*
  Warnings:

  - You are about to drop the column `name` on the `brand` table. All the data in the column will be lost.
  - Added the required column `b_name` to the `brand` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "brand" DROP COLUMN "name",
ADD COLUMN     "b_name" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "c_model" (
    "id" SERIAL NOT NULL,
    "m_name" TEXT NOT NULL,

    CONSTRAINT "c_model_pkey" PRIMARY KEY ("id")
);
