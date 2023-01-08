prompt --application/pages/page_00243
begin
--   Manifest
--     PAGE: 00243
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
 p_id=>243
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Service Engineer Master Form'
,p_page_mode=>'MODAL'
,p_step_title=>'Service Engineer Master Form'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function calculateTotal1(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f04_''+vRow).value=',
'document.getElementById(''P243_SEQID'').value;',
'}',
'</script>',
'',
'',
'<script type="text/javascript">',
'function calculateTotal3(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P243_TABULARITEMCODE'').value=',
'    html_GetElement(''f06_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P243_TABULARITEMCODE'').trigger(''click'');',
'});',
'html_GetElement(''f17_''+vRow).value=',
'document.getElementById(''P243_COSTCODE'').value;',
'}',
'</script>'))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171012111007'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(135863055068942838)
,p_plug_name=>'button_region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>55
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(135865033589942839)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>45
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P243_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P243_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(135866634450942841)
,p_name=>'Engineer Master'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>25
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>8
,p_display_column=>3
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"COMPCODE",',
'"SMANTYPE",',
'"SMANCODE",',
'"SMANNAME",',
'"SUPRCODE",',
'"HELPRCD1",',
'"HELPRCD2",',
'"TOTSALES",',
'"COMMRATE",',
'"COMMVALU",',
'"STATCODE",',
'"USERNAME",',
'"CATEGORY",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"COSTCODE",',
'"LEADPERS",',
'"TEAMCODE"',
'from "#OWNER#"."NMSMNMAS"',
'where SMANCODE=:P243_QRYSLSMAN',
'',
''))
,p_ajax_items_to_submit=>'P243_QRYSLSMAN'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135867783376942844)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135868257571942845)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135868568127942845)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>3
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_column_default=>':COMPCODE'
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135869047357942845)
,p_query_column_id=>4
,p_column_alias=>'SMANTYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  nmcoddes||'' - ''||nmsofcde  d, nmsofcde r',
'    FROM nmcodmas',
'   WHERE compcode = :compcode  AND nmhrdcde = ''TYP'' AND nmsofcde = ''RE''',
'ORDER BY nmsofcde',
''))
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_cattributes=>'onchange="calculateTotal1(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'SMANTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135869387829942847)
,p_query_column_id=>5
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>5
,p_column_heading=>'Sales Man Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_pk_col_source_type=>'F'
,p_pk_col_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_engcode varchar2(10);',
'begin',
'select lpad(SALESMAN_SEQ.nextval,6,0) into v_engcode from dual;',
'',
'return v_engcode;',
'end;'))
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'SMANCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135869861023942847)
,p_query_column_id=>6
,p_column_alias=>'SMANNAME'
,p_column_display_sequence=>6
,p_column_heading=>'Sales Man Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'SMANNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135870180641942847)
,p_query_column_id=>7
,p_column_alias=>'SUPRCODE'
,p_column_display_sequence=>7
,p_column_heading=>'Warehouse Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   waredesc||'' - ''||warecode d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'ORDER BY warecode'))
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_cattributes=>'onchange="calculateTotal3(this);"'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'SUPRCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135870639765942847)
,p_query_column_id=>8
,p_column_alias=>'HELPRCD1'
,p_column_display_sequence=>8
,p_column_heading=>'Helprcd1'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'HELPRCD1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135871046429942847)
,p_query_column_id=>9
,p_column_alias=>'HELPRCD2'
,p_column_display_sequence=>9
,p_column_heading=>'Helprcd2'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'HELPRCD2'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135871433428942847)
,p_query_column_id=>10
,p_column_alias=>'TOTSALES'
,p_column_display_sequence=>10
,p_column_heading=>'Totsales'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'TOTSALES'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135871768714942847)
,p_query_column_id=>11
,p_column_alias=>'COMMRATE'
,p_column_display_sequence=>11
,p_column_heading=>'Commrate'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'COMMRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135872260550942847)
,p_query_column_id=>12
,p_column_alias=>'COMMVALU'
,p_column_display_sequence=>12
,p_column_heading=>'Commvalu'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'COMMVALU'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135872581554942847)
,p_query_column_id=>13
,p_column_alias=>'STATCODE'
,p_column_display_sequence=>13
,p_column_heading=>'Statcode'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'STATCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135873065965942849)
,p_query_column_id=>14
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>14
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.usercode||'' - ''||s.username d,s.usercode r',
'  FROM syusrmas s',
' WHERE s.valdflag = ''A'' AND s.usertype = ''L'''))
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'USERNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135873382358942849)
,p_query_column_id=>15
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>15
,p_column_heading=>'Category'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'CATEGORY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135873782880942849)
,p_query_column_id=>16
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>16
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_column_default=>':APP_USER'
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135874194917942849)
,p_query_column_id=>17
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>17
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_column_default=>'SYSDATE'
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135874635069942849)
,p_query_column_id=>18
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>18
,p_column_heading=>'Cost Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'COSTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135867010432942841)
,p_query_column_id=>19
,p_column_alias=>'LEADPERS'
,p_column_display_sequence=>19
,p_column_heading=>'Leadpers'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'LEADPERS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135867425689942844)
,p_query_column_id=>20
,p_column_alias=>'TEAMCODE'
,p_column_display_sequence=>20
,p_column_heading=>'Teamcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_column_default=>'P243_TEAMCODE'
,p_column_default_type=>'ITEM'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSMNMAS'
,p_ref_column_name=>'TEAMCODE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(135877054317942853)
,p_plug_name=>'Right region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>35
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_column=>11
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(165577191641980176)
,p_plug_name=>'Left region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>5
,p_plug_grid_column_span=>2
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135864247332942838)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(135863055068942838)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:242:&SESSION.::&DEBUG.:243::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135864619850942838)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(135863055068942838)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135863822271942838)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(135863055068942838)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P243_QRYSLSMAN'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135875004948942850)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(135866634450942841)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_button_condition=>'P243_QRYSLSMAN'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135863372812942838)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(135863055068942838)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P243_QRYSLSMAN'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(135881363465942856)
,p_branch_action=>'f?p=&APP_ID.:243:&SESSION.::&DEBUG.:243::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135865374513942841)
,p_name=>'P243_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(135865033589942839)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135865787374942841)
,p_name=>'P243_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(135865033589942839)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135866262719942841)
,p_name=>'P243_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(135865033589942839)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135875448012942850)
,p_name=>'P243_COMPCODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(135866634450942841)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135877423934942853)
,p_name=>'P243_SEQID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(135877054317942853)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LPAD (NVL (MAX (TO_NUMBER ((smancode))), 0) + 1, 6, 0)',
'  FROM nmsmnmas'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135877845603942853)
,p_name=>'P243_QRYSLSMAN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(135877054317942853)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135878222363942853)
,p_name=>'P243_TABULARITEMCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(135877054317942853)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135878662909942853)
,p_name=>'P243_COSTCODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(135877054317942853)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136079073113130086)
,p_name=>'P243_TEAMCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(135866634450942841)
,p_item_default=>'T01'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(135879371824942853)
,p_name=>'Change on warecode in tabular form'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P243_TABULARITEMCODE'
,p_condition_element=>'P243_TABULARITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135879956882942856)
,p_event_id=>wwv_flow_api.id(135879371824942853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P243_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT  distinct COSTCODE',
'into :P243_COSTCODE',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode  AND warecode= :P243_TABULARITEMCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;'))
,p_attribute_02=>'P243_TABULARITEMCODE'
,p_attribute_03=>'P243_COSTCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(135880353151942856)
,p_name=>'add rows javascript'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135880858677942856)
,p_event_id=>wwv_flow_api.id(135880353151942856)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $mydiv = $("#f14_0011");',
'    if ($mydiv.length){',
'/*alert(''test'');*/',
'}',
'else',
'{',
'for (i = 0; i <=3; i++)',
'{',
'javascript:addRow();',
'};',
'};',
'/*document.getElementById(''ITEMDESC'').readOnly = true;*/',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(135879038278942853)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- code update by Md. Zahidul Islam--',
'begin',
'select PROGNAME into :FX_PROG_NAME from SYMENMAS where PAGEID=:APP_PAGE_ID;',
'',
':FX_PAGE_NO:=:APP_PAGE_ID;',
'exception',
'',
'when no_data_found then',
' --apex_application.g_print_success_message :=''Error..No page found'';',
' htp.init();',
' owa_util.redirect_url(''f?p=''||:APP_ID||'':1:''||:APP_SESSION, true);',
' --apex_application.g_print_success_message :=''Error..No page found'';',
'when too_many_rows then',
' raise_application_error(-20003,''Too Many Page ID found in database'');',
'end;',
'--- code updated--',
'',
'',
'If :P243_PROGNM  is null and :P243_NO is null then',
'   :P243_PROGNM := :FX_PROG_NAME;',
'   :P243_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P243_PROGNM,',
'                                      p_parentnm =>:P243_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P243_OPRSTAMP := :app_user;',
'  --:P243_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P243_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P243_PROGNM;',
'   :FX_PAGE_NO := :P243_NO;',
'Elsif :FX_PROG_NAME <> :P243_PROGNM And :FX_PAGE_NO <> :P243_NO Then',
'   :FX_PROG_NAME := :P243_PROGNM;',
'   :FX_PAGE_NO := :P243_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(135875852101942850)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(135866634450942841)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMSMNMAS'
,p_attribute_03=>'SMANCODE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(135876232608942852)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(135866634450942841)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMSMNMAS'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(135876588796942853)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(135866634450942841)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into nmsmnmas for tabular'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO nmsmnmas',
'            (compcode, smantype, smancode, smanname, suprcode, helprcd1,',
'             helprcd2, totsales, commrate, commvalu, statcode, username,',
'             CATEGORY, oprstamp, timstamp, costcode, leadpers, teamcode',
'            )',
'     VALUES (:P243_COMPCODE, :SMANTYPE, lpad(SALESMAN_SEQ.nextval,6,0), :SMANNAME, :SUPRCODE, NULL,',
'             NULL, NULL, NULL, NULL, NULL, :USERNAME,',
'             NULL, :APP_USER, sysdate, :COSTCODE, NULL, NULL',
'            );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(66889416374747000)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'insert successfully.........'
);
wwv_flow_api.component_end;
end;
/
