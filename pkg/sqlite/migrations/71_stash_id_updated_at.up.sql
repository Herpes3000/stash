ALTER TABLE `groups` ADD COLUMN `center_image_blob` varchar(255) REFERENCES `blobs`(`checksum`);
ALTER TABLE `performers` ADD COLUMN `center_image_blob` varchar(255) REFERENCES `blobs`(`checksum`);
ALTER TABLE `performers` ADD COLUMN `back_image_blob` varchar(255) REFERENCES `blobs`(`checksum`);
ALTER TABLE `performers` RENAME COLUMN `image_blob` TO `front_image_blob`;