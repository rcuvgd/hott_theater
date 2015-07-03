
ALTER TABLE `#__cck_core` CHANGE `storage_table` `storage_table` VARCHAR( 100 ) NOT NULL;
ALTER TABLE `#__cck_core_fields` CHANGE `storage_table` `storage_table` VARCHAR( 100 ) NOT NULL;
ALTER TABLE `#__cck_core_sites` CHANGE `name` `name` VARCHAR( 100 ) NOT NULL;

INSERT IGNORE INTO `#__cck_core_fields` (`id`, `title`, `name`, `folder`, `type`, `description`, `published`, `label`, `selectlabel`, `display`, `required`, `validation`, `defaultvalue`, `options`, `options2`, `minlength`, `maxlength`, `size`, `cols`, `rows`, `ordering`, `sorting`, `divider`, `bool`, `location`, `extended`, `style`, `script`, `bool2`, `bool3`, `bool4`, `bool5`, `bool6`, `bool7`, `bool8`, `css`, `attributes`, `storage`, `storage_location`, `storage_table`, `storage_field`, `storage_field2`, `storage_params`, `storages`, `checked_out`, `checked_out_time`) VALUES
(279, 'Core Uri', 'core_uri', 3, 'select_simple', '', 0, 'Uri', ' ', 3, '', '', 'current', 'Custom=custom||Presets=optgroup||Base=base||Current=current||Root=root', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'uri', '', '', '', 0, '0000-00-00 00:00:00'),
(280, 'Core Uri Parts', 'core_uri_parts', 3, 'checkbox', '', 0, 'Parts', ' ', 3, '', '', 'scheme,user,pass,host,port,path,query,fragment', 'Scheme=scheme||User=user||Password=pass||Host=host||Port=port||Path=path||Query=query||Fragment=fragment', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, ',', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'dev', '', '', 'parts', '', '', '', 0, '0000-00-00 00:00:00'),
(281, 'Core Dev Texts', 'core_dev_texts', 3, 'field_x', '', 0, 'Texts', ' ', 3, '', '', '', '', '', 1, 10, 32, 0, 1, 0, 0, '', 0, '', 'core_dev_text', '', '', 1, 1, 1, 0, 0, 0, 0, '', '', 'dev', '', '', 'texts', '', '', '', 0, '0000-00-00 00:00:00');

UPDATE `#__cck_core_fields` SET `bool3` = 1 WHERE `type` IN ("button_submit","button_free","button_cancel");
UPDATE `#__cck_core_fields` SET `options2` = '{"preparecontent":"","prepareform":"$value = ( $value ) ? $value : ''custom'';\\r\\n$options = array();\\r\\n$options[] = JHtml::_( ''select.option'', ''none'', ''- ''.JText::_( ''COM_CCK_NONE'' ).'' -'', ''value'', ''text'' );\\r\\n$my = JFactory::getUser();\\r\\n$iAmSuperAdmin = $my->authorise( ''core.admin'' );\\r\\nif ( ( JCck::getConfig_Param( ''storage_dev'', ''0'' ) == 1 && $iAmSuperAdmin === TRUE ) || ( $value == ''dev'' ) ) { $options[] = JHtml::_( ''select.option'', ''dev'', JText::_ ( ''COM_CCK_DEVELOPMENT'' ), ''value'', ''text'' );\\r\\n}\\r\\n$options = array_merge( $options, Helper_Admin::getPluginOptions( ''storage'', ''cck_'', false, false, true ) );\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value );","preparestore":""}', `script` = '$j("#storage").live(''change'', function() { var v = $j("#storage").val();\r\nif ( v == "dev" ) { $j("#storage_more, .storage_more").show();\r\n$j("#storage_location, #storage_table, #storage_alter").hide().attr("disabled", "disabled"); $j("#storage_field").removeAttr("disabled").show(); $j("#storage_field_pick").show(); $j("#storage_field").val(""); } else { $j("#storage_more, .storage_more").hide(); if ( v == "none" ) { $j("#storage_location, #storage_table, #storage_alter").hide().attr("disabled", "disabled"); $j("#storage_field").hide().attr("disabled", "disabled"); $j("#storage_field_pick").hide(); } else { $j("#storage_location, #storage_field, #storage_alter").removeAttr("disabled").show(); $j("#storage_field_pick").show(); if ( $j("#storage_location").val() == "free" ) { $j("#storage_table").attr("disabled", "").show(); } } } });\r\n$j("#storage_location").live(''change'', function() { var v = $j("#storage_location").val(); if ( v == "free" ) { $j("#storage_table").removeAttr("disabled").show(); } else { $j("#storage_table").hide().attr("disabled", "disabled");\r\n} });' WHERE `id` = 28;
UPDATE `#__cck_core_fields` SET `options2` = '{"preparecontent":"","prepareform":"$options = Helper_Admin::getFolderOptions( false, true, false, true, $config[''vName''] );\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select\\" size=\\"1\\"'', ''value'', ''text'', $value, $id );","preparestore":""}' WHERE `id` = 41;
UPDATE `#__cck_core_fields` SET `options2` = '{"preparecontent":"","prepareform":"$options = Helper_Admin::getFolderOptions( true, true, true, true, $config[''vName''] );\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}' WHERE `id` = 45;
UPDATE `#__cck_core_fields` SET `options2` = '{"preparecontent":"","prepareform":"$options = Helper_Admin::getLocationOptions();\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}' WHERE `id` = 46;
UPDATE `#__cck_core_fields` SET `options2` = '{"preparecontent":"","prepareform":"$options = Helper_Admin::getPluginOptions( ''field'', ''cck_'', true, false, true );\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}' WHERE `id` = 48;
UPDATE `#__cck_core_fields` SET `options2` = '{"preparecontent":"","prepareform":"$options = Helper_Admin::getPluginOptions( ''field'', ''cck_'', false, false, true );\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}' WHERE `id` = 49;
UPDATE `#__cck_core_fields` SET `options2` = '{"preparecontent":"","prepareform":"if ( @$config[''item'']->id == 1 || @$config[''item'']->id == 2 ) {\\r\\n $options = array();\\r\\n $options[] = JHtml::_( ''select.option'',  0, ''#'', ''value'', ''text'' );\\r\\n $disabled = '' disabled=\\"disabled\\" '';\\r\\n} else {\\r\\n $options = Helper_Admin::getFolderOptions( false, false, true );\\r\\n $disabled = '''';\\r\\n}\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select\\" size=\\"1\\" ''.$disabled.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}' WHERE `id` = 50;
UPDATE `#__cck_core_fields` SET `options2` = '{"preparecontent":"","prepareform":"$value = ( $value ) ? $value : ''joomla_article'';\\r\\n$options = array();\\r\\n$options = array_merge( $options, Helper_Admin::getPluginOptions( ''storage_location'', ''cck_'', false, false, true ) );\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}' WHERE `id` = 66;
UPDATE `#__cck_core_fields` SET `options2` = '{"preparecontent":"","prepareform":"require_once JPATH_ADMINISTRATOR.''\\/components\\/com_cck\\/helpers\\/helper_workshop.php'';\\r\\n$options = Helper_Workshop::getPositionVariations( @$config[''item'']->template, false );\\r\\n$attr = ''class=\\"inputbox\\" size=\\"1\\"'';\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, $attr, ''value'', ''text'', $value, $id );","preparestore":""}' WHERE `id` = 107;
UPDATE `#__cck_core_fields` SET `maxlength` = '100' WHERE `id` = 202;
UPDATE `#__cck_core_fields` SET `type` = 'jform_menuitem', `options2` = '', `css` = 'max-width-200', `attributes` = '' WHERE `id` = 218;
UPDATE `#__cck_core_fields` SET `selectlabel` = 'Use Default' WHERE `id` = 219;
UPDATE `#__cck_core_fields` SET `options2` = '{"preparecontent":"","prepareform":"$type = ( $field->location ) ? $field->location : ''field'';\\r\\n$opts = array();\\r\\nif ( trim( $field->selectlabel ) ) {\\r\\n  $opts[] = JHtml::_( ''select.option'','''',''- ''.$field->selectlabel.'' -'',''value'',''text'' );\\r\\n}\\r\\n$opts = array_merge( $opts, Helper_Admin::getPluginOptions( $type, ''cck_'', false, false, true ) );\\r\\n$css  = ( $field->required == ''required'' ) ? '' validate[required]'' : '''';\\r\\n$form = JHtml::_( ''select.genericlist'', $opts, $name, ''class=\\"inputbox select''.$css.''\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}' WHERE `id` = 232;
UPDATE `#__cck_core_fields` SET `options` = 'Alphanumeric=alnum||Float=float||Int=int||String=string||Word=word' WHERE `id` = 264;
UPDATE `#__cck_core_fields` SET `options2` = '{"preparecontent":"","prepareform":"$options = array();\\r\\nif ( trim( $field->selectlabel ) ) {\\r\\n  $options = array( JHtml::_( ''select.option'',  '''', ''- ''.$field->selectlabel.'' -'' ),\\r\\n                    JHtml::_( ''select.option'', ''none'', JText::_( ''COM_CCK_NONE'' ) ) );\\r\\n} else {\\r\\n  $value = ( $value ) ? $value : ''joomla_article'';\\r\\n  $options = array( JHtml::_( ''select.option'', ''none'', JText::_( ''COM_CCK_NONE'' ) ) );\\r\\n}\\r\\n$options = array_merge( $options, Helper_Admin::getPluginOptions( ''storage_location'', ''cck_'', false, false, true ) );\\r\\n$form = JHtml::_( ''select.genericlist'', $options, $name, ''class=\\"inputbox select\\" size=\\"1\\" ''.$field->attributes, ''value'', ''text'', $value, $id );","preparestore":""}' WHERE `id` = 275;

UPDATE `#__cck_core_fields` SET `attributes` = 'onchange="JCck.Dev.doSubmit();" style="max-width:190px;"' WHERE `id` = 56;
UPDATE `#__cck_core_fields` SET `script` = 'var e="type"; var elem="#jform_trigger_"+e;\r\nvar file="file=administrator/components/com_cck/helpers/scripts/list_live.php";\r\n$(elem).change(function() {\r\nif (!$("#jform_title").val()) {\r\n$("#jform_title").val($(elem+" option[value=\\''"+$(elem).val()+"\\'']").text());\r\n}\r\nvar type = "&e_name="+$(elem).val();\r\nvar live = "&live="+$("#jform_params_live").val();\r\nvar variat = "&variat="+$("#jform_params_variation").val();\r\n $.ajax({\r\n  cache: false, data: file+type+live+variat+"&elem="+e, type: "POST",\r\n  url: "index.php?option=com_cck&task=ajax&format=raw",\r\n  success: function(response){ $("#list_live_show").html(response); } });\r\n});\r\nvar type = "&e_name="+$(elem).val();\r\nvar live = "&live="+$("#jform_params_live").val();\r\nvar variat = "&variat="+$("#jform_params_variation").val();\r\n $.ajax({\r\n  cache: false, data: file+type+live+variat+"&elem="+e, type: "POST",\r\n  url: "index.php?option=com_cck&task=ajax&format=raw",\r\n  success: function(response){ $("#list_live_show").html(response); } });' WHERE `id` = 58;
UPDATE `#__cck_core_fields` SET `script` = 'var e="search"; var elem="#jform_trigger_"+e;\r\nvar file="file=administrator/components/com_cck/helpers/scripts/list_live.php";\r\n$(elem).change(function() {\r\nif (!$("#jform_title").val()) {\r\n$("#jform_title").val($(elem+" option[value=\\''"+$(elem).val()+"\\'']").text());\r\n}\r\nvar type = "&e_name="+$(elem).val();\r\nvar live = "&live="+$("#jform_params_live").val();\r\nvar variat = "&variat="+$("#jform_params_variation").val();\r\n $.ajax({\r\n  cache: false, data: file+type+live+variat+"&elem="+e, type: "POST",\r\n  url: "index.php?option=com_cck&task=ajax&format=raw",\r\n  success: function(response){ $("#list_live_show").html(response); } });\r\n});\r\nvar type = "&e_name="+$(elem).val();\r\nvar live = "&live="+$("#jform_params_live").val();\r\nvar variat = "&variat="+$("#jform_params_variation").val();\r\n $.ajax({\r\n  cache: false, data: file+type+live+variat+"&elem="+e, type: "POST",\r\n  url: "index.php?option=com_cck&task=ajax&format=raw",\r\n  success: function(response){ $("#list_live_show").html(response); } });' WHERE `id` = 59;

UPDATE `#__cck_core_fields` SET `script` = 'if(!$("#title").val()){ $("#title").focus(); }' WHERE `id` IN (37,51,201);
UPDATE `#__cck_core_fields` SET `script` = '$("#title").live("change", function() { if ( !$("#name").val() ) { var p = ""; if ($("span.insidebox").length > 0) { var p = $("span.insidebox").html()+"_"; } $("#name").val( p+$("#title").val().toLowerCase().replace(/^\\s+|\\s+$/g,"").replace(/\\s/g, "_").replace(/[^a-z0-9_]/gi, "") ) } }); if(!$("#title").val()){ $("#title").focus(); }' WHERE `id` IN (27,38,39);

UPDATE `#__cck_core_fields` SET `script` = '$("#storage").live(''change'', function() { var v = $("#storage").val();\r\nif ( v == "dev" ) { $("#storage_more, .storage_more").show();\r\n$("#storage_location, #storage_table, #storage_alter").hide().attr("disabled", "disabled"); $("#storage_field").removeAttr("disabled").show(); $("#storage_field_pick").show(); $("#storage_field").val(""); } else { $("#storage_more, .storage_more").hide(); if ( v == "none" ) { $("#storage_location, #storage_table, #storage_alter").hide().attr("disabled", "disabled"); $("#storage_field").hide().attr("disabled", "disabled"); $("#storage_field_pick").hide(); } else { $("#storage_location, #storage_field, #storage_alter").removeAttr("disabled").show(); $("#storage_field_pick").show(); if ( $("#storage_location").val() == "free" ) { $("#storage_table").attr("disabled", "").show(); } } } });\r\n$("#storage_location").live(''change'', function() { var v = $("#storage_location").val(); if ( v == "free" ) { $("#storage_table").removeAttr("disabled").show(); } else { $("#storage_table").hide().attr("disabled", "disabled");\r\n} });' WHERE `id` = 28;
UPDATE `#__cck_core_fields` SET `script` = '$("#state").click(function(){\r\n $("#state input").removeAttr("checked");\r\n if ( $("#state0").prop("checked") == true ) {\r\n  $("#state span").removeClass("unpublish").addClass("publish");\r\n  $("#state1").attr("checked", "checked");\r\n } else {\r\n  $("#state span").removeClass("publish").addClass("unpublish");\r\n  $("#state0").attr("checked", "checked");\r\n }\r\n});' WHERE `id` = 43;
UPDATE `#__cck_core_fields` SET `script` = '$("fieldset#layer").on("click", "label", function() {\r\n $("#layer label").removeClass(''selected''); $(this).addClass(''selected'');\r\n var current = $("#"+$(this).attr(''for''));\r\n if (current.prop("checked") != true) {\r\n  $("#layer input").removeAttr("checked"); current.attr("checked", "checked"); $(".layers").slideUp();  $("#layer_"+current.val()).slideDown();\r\n }\r\n});' WHERE `id` = 57;
UPDATE `#__cck_core_fields` SET `attributes` = ' onchange="if(jQuery(''#filter_location'').val() == ''e_id''){ jQuery(''#filter_location'').val(''title''); jQuery(''#filter_search'').val(''''); } this.form.submit();"' WHERE `id` = 258;