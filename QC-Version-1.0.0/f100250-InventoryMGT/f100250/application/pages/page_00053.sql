prompt --application/pages/page_00053
begin
--   Manifest
--     PAGE: 00053
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>53
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_tab_set=>'TS1'
,p_name=>'Update '
,p_step_title=>'Update '
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function findPosX(obj)  // Get full right offset',
'{',
'   var curleft = 0;',
'   if (obj.offsetParent) {',
'      while (obj.offsetParent) {',
'          curleft += obj.offsetLeft',
'	  obj = obj.offsetParent;',
'      }',
'   }',
'   else if (obj.x)',
'      curleft += obj.x;',
'',
'   return curleft;',
'}',
'',
'function findPosY(obj)  // Get full top offset',
'{',
'   var curtop = 0;',
'   if (obj.offsetParent) {',
'       while (obj.offsetParent) {',
'           curtop += obj.offsetTop',
'           obj = obj.offsetParent;',
'       }',
'   }',
'   else if (obj.y)',
'       curtop += obj.y;',
'',
'   return curtop;',
'}',
'',
'',
'function ShowPopup(hv_item, hv_pop)',
'{',
'   hp = document.getElementById(hv_pop);',
'',
'   // Set position of hover-over popup',
'   hp.style.top = findPosY(hv_item) - 20;',
'   hp.style.left = findPosX(hv_item) + 120;',
'',
'   // Set popup to visible',
'   hp.style.visibility = "Visible";',
'}',
'',
'function HidePopup(hv_pop)',
'{',
'   hp = document.getElementById(hv_pop);',
'   hp.style.visibility = "Hidden";',
'}',
'',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140736'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(63821025686182249)
,p_name=>'Tabular Form'
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"ITEMCODE",',
'"ITEMDES1",',
'"SALERATE",',
'"LUOMCODE",',
'"WARECODE",',
'"ORDER_ITEM_ID",',
'"ORDER_ID"',
'from "#OWNER#"."APEX_ORDER_ITEMS1"',
''))
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63823925422182274)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63821333437182251)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'APEX_ORDER_ITEMS1'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63821421991182251)
,p_query_column_id=>3
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>3
,p_column_heading=>'Itemcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_cattributes=>'onMouseOver="ShowPopup(this,''hv_message'');" onMouseOut="HidePopup(''hv_message'');"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'APEX_ORDER_ITEMS1'
,p_ref_column_name=>'ITEMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63821527879182251)
,p_query_column_id=>4
,p_column_alias=>'ITEMDES1'
,p_column_display_sequence=>4
,p_column_heading=>'Itemdes1'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'APEX_ORDER_ITEMS1'
,p_ref_column_name=>'ITEMDES1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63821638329182252)
,p_query_column_id=>5
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>5
,p_column_heading=>'Salerate'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'APEX_ORDER_ITEMS1'
,p_ref_column_name=>'SALERATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63821719558182252)
,p_query_column_id=>6
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>6
,p_column_heading=>'Luomcode'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'APEX_ORDER_ITEMS1'
,p_ref_column_name=>'LUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63821824561182252)
,p_query_column_id=>7
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>7
,p_column_heading=>'Warecode'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'APEX_ORDER_ITEMS1'
,p_ref_column_name=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63821924222182252)
,p_query_column_id=>8
,p_column_alias=>'ORDER_ITEM_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Order Item Id'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'APEX_ORDER_ITEMS1'
,p_ref_column_name=>'ORDER_ITEM_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63822015163182252)
,p_query_column_id=>9
,p_column_alias=>'ORDER_ID'
,p_column_display_sequence=>9
,p_column_heading=>'Order Id'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'APEX_ORDER_ITEMS1'
,p_ref_column_name=>'ORDER_ID'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64413923020112147)
,p_plug_name=>'message'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>25
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="hv_message" style="visibility:hidden; position:absolute;">',
'<table bgcolor="gray">',
'<tr>',
' <td width=100 align="center"><font color="white">NOTE on ENAME column</font></td>',
'</tr>',
'<tr>',
' <td width=200 align="center" bgcolor="white">This EName column is protected (modifiable by authorized users only). Duplicate employee name is not allowed.</td>',
'</tr></table>',
'</div>',
''))
,p_plug_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63822433216182268)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(63821025686182249)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63822228659182268)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(63821025686182249)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Submit'
,p_button_position=>'CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63822127484182268)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(63821025686182249)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63822328833182268)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(63821025686182249)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63826730536333264)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(63821025686182249)
,p_button_name=>'ADF'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Adf'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(63824020840182274)
,p_branch_action=>'f?p=&APP_ID.:53:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(63823241262182271)
,p_tabular_form_region_id=>wwv_flow_api.id(63821025686182249)
,p_validation_name=>'SALERATE must be numeric'
,p_validation_sequence=>40
,p_validation=>'SALERATE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(63822228659182268)
,p_associated_column=>'SALERATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(63823445195182273)
,p_tabular_form_region_id=>wwv_flow_api.id(63821025686182249)
,p_validation_name=>'ORDER_ITEM_ID must be numeric'
,p_validation_sequence=>70
,p_validation=>'ORDER_ITEM_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(63822228659182268)
,p_associated_column=>'ORDER_ITEM_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63823517537182273)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(63821025686182249)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'APEX_ORDER_ITEMS1'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63822228659182268)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63823715110182273)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(63821025686182249)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'APEX_ORDER_ITEMS1'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63826522786321602)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(63821025686182249)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'asd'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' INSERT INTO apex_order_items1(ITEMCODE, ITEMDES1, SALERATE, LUOMCODE, WARECODE, ORDER_ITEM_ID, ORDER_ID)',
' values (''15/06/1321'',''Chromic Chloride'',12,''PCS'',''W01'',1,''12'');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63826730536333264)
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'insert '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64192332391051544)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'query'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_deptno           VARCHAR2 (40)   := TO_NUMBER (apex_application.g_x01);',
'   v_id               VARCHAR2 (40)   := TO_NUMBER (apex_application.g_x02);',
'   v_ename            VARCHAR2 (4000) := ''{"KEY0": {"NAME":"- Select Employee -","VALUE":"","SELECTED":""},'';',
'   v_selected_empno   VARCHAR2 (40);',
'   v_count            NUMBER          := 1;',
'BEGIN',
'   IF v_id IS NOT NULL',
'   THEN',
'      SELECT empno',
'        INTO v_selected_empno',
'        FROM emp_log',
'       WHERE ID = v_id;',
'   END IF;',
'',
'   FOR c IN (SELECT ename, empno',
'               FROM emp',
'              WHERE deptno = v_deptno)',
'   LOOP',
'      v_ename :=',
'            v_ename',
'         || ''"KEY''',
'         || v_count',
'         || ''":{"NAME":"''',
'         || c.ename',
'         || ''","VALUE":"''',
'         || c.empno',
'         || ''","SELECTED":"''',
'         || CASE',
'               WHEN c.empno = v_selected_empno',
'                  THEN c.ename',
'               ELSE NULL',
'            END',
'         || ''"},'';',
'      v_count := v_count + 1;',
'   END LOOP;',
'',
'   v_ename := RTRIM (v_ename, '','');',
'   v_ename := v_ename || ''}'';',
'   HTP.p (v_ename);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
