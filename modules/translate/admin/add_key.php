<?php

/**
 * NukeViet Content Management System
 * @version 4.x
 * @author VINADES.,JSC <contact@vinades.vn>
 * @copyright (C) 2009-2021 VINADES.,JSC. All rights reserved
 * @license GNU/GPL version 2 or any later version
 * @see https://github.com/nukeviet The NukeViet CMS GitHub project
 */

if (!defined('NV_IS_FILE_ADMIN')) {
    exit('Stop!!!');
}

$page_title = $lang_module['voting_edit'];

$error = '';
$id = $nv_Request->get_int('id', 'post,get');
$submit = $nv_Request->get_string('submit', 'post');

if (!empty($submit)) {
    $name = $nv_Request->get_title("name", "post");
    $langId = $nv_Request->get_title("langId", "post");

    $sql = 'INSERT INTO ' . NV_PREFIXLANG . '_' . $module_data . '_key (
                content,primary_lang
            ) VALUES (
               :content, :primary_lang
            )';
    $sth = $db->prepare($sql);
    $sth->bindParam("content", $name);
    $sth->bindParam("primary_lang", $langId);
    $sth->execute();
    // nv_redirect_location(NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&' . NV_NAME_VARIABLE . '=' . $module_name);
} else {
}

$langResult = $db->query('SELECT * FROM ' . NV_PREFIXLANG . '_' . $module_data . '_lang ORDER BY id ASC');
$xtpl = new XTemplate('add_key.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
$xtpl->assign('LANG', $lang_module);
$xtpl->assign('GLANG', $lang_global);
$xtpl->assign('FORM_ACTION', NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=' . $op . '&amp;vid=' . $vid);
while ($row = $langResult->fetch()) {
    $xtpl->assign('LANG_RESULT', $row);
    $xtpl->parse('main.langLoop');
}



$xtpl->parse('main');
$contents = $xtpl->text('main');
if ($vid) {
    $op = '';
}

include NV_ROOTDIR . '/includes/header.php';
echo nv_admin_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
