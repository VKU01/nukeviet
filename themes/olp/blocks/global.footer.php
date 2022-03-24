<?php

/**
 * NukeViet Content Management System
 * @version 4.x
 * @author VINADES.,JSC <contact@vinades.vn>
 * @copyright (C) 2009-2021 VINADES.,JSC. All rights reserved
 * @license GNU/GPL version 2 or any later version
 * @see https://github.com/nukeviet The NukeViet CMS GitHub project
 */

if (!defined('NV_MAINFILE')) {
    exit('Stop!!!');
}

if (!nv_function_exists('nv_menu_theme_footer')) {
    /**
     * nv_menu_theme_footer_config()
     *
     * @param string $module
     * @param array  $data_block
     * @param array  $lang_block
     * @return string
     */
    function nv_menu_theme_footer_config($module, $data_block, $lang_block)
    { 
        $html = '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">Title :</label>';
        $html .= '	<div class="col-sm-18"><input type="text" name="config_name" class="form-control" value="' . $data_block['name'] . '"/></div>';
        $html .= '</div>';
        $html .= '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">Content:</label>';
        $html .= '	<div class="col-sm-18"><input type="text" name="config_content" class="form-control" value="' . $data_block['content'] . '"/></div>';
        $html .= '</div>';
        $html .= '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">Address:</label>';
        $html .= '	<div class="col-sm-18"><input type="text" name="config_address" class="form-control" value="' . $data_block['address'] . '"/></div>';
        $html .= '</div>';


        return $html;
    }

    /**
     * nv_menu_theme_footer_submit()
     *
     * @param string $module
     * @param array  $lang_block
     * @return array
     */
    function nv_menu_theme_footer_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = [];
        $return['error'] = [];
        $return['config']['name'] = $nv_Request->get_title('config_name', 'post');
        $return['config']['content'] = $nv_Request->get_title('config_content', 'post');
        $return['config']['address'] = $nv_Request->get_title('config_address', 'post');

        return $return;
    }

    /**
     * nv_menu_theme_footer()
     *
     * @param array $block_config
     * @return string
     */
    function nv_menu_theme_footer($block_config)
    {
        global $global_config, $site_mods, $lang_global;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.footer.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.footer.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        $xtpl = new XTemplate('global.footer.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
        $xtpl->assign('LANG', $lang_global);
        $xtpl->assign('BLOCK_THEME', $block_theme);
        $xtpl->assign('DATA', $block_config);
        
        $xtpl->parse('main');

        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_menu_theme_footer($block_config);
}
