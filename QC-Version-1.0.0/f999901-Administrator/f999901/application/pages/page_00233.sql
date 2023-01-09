prompt --application/pages/page_00233
begin
--   Manifest
--     PAGE: 00233
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
 p_id=>233
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Warehouse Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Warehouse Master'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
,p_last_upd_yyyymmddhh24miss=>'20230101155112'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(185616334252900762)
,p_plug_name=>'Warehouse Master'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(185617067939900763)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noBorder:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(185682988497988213)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6717223796698571)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(185617067939900763)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P233_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6718039529698573)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(185617067939900763)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P233_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6718410078698573)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(185617067939900763)
,p_button_name=>'CREATE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P233_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6717614549698573)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(185617067939900763)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(40991974818194202)
,p_branch_name=>'Go to success page'
,p_branch_action=>'f?p=&SUCCESS_APP.:&SUCCESS_PAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6719184504698573)
,p_name=>'P233_ACCTCODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>A/C Code</strong>'
,p_source=>'ACCTCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT acctcode||''-''||acctname d,acctcode r',
'    FROM sychrtac',
'   WHERE compcode = :compcode AND headflag = ''N''',
'ORDER BY acctcode'))
,p_cSize=>32
,p_cMaxlength=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6719517334698578)
,p_name=>'P233_COSTCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Cost Code</strong>'
,p_source=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT costcode||''-''||costdesc d,costcode r',
'    FROM syjobmas',
'   WHERE     compcode = :compcode',
'         AND costcode NOT IN (''00000'', ''0000000'')',
'         AND STATSFLG = ''A''',
'ORDER BY costcode'))
,p_cSize=>32
,p_cMaxlength=>10
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6719974510698578)
,p_name=>'P233_TCSTGRUP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Tcst Group</strong>'
,p_source=>'TCSTGRUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT tcstgrup||''-''||tcstdesc d,tcstgrup r',
'    FROM nmtcpmas',
'   WHERE compcode = :compcode',
'ORDER BY tcstgrup'))
,p_cSize=>32
,p_cMaxlength=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6720316545698579)
,p_name=>'P233_WAREFLAG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Warehouse Status</strong>'
,p_source=>'WAREFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6720710094698579)
,p_name=>'P233_PRNTCHID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_source=>'PRNTCHID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6721179543698581)
,p_name=>'P233_REGNCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Warehouse Type</strong>'
,p_source=>'REGNCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NMSOFCDE||'' - ''||initcap(NMCODDES) d, NMSOFCDE r',
'from NMCODMAS',
'where COMPCODE = :COMPCODE',
'and MODLCODE = ''NM''',
'and NMHRDCDE = ''TYP'''))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6721524382698581)
,p_name=>'P233_CREDLIMT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Credit Limit</strong>'
,p_source=>'CREDLIMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'10'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6721966751698581)
,p_name=>'P233_SRVCWFLG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Service Status</strong>'
,p_source=>'SRVCWFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6722376352698582)
,p_name=>'P233_SWPRNTCD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Parent Warehouse</strong>'
,p_source=>'SWPRNTCD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'ORDER BY warecode'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6723028304698582)
,p_name=>'P233_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6723421983698582)
,p_name=>'P233_COMPCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
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
 p_id=>wwv_flow_api.id(6723832378698584)
,p_name=>'P233_WARECODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Warehouse Code</strong>'
,p_placeholder=>'--Warehouse Code--'
,p_source=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>6
,p_tag_attributes=>'style="text-transform:uppercase"'
,p_read_only_when=>'P233_ROWID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6724207269698584)
,p_name=>'P233_WAREDESC'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Waredesc</strong>'
,p_placeholder=>'--WAREHOUSE NAME--'
,p_source=>'WAREDESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6724667921698584)
,p_name=>'P233_WAREADD1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Address 1</strong>'
,p_source=>'WAREADD1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6725033347698584)
,p_name=>'P233_WAREADD2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Address 2</strong>'
,p_source=>'WAREADD2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>500
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6725434404698584)
,p_name=>'P233_WAREADD3'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Address 3</strong>'
,p_source=>'WAREADD3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>500
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6725858766698584)
,p_name=>'P233_USEBNFLG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Use Bin Flag</strong>'
,p_source=>'USEBNFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6726296915698584)
,p_name=>'P233_WCSTGRUP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_source=>'WCSTGRUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6726694061698584)
,p_name=>'P233_OPRSTAMP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6727024748698584)
,p_name=>'P233_TIMSTAMP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6727405965698585)
,p_name=>'P233_ZONLCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Zone</strong>'
,p_source=>'ZONLCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NMsofcde||''-''||INITCAP (NMcoddes) d,NMsofcde r',
'  FROM NMCODMAS',
' WHERE compcode = :compcode AND NMhrdcde = ''CAT'''))
,p_cSize=>32
,p_cMaxlength=>3
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6727888293698585)
,p_name=>'P233_MAINSTOR'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_source=>'MAINSTOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6728267330698585)
,p_name=>'P233_BRANDCDE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_source=>'BRANDCDE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6728677072698585)
,p_name=>'P233_MODIFYDT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_source=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6729050810698585)
,p_name=>'P233_VESLFLAG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Vessel Status</strong>'
,p_source=>'VESLFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6729459669698585)
,p_name=>'P233_EMAILADD'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_source=>'EMAILADD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6729824617698585)
,p_name=>'P233_PHONENBR'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_source=>'PHONENBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6730270913698585)
,p_name=>'P233_PORT_FLAG'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Port Status</strong>'
,p_source=>'PORT_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6730627101698585)
,p_name=>'P233_WHSZONFK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Area>>Location</strong>'
,p_source=>'WHSZONFK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6731039089698585)
,p_name=>'P233_PARTYCDE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_source=>'PARTYCDE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6731495008698587)
,p_name=>'P233_WORKSOPCD'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_source=>'WORKSOPCD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6731788615698587)
,p_name=>'P233_SHORTNAM'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(185616334252900762)
,p_use_cache_before_default=>'NO'
,p_source=>'SHORTNAM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30974781626917236)
,p_name=>'P233_QC_FLAG'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>QC Flag</strong>'
,p_source=>'QCWHFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140603289054248111)
,p_name=>'P233_WSTGFLAG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Wastage Status</strong>'
,p_source=>'WSTGFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140603346415248112)
,p_name=>'P233_RECOVERY_FLG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Recovery Status</strong>'
,p_source=>'RECOVERY_FLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140603449011248113)
,p_name=>'P233_PKGWREFLG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Package Status</strong>'
,p_source=>'PKGWREFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140603505214248114)
,p_name=>'P233_PRDACTFLG'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Prdactflg</strong>'
,p_source=>'PRDACTFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140603690930248115)
,p_name=>'P233_SEIZEFLG'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(185682988497988213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Seize Status</strong>'
,p_source=>'SEIZEFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(140604781477248126)
,p_validation_name=>'Warehouse Code'
,p_validation_sequence=>10
,p_validation=>'P233_WARECODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please enter Warehouse Code'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(140604613049248125)
,p_validation_name=>'Address1'
,p_validation_sequence=>30
,p_validation=>'P233_WAREADD1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please enter at lease one address'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(140604872151248127)
,p_validation_name=>'Exists warehouse count'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_Count number;',
'begin',
'    select count(WARECODE) into v_Count from NMWHSMAS',
'    where COMPCODE = :P233_COMPCODE',
'    and WARECODE = :P233_WARECODE;',
'',
'    if v_Count > 0 then',
'        return ''Please enter an unique Warehouse Code.'';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(6718410078698573)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6733366050698596)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6717614549698573)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6733813891698600)
,p_event_id=>wwv_flow_api.id(6733366050698596)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46316819562028202)
,p_name=>'Remove Cross Sign '
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46316977977028203)
,p_event_id=>wwv_flow_api.id(46316819562028202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var button = parent.$(''.ui-dialog-titlebar-close''); //get the button',
'button.hide(); //hide the button'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6732131875698595)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMWHSMAS'
,p_attribute_02=>'NMWHSMAS'
,p_attribute_03=>'P233_ROWID'
,p_attribute_04=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30946530392675603)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Warehouse Length 6 check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 01/Jan/23 1:28:02 PM (QP5 v5.287) */',
'BEGIN',
'   IF LENGTH ( :P233_WARECODE) <> 6',
'   THEN',
'      raise_application_error (',
'         -20001,',
'         ''Warehouse Code Must be Six Characters Long. '');',
'   END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6732547170698596)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMWHSMAS'
,p_attribute_02=>'NMWHSMAS'
,p_attribute_03=>'P233_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6732951990698596)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(6717223796698571)
);
wwv_flow_api.component_end;
end;
/
