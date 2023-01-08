prompt --application/pages/page_00134
begin
--   Manifest
--     PAGE: 00134
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>134
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Item Group Modification'
,p_alias=>'ITEM-GROUP-MODIFICATION1'
,p_page_mode=>'MODAL'
,p_step_title=>'Item Group Modification'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'    ',
'function GetValues1(){',
'ckbox = document.getElementsByName("f01");',
'count=0;',
'for(var i=0;i<ckbox.length;i++){',
' element = ckbox[i];',
'  if(element.checked){',
'   count++;',
'  }',
'}',
'    ',
'} ',
'',
'</script>'))
,p_javascript_code_onload=>'GetValues1();'
,p_dialog_height=>'400'
,p_dialog_width=>'600'
,p_protection_level=>'C'
,p_last_updated_by=>'ADITI'
,p_last_upd_yyyymmddhh24miss=>'20221207184620'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128796974157230302)
,p_plug_name=>'Product List'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APEX_ITEM.DISPLAY_AND_SAVE (p_idx => 3, p_value => ROW_NUMBER() OVER (ORDER BY ITEMCODE DESC)) sl,',
'       COMPCODE,',
'       APEX_ITEM.DISPLAY_AND_SAVE (2, ITEMCODE) ITEMCODE,',
'       ITEMDES2,',
'       APEX_ITEM.CHECKBOX (1, p_value => ROW_NUMBER() OVER (ORDER BY ITEMCODE DESC), p_attributes => ''onchange="GetValues1();"'') "select"',
'  from NMITEMAS',
'  WHERE COMPCODE = :COMPCODE',
'  AND statuscd = ''ACT''',
'  AND ITEMCODE NOT IN (select ITEMCODE from NMGRPITM where GRPECODE = :P134_GROUP and COMPCODE = :COMPCODE)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Product List'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(128814486731454933)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ADITI'
,p_internal_uid=>128814486731454933
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(128814522644454934)
,p_db_column_name=>'COMPCODE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(128814647593454935)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Product'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(128814787996454936)
,p_db_column_name=>'ITEMDES2'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Product Description'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(128814847661454937)
,p_db_column_name=>'select'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Select <br><input type="checkbox" onclick="javascript:$f_CheckAll(this, this.checked, $(''[name=f01]''));" onchange="GetValues1();">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(129787436052430717)
,p_db_column_name=>'SL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sl'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(129047497417607719)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1290475'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SL:ITEMCODE:ITEMDES2:select:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(160820229198188261)
,p_plug_name=>'ITEM GROUP MODIFICATION'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>50
,p_query_type=>'TABLE'
,p_query_table=>'NMCODMAS'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(160840142778188280)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(125579930052440460)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(160840142778188280)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.:134::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(125580388065440463)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(160840142778188280)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P134_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(125580704223440464)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(160840142778188280)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P134_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(125581146056440464)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(160840142778188280)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(125581688337440465)
,p_branch_name=>'goto 133'
,p_branch_action=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.:134::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125559366088440421)
,p_name=>'P134_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125559723500440425)
,p_name=>'P134_COMPCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'COMPCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125560146466440425)
,p_name=>'P134_MODLCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'MODLCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125560551031440426)
,p_name=>'P134_NMHRDCDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'NMHRDCDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125560900649440426)
,p_name=>'P134_NMSOFCDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_prompt=>'Group Code'
,p_source=>'NMSOFCDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_tag_attributes=>'style="text-transform: uppercase;" onKeyUp="this.value=this.value.toUpperCase();"'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125561339235440426)
,p_name=>'P134_NMCODDES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_prompt=>'Group Description'
,p_source=>'NMCODDES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125561708760440426)
,p_name=>'P134_NMAMOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_prompt=>'Amount'
,p_source=>'NMAMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125562158188440427)
,p_name=>'P134_NMMANHRS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_prompt=>'Hours'
,p_source=>'NMMANHRS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125562546239440427)
,p_name=>'P134_NMRTDNON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'NMRTDNON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125562955728440427)
,p_name=>'P134_NMACCTCD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'NMACCTCD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125563384359440427)
,p_name=>'P134_DBCRCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'DBCRCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125563748322440427)
,p_name=>'P134_SUBLEDCD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'SUBLEDCD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125564199883440427)
,p_name=>'P134_COSTCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'COSTCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125564565264440428)
,p_name=>'P134_LOCTAXFL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'LOCTAXFL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125564903364440428)
,p_name=>'P134_PRTYFLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'PRTYFLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125565371835440428)
,p_name=>'P134_OPRSTAMP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'OPRSTAMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125565763906440428)
,p_name=>'P134_TIMSTAMP'
,p_source_data_type=>'DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'TIMSTAMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125566104311440428)
,p_name=>'P134_NMSOFTYP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'NMSOFTYP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125566537234440428)
,p_name=>'P134_SERIALNM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'SERIALNM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125566923915440428)
,p_name=>'P134_MODEL_PREFIX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'MODEL_PREFIX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125567391518440429)
,p_name=>'P134_PRCNTFLG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'PRCNTFLG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125567765638440429)
,p_name=>'P134_MODIFYDT'
,p_source_data_type=>'DATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'MODIFYDT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125568135869440429)
,p_name=>'P134_NMUPCDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'NMUPCDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125568578262440429)
,p_name=>'P134_NMUPSDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'NMUPSDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125568945865440429)
,p_name=>'P134_NMUPHRD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'NMUPHRD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125569335407440429)
,p_name=>'P134_BANKCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'BANKCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125569763216440430)
,p_name=>'P134_DFLTTYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'DFLTTYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125570150521440430)
,p_name=>'P134_PAYMNTMOD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(160820229198188261)
,p_item_source_plug_id=>wwv_flow_api.id(160820229198188261)
,p_source=>'PAYMNTMOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127938867166618242)
,p_name=>'P134_GROUP'
,p_item_sequence=>20
,p_prompt=>'<b style="color:darkblue;">Role Code: </b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(129789597276430738)
,p_name=>'P134_GROUP_DESCRIPTION'
,p_item_sequence=>30
,p_item_default=>'select NMCODDES from NMCODMAS where NMSOFCDE = :P134_GROUP AND COMPCODE = :COMPCODE'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'<b style="color:darkblue;">Role Description: </b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(129788451774430727)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(125579930052440460)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(129788588738430728)
,p_event_id=>wwv_flow_api.id(129788451774430727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(125579296668440459)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process form ITEM GROUP MODIFICATION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    IF apex_collection.collection_exists (''GROUP_ITEMS'') = TRUE',
'    THEN',
'        --apex_collection.create_collection (''GROUP_ITEMS'');',
'    -- ELSE',
'    --     apex_collection.truncate_collection (''GROUP_ITEMS'');',
'    ',
'',
'    declare',
'        v_SL VARCHAR2 (100);',
'        v_ITEMCODE VARCHAR2 (255);',
'        v_GROUP NMGRPITM.GRPECODE%TYPE;',
'        vRownum   NUMBER := 0;',
'    begin',
'        FOR i IN 1 .. APEX_APPLICATION.G_f01.COUNT',
'        LOOP',
'        -- select i sl, ITEMCODE into v_SL, v_ITEMCODE from NMITEMAS ',
'        --   WHERE COMPCODE = :COMPCODE',
'        --   AND statuscd = ''ACT'';',
'',
'        IF APEX_APPLICATION.G_f03.COUNT = 0',
'        THEN',
'            raise_application_error(-20001, ''Select At Least One.'');',
'        ELSE',
'        ',
'',
'        FOR j IN 1 .. APEX_APPLICATION.G_f03.COUNT',
'         LOOP',
'',
'        ',
'',
'         IF APEX_APPLICATION.G_f03 (j) = APEX_APPLICATION.G_f01 (i)',
'            THEN',
'',
'        ',
'',
'         v_ITEMCODE := APEX_APPLICATION.G_f02 (j);',
'        v_GROUP := :P134_GROUP;',
'',
'          APEX_COLLECTION.ADD_MEMBER (',
'                  p_collection_name   => ''GROUP_ITEMS'',',
'                  p_c001              => v_ITEMCODE,',
'                  p_c002              => ''A'',',
'                  p_c003              => v_GROUP,',
'                  p_c004              => :COMPCODE,',
'                  p_c005              => :APP_USER,',
'                  p_c006              => SYSDATE,',
'                  p_c007              => null);',
'               COMMIT;',
'          --raise_application_error(-20001, v_ITEMCODE);',
'          end if;',
'          ',
'        END LOOP;',
'        end if;',
'    END LOOP;',
'    end;',
'    END IF;',
'    ',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(125581146056440464)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(125578983285440451)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(160820229198188261)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form ITEM GROUP MODIFICATION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
