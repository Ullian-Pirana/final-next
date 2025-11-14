-- AlterTable
ALTER TABLE `produtos` ADD COLUMN `pedidosId` VARCHAR(191) NULL;

-- CreateTable
CREATE TABLE `Pedidos` (
    `id` VARCHAR(191) NOT NULL,
    `nome` VARCHAR(191) NOT NULL,
    `endereco` VARCHAR(191) NOT NULL,
    `telefone` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Produtos` ADD CONSTRAINT `Produtos_pedidosId_fkey` FOREIGN KEY (`pedidosId`) REFERENCES `Pedidos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
