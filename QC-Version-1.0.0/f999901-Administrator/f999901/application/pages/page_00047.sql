prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Salesman Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Salesman Master'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220515105907'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69410922239086302)
,p_plug_name=>'Salesman Master'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       SMANTYPE,',
'       SMANCODE,',
'       SMANNAME,',
'       SUPRCODE,',
'       HELPRCD1,',
'       HELPRCD2,',
'       TOTSALES,',
'       COMMRATE,',
'       COMMVALU,',
'       STATCODE,',
'       USERNAME,',
'       CATEGORY,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       COSTCODE,',
'       LEADPERS,',
'       TEAMCODE,',
'       TRGENDDT,',
'       TARGTQTY,',
'       TRGTAMNT,',
'       MODIFYDT,',
'       REPORTNG,',
'       WHSZONFK,',
'       PRODUCT_CATEGORY,',
'       STARTDATE,',
'       ENDDATE,',
'       ACTIVE,',
'       CLCTFLAG,',
'       TRGFRMDT',
'  from NMSMNMAS'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69428100385086327)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34819454436948700)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(69428100385086327)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34819872928948700)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(69428100385086327)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P47_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34820225742948700)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(69428100385086327)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_condition=>'P47_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34820685403948700)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(69428100385086327)
,p_button_name=>'CREATE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P47_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27852344425969426)
,p_name=>'P47_HELPRCD1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'HELPRCD1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27852477210969427)
,p_name=>'P47_HELPRCD2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'HELPRCD2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27852568896969428)
,p_name=>'P47_TOTSALES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'TOTSALES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27852656135969429)
,p_name=>'P47_COMMRATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'COMMRATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27852712133969430)
,p_name=>'P47_COMMVALU'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'COMMVALU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27852846914969431)
,p_name=>'P47_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'CATEGORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27852944706969432)
,p_name=>'P47_PRODUCT_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_prompt=>'Product Type'
,p_source=>'PRODUCT_CATEGORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nmsofcde||'' ''||upper(nmcoddes) d,nmsofcde r',
'from nmcodmas',
'where compcode = :compcode',
'and nmhrdcde = ''PRD''',
'order by nmsofcde'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34808310562948689)
,p_name=>'P47_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34808762786948689)
,p_name=>'P47_RIGHT_SETUP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  Count(*)',
'	From Syrights',
'	Where COMPCODE=:compcode',
'	And   USERCODE=:app_user',
'	And   PROGNAME=:progname',
'	And   DELSTATS=''Y'';'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34809154238948689)
,p_name=>'P47_COMPCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_default=>':compcode'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'COMPCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34809509366948690)
,p_name=>'P47_SMANTYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_default=>'RS'
,p_prompt=>'Salesman Type'
,p_source=>'SMANTYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select nmsofcde ||''-''|| nmcoddes TypeNmae, nmsofcde Type',
'From NMCODMAS',
'Where compcode =:P47_COMPCODE',
'And nmhrdcde = ''TYP''',
'And nmsofcde = ''RS''',
'Order By nmsofcde'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34809975506948690)
,p_name=>'P47_SMANCODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(max(SMANCODE),0) + 1',
'from nmsmnmas',
'where compcode = :compcode',
'and SMANTYPE = ''RS'''))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Salesman Code'
,p_source=>'SMANCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>6
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(max(SMANCODE),0) + 1',
'from nmsmnmas',
'where compcode = :compcode',
'and SMANTYPE = ''RS'''))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34810343168948690)
,p_name=>'P47_SMANNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_prompt=>'Executive Name'
,p_source=>'SMANNAME'
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
 p_id=>wwv_flow_api.id(34810756224948690)
,p_name=>'P47_SUPRCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_prompt=>'Warehouse'
,p_source=>'SUPRCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select warecode||'' ''||waredesc as d,warecode r From  NMWHSMAS',
'Where compcode = :compcode',
'Order By warecode'))
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
 p_id=>wwv_flow_api.id(34811148867948692)
,p_name=>'P47_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_prompt=>'User Name'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.usercode||'' ''|| initcap(s.username) d, s.usercode r',
'    FROM syusrmas s',
'   WHERE s.valdflag = ''A'' AND s.divncode = :compcode AND s.usertype = ''L''',
'ORDER BY usercode'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34811564137948692)
,p_name=>'P47_COSTCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'COSTCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34811934806948692)
,p_name=>'P47_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_default=>'Y'
,p_prompt=>'Active'
,p_source=>'ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34812317179948692)
,p_name=>'P47_LEADPERS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'LEADPERS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34812768518948693)
,p_name=>'P47_OPRSTAMP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_default=>':app_user'
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
 p_id=>wwv_flow_api.id(34813121698948693)
,p_name=>'P47_TIMSTAMP'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_default=>'sysdate'
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
 p_id=>wwv_flow_api.id(34813534461948693)
,p_name=>'P47_REPORTNG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_prompt=>'Reporting Executive'
,p_source=>'REPORTNG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select smancode|| '' ''|| smanname as d, smancode r',
' From  nmsmnmas',
'Where compcode = :compcode',
'and smantype != ''RE''',
'order by 1',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select ---'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34813989229948693)
,p_name=>'P47_TEAMCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'TEAMCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34814335454948693)
,p_name=>'P47_STATCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'STATCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34814771832948695)
,p_name=>'P47_TRGENDDT'
,p_source_data_type=>'DATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'TRGENDDT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34815123060948695)
,p_name=>'P47_TARGTQTY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'TARGTQTY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34815566957948695)
,p_name=>'P47_TRGTAMNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'TRGTAMNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34815988246948695)
,p_name=>'P47_MODIFYDT'
,p_source_data_type=>'DATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'MODIFYDT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34816325480948696)
,p_name=>'P47_WHSZONFK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_prompt=>'Salesman Zone'
,p_source=>'WHSZONFK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(34816760509948696)
,p_name=>'P47_STARTDATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'STARTDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34817141244948696)
,p_name=>'P47_ENDDATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'ENDDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34817567767948696)
,p_name=>'P47_CLCTFLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'CLCTFLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34817913037948698)
,p_name=>'P47_TRGFRMDT'
,p_source_data_type=>'DATE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(69410922239086302)
,p_item_source_plug_id=>wwv_flow_api.id(69410922239086302)
,p_source=>'TRGFRMDT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46318547048028219)
,p_name=>'P47_MESSEGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(69428100385086327)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P47_ROWID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34828646013948707)
,p_name=>'delete enable or disable'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_RIGHT_SETUP'
,p_condition_element=>'P47_RIGHT_SETUP'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34829113371948707)
,p_event_id=>wwv_flow_api.id(34828646013948707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(34819872928948700)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34829656982948709)
,p_event_id=>wwv_flow_api.id(34828646013948707)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(34819872928948700)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46318636936028220)
,p_event_id=>wwv_flow_api.id(34828646013948707)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_MESSEGE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'You have no rights to Delete.'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27853014880969433)
,p_name=>'set costcode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_SUPRCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27853140165969434)
,p_event_id=>wwv_flow_api.id(27853014880969433)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_COSTCODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COSTCODE',
'from nmwhsmas',
'where compcode = :compcode',
'and warecode = :P47_SUPRCODE'))
,p_attribute_07=>'P47_SUPRCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27853295779969435)
,p_event_id=>wwv_flow_api.id(27853014880969433)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_COSTCODE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48908737918836007)
,p_name=>'Cancel Dialog'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34819454436948700)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48908844573836008)
,p_event_id=>wwv_flow_api.id(48908737918836007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48908986025836009)
,p_name=>'Remove Cross Sign'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48909026444836010)
,p_event_id=>wwv_flow_api.id(48908986025836009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var button = parent.$(''.ui-dialog-titlebar-close''); //get the button',
'button.hide(); //hide the button'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34818765194948698)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(69410922239086302)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Service Engineer Master'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully Created a Salesman.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79817486478569401)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34818323993948698)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(69410922239086302)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Service Engineer Master'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
