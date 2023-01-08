prompt --application/pages/page_00128
begin
--   Manifest
--     PAGE: 00128
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
 p_id=>128
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'popup lov test'
,p_step_title=>'Form on EMP'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function CheckName()',
'{ ',
'var get = new htmldb_Get(null,$x(''pFlowId'').value,''APPLICATION_PROCESS=NameExists'',0); ',
'',
'get.add(''ID'', $x(''P128_SAL'').value) ',
'gReturn = get.get();',
'',
'if(gReturn) // if function return true ',
'{',
'alert($x(''P128_SAL'').value + '' '' + $x(''P128_ENAME'').value + '' already exists in the database. Please verify that this is not the same Person.'');',
'    window.document.getElementById(''P128_SAL'').focus();',
'}',
'get = null;',
'}',
'//-->',
'</script>',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'  function callMyPopup(formItem1,formItem2,formItem3) {',
'    var formVal1 = document.getElementById(formItem1).value;',
'    var formVal2 = document.getElementById(formItem2).value;',
'    var formVal3 = document.getElementById(formItem3).value;',
'    var url;',
'  url = ''f?p=&APP_ID.:127:&APP_SESSION.::::P127_ENAME,P127_JOB,P127_SAL:'' + formVal1 + '','' + formVal2 + '','' + formVal3 ;',
'  w = open(url,"winLov","Scrollbars=1,resizable=1,width=800,height=600");',
'  if (w.opener == null)',
'  w.opener = self;',
'  w.focus();',
'  }',
'',
'',
'var Noradle = require(''..'')',
'  , dbc = new Noradle.DBCall(''orbrgs'', ''orbrgs'')',
'  ;',
'Noradle.DBCall.init({oracle_port : 1523});',
'',
'function UnitTest(){',
'  dbc.call(''db_src_b.example'', function(status, page, headers){',
'    console.log(''status code is %d'', status);',
'    if (status != 200) {',
'      console.error(''status is'', status);',
'      return;',
'    }',
'    console.log(''\n\nthe original result page is :'');',
'    console.log(page);',
'    console.log(''\n\n'', ''the parsed result sets is :'');',
'    var rss = Noradle.RSParser.parse(page);',
'    for (var n in rss) {',
'      var rs = rss[n];',
'      console.log(''\n'', ''ResultSet'', n, ''is :'');',
'      console.log(rs);',
'    }',
'  });',
'}',
'',
'var eleTables = document.getElementsByTagName("table");',
'for (var i=1;i',
'var tId = eleTables[i].id;',
'if(tId.substring(0,7)!=''''){',
'if(tId.substring(0,7)==''report_''){',
'var originalId = i;',
'var tableIds = eleTables[i].id;',
'tableId = tableIds;',
'return tableId;',
'} } }',
'',
'var link = document.createElement(''a'');',
'var image = document.createElement(''img'');',
'var span = document.createElement(''span'');',
'link.setAttribute(''href'',''javascript:genList0_f16_0("''+a1+''","''+filters+''")'');',
'link.className="dark";',
'image.setAttribute(''src'',''/i/list_gray.gif'');',
'',
'',
'w = open("wwv_flow_utilities.gen_popup_list" +',
'"?p_filter=" +',
'"&p_name=" + escape(filters) + "&p_element_index=" + escape (a1) +',
'"&p_form_index=" + escape(''0'') + "&p_max_elements=" + escape('''') +',
'"&p_escape_html=" + escape('''') + "&p_ok_to_query=" + escape(''YES'') +',
'"&p_flow_id=" + escape(appId) + "&p_page_id=" + escape(pageId) +',
'"&p_session_id=" + escape(l_field) + "&p_eval_value=" + escape('''') +',
'"&p_translation=" + escape(''NO'') + "&p_lov_checksum=Dynamicchecksum',
'"winLov", "Scrollbars=1,resizable=1,width=800,height=600");',
'if (w.opener == null) w.opener = self; w.focus();',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124816'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60073787247726387)
,p_plug_name=>'Form on EMP'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(63822174409137508)
,p_name=>'Tabular Form'
,p_region_name=>'table'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"EMPNO",',
'"ENAME",',
'"DEPTNO",',
'"SAL",',
'"COMM",',
'"MGR",',
'"HIREDATE",',
'"JOB",',
'"TICKED",',
'"MODIFYDT"',
'from "#OWNER#"."EMP"',
''))
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63838318151137521)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63822790718137510)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63823215931137510)
,p_query_column_id=>3
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>3
,p_column_heading=>'Empno'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'EMPNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63823633007137510)
,p_query_column_id=>4
,p_column_alias=>'ENAME'
,p_column_display_sequence=>4
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>'select ename d,ename r from emp'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'ENAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63824000862137510)
,p_query_column_id=>5
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>5
,p_column_heading=>'Deptno'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'DEPTNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63824459880137510)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'Sal'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'SAL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63824828433137510)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'Comm'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'COMM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63825247839137510)
,p_query_column_id=>8
,p_column_alias=>'MGR'
,p_column_display_sequence=>8
,p_column_heading=>'Mgr'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'MGR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63825633334137510)
,p_query_column_id=>9
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>9
,p_column_heading=>'Hiredate'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'HIREDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63825990104137512)
,p_query_column_id=>10
,p_column_alias=>'JOB'
,p_column_display_sequence=>10
,p_column_heading=>'Job'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'JOB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63826448553137512)
,p_query_column_id=>11
,p_column_alias=>'TICKED'
,p_column_display_sequence=>11
,p_column_heading=>'Ticked'
,p_disable_sort_column=>'N'
,p_column_width=>1
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'TICKED'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63826841354137512)
,p_query_column_id=>12
,p_column_alias=>'MODIFYDT'
,p_column_display_sequence=>12
,p_column_heading=>'Modifydt'
,p_disable_sort_column=>'N'
,p_column_width=>7
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'MODIFYDT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63830682619137518)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(63822174409137508)
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
 p_id=>wwv_flow_api.id(60074346778726393)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(60073787247726387)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P128_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63830504420137518)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(63822174409137508)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(60074515553726393)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(60073787247726387)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63830395625137518)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(63822174409137508)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(60074217578726393)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(60073787247726387)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P128_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(60074461098726393)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(60073787247726387)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P128_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63830655930137518)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(63822174409137508)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(60076100672726401)
,p_branch_action=>'f?p=&APP_ID.:128:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(63838749327137521)
,p_branch_action=>'f?p=&APP_ID.:128:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(63830504420137518)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60076487432726412)
,p_name=>'P128_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(60073787247726387)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60076813383726422)
,p_name=>'P128_ENAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(60073787247726387)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ename'
,p_source=>'ENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60077218436726426)
,p_name=>'P128_SAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(60073787247726387)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sal'
,p_post_element_text=>'<a href="javascript:callMyPopup(''P128_ENAME'',''P128_JOB'',''P128_SAL'');">Click for LOV</a>'
,p_source=>'SAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_item_comment=>'onblur="CheckName()"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60077638961726430)
,p_name=>'P128_JOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(60073787247726387)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60080272828731848)
,p_name=>'P128_LINK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(60073787247726387)
,p_prompt=>'<a href="javascript:callMyPopup(''P128_ENAME'',''P128_JOB'',''P128_SAL'');">Click for LOV</a>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60505743944215369)
,p_name=>'P128_CHECK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(60073787247726387)
,p_prompt=>'Check'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:CHECK;Y'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(89183597360721923)
,p_name=>'P128_IMAGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(60073787247726387)
,p_prompt=>'Image'
,p_source=>'return ''<img src="'' || APEX_UTIL.GET_BLOB_FILE_SRC(''globe'',11,null,''inline'') || ''" />'';'
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(63832310844137519)
,p_tabular_form_region_id=>wwv_flow_api.id(63822174409137508)
,p_validation_name=>'EMPNO must be numeric'
,p_validation_sequence=>20
,p_validation=>'EMPNO'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(63830504420137518)
,p_associated_column=>'EMPNO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(63832749033137519)
,p_tabular_form_region_id=>wwv_flow_api.id(63822174409137508)
,p_validation_name=>'DEPTNO must be numeric'
,p_validation_sequence=>40
,p_validation=>'DEPTNO'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(63830504420137518)
,p_associated_column=>'DEPTNO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(63833145814137519)
,p_tabular_form_region_id=>wwv_flow_api.id(63822174409137508)
,p_validation_name=>'SAL must be numeric'
,p_validation_sequence=>50
,p_validation=>'SAL'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(63830504420137518)
,p_associated_column=>'SAL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(63833536860137519)
,p_tabular_form_region_id=>wwv_flow_api.id(63822174409137508)
,p_validation_name=>'COMM must be numeric'
,p_validation_sequence=>60
,p_validation=>'COMM'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(63830504420137518)
,p_associated_column=>'COMM'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(63833964444137519)
,p_tabular_form_region_id=>wwv_flow_api.id(63822174409137508)
,p_validation_name=>'HIREDATE must be a valid date'
,p_validation_sequence=>80
,p_validation=>'HIREDATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(63830504420137518)
,p_associated_column=>'HIREDATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(60505966798219957)
,p_name=>'click check'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P128_CHECK'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(60506357099219962)
,p_event_id=>wwv_flow_api.id(60505966798219957)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'UnitTest();'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(60079058321726437)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EMP'
,p_attribute_02=>'EMP'
,p_attribute_03=>'P128_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63834227399137519)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(63822174409137508)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'EMP'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63830504420137518)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63834629852137519)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(63822174409137508)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'EMP'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(60079414799726440)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EMP'
,p_attribute_02=>'EMP'
,p_attribute_03=>'P128_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(60079842261726440)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(60074461098726393)
);
wwv_flow_api.component_end;
end;
/
