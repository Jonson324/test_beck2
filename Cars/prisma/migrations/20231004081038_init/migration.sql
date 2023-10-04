/*
  Warnings:

  - You are about to drop the column `model_id` on the `cars` table. All the data in the column will be lost.
  - Added the required column `model_car` to the `cars` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "cars" DROP CONSTRAINT "cars_model_id_fkey";

-- AlterTable
ALTER TABLE "cars" DROP COLUMN "model_id",
ADD COLUMN     "model_car" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "cars" ADD CONSTRAINT "cars_model_car_fkey" FOREIGN KEY ("model_car") REFERENCES "Model"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
