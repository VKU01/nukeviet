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

// $sql1 = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $module_data . ' ORDER BY id ASC';
// $sql2 = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $module_data . '_lang ORDER BY id ASC';
$sql3 = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $module_data . '_key ORDER BY id ASC';
// $result1 = $db->query($sql1);
// $result2 = $db->query($sql2);
$result3 = $db->query($sql3);

$xtpl = new XTemplate('main.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
$xtpl->assign('LANG', $lang_module);
$xtpl->assign('GLANG', $lang_global);
$i = 0;
while ($row = $result3->fetch()) {
    ++$i;
    $xtpl->assign('ROW', $row);
    $xtpl->parse('main.loop');
}
if (empty($i)) {
    nv_redirect_location(NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&' . NV_NAME_VARIABLE . '=' . $module_name . '&' . NV_OP_VARIABLE . '=add_key');
}

$xtpl->parse('main');
$contents = $xtpl->text('main');
$page_title = $lang_module['voting_list'];

include NV_ROOTDIR . '/includes/header.php';
echo nv_admin_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
