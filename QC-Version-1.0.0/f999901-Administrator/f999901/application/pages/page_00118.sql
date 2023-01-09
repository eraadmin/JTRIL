prompt --application/pages/page_00118
begin
--   Manifest
--     PAGE: 00118
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
 p_id=>118
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Discount Rule Setup'
,p_page_mode=>'MODAL'
,p_step_title=>'Discount Rule Setup'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_dialog_height=>'500'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220327115825'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64937016269200593)
,p_plug_name=>'Discount Rule Setup'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'NMGRPITM'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64948609693200609)
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
 p_id=>wwv_flow_api.id(64949018515200609)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(64948609693200609)
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
 p_id=>wwv_flow_api.id(64950656624200612)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(64948609693200609)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_DELT_LBL.'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P118_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'&BTN_DELT_ICON.'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64951033552200612)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(64948609693200609)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&BTN_SAVE_LBL.'
,p_button_position=>'NEXT'
,p_button_condition=>'P118_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64951498587200614)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(64948609693200609)
,p_button_name=>'CREATE'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P118_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'&BTN_SBMT_ICON.'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64820212650864011)
,p_name=>'P118_BRANDCDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_source_plug_id=>wwv_flow_api.id(64937016269200593)
,p_prompt=>'Brand '
,p_source=>'BRANDCDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES AS D, NMSOFCDE AS R',
'    FROM NMCODMAS',
'   WHERE COMPCODE = :COMPCODE ',
'   AND MODLCODE = ''NM'' ',
'   AND NMHRDCDE = ''COM''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P118_ROWID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64821785796864026)
,p_name=>'P118_GRPENAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_prompt=>'Group Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P118_ROWID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64937489378200593)
,p_name=>'P118_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_source_plug_id=>wwv_flow_api.id(64937016269200593)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64937804150200598)
,p_name=>'P118_ITEMCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_source_plug_id=>wwv_flow_api.id(64937016269200593)
,p_prompt=>'Item Name'
,p_source=>'ITEMCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT INITCAP (ITEMDES1), ITEMCODE',
'    FROM VWNMITEM',
'   WHERE     COMPCODE = :COMPCODE',
'         AND COMMGRUP = :P118_BRANDCDE',
'         AND MODLCODE = :P118_MODLCODE',
'         AND ITEMCODE NOT IN (SELECT ITEMCODE',
'                                FROM NMGRPITM',
'                               WHERE GRPECODE = :P118_GRPECODE)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P118_BRANDCDE,P118_MODLCODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when=>'P118_ROWID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_read_only_when=>'P118_ROWID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT INITCAP (ITEMDES1), ITEMCODE',
'    FROM NMITEMAS',
'   WHERE ITEMCODE NOT IN (SELECT ITEMCODE',
'                            FROM NMGRPITM',
'                           WHERE GRPECODE = :P118_GRPECODE)',
'ORDER BY 1',
'',
'',
'IF :P118_ROWID IS NULL',
'THEN',
'RETURN',
'  ''SELECT DISTINCT INITCAP (ITEMDES1), ITEMCODE',
'    FROM VWNMITEM',
'   WHERE     COMPCODE = :COMPCODE',
'         AND COMMGRUP = :P118_BRANDCDE',
'         AND MODLCODE = :P118_MODLCODE',
'         AND ITEMCODE NOT IN (SELECT ITEMCODE',
'                                FROM NMGRPITM',
'                               WHERE GRPECODE = :P118_GRPECODE)',
'ORDER BY 1''',
'ELSE',
'RETURN',
'    '':P118_ITEMCODE'';',
'END ID;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64938220124200598)
,p_name=>'P118_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_source_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_default=>'Y'
,p_source=>'ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64938604782200598)
,p_name=>'P118_GRPECODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_source_plug_id=>wwv_flow_api.id(64937016269200593)
,p_prompt=>'Group Code'
,p_source=>'GRPECODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_tag_attributes=>'style="text-transform:uppercase"'
,p_read_only_when=>'P118_ROWID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64939086251200600)
,p_name=>'P118_COMPCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_source_plug_id=>wwv_flow_api.id(64937016269200593)
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
 p_id=>wwv_flow_api.id(64939461057200600)
,p_name=>'P118_OPRSTAMP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_source_plug_id=>wwv_flow_api.id(64937016269200593)
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
 p_id=>wwv_flow_api.id(64939876538200600)
,p_name=>'P118_TIMSTAMP'
,p_source_data_type=>'DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_source_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_format_mask=>'DD-MM-RRRR HH24:MI:SS'
,p_source=>'TIMSTAMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64940259437200600)
,p_name=>'P118_MODLCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_source_plug_id=>wwv_flow_api.id(64937016269200593)
,p_prompt=>'Model'
,p_source=>'MODLCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT MODELNAM, MODLCODE     ',
'    FROM VWNMITEM',
'   WHERE     COMPCODE = :COMPCODE',
'         AND COMMGRUP = :P118_BRANDCDE',
'         --AND NVL (FINISHGD, ''N'') = ''Y''',
'         AND MODLCODE IS NOT NULL',
'ORDER BY MODLCODE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P118_BRANDCDE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>30
,p_read_only_when=>'P118_ROWID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64940610434200601)
,p_name=>'P118_STARTDTE'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_source_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Effective Date'
,p_format_mask=>'DD-MON-RRRR'
,p_source=>'STARTDTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64941018303200601)
,p_name=>'P118_ENDDATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_source_plug_id=>wwv_flow_api.id(64937016269200593)
,p_source=>'ENDDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64941483789200601)
,p_name=>'P118_USRIDGRP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_source_plug_id=>wwv_flow_api.id(64937016269200593)
,p_prompt=>'User Name'
,p_source=>'USRIDGRP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'USER NAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DIVNCODE||'' - ''||USERCODE || '' - '' || USERNAME d, USERCODE r',
'  FROM SYUSRMAS',
' WHERE DIVNCODE = :COMPCODE;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_read_only_when=>'P118_ROWID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64941895391200601)
,p_name=>'P118_MINDISPCT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_source_plug_id=>wwv_flow_api.id(64937016269200593)
,p_prompt=>'Min Discount (%)'
,p_source=>'MINDISPCT'
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
 p_id=>wwv_flow_api.id(64942210219200603)
,p_name=>'P118_MINDISAMT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_source_plug_id=>wwv_flow_api.id(64937016269200593)
,p_prompt=>'Min Discount Amount'
,p_source=>'MINDISAMT'
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
 p_id=>wwv_flow_api.id(64942681862200603)
,p_name=>'P118_MAXDISPCT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_source_plug_id=>wwv_flow_api.id(64937016269200593)
,p_prompt=>'Max Discount (%)'
,p_source=>'MAXDISPCT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64943072260200603)
,p_name=>'P118_MAXDISAMT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_item_source_plug_id=>wwv_flow_api.id(64937016269200593)
,p_prompt=>'Max Discount Amount'
,p_source=>'MAXDISAMT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67168136984734803)
,p_name=>'P118_ITEMCODE_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P118_ROWID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67168419448734806)
,p_name=>'P118_MESSAGE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:red;"'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67172126352734843)
,p_name=>'P118_ITEMDES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_prompt=>'Item Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_display_when=>'P118_ROWID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67172290230734844)
,p_name=>'P118_STARTDTE_1'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67172426468734846)
,p_name=>'P118_MINDISPCT_1'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67172537862734847)
,p_name=>'P118_MAXDISPCT_1'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67172673296734848)
,p_name=>'P118_MINDISAMT_1'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67172741247734849)
,p_name=>'P118_MAXDISAMT_1'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(64937016269200593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64949175383200610)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(64949018515200609)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64949976285200610)
,p_event_id=>wwv_flow_api.id(64949175383200610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64820459198864013)
,p_name=>'MINDISPCT'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P118_MINDISPCT'
,p_condition_element=>'P118_MINDISPCT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64820521971864014)
,p_event_id=>wwv_flow_api.id(64820459198864013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P118_MINDISAMT,P118_MAXDISAMT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67169820685734820)
,p_event_id=>wwv_flow_api.id(64820459198864013)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P118_MINDISAMT,P118_MAXDISAMT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67171651925734838)
,p_event_id=>wwv_flow_api.id(64820459198864013)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P118_MINDISAMT,P118_MAXDISAMT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64820707745864016)
,p_name=>'MAXDISPCT'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P118_MAXDISPCT'
,p_condition_element=>'P118_MAXDISPCT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64820884744864017)
,p_event_id=>wwv_flow_api.id(64820707745864016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P118_MINDISAMT,P118_MAXDISAMT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67169990285734821)
,p_event_id=>wwv_flow_api.id(64820707745864016)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P118_MINDISAMT,P118_MAXDISAMT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67171762262734839)
,p_event_id=>wwv_flow_api.id(64820707745864016)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P118_MINDISAMT,P118_MAXDISAMT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64820921954864018)
,p_name=>'MINDISAMT'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P118_MINDISAMT'
,p_condition_element=>'P118_MINDISAMT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64821073049864019)
,p_event_id=>wwv_flow_api.id(64820921954864018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P118_MINDISPCT,P118_MAXDISPCT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67171412109734836)
,p_event_id=>wwv_flow_api.id(64820921954864018)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P118_MINDISPCT,P118_MAXDISPCT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67171892913734840)
,p_event_id=>wwv_flow_api.id(64820921954864018)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P118_MINDISPCT,P118_MAXDISPCT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64821177540864020)
,p_name=>'MAXDISAMT'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P118_MAXDISAMT'
,p_condition_element=>'P118_MAXDISAMT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64821257747864021)
,p_event_id=>wwv_flow_api.id(64821177540864020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P118_MINDISPCT,P118_MAXDISPCT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67171538606734837)
,p_event_id=>wwv_flow_api.id(64821177540864020)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P118_MINDISPCT,P118_MAXDISPCT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67171901454734841)
,p_event_id=>wwv_flow_api.id(64821177540864020)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P118_MINDISPCT,P118_MAXDISPCT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67168290849734804)
,p_name=>'Group Code Duplicate Check'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P118_GRPECODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67168370903734805)
,p_event_id=>wwv_flow_api.id(67168290849734804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 31/05/2020 5:08:25 PM (QP5 v5.354) */',
'DECLARE',
'    vCountExist   NUMBER := 0;',
'BEGIN',
'   :P118_MESSAGE := NULL;',
'   ',
'    BEGIN',
'        SELECT COUNT (1)',
'          INTO vCountExist',
'          FROM NMGRPITM',
'         WHERE     COMPCODE = :COMPCODE',
'               AND UPPER (GRPECODE) = UPPER ( :P118_GRPECODE);',
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
'    IF vCountExist <> 0',
'    THEN',
'        :P118_MESSAGE := ''Group Code ''|| UPPER ( :P118_GRPECODE) ||'' Already Exist. '';',
'    END IF;',
'END;'))
,p_attribute_02=>'P118_GRPECODE'
,p_attribute_03=>'P118_GRPECODE,P118_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64821844020864027)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Group Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 02/06/2020 7:20:48 PM (QP5 v5.354) */',
'BEGIN',
'    INSERT INTO NMCODMAS (COMPCODE,',
'                          MODLCODE,',
'                          NMHRDCDE,',
'                          NMSOFCDE,',
'                          NMCODDES,',
'                          OPRSTAMP)',
'         VALUES ( :COMPCODE,',
'                 ''NM'',',
'                 ''DSG'',',
'                 :P118_GRPECODE,',
'                 :P118_GRPENAME,',
'                 :APP_USER);',
'EXCEPTION',
'    WHEN OTHERS',
'    THEN',
'        RAISE_APPLICATION_ERROR (-20001,',
'                                 ''Unable to Insert Group Information. '');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64951498587200614)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64821966782864028)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert User Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 02/06/2020 7:24:40 PM (QP5 v5.354) */',
'BEGIN',
'    INSERT INTO NMUSRITM (USRIDGRP,',
'                          GRPECODE,',
'                          COMPCODE,',
'                          OPRSTAMP,',
'                          TIMSTAMP)',
'         VALUES ( :P118_USRIDGRP,',
'                 :P118_GRPECODE,',
'                 :COMPCODE,',
'                 :APP_USER,',
'                 SYSDATE);',
'EXCEPTION',
'    WHEN OTHERS',
'    THEN',
'        RAISE_APPLICATION_ERROR (-20002,',
'                                 ''Unable to Insert User Information. '');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64951498587200614)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64952287182200614)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(64937016269200593)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Discount Rule Setup'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64951498587200614)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67172089860734842)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Change Previous Rule'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 04/06/2020 11:14:02 PM (QP5 v5.354) */',
'BEGIN',
'   -- raise_application_error(-20004, :P118_TIMSTAMP || '' - ''|| :P118_STARTDTE || '' - ''|| :P118_STARTDTE_1);',
'    ',
'    IF     TO_DATE(:P118_STARTDTE_1,''DD-MM-RRRR'') = TO_DATE(:P118_STARTDTE,''DD-MM-RRRR'')',
'       AND ((:P118_MINDISPCT_1 = :P118_MINDISPCT',
'       AND :P118_MAXDISPCT_1 = :P118_MAXDISPCT)',
'       OR  (:P118_MINDISAMT_1 = :P118_MINDISAMT',
'       AND :P118_MAXDISAMT_1 = :P118_MAXDISAMT))',
'    THEN',
'        RAISE_APPLICATION_ERROR (-20001, ''No Data Change '');',
'    ELSE',
'    IF TO_DATE(:P118_STARTDTE,''DD-MM-RRRR'') < TO_DATE(:P118_STARTDTE_1,''DD-MM-RRRR'')',
'    THEN',
'    RAISE_APPLICATION_ERROR (-20001, ''New Rule Date Must be Greater Than Previous Rule Date - '' ||:P118_STARTDTE_1);',
'    END IF;',
'    ',
'        BEGIN',
'            INSERT INTO NMGRPITM (ITEMCODE,',
'                                  ACTIVE,',
'                                  GRPECODE,',
'                                  COMPCODE,',
'                                  OPRSTAMP,',
'                                  TIMSTAMP,',
'                                  BRANDCDE,',
'                                  MODLCODE,',
'                                  STARTDTE,',
'                                  ENDDATE,',
'                                  USRIDGRP,',
'                                  MINDISPCT,',
'                                  MINDISAMT,',
'                                  MAXDISPCT,',
'                                  MAXDISAMT)',
'                 VALUES ( :P118_ITEMCODE_1,',
'                         :P118_ACTIVE,',
'                         :P118_GRPECODE,',
'                         :P118_COMPCODE,',
'                         :P118_OPRSTAMP,',
'                         :P118_TIMSTAMP,',
'                         :P118_BRANDCDE,',
'                         :P118_MODLCODE,',
'                         :P118_STARTDTE,',
'                         NULL,',
'                         :P118_USRIDGRP,',
'                         :P118_MINDISPCT,',
'                         :P118_MINDISAMT,',
'                         :P118_MAXDISPCT,',
'                         :P118_MAXDISAMT);',
'        EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'                RAISE_APPLICATION_ERROR (',
'                    -20001,',
'                       ''Unable to Insert Changed Rule. '');',
'        END;',
'',
'        BEGIN',
'            UPDATE NMGRPITM',
'               SET ACTIVE = ''N'',',
'                   ENDDATE = TO_DATE ( :P118_STARTDTE, ''DD-MM-RRRR'') - 1',
'             WHERE     COMPCODE = :COMPCODE',
'                   AND GRPECODE = :P118_GRPECODE',
'                   AND BRANDCDE = :P118_BRANDCDE',
'                   AND MODLCODE = :P118_MODLCODE',
'                   AND ITEMCODE = :P118_ITEMCODE_1',
'                   AND STARTDTE = :P118_STARTDTE_1',
'                   AND ((MINDISPCT = :P118_MINDISPCT_1',
'                   AND MAXDISPCT = :P118_MAXDISPCT_1)',
'                   OR  (MINDISAMT = :P118_MINDISAMT_1',
'                   AND MAXDISAMT = :P118_MAXDISAMT_1));',
'        EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'                RAISE_APPLICATION_ERROR (-20004,',
'                                         ''Unable to Change Previous Rule. '');',
'        END;',
'',
'        IF SQL%NOTFOUND',
'        THEN',
'            RAISE_APPLICATION_ERROR (-20005, ''Previous Rule Not Updated. '');',
'        END IF;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64951033552200612)
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
 p_id=>wwv_flow_api.id(64952629231200614)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64951878528200614)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(64937016269200593)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Discount Rule Setup'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64822084618864029)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P118_GRPENAME := NULL;',
':P118_MESSAGE := NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67168053011734802)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        SELECT INITCAP (NMCODDES)',
'          INTO :P118_GRPENAME',
'          FROM NMCODMAS',
'         WHERE     COMPCODE = :COMPCODE',
'               AND NMHRDCDE = ''DSG''',
'               AND NMSOFCDE = :P118_GRPECODE;',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            :P118_GRPENAME := NULL;',
'    END;',
'    ',
'    :P118_ITEMCODE_1 := :P118_ITEMCODE;',
'',
'    BEGIN',
'        SELECT ITEMDES1',
'          INTO :P118_ITEMDES',
'          FROM NMITEMAS',
'         WHERE ITEMCODE = :P118_ITEMCODE;',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            :P118_ITEMCODE := NULL;',
'    END;',
'    ',
'    :P118_STARTDTE_1 := :P118_STARTDTE;',
'    :P118_MINDISPCT_1 := :P118_MINDISPCT;',
'    :P118_MAXDISPCT_1 := :P118_MAXDISPCT;',
'    :P118_MINDISAMT_1 := :P118_MINDISAMT;',
'    :P118_MAXDISAMT_1 := :P118_MAXDISAMT;',
'    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P118_ROWID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67172338750734845)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P118_COMPCODE := :COMPCODE;',
':P118_ACTIVE := ''Y'';',
':P118_OPRSTAMP := :APP_USER;',
':P118_TIMSTAMP := TO_DATE(SYSDATE,''DD/MM/RRRR HH12:MI:SS PM''); --SYSDATE;',
'',
'--TO_CHAR(date_of_birth, ''DD/MON/YYYY HH24:MI:SS'')',
'',
'--raise_application_error(-20001, :P118_TIMSTAMP);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64821306387864022)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Item Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 02/06/2020 7:37:10 PM (QP5 v5.354) */',
'BEGIN',
'    IF :P118_GRPECODE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Group Code Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P118_GRPECODE'');',
'    END IF;',
'',
'    :P118_GRPECODE := UPPER ( :P118_GRPECODE);',
'',
'',
'    IF :P118_GRPENAME IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Group Name Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P118_GRPENAME'');',
'    END IF;',
'',
'',
'    IF :P118_GRPECODE IS NOT NULL',
'    THEN',
'        IF LENGTH ( :P118_GRPECODE) <> 3',
'        THEN',
'            apex_error.add_error (',
'                p_message            => ''Group Code Must be Three Character. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name     => ''P118_GRPECODE'');',
'        END IF;',
'    END IF;',
'',
'',
'    IF :P118_USRIDGRP IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''User Name Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P118_USRIDGRP'');',
'    END IF;',
'',
'',
'    IF :P118_BRANDCDE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Brand Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P118_BRANDCDE'');',
'    END IF;',
'',
'',
'    IF :P118_MODLCODE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Model Name Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P118_MODLCODE'');',
'    END IF;',
'',
'',
'    IF :P118_ROWID IS NULL',
'    THEN',
'    IF :P118_ITEMCODE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Item Name Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P118_ITEMCODE'');',
'    END IF;',
'    END IF;',
'',
'',
'    IF :P118_STARTDTE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Effective Date Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P118_STARTDTE'');',
'    END IF;',
'',
'',
'    IF :P118_MINDISPCT IS NOT NULL',
'    THEN',
'        IF :P118_MAXDISPCT IS NULL',
'        THEN',
'            apex_error.add_error (',
'                p_message            => ''Maximum Discount Percentage Required. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name     => ''P118_MAXDISPCT'');',
'        END IF;',
'',
'        IF :P118_MINDISPCT < 0',
'        THEN',
'            apex_error.add_error (',
'                p_message          =>',
'                    ''Minimum Discount Percentage Must be Positive Value. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name   => ''P118_MINDISPCT'');',
'        END IF;',
'',
'        IF :P118_MINDISPCT > 100',
'        THEN',
'            apex_error.add_error (',
'                p_message          =>',
'                    ''Minimum Discount Percentage Must be in Between 100. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name   => ''P118_MINDISPCT'');',
'        END IF;',
'',
'        IF :P118_MINDISPCT > :P118_MAXDISPCT',
'        THEN',
'            apex_error.add_error (',
'                p_message          =>',
'                    ''Minimum Discount Percentage Must be Lower Than Maximum. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name   => ''P118_MINDISPCT'');',
'        END IF;',
'    END IF;',
'',
'',
'    IF :P118_MAXDISPCT IS NOT NULL',
'    THEN',
'        IF :P118_MINDISPCT IS NULL',
'        THEN',
'            apex_error.add_error (',
'                p_message            => ''Minimum Discount Percentage Required. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name     => ''P118_MINDISPCT'');',
'        END IF;',
'',
'        IF :P118_MAXDISPCT < 0',
'        THEN',
'            apex_error.add_error (',
'                p_message          =>',
'                    ''Maximum Discount Percentage Must be Positive Value. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name   => ''P118_MAXDISPCT'');',
'        END IF;',
'',
'        IF :P118_MAXDISPCT > 100',
'        THEN',
'            apex_error.add_error (',
'                p_message          =>',
'                    ''Maximum Discount Percentage Must be in Between 100. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name   => ''P118_MAXDISPCT'');',
'        END IF;',
'    END IF;',
'',
'    ',
'',
'    IF :P118_MINDISAMT IS NOT NULL',
'    THEN',
'        IF :P118_MAXDISAMT IS NULL',
'        THEN',
'            apex_error.add_error (',
'                p_message            => ''Maximum Discount Amount Required. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name     => ''P118_MAXDISAMT'');',
'        END IF;',
'',
'        IF :P118_MINDISAMT < 0',
'        THEN',
'            apex_error.add_error (',
'                p_message          =>',
'                    ''Minimum Discount Amount Must be Positive Value. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name   => ''P118_MINDISAMT'');',
'        END IF;',
'',
'        IF :P118_MINDISAMT > :P118_MAXDISAMT',
'        THEN',
'            apex_error.add_error (',
'                p_message          =>',
'                    ''Minimum Discount Amount Must be Lower Than Maximum. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name   => ''P118_MINDISAMT'');',
'        END IF;',
'    END IF;',
'',
'',
'    IF :P118_MAXDISAMT IS NOT NULL',
'    THEN',
'        IF :P118_MINDISAMT IS NULL',
'        THEN',
'            apex_error.add_error (',
'                p_message            => ''Minimum Discount Amount Required. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name     => ''P118_MINDISAMT'');',
'        END IF;',
'',
'        IF :P118_MAXDISAMT < 0',
'        THEN',
'            apex_error.add_error (',
'                p_message          =>',
'                    ''Maximum Discount Amount Must be Positive Value. '',',
'                p_display_location   =>',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name   => ''P118_MAXDISAMT'');',
'        END IF;',
'    END IF;',
'',
'',
'    IF     :P118_MINDISPCT IS NULL',
'       AND :P118_MAXDISPCT IS NULL',
'       AND :P118_MINDISAMT IS NULL',
'       AND :P118_MAXDISAMT IS NULL',
'    THEN',
'        RAISE_APPLICATION_ERROR (',
'            -20001,',
'            ''At Least One Discount Range of Value Required'');',
'    END IF;',
'    --raise_application_error(-20001, ''qqqqq6'');',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67168513797734807)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Group Code Duplicate Check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 31/05/2020 5:08:25 PM (QP5 v5.354) */',
'DECLARE',
'    vCountExist   NUMBER := 0;',
'BEGIN',
'  -- :P118_MESSAGE := NULL;',
'   ',
'    BEGIN',
'        SELECT COUNT (1)',
'          INTO vCountExist',
'          FROM NMGRPITM',
'         WHERE     COMPCODE = :COMPCODE',
'               AND UPPER (GRPECODE) = UPPER ( :P118_GRPECODE);',
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
'    IF vCountExist <> 0',
'    THEN',
'       RAISE_APPLICATION_ERROR(-20001, ''Group Code ''|| UPPER ( :P118_GRPECODE) ||'' Already Exist. '');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64951498587200614)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
