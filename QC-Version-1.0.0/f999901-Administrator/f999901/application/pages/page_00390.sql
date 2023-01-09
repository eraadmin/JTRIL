prompt --application/pages/page_00390
begin
--   Manifest
--     PAGE: 00390
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
 p_id=>390
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Item Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Item Master'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region h2.t-Region-title {',
'    color: #191919 !important;',
'    /* height: 15px !important; */',
'}',
''))
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_dialog_height=>'600'
,p_dialog_width=>'900'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'RAZU'
,p_last_upd_yyyymmddhh24miss=>'20221114204926'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68592155792667776)
,p_plug_name=>'Form on Item Master'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_api.id(1814253095262337704)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41871362817402536)
,p_plug_name=>'Rate'
,p_parent_plug_id=>wwv_flow_api.id(68592155792667776)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48448637786051209)
,p_plug_name=>'Rate Region 01'
,p_parent_plug_id=>wwv_flow_api.id(41871362817402536)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48448754837051210)
,p_plug_name=>'Rate Region 02'
,p_parent_plug_id=>wwv_flow_api.id(41871362817402536)
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
 p_id=>wwv_flow_api.id(41871479111402537)
,p_plug_name=>'Item '
,p_parent_plug_id=>wwv_flow_api.id(68592155792667776)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48448244594051205)
,p_plug_name=>'Item Region 01'
,p_parent_plug_id=>wwv_flow_api.id(41871479111402537)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48448371387051206)
,p_plug_name=>'Item Region 02'
,p_parent_plug_id=>wwv_flow_api.id(41871479111402537)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41872600869402549)
,p_plug_name=>'Stock'
,p_region_name=>'STOCK'
,p_parent_plug_id=>wwv_flow_api.id(68592155792667776)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48448801635051211)
,p_plug_name=>'Stock Region 01'
,p_parent_plug_id=>wwv_flow_api.id(41872600869402549)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48448953708051212)
,p_plug_name=>'Stock Region 02'
,p_parent_plug_id=>wwv_flow_api.id(41872600869402549)
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
 p_id=>wwv_flow_api.id(47363680292120911)
,p_plug_name=>'Group'
,p_region_name=>'GROUP'
,p_parent_plug_id=>wwv_flow_api.id(68592155792667776)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48449002291051213)
,p_plug_name=>'Group Region 01'
,p_parent_plug_id=>wwv_flow_api.id(47363680292120911)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48449134605051214)
,p_plug_name=>'Group Region 02'
,p_parent_plug_id=>wwv_flow_api.id(47363680292120911)
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
 p_id=>wwv_flow_api.id(47364134407120916)
,p_plug_name=>'Model '
,p_region_name=>'MODEL'
,p_parent_plug_id=>wwv_flow_api.id(68592155792667776)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48449261474051215)
,p_plug_name=>'Model Region 01'
,p_parent_plug_id=>wwv_flow_api.id(47364134407120916)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48449393173051216)
,p_plug_name=>'Model Region 02'
,p_parent_plug_id=>wwv_flow_api.id(47364134407120916)
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
 p_id=>wwv_flow_api.id(47365508674120930)
,p_plug_name=>'Classification'
,p_parent_plug_id=>wwv_flow_api.id(68592155792667776)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87979113618240741)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46111304275838235)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(87979113618240741)
,p_button_name=>'REFRESH'
,p_button_static_id=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_RFRS_LBL.'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:390:&SESSION.::&DEBUG.:RP,390::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'&BTN_RFRS_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47363337657120908)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(47365508674120930)
,p_button_name=>'Stock_Information'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Stock Information'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47365242538120927)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(47365508674120930)
,p_button_name=>'Model_Information'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Model Information'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6665831209222495)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(87979113618240741)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P390_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47364995366120924)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(47365508674120930)
,p_button_name=>'Group_Information'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Group Information'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6666639542222496)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(87979113618240741)
,p_button_name=>'CREATE'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P390_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'&BTN_SBMT_ICON.'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48448506159051208)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_api.id(48448371387051206)
,p_button_name=>'ADD_IMAGE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Add Image'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46110922338838235)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(87979113618240741)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6680645863222515)
,p_branch_action=>'f?p=&APP_ID.:392:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6667440605222498)
,p_name=>'P390_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68592155792667776)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6667826289222500)
,p_name=>'P390_ITEMTYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(48448371387051206)
,p_use_cache_before_default=>'NO'
,p_item_default=>'S'
,p_prompt=>'Item Type'
,p_source=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Stock;S,Non Stock;N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6668225989222501)
,p_name=>'P390_ITEMCLAS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(48448371387051206)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Item Class'
,p_source=>'ITEMCLAS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Normal;N,Batch;B,Enumerative;E'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6668617775222501)
,p_name=>'P390_STATUSCD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(48448371387051206)
,p_use_cache_before_default=>'NO'
,p_item_default=>'ACT'
,p_prompt=>'Status'
,p_source=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Active;ACT,Not Active;NOT'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6669018082222501)
,p_name=>'P390_ITEMCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(48448244594051205)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Code'
,p_source=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_api.id(6669445455222503)
,p_name=>'P390_USERCODE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(48448371387051206)
,p_use_cache_before_default=>'NO'
,p_source=>'USERCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6669860252222503)
,p_name=>'P390_ITEMDES1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(48448244594051205)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'ITEMDES1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6670619423222504)
,p_name=>'P390_SALERATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(48448637786051209)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sale Rate'
,p_source=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6671032569222504)
,p_name=>'P390_HUOMCODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(48448244594051205)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit of Measurement '
,p_source=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT IUOMDESC as D, LUOMCODE as R',
'  FROM NMUOMMAS',
' WHERE COMPCODE = :COMPCODE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6671871497222504)
,p_name=>'P390_LOCALPRT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(48448371387051206)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Local parts'
,p_source=>'LOCALPRT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6672299214222504)
,p_name=>'P390_FXASTFLG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(48449393173051216)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Fixed Asset '
,p_source=>'FXASTFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6672653876222506)
,p_name=>'P390_SALESFLG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(48448637786051209)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'SALESFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6673087431222506)
,p_name=>'P390_PAINTFLG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(48449393173051216)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Paint Flag'
,p_source=>'PAINTFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6673425822222507)
,p_name=>'P390_PROCESS_REQ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(48448637786051209)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_source=>'PROCESS_REQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6673808225222507)
,p_name=>'P390_CREADATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(48448637786051209)
,p_use_cache_before_default=>'NO'
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CREADATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6675409695222507)
,p_name=>'P390_USE_SLSPCT_FLG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(48448637786051209)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Sales Percent in Cost Finalization'
,p_source=>'USE_SLSPCT_FLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>7
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6675816433222509)
,p_name=>'P390_FACTRVAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(48448637786051209)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_source=>'FACTRVAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6676243609222509)
,p_name=>'P390_PACKSETP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(48448637786051209)
,p_use_cache_before_default=>'NO'
,p_item_default=>'3'
,p_source=>'PACKSETP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41870550023402528)
,p_name=>'P390_INMFGREF'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(48448244594051205)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mfg. Ref.'
,p_source=>'INMFGREF'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
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
 p_id=>wwv_flow_api.id(41870612919402529)
,p_name=>'P390_COMMGRUP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(48448244594051205)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Type'
,p_source=>'COMMGRUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES as d, NMSOFCDE as r',
'    FROM NMCODMAS',
'   WHERE     COMPCODE = :COMPCODE',
'         AND MODLCODE = ''NM''',
'         AND NMHRDCDE = ''COM''',
'         --AND NMSOFCDE LIKE ''%''',
'ORDER BY NMSOFCDE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41870773492402530)
,p_name=>'P390_ITEMSIZE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(48449261474051215)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Size'
,p_source=>'ITEMSIZE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES, NMSOFCDE',
'    FROM NMCODMAS',
'   WHERE COMPCODE = :COMPCODE AND MODLCODE = ''NM'' AND NMHRDCDE = ''SIZ''',
'ORDER BY 2'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41870847344402531)
,p_name=>'P390_ITEMMODL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(48448244594051205)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product'
,p_source=>'ITEMMODL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES AS D, NMSOFCDE AS R',
'    FROM NMCODMAS',
'   WHERE COMPCODE = :COMPCODE ',
'     AND MODLCODE = ''NM'' ',
'     AND NMHRDCDE = ''PRO''',
'ORDER BY NMSOFCDE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41870921721402532)
,p_name=>'P390_USE_LOCATION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(48448371387051206)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Check Location?'
,p_source=>'USE_LOCATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41871041817402533)
,p_name=>'P390_LOCATION'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(48448371387051206)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41871162200402534)
,p_name=>'P390_FINISHGD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(48448371387051206)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Finish Goods?'
,p_source=>'FINISHGD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41871270137402535)
,p_name=>'P390_SEMFINGD'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(48448371387051206)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Semi Finish Goods?'
,p_source=>'SEMFINGD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41871653949402539)
,p_name=>'P390_ISSUMTHD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(48448801635051211)
,p_prompt=>'Issue Method'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:FIFO;FF,LIFO;LF,Normal;NN'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41871760934402540)
,p_name=>'P390_COSTTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(48448637786051209)
,p_use_cache_before_default=>'NO'
,p_source=>'COSTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41871816296402541)
,p_name=>'P390_COSTRATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(48448637786051209)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cost Rate'
,p_source=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41871906875402542)
,p_name=>'P390_STNDRATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(48448637786051209)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Standard Rate'
,p_source=>'STNDRATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41872008968402543)
,p_name=>'P390_AVRGRATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(48448637786051209)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Average Rate'
,p_source=>'AVRGRATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41872142496402544)
,p_name=>'P390_SALEPERC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(48448637786051209)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sale (%) '
,p_source=>'SALEPERC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-integer'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41872360575402546)
,p_name=>'P390_CNSMPGRP'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(48448754837051210)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Consumption Group'
,p_source=>'CNSMPGRP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT A.GRUPCODE AS D, A.GRUPCODE AS R',
'    FROM NMACTGRP A, SYCHRTAC S',
'   WHERE     A.COMPCODE = :COMPCODE',
'         AND A.COMPCODE = S.COMPCODE(+)',
'         AND A.ACCTCODE = S.ACCTCODE(+)',
'         AND A.TYPECODE = ''CSP''',
'ORDER BY A.GRUPCODE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_api.id(41872457272402547)
,p_name=>'P390_SALESGRP'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(48448754837051210)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sales Group'
,p_source=>'SALESGRP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT A.GRUPCODE AS D, A.GRUPCODE AS R',
'    FROM NMACTGRP A, SYCHRTAC S',
'   WHERE     A.COMPCODE = :COMPCODE',
'         AND A.COMPCODE = S.COMPCODE(+)',
'         AND A.ACCTCODE = S.ACCTCODE(+)',
'         AND A.TYPECODE = ''SAL''',
'ORDER BY A.GRUPCODE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41872562061402548)
,p_name=>'P390_STOCKGRP'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(48448754837051210)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Stock Group'
,p_source=>'STOCKGRP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT A.GRUPCODE AS D, A.GRUPCODE AS R',
'    FROM NMACTGRP A, SYCHRTAC S',
'   WHERE     A.COMPCODE = :COMPCODE',
'         AND A.COMPCODE = S.COMPCODE(+)',
'         AND A.ACCTCODE = S.ACCTCODE(+)',
'         AND A.TYPECODE = ''STK''',
'ORDER BY A.GRUPCODE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41872724442402550)
,p_name=>'P390_COSTCODE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(48448754837051210)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sale Cost Center'
,p_source=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP(COSTDESC) AS D, COSTCODE AS R',
'FROM SYJOBMAS',
'WHERE NVL(STATSFLG, ''N'') = ''A'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47362653977120901)
,p_name=>'P390_ECOORDER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(48448801635051211)
,p_use_cache_before_default=>'NO'
,p_prompt=>'E.O.Q'
,p_source=>'ECOORDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47362734452120902)
,p_name=>'P390_IREORDER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(48448801635051211)
,p_use_cache_before_default=>'NO'
,p_prompt=>'R.O.L'
,p_source=>'IREORDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47362864412120903)
,p_name=>'P390_MAXLEVEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(48448953708051212)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Max. Stock Level'
,p_source=>'MAXLEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47362961093120904)
,p_name=>'P390_MINLEVEL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(48448953708051212)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Min. Stock LeveL'
,p_source=>'MINLEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47363023566120905)
,p_name=>'P390_RESRDQTY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(48448953708051212)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Safety Stock'
,p_source=>'RESRDQTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47363135036120906)
,p_name=>'P390_LEADTIME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(48448801635051211)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lead Time'
,p_source=>'LEADTIME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47363204961120907)
,p_name=>'P390_COSTMTOD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(48448637786051209)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cost Method'
,p_source=>'COSTMTOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:BATCH;BT,FIFO;FF,LIFO;LF,WEIGHTED AVERAGE;WA'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47363731194120912)
,p_name=>'P390_LEVYGRUP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(48449002291051213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Levy Group'
,p_source=>'LEVYGRUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES, NMSOFCDE',
'    FROM NMCODMAS',
'   WHERE     COMPCODE = :COMPCODE',
'         AND MODLCODE = ''NM''',
'         AND NMHRDCDE = ''LVG''',
'         --AND NMSOFCDE LIKE :CRQ3.LEVYGRUP || ''%''',
'ORDER BY NMSOFCDE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47363812206120913)
,p_name=>'P390_VERFGRUP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(48449134605051214)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Verification Group'
,p_source=>'VERFGRUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NMCODDES ,  NMSOFCDE',
'  FROM NMCODMAS',
' WHERE     COMPCODE = :COMPCODE',
'       AND MODLCODE = ''NM''',
'       AND NMHRDCDE = ''VRG'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47363996595120914)
,p_name=>'P390_VERFFREQ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(48449134605051214)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Verification Frequency'
,p_source=>'VERFFREQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47364006458120915)
,p_name=>'P390_CMSNGRUP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(48449134605051214)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Commision Group'
,p_source=>'CMSNGRUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES, NMSOFCDE',
'    FROM NMCODMAS ',
'   WHERE     COMPCODE = :COMPCODE',
'         AND MODLCODE = ''NM''',
'         AND NMHRDCDE = ''CMG''',
'         --AND NMSOFCDE LIKE :CRQ3.CMSNGRUP || ''%''',
'ORDER BY NMSOFCDE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47364263875120917)
,p_name=>'P390_MODLCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(48449261474051215)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Model Code'
,p_source=>'MODLCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES, NMSOFCDE',
'    FROM NMCODMAS',
'   WHERE COMPCODE = :COMPCODE AND MODLCODE = ''NM'' AND NMHRDCDE = ''MOD''',
'ORDER BY NMSOFCDE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47364339216120918)
,p_name=>'P390_MODLGROP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(48449261474051215)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Model Group'
,p_source=>'MODLGROP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NMCODDES, NMSOFCDE',
'  FROM NMCODMAS',
' WHERE COMPCODE = :COMPCODE AND MODLCODE = ''NM'' AND NMHRDCDE = ''SRG'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47364476450120919)
,p_name=>'P390_SRVCEGRP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(48449261474051215)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Service Group'
,p_source=>'SRVCEGRP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES, NMSOFCDE',
'    FROM NMCODMAS',
'   WHERE COMPCODE = :COMPCODE AND MODLCODE = ''NM'' AND NMHRDCDE = ''JSC''',
'ORDER BY NMSOFCDE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47364528250120920)
,p_name=>'P390_VHCLCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(48449393173051216)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vehicle Code'
,p_source=>'VHCLCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES, NMSOFCDE',
'    FROM NMCODMAS',
'   WHERE COMPCODE = :COMPCODE AND MODLCODE = ''NM'' AND NMHRDCDE = ''VTP''',
'ORDER BY 2'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47364606360120921)
,p_name=>'P390_CATEGORY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(48449393173051216)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category'
,p_source=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES, NMSOFCDE',
'    FROM NMCODMAS',
'   WHERE COMPCODE = :COMPCODE AND MODLCODE = ''NM'' AND NMHRDCDE = ''CTG''',
'ORDER BY 2'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47365883070120933)
,p_name=>'P390_ITDISGRP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(48449002291051213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Discount Group'
,p_source=>'ITDISGRP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT ITDISGRP, DISCPCNT',
'    FROM NMDISCNT',
'   WHERE COMPCODE = :COMPCODE ',
'     --AND ITDISGRP LIKE :CRQ3.ITDISGRP || ''%''',
'ORDER BY ITDISGRP'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47365920016120934)
,p_name=>'P390_TCSTGRUP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(48449002291051213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Markup Group'
,p_source=>'TCSTGRUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT TCSTDESC, TCSTGRUP',
'    FROM NMTCPMAS',
'   WHERE COMPCODE = :COMPCODE ',
'   --AND TCSTGRUP LIKE :CRQ3.TCSTGRUP || ''%''',
'ORDER BY TCSTGRUP'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47366043185120935)
,p_name=>'P390_ITMGRADE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(48449261474051215)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Grade'
,p_source=>'ITMGRADE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES, NMSOFCDE',
'    FROM NMCODMAS',
'   WHERE COMPCODE = :COMPCODE AND MODLCODE = ''NM'' AND NMHRDCDE = ''GRA''',
'ORDER BY 2'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47366145222120936)
,p_name=>'P390_USERDEF1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(48448244594051205)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Size / Nature'
,p_source=>'USERDEF1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
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
 p_id=>wwv_flow_api.id(47366267156120937)
,p_name=>'P390_ABCCLSFN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(47365508674120930)
,p_use_cache_before_default=>'NO'
,p_item_default=>'A'
,p_prompt=>'Consumption'
,p_source=>'ABCCLSFN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:High   ;A,Medium;B,Low;C'
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47366364770120938)
,p_name=>'P390_FSNCLSFN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(47365508674120930)
,p_use_cache_before_default=>'NO'
,p_item_default=>'F'
,p_prompt=>'Movement'
,p_source=>'FSNCLSFN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Fast   ;F,Slow;S,Nil    ;N'
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47366479919120939)
,p_name=>'P390_XYZCLSFN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(47365508674120930)
,p_use_cache_before_default=>'NO'
,p_item_default=>'X'
,p_prompt=>'Additional Class'
,p_source=>'XYZCLSFN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Class X;X,Class Y;Y,Class Z;Z'
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47366514592120940)
,p_name=>'P390_ITEMDES2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(48448244594051205)
,p_use_cache_before_default=>'NO'
,p_source=>'ITEMDES2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47366627489120941)
,p_name=>'P390_LUOMCODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(48448244594051205)
,p_use_cache_before_default=>'NO'
,p_source=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47366706920120942)
,p_name=>'P390_FILE_BLOB'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(48448371387051206)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Location'
,p_source=>'FILE_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'NATIVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47367134961120946)
,p_name=>'P390_COMPCODE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(48448244594051205)
,p_use_cache_before_default=>'NO'
,p_item_default=>'COMPCODE'
,p_item_default_type=>'ITEM'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47367314908120948)
,p_name=>'P390_OPRSTAMP'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(48448371387051206)
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
 p_id=>wwv_flow_api.id(48449932391051222)
,p_name=>'P390_X1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(48449393173051216)
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
 p_id=>wwv_flow_api.id(48450011284051223)
,p_name=>'P390_X2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(48448953708051212)
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
 p_id=>wwv_flow_api.id(48450175093051224)
,p_name=>'P390_CNSMPGRP_ACC'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(48448754837051210)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48450264023051225)
,p_name=>'P390_SALESGRP_ACC'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(48448754837051210)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48450377726051226)
,p_name=>'P390_STOCKGRP_ACC'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(48448754837051210)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48452759530051250)
,p_name=>'P390_X3'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(48448244594051205)
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
 p_id=>wwv_flow_api.id(60615124395846150)
,p_name=>'P390_DEALER_SALE_PERC'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(48448637786051209)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dealer Sale Percentage'
,p_source=>'DEALER_SALE_PERC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>7
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6677837374222509)
,p_name=>'Set Itemdesc2'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P390_ITEMDES1'
,p_condition_element=>'P390_ITEMDES1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6678377010222510)
,p_event_id=>wwv_flow_api.id(6677837374222509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P390_ITEMDES2'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P390_ITEMDES1'
,p_attribute_07=>'P390_ITEMDES1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6678782134222514)
,p_name=>'set LUOMCODE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P390_HUOMCODE'
,p_condition_element=>'P390_HUOMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6679290787222514)
,p_event_id=>wwv_flow_api.id(6678782134222514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P390_LUOMCODE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P390_HUOMCODE'
,p_attribute_07=>'P390_HUOMCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6679618849222514)
,p_name=>'set item code on usercode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P390_ITEMCODE'
,p_condition_element=>'P390_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6680199104222514)
,p_event_id=>wwv_flow_api.id(6679618849222514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P390_USERCODE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P390_ITEMCODE'
,p_attribute_07=>'P390_ITEMCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4987545600600112)
,p_name=>'Cancel Dialog'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(46110922338838235)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4987658628600113)
,p_event_id=>wwv_flow_api.id(4987545600600112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41870370214402526)
,p_name=>'close X button from dialog page'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41870457341402527)
,p_event_id=>wwv_flow_api.id(41870370214402526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var button = parent.$(''.ui-dialog-titlebar-close''); //get the button',
'button.hide(); //hide the button'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47363427390120909)
,p_name=>'Stock Inline Dialog'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(47363337657120908)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47363581597120910)
,p_event_id=>wwv_flow_api.id(47363427390120909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'openModal(''STOCK'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47365325730120928)
,p_name=>'Model Inline Dialog'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(47365242538120927)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47365405416120929)
,p_event_id=>wwv_flow_api.id(47365325730120928)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'openModal(''MODEL'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47365027835120925)
,p_name=>'Group Inline Dialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(47364995366120924)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47365136886120926)
,p_event_id=>wwv_flow_api.id(47365027835120925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'openModal(''GROUP'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48450470849051227)
,p_name=>'CNSMPGRP_ACC'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P390_CNSMPGRP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48450509459051228)
,p_event_id=>wwv_flow_api.id(48450470849051227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P390_CNSMPGRP_ACC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT INITCAP (S.ACCTNAME) || ''-''||S.ACCTCODE ACCTNAME',
'    FROM NMACTGRP A, SYCHRTAC S',
'   WHERE     A.COMPCODE = :COMPCODE',
'         AND A.COMPCODE = S.COMPCODE(+)',
'         AND A.ACCTCODE = S.ACCTCODE(+)',
'         AND A.TYPECODE = ''CSP''',
'         AND a.grupcode = :P390_CNSMPGRP',
'ORDER BY A.GRUPCODE'))
,p_attribute_07=>'P390_CNSMPGRP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48450674466051229)
,p_name=>'SALESGRP_ACC'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P390_SALESGRP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48450718598051230)
,p_event_id=>wwv_flow_api.id(48450674466051229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P390_SALESGRP_ACC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT INITCAP (S.ACCTNAME) || ''-''||S.ACCTCODE ACCTNAME',
'    FROM NMACTGRP A, SYCHRTAC S',
'   WHERE     A.COMPCODE = :COMPCODE',
'         AND A.COMPCODE = S.COMPCODE(+)',
'         AND A.ACCTCODE = S.ACCTCODE(+)',
'         AND A.TYPECODE = ''SAL''',
'         AND A.GRUPCODE = :P390_SALESGRP',
'ORDER BY A.GRUPCODE'))
,p_attribute_07=>'P390_SALESGRP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48450800906051231)
,p_name=>'STOCKGRP_ACC'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P390_STOCKGRP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48450954425051232)
,p_event_id=>wwv_flow_api.id(48450800906051231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P390_STOCKGRP_ACC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT INITCAP (S.ACCTNAME) || ''-''||S.ACCTCODE ACCTNAME',
'    FROM NMACTGRP A, SYCHRTAC S',
'   WHERE     A.COMPCODE = :COMPCODE',
'         AND A.COMPCODE = S.COMPCODE(+)',
'         AND A.ACCTCODE = S.ACCTCODE(+)',
'         AND A.TYPECODE = ''STK''',
'         AND A.GRUPCODE = :P390_STOCKGRP',
'ORDER BY A.GRUPCODE'))
,p_attribute_07=>'P390_STOCKGRP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
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
 p_id=>wwv_flow_api.id(6676622537222509)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMITEMAS'
,p_attribute_02=>'NMITEMAS'
,p_attribute_03=>'P390_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6677092627222509)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMITEMAS'
,p_attribute_02=>'NMITEMAS'
,p_attribute_03=>'P390_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6677497320222509)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47367273705120947)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Page Item Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P390_ITEMCODE IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Item Code Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P390_ITEMCODE'');',
'   END IF;',
'',
'',
'   IF :P390_ITEMDES1 IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Item Description Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P390_ITEMDES1'');',
'   END IF;',
'',
'   IF :P390_COMMGRUP IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Brand Name Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P390_COMMGRUP'');',
'   END IF;',
'',
'',
'   IF :P390_ITEMTYPE IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Item Type Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P390_ITEMTYPE'');',
'   END IF;',
'   ',
'   ',
'   IF :P390_ITEMCLAS IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Item Class Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P390_ITEMCLAS'');',
'   END IF;',
'   ',
'   ',
'   IF :P390_STATUSCD IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Status Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P390_STATUSCD'');',
'   END IF;',
'   ',
'   ',
'   IF :P390_HUOMCODE IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Unit of Measurement Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P390_HUOMCODE'');',
'   END IF;',
'   ',
'   ',
'   IF :P390_SALERATE < 0',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Sale Rate Should be a Positive Value. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P390_SALERATE'');  ',
'   END IF;',
'   ',
'   ',
'   IF :P390_COSTRATE < 0',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Cost Rate Should be a Positive Value. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P390_COSTRATE'');  ',
'   END IF;',
'   ',
'   ',
'   IF TO_NUMBER(:P390_SALERATE) < TO_NUMBER(:P390_COSTRATE)',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Sale Rate Should be Grater Than Cost Rate. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P390_SALERATE'');  ',
'   END IF;',
'   ',
'   ',
'   IF :P390_IREORDER < :P390_RESRDQTY',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''R.O.L Must be Grater Than Safety Stock. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P390_IREORDER'');   ',
'   END IF; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
