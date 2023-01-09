prompt --application/pages/page_01011
begin
--   Manifest
--     PAGE: 01011
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
 p_id=>1011
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'User Master'
,p_page_mode=>'MODAL'
,p_step_title=>'User Master'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_dialog_height=>'590'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'in line-----',
'',
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px !important;',
'}',
'#tabs .bg {',
'    height: 8px ! important;',
'    }',
'.t-Region h2.t-Region-title {',
'    color: rgb(255, 255, 255);',
'}',
'.t-Region-headerItems--title {',
'    text-align: center;',
'    padding: 0.0rem 0.0rem;',
'    background-color: #1F68A7;',
'}',
'.t-Form-inputContainer, .t-Form-inputContainer.col, .t-Form-labelContainer, .t-Form-labelContainer.col {',
'    padding: 0.2rem;',
'}',
'.t-Form-label {',
'    padding: .0rem 0;',
'    line-height: 1.0rem;',
'    display: inline-block;',
'    -webkit-hyphens: auto;',
'    -moz-hyphens: auto;',
'    -ms-hyphens: auto;',
'    hyphens: auto;',
'    font-size: 1.2rem;',
'    margin-top: 0px;',
'}'))
,p_last_updated_by=>'ADITI'
,p_last_upd_yyyymmddhh24miss=>'20230101151612'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(159817065009400819)
,p_plug_name=>'User Information'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1814253095262337704)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_2'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(159819807703400822)
,p_plug_name=>'Access Timing'
,p_parent_plug_id=>wwv_flow_api.id(159817065009400819)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(159822201525400837)
,p_plug_name=>'Contact Info'
,p_parent_plug_id=>wwv_flow_api.id(159817065009400819)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(159825053950400838)
,p_plug_name=>'User Information'
,p_parent_plug_id=>wwv_flow_api.id(159817065009400819)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'advanced custom attributes',
'style="height:396px;"'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(204985922605652911)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>90
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40154474949505248)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(204985922605652911)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'SAVE'
,p_button_position=>'NEXT'
,p_button_condition=>'P1011_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40154816423505248)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(204985922605652911)
,p_button_name=>'CREATE'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P1011_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'&BTN_SBMT_ICON.'
,p_database_action=>'INSERT'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1011_ROWID is null And :F100_ADD_ALLOWED =''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40155250507505248)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(204985922605652911)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37874010843751511)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(204985922605652911)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_DELT_LBL.'
,p_button_position=>'PREVIOUS'
,p_button_condition=>'P1011_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'&BTN_DELT_ICON.'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(40157331906505251)
,p_branch_name=>'Go To Page 1011'
,p_branch_action=>'f?p=&APP_ID.:1010:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NEVER'
,p_branch_comment=>'Created 08-FEB-2012 19:16 by ADMINORBHRM'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1992577797280427)
,p_branch_name=>'Go to 1010'
,p_branch_action=>'f?p=&SUCCESS_APP.:&SUCCESS_PAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>21
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32182210436393546)
,p_name=>'P1011_CHANGE_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_item_default=>'N'
,p_prompt=>'Change Password?'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>7
,p_grid_label_column_span=>3
,p_display_when=>'P1011_ROWID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40143164816505235)
,p_name=>'P1011_STARTIME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(159819807703400822)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0000'
,p_prompt=>'Start Time'
,p_source=>'STARTIME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40143585606505235)
,p_name=>'P1011_STOPTIME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(159819807703400822)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2359'
,p_prompt=>'Stop Time'
,p_source=>'STOPTIME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40143916790505235)
,p_name=>'P1011_LASTLOGN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(159819807703400822)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Login Date'
,p_source=>'LASTLOGN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>4000
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40144336283505235)
,p_name=>'P1011_INVLDCNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(159819807703400822)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Invalid Logon'
,p_source=>'INVLDCNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40144704479505237)
,p_name=>'P1011_MAXMLOGN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(159819807703400822)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return 100;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Maximum Logon'
,p_source=>'MAXMLOGN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>255
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40145463181505237)
,p_name=>'P1011_ADDRESS1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(159822201525400837)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Present Address'
,p_source=>'ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40145854141505239)
,p_name=>'P1011_ADDRESS2'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(159822201525400837)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Permanent Address'
,p_source=>'ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40146248246505239)
,p_name=>'P1011_ADDRESS3'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(159822201525400837)
,p_use_cache_before_default=>'NO'
,p_source=>'ADDRESS3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40146629070505239)
,p_name=>'P1011_TELNUMBR'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(159822201525400837)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobile Number'
,p_source=>'TELNUMBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40147006151505239)
,p_name=>'P1011_EMAILID1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(159822201525400837)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Address'
,p_source=>'EMAILID1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40147472168505240)
,p_name=>'P1011_EMAILID2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(159822201525400837)
,p_use_cache_before_default=>'NO'
,p_source=>'EMAILID2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40148125440505242)
,p_name=>'P1011_USERCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Code/Login ID'
,p_source=>'USERCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>6
,p_cMaxlength=>6
,p_tag_attributes=>'style="text-transform:uppercase"'
,p_grid_label_column_span=>3
,p_read_only_when=>'P1011_ROWID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40148561762505242)
,p_name=>'P1011_USERNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Full Name'
,p_source=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40148916794505242)
,p_name=>'P1011_NEW_PASS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_item_default=>'return :P1011_USERPAWD;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>32
,p_cMaxlength=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40149342399505242)
,p_name=>'P1011_CONF_PASS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_item_default=>'Return :P1011_USERPAWD;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Confirm Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>32
,p_cMaxlength=>6
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40150199158505243)
,p_name=>'P1011_PASWDATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return sysdate;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Password Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'PASWDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40150520109505243)
,p_name=>'P1011_PASWDATE_DISPLAY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return NVL(:P19_PASWDATE, SYSDATE);',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40150943931505243)
,p_name=>'P1011_STATDATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_use_cache_before_default=>'NO'
,p_item_default=>'RETURN SYSDATE;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Status Date'
,p_format_mask=>'DD-MM-YYYY'
,p_source=>'STATDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40151311718505245)
,p_name=>'P1011_VALDFLAG'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Status'
,p_source=>'VALDFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Active;A,Inactive;I,New;N,Expired;E,Leave;L,Suspended;S,Terminated;T'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40151739313505245)
,p_name=>'P1011_USERTYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Type'
,p_source=>'USERTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Login User;L,Group User;G'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40152112402505245)
,p_name=>'P1011_DIVNCODE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_use_cache_before_default=>'NO'
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Division (Company Code)'
,p_source=>'DIVNCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select CACMPCDE||''-''||CACMPNAM as display, CACMPCDE as return',
'from syparmas',
'where CAGRPCDE = ''001''',
'and CACMPCDE=:COMPCODE',
'order by 1'))
,p_cSize=>66
,p_cMaxlength=>3
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40152571693505245)
,p_name=>'P1011_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40152984325505246)
,p_name=>'P1011_OPRSTAMP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_use_cache_before_default=>'NO'
,p_item_default=>':app_user'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40153301643505246)
,p_name=>'P1011_TIMSTAMP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_use_cache_before_default=>'NO'
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_source=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P1011_ROWID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56694312054743128)
,p_name=>'P1011_MESSAGE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:red;"'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56695028521743135)
,p_name=>'P1011_USERPAWD'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_use_cache_before_default=>'NO'
,p_source=>'USERPAWD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56696428413743149)
,p_name=>'P1011_MESSAGE_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(159819807703400822)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:red;"'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64820071506864009)
,p_name=>'P1011_MODIFYDT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P1011_ROWID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(249240394539767701)
,p_name=>'P1011_EMPLCODE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(159825053950400838)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee ID'
,p_source=>'EMPLCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(56695945699743144)
,p_validation_name=>'Email'
,p_validation_sequence=>10
,p_validation=>'P1011_EMAILID1'
,p_validation2=>'[a-zA-Z0-9._%-]+@[a-zA-Z0-9._%-]+\.[a-zA-Z]{2,3}'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'#LABEL# Invalid.'
,p_associated_item=>wwv_flow_api.id(40147006151505239)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56693464012743119)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40155250507505248)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56693505715743120)
,p_event_id=>wwv_flow_api.id(56693464012743119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56694462446743129)
,p_name=>'User Code Length'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1011_USERCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56694503754743130)
,p_event_id=>wwv_flow_api.id(56694462446743129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 31/05/2020 7:46:40 PM (QP5 v5.354) */',
'BEGIN',
'    :P1011_MESSAGE := NULL;',
'',
'    IF LENGTH ( :P1011_USERCODE) <> 6',
'    THEN',
'        :P1011_MESSAGE := ''User Code Must Be Six Character.'';',
'    END IF;',
'    ',
'END;'))
,p_attribute_02=>'P1011_USERCODE'
,p_attribute_03=>'P1011_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56694715567743132)
,p_name=>'UserCode Duplicate'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1011_USERCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56694875661743133)
,p_event_id=>wwv_flow_api.id(56694715567743132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 31/05/2020 8:13:46 PM (QP5 v5.354) */',
'DECLARE',
'    vCountExist   NUMBER := 0;',
'BEGIN',
'    :P1011_MESSAGE := NULL;',
'',
'    BEGIN',
'        SELECT COUNT (1)',
'          INTO vCountExist',
'          FROM SYUSRMAS',
'         WHERE  UPPER (USERCODE) = UPPER ( :P1011_USERCODE);',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND',
'        THEN',
'            vCountExist := 0;',
'        WHEN OTHERS',
'        THEN',
'            NULL;',
'    END;',
'',
'    IF vCountExist <> 0',
'    THEN',
'        :P1011_MESSAGE := ''This User ID Already Exists  '' || UPPER(:P1011_USERCODE);',
'    END IF;',
'END;'))
,p_attribute_02=>'P1011_USERCODE'
,p_attribute_03=>'P1011_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56695202764743137)
,p_name=>'New Password Length'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1011_NEW_PASS'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56695387627743138)
,p_event_id=>wwv_flow_api.id(56695202764743137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 31/05/2020 7:46:40 PM (QP5 v5.354) */',
'BEGIN',
'    :P1011_MESSAGE := NULL;',
'',
'    IF LENGTH ( :P1011_NEW_PASS) < 6',
'    THEN',
'        :P1011_MESSAGE := ''New Password Must Be Grater Than Six Character. '';',
'    END IF;',
'END;'))
,p_attribute_02=>'P1011_NEW_PASS'
,p_attribute_03=>'P1011_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56695432900743139)
,p_name=>'Confirm Password Length'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1011_CONF_PASS'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56695561418743140)
,p_event_id=>wwv_flow_api.id(56695432900743139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 31/05/2020 7:46:40 PM (QP5 v5.354) */',
'BEGIN',
'    :P1011_MESSAGE := NULL;',
'',
'    IF LENGTH ( :P1011_CONF_PASS) < 6',
'    THEN',
'        :P1011_MESSAGE := ''Confirm Password Must Be Greater Than Six Character.'';',
'    END IF;',
'END;'))
,p_attribute_02=>'P1011_CONF_PASS'
,p_attribute_03=>'P1011_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56696251655743147)
,p_name=>'Password Mismatch'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1011_CONF_PASS'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56696312074743148)
,p_event_id=>wwv_flow_api.id(56696251655743147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P1011_NEW_PASS <> :P1011_CONF_PASS',
'    THEN',
'        :P1011_MESSAGE := ''New Password & Confirm Password Mismatch! '';',
'    END IF;',
'END;'))
,p_attribute_02=>'P1011_NEW_PASS,P1011_CONF_PASS'
,p_attribute_03=>'P1011_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56696512829743150)
,p_name=>'Start Time'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1011_STARTIME'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64819243290864001)
,p_event_id=>wwv_flow_api.id(56696512829743150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P1011_MESSAGE_1 := NULL;',
'',
'    IF TO_NUMBER(:P1011_STARTIME) < ''0000''',
'    THEN',
'        :P1011_MESSAGE_1 := ''Start Time Would Not less Than 0000 '';',
'    END IF;',
'END;'))
,p_attribute_02=>'P1011_STARTIME'
,p_attribute_03=>'P1011_MESSAGE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
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
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64819501357864004)
,p_name=>'Stop Time'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1011_STOPTIME'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64819655755864005)
,p_event_id=>wwv_flow_api.id(64819501357864004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P1011_MESSAGE_1 := NULL;',
'    ',
'    IF TO_NUMBER(:P1011_STOPTIME) < ''0000''',
'    THEN',
'        :P1011_MESSAGE_1 := ''Stop Time Would Not less Than 0000 '';',
'    END IF;',
'END;'))
,p_attribute_02=>'P1011_STOPTIME'
,p_attribute_03=>'P1011_MESSAGE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64819390863864002)
,p_name=>'Start Time_1'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1011_STARTIME'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64819420543864003)
,p_event_id=>wwv_flow_api.id(64819390863864002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P1011_MESSAGE_1 := NULL;',
'',
'    IF TO_NUMBER(:P1011_STARTIME) > ''2359''',
'    THEN',
'        :P1011_MESSAGE_1 := ''Start Time Would Not Greater Than 2359 '';',
'    END IF;',
'END;'))
,p_attribute_02=>'P1011_STARTIME'
,p_attribute_03=>'P1011_MESSAGE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64819709399864006)
,p_name=>'Stop Time_1'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1011_STOPTIME'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64819826047864007)
,p_event_id=>wwv_flow_api.id(64819709399864006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P1011_MESSAGE_1 := NULL;',
'    ',
'    IF TO_NUMBER(:P1011_STOPTIME) > ''2359''',
'    THEN',
'        :P1011_MESSAGE_1 := ''Stop Time Would Not Greater Than 2359 '';',
'    END IF;',
'END;'))
,p_attribute_02=>'P1011_STOPTIME'
,p_attribute_03=>'P1011_MESSAGE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32182384529393547)
,p_name=>'Password'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1011_CHANGE_PASSWORD'
,p_condition_element=>'P1011_CHANGE_PASSWORD'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32182428483393548)
,p_event_id=>wwv_flow_api.id(32182384529393547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1011_NEW_PASS,P1011_CONF_PASS'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32182503318393549)
,p_event_id=>wwv_flow_api.id(32182384529393547)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1011_NEW_PASS,P1011_CONF_PASS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40155678381505250)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from SYUSRMAS'
,p_attribute_02=>'SYUSRMAS'
,p_attribute_03=>'P1011_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56696073749743145)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40156871894505251)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SYUSRMAS'
,p_attribute_02=>'SYUSRMAS'
,p_attribute_03=>'P1011_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40991836279194201)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New_1'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56695620615743141)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Item Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 01/06/2020 5:19:52 PM (QP5 v5.354) */',
'',
'BEGIN',
'    IF :P1011_USERCODE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''User Code Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P1011_USERCODE'');',
'    END IF;',
'    ',
'    :P1011_USERCODE := UPPER(:P1011_USERCODE);',
'',
'',
'    IF :P1011_USERNAME IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''User Name Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P1011_USERNAME'');',
'    END IF;',
'',
'',
'    IF :P1011_PASWDATE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Password Date Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P1011_PASWDATE'');',
'    END IF;',
'',
'',
'    IF :P1011_STATDATE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Status Date Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P1011_STATDATE'');',
'    END IF;',
'',
'',
'    IF :P1011_VALDFLAG IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''User Status Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P1011_VALDFLAG'');',
'    END IF;',
'',
'',
'    IF :P1011_USERTYPE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''User Type Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P1011_USERTYPE'');',
'    END IF;',
'',
'',
'    IF :P1011_DIVNCODE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Division Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P1011_DIVNCODE'');',
'    END IF;',
'    ',
'    ',
'    IF :P1011_TELNUMBR IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Mobile No. Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P1011_TELNUMBR'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56696161616743146)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'User Code Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 02/06/2020 3:05:36 PM (QP5 v5.354) */',
'DECLARE',
'    vCountExist   NUMBER := 0;',
'BEGIN',
'    IF :P1011_USERCODE IS NOT NULL --AND :P1011_ROWID IS NULL',
'    THEN',
'        IF LENGTH ( :P1011_USERCODE) <> 6',
'        THEN',
'            apex_error.add_error (',
'                p_message            => ''User Code Must Be Six Character. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name     => ''P1011_USERCODE'');',
'        END IF;',
'',
'',
'        IF LENGTH ( :P1011_USERCODE) = 6',
'        THEN',
'            BEGIN',
'                SELECT COUNT (1)',
'                  INTO vCountExist',
'                  FROM SYUSRMAS',
'                 WHERE  UPPER (USERCODE) = UPPER ( :P1011_USERCODE);',
'            EXCEPTION',
'                WHEN NO_DATA_FOUND',
'                THEN',
'                    vCountExist := 0;',
'                WHEN OTHERS',
'                THEN',
'                    NULL;',
'            END;',
'',
'            IF vCountExist <> 0',
'            THEN',
'                apex_error.add_error (',
'                    p_message          =>',
'                        ''This User ID Already Exists  '' || UPPER (:P1011_USERCODE),',
'                    p_display_location   =>',
'                        apex_error.c_inline_with_field_and_notif,',
'                    p_page_item_name   => ''P1011_USERCODE'');',
'            END IF;',
'        END IF;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(40154816423505248)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56695199904743136)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Password Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 01/06/2020 5:27:06 PM (QP5 v5.354) */',
'DECLARE',
'    vEncryptPass   VARCHAR2 (50);',
'BEGIN',
'',
'    IF :P1011_NEW_PASS IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Password Value Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P1011_NEW_PASS'');',
'    END IF;',
'',
'',
'    IF :P1011_NEW_PASS IS NOT NULL',
'    THEN',
'        IF LENGTH ( :P1011_NEW_PASS) <> 6',
'        THEN',
'            apex_error.add_error (',
'                p_message            => ''New Password Must Be Six Character. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name     => ''P1011_NEW_PASS'');',
'        END IF;',
'    END IF;',
'',
'',
'    IF :P1011_CONF_PASS IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Confirm Password Value Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P1011_CONF_PASS'');',
'    END IF;',
'',
'',
'    IF :P1011_CONF_PASS IS NOT NULL',
'    THEN',
'        IF LENGTH ( :P1011_CONF_PASS) <> 6',
'        THEN',
'            apex_error.add_error (',
'                p_message            => ''Confirm Password Must Be Six Character. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name     => ''P1011_CONF_PASS'');',
'        END IF;',
'    END IF;',
'    ',
'    ',
'    IF LENGTH ( :P1011_CONF_PASS) = 6 AND LENGTH ( :P1011_CONF_PASS) = 6',
'    THEN',
'        IF :P1011_NEW_PASS <> :P1011_CONF_PASS',
'        THEN',
'            RAISE_APPLICATION_ERROR (',
'                -20003,',
'                ''New Password & Confirm Password Mismatch!'');',
'        ELSE',
'            BEGIN',
'                PROC_CREATE_PASSWORD (USERID    => UPPER ( :P1011_USERCODE),',
'                                      PASSWD    => :P1011_NEW_PASS,',
'                                      ENCPASS   => vEncryptPass);',
'            EXCEPTION',
'                WHEN OTHERS',
'                THEN',
'                    RAISE_APPLICATION_ERROR (',
'                        -20004,',
'                        ''Unable to Call Password Create Process. '' || SQLERRM);',
'            END;',
'',
'            :P1011_USERPAWD := vEncryptPass;',
'        --RAISE_APPLICATION_ERROR(-20001, vEncryptPass);',
'',
'        -- :P1011_PASWDATE := SYSDATE;',
'        END IF;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(40154816423505248)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32182696684393550)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Password Validation Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 01/06/2020 5:27:06 PM (QP5 v5.354) */',
'DECLARE',
'    vEncryptPass   VARCHAR2 (50);',
'BEGIN',
'    IF :P1011_CHANGE_PASSWORD = ''Y'' THEN',
'    IF :P1011_NEW_PASS IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Password Value Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P1011_NEW_PASS'');',
'    END IF;',
'',
'',
'    IF :P1011_NEW_PASS IS NOT NULL',
'    THEN',
'        IF LENGTH ( :P1011_NEW_PASS) <> 6',
'        THEN',
'            apex_error.add_error (',
'                p_message            => ''New Password Must Be Six Character. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name     => ''P1011_NEW_PASS'');',
'        END IF;',
'    END IF;',
'',
'',
'    IF :P1011_CONF_PASS IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Confirm Password Value Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P1011_CONF_PASS'');',
'    END IF;',
'',
'',
'    IF :P1011_CONF_PASS IS NOT NULL',
'    THEN',
'        IF LENGTH ( :P1011_CONF_PASS) <> 6',
'        THEN',
'            apex_error.add_error (',
'                p_message            => ''Confirm Password Must Be Six Character. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name     => ''P1011_CONF_PASS'');',
'        END IF;',
'    END IF;',
'    ',
'    ',
'    IF LENGTH ( :P1011_CONF_PASS) = 6 AND LENGTH ( :P1011_CONF_PASS) = 6',
'    THEN',
'        IF :P1011_NEW_PASS <> :P1011_CONF_PASS',
'        THEN',
'            RAISE_APPLICATION_ERROR (',
'                -20003,',
'                ''New Password & Confirm Password Mismatch!'');',
'        ELSE',
'            BEGIN',
'                PROC_CREATE_PASSWORD (USERID    => UPPER ( :P1011_USERCODE),',
'                                      PASSWD    => :P1011_NEW_PASS,',
'                                      ENCPASS   => vEncryptPass);',
'            EXCEPTION',
'                WHEN OTHERS',
'                THEN',
'                    RAISE_APPLICATION_ERROR (',
'                        -20004,',
'                        ''Unable to Call Password Create Process. '' || SQLERRM);',
'            END;',
'',
'            :P1011_USERPAWD := vEncryptPass;',
'        --RAISE_APPLICATION_ERROR(-20001, vEncryptPass);',
'',
'        -- :P1011_PASWDATE := SYSDATE;',
'        END IF;',
'    END IF;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(40154474949505248)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56695827966743143)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Mobile No Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 01/06/2020 5:39:18 PM (QP5 v5.354) */',
'DECLARE',
'    vErrorFlag      VARCHAR2 (1);',
'    vErrorMessage   VARCHAR2 (1024);',
'BEGIN',
'    IF :P1011_TELNUMBR IS NOT NULL',
'    THEN',
'        BEGIN',
'            DPK_BASE_OBJECTS.VALIDATE_MOBILE_NO (',
'                pMobileNo       => :P1011_TELNUMBR,',
'                pErrorFlag      => vErrorFlag,',
'                pErrorMessage   => vErrorMessage);',
'        EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'                RAISE_APPLICATION_ERROR (',
'                    -20001,',
'                    ''Mobile No. Validation Process Calling Problem. '');',
'        END;',
'',
'',
'        IF vErrorFlag = ''Y''',
'        THEN',
'            apex_error.add_error (',
'                p_message            => vErrorMessage,',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name     => ''P1011_TELNUMBR'');',
'        END IF;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64819921492864008)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Access Time Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 02/06/2020 3:42:55 PM (QP5 v5.354) */',
'BEGIN',
'    IF TO_NUMBER ( :P1011_STARTIME) < ''0000''',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Start Time Would Not less Than 0000 '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P1011_STARTIME'');',
'    END IF;',
'',
'    IF TO_NUMBER ( :P1011_STARTIME) > ''2359''',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Start Time Would Not Greater Than 2359 '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P1011_STARTIME'');',
'    END IF;',
'',
'',
'    IF TO_NUMBER ( :P1011_STOPTIME) < ''0000''',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Stop Time Would Not less Than 0000 '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P1011_STOPTIME'');',
'    END IF;',
'',
'',
'    IF TO_NUMBER ( :P1011_STOPTIME) > ''2359''',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Stop Time Would Not Greater Than 2359 '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P1011_STOPTIME'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
