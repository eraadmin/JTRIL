prompt --application/pages/page_99999
begin
--   Manifest
--     PAGE: 99999
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
 p_id=>999990111
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'User Registration'
,p_page_mode=>'MODAL'
,p_step_title=>'User Registration'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20200224213032'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54154486143948479)
,p_plug_name=>'Create Form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'USRSGNUP'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54168124172948489)
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
 p_id=>wwv_flow_api.id(54168573848948489)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(54168124172948489)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54170169948948489)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(54168124172948489)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P999990111_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54170536200948489)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(54168124172948489)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P999990111_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54170979560948492)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(54168124172948489)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P999990111_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54154897919948479)
,p_name=>'P999990111_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54155216607948482)
,p_name=>'P999990111_USERCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Usercode'
,p_source=>'USERCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>6
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54155611906948482)
,p_name=>'P999990111_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54156007840948482)
,p_name=>'P999990111_USERPAWD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Userpawd'
,p_source=>'USERPAWD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54156454803948482)
,p_name=>'P999990111_VALDFLAG'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Valdflag'
,p_source=>'VALDFLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54156832639948482)
,p_name=>'P999990111_DIVNCODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Divncode'
,p_source=>'DIVNCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54157262882948484)
,p_name=>'P999990111_EMPLCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emplcode'
,p_source=>'EMPLCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54157661690948484)
,p_name=>'P999990111_EMPLYDOB'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emplydob'
,p_source=>'EMPLYDOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54158001914948484)
,p_name=>'P999990111_USERTYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Usertype'
,p_source=>'USERTYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54158401551948484)
,p_name=>'P999990111_TELNUMBR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Telnumbr'
,p_source=>'TELNUMBR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54158836500948484)
,p_name=>'P999990111_ADDRESS1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address1'
,p_source=>'ADDRESS1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54159253531948484)
,p_name=>'P999990111_ADDRESS2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address2'
,p_source=>'ADDRESS2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54159682543948484)
,p_name=>'P999990111_ADDRESS3'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address3'
,p_source=>'ADDRESS3'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54160067057948484)
,p_name=>'P999990111_EMAILID1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emailid1'
,p_source=>'EMAILID1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54160403576948484)
,p_name=>'P999990111_EMAILID2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emailid2'
,p_source=>'EMAILID2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54160898010948484)
,p_name=>'P999990111_OPRSTAMP'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Oprstamp'
,p_source=>'OPRSTAMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>6
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54161241638948484)
,p_name=>'P999990111_TIMSTAMP'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Timstamp'
,p_source=>'TIMSTAMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54161633275948484)
,p_name=>'P999990111_MODIFYDT'
,p_source_data_type=>'DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modifydt'
,p_source=>'MODIFYDT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54162099486948484)
,p_name=>'P999990111_OPERFLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(54154486143948479)
,p_item_source_plug_id=>wwv_flow_api.id(54154486143948479)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Operflag'
,p_source=>'OPERFLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54168690018948489)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(54168573848948489)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54169436838948489)
,p_event_id=>wwv_flow_api.id(54168690018948489)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54171726452948492)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(54154486143948479)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Create Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54172179342948492)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54171386934948492)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(54154486143948479)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Create Form'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
