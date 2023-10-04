/*
  Warnings:

  - You are about to drop the `c_model` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "c_model";

-- CreateTable
CREATE TABLE "Model" (
    "id" SERIAL NOT NULL,
    "m_name" TEXT NOT NULL,

    CONSTRAINT "Model_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cars" (
    "id" SERIAL NOT NULL,
    "VIN" TEXT NOT NULL,
    "mo_model" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "model_id" INTEGER NOT NULL,

    CONSTRAINT "cars_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "cars" ADD CONSTRAINT "cars_model_id_fkey" FOREIGN KEY ("model_id") REFERENCES "Model"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
