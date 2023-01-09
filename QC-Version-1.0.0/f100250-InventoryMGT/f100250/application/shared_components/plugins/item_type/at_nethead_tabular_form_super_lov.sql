prompt --application/shared_components/plugins/item_type/at_nethead_tabular_form_super_lov
begin
--   Manifest
--     PLUGIN: AT_NETHEAD_TABULAR_FORM_SUPER_LOV
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(37808444259222725451)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'AT_NETHEAD_TABULAR_FORM_SUPER_LOV'
,p_display_name=>'Tabular Form Super LOV (1.3)'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','AT_NETHEAD_TABULAR_FORM_SUPER_LOV'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION hash (',
'   p_value IN VARCHAR2',
')',
'   ',
'   RETURN VARCHAR2',
'   ',
'IS',
'',
'   l_retval VARCHAR2(32);',
'   l_salt   VARCHAR2(100) := ''A!7&s-$3lK*9N#a20Q1p68(w5z"4o02%'';',
'',
'BEGIN',
'',
'   IF p_value IS NOT NULL',
'   THEN',
'      l_retval := RAWTOHEX(utl_raw.cast_to_raw(dbms_obfuscation_toolkit.md5(',
'         input_string => p_value || l_salt',
'      )));',
'   END IF;',
'   ',
'   RETURN l_retval;',
'',
'END hash;',
'',
'PROCEDURE store_validation_hash(',
'   p_item_name IN VARCHAR2,',
'   p_hash      IN VARCHAR2',
')',
'',
'IS',
'',
'   l_collection_name VARCHAR2(50) := ''SBIP_SUPER_LOV_VALIDATION_VALUES'';',
'   l_seq_id          NUMBER;',
'   ',
'   FUNCTION existing_seq_id ',
'   ',
'      RETURN NUMBER',
'   ',
'   IS',
'   ',
'      l_retval NUMBER;',
'   ',
'   BEGIN',
'   ',
'      SELECT seq_id',
'      INTO l_retval',
'      FROM apex_collections',
'      WHERE collection_name = l_collection_name',
'         AND c001 = p_item_name;',
'      ',
'      RETURN l_retval;',
'   ',
'   EXCEPTION',
'   ',
'      WHEN NO_DATA_FOUND',
'      THEN',
'         RETURN l_retval;',
'   ',
'   END existing_seq_id;',
'',
'BEGIN',
'',
'   IF NOT apex_collection.collection_exists(',
'      p_collection_name => l_collection_name',
'   )',
'   THEN',
'      apex_collection.create_collection(',
'         p_collection_name => l_collection_name',
'      );',
'   END IF;',
'   ',
'   l_seq_id := existing_seq_id();',
'   ',
'   IF l_seq_id IS NOT NULL',
'   THEN',
'      apex_collection.update_member_attribute(',
'         p_collection_name => l_collection_name,',
'         p_seq             => l_seq_id,',
'         p_attr_number     => 2,',
'         p_attr_value      => p_hash',
'      );',
'   ELSE',
'      apex_collection.add_member(',
'         p_collection_name => l_collection_name,',
'         p_c001            => p_item_name,',
'         p_c002            => p_hash',
'      );',
'   END IF;',
'',
'END store_validation_hash;',
'',
'FUNCTION report_headers_js_array(',
'   p_sql_statement IN VARCHAR2,',
'   p_item_name     IN VARCHAR2',
')',
'',
'   RETURN VARCHAR2',
'',
'IS',
'',
'   l_column_value_list APEX_PLUGIN_UTIL.T_COLUMN_VALUE_LIST2;',
'   l_retval            VARCHAR2(32767);',
'',
'BEGIN',
'',
'   l_column_value_list := apex_plugin_util.get_data2(',
'      p_sql_statement  => ''SELECT * FROM ( '' || p_sql_statement || '' ) WHERE 1=2'', ',
'      p_min_columns    => 2, ',
'      p_max_columns    => 100, ',
'      p_component_name => p_item_name,',
'      p_first_row      => 1,',
'      p_max_rows       => 1',
'   );  ',
'   ',
'   l_retval := ''['''''';',
'   ',
'   FOR x IN 1 .. l_column_value_list.count',
'   LOOP',
'      l_retval := l_retval || apex_javascript.escape(l_column_value_list(x).name) || '''''','''''';',
'   END LOOP;',
'   ',
'   l_retval := RTRIM(l_retval, '''''','''''') || '''''']'';',
'',
'   RETURN l_retval;   ',
'',
'END report_headers_js_array;',
'',
'FUNCTION sbip_super_lov_render (',
'   p_item                IN APEX_PLUGIN.T_PAGE_ITEM,',
'   p_plugin              IN APEX_PLUGIN.T_PLUGIN,',
'   p_value               IN VARCHAR2,',
'   p_is_readonly         IN BOOLEAN,',
'   p_is_printer_friendly IN BOOLEAN ',
')',
'',
'   RETURN APEX_PLUGIN.T_PAGE_ITEM_RENDER_RESULT',
'   ',
'IS',
'',
'   l_retval             APEX_PLUGIN.T_PAGE_ITEM_RENDER_RESULT;',
'   l_name               VARCHAR2(30);',
'   l_validate_value     VARCHAR2(1) := NVL(p_item.attribute_01, ''Y'');',
'   l_dialog_title       VARCHAR2(32767) := NVL(p_item.attribute_02, p_item.plain_label);',
'   l_dis_ret_cols       VARCHAR2(10) := NVL(p_item.attribute_03, ''2,1'');',
'   l_searchable_cols    VARCHAR2(32767) := p_item.attribute_04;',
'   l_hidden_cols        VARCHAR2(32767) := p_item.attribute_05;',
'   l_map_from_cols      VARCHAR2(32767) := p_item.attribute_06;',
'   l_map_to_items       VARCHAR2(32767) := p_item.attribute_07;',
'   l_no_data_found_msg  VARCHAR2(32767) := NVL(p_item.attribute_08, ''Your search returned no results.'');',
'   l_max_rows_per_page  PLS_INTEGER := NVL(p_item.attribute_09, 15);',
'   l_search_type        VARCHAR2(32767) := NVL(p_plugin.attribute_01, apex_plugin_util.c_search_contains_ignore);',
'   l_jqueryui_theme     VARCHAR2(30) := p_plugin.attribute_02;',
'   l_loading_image_type VARCHAR2(30) := NVL(p_plugin.attribute_03, ''DEFAULT'');',
'   l_loading_image_def  VARCHAR2(30) := NVL(p_plugin.attribute_04, ''bar'');',
'   l_loading_image_cust VARCHAR2(32767) := NVL(p_plugin.attribute_05, apex_application.g_image_prefix || ''processing3.gif'');',
'   l_effects_speed      NUMBER := NVL(p_plugin.attribute_06, 400);',
'   l_clear_protection   VARCHAR2(1) := NVL(p_plugin.attribute_07, ''Y'');',
'   l_return_col_num     PLS_INTEGER;',
'   l_display_col_num    PLS_INTEGER;',
'   l_loading_image_src  VARCHAR2(32767);',
'   l_display_value      VARCHAR2(32767);',
'   l_onload_code        VARCHAR2(32767);',
'   l_crlf               CHAR(2) := CHR(13)||CHR(10);',
'   l_table_column       VARCHAR2(30) := p_item.attribute_11;',
'BEGIN',
'',
'   IF apex_application.g_debug',
'   THEN',
'      apex_plugin_util.debug_page_item (',
'         p_plugin              => p_plugin,',
'         p_page_item           => p_item,',
'         p_value               => p_value,',
'         p_is_readonly         => p_is_readonly,',
'         p_is_printer_friendly => p_is_printer_friendly',
'      );',
'   END IF;',
'   ',
'   l_display_col_num := SUBSTR(l_dis_ret_cols, 1, INSTR(l_dis_ret_cols, '','') - 1);',
'   l_return_col_num := SUBSTR(l_dis_ret_cols, INSTR(l_dis_ret_cols, '','') + 1);',
'',
'   l_name := apex_plugin.get_input_name_for_page_item(FALSE);',
'   ',
'   IF l_loading_image_type = ''DEFAULT''',
'   THEN',
'      l_loading_image_src := p_plugin.file_prefix || l_loading_image_def || ''.gif'';',
'   ELSE',
'      l_loading_image_src := REPLACE(l_loading_image_cust, ''#IMAGE_PREFIX#'', apex_application.g_image_prefix);',
'      l_loading_image_src := REPLACE(l_loading_image_src, ''#PLUGIN_PREFIX#'', p_plugin.file_prefix);',
'   END IF;',
'   ',
'   l_display_value := apex_plugin_util.get_display_data (',
'      p_sql_statement     => p_item.lov_definition,',
'      p_min_columns       => 1,',
'      p_max_columns       => 100,',
'      p_component_name    => p_item.name,',
'      p_display_column_no => l_display_col_num,',
'      p_search_column_no  => l_return_col_num,',
'      p_search_string     => p_value,',
'      p_display_extra     => p_item.lov_display_extra',
'   );',
'',
'   IF p_is_readonly OR p_is_printer_friendly',
'   THEN',
'      apex_plugin_util.print_hidden_if_readonly (',
'         p_item_name           => p_item.name,',
'         p_value               => p_value,',
'         p_is_readonly         => p_is_readonly,',
'         p_is_printer_friendly => p_is_printer_friendly',
'      );',
'      ',
'      apex_plugin_util.print_display_only (',
'         p_item_name        => p_item.name,',
'         p_display_value    => l_display_value,',
'         p_show_line_breaks => FALSE,',
'         p_escape           => TRUE,',
'         p_attributes       => p_item.element_attributes',
'      );',
'   ELSE',
'      sys.htp.p(',
'            ''<input type="hidden" name="'' || l_name || ''" id="'' || p_item.name || ''_HIDDENVALUE" value="'' || p_value || ''" />'' || l_crlf',
'         || ''<fieldset id="'' || p_item.name || ''_controls" class="superlov-controls lov">'' || l_crlf',
'         || ''   <table cellspacing="0" cellpadding="0" border="0" id="'' || p_item.name || ''_holder" class="lov" summary="">'' || l_crlf',
'         || ''      <tbody>'' || l_crlf',
'         || ''         <tr>'' || l_crlf',
'         || ''            <td class="lov">'' || l_crlf',
'         || ''               <input class="superlov-input popup_lov" type="text" disabled="disabled" onfocus="this.blur();"''',
'                            || '' value="'' || l_display_value || ''" maxlength="'' || p_item.element_max_length || ''" size="''',
'                            || p_item.element_width || ''" id="'' || p_item.name || ''" '' || p_item.element_attributes',
'                            || '' />'' || l_crlf',
'         || ''            </td>'' || l_crlf',
'         || ''            <td>'' || l_crlf',
'         || ''               <div class="superlov-modal-delete ui-state-highlight" title="Clear"><span class="ui-icon ui-icon-circle-close"></span></div>'' || l_crlf',
'         || ''            </td>'' || l_crlf',
'         || ''            <td>'' || l_crlf',
'         || ''               <div class="superlov-modal-open ui-state-highlight" title="Open"><span class="ui-icon ui-icon-circle-triangle-n"></span></div>'' || l_crlf',
'         || ''            </td>'' || l_crlf',
'         || ''         </tr>'' || l_crlf',
'         || ''      </tbody>'' || l_crlf',
'         || ''   </table>'' || l_crlf',
'         || ''</fieldset>'' || l_crlf',
'      );',
'      ',
'      IF l_jqueryui_theme IS NOT NULL',
'      THEN',
'         apex_css.add_file(',
'            p_name      => ''jquery-ui'',',
'            p_directory => apex_application.g_image_prefix || ''libraries/jquery-ui/1.8/themes/'' || l_jqueryui_theme || ''/'',',
'            p_version   => NULL',
'         );',
'      END IF;',
'      ',
'      apex_css.add_file(',
'         p_name      => ''com_skillbuilders_sbip_super_lov'',',
'         p_directory => p_plugin.file_prefix,',
'         p_version   => NULL',
'      );',
'',
'      apex_javascript.add_library(',
'         p_name      => ''jquery.ui.button'',',
'         p_directory => ''#JQUERYUI_DIRECTORY#ui/'',',
'         p_version   => NULL',
'      );',
'',
'      apex_javascript.add_library(',
'         p_name      => ''com_skillbuilders_sbip_super_lov.min'',',
'         p_directory => p_plugin.file_prefix,',
'         p_version   => NULL',
'      );',
'',
'      l_onload_code := ''apex.jQuery("input#'' || p_item.name || ''").sbip_super_lov({'' || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''validateValue'', sys.htf.escape_sc(l_validate_value)) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''returnColNum'', l_return_col_num) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''displayColNum'', l_display_col_num) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''hiddenCols'', sys.htf.escape_sc(l_hidden_cols)) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''searchableCols'', l_searchable_cols) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''mapFromCols'', l_map_from_cols) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''mapToItems'', l_map_to_items) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''maxRowsPerPage'', l_max_rows_per_page) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''noDataFoundMsg'', sys.htf.escape_sc(l_no_data_found_msg)) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''dialogTitle'', sys.htf.escape_sc(l_dialog_title)) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''effectsSpeed'', l_effects_speed) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''useClearProtection'', l_clear_protection) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''loadingImageSrc'', sys.htf.escape_sc(l_loading_image_src)) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''dependingOnSelector'', sys.htf.escape_sc(apex_plugin_util.page_item_names_to_jquery(p_item.lov_cascade_parent_items))) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''pageItemsToSubmit'', sys.htf.escape_sc(apex_plugin_util.page_item_names_to_jquery(p_item.ajax_items_to_submit))) || l_crlf',
'         || ''   "ajaxIdentifier": "'' || apex_plugin.get_ajax_identifier() || ''",'' || l_crlf',
'         || ''   "reportHeaders": '' || report_headers_js_array(p_item.lov_definition, p_item.name) || '','' || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''lovTableColumn'', l_table_column, TRUE, FALSE) || l_crlf         ',
'         || ''});'';',
'         ',
'      apex_javascript.add_onload_code(',
'         p_code => l_onload_code',
'      ); ',
'   END IF;',
'   ',
'   IF l_validate_value = ''Y''',
'   THEN',
'      store_validation_hash(',
'         p_item_name => p_item.name,',
'         p_hash      => hash(p_value)',
'      );',
'   END IF;',
'',
'   l_retval.is_navigable := FALSE;',
'        ',
'   RETURN l_retval;',
'    ',
'END sbip_super_lov_render;',
'',
'FUNCTION column_row_value (',
'   p_row           IN PLS_INTEGER,',
'   p_column_values IN APEX_PLUGIN_UTIL.T_COLUMN_VALUES',
')',
'',
'   RETURN VARCHAR2',
'',
'IS',
'',
'BEGIN',
'',
'   IF p_column_values.data_type = apex_plugin_util.c_data_type_varchar2',
'   THEN',
'      RETURN p_column_values.value_list(p_row).varchar2_value;',
'   ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_number',
'   THEN',
'      RETURN p_column_values.value_list(p_row).number_value;',
'   ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_date',
'   THEN',
'      RETURN p_column_values.value_list(p_row).date_value;',
'   ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_timestamp',
'   THEN',
'      RETURN p_column_values.value_list(p_row).timestamp_value;',
'   ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_timestamp_tz',
'   THEN',
'      RETURN p_column_values.value_list(p_row).timestamp_tz_value;',
'   ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_timestamp_ltz',
'   THEN',
'      RETURN p_column_values.value_list(p_row).timestamp_ltz_value;',
'   ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_interval_y2m',
'   THEN',
'      RETURN p_column_values.value_list(p_row).interval_y2m_value;',
'   ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_interval_d2s',
'   THEN',
'      RETURN p_column_values.value_list(p_row).interval_d2s_value;',
'   ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_blob',
'   THEN',
'      RETURN ''[BLOB_DATATYPE]'';',
'   ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_bfile',
'   THEN',
'      RETURN ''[BFILE_DATATYPE]'';',
'   ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_clob',
'   THEN',
'      RETURN p_column_values.value_list(p_row).clob_value;',
'   ELSE',
'      RETURN ''[INVALID_DATATYPE]'';',
'   END IF;',
'',
'END column_row_value; ',
'',
'FUNCTION sbip_super_lov_ajax (',
'   p_item   IN APEX_PLUGIN.T_PAGE_ITEM,',
'   p_plugin IN APEX_PLUGIN.T_PLUGIN',
')',
'',
'   RETURN APEX_PLUGIN.T_PAGE_ITEM_AJAX_RESULT',
'',
'IS',
'',
'   l_column_value_list APEX_PLUGIN_UTIL.T_COLUMN_VALUE_LIST2;     ',
'   l_validate_value    VARCHAR2(1) := NVL(p_item.attribute_01, ''Y'');',
'   l_dis_ret_cols      VARCHAR2(10) := NVL(p_item.attribute_03, ''2,1'');',
'   l_searchable_cols   VARCHAR2(32767) := p_item.attribute_04;',
'   l_hidden_cols       VARCHAR2(32767) := p_item.attribute_05;',
'   l_max_rows_per_page PLS_INTEGER := NVL(p_item.attribute_09, 15); ',
'   l_show_null_as      VARCHAR2(10) := NVL(p_item.attribute_10, ''&nbsp;'');',
'   l_search_type       VARCHAR2(32767) := NVL(p_plugin.attribute_01, apex_plugin_util.c_search_contains_ignore);',
'   l_return_col_num    PLS_INTEGER;',
'   l_display_col_num   PLS_INTEGER;',
'   l_lov_base_query    VARCHAR2(32767) := p_item.lov_definition;',
'   l_ajax_function     VARCHAR2(32767) := apex_application.g_x01;',
'   l_pagination        VARCHAR2(32767) := apex_application.g_x02;',
'   l_search_column_no  VARCHAR2(32767) := apex_application.g_x03;',
'   l_search_string     VARCHAR2(32767) := apex_application.g_x04;',
'   l_hash              VARCHAR2(32) := apex_application.g_x05;',
'   l_pagination_parts  WWV_FLOW_GLOBAL.VC_ARR2;',
'   l_crlf              CHAR(2) := CHR(13)||CHR(10);',
'  ',
'BEGIN',
'   ',
'   l_display_col_num := SUBSTR(l_dis_ret_cols, 1, INSTR(l_dis_ret_cols, '','') - 1);',
'   l_return_col_num := SUBSTR(l_dis_ret_cols, INSTR(l_dis_ret_cols, '','') + 1);',
'   l_hidden_cols := '','' || l_hidden_cols || '','';',
'',
'   IF l_ajax_function = ''FETCH_LOV''',
'   THEN',
'      l_pagination_parts := apex_util.string_to_table(l_pagination);    ',
'',
'      IF l_search_string IS NOT NULL',
'      THEN',
'         IF l_searchable_cols IS NOT NULL ',
'            AND INSTR('','' || l_searchable_cols || '','', '','' || l_search_column_no || '','') = 0',
'         THEN',
'            RAISE_APPLICATION_ERROR(-20001, ''Super LOV Exception: Search attempt on non-searchable column.'');',
'         END IF;',
'      ',
'         l_search_string := apex_plugin_util.get_search_string(',
'            p_search_type   => l_search_type,',
'            p_search_string => l_search_string ',
'         );',
'      ',
'         l_column_value_list := apex_plugin_util.get_data2(',
'            p_sql_statement    => l_lov_base_query, ',
'            p_min_columns      => 2, ',
'            p_max_columns      => 100, ',
'            p_component_name   => p_item.name,',
'            p_search_type      => l_search_type,',
'            p_search_column_no => l_search_column_no,',
'            p_search_string    => l_search_string,',
'            p_first_row        => l_pagination_parts(1),',
'            p_max_rows         => l_pagination_parts(2) + 1',
'         );',
'      ELSE',
'         l_column_value_list := apex_plugin_util.get_data2(',
'            p_sql_statement  => l_lov_base_query, ',
'            p_min_columns    => 2, ',
'            p_max_columns    => 100, ',
'            p_component_name => p_item.name,',
'            p_first_row      => l_pagination_parts(1),',
'            p_max_rows       => l_pagination_parts(2) + 1',
'         );   ',
'      END IF;',
'      ',
'      sys.htp.p(''<table id="superlov-fetch-results" cellspacing="0" cellpadding="0" border="0" class="superlov-table ui-widget ui-widget-content ui-corner-all">'');',
'      sys.htp.p(''<thead>'');',
'      sys.htp.p(''<tr>'');',
'      ',
'',
'      FOR x IN 1 .. l_column_value_list.count',
'      LOOP',
'         IF INSTR(l_hidden_cols, '','' || x || '','') = 0',
'         THEN',
'            sys.htp.prn(''<th class="ui-widget-header">'');',
'            sys.htp.prn(l_column_value_list(x).name);',
'            sys.htp.prn(''</th>'');',
'         END IF;',
'      END LOOP;',
'',
'      sys.htp.p(''</tr>'');',
'      sys.htp.p(''</thead>'');',
'      sys.htp.p(''<tbody>'');',
'      ',
'      FOR x IN 1 .. LEAST(l_column_value_list(1).value_list.count, l_max_rows_per_page)',
'      LOOP ',
'         IF l_validate_value = ''Y''',
'         THEN',
'            sys.htp.p(',
'               ''<tr data-return="'' || column_row_value(x, l_column_value_list(l_return_col_num)) ',
'               || ''" data-display="'' || column_row_value(x, l_column_value_list(l_display_col_num)) ',
'               || ''" data-hash="'' || hash(column_row_value(x, l_column_value_list(l_return_col_num))) ',
'               || ''"''',
'            );',
'            ',
'            IF p_item.escape_output',
'            THEN',
'               FOR y IN 1 .. l_column_value_list.count',
'               LOOP',
'                  IF INSTR(l_hidden_cols, '','' || y || '','') > 0',
'                  THEN',
'                     sys.htp.prn('' data-col'' || y || ''-value="'');',
'                     sys.htp.prn(NVL(sys.htf.escape_sc(column_row_value(x, l_column_value_list(y))), l_show_null_as));',
'                     sys.htp.prn(''"'');',
'                  END IF;',
'               END LOOP;',
'            ELSE',
'               FOR y IN 1 .. l_column_value_list.count',
'               LOOP',
'                  IF INSTR(l_hidden_cols, '','' || y || '','') > 0',
'                  THEN',
'                     sys.htp.prn('' data-col'' || y || ''-value="'');',
'                     sys.htp.prn(NVL(column_row_value(x, l_column_value_list(y)), l_show_null_as));',
'                     sys.htp.prn(''"'');',
'                  END IF;',
'               END LOOP;',
'            END IF;',
'            ',
'            sys.htp.p(''>'');',
'         ELSE',
'            sys.htp.p(',
'               ''<tr data-return="'' || column_row_value(x, l_column_value_list(l_return_col_num)) ',
'               || ''" data-display="'' || column_row_value(x, l_column_value_list(l_display_col_num)) ',
'               || ''"''',
'            );',
'            ',
'            IF p_item.escape_output',
'            THEN',
'               FOR y IN 1 .. l_column_value_list.count',
'               LOOP',
'                  IF INSTR(l_hidden_cols, '','' || y || '','') > 0',
'                  THEN',
'                     sys.htp.prn('' data-col'' || y || ''-value="'');',
'                     sys.htp.prn(NVL(sys.htf.escape_sc(column_row_value(x, l_column_value_list(y))), l_show_null_as));',
'                     sys.htp.prn(''"'');',
'                  END IF;',
'               END LOOP;',
'            ELSE',
'               FOR y IN 1 .. l_column_value_list.count',
'               LOOP',
'                  IF INSTR(l_hidden_cols, '','' || y || '','') > 0',
'                  THEN',
'                     sys.htp.prn('' data-col'' || y || ''-value="'');',
'                     sys.htp.prn(NVL(column_row_value(x, l_column_value_list(y)), l_show_null_as));',
'                     sys.htp.prn(''"'');',
'                  END IF;',
'               END LOOP;',
'            END IF;',
'            ',
'            sys.htp.p(''>'');',
'         END IF;',
'         ',
'         IF p_item.escape_output',
'         THEN',
'            FOR y IN 1 .. l_column_value_list.count',
'            LOOP',
'               IF INSTR(l_hidden_cols, '','' || y || '','') = 0',
'               THEN',
'                  sys.htp.prn(''<td class="ui-state-default sbip-col'' || y || ''">'');',
'                  sys.htp.prn(NVL(sys.htf.escape_sc(column_row_value(x, l_column_value_list(y))), l_show_null_as));',
'                  sys.htp.prn(''</td>'');',
'               END IF;',
'            END LOOP;',
'         ELSE',
'            FOR y IN 1 .. l_column_value_list.count',
'            LOOP',
'               IF INSTR(l_hidden_cols, '','' || y || '','') = 0',
'               THEN',
'                  sys.htp.prn(''<td class="ui-state-default sbip-col'' || y || ''">'');',
'                  sys.htp.prn(NVL(column_row_value(x, l_column_value_list(y)), l_show_null_as));',
'                  sys.htp.prn(''</td>'');',
'               END IF;',
'            END LOOP;',
'         END IF;',
'         ',
'         sys.htp.p(''</tr>'');',
'      END LOOP;',
'      ',
'      sys.htp.p(''</tbody></table>'');',
'      ',
'      IF l_column_value_list(1).value_list.count > l_max_rows_per_page',
'      THEN',
'         sys.htp.p(''<input id="sbip-super-lov-more-rows" type="hidden" value="Y" />'');',
'      ELSE',
'         sys.htp.p(''<input id="sbip-super-lov-more-rows" type="hidden" value="N" />'');',
'      END IF;',
'   ELSIF l_ajax_function = ''STORE_VALIDATION_HASH''',
'   THEN',
'      store_validation_hash(',
'         p_item_name => p_item.name,',
'         p_hash      => l_hash',
'      );',
'      ',
'      sys.htp.p(''SUCCESS'');',
'   END IF;',
'',
'   RETURN NULL;',
'',
'END sbip_super_lov_ajax;',
'',
'FUNCTION sbip_super_lov_validation (',
'   p_item   IN APEX_PLUGIN.T_PAGE_ITEM,',
'   p_plugin IN APEX_PLUGIN.T_PLUGIN,',
'   p_value  IN VARCHAR2',
')',
'',
'   RETURN APEX_PLUGIN.T_PAGE_ITEM_VALIDATION_RESULT',
'',
'IS',
'',
'   l_retval          APEX_PLUGIN.T_PAGE_ITEM_VALIDATION_RESULT;',
'   l_collection_name VARCHAR2(50) := ''SBIP_SUPER_LOV_VALIDATION_VALUES'';',
'   l_stored_hash     VARCHAR2(32);',
'   l_validate_value  VARCHAR2(1) := NVL(p_item.attribute_01, ''Y'');',
'',
'BEGIN',
'',
'   IF l_validate_value = ''Y'' AND p_value IS NOT NULL',
'   THEN',
'      SELECT c002',
'      INTO l_stored_hash',
'      FROM apex_collections',
'      WHERE collection_name = l_collection_name',
'         AND c001 = p_item.name;',
'         ',
'      IF NOT l_stored_hash = hash(p_value)',
'      THEN',
'         l_retval.message := ''#LABEL# contains a value that was not in the list of values.'';',
'      END IF;',
'   END IF;',
'',
'   RETURN l_retval;',
'',
'END;'))
,p_api_version=>1
,p_render_function=>'sbip_super_lov_render'
,p_ajax_function=>'sbip_super_lov_ajax'
,p_validation_function=>'sbip_super_lov_validation'
,p_standard_attributes=>'VISIBLE:SESSION_STATE:READONLY:ESCAPE_OUTPUT:SOURCE:WIDTH:ELEMENT_OPTION:LOV:CASCADING_LOV'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	<br />',
'	This is a modified version of SkillBuilder&#39;s Super LOV. Thanks to them that they created this awesome plugin and bundled it with a license that a allows me to modify it.</p>',
'<p>',
'	Use it like the original and additionally set the &quot;Tabular Form LOV Column&quot; to a Column Name of a Tabular form (needs to be a LOV field)</p>',
'<p>',
'	Damien Antipa &lt;damien.antipa@nethead.at&gt;</p>',
''))
,p_version_identifier=>'1.3.1'
,p_about_url=>'http://www.nethead.at'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40401717420823927496)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Search Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'CONTAINS_IGNORE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Use this setting to control how search strings are used to filter the LOV result set. '
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40401733933075940476)
,p_plugin_attribute_id=>wwv_flow_api.id(40401717420823927496)
,p_display_sequence=>10
,p_display_value=>'Contains/Case (uses INSTR)'
,p_return_value=>'CONTAINS_CASE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40401743022124946789)
,p_plugin_attribute_id=>wwv_flow_api.id(40401717420823927496)
,p_display_sequence=>20
,p_display_value=>'Contains/Ignore (uses INSTR with UPPER)'
,p_return_value=>'CONTAINS_IGNORE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40401744526626948101)
,p_plugin_attribute_id=>wwv_flow_api.id(40401717420823927496)
,p_display_sequence=>30
,p_display_value=>'Exact/Case (uses LIKE value%)'
,p_return_value=>'EXACT_CASE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40401747932513949823)
,p_plugin_attribute_id=>wwv_flow_api.id(40401717420823927496)
,p_display_sequence=>40
,p_display_value=>'Exact/Ignore (uses LIKE VALUE% with UPPER)'
,p_return_value=>'EXACT_IGNORE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40401761939093951703)
,p_plugin_attribute_id=>wwv_flow_api.id(40401717420823927496)
,p_display_sequence=>50
,p_display_value=>'Like/Case (uses LIKE %value%)'
,p_return_value=>'LIKE_CASE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40401764511519953180)
,p_plugin_attribute_id=>wwv_flow_api.id(40401717420823927496)
,p_display_sequence=>60
,p_display_value=>'Like/Ignore (uses LIKE %VALUE% with UPPER)'
,p_return_value=>'LIKE_IGNORE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40401776518792955265)
,p_plugin_attribute_id=>wwv_flow_api.id(40401717420823927496)
,p_display_sequence=>70
,p_display_value=>'Lookup (uses = value)'
,p_return_value=>'LOOKUP'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40403152929528308432)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Theme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'base'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this setting to control the basic color scheme of the calendar. If no theme is selected then the default theme will be used.</p>',
'',
unistr('<p style="font-style:italic">Tip: The Theme setting adds a link to a CSS file on the APEX page where the component is used. If possible, it\2019s best to manually add the link to the CSS file in the page template where the component is used. This can imp')
||'rove performance/caching while decreasing the likelihood of a conflict due to another plug-in linking to a different CSS file. This setting can then be disabled by selecting the null value (- Select Theme-).</p>',
'',
'<p style="font-style:italic">Tip: The plug-in is skinned using the jQuery UI CSS Framework. To learn more or create a custom theme visit:  http://docs.jquery.com/UI/Theming and http://jqueryui.com/themeroller.  </p>',
''))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33678239101705116406)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>1
,p_display_value=>'Base (APEX Default)'
,p_return_value=>'base'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403154535415310155)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>10
,p_display_value=>'Black Tie'
,p_return_value=>'black-tie'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403170416284323555)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>20
,p_display_value=>'Blitzer'
,p_return_value=>'blitzer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403194234554347718)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>30
,p_display_value=>'Cupertino'
,p_return_value=>'cupertino'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403195738363348769)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>40
,p_display_value=>'Dark Hive'
,p_return_value=>'dark-hive'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403196409058349810)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>50
,p_display_value=>'Dot Luv'
,p_return_value=>'dot-luv'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403198113560351129)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>60
,p_display_value=>'Eggplant'
,p_return_value=>'eggplant'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403199418408352457)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>70
,p_display_value=>'Excite Bike'
,p_return_value=>'excite-bike'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403200921179353299)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>80
,p_display_value=>'Flick'
,p_return_value=>'flick'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403203624642354286)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>90
,p_display_value=>'Hot Sneaks'
,p_return_value=>'hot-sneaks'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403205127412355107)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>100
,p_display_value=>'Humanity'
,p_return_value=>'humanity'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403206332607356639)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>110
,p_display_value=>'Le Frog'
,p_return_value=>'le-frog'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403207235377357437)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>120
,p_display_value=>'Mint Choc'
,p_return_value=>'mint-choc'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403213410228359608)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>130
,p_display_value=>'Overcast'
,p_return_value=>'overcast'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403219237933367567)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>140
,p_display_value=>'Pepper Grinder'
,p_return_value=>'pepper-grinder'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403220007242368182)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>150
,p_display_value=>'Smoothness'
,p_return_value=>'smoothness'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403221311744369466)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>160
,p_display_value=>'South Street'
,p_return_value=>'south-street'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403222114515370300)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>170
,p_display_value=>'Start'
,p_return_value=>'start'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403224018324371430)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>180
,p_display_value=>'Sunny'
,p_return_value=>'sunny'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403224820748372127)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>190
,p_display_value=>'Swanky Purse'
,p_return_value=>'swanky-purse'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403226323865372976)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>200
,p_display_value=>'Trontastic'
,p_return_value=>'trontastic'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403228428713374422)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>210
,p_display_value=>'UI Darkness'
,p_return_value=>'ui-darkness'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403230532869375567)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>220
,p_display_value=>'UI Lightness'
,p_return_value=>'	ui-lightness'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403232135986376452)
,p_plugin_attribute_id=>wwv_flow_api.id(40403152929528308432)
,p_display_sequence=>230
,p_display_value=>'Vader'
,p_return_value=>'vader'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40403461816218493790)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Loading Image Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'DEFAULT'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Use this setting to choose between a default or custom loading image. The loading image is displayed when the LOV is opened, before the result set appears. There are a number of default loading images that can be used (see Loading Image next) but you'
||' can use your own as well.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403474124876496321)
,p_plugin_attribute_id=>wwv_flow_api.id(40403461816218493790)
,p_display_sequence=>10
,p_display_value=>'Default'
,p_return_value=>'DEFAULT'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403485429031497484)
,p_plugin_attribute_id=>wwv_flow_api.id(40403461816218493790)
,p_display_sequence=>20
,p_display_value=>'Custom'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40403497633318508164)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Loading Image'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'bar'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40403461816218493790)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'DEFAULT'
,p_lov_type=>'STATIC'
,p_help_text=>'Use this setting to specify which loading image you would like to use. Based on the Loading Image Type selection, you will either choose from a number of default images or you will specify the path/name to a custom image.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403642020991589796)
,p_plugin_attribute_id=>wwv_flow_api.id(40403497633318508164)
,p_display_sequence=>10
,p_display_value=>'Bar'
,p_return_value=>'bar'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403643325840591171)
,p_plugin_attribute_id=>wwv_flow_api.id(40403497633318508164)
,p_display_sequence=>20
,p_display_value=>'Bar 2'
,p_return_value=>'bar2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403645429649592209)
,p_plugin_attribute_id=>wwv_flow_api.id(40403497633318508164)
,p_display_sequence=>30
,p_display_value=>'Bert'
,p_return_value=>'bert'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403646833458593362)
,p_plugin_attribute_id=>wwv_flow_api.id(40403497633318508164)
,p_display_sequence=>40
,p_display_value=>'Bert 2'
,p_return_value=>'bert2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403647937614594545)
,p_plugin_attribute_id=>wwv_flow_api.id(40403497633318508164)
,p_display_sequence=>50
,p_display_value=>'Big Snake'
,p_return_value=>'big-snake'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403650209694596000)
,p_plugin_attribute_id=>wwv_flow_api.id(40403497633318508164)
,p_display_sequence=>60
,p_display_value=>'Clock'
,p_return_value=>'clock'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403651416620597949)
,p_plugin_attribute_id=>wwv_flow_api.id(40403497633318508164)
,p_display_sequence=>70
,p_display_value=>'Drip Circle'
,p_return_value=>'drip-circle'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40403652320776599189)
,p_plugin_attribute_id=>wwv_flow_api.id(40403497633318508164)
,p_display_sequence=>80
,p_display_value=>'Squares Circle'
,p_return_value=>'squares-circle'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40404575821805223871)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Loading Image'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'#IMAGE_PREFIX#processing3.gif'
,p_display_length=>40
,p_max_length=>500
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40403461816218493790)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
,p_help_text=>'Enter the path to and name of the image you would like displayed when the dialog opens.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(34258057906097121038)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>6
,p_display_sequence=>25
,p_prompt=>'Effects Speed'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'400'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>unistr('Use this setting to specify the speed at which the modal dialog should perform certain effects such as sizing, resizing, and fading. Selecting \201Cinstant\201D will essentially disable any effects.')
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(34258059410598122376)
,p_plugin_attribute_id=>wwv_flow_api.id(34258057906097121038)
,p_display_sequence=>10
,p_display_value=>'Slow'
,p_return_value=>'600'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(34258060013715123218)
,p_plugin_attribute_id=>wwv_flow_api.id(34258057906097121038)
,p_display_sequence=>20
,p_display_value=>'Normal'
,p_return_value=>'400'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(34258060616832124086)
,p_plugin_attribute_id=>wwv_flow_api.id(34258057906097121038)
,p_display_sequence=>30
,p_display_value=>'Fast'
,p_return_value=>'200'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(34258061321334125457)
,p_plugin_attribute_id=>wwv_flow_api.id(34258057906097121038)
,p_display_sequence=>40
,p_display_value=>'Instant'
,p_return_value=>'0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26889501818361571647)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Use Clear Confirm'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Use this setting to enable or disable the Clear Protection feature. Clear Protection requires the user to click the clear button twice to clear the selected value. This is done to help prevent accidental clearings that would require the LOV to be reo'
||'pened.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33691278718811656791)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Use Value Validation'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Use this setting to enable or disable the Value Validation feature. Value Validation uses MD5 hashing algorithms to ensure that the value submitted into session state was generated from the LOV result set.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26800406812409097028)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Dialog Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_max_length=>100
,p_is_translatable=>false
,p_help_text=>unistr('Use this setting to explicitly set the title of the dialog. If no value is supplied then the item\2019s label will be used.')
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26800409014272106996)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Item Display & Return Columns'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'2,1'
,p_display_length=>10
,p_max_length=>7
,p_is_translatable=>false
,p_help_text=>unistr('Use this setting to specify which column should be used for the item\2019s display value and which column should be used for the item\2019s return value. The value should be a comma separated list of numbers where the numbers refer to the column in the LOV q')
||'uery. The first number should be the display column and the second number should be the return column.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26800414607608123960)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Searchable Columns'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_max_length=>100
,p_is_translatable=>false
,p_help_text=>'Use this setting to specify which columns should be displayed in the select list of columns that allows users to filter the LOV result set. The value should be a comma separated list of numbers where the numbers refer to columns in the LOV query. If '
||'no value is supplied then all columns will be searchable and the first visible column will be the default search column. If a value is supplied then only those columns will be searchable and the first column will be the default search column.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26800415922499128280)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Hidden Columns'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_max_length=>100
,p_is_translatable=>false
,p_help_text=>'Use this setting to specify which columns should be hidden when the LOV is displayed. The value should be a comma separated list of numbers where the numbers refer to columns in the LOV query. If no value is supplied then all columns will be visible.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26800416795272129857)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Map From Columns'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_max_length=>100
,p_is_translatable=>false
,p_help_text=>'Use this setting to specify which columns should be used to map values to other items (see Map To Items). The value should be a comma separated list of numbers where the numbers refer to columns in the LOV query. Both visible and hidden columns can b'
||'e used when mapping to other items.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26800418307046133304)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Map To Items'
,p_attribute_type=>'PAGE ITEMS'
,p_is_required=>false
,p_display_length=>80
,p_max_length=>1000
,p_is_translatable=>false
,p_help_text=>'Use this setting to specify which items should be used when mapping values from columns (see Map From Columns). The value should be a comma separated list of numbers where the numbers refer to columns in the LOV query. The order of the items in Map T'
||'o Items should match the order of the columns in Map To Columns.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26800423205792142449)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'When No Data Found Message'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_default_value=>'Your search returned no results.'
,p_display_length=>60
,p_max_length=>500
,p_is_translatable=>false
,p_help_text=>'Use this setting to specify what message should be displayed to users when the LOV query fails to retrieve any results.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26800462520599165583)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Max Rows Per Page'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'15'
,p_display_length=>3
,p_max_length=>3
,p_is_translatable=>false
,p_help_text=>'Use this setting to specify the maximum number of records that should be displayed at one time.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26800424216527145501)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Show Null Values As'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'&nbsp;'
,p_display_length=>5
,p_max_length=>10
,p_is_translatable=>false
,p_help_text=>'Use this setting to specify how null values should be displayed in the result set.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(17222998292793812147)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Tabular Form LOV Column'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'"COLUMN NAME" of a Report in the given page. The given column name must be a LOV type.'
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(68928032295995379)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_name=>'LOV'
,p_sql_min_column_count=>2
,p_sql_max_column_count=>100
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>SELECT empno AS "Emp No.",',
'   ename AS "Employee",',
'   job AS "Job",',
'   sal AS "Salary"',
'FROM emp</pre>'))
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2866756E6374696F6E2861297B612E776964676574282275692E736269705F73757065725F6C6F76222C7B6F7074696F6E733A7B76616C696461746556616C75653A6E756C6C2C72657475726E436F6C4E756D3A6E756C6C2C646973706C6179436F6C4E';
wwv_flow_api.g_varchar2_table(2) := '756D3A6E756C6C2C68696464656E436F6C733A6E756C6C2C73656172636861626C65436F6C733A6E756C6C2C6D617046726F6D436F6C733A6E756C6C2C6D6170546F4974656D733A6E756C6C2C6D6178526F7773506572506167653A6E756C6C2C646961';
wwv_flow_api.g_varchar2_table(3) := '6C6F675469746C653A6E756C6C2C757365436C65617250726F74656374696F6E3A6E756C6C2C6E6F44617461466F756E644D73673A6E756C6C2C6C6F6164696E67496D6167655372633A6E756C6C2C616A61784964656E7469666965723A6E756C6C2C72';
wwv_flow_api.g_varchar2_table(4) := '65706F7274486561646572733A6E756C6C2C6566666563747353706565643A6E756C6C2C646570656E64696E674F6E53656C6563746F723A6E756C6C2C706167654974656D73546F5375626D69743A6E756C6C2C6C6F765461626C65436F6C756D6E3A6E';
wwv_flow_api.g_varchar2_table(5) := '756C6C7D2C5F6372656174655072697661746553746F726167653A66756E6374696F6E28297B76617220613D746869733B612E5F76616C7565733D7B617065784974656D49643A22222C64656C65746549636F6E54696D656F75743A22222C706167696E';
wwv_flow_api.g_varchar2_table(6) := '6174696F6E3A22222C637572506167653A22222C6D6F7265526F77733A66616C73652C777261707065724865696768743A302C6469616C6F674865696768743A302C6469616C6F6757696474683A302C6469616C6F67546F703A302C6469616C6F674C65';
wwv_flow_api.g_varchar2_table(7) := '66743A302C70657263656E745265674578703A2F5E2D3F5B302D395D2B5C2E3F5B302D395D2A25242F2C706978656C5265674578703A2F5E2D3F5B302D395D2B5C2E3F5B302D395D2A7078242F692C68696464656E436F6C733A612E6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(8) := '68696464656E436F6C733F612E6F7074696F6E732E68696464656E436F6C732E73706C697428222C22293A5B5D2C73656172636861626C65436F6C733A612E6F7074696F6E732E73656172636861626C65436F6C733F612E6F7074696F6E732E73656172';
wwv_flow_api.g_varchar2_table(9) := '636861626C65436F6C732E73706C697428222C22293A5B5D2C6D617046726F6D436F6C733A612E6F7074696F6E732E6D617046726F6D436F6C733F612E6F7074696F6E732E6D617046726F6D436F6C732E73706C697428222C22293A5B5D2C6D6170546F';
wwv_flow_api.g_varchar2_table(10) := '4974656D733A612E6F7074696F6E732E6D6170546F4974656D733F612E6F7074696F6E732E6D6170546F4974656D732E73706C697428222C22293A5B5D7D3B612E5F656C656D656E74733D7B2477696E646F773A7B7D2C2468696464656E496E7075743A';
wwv_flow_api.g_varchar2_table(11) := '7B7D2C24646973706C6179496E7075743A7B7D2C24636C656172427574746F6E3A7B7D2C246F70656E427574746F6E3A7B7D2C246F757465724469616C6F673A7B7D2C246469616C6F673A7B7D2C24627574746F6E436F6E7461696E65723A7B7D2C2473';
wwv_flow_api.g_varchar2_table(12) := '6561726368436F6E7461696E65723A7B7D2C24706167696E6174696F6E436F6E7461696E65723A7B7D2C24636F6C756D6E53656C6563743A7B7D2C2466696C7465723A7B7D2C24676F427574746F6E3A7B7D2C2470726576427574746F6E3A7B7D2C2470';
wwv_flow_api.g_varchar2_table(13) := '6167696E6174696F6E446973706C61793A7B7D2C246E657874427574746F6E3A7B7D2C24777261707065723A7B7D2C247461626C653A7B7D2C246E6F646174613A7B7D2C246D6F7265526F77733A7B7D7D7D2C5F696E69743A66756E6374696F6E28297B';
wwv_flow_api.g_varchar2_table(14) := '76617220623D746869733B76617220633B76617220643B76617220653B76617220663B76617220673B76617220683B76617220693B766172206A3B766172206B3B622E5F6372656174655072697661746553746F7261676528293B622E5F76616C756573';
wwv_flow_api.g_varchar2_table(15) := '2E617065784974656D49643D6128622E656C656D656E74292E617474722822696422293B622E5F696E697442617365456C656D656E747328293B622E5F746162756C61724C6F7628293B643D622E5F656C656D656E74732E24646973706C6179496E7075';
wwv_flow_api.g_varchar2_table(16) := '742E6373732822626F726465722D746F702D636F6C6F7222293B653D622E5F656C656D656E74732E24646973706C6179496E7075742E6373732822626F726465722D746F702D776964746822293B663D622E5F656C656D656E74732E24646973706C6179';
wwv_flow_api.g_varchar2_table(17) := '496E7075742E6373732822626F726465722D746F702D7374796C6522293B673D622E5F656C656D656E74732E24646973706C6179496E7075742E63737328226261636B67726F756E642D636F6C6F7222293B683D622E5F656C656D656E74732E24646973';
wwv_flow_api.g_varchar2_table(18) := '706C6179496E7075742E63737328226261636B67726F756E642D696D61676522293B693D622E5F656C656D656E74732E24646973706C6179496E7075742E63737328226261636B67726F756E642D72657065617422293B6A3D622E5F656C656D656E7473';
wwv_flow_api.g_varchar2_table(19) := '2E24646973706C6179496E7075742E63737328226261636B67726F756E642D6174746163686D656E7422293B6B3D622E5F656C656D656E74732E24646973706C6179496E7075742E63737328226261636B67726F756E642D706F736974696F6E22293B69';
wwv_flow_api.g_varchar2_table(20) := '662828612E62726F777365722E6D7369657C7C612E62726F777365722E7765626B697429262664213D3D226E6F6E6522297B643D2223616161616161223B696628612E62726F777365722E6D7369652626663D3D3D226E6F6E6522297B663D22696E7365';
wwv_flow_api.g_varchar2_table(21) := '74227D7D696628653D3D3D2232707822297B653D22317078227D622E5F656C656D656E74732E24646973706C6179496E7075742E6373732822626F72646572222C226E6F6E6522293B61282223222B622E5F76616C7565732E617065784974656D49642B';
wwv_flow_api.g_varchar2_table(22) := '225F636F6E74726F6C7322292E637373287B22626F726465722D636F6C6F72223A642C22626F726465722D7769647468223A652C22626F726465722D7374796C65223A662C226261636B67726F756E642D636F6C6F72223A672C226261636B67726F756E';
wwv_flow_api.g_varchar2_table(23) := '642D696D616765223A682C226261636B67726F756E642D726570656174223A692C226261636B67726F756E642D6174746163686D656E74223A6A2C226261636B67726F756E642D706F736974696F6E223A6B7D293B622E5F656C656D656E74732E246F70';
wwv_flow_api.g_varchar2_table(24) := '656E427574746F6E2E62696E642822636C69636B222C66756E6374696F6E28297B622E5F73686F774469616C6F6728297D293B622E5F656C656D656E74732E24636C656172427574746F6E2E62696E642822636C69636B222C66756E6374696F6E28297B';
wwv_flow_api.g_varchar2_table(25) := '622E5F636C6561724C6F7628297D293B622E5F656C656D656E74732E24646973706C6179496E7075742E62696E6428226170657872656672657368222C66756E6374696F6E28297B622E5F7265667265736828297D293B696628622E6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(26) := '646570656E64696E674F6E53656C6563746F72297B6128622E6F7074696F6E732E646570656E64696E674F6E53656C6563746F72292E62696E6428226368616E6765222C66756E6374696F6E28297B622E5F656C656D656E74732E24646973706C617949';
wwv_flow_api.g_varchar2_table(27) := '6E7075742E747269676765722822617065787265667265736822297D297D7D2C5F696E697442617365456C656D656E74733A66756E6374696F6E28297B76617220623D746869733B622E5F656C656D656E74732E2468696464656E496E7075743D612822';
wwv_flow_api.g_varchar2_table(28) := '23222B622E5F76616C7565732E617065784974656D49642B225F48494444454E56414C554522293B622E5F656C656D656E74732E24646973706C6179496E7075743D622E656C656D656E743B622E5F656C656D656E74732E24636C656172427574746F6E';
wwv_flow_api.g_varchar2_table(29) := '3D61282223222B622E5F76616C7565732E617065784974656D49642B225F636F6E74726F6C73206469762E73757065726C6F762D6D6F64616C2D64656C65746522293B622E5F656C656D656E74732E246F70656E427574746F6E3D61282223222B622E5F';
wwv_flow_api.g_varchar2_table(30) := '76616C7565732E617065784974656D49642B225F636F6E74726F6C73206469762E73757065726C6F762D6D6F64616C2D6F70656E22297D2C5F746162756C61724C6F763A66756E6374696F6E28297B76617220623D746869733B76617220633D622E6F70';
wwv_flow_api.g_varchar2_table(31) := '74696F6E732E6C6F765461626C65436F6C756D6E3B76617220643D61282774645B686561646572733D22272B632B27225D27292E66696E6428227370616E2E6C6F7622293B622E5F656C656D656E74732E2468696464656E496E7075742E706172656E74';
wwv_flow_api.g_varchar2_table(32) := '2822746422292E706172656E742822747222292E6869646528293B61282774645B686561646572733D22272B632B27225D203E207370616E2E6C6F76203E206127292E61747472282268726566222C222322292E6174747228226F6E636C69636B222C22';
wwv_flow_api.g_varchar2_table(33) := '22292E756E62696E642822636C69636B22292E6C6976652822636C69636B222C66756E6374696F6E2863297B76617220643D612874686973292E706172656E747328227370616E2E6C6F7622293B76617220653D642E66696E642827696E7075745B7479';
wwv_flow_api.g_varchar2_table(34) := '70653D2274657874225D27293B76617220663D642E66696E642827696E7075745B747970653D2268696464656E225D27293B632E70726576656E7444656661756C7428293B622E5F656C656D656E74732E246F70656E427574746F6E2E636C69636B2829';
wwv_flow_api.g_varchar2_table(35) := '3B622E5F656C656D656E74732E2468696464656E496E7075742E756E62696E6428226368616E676522292E62696E6428226368616E6765222C66756E6374696F6E28297B696628662E6C656E6774683E30297B662E76616C28622E5F656C656D656E7473';
wwv_flow_api.g_varchar2_table(36) := '2E2468696464656E496E7075742E76616C2829293B652E76616C28622E5F656C656D656E74732E24646973706C6179496E7075742E76616C2829297D656C73657B652E76616C28622E5F656C656D656E74732E2468696464656E496E7075742E76616C28';
wwv_flow_api.g_varchar2_table(37) := '29297D622E5F656C656D656E74732E2468696464656E496E7075742E756E62696E6428226368616E676522297D297D297D2C5F696E6974456C656D656E74733A66756E6374696F6E28297B76617220623D746869733B622E5F656C656D656E74732E2477';
wwv_flow_api.g_varchar2_table(38) := '696E646F773D612877696E646F77293B622E5F656C656D656E74732E246F757465724469616C6F673D6128226469762E73757065726C6F762D6469616C6F6722293B622E5F656C656D656E74732E246469616C6F673D6128226469762E73757065726C6F';
wwv_flow_api.g_varchar2_table(39) := '762D636F6E7461696E657222293B622E5F656C656D656E74732E24627574746F6E436F6E7461696E65723D6128226469762E73757065726C6F762D627574746F6E2D636F6E7461696E657222293B622E5F656C656D656E74732E24736561726368436F6E';
wwv_flow_api.g_varchar2_table(40) := '7461696E65723D6128226469762E73757065726C6F762D7365617263682D636F6E7461696E657222293B622E5F656C656D656E74732E24706167696E6174696F6E436F6E7461696E65723D6128226469762E73757065726C6F762D706167696E6174696F';
wwv_flow_api.g_varchar2_table(41) := '6E2D636F6E7461696E657222293B622E5F656C656D656E74732E24636F6C756D6E53656C6563743D61282273656C6563742373757065726C6F762D636F6C756D6E2D73656C65637422293B622E5F656C656D656E74732E2466696C7465723D612822696E';
wwv_flow_api.g_varchar2_table(42) := '7075742373757065726C6F762D66696C74657222293B622E5F656C656D656E74732E24736561726368427574746F6E3D6128226469762E73757065726C6F762D7365617263682D69636F6E22293B622E5F656C656D656E74732E2470726576427574746F';
wwv_flow_api.g_varchar2_table(43) := '6E3D612822627574746F6E2373757065726C6F762D707265762D7061676522293B622E5F656C656D656E74732E24706167696E6174696F6E446973706C61793D6128227370616E2373757065726C6F762D706167696E6174696F6E2D646973706C617922';
wwv_flow_api.g_varchar2_table(44) := '293B622E5F656C656D656E74732E246E657874427574746F6E3D612822627574746F6E2373757065726C6F762D6E6578742D7061676522293B622E5F656C656D656E74732E24777261707065723D6128226469762E73757065726C6F762D7461626C652D';
wwv_flow_api.g_varchar2_table(45) := '7772617070657222293B7D2C5F696E69745472616E7369656E74456C656D656E74733A66756E6374696F6E28297B76617220623D746869733B622E5F656C656D656E74732E247461626C653D6128227461626C652E73757065726C6F762D7461626C6522';
wwv_flow_api.g_varchar2_table(46) := '293B622E5F656C656D656E74732E246E6F646174613D6128226469762E73757065726C6F762D6E6F6461746122293B622E5F656C656D656E74732E246D6F7265526F77733D612822696E70757423736269702D73757065722D6C6F762D6D6F72652D726F';
wwv_flow_api.g_varchar2_table(47) := '777322297D2C5F696E6974427574746F6E733A66756E6374696F6E28297B76617220613D746869733B612E5F656C656D656E74732E24736561726368427574746F6E2E62696E642822636C69636B222C7B7569773A617D2C612E5F68616E646C65536561';
wwv_flow_api.g_varchar2_table(48) := '726368427574746F6E436C69636B293B612E5F656C656D656E74732E2470726576427574746F6E2E627574746F6E287B746578743A66616C73652C69636F6E733A7B7072696D6172793A2275692D69636F6E2D6172726F77746869636B2D312D77227D7D';
wwv_flow_api.g_varchar2_table(49) := '292E62696E642822636C69636B222C7B7569773A617D2C612E5F68616E646C6550726576427574746F6E436C69636B293B612E5F656C656D656E74732E246E657874427574746F6E2E627574746F6E287B746578743A66616C73652C69636F6E733A7B70';
wwv_flow_api.g_varchar2_table(50) := '72696D6172793A2275692D69636F6E2D6172726F77746869636B2D312D65227D7D292E62696E642822636C69636B222C7B7569773A617D2C612E5F68616E646C654E657874427574746F6E436C69636B297D2C5F696E6974436F6C756D6E53656C656374';
wwv_flow_api.g_varchar2_table(51) := '3A66756E6374696F6E28297B76617220623D746869733B76617220633D622E5F656C656D656E74732E24636F6C756D6E53656C6563742E6765742830293B76617220643D313B666F7228783D303B783C622E6F7074696F6E732E7265706F727448656164';
wwv_flow_api.g_varchar2_table(52) := '6572732E6C656E6774683B782B2B297B69662821622E5F697348696464656E436F6C28782B31292626622E5F697353656172636861626C65436F6C28782B3129297B632E6F7074696F6E735B645D3D6E6577204F7074696F6E28622E6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(53) := '7265706F7274486561646572735B785D2C782B31293B642B3D317D7D696628622E5F76616C7565732E73656172636861626C65436F6C732E6C656E677468297B61282773656C6563742373757065726C6F762D636F6C756D6E2D73656C656374206F7074';
wwv_flow_api.g_varchar2_table(54) := '696F6E5B76616C75653D22272B622E5F76616C7565732E73656172636861626C65436F6C735B305D2B27225D27292E61747472282273656C6563746564222C2273656C656374656422297D656C73657B61282273656C6563742373757065726C6F762D63';
wwv_flow_api.g_varchar2_table(55) := '6F6C756D6E2D73656C656374206F7074696F6E3A657128312922292E61747472282273656C6563746564222C2273656C656374656422297D7D2C5F68616E646C65436F6C756D6E4368616E67653A66756E6374696F6E28297B76617220613D746869733B';
wwv_flow_api.g_varchar2_table(56) := '696628612E5F656C656D656E74732E24636F6C756D6E53656C6563742E76616C2829297B612E5F656C656D656E74732E2466696C7465722E72656D6F766541747472282264697361626C656422297D656C73657B612E5F656C656D656E74732E2466696C';
wwv_flow_api.g_varchar2_table(57) := '7465722E76616C282222292E61747472282264697361626C6564222C2264697361626C656422297D612E5F7570646174655374796C656446696C74657228297D2C5F69654E6F53656C656374546578743A66756E6374696F6E28297B696628646F63756D';
wwv_flow_api.g_varchar2_table(58) := '656E742E6174746163684576656E74297B6128226469762E73757065726C6F762D7461626C652D77726170706572202A22292E656163682866756E6374696F6E28297B612874686973295B305D2E6174746163684576656E7428226F6E73656C65637473';
wwv_flow_api.g_varchar2_table(59) := '74617274222C66756E6374696F6E28297B72657475726E2066616C73657D297D297D7D2C5F697348696464656E436F6C3A66756E6374696F6E2861297B76617220623D746869733B76617220633D66616C73653B666F7228693D303B693C622E5F76616C';
wwv_flow_api.g_varchar2_table(60) := '7565732E68696464656E436F6C732E6C656E6774683B692B2B297B6966287061727365496E7428612C3130293D3D3D7061727365496E7428622E5F76616C7565732E68696464656E436F6C735B695D2C313029297B633D747275653B627265616B7D7D72';
wwv_flow_api.g_varchar2_table(61) := '657475726E20637D2C5F697353656172636861626C65436F6C3A66756E6374696F6E2861297B76617220623D746869733B76617220633D66616C73653B696628622E5F76616C7565732E73656172636861626C65436F6C732E6C656E677468297B666F72';
wwv_flow_api.g_varchar2_table(62) := '28693D303B693C622E5F76616C7565732E73656172636861626C65436F6C732E6C656E6774683B692B2B297B6966287061727365496E7428612C3130293D3D3D7061727365496E7428622E5F76616C7565732E73656172636861626C65436F6C735B695D';
wwv_flow_api.g_varchar2_table(63) := '2C313029297B633D747275653B627265616B7D7D7D656C73657B633D747275657D72657475726E20637D2C5F73686F774469616C6F673A66756E6374696F6E28297B76617220623D746869733B76617220633B76617220643D273C64697620636C617373';
wwv_flow_api.g_varchar2_table(64) := '3D2273757065726C6F762D636F6E7461696E65722075692D776964676574223E5C6E272B272020203C64697620636C6173733D2273757065726C6F762D627574746F6E2D636F6E7461696E65722075692D7769646765742D6865616465722075692D636F';
wwv_flow_api.g_varchar2_table(65) := '726E65722D616C6C2075692D68656C7065722D636C656172666978223E5C6E272B272020202020203C64697620636C6173733D2273757065726C6F762D7365617263682D636F6E7461696E6572223E5C6E272B222020202020202020203C7461626C653E';
wwv_flow_api.g_varchar2_table(66) := '5C6E222B222020202020202020202020203C74723E5C6E222B272020202020202020202020202020203C74642076616C69676E3D226D6964646C65223E5C6E272B22202020202020202020202020202020202020536561726368205C6E222B2220202020';
wwv_flow_api.g_varchar2_table(67) := '20202020202020202020203C2F74643E5C6E222B272020202020202020202020202020203C74642076616C69676E3D226D6964646C65223E5C6E272B272020202020202020202020202020202020203C73656C6563742069643D2273757065726C6F762D';
wwv_flow_api.g_varchar2_table(68) := '636F6C756D6E2D73656C656374222073697A653D2231223E5C6E272B272020202020202020202020202020202020202020203C6F7074696F6E2076616C75653D22223E2D2053656C65637420436F6C756D6E202D3C2F6F7074696F6E3E5C6E272B222020';
wwv_flow_api.g_varchar2_table(69) := '202020202020202020202020202020203C2F73656C6563743E5C6E222B222020202020202020202020202020203C2F74643E5C6E222B222020202020202020202020202020203C74643E5C6E222B272020202020202020202020202020202020203C6469';
wwv_flow_api.g_varchar2_table(70) := '762069643D2273757065726C6F765F7374796C65645F66696C7465722220636C6173733D2275692D636F726E65722D616C6C223E5C6E272B222020202020202020202020202020202020202020203C7461626C653E5C6E222B2220202020202020202020';
wwv_flow_api.g_varchar2_table(71) := '20202020202020202020202020203C74626F64793E5C6E222B222020202020202020202020202020202020202020202020202020203C74723E5C6E222B222020202020202020202020202020202020202020202020202020202020203C74643E5C6E222B';
wwv_flow_api.g_varchar2_table(72) := '272020202020202020202020202020202020202020202020202020202020202020203C696E70757420747970653D2274657874222069643D2273757065726C6F762D66696C7465722220636C6173733D2275692D636F726E65722D616C6C222F3E5C6E27';
wwv_flow_api.g_varchar2_table(73) := '2B222020202020202020202020202020202020202020202020202020202020203C2F74643E5C6E222B222020202020202020202020202020202020202020202020202020202020203C74643E5C6E222B2720202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(74) := '20202020202020202020202020203C64697620636C6173733D2275692D73746174652D686967686C696768742073757065726C6F762D7365617263682D69636F6E223E3C7370616E20636C6173733D2275692D69636F6E2075692D69636F6E2D63697263';
wwv_flow_api.g_varchar2_table(75) := '6C652D7A6F6F6D696E223E3C2F7370616E3E3C2F6469763E5C6E272B222020202020202020202020202020202020202020202020202020202020203C2F74643E5C6E222B222020202020202020202020202020202020202020202020202020203C2F7472';
wwv_flow_api.g_varchar2_table(76) := '3E5C6E222B222020202020202020202020202020202020202020202020203C2F74626F64793E5C6E222B222020202020202020202020202020202020202020203C2F7461626C653E5C6E222B222020202020202020202020202020202020203C2F646976';
wwv_flow_api.g_varchar2_table(77) := '3E5C6E222B222020202020202020202020202020203C2F74643E5C6E222B222020202020202020202020203C2F74723E5C6E222B222020202020202020203C2F7461626C653E5C6E222B222020202020203C2F6469763E5C6E222B272020202020203C64';
wwv_flow_api.g_varchar2_table(78) := '697620636C6173733D2273757065726C6F762D706167696E6174696F6E2D636F6E7461696E6572223E5C6E272B222020202020202020203C7461626C653E5C6E222B222020202020202020202020203C74723E5C6E222B27202020202020202020202020';
wwv_flow_api.g_varchar2_table(79) := '2020203C74642076616C69676E3D226D6964646C65223E5C6E272B272020202020202020202020202020202020203C627574746F6E2069643D2273757065726C6F762D707265762D70616765223E50726576696F757320506167653C2F627574746F6E3E';
wwv_flow_api.g_varchar2_table(80) := '5C6E272B222020202020202020202020202020203C2F74643E5C6E222B272020202020202020202020202020203C74642076616C69676E3D226D6964646C65223E5C6E272B272020202020202020202020202020202020203C7370616E2069643D227375';
wwv_flow_api.g_varchar2_table(81) := '7065726C6F762D706167696E6174696F6E2D646973706C6179223E5061676520313C2F7370616E3E5C6E272B222020202020202020202020202020203C2F74643E5C6E222B272020202020202020202020202020203C74642076616C69676E3D226D6964';
wwv_flow_api.g_varchar2_table(82) := '646C65223E5C6E272B272020202020202020202020202020202020203C627574746F6E2069643D2273757065726C6F762D6E6578742D70616765223E4E65787420506167653C2F627574746F6E3E5C6E272B222020202020202020202020202020203C2F';
wwv_flow_api.g_varchar2_table(83) := '74643E5C6E222B222020202020202020202020203C2F74723E5C6E222B222020202020202020203C2F7461626C653E5C6E222B222020202020203C2F6469763E5C6E222B222020203C2F6469763E5C6E222B272020203C64697620636C6173733D227375';
wwv_flow_api.g_varchar2_table(84) := '7065726C6F762D7461626C652D77726170706572223E5C6E272B272020202020203C696D67207372633D22272B622E6F7074696F6E732E6C6F6164696E67496D6167655372632B27223E5C6E272B222020203C2F6469763E5C6E222B223C2F6469763E5C';
wwv_flow_api.g_varchar2_table(85) := '6E223B612822626F647922292E617070656E642864293B622E5F696E6974456C656D656E747328293B622E5F76616C7565732E706167696E6174696F6E3D22313A222B622E6F7074696F6E732E6D6178526F7773506572506167653B622E5F76616C7565';
wwv_flow_api.g_varchar2_table(86) := '732E736561726368537472696E673D22223B622E5F76616C7565732E637572506167653D313B622E5F696E6974427574746F6E7328293B622E5F696E6974436F6C756D6E53656C65637428293B622E5F656C656D656E74732E24636F6C756D6E53656C65';
wwv_flow_api.g_varchar2_table(87) := '63742E62696E6428226368616E6765222C66756E6374696F6E28297B622E5F68616E646C65436F6C756D6E4368616E676528297D293B622E5F656C656D656E74732E2466696C7465722E62696E6428226B6579646F776E222C7B7569773A627D2C622E5F';
wwv_flow_api.g_varchar2_table(88) := '68616E646C6546696C7465724B6579646F776E293B76617220653D622E5F656C656D656E74732E2466696C7465722E6373732822626F726465722D746F702D636F6C6F7222293B76617220663D622E5F656C656D656E74732E2466696C7465722E637373';
wwv_flow_api.g_varchar2_table(89) := '2822626F726465722D746F702D776964746822293B76617220673D622E5F656C656D656E74732E2466696C7465722E6373732822626F726465722D746F702D7374796C6522293B76617220683D622E5F656C656D656E74732E2466696C7465722E637373';
wwv_flow_api.g_varchar2_table(90) := '28226261636B67726F756E642D636F6C6F7222293B76617220693D622E5F656C656D656E74732E2466696C7465722E63737328226261636B67726F756E642D696D61676522293B766172206A3D622E5F656C656D656E74732E2466696C7465722E637373';
wwv_flow_api.g_varchar2_table(91) := '28226261636B67726F756E642D72657065617422293B766172206B3D622E5F656C656D656E74732E2466696C7465722E63737328226261636B67726F756E642D6174746163686D656E7422293B766172206C3D622E5F656C656D656E74732E2466696C74';
wwv_flow_api.g_varchar2_table(92) := '65722E63737328226261636B67726F756E642D706F736974696F6E22293B69662828612E62726F777365722E6D7369657C7C612E62726F777365722E7765626B697429262665213D3D226E6F6E6522297B653D2223616161616161223B696628612E6272';
wwv_flow_api.g_varchar2_table(93) := '6F777365722E6D7369652626673D3D3D226E6F6E6522297B673D22696E736574227D7D622E5F656C656D656E74732E2466696C7465722E6373732822626F72646572222C226E6F6E6522293B6128222373757065726C6F765F7374796C65645F66696C74';
wwv_flow_api.g_varchar2_table(94) := '657222292E637373287B22626F726465722D636F6C6F72223A652C22626F726465722D7769647468223A662C22626F726465722D7374796C65223A672C226261636B67726F756E642D636F6C6F72223A682C226261636B67726F756E642D696D61676522';
wwv_flow_api.g_varchar2_table(95) := '3A692C226261636B67726F756E642D726570656174223A6A2C226261636B67726F756E642D6174746163686D656E74223A6B2C226261636B67726F756E642D706F736974696F6E223A6C7D293B622E5F656C656D656E74732E24636F6C756D6E53656C65';
wwv_flow_api.g_varchar2_table(96) := '63742E62696E6428226B6579646F776E222C7B7569773A627D2C622E5F68616E646C6546696C7465724B6579646F776E293B622E5F64697361626C65536561726368427574746F6E28293B622E5F64697361626C6550726576427574746F6E28293B622E';
wwv_flow_api.g_varchar2_table(97) := '5F64697361626C654E657874427574746F6E28293B633D622E5F656C656D656E74732E24736561726368436F6E7461696E65722E776964746828292B622E5F656C656D656E74732E24706167696E6174696F6E436F6E7461696E65722E77696474682829';
wwv_flow_api.g_varchar2_table(98) := '3B622E5F656C656D656E74732E24627574746F6E436F6E7461696E65722E63737328227769647468222C632B32302B22707822293B622E5F656C656D656E74732E246469616C6F672E6469616C6F67287B64697361626C65643A66616C73652C6175746F';
wwv_flow_api.g_varchar2_table(99) := '4F70656E3A66616C73652C636C6F73654F6E4573636170653A747275652C636C6F7365546578743A22436C6F7365222C6469616C6F67436C6173733A2273757065726C6F762D6469616C6F67222C647261676761626C653A747275652C6865696768743A';
wwv_flow_api.g_varchar2_table(100) := '226175746F222C686964653A6E756C6C2C6D6178684865696768743A66616C73652C6D617857696474683A66616C73652C6D696E4865696768743A3135302C6D696E57696474683A66616C73652C6D6F64616C3A747275652C726573697A61626C653A66';
wwv_flow_api.g_varchar2_table(101) := '616C73652C73686F773A6E756C6C2C737461636B3A747275652C7469746C653A622E6F7074696F6E732E6469616C6F675469746C652C636C6F73653A66756E6374696F6E28297B612822626F647922292E756E62696E6428226B6579646F776E222C622E';
wwv_flow_api.g_varchar2_table(102) := '5F68616E646C65426F64794B6579646F776E293B6128227461626C652E73757065726C6F762D7461626C652074626F647920747222292E64696528293B612874686973292E6469616C6F67282264657374726F7922293B622E5F656C656D656E74732E24';
wwv_flow_api.g_varchar2_table(103) := '6469616C6F672E72656D6F766528297D7D293B622E5F696E6974456C656D656E747328293B622E5F656C656D656E74732E246469616C6F672E63737328226F766572666C6F77222C2268696464656E22293B622E5F656C656D656E74732E246F75746572';
wwv_flow_api.g_varchar2_table(104) := '4469616C6F672E63737328226D696E2D7769647468222C632B34322B22707822293B622E5F76616C7565732E6469616C6F67546F703D622E5F656C656D656E74732E2477696E646F772E68656967687428292A2E30353B622E5F76616C7565732E646961';
wwv_flow_api.g_varchar2_table(105) := '6C6F674C6566743D622E5F656C656D656E74732E2477696E646F772E776964746828292F322D622E5F656C656D656E74732E246F757465724469616C6F672E6F7574657257696474682874727565292F323B696628622E5F76616C7565732E6469616C6F';
wwv_flow_api.g_varchar2_table(106) := '674C6566743C30297B622E5F76616C7565732E6469616C6F674C6566743D307D622E5F656C656D656E74732E246469616C6F672E6469616C6F6728226F7074696F6E222C22706F736974696F6E222C5B622E5F76616C7565732E6469616C6F674C656674';
wwv_flow_api.g_varchar2_table(107) := '2C622E5F76616C7565732E6469616C6F67546F705D293B622E5F69654E6F53656C6563745465787428293B612822626F647922292E62696E6428226B6579646F776E222C7B7569773A627D2C622E5F68616E646C65426F64794B6579646F776E293B6128';
wwv_flow_api.g_varchar2_table(108) := '227461626C652E73757065726C6F762D7461626C652074626F647920747222292E6C69766528226D6F7573656F766572222C7B7569773A627D2C622E5F68616E646C654D61696E54724D6F7573656F766572292E6C69766528226D6F7573656F7574222C';
wwv_flow_api.g_varchar2_table(109) := '7B7569773A627D2C622E5F68616E646C654D61696E54724D6F7573656F7574292E6C6976652822636C69636B222C7B7569773A627D2C622E5F68616E646C654D61696E5472436C69636B293B622E5F656C656D656E74732E2477696E646F772E62696E64';
wwv_flow_api.g_varchar2_table(110) := '2822726573697A65222C7B7569773A627D2C622E5F68616E646C6557696E646F77526573697A65293B622E5F656C656D656E74732E246469616C6F672E6469616C6F6728226F70656E22293B622E5F656C656D656E74732E24777261707065722E68746D';
wwv_flow_api.g_varchar2_table(111) := '6C28272020203C696D67207372633D22272B622E6F7074696F6E732E6C6F6164696E67496D6167655372632B27223E5C6E27293B622E5F66657463684C6F7628293B622E5F656C656D656E74732E2466696C7465722E747269676765722822666F637573';
wwv_flow_api.g_varchar2_table(112) := '22297D2C5F68616E646C6557696E646F77526573697A653A66756E6374696F6E2861297B76617220623D612E646174612E7569773B76617220633B69662821622E5F656C656D656E74732E247461626C652E6C656E677468262621622E5F656C656D656E';
wwv_flow_api.g_varchar2_table(113) := '74732E246E6F646174612E6C656E677468297B622E5F696E69745472616E7369656E74456C656D656E747328297D622E5F7570646174654C6F764D6561737572656D656E747328293B622E5F656C656D656E74732E246F757465724469616C6F672E6373';
wwv_flow_api.g_varchar2_table(114) := '73287B6865696768743A622E5F76616C7565732E6469616C6F674865696768742C77696474683A622E5F76616C7565732E6469616C6F6757696474687D293B622E5F656C656D656E74732E24777261707065722E637373287B6865696768743A622E5F76';
wwv_flow_api.g_varchar2_table(115) := '616C7565732E777261707065724865696768742C77696474683A622E5F76616C7565732E7772617070657257696474682C6F766572666C6F773A2268696464656E227D293B633D622E5F656C656D656E74732E2477696E646F772E776964746828292F32';
wwv_flow_api.g_varchar2_table(116) := '2D622E5F656C656D656E74732E246F757465724469616C6F672E6F7574657257696474682874727565292F323B696628633C30297B633D307D622E5F656C656D656E74732E246F757465724469616C6F672E637373287B746F703A622E5F76616C756573';
wwv_flow_api.g_varchar2_table(117) := '2E6469616C6F67546F702C6C6566743A637D293B622E5F656C656D656E74732E24777261707065722E63737328226F766572666C6F77222C226175746F22297D2C5F68616E646C65426F64794B6579646F776E3A66756E6374696F6E2861297B76617220';
wwv_flow_api.g_varchar2_table(118) := '623D612E646174612E7569773B696628612E77686963683D3D3D3337262621622E5F656C656D656E74732E2470726576427574746F6E2E61747472282264697361626C65642229297B622E5F68616E646C6550726576427574746F6E436C69636B286129';
wwv_flow_api.g_varchar2_table(119) := '7D656C736520696628612E77686963683D3D3D3339262621622E5F656C656D656E74732E246E657874427574746F6E2E61747472282264697361626C65642229297B622E5F68616E646C654E657874427574746F6E436C69636B2861297D7D2C5F666574';
wwv_flow_api.g_varchar2_table(120) := '63684C6F763A66756E6374696F6E28297B76617220623D746869733B76617220633B76617220643B76617220653B622E5F64697361626C65536561726368427574746F6E28293B622E5F64697361626C6550726576427574746F6E28293B622E5F646973';
wwv_flow_api.g_varchar2_table(121) := '61626C654E657874427574746F6E28293B622E5F656C656D656E74732E2477696E646F772E756E62696E642822726573697A65222C622E5F68616E646C6557696E646F77526573697A65293B696628622E5F656C656D656E74732E24636F6C756D6E5365';
wwv_flow_api.g_varchar2_table(122) := '6C6563742E76616C28292626622E5F656C656D656E74732E2466696C7465722E76616C2829297B633D622E5F656C656D656E74732E24636F6C756D6E53656C6563742E76616C28293B643D622E5F656C656D656E74732E2466696C7465722E76616C2829';
wwv_flow_api.g_varchar2_table(123) := '7D653D7B705F666C6F775F69643A6128222370466C6F77496422292E76616C28292C705F666C6F775F737465705F69643A6128222370466C6F7753746570496422292E76616C28292C705F696E7374616E63653A6128222370496E7374616E636522292E';
wwv_flow_api.g_varchar2_table(124) := '76616C28292C705F726571756573743A22504C5547494E3D222B622E6F7074696F6E732E616A61784964656E7469666965722C7830313A2246455443485F4C4F56222C7830323A622E5F76616C7565732E706167696E6174696F6E2C7830333A632C7830';
wwv_flow_api.g_varchar2_table(125) := '343A642C705F6172675F6E616D65733A5B5D2C705F6172675F76616C7565733A5B5D7D3B6128622E6F7074696F6E732E646570656E64696E674F6E53656C6563746F72292E61646428622E6F7074696F6E732E706167654974656D73546F5375626D6974';
wwv_flow_api.g_varchar2_table(126) := '292E656163682866756E6374696F6E2861297B652E705F6172675F6E616D65735B615D3D746869732E69643B652E705F6172675F76616C7565735B615D3D24762874686973297D293B612E616A6178287B747970653A22504F5354222C75726C3A227777';
wwv_flow_api.g_varchar2_table(127) := '765F666C6F772E73686F77222C646174613A652C64617465547970653A2274657874222C6173796E633A66616C73652C737563636573733A66756E6374696F6E2861297B622E5F68616E646C6546657463684C6F7652657475726E2861297D7D297D2C5F';
wwv_flow_api.g_varchar2_table(128) := '68616E646C6546657463684C6F7652657475726E3A66756E6374696F6E2862297B76617220633D746869733B76617220643B632E5F656C656D656E74732E24777261707065722E66616465546F28302C30292E637373287B77696474683A223130303030';
wwv_flow_api.g_varchar2_table(129) := '30303030303030307078222C6865696768743A22307078222C6F766572666C6F773A2268696464656E227D292E68746D6C2862293B696628216128227461626C652E73757065726C6F762D7461626C652074723A657128312922292E6C656E677468297B';
wwv_flow_api.g_varchar2_table(130) := '643D273C64697620636C6173733D2275692D7769646765742073757065726C6F762D6E6F64617461223E5C6E272B272020203C64697620636C6173733D2275692D73746174652D686967686C696768742075692D636F726E65722D616C6C22207374796C';
wwv_flow_api.g_varchar2_table(131) := '653D2270616464696E673A2030707420302E37656D3B223E5C6E272B222020202020203C703E5C6E222B272020202020203C7370616E20636C6173733D2275692D69636F6E2075692D69636F6E2D616C65727422207374796C653D22666C6F61743A206C';
wwv_flow_api.g_varchar2_table(132) := '6566743B206D617267696E2D72696768743A302E33656D3B223E3C2F7370616E3E5C6E272B22202020202020222B632E6F7074696F6E732E6E6F44617461466F756E644D73672B225C6E222B222020202020203C2F703E5C6E222B222020203C2F646976';
wwv_flow_api.g_varchar2_table(133) := '3E5C6E222B223C2F6469763E5C6E223B632E5F656C656D656E74732E24777261707065722E68746D6C2864297D656C73657B6128227461626C652E73757065726C6F762D7461626C652074683A666972737422292E616464436C617373282275692D636F';
wwv_flow_api.g_varchar2_table(134) := '726E65722D746C22293B6128227461626C652E73757065726C6F762D7461626C652074683A6C61737422292E616464436C617373282275692D636F726E65722D747222293B6128227461626C652E73757065726C6F762D7461626C652074723A6C617374';
wwv_flow_api.g_varchar2_table(135) := '2074643A666972737422292E616464436C617373282275692D636F726E65722D626C22293B6128227461626C652E73757065726C6F762D7461626C652074723A6C6173742074643A6C61737422292E616464436C617373282275692D636F726E65722D62';
wwv_flow_api.g_varchar2_table(136) := '7222297D632E5F69654E6F53656C6563745465787428293B632E5F696E69745472616E7369656E74456C656D656E747328293B632E5F76616C7565732E6D6F7265526F77733D632E5F656C656D656E74732E246D6F7265526F77732E76616C28293D3D3D';
wwv_flow_api.g_varchar2_table(137) := '2259223F747275653A66616C73653B632E5F686967686C6967687453656C6563746564526F7728293B632E5F757064617465506167696E6174696F6E446973706C617928293B632E5F656E61626C65536561726368427574746F6E28293B696628632E5F';
wwv_flow_api.g_varchar2_table(138) := '76616C7565732E6D6F7265526F7773297B632E5F656E61626C654E657874427574746F6E28297D656C73657B632E5F64697361626C654E657874427574746F6E28297D696628632E5F656C656D656E74732E247461626C652E6C656E677468297B632E5F';
wwv_flow_api.g_varchar2_table(139) := '656C656D656E74732E247461626C652E776964746828632E5F656C656D656E74732E247461626C652E77696474682829297D656C736520696628632E5F656C656D656E74732E246E6F646174612E6C656E677468297B632E5F656C656D656E74732E246E';
wwv_flow_api.g_varchar2_table(140) := '6F646174612E776964746828632E5F656C656D656E74732E246E6F646174612E77696474682829297D632E5F726573697A654D6F64616C28297D2C5F726573697A654D6F64616C3A66756E6374696F6E28297B76617220613D746869733B612E5F757064';
wwv_flow_api.g_varchar2_table(141) := '6174654C6F764D6561737572656D656E747328293B696628612E6F7074696F6E732E6566666563747353706565643D3D3D30297B612E5F656C656D656E74732E246F757465724469616C6F672E637373287B6865696768743A612E5F76616C7565732E64';
wwv_flow_api.g_varchar2_table(142) := '69616C6F674865696768742C77696474683A612E5F76616C7565732E6469616C6F6757696474682C6C6566743A612E5F76616C7565732E6469616C6F674C6566747D293B696628612E5F656C656D656E74732E246E6F646174612E6C656E677468297B61';
wwv_flow_api.g_varchar2_table(143) := '2E5F656C656D656E74732E246E6F646174612E776964746828612E5F76616C7565732E777261707065725769647468297D612E5F656C656D656E74732E24777261707065722E637373287B6865696768743A612E5F76616C7565732E7772617070657248';
wwv_flow_api.g_varchar2_table(144) := '65696768742C77696474683A612E5F76616C7565732E7772617070657257696474682C6F766572666C6F773A226175746F227D292E66616465546F28612E6F7074696F6E732E6566666563747353706565642C31293B612E5F656C656D656E74732E2477';
wwv_flow_api.g_varchar2_table(145) := '696E646F772E62696E642822726573697A65222C7B7569773A617D2C612E5F68616E646C6557696E646F77526573697A65297D656C73657B612E5F656C656D656E74732E246F757465724469616C6F672E616E696D617465287B6865696768743A612E5F';
wwv_flow_api.g_varchar2_table(146) := '76616C7565732E6469616C6F674865696768747D2C612E6F7074696F6E732E6566666563747353706565642C66756E6374696F6E28297B612E5F656C656D656E74732E246F757465724469616C6F672E616E696D617465287B77696474683A612E5F7661';
wwv_flow_api.g_varchar2_table(147) := '6C7565732E6469616C6F6757696474682C6C6566743A612E5F76616C7565732E6469616C6F674C6566747D2C612E6F7074696F6E732E6566666563747353706565642C66756E6374696F6E28297B696628612E5F656C656D656E74732E246E6F64617461';
wwv_flow_api.g_varchar2_table(148) := '2E6C656E677468297B612E5F656C656D656E74732E246E6F646174612E776964746828612E5F76616C7565732E777261707065725769647468297D612E5F656C656D656E74732E24777261707065722E637373287B6865696768743A612E5F76616C7565';
wwv_flow_api.g_varchar2_table(149) := '732E777261707065724865696768742C77696474683A612E5F76616C7565732E7772617070657257696474682C6F766572666C6F773A226175746F227D292E66616465546F28612E6F7074696F6E732E6566666563747353706565642C31293B612E5F65';
wwv_flow_api.g_varchar2_table(150) := '6C656D656E74732E2477696E646F772E62696E642822726573697A65222C7B7569773A617D2C612E5F68616E646C6557696E646F77526573697A65297D297D297D7D2C5F7365617263683A66756E6374696F6E28297B76617220613D746869733B612E5F';
wwv_flow_api.g_varchar2_table(151) := '76616C7565732E637572506167653D313B612E5F76616C7565732E706167696E6174696F6E3D22313A222B612E6F7074696F6E732E6D6178526F7773506572506167653B612E5F76616C7565732E736561726368537472696E673D612E5F656C656D656E';
wwv_flow_api.g_varchar2_table(152) := '74732E2466696C7465722E76616C28293B696628612E5F76616C7565732E736561726368537472696E673D3D3D2222297B612E5F656C656D656E74732E24636F6C756D6E53656C6563742E76616C282222293B612E5F68616E646C65436F6C756D6E4368';
wwv_flow_api.g_varchar2_table(153) := '616E676528297D612E5F66657463684C6F7628293B612E5F64697361626C6550726576427574746F6E28297D2C5F757064617465506167696E6174696F6E446973706C61793A66756E6374696F6E28297B76617220613D746869733B612E5F656C656D65';
wwv_flow_api.g_varchar2_table(154) := '6E74732E24706167696E6174696F6E446973706C61792E68746D6C28225061676520222B612E5F76616C7565732E63757250616765297D2C5F64697361626C65536561726368427574746F6E3A66756E6374696F6E28297B76617220613D746869733B61';
wwv_flow_api.g_varchar2_table(155) := '2E5F64697361626C65427574746F6E282273656172636822297D2C5F64697361626C6550726576427574746F6E3A66756E6374696F6E28297B76617220613D746869733B612E5F64697361626C65427574746F6E28227072657622297D2C5F6469736162';
wwv_flow_api.g_varchar2_table(156) := '6C654E657874427574746F6E3A66756E6374696F6E28297B76617220613D746869733B612E5F64697361626C65427574746F6E28226E65787422297D2C5F64697361626C65427574746F6E3A66756E6374696F6E2861297B76617220623D746869733B76';
wwv_flow_api.g_varchar2_table(157) := '617220633B696628613D3D2273656172636822297B633D622E5F656C656D656E74732E24736561726368427574746F6E3B632E61747472282264697361626C6564222C2264697361626C656422292E72656D6F7665436C617373282275692D7374617465';
wwv_flow_api.g_varchar2_table(158) := '2D686F76657222292E72656D6F7665436C617373282275692D73746174652D666F63757322292E6373732822637572736F72222C2264656661756C7422293B72657475726E7D656C736520696628613D3D227072657622297B633D622E5F656C656D656E';
wwv_flow_api.g_varchar2_table(159) := '74732E2470726576427574746F6E7D656C736520696628613D3D226E65787422297B633D622E5F656C656D656E74732E246E657874427574746F6E7D632E61747472282264697361626C6564222C2264697361626C656422292E72656D6F7665436C6173';
wwv_flow_api.g_varchar2_table(160) := '73282275692D73746174652D686F76657222292E72656D6F7665436C617373282275692D73746174652D666F63757322292E637373287B6F7061636974793A22302E35222C637572736F723A2264656661756C74227D297D2C5F656E61626C6553656172';
wwv_flow_api.g_varchar2_table(161) := '6368427574746F6E3A66756E6374696F6E28297B76617220613D746869733B612E5F656E61626C65427574746F6E282273656172636822297D2C5F656E61626C6550726576427574746F6E3A66756E6374696F6E28297B76617220613D746869733B612E';
wwv_flow_api.g_varchar2_table(162) := '5F656E61626C65427574746F6E28227072657622297D2C5F656E61626C654E657874427574746F6E3A66756E6374696F6E28297B76617220613D746869733B612E5F656E61626C65427574746F6E28226E65787422297D2C5F656E61626C65427574746F';
wwv_flow_api.g_varchar2_table(163) := '6E3A66756E6374696F6E2861297B76617220623D746869733B76617220633B696628613D3D2273656172636822297B633D622E5F656C656D656E74732E24736561726368427574746F6E3B632E72656D6F766541747472282264697361626C656422292E';
wwv_flow_api.g_varchar2_table(164) := '6373732822637572736F72222C22706F696E74657222293B72657475726E7D656C736520696628613D3D227072657622297B633D622E5F656C656D656E74732E2470726576427574746F6E7D656C736520696628613D3D226E65787422297B633D622E5F';
wwv_flow_api.g_varchar2_table(165) := '656C656D656E74732E246E657874427574746F6E7D632E72656D6F766541747472282264697361626C656422292E637373287B6F7061636974793A2231222C637572736F723A22706F696E746572227D297D2C5F686967686C6967687453656C65637465';
wwv_flow_api.g_varchar2_table(166) := '64526F773A66756E6374696F6E28297B76617220623D746869733B76617220633D6128277461626C652E73757065726C6F762D7461626C652074626F64792074725B646174612D72657475726E3D22272B622E5F656C656D656E74732E2468696464656E';
wwv_flow_api.g_varchar2_table(167) := '496E7075742E76616C28292B27225D27293B632E6368696C6472656E2822746422292E72656D6F7665436C617373282275692D73746174652D64656661756C7422292E616464436C617373282275692D73746174652D61637469766522297D2C5F68616E';
wwv_flow_api.g_varchar2_table(168) := '646C654D61696E54724D6F7573656F7665723A66756E6374696F6E2862297B76617220633D622E646174612E7569773B76617220643D6128622E63757272656E74546172676574293B642E6368696C6472656E282274643A6E6F74282E75692D73746174';
wwv_flow_api.g_varchar2_table(169) := '652D6163746976652922292E72656D6F7665436C617373282275692D73746174652D64656661756C7422292E616464436C617373282275692D73746174652D686F76657222297D2C5F68616E646C654D61696E54724D6F7573656F75743A66756E637469';
wwv_flow_api.g_varchar2_table(170) := '6F6E2862297B76617220633D622E646174612E7569773B76617220643D6128622E63757272656E74546172676574293B642E6368696C6472656E282274643A6E6F74282E75692D73746174652D6163746976652922292E72656D6F7665436C6173732822';
wwv_flow_api.g_varchar2_table(171) := '75692D73746174652D686F76657222292E616464436C617373282275692D73746174652D64656661756C7422297D2C5F68616E646C654D61696E5472436C69636B3A66756E6374696F6E2862297B76617220633D622E646174612E7569773B7661722064';
wwv_flow_api.g_varchar2_table(172) := '3B76617220653D6128622E63757272656E74546172676574293B76617220663D652E617474722822646174612D72657475726E22293B76617220673D652E617474722822646174612D646973706C617922293B76617220683B643D632E5F656C656D656E';
wwv_flow_api.g_varchar2_table(173) := '74732E2468696464656E496E7075742E76616C2829213D3D663B632E5F656C656D656E74732E2468696464656E496E7075742E76616C2866293B632E5F656C656D656E74732E24646973706C6179496E7075742E76616C2867293B666F7228783D303B78';
wwv_flow_api.g_varchar2_table(174) := '3C632E5F76616C7565732E6D6170546F4974656D732E6C656E6774683B782B2B297B696628632E5F697348696464656E436F6C28632E5F76616C7565732E6D617046726F6D436F6C735B785D29297B247328632E5F76616C7565732E6D6170546F497465';
wwv_flow_api.g_varchar2_table(175) := '6D735B785D2C652E617474722822646174612D636F6C222B632E5F76616C7565732E6D617046726F6D436F6C735B785D2B222D76616C75652229297D656C73657B247328632E5F76616C7565732E6D6170546F4974656D735B785D2C652E6368696C6472';
wwv_flow_api.g_varchar2_table(176) := '656E282274642E736269702D636F6C222B632E5F76616C7565732E6D617046726F6D436F6C735B785D292E68746D6C2829297D7D696628632E6F7074696F6E732E76616C696461746556616C75653D3D3D225922262664297B683D652E61747472282264';
wwv_flow_api.g_varchar2_table(177) := '6174612D6861736822293B612E616A6178287B747970653A22504F5354222C75726C3A227777765F666C6F772E73686F77222C646174613A7B705F666C6F775F69643A6128222370466C6F77496422292E76616C28292C705F666C6F775F737465705F69';
wwv_flow_api.g_varchar2_table(178) := '643A6128222370466C6F7753746570496422292E76616C28292C705F696E7374616E63653A6128222370496E7374616E636522292E76616C28292C705F726571756573743A22504C5547494E3D222B632E6F7074696F6E732E616A61784964656E746966';
wwv_flow_api.g_varchar2_table(179) := '6965722C7830313A2253544F52455F56414C49444154494F4E5F48415348222C7830353A687D2C64617465547970653A2274657874222C6173796E633A747275652C737563636573733A66756E6374696F6E2861297B69662821612E6D61746368282F53';
wwv_flow_api.g_varchar2_table(180) := '5543434553532F29297B616C6572742861297D7D7D297D632E5F656C656D656E74732E246469616C6F672E6469616C6F672822636C6F736522293B69662864297B632E5F656C656D656E74732E2468696464656E496E7075742E74726967676572282263';
wwv_flow_api.g_varchar2_table(181) := '68616E676522293B632E5F656C656D656E74732E24646973706C6179496E7075742E7472696767657228226368616E676522297D7D2C5F68616E646C6546696C7465724B6579646F776E3A66756E6374696F6E2861297B76617220623D612E646174612E';
wwv_flow_api.g_varchar2_table(182) := '7569773B696628612E77686963683D3D3D3133297B622E5F73656172636828297D7D2C5F68616E646C65536561726368427574746F6E436C69636B3A66756E6374696F6E2861297B76617220623D612E646174612E7569773B622E5F7365617263682829';
wwv_flow_api.g_varchar2_table(183) := '7D2C5F68616E646C6550726576427574746F6E436C69636B3A66756E6374696F6E2861297B76617220623D612E646174612E7569773B76617220633B76617220643B622E5F76616C7565732E637572506167653D622E5F76616C7565732E637572506167';
wwv_flow_api.g_varchar2_table(184) := '652D313B696628622E5F76616C7565732E637572506167653D3D3D31297B633D313B643D622E6F7074696F6E732E6D6178526F7773506572506167653B622E5F76616C7565732E706167696E6174696F6E3D632B223A222B643B622E5F66657463684C6F';
wwv_flow_api.g_varchar2_table(185) := '7628293B622E5F64697361626C6550726576427574746F6E28297D656C73657B633D28622E5F76616C7565732E637572506167652D31292A622E6F7074696F6E732E6D6178526F7773506572506167652B313B643D622E5F76616C7565732E6375725061';
wwv_flow_api.g_varchar2_table(186) := '67652A622E6F7074696F6E732E6D6178526F7773506572506167653B622E5F76616C7565732E706167696E6174696F6E3D632B223A222B643B622E5F66657463684C6F7628293B622E5F656E61626C6550726576427574746F6E28297D7D2C5F68616E64';
wwv_flow_api.g_varchar2_table(187) := '6C654E657874427574746F6E436C69636B3A66756E6374696F6E2861297B76617220623D612E646174612E7569773B76617220633B76617220643B622E5F76616C7565732E637572506167653D622E5F76616C7565732E637572506167652B313B633D28';
wwv_flow_api.g_varchar2_table(188) := '622E5F76616C7565732E637572506167652D31292A622E6F7074696F6E732E6D6178526F7773506572506167652B313B643D622E5F76616C7565732E637572506167652A622E6F7074696F6E732E6D6178526F7773506572506167653B622E5F76616C75';
wwv_flow_api.g_varchar2_table(189) := '65732E706167696E6174696F6E3D632B223A222B643B622E5F66657463684C6F7628293B622E5F656C656D656E74732E24706167696E6174696F6E446973706C61792E68746D6C28225061676520222B622E5F76616C7565732E63757250616765293B69';
wwv_flow_api.g_varchar2_table(190) := '6628622E5F76616C7565732E637572506167653E3D322626622E5F656C656D656E74732E2470726576427574746F6E2E61747472282264697361626C65642229297B622E5F656E61626C6550726576427574746F6E28297D7D2C5F726566726573683A66';
wwv_flow_api.g_varchar2_table(191) := '756E6374696F6E28297B76617220613D746869733B76617220623D612E5F656C656D656E74732E2468696464656E496E7075742E76616C28293B612E5F656C656D656E74732E24646973706C6179496E7075742E74726967676572282261706578626566';
wwv_flow_api.g_varchar2_table(192) := '6F72657265667265736822293B612E5F656C656D656E74732E2468696464656E496E7075742E76616C282222293B612E5F656C656D656E74732E24646973706C6179496E7075742E76616C282222293B666F7228783D303B783C612E5F76616C7565732E';
wwv_flow_api.g_varchar2_table(193) := '6D6170546F4974656D732E6C656E6774683B782B2B297B247328612E5F76616C7565732E6D6170546F4974656D735B785D2C2222297D612E5F656C656D656E74732E24646973706C6179496E7075742E7472696767657228226170657861667465727265';
wwv_flow_api.g_varchar2_table(194) := '667265736822293B69662862213D3D612E5F656C656D656E74732E2468696464656E496E7075742E76616C2829297B612E5F656C656D656E74732E2468696464656E496E7075742E7472696767657228226368616E676522293B612E5F656C656D656E74';
wwv_flow_api.g_varchar2_table(195) := '732E24646973706C6179496E7075742E7472696767657228226368616E676522297D72657475726E2066616C73657D2C5F7570646174654C6F764D6561737572656D656E74733A66756E6374696F6E28297B76617220623D746869733B76617220633B76';
wwv_flow_api.g_varchar2_table(196) := '617220643D32353B76617220653D66616C73653B76617220663D66616C73653B76617220673D747275653B76617220683B76617220693B766172206A3B766172206B3B766172206C3B766172206D3B766172206E3B766172206F3B76617220703B766172';
wwv_flow_api.g_varchar2_table(197) := '20713B76617220723B69662821622E5F656C656D656E74732E246E6F646174612E6C656E677468297B633D622E5F656C656D656E74732E247461626C657D656C73657B673D66616C73653B633D622E5F656C656D656E74732E246E6F646174617D683D61';
wwv_flow_api.g_varchar2_table(198) := '28226469762E73757065726C6F762D6469616C6F67206469762E75692D6469616C6F672D7469746C6562617222292E6F757465724865696768742874727565292B622E5F656C656D656E74732E24627574746F6E436F6E7461696E65722E6F7574657248';
wwv_flow_api.g_varchar2_table(199) := '65696768742874727565292B6128226469762E73757065726C6F762D6469616C6F67206469762E75692D6469616C6F672D627574746F6E70616E6522292E6F757465724865696768742874727565292B28622E5F656C656D656E74732E246469616C6F67';
wwv_flow_api.g_varchar2_table(200) := '2E6F757465724865696768742874727565292D622E5F656C656D656E74732E246469616C6F672E6865696768742829292B28622E5F656C656D656E74732E24777261707065722E6F757465724865696768742874727565292D622E5F656C656D656E7473';
wwv_flow_api.g_varchar2_table(201) := '2E24777261707065722E6865696768742829293B693D622E5F656C656D656E74732E246F757465724469616C6F672E63737328226D61782D68656967687422293B696628622E5F76616C7565732E70657263656E745265674578702E7465737428692929';
wwv_flow_api.g_varchar2_table(202) := '7B693D7061727365466C6F61742869293B693D622E5F656C656D656E74732E2477696E646F772E68656967687428292A28692F313030297D656C736520696628622E5F76616C7565732E706978656C5265674578702E74657374286929297B693D706172';
wwv_flow_api.g_varchar2_table(203) := '7365466C6F61742869297D656C73657B693D622E5F656C656D656E74732E2477696E646F772E68656967687428292A2E397D693D622E5F656C656D656E74732E2477696E646F772E68656967687428292A2E393B6B3D622E5F656C656D656E74732E2464';
wwv_flow_api.g_varchar2_table(204) := '69616C6F672E6F7574657257696474682874727565292D622E5F656C656D656E74732E246469616C6F672E776964746828293B6C3D622E5F656C656D656E74732E246F757465724469616C6F672E63737328226D696E2D776964746822293B696628622E';
wwv_flow_api.g_varchar2_table(205) := '5F76616C7565732E70657263656E745265674578702E74657374286C29297B6C3D7061727365466C6F6174286C293B6C3D622E5F656C656D656E74732E2477696E646F772E776964746828292A286C2F313030297D656C736520696628622E5F76616C75';
wwv_flow_api.g_varchar2_table(206) := '65732E706978656C5265674578702E74657374286C29297B6C3D7061727365466C6F6174286C297D656C73657B6C3D622E5F656C656D656E74732E24627574746F6E436F6E7461696E65722E6F7574657257696474682874727565297D6D3D622E5F656C';
wwv_flow_api.g_varchar2_table(207) := '656D656E74732E246F757465724469616C6F672E63737328226D61782D776964746822293B696628622E5F76616C7565732E70657263656E745265674578702E74657374286D29297B6D3D7061727365466C6F6174286D293B6D3D622E5F656C656D656E';
wwv_flow_api.g_varchar2_table(208) := '74732E2477696E646F772E776964746828292A286D2F313030297D656C736520696628622E5F76616C7565732E706978656C5265674578702E74657374286D29297B6D3D7061727365466C6F6174286D297D656C73657B6D3D622E5F656C656D656E7473';
wwv_flow_api.g_varchar2_table(209) := '2E2477696E646F772E776964746828292A2E397D6D3D622E5F656C656D656E74732E2477696E646F772E776964746828292A2E393B696628682B632E6F757465724865696768742874727565293E69297B653D747275653B6A3D692D687D656C73657B6A';
wwv_flow_api.g_varchar2_table(210) := '3D632E6F757465724865696768742874727565297D69662867297B6E3D632E6F7574657257696474682874727565293B69662865297B6E3D6E2B647D6966286B2B6E3C6C297B6E3D6C2D6B7D656C7365206966286B2B6E3E6D297B663D747275653B6E3D';
wwv_flow_api.g_varchar2_table(211) := '6D2D6B3B6966286E3C6C297B6E3D6C2D6B7D7D6966286626262165297B696628682B632E6F757465724865696768742874727565292B643E69297B653D747275653B6A3D692D687D656C73657B6A3D632E6F757465724865696768742874727565292B64';
wwv_flow_api.g_varchar2_table(212) := '7D7D7D656C73657B6E3D6C2D6B7D703D682B6A3B6F3D6B2B6E3B622E5F76616C7565732E777261707065724865696768743D6A3B622E5F76616C7565732E7772617070657257696474683D6E3B622E5F76616C7565732E6469616C6F674865696768743D';
wwv_flow_api.g_varchar2_table(213) := '703B622E5F76616C7565732E6469616C6F6757696474683D6F3B713D28622E5F76616C7565732E6469616C6F6757696474682D622E5F656C656D656E74732E246F757465724469616C6F672E77696474682829292F323B723D622E5F656C656D656E7473';
wwv_flow_api.g_varchar2_table(214) := '2E246F757465724469616C6F672E63737328226C65667422293B696628622E5F76616C7565732E70657263656E745265674578702E74657374287229297B723D7061727365466C6F61742872293B723D622E5F656C656D656E74732E2477696E646F772E';
wwv_flow_api.g_varchar2_table(215) := '776964746828292A28722F313030297D656C736520696628622E5F76616C7565732E706978656C5265674578702E74657374287229297B723D7061727365466C6F61742872297D656C73657B723D307D723D722D713B696628723C30297B723D307D622E';
wwv_flow_api.g_varchar2_table(216) := '5F76616C7565732E6469616C6F674C6566743D723B622E5F76616C7565732E6469616C6F67546F703D622E5F656C656D656E74732E2477696E646F772E68656967687428292A2E30357D2C5F7570646174655374796C656446696C7465723A66756E6374';
wwv_flow_api.g_varchar2_table(217) := '696F6E28297B76617220623D746869733B76617220633D622E5F656C656D656E74732E2466696C7465722E63737328226261636B67726F756E642D636F6C6F7222293B76617220643D622E5F656C656D656E74732E2466696C7465722E63737328226261';
wwv_flow_api.g_varchar2_table(218) := '636B67726F756E642D696D61676522293B76617220653D622E5F656C656D656E74732E2466696C7465722E63737328226261636B67726F756E642D72657065617422293B76617220663D622E5F656C656D656E74732E2466696C7465722E637373282262';
wwv_flow_api.g_varchar2_table(219) := '61636B67726F756E642D6174746163686D656E7422293B76617220673D622E5F656C656D656E74732E2466696C7465722E63737328226261636B67726F756E642D706F736974696F6E22293B6128222373757065726C6F765F7374796C65645F66696C74';
wwv_flow_api.g_varchar2_table(220) := '657222292E637373287B226261636B67726F756E642D636F6C6F72223A632C226261636B67726F756E642D696D616765223A642C226261636B67726F756E642D726570656174223A652C226261636B67726F756E642D6174746163686D656E74223A662C';
wwv_flow_api.g_varchar2_table(221) := '226261636B67726F756E642D706F736974696F6E223A677D297D2C5F7570646174655374796C6564496E7075743A66756E6374696F6E28297B76617220623D746869733B76617220633D622E5F656C656D656E74732E24646973706C6179496E7075742E';
wwv_flow_api.g_varchar2_table(222) := '63737328226261636B67726F756E642D636F6C6F7222293B76617220643D622E5F656C656D656E74732E24646973706C6179496E7075742E63737328226261636B67726F756E642D696D61676522293B76617220653D622E5F656C656D656E74732E2464';
wwv_flow_api.g_varchar2_table(223) := '6973706C6179496E7075742E63737328226261636B67726F756E642D72657065617422293B76617220663D622E5F656C656D656E74732E24646973706C6179496E7075742E63737328226261636B67726F756E642D6174746163686D656E7422293B7661';
wwv_flow_api.g_varchar2_table(224) := '7220673D622E5F656C656D656E74732E24646973706C6179496E7075742E63737328226261636B67726F756E642D706F736974696F6E22293B61282223222B622E5F76616C7565732E617065784974656D49642B225F636F6E74726F6C7322292E637373';
wwv_flow_api.g_varchar2_table(225) := '287B226261636B67726F756E642D636F6C6F72223A632C226261636B67726F756E642D696D616765223A642C226261636B67726F756E642D726570656174223A652C226261636B67726F756E642D6174746163686D656E74223A662C226261636B67726F';
wwv_flow_api.g_varchar2_table(226) := '756E642D706F736974696F6E223A677D297D2C5F636C6561724C6F763A66756E6374696F6E28297B76617220613D746869733B76617220623D612E5F656C656D656E74732E24636C656172427574746F6E2E6368696C6472656E28222E75692D69636F6E';
wwv_flow_api.g_varchar2_table(227) := '22293B696628612E5F656C656D656E74732E24646973706C6179496E7075742E76616C2829213D3D2222297B696628612E6F7074696F6E732E757365436C65617250726F74656374696F6E3D3D3D224E22297B612E5F7265667265736828297D656C7365';
wwv_flow_api.g_varchar2_table(228) := '7B696628622E686173436C617373282275692D69636F6E2D636972636C652D636C6F73652229297B622E72656D6F7665436C617373282275692D69636F6E2D636972636C652D636C6F736522292E616464436C617373282275692D69636F6E2D616C6572';
wwv_flow_api.g_varchar2_table(229) := '7422293B612E5F76616C7565732E64656C65746549636F6E54696D656F75743D73657454696D656F7574282224282723222B612E5F76616C7565732E617065784974656D49642B225F636F6E74726F6C73207370616E2E75692D69636F6E2D616C657274';
wwv_flow_api.g_varchar2_table(230) := '27292E72656D6F7665436C617373282775692D69636F6E2D616C65727427292E616464436C617373282775692D69636F6E2D636972636C652D636C6F736527293B222C316533297D656C73657B636C65617254696D656F757428612E5F76616C7565732E';
wwv_flow_api.g_varchar2_table(231) := '64656C65746549636F6E54696D656F7574293B612E5F76616C7565732E64656C65746549636F6E54696D656F75743D22223B612E5F7265667265736828293B622E72656D6F7665436C617373282275692D69636F6E2D616C65727422292E616464436C61';
wwv_flow_api.g_varchar2_table(232) := '7373282275692D69636F6E2D636972636C652D636C6F736522297D7D7D7D7D297D2928617065782E6A517565727929';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(23132937379004345275)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_file_name=>'com_skillbuilders_sbip_super_lov.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A2A2A20436F6E74726F6C205374796C6573202A2A2A2A2F0D0A6669656C647365742E73757065726C6F762D636F6E74726F6C73207B0D0A2020206261636B67726F756E643A207472616E73706172656E743B0D0A202020646973706C61793A2069';
wwv_flow_api.g_varchar2_table(2) := '6E6C696E652D626C6F636B3B0D0A7D0D0A0D0A6669656C647365742E73757065726C6F762D636F6E74726F6C73207461626C65207B0D0A2020206865696768743A20313030253B0D0A7D0D0A0D0A6669656C647365742E73757065726C6F762D636F6E74';
wwv_flow_api.g_varchar2_table(3) := '726F6C73207461626C65207464207B0D0A20202070616464696E673A203070783B0D0A7D0D0A0D0A6669656C647365742E73757065726C6F762D636F6E74726F6C7320646976207B0D0A2020206D617267696E3A20307078203370783B0D0A2020206261';
wwv_flow_api.g_varchar2_table(4) := '636B67726F756E643A206E6F6E6520726570656174207363726F6C6C20302030207472616E73706172656E742021696D706F7274616E743B0D0A202020626F726465723A206D656469756D206E6F6E652021696D706F7274616E743B0D0A202020776964';
wwv_flow_api.g_varchar2_table(5) := '74683A206175746F2021696D706F7274616E743B0D0A202020637572736F723A20706F696E7465723B0D0A2020206D696E2D6865696768743A20313270783B0D0A2020206D696E2D77696474683A20313270783B0D0A7D0D0A0D0A696E7075742E737570';
wwv_flow_api.g_varchar2_table(6) := '65726C6F762D696E707574207B0D0A20206F75746C696E653A206E6F6E653B0D0A7D0D0A0D0A6669656C647365742E73757065726C6F762D636F6E74726F6C7320646976207370616E207B0D0A202070616464696E673A203070783B0D0A7D0D0A0D0A2F';
wwv_flow_api.g_varchar2_table(7) := '2A2A2A2A204D6F64616C205374796C6573202A2A2A2A2F0D0A6469762E73757065726C6F762D6469616C6F67207B0D0A2020206D617267696E3A20303B0D0A2020206D61782D77696474683A203930253B0D0A2020206D61782D6865696768743A203930';
wwv_flow_api.g_varchar2_table(8) := '253B0D0A7D0D0A0D0A6469762E73757065726C6F762D6469616C6F67207B0D0A2020206F766572666C6F773A2068696464656E3B0D0A7D0D0A0D0A6469762E73757065726C6F762D6469616C6F67206469762E75692D6469616C6F672D627574746F6E70';
wwv_flow_api.g_varchar2_table(9) := '616E65207B0D0A2020206D617267696E2D746F703A203070783B0D0A7D0D0A0D0A6469762E73757065726C6F762D636F6E7461696E6572207B0D0A2020206D617267696E3A20313070783B0D0A20202070616464696E673A203070782021696D706F7274';
wwv_flow_api.g_varchar2_table(10) := '616E743B0D0A7D0D0A0D0A6469762E73757065726C6F762D627574746F6E2D636F6E7461696E6572207B0D0A2020206D617267696E3A20307078206175746F3B0D0A20202070616464696E673A203070782021696D706F7274616E743B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(11) := '6469762E73757065726C6F762D627574746F6E2D636F6E7461696E657220627574746F6E207370616E207B0D0A20202070616464696E673A203070783B0D0A7D0D0A0D0A6469762E73757065726C6F762D7365617263682D636F6E7461696E6572207B0D';
wwv_flow_api.g_varchar2_table(12) := '0A202020666C6F61743A206C6566743B0D0A20202077686974652D73706163653A206E6F777261703B0D0A20202070616464696E673A203070782021696D706F7274616E743B0D0A7D0D0A0D0A2373757065726C6F762D66696C746572207B0D0A202020';
wwv_flow_api.g_varchar2_table(13) := '6F75746C696E653A206E6F6E653B0D0A7D0D0A0D0A6469762E73757065726C6F762D7365617263682D69636F6E207B0D0A2020206261636B67726F756E643A207472616E73706172656E742021696D706F7274616E743B0D0A202020626F726465723A20';
wwv_flow_api.g_varchar2_table(14) := '6E6F6E652021696D706F7274616E743B0D0A202020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A6469762E73757065726C6F762D706167696E6174696F6E2D636F6E7461696E6572207B0D0A202020666C6F61743A2072696768743B0D0A20';
wwv_flow_api.g_varchar2_table(15) := '202077686974652D73706163653A206E6F777261703B0D0A20202070616464696E673A203070782021696D706F7274616E743B0D0A7D0D0A0D0A7370616E2E73757065726C6F762D706167696E6174696F6E2D646973706C6179207B0D0A202020776869';
wwv_flow_api.g_varchar2_table(16) := '74652D73706163653A206E6F777261703B0D0A7D0D0A0D0A6469762E73757065726C6F762D7461626C652D77726170706572207B0D0A2020206D617267696E2D746F703A20313070783B0D0A2020206F766572666C6F773A206175746F3B0D0A20202070';
wwv_flow_api.g_varchar2_table(17) := '616464696E673A203070782021696D706F7274616E743B0D0A7D0D0A0D0A7461626C652E73757065726C6F762D7461626C65207B0D0A202020656D7074792D63656C6C733A2073686F773B0D0A7D0D0A0D0A7461626C652E73757065726C6F762D746162';
wwv_flow_api.g_varchar2_table(18) := '6C65202A207B0D0A2020202D7765626B69742D757365722D73656C6563743A206E6F6E653B0D0A2020202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0D0A202020757365722D73656C6563743A206E6F6E653B0D0A7D0D0A0D0A7461626C65';
wwv_flow_api.g_varchar2_table(19) := '2E73757065726C6F762D7461626C65207468656164202A7B0D0A202020637572736F723A2064656661756C743B0D0A7D0D0A0D0A7461626C652E73757065726C6F762D7461626C65207468656164207472207468207B0D0A20202070616464696E673A20';
wwv_flow_api.g_varchar2_table(20) := '347078203870783B0D0A20202077686974652D73706163653A206E6F777261703B0D0A7D0D0A0D0A7461626C652E73757065726C6F762D7461626C652074626F6479202A7B0D0A202020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A746162';
wwv_flow_api.g_varchar2_table(21) := '6C652E73757065726C6F762D7461626C652074626F6479207472207464207B0D0A20202070616464696E673A20347078203870783B0D0A7D';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(26889495594448555334)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_file_name=>'com_skillbuilders_sbip_super_lov.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '4749463839612A002A00F50000FFFFFF000000DCDCDCBEBEBED6D6D6C4C4C4929292B0B0B0FCFCFCD0D0D09E9E9EF6F6F6AAAAAAEEEEEEB6B6B6989898A4A4A4CACACAE8E8E8E2E2E27272720000000E0E0E3A3A3A4646461C1C1C606060343434404040';
wwv_flow_api.g_varchar2_table(2) := '7878782828284E4E4E5A5A5A8686866666662E2E2E1616168C8C8C7E7E7E6C6C6C54545400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(3) := '000000000021FF0B4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F904090A0000002C000000002A002A000006FF408070482C121F970DA5616C3A9FC64B653A1540AF5800854AF5';
wwv_flow_api.g_varchar2_table(4) := '64BF4D2ED70A2E03C45432118100130683489B6841572444C1410129CCA10E0A820A070B47681F4409068C8C0C7F4D040F1094100A0E4518624C420B0F8D8D09807C95969C431954A24302A08D984F7BA5967879531D4504AE8C075003A4950F6A431A15';
wwv_flow_api.g_varchar2_table(5) := 'A74211BB06AB4E0D82A50FCC43051C4603BB8F57020C0A0F0F82B0440D114610A00F0E904F0B02046F7BC74EAD07110212F16513E4500811136600030A04A80E4082030C0E1018D8448F0206FB001470958EE1348A005AED82504BE08203CADE28E31501';
wwv_flow_api.g_varchar2_table(6) := '1F3F0911148C8433D2008304269F3428A072A5AE5D0A86012450D39528C090A018C42CD380812B086D10FC32A06080218B4210D0F4E6E069A70656A10E41B020EB97825A9DE803BB35814EA213044400B9F0CA04037DCC4EF0EA0481834F8D14A8EB6AC4';
wwv_flow_api.g_varchar2_table(7) := '2828056D9F20000A2ADC9004810F2BFBF7E4A6AB02461CF42AA2D1D564270E944903D0C05B47216F719205706D974EA048C529D3FBA472A307C792BD2A42B8116428B50D44CCB86BF702738D52F38B60E9C069D1441644600071B411B07E5D0D851AFD35';
wwv_flow_api.g_varchar2_table(8) := 'DDB0006417C6DE64302808D3B5224820B9C0F52B41000021F904090A0000002C000000002A002A000006FF408070482C12050307C1C86C3A99838742F1703CAF58A1E001E9421483AC98E95078BB0CC4782D6498CF6963432D26380E09FAB07C56308A0F';
wwv_flow_api.g_varchar2_table(9) := '19151520125807068906100B44126F5D0A4B431D8396160D4F118A8A0745116F0A56430296A6144F109C8A994403660C8D430FA6961EA9AB8913450B6E024521B583B74E0EB906BF9F7F4514C215224F12C71172D44518C29857040AABCB45AD44C21786';
wwv_flow_api.g_varchar2_table(10) := '580B0209110EAAC94FB419221005E56C000802D64F2010F5FD420BE1FC091493E000830393061E39E0275F81550EF40C7CC8C98A806310E8F55B8028178101C7121D8810100B0209A0420E001992418292571A14E8A692C03105EDFA713B96004047B945';
wwv_flow_api.g_varchar2_table(11) := '0C60D66BC060150435085E1900234BA1BD990FAA34050070AA5321081658CD22F1EA930911BA16419020279B0613F0214AE864C2A20265276C6582C0C1034E0ABA6A3552142F5BBA3F158D2292E02F8004C77639B199AB80913B462EE6F2548C27B8A81A';
wwv_flow_api.g_varchar2_table(12) := '01B8CD95D709CB55663B1E25D2E0A65852B91E04DC24B848E0448E9FBCCE07403227DA0B54291AFD0441842F07427396B82002030661C79CEEBB4AA857E68A1ECCF5CABAA2D726080243707E9DEC9D02D39F04010021F904090A0000002C000000002A00';
wwv_flow_api.g_varchar2_table(13) := '2A000006FF408070482C12098E4302616C3A9F45C4C040353016D0AC1690A8561DDB7093E1A53E98E2344051369CD546A4123D3CB415C58983C1886CED55105843026D0544020A8A0A0F6050116D0745055E0C740D0C0A109B100A0450106D060D45800F';
wwv_flow_api.g_varchar2_table(14) := 'A443139A9C9D03A0A213450B6C0945020FACAD500EA2024605784504B8AC0AB54F12A27E4512AE4511AB9B0A0E744E046C954608A844078C8A10875B0B0209110EA1BE59AA0E11020DDC6A080211D54D09F170DAFAFCFD500907181CF8E4AF080412152A';
wwv_flow_api.g_varchar2_table(15) := '744043C90BB582423E249C780140A1361024F8933062A2C7075344193810215F96060534785CB921A42806F8D224E0B0922501510AD4E96B60A06642BD0A0000556160124E020B35494961A360C020880D5426BCA071C882064F210E912040A7187B5A9F';
wwv_flow_api.g_varchar2_table(16) := '4CA807054102AF6A1A4CA0678720940906C29D9D90F50902070FBC28B0B7A02E00327ADD3A4120F48B91048285746913EBC94D43469218B95846D2135E6D8E0D69F0E041D55438C10E71E9052D2008D578DE112D84729553442019EE06194A6103CB5AB7';
wwv_flow_api.g_varchar2_table(17) := 'C90D6041A840AC872088D0E980E9D5441644E043368C68C0658A8685FEDA6F5800B21D5E6F42D80B04E9D7CD2629603D4B100021F904090A0000002C000000002A002A000006FF408070482C12098E4302616C3A9F45C4C040353016D0AC1690A8561DDB';
wwv_flow_api.g_varchar2_table(18) := '7093E1A53EB0E2344051369C8D086618A9940F0F6D851D20382820057B4E7855106842026D05445D5E0C8245116D0745058E760B0F6D0950106D060D45840FA143896D604F9E6D13450B6C9C479F944F0E9F0246050A46929B50129F114612034653658F';
wwv_flow_api.g_varchar2_table(19) := '59046C8E70A544AB660E904D0B0209110E9EB8598907110212CF6A080211D4430811AD6A50E8EDF0F14509070C0704F24D130EF6F842965EA6E51B12E18182830A8A9D2A0341423E297F204884F040C0B15911C66D69108141C48910125E6CC32081C62C';
wwv_flow_api.g_varchar2_table(20) := '1C19180429518103029F14708B27C023CB07F808556170B25D03C1071F15D0826820E1A181003AFE7170744183A348852068D033CB3B0057DB4D3807A581085AF01A4C3087C71F9402152A70106182E716040E3455D1E30A2A000B69F356786055E71723';
wwv_flow_api.g_varchar2_table(21) := '09CC0E01A1372F03283015194962A444E1B424A0D8F245A4C183070E891C789CB62A809155660A2104618F00CE153C2FAC428A482F2AA9867878CC218B5F03C24CB5C92D4442610B999FA80B79403480DB458B4CF860C10208CF70C67CCA9A8F4C9907D4';
wwv_flow_api.g_varchar2_table(22) := 'E5BDFE1BD50902BF10A0474590204901BB5A82000021F904090A0000002C000000002A002A000006FF408070482C12098E4302616C3A9F45C4C040353016D0AC1690A8561DDB7093E1A53EB0E2344051369C8D086618A9940F0F6D851D20382820057B4E';
wwv_flow_api.g_varchar2_table(23) := '7855106842026D05445D5E0C8245116D0745058E760B0F6D0950106D060D45840FA143896D604F9E6D13450B6C9C479F944F0E9F0246050A46929B50129F114612034653658F59046C8E70A544AB660E904D0B0209110E9EB8598907110212CF6A080211';
wwv_flow_api.g_varchar2_table(24) := 'D4430811AD6A50E8EDF0ED9009070C0704F14E7D0A0CC242965EA6E52302F00B9F4F10240C5C40A80C8163B3228CD382404204666D06406CC320C1C42C0D747DA23280C02705DCE22DFBC4A92115061FDB3520E3050213296C140C3834100002C15D0F1E';
wwv_flow_api.g_varchar2_table(25) := '38E0B9A001CF9EE9161CDDF24E48CC7813CE296307AFC1047378F06591A0E09B00014FE138D054454F9170461C2850F0602D83944E10B8A4928A48870746083C80C017C25A854F4C2A3242628391097FFAFA2D568B65A50A1516116990B82F3F281BABC0';
wwv_flow_api.g_varchar2_table(26) := '056001B285220D14F3BDFCE4941752443040867CA1C880BD96FD3D992B1BC083D5AB4D1059C0602D5B5AEE22F83DB0B9336EC8A0B339A84DB1C9F1D59B9112790E19B074231F9EB7BEDEA481F1D554B9831641820408EB6282000021F904090A0000002C';
wwv_flow_api.g_varchar2_table(27) := '000000002A002A000006FF408070482C12098E4302616C3A9F45C4C040353016D0AC1690A8561DDB7093E1A53EB0E2344051369C8D086618A9940F0F6D851D20382820057B4E7855106842026D05445D5E0C8245116D0745058E760B0F6D0950106D060D';
wwv_flow_api.g_varchar2_table(28) := '45840FA143896D604F9E6D13450B6C9C479F944F0E9F0246050A46929B50129F114612034653658F59046C8E70A544AB660E904D0B0209110E9EB8598907110212CF6A080211D4430811AD6A50E8EDF0ED9009070C0704F14E7D0A0CC242965EA6E52302';
wwv_flow_api.g_varchar2_table(29) := 'F00B9F4F10240C5C40A80C8163B3228CD382404204666D06406CC320C1C42C0D747DA23280C02705DCE22DFBC4A92115061FDB3520E3050213296C140C3834100002BD5D0F1E38E019E75D3E040B786E5960B4A71106289A2648D92E01830727485428A1';
wwv_flow_api.g_varchar2_table(30) := '6582014053272875D2E04285B36827C6795A4601BE5F5AD19EDD60440055218DCAB07352422E5A0DC6521139558696130E7ECF5228D2008282895EF3BC439CF84111070A141816D2E0E43B03892B505D06C17131222EA92C7AD2C083DFC5431AFC29ED98';
wwv_flow_api.g_varchar2_table(31) := 'EA82685F9B360071D6025722036697E6E72A02837E4D63C7F4437B784CA74230372F9D3C1F8107CD754287823933BFE7DB85D08930564B100021F904090A0000002C000000002A002A000006FF408070482C12098E4302616C3A9F45C4C040353016D0AC';
wwv_flow_api.g_varchar2_table(32) := '1690A8561DDB7093E1A53EB0E2344051369C8D086618A9940F0F6D851D20382820057B4E7855106842026D05445D5E0C8245116D0745058E760B0F6D0950106D060D45840FA143896D604F9E6D13450B6C9C479F944F0E9F0246050A46929B50129F1146';
wwv_flow_api.g_varchar2_table(33) := '12034653658F59046C8E70A544AB660E904D0B0209110E9EB8598907110212CF6A080211D4430811AD6A50E8EDF0ED901D15F526F14E7D0A0CC24228F500378CC367C90B180700135648156F01A13204FE2904982104B73008244460D666C08789004994';
wwv_flow_api.g_varchar2_table(34) := 'B8B8A581AE4F54063C005981013E00CB3E71F2309164BC0664BC4060D2E00240BB0E125E1241A0EBC1030787F838082A14CE82A44DA3166910EB09820436D3346860CE8182AC46261800847502D42705182858BBCFC8532339AB2820A0C52B84BB101414';
wwv_flow_api.g_varchar2_table(35) := '2B92802EDF4FECF2FDC10BE1413F22498C9C2A43CBC946C285FD0E696094E910B179DE3D26FC5514959D441A7CD2F344C0E0BBFBC6F5A2C250C8C32A8BA0A8643B97C8E22A87012C8836F6DD90040C183808EC3A33910511829F131AD7CB40A9429A9B39';
wwv_flow_api.g_varchar2_table(36) := '0B7DF517E84D10BC86F01C3B80AB490A50CF12040021F904090A0000002C000000002A002A000006FF408070482C12098E4302616C3A9F45C4C040353016D0AC1690A8561DDB7093E1A53EB0E2344051369C8D08E67661F2644492E2A1AD900B05070A10';
wwv_flow_api.g_varchar2_table(37) := '057E4E0D1E1589890244026D05445D5E0C8546148A8A1E4505937E0B0F6D095016988AA2447B6E0D8D6D06604FA58A10450B6CA74304AD075017B1152146050A4611ADB74D0EBE1F461203465365945921BE9508AB45105E0F0E954E120F141ABD15B359';
wwv_flow_api.g_varchar2_table(38) := '8E07110212D86A0008102859081113EE4FEDF7FAFBEF46800C0718F12B024801830843222810B4D0D940219CBC8069200882450806F3EC5B90AA0C81080F2E5E5CE840403E2D0824286C656000489116499A4CD34018CB96022A8E6420501F01B836A100';
wwv_flow_api.g_varchar2_table(39) := '38D0A9E0C0C97B0DC8788120670046080E1FBE13F6801B9A2147A522587055AA5722132278238220414F770D260888B0878096090606999DD0F5090207A0AAF4A155178052BD6EA120E8F8C54882C0915AD97B92EB919124FE74417160AC4883AA1A87C0';
wwv_flow_api.g_varchar2_table(40) := 'E5335608B4326701A4624AA441ABBD4E1C957990AF5861548EA110368070886A2FB5852CD05685B4E0081803EAE14C64410406073B3719FBD74B56AFCDCDF4FDEA5AE2D7E584213CFF5A364981E9598200003B000000000000000000';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(40404666626068245306)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_file_name=>'drip-circle.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396180000F00F10000FFFFFF000000B6B6B600000021FF0B4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F904090A0000002C0000000080000F000002A3942FA080B7DC';
wwv_flow_api.g_varchar2_table(2) := 'D28A52D17767C45B37FE7908488DA2731A246A756DF89A310BC1B57CD3A59BAB69D50366663EA290370CAE8AC1A41309B53DA551DCD4BAC352B7DAAEAEFAE586BDBBE551CCBC8ED769701B5D32CB7F73635D49CFDB7FEA37F9FC77D707C84658A687B7A7';
wwv_flow_api.g_varchar2_table(3) := '98C83828E81687E82809F908679965A88959C8E9D74999B9191A480ABA386994DA5869FAF93A8A2A1ACB7AE94ABB3A98DB2A6BDB5BFA7B50000021F904090A0000002C0000000080000F000002B09C3FA020EDB2D86B71D26521B695EFD981DF1392A383';
wwv_flow_api.g_varchar2_table(4) := '1CA5B35E4AD66AAF378BB579B3A72BD9FD9332C4863BD94F97E3C18AC4A471E90C26985467F3A8A4619F5AE83626BD7AC7DDB28F7C36E3B6E1EAD78D5EC7916F2BDCD2B6EBEBFC79360D28A786122436F8271848E7C7A588489862E8D89858B978487939';
wwv_flow_api.g_varchar2_table(5) := '99D7872969F9189A290A567837F9A9093ACA9ADAC0C9E8DA7ABA2A5B1A49ABAA4B9ACBBBC708EBD93BFB2B5CBC697A5C3B6CCB3C5C000021F904090A0000002C0000000080000F000002BE9C3FA080B720A2146FCA6AE9CA5A716C8193786D191935C6A3';
wwv_flow_api.g_varchar2_table(6) := '2666F88E71E99D738476905DC3BDFC93B458AA9CF1A6FB208F41DCF2D9140C17D32873E7C302B534AED30AF52633554631AC04ABC5D7341B4D3E2BCAEE3AEFBDB667F55B4E997EC7D725F88567483866F1277718E8B8F7D817393899C208089929A949C9';
wwv_flow_api.g_varchar2_table(7) := '598898B3D8D05699B879DA89FA592A8A40EA699A2ABB0AFB3AD1EA0057ABAB1A4BDB1B7AC908CA3BEB7B6C6B8CBB52FC6B9CEC1C8D8CB4EC92570A3D7DBD1B55000021F904090A0000002C0000000080000F000002CB9C3FA080B7DCD212B48A672BCE77';
wwv_flow_api.g_varchar2_table(8) := 'F29D8196A879A1694592A23E2D5A2A5C277F3045E2370DCC393F7BB1222EE2EE873C2A6B27E668D9E308218D6215EAC3DA9CB168D3FBE4EAC482A9D9484EA6B5DFECFA0DAE9CAF437A7C7C076EF36A3E3B9C37876035F8D7E5E60787B8B8178446555817';
wwv_flow_api.g_varchar2_table(9) := '9948C9D8D68879A999F228E860886709287A98392AD5996A471A6A5ABAF97A0A4BE16940F8A9E8DA3AABC7DBE76857BB52A9DB2B7B1C9BBCCB19AC3AC96AAC1CBD2CFD8BDA8CFD5C6CED0B3AFD2D7C6BEBCD8D4C7DFEFD53000021F904090A0000002C00';
wwv_flow_api.g_varchar2_table(10) := '00000080000F000002D19C3FA080B7DCD28A52898BC5CB7873BD7CA0F5799C99A118F5B053D4C261399F757A77F9A5F2FB0810B91443482376FCF580A2A5530925718A5419D11AA449715B5DD7F7656AB3B6703579451B11CF709BCC857BE560BA788A3D';
wwv_flow_api.g_varchar2_table(11) := 'B35FEA66D4FEE6E7F6279467A85624084838A6E8D8F8A1E7C0B79756B9389889B9F95866276980749908E9D919773A977A015AB1366909CB598A4AAB6A5B578878388AB57A576B8A0B7C8BB77BDCDB371CB8CC286C9C1C2D4BFA1C6C5D7C9D3BDC2A3AED';
wwv_flow_api.g_varchar2_table(12) := 'DBACF9CB5CBDC2EB8D2C2BEE9C4DAC4D7E51000021F904090A0000002C0000000080000F000002D59C3FA080B7DCD28A52D127B21678E7EE819BA891DFE265D7143DABD5B28DC9A1298DDBA13EF2DA0B99C910AE184CA848D59237DF89B983F6A425A700';
wwv_flow_api.g_varchar2_table(13) := '88350689438735477D0294E071337CD566915BEF918B2E93BFF4B8750D6F1B8A6CE0DC0E6816253845588586E7A657B1C897F7672806397916B96499B8D7A5F9A6E8574939185A38FAA376DA87FA08CA2ADA4AFA6A9A3A9B97C9582A199BEBCABB61EBE8';
wwv_flow_api.g_varchar2_table(14) := 'A9AA887B492CA79B461BACCCD9586779DC7B087D27DCFCBB798B1C0D2BBDEB6BCD88DDD96CFC6C1EA834EE4C2EAE854E9DBE6D55000021F904090A0000002C0000000080000F000002DA9C3FA080B7DCD28A52D17797D85CBCCE7DA0A78D227876991561';
wwv_flow_api.g_varchar2_table(15) := 'EDF4B28D3B97A8DDA521BE2B23E91BAD2035198276841589C9E0CD99E36D74532910F01B6A634C87B2D93550AFBFB1D93ADE2ED560B617DAC39AD07478D52E708BBFEF70C58FD4575627F754188597C6A5F7C718B8974838184979C8E1C8070998D9C835';
wwv_flow_api.g_varchar2_table(16) := '6979074A365799B578BA86DAE6492A7A56DA6A9A3ABB4ADB37F4991BBB6B285BFB7BAB1ABCA4DBCB8BE86A8569340CAC897B1C578C3C7D29FC7CDD69AB591DDA3D6A0CB2BCC98CBDFDF7FD9A0C2B9EFDA8ED0C2F18ED4D0F4E3D52000021F904090A0000';
wwv_flow_api.g_varchar2_table(17) := '002C0000000080000F000002D89C3FA080B7DCD28A52D177677CA27BC17D5D28929FE965D6A63518BBBA2DF2CA8A382E38A8E3687EC3A92036226DE6401A6AC75813B0FBF182A55E95FA196A61C6A4D3DB5D2A2B509FF574F648A5DB62FBF9060FA36960';
wwv_flow_api.g_varchar2_table(18) := 'F97A476353DCB8F8FB1746E64746B7676798A7562740C824D717E9C69558697638A5D8E138F618C8095878A9996989B7032AE839280947396AAA47CAD60A3979EB8A0B16BB88B9C6981A5CFBF97A0A7B6C2C22AC4BCCCC5AC48B882C8B3AFC9C8B6D9B1D';
wwv_flow_api.g_varchar2_table(19) := '185D3ADD4BBABC7DAD5DCEFD2D9D4C2D64BDEADE091FFAEBCB384F5A000021F904090A0000002C0000000080000F000002D59C3FA080B7DCD28A52D17767C47B890F0A4F088EA4E89D99D5B10DF76AB18BC0B57C2B27AA9F26F90BAD203362CEE8C02569';
wwv_flow_api.g_varchar2_table(20) := '4BA4C1D6DC054B296055D87256B4D0A7D2CB0473BF5BE995DAB3A6B1C5A13BFB6EC3B3E6351A50C7ABE6F2FE31FEC7779447E873F601D89428B6B8D538F501C9A3A746C916E8A728A899C9486768177938B9F348D6E5B8E9D959066A795748621A96CA8A';
wwv_flow_api.g_varchar2_table(21) := '7A7B3A2AB93B3A3B468B0B9C2B1C4AEA1A7BC989B9ACDCBCCA2C860C7BBC673BFC8BED3B242D5A2CA9AD5A0B2DEEDC5AC96D2C1B1E9CBD7EBD4D7D1E1F52000021F904090A0000002C0000000080000F000002CA9C3FA080B7DCD28A52D17767C45BB727';
wwv_flow_api.g_varchar2_table(22) := '84A2008E61696656B77E1EC2B92DFC3AB511D38A792E3CE9E3A92032A2CE689B2591B85B85F91CFE5023AA6888654173CB6CD17B9C064DD610B8AB3D3795EBAD93DB16EF7865813A9ACE7FF5C77BFD3F36E2F746C886B787D8A72507C0F833680877A898';
wwv_flow_api.g_varchar2_table(23) := '8856194717285207E91659E819DAE9983997C26749A99ACADA365ADA08FB88EA4A3BD97A5B7BF9444AA669662B290CDAF9EA6B5AF56B174CCCFCF92CBA283B7DBA3B0C5DEC1CDA9B8C7CA59D6DDD2CEEDD530E745E000021F904090A0000002C00000000';
wwv_flow_api.g_varchar2_table(24) := '80000F000002BF9C3FA080B7DCD28A52D17767C45B37FE2DC2480A4F496656B7862D02C29EFC3AB35D1B310EA0E3E953415C435A91274CB28EBA5B3357E9F9802825D16AC42297DA2733EA338982DCF2D59C456FCF6C63985AEA46E53B2FDD39577BDFE3';
wwv_flow_api.g_varchar2_table(25) := 'AA3EDFB6961668F7570736D517678877E8D80809F528A9480297C248A9F935C919E9B9C9A71076B7590A8A7A2A242AE5470838182B385BF8DAC94A9A99AAABCABB844B66FBD92B6CAA0BEC2A5BAB0C4BDBBCEC7C9B381ACCDC496C3D7C3CDD5A52000021';
wwv_flow_api.g_varchar2_table(26) := 'F904090A0000002C0000000080000F000002B29C3FA080B7DCD28A52D17767C45B37FE79C82394A690599D1AB2A3E8C006F8BAB13DCB15D402A799E2D58437620EB70B2A57C62433F82B2D7BD361B5783D3669586614F50C53C55672778C2EF7BE5967FA';
wwv_flow_api.g_varchar2_table(27) := 'AC8EC3E7DA36296AD771EB66FEDB2F0758C4D6E71668488728B8A8D878F79387B4E7A8572969B98549F84779E999F919093ABA7938798A29AA5AF878B2CA891ACA9A3AAB509A183BFA6A4A0BBB70CB98BB8BDBCBFB09DCA95BABEC2BDBEC1355000021F9';
wwv_flow_api.g_varchar2_table(28) := '04090A0000002C0000000080000F000002A39C3FA080B7DCD28A52D17767C45B37FE7908488DA2731A246A756DF89A310BC1B57CD3A59BAB69D50366663EA290370CAE8AC1A41309B53DA551DCD4BAC352B7DAAEAEFAE586BDBBE551CCBC8ED769701B5D';
wwv_flow_api.g_varchar2_table(29) := '32CB7F73635D49CFDB7FEA37F9FC77D707C84658A687B7A798C83828E81687E82809F908679965A88959C8E9D74999B9191A480ABA386994DA5869FAF93A8A2A1ACB7AE94ABB3A98DB2A6BDB5BFA7B5000003B000000000000000000';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(40404670321108247582)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_file_name=>'bert.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396180000F00F20000FFFFFF000000C6C6C6B2B2B242424200000000000000000021FF0B4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F904090A0000002C0000000080';
wwv_flow_api.g_varchar2_table(2) := '000F000003E708B20BFEAC3D17C5A4F1AA7CABF61D3781A3089918B391AB5949A9FB96EC6B9DF58CCBB9DDF340D54E1823B68C365A107664FA744527B4798B56A94AE4343994FE9E57AE35EB5D86B7E86F590B5EBBCF6AB8992C67CFBB3EBA1EBF1FF3FF';
wwv_flow_api.g_varchar2_table(3) := '7E81587862838285886977878A760C039091031392919495930F98990E9B97959F92A1969A98A390A79C009B9EA5A0AEA2B0A49DA6B2A8B6AAADB4AFBBB1BDB3ABACBCC1C3BAC4BEC7C0C6CBB5BFB7CEB9CDC9C2A9D5B8D6D0D8D3D1C5D2CCC2CADEE2DD';
wwv_flow_api.g_varchar2_table(4) := 'E4C8DFE6E3E8E5E0DAE7E1EBCFDBEDE9EFEAA2C3BF1AF8C9FAC8F917FB02FAE3077020A8040021F904090A0000002C0000000080000F000003FF08B40BFE22C607A5A0CE5EAC31E89CE581145949A318A24C5B6A5B06BF261C7FF3A9CA75CEEFB89EA6C5';
wwv_flow_api.g_varchar2_table(5) := 'A0016D46944EF963068FBEA713B99C5405C4C635696D76A55FAAF7260693A3655B96C03D0BA1EF297A1E0FD32DEBB67ECB1FEFFD7D667F667981697772756E708C898D11858092828688768A83871A059C9D051403A1A203A0A3A1A5A6A8A3AAA2ACA70F';
wwv_flow_api.g_varchar2_table(6) := 'A6AF0EB1A4B0B1AEB5B3B19E9DB8BEB6A9C0ABC2ADC4B200B4BFBAC1CBC3CDA2BC9CCAC8B7C6B9D4CCD8CEDAC5CFC7C9D6D3B4D19FE1E6DED7E0E8E2D5EBE7DCDFBBD1ECD9EAF0E9EDF7F4DBF6FDF2BCFBBAE97BE7AF5EBE82FC0EDE028821DB330F0EB9';
wwv_flow_api.g_varchar2_table(7) := '41DCF6B021458916055664052001010021F904090A0000002C0000000080000F000003FF08B40BFEAC3D276A9DD40A0CF4C61E17829A58929699A257C44CAE948DF359AFF7F5787AFEF913DEAFC30BF2620458CC482336854C9B530ADD15ADCFAB0FA974';
wwv_flow_api.g_varchar2_table(8) := '457153701588A56AC33DF470ACE6429665F1994D9FDBB378B3C7EDE0ABBF697579728381777A1A7E7E8288848D86856B878E168A7064987F71908F9291809E1A05A3A40513A5A41303ABAC03AAADABAFB0B2ADB4ACB6B10FB0B90EBBAEBABBB803A8A3A7';
wwv_flow_api.g_varchar2_table(9) := 'C4C2C8C0B3CAB5CCB7CEBC00BEC9BDC1D0C3C70FC4A6D7D4D2D6D5CBE1CDE3CFE5D1D3DDD7DBC6A8DEE9E7BFF1EFE0DFE2F6E4F8E6FAABECDAD9F3D4051CC84F5E417AF7E015F4E780E141810F092A9C588F62C260EE3064B4C5E10F5EB98EF93E62F0A8';
wwv_flow_api.g_varchar2_table(10) := '0FE43E911C13000021F904090A0000002C0000000080000F000003FF08B40BFEAC3D17C97422E70BF4BE9EC085A3576AE73791A05949D43BBDD613AADDBDEA368FF939D64F1834F542B4990CB21C1A9DA8E3B31885E26E2269957ABD2599156558DB2562';
wwv_flow_api.g_varchar2_table(11) := '7766E0999CB5B6B9826F6C3C8FA0A76BF77D9B87EFCB785E4D0A83727E6C7F6F7D8B6A8D6948859174877A88969598949A58869D838C8F81A17C8EA2A61A05A9AA0513ABAAADAEAC0F03B4B50313B6B5B8B9B7B3BCBBB9C0B6C2BABEC1C6B6B1B20ECAB0';
wwv_flow_api.g_varchar2_table(12) := 'AEC4B4D0BD0EBCD300D5D2D9C8C5D4BFDBB4CD0FE1CCB1DADDC7E7C3DFD6D8EBE6D7DEE9B5E300F4F4EDF2D1EEFBF9ECF1F0E800AAEB67AF9C3883FDDEE113C88DA1BE84FC1CFACB55F0D9418B10334A54F86F1AA1C78EBF305E4CC541A43C0E014F5E48';
wwv_flow_api.g_varchar2_table(13) := 'C910E5C06D2E1B9E4C000021F904090A0000002C0000000080000F000003FF08B40BFEAC3D17C9A4F102C1B9EEDE050A1F587667388D2959495835BD16F4AE23F9E4BAC3E3AC5D0E6812067D39DAEC66933533C622F2B8194651575595FACB0A944FC6D2';
wwv_flow_api.g_varchar2_table(14) := '19834EA55B74F78C656BD7E9769C032E8BC33005D3DD9BF7E180567C44723C757A6488668A77835E846F827E907F92867B8C798787815C969F9EA16A49989BA5989DA3A285A0AAAE1D05B1B20513B3B2B5B6B40FB9BA0E03BFC00313C1C0C3C4C20FC7C8';
wwv_flow_api.g_varchar2_table(15) := 'BEC7C6C4CEC1D0C0BCB8B6D5B3D7B7C9CDDBCFDDD1DFC5E1BFD2E4E3CB00CAD4BBB9D9B1EEBDE9DCCCDEF4E0F6E2F8E6FAE8CAE503EB1C04043070A0BF73FF12225CC8EF5FC176ECAC45C4C6505E3D8BF730E6D3B88F2B63BF791E1F4A140891E4488F0A';
wwv_flow_api.g_varchar2_table(16) := '1B563CA8B225CA9326DF5D804990A2340D17F1E1CCA8F3424E8D3B8B25000021F904090A0000002C0000000080000F000003FF08B40BFEAC3D17C9A4F1AA7C85F7DA07766258929F99A2602561D5E45A902BDB8FB83AFAC8F7939E2008CC157FBAD92D56';
wwv_flow_api.g_varchar2_table(17) := '63C2384F0651373D21AD006175973D7693B8E86BE32443CD5223558DD5B2B9EE2BBCA76C9EEB625A7EEBFBB6BD717E736B721E786863878A61827D818F8091848D028B6596778C90939B7F9C922298697B76A3887A947C436F8EA0839E2205B2B30513B4';
wwv_flow_api.g_varchar2_table(18) := 'B3B6B7B50FBABB0EBD1303C2C303C1C4C2C6C7C9C4CBC3CDC80FC7C2C0BCBAB9B7D7B4D9B8D1D2CFC5DDCAE1CCE3CEE5D00ED203D4BFD6D5D8EFDAF1DCE9DEE7E0F5E2F9E4FBE6FDE800D4B10330B0A0BB76F0FEE10B684FE1B787F7BE194C48F060458A';
wwv_flow_api.g_varchar2_table(19) := '03D5417418B12D23478513E52114799164C6860CF5A5E4B7D25F4B801A23521CE96B9E8699256BF6D3A072E7859E2D79B2DC99000021F904090A0000002C0000000080000F000003FF08B40BFEAC3D17C9A4F1AA7CAB1620F885C2189AE245962AB97950';
wwv_flow_api.g_varchar2_table(20) := '65C53056BF9C9D036BEAF4AC5F6F02240E1F40D94CC798289D32E8ED893C0A57466C557B756D4954A644BCC43569BB30CFBAE6B6BDDDD3571E07A9EF51F4992CDD15E73E6F7482817F75027853797C7A63668E8684419259709480888B8F6589699A6A91';
wwv_flow_api.g_varchar2_table(21) := 'A16CA26E499FA78AA99E37A496AD83AF2005B3B40513B5B4B7B8B60FBBBC0EBEBAB81303C5C603C4C7C5C9CACCC7CEC6D0C5C1BDBBC2B5D7B9D5C3DBD80FCACBDFE0D2C8E2CDE6CFE8C6D4C0D6DDDAEDDCF1DEF3F000E0E50EF8E4FCEAE1FAE0D8011048';
wwv_flow_api.g_varchar2_table(22) := 'D05DBD59D910FACB776FDCC27E00CF453C5650DE4083172D56A4D7503362C77413A33D1C19721AC68DF6502A3CF8EBA3C8920CF79174F98F26328BF534E0CCB8F29D4E8E2135780C7A61A84BA1CF12000021F904090A0000002C0000000080000F000003';
wwv_flow_api.g_varchar2_table(23) := 'FF08B40BFEAC3D17C9A4F1AA7CABF697208ADA48866699A2E30662AFCBC1B3CC4C9544DF8FD9F63EC1242804FA86C19C0592C3359931A533FA74109147E3CA1AC49AA4D01A78A7B395C7E62537BBDE02AEDA5F7B84AE57D353F11D0D9F9FFC45805E747B';
wwv_flow_api.g_varchar2_table(24) := '8554877A883C82717F6F5D8D818F3E768A678689998B936E7D9C729F8E44959A97966A78619B9EAC908C8005B1B20513B3B2B5B6B40FB9BA0EBCB8B6C0B31303C5C603C4C7C5C9CACCC7CEC6BFBBB9C2B7D3C1D7C3D9D6BED40FCACBDFE0D0E10EE0C8E2';
wwv_flow_api.g_varchar2_table(25) := 'CAD2DDD8ECDAEEDC00EBF2DEF0B1E4E8E6E3E9CFFCC6F8F302D6A3D78EE03B83F1E69DC3C7D05F3900E7041694789062C2810B1DE683B84F2E5F338D16EF6D1369AF174292274D2AECC8F1A3C77E2FFF6944A8A120BC9A076F5EB049F3824B7F1A7EC60C';
wwv_flow_api.g_varchar2_table(26) := 'FA2C010021F904090A0000002C0000000080000F000003FF08B40BFEAC3D17C9A4F1AA7CABF61D370924A995E6850A27BA8118FC8A333355524CE316848F2BD623287410812BDEEDE793299B3BA6CE06A51A8348D710BB4D4A6B39706F1A7E92C7E2A5EC';
wwv_flow_api.g_varchar2_table(27) := 'D8D55E57D992395D2D7FE7F8FB97FD7603F87F41794E7A848651875681706D2571297D728588948A8395766B5C91908B7E44979693A28999986880A99B9E2505AEAF0513B0AFB2B3B10FB6B70EB9B5B3BDB0BFB40F03C4C50313C6C5C8C9C7C3CCBCB8B6';
wwv_flow_api.g_varchar2_table(28) := 'C1AED3BA00D0BBD2D1BEDBC0CEC9CBE0DFC6E1C6D8D7DAD9DCEADEECC2EED4DDEFE8EB00CCCD0EF7E5CAE3C5E7FFE9E8B513380F60BD73FAFA11DBB750E100830321160C28311E3C6B09F3316388CF27DE338A200F868C387262BD8C1EC5695499925C3D';
wwv_flow_api.g_varchar2_table(29) := '771A5E128C3910E605993259AE6CB84F03B8040021F904090A0000002C0000000080000F000003FF08B40BFEAC3D17C9A4F1AA7CABF61D378193609ADA895EAAB091AF1833636541760DDB37B6E78FD6CA217405853C9D2C89FB3997401F14562C09AD2D';
wwv_flow_api.g_varchar2_table(30) := 'A694D69C7AB95B49B8371397C9D5630BABD29E95E07737EEAE47E5C4AB5AC53ED99F74777F5F66837169796B7B7E828D80858E8464866688009645949391818F9B9E70957A897C8B2605A8A90513AAA9ACADAB0FB0B10EB3AFADB7AAB9AEB2B01303C0C1';
wwv_flow_api.g_varchar2_table(31) := '03BFC2C0C4C5B6BDB8CABACCBCB5BECEA8BBD3D2B400C90EC5C60FDBC3DDDBD9D8D1D0CBE5CDE7CFE3E6EBE8EDEAE2DEC7C2F3C1E2F7E4EFD5E9FBFAD7F8ECE26DABC74D5BB87C00DD258487B061C07CF2C015233860613F8BFF1C2AD4C8901B5D448313';
wwv_flow_api.g_varchar2_table(32) := '25D263974E03C97726DD95BC70B2A54A0021EB699898000021F904090A0000002C0000000080000F000003FF08B40BFEAC3D17C9A4F1AA7CABF61D3781A3F80828AAA56A2561E416BB16E496F36DE7BCC9A6931F8A86331177461D2CD963149D48A84328';
wwv_flow_api.g_varchar2_table(33) := '080A8F4BA98CC9D562B75E25F835AE4D85D6DF772D6637C9EE2E5C4C4DB3E2E1B7B9FC9CEBFB7B5F7527576D867F517E7281878B7640846A8D798E898C88598A945A83673F05A0A10513A2A1A4A5A30FA8A90EABA7A5AFA2B1A6AAA8B3A01303BABB03B9';
wwv_flow_api.g_varchar2_table(34) := 'BCBAAEB5B0C2B2C4B4ADB6C6B8CAAC00C1C8C3D0C50EBFBABEBFCFCEC9D2C7DAD1DED3E0DDD9E4DBE2CBD4D5D7BCE5DFEDE1EFE3E6F1E8E7CDD5BD0FF8F4CDFCB7FDF302BA13180EDFBA5DFE98FD5BA8B021B77A09D3FD3A68ED1B370D16C5610C77F10C';
wwv_flow_api.g_varchar2_table(35) := '42C68F1C355E9838921780040021F904090A0000002C0000000080000F000003FF08B40BFEAC3D17C9A4F1AA7CABF61D3781A308998EA0AA1BD99A9584B9B175D27189EF70FEACC09AAEC7630C8D37A212395BCA5E4C0070254C46ABCDAB2FFBC442BBDB';
wwv_flow_api.g_varchar2_table(36) := 'AF8D3B964E05DE74585D04B7CB6C67F98C5EDBDF47B73C0FBFEF7F67715A78567A837F647C8A805382868F7D8489859188621374059A9B05139C9B9E9F9D0FA2A30EA5A19FA99CABA0A4A2AD9AB1A60003B6B703A8AFAABBACBDAEA7B0BFB2C3B4BAC1BC';
wwv_flow_api.g_varchar2_table(37) := 'C8BECAC0B5B8B6C700D1D3C2CCC4D6C6D5D2DAD4C9DBDECFD0DCE3DEDDCBDFE7E6CDEAD7E8CDE1B9E4E9F2EBF4EDECD9E5F6B4F0F8B3FFC5006213E8EEDEBE09F0DC69F0C66CE1B98617182A8CF870622B87CD1C3C0390000021F904090A0000002C0000';
wwv_flow_api.g_varchar2_table(38) := '000080000F000003E708B40BFEAC3D17C9A4F1AA7CABF61D3781A3089918B391AB5949A9FB96EC6B9DF58CCBB9DDF340D54E1823B68C365A107664FA744527B4798B56A94AE4343994FE9E57AE35EB5D86B7E86F590B5EBBCF6AB8992C67CFBB3EBA1EBF';
wwv_flow_api.g_varchar2_table(39) := '1FF3FF7E81587862838285886977878A760C059091051392919495930F98990E9B97959F92A1969A98A390A79C009B9EA5A0AEA2B0A49DA6B2A8B6AAADB4AFBBB1BDB3ABACBCC1C3BAC4BEC7C0C6CBB5BFB7CEB9CDC9C2A9D5B8D6D0D8D3D1C5D2CCC2CA';
wwv_flow_api.g_varchar2_table(40) := 'DEE2DDE4C8DFE6E3E8E5E0DAE7E1EBCFDBEDE9EFEAA2C3BF1AF8C9FAC8F917FB02FAE3077020A804003B000000000000000000';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(40404672417226249300)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_file_name=>'bert2.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396132003200F20000FFFFFF0000003636360000009C9C9CE2E2E2C2C2C270707021FF0B4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F904090A0000002C0000000032';
wwv_flow_api.g_varchar2_table(2) := '0032000003FB08BADCFE30CA49ABBD38EB25042B5BC80CC3420C8628921CBA80EAC52A83A710421A57B3311C2DDD6E323B0C08B7DF9057020806A0420D063820970E96D466BC5695D806CB07F4D9BEC0B0B8644C3D75C6B47AC4F69CD2F18F103B531841';
wwv_flow_api.g_varchar2_table(3) := '79261D737D0A806000060702077B4B85868C0A8A1D5E6A9086000538020454844D0E051D079F9AA63198264205060407B0A82BA110ADAF8C568EA9B40E38B00406B23BAA0BAEBA6A0496734B9BC9CECFCBB5CFD3CAD1D61B06C1D715AEC9C1C2DB9AD9CF';
wwv_flow_api.g_varchar2_table(4) := 'DAE1869FADDDE693D9A2E0CBE9EFD60554D9E5EBA754E9F7E6F4E8EDF8F23590078F5EC05A060FBA23188EA1C28710234A9C48B1A2456B09000021F904090A0000002C00000000320032000003FF08BADCFE30CA49ABBD38E3C2CE619CA61D03B10CC342';
wwv_flow_api.g_varchar2_table(5) := '0C8698ADC222A40A1902B71B15A84C038298C22068E92433E34068187C14C1DCD1B17ACE142B13203B95F0844BE88053083208C6AE8F732D0B49E98340ABAE9500BDE687F804C8FB755B4E7829704045350280813C29062604315589800552473397721C';
wwv_flow_api.g_varchar2_table(6) := '7F671E812474207E8A0B067F695D4D420E654F059107A9753D1064047204976A493BB9529675931168208F9F6AAB1405C71E68B34728BB2A1E0768D34786110606D8C907DE8153B08FE568C5E25EE7E6E5E9EEEE96E1EF0DDCF5C1F31396F5DCF7F8A320';
wwv_flow_api.g_varchar2_table(7) := 'CCB8F96B10EF813C71F10E0E4C38B042C186CB14429C48B1A2C58B18336ADCC8B107A3C78F20E725000021F904090A0000002C00000000320032000003FF08BADCFE30CA49ABBD38E3C2CE5905A769C6402C82B01082315622500CAA922E8710C76F67A2';
wwv_flow_api.g_varchar2_table(8) := '03540D7053185ABD066110541C062E62EDF871EA928D6775592D2EA3AC1396311B7066B562EE2C38C408D1E4326D96CADA0A563C3C2642014F27372527057879026263252A251F375F8057007C7D363F78062E041F4762950A2158653C4A57A000061E63';
wwv_flow_api.g_varchar2_table(9) := '5A121CA0069C04A52F4CB4640762059C077163731367AABDB749027FAEB2A5A258254D129A649A048AC63F1405D3D470C519A413B1D406CC968034C1E3E50F87EAEDA19AF0F1DDEED9F1F2EEF8EAE4F93021FEFC16FC090488ED1F411807132A5CC8B0A1';
wwv_flow_api.g_varchar2_table(10) := 'C38710234A9C48B1A2C58B18336AAC98000021F904090A0000002C00000000320032000003FB08BADCFE30CA49ABBD38E3C2CE619CA61903B108C2620886588540317C0ABA1C02EC42A459A7BF1B0D6038B4760CD2E03638DA62021FC0A3434E678A5E10';
wwv_flow_api.g_varchar2_table(11) := '406065A3D62E6330E0C8804F9CD9933C62040320375E2B039E025AD74D308AE072702D044D77292B26056C0A7D521A805974241F367B5307218D569057267944831F888C078E0555169067127D1C9A2A048E6F74A80EAEA50B05B106B5A9742FB10A0506';
wwv_flow_api.g_varchar2_table(12) := 'BB5677BF1421C4046EC69C15BBA8BDBE7213BC20C306CD7FC8C9D9DABCD317CF12E0DAE2DC3913A7E84882C6C6DB10ECF4ECF017F5F5F7FBFCFDFEFF00030A1C48B0A0C18308132A5CC8B0A1C38710234A9C48B1A2C58509000021F904090A0000002C00';
wwv_flow_api.g_varchar2_table(13) := '000000320032000003FF08BADCFE30CA49ABBD38E3C208D16063089F72088B711821C52985702CC7AC10C7DB4263090828930D505B1408BA1DA0300812052CA2AD70F0E192CAC3A064D80A15A3A82ADABA2E04034ECC560498DD3E80015BD13A09031BF0';
wwv_flow_api.g_varchar2_table(14) := '2B05AF52046418684E682C782C45312C543E06812D84604D72793F33231C6F8F8215068292445E55722C2A72A472900C740D78793A924C430F2A1C9CAC9F134703BD3EB22EAA64059F73165A4D5168AD10ABA5C61B684D6A20C4D02023BDB417C5CC18AF';
wwv_flow_api.g_varchar2_table(15) := '5E1B5805E4DE1154BD501AE5EC2D31E9E6ACED4A29BD962EF165E9F44A6BFCFF00030A1C48B0A0C18308132A5CC8B0A1C38710234A9C48B1A2C58B18336ADCC8310261020021F904090A0000002C00000000320032000003FF08BADCFE30CA49ABBD38E3';
wwv_flow_api.g_varchar2_table(16) := 'C208D1606308C6721C8B7170E1C40285802A67BAB6D258D28239039E4581F0C2C1043D0541C0AAC10E3B808168EC0C3E5201D6A9DA0DA3211503C989CD9C845F5058B41C0649E9E0CC04A0B1D357C1D076CF4D2440813505503004517B60196F49067F31';
wwv_flow_api.g_varchar2_table(17) := '1F352A1C790A7B7D1306606F6757761F9B521F5F97A21903732F9D473F0F96980C05B3144BA9587670301465A797B41585A981B99910BEB3C61231C36520C9CAB2BE0A23A98B16C91704A973544A7119D1AF0702DC708655202AE5DC32D7E9BC69E670DE';
wwv_flow_api.g_varchar2_table(18) := 'F01743ECDCE8F617EBA9AEFCEED50B48B0A0C18308132A5CC8B0A1C38710234A9C48B1A2C58B18336ADCC8B105A3C78309000021F904090A0000002C00000000320032000003E908BADCFE30CA49ABBD38EB45C8FE4B71189CA71444015EA209748B91AE';
wwv_flow_api.g_varchar2_table(19) := '912190CA7194FC69A8B49360A7201C8030000A073030832F81A9702B4E67CA1FCD40CC0980075352167B02338741D726262609B882F6543863D2DDC3B759852D154E21752078423B2D2F1E322A4E40757615810B8551247E2A72598E8318546A6785542E';
wwv_flow_api.g_varchar2_table(20) := '0F994A9C19360352936A4A168F2B0403AA387A9012A72022B347AE5013923102B3B7BF0D05B36A582F5DC61104C3C9434FCE145CD1AAD519723ADADECED8C9E2E3E2A350E1E4E9B3E6DFEDEEEFF0F1F2F3F4F5F6F7F8F9FAFBFCFDFEFF00030A1C48B0A0';
wwv_flow_api.g_varchar2_table(21) := '410709000021F904090A0000002C00000000320032000003F308BADCFE30CA49ABBD38EB65CCFE4B71780A418446015EE2A9182E50902B24D22617778C5A878703E7E083717C32E40F6010906E2FD7CC57A8D68C8BA0EFE0C2F214D61A41207C095C84B2';
wwv_flow_api.g_varchar2_table(22) := 'F7A95C1DC88BB4CA40649EA6E0B61B2E0BF63D46786120290C6365631E041E5633792B050267486F655C12838402034E71707A4B106303230A6FA0A1366FA42AA8A92F342F079CAEAF05039C5C4869AF13699BB864B1BD133092C1C4197431C9CD35B3B8';
wwv_flow_api.g_varchar2_table(23) := 'D1D1CC28B51BB392D9C7CC74C065CE0D05A3D29DE03269D29C8BE64CABD1C2EC00E3C1BAF160EF04D6CE5CC3F6FEFF00030A1C48B0A0C18308132A5CC8B0A1C3870413000021F904090A0000002C00000000320032000003F508BADCFE30CA49ABBD38EB';
wwv_flow_api.g_varchar2_table(24) := '55CAFE1CE12986C18CE04598240B74A954AC8B41D42E1C43C57193A21607B573180EAC19ABA4D0159B3F05E130A201982F62912088F67E3661F6C9E046A79E9907EB2403CC4DDF8BC66CC70C44F8157935C1EC29025D65836F516E0D47822E705A888982';
wwv_flow_api.g_varchar2_table(25) := '7C6F548F133382418E95780D3D829A8F05825D9C409510538203023E2EA711360702030307AF15054787B7BC18B2A3C085BD00BFC1980F3DB6C3A8B402BDB907CA24B3B5A0458AB4AB4DD402D6315CD9AB7C3DCDBB88D93E2804D9E68F5835D494CB1CDC';
wwv_flow_api.g_varchar2_table(26) := 'AEF307D9F6CBEBB4EDCBB4F2E635B022B0A0C18308132A5CC8B0A1C3871023CE4B000021F904090A0000002C00000000320032000003EE08BADCFE30CA49ABBD38EB55CAFE9CE1291D688ADC685605A11A46BA5A2D118EE5CC123150A03E95AED162106C';
wwv_flow_api.g_varchar2_table(27) := '0A1849385C180E481F2FD9CB351BCFA8C1E54359AF8C2C690AF032755F71990B042B0ED0701C4076CB05875E796E873CF1234F677D1C0407025C836E6D6380840D02783C2F518F498791927A960E2D98789C135B95A1A5129F99999B96A8A902AB61A611';
wwv_flow_api.g_varchar2_table(28) := '0203B0603F700FB4028A335BB40303020EBB7686C0C2750BBBBD26C1786D04C30AC57D8C65C031CCA50507CF1ED5A1DEC23DDB9C04C10351E19CC1072AE6A14ACBC2B2C4C2CD96ECF600DEBCFC46A6011C48B0A0C18308132A5C4821010021F904090A00';
wwv_flow_api.g_varchar2_table(29) := '00002C00000000320032000003FC08BADCFE30CA49ABBD38EBCD63E9A0537CA156182430969B612C2B9B9D692C7BEFE2C2E9FD18849C0AA5B0F97E4118D1787400853B55EF687C1697531FE1200458BDD966619B547C9B11E081400286D1CAC3FA8D668E';
wwv_flow_api.g_varchar2_table(30) := 'E5F4A37C4D2C12E0487202727D80385B02838615635D8B8F165B7B935C900A04839407028E96188A8B407F0F040302707789A60F050303792D9B02A602650E070307548983855B0D06AE68513AB3AF0CB3A38605B8B91F6DAB8B98A639B31FAE9D3E06B3';
wwv_flow_api.g_varchar2_table(31) := 'B50BDC63D180B30729B80223AEB025C400DC0AB8BA9EEDA61FC103F2F3A70AB3D980E624A5F479DAC6001BBE06F00E32B0A7CE5030650ACD348C48B1A2C58BF812000021F904090A0000002C00000000320032000003F208BADCFE30CA49ABBD38EBCDBB';
wwv_flow_api.g_varchar2_table(32) := 'FFA055846031929D79A295C9B86C6BAC001C4F85612CF62DE53B45CF27A4018BC406811014CE9049E772758C3A0ACB67AD696D18B234EB3037ED2A0807263767567CD187B4B6FD7AC709744835CF77C0E380715C567F81827D19060783376F1107037837';
wwv_flow_api.g_varchar2_table(33) := '3907029607110203611F5F95974C1105030231A0738A0F0403982C734290029C908C2C0595AC2361030351049A02419054A44406C09200B130ABAD37972BB135C59AB5213A0CD2CAAC00BC6DDA06C5E1A55DDA00D5DBC949E6ABE49A9C8DCEDD9BD3BD7C';
wwv_flow_api.g_varchar2_table(34) := '90ADE1F266A3F4E97CE192BDEB438C1C2237DC0E3A81A7B0A1C32809000021F904090A0000002C00000000320032000003EC08BADCFE30CA49ABBD38EBCDBBFF60288E641916A656AC69B6A2EDF5C611BCCCB463183680E7B71DEFC602320A4258D178DC';
wwv_flow_api.g_varchar2_table(35) := 'F580CB85900920109CC7270D69B562A95943D7007E20C9E574A3CBEE6A63ED365A7DB1E60A57C96090E21E0E02077A7C23627F81074383247F0757366211028422513E80026F007B31780281286F932D069F890A805A9C2506987307030796A325800436';
wwv_flow_api.g_varchar2_table(36) := 'B08205810CAB248AA8B1C10400BCB431B90A06030200CBCDBE29C90A9364B0C4C72604C2CADC9328D1AC820BDF3ECCD49439DBE3CBE3E12D05E7C168D931A5C4E830EFF037F2C5E94CDA2DD80785C1273A08135249000021F904090A0000002C00000000';
wwv_flow_api.g_varchar2_table(37) := '320032000003F608BADCFE30CA49ABBD38EBCDBBFF60288E64699E68AAAE6CBB14B02BC1851CD1B5FDE076DED0328330C6F0B160C22451A7282485CCDF321A3510ACD82BC1B8CA7AB7544CE1605039CB11C3406072120887036132188CACF0F895FB100C';
wwv_flow_api.g_varchar2_table(38) := 'F81C707B0C561204037321530005040207804D6B278D7A359100752606078F398E91070368219C8FA48E078C0F87AA227A0CA98C8F0E05932253B2008773B46F007E981EBA05026C6AAA7E00A28924BACBA3BB88C076C825CFD6D435CA996C249C0CC697';
wwv_flow_api.g_varchar2_table(39) := 'C60ADCC129BC0AD9DCCC28C50239A268DC6ADE9B02CDE2E5760A75C21E3E6CD9E346AD590A35CD342968D5C2489C2261224A3C91000021F904090A0000002C00000000320032000003FC08BADCFE30CA49ABBD38EBCDBBFF60288E64699E68AAAE6CEBBE';
wwv_flow_api.g_varchar2_table(40) := '702C03C5EC14786D2B79BFD33DDD0FF79B150CC86452C83A2A95CCA2E42088929C93C3E050C2190860036530B06E8EE0B0C1EC200C042135F34B110CC41F22A340381CD80B06645D067E6B34137604235F07043A7D80346492167C8E780004028B925A5C';
wwv_flow_api.g_varchar2_table(41) := '1F7D999A9C0A02A01064A3674C9B8BA4628E007454B36F24AE3CA7935C02705A8B8A22B90A54626E62BEB65C820371A50A06BB005435CA00B7D45B207C0CD5A67000D776350594B8D0D2AFD76EAF6EE12105D39A77E0D1D9D803AFDC0299DFE2F006DDDB';
wwv_flow_api.g_varchar2_table(42) := '7765DE356D992A7550B7C0CE82762DF4504385488AC58B1D12000021F904090A0000002C00000000320032000003F808BADCFE30CA49ABBD38EBCDBBFF60288E64699E68AAAE6CEBBE702CCF746DDFF858EC7C0FF7C042C520B4190682A28947112095A0';
wwv_flow_api.g_varchar2_table(43) := '9D613AAD38931F2995089D5CBB19EA8E513058BE1D7099400043D02103DB0C703FE0E9799170B03BF019056C6D0B7C047514668017730C860A0787110703428B156385910A0402669B559D0004480A97188F750707750287020200948A0392A715A9A37D';
wwv_flow_api.g_varchar2_table(44) := 'A39E00B00047AC47B1A64F1A069B0A06AE905807C4BFB203ACC5C418650CAB4502D4D194420503950BC91DCB74CB92CF9CB5ECD42105AB85BDBEC4E1EF4E745107FAEBCD0BD180B55BC20DA0B5592C0AD0AB576880BE177CC8E498487143020021F90409';
wwv_flow_api.g_varchar2_table(45) := '0A0000002C00000000320032000003FB08BADCFE30CA49ABBD38EBCDBBFF60288E64699E68AAAE6CEBBE702CCF746DDF78AE038450DC82C1E0802AFC2804E18030323A2D85835060E838AF1A4370E0D36019C68C41490419CE9BA4B0CA299C8F47A871DB';
wwv_flow_api.g_varchar2_table(46) := 'C5B8D10A0313CACD6F0F71127706717A5581103F41756A4B880E6F0C860A047B10523F52020C524B1388930006075595A2A58063658B929616A1514C05024C079B4955416C9A8FAF046C3C80A2A40007445A44057D0AAC59BF0BB194C2B6CC9BC59E0A9A';
wwv_flow_api.g_varchar2_table(47) := '5EC0C147C6D965B63FB375C5AE1BA36CB3BBD6497B496521D1D2DE65B3F1BA2205CFE00BD4D50BB4706B72C0D2374A0380F592472C9B355154649882B6A3A2C50A09000021F904090A0000002C00000000320032000003F608BADCFE30CA49ABBD38EBCD';
wwv_flow_api.g_varchar2_table(48) := 'BBFF60288E64699E68AAAE6CEBBE702CCF746DDF780E1444711F8381E060A01980C1A0805094F10449656F662040A387A9EC78551E7C18B066B8E02107844B61BD29481B058358B2666BEA48C1DC522F372B0502020A06575F7C760A713E7B0F3E408384';
wwv_flow_api.g_varchar2_table(49) := '4969137D7E4D4C125645900C488D957284539906450407000603A9009D7E19714D3C450544AEA99BAE034DAF6DA2A33E478FA981698191BBC961A6659900A80A07AD64D0680BBE6A730494D094D3D27A0A8262591F55B3B7B884024DABAD213CDDC3D2AD';
wwv_flow_api.g_varchar2_table(50) := 'C6D8BC223C62DCD8F007C90AFD2161AB1B3805BA56D0F2B740E0966E3A224AD490000021F904090A0000002C00000000320032000003DD08BADCFE30CA49ABBD38EBCDBBFF60288E64699E68AAAE6CEBBE702CCF746DDF780E1043EFFFC09FA0C40B1A81';
wwv_flow_api.g_varchar2_table(51) := '439DEB7030146C029FA049331CA252C2B375202C0A846B6FBB2A4405868621CD2AB80FBD03B9E3BE980F0A03D64BAF579E70780A04677C196E5B4E12848003820A7003737F7E058A6B007556007A82810C96877E9C696069045E8C00576C9F1C885F8A60';
wwv_flow_api.g_varchar2_table(52) := '4FA8995D99530BAEA26496897CB5AB82846CAB8E1B7398836CC1615B020264B71EBE0AA6837C7A6C7A8621CA9C5AD8D6D3ABD122D57986C1C20BDA2804C5EBCE6DE1E2795431EB4AFBFC17090021F904090A0000002C00000000320032000003E508BADC';
wwv_flow_api.g_varchar2_table(53) := 'FE30CA49ABBD38EBCDBBFF60288E64699E68AAAE6CEBBE702CC30671CC404108435FBC05C381D71B08082D21B12738187E2ADDB27720405586A9D10A3B309D0C439148BC9182D7B071CDE3997133DB130E581E0DB89AFD9856551741433E2D056D780C41';
wwv_flow_api.g_varchar2_table(54) := '8439434D7D2C050766905B8E283F436F595B2005950B363F3B6F003B029E169D0A73A935005948A44D88871DA9AEA14842A10750A223B668AE489078906FBE21B60687ADA4B03BB4C81EB6AECCCFBC8BA304B4B550C1C2AAD8AE476757DFCDC40B91A71A';
wwv_flow_api.g_varchar2_table(55) := '69CB0BCDCEF0602773AAB0AEE251F6F2E1EC28EFE8081C8822010021F904090A0000002C00000000320032000003ED08BADCFE30CA49ABBD38EBCDBBFF60288E64699E68AAAEAC68106D541CC350C40E510F30BE18BB836F5110D404B7E1EC6868BC58BA';
wwv_flow_api.g_varchar2_table(56) := '5A0F5020D06AC993C13810020C07EE715A2A1E9362C1A1895A0E046CC561DDE29287006B96B115F8FF7E5E2D7D807F827888796B7B78616F0204068C31558E8104932804642F7F9926336A710A05A3293755819FA7073DA190383704B00A607EA65A07B2';
wwv_flow_api.g_varchar2_table(57) := 'B40AB3482205A837064D333DB364A523C15F4D2FB2BABDBC65B5C59154AD0BC8A049C4BD6C6071DB24CCCDB5AE9B0CD7E4DD6C55DD746D59DE54EB8AAB1FE5E6BD53EFF23F719EB5D843AF1EBE7F89122A8C91000021F904090A0000002C000000003200';
wwv_flow_api.g_varchar2_table(58) := '32000003EB08BADCFE30CA49ABBD38EBCDBBFF60288E64C914E6261029260C426BBDB14CD1F60D33069B333845E13018A07E802080505C21933B80E135383CA1B102F57044E20A4D43C3206E290F3E408170A07649CA85A15D84A153710555B02A9BB451';
wwv_flow_api.g_varchar2_table(59) := '0D6C7E320681570E6F637C8C8D564F53026D937C8F88970E838A976D950484886B9D9E579F3C6C7C9B2943928A05A02D47A804AA366B3E6B92693F286C697392B0263D0A73BB73967F626B65C627B51E0528AF283D47CEB6D306D3A6C57732D2C5CDB472';
wwv_flow_api.g_varchar2_table(60) := 'DFAB47AF0B04C7D020E16ADB42DDBC5DF1C5E4F4727E6BED23EFF098D474A186E95FC08308AF24000021F904090A0000002C00000000320032000003F308BADCFE30CA49ABBD38EBCDBBFF506180203110A4370C63BA1DC3E16EC55A2C023A53C2890F82';
wwv_flow_api.g_varchar2_table(61) := 'DDC4B0FA0585925EAB7744424C4726C3D072026A839B54518065AD00986C0B2030AB48EC15A830F47C60404F77EBAE0EB738B1793D37A8482B68613A5706070289792E501006664C02078529588B0C30899397333D320F040483486671206E07A9AA8894';
wwv_flow_api.g_varchar2_table(62) := '7AABAFADA6B243A2B311A992A29CB6220488A9B5B3800B8FAAB305BE049C05BB5622A906CD71C1C8D0B66DC157C9A34222D86887B12ECC86798F68E44EE922E6D9A6E9C300E7C779ECC4EECE8BF1F2D2DD0BF6D7B8E8E3F66E11C06BE9023AE8A7B0A1C3';
wwv_flow_api.g_varchar2_table(63) := '87A612000021F904090A0000002C00000000320032000003FF08BADCFE30CA49ABBD386B5848D920440C446832C2602CDFB90DC332AE2E660CC202D3B575908ADFA187497D0AB016E0502272708A5413901A3A1FA3E12D171C58AF8EDF2A45AB822130C0';
wwv_flow_api.g_varchar2_table(64) := '882B6418785764EEF7692B0A078140E9CCDEA95E322902704E642C7A0A06835367690C473F02077C605B0E05559505852E3F8D323C9C04797B449903956EA47A93049D26373110A59306AA357658AF676E07B0BD200607C4C5C5A0C100C3C6C6C8C9CF16';
wwv_flow_api.g_varchar2_table(65) := '6FB8D00CA4C4AFD3D0A3C7BCD4CA7CDB5FD004D80D05D96706E4C0CF6F77EADDDE009C4A1DE4E83DE7EF70F0D4FAF3B720E1CB57CF9D3C16050782F9F74E611C700E1F1EE4103159C58918336ADCC891025A02003B000000000000000000';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(40404674413776250907)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_file_name=>'clock.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F50000FFFFFF000000AAAAAA8484846060604C4C4C3E3E3E4848485656567070708E8E8EA0A0A0666666343434323232383838424242747474A6A6A6AEAEAE6A6A6A303030B0B0B02A2A2A5C5C5C949494262626222222888888';
wwv_flow_api.g_varchar2_table(2) := '9898987E7E7E5252527A7A7A1E1E1E2020201C1C1C9C9C9C161616BABABA121212B4B4B4BEBEBECECECED2D2D2D8D8D8C8C8C8C4C4C4E2E2E2ECECECE6E6E6F0F0F0F6F6F6FCFCFCDCDCDC0404040000000A0A0A00000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(3) := '000000000021FF0B4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F90409070000002C00000000200020000006FF408070489C0C108E4BC9416C3A9F800522743A954A56A8962820';
wwv_flow_api.g_varchar2_table(4) := '6C46D7F009B2DD2E0CA1743A7C2D4333978D7A1D3EB89D0BC7462E5A3F08110A0A7745101A1B1A228A0619845014171A9287118E500B1517911A170396500C15999A959F4E020D150EAA1FA64F03AB0D0E0E8DAE4D04B30D0D76B64D050FC00F09BD4D06';
wwv_flow_api.g_varchar2_table(5) := 'C6060F1CC444C706101DCB43CD10B5D1071007D983D10008D9D91EDC0009DF0504E20A0705EA080BDC0205F10808C3DC1105F31804DBCB12F308FA08B8BB4363CB000CFA18304840C2CD8C825A2C3048B8108402145060C878584602818F092280F0A060';
wwv_flow_api.g_varchar2_table(6) := '8185142A56B060F122068C191C0140C44361A1C8011C32749060C1440B44152C35C2A441548B001021410C1890818449132E80B684F172861B0B196E0AEAB040008A143F59BA84E1082B4E0519163C8DAAF205D94F26042C70BA608209942CCA04010021';
wwv_flow_api.g_varchar2_table(7) := 'F90409070000002C00000000200020000006FF408070489C0C308F4AA9D4782040C4A894B8406842A1A5B674124DBF42014323128DB0A191D6A6004F1710CD6683C6AA9737893BDA7968E41B657677251B7B540F17177F7222060C110A0A110407874213';
wwv_flow_api.g_varchar2_table(8) := '0715158A8B07199760090E9BA41511A1600B0FA40D0E0D1CA960140DB5AE50B253020FBCBC08B95F1C06C3060F1DC0530CC406BFC852080710D2A8CE5107D7D76DD54405D807C7DB4305DD0705E0E10008DD0508DAE804051F080803E84211F2081809F6';
wwv_flow_api.g_varchar2_table(9) := '0019FA08081058604F803E0C023DF4038190008304E7B64910C8804282087AD07160F03002880119B759007131C280010A16A4F83283C6250111629E5490618105172A58BC88016346CB42501264A2ECB06082099C3A61C8F819CA0207940A881A45BAB3';
wwv_flow_api.g_varchar2_table(10) := '27D34B284848222A00458A162B6AF05CDAD26528130BB85A389A53ACD219CE4CA040C17645D23D41000021F90409070000002C00000000200020000006FF408070489C70308F4648F478200613A2743A5C602E1BD126341A95BEA7116241A50A28958B46';
wwv_flow_api.g_varchar2_table(11) := '93E586B8DFD2E94428131787B47A2D12BDDF7127372476421D061589177B1B6D255E5F360885000B060E150E988B1014200A0A11041791941305499A9A0719650A1A0394110F06064D0F2094BA0B10B5BE0ABABA09BEB5B9C185020710CA0675C7850A07';
wwv_flow_api.g_varchar2_table(12) := 'D2D21DCF8509D307CED66504050507051EDC7608DF0508ADE454081F08EF64EB53EF08181884F25218F51804EAF94318F423C00018C0212008106460EC20800C0B134410E010C0040A09247EAA084081C4081E0648A83841E380010A4C540C155241860E';
wwv_flow_api.g_varchar2_table(13) := '2A0F5A38C941418705124CA89089D2E6824409265CA8A81103C68C19346858B390210389051682AA60F102860CA4E44C2C781A552855AB58C9A5B020A1EBD4AA5795CA7361422A0BA24691AA95A7622ADCB473CB04010021F90409070000002C00000000';
wwv_flow_api.g_varchar2_table(14) := '200020000006FF408070489C280806C36693240C26C4A874B820342E588D66191A853488C5742A483C2A0E47762B0AB947A51241301E4A3E8D74BE72D16E446D6E71250F62631D070F060F0D796A7D4B6D5E8325220A53120749498C0E0709200A0A200C';
wwv_flow_api.g_varchar2_table(15) := '0D23707138370F52130806109B06081D630A06832704532007BEB1071E75430927370E9805BECB97C3431E08631107CABE03CED8000205DCDC14D9D8191FDC0861E0CE20E5E5DFE7C30C1818084EEDC304F6F6B5F463F70C0C12FAFBFA3148F00FA09404';
wwv_flow_api.g_varchar2_table(16) := '0813443064900808841140E46B3844814210039A5114B240A1878C26360AB1000223870C0C376618C04141061221455A68F972C1841622012C50D0618104470B265488344182844D14295AB088B1D1844FA02E54B0780143C60C1A34009A9800552A55AB';
wwv_flow_api.g_varchar2_table(17) := '590DBA306122EAD4AA5729AA7061F66BDA8D2C569C058B35678C183066E8AD8B2D080021F90409070000002C00000000200020000006FF408070489C281807C8E50231103813A2743A94300C0D47657BD1784517C4824A15440C86C7A391AD74BD1B9168';
wwv_flow_api.g_varchar2_table(18) := '431090AB98263ADD5E7E452121230F6364240807497B6B0E0D7E71802125251A195412888907064D05091E1919200C0F1A8181931A8543130407059A07181D64191022232393250F76430305B0C20377430922BB93045508081FCF0896C5BFBA93363612';
wwv_flow_api.g_varchar2_table(19) := '421E1818CD081CD3520925273706ACDCDC0411E1530E1A521904F3F3ABED42D952030C040C0CECF7A64560408141026901EF4448C03082BD845312448800024414886424821830E022C629153942F948850347050A7C9124D28183820C1DF2ADAC82B203';
wwv_flow_api.g_varchar2_table(20) := '09092E660E3101F3E60455133AAB905820008509154101985820C18209172A6A24453101450AA82C6204756114EA8A1A3160CCD0D9E2A90A162F60C8984183C64C152DCEA65DEB56278BBB6167B04D0AE0C5DCBD7CC3D2ADCB17805EC00183000021F904';
wwv_flow_api.g_varchar2_table(21) := '09070000002C00000000200020000006FF408070489C28128783A391642826C4A8742849400CD887A3C2BD5C2A98C5743A011592576CA3E17078359A0B4130A6120EE743DAF060BB2F701B220662630B0805894907597D6D6F1A2222211719531204081F';
wwv_flow_api.g_varchar2_table(22) := '8A4908110319191E09068082932317854313140818089A050C1D631907922121232506504303AFB1B11C7543111BBA212525047604D00418B5C6C01B23BBCC8503D1D00AD55109BCCC250800160914090C0C1EE05210E4CC122409F6F612EF5119E42727';
wwv_flow_api.g_varchar2_table(23) := '111C1244880062803E290F4AD8B86183C00010203C802071300A820D04F2018838A0239D8A753A0EE0A00005C83A2415843271728C02051D3A2C60D9524A4C120B24D0AC4984DE0256011676F214824202501329580C1DE24242D0142E542C1D62026954';
wwv_flow_api.g_varchar2_table(24) := '162FA6025061E26A8D1730B4AA50B1022B0C1833A6B250813506DA1934682C656156065CB9535FB89D0157AB90B37CF1FA0510783011C1869706010021F90409070000002C00000000200020000006FF408070480464128882C15028501493A2742A497C';
wwv_flow_api.g_varchar2_table(25) := '0E58C8D2F070381E84C5743A19249BD8C3B65B69572882F1504241203E85B47AF968782B17171062630B0C767678697C7D5E811A1A0E1953020C04041888080420031D190309078E901B1B178443162096979809A9451907171AA6A60651430A09099696';
wwv_flow_api.g_varchar2_table(26) := '0A724311B52221C7044313BDCCB0C2441C1B222223231A840A11DADA1DCF4511C621D508002820E71E20C1DE4507C7232523120B03F5F516ECB225C72525111D0A38285030295F9107FDFA150098A1611C834408242CD1A08345120B4C4024E261A20812';
wwv_flow_api.g_varchar2_table(27) := '18254870B17157C21325444EB060A14549210A4E965889C2440A152FA798B0E9C2C58A459C527ABA50A18205D0222A5A14655123C6D1212C8AD6781103C653A82C5EC0802163C6550031A8769D3183C6D7AD6469A8357B352DDBAF00D2C225A276AEDDBB';
wwv_flow_api.g_varchar2_table(28) := '78F3CA09020021F90409070000002C00000000200020000006FF4080704804744004CCE18041241493A2742A00353F85ECF260E83216D3A965906C220ADB03A46B683C1282F07002621092883C7AB9EE362A0E076061121109097677667B6C0F7F151506';
wwv_flow_api.g_varchar2_table(29) := '1D621186870C7609030A241D1C2005068E8F170F8343289F959620A7451D1F0EB217171A10514324031E03032011937242207FB51B1A0C43260A0ABDBD71C2430A15C6C7830BCCD912D145111A1AC71B1800291DE61D19AEDC42071B2221221B12280BF5';
wwv_flow_api.g_varchar2_table(30) := 'F529EB451922EF2321201604089820C0423E291042281481C0824313285C1C2CC240618811064C6874E142C544221E4A282CB12105C7162A587C945662C488122550AA58C1E2C54A210A60EA4CC9A2C68B4918370184D4298245CD1830600425A0B3C483';
wwv_flow_api.g_varchar2_table(31) := '172F92C29811F4038E1B364E7C403A75C60C1A41014C60A0210180AE34D2862DE255ED5AB65FDF4E892B570AD8BA78F3EADDCBB7EFDB200021F90409070000002C00000000200020000006FF4080704804743C0C02A24020443293A2742A185008188476';
wwv_flow_api.g_varchar2_table(32) := '5938782992E9D4A24850AE4DEDA7EB851820118178681924EE89A412B1F61EDC060F050B731303202011771449591F1F7E069281061D53280A0387898A110A19241D0A200807930F0D0E068445A299031E200361531D08810F0E15150751431319190AC3';
wwv_flow_api.g_varchar2_table(33) := '1CAC73001E060D15BA1514432E0B24A1A216C7440A0FBB171715AC2612E10B0BD6D7441115DCDC04002A2816F002E5E6441F171AF81A122D26FDFD2DF48A64C8B7618307152D5C287411508A010D220A22504191E28A8645186C0811D1008B8F1F6B6024';
wwv_flow_api.g_varchar2_table(34) := '3220448811212EBC5819E3458C9143149C1C3142048C9B38610A9149B3A68C54193364C880A11359099A2534005D3AA3288112504B3CA041956A539D0EA296284063088DAB23159C807AE204082254756A2831762CADA24340E0B8511601DC29096EE030';
wwv_flow_api.g_varchar2_table(35) := '76B74882BE80030B1E4CB8B0E18041000021F90409070000002C00000000200020000006FF40807048042C3891040143617832C5A814605124134D0201C12D7C129269D4441A80225786968B281C0A0590402C34653803332881D562101F1F6F07100861';
wwv_flow_api.g_varchar2_table(36) := '53261D0A8B031E677C6A7F8107941010071D52290B2419190A781E03191D0B0B190318829506060787441612129C9F191353240496ADAD05B8432916160202A6C0740307BD0F0D09432A29262628B22674440A060FCD0E0F0B422A2D2E2ED32ED8451EDC';
wwv_flow_api.g_varchar2_table(37) := '0E150E0C00352B2AF3E4E85108ECEC0D022F352CFF2A58D82B92815D850A1706C458D84FE0C02207105EB8400086C585311E1661504183C7033366C8B008432391011A36A4AC10B2A50C9343146C10B1A1268D9B3442C214A24084CF5D9A4372CED80960';
wwv_flow_api.g_varchar2_table(38) := '4088A3222E10A1411400831023468430D0B4C883A35111548D59026A54105B853C2811B58408584D139C28C1F684D6AD204AAC655B02DC560237E69E201056C880BC272ECCE90B00EF884C84FD2A48CCB8B1639841000021F90409070000002C00000000';
wwv_flow_api.g_varchar2_table(39) := '200020000006FF40807048044C3A034F2201020D3AC5A814605A6414830128B26410BE20C934EAB22C3A574E12D4FD621008CF642C6CA104920529ADE57A096F1F050462532A26261616027A691E6C095E700805050824522C2D2E2E888B0B0B12121302';
wwv_flow_api.g_varchar2_table(40) := '7B0980700705071F85442B2AB12E29882E530B09081F07BC071873432F2CC3B02D2A74421C95BD06114330312FD2C32CC84319BC1006DB0B4230DFDF3131D6440307DBDB144232333332DFE44504E80F0602EDF8EDF1441DDB0F0F0E06CCA04190E0BE22';
wwv_flow_api.g_varchar2_table(41) := '1F003AA840C0A0101A07892468E0A0E2018811A50CA8B8F041C629192A54B840F2A31405242F68B86032CA00951A343868598441CC0D1A0CD024626083CF550D08760AC920A2E806111E840238104244D30DAE5A260841956AD09D0346380D314243379A';
wwv_flow_api.g_varchar2_table(42) := '094A9418C17504019A0234885D5BA281809D1770B00D0145A88D1362352850BAD446DBAF7C376078CB5748D4C26382000021F90409070000002C00000000200020000006FF408070480498241D0567C0542C8AD028A0755C74320AC5C013497807022994';
wwv_flow_api.g_varchar2_table(43) := '4545592456ECB69BA010188389585853B55C26333AB90475190404081412622F2C2B2A2A782602122459037E09808208044F5030312F35888B26A1A1284803948108A908854530AE9C2C8A2A521220A8081F05047243333332329B2F2F73420A18A90505';
wwv_flow_api.g_varchar2_table(44) := '0720BDBEBEC130C5431DB807CB05AC34DB34CFD3440ACB07E309423443DDDF450CE30710106144DBEA441DE310060603F4C508F9F90CF8CD89F0CFC0078162383C30F060214229191A3E70D0E061940C0D1A38A850D16291010E425678E0B1480291150E';
wwv_flow_api.g_varchar2_table(45) := '942472E0C2850A1708AC14924183860B37F7CD3CA06183CD540BAC4A461021A2A706992B076C202AC267268F094484602A02A94505064A84D8BAF5413C84081C9418CB758406121E0F9C185B62C4D80B194A32B0C176EC83A71E6DAC5D8BE16B49BD213E';
wwv_flow_api.g_varchar2_table(46) := 'E05D99C1835F2841000021F90409070000002C00000000200020000006FF4080704804B44C13C922C3EC488AD028E0B572B94C166546C11978400A81341AABAD54579460D15128BC91444261190F61B1176BD5BA66495B0320710914116252333332787A';
wwv_flow_api.g_varchar2_table(47) := '68585A6F8372140C0C0B5234348B782C2A2A7D7E0B0A93090C04A84F519B338D2F520203A6A804081413999C764219A7B5080803B932BB43241818C0C0AA459BC5440AC01F1F0511CFCF09D305DB88D76324D40705070ADEBB0407E90709E67620E91010';
wwv_flow_api.g_varchar2_table(48) := '08ED630AF01007F4521D06FDFDFA5132F8FB07B0088707030B1649F0A0E1830F0A891468E0A0228188BC1C54D0E84018C6021A2B5468D0AD60840B284532C038E082060D2931294CB0A1E6CB0B14140A141122844D4303259FB94940A042899E3D6B5620';
wwv_flow_api.g_varchar2_table(49) := '41EF4189A747438C18E1F342067D254E40953A35840199F42068855A62C4060241CD9D58CB360402B0000D9CB850E1C3005C6382000021F90409070000002C00000000200020000006FF4080704804BC582A570A65114C2CC5A85408831D57499345B2C8';
wwv_flow_api.g_varchar2_table(50) := '2816D069744686C58ED96D57C11974C262006D3E9359592B9709355974D8032003137143346531352B2D2926027E0A031E201111128572875589487A127F92200909110298873353261DA1A31411705273980B94A30C040398BB0BB704BF97BB851D14BF';
wwv_flow_api.g_varchar2_table(51) := '04081EC29820BF080818A6CA620B1818CE080AD27114D71F11DA62031F1F050504E0530AE407051FE8521D0507EC07EF511DF3F9F6450AF9F3FB44221880301001C021080C283440E120800E0F161AE0E010C1838811A3ED03E1A06383060D017268D0B1';
wwv_flow_api.g_varchar2_table(52) := '8283070B0046A870A1824B0709F66538A0A166CB0A10341642402082024D0511183C10B1A1A6860B17502A7B50A269D310214488D05054C3830CD26E381D01B5EB86A210522A5B60636B881168896A60A07397061C279C3E1DA10181586D123EB82C71A2';
wwv_flow_api.g_varchar2_table(53) := 'C2030483E204010021F90409070000002C00000000200020000006FF4080704804D0663358ACC652B55CC5A8B47854BE9A2E93C5929A7A8755D855959D481612D3574AABC6C6654927D341AD896DA4B2B672A550130B1D0A840277434832564D7F67190A';
wwv_flow_api.g_varchar2_table(54) := '1C030313875F2E020B8F92110316955F1690032011090A9F5F13A3A4090986A8530BAC09141CB05E1CAD140C0C94B7511209BC040419BF5211C4C420C7510ACA1814CD451D08D60804D34424D7D6DA43D508051F1FDF420A1F050507E5E62007EB07D9E6';
wwv_flow_api.g_varchar2_table(55) := '0407F60709E61D1007FC07A7DF3018300081DFAB6920062ACCA74D8181070A0D2CD016E18145880F22AC11700160940C071C5470E0A0C1830307A7D8C071A20101530A223030A0E1C285912325AE5170A284CF431223468418BA4143CD0A480D74B873E3';
wwv_flow_api.g_varchar2_table(56) := '8453A0418586285AF3E681896B3A387D0A55A8880D456F3248F965C187125C834EFD7A01035654AA10940C31C22282495F82000021F90409070000002C00000000200020000006FF4080704824D2663318EC552B3A9F4FDA51F962A9AED0ACF3285B5A5D';
wwv_flow_api.g_varchar2_table(57) := 'A6944BAB9526635515D8324991A3C7736DA54A99268B05EAFD9C75635F2628020B1D1D267C5A2C6B12850A197B89592E841D190A0324925A2624979803139B59160A1C031E200AA3591DA820110916AC4F1603B009149AB44E1C11B1091CBC4E1909B909';
wwv_flow_api.g_varchar2_table(58) := '20C34524090CCE0CCA440B0C04D504D1430BD618D7D8001D0818E1DDD80308E708D0DE0C1F1FE711DE2405F3F3ABD8040705F90502E507FFFFE03DB99548010408000B487802E24489046F3C1898781042326236709428F12003940E051E4CA4F8A15F91';
wwv_flow_api.g_varchar2_table(59) := '08366C6C5C698081AA0C20121C70D0E081C88907163C91B06165894F10404508D5A0E142850A0D688A3CD021CB82060E4B8C18113404D1A2472BD02CA0538B000C2BA78ED820620351A3471F2430F966C1870D21A86E987BF6C203025D374D306733C406';
wwv_flow_api.g_varchar2_table(60) := '91043888CA12040021F90409070000002C00000000200020000006FF408070482C0E69B49971C96422673058AC495D3EA5AF5A750B784263B5956AC57526A1B0174BE572B5CACC994C5A5BBB4C28179C99B6A75016137B4D2C6D2616120B82834B2A7813';
wwv_flow_api.g_varchar2_table(61) := '891D268C4B2E02910A0B944B020B1D0AA0289B452619A0030312A3451D1CA8030AAB440B031E202003B24312B711BEBA4212BE09C4C00012C4C9C6240914CE09C60A0C04D411C609D4D41E46168C0B08181804181945170F8C0908EBEB024315372725D0';
wwv_flow_api.g_varchar2_table(62) := '70031F08F708DB422127F2F2B9B8643850A060010CAA84602821AF448911F4A80C384091E0817D42265C683822C40803E596744000A122450C8B867408E13084CB101B0C50009121038804071E183060B2802655230A44381CD151C4060D1A2E3858FA40';
wwv_flow_api.g_varchar2_table(63) := 'E74E08100A9068B2E041C78E308F26ADC074E74E04099B0820202284D10D472F54E05AA141530309DC71F9A60126D20B6AB93A30C0202C9C090330ECC45B928182944B82000021F90409070000002C00000000200020000006FF408070482C1A8FC86492';
wwv_flow_api.g_varchar2_table(64) := 'A66C366933A7B40895C1A6521A14168B6197DA9935567B7D8FE1190CF662B1CE4835BBB652A9E0C7394BE54ADDF1456D7C2E262680467C292616132E87442B8A160212868F438B020B1D129798129B1D1D9E4226241D190A19A40026A90A1C1CAC28B003';
wwv_flow_api.g_varchar2_table(65) := 'B6AC12B61EBB431E07118024201E2011B61A2736250D800311CF090A11272725D60A701209DBDB2412D6E00670200C0C14140916001FD5E0095F0A04F2F203420BE021231BF5521D18F3F23A0921602D84C10DC09A7040C010010604FC840870506284C1';
wwv_flow_api.g_varchar2_table(66) := '10220EAC3AD2814181020D1130985084C4851116436CD070E140020F193238FB70A0E681021F1010105824C3054F8C2236ACBCE0C04183070F0C18B0F9112489240B0C045DC9B2E851A50620D42C7060671301043488BD70A18251A458B7822029650186';
wwv_flow_api.g_varchar2_table(67) := '0A642BC87590542984043CB14CE040A066D19B1414B04512040021F90409070000002C00000000200020000006FF408070482C1A8FC8A472C96C3A9FD0288D368B32A7552B724A9DC1B447AC17160317676818ECC5361365EA578DC57213637296AAB5B2';
wwv_flow_api.g_varchar2_table(68) := '0B632C2B7B2E2D7E42832E262986002A892628288C2A90160212060F0F0606662E0297120B252727252519602E0BAC1D1D22A7A7116028AE19B70EB1250460120ABF0A1905A6A70F60191C03031C1D11A62121A85613CA1ECA0B12232523232110561C20';
wwv_flow_api.g_varchar2_table(69) := 'E2E2160008DCDD22B34F1D0911EF090A420B1BDCD01B1C4E0B141409FE091386108076EFC23A250A082864E04FDE10010F3648DCA0E1C2810E48482440804121010611CA11217141A2868A0E1C148830C0D500100410C8E4B850C2910C0E4E5EB850C141';
wwv_flow_api.g_varchar2_table(70) := '03484D9C0E082DF0E1C34C020B922C80B0B342CF9F9C0C081D6A1401059B4A043070EAD4C1264E10861628806040C0260B083C48F9D540D8A109B04299A0804181039CC826C8701649100021F90409070000002C00000000200020000006FF408070482C';
wwv_flow_api.g_varchar2_table(71) := '1A8FC8A472C96C3A9FD0A8744A55D2AACB2BF648A3CDB6C36B77F60503BADE190C00320CB0E4990C462F9C6CA7CB7B3A87C5622F0E25832504547E802C2C2284257B5231358A2B2A8D250A5435942A2A2E8423251C542C2D2EA6268C23212520542A2929';
wwv_flow_api.g_varchar2_table(72) := '26B20F25AA210C542E162816BD0821B6065413120212121620C02122221952260BD2242428121B22CC1B075224191D19DF2600081B1AE71A1150120AEDED0B420B1A1BE61A15A24D121E03FC1C0A284318CC3B57C141AB251D2280F0C0D0030922020C68';
wwv_flow_api.g_varchar2_table(73) := 'B870C181C50F1D904800912041848F1106002442A2C1850A151A3478F0000188011D3A281840810001060C3A7A147024C3034D940E561A187AE04001044811D82440C1A384240B0E3848F9602884A2469362580A82A71201091E08357015EB510418940E';
wwv_flow_api.g_varchar2_table(74) := 'B0E0640183A106CC1628F0016D5729131424A85B5469840C139404010021F90409070000002C00000000200020000006FF408070482C1A8FC8A472C96C3A9FD0A8744A8552AAC9450907C21A11A793ED34F00A25A55369FD310340EA7549E1A5D10AF252';
wwv_flow_api.g_varchar2_table(75) := '836A07D8670F25232325045433763433331A252121251E878B8B3222838F745332309D9D2198229A523031A62F2F1AA0222292533135A82C2C061B22211B0C542C2BBDBD081BC11A10542A2DC72D2A1EC21A1719522A262E29D42A121AD81A1505522616';
wwv_flow_api.g_varchar2_table(76) := '2628E12A000417CD150E5D4F260B1202131326420B1517E80E0FA34B1619240BFF125C0CA150A14283060F0CB852224181820C193A74984044C00107E8121A40D00189000E1E060C70A8A0833C220B0C384068A0E5010C23FF6550002241041021077050';
wwv_flow_api.g_varchar2_table(77) := '80E2480750031A0D403870A00002041808106090C0E64D100328225950402351A246912A65DA34C2000B4B04247089B5C007AD4A9B265000B6898404570B98459A9440020E02A44CC89040A951060C4074688B24080021F90409070000002C0000000020';
wwv_flow_api.g_varchar2_table(78) := '0020000006FF408070482C1A8FC8A472C96C3A9F4C8506DA5C6C70536A72E228956C59AD91E0F5DE36E2E2A2EC1D29D244446934F226E043C9A6140A952078432021237D256F810008847D06894206222122220C8F001A1B9422038F341BA0A019703434';
wwv_flow_api.g_varchar2_table(79) := '00A51A99A9885A3333A5343315A91A171E69AEB93310B51A15146930C2C30417C60E07692F313130CC031715150E0E1D5A2F2C2C2F2F352F020DD20E0D085A2A2A2BD9DA000C0ED30F06B74F2D2E2E2DE62B420B0F0EEF0610AC4B5C58306122450A17F8';
wwv_flow_api.g_varchar2_table(80) := '8424E867C0C0814E4B50489060C1020A142E880828D00FC28103044820B1402203890513055868A1E640438F1F3F30189061C102121D060CE0A0204387589312321AE9E012E6810F08301020C0204104103A79663069228904041F0B684590942985084F';
wwv_flow_api.g_varchar2_table(81) := '3DEC54D0A1AA120120B46EEDCA34815B10501798652221C107A45C9736751B2183052D13328060C0000101A71C16FC4D12040021F90409070000002C00000000200020000006FF408070482C1A8F48E222C9640A30B8A6B4B8789C4EA5E934B3C19E7013';
wwv_flow_api.g_varchar2_table(82) := '2D73B12999CD51F171F2308FCE06F591F00E85CC09B9913C1AD943037A4618217E85798244121B222122220789451E221A8F22199244081B9D1A719A43061A9E0CA1430E1AAA1781A70017B0171599AEB2150E150AAE000FB70E0EADA70715C40D887A34';
wwv_flow_api.g_varchar2_table(83) := '443404BF0D0F1F8934D200D2030E0D06D91D7A33DDD2343302060FD906187A3030DDDD4214E4D907C1533131E9E932420BD91007FDB4522C58D47841AFDE900806FAF52BA0AB898A162A5608AC118388800F0A0F14409060C91117264CB870A122228B3D';
wwv_flow_api.g_varchar2_table(84) := '05346A44808140820C24044C902061C1020116428E5471D20889570F050A7C40808000030A09407818A020438705122CA03091424512090436B22460344104100398C2843AC18455261340102DDA35E9D2A64E17A070A14502080C2D1924D80B56AC8414';
wwv_flow_api.g_varchar2_table(85) := '7A2C7418F0756FD80E024C3009020021F90409070000002C00000000200020000006FF408070489C0C3CC4A472995C7C4AA71B73CA14104AD85389CA1D2E1ED8B08DD0A5662ED851F87428331797D128140A37106EE5C4109AF74B0619794B0C22222187';
wwv_flow_api.g_varchar2_table(86) := '2209834B0B1A1B86221B038C4B048F1B9011954A12171A8F1A6D9C49039FA01A82A4441817AE1710AB490715150E0E8BB2430FB6B794BA420DB60D0DAAC00D0E0D0F0F0AC04206CBD0BFC00506D6069BCE0CD70678CE0306101007071DCE02E3E4070C95';
wwv_flow_api.g_varchar2_table(87) := '344B09EA0505CD793334EE49120507F21F08E66564CCB0E7EEDE1010FC0A204040801E9518300412C42764028102FE1812002181090B163520C2183843C982850B0930A09080C30201264CA47091A2850A162F448E5C42820006550C2A194400E1814386';
wwv_flow_api.g_varchar2_table(88) := '0E122CA0706113644E18530450004A802588010314745890D4840B15374372B1304065820443B31E7D89C2AB8B1535DC08187036C155A31D482C98B07445250B0B140CE09075AB05135C8200003B000000000000000000';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(40404676709247252999)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_file_name=>'big-snake.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '4749463839611F001F00F50000FFFFFF000000E8E8E8D2D2D2BCBCBCAEAEAEA2A2A2DCDCDCB8B8B89A9A9AE4E4E4D8D8D8AAAAAAA0A0A0B0B0B0CCCCCCF6F6F6A8A8A8D4D4D4E6E6E6363636262626505050C4C4C4707070929292565656FAFAFA686868';
wwv_flow_api.g_varchar2_table(2) := '464646C6C6C6F8F8F848484832323200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(3) := '000000000021FF0B4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F904090A0000002C000000001F001F000006FF40807048140C0805038062C1241EC4A874784024AE574065BBE5';
wwv_flow_api.g_varchar2_table(4) := '383E53A982802D6BB95C8C273C5C30CA66341AC460031AF0B89C1B0A2F1A007958677B15770B510A6F0981580E0F0A10000217191A688D0C0A446483091112611B061D8665045479009B766B790742566511137643131170089379A1B643127946700EBF';
wwv_flow_api.g_varchar2_table(5) := '510E70477050C6430F704870ACCDAB70497092D40010704ADACD06D8DFDC650605D2DF0AD69D58CCD4CFA703C4DFC8650302BDD4C1700200B258B48CE1D225E480AA696136BD1AC28ED1275F5324E46A7405D5104559CA3C8AB44DC1837A1913688AF287';
wwv_flow_api.g_varchar2_table(6) := 'A22A41591A209A8207A5493880D8B8718992C14A366304BDAC88D04E150F382F11C0FA660489127304EED909020021F904090A0000002C000000001F001F000006FF40807048140C080503C050200C04C4A874784024AE5700F68A384CA70AC216AB1D27';
wwv_flow_api.g_varchar2_table(7) := '088AEF70C13067DD09C6420D68C0136577E3BBD8DFF36600210C510A6D785B0E0F0A1000100A0F0E5B001515201E4462640911126A1211789595181F420781697469A3A30E42565B111374431E1DAD151C0002669EB54306B9150F0363AFC0431B1AB967';
wwv_flow_api.g_varchar2_table(8) := '630FC94419B9180563AAD10017B91606638DD9BCB914E1D9DE5BE0D910634CD7E50A634DCFE50F634EC7E5925B4FBED9126650626199956C42A82D084EA5AA95C68C17219ADE74FA140A10012286DE6051C4C811247D1A196013D207D01893931ACC9962';
wwv_flow_api.g_varchar2_table(9) := '070E4A2C7BD4B07109470EC38893DCA08956E5E4980C2EE5781D49B2A4C9133A41000021F904090A0000002C000000001F001F000006FF40807048140C080503C050200C04C4A874784024AE5700F68A384CA70AC216AB1D27088AEF70C13067DD09C642';
wwv_flow_api.g_varchar2_table(10) := '0D68C0136577E3BBD8DFF3667573440A6D785B0E0F0A1000100A0F0E5B650C694362640911126A12118758045481956A69665E00565B11137443139E5B080002669BAE43126646630EB851915B47630FBF440F634863A4C60A6349638CC64210634AD3D3';
wwv_flow_api.g_varchar2_table(11) := '06D1D8B415DEDE1405CBDC17DFDE169758C5D819E6151803BDD81B1AEE09B563B7BF06EE15C5AA5858FDF2D0C11D07210746B94AD3CF979074873471F204C01C860F430ABDC1926851A347C1B27803E1214A1F4063504A0AC1E08B1D382AB1EC51C30626';
wwv_flow_api.g_varchar2_table(12) := '1C390B21623283C658950E9463BA70A37524C992264FE804010021F904090A0000002C000000001F001F000006FF40807048140C080503C050200C04C4A874784024AE5700F68A384CA70AC216AB1D27088AEF70C13067DD09C6420D68C0136577E3BBD8';
wwv_flow_api.g_varchar2_table(13) := 'DFF3667573440A6D785B0E0F0A1000100A0F0E5B650C694362640911126A12118758045481956A69665E00565B11137443139E5B080002669BAE43126646630EB851915B47630FBF440F634863A4C60A6349638CC64210634AD3D306D1D88DD605CBDCCE';
wwv_flow_api.g_varchar2_table(14) := '5B4DC4DCC85B4EBDDCC1584FB6D3BA6350AA58ACBFB063B30007A3AE1E80575001B8F446D3970D063A5400146A48A13758122DA2752183860A18175EA114A50F404919436214F4C50E1C00224386A0C3E6644A8C2018B80AE306654A0CFF7E5519633323';
wwv_flow_api.g_varchar2_table(15) := '070F071FB81941A28482050C098AA909020021F904090A0000002C000000001F001F000006FF40807048140C080503C050200C04C4A874784024AE5700F68A384CA70AC216AB1D27088AEF70C13067DD09C6420D68C0136577E3BBD8DFF3667573440A6D';
wwv_flow_api.g_varchar2_table(16) := '785B0E0F0A1000100A0F0E5B650C694362640911126A12118758045481956A69665E00565B11137443139E5B080002669BAE43126646630EB851915B47630FBF440F634863A4C60A6349638CC64210634AD3D306D1D88DD605CBDCCE5B4DC4DCC85B4EBD';
wwv_flow_api.g_varchar2_table(17) := 'DCC1584FB6D3BA6350AA58ACBFB063B30007811EAEA6635001B894A54207031BBE74FA7425D49042052B48D490E102144790245DA114A50F00892043021A23E84B889028476ED9A38601089420556E1CA4C60306981564A2F9F5C101870F94F9044E4386';
wwv_flow_api.g_varchar2_table(18) := 'C10285254D9ED009020021F904090A0000002C000000001F001F000006FF40807048140C080503C050200C04C4A874784024AE5700F68A384CA70AC216AB1D27088AEF70C13067DD09C6420D68C0136577E3BBD8DFF3667573440A6D785B0E0F0A100010';
wwv_flow_api.g_varchar2_table(19) := '0A0F0E5B650C694362640911126A12118758045481956A69665E00565B11137443139E5B080002669BAE43126646630EB851915B47630FBF440F634863A4C60A6349638CC64210634AD3D31415DBDB50D8D55B0616DCDB17D800CE5B0518E41519E7C85B';
wwv_flow_api.g_varchar2_table(20) := '62ED1A1BD8C158030FED15D7BFBA63A07068D7C1C32F5863660170C00F9D2B5363507D60C74D8B264E9E00851AE201C436408916357A84EF13A5280C42001AB35252834152ECC06989658F1A3633E1C8797889A51B1134C6AAF894850A9B11244A9838F1';
wwv_flow_api.g_varchar2_table(21) := 'F625080021F904090A0000002C000000001F001F000006FF40807048140C080503C050200C04C4A874784024AE5700F68A384CA70AC216AB1D27088AEF70C13067DD09C6420D68C0136577E3CB08E5CD7F637573441E2015157F0E0F0A1000100A0F0E5B';
wwv_flow_api.g_varchar2_table(22) := '650C69421F1888885A11126A1211785B04430E9B9B00976A69665E001CA8151D1E744313A25B08000FB2154AB64312660209B21A1BC144935B039AA819CA440F630416B217D2430A630514B250DA8F63C0E2CA06638EE210E40563ABD2DC5B4D630FE6D4';
wwv_flow_api.g_varchar2_table(23) := 'A403630EE6CC584F663E491B36068A952D112628C3356617800380E0810994E01500316412780225EA4FA96D6D466159D4E851247F222D4559B0E70E45320D0849B103E7E5953D6AD8D48423C7561813372FD148AB22A8A1456D46902861E224DC972000';
wwv_flow_api.g_varchar2_table(24) := '21F904090A0000002C000000001F001F000006FF408070487C2430160AC050200C04C4A854F871702A582C20C1E5220ED3A907932D6FBB5D82223C6480CA66349AB1600342F0B8BCDB082FFA7959677B09000D75440A0C5C00651A191750100A0F0E6867';
wwv_flow_api.g_varchar2_table(25) := '0C6B430497151D061B61121185680443077B001E76006B7B600008721113AD4213A4680800027B12B743127B0203720EC1449668039C680FC94346A605729AD10A7205067210D142107206DFD1DC68DEDFE1684CD6E4D9684D72D0DFD369C668C8DFCB5D';
wwv_flow_api.g_varchar2_table(26) := '4FBFD1C372A0CC42532B582E39BC00A492E3AAD52B39B10038639420023051A4062538354411C52E0E1E28F036A9D2252E99A2FCD1C89010A343611AB82CE5B20F9B058B08B1EC42C7E1C415937BD4243B30B00BCB2FE47A35DBB6A4C9133B4100003B00';
wwv_flow_api.g_varchar2_table(27) := '0000000000000000';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(40404682236408255691)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_file_name=>'squares-circle.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '4749463839617E001600F40000FFFFFF0000003636363232327070706C6C6C5656564242423E3E3E3030302E2E2E4040404848484A4A4A4C4C4C4E4E4E5252525454544444443434343838383A3A3A3C3C3C5C5C5C000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(2) := '00000000000000000021FF0B4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7C';
wwv_flow_api.g_varchar2_table(3) := 'EFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258552C18F0865CA295C8EF0D7A62629A68F9257E7B7D7F8483818588872482808C898F8B1393030A6C02440A700C0D0E9E0E5A9FA2A009285AA6A527';
wwv_flow_api.g_varchar2_table(4) := 'A7AAA926ABAEAD25AFB2B124B302931396076D710E0FC00F0303C1C5C20314C9CAC9C3CBCBCDCECCC8D114D0D1D6CED8CFD3D7DCD9DE2293BB55099CBF0F10E993E9ECEC9315F0F1F0EFF2F1F4F515F7F5FAF2FCF613F8E6010CE84F60BC64E1D6F0C264';
wwv_flow_api.g_varchar2_table(5) := '450EB076EBDAB99B60A1A2C58A932E5ECCA81123C58E16387614A991E4C68F2351FF96445901A10085E43AA163174144849B386F8A00696127489F1D816A147A91A845A31591F614C053684B113019269049B3A6809C39956A65FA936B50AF43C116157B';
wwv_flow_api.g_varchar2_table(6) := '946C52B34B2F3E7D7989C8D45F556D62D589766BD3BA78EFEAEDBAB7E25A98030A20783B339DD5B974FB86553C967159C76715FF153C40AAC3C210224ACCACF2244F9316417BFCDC3974E9D120458764E932AA5B730FD54DD82C3B60BE81F80ADEB6ADBB';
wwv_flow_api.g_varchar2_table(7) := '37EE7DBFFB05FF779042C2B60734C10E36CC18736FDBA85583AE4C5B75EAD2A45BCF4E6DFBF465E17421576EEE53A8519E6E8D500FB5D67AF7ED51C967351F562071E3DFC49953070FFF45233462882301425220800921888B36810912D8E0800152328E';
wwv_flow_api.g_varchar2_table(8) := '54699C61E1851866A8211A592007C487208628E2883A2C64C01428A6A8E28A2C3E01C38B30C628E38C3084000021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C9';
wwv_flow_api.g_varchar2_table(9) := '6C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258550C26F0D1442B69D8EF12FA1DAF9D98E6097E25808224847F7D88818A857289838F027013030A6C02440A93255A0E9E9F9E9DA09F5A28A527A726A99C09A6ADA8AFAAB1AC837096';
wwv_flow_api.g_varchar2_table(10) := '076D710214BC1403030FC1C2C1BFC3C3BFBDC9BE03CABDC8CDCBD0D1D0CFCDD5CAD7C9D722B697448BBB1415E37010E6E7E6E5E8E770E3EEEEEDEFF013F2F3F5E4F4F7F1F5FBF2FDEFFB78715B830B931511BC2A5858A86E1D8486EBE02C9C385122C58A';
wwv_flow_api.g_varchar2_table(11) := '132E62D4C83023478B1A415E1449116405810208FF5679258EA288083063C27C2933A6088E166E72D4A991E7459F2E05E0043A91E8429F2745A834C852615101356D428D1AC1684EA13BB1F6D4FA936BD0A15E9F82A59834A5B783BB9C1E9D1A9566DBB0';
wwv_flow_api.g_varchar2_table(12) := '6BC76695BB956E57BB65550E2880A06950AA55D9D6B44A18EE55BB5FE72AAE3B312FDF014C11B6ECE830DD84CA0F3D86D43C927349CF1B3F82EE889364680B2729283D0B2E213ECC10D1FDB3A72F1F3FDBFE7003D44DFBF6BD0A01554B5A9A49973660C6';
wwv_flow_api.g_varchar2_table(13) := '88214F9ECD19336ACFAD45C736FDB8B4E6BCB04F43D9AD60715D23448D72207ED42A12E7C3CF42BF5EBDABF7B0E0CBE9DEE60D784075F634C89320FF1EFE8D0C048E21913832A081010E77A03580091E02C9809354C25A1A675468E18518668846166701';
wwv_flow_api.g_varchar2_table(14) := 'E1E187208628A20E051930C58928A6A8E28A4FC0E0E28B30C628230C21000021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CB';
wwv_flow_api.g_varchar2_table(15) := 'ED7ABFE0B0784C2E9BBF58458258550C26F0D1443B31CD1392867E2FD1E6F77A7D0975257784248676748A838C87728B8591027013030A6C02440A95255A285A0EA2A3A2A1A4A39F27A926AB9E09A0AFAAB1ACB3AE857098076D710214BE140303BFC3C0';
wwv_flow_api.g_varchar2_table(16) := '030FC7C8C7C1C9C9C1C4BFCECFC5D2D3D2D1CFD7C4D9C3D922B899448DBD1415E570E5E8E87010ECEDECEBEEEDE7E9EA13F4F5F7E6F6F9F3F7FDF4FFD2F5F3E56D8D2E4D5644F8AA60A1219C861021C28B076162BC8711254EC8A891A3C38D1E31721499';
wwv_flow_api.g_varchar2_table(17) := '916444911508FF0A30582516B988223C5A1011A1A6CD9A346FDA8CE99127479F1981C21420532844A30D81A614C112A14B864789F614A07327D5AA1190CE94FA936B50AF438B828D2A36E2D295E012F6829A746C5BAC59AF56D54AD7EDD6B253F176354B';
wwv_flow_api.g_varchar2_table(18) := '81299B0105103C0D3B156ECEB976EBEAFDBA98F05E886713041EE054E1CB8F322DBAD32C0FE448CF25419F14DD312469CCA621AB6C1A8ED0427DF92A707E378122EDD801F1F1DBE78F3740DF0281EB4ED99712EB039C5C431366CD183365CE9F6F5B4E6D';
wwv_flow_api.g_varchar2_table(19) := 'BA2FEBD5B031D75E7D7BF16F07377522D18A7C8253A8CEA377507E447BA6B5CCC39A2F8BBE1CF06DDEF0322E0E911F4081FC07A0208F14D41F24071A5820377F0B262249820CDE67492E2DA571C6851866A8E1866864911610208628E28824EA70900153';
wwv_flow_api.g_varchar2_table(20) := 'A4A8E28A2CB6F8040C30C628E38C34C210020021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF5845';
wwv_flow_api.g_varchar2_table(21) := '8258550C26F0D1443B31CD13F5D25DD2E8FB255A7C7E7D8078767487867A888B8A2477798F8C027013030A6C02440A95255A289F275A0EA4A5A4A3A6A5A126AB9E09A0AFA2B1ACB3AE7A7098076D710214BE140303BFC3C0C2C4BEC10FCACBCAC9CCCBC1';
wwv_flow_api.g_varchar2_table(22) := 'C7C8C6C7D1D2D6D5D4C4D8DBDA22B899448ABE15E570E5E8E8E7E9EA1310EFF0EF70F1F1EBEC15F6ECF9E9FBEDF7E613FEE10B58CED7B735BA34591141CE8243380E2346842871A23B7AF22E62A458D102C78A1F2586B4D8F1E184921E4FFF3AAC605000';
wwv_flow_api.g_varchar2_table(23) := 'C22AB1285490280265CD922222E8DCA93327CF9D373B06AD3894A6009B47712615BAD4024B112F15C69C19B168D5A6467F0215A0B527D6AB48C32A15CB54E25397E116F6A2EAD06ADBAF6FBB46F0A9D5AD05BB78E1DED59BD72C05A86C06144030D52859';
wwv_flow_api.g_varchar2_table(24) := 'A25CBBD2FDD977ACE3B28F11FB853A788054863249961C69126346CF1038A74429BAB4CA8EA623B2FC8B36A1B83CE4000AEC0710F43CCFB407CE26782FB76FDEFA78B79C939613EC5FDC8625473EE019B4E6CE1F2C9F26AD58F5E9D6AF6953EE8DD2845C';
wwv_flow_api.g_varchar2_table(25) := 'BB788D684582FCF804A954A14FEFC03CD45AE5E19F87455FD6ADEFC5DF88879428929C40831002608085F8779023FF2178A03A81944C922083FC7D03C725695D91C5191866A8E1861C7A914654440021E288249668A20E091930C58A2CB6E8E28B4FC020';
wwv_flow_api.g_varchar2_table(26) := 'E38C34D668230C21000021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258550C26F0D1443B';
wwv_flow_api.g_varchar2_table(27) := '31CD13F5D23D4FBA4B1A8081125A7F8180837876748A897A8B8E8D7D8F027013030A6C02440A95255A289F27A1265A0EA6A7A6A5A8A7A39E09A0AFA2B1A4B3AE7A7098076D710214BE140303BFC3C0C2C4BEC1C7C8030FCDCECDC1CFCFC9CAD4C7D6C4D8';
wwv_flow_api.g_varchar2_table(28) := 'C3DABFD822B899448DBE15E570E5E8E8E7E9EA13ECED10F1F2F170F3F3EBEFF8ECFAE9FCEDEFE6DC95F3F56D8D2E4D564490B3C0100EC3870F1D428C386122457BF2EA618420D162C7891F2186A468B16145861508FF0A30582516850A104594B420B364';
wwv_flow_api.g_varchar2_table(29) := '4D8B2222E8DCA93327CF9D3727068D2960E6D0874719064D2982254297309116B539156755A1027E02CDAA3542529A57891A0D2B752C44A62BC325EC15552959B766A976F5CA55EBD7BB6FC1C6B57A96425336030A20802A96EA5EAC737DDACD8BF77061';
wwv_flow_api.g_varchar2_table(30) := 'BE0FD126103CE0A9C297244B8E3439532346CFF6365B104DFAA447D3204DA7F49BF6A0B83CE40202ACE04F3640D0F7266CE428305FEF7DBFFB05FF77BBB7CA396A39C1EE66EC5AF36CCFB73193066D3A756ECB9415D38E7D7BB5E7DF26E4DAC56B442B12';
wwv_flow_api.g_varchar2_table(31) := 'E7CDD7429F6015ABF6EE1DA46FBA5E3DACFBB26E894FFEA6FC1E467CC83189800914620822060A32603D4191101820830F52B2A084915472895A576471C6861C76E8E1875EA4E11411409468E28928A6A8C341064CE1E28B30C628E31330D468E38D38E6';
wwv_flow_api.g_varchar2_table(32) := '0843080021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258550C26F0D1443B31CD13F5D23D';
wwv_flow_api.g_varchar2_table(33) := '4FDADBB5120D828312808384747F788A7C72897A8F027013030A6C02440A93255A289D279F26A19C090EA6A7A65AA8A8A324AD23AF22B102AD9396076D710214BC140303BDC1BEC0C2BCBFC5C6C4C5BF0FCDCECDCCCFCEC7C8D4CBCAC2D6D9D82270B755';
wwv_flow_api.g_varchar2_table(34) := '8BBB1415E470E4E7E7E6E8E913EBECEEE51310F3F4F370F5F5EAEEFAEBFCE8FEEFC8F1EAB60617262B227855B0C0100EC3870F1D428C386122458B0DE5E1B3A771A3448B1F27868438F222C30A0369FF5D229220E1C28722305A888991A6459B134544D8';
wwv_flow_api.g_varchar2_table(35) := 'C973A7CE9E3C7142140A53804CA20C71A294B512E1AE97498DD6947A936A4EAB4305000DAA756B04A433B1163D2A362AC4A52A0DB2749995ACDBA964BD7EEDBA15ACDDB261DF9EA4C014D78002085A3E6D0BB770D5B85E7FD6C57B57EFD5B37C69011E70';
wwv_flow_api.g_varchar2_table(36) := '50B04293202B622C9951E6BD8D103E7BD49CD9336991A749924619B920B83C0AE3C1AB005036BCDAB43BE213BDBBDD6DDFFB80F713FE0F78CA394D35C1EEA52D5873E6D89C47872E6DDA80EAD0A62743368CFBF3EDBDBA4DF8765079235A8245A527E569';
wwv_flow_api.g_varchar2_table(37) := 'BDAB52AB52C18F3FABBE7B58F765B9B795FC8D2E499138124E1F011234A080811CD24041210924780883E70178A08111FA01C9809354D2D415599CE1E187208628A21769B876101028A6A8E28A2CEA60900153C428E38C34D6F8040C38E6A8E38E3CC210';
wwv_flow_api.g_varchar2_table(38) := '020021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258550C26F0D1443B31CD13F5D23D4FDA';
wwv_flow_api.g_varchar2_table(39) := 'DBE97F09120D8485125A8385848778817C72807A91027013030A6C02440A95255A289F27A126A39E09A0090EAAABAA5AACACA524B123B322B19598076D710214BE140303BFC3C0C2C4BEC1C7C8C6C7C9CAC10FD1D2D1D0D3D2CECDCCC4D8DBDA2270B955';
wwv_flow_api.g_varchar2_table(40) := '8DBD1415E670E6E9E9E8EAEB13EDEEF0E7EFF27010F7F8F7F6F9F8ECF0FEED00AAF3E7EBDB1A5D9AAC88F055C18243380E2346842871E2848A16313EBCA8711F3F081EF951C438B2624989232BFF14147050DCC286114568B42053634D8C372BE6942822';
wwv_flow_api.g_varchar2_table(41) := '82CF9F3E7B02FDB933A68099451DE654692B139153BD602A3D6A932A4EAB3AB1F2D46A742851015E83729D8A742C4DAC4C593A5518756BD9B755E15E0D1B41A8D7A467E5669598B6E5800208A096731BB7F055BD5BE9DA1D8AB7B1D9A5146C011E9050F0';
wwv_flow_api.g_varchar2_table(42) := 'E08D334F66ECC891646793133EEA0B2D5A3366CE993BAB8CAC16E1D33C0CE7C9AB20305E3D7AFF700724FD3164BEDAB26FCF26C87ACE5A4EB07F711BB65CB936E6CF9D2B2B66EDDA80EAD4A22F9BDE7CFBAF6F13C22544FE88255452E74DA15A2F2AD5AB';
wwv_flow_api.g_varchar2_table(43) := '56EEDFD732CF1EBD1E70C7DFF0A23409D2B83EFD19F49F7FE5F12788228B2082603B038C14E88724030AC8472597AC7545166764A8E1861C76E8451A2D2504C488249668E2893A2064C0142CB6E8E28B303E01C38C34D668E38D3084000021F904090A00';
wwv_flow_api.g_varchar2_table(44) := '00002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258550C26F0D1443B31CD13F5D23D4FDADBE97F7881120D85';
wwv_flow_api.g_varchar2_table(45) := '86125A84868588827A808F8E027013030A6C02440A94255A289E27A026A29D099FA6A1090EABACAB5AADADA424B223B29497076D710214BD140303BEC2BFC1C3BDC0C6C7C5C6C8C9CDCC030FD2D3D2C0D4D4CFC3D9C2D92270B8558EBD15E470E4E7E7E6';
wwv_flow_api.g_varchar2_table(46) := 'E8E913EBECEEE5EDF0EAEE7010F7F8F7F6F9F8F4EBFEE8E8F5F2B62657262B22C659580867A143870D1F429C2071624586142F46ACB88F1F848EFC364A14F970638581020AFF864B58E1A1888B165E5E945991A6449B2E05C01411A1A7CF9E3C7FFAC4E9';
wwv_flow_api.g_varchar2_table(47) := '90E8429B2745A83C888A42CBA23A6746AD39F566D59C3BAF42153A540057A05A8F868D5935694A4C449A3E159BB5AD54B754B37E8D1094AB51B2702D985539A00002B558DF0A8E3BD8AADCAF7585DE5D5C968252BF039826746A5163468E9747662EB9B9';
wwv_flow_api.g_varchar2_table(48) := '32668FFA2680FED819234C932897A6CD332E1EBC0A00DFCD93578FF63FDB01458306992FB6EBD9E750CE417B60136B5FDB902FD3B69C5B73E5C98845B776AD5AB4EA0F922B9BBEDCDB0470078DF3518A6A54F952A7D2A73A058BD5ABF60E6891572FE71B';
wwv_flow_api.g_varchar2_table(49) := '71379C084A9203A94F7FFEFBE9379E80832CC248220636D0C8358093FC47A077958097561A675468E1851866884616C401E1E187208628A20E061930C58928A6A8E28A4FC0E0E28B30C628230C21000021F904090A0000002C000000007E0016000005FF';
wwv_flow_api.g_varchar2_table(50) := 'A0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258550C26F0D1443B31CD13F5D23D4FDADBE97F78817C725A120D88891286898A807A8F027013';
wwv_flow_api.g_varchar2_table(51) := '030A6C02440A93255A289D279F26A19C099EA5A0A7A2090EACADAC5AAEAEA324B39396076D710214BC140303BDC1BEC0C2BCBFC5C6C4C5C7C8CCCBCAC2BF0FD3D4D3D2D5D4CED1D02270B75582BB1415E470E4E7E7E6E8E913EBECEEE5EDF0EAEEF4EB70';
wwv_flow_api.g_varchar2_table(52) := '10F9FAF9F8FBFAF6E8E8F1EAB60617262B227855B0C0100EC3870F1D428C386122458B0D2B62946891E3C47EFE2080F4E71122C70A0305FF14049770E14311182DC0C438D362CD893721E67C2920A68808408302FD2934E84E8637518A5879F0D4389D3D';
wwv_flow_api.g_varchar2_table(53) := '6946B539156755A83EAFF2CC5AD4A880AE43B522ADAA54E525224E5D8ECDCA566A5BAA6FAD828D40B4EB519964292C6533A00082B458DD0A863BD86A5CA873EB16BD9B54AF4ABF039A267C9A3166C98B1B3576D4FC91B349CF1443F29B205A24E8CA0C51';
wwv_flow_api.g_varchar2_table(54) := '3A668A368FC278F02A007C374F5E3DDBF77007D4CDAEF4C87DB361934B39E7EC014DAE7B690BB65C3934E6CF9D231B36BD79326CD90660B7163D59B06E13BE1D444E48652A52A6D2A352AFCA54AC56B0DE3B9835A29637E36E36110CD7275221FEFF9527';
wwv_flow_api.g_varchar2_table(55) := '897FFB09E80724091CD2483B038B24B82083040EC8DF2495187745166764A8E1861C76E8451AAC1D00C488249668E2893A1864C0142CB6E8E28B303E01C38C34D668E38D3084000021F904090A0000002C000000007E0016000005FFA0208E64699E68AA';
wwv_flow_api.g_varchar2_table(56) := 'AE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258550C26F0D1443B31CD13F5D23D4FDADBE97F78817C72807A5A120D8A8B12888B8C86027013030A6C02440A9325';
wwv_flow_api.g_varchar2_table(57) := '5A289D279F26A19C099EA5A0A7A2A9A40EADAEAD5AAFAFA3927096076D710214BC140303BDC1BEC0C2BCBFC5C6C4C5C7C8CCCBCAC2CED1030FD5D6D5BFD7D7D222B6974482BB1415E470E4E7E7E6E8E913EBECEEE5EDF0EAEEF4EBF6E87010FBFCFBFAFD';
wwv_flow_api.g_varchar2_table(58) := 'FCE8F1EAB60617262B227855B0C0100EC3870F1D428C386122458B0D2B62946891E3448F10FF0184201220C70A0305FF14AC726A1C4411182DC0C438D362CD89375F0A8899F3614F862222081D2A3428D1A137518A5879B0E5429F3B6946B5391567559D';
wwv_flow_api.g_varchar2_table(59) := '3CAF42CD9AF52852015E8B5655AAF21BC25D4F816A55CB556A5BAA6FAD760D6BD46B520A4BD90C2880C02956B780E106963BF82FD5B011EA1EBDBB94EF80A6095D668C09F2E2468D1D317FD41C92B3E5CC23FD4D084D12334ABC650D82CBA3301EBC0AF8';
wwv_flow_api.g_varchar2_table(60) := 'DECD93578FF63DDBF970CBAE4DBA643F81A8E798D5C4BA97B460C78D4343BE5C39B261CF93278B4E4D1BB6EAD6B9D5BA954BD7085ADF579100BF547C7853E8519992E52A167B07B426713FE86613C1707D2215C2BF9FD07DFF92E8F7DF208124F248038D';
wwv_flow_api.g_varchar2_table(61) := '2460E0352309F2314925665D91C519145668E185187A9106534400E1E187208628A20E061930C58928A6A8E28A4FC0E0E28B30C628230C21000021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7C';
wwv_flow_api.g_varchar2_table(62) := 'EFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258550C26F0D1443B31CD13F5D23D4FDADBE97F78817C72807A867D5A120D8C8D128A8D0C920B0A6C02440A7084025A289D279F26A125A324A523A722';
wwv_flow_api.g_varchar2_table(63) := 'A99C099E090EB0B1B05AB20D920C95076D710214BE140303BFC3C0C2C4BEC1C7C8C6C7C9CACECDCCC4D0D3D2C3C10FD9DAD9D8DA0EB6B8964482BD1415E770E7EAEAE9EBEC13EEEFF1E8F0F3EDF1F7EEF9EBFBEF10FF00FFC10198ED1B8335BA2E5911E1';
wwv_flow_api.g_varchar2_table(64) := 'AB828587701E4A94187122C509162F6684887163C58C1F2D869C38F262C0800309FF3E6084B04AAB5E0E258AD86861E6469B19715AD43991A74C01347D3E145A534084A3488F8A8810F0C1B7960A5F9AEB09F466D59C577766A51A74EBCFAE60AD264DBA';
wwv_flow_api.g_varchar2_table(65) := '94E93FA70DA08E631873A857B761B1C6D53A97ABD5AE63919625F894CD800208A4B62D5AF7EBDDC37211D3554C35AF52A34D9F021E1095E1548E344B62F6D8116467919F4986D6C839F3849300539E5D99569C953C0DE9CDABD04FB6BD7AF870EBD3CD8F';
wwv_flow_api.g_varchar2_table(66) := 'B7BCDBB3559F545DD096DA039960FFA276CDDA72E7CB941593CEFC3975E8D39F0DD8B6AD5B7149B976F142F552547952E74DA527EFAA3DA8F5AAE0B392258B562C70E112627A33DECF2172890058888022F817E026021838203C820A160849238C3C92C0';
wwv_flow_api.g_varchar2_table(67) := '228CDC42896B576471C6861C76E8E1875EA4711C10249668E28928EA90900153B4E8E28B30C6F8040C34D668E38D38C210020021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF3383887028';
wwv_flow_api.g_varchar2_table(68) := '1A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258552C18F0865CA29D9826F57BBE844FD8F97B247D7F828123837A7E8984875A12720D700C0B0A04060D02440A920D0E9E0E5A28A127A326A525A724A923AB22AD02AF';
wwv_flow_api.g_varchar2_table(69) := 'B1099F0E91709517989A710E0FBE0F030314C3C4C3C1C5C5C7C8C6C2CB14CACBD0C8D2C9CDD1D6D3D8D5BF0FB5B704B999560C9DBE10E7131315EBECEBE9EDEDEFF0EEEAF315F2F3F8F0FAF1F5F9FEFB00F63B07C197B735E1882490638E603A0B102342';
wwv_flow_api.g_varchar2_table(70) := '7C283122C58A162E56D42891A3C5091827820CE95164C88C1308FF167C2007A12E2BE5544610719266489B187156D4299167449F10815A104A54400495DD1AB814B7B017C1083305D4947A936A4EAB3BB1F6D4FA936B50AF43C116854A30E9528531CF41';
wwv_flow_api.g_varchar2_table(71) := '2D3AB56D55B757E16695BB95EC39B3E01A0C2880A0E903996CDF0A8E3B786EE1AD74BB1E2D5B2B410103129832FCEB7024C692284F62DE6C7963E78E9F3F6A0E2D12294BA5799992EB4519023F76AFE9D9BB2710766DD9F662D39EADBB77CABB49199C3D';
wwv_flow_api.g_varchar2_table(72) := 'B06935376AC4903373F64C5B72E7CB9D296FCE7CBAF501DCBC31C0F5B2F8EA4FB24425104F9ED478F3E54D9D572F9E96ADEDA935BD8933C79008448014E56774DFBE00FC85E817207FFFF9076023093C228735249458F2D215599C21E184145668A11769';
wwv_flow_api.g_varchar2_table(73) := 'AC7140154074E8E1872086A8C386021830C58928A6A8E28A4FC0E0E28B30C628230C2100003B000000000000000000';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(40404685729506258874)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_file_name=>'bar2.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '474946383961DC001300F40000FFFFFF000000BEBEBEA6A6A69C9C9CB8B8B8B2B2B2C8C8C8D8D8D8C4C4C4D4D4D4DCDCDCE0E0E0E4E4E4B0B0B0BCBCBCE8E8E8ECECECCACACAF2F2F2F4F4F4CECECEF6F6F6C6C6C6D0D0D0EEEEEED6D6D6C2C2C2AAAAAA';
wwv_flow_api.g_varchar2_table(2) := 'F8F8F8A0A0A096969621FF0B4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F904090A0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7C';
wwv_flow_api.g_varchar2_table(3) := 'EFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B4040583C3F02883079CB17ADCDDB8DFC7F49AFD48D8EF1BB978EF68E3ED687C7B7E7F7A828478866B88778A83757F79738F911B8182068C808E99908593746066055E2B5D641215';
wwv_flow_api.g_varchar2_table(4) := '180A0AA2AE021BA41AB308B5081B64706EB2B6B609B9BABCBDB7C070C2BDBFBABB0FC3B5C9CAC7BEC5BACDC4CAB1CCCDCFC1D9C3DBC6DDC8D3B0C218A908032C0406090A0B0C0D100B0507A9F612170FF110FCFCF3F5F7F0E9EBD78F81A7800309CA3B78';
wwv_flow_api.g_varchar2_table(5) := '2F2141830011EE7BC8D09EC38215054EC418D0E2467F19F37D5C18B1E148881D13FF5C848781803A01EE08DA5945939580051372EACC309395CF563877E6ECF913A8D0A1E78ADE3C3A81E8CFA5479DFA842A54AACDA055933EC5BAD3AAD1A85AA772D5E9';
wwv_flow_api.g_varchar2_table(6) := '956A57972B081C580041E72D5A705359984BD7C282767067C9AD3BF76E5EBD15F8F6C59B772F5FBF7F0DD7455C38B060C6711D1F261C59B05DCAB414D3859C59F262CC802DDF45AB422D8308142CF02C4A6B83CE0EB03BACFEDBEA75ECD97F5DC7BEBD81';
wwv_flow_api.g_varchar2_table(7) := 'F52CDDBB65F7A60D7C37EEBCC579FBAE1D5CF8F2E4B08FC385EE9CB8EDE8C3735F57DD9B740AD3A82D846DCDC0F2F8DFE5059FD79060ECDCF5EDCD9F8FAF7E7E7ABEF0DD8BB72F9FB8FEFCFDE5765F5DE7788702781470C68ADB66B031009A020C76E0A0';
wwv_flow_api.g_varchar2_table(8) := '6F114EC85A850F6248A104CD49982187CD595894861782189C883F9138A289BB5968E009E04100936FD43555D353197498618DD9299563733BFE685C8F38EA78E354422A476392D81D691393D5B1C6A393184CC9CA8B260C500B04F8D0F8DF015E06A8D4';
wwv_flow_api.g_varchar2_table(9) := '9761D657267E604A49A69A626ED5A6586F5E15E75768FA94CE0A6034D00A95078846E4827D3EF62784814EC6676A869688E867870ADA68A22B2EBAD9A0F8483AD8A38C2AEAA84DA5E089C416A0862AEAA8A4966A2A155D14A1EAAAACB6EAEAABB0C62AEB';
wwv_flow_api.g_varchar2_table(10) := 'ACB4D66AEBAD2784000021F904090A0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B40405C7C7F1280B36E801C76170B0DD83027A9E';
wwv_flow_api.g_varchar2_table(11) := 'E6B4DD867C3CC14FA0131C6B6D797A0F7C1B7E8881836F0E038687896A8C777B7D73938D857D9C8B6F8496887D81788D7B887F80826C798E059C927683AD8F97A36B9F700666055E2B5D1E1C1215180AC61A1B06050F026768CB1A08D2D3C968CE7EBBD3';
wwv_flow_api.g_varchar2_table(12) := 'DA09067367D80FDAD3DC74CECBE2D2D5CE73E7E8E41BD7C9E1E8D5747EEDE2E4EBCFF3F9DDD6A8F069AB077083C071FFE0052C8000C3300403581008566101830610322E28706098848F1F1F60CC4872C183031540FF26083992240406863C82BC20D265';
wwv_flow_api.g_varchar2_table(13) := '46982B3DE6AC6913E6C7942025F07469B2E3CF9D2D49E20CFA9166528D27410215FAF4654C95129CDAB42A55C24AAD3DA332057B110101891E362C2039A12D9F62C5A46110B0A0AD5DB7128CE99596A0EE840C77F9E835268DEEDFBB19040F46A0C030E0';
wwv_flow_api.g_varchar2_table(14) := 'C0791723307CB86DE2C87B1BFBAD3C61E560057C373F4E9CE073E1CD951567A6FCF8AF6ABD1A2823F62C59F65F0867571070B0F6EE04041B106888160D41820A1692276F6B9CF870BEC8952B5F9040F8F0E218A22B9F6081FAF3E70A3E4A9F9EC079F1E3';
wwv_flow_api.g_varchar2_table(15) := 'E39997770E3D7DF7F5C4DB4B6FEBFDBB5CEDD2EB3F673C2CFD04FDC52120DE7CBFC1B75F76FEE5A602FF0117301001051658569A060A80D7585B1D64C85D62155E27CD85196AE85A85D6C9B54106217620216CD11873628A2B5A579C022F86B8E1061D0A';
wwv_flow_api.g_varchar2_table(16) := 'C71888365A90018E145E375C8D2272780C761B60582490FB3594248C23CAB823912A76C0217B2E2A196107112898020107380861721F1DF9A1000C8C4766641E4EB6809A1694D9618B7DD9259D9C4222932681B4E568DC9B7C62B61F5D70E2B95F9D6D2D';
wwv_flow_api.g_varchar2_table(17) := '17A7A074EEB9DDA23276A8969DCA197ADD068EDE298179A7F997809728802966720CC04798022B299762A94282669C761A76502A8BF7A9AAE27B830539A005AB1A085A78B076901C752C1AF3518A21B27A9D5EC7222B6B6992EDDA6BAED039FBECFF67C6';
wwv_flow_api.g_varchar2_table(18) := '4A606B86B32E86AA04C80EFBA944613EE823B4C77C48E58DA63939018C3E3249E194EFDA38E2671A4840A5860960B0AC89F52E594C6634067CEB8FEDD288A2BD461E738C000B0B2C19064FDAC8258EDE160CE58F039FAAB1C5116C8001A8270C200D046D';
wwv_flow_api.g_varchar2_table(19) := '617000ADA83240E99A2CA359286684B94969CA2B9BF9A77F2AD3EAA67B72A6FBE7CD1DF40C1B6332136874AE84AAB974CD4D3F1A34D4806E37C1D37A45ADA90211AD0006461394DAF131FAC249DDD88CAD34A6A267E3ABEFDA11FED72FB6121C00F7BB0C';
wwv_flow_api.g_varchar2_table(20) := '602CF4477093AAF7A96A1368DCD8D9F6FD1EE1E1D92DF8DC7B355481E162D3ADF87879E75AE1DB8BCFE58BD7486CE1F9E7A0872EFA1AE8A453D14511A8A7AEFAEAACB7EEFAEBB0C72EFBECB4D77E42080021F904090A0000002C00000000DC0013000005';
wwv_flow_api.g_varchar2_table(21) := 'FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B4040587076978083668F480E37018DAED41214D5FB70D78B73C9140F3131C6C788306030F1B7D6980706F83867D898881';
wwv_flow_api.g_varchar2_table(22) := '8D8C7B916A1C6F6E8E0F7F7C988D8486889E80996E778505899E6C9BA29D9F6981AF9B7BA49F6B946D1C1E0E605E2B5D6B1C05180AC81A0A1A1B06026774050F08D4D40A08CDD090CDD3D5D5CD1B67DBD2DED5090668D06865E5D4E0747DECDED7E7DA88';
wwv_flow_api.g_varchar2_table(23) := '1BE4F308E78A69F9E5EFE8E0EB568E9FB834F20AA20B178DA03783F7E219905001C1001604063828606041030820412E28704082C993121EFF7C0C29F241490909609A54C91224830715509ABC40B3E64D8A3263A65CC9F2664E9D3C89865CF0C0648598';
wwv_flow_api.g_varchar2_table(24) := '3193D68470F3A5CE9E459B023D29D5A7D6A012BAB2640A546858AC21ABA214AA924103040430162BA001E484BB77F91CB3860083800578F166E083EC1A027A0B3204CE9BA0F043C08B07374676F8F0DFC5792538369738724CC7941300561CF83365CE13';
wwv_flow_api.g_varchar2_table(25) := '48E3356D989AE8BBAA2710A69CEC6FECD4AC9759861C78B0E6D3AE216780107705013C09304FC0A601417373152C480FBC4F8375BE09A24B9F3E614102EBCF5D6BB730817CF704CE9B1BCEBE9D7BF5EBD0B707F69EBE9A0293F2CD57778E7D3CF5EFFCC5';
wwv_flow_api.g_varchar2_table(26) := 'D7DE5DEFF1759F7F7759E01DFF7C95B1C7DD5D0B32B80F82C5A9705C011050601E6C8D5D67980202DCD54179B06DB04C78C884D8C188829908DF35186C90C18ABDB9A8DE32204E40638B2752A34C8E349267C160D7DCD8D706229238A48D2FCAB863893D';
wwv_flow_api.g_varchar2_table(27) := '5616A38E2C42199E354E56999A8D87C188248D2C66C0E5874E923762852910C081041168389D0526BD88587BE6C529A16874DE65A77ACABC961F9C128027E8060CC8B79A66F05987E783B2217AE5A286EE69DF65DC4967528FEB2D905F79769EB88C9F91';
wwv_flow_api.g_varchar2_table(28) := '062A687079020A9E8F0A2450E88368A24080030CB4C9DD82B4D113DD8A3B46F8A106315900E68A0C74F8DC32F80509EC64CA3CC71EAE235A10AC75D784766B076F06EB69FF6126318BEBB33F622B81B6C76E269EAFB84288EC4315686B6E61A72D5BAEB3';
wwv_flow_api.g_varchar2_table(29) := '93457B1845B872D7EA0904102A2B94BA59A34096246E292E32000B292606CA74792495782D794C325E521964A3094BF9258B349A56D96105F3BBAB5F3356499E893846FB6FC8356EB64C8C28377B306D58A29CE0CBF212DC326CF79A3000351024680106';
wwv_flow_api.g_varchar2_table(30) := '0760BA5B7986022DF43E9AD2F973D0A77D0A58A54B473927A31204FDA2067F192A9DD1FDA6F8B4795B33AD1EA9505F5A58C290BE59B5CAA9262DA49E4CB786B4D651B34B76A417AD00C6471368B800C9104F582A038077C9AB046E06ECDDC3FD66977882';
wwv_flow_api.g_varchar2_table(31) := 'C1321E2D4589374BF831C31EEEE6AC093C6C78D58F4B173945BBC8803EE07992DB1ABA821B78DEA5499B6F37BADD8E9FBE388ECA56F03884CF7C81C416C0072FFCF0C4176F3C155D14A1FCF2CC37EFFCF3D0472FFDF4D4576FFDF52784000021F904090A';
wwv_flow_api.g_varchar2_table(32) := '0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B40405876730F014049B74FAC871181C70F8A0A0AE0FDA86BCDB314FA41380091C1C79';
wwv_flow_api.g_varchar2_table(33) := '85797D757E6D7B857C0F1B7E6A8278716F030F91768B86067D816A776E9C9E817E03706FA29D8F909FA79C96989990787A7A97AD80B494701C650F672C5D776F050AC71A0A1A1A1B066889050F08D3080AD3CD7F9069D1D4DDCD687E91DCDDD7061BCF7F';
wwv_flow_api.g_varchar2_table(34) := 'E3E4D892DBD2D4D608ECE1EEDDF109E6DA6A06EFE4F875FBFA75C3074E92BA81E6D0A5E147AE5C413F0FDC544030800581530FC03080C0B1E382020724881C79E141838E1E0BFF884C208165829227514258F060A44D9832673EA8D0B2A7049C3269DA5C';
wwv_flow_api.g_varchar2_table(35) := '091425839A155C8A2CEAB1E6D09726731E95C07324D4982885F664F933AACCA33CB92EF59AF541C89512B63168808080450E0512488330A16EDD0C2CE3C5C32060815DBB78251C9B166F83DFBF75F3C6A396E0F0DFC083AD59338C38B1E0C5D5FA56862C';
wwv_flow_api.g_varchar2_table(36) := 'D99A86BE192A2BB6071A31677F7E43FF1D8D0C8166D38A9555FBEC18F0686FA921B85D4120A184CA13E421D0E0AF82050B8817245846781A06E3C791D755CE7C20F409D2275027AE976A74E916B6937B7E3CF972E2CD135CCFAE7C78730DDEB34F4FE0BE';
wwv_flow_api.g_varchar2_table(37) := '1BF9E876A937B7A6BE7CDDE3FAED179F79D54D03DF7513ECA642FF6FE74420DF0478C9B618061B4CD00176B6C9D61C8516FE654184E875264006173E968084CA1C53618919A2974C32235E881C722056A3578C181E97C106CA5497CC8A1EEEA8A15E403E';
wwv_flow_api.g_varchar2_table(38) := 'C663431CB278D789DCDD48628777F1C81D3C152277A18229F456800614E0871C4B21DEC3C0777681891E630B9069197329CA936679D189B4CC9CCB6C30A67C16C8E9E23209DC899899A8A999A70405F2F7E67FC8E9590D9A706228678FB219A6E6047AFA';
wwv_flow_api.g_varchar2_table(39) := 'D827998912EAA2A1FE25F8D6031174295D070C9CD8D9343C75A06A89E12DA717712CA96AE1AAA55697A248B25A402B931A22A0DEAA326AE7AA8DD5A4DA41A3DB1D33D8AFC05EE86B32CA1E836BB3A49A6A8FFFB1B2CED76B3554019B9FA9830DD7EDAA18';
wwv_flow_api.g_varchar2_table(40) := '2A17D9A2C6FA87250A0470A040A8A3D6B82190E009B9983549E608218FA72290EF7FFB2A9B8C8D1B9098EB87FCEEA740C125CA1AA16484F1F56476F612062DC376E92865643F3E692406AFFA0BA48C1D541C4FC72CD2686D67125FC8E2BA270C30115DD8';
wwv_flow_api.g_varchar2_table(41) := 'E98AC1016CDAD8D7A437E73C4D63DF457773B8911E5AF3043D8738DCCE0F266DB1024C238AF401435A1375CD1D0C3DE5CF460B4D353292310DA70543EBA54CD4D9954DCED5E5951DAEAF6FFA6741452B8071D204A22EC06F9B08FC84A9B020DB980C555D';
wwv_flow_api.g_varchar2_table(42) := '62381FC81A1E5838A2CA210EB10407141E6CE321C22A81A8D9F91A38D8372F5E5EE3D14E1639477ED881AEEC35A3235A6DE0362AF013E6D1E9EDB8649063FE2D062F52B341EA7F09E0050B476C21FCF0C4176FFCF1C857D14511CC37EFFCF3D0472FFDF4';
wwv_flow_api.g_varchar2_table(43) := 'D4576FFDF5D8677F42080021F904090A0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B404058767C0297B0A9BB47A43E638DEF0017A';
wwv_flow_api.g_varchar2_table(44) := '9D261B0C0E3C7EF0D824FE8076777779726A097E09036F838C86877E8B707A067C747F658384950F7F6B8A1C9A8472808891939A7CA589998D778F69806E8C7A0EAA9E6A6470651C05055E2B5D760F0F060F0A1AC81ACB1BC69009050F08080AD3D3CD7D';
wwv_flow_api.g_varchar2_table(45) := 'A67ED1D6DD09CEA688C6DDD6D890D8E4D706B1B1D0D2D4DEE06BDCF0D6DFDA89F4E4DF97EEE908F79EE98BD787CEB874CD1021EA5380C381012C082C227621C1030610326A5C50E080848F20255CD4B8B1938404273FFF5A6C403223830221538A64D9F2';
wwv_flow_api.g_varchar2_table(46) := '254A9427135C18D972C18390807662AC691227C807344932F80912E7CA96109602FDB33369C99B40792A35D9542752A84B3DA2F423A1990602117B55AC2060C184B77027FCA9370D43DBB870514EAB66CF2D5EB909FEDDC59B616E35BE0A06E39D6B4D81';
wwv_flow_api.g_varchar2_table(47) := '63C5700B07768C605962BF8B2574E39B007364BDE920E7D5EC58C35ED1130A4B40462DD9E5BFAAD3D9450001ED0A02EB5456F86B01C1867F0976FF5D10982EC00A162CC4B5401CF86EE5719B23AE8B1C3AF4E6B2852FC75E4FC1C709D0DF322F5ECDF4F1';
wwv_flow_api.g_varchar2_table(48) := 'BF13B8EFF52E21395EE97483C3759F9E3C3CEFDAA3179F66F9FB04DB2AE0169C5DE865B001658D255660FF02941DF6D8726F19E8D861AE0950E081A529A3206C0756C61A02186C908172E14988E0321A88482274129A675E8819CC1761877CD525228735';
wwv_flow_api.g_varchar2_table(49) := 'AE77236118D6E8D8067F75501882D6C0D8C17F111970015B0BB8075D071F518398770CD0371A39C9485065786F45894C7954AE48E2472896B90103104E106565667A069E056B5AB34C025B8A3701949AEDC5E699E259E7A59C29BA45A2786426631E404D';
wwv_flow_api.g_varchar2_table(50) := '72299704CBF0374D674EC2B566326CD209178029E0D6477B4F76D00103934DF991A7E2790AEA5E87CAE729A99F92472988CFADFA16711F165901A9E14977D8A3D5817767AB133A38AAACA63218AC63C3AE5AEC66D44870EB91F3A9C71706CFBE67ACFFA3';
wwv_flow_api.g_varchar2_table(51) := 'C7E1FAEBA9BBF24A1FA628685A00044FCE38DD842ADA99DA0618E869E388BECE88019120EE582E4A944E2BE291C991AAD7AE3FBE45AAB988B9962E5C4706D79ABE31BEE9A989AD4909248E11A39B01BFD01A38AFA301ABBBEEC6C7EE7B290B0348608002';
wwv_flow_api.g_varchar2_table(52) := '7DF2FB27826D5909DE9F8DB59CDCCC701E80AA945AF649689E6052891E06362F9C259A6FC205F47A38FBD56F7247E78881A56F4207F497F03C9D68D4161C2D658582E21567919DE9FCF26A350E4D9F0510AD008604104C408193B4BEDA6CAFB926302FD5';
wwv_flow_api.g_varchar2_table(53) := 'F8BD6D2D062E524781D8C4818CF30114F00B57E0116749B8A2816738F7DF5636DEA0778BDBF9698FEB4940B8C3B3DA2DE5979ABF4DB33305A0DEFD79E88CDB7DA8DF7109008CDA486C21FBECB4D76EFBEDB853D14511BCF7EEFBEFC0072FFCF0C4176FFC';
wwv_flow_api.g_varchar2_table(54) := 'F1C8277F42080021F904090A0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B404058E67C0293BC4858D7ABD213BDE70CE20BD4ED839';
wwv_flow_api.g_varchar2_table(55) := '6F8343FFE63CEC806A6406847B6F731B09898A09837C7A068889938D789084910F758C96857C039A9B95987C0EA0766A8C8EA4677F8CAA1C9E989280768E867B738A6C4778651C05055E2B73830FAE060F0A1ACCCC081BC9948905CA08D6D7D0A18B09C9';
wwv_flow_api.g_varchar2_table(56) := 'D7DED9A993DDDED6D0E1A9D4E4E5D18B6AC90AEAD0BB75D4F0E4DCA1A81BE9F1069BD30FD421C0272D9B40736CEC8C23074E5301031206B020E081DA830B801E3080C0B1E382070724881C294163478F7F24FF242079C1E449080C1E8C5C39F241839730';
wwv_flow_api.g_varchar2_table(57) := '53AAA4D972E3CB982201896C79F3E5479A244B163D0954254B974C65EEA499C026CEA349455AFD2975E7D0AD514326DAF980C044601831A815B06082DBB713ECA8C3C016EEDB95F6BCD5B51B3781C0BD7033C8B5A7A03060B87211145EA6E0B05BC109E0';
wwv_flow_api.g_varchar2_table(58) := '3183D7B82DDF95D6F23EB31C18B337C39C114B5896594365BE712528366DCFF104C1AAAF61A850A1EC447F220B8B846B618285670277F35D10599D840ABC7D130F8EDCAE85E58ABDCD76DBFB2DF46BBA25249FB09CB0B5E96F7B3F2FAEC1DB71D4D70B5B';
wwv_flow_api.g_varchar2_table(59) := '3B3FDC6F5ED3BB2D54F73D90727405C2ED429F9CDDEC0A02062450016909A026987A8A2D2600FF5F161C48993D186C405D6794B15698847C65B0C162CD1866E086A465D6986F7669688F33084438E1041D74702002E5C178E18A8F81784D79233A672276';
wwv_flow_api.g_varchar2_table(60) := '8B6D9041861B62F71D866E7550A3663D66E09F0A005E30207E0C90C8A25B7889584E68D48974238151F2259269323293C002F289E7D697CD3433268D16A099E6405DFA269E96D6A0B88165BD19995A7428B225DF8A9EC1C89A04515637E768310ABA266F';
wwv_flow_api.g_varchar2_table(61) := '6DC616A3986DCDE7DB9792C558D792290028D505DAB1D8628B0C14976076D47DDA41A8215E73DCA7535A802A98B255C0AA757ECD859CA4DC15A7D97979EA499C7A8BE127418B9E821A59B0D999FA69A8998D9A9F6FC6369BE0B3D4ED27DDFFAD9EFAC66C';
wwv_flow_api.g_varchar2_table(62) := '5EA44E80290A0016A0D58F7A1EF9E09034BE66A3880AF888EB8E5BB69B41754636B8815A845D38AF05C4DA8BC17DE896EB9B86FF3296E45B7A0A866F9DFACA47ACBA85E1C89A8F4092066CBBD08647308CAB35CC1BC1C12648B1B72C0C20810007F8C9AF';
wwv_flow_api.g_varchar2_table(63) := '94121C90A0888426D7E867BA3150E69F13607080C58CA94C9D7C2D4B56D880AE4D10B46916128A7396A33D689ACA1DFC3973AC0A8C59265C3ADB870168724A1DB4C1852D6A57CBD25D89737564336CCD5E1648B4021812A84181D4CA89EAAC76B812B7B0';
wwv_flow_api.g_varchar2_table(64) := '020326700005EDFD9B688A15CC2DA9DE052F26D2DCBC85AA968CBAFD1D38988A4BC0385C888F2A2CE079CAE778E291CF2DB03CDE114358F8CD6EE93D2A7C92379EC0BFE4CC06F804020CF336125BE4AEFBEEBCF7EEFBEF547451C4F0C4176FFCF1C827AF';
wwv_flow_api.g_varchar2_table(65) := 'FCF2CC37EFFCF3D09F10020021F904090A0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B4048502C1C3293BCE0E4F61C36E6F061CB4';
wwv_flow_api.g_varchar2_table(66) := '239E7EB013783CDD20370C1E791B79657C7C677E767882096F7B0E867F8C92826606969089927A1C8568887779097196720E7F778BA28F9787A78A8A70ABA488A192B18697A76E1B47651C615E2B03A29C0F8079060F1ACB1A08CB1BC982D209050F08D7';
wwv_flow_api.g_varchar2_table(67) := 'D80809D1B5C9D9D8DB80D26C02D6DF08D076A0E9E7E8C98A6DE5EDDB6E8AD5F3068BA8F7E7D0FAF6E6BE419B248DDFB770EBD8F57360A78001090358103065EC421E09091E3080C0B1E382070724881499E082C68E1E01FF8D246972234A080C1E605C89';
wwv_flow_api.g_varchar2_table(68) := 'F1E4CB981813ACCCD8E025CC633A679AECF9F2234D9D2D7DC60C4A52C2509F1F2F8EE40955E64E3C0F88A2645020E7CAA7370B1CD0998780C401062C62588B0083800513E2CA9D80E79B02B770E74EC850D7EE5BBD71759EC30B98AE846B0A12B7FD0B18';
wwv_flow_api.g_varchar2_table(69) := '4F62051A1213D6CB37C13205082433D6EB385BE4CD72F91E468C590168B98233474E7C7AAFCED5D826731E8DA142050966571018B041A4627415E25A9830DC82B6761282035E9000B9F2E271993B9F5B9C39E66C0A920FA72E9D74E6E4C2E776BF9E183C';
wwv_flow_api.g_varchar2_table(70) := 'F1F3139837C3565EB95EE9BF219B7FDFFCDA6A0DDAE56EB79E597576F7E259B69A64B9A9408001095400D9FF650214C6D75D8F41661A75713DF85B66130296C1061026B65A831A26B0E080195226227B126E9081861C2E83A28A7175D041851C62E0CC82';
wwv_flow_api.g_varchar2_table(71) := '0AC048598DCE38F3CC8AE1EDC5218611EA38D786A52116D906311EC9A3871A6050600A075EA0E0821B30D0A45CC961689F06595268D88DCDC8A725605D46C60C980C40275C726B3293409BFAC50527333E26009705C5F199E67ACBE839DC8C6F1EE6E28D';
wwv_flow_api.g_varchar2_table(72) := '12E4B59D9F86DEC76678C58984CDA11BE4451C9F16C0F965A096A227E9A1CF4C89C28156DD959C8CA8CAC84073114A268105A912D7DD37A74E30E37E27D25A01A1014EB75CAED9802763AF115E236CAA1DACDAAAB1BB229BEC89AD9A072BAACA7A87C0FF';
wwv_flow_api.g_varchar2_table(73) := '7CC4A96A995DC79E67C1AC8AFD27EA09077685C15D0200E9E4632FAA1BDA905E2666E4BBD74586218CB7D2485E91190CBBDD8636EE9BA3BAFFB6D8EAC0B6AE6B9F8739DACAAB90A5DDD7308BEC4A88B070C30A26E1BD04EB1BEE632A8E6BC20012087040';
wwv_flow_api.g_varchar2_table(74) := '0578E55BE8BE9931065DA6A345BB00A6C2657A008603265A73A412AC76257E6752E7DB8091E95C27CC386BB640077C7A2B695B579A36B35E306376EE6373D2CC338989E949B5CDD7D818B6CB737D7ADD623347B40218185570C0012F47575FC5D8CAC55C';
wwv_flow_api.g_varchar2_table(75) := 'C03F4B700005BF8ABDB0DE7CD37775B8C9058EDEDD037E5781E1762710708485F7DD2A0680DBDA747A8E1F1CB9E0F6AA06F8E5725F3D2031E58663BAAADF1862448100C1AC8DC416B0C72EFBECB4D76E3B155D14A1FBEEBCF7EEFBEFC0072FFCF0C4176F';
wwv_flow_api.g_varchar2_table(76) := 'FCF12784000021F904090A0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B4048582C3E019701C6834B9B069BB3766F4393D7824EEF8';
wwv_flow_api.g_varchar2_table(77) := 'C4D99036F83D761B78821C1C7C6A7F8177827A8663690E7509828C70867E90928C786687637E92798490998A837B877E069A798DAA9FAB768B8B7BB0A00F6F02090F65615E2B030906600EB283050F1A1A08CACA1BC3949309C808D5D608C2BA790FD4D7';
wwv_flow_api.g_varchar2_table(78) := 'D5C2946D93DDDED9956DE4D7C2936EE30FDEDFD0B3CFEFF0EBE294E9D6F78B82FAF1EC02FE43F04CDB9B817A0A189030800581611286E1914051C2830610326A5CF0E040C504142F5CD4B8F14145092025FF88C44812020393272B8E6CC93125C5943349';
wwv_flow_api.g_varchar2_table(79) := 'BE4C09B2674E8D0C0A7C3CF933E3CBA1218B42A81953A5D2A01FEFA07C5AC066C5952D971A4B40C0A1000C1D31884580A1DA860513D2AA9D70C79A826A60D1AE9D90A1ADDB6A02E4CEB50B178182BC73D382544098AC59BD6B076B205C9620E2B47525BC';
wwv_flow_api.g_varchar2_table(80) := '658CF7B16009D616570E1CD9EFE4C381D92650B0983061C073EB8EB6866131EAB5AA3154A820A1EB0A020776497E6B6D43050B13800BC7060F01C5C0161624282EE177F0B5CA9957482B3C78F4BB64A7AB053E217A61DEB2B96F57CEBBB071E7E2BB2FAF';
wwv_flow_api.g_varchar2_table(81) := 'F6FD7860F2EC979D0F1DBDF4620DEED3C327CDBB39726CA62980816D2A1020C042A429C39FFF00A165B04180CB9C461D6CA395C7DF06C8D565DA7D1272F62084AE65F82161CD68802167ABB10717861D7400DB83F7C987C10619A0481A33112A70A27816';
wwv_flow_api.g_varchar2_table(82) := '381860827FCDD5A286F1AD58636A150249600A0414530189F225C0808B6B5940116F0A6A20E5846A5D19A1825BCE65A564259296C002E959306689CD6CC00097972983E362670A672745F295E82695CFAD598D668E71A766707842E90C03D50947118E7F';
wwv_flow_api.g_varchar2_table(83) := '9AF8A69A838E39A77CA8A58767A31A2C890201755CD9986C2D869A167901C25581A8DC5DE70DA8CF51C7C07A6E29E09E5A2DBE2A9D901DD80A0FABB4E69AA45B14852AECABA6B127AB04C2864AEC8FC75A90ACAF9EC5071275C3C2EA57FF35CDB9285CAD';
wwv_flow_api.g_varchar2_table(84) := 'CB7D578DA62734291406E0D1E8216FD712666E6A237AB6D8BADBF9A859B935F2E863A9EAD64BA185A5ED98568B6C915B2C59F04E007002AD91E859C190C10865BE6B1D5C167F17D60B305DA3CD4B9804FE1AEC22C29E8107AE09034820C00115082C019A';
wwv_flow_api.g_varchar2_table(85) := '555A80C101D1F29657A269BDFCE361823ADB81CDA5C98C66A4844AF6E48D8EB5ECF2011B4EB632976AF24C99AC2C274A916CC5425D655A53971A689F6A5EA9F559DB41FA72636499C9729557B26666432B808152CAB21E509DABED82A75DD8AF520D6402';
wwv_flow_api.g_varchar2_table(86) := '0750F01EC8CC98C6B1DF73292770C812F4DD6A700C6C70B8E01210FE6FAE23B61779CB8D0748AE96910F1A9C05D8081C603BE292AB657891D995AE66DE3D9BEA37A4A302DE9E00BFB48DC416B8E7AEFBEEBCF7EE3B155D1421FCF0C4176FFCF1C827AFFC';
wwv_flow_api.g_varchar2_table(87) := 'F2CC37EFFCF32784000021F904090A0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B4048582C350F00C1C68B4C1E1296CDEF023C731';
wwv_flow_api.g_varchar2_table(88) := '4F3B068F847E9FE0D4C70681781B7B847D7F81820F868C7E6376778B0986937E8190837C7A038897787C841B8E9006998509676B806BA67C966B89A57993858EB18A717A0503645E2B03090602120F0E9A6F050F1A081ACDCD1B06A1B41BC908D6D708C1';
wwv_flow_api.g_varchar2_table(89) := '9A79D5D8D6DA70B4DDDEC18C6F09E3D8E5E1C80FDEDFD17AD2E9D7EBD3E8EEEFE5F2A102F9E4D14285A2078FDF3982088A199030800501610A1418B8A047824509931A40D8C87141810316135CBCF04023C78D0B1EFF80C4187243C9931B193CB84833C1';
wwv_flow_api.g_varchar2_table(90) := '4B98326B622469F264CA902C13F08409C123D0904361A6042912E9CD9339695A4C0A7526C68A12A8728C2A552BCA5909083814A040E6050C1810A48D2860C184B770334CB2A6E01A86B670E38ABC56F79BDBBC6FE75A5B9BF06F5EB91B22AAA58B17F004';
wwv_flow_api.g_varchar2_table(91) := '911A22A6B5F6C0B0DE0D08245BD3D018B0E0C8D73AEB95A0B8AF02D17027458EA818F504B912EC824E60F9ADDC0B152A4810BB82C081057715ABAB30C142F1E216B2BDCB463CAF050B0B122C4F40DC78DEE8D3AB1F378E9D6EBDE6C7DF462FFD1DF0F3EE';
wwv_flow_api.g_varchar2_table(92) := 'C21548D07E5D7AE6BA0A34AC770CDD7DFCF28EA3AF8E1C79BE75B8D8C5D71702F33937C17892F1A602FF011268B00106CEDC8741028EBD96006BCBB0B641787A95165F641B1A285744FCD53561068E8D88E132278A782189CD44142260237AC78C021B76';
wwv_flow_api.g_varchar2_table(93) := '4063621FF235E36117329361661BFE675C063CC2A8560228BED5818E4862E86385517EA880822930988792D608C080791660B4197FD9B8F55F600D66166399E64D80913364D2E69C716FC219195E67869966849C9969DC736EBA6767677FEAB9D9807222';
wwv_flow_api.g_varchar2_table(94) := '779C483036838097DB2DDAE0324296F91CA0CF5904673D667A169B901A60890201C958A4C064EA55F0E4936FD5C71AA2AAEAF85F77E4B0771CADEF319717AB0CB8878D0215500817AFBEF215ECAE3AF62A5C66CCADBAEA04CA9A169145CE12FBAAFF62D4';
wwv_flow_api.g_varchar2_table(95) := '55FB64B4742D435D71CE1EE82BACDBADCA6D5FA29E40001E1260D017884D1E9698771AC61BD783F00988A3BD47BEC82C5D45C2655D02EE9606EF9916E6BBDA691958C7EA04494ABB41BCAC56799F8013A798E49AFB0EABE363EEEEB764C30FBF86EF7B26';
wwv_flow_api.g_varchar2_table(96) := '32E9F0C7F82E9BAE09C008704005052B9068ABCF61700079CCE0C9A1CEAF728A33AB3A2FCC29A6C7E95C01898C1976E904400BC82CA4D65D5AB466F1F9FC27D433B336F597ADB61A757A1B747AA905630F08297280EA6CD77D3787EDF660F735B4021818';
wwv_flow_api.g_varchar2_table(97) := 'D13C2D8546BA0A1F5D05E22C6EC16B6244417E04DF886D058703169DBB28AB770005460E9EEFDE8D4FC0EAE35E4FCBB8C0C6F55A7042C892532E38E7AFCA3739E26B51CA5CE680A23EA004933F2D5EE2E43DE0CBDD486CE1FBEFC0072FFCF0C453D14511';
wwv_flow_api.g_varchar2_table(98) := 'C827AFFCF2CC37EFFCF3D0472FFDF4D4577F42080021F904090A0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B4048582C3F0280F38';
wwv_flow_api.g_varchar2_table(99) := '8EB421EDF01436F0F8E6CCAE7B1E89BC7E8E36F8FF0378091B79841C7D7F7E8183858387756C81848D098F6C8082948F7F63068B8C700974978A999395886B699F7A8EA998A77A8789806F0279651B055E2B03090602121518BF7B8460021ACACA08081B';
wwv_flow_api.g_varchar2_table(100) := '0684D184BBCDD5CDCF7A99D4D6CDBFA193BA02DCDD0683DFE1E308DED209C8E9C5D18C050FE9D8F1EDF3EFE5DF79F9E3F6ECFC715B170A1F3D6B1824EC1AC0820030050B182028704082C58B121E3480C0B1E3820707125CCCB6B123C78F1244FFA6B478';
wwv_flow_api.g_varchar2_table(101) := '41A3498E0C4062BCE8F225CA950912662C6932A6C89F095BF2ECE87324CDA127F18C0C5AD3E4C78A4677BE84E0330F46A15363CEB438686883061A801168284001038E83106040A04041D00513E2CA9D20528135B702E0CE9D904124DB6A1814E4DD1BD7';
wwv_flow_api.g_varchar2_table(102) := 'EF5ABB6C071336DCCCAD60BD7BEBAEADF698705F096E9B69480C79AE480D881B2B8E2CE1EFDFCA8B31B7458C7AEE65B5A045778E7B59C2D815040E2C8030C1D9BB0A132C0417DE7BC3380516E55A20AEEE37E1DE099C0B273E6141F4D06C8505DF6BDD74';
wwv_flow_api.g_varchar2_table(103) := 'E3E47197C7B5DEB67137E084C9DB55B0591DFAF0E313B0BFAB9DB03AF6F8B3BF9F6B3D36E5FADBC5E7D66D2A102001031140B081FF63EDB525C0737D65569E8310CAD7163314C247DB82F9B1A5C0061958C621331E82A8215F0B62A00C6B0F5A66A16625';
wwv_flow_api.g_varchar2_table(104) := '42B8607B8D7D18E25E19A4F8D732260688A25BCCF01862071DC895E37C947D485807118246600A0622681189A231A01C715382D6A000561266117BFEA9D3A58F9F69594D027A8937410759AEA8CC066306D826981A24C0C074D4B5B98C06706EA7E694D8';
wwv_flow_api.g_varchar2_table(105) := 'A9B3807878EA89803276FA2997459A6D86E8A0782E97653588C62957991A3C8982810B08969969095440247C1D30F0A23522F948A4A9CE915A6A741E7E87DEA8F1DDE51678A3AE0A6B8DB7C6452B74947D270191B9BECA6B5B16115BA4AEAB8516AAB2C4';
wwv_flow_api.g_varchar2_table(106) := 'B2CA5683C228EB2BFFABA1212B4170D062DB8CA627E4265805886DD6568FAE7118EBB932AE161BBB271E891DBC3ECA3B6D8C225E38A18D6B16B96179A7F1FBEB91E63688AEAF7449B0628D1BF8EAEF8F1732BC268E1C027CEE900FDBFB2D0B03C4F4C030';
wwv_flow_api.g_varchar2_table(107) := 'AB05A6D8722427649A0622C3455D5C5FCE9BD772BFB60C5865D32D8A59839C0D475D42EFCA16DE9F0748682E978AB2AC9A698259491C96479F4634C94C035C25D436AB8564D2CAC985C101566FC6D00A608404B263E00DA72BD2D96D3B5CBF0CCC18A648';
wwv_flow_api.g_varchar2_table(108) := '14A497D36AC2C6CDDDDC74237780DDD4591718DDEA4810F7AF7EAFB79E3071ABF92A06818176EBDE6BC7F7F77CC8092EB78AF4414EA805A6069664421450B75C2BE7EB21F0002F6023B1C5EAACB7EEFAEBB0C74E451745D46EFBEDB8E7AEFBEEBCF7EEFB';
wwv_flow_api.g_varchar2_table(109) := 'EFC0072FFC092100003B000000000000000000';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(40404689022174262248)
,p_plugin_id=>wwv_flow_api.id(37808444259222725451)
,p_file_name=>'bar.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
