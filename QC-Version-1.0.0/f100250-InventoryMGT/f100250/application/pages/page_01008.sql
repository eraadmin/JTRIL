prompt --application/pages/page_01008
begin
--   Manifest
--     PAGE: 01008
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
 p_id=>1008
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Menu Master'
,p_alias=>'SYMENTRE'
,p_page_mode=>'MODAL'
,p_step_title=>'Menu Master'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_protection_level=>'C'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180830132911'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(82114006422517459)
,p_plug_name=>'Menu Master'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(82116746725517483)
,p_name=>'Path'
,p_parent_plug_id=>wwv_flow_api.id(82114006422517459)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>1
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'nvl(:P1008_PROGNAME,''ROOT'') "PROGNAME",',
':P1008_PROGDESC "PROGDESC",',
'Decode(nvl(:P1008_PROGNAME,''ROOT''), ''ROOT'', '' '', ''<< Back'') Back',
'from dual'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1008_PROGNAME,P1008_PROGDESC'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(82117145068517492)
,p_query_column_id=>1
,p_column_alias=>'PROGNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Program Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82117487808517500)
,p_query_column_id=>2
,p_column_alias=>'PROGDESC'
,p_column_display_sequence=>2
,p_column_heading=>'Program Desc'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82117945079517501)
,p_query_column_id=>3
,p_column_alias=>'BACK'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:1008:&SESSION.::&DEBUG.::P1008_PROGNAME:#PARENTNM#'
,p_column_linktext=>'#BACK#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(82118329915517503)
,p_name=>'Menu Details'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>1
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"MODLCODE",',
'"PARENTNM",',
'"PROGNAME",',
'"PROGDESC",',
'"MENUSLNO",',
'"LEVLCODE",',
'"MENULEAF",',
'"HELPTEXT",',
'"OPRSTAMP",',
'"TIMSTAMP", decode("MENULEAF", ''M'', ''Next >>'', '' '') Next',
'from "#OWNER#"."SYMENTRE"',
'where PARENTNM = nvl(:P1008_PROGNAME,''ROOT'')',
'Order by "MENUSLNO"'))
,p_ajax_items_to_submit=>'P1008_PROGNAME'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>100000
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
 p_id=>wwv_flow_api.id(82118676985517503)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82119159168517503)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'SYMENTRE'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82119557051517508)
,p_query_column_id=>3
,p_column_alias=>'MODLCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Modlcode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_column_default=>'P1008_MODLCODE'
,p_column_default_type=>'ITEM'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'SYMENTRE'
,p_ref_column_name=>'MODLCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82119880697517508)
,p_query_column_id=>4
,p_column_alias=>'PARENTNM'
,p_column_display_sequence=>5
,p_column_heading=>'Parentnm'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_column_default=>'P1008_PROGNAME'
,p_column_default_type=>'ITEM'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'SYMENTRE'
,p_ref_column_name=>'PARENTNM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82120293709517508)
,p_query_column_id=>5
,p_column_alias=>'PROGNAME'
,p_column_display_sequence=>6
,p_column_heading=>'Program Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select progdesc, progname from symenmas where progname not in (Select progname from symentre) ',
'order by progdesc'))
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'SYMENTRE'
,p_ref_column_name=>'PROGNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82120669455517509)
,p_query_column_id=>6
,p_column_alias=>'PROGDESC'
,p_column_display_sequence=>7
,p_column_heading=>'Program Desc'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>50
,p_cattributes=>'style="border: 1px solid rgb(204, 204, 204); padding: 2px;" '
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'SYMENTRE'
,p_ref_column_name=>'PROGDESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82121107074517509)
,p_query_column_id=>7
,p_column_alias=>'MENUSLNO'
,p_column_display_sequence=>8
,p_column_heading=>'SL No'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>4
,p_cattributes=>'style="border: 1px solid rgb(204, 204, 204); padding: 2px;" '
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'SYMENTRE'
,p_ref_column_name=>'MENUSLNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82121564407517509)
,p_query_column_id=>8
,p_column_alias=>'LEVLCODE'
,p_column_display_sequence=>9
,p_column_heading=>'Level Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_column_default=>'P1008_LEVLCODE'
,p_column_default_type=>'ITEM'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'SYMENTRE'
,p_ref_column_name=>'LEVLCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82121909621517509)
,p_query_column_id=>9
,p_column_alias=>'MENULEAF'
,p_column_display_sequence=>10
,p_column_heading=>'Menu/Leaf'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'SELECT_LIST'
,p_inline_lov=>'STATIC:Menu;M,Leaf;L'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'SYMENTRE'
,p_ref_column_name=>'MENULEAF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82122295116517511)
,p_query_column_id=>10
,p_column_alias=>'HELPTEXT'
,p_column_display_sequence=>11
,p_column_heading=>'Help Text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>60
,p_cattributes=>'style="border: 1px solid rgb(204, 204, 204); padding: 2px;" '
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'SYMENTRE'
,p_ref_column_name=>'HELPTEXT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82122726535517511)
,p_query_column_id=>11
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>12
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_column_default=>':app_user'
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'SYMENTRE'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82123071541517511)
,p_query_column_id=>12
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>13
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MM-YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'NO'
,p_column_width=>30
,p_column_default=>'sysdate'
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'SYMENTRE'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82123521583517511)
,p_query_column_id=>13
,p_column_alias=>'NEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Next'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:1008:&SESSION.::&DEBUG.::P1008_PROGNAME:#PROGNAME#'
,p_column_linktext=>'#NEXT#'
,p_lov_show_nulls=>'NO'
,p_column_width=>15
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127491132427071399)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(82123927665517512)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(82118329915517503)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :F100_ADD_ALLOWED = ''Y'' THEN',
' RETURN TRUE;',
'ELSE',
' RETURN FALSE;',
'END IF;'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(82124752263517515)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(127491132427071399)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(82125121170517515)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(127491132427071399)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(82124305016517515)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(127491132427071399)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :F100_MOD_ALLOWED = ''Y'' OR :F100_ADD_ALLOWED = ''Y'' THEN',
' RETURN TRUE;',
'ELSE',
' RETURN FALSE;',
'END IF;'))
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(82131580153517532)
,p_branch_action=>'f?p=&APP_ID.:1008:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56494959822294098)
,p_name=>'P1008_RANDOMNO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(82114006422517459)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_random number;',
'begin',
'select dbms_random.value(1,9) num into v_random from dual;',
'return v_random;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Randomno'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82114390475517470)
,p_name=>'P1008_PARENTNM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(82114006422517459)
,p_prompt=>'Parent Name'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82114865645517476)
,p_name=>'P1008_PROGNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(82114006422517459)
,p_prompt=>'Program Name'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82115183894517476)
,p_name=>'P1008_MODLCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(82114006422517459)
,p_prompt=>'Module Code'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82115651540517478)
,p_name=>'P1008_LEVLCODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(82114006422517459)
,p_prompt=>'Level Code'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82115942370517481)
,p_name=>'P1008_LEVEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(82114006422517459)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82116366656517481)
,p_name=>'P1008_PROGDESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(82114006422517459)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_begin_on_new_field=>'N'
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82126007275517518)
,p_tabular_form_region_id=>wwv_flow_api.id(82118329915517503)
,p_validation_name=>'MODLCODE not null'
,p_validation_sequence=>20
,p_validation=>'MODLCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82124305016517515)
,p_associated_column=>'MODLCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82126427930517523)
,p_tabular_form_region_id=>wwv_flow_api.id(82118329915517503)
,p_validation_name=>'PARENTNM not null'
,p_validation_sequence=>30
,p_validation=>'PARENTNM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82124305016517515)
,p_associated_column=>'PARENTNM'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82126800267517525)
,p_tabular_form_region_id=>wwv_flow_api.id(82118329915517503)
,p_validation_name=>'PROGNAME not null'
,p_validation_sequence=>40
,p_validation=>'PROGNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82124305016517515)
,p_associated_column=>'PROGNAME'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82127229594517525)
,p_tabular_form_region_id=>wwv_flow_api.id(82118329915517503)
,p_validation_name=>'PROGDESC not null'
,p_validation_sequence=>50
,p_validation=>'PROGDESC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82124305016517515)
,p_associated_column=>'PROGDESC'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82127642619517526)
,p_tabular_form_region_id=>wwv_flow_api.id(82118329915517503)
,p_validation_name=>'MENUSLNO not null'
,p_validation_sequence=>60
,p_validation=>'MENUSLNO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82124305016517515)
,p_associated_column=>'MENUSLNO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82128064372517526)
,p_tabular_form_region_id=>wwv_flow_api.id(82118329915517503)
,p_validation_name=>'MENUSLNO must be numeric'
,p_validation_sequence=>60
,p_validation=>'MENUSLNO'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(82124305016517515)
,p_associated_column=>'MENUSLNO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82128464986517528)
,p_tabular_form_region_id=>wwv_flow_api.id(82118329915517503)
,p_validation_name=>'LEVLCODE not null'
,p_validation_sequence=>70
,p_validation=>'LEVLCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82124305016517515)
,p_associated_column=>'LEVLCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82128828311517528)
,p_tabular_form_region_id=>wwv_flow_api.id(82118329915517503)
,p_validation_name=>'LEVLCODE must be numeric'
,p_validation_sequence=>70
,p_validation=>'LEVLCODE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(82124305016517515)
,p_associated_column=>'LEVLCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82129171231517528)
,p_tabular_form_region_id=>wwv_flow_api.id(82118329915517503)
,p_validation_name=>'MENULEAF not null'
,p_validation_sequence=>80
,p_validation=>'MENULEAF'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82124305016517515)
,p_associated_column=>'MENULEAF'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82129661809517528)
,p_tabular_form_region_id=>wwv_flow_api.id(82118329915517503)
,p_validation_name=>'OPRSTAMP not null'
,p_validation_sequence=>100
,p_validation=>'OPRSTAMP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82124305016517515)
,p_associated_column=>'OPRSTAMP'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82125652736517517)
,p_tabular_form_region_id=>wwv_flow_api.id(82118329915517503)
,p_validation_name=>'TIMSTAMP must be a valid date'
,p_validation_sequence=>110
,p_validation=>'TIMSTAMP'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(82124305016517515)
,p_associated_column=>'TIMSTAMP'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82129985237517528)
,p_tabular_form_region_id=>wwv_flow_api.id(82118329915517503)
,p_validation_name=>'TIMSTAMP not null'
,p_validation_sequence=>110
,p_validation=>'TIMSTAMP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82124305016517515)
,p_associated_column=>'TIMSTAMP'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47043000188358150)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(82124752263517515)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47043172199358151)
,p_event_id=>wwv_flow_api.id(47043000188358150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(82130327518517528)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(82118329915517503)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'SYMENTRE'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(82124305016517515)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(82130748992517532)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(82118329915517503)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'SYMENTRE'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(82131144316517532)
,p_process_sequence=>30
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'',
'  Select PARENTNM, PROGNAME, progdesc, modlcode, levlcode, levlcode + 1',
'  into :P1008_PARENTNM, :P1008_PROGNAME, :P1008_PROGDESC, :P1008_modlcode, :P1008_level, :P1008_Levlcode',
'  from symentre',
'  where progname = nvl(:P1008_PROGNAME, ''ROOT'') and menuleaf = ''M'';',
'',
'Exception',
' when no_data_found then',
'  :P1008_PROGNAME := ''ROOT'';',
'End;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
