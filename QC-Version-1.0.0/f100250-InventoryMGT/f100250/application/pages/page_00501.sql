prompt --application/pages/page_00501
begin
--   Manifest
--     PAGE: 00501
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
 p_id=>501
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Form on SMLOCNMAS'
,p_step_title=>'Form on SMLOCNMAS'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170410173009'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(46127797789999323)
,p_name=>'Location Information'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>25
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"COMPCODE",',
'"PARNTLOC",',
'(select LOCLVLDESC from SMLOCNLVL where LOCLVLCODE=SMLOCNMAS.LEVLCODE and COMPCODE=SMLOCNMAS.COMPCODE) LocationLevel,',
'nvl((select LOCDESCR from SMLOCNMAS S where LOCNCODE=SMLOCNMAS.PARNTLOC),'' '') ParentCode,',
'"LOCNCODE",',
'"MENUSLNO",',
'"LEVLCODE",',
'"TERRITORYCODE",',
'"WAREHOUSECD",',
'"LOCDESCR",',
'"CREATEBY",',
'"UPDATEBY",',
'NULL NEXT',
'--decode((select LEAFFLAG from SMLOCNLVL where LOCLVLCODE=SMLOCNMAS.LEVLCODE and COMPCODE=SMLOCNMAS.COMPCODE), ''N'', ''Next >>'', '' '') Next',
'from "#OWNER#"."SMLOCNMAS"',
'where "PARNTLOC"=:P501_PARENTCODE',
'and "LEVLCODE"=:P501_LOCATIONLEVELCODE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46130993085999334)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46131417777999334)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>3
,p_column_heading=>'Rowid'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46131842905999334)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_column_width=>3
,p_column_default=>':P1_CACMPNAM'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46132182223999334)
,p_query_column_id=>4
,p_column_alias=>'PARNTLOC'
,p_column_display_sequence=>8
,p_column_heading=>'Parent location Code'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>15
,p_column_default=>':P60_PARENTCODE'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'PARNTLOC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46132643670999337)
,p_query_column_id=>5
,p_column_alias=>'LOCATIONLEVEL'
,p_column_display_sequence=>5
,p_column_heading=>'Location Level'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46133066511999337)
,p_query_column_id=>6
,p_column_alias=>'PARENTCODE'
,p_column_display_sequence=>7
,p_column_heading=>'Parent Location'
,p_column_alignment=>'CENTER'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46133415411999337)
,p_query_column_id=>7
,p_column_alias=>'LOCNCODE'
,p_column_display_sequence=>9
,p_column_heading=>'Location code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>15
,p_column_default=>':P60_PARENTCODE'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'LOCNCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46133776479999337)
,p_query_column_id=>8
,p_column_alias=>'MENUSLNO'
,p_column_display_sequence=>10
,p_column_heading=>'Menu sl. no'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'MENUSLNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46128258824999324)
,p_query_column_id=>9
,p_column_alias=>'LEVLCODE'
,p_column_display_sequence=>6
,p_column_heading=>'Level Code'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_column_default=>'to_number(:P60_LOCATIONLEVELCODE)'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'LEVLCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46128616434999329)
,p_query_column_id=>10
,p_column_alias=>'TERRITORYCODE'
,p_column_display_sequence=>14
,p_column_heading=>'Territory Code'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'TERRITORYCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46129021237999329)
,p_query_column_id=>11
,p_column_alias=>'WAREHOUSECD'
,p_column_display_sequence=>15
,p_column_heading=>'Warehouse Code'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select WAREHOUSECD||''-''||WHNAME d, WAREHOUSECD r',
'from SMWHMAS',
'where COMPCODE=:P1_CACMPNAM'))
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'WAREHOUSECD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46129386585999329)
,p_query_column_id=>12
,p_column_alias=>'LOCDESCR'
,p_column_display_sequence=>11
,p_column_heading=>'Location Description'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'LOCDESCR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46129836100999329)
,p_query_column_id=>13
,p_column_alias=>'CREATEBY'
,p_column_display_sequence=>12
,p_column_heading=>'Createby'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_column_default=>':app_user'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'CREATEBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46130244288999331)
,p_query_column_id=>14
,p_column_alias=>'UPDATEBY'
,p_column_display_sequence=>13
,p_column_heading=>'Updateby'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_column_default=>':app_user'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'UPDATEBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46130605314999334)
,p_query_column_id=>15
,p_column_alias=>'NEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Next '
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.::P60_PARENTCODE:#LOCNCODE#'
,p_column_linktext=>'#NEXT#'
,p_column_alignment=>'CENTER'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46142571125999352)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>15
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P501_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P501_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>',
'',
'',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46144216817999357)
,p_plug_name=>'Location Master'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>35
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46145787781999357)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>45
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align:right; height:20px; top: 10px;left: 50%;font-size:14px;color:#6633FF; font-weight:bold;"><br>User: &P1_USER_ID.<Br>&P1_USER_NAME.<Br></font>',
'</div>',
'',
'<div style="text-align:center; height:20px; position:absolute;position: absolute; top: 10px;left: 50%; margin-left: -160px;font-size:16px;color:#336633; font-weight:bold;">&P1_COMPNAME.<br><font size=''2'' color=''#336633''>&P1_COMPADD.</font>',
'',
'',
'<div',
'',
'<html>',
'<head>',
'<script type="text/javascript">',
'function startTime()',
'{',
'var today=new Date();',
'var h=today.getHours();',
'var m=today.getMinutes();',
'var s=today.getSeconds();',
'var don="AM"',
'// add a zero in front of numbers<10',
'm=checkTime(m);',
's=checkTime(s);',
'',
'if (h>=12){ don="PM" }',
'if (h>12) { h-=12 }',
'if (h==0) { h=12 }',
'',
'document.getElementById(''txt'').innerHTML=h+":"+m+":"+s+" "+don;',
't=setTimeout(''startTime()'',500);',
'}',
'',
'function checkTime(i)',
'{',
'if (i<10)',
'  {',
'  i="0" + i;',
'  }',
'return i;',
'}',
'</script>',
'</head>',
'',
'<body onload="startTime()">',
'<div id="txt"></div>',
'</body>',
'</html>',
'',
'</div>',
'',
'</div>',
'',
'',
''))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46134194952999337)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(46127797789999323)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Submit'
,p_button_position=>'CHANGE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :FX_MOD_ALLOWED =''Y'' Or :FX_ADD_ALLOWED =''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46134644084999340)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(46127797789999323)
,p_button_name=>'Exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Exit Page'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46135005326999340)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(46127797789999323)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Row'
,p_button_position=>'CREATE2'
,p_button_redirect_url=>'javascript:addRow();'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P501_ROWID is null And :FX_ADD_ALLOWED =''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46135389294999340)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(46127797789999323)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :FX_DEL_ALLOWED =''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46135857730999343)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(46127797789999323)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'ROWID'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46136215838999343)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(46127797789999323)
,p_button_name=>'Top_Level'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'^ Top Level ^'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46136665338999343)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(46127797789999323)
,p_button_name=>'PREV_LEVEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'<< Prev. Level'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P501_PARENTCODE'
,p_button_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(46153965888999367)
,p_branch_action=>'f?p=&APP_ID.:60:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(46154301212999370)
,p_branch_action=>'f?p=&APP_ID.:60:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46143027411999352)
,p_name=>'P501_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46142571125999352)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46143449524999356)
,p_name=>'P501_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(46142571125999352)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46143769343999356)
,p_name=>'P501_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46142571125999352)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46144666211999357)
,p_name=>'P501_PARENTCODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(46144216817999357)
,p_prompt=>'Parentcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46145040384999357)
,p_name=>'P501_LOCATIONLEVELCODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(46144216817999357)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'lvlcode number(4);',
'begin',
'select distinct LEVLCODE into lvlcode from SMLOCNMAS',
'where PARNTLOC=:P501_PARENTCODE;',
'return lvlcode;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Locationlevelcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46145450441999357)
,p_name=>'P501_PREVPARENTCD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(46144216817999357)
,p_prompt=>'Prevparentcd'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46137127584999345)
,p_tabular_form_region_id=>wwv_flow_api.id(46127797789999323)
,p_validation_name=>'PARNTLOC not null'
,p_validation_sequence=>30
,p_validation=>'PARNTLOC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(46134194952999337)
,p_associated_column=>'PARNTLOC'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46137540259999346)
,p_tabular_form_region_id=>wwv_flow_api.id(46127797789999323)
,p_validation_name=>'LOCNCODE not null'
,p_validation_sequence=>40
,p_validation=>'LOCNCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(46134194952999337)
,p_associated_column=>'LOCNCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46137875588999346)
,p_tabular_form_region_id=>wwv_flow_api.id(46127797789999323)
,p_validation_name=>'MENUSLNO must be numeric'
,p_validation_sequence=>50
,p_validation=>'MENUSLNO'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(46134194952999337)
,p_associated_column=>'MENUSLNO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46138308971999346)
,p_tabular_form_region_id=>wwv_flow_api.id(46127797789999323)
,p_validation_name=>'LEVLCODE not null'
,p_validation_sequence=>60
,p_validation=>'LEVLCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(46134194952999337)
,p_associated_column=>'LEVLCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46138733425999348)
,p_tabular_form_region_id=>wwv_flow_api.id(46127797789999323)
,p_validation_name=>'LEVLCODE must be numeric'
,p_validation_sequence=>60
,p_validation=>'LEVLCODE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(46134194952999337)
,p_associated_column=>'LEVLCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46139158130999349)
,p_tabular_form_region_id=>wwv_flow_api.id(46127797789999323)
,p_validation_name=>'LOCDESCR not null'
,p_validation_sequence=>70
,p_validation=>'LOCDESCR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(46134194952999337)
,p_associated_column=>'LOCDESCR'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46139493427999349)
,p_tabular_form_region_id=>wwv_flow_api.id(46127797789999323)
,p_validation_name=>'CREATEBY not null'
,p_validation_sequence=>80
,p_validation=>'CREATEBY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(46134194952999337)
,p_associated_column=>'CREATEBY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46139942164999349)
,p_tabular_form_region_id=>wwv_flow_api.id(46127797789999323)
,p_validation_name=>'UPDATEBY'
,p_validation_sequence=>120
,p_validation=>'UPDATEBY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'UPDATEBY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46140320621999349)
,p_tabular_form_region_id=>wwv_flow_api.id(46127797789999323)
,p_validation_name=>'LOCNCODE_length'
,p_validation_sequence=>140
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'TotalLength number(2):=0;',
'LocnCodeLength number(2):=0;',
'',
'LevelCode number(2):=0;',
'LLength number(2):=0;',
'',
'begin',
'LevelCode:=:LEVLCODE;',
'    for i in 0..LevelCode',
'    loop',
'        begin',
'        select LVLCDLNGTH into  LocnCodeLength',
'            from SMLOCNLVL',
'            where LOCLVLCODE=i and COMPCODE=:P1_CACMPNAM;',
'        TotalLength:=TotalLength+LocnCodeLength;   ',
'        ',
'        EXCEPTION',
'                WHEN others THEN',
'                LocnCodeLength:=0;',
'        end;',
'    end loop;',
'',
'LLength:=length(:LOCNCODE);',
'',
'if TotalLength <> LLength then',
'  raise_application_error (-20001, ''Location Code length is invalid.'');',
'end if;',
'',
'',
'end;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'Location Code length is invalid.'
,p_always_execute=>'Y'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'LOCNCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46140746370999349)
,p_tabular_form_region_id=>wwv_flow_api.id(46127797789999323)
,p_validation_name=>'LOCNCODE_Parent'
,p_validation_sequence=>150
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'PlocLeng number(2):=0;',
'LocnCodeSub varchar2(30);',
'',
'begin',
'PlocLeng :=length(:PARNTLOC);',
'',
'LocnCodeSub :=substr(:LOCNCODE,1,PlocLeng);',
'',
'if LocnCodeSub <> :PARNTLOC then',
'  raise_application_error (-20001, ''Parent Code is invalid.'');',
'end if;',
'',
'',
'end;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'Parent Code Mismatch.'
,p_always_execute=>'Y'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'LOCNCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46141148410999349)
,p_tabular_form_region_id=>wwv_flow_api.id(46127797789999323)
,p_validation_name=>'LOCNCODE_Duplicate'
,p_validation_sequence=>160
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'LocnCodeCnt number(2):=0;',
'',
'begin',
'  if :LOCNCODE <> nvl(:DERIVED$01,0) then',
'    begin',
'    select count(LOCNCODE) into  LocnCodeCnt',
'        from SMLOCNMAS',
'        where LOCNCODE=:LOCNCODE and COMPCODE=:P1_CACMPNAM;  ',
'        ',
'    EXCEPTION',
'            WHEN others THEN',
'            LocnCodeCnt:=0;',
'    end;',
'  end if;',
'',
'if LocnCodeCnt > 0 then',
'  raise_application_error (-20001, ''Duplicate Code'');',
'end if;',
'',
'',
'end;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'Location Code Already exist.'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'LOCNCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46147850385999359)
,p_name=>'Top Level'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(46136215838999343)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46148350988999362)
,p_event_id=>wwv_flow_api.id(46147850385999359)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P501_PARENTCODE,P501_LOCATIONLEVELCODE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46148773458999363)
,p_event_id=>wwv_flow_api.id(46147850385999359)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46149211779999363)
,p_name=>'NodateFound'
,p_event_sequence=>20
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NOT_EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"COMPCODE",',
'"PARNTLOC",',
'(select LOCLVLDESC from SMLOCNLVL where LOCLVLCODE=SMLOCNMAS.LEVLCODE and COMPCODE=SMLOCNMAS.COMPCODE) LocationLevel,',
'nvl((select LOCDESCR from SMLOCNMAS S where LOCNCODE=SMLOCNMAS.PARNTLOC),'' '') ParentCode,',
'"LOCNCODE",',
'"MENUSLNO",',
'"LEVLCODE",',
'"LOCDESCR",',
'"CREATEBY",',
'"UPDATEBY",',
'decode((select LEAFFLAG from SMLOCNLVL where LOCLVLCODE=SMLOCNMAS.LEVLCODE and COMPCODE=SMLOCNMAS.COMPCODE), ''N'', ''Next >>'', '' '') Next',
'from "#OWNER#"."SMLOCNMAS"',
'where "PARNTLOC"=:P501_PARENTCODE',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46149732337999363)
,p_event_id=>wwv_flow_api.id(46149211779999363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(46127797789999323)
,p_attribute_01=>'addRow();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46150162871999363)
,p_name=>'PREV_LEVEL'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(46136665338999343)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46150618482999363)
,p_event_id=>wwv_flow_api.id(46150162871999363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P501_PARENTCODE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P501_PREVPARENTCD'
,p_attribute_07=>'P501_PARENTCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46151097391999365)
,p_event_id=>wwv_flow_api.id(46150162871999363)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P501_LOCATIONLEVELCODE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'loclevel number(3);',
'begin',
'loclevel:= to_number(:P501_LOCATIONLEVELCODE)-2;',
'return loclevel;',
'end;'))
,p_attribute_07=>'P501_LOCATIONLEVELCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46151602659999367)
,p_event_id=>wwv_flow_api.id(46150162871999363)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46151988940999367)
,p_name=>'setmnsl'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input'
,p_bind_type=>'live'
,p_bind_event_type=>'focusin'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46152485084999367)
,p_event_id=>wwv_flow_api.id(46151988940999367)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'comm = ''f06_'' + $(this.triggeringElement ).attr(''id'').substr(4);',
'if($(this.triggeringElement ).val() < 1)',
' {',
' posi = $(this.triggeringElement ).attr(''id'').substr(4);',
' posi = Number(posi);',
' $("#" + comm).val(posi);',
' //$("#" + comm).css("background-color", "yellow");',
' }',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46152884252999367)
,p_name=>'SaveBeforeExit'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46153441751999367)
,p_event_id=>wwv_flow_api.id(46152884252999367)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_SAVE_BEFORE_EXIT'
,p_attribute_01=>'You have made changes to data on this page.  If you navigate away from this page without first saving your data, the changes will be lost.'
,p_attribute_02=>':button'
,p_attribute_03=>'#pRequest'
,p_attribute_04=>'250'
,p_attribute_05=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46146246352999359)
,p_process_sequence=>10
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
'If :P501_PROGNM  is null and :P501_NO is null then',
'   :P501_PROGNM := :FX_PROG_NAME;',
'   :P501_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P501_PROGNM,',
'                                      p_parentnm =>:P501_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P501_PROGNM;',
'   :FX_PAGE_NO := :P501_NO;',
'Elsif :FX_PROG_NAME <> :P501_PROGNM And :FX_PAGE_NO <> :P501_NO Then',
'   :FX_PROG_NAME := :P501_PROGNM;',
'   :FX_PAGE_NO := :P501_NO;',
'End if;',
'',
'',
'Begin',
' if :P501_PARENTCODE is null then',
'  select PARNTLOC into :P501_PARENTCODE from SMLOCNMAS where LEVLCODE = (select min(LEVLCODE) from SMLOCNMAS where COMPCODE=:P1_CACMPNAM);',
' --:P501_PARENTCODE:=nvl(:P501_PARENTCODE,''0'');',
' end if;',
'',
' if :P501_PARENTCODE > 0 then',
'    select distinct PARNTLOC into :P501_PREVPARENTCD from SMLOCNMAS where LOCNCODE=:P501_PARENTCODE;',
' else',
'    :P501_PREVPARENTCD:= ''0'';',
' end if;',
'',
'declare',
'levelcodetemp number(3);',
'lvlcode number(3);',
'begin',
'',
'select count(LEVLCODE) into levelcodetemp from SMLOCNMAS where PARNTLOC=:P501_PARENTCODE;',
'',
'if levelcodetemp > 0 then',
'    select distinct LEVLCODE into lvlcode from SMLOCNMAS where PARNTLOC=:P501_PARENTCODE;',
'    :P501_LOCATIONLEVELCODE:=lvlcode;',
'else',
'    select distinct LEVLCODE into lvlcode from SMLOCNMAS where PARNTLOC=:P501_PREVPARENTCD;',
'    :P501_LOCATIONLEVELCODE:=lvlcode + 1;',
'end if;',
'',
'end;',
'',
'/*',
'begin',
'htp.p(''<script language="javascript">'');',
'htp.p(''alert("alert example");'');',
'htp.p(''</script>'');',
'end;',
'*/',
' --if :P501_LOCATIONLEVELCODE > -1 then ',
'    --:P501_LOCATIONLEVELCODE:=nvl(:P501_LOCATIONLEVELCODE+1,1);',
' --else',
'    --:P501_LOCATIONLEVELCODE:=1;',
' --end if;',
'',
'--Exception',
' --when no_data_found then',
'  --:P4_PROGNAME := ''ROOT'';',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46146602476999359)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from SMLOCNMAS'
,p_attribute_02=>'SMLOCNMAS'
,p_attribute_03=>'P501_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46141368128999349)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(46127797789999323)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'SMLOCNMAS'
,p_attribute_03=>'ROWID'
,p_process_error_message=>'Location code already exist.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(46134194952999337)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46141846025999352)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(46127797789999323)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'SMLOCNMAS'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46147057020999359)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SMLOCNMAS'
,p_attribute_02=>'SMLOCNMAS'
,p_attribute_03=>'P501_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46147403108999359)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(46135857730999343)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46142203815999352)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(46127797789999323)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'before_update_check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':UPDATEBY:=:app_user;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'UPDATEBY'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
