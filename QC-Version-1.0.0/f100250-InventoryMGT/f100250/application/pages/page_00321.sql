prompt --application/pages/page_00321
begin
--   Manifest
--     PAGE: 00321
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
 p_id=>321
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Chart Of Accounts'
,p_page_mode=>'MODAL'
,p_step_title=>'Chart Of Accounts'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171114173842'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(274488091993579895)
,p_plug_name=>'Chart Of Accounts Entry'
,p_region_template_options=>'#DEFAULT#:i-h400:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>11
,p_plug_new_grid_row=>false
,p_plug_display_column=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(274823034133537132)
,p_plug_name=>'Chart Of Accounts Tree'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_display_column=>1
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       ACCTNAME as title, ',
'       null as icon, ',
'       "PARNTACT" as value, ',
'       null as tooltip,',
'       '' javascript:$s(''''P321_AREACODE_1'''',''||ACCTCODE||'')'' as link',
'from "#OWNER#"."SYCHRTAC"',
'where COMPCODE = :P321_COMPCODE',
'start with "PARNTACT" =''ROXXX''',
'connect by prior "ACCTCODE"="PARNTACT"'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P321_TREEVALUE'
,p_attribute_02=>'S'
,p_attribute_03=>'P321_ACCTCODE'
,p_attribute_04=>'N'
,p_attribute_07=>'APEX_TREE'
,p_attribute_08=>'a-Icon'
,p_attribute_10=>'"3"'
,p_attribute_11=>'"2"'
,p_attribute_12=>'"4"'
,p_attribute_15=>'"1"'
,p_attribute_20=>'"5"'
,p_attribute_22=>'"6"'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'"7"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48874075052973682)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(274488091993579895)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P321_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48874485172973682)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(274488091993579895)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:320:&SESSION.::&DEBUG.:RP,321::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48874909381973682)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(274488091993579895)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P321_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48875304938973682)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(274488091993579895)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P321_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48872967103973682)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(274823034133537132)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Collapse All'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.tree.collapse_all(''tree307169417202938476'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48873383989973682)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(274823034133537132)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Expand All'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.tree.expand_all(''tree307169417202938476'');'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48875688190973683)
,p_name=>'P321_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48876108629973683)
,p_name=>'P321_COMPCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48876483179973685)
,p_name=>'P321_PARNTACT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_source=>'PARNTACT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48876860611973685)
,p_name=>'P321_AREACODE_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_prompt=>'Parent A/C Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>71
,p_tag_attributes=>'readonly=true;'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  P.DEPT_NAME||''-''||P.DEPT_NO, P.DEPT_NO',
'from prdepartment p',
'where P.COMPCODE = :compcode',
'and P.DEPT_NO = :P321_TREEVALUE',
'',
'readonly=true'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48877230572973685)
,p_name=>'P321_ACCTCODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Account Code'
,p_source=>'ACCTCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>71
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  P.DEPT_NAME||''-''||P.DEPT_NO, P.DEPT_NO',
'from prdepartment p',
'where P.COMPCODE = :compcode',
'and P.DEPT_NO = :P321_TREEVALUE',
'',
'readonly=true'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48877644002973686)
,p_name=>'P321_ACCTNAME'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Account Name'
,p_source=>'ACCTNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48878051087973686)
,p_name=>'P321_AREADESC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48878482215973686)
,p_name=>'P321_WHSZONPK'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48878890218973686)
,p_name=>'P321_WHSZONPK_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48879243779973686)
,p_name=>'P321_DFLTCOST'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Cost Code'
,p_source=>'DFLTCOST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_cHeight=>1
,p_tag_attributes=>'style="width:53%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48879667025973688)
,p_name=>'P321_CASHBANK'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cash/Bank/Others'
,p_source=>'CASHBANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="width:53%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48880058907973690)
,p_name=>'P321_ARACTFLG'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_source=>'ARACTFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48880449311973690)
,p_name=>'P321_HEADFLAG'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Head Flag'
,p_source=>'HEADFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="width:53%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48880876423973690)
,p_name=>'P321_STATSFLG'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Status Flag'
,p_source=>'STATSFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="width:53%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48881285254973690)
,p_name=>'P321_OPRSTAMP'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_source=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48881644323973690)
,p_name=>'P321_TIMSTAMP'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_source=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48882066286973690)
,p_name=>'P321_MODIFYDT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_source=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48882501154973690)
,p_name=>'P321_TREEVALUE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48908374372272357)
,p_name=>'P321_GRUPCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_item_default=>'001'
,p_source=>'GRUPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48908431082272358)
,p_name=>'P321_ACCTTYPE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Account Type'
,p_source=>'ACCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Assets;1,Capital & Liabilities;2,Income;3,Expences;4'
,p_cHeight=>1
,p_tag_attributes=>'style="width:53%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48908581820272359)
,p_name=>'P321_CTRLFLAG'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Control Flag'
,p_source=>'CTRLFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_cHeight=>1
,p_tag_attributes=>'style="width:53%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48908652176272360)
,p_name=>'P321_EMPLRECV'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Receivable'
,p_source=>'EMPLRECV'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="width:53%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48908799355272361)
,p_name=>'P321_COSTREQD'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(274488091993579895)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sub Ledger Required'
,p_source=>'COSTREQD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="width:53%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(48882941924973691)
,p_validation_name=>'Areacode validation'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P321_AREACODE =:P321_AREACODE_1 then',
'        return ''This ''||:P321_AREACODE_1 ||'' is already exist'';',
'    end if;',
'    return null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48885273719973691)
,p_name=>'change on warhouse'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P321_WHSZONPK_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48885753779973694)
,p_event_id=>wwv_flow_api.id(48885273719973691)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P321_WHSZONPK_1 IS NOT NULL THEN',
'select AREACODE into :P321_AREACODE_1 ',
'from nmwhznms	where WHSZONPK = :P321_WHSZONPK_1;',
'END IF;',
'Exception',
'when no_data_found then',
':P321_AREACODE_1:='''';',
'when too_many_rows then',
':P321_AREACODE_1:='''';',
'when others then',
':P321_AREACODE_1:='''';',
'',
'end;',
''))
,p_attribute_02=>'P321_WHSZONPK_1'
,p_attribute_03=>'P321_AREACODE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48883303788973691)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMWHZNMS'
,p_attribute_02=>'NMWHZNMS'
,p_attribute_03=>'P321_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48883700838973691)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SYCHRTAC'
,p_attribute_02=>'SYCHRTAC'
,p_attribute_03=>'P321_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48884108886973691)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(48875304938973682)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48884903197973691)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear status'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(48874909381973682)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48884459153973691)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P321_OPRSTAMP := :APP_USER;',
'   :P321_TIMSTAMP := sysdate;',
'   :P321_MODIFYDT := sysdate;',
'   :P321_COMPCODE := :COMPCODE;',
'   ',
'',
'IF :P321_AREACODE_1 IS NULL and :P321_WHSZONPK_1 IS  NULL THEN ',
'		:P321_PARNTACT := ''ROXXX'';',
'ELSE',
'		:P321_PARNTACT := :P321_AREACODE_1;',
'END IF;',
'',
'   	',
'   EXCEPTION',
'	WHEN NO_DATA_FOUND THEN',
'	 :P321_WHSZONPK:=1;',
'	WHEN OTHERS THEN',
'     :P321_WHSZONPK:=1;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(48874909381973682)
);
wwv_flow_api.component_end;
end;
/
