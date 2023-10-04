/*
  Warnings:

  - Added the required column `brandcar` to the `cars` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "cars" ADD COLUMN     "brandcar" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "cars" ADD CONSTRAINT "cars_model_id_fkey" FOREIGN KEY ("model_id") REFERENCES "Model"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "cars" ADD CONSTRAINT "cars_brandcar_fkey" FOREIGN KEY ("brandcar") REFERENCES "brand"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
