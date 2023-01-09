prompt --application/pages/page_00077
begin
--   Manifest
--     PAGE: 00077
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
 p_id=>77
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Document Parameters Entry'
,p_page_mode=>'MODAL'
,p_step_title=>'Document Parameters Entry'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_dialog_height=>'530'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'ADITI'
,p_last_upd_yyyymmddhh24miss=>'20221121151501'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58205839442975353)
,p_plug_name=>'Document Parameters Entry'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SYDOCMAS'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56692683162743111)
,p_plug_name=>'Doc 01'
,p_parent_plug_id=>wwv_flow_api.id(58205839442975353)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56692711378743112)
,p_plug_name=>'Doc 02'
,p_parent_plug_id=>wwv_flow_api.id(58205839442975353)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58223715062975373)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(58224127590975373)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(58223715062975373)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(58225766427975375)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(58223715062975373)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_DELT_LBL.'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P77_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'&BTN_DELT_ICON.'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(58226183314975375)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(58223715062975373)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&BTN_SAVE_LBL.'
,p_button_position=>'NEXT'
,p_button_condition=>'P77_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(58226544459975376)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(58223715062975373)
,p_button_name=>'CREATE'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P77_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'&BTN_SBMT_ICON.'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56693015924743115)
,p_name=>'P77_X1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(56692683162743111)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58206243479975353)
,p_name=>'P77_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(56692683162743111)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58206692678975356)
,p_name=>'P77_COMPCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(56692683162743111)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_item_default=>'COMPCODE'
,p_item_default_type=>'ITEM'
,p_source=>'COMPCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58207091441975356)
,p_name=>'P77_MODLCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(56692683162743111)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_prompt=>'Module Name'
,p_source=>'MODLCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT MODLCODE || '' - '' ||INITCAP (MODLNAME)  , MODLCODE',
'    FROM SYMODULE',
'ORDER BY MODLCODE'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'350'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58207487853975356)
,p_name=>'P77_TRANTYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(56692683162743111)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_prompt=>'Transaction Type'
,p_source=>'TRANTYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT distinct TRANTYPE || '' - '' || NARATION, TRANTYPE',
'    FROM SYDOCMAS',
'   WHERE     COMPCODE = :COMPCODE',
'         AND MODLCODE = :P77_MODLCODE',
'ORDER BY TRANTYPE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P77_MODLCODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'350'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58207812151975356)
,p_name=>'P77_SUBTTYPE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(56692683162743111)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_prompt=>'Sub Tran. Type'
,p_source=>'SUBTTYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT SUBTTYPE|| '' - '' || NARATION, SUBTTYPE',
'    FROM SYDOCMAS',
'   WHERE     COMPCODE = :COMPCODE',
'         AND MODLCODE = :P77_MODLCODE',
'         AND TRANTYPE = :P77_TRANTYPE',
'ORDER BY SUBTTYPE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P77_MODLCODE,P77_TRANTYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58208285491975357)
,p_name=>'P77_LOCNCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(56692683162743111)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_prompt=>'Location'
,p_source=>'LOCNCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT INITCAP (WAREDESC) AS d, WARECODE AS r',
'    FROM VW_BRANCH',
'   WHERE     COMPCODE = :COMPCODE',
'         AND GRUPCODE = :APP_USER',
'         --AND WARECODE != :P36_BRANCD',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'300'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58208658525975357)
,p_name=>'P77_STRTPERD'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(56692683162743111)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Period'
,p_source=>'STRTPERD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58209025897975357)
,p_name=>'P77_ENDPERD'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(56692683162743111)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_prompt=>'End Period'
,p_source=>'ENDPERD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58209481255975357)
,p_name=>'P77_DOCPREFX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(56692711378743112)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_prompt=>'Document No. Prefix'
,p_source=>'DOCPREFX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>6
,p_grid_label_column_span=>5
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
 p_id=>wwv_flow_api.id(58209854745975359)
,p_name=>'P77_DOCNUMBR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(56692711378743112)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_item_default=>'1'
,p_prompt=>'Document No. Seq.'
,p_source=>'DOCNUMBR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58210237623975359)
,p_name=>'P77_DOCTNLEN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(56692711378743112)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_item_default=>'13'
,p_prompt=>'Document No. Lengh'
,p_source=>'DOCTNLEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>2
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'15'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58210670941975359)
,p_name=>'P77_AUTOFLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(56692711378743112)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_prompt=>'Auto Flag'
,p_source=>'AUTOFLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(2727342503733911814)||'.'
,p_cHeight=>1
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58211089209975359)
,p_name=>'P77_NARATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(56692683162743111)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_prompt=>'Naration'
,p_source=>'NARATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_grid_label_column_span=>5
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
 p_id=>wwv_flow_api.id(58211459782975360)
,p_name=>'P77_POSTFLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(56692711378743112)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_prompt=>'Post Flag'
,p_source=>'POSTFLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(2727342503733911814)||'.'
,p_cHeight=>1
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58211802648975360)
,p_name=>'P77_VALDFLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(56692711378743112)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_prompt=>'Valid Flag'
,p_source=>'VALDFLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(2727342503733911814)||'.'
,p_cHeight=>1
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58212212360975360)
,p_name=>'P77_FREQFLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(56692683162743111)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_item_default=>'A'
,p_prompt=>'Frequency'
,p_source=>'FREQFLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Annualy;A,Monthly;M,Perpetual;P'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58212629269975360)
,p_name=>'P77_DFLTACCT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(56692711378743112)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_prompt=>'Default Account'
,p_source=>'DFLTACCT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT ACCTCODE || '' - '' ||ACCTNAME, ACCTCODE',
'    FROM SYCHRTAC',
'   WHERE     COMPCODE = :COMPCODE',
'         AND HEADFLAG = ''N''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58213083434975362)
,p_name=>'P77_DFLTDBCR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(56692711378743112)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_item_default=>'D'
,p_prompt=>'Default Debit/Credit'
,p_source=>'DFLTDBCR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Credit;C,Debit;D'
,p_cHeight=>1
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58213406202975362)
,p_name=>'P77_DFLTDTYP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(56692711378743112)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_item_default=>'M'
,p_prompt=>'Default Type'
,p_source=>'DFLTDTYP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Manual;M,System;S'
,p_cHeight=>1
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58213812203975362)
,p_name=>'P77_OPRSTAMP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(56692711378743112)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'OPRSTAMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58214236781975362)
,p_name=>'P77_TIMSTAMP'
,p_source_data_type=>'DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(56692711378743112)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'TIMSTAMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58214675461975364)
,p_name=>'P77_TEST_FIELD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(56692711378743112)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_source=>'TEST_FIELD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58215084447975364)
,p_name=>'P77_MNYRFRMT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(56692711378743112)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_prompt=>'MNYRFRMT'
,p_source=>'MNYRFRMT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>5
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
 p_id=>wwv_flow_api.id(58215489093975364)
,p_name=>'P77_MNYRPRFX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(56692711378743112)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_prompt=>'MNYRPRFX'
,p_source=>'MNYRPRFX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>5
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
 p_id=>wwv_flow_api.id(58215811816975365)
,p_name=>'P77_MODIFYDT'
,p_source_data_type=>'DATE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(56692711378743112)
,p_item_source_plug_id=>wwv_flow_api.id(58205839442975353)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'MODIFYDT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P77_ROWID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(58224247856975373)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(58224127590975373)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(58225022742975375)
,p_event_id=>wwv_flow_api.id(58224247856975373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56692817611743113)
,p_name=>'End Date'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_STRTPERD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56692974964743114)
,p_event_id=>wwv_flow_api.id(56692817611743113)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_ENDPERD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT TRUNC(ADD_MONTHS(:P77_STRTPERD,12))-1 FROM DUAL'
,p_attribute_07=>'P77_STRTPERD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(58227357713975376)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(58205839442975353)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Document Parameters Entry'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Document Info. Inserted'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(58227725988975376)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(58226969603975376)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(58205839442975353)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Document Parameters Entry'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56693137932743116)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Item Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 28/05/2020 4:43:45 PM (QP5 v5.354) */',
'BEGIN',
'    IF :P77_MODLCODE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Module Name Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P77_MODLCODE'');',
'    END IF;',
'',
'',
'    IF :P77_TRANTYPE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Transaaction Type Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P77_TRANTYPE'');',
'    END IF;',
'',
'',
'    IF :P77_SUBTTYPE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Transaction Sub Type Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P77_SUBTTYPE'');',
'    END IF;',
'',
'',
'    IF :P77_STRTPERD IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Start Period Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P77_STRTPERD'');',
'    END IF;',
'',
'',
'    IF :P77_ENDPERD IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''End Period Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P77_ENDPERD'');',
'    END IF;',
'',
'    IF :P77_STRTPERD IS NOT NULL AND :P77_ENDPERD IS NOT NULL',
'    THEN',
'        IF TO_DATE ( :P77_STRTPERD, ''DD/MM/RRRR'') >',
'           TO_DATE ( :P77_ENDPERD, ''DD/MM/RRRR'')',
'        THEN',
'            apex_error.add_error (',
'                p_message          =>',
'                    ''End Period Date Can Not be Less Than Start Date. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name   => ''P77_ENDPERD'');',
'        END IF;',
'    END IF;',
'',
'    IF :P77_NARATION IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Naration Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P77_NARATION'');',
'    END IF;',
'',
'',
'    IF :P77_DOCNUMBR IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Document Seed Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P77_DOCNUMBR'');',
'    END IF;',
'',
'',
'    IF :P77_DOCTNLEN IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Document Length Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P77_DOCTNLEN'');',
'    END IF;',
'',
'',
'    IF :P77_AUTOFLAG IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Automatic Info. Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P77_AUTOFLAG'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56693279643743117)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Duplicate Check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vCountExist   NUMBER;',
'BEGIN',
'    BEGIN',
'        SELECT COUNT (*)',
'          INTO vCountExist',
'          FROM SYDOCMAS',
'         WHERE     COMPCODE = :COMPCODE',
'               AND UPPER (MODLCODE) = UPPER ( :P77_MODLCODE)',
'               AND UPPER (TRANTYPE) = UPPER ( :P77_TRANTYPE)',
'               AND SUBTTYPE = :P77_SUBTTYPE',
'               AND STRTPERD <= :P77_STRTPERD',
'               AND ENDPERD <= :P77_ENDPERD;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND',
'        THEN',
'            vCountExist := 0;',
'        WHEN TOO_MANY_ROWS',
'        THEN',
'            vCountExist := 0;',
'        WHEN OTHERS',
'        THEN',
'            vCountExist := 0;',
'    END;',
'',
'    IF vCountExist > 0',
'    THEN',
'        RAISE_APPLICATION_ERROR (-20001,',
'                                 ''Trantype and Subtype already exist'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P77_ROWID'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.component_end;
end;
/
