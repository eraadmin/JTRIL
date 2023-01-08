prompt --application/pages/page_99990_005
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
 p_id=>99990105
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Template Design Entry/ Modify'
,p_page_mode=>'MODAL'
,p_step_title=>'Template Design Entry/ Modify'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'800'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_last_updated_by=>'RAZU'
,p_last_upd_yyyymmddhh24miss=>'20220426144930'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9184239635412950)
,p_plug_name=>'Button_Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_region_attributes=>'style="margin-bottom:30px;"'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10539670584986812)
,p_plug_name=>'Template Design Entry/ Modify'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_query_type=>'TABLE'
,p_query_table=>'SYPGTMPLT'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9182414143412932)
,p_plug_name=>'Page Level Design'
,p_parent_plug_id=>wwv_flow_api.id(10539670584986812)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9182524866412933)
,p_plug_name=>'Region Level Design'
,p_parent_plug_id=>wwv_flow_api.id(10539670584986812)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9182630032412934)
,p_plug_name=>'Item Level Design'
,p_parent_plug_id=>wwv_flow_api.id(10539670584986812)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9182758735412935)
,p_plug_name=>'Button Level Design'
,p_parent_plug_id=>wwv_flow_api.id(10539670584986812)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9183426685412942)
,p_plug_name=>'<font color="lightgreen"> Button : Submit (STATIC ID : SUBMIT) </font>'
,p_parent_plug_id=>wwv_flow_api.id(9182758735412935)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9183548100412943)
,p_plug_name=>'<font color="green"> Button : Save (STATIC ID : SAVE) </font>'
,p_parent_plug_id=>wwv_flow_api.id(9182758735412935)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9183602798412944)
,p_plug_name=>'<font color="blue"> Button : Back (STATIC ID : BACK) </font>'
,p_parent_plug_id=>wwv_flow_api.id(9182758735412935)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9183757350412945)
,p_plug_name=>'<font color="Gray"> Button : Next (STATIC ID : NEXT) </font>'
,p_parent_plug_id=>wwv_flow_api.id(9182758735412935)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9183878191412946)
,p_plug_name=>'<font color="orange"> Button : Cancel (STATIC ID : CANCEL) </font>'
,p_parent_plug_id=>wwv_flow_api.id(9182758735412935)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9183975833412947)
,p_plug_name=>'<font color="red"> Button : Delete (STATIC ID : DELETE) </font>'
,p_parent_plug_id=>wwv_flow_api.id(9182758735412935)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9184013220412948)
,p_plug_name=>'<font color="purple"> Button : Refresh (STATIC ID : REFRESH) </font>'
,p_parent_plug_id=>wwv_flow_api.id(9182758735412935)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9184133026412949)
,p_plug_name=>'<font color="darkblue"> Button : Print (STATIC ID : PRINT) </font>'
,p_parent_plug_id=>wwv_flow_api.id(9182758735412935)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47801541432634234)
,p_plug_name=>'<font color="lightblue"> Button : Create (STATIC ID : CREATE) </font>'
,p_parent_plug_id=>wwv_flow_api.id(9182758735412935)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9182807015412936)
,p_plug_name=>'<font color="PURPLE"> Classic Report Design </font>'
,p_parent_plug_id=>wwv_flow_api.id(10539670584986812)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9182909540412937)
,p_plug_name=>'Interactive Report Design'
,p_parent_plug_id=>wwv_flow_api.id(10539670584986812)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9183081348412938)
,p_plug_name=>'Interactive Grid Design'
,p_parent_plug_id=>wwv_flow_api.id(10539670584986812)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9183150077412939)
,p_plug_name=>'Alert and Notification Design'
,p_parent_plug_id=>wwv_flow_api.id(10539670584986812)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16165752750017018)
,p_plug_name=>'Menu Level Design'
,p_parent_plug_id=>wwv_flow_api.id(10539670584986812)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10634959309986890)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(9184239635412950)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P99990105_TMPLT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10635315827986890)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(9184239635412950)
,p_button_name=>'CREATE'
,p_button_static_id=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P99990105_TMPLT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10633788806986879)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9184239635412950)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:99990104:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10634526044986889)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(9184239635412950)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P99990105_TMPLT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(10635634831986890)
,p_branch_action=>'f?p=&APP_ID.:99990104:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10539917369986814)
,p_name=>'P99990105_TMPLT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_source=>'TMPLT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10540337897986818)
,p_name=>'P99990105_CAGRPCDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9182414143412932)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_default=>'001'
,p_source=>'CAGRPCDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10540792247986825)
,p_name=>'P99990105_CACMPCDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9182414143412932)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Company Code'
,p_source=>'CACMPCDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10541160696986825)
,p_name=>'P99990105_PARTYFLG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9182414143412932)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Party Flag'
,p_source=>'PARTYFLG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10541584836986825)
,p_name=>'P99990105_PAG_BODY_BGCLRL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9182414143412932)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Background Color Left'
,p_source=>'PAG_BODY_BGCLRL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>17
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10541936052986826)
,p_name=>'P99990105_DATE_FRMT_MASK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(9182414143412932)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Date Format Mask'
,p_source=>'DATE_FRMT_MASK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
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
 p_id=>wwv_flow_api.id(10542318926986826)
,p_name=>'P99990105_CURRENCY_FRMT_MASK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(9182414143412932)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Currency Format Mask'
,p_source=>'CURRENCY_FRMT_MASK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10542798501986826)
,p_name=>'P99990105_RGN_RGN1_BGCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9182524866412933)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Region 1 Background Color'
,p_source=>'RGN_RGN1_BGCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10543113864986826)
,p_name=>'P99990105_RGN_RGN1_HEIGHT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(9182524866412933)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Region 1 Height (If Needed)'
,p_source=>'RGN_RGN1_HEIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10543502194986828)
,p_name=>'P99990105_RGN_RGN2_BGCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(9182524866412933)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Region 2 Background Color'
,p_source=>'RGN_RGN2_BGCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10543943314986828)
,p_name=>'P99990105_RGN_RGN2_HEIGHT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(9182524866412933)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Region 2 Height (If Needed)'
,p_source=>'RGN_RGN2_HEIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10544370481986828)
,p_name=>'P99990105_RGN_RGN3_BGCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(9182524866412933)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Region 3 Background Color'
,p_source=>'RGN_RGN3_BGCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10544783943986828)
,p_name=>'P99990105_RGN_RGN3_HEIGHT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(9182524866412933)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Region 3 Height (If Needed)'
,p_source=>'RGN_RGN3_HEIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10545172206986828)
,p_name=>'P99990105_RGN_RGN4_BGCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(9182524866412933)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Region 4 Background Color'
,p_source=>'RGN_RGN4_BGCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10545500588986828)
,p_name=>'P99990105_RGN_RGN4_HEIGHT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(9182524866412933)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Region 4 Height (If Needed)'
,p_source=>'RGN_RGN4_HEIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10545952864986828)
,p_name=>'P99990105_RGN_RGN5_BGCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(9182524866412933)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Region 5 Background Color'
,p_source=>'RGN_RGN5_BGCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10546383044986829)
,p_name=>'P99990105_RGN_RGN5_HEIGHT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(9182524866412933)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Region 5 Height (If Needed)'
,p_source=>'RGN_RGN5_HEIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10546794184986829)
,p_name=>'P99990105_RGN_RGN6_BGCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(9182524866412933)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Region 6 Background Color'
,p_source=>'RGN_RGN6_BGCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10547129697986829)
,p_name=>'P99990105_RGN_RGN6_HEIGHT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(9182524866412933)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Region 6 Height (If Needed)'
,p_source=>'RGN_RGN6_HEIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10547501639986831)
,p_name=>'P99990105_RPT_CLS_BGCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(9182807015412936)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Background Color'
,p_source=>'RPT_CLS_BGCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10547943381986831)
,p_name=>'P99990105_RPT_CLS_FNTCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(9182807015412936)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Data Font Color'
,p_source=>'RPT_CLS_FNTCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10548378374986831)
,p_name=>'P99990105_RPT_CLS_FNTSIZE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(9182807015412936)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Data Font Size'
,p_source=>'RPT_CLS_FNTSIZE'
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
 p_id=>wwv_flow_api.id(10548774892986831)
,p_name=>'P99990105_RPT_CLS_FNFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(9182807015412936)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Data Font Type'
,p_source=>'RPT_CLS_FNFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10549127829986831)
,p_name=>'P99990105_RPT_CLS_BRDRCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(9182807015412936)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Border Color'
,p_source=>'RPT_CLS_BRDRCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10549506549986832)
,p_name=>'P99990105_RPT_IRR_BGCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(9182909540412937)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Background Color'
,p_source=>'RPT_IRR_BGCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10549905643986832)
,p_name=>'P99990105_RPT_IRR_FNTCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(9182909540412937)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Data Font Color'
,p_source=>'RPT_IRR_FNTCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10550370405986832)
,p_name=>'P99990105_RPT_IRR_FNTSIZE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(9182909540412937)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Data Font Size'
,p_source=>'RPT_IRR_FNTSIZE'
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
 p_id=>wwv_flow_api.id(10550763967986832)
,p_name=>'P99990105_RPT_IRR_FNFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(9182909540412937)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Data Font Type'
,p_source=>'RPT_IRR_FNFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10551154070986832)
,p_name=>'P99990105_RPT_IRR_BRDRCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(9182909540412937)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Border Color'
,p_source=>'RPT_IRR_BRDRCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10551553167986832)
,p_name=>'P99990105_RPT_IGR_BGCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(9183081348412938)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Grid Background Color'
,p_source=>'RPT_IGR_BGCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10551903073986832)
,p_name=>'P99990105_RPT_IGR_FNTCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(9183081348412938)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Data Font Color'
,p_source=>'RPT_IGR_FNTCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10552308395986832)
,p_name=>'P99990105_RPT_IGR_FNTSIZE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(9183081348412938)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Data Font Size'
,p_source=>'RPT_IGR_FNTSIZE'
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
 p_id=>wwv_flow_api.id(10552768421986834)
,p_name=>'P99990105_RPT_IGR_FNFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(9183081348412938)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Data Font Type'
,p_source=>'RPT_IGR_FNFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10553188111986834)
,p_name=>'P99990105_RPT_IGR_BRDRCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(9183081348412938)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Border Color'
,p_source=>'RPT_IGR_BRDRCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10553540512986834)
,p_name=>'P99990105_ITEM_CNTR_FNTCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(9182630032412934)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Input Item Font Color'
,p_source=>'ITEM_CNTR_FNTCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10553937233986834)
,p_name=>'P99990105_ITEM_CNTR_FNTSIZE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(9182630032412934)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Input Item Font Size'
,p_source=>'ITEM_CNTR_FNTSIZE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10554338552986834)
,p_name=>'P99990105_ITEM_CNTR_FNTWT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(9182630032412934)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Input Item Font Weight'
,p_source=>'ITEM_CNTR_FNTWT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT WEIGHT LIST'
,p_lov=>'.'||wwv_flow_api.id(11687851180160170)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Font Weight --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10554732462986834)
,p_name=>'P99990105_ITEM_CNTR_FNTFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(9182630032412934)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Input Item Font Family'
,p_source=>'ITEM_CNTR_FNTFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10555174020986834)
,p_name=>'P99990105_ITEM_CNTR_HIGHT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(9182630032412934)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Input Item Height'
,p_source=>'ITEM_CNTR_HIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
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
 p_id=>wwv_flow_api.id(10555518293986834)
,p_name=>'P99990105_ITEM_CNTR_BGCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(9182630032412934)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Item Background Color'
,p_source=>'ITEM_CNTR_BGCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10555982667986839)
,p_name=>'P99990105_ITEM_LABL_FNTCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(9182630032412934)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Item Label Font Color'
,p_source=>'ITEM_LABL_FNTCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10556372030986839)
,p_name=>'P99990105_ITEM_LABL_FNTSIZE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(9182630032412934)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Item Label Font Size'
,p_source=>'ITEM_LABL_FNTSIZE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10556776680986839)
,p_name=>'P99990105_ITEM_LABL_FNTWT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(9182630032412934)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Item Label Font Weight'
,p_source=>'ITEM_LABL_FNTWT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT WEIGHT LIST'
,p_lov=>'.'||wwv_flow_api.id(11687851180160170)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font  Weight --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10557159301986840)
,p_name=>'P99990105_ITEM_LABL_FNTFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(9182630032412934)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Item Label Font Family'
,p_source=>'ITEM_LABL_FNTFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10557557467986840)
,p_name=>'P99990105_BTN_NEXT_LBL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(9183757350412945)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Next Button Label'
,p_source=>'BTN_NEXT_LBL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
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
 p_id=>wwv_flow_api.id(10557958654986840)
,p_name=>'P99990105_BTN_NEXT_FNFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(9183757350412945)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Next Button Label Font'
,p_source=>'BTN_NEXT_FNFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10558383513986842)
,p_name=>'P99990105_BTN_NEXT_WIDTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(9183757350412945)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Next Button Width'
,p_source=>'BTN_NEXT_WIDTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10558796299986842)
,p_name=>'P99990105_BTN_NEXT_HIGHT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(9183757350412945)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Next Button Height'
,p_source=>'BTN_NEXT_HIGHT'
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
 p_id=>wwv_flow_api.id(10559101369986842)
,p_name=>'P99990105_BTN_NEXT_ICON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(9183757350412945)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Next Button Icon'
,p_source=>'BTN_NEXT_ICON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ICON LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''ICON''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Icon --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10559579807986842)
,p_name=>'P99990105_BTN_NEXT_CLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(9183757350412945)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Next Button Font color'
,p_source=>'BTN_NEXT_CLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10559963859986845)
,p_name=>'P99990105_BTN_NEXT_BGCLRL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(9183757350412945)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Background Color Left'
,p_source=>'BTN_NEXT_BGCLRL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10560363060986845)
,p_name=>'P99990105_BTN_NEXT_BGCLRR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(9183757350412945)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Background Color Right'
,p_source=>'BTN_NEXT_BGCLRR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10560733035986845)
,p_name=>'P99990105_BTN_NEXT_BRDRCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(9183757350412945)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Border Color'
,p_source=>'BTN_NEXT_BRDRCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10561172173986845)
,p_name=>'P99990105_BTN_NEXT_BRDRRDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(9183757350412945)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Border Radius'
,p_source=>'BTN_NEXT_BRDRRDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10561510498986845)
,p_name=>'P99990105_BTN_CNCL_LBL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(9183878191412946)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Cancel Button Label'
,p_source=>'BTN_CNCL_LBL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
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
 p_id=>wwv_flow_api.id(10561951393986845)
,p_name=>'P99990105_BTN_CNCL_WIDTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(9183878191412946)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Cancel Button Width'
,p_source=>'BTN_CNCL_WIDTH'
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
 p_id=>wwv_flow_api.id(10562398107986845)
,p_name=>'P99990105_BTN_CNCL_HIGHT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(9183878191412946)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Cancel Button Height'
,p_source=>'BTN_CNCL_HIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10562707037986846)
,p_name=>'P99990105_BTN_CNCL_ICON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(9183878191412946)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Cancel Button Icon'
,p_source=>'BTN_CNCL_ICON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ICON LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''ICON''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Icon --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10563157755986846)
,p_name=>'P99990105_BTN_CNCL_CLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(9183878191412946)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Label Color'
,p_source=>'BTN_CNCL_CLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10563521450986848)
,p_name=>'P99990105_BTN_CNCL_BGCLRL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(9183878191412946)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Background color Left'
,p_source=>'BTN_CNCL_BGCLRL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10563928215986848)
,p_name=>'P99990105_BTN_CNCL_BGCLRR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(9183878191412946)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Background color Right'
,p_source=>'BTN_CNCL_BGCLRR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10564370379986848)
,p_name=>'P99990105_BTN_CNCL_BRDRCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(9183878191412946)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Border Color'
,p_source=>'BTN_CNCL_BRDRCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10564727727986848)
,p_name=>'P99990105_BTN_CNCL_BRDRRDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(9183878191412946)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Border Radius'
,p_source=>'BTN_CNCL_BRDRRDS'
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
 p_id=>wwv_flow_api.id(10565112859986848)
,p_name=>'P99990105_BTN_CNCL_FNFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(9183878191412946)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Cancel Button Font'
,p_source=>'BTN_CNCL_FNFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10565568407986848)
,p_name=>'P99990105_BTN_SAVE_LBL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(9183548100412943)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Save Button Label'
,p_source=>'BTN_SAVE_LBL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
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
 p_id=>wwv_flow_api.id(10565971428986850)
,p_name=>'P99990105_BTN_SAVE_WIDTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(9183548100412943)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Save Button Width'
,p_source=>'BTN_SAVE_WIDTH'
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
 p_id=>wwv_flow_api.id(10566353255986850)
,p_name=>'P99990105_BTN_SAVE_HIGHT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_api.id(9183548100412943)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Save Button Height'
,p_source=>'BTN_SAVE_HIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10566702034986850)
,p_name=>'P99990105_BTN_SAVE_ICON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_api.id(9183548100412943)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Save Button Icon'
,p_source=>'BTN_SAVE_ICON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ICON LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''ICON''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Icon --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10567109459986850)
,p_name=>'P99990105_BTN_SAVE_CLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_api.id(9183548100412943)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Save Button Label Color'
,p_source=>'BTN_SAVE_CLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10567550890986850)
,p_name=>'P99990105_BTN_SAVE_BGCLRL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_api.id(9183548100412943)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Background Color Left'
,p_source=>'BTN_SAVE_BGCLRL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10567993631986850)
,p_name=>'P99990105_BTN_SAVE_BGCLRR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(9183548100412943)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Background Color Right'
,p_source=>'BTN_SAVE_BGCLRR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10568321112986850)
,p_name=>'P99990105_BTN_SAVE_BRDRCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_api.id(9183548100412943)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Border Color'
,p_source=>'BTN_SAVE_BRDRCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10568744125986851)
,p_name=>'P99990105_BTN_SAVE_BRDRRDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(9183548100412943)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Border Radius'
,p_source=>'BTN_SAVE_BRDRRDS'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10569153324986851)
,p_name=>'P99990105_BTN_SAVE_FNFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(9183548100412943)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Save Button Font Type'
,p_source=>'BTN_SAVE_FNFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10569503969986851)
,p_name=>'P99990105_BTN_BACK_LBL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(9183602798412944)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Back Button Label'
,p_source=>'BTN_BACK_LBL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
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
 p_id=>wwv_flow_api.id(10569972613986851)
,p_name=>'P99990105_BTN_BACK_WIDTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_api.id(9183602798412944)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Back Button Width'
,p_source=>'BTN_BACK_WIDTH'
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
 p_id=>wwv_flow_api.id(10570317556986851)
,p_name=>'P99990105_BTN_BACK_HIGHT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_api.id(9183602798412944)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Back Button Height'
,p_source=>'BTN_BACK_HIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10570707989986851)
,p_name=>'P99990105_BTN_BACK_ICON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_api.id(9183602798412944)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Back Button Icon'
,p_source=>'BTN_BACK_ICON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ICON LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''ICON''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Icon --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10571153555986853)
,p_name=>'P99990105_BTN_BACK_CLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(9183602798412944)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Label Font Color'
,p_source=>'BTN_BACK_CLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10571501713986853)
,p_name=>'P99990105_BTN_BACK_BGCLRL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_api.id(9183602798412944)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Background Color Left'
,p_source=>'BTN_BACK_BGCLRL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10571973760986853)
,p_name=>'P99990105_BTN_BACK_BGCLRR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(9183602798412944)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Background Color Right'
,p_source=>'BTN_BACK_BGCLRR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10572307888986853)
,p_name=>'P99990105_BTN_BACK_BRDRCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_api.id(9183602798412944)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Border Color'
,p_source=>'BTN_BACK_BRDRCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10572702784986853)
,p_name=>'P99990105_BTN_BACK_BRDRRDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_api.id(9183602798412944)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Border Family'
,p_source=>'BTN_BACK_BRDRRDS'
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
 p_id=>wwv_flow_api.id(10573163171986853)
,p_name=>'P99990105_BTN_BACK_FNFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_api.id(9183602798412944)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Back Button Font Type'
,p_source=>'BTN_BACK_FNFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10573582410986853)
,p_name=>'P99990105_BTN_SBMT_LBL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_api.id(9183426685412942)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Label'
,p_source=>'BTN_SBMT_LBL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>38
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
 p_id=>wwv_flow_api.id(10573993491986853)
,p_name=>'P99990105_BTN_SBMT_WIDTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_api.id(9183426685412942)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Width'
,p_source=>'BTN_SBMT_WIDTH'
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
 p_id=>wwv_flow_api.id(10574319606986853)
,p_name=>'P99990105_BTN_SBMT_HIGHT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_api.id(9183426685412942)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Height'
,p_source=>'BTN_SBMT_HIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10574745278986853)
,p_name=>'P99990105_BTN_SBMT_ICON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_api.id(9183426685412942)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Icon'
,p_source=>'BTN_SBMT_ICON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ICON LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''ICON''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Icon --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10575134315986853)
,p_name=>'P99990105_BTN_SBMT_CLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_api.id(9183426685412942)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Label Color'
,p_source=>'BTN_SBMT_CLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10575536377986853)
,p_name=>'P99990105_BTN_SBMT_BGCLRL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_api.id(9183426685412942)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Color Left'
,p_source=>'BTN_SBMT_BGCLRL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10575962660986853)
,p_name=>'P99990105_BTN_SBMT_BGCLRR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_api.id(9183426685412942)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Color Right'
,p_source=>'BTN_SBMT_BGCLRR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10576377573986854)
,p_name=>'P99990105_BTN_SBMT_BRDRCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_api.id(9183426685412942)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Border Color'
,p_source=>'BTN_SBMT_BRDRCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10576750255986854)
,p_name=>'P99990105_BTN_SBMT_BRDRRDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_api.id(9183426685412942)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Border Radius'
,p_source=>'BTN_SBMT_BRDRRDS'
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
 p_id=>wwv_flow_api.id(10577132329986854)
,p_name=>'P99990105_BTN_SBMT_FNFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_api.id(9183426685412942)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Font Type'
,p_source=>'BTN_SBMT_FNFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10577527865986854)
,p_name=>'P99990105_BTN_DELT_LBL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_api.id(9183975833412947)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Delete Button Label'
,p_source=>'BTN_DELT_LBL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
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
 p_id=>wwv_flow_api.id(10577925960986854)
,p_name=>'P99990105_BTN_DELT_WIDTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_api.id(9183975833412947)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Delete Button Width'
,p_source=>'BTN_DELT_WIDTH'
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
 p_id=>wwv_flow_api.id(10578378194986854)
,p_name=>'P99990105_BTN_DELT_HIGHT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(9183975833412947)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Delete Button Height'
,p_source=>'BTN_DELT_HIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10578742840986854)
,p_name=>'P99990105_BTN_DELT_ICON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(9183975833412947)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Delete Button Icon'
,p_source=>'BTN_DELT_ICON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ICON LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''ICON''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Icon --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10579105710986854)
,p_name=>'P99990105_BTN_DELT_CLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(9183975833412947)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Label Color'
,p_source=>'BTN_DELT_CLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10579529386986854)
,p_name=>'P99990105_BTN_DELT_BGCLRL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(9183975833412947)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Background Color Left'
,p_source=>'BTN_DELT_BGCLRL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10579996378986854)
,p_name=>'P99990105_BTN_DELT_BGCLRR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_api.id(9183975833412947)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Background Color Right'
,p_source=>'BTN_DELT_BGCLRR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10580397268986854)
,p_name=>'P99990105_BTN_DELT_BRDRCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(9183975833412947)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Border Color'
,p_source=>'BTN_DELT_BRDRCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10580706321986854)
,p_name=>'P99990105_BTN_DELT_BRDRRDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(9183975833412947)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Border Radius'
,p_source=>'BTN_DELT_BRDRRDS'
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
 p_id=>wwv_flow_api.id(10581126837986854)
,p_name=>'P99990105_BTN_DELT_FNFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(9183975833412947)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Delete Button Font'
,p_source=>'BTN_DELT_FNFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10581559595986856)
,p_name=>'P99990105_BTN_PRNT_LBL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(9184133026412949)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Print Button Label'
,p_source=>'BTN_PRNT_LBL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
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
 p_id=>wwv_flow_api.id(10581994478986856)
,p_name=>'P99990105_BTN_PRNT_WIDTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(9184133026412949)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Print Button Width'
,p_source=>'BTN_PRNT_WIDTH'
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
 p_id=>wwv_flow_api.id(10582302389986856)
,p_name=>'P99990105_BTN_PRNT_HIGHT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(9184133026412949)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Print Button Height'
,p_source=>'BTN_PRNT_HIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10582778590986856)
,p_name=>'P99990105_BTN_PRNT_ICON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(9184133026412949)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Print Button Icon'
,p_source=>'BTN_PRNT_ICON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ICON LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''ICON''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Icon --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10583144973986856)
,p_name=>'P99990105_BTN_PRNT_CLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(9184133026412949)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Label Color'
,p_source=>'BTN_PRNT_CLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10583580527986856)
,p_name=>'P99990105_BTN_PRNT_BGCLRL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(9184133026412949)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Background Color left'
,p_source=>'BTN_PRNT_BGCLRL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10583979949986856)
,p_name=>'P99990105_BTN_PRNT_BGCLRR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(9184133026412949)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Background Color Right'
,p_source=>'BTN_PRNT_BGCLRR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10584392219986856)
,p_name=>'P99990105_BTN_PRNT_BRDRCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_api.id(9184133026412949)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Border Color'
,p_source=>'BTN_PRNT_BRDRCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10584736811986856)
,p_name=>'P99990105_BTN_PRNT_BRDRRDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_api.id(9184133026412949)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Border Radius'
,p_source=>'BTN_PRNT_BRDRRDS'
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
 p_id=>wwv_flow_api.id(10585130401986856)
,p_name=>'P99990105_BTN_PRNT_FNFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_api.id(9184133026412949)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Print Button Font Type'
,p_source=>'BTN_PRNT_FNFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10585593148986856)
,p_name=>'P99990105_BTN_RFRS_LBL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_api.id(9184013220412948)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Refresh Button Label'
,p_source=>'BTN_RFRS_LBL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
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
 p_id=>wwv_flow_api.id(10585984415986857)
,p_name=>'P99990105_BTN_RFRS_WIDTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1170
,p_item_plug_id=>wwv_flow_api.id(9184013220412948)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Refresh Button Width'
,p_source=>'BTN_RFRS_WIDTH'
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
 p_id=>wwv_flow_api.id(10586362860986857)
,p_name=>'P99990105_BTN_RFRS_HIGHT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1180
,p_item_plug_id=>wwv_flow_api.id(9184013220412948)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Refresh Button Height'
,p_source=>'BTN_RFRS_HIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10586703256986857)
,p_name=>'P99990105_BTN_RFRS_ICON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_api.id(9184013220412948)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Refresh Button Icon'
,p_source=>'BTN_RFRS_ICON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ICON LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''ICON''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Icon --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10587122013986857)
,p_name=>'P99990105_BTN_RFRS_CLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1200
,p_item_plug_id=>wwv_flow_api.id(9184013220412948)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Label Color'
,p_source=>'BTN_RFRS_CLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10587536025986857)
,p_name=>'P99990105_BTN_RFRS_BGCLRL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1210
,p_item_plug_id=>wwv_flow_api.id(9184013220412948)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Background Color Left'
,p_source=>'BTN_RFRS_BGCLRL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10587966709986857)
,p_name=>'P99990105_BTN_RFRS_BGCLRR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1220
,p_item_plug_id=>wwv_flow_api.id(9184013220412948)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Background Color Right'
,p_source=>'BTN_RFRS_BGCLRR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10588370408986857)
,p_name=>'P99990105_BTN_RFRS_BRDRCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_api.id(9184013220412948)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Border Color'
,p_source=>'BTN_RFRS_BRDRCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10588731370986857)
,p_name=>'P99990105_BTN_RFRS_BRDRRDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1250
,p_item_plug_id=>wwv_flow_api.id(9184013220412948)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Button Border Radius'
,p_source=>'BTN_RFRS_BRDRRDS'
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
 p_id=>wwv_flow_api.id(10589128311986857)
,p_name=>'P99990105_BTN_RFRS_FNFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1260
,p_item_plug_id=>wwv_flow_api.id(9184013220412948)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Refresh Button Font'
,p_source=>'BTN_RFRS_FNFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10589591466986859)
,p_name=>'P99990105_PAGE_ALRT_BGCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1250
,p_item_plug_id=>wwv_flow_api.id(9183150077412939)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Page Alrt Bgclr'
,p_source=>'PAGE_ALRT_BGCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10589988818986859)
,p_name=>'P99990105_PAGE_ALRT_FNTCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1260
,p_item_plug_id=>wwv_flow_api.id(9183150077412939)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Page Alrt Fntclr'
,p_source=>'PAGE_ALRT_FNTCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10590312774986859)
,p_name=>'P99990105_PAGE_ALRT_FNTSIZE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1270
,p_item_plug_id=>wwv_flow_api.id(9183150077412939)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Page Alrt Fntsize'
,p_source=>'PAGE_ALRT_FNTSIZE'
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
 p_id=>wwv_flow_api.id(10590743207986859)
,p_name=>'P99990105_PAGE_ALRT_FNTFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1280
,p_item_plug_id=>wwv_flow_api.id(9183150077412939)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Page Alrt Fntfmly'
,p_source=>'PAGE_ALRT_FNTFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10591188059986859)
,p_name=>'P99990105_PAGE_ALRT_BRDRCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1290
,p_item_plug_id=>wwv_flow_api.id(9183150077412939)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Page Alrt Brdrclr'
,p_source=>'PAGE_ALRT_BRDRCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10591552153986859)
,p_name=>'P99990105_PAGE_ALRT_BRDRRDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1300
,p_item_plug_id=>wwv_flow_api.id(9183150077412939)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Page Alrt Brdrrds'
,p_source=>'PAGE_ALRT_BRDRRDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(10591978549986859)
,p_name=>'P99990105_OPRSTAMP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1310
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_source=>'OPRSTAMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10592397820986859)
,p_name=>'P99990105_TIMSTAMP'
,p_source_data_type=>'DATE'
,p_item_sequence=>1320
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_source=>'TIMSTAMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10592795507986860)
,p_name=>'P99990105_MODIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_source=>'MODIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10593133824986860)
,p_name=>'P99990105_MODIFIED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_source=>'MODIFIED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11445279483823001)
,p_name=>'P99990105_PAG_BODY_BGCLRR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9182414143412932)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Background Color Right'
,p_source=>'PAG_BODY_BGCLRR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>30
,p_cMaxlength=>17
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11445323664823002)
,p_name=>'P99990105_ITEM_CNTR_BRDRCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(9182630032412934)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Item Border Color'
,p_source=>'ITEM_CNTR_BRDRCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11445457363823003)
,p_name=>'P99990105_ITEM_CNTR_BRDRRDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(9182630032412934)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Item Border Radius'
,p_source=>'ITEM_CNTR_BRDRRDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11694333655224306)
,p_name=>'P99990105_RPT_IGR_HDRBGCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(9183081348412938)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Grid Header Color'
,p_source=>'RPT_IGR_HDRBGCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11694443150224307)
,p_name=>'P99990105_RPT_IGR_HDRFNTCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(9183081348412938)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Grid Header Font Color'
,p_source=>'RPT_IGR_HDRFNTCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11694525295224308)
,p_name=>'P99990105_RPT_IGR_HDRFNTSIZE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(9183081348412938)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Grid Header Font Size'
,p_source=>'RPT_IGR_HDRFNTSIZE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11694662437224309)
,p_name=>'P99990105_RPT_IGR_HDRFNTFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(9183081348412938)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Grid Header Font Type'
,p_source=>'RPT_IGR_HDRFNTFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11694750739224310)
,p_name=>'P99990105_RPT_CLS_HDRBGCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(9182807015412936)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Header Color'
,p_source=>'RPT_CLS_HDRBGCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11694812681224311)
,p_name=>'P99990105_RPT_CLS_HDRFNTCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(9182807015412936)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Header Font Color'
,p_source=>'RPT_CLS_HDRFNTCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11694921895224312)
,p_name=>'P99990105_RPT_CLS_HDRFNTSIZE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(9182807015412936)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Header Font Size'
,p_source=>'RPT_CLS_HDRFNTSIZE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11695022506224313)
,p_name=>'P99990105_RPT_CLS_HDRFNTFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(9182807015412936)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Header Font Type'
,p_source=>'RPT_CLS_HDRFNTFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11695176127224314)
,p_name=>'P99990105_RPT_IRR_HDRBGCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(9182909540412937)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Header Color'
,p_source=>'RPT_IRR_HDRBGCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11695225910224315)
,p_name=>'P99990105_RPT_IRR_HDRFNTCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(9182909540412937)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Header Font Color'
,p_source=>'RPT_IRR_HDRFNTCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11695324457224316)
,p_name=>'P99990105_RPT_IRR_HDRFNTSIZE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(9182909540412937)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Header Font Size'
,p_source=>'RPT_IRR_HDRFNTSIZE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11695466433224317)
,p_name=>'P99990105_RPT_IRR_HDRFNTFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(9182909540412937)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Report Header Font Type'
,p_source=>'RPT_IRR_HDRFNTFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13327618438295801)
,p_name=>'P99990105_PAG_BODY_BGCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Pag Body Bgclr'
,p_source=>'PAG_BODY_BGCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>17
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13327704127295802)
,p_name=>'P99990105_BTN_CRET_LBL_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Cret Lbl'
,p_source=>'BTN_CRET_LBL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>38
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13327873432295803)
,p_name=>'P99990105_BTN_CRET_LBL_FNTWT_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1370
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Cret Lbl Fntwt'
,p_source=>'BTN_CRET_LBL_FNTWT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13327993173295804)
,p_name=>'P99990105_BTN_CRET_WIDTH_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Cret Width'
,p_source=>'BTN_CRET_WIDTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13328045424295805)
,p_name=>'P99990105_BTN_CRET_HIGHT_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Cret Hight'
,p_source=>'BTN_CRET_HIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13328119472295806)
,p_name=>'P99990105_BTN_CRET_ICON_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Cret Icon'
,p_source=>'BTN_CRET_ICON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13328253037295807)
,p_name=>'P99990105_BTN_CRET_CLR_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Cret Clr'
,p_source=>'BTN_CRET_CLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13328388188295808)
,p_name=>'P99990105_BTN_CRET_BGCLRL_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Cret Bgclrl'
,p_source=>'BTN_CRET_BGCLRL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13328474647295809)
,p_name=>'P99990105_BTN_CRET_BGCLRR_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1430
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Cret Bgclrr'
,p_source=>'BTN_CRET_BGCLRR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13328549531295810)
,p_name=>'P99990105_BTN_CRET_GRDNT_DIR_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1440
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Cret Grdnt Dir'
,p_source=>'BTN_CRET_GRDNT_DIR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>17
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13328662976295811)
,p_name=>'P99990105_BTN_CRET_BRDRCLR_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1450
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Cret Brdrclr'
,p_source=>'BTN_CRET_BRDRCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13328743409295812)
,p_name=>'P99990105_BTN_CRET_BRDRRDS_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Cret Brdrrds'
,p_source=>'BTN_CRET_BRDRRDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13328802520295813)
,p_name=>'P99990105_BTN_CRET_FNFMLY_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1470
,p_item_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Cret Fnfmly'
,p_source=>'BTN_CRET_FNFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14472723000780537)
,p_name=>'P99990105_PAG_BODY_GRDNT_DIR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(9182414143412932)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Pag Body Grdnt Dir'
,p_source=>'PAG_BODY_GRDNT_DIR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GRADIENT_DIRECTION'
,p_lov=>'.'||wwv_flow_api.id(16067604316889193)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14472815166780538)
,p_name=>'P99990105_BTN_NEXT_LBL_FNTWT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(9183757350412945)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Next Lbl Fntwt'
,p_source=>'BTN_NEXT_LBL_FNTWT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14472981405780539)
,p_name=>'P99990105_BTN_NEXT_GRDNT_DIR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(9183757350412945)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Next Grdnt Dir'
,p_source=>'BTN_NEXT_GRDNT_DIR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GRADIENT_DIRECTION'
,p_lov=>'.'||wwv_flow_api.id(16067604316889193)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14473055275780540)
,p_name=>'P99990105_BTN_CNCL_LBL_FNTWT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(9183878191412946)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Cncl Lbl Fntwt'
,p_source=>'BTN_CNCL_LBL_FNTWT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14473173810780541)
,p_name=>'P99990105_BTN_CNCL_GRDNT_DIR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(9183878191412946)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Cncl Grdnt Dir'
,p_source=>'BTN_CNCL_GRDNT_DIR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GRADIENT_DIRECTION'
,p_lov=>'.'||wwv_flow_api.id(16067604316889193)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14473247779780542)
,p_name=>'P99990105_BTN_SAVE_LBL_FNTWT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(9183548100412943)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Save Lbl Fntwt'
,p_source=>'BTN_SAVE_LBL_FNTWT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14473381854780543)
,p_name=>'P99990105_BTN_SAVE_GRDNT_DIR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_api.id(9183548100412943)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Save Grdnt Dir'
,p_source=>'BTN_SAVE_GRDNT_DIR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GRADIENT_DIRECTION'
,p_lov=>'.'||wwv_flow_api.id(16067604316889193)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14473419836780544)
,p_name=>'P99990105_BTN_BACK_LBL_FNTWT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(9183602798412944)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Back Lbl Fntwt'
,p_source=>'BTN_BACK_LBL_FNTWT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14473500480780545)
,p_name=>'P99990105_BTN_BACK_GRDNT_DIR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_api.id(9183602798412944)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Back Grdnt Dir'
,p_source=>'BTN_BACK_GRDNT_DIR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GRADIENT_DIRECTION'
,p_lov=>'.'||wwv_flow_api.id(16067604316889193)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14473679497780546)
,p_name=>'P99990105_BTN_SBMT_LBL_FNTWT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_api.id(9183426685412942)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Sbmt Lbl Fntwt'
,p_source=>'BTN_SBMT_LBL_FNTWT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14473719086780547)
,p_name=>'P99990105_BTN_SBMT_GRDNT_DIR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_api.id(9183426685412942)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Sbmt Grdnt Dir'
,p_source=>'BTN_SBMT_GRDNT_DIR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GRADIENT_DIRECTION'
,p_lov=>'.'||wwv_flow_api.id(16067604316889193)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14473852545780548)
,p_name=>'P99990105_BTN_DELT_LBL_FNTWT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_api.id(9183975833412947)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Delt Lbl Fntwt'
,p_source=>'BTN_DELT_LBL_FNTWT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14473980988780549)
,p_name=>'P99990105_BTN_DELT_GRDNT_DIR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(9183975833412947)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Delt Grdnt Dir'
,p_source=>'BTN_DELT_GRDNT_DIR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GRADIENT_DIRECTION'
,p_lov=>'.'||wwv_flow_api.id(16067604316889193)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14474035439780550)
,p_name=>'P99990105_BTN_PRNT_LBL_FNTWT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(9184133026412949)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Prnt Lbl Fntwt'
,p_source=>'BTN_PRNT_LBL_FNTWT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16052772299875901)
,p_name=>'P99990105_BTN_PRNT_GRDNT_DIR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(9184133026412949)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Prnt Grdnt Dir'
,p_source=>'BTN_PRNT_GRDNT_DIR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GRADIENT_DIRECTION'
,p_lov=>'.'||wwv_flow_api.id(16067604316889193)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16052873344875902)
,p_name=>'P99990105_BTN_RFRS_LBL_FNTWT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_api.id(9184013220412948)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Rfrs Lbl Fntwt'
,p_source=>'BTN_RFRS_LBL_FNTWT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16052947836875903)
,p_name=>'P99990105_BTN_RFRS_GRDNT_DIR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1230
,p_item_plug_id=>wwv_flow_api.id(9184013220412948)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Rfrs Grdnt Dir'
,p_source=>'BTN_RFRS_GRDNT_DIR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GRADIENT_DIRECTION'
,p_lov=>'.'||wwv_flow_api.id(16067604316889193)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16165526838017016)
,p_name=>'P99990105_PAG_HDR_BGCLRR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9182414143412932)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Page HDR BG Color Right'
,p_source=>'PAG_HDR_BGCLRR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>30
,p_cMaxlength=>17
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16165627857017017)
,p_name=>'P99990105_PAG_HDR_BGCLRL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9182414143412932)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Page HDR BG Color Left'
,p_source=>'PAG_HDR_BGCLRL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>30
,p_cMaxlength=>17
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16165885441017019)
,p_name=>'P99990105_MENU_NAVBAR_BGCLRR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(16165752750017018)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_item_default=>'001'
,p_prompt=>'Menu Sidebar Color Right'
,p_source=>'MENU_NAVBAR_BGCLRR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16166866758017029)
,p_name=>'P99990105_MENU_NAVBAR_BGCLRL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(16165752750017018)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Menu Sidebar Color Left'
,p_source=>'MENU_NAVBAR_BGCLRL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16166934913017030)
,p_name=>'P99990105_MENU_MAIN_FNTCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(16165752750017018)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Main Menu Font Color'
,p_source=>'MENU_MAIN_FNTCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16167083227017031)
,p_name=>'P99990105_MENU_MAIN_FNTSIZE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(16165752750017018)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Main Menu Font Size'
,p_source=>'MENU_MAIN_FNTSIZE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16167125055017032)
,p_name=>'P99990105_MENU_MAIN_FNTFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(16165752750017018)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Main Menu Font Type'
,p_source=>'MENU_MAIN_FNTFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16167210463017033)
,p_name=>'P99990105_MENU_MAIN_FNTWT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(16165752750017018)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Main Menu Font Weight'
,p_source=>'MENU_MAIN_FNTWT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16167330761017034)
,p_name=>'P99990105_MENU_SUB_FNTCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(16165752750017018)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Sub Menu Font Color'
,p_source=>'MENU_SUB_FNTCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16167440433017035)
,p_name=>'P99990105_MENU_SUB_FNTSIZE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(16165752750017018)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Sub Menu Font Size'
,p_source=>'MENU_SUB_FNTSIZE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16167581241017036)
,p_name=>'P99990105_MENU_SUB_FNTFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(16165752750017018)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Sub Menu Font Type'
,p_source=>'MENU_SUB_FNTFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16167651618017037)
,p_name=>'P99990105_MENU_SUB_FNTWT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(16165752750017018)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Sub Menu Font Weight'
,p_source=>'MENU_SUB_FNTWT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28435747448451616)
,p_name=>'P99990105_MENU_NAVBAR_WIDTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16165752750017018)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Menu Bar Width'
,p_source=>'MENU_NAVBAR_WIDTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28435893100451617)
,p_name=>'P99990105_MENU_RIGHTBAR_WIDTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16165752750017018)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Menu Right Column Width'
,p_source=>'MENU_RIGHTBAR_WIDTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47801607781634235)
,p_name=>'P99990105_BTN_CRET_LBL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(47801541432634234)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Label'
,p_source=>'BTN_SBMT_LBL'
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
 p_id=>wwv_flow_api.id(47801708146634236)
,p_name=>'P99990105_BTN_CRET_LBL_FNTWT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(47801541432634234)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Sbmt Lbl Fntwt'
,p_source=>'BTN_SBMT_LBL_FNTWT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47801806645634237)
,p_name=>'P99990105_BTN_CRET_WIDTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(47801541432634234)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Width'
,p_source=>'BTN_SBMT_WIDTH'
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
 p_id=>wwv_flow_api.id(47801943852634238)
,p_name=>'P99990105_BTN_CRET_HIGHT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(47801541432634234)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Height'
,p_source=>'BTN_SBMT_HIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(47802084149634239)
,p_name=>'P99990105_BTN_CRET_ICON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(47801541432634234)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Icon'
,p_source=>'BTN_SBMT_ICON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ICON LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''ICON''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Icon --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47802138090634240)
,p_name=>'P99990105_BTN_CRET_CLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(47801541432634234)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Label Color'
,p_source=>'BTN_SBMT_CLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47802211203634241)
,p_name=>'P99990105_BTN_CRET_BGCLRL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(47801541432634234)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Color Left'
,p_source=>'BTN_SBMT_BGCLRL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47802317888634242)
,p_name=>'P99990105_BTN_CRET_BGCLRR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(47801541432634234)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Color Right'
,p_source=>'BTN_SBMT_BGCLRR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47802463237634243)
,p_name=>'P99990105_BTN_CRET_GRDNT_DIR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(47801541432634234)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Btn Sbmt Grdnt Dir'
,p_source=>'BTN_SBMT_GRDNT_DIR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GRADIENT_DIRECTION'
,p_lov=>'.'||wwv_flow_api.id(16067604316889193)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47802545026634244)
,p_name=>'P99990105_BTN_CRET_BRDRCLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(47801541432634234)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Border Color'
,p_source=>'BTN_SBMT_BRDRCLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47802687869634245)
,p_name=>'P99990105_BTN_CRET_BRDRRDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(47801541432634234)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Border Radius'
,p_source=>'BTN_SBMT_BRDRRDS'
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
 p_id=>wwv_flow_api.id(47802791244634246)
,p_name=>'P99990105_BTN_CRET_FNFMLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(47801541432634234)
,p_item_source_plug_id=>wwv_flow_api.id(10539670584986812)
,p_prompt=>'Submit Button Font Type'
,p_source=>'BTN_SBMT_FNFMLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ELMNT_NAME as dis, ELMNT_NAME as ret',
'from SYPGELMNT',
'where  ELMNT_TYPE=''FONT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Font --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10636548743986895)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(10539670584986812)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Template Design Entry/ Modify'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10636159025986893)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(10539670584986812)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Template Design Entry/ Modify'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9183272926412940)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE INSERT MST'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT NVL(MAX(TMPLT_ID),0)+1 INTO :P99990105_TMPLT_ID FROM SYPGTMPLT;',
'',
':P99990105_OPRSTAMP := :APP_USER;',
':P99990105_TIMSTAMP := SYSDATE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(10635315827986890)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9183319721412941)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P99990105_MODIFIED_BY := :APP_USER;',
':P99990105_MODIFIED_DATE := SYSDATE;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(10634959309986890)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27019694412988831)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Template Design Save'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select',
'   PAG_BODY_BGCLR,',
'   PAG_BODY_BGCLRR,',
'   PAG_BODY_BGCLRL,',
'   PAG_BODY_GRDNT_DIR,',
'   PAG_HDR_BGCLRR,',
'   PAG_HDR_BGCLRL,',
'   DATE_FRMT_MASK,',
'   CURRENCY_FRMT_MASK,',
'   MENU_NAVBAR_BGCLRR,',
'   MENU_NAVBAR_BGCLRL,',
'   MENU_MAIN_FNTCLR,',
'   MENU_MAIN_FNTSIZE,',
'   MENU_MAIN_FNTFMLY,',
'   MENU_MAIN_FNTWT,',
'   MENU_SUB_FNTCLR,',
'   MENU_SUB_FNTSIZE,',
'   MENU_SUB_FNTFMLY,',
'   MENU_SUB_FNTWT,',
'   RGN_RGN1_BGCLR,',
'   RGN_RGN1_HEIGHT,',
'   RGN_RGN2_BGCLR,',
'   RGN_RGN2_HEIGHT,',
'   RGN_RGN3_BGCLR,',
'   RGN_RGN3_HEIGHT,',
'   RGN_RGN4_BGCLR,',
'   RGN_RGN4_HEIGHT,',
'   RGN_RGN5_BGCLR,',
'   RGN_RGN5_HEIGHT,',
'   RGN_RGN6_BGCLR,',
'   RGN_RGN6_HEIGHT,',
'   RPT_CLS_BGCLR,',
'   RPT_CLS_HDRBGCLR,',
'   RPT_CLS_HDRFNTCLR,',
'   RPT_CLS_HDRFNTSIZE,',
'   RPT_CLS_HDRFNTFMLY,',
'   RPT_CLS_FNTCLR,',
'   RPT_CLS_FNTSIZE,',
'   RPT_CLS_FNFMLY,',
'   RPT_CLS_BRDRCLR,',
'   RPT_IRR_BGCLR,',
'   RPT_IRR_HDRBGCLR,',
'   RPT_IRR_HDRFNTCLR,',
'   RPT_IRR_HDRFNTSIZE,',
'   RPT_IRR_HDRFNTFMLY,',
'   RPT_IRR_FNTCLR,',
'   RPT_IRR_FNTSIZE,',
'   RPT_IRR_FNFMLY,',
'   RPT_IRR_BRDRCLR,',
'   RPT_IGR_BGCLR,',
'   RPT_IGR_HDRBGCLR,',
'   RPT_IGR_HDRFNTCLR,',
'   RPT_IGR_HDRFNTSIZE,',
'   RPT_IGR_HDRFNTFMLY,',
'   RPT_IGR_FNTCLR,',
'   RPT_IGR_FNTSIZE,',
'   RPT_IGR_FNFMLY,',
'   RPT_IGR_BRDRCLR,',
'   ITEM_CNTR_FNTCLR,',
'   ITEM_CNTR_FNTSIZE,',
'   ITEM_CNTR_FNTWT,',
'   ITEM_CNTR_FNTFMLY,',
'   ITEM_CNTR_HIGHT,',
'   ITEM_CNTR_BGCLR,',
'   ITEM_CNTR_BRDRCLR,',
'   ITEM_CNTR_BRDRRDS,',
'   ITEM_LABL_FNTCLR,',
'   ITEM_LABL_FNTSIZE,',
'   ITEM_LABL_FNTWT,',
'   ITEM_LABL_FNTFMLY,',
'   BTN_NEXT_LBL,',
'   BTN_NEXT_LBL_FNTWT,',
'   BTN_NEXT_FNFMLY,',
'   BTN_NEXT_WIDTH,',
'   BTN_NEXT_HIGHT,',
'   BTN_NEXT_ICON,',
'   BTN_NEXT_CLR,',
'   BTN_NEXT_BGCLRL,',
'   BTN_NEXT_BGCLRR,',
'   BTN_NEXT_GRDNT_DIR,',
'   BTN_NEXT_BRDRCLR,',
'   BTN_NEXT_BRDRRDS,',
'   BTN_CNCL_LBL,',
'   BTN_CNCL_LBL_FNTWT,',
'   BTN_CNCL_WIDTH,',
'   BTN_CNCL_HIGHT,',
'   BTN_CNCL_ICON,',
'   BTN_CNCL_CLR,',
'   BTN_CNCL_BGCLRL,',
'   BTN_CNCL_BGCLRR,',
'   BTN_CNCL_BRDRCLR,',
'   BTN_CNCL_GRDNT_DIR,',
'   BTN_CNCL_BRDRRDS,',
'   BTN_CNCL_FNFMLY,',
'   BTN_SAVE_LBL,',
'   BTN_SAVE_LBL_FNTWT,',
'   BTN_SAVE_WIDTH,',
'   BTN_SAVE_HIGHT,',
'   BTN_SAVE_ICON,',
'   BTN_SAVE_CLR,',
'   BTN_SAVE_BGCLRL,',
'   BTN_SAVE_BGCLRR,',
'   BTN_SAVE_GRDNT_DIR,',
'   BTN_SAVE_BRDRCLR,',
'   BTN_SAVE_BRDRRDS,',
'   BTN_SAVE_FNFMLY,',
'   BTN_BACK_LBL,',
'   BTN_BACK_LBL_FNTWT,',
'   BTN_BACK_WIDTH,',
'   BTN_BACK_HIGHT,',
'   BTN_BACK_ICON,',
'   BTN_BACK_CLR,',
'   BTN_BACK_BGCLRL,',
'   BTN_BACK_BGCLRR,',
'   BTN_BACK_GRDNT_DIR,',
'   BTN_BACK_BRDRCLR,',
'   BTN_BACK_BRDRRDS,',
'   BTN_BACK_FNFMLY,',
'   BTN_SBMT_LBL,',
'   BTN_SBMT_LBL_FNTWT,',
'   BTN_SBMT_WIDTH,',
'   BTN_SBMT_HIGHT,',
'   BTN_SBMT_ICON,',
'   BTN_SBMT_CLR,',
'   BTN_SBMT_BGCLRL,',
'   BTN_SBMT_BGCLRR,',
'   BTN_SBMT_GRDNT_DIR,',
'   BTN_SBMT_BRDRCLR,',
'   BTN_SBMT_BRDRRDS,',
'   BTN_SBMT_FNFMLY,',
'   BTN_DELT_LBL,',
'   BTN_DELT_LBL_FNTWT,',
'   BTN_DELT_WIDTH,',
'   BTN_DELT_HIGHT,',
'   BTN_DELT_ICON,',
'   BTN_DELT_CLR,',
'   BTN_DELT_BGCLRL,',
'   BTN_DELT_BGCLRR,',
'   BTN_DELT_GRDNT_DIR,',
'   BTN_DELT_BRDRCLR,',
'   BTN_DELT_BRDRRDS,',
'   BTN_DELT_FNFMLY,',
'   BTN_PRNT_LBL,',
'   BTN_PRNT_LBL_FNTWT,',
'   BTN_PRNT_WIDTH,',
'   BTN_PRNT_HIGHT,',
'   BTN_PRNT_ICON,',
'   BTN_PRNT_CLR,',
'   BTN_PRNT_BGCLRL,',
'   BTN_PRNT_BGCLRR,',
'   BTN_PRNT_GRDNT_DIR,',
'   BTN_PRNT_BRDRCLR,',
'   BTN_PRNT_BRDRRDS,',
'   BTN_PRNT_FNFMLY,',
'   BTN_RFRS_LBL,',
'   BTN_RFRS_LBL_FNTWT,',
'   BTN_RFRS_WIDTH,',
'   BTN_RFRS_HIGHT,',
'   BTN_RFRS_ICON,',
'   BTN_RFRS_CLR,',
'   BTN_RFRS_BGCLRL,',
'   BTN_RFRS_BGCLRR,',
'   BTN_RFRS_GRDNT_DIR,',
'   BTN_RFRS_BRDRCLR,',
'   BTN_RFRS_BRDRRDS,',
'   BTN_RFRS_FNFMLY,',
'   PAGE_ALRT_BGCLR,',
'   PAGE_ALRT_FNTCLR,',
'   PAGE_ALRT_FNTSIZE,',
'   PAGE_ALRT_FNTFMLY,',
'   PAGE_ALRT_BRDRCLR,',
'   PAGE_ALRT_BRDRRDS',
'   into',
'   :PAG_BODY_BGCLR,',
'   :PAG_BODY_BGCLRR,',
'   :PAG_BODY_BGCLRL,',
'   :PAG_BODY_GRDNT_DIR,',
'   :PAG_HDR_BGCLRR,',
'   :PAG_HDR_BGCLRL,',
'   :DATE_FRMT_MASK,',
'   :CURRENCY_FRMT_MASK,',
'   :MENU_NAVBAR_BGCLRR,',
'   :MENU_NAVBAR_BGCLRL,',
'   :MENU_MAIN_FNTCLR,',
'   :MENU_MAIN_FNTSIZE,',
'   :MENU_MAIN_FNTFMLY,',
'   :MENU_MAIN_FNTWT,',
'   :MENU_SUB_FNTCLR,',
'   :MENU_SUB_FNTSIZE,',
'   :MENU_SUB_FNTFMLY,',
'   :MENU_SUB_FNTWT,',
'   :RGN_RGN1_BGCLR,',
'   :RGN_RGN1_HEIGHT,',
'   :RGN_RGN2_BGCLR,',
'   :RGN_RGN2_HEIGHT,',
'   :RGN_RGN3_BGCLR,',
'   :RGN_RGN3_HEIGHT,',
'   :RGN_RGN4_BGCLR,',
'   :RGN_RGN4_HEIGHT,',
'   :RGN_RGN5_BGCLR,',
'   :RGN_RGN5_HEIGHT,',
'   :RGN_RGN6_BGCLR,',
'   :RGN_RGN6_HEIGHT,',
'   :RPT_CLS_BGCLR,',
'   :RPT_CLS_HDRBGCLR,',
'   :RPT_CLS_HDRFNTCLR,',
'   :RPT_CLS_HDRFNTSIZE,',
'   :RPT_CLS_HDRFNTFMLY,',
'   :RPT_CLS_FNTCLR,',
'   :RPT_CLS_FNTSIZE,',
'   :RPT_CLS_FNFMLY,',
'   :RPT_CLS_BRDRCLR,',
'   :RPT_IRR_BGCLR,',
'   :RPT_IRR_HDRBGCLR,',
'   :RPT_IRR_HDRFNTCLR,',
'   :RPT_IRR_HDRFNTSIZE,',
'   :RPT_IRR_HDRFNTFMLY,',
'   :RPT_IRR_FNTCLR,',
'   :RPT_IRR_FNTSIZE,',
'   :RPT_IRR_FNFMLY,',
'   :RPT_IRR_BRDRCLR,',
'   :RPT_IGR_BGCLR,',
'   :RPT_IGR_HDRBGCLR,',
'   :RPT_IGR_HDRFNTCLR,',
'   :RPT_IGR_HDRFNTSIZE,',
'   :RPT_IGR_HDRFNTFMLY,',
'   :RPT_IGR_FNTCLR,',
'   :RPT_IGR_FNTSIZE,',
'   :RPT_IGR_FNFMLY,',
'   :RPT_IGR_BRDRCLR,',
'   :ITEM_CNTR_FNTCLR,',
'   :ITEM_CNTR_FNTSIZE,',
'   :ITEM_CNTR_FNTWT,',
'   :ITEM_CNTR_FNTFMLY,',
'   :ITEM_CNTR_HIGHT,',
'   :ITEM_CNTR_BGCLR,',
'   :ITEM_CNTR_BRDRCLR,',
'   :ITEM_CNTR_BRDRRDS,',
'   :ITEM_LABL_FNTCLR,',
'   :ITEM_LABL_FNTSIZE,',
'   :ITEM_LABL_FNTWT,',
'   :ITEM_LABL_FNTFMLY,',
'   :BTN_NEXT_LBL,',
'   :BTN_NEXT_LBL_FNTWT,',
'   :BTN_NEXT_FNFMLY,',
'   :BTN_NEXT_WIDTH,',
'   :BTN_NEXT_HIGHT,',
'   :BTN_NEXT_ICON,',
'   :BTN_NEXT_CLR,',
'   :BTN_NEXT_BGCLRL,',
'   :BTN_NEXT_BGCLRR,',
'   :BTN_NEXT_GRDNT_DIR,',
'   :BTN_NEXT_BRDRCLR,',
'   :BTN_NEXT_BRDRRDS,',
'   :BTN_CNCL_LBL,',
'   :BTN_CNCL_LBL_FNTWT,',
'   :BTN_CNCL_WIDTH,',
'   :BTN_CNCL_HIGHT,',
'   :BTN_CNCL_ICON,',
'   :BTN_CNCL_CLR,',
'   :BTN_CNCL_BGCLRL,',
'   :BTN_CNCL_BGCLRR,',
'   :BTN_CNCL_BRDRCLR,',
'   :BTN_CNCL_GRDNT_DIR,',
'   :BTN_CNCL_BRDRRDS,',
'   :BTN_CNCL_FNFMLY,',
'   :BTN_SAVE_LBL,',
'   :BTN_SAVE_LBL_FNTWT,',
'   :BTN_SAVE_WIDTH,',
'   :BTN_SAVE_HIGHT,',
'   :BTN_SAVE_ICON,',
'   :BTN_SAVE_CLR,',
'   :BTN_SAVE_BGCLRL,',
'   :BTN_SAVE_BGCLRR,',
'   :BTN_SAVE_GRDNT_DIR,',
'   :BTN_SAVE_BRDRCLR,',
'   :BTN_SAVE_BRDRRDS,',
'   :BTN_SAVE_FNFMLY,',
'   :BTN_BACK_LBL,',
'   :BTN_BACK_LBL_FNTWT,',
'   :BTN_BACK_WIDTH,',
'   :BTN_BACK_HIGHT,',
'   :BTN_BACK_ICON,',
'   :BTN_BACK_CLR,',
'   :BTN_BACK_BGCLRL,',
'   :BTN_BACK_BGCLRR,',
'   :BTN_BACK_GRDNT_DIR,',
'   :BTN_BACK_BRDRCLR,',
'   :BTN_BACK_BRDRRDS,',
'   :BTN_BACK_FNFMLY,',
'   :BTN_SBMT_LBL,',
'   :BTN_SBMT_LBL_FNTWT,',
'   :BTN_SBMT_WIDTH,',
'   :BTN_SBMT_HIGHT,',
'   :BTN_SBMT_ICON,',
'   :BTN_SBMT_CLR,',
'   :BTN_SBMT_BGCLRL,',
'   :BTN_SBMT_BGCLRR,',
'   :BTN_SBMT_GRDNT_DIR,',
'   :BTN_SBMT_BRDRCLR,',
'   :BTN_SBMT_BRDRRDS,',
'   :BTN_SBMT_FNFMLY,',
'   :BTN_DELT_LBL,',
'   :BTN_DELT_LBL_FNTWT,',
'   :BTN_DELT_WIDTH,',
'   :BTN_DELT_HIGHT,',
'   :BTN_DELT_ICON,',
'   :BTN_DELT_CLR,',
'   :BTN_DELT_BGCLRL,',
'   :BTN_DELT_BGCLRR,',
'   :BTN_DELT_GRDNT_DIR,',
'   :BTN_DELT_BRDRCLR,',
'   :BTN_DELT_BRDRRDS,',
'   :BTN_DELT_FNFMLY,',
'   :BTN_PRNT_LBL,',
'   :BTN_PRNT_LBL_FNTWT,',
'   :BTN_PRNT_WIDTH,',
'   :BTN_PRNT_HIGHT,',
'   :BTN_PRNT_ICON,',
'   :BTN_PRNT_CLR,',
'   :BTN_PRNT_BGCLRL,',
'   :BTN_PRNT_BGCLRR,',
'   :BTN_PRNT_GRDNT_DIR,',
'   :BTN_PRNT_BRDRCLR,',
'   :BTN_PRNT_BRDRRDS,',
'   :BTN_PRNT_FNFMLY,',
'   :BTN_RFRS_LBL,',
'   :BTN_RFRS_LBL_FNTWT,',
'   :BTN_RFRS_WIDTH,',
'   :BTN_RFRS_HIGHT,',
'   :BTN_RFRS_ICON,',
'   :BTN_RFRS_CLR,',
'   :BTN_RFRS_BGCLRL,',
'   :BTN_RFRS_BGCLRR,',
'   :BTN_RFRS_GRDNT_DIR,',
'   :BTN_RFRS_BRDRCLR,',
'   :BTN_RFRS_BRDRRDS,',
'   :BTN_RFRS_FNFMLY,',
'   :PAGE_ALRT_BGCLR,',
'   :PAGE_ALRT_FNTCLR,',
'   :PAGE_ALRT_FNTSIZE,',
'   :PAGE_ALRT_FNTFMLY,',
'   :PAGE_ALRT_BRDRCLR,',
'   :PAGE_ALRT_BRDRRDS',
'   from',
'   sypgtmplt',
'   WHERE CACMPCDE = :COMPCODE AND CAGRPCDE = ''001'';'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(10635315827986890)
,p_process_success_message=>' Template Design Data Successfully Created'
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
 p_id=>wwv_flow_api.id(27019781804988832)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Template Design Create'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select',
'   PAG_BODY_BGCLR,',
'   PAG_BODY_BGCLRR,',
'   PAG_BODY_BGCLRL,',
'   PAG_BODY_GRDNT_DIR,',
'   PAG_HDR_BGCLRR,',
'   PAG_HDR_BGCLRL,',
'   DATE_FRMT_MASK,',
'   CURRENCY_FRMT_MASK,',
'   MENU_NAVBAR_BGCLRR,',
'   MENU_NAVBAR_BGCLRL,',
'   MENU_MAIN_FNTCLR,',
'   MENU_MAIN_FNTSIZE,',
'   MENU_MAIN_FNTFMLY,',
'   MENU_MAIN_FNTWT,',
'   MENU_SUB_FNTCLR,',
'   MENU_SUB_FNTSIZE,',
'   MENU_SUB_FNTFMLY,',
'   MENU_SUB_FNTWT,',
'   RGN_RGN1_BGCLR,',
'   RGN_RGN1_HEIGHT,',
'   RGN_RGN2_BGCLR,',
'   RGN_RGN2_HEIGHT,',
'   RGN_RGN3_BGCLR,',
'   RGN_RGN3_HEIGHT,',
'   RGN_RGN4_BGCLR,',
'   RGN_RGN4_HEIGHT,',
'   RGN_RGN5_BGCLR,',
'   RGN_RGN5_HEIGHT,',
'   RGN_RGN6_BGCLR,',
'   RGN_RGN6_HEIGHT,',
'   RPT_CLS_BGCLR,',
'   RPT_CLS_HDRBGCLR,',
'   RPT_CLS_HDRFNTCLR,',
'   RPT_CLS_HDRFNTSIZE,',
'   RPT_CLS_HDRFNTFMLY,',
'   RPT_CLS_FNTCLR,',
'   RPT_CLS_FNTSIZE,',
'   RPT_CLS_FNFMLY,',
'   RPT_CLS_BRDRCLR,',
'   RPT_IRR_BGCLR,',
'   RPT_IRR_HDRBGCLR,',
'   RPT_IRR_HDRFNTCLR,',
'   RPT_IRR_HDRFNTSIZE,',
'   RPT_IRR_HDRFNTFMLY,',
'   RPT_IRR_FNTCLR,',
'   RPT_IRR_FNTSIZE,',
'   RPT_IRR_FNFMLY,',
'   RPT_IRR_BRDRCLR,',
'   RPT_IGR_BGCLR,',
'   RPT_IGR_HDRBGCLR,',
'   RPT_IGR_HDRFNTCLR,',
'   RPT_IGR_HDRFNTSIZE,',
'   RPT_IGR_HDRFNTFMLY,',
'   RPT_IGR_FNTCLR,',
'   RPT_IGR_FNTSIZE,',
'   RPT_IGR_FNFMLY,',
'   RPT_IGR_BRDRCLR,',
'   ITEM_CNTR_FNTCLR,',
'   ITEM_CNTR_FNTSIZE,',
'   ITEM_CNTR_FNTWT,',
'   ITEM_CNTR_FNTFMLY,',
'   ITEM_CNTR_HIGHT,',
'   ITEM_CNTR_BGCLR,',
'   ITEM_CNTR_BRDRCLR,',
'   ITEM_CNTR_BRDRRDS,',
'   ITEM_LABL_FNTCLR,',
'   ITEM_LABL_FNTSIZE,',
'   ITEM_LABL_FNTWT,',
'   ITEM_LABL_FNTFMLY,',
'   BTN_NEXT_LBL,',
'   BTN_NEXT_LBL_FNTWT,',
'   BTN_NEXT_FNFMLY,',
'   BTN_NEXT_WIDTH,',
'   BTN_NEXT_HIGHT,',
'   BTN_NEXT_ICON,',
'   BTN_NEXT_CLR,',
'   BTN_NEXT_BGCLRL,',
'   BTN_NEXT_BGCLRR,',
'   BTN_NEXT_GRDNT_DIR,',
'   BTN_NEXT_BRDRCLR,',
'   BTN_NEXT_BRDRRDS,',
'   BTN_CNCL_LBL,',
'   BTN_CNCL_LBL_FNTWT,',
'   BTN_CNCL_WIDTH,',
'   BTN_CNCL_HIGHT,',
'   BTN_CNCL_ICON,',
'   BTN_CNCL_CLR,',
'   BTN_CNCL_BGCLRL,',
'   BTN_CNCL_BGCLRR,',
'   BTN_CNCL_BRDRCLR,',
'   BTN_CNCL_GRDNT_DIR,',
'   BTN_CNCL_BRDRRDS,',
'   BTN_CNCL_FNFMLY,',
'   BTN_SAVE_LBL,',
'   BTN_SAVE_LBL_FNTWT,',
'   BTN_SAVE_WIDTH,',
'   BTN_SAVE_HIGHT,',
'   BTN_SAVE_ICON,',
'   BTN_SAVE_CLR,',
'   BTN_SAVE_BGCLRL,',
'   BTN_SAVE_BGCLRR,',
'   BTN_SAVE_GRDNT_DIR,',
'   BTN_SAVE_BRDRCLR,',
'   BTN_SAVE_BRDRRDS,',
'   BTN_SAVE_FNFMLY,',
'   BTN_BACK_LBL,',
'   BTN_BACK_LBL_FNTWT,',
'   BTN_BACK_WIDTH,',
'   BTN_BACK_HIGHT,',
'   BTN_BACK_ICON,',
'   BTN_BACK_CLR,',
'   BTN_BACK_BGCLRL,',
'   BTN_BACK_BGCLRR,',
'   BTN_BACK_GRDNT_DIR,',
'   BTN_BACK_BRDRCLR,',
'   BTN_BACK_BRDRRDS,',
'   BTN_BACK_FNFMLY,',
'   BTN_SBMT_LBL,',
'   BTN_SBMT_LBL_FNTWT,',
'   BTN_SBMT_WIDTH,',
'   BTN_SBMT_HIGHT,',
'   BTN_SBMT_ICON,',
'   BTN_SBMT_CLR,',
'   BTN_SBMT_BGCLRL,',
'   BTN_SBMT_BGCLRR,',
'   BTN_SBMT_GRDNT_DIR,',
'   BTN_SBMT_BRDRCLR,',
'   BTN_SBMT_BRDRRDS,',
'   BTN_SBMT_FNFMLY,',
'   BTN_DELT_LBL,',
'   BTN_DELT_LBL_FNTWT,',
'   BTN_DELT_WIDTH,',
'   BTN_DELT_HIGHT,',
'   BTN_DELT_ICON,',
'   BTN_DELT_CLR,',
'   BTN_DELT_BGCLRL,',
'   BTN_DELT_BGCLRR,',
'   BTN_DELT_GRDNT_DIR,',
'   BTN_DELT_BRDRCLR,',
'   BTN_DELT_BRDRRDS,',
'   BTN_DELT_FNFMLY,',
'   BTN_PRNT_LBL,',
'   BTN_PRNT_LBL_FNTWT,',
'   BTN_PRNT_WIDTH,',
'   BTN_PRNT_HIGHT,',
'   BTN_PRNT_ICON,',
'   BTN_PRNT_CLR,',
'   BTN_PRNT_BGCLRL,',
'   BTN_PRNT_BGCLRR,',
'   BTN_PRNT_GRDNT_DIR,',
'   BTN_PRNT_BRDRCLR,',
'   BTN_PRNT_BRDRRDS,',
'   BTN_PRNT_FNFMLY,',
'   BTN_RFRS_LBL,',
'   BTN_RFRS_LBL_FNTWT,',
'   BTN_RFRS_WIDTH,',
'   BTN_RFRS_HIGHT,',
'   BTN_RFRS_ICON,',
'   BTN_RFRS_CLR,',
'   BTN_RFRS_BGCLRL,',
'   BTN_RFRS_BGCLRR,',
'   BTN_RFRS_GRDNT_DIR,',
'   BTN_RFRS_BRDRCLR,',
'   BTN_RFRS_BRDRRDS,',
'   BTN_RFRS_FNFMLY,',
'   PAGE_ALRT_BGCLR,',
'   PAGE_ALRT_FNTCLR,',
'   PAGE_ALRT_FNTSIZE,',
'   PAGE_ALRT_FNTFMLY,',
'   PAGE_ALRT_BRDRCLR,',
'   PAGE_ALRT_BRDRRDS',
'   into',
'   :PAG_BODY_BGCLR,',
'   :PAG_BODY_BGCLRR,',
'   :PAG_BODY_BGCLRL,',
'   :PAG_BODY_GRDNT_DIR,',
'   :PAG_HDR_BGCLRR,',
'   :PAG_HDR_BGCLRL,',
'   :DATE_FRMT_MASK,',
'   :CURRENCY_FRMT_MASK,',
'   :MENU_NAVBAR_BGCLRR,',
'   :MENU_NAVBAR_BGCLRL,',
'   :MENU_MAIN_FNTCLR,',
'   :MENU_MAIN_FNTSIZE,',
'   :MENU_MAIN_FNTFMLY,',
'   :MENU_MAIN_FNTWT,',
'   :MENU_SUB_FNTCLR,',
'   :MENU_SUB_FNTSIZE,',
'   :MENU_SUB_FNTFMLY,',
'   :MENU_SUB_FNTWT,',
'   :RGN_RGN1_BGCLR,',
'   :RGN_RGN1_HEIGHT,',
'   :RGN_RGN2_BGCLR,',
'   :RGN_RGN2_HEIGHT,',
'   :RGN_RGN3_BGCLR,',
'   :RGN_RGN3_HEIGHT,',
'   :RGN_RGN4_BGCLR,',
'   :RGN_RGN4_HEIGHT,',
'   :RGN_RGN5_BGCLR,',
'   :RGN_RGN5_HEIGHT,',
'   :RGN_RGN6_BGCLR,',
'   :RGN_RGN6_HEIGHT,',
'   :RPT_CLS_BGCLR,',
'   :RPT_CLS_HDRBGCLR,',
'   :RPT_CLS_HDRFNTCLR,',
'   :RPT_CLS_HDRFNTSIZE,',
'   :RPT_CLS_HDRFNTFMLY,',
'   :RPT_CLS_FNTCLR,',
'   :RPT_CLS_FNTSIZE,',
'   :RPT_CLS_FNFMLY,',
'   :RPT_CLS_BRDRCLR,',
'   :RPT_IRR_BGCLR,',
'   :RPT_IRR_HDRBGCLR,',
'   :RPT_IRR_HDRFNTCLR,',
'   :RPT_IRR_HDRFNTSIZE,',
'   :RPT_IRR_HDRFNTFMLY,',
'   :RPT_IRR_FNTCLR,',
'   :RPT_IRR_FNTSIZE,',
'   :RPT_IRR_FNFMLY,',
'   :RPT_IRR_BRDRCLR,',
'   :RPT_IGR_BGCLR,',
'   :RPT_IGR_HDRBGCLR,',
'   :RPT_IGR_HDRFNTCLR,',
'   :RPT_IGR_HDRFNTSIZE,',
'   :RPT_IGR_HDRFNTFMLY,',
'   :RPT_IGR_FNTCLR,',
'   :RPT_IGR_FNTSIZE,',
'   :RPT_IGR_FNFMLY,',
'   :RPT_IGR_BRDRCLR,',
'   :ITEM_CNTR_FNTCLR,',
'   :ITEM_CNTR_FNTSIZE,',
'   :ITEM_CNTR_FNTWT,',
'   :ITEM_CNTR_FNTFMLY,',
'   :ITEM_CNTR_HIGHT,',
'   :ITEM_CNTR_BGCLR,',
'   :ITEM_CNTR_BRDRCLR,',
'   :ITEM_CNTR_BRDRRDS,',
'   :ITEM_LABL_FNTCLR,',
'   :ITEM_LABL_FNTSIZE,',
'   :ITEM_LABL_FNTWT,',
'   :ITEM_LABL_FNTFMLY,',
'   :BTN_NEXT_LBL,',
'   :BTN_NEXT_LBL_FNTWT,',
'   :BTN_NEXT_FNFMLY,',
'   :BTN_NEXT_WIDTH,',
'   :BTN_NEXT_HIGHT,',
'   :BTN_NEXT_ICON,',
'   :BTN_NEXT_CLR,',
'   :BTN_NEXT_BGCLRL,',
'   :BTN_NEXT_BGCLRR,',
'   :BTN_NEXT_GRDNT_DIR,',
'   :BTN_NEXT_BRDRCLR,',
'   :BTN_NEXT_BRDRRDS,',
'   :BTN_CNCL_LBL,',
'   :BTN_CNCL_LBL_FNTWT,',
'   :BTN_CNCL_WIDTH,',
'   :BTN_CNCL_HIGHT,',
'   :BTN_CNCL_ICON,',
'   :BTN_CNCL_CLR,',
'   :BTN_CNCL_BGCLRL,',
'   :BTN_CNCL_BGCLRR,',
'   :BTN_CNCL_BRDRCLR,',
'   :BTN_CNCL_GRDNT_DIR,',
'   :BTN_CNCL_BRDRRDS,',
'   :BTN_CNCL_FNFMLY,',
'   :BTN_SAVE_LBL,',
'   :BTN_SAVE_LBL_FNTWT,',
'   :BTN_SAVE_WIDTH,',
'   :BTN_SAVE_HIGHT,',
'   :BTN_SAVE_ICON,',
'   :BTN_SAVE_CLR,',
'   :BTN_SAVE_BGCLRL,',
'   :BTN_SAVE_BGCLRR,',
'   :BTN_SAVE_GRDNT_DIR,',
'   :BTN_SAVE_BRDRCLR,',
'   :BTN_SAVE_BRDRRDS,',
'   :BTN_SAVE_FNFMLY,',
'   :BTN_BACK_LBL,',
'   :BTN_BACK_LBL_FNTWT,',
'   :BTN_BACK_WIDTH,',
'   :BTN_BACK_HIGHT,',
'   :BTN_BACK_ICON,',
'   :BTN_BACK_CLR,',
'   :BTN_BACK_BGCLRL,',
'   :BTN_BACK_BGCLRR,',
'   :BTN_BACK_GRDNT_DIR,',
'   :BTN_BACK_BRDRCLR,',
'   :BTN_BACK_BRDRRDS,',
'   :BTN_BACK_FNFMLY,',
'   :BTN_SBMT_LBL,',
'   :BTN_SBMT_LBL_FNTWT,',
'   :BTN_SBMT_WIDTH,',
'   :BTN_SBMT_HIGHT,',
'   :BTN_SBMT_ICON,',
'   :BTN_SBMT_CLR,',
'   :BTN_SBMT_BGCLRL,',
'   :BTN_SBMT_BGCLRR,',
'   :BTN_SBMT_GRDNT_DIR,',
'   :BTN_SBMT_BRDRCLR,',
'   :BTN_SBMT_BRDRRDS,',
'   :BTN_SBMT_FNFMLY,',
'   :BTN_DELT_LBL,',
'   :BTN_DELT_LBL_FNTWT,',
'   :BTN_DELT_WIDTH,',
'   :BTN_DELT_HIGHT,',
'   :BTN_DELT_ICON,',
'   :BTN_DELT_CLR,',
'   :BTN_DELT_BGCLRL,',
'   :BTN_DELT_BGCLRR,',
'   :BTN_DELT_GRDNT_DIR,',
'   :BTN_DELT_BRDRCLR,',
'   :BTN_DELT_BRDRRDS,',
'   :BTN_DELT_FNFMLY,',
'   :BTN_PRNT_LBL,',
'   :BTN_PRNT_LBL_FNTWT,',
'   :BTN_PRNT_WIDTH,',
'   :BTN_PRNT_HIGHT,',
'   :BTN_PRNT_ICON,',
'   :BTN_PRNT_CLR,',
'   :BTN_PRNT_BGCLRL,',
'   :BTN_PRNT_BGCLRR,',
'   :BTN_PRNT_GRDNT_DIR,',
'   :BTN_PRNT_BRDRCLR,',
'   :BTN_PRNT_BRDRRDS,',
'   :BTN_PRNT_FNFMLY,',
'   :BTN_RFRS_LBL,',
'   :BTN_RFRS_LBL_FNTWT,',
'   :BTN_RFRS_WIDTH,',
'   :BTN_RFRS_HIGHT,',
'   :BTN_RFRS_ICON,',
'   :BTN_RFRS_CLR,',
'   :BTN_RFRS_BGCLRL,',
'   :BTN_RFRS_BGCLRR,',
'   :BTN_RFRS_GRDNT_DIR,',
'   :BTN_RFRS_BRDRCLR,',
'   :BTN_RFRS_BRDRRDS,',
'   :BTN_RFRS_FNFMLY,',
'   :PAGE_ALRT_BGCLR,',
'   :PAGE_ALRT_FNTCLR,',
'   :PAGE_ALRT_FNTSIZE,',
'   :PAGE_ALRT_FNTFMLY,',
'   :PAGE_ALRT_BRDRCLR,',
'   :PAGE_ALRT_BRDRRDS',
'   from',
'   sypgtmplt',
'   WHERE CACMPCDE = :COMPCODE AND CAGRPCDE = ''001'';'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(10634959309986890)
,p_process_success_message=>' Template Design Data Successfully Updated..'
);
null;
wwv_flow_api.component_end;
end;
/
