prompt --application/pages/page_00139
begin
--   Manifest
--     PAGE: 00139
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
 p_id=>139
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Customer Information'
,p_step_title=>'Customer Information'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#navbar {',
'    display: none !important;',
'    overflow: hidden;',
'    position: absolute;',
'    top: 16px;',
'    right: 10px;',
'    font: normal 11px/12px Arial, sans-serif;',
'    color: #000;',
'    text-shadow: 0 1px 0px rgba(255,255,255,.5);',
'}',
'',
'#header {',
'    height: 0px !important;',
'    overflow: hidden;',
'    width: 100%;',
'}',
'#logo {',
'    display: none!important;',
'    position: absolute;',
'    top: 16px;',
'    left: 10px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124816'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137666275009365814)
,p_plug_name=>'Booking Customer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137327830114385115)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(137666275009365814)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137651651601094540)
,p_plug_name=>'Guarantor'
,p_parent_plug_id=>wwv_flow_api.id(137327830114385115)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137652307769104209)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(137651651601094540)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137652639428104210)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(137651651601094540)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137656812934241577)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(137327830114385115)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>7
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137657085816241578)
,p_plug_name=>'Reservation'
,p_parent_plug_id=>wwv_flow_api.id(137656812934241577)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137657524121241578)
,p_plug_name=>'Installment'
,p_parent_plug_id=>wwv_flow_api.id(137656812934241577)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137642926499778135)
,p_plug_name=>'Customer Information'
,p_parent_plug_id=>wwv_flow_api.id(137666275009365814)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137643405772815248)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(137642926499778135)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>7
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137643910687830647)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(137642926499778135)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>9
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(137328328446385118)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(137327830114385115)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P139_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(137666708042365814)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(137666275009365814)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P139_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(137328521889385118)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(137327830114385115)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(137666879271365814)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(137666275009365814)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:139:&SESSION.::&DEBUG.:139::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(137328227473385118)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(137327830114385115)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(137666642613365814)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(137666275009365814)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Customer'
,p_button_position=>'CREATE'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(138061575792248470)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(137666275009365814)
,p_button_name=>'GENERATE_CUSTOMER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Customer'
,p_button_position=>'CREATE'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(137328369596385118)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(137327830114385115)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(137666774007365814)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(137666275009365814)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P139_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(137330089525385120)
,p_branch_action=>'f?p=&APP_ID.:139:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(138061575792248470)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(137668553821365825)
,p_branch_action=>'f?p=&APP_ID.:139:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(138061575792248470)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137342096043385162)
,p_name=>'P139_PRTYNAME'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(137643405772815248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Name'
,p_source=>'PRTYNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>60
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137346954569385163)
,p_name=>'P139_PEMAILID'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(137643910687830647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mail ID'
,p_source=>'PEMAILID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137348961399385163)
,p_name=>'P139_TELENOFF'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(137643405772815248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone Office'
,p_source=>'TELENOFF'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>20
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137349342538385163)
,p_name=>'P139_TELENRES'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(137643910687830647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone Res'
,p_source=>'TELENRES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>20
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137349733291385163)
,p_name=>'P139_MOBILENO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(137643405772815248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobile No.'
,p_source=>'MOBILENO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>20
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137357344682385166)
,p_name=>'P139_CUSTTYPE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(137643405772815248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Type'
,p_source=>'CUSTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.NMCODDES,C.NMSOFCDE',
'FROM nmcodmas C',
'WHERE C.NMHRDCDE = ''CTY''',
'AND C.MODLCODE = ''NM''',
'and c.COMPCODE = :COMPCODE '))
,p_cSize=>25
,p_cMaxlength=>4
,p_cHeight=>1
,p_tag_attributes=>'style="width:100%;"'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137358509985385169)
,p_name=>'P139_CUSTMRID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(137643405772815248)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P138_CUSTOMRID.'
,p_prompt=>'Customer Code'
,p_source=>'CUSTMRID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>50
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137360092338385169)
,p_name=>'P139_ZONLCODE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(137643910687830647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zone Name'
,p_source=>'ZONLCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(areadesc),areacode',
'from nmwhznms',
'where compcode=:compcode',
'and upper(zonlcode)=upper(''ROOT'')',
'order by areacode'))
,p_cSize=>25
,p_cMaxlength=>6
,p_cHeight=>1
,p_tag_attributes=>'style="width:100%;"'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137360892057385169)
,p_name=>'P139_IDENTIFY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(137643405772815248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'National ID'
,p_source=>'IDENTIFY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>100
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137366894776385173)
,p_name=>'P139_OCCUPATION'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(137643910687830647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Occupation'
,p_source=>'OCCUPATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>200
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137367699640385173)
,p_name=>'P139_FATHERS_NAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(137643405772815248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'S.O/D.O/W.O'
,p_source=>'FATHERS_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>250
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137371227555385174)
,p_name=>'P139_PRESENT_ADDRESS1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(137643405772815248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Present Address1'
,p_source=>'PRESENT_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>25
,p_cMaxlength=>500
,p_cHeight=>1
,p_tag_attributes=>'style ="resize: horizontal; width: 102%; "'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137371619738385174)
,p_name=>'P139_PRESENT_ADDRESS2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(137643405772815248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Present Address2'
,p_source=>'PRESENT_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>25
,p_cMaxlength=>500
,p_cHeight=>1
,p_tag_attributes=>'style ="resize: horizontal; width: 102%; "'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137372004381385174)
,p_name=>'P139_PRESENT_ADDRESS3'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(137643405772815248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Present Address3'
,p_source=>'PRESENT_ADDRESS3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>25
,p_cMaxlength=>500
,p_cHeight=>1
,p_tag_attributes=>'style ="resize: horizontal; width: 102%; "'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137372379628385174)
,p_name=>'P139_PERMANENT_ADDRESS1'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(137643910687830647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Permanent Address1'
,p_source=>'PERMANENT_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>25
,p_cMaxlength=>500
,p_cHeight=>1
,p_tag_attributes=>'style ="resize: horizontal; width: 102%; "'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137372864793385174)
,p_name=>'P139_PERMANENT_ADDRESS2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(137643910687830647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Permanent Address2'
,p_source=>'PERMANENT_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>25
,p_cMaxlength=>500
,p_cHeight=>1
,p_tag_attributes=>'style ="resize: horizontal; width: 102%; "'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137373204021385174)
,p_name=>'P139_PERMANENT_ADDRESS3'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(137643910687830647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address3'
,p_source=>'PERMANENT_ADDRESS3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>25
,p_cMaxlength=>500
,p_cHeight=>1
,p_tag_attributes=>'style ="resize: horizontal; width: 102%; "'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137373639696385174)
,p_name=>'P139_NOMINEE_NAME'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(137643405772815248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nominee Name'
,p_source=>'NOMINEE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>250
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137374027907385174)
,p_name=>'P139_FIRST_GUARANTOR'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(137652307769104209)
,p_use_cache_before_default=>'NO'
,p_prompt=>'1st Guarantor'
,p_source=>'FIRST_GUARANTOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137374413147385174)
,p_name=>'P139_FIRST_GUARANTOR_SO_DO'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(137652307769104209)
,p_use_cache_before_default=>'NO'
,p_prompt=>'S.O/D.O/W.O'
,p_source=>'FIRST_GUARANTOR_SO_DO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137374866292385176)
,p_name=>'P139_FIRST_GUARANTOR_ADD1'
,p_item_sequence=>2560
,p_item_plug_id=>wwv_flow_api.id(137652639428104210)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address1'
,p_source=>'FIRST_GUARANTOR_ADD1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137375219155385176)
,p_name=>'P139_FIRST_GUARANTOR_ADD2'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(137652307769104209)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address2'
,p_source=>'FIRST_GUARANTOR_ADD2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137375636685385176)
,p_name=>'P139_FIRST_GUARANTOR_MOB'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(137652307769104209)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobile'
,p_source=>'FIRST_GUARANTOR_MOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137376014723385176)
,p_name=>'P139_SECOND_GUARANTOR'
,p_item_sequence=>2540
,p_item_plug_id=>wwv_flow_api.id(137652639428104210)
,p_use_cache_before_default=>'NO'
,p_prompt=>'2nd Guarantor'
,p_source=>'SECOND_GUARANTOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137376382133385177)
,p_name=>'P139_SECOND_GUARANTOR_SO_DO'
,p_item_sequence=>2550
,p_item_plug_id=>wwv_flow_api.id(137652639428104210)
,p_use_cache_before_default=>'NO'
,p_prompt=>'S.O/D.O/W.O'
,p_source=>'SECOND_GUARANTOR_SO_DO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137376859898385177)
,p_name=>'P139_SECOND_GUARANTOR_ADD1'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(137652307769104209)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address1'
,p_source=>'SECOND_GUARANTOR_ADD1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137377200744385177)
,p_name=>'P139_SECOND_GUARANTOR_ADD2'
,p_item_sequence=>2570
,p_item_plug_id=>wwv_flow_api.id(137652639428104210)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address2'
,p_source=>'SECOND_GUARANTOR_ADD2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137377620208385177)
,p_name=>'P139_SECOND_GUARANTOR_MOB'
,p_item_sequence=>2580
,p_item_plug_id=>wwv_flow_api.id(137652639428104210)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobile'
,p_source=>'SECOND_GUARANTOR_MOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137378058147385177)
,p_name=>'P139_NOMINEE_RELATIONSHIP'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(137643910687830647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nominee Relationship'
,p_source=>'NOMINEE_RELATIONSHIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>120
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137650575431077685)
,p_name=>'P139_S_DISTRIC_CODE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(137643910687830647)
,p_prompt=>'district Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(areadesc),areacode',
'from nmwhznms',
'where compcode=:compcode',
'and upper(zonlcode)=upper(:P139_ZONLCODE)',
'order by areacode'))
,p_lov_cascade_parent_items=>'P139_ZONLCODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="width:100%;"'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137650902455077687)
,p_name=>'P139_S_TRNDES'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(137643910687830647)
,p_prompt=>'Thana Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(areadesc),areacode',
'from nmwhznms',
'where compcode=:compcode',
'     and upper(zonlcode)=upper(:P139_S_DISTRIC_CODE)',
'order by 2'))
,p_lov_cascade_parent_items=>'P139_S_DISTRIC_CODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="width:100%;"'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137658443002282075)
,p_name=>'P139_S_BOOKCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(137657085816241578)
,p_prompt=>'Booking'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137658698945282075)
,p_name=>'P139_S_BOOKDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(137657085816241578)
,p_prompt=>'Booking Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137659150938282075)
,p_name=>'P139_S_SMANCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(137657085816241578)
,p_prompt=>'Booked By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137659474966282075)
,p_name=>'P139_S_SMNNAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(137657085816241578)
,p_prompt=>'Salesman Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137659910556282075)
,p_name=>'P139_S_CUSTMRID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(137657085816241578)
,p_prompt=>'Customer ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137660291291282075)
,p_name=>'P139_S_PRTYNAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(137657085816241578)
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
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
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137660669756282075)
,p_name=>'P139_S_VINNNO'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(137657085816241578)
,p_prompt=>'VIN/Chessis No'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT ITEMDES1, ITEMCODE',
'              FROM nmitemas',
'             WHERE compcode = :compcode;'))
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137661143030282076)
,p_name=>'P139_S_ITEMDESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(137657085816241578)
,p_prompt=>'Vehicle Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137661494705282076)
,p_name=>'P139_S_ENGINENO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(137657085816241578)
,p_prompt=>'Engine  No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137661922233282076)
,p_name=>'P139_S_COLORDESC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(137657085816241578)
,p_prompt=>'Color'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137662281743282078)
,p_name=>'P139_S_SALERATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(137657085816241578)
,p_prompt=>'Salerate'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137697354748365855)
,p_name=>'P139_PAYMENT_MODE'
,p_item_sequence=>1730
,p_item_plug_id=>wwv_flow_api.id(137657524121241578)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Mode'
,p_source=>'PAYMENT_MODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Cash;CSH,Credit;CRT'
,p_cSize=>12
,p_cMaxlength=>3
,p_cHeight=>1
,p_tag_attributes=>'style="width:84%;"'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137697680468365857)
,p_name=>'P139_INSTALLMENT_PAY'
,p_item_sequence=>1750
,p_item_plug_id=>wwv_flow_api.id(137657524121241578)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Installment Pay'
,p_source=>'INSTALLMENT_PAY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_cSize=>12
,p_cMaxlength=>1
,p_cHeight=>1
,p_tag_attributes=>'style="width:84%;"'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137698497279365857)
,p_name=>'P139_NO_OF_INSTALLMENT'
,p_item_sequence=>1790
,p_item_plug_id=>wwv_flow_api.id(137657524121241578)
,p_use_cache_before_default=>'NO'
,p_prompt=>'No Of Installment'
,p_source=>'NO_OF_INSTALLMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137698875892365857)
,p_name=>'P139_POSIBLE_INST_START_DATE'
,p_item_sequence=>1800
,p_item_plug_id=>wwv_flow_api.id(137657524121241578)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Possible Inst Start Date'
,p_source=>'POSIBLE_INST_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137699713396365857)
,p_name=>'P139_INTEREST_AMOUNT'
,p_item_sequence=>1830
,p_item_plug_id=>wwv_flow_api.id(137657524121241578)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interest Amount'
,p_source=>'INTEREST_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137700101581365857)
,p_name=>'P139_LOAN_AMOUNT'
,p_item_sequence=>1850
,p_item_plug_id=>wwv_flow_api.id(137657524121241578)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loan Amount'
,p_source=>'LOAN_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137700471704365857)
,p_name=>'P139_MONTHLY_INSTALLMENT'
,p_item_sequence=>1870
,p_item_plug_id=>wwv_flow_api.id(137657524121241578)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Monthly Installment'
,p_source=>'MONTHLY_INSTALLMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137886510861614148)
,p_name=>'P139_PARTYCDE'
,p_item_sequence=>2590
,p_item_plug_id=>wwv_flow_api.id(137642926499778135)
,p_prompt=>'Partycde'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137887078525636946)
,p_name=>'P139_PARTYTYP'
,p_item_sequence=>2600
,p_item_plug_id=>wwv_flow_api.id(137642926499778135)
,p_item_default=>'CU'
,p_prompt=>'Partytyp'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137896448504766544)
,p_name=>'P139_BKDOCNUM'
,p_item_sequence=>2610
,p_item_plug_id=>wwv_flow_api.id(137657085816241578)
,p_prompt=>'Bkdocnum'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137896738700766553)
,p_name=>'P139_BKWARCDE'
,p_item_sequence=>2620
,p_item_plug_id=>wwv_flow_api.id(137657085816241578)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P138_WARCODE.'
,p_prompt=>'Bkwarcde'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137927705857899169)
,p_name=>'P139_BKCOSTCDE'
,p_item_sequence=>2630
,p_item_plug_id=>wwv_flow_api.id(137657085816241578)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P138_COSTCODE.'
,p_prompt=>'Bkcostcde'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138059153977165009)
,p_name=>'P139_ENUDTLPK'
,p_item_sequence=>2640
,p_item_plug_id=>wwv_flow_api.id(137657085816241578)
,p_prompt=>'Enudtlpk'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(137439807352791736)
,p_computation_sequence=>10
,p_computation_item=>'P138_CUSTOMRID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P138_CUSTOMRID.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(137440141681800205)
,p_computation_sequence=>10
,p_computation_item=>'P138_DOCNUMBR'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P138_DOCNUMBR.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(137640418610330040)
,p_computation_sequence=>10
,p_computation_item=>'P138_PARTYCDE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P138_PARTYCDE.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(138056752573994597)
,p_computation_sequence=>10
,p_computation_item=>'P138_WARCODE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P138_WARCODE.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(138057000010000085)
,p_computation_sequence=>10
,p_computation_item=>'P138_COSTCODE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P138_COSTCODE.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(137782771554365897)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMCUSVLG'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'P139_ROWID'
,p_attribute_04=>'ROWID'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(137438728896385205)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SYCOMPTY'
,p_attribute_02=>'SYCOMPTY'
,p_attribute_03=>'P139_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(137783232495365899)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMCUSVLG'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'P139_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(137439135611385205)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(137328369596385118)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(137783653051365899)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(137666774007365814)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(137888940292734088)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into sycompty'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P139_CUSTMRID IS NOT NULL AND :P139_PARTYCDE is NOT NULL then',
'',
'INSERT INTO SYCOMPTY (COMPCODE,',
'                      CUSTMRID,',
'                      PARTYCDE,',
'                      CUSTTYPE,',
'                      PARTYTYP,',
'                      IDENTIFY,',
'                      PRTYNAME,',
'                      FATHERS_NAME,',
'                      MOBILENO,',
'                      TELENOFF,',
'                      PRESENT_ADDRESS1,',
'                      PRESENT_ADDRESS2,',
'                      PRESENT_ADDRESS3,',
'                      NOMINEE_NAME,',
'                      OCCUPATION,',
'                      TELENRES,',
'                      PERMANENT_ADDRESS1,',
'                      PERMANENT_ADDRESS2,',
'                      PERMANENT_ADDRESS3,',
'                      NOMINEE_RELATIONSHIP,',
'                      PEMAILID,',
'                      ZONLCODE,',
'                      AREACODE,',
'                      FIRST_GUARANTOR,',
'                      FIRST_GUARANTOR_SO_DO,',
'                      FIRST_GUARANTOR_ADD1,',
'                      FIRST_GUARANTOR_ADD2,',
'                      FIRST_GUARANTOR_MOB,',
'                      SECOND_GUARANTOR,',
'                      SECOND_GUARANTOR_SO_DO,',
'                      SECOND_GUARANTOR_ADD1,',
'                      SECOND_GUARANTOR_ADD2,',
'                      SECOND_GUARANTOR_MOB,',
'                      CUSTOMER_CODE,',
'                      OPRSTAMP,',
'                      TIMSTAMP,',
'                      PARTYAD1,',
'                      PARTYAD2,',
'                      PARTYAD3)',
'     VALUES (:COMPCODE,',
'             :P139_CUSTMRID,',
'             :P139_PARTYCDE,',
'             :P139_CUSTTYPE,',
'             :P139_PARTYTYP,',
'             :P139_IDENTIFY,',
'             :P139_PRTYNAME,',
'             :P139_FATHERS_NAME,',
'             :P139_MOBILENO,',
'             :P139_TELENOFF,',
'             :P139_PRESENT_ADDRESS1,',
'             :P139_PRESENT_ADDRESS2,',
'             :P139_PRESENT_ADDRESS3,',
'             :P139_NOMINEE_NAME,',
'             :P139_OCCUPATION,',
'             :P139_TELENRES,',
'             :P139_PERMANENT_ADDRESS1,',
'             :P139_PERMANENT_ADDRESS2,',
'             :P139_PERMANENT_ADDRESS3,',
'             :P139_NOMINEE_RELATIONSHIP,',
'             :P139_PEMAILID,',
'             :P139_ZONLCODE,',
'             :P139_S_TRNDES,',
'             :P139_FIRST_GUARANTOR,',
'             :P139_FIRST_GUARANTOR_SO_DO,',
'             :P139_FIRST_GUARANTOR_ADD1,',
'             :P139_FIRST_GUARANTOR_ADD2,',
'             :P139_FIRST_GUARANTOR_MOB,',
'             :P139_SECOND_GUARANTOR,',
'             :P139_SECOND_GUARANTOR_SO_DO,',
'             :P139_SECOND_GUARANTOR_ADD1,',
'             :P139_SECOND_GUARANTOR_ADD2,',
'             :P139_SECOND_GUARANTOR_MOB,',
'             :P139_CUSTMRID,',
'             :APP_USER,',
'             SYSDATE,',
'             :P139_PRESENT_ADDRESS1,',
'             :P139_PRESENT_ADDRESS2,',
'             :P139_PRESENT_ADDRESS3);',
'end if;',
'----------Updata Customer Master---------',
'update nmcusmas set partycde=:P139_PARTYCDE',
'where compcode=:compcode',
'and custmrid=:P139_CUSTMRID;',
'----------Updata Customer Master---------',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(138061575792248470)
,p_process_success_message=>'Successfully Insert ....&P139_CUSTMRID.||'' (''||&P139_PARTYCDE.||'')'''
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(138059557561212827)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into nmenudtl'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'Insert into NMENUDTL',
'   (COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, ',
'   SERLNUMB, PARTYCDE, CUSTMRID, RAISEDBY, COMMCODE, ',
'   ITEMCODE, HUOMCODE, LUOMCODE, ITEMRATE, COSTRATE, ',
'   SALERATE, BOOKCODE, BOOKDATE, BOOKAPRV, WARECODE, ',
'   COSTCODE, ITEMSERL, ORGNQNTY, APPRQNTY, MSFCAMNT, ',
'   CURRCODE, EXCGRATE, MSLCAMNT, OPRSTAMP, TIMSTAMP, ',
'   STATUSCD, ITEMDESC, ENUDTLPK, SMANCODE, PAYMENT_MODE, ',
'   INSTALLMENT_PAY,NO_OF_INSTALLMENT,POSIBLE_INST_START_DATE,',
'   INTEREST_AMOUNT,LOAN_AMOUNT,MONTHLY_INSTALLMENT,COLORCDE,',
'ENGINENO)',
' Values',
'   (:COMPCODE, ''BK'', 1,:P139_BKDOCNUM,SYSDATE, ',
'    ''000001'',:P139_PARTYCDE,:P139_CUSTMRID, :APP_USER, ''TOY'',',
'     :P139_S_VINNNO, ''PCS'',  ''PCS'', :P139_S_SALERATE, :P139_S_SALERATE, ',
'     :P139_S_SALERATE, :P139_BKDOCNUM, SYSDATE, ''Y'', :P138_WARCODE, ',
'     :P138_COSTCODE, ''000001'', 1, 1, :P139_S_SALERATE,',
'      ''BDT'', 1, :P139_S_SALERATE, :APP_USER,SYSDATE, ',
'      ''APR'', :P139_S_ITEMDESC, :P139_ENUDTLPK,:P139_S_SMANCODE, :P139_PAYMENT_MODE, ',
'      :P139_INSTALLMENT_PAY,:P139_NO_OF_INSTALLMENT,:P139_POSIBLE_INST_START_DATE,',
'   :P139_INTEREST_AMOUNT,:P139_LOAN_AMOUNT,:P139_MONTHLY_INSTALLMENT,:P139_S_COLORDESC,',
'   :P139_S_ENGINENO);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(138061575792248470)
,p_process_success_message=>'Successfully Insert ....&P139_BKDOCNUM.||'' (''||&P139_ENUDTLPK.||'')'''
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(137438269705385204)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from SYCOMPTY'
,p_attribute_02=>'SYCOMPTY'
,p_attribute_03=>'P139_CUSTMRID'
,p_attribute_04=>'CUSTMRID'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'COMPCODE= :COMPCODE',
'and custmrid=:P139_CUSTMRID'))
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(137641857060482543)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Fetch Row from SYCOMPTY'
,p_attribute_02=>'SYCOMPTY'
,p_attribute_03=>'P139_PARTYCDE'
,p_attribute_04=>'PARTYCDE'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(137885446735564940)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert into sycompty'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'nxtptycde number(10);',
'Begin',
'',
'----------------Party code generate--------',
'  nxtptycde := 0;',
'  ',
'  Select        max(to_number(substr(partycde,3,5))) ',
'  into             nxtptycde ',
'  from             sycompty',
'  where upper(partytyp)=upper(:P139_PARTYTYP)',
'  and compcode=:compcode;',
'  ',
'  If nxtptycde is NULL then',
'     nxtptycde := 0;',
'  End If;',
'  ',
'  nxtptycde      := nxtptycde + 1;',
'  :P139_PARTYCDE := upper(:P139_PARTYTYP)|| lpad(to_char(nxtptycde ),4,0);',
' -- :P139_grupcode := ''001'';',
' -----------------------customer id generate----------',
' 	:P139_CUSTMRID:= TO_CHAR (sysdate, ''rrrrmmdd'') || LPAD (seq_custmrid.nextval+1, 5, 0);',
'End ;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(138061575792248470)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(137895421129149335)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert into NMENUDTL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   newno       VARCHAR2 (20);',
'   v_enudtlpk number;',
'begin',
' docnumber_generation (:COMPCODE,',
'                                  ''NM'',',
'                                  ''BK'',',
'                                  1,',
'                                  sysdate,',
'                                  :P139_BKWARCDE,',
'                                  ''NM'',',
'                                  newno);',
'                                  ',
':P139_BKDOCNUM:=newno;',
'------------primary key generate----------',
'select max(ENUDTLPK)+1 into v_enudtlpk from nmenudtl',
'where COMPCODE=:COMPCODE',
'and DOCTTYPE=''BK''',
'and SUBTTYPE=1;',
'',
':P139_ENUDTLPK:=v_enudtlpk;',
'---------------------------------------',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(138061575792248470)
);
wwv_flow_api.component_end;
end;
/
