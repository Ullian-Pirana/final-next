/*
  Warnings:

  - You are about to drop the column `pedidosId` on the `produtos` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `produtos` DROP FOREIGN KEY `Produtos_pedidosId_fkey`;

-- DropIndex
DROP INDEX `Produtos_pedidosId_fkey` ON `produtos`;

-- AlterTable
ALTER TABLE `produtos` DROP COLUMN `pedidosId`;

-- CreateTable
CREATE TABLE `PedidosProdutos` (
    `id` VARCHAR(191) NOT NULL,
    `pedidoId` VARCHAR(191) NOT NULL,
    `produtoId` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `PedidosProdutos` ADD CONSTRAINT `PedidosProdutos_pedidoId_fkey` FOREIGN KEY (`pedidoId`) REFERENCES `Pedidos`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `PedidosProdutos` ADD CONSTRAINT `PedidosProdutos_produtoId_fkey` FOREIGN KEY (`produtoId`) REFERENCES `Produtos`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
