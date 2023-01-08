prompt --application/pages/page_00235
begin
--   Manifest
--     PAGE: 00235
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
 p_id=>235
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
,p_last_updated_by=>'ASIF'
,p_last_upd_yyyymmddhh24miss=>'20230105124115'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(178899692490202195)
,p_plug_name=>'Warehouse Master'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--hideHeader:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(178900426177202196)
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
 p_id=>wwv_flow_api.id(178966346735289646)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--hideHeader:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
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
 p_id=>wwv_flow_api.id(6061849901881992)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(178900426177202196)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P235_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6062677707881993)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(178900426177202196)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P235_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6063069446881993)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(178900426177202196)
,p_button_name=>'CREATE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P235_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6062274619881993)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(178900426177202196)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:234:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(40992070460194203)
,p_branch_name=>'Go to success page'
,p_branch_action=>'f?p=&SUCCESS_APP.:&SUCCESS_PAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4155064610179021)
,p_name=>'P235_RIGHTS_SETUP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
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
 p_id=>wwv_flow_api.id(6052392380881979)
,p_name=>'P235_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6052709235881982)
,p_name=>'P235_COMPCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
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
 p_id=>wwv_flow_api.id(6053142931881982)
,p_name=>'P235_WARECODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Warehouse Code</strong>'
,p_source=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when=>'P235_ROWID'
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
 p_id=>wwv_flow_api.id(6053533868881985)
,p_name=>'P235_WAREDESC'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Waredesc</strong>'
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
 p_id=>wwv_flow_api.id(6053940530881985)
,p_name=>'P235_WAREADD1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
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
 p_id=>wwv_flow_api.id(6054353600881987)
,p_name=>'P235_WAREADD2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
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
 p_id=>wwv_flow_api.id(6054773237881987)
,p_name=>'P235_WAREADD3'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
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
 p_id=>wwv_flow_api.id(6055197628881987)
,p_name=>'P235_USEBNFLG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>USEBNFLG</strong>'
,p_source=>'USEBNFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6055589104881987)
,p_name=>'P235_WCSTGRUP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
,p_use_cache_before_default=>'NO'
,p_source=>'WCSTGRUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6055961931881987)
,p_name=>'P235_OPRSTAMP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
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
 p_id=>wwv_flow_api.id(6056319768881987)
,p_name=>'P235_TIMSTAMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
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
 p_id=>wwv_flow_api.id(6056771272881987)
,p_name=>'P235_ZONLCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
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
 p_id=>wwv_flow_api.id(6057120789881989)
,p_name=>'P235_MAINSTOR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
,p_use_cache_before_default=>'NO'
,p_source=>'MAINSTOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6057575690881990)
,p_name=>'P235_BRANDCDE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
,p_use_cache_before_default=>'NO'
,p_source=>'BRANDCDE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6057936517881990)
,p_name=>'P235_MODIFYDT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
,p_use_cache_before_default=>'NO'
,p_source=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6058346793881992)
,p_name=>'P235_VESLFLAG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>VESLFLAG</strong>'
,p_source=>'VESLFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6058734346881992)
,p_name=>'P235_EMAILADD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
,p_use_cache_before_default=>'NO'
,p_source=>'EMAILADD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6059168379881992)
,p_name=>'P235_PHONENBR'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
,p_use_cache_before_default=>'NO'
,p_source=>'PHONENBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6059552304881992)
,p_name=>'P235_PORT_FLAG'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Port Flag</strong>'
,p_source=>'PORT_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6059963942881992)
,p_name=>'P235_WHSZONFK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Area>>Location</strong>'
,p_source=>'WHSZONFK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6060316314881992)
,p_name=>'P235_PARTYCDE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
,p_use_cache_before_default=>'NO'
,p_source=>'PARTYCDE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6060787135881992)
,p_name=>'P235_WORKSOPCD'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
,p_use_cache_before_default=>'NO'
,p_source=>'WORKSOPCD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6061175127881992)
,p_name=>'P235_SHORTNAM'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
,p_use_cache_before_default=>'NO'
,p_source=>'SHORTNAM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6063731090881995)
,p_name=>'P235_ACCTCODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
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
 p_id=>wwv_flow_api.id(6064100101881995)
,p_name=>'P235_COSTCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
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
 p_id=>wwv_flow_api.id(6064543628881995)
,p_name=>'P235_TCSTGRUP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(178899692490202195)
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
 p_id=>wwv_flow_api.id(6064985242881995)
,p_name=>'P235_WAREFLAG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Warehouse Flag</strong>'
,p_source=>'WAREFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6065303241881995)
,p_name=>'P235_PRNTCHID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
,p_use_cache_before_default=>'NO'
,p_source=>'PRNTCHID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6065753200881996)
,p_name=>'P235_REGNCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
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
,p_cMaxlength=>6
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
 p_id=>wwv_flow_api.id(6066105819881996)
,p_name=>'P235_CREDLIMT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Credit Limit</strong>'
,p_source=>'CREDLIMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'10'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6066562703881998)
,p_name=>'P235_SRVCWFLG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Service Flag</strong>'
,p_source=>'SRVCWFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6066959400881998)
,p_name=>'P235_SWPRNTCD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode --|| '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''Y''',
'     AND warecode = :P235_WARECODE',
'ORDER BY warecode'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'<strong>Parent Warehouse</strong>'
,p_source=>'SWPRNTCD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode ',
'   AND NVL (srvcwflg, ''N'') = ''N''',
'     AND warecode <> (select warecode from nmwhsmas WHERE compcode = :compcode and ROWID = :P235_ROWID)',
'ORDER BY warecode'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>6
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
 p_id=>wwv_flow_api.id(42974528601606420)
,p_name=>'P235_QC_FLAG'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>QC Flag</strong>'
,p_source=>'QCWHFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46317577771028209)
,p_name=>'P235_MESSEGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(178900426177202196)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140603985032248118)
,p_name=>'P235_WSTGFLAG'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Wstgflag</strong>'
,p_source=>'WSTGFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140604071991248119)
,p_name=>'P235_RECOVERY_FLG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Recovery Flg</strong>'
,p_source=>'RECOVERY_FLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140604109425248120)
,p_name=>'P235_PKGWREFLG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Pkgwreflg</strong>'
,p_source=>'PKGWREFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140604248013248121)
,p_name=>'P235_PRDACTFLG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Prdactflg</strong>'
,p_source=>'PRDACTFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(140604392558248122)
,p_name=>'P235_SEIZEFLG'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(178966346735289646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Seize Flag</strong>'
,p_source=>'SEIZEFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(140604978934248128)
,p_validation_name=>'Address 1'
,p_validation_sequence=>10
,p_validation=>'P235_WAREADD1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please enter Address 1.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4155103091179022)
,p_name=>'delete enable or disable'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P235_RIGHTS_SETUP'
,p_condition_element=>'P235_RIGHTS_SETUP'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4155222551179023)
,p_event_id=>wwv_flow_api.id(4155103091179022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(6061849901881992)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4155312599179024)
,p_event_id=>wwv_flow_api.id(4155103091179022)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(6061849901881992)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46317608022028210)
,p_event_id=>wwv_flow_api.id(4155103091179022)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P235_MESSEGE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'You have no rights to Delete.'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6067317363881998)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMWHSMAS'
,p_attribute_02=>'NMWHSMAS'
,p_attribute_03=>'P235_ROWID'
,p_attribute_04=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6067710480882001)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMWHSMAS'
,p_attribute_02=>'NMWHSMAS'
,p_attribute_03=>'P235_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6068107615882001)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(6061849901881992)
);
wwv_flow_api.component_end;
end;
/
