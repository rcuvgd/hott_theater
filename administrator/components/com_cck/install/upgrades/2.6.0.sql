
INSERT IGNORE INTO `#__cck_core_fields` (`id`, `title`, `name`, `folder`, `type`, `description`, `published`, `label`, `selectlabel`, `display`, `required`, `validation`, `defaultvalue`, `options`, `options2`, `minlength`, `maxlength`, `size`, `cols`, `rows`, `ordering`, `sorting`, `divider`, `bool`, `location`, `extended`, `style`, `script`, `bool2`, `bool3`, `bool4`, `bool5`, `bool6`, `bool7`, `bool8`, `css`, `attributes`, `storage`, `storage_location`, `storage_table`, `storage_field`, `storage_field2`, `storage_params`, `storages`, `checked_out`, `checked_out_time`) VALUES
(422, 'User Email2', 'user_email2', 13, 'email', '', 1, 'Confirm Email', ' ', 3, '', '', '', '', '{"send":"0","send_field":"","from":"0","from_param":"","from_name":"0","from_name_param":"","subject":"","to":"","message":"","to_field":"","message_field":"","send_attachment_field":"","attachment_field":"","cc":"0","cc_param":"","bcc":"0","bcc_param":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'none', '', '', 'email', '', '', '', 0, '0000-00-00 00:00:00'),
(423, 'User Gender', 'user_gender', 29, 'radio', '', 1, 'Gender', ' ', 3, '', '', 'M', 'Male=M||Female=F', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'gender', '', '', '', 0, '0000-00-00 00:00:00'),
(424, 'User Last Name', 'user_last_name', 29, 'text', '', 1, 'Last Name', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'last_name', '', '', '', 0, '0000-00-00 00:00:00'),
(425, 'User First Name', 'user_first_name', 29, 'text', '', 1, 'First Name', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'first_name', '', '', '', 0, '0000-00-00 00:00:00'),
(426, 'User About Me', 'user_about_me', 29, 'textarea', '', 1, 'About Me', ' ', 3, '', '', '', '', '', 0, 255, 32, 32, 5, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'about_me', '', '', '', 0, '0000-00-00 00:00:00'),
(427, 'User Avatar', 'user_avatar', 29, 'upload_image', '', 1, 'Avatar', ' ', 3, '', '', '', '', '{"path":"images\\/users\\/","path_content":"0","path_user":"1","legal_extensions":"gif,jpg,png,GIF,JPG,PNG","max_size":"5","size_unit":"2","form_preview":"0","delete_box":"1","custom_path":"0","path_label":"Path","multivalue_mode":"0","title_image":"1","title_label":"Title","desc_image":"1","desc_label":"Description alt","force_thumb_creation":"0","content_preview":"1","image_process":"maxfit","image_width":"500","image_height":"500","thumb1_process":"stretch","thumb1_width":"80","thumb1_height":"80","thumb2_process":"stretch","thumb2_width":"100","thumb2_height":"100","thumb3_process":"stretch","thumb3_width":"150","thumb3_height":"150","thumb4_process":"stretch","thumb4_width":"200","thumb4_height":"200","thumb5_process":"stretch","thumb5_width":"300","thumb5_height":"300"}', 0, 255, 24, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'avatar', '', '', '', 0, '0000-00-00 00:00:00'),
(428, 'User Address1', 'user_address1', 29, 'textarea', '', 1, 'Address', ' ', 3, '', '', '', '', '', 0, 255, 32, 32, 2, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'address1', '', '', '', 0, '0000-00-00 00:00:00'),
(429, 'User Address2', 'user_address2', 29, 'textarea', '', 1, 'Address2', ' ', 3, '', '', '', '', '', 0, 255, 32, 32, 2, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'address2', '', '', '', 0, '0000-00-00 00:00:00'),
(430, 'User City', 'user_city', 29, 'text', '', 1, 'City', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'city', '', '', '', 0, '0000-00-00 00:00:00'),
(431, 'User Postal Code', 'user_postal_code', 29, 'text', '', 1, 'Postal Code', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'postal_code', '', '', '', 0, '0000-00-00 00:00:00'),
(432, 'User Region', 'user_region', 29, 'text', '', 1, 'Region', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'region', '', '', '', 0, '0000-00-00 00:00:00'),
(433, 'User Country', 'user_country', 29, 'select_dynamic', '', 1, 'Country', 'Select', 3, '', '', '', '', '{"query":"","table":"#__cck_more_countries","name":"name_[lang]","where":"","value":"code2","orderby":"name_[lang]","orderby_direction":"ASC","limit":"","language_detection":"joomla","language_codes":"EN,GB,US,FR","language_default":"EN"}', 0, 255, 32, 0, 0, 0, 0, ',', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'country', '', '', '', 0, '0000-00-00 00:00:00'),
(434, 'User Phone', 'user_phone', 29, 'text', '', 1, 'Phone', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'phone', '', '', '', 0, '0000-00-00 00:00:00'),
(435, 'User Website', 'user_website', 29, 'link', '', 1, 'Website', ' ', 3, '', '', '', '', '{"link_label":" ","def_link":"","text_label":"Text","def_text":"","target":"_blank","class":""}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'website', '', '', '', 0, '0000-00-00 00:00:00'),
(469, 'Core Pane Behavior', 'core_pane_behavior', 3, 'select_simple', '', 0, 'Behavior', 'Select', 3, '', '', '', 'Pane Start=0||Pane Panel=1||Pane End=2', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', 'bool', '', '', '', 0, '0000-00-00 00:00:00'),
(471, 'User Birthplace', 'user_birthplace', 29, 'text', '', 1, 'Birthplace', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'birthplace', '', '', '', 0, '0000-00-00 00:00:00'),
(470, 'User Birthdate', 'user_birthdate', 29, 'calendar', '', 1, 'Birthdate', ' ', 3, '', '', '', '', '{"format":"Y-m-d","storage_format":"0","dates":"0","theme":"steel","week_numbers":"0","time":"12","time_pos":"right","default_hour":"00","default_min":"00","default_sec":"00"}', 0, 255, 27, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'birthdate', '', '', '', 0, '0000-00-00 00:00:00'),
(476, 'Core Tab Details (Start)', 'core_tab_details', 3, 'tabs', '', 1, 'Details', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'core_tab_details', '', '', '', 0, '0000-00-00 00:00:00'),
(477, 'Core Tab Publishing (Panel)', 'core_tab_publishing', 3, 'tabs', '', 1, 'Publishing', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'core_tab_publishing', '', '', '', 0, '0000-00-00 00:00:00'),
(478, 'Core Tab Metadata (Panel)', 'core_tab_metadata', 3, 'tabs', '', 1, 'Metadata', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'core_tab_metadata', '', '', '', 0, '0000-00-00 00:00:00'),
(479, 'Core Tab Options (Panel)', 'core_tab_options', 3, 'tabs', '', 1, 'Options', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'core_tab_options', '', '', '', 0, '0000-00-00 00:00:00'),
(481, 'Core Tab (End)', 'core_tab_end', 3, 'tabs', '', 1, '', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 2, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'core_tab_end', '', '', '', 0, '0000-00-00 00:00:00'),
(480, 'Core Tab Permissions (Panel)', 'core_tab_permissions', 3, 'tabs', '', 1, 'Permissions', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', 'core_tab_permissions', '', '', '', 0, '0000-00-00 00:00:00'),
(472, 'Article Tags', 'art_tags', 22, 'jform_tag', '', 1, 'Tags', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_article', '#__cck_store_item_content', 'tags', '', '', '', 0, '0000-00-00 00:00:00'),
(473, 'Category Tags', 'cat_tags', 23, 'jform_tag', '', 1, 'Tags', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_category', '#__cck_store_item_categories', 'tags', '', '', '', 0, '0000-00-00 00:00:00'),
(474, 'User Tags', 'user_tags', 24, 'jform_tag', '', 1, 'Tags', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_user', '#__cck_store_item_users', 'tags', '', '', '', 0, '0000-00-00 00:00:00'),
(475, 'User Group Tags', 'user_group_tags', 26, 'jform_tag', '', 1, 'Tags', ' ', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', 'joomla_user_group', '#__cck_store_item_usergroups', 'tags', '', '', '', 0, '0000-00-00 00:00:00'),
(482, 'Article Show Tags', 'art_show_tags', 16, 'select_simple', '', 1, 'Show Tags', 'Use Global', 3, '', '', '', 'Hide=0||Show=1', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'json', 'joomla_article', '#__content', 'attribs', 'show_tags', '', '', 0, '0000-00-00 00:00:00');


UPDATE `#__cck_core_fields` SET `title` = "Article Permissions" WHERE `id` = 393;
UPDATE `#__cck_core_fields` SET `title` = "Category Permissions" WHERE `id` = 392;

CREATE TABLE IF NOT EXISTS `#__cck_store_item_users` (
  `id` int(11) NOT NULL,
  `cck` varchar(50) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `about_me` text NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `birthdate` datetime NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

UPDATE `#__extensions` SET `enabled` = '1' WHERE `folder` = 'cck_field' AND `element` IN ("jform_tag","tabs");