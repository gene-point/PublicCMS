-- 20170618 --
UPDATE `sys_moudle` SET `authorized_url` =  'cmsContent/push_content,cmsContent/push_content_list,cmsContent/push_to_content,cmsContent/push_page,cmsContent/push_page_list,cmsPlace/add,cmsPlace/save,cmsContent/related' WHERE  `sys_moudle`.`id` =23;
UPDATE `sys_moudle` SET `authorized_url` =  'cmsPlace/push,cmsPlace/add,cmsPlace/save' WHERE  `sys_moudle`.`id` =29;
UPDATE `sys_moudle` SET `url` =  null,`authorized_url` =  null WHERE  `sys_moudle`.`id` =30;
UPDATE `sys_moudle` SET `authorized_url` =  'cmsTemplate/save,cmsTemplate/chipLookup,cmsWebFile/lookup,placeTemplate/form,cmsWebFile/contentForm,cmsTemplate/demo,cmsTemplate/help,cmsTemplate/upload,cmsTemplate/doUpload' WHERE  `sys_moudle`.`id` =41;
UPDATE `sys_moudle` SET name = '页面片段模板',attached = '<i class="icon-list-alt icon-large"></i>',`url` =  'placeTemplate/list',`authorized_url` =  NULL,`menu` = 1,`parent_id` = 38 WHERE  `sys_moudle`.`id` =42;
UPDATE `sys_moudle` SET `authorized_url` =  'cmsPage/save,file/doUpload,cmsPage/clearCache' WHERE  `sys_moudle`.`id` =48;
UPDATE `sys_moudle` SET `url` =  'cmsPlace/add',`authorized_url` =  'cmsContent/lookup,cmsPlace/lookup,cmsPlace/lookup_content_list,file/doUpload,cmsPlace/save',`parent_id` = 107 WHERE  `sys_moudle`.`id` =49;
UPDATE `sys_moudle` SET `parent_id` = 112 WHERE  `sys_moudle`.`id` in(47,48);
UPDATE `sys_moudle` SET `authorized_url` =  '',`parent_id` = 107 WHERE  `sys_moudle`.`id` in(50,51,52,53,54);
UPDATE `sys_moudle` SET `url` =  'sysDomain/domainList' WHERE  `sys_moudle`.`id` = 84;
UPDATE `sys_moudle` SET `url` =  'sysDomain/config',`authorized_url` =  'sysDomain/saveConfig,cmsTemplate/directoryLookup,cmsTemplate/lookup' WHERE  `sys_moudle`.`id` =100;
UPDATE `sys_moudle` SET name = '页面片段管理',attached = '<i class="icon-list-alt icon-large"></i>',`url` =  'cmsPlace/list',`authorized_url` =  'sysUser/lookup,cmsPlace/data_list',`menu` = 1,`parent_id` = 30,`sort` = 1 WHERE  `sys_moudle`.`id` =107;
INSERT INTO `sys_moudle` VALUES ('110', '修改模板元数据', 'placeTemplate/metadata', 'cmsTemplate/savePlaceMetaData', NULL, '42', '1', '0');
INSERT INTO `sys_moudle` VALUES ('111', '修改模板', 'placeTemplate/content', 'cmsTemplate/help,cmsTemplate/chipLookup,cmsWebFile/lookup,cmsWebFile/contentForm,placeTemplate/form', NULL, '42', '1', '0');
INSERT INTO `sys_moudle` VALUES ('112', '页面管理', 'cmsPage/list', 'cmsPage/metadata,sysUser/lookup,cmsContent/lookup,cmsContent/lookup_list,cmsCategory/lookup', '<i class=\"icon-globe icon-large\"></i>', '30', '1', '0');
INSERT INTO `sys_moudle` VALUES ('113', '刷新缓存', NULL, 'clearCache', '', NULL, '0', '1');
ALTER TABLE `sys_extend_field`
	DROP COLUMN `dictionary_type`,
	MODIFY COLUMN `dictionary_id`  bigint(20) NULL DEFAULT NULL COMMENT '数据字典ID' AFTER `default_value`;
INSERT INTO `sys_moudle` VALUES ('114', '查看', 'cmsContent/view', null, null, '12', '0', '0');
INSERT INTO `sys_moudle` VALUES ('115', '查看', 'cmsPlace/view', null, null, '107', '0', '0');
INSERT INTO `sys_moudle` VALUES ('116', '修改类型', 'cmsCategory/changeTypeParameters', 'cmsCategory/changeType', null, '24', '0', '0');
INSERT INTO `sys_moudle` VALUES ('117', '内容回收站', 'cmsRecycleContent/list', 'sysUser/lookup', '<i class=\"icon-trash icon-large\"></i>', '13', '1', '0');
INSERT INTO `sys_moudle` VALUES ('118', '删除', NULL, 'cmsContent/realDelete', NULL, '155', '0', '0');
INSERT INTO `sys_moudle` VALUES ('119', '还原', NULL, 'cmsContent/recycle', NULL, '155', '0', '0');
INSERT INTO `sys_moudle` VALUES ('120', '置顶', 'cmsContent/sortParameters', 'cmsContent/sort', NULL, '12', '0', '0');
INSERT INTO `sys_moudle` VALUES ('121', '人员管理', 'sysDept/userList', 'sysDept/addUser,sysDept/saveUser,sysDept/enableUser,sysDept/disableUser', NULL, '72', '0', '0');
ALTER TABLE `cms_content`
	ADD COLUMN `sort`  INT NOT NULL DEFAULT 0 COMMENT  '顺序' AFTER `status`,
	ADD INDEX `sort` (`sort`);
ALTER TABLE `sys_dept`
	ADD COLUMN `max_sort`  INT NOT NULL DEFAULT 1000 COMMENT  '最大内容置顶级别' AFTER `user_id`;
UPDATE `sys_moudle` SET name = '模板文件管理' WHERE  `sys_moudle`.`id` =39;
UPDATE `sys_moudle` SET name = '文件管理',attached = '<i class=\"icon-folder-close-alt icon-large\"></i>' WHERE  `sys_moudle`.`id` =38;
INSERT INTO `sys_moudle` VALUES ('122', '数据字典管理', 'cmsDictionary/list', null, '<i class=\"icon-book icon-large\"></i>', '62', '1', '0');
INSERT INTO `sys_moudle` VALUES ('123', '添加', 'cmsDictionary/add', 'cmsDictionary/save', null, '122', '0', '0');
INSERT INTO `sys_moudle` VALUES ('124', '删除', null, 'cmsDictionary/delete', null, '122', '0', '0');
UPDATE `sys_moudle` SET `parent_id` = 62 WHERE  `sys_moudle`.`id` in(140);
UPDATE `sys_moudle` SET `authorized_url` =  'cmsPlace/delete' WHERE  `sys_moudle`.`id` = 50;
UPDATE `sys_moudle` SET `authorized_url` =  'cmsPlace/refresh' WHERE  `sys_moudle`.`id` = 51;
UPDATE `sys_moudle` SET `authorized_url` =  'cmsPlace/check' WHERE  `sys_moudle`.`id` = 52;
UPDATE `sys_moudle` SET `authorized_url` =  'cmsTemplate/publishPlace' WHERE  `sys_moudle`.`id` = 53;
UPDATE `sys_moudle` SET `authorized_url` =  'cmsPlace/clear' WHERE  `sys_moudle`.`id` = 54;
UPDATE `sys_moudle` SET `parent_id` = 45 WHERE  `sys_moudle`.`id` = 63;
