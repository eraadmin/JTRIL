prompt --application/pages/page_00224
begin
--   Manifest
--     PAGE: 00224
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
 p_id=>224
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Company Parameters'
,p_page_mode=>'MODAL'
,p_step_title=>'Company Parameters'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171112101028'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65843309603133701)
,p_plug_name=>'Left region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>2
,p_plug_display_column=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65843391769133702)
,p_plug_name=>'Right region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_column=>11
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(134313854884997461)
,p_plug_name=>'Company Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65843495413133703)
,p_plug_name=>'Parameters Check'
,p_parent_plug_id=>wwv_flow_api.id(134313854884997461)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65843592973133704)
,p_plug_name=>'Parameters'
,p_parent_plug_id=>wwv_flow_api.id(134313854884997461)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65843776748133706)
,p_plug_name=>'Item Movement'
,p_parent_plug_id=>wwv_flow_api.id(134313854884997461)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<strong>Item Movement</strong>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65843948026133707)
,p_plug_name=>'Mecellanious'
,p_parent_plug_id=>wwv_flow_api.id(134313854884997461)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<strong>Mecellanious</strong>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65843976436133708)
,p_plug_name=>'Item Consumption'
,p_parent_plug_id=>wwv_flow_api.id(134313854884997461)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<strong>Item Consumption</strong>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(134314563814997462)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(134314385495997462)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(134314563814997462)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P224_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(134314934859997462)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(134314563814997462)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:225:&SESSION.::&DEBUG.:224::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(134314338765997462)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(134314563814997462)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P224_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(134314206371997462)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(134314563814997462)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P224_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134317279262997464)
,p_name=>'P224_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134317719404997466)
,p_name=>'P224_COMPCODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Company Code</strong>'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134318134192997467)
,p_name=>'P224_WAREFLAG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(65843592973133704)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Wareflag</strong>'
,p_source=>'WAREFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Single Warehouse;Y,Multiple Warehouse;N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134318535549997467)
,p_name=>'P224_TCSTFLAG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(65843592973133704)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Cost Above %</strong>'
,p_source=>'TCSTFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Warehouse Level;W,Item Level;I'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134318883980997467)
,p_name=>'P224_LKLPORCT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(65843495413133703)
,p_use_cache_before_default=>'NO'
,p_source=>'LKLPORCT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX'
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>8
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'Lpo-Receipt Rate Modification'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134319360807997467)
,p_name=>'P224_LKRCTINV'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(65843495413133703)
,p_use_cache_before_default=>'NO'
,p_source=>'LKRCTINV'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'Receipt Invoice Rate Modification'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134319761307997467)
,p_name=>'P224_ITMDUPFL'
,p_item_sequence=>103
,p_item_plug_id=>wwv_flow_api.id(65843592973133704)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Duplicate Item Check</strong>'
,p_source=>'ITMDUPFL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Stock Item;S,All Item;A'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134320123072997469)
,p_name=>'P224_COMMFLAG'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'COMMFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134320478681997469)
,p_name=>'P224_AUTOPOST'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(65843495413133703)
,p_use_cache_before_default=>'NO'
,p_source=>'AUTOPOST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'Online AP Posting'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134320873985997469)
,p_name=>'P224_RAISEFLG'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'RAISEFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134321282482997469)
,p_name=>'P224_COSACFLG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(65843592973133704)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>AP Post Material</strong>'
,p_source=>'COSACFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Stock Level;S,Item Level;I'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134321736188997469)
,p_name=>'P224_ARCOSFLG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(65843592973133704)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>AR Post Turn Over</strong>'
,p_source=>'ARCOSFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Item Level Costcode;I,User Entered Costcode;E'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134322144647997469)
,p_name=>'P224_COMTRFLG'
,p_item_sequence=>97
,p_item_plug_id=>wwv_flow_api.id(65843495413133703)
,p_use_cache_before_default=>'NO'
,p_source=>'COMTRFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'Inter Company Material Transfer'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134322503641997469)
,p_name=>'P224_COMMCODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134322869168997469)
,p_name=>'P224_PAYCOSCD'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'PAYCOSCD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134323349289997469)
,p_name=>'P224_APRAMEND'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'APRAMEND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134323741179997469)
,p_name=>'P224_MRECEIPT'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_api.id(65843495413133703)
,p_use_cache_before_default=>'NO'
,p_source=>'MRECEIPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'Manufacturing Receipt Allowed'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134324145097997470)
,p_name=>'P224_GLCOCEFL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'GLCOCEFL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134324523265997470)
,p_name=>'P224_FASTPCNT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(65843776748133706)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fast'
,p_source=>'FASTPCNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134324931990997470)
,p_name=>'P224_SLOWPCNT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(65843776748133706)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Slow'
,p_source=>'SLOWPCNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134325339094997470)
,p_name=>'P224_ACLASVAL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(65843976436133708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'A-Class'
,p_source=>'ACLASVAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134325685518997472)
,p_name=>'P224_BCLASVAL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(65843976436133708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'B-Class'
,p_source=>'BCLASVAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134326088463997472)
,p_name=>'P224_CCLASVAL'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(65843976436133708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'C-Class'
,p_source=>'CCLASVAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134326558619997472)
,p_name=>'P224_RATEVARN'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'RATEVARN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134326869779997472)
,p_name=>'P224_NONMPCNT'
,p_item_sequence=>205
,p_item_plug_id=>wwv_flow_api.id(65843776748133706)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nill'
,p_source=>'NONMPCNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134327340799997472)
,p_name=>'P224_JSGRPFLG'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'JSGRPFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134327686086997473)
,p_name=>'P224_BOQREFFL'
,p_item_sequence=>93
,p_item_plug_id=>wwv_flow_api.id(65843495413133703)
,p_use_cache_before_default=>'NO'
,p_source=>'BOQREFFL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'Boq Reference'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134328116950997473)
,p_name=>'P224_STATCODE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'STATCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134328547196997473)
,p_name=>'P224_ITMCDLEN'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'ITMCDLEN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134328950242997473)
,p_name=>'P224_ITPICDIR'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(65843948026133707)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Pic Directory'
,p_source=>'ITPICDIR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134329346732997473)
,p_name=>'P224_OPRSTAMP'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
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
 p_id=>wwv_flow_api.id(134329679714997473)
,p_name=>'P224_TIMSTAMP'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
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
 p_id=>wwv_flow_api.id(134330071662997473)
,p_name=>'P224_OPSTKDAT'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(65843948026133707)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Opening Stock Date'
,p_source=>'OPSTKDAT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134330532775997473)
,p_name=>'P224_CASHPRTY'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'CASHPRTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134330926370997473)
,p_name=>'P224_TRATTDIR'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'TRATTDIR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134331283071997473)
,p_name=>'P224_PRVTRCNT'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'PRVTRCNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134331679526997473)
,p_name=>'P224_STUCTITM'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'STUCTITM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134332165258997473)
,p_name=>'P224_STKTRNFLG'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'STKTRNFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134332529394997475)
,p_name=>'P224_COMPGVAT'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'COMPGVAT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134332876678997475)
,p_name=>'P224_VATRGTNO'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'VATRGTNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134333322279997475)
,p_name=>'P224_MUSOKNO'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'MUSOKNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134333729836997475)
,p_name=>'P224_HEADSIZE'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'HEADSIZE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134334089963997475)
,p_name=>'P224_FONTNAME'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'FONTNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134334549155997475)
,p_name=>'P224_ADDRSIZE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'ADDRSIZE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134334905380997475)
,p_name=>'P224_ALGNMENT'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'ALGNMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134335307346997475)
,p_name=>'P224_BDYFSIZE'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'BDYFSIZE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134335737494997475)
,p_name=>'P224_BDYFNAME'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'BDYFNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134336093715997475)
,p_name=>'P224_SHOWHEAD'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'SHOWHEAD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134336515701997475)
,p_name=>'P224_SHOWFOTR'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'SHOWFOTR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134336952679997475)
,p_name=>'P224_AMTROUND'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'AMTROUND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134337319081997475)
,p_name=>'P224_DATEFORMT'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'DATEFORMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134337683747997475)
,p_name=>'P224_SRVCRMND'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'SRVCRMND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134338076871997477)
,p_name=>'P224_CHKLEVEL'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'CHKLEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134338549748997477)
,p_name=>'P224_PROBUDCHK'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'PROBUDCHK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134338895801997478)
,p_name=>'P224_ISWHSBGT'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'ISWHSBGT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134339329011997478)
,p_name=>'P224_SMSSPRTR'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'SMSSPRTR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(134339703224997478)
,p_name=>'P224_FIREMARK'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'FIREMARK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134340097456997478)
,p_name=>'P224_MODIFYDT'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134340496489997478)
,p_name=>'P224_DISGRADE'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'DISGRADE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134340900264997478)
,p_name=>'P224_USEWARCD'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'USEWARCD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134341338524997478)
,p_name=>'P224_USEPRTYP'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'USEPRTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134341684574997478)
,p_name=>'P224_SALESVAT'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'SALESVAT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134342071795997478)
,p_name=>'P224_USE_SUBZONE'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(134313854884997461)
,p_use_cache_before_default=>'NO'
,p_source=>'USE_SUBZONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(134314977654997462)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(134314934859997462)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(134315786678997464)
,p_event_id=>wwv_flow_api.id(134314977654997462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(134361462907997491)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMCOMPAR'
,p_attribute_02=>'NMCOMPAR'
,p_attribute_03=>'P224_ROWID'
,p_attribute_04=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(134361844516997494)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMCOMPAR'
,p_attribute_02=>'NMCOMPAR'
,p_attribute_03=>'P224_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(134362239832997494)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(134314385495997462)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(134362665122997494)
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
