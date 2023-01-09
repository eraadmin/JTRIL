prompt --application/pages/page_99990_010
begin
--   Manifest
--     PAGE: 99990
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
 p_id=>99990110
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'User Creation'
,p_page_mode=>'MODAL'
,p_step_title=>'User Creation'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20200224180729'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(53912933190441712)
,p_plug_name=>'MAIN'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(53912861780441711)
,p_plug_name=>'Additional'
,p_parent_plug_id=>wwv_flow_api.id(53912933190441712)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(160264130120335505)
,p_plug_name=>'Create Form'
,p_parent_plug_id=>wwv_flow_api.id(53912933190441712)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'SYUSRMAS'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(160292495694335583)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(53472326128116121)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(160292495694335583)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(53472794999116121)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(160292495694335583)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P99990110_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(53473118060116121)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(160292495694335583)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P99990110_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(53473537462116121)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(160292495694335583)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P99990110_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53455280618116089)
,p_name=>'P99990110_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53455609013116093)
,p_name=>'P99990110_USERCODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'User ID'
,p_source=>'USERCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>6
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53456039779116093)
,p_name=>'P99990110_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'User Name'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53456485689116095)
,p_name=>'P99990110_USERPAWD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'User Password'
,p_source=>'USERPAWD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53456802284116095)
,p_name=>'P99990110_PASWDATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Password Date'
,p_source=>'PASWDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53457249504116100)
,p_name=>'P99990110_VALDFLAG'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Valdflag'
,p_source=>'VALDFLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:New;N,Active;A,Leave;L,Suspended;S,Terminated;T'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53457672612116100)
,p_name=>'P99990110_STATDATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Statdate'
,p_source=>'STATDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53458044856116100)
,p_name=>'P99990110_DIVNCODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Divncode'
,p_source=>'DIVNCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53458404099116101)
,p_name=>'P99990110_EMPLCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Emplcode'
,p_source=>'EMPLCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53458892407116101)
,p_name=>'P99990110_EMPLYDOB'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Emplydob'
,p_source=>'EMPLYDOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53459202938116107)
,p_name=>'P99990110_USERTYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Usertype'
,p_source=>'USERTYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53459615459116107)
,p_name=>'P99990110_GRUPCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Grupcode'
,p_source=>'GRUPCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>6
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53460061152116107)
,p_name=>'P99990110_LASTLOGN'
,p_source_data_type=>'DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Lastlogn'
,p_source=>'LASTLOGN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53460456612116109)
,p_name=>'P99990110_LOGINCNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Logincnt'
,p_source=>'LOGINCNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53460882203116110)
,p_name=>'P99990110_INVLDCNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Invldcnt'
,p_source=>'INVLDCNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53461205731116110)
,p_name=>'P99990110_STARTIME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Startime'
,p_source=>'STARTIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53461698809116112)
,p_name=>'P99990110_STOPTIME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Stoptime'
,p_source=>'STOPTIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53462066484116112)
,p_name=>'P99990110_TELNUMBR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Telnumbr'
,p_source=>'TELNUMBR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53462457161116112)
,p_name=>'P99990110_ADDRESS1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(53912861780441711)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Address1'
,p_source=>'ADDRESS1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53462804747116112)
,p_name=>'P99990110_ADDRESS2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(53912861780441711)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Address2'
,p_source=>'ADDRESS2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53463263552116112)
,p_name=>'P99990110_ADDRESS3'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(53912861780441711)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Address3'
,p_source=>'ADDRESS3'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53463639847116112)
,p_name=>'P99990110_EMAILID1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(53912861780441711)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Emailid1'
,p_source=>'EMAILID1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53464082826116112)
,p_name=>'P99990110_EMAILID2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(53912861780441711)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Emailid2'
,p_source=>'EMAILID2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53464493564116114)
,p_name=>'P99990110_STRTSUSP'
,p_source_data_type=>'DATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Strtsusp'
,p_source=>'STRTSUSP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53464842542116114)
,p_name=>'P99990110_STOPSUSP'
,p_source_data_type=>'DATE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Stopsusp'
,p_source=>'STOPSUSP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53465233153116114)
,p_name=>'P99990110_LIVELOGN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Livelogn'
,p_source=>'LIVELOGN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53465689407116114)
,p_name=>'P99990110_MAXMLOGN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Maxmlogn'
,p_source=>'MAXMLOGN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53466095110116117)
,p_name=>'P99990110_OPRSTAMP'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Oprstamp'
,p_source=>'OPRSTAMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>6
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53466432308116117)
,p_name=>'P99990110_TIMSTAMP'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Timstamp'
,p_source=>'TIMSTAMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53466854237116117)
,p_name=>'P99990110_ISGROUP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Isgroup'
,p_source=>'ISGROUP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53467262054116118)
,p_name=>'P99990110_USERSIGN'
,p_source_data_type=>'BLOB'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Usersign'
,p_source=>'USERSIGN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'NATIVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53467673461116118)
,p_name=>'P99990110_CHGFLG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Chgflg'
,p_source=>'CHGFLG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53468071379116118)
,p_name=>'P99990110_MIGFLG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Migflg'
,p_source=>'MIGFLG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53468420134116118)
,p_name=>'P99990110_APPFLG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Appflg'
,p_source=>'APPFLG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53468801290116118)
,p_name=>'P99990110_MODIFYDT'
,p_source_data_type=>'DATE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Modifydt'
,p_source=>'MODIFYDT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53469237326116118)
,p_name=>'P99990110_DFLTWRCD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Dfltwrcd'
,p_source=>'DFLTWRCD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>6
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53469658265116120)
,p_name=>'P99990110_BRAND_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Brand Code'
,p_source=>'BRAND_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53470009191116120)
,p_name=>'P99990110_SHORTNAM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Shortnam'
,p_source=>'SHORTNAM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53470428513116120)
,p_name=>'P99990110_DEFAULT_PAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Default Page'
,p_source=>'DEFAULT_PAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53470888243116120)
,p_name=>'P99990110_OPERFLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(160264130120335505)
,p_item_source_plug_id=>wwv_flow_api.id(160264130120335505)
,p_prompt=>'Operflag'
,p_source=>'OPERFLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>5
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(53486352977116128)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(53472326128116121)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(53486861403116129)
,p_event_id=>wwv_flow_api.id(53486352977116128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(53471640695116120)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(160264130120335505)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Create Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(53485975032116128)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(53471218923116120)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(160264130120335505)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Create Form'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
null;
wwv_flow_api.component_end;
end;
/
