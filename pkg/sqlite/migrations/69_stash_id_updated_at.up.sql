ALTER TABLE `performer_stash_ids` ADD COLUMN `updated_at` datetime not null default '1970-01-01T00:00:00Z';
ALTER TABLE `scene_stash_ids` ADD COLUMN `updated_at` datetime not null default '1970-01-01T00:00:00Z';
ALTER TABLE `studio_stash_ids` ADD COLUMN `updated_at` datetime not null default '1970-01-01T00:00:00Z';

ALTER TABLE `movies` ADD COLUMN `center_image_blob` varchar(255) REFERENCES `blobs`(`checksum`);
ALTER TABLE `performers` ADD COLUMN `center_image_blob` varchar(255) REFERENCES `blobs`(`checksum`);
ALTER TABLE `performers` ADD COLUMN `back_image_blob` varchar(255) REFERENCES `blobs`(`checksum`);
ALTER TABLE `performers` RENAME COLUMN `image_blob` TO `front_image_blob`