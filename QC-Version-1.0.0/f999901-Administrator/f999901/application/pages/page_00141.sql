prompt --application/pages/page_00141
begin
--   Manifest
--     PAGE: 00141
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
 p_id=>141
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Item Master'
,p_alias=>'ITEM-MASTER'
,p_page_mode=>'MODAL'
,p_step_title=>'Item Master'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_IMAGES#allow-decimal.js'
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
,p_protection_level=>'C'
,p_last_updated_by=>'ADITI'
,p_last_upd_yyyymmddhh24miss=>'20221226181540'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(528530431957859564)
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
 p_id=>wwv_flow_api.id(501809638982594324)
,p_plug_name=>'Rate'
,p_parent_plug_id=>wwv_flow_api.id(528530431957859564)
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
 p_id=>wwv_flow_api.id(508386913951242997)
,p_plug_name=>'Rate Region 01'
,p_parent_plug_id=>wwv_flow_api.id(501809638982594324)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(508387031002242998)
,p_plug_name=>'Rate Region 02'
,p_parent_plug_id=>wwv_flow_api.id(501809638982594324)
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
 p_id=>wwv_flow_api.id(501809755276594325)
,p_plug_name=>'Item '
,p_parent_plug_id=>wwv_flow_api.id(528530431957859564)
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
 p_id=>wwv_flow_api.id(508386520759242993)
,p_plug_name=>'Item Region 01'
,p_parent_plug_id=>wwv_flow_api.id(501809755276594325)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(508386647552242994)
,p_plug_name=>'Item Region 02'
,p_parent_plug_id=>wwv_flow_api.id(501809755276594325)
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
 p_id=>wwv_flow_api.id(501810877034594337)
,p_plug_name=>'Stock'
,p_region_name=>'STOCK'
,p_parent_plug_id=>wwv_flow_api.id(528530431957859564)
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
 p_id=>wwv_flow_api.id(508387077800242999)
,p_plug_name=>'Stock Region 01'
,p_parent_plug_id=>wwv_flow_api.id(501810877034594337)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(508387229873243000)
,p_plug_name=>'Stock Region 02'
,p_parent_plug_id=>wwv_flow_api.id(501810877034594337)
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
 p_id=>wwv_flow_api.id(507301956457312699)
,p_plug_name=>'Group'
,p_region_name=>'GROUP'
,p_parent_plug_id=>wwv_flow_api.id(528530431957859564)
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
 p_id=>wwv_flow_api.id(508387278456243001)
,p_plug_name=>'Group Region 01'
,p_parent_plug_id=>wwv_flow_api.id(507301956457312699)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(508387410770243002)
,p_plug_name=>'Group Region 02'
,p_parent_plug_id=>wwv_flow_api.id(507301956457312699)
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
 p_id=>wwv_flow_api.id(507302410572312704)
,p_plug_name=>'Model '
,p_region_name=>'MODEL'
,p_parent_plug_id=>wwv_flow_api.id(528530431957859564)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(508387537639243003)
,p_plug_name=>'Model Region 01'
,p_parent_plug_id=>wwv_flow_api.id(507302410572312704)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(508387669338243004)
,p_plug_name=>'Model Region 02'
,p_parent_plug_id=>wwv_flow_api.id(507302410572312704)
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
 p_id=>wwv_flow_api.id(507303784839312718)
,p_plug_name=>'Classification'
,p_parent_plug_id=>wwv_flow_api.id(528530431957859564)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(547917389783432529)
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
 p_id=>wwv_flow_api.id(142933368097487855)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(507303784839312718)
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
 p_id=>wwv_flow_api.id(142936014940487856)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(547917389783432529)
,p_button_name=>'REFRESH'
,p_button_static_id=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_RFRS_LBL.'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.:RP,390::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'&BTN_RFRS_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(142933773060487855)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(507303784839312718)
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
 p_id=>wwv_flow_api.id(142934174324487855)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(507303784839312718)
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
 p_id=>wwv_flow_api.id(142936457200487856)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(547917389783432529)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P141_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(142936838352487857)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(547917389783432529)
,p_button_name=>'CREATE'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P141_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'&BTN_SBMT_ICON.'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(142916069082487843)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_api.id(508386647552242994)
,p_button_name=>'ADD_IMAGE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Add Image'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(142937240559487857)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(547917389783432529)
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
 p_id=>wwv_flow_api.id(142949274416487869)
,p_branch_name=>'Go To Page 392'
,p_branch_action=>'f?p=&APP_ID.:392:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(142936457200487856)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142901048307487832)
,p_name=>'P141_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(528530431957859564)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142902087866487833)
,p_name=>'P141_SALERATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(508386913951242997)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sale Rate'
,p_source=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'allow-decimal'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142902490817487833)
,p_name=>'P141_SALEPERC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(508386913951242997)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sale (%) '
,p_source=>'SALEPERC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142902897425487833)
,p_name=>'P141_COSTTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(508386913951242997)
,p_use_cache_before_default=>'NO'
,p_source=>'COSTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142903220844487833)
,p_name=>'P141_COSTMTOD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(508386913951242997)
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
 p_id=>wwv_flow_api.id(142903615150487834)
,p_name=>'P141_COSTRATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(508386913951242997)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cost Rate'
,p_source=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142904011708487834)
,p_name=>'P141_STNDRATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(508386913951242997)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Standard Rate'
,p_source=>'STNDRATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142904491725487834)
,p_name=>'P141_AVRGRATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(508386913951242997)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Average Rate'
,p_source=>'AVRGRATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142904879901487834)
,p_name=>'P141_USE_SLSPCT_FLG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(508386913951242997)
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
 p_id=>wwv_flow_api.id(142905270923487834)
,p_name=>'P141_SALESFLG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(508386913951242997)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'SALESFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142905616804487835)
,p_name=>'P141_PROCESS_REQ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(508386913951242997)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_source=>'PROCESS_REQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142906010278487835)
,p_name=>'P141_CREADATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(508386913951242997)
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
 p_id=>wwv_flow_api.id(142906448643487835)
,p_name=>'P141_FACTRVAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(508386913951242997)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_source=>'FACTRVAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142906801874487835)
,p_name=>'P141_PACKSETP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(508386913951242997)
,p_use_cache_before_default=>'NO'
,p_item_default=>'3'
,p_source=>'PACKSETP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142907211881487836)
,p_name=>'P141_DEALER_SALE_PERC'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(508386913951242997)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dealer Sale Percentage'
,p_source=>'DEALER_SALE_PERC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_grid_label_column_span=>7
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142907936495487837)
,p_name=>'P141_CNSMPGRP'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(508387031002242998)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142908384694487837)
,p_name=>'P141_CNSMPGRP_ACC'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(508387031002242998)
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
 p_id=>wwv_flow_api.id(142908797568487838)
,p_name=>'P141_SALESGRP'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(508387031002242998)
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
 p_id=>wwv_flow_api.id(142909114370487838)
,p_name=>'P141_SALESGRP_ACC'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(508387031002242998)
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
 p_id=>wwv_flow_api.id(142909526906487838)
,p_name=>'P141_STOCKGRP'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(508387031002242998)
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
 p_id=>wwv_flow_api.id(142909965354487839)
,p_name=>'P141_STOCKGRP_ACC'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(508387031002242998)
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
 p_id=>wwv_flow_api.id(142910354182487839)
,p_name=>'P141_COSTCODE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(508387031002242998)
,p_use_cache_before_default=>'NO'
,p_item_default=>'10226'
,p_prompt=>'Sale Cost Center'
,p_source=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COSTCODE||'' - ''||INITCAP(COSTDESC) AS D, COSTCODE AS R',
'FROM SYJOBMAS',
'WHERE COMPCODE = :COMPCODE',
'AND NVL(STATSFLG, ''N'') = ''A''',
'AND COSTCODE = ''10226''      --- value fixed; requirement by Hasan@RML',
'ORDER BY COSTCODE'))
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_api.id(142911306356487840)
,p_name=>'P141_ITEMCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(508386520759242993)
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
 p_id=>wwv_flow_api.id(142911749647487840)
,p_name=>'P141_ITEMDES1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(508386520759242993)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Name'
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
 p_id=>wwv_flow_api.id(142912185722487840)
,p_name=>'P141_INMFGREF'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(508386520759242993)
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
 p_id=>wwv_flow_api.id(142912559342487840)
,p_name=>'P141_COMMGRUP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(508386520759242993)
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
 p_id=>wwv_flow_api.id(142912979771487841)
,p_name=>'P141_ITEMMODL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(508386520759242993)
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
 p_id=>wwv_flow_api.id(142913322336487841)
,p_name=>'P141_USERDEF1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(508386520759242993)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Size / Pattern'
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
 p_id=>wwv_flow_api.id(142913797132487841)
,p_name=>'P141_HUOMCODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(508386520759242993)
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
 p_id=>wwv_flow_api.id(142914116939487841)
,p_name=>'P141_ITEMDES2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(508386520759242993)
,p_use_cache_before_default=>'NO'
,p_source=>'ITEMDES2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142914511146487841)
,p_name=>'P141_LUOMCODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(508386520759242993)
,p_use_cache_before_default=>'NO'
,p_source=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142914969376487841)
,p_name=>'P141_COMPCODE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(508386520759242993)
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
 p_id=>wwv_flow_api.id(142915383951487842)
,p_name=>'P141_X3'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(508386520759242993)
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
 p_id=>wwv_flow_api.id(142916444537487844)
,p_name=>'P141_ITEMTYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(508386647552242994)
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
 p_id=>wwv_flow_api.id(142916810612487844)
,p_name=>'P141_ITEMCLAS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(508386647552242994)
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
 p_id=>wwv_flow_api.id(142917241926487844)
,p_name=>'P141_STATUSCD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(508386647552242994)
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
 p_id=>wwv_flow_api.id(142917633714487844)
,p_name=>'P141_LOCALPRT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(508386647552242994)
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
 p_id=>wwv_flow_api.id(142918092569487844)
,p_name=>'P141_USE_LOCATION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(508386647552242994)
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
 p_id=>wwv_flow_api.id(142918463896487845)
,p_name=>'P141_FINISHGD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(508386647552242994)
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
 p_id=>wwv_flow_api.id(142918827131487845)
,p_name=>'P141_SEMFINGD'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(508386647552242994)
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
 p_id=>wwv_flow_api.id(142919287969487845)
,p_name=>'P141_NEW'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(508386647552242994)
,p_prompt=>'Image Location'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'NATIVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142919600605487845)
,p_name=>'P141_USERCODE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(508386647552242994)
,p_use_cache_before_default=>'NO'
,p_source=>'USERCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142920077063487845)
,p_name=>'P141_LOCATION'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(508386647552242994)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142920486107487845)
,p_name=>'P141_OPRSTAMP'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(508386647552242994)
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
 p_id=>wwv_flow_api.id(142921401310487846)
,p_name=>'P141_ECOORDER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(508387077800242999)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Economic Order Quantity'
,p_source=>'ECOORDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142921856240487847)
,p_name=>'P141_IREORDER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(508387077800242999)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reorder Level'
,p_source=>'IREORDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142922267525487847)
,p_name=>'P141_LEADTIME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(508387077800242999)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lead Time'
,p_source=>'LEADTIME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142922677910487847)
,p_name=>'P141_ISSUMTHD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(508387077800242999)
,p_prompt=>'Issue Method'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:FIFO;FF,LIFO;LF,Normal;NN'
,p_cHeight=>1
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142923376112487848)
,p_name=>'P141_MAXLEVEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(508387229873243000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Max. Stock Level'
,p_source=>'MAXLEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142923791368487849)
,p_name=>'P141_MINLEVEL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(508387229873243000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Min. Stock LeveL'
,p_source=>'MINLEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142924191972487849)
,p_name=>'P141_RESRDQTY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(508387229873243000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Safety Stock'
,p_source=>'RESRDQTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142924548769487850)
,p_name=>'P141_X2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(508387229873243000)
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
 p_id=>wwv_flow_api.id(142925563449487851)
,p_name=>'P141_ITDISGRP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(508387278456243001)
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
 p_id=>wwv_flow_api.id(142925938695487851)
,p_name=>'P141_TCSTGRUP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(508387278456243001)
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
 p_id=>wwv_flow_api.id(142926360723487851)
,p_name=>'P141_LEVYGRUP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(508387278456243001)
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
 p_id=>wwv_flow_api.id(142926990825487852)
,p_name=>'P141_CMSNGRUP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(508387410770243002)
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
 p_id=>wwv_flow_api.id(142927316024487852)
,p_name=>'P141_VERFGRUP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(508387410770243002)
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
 p_id=>wwv_flow_api.id(142927771229487852)
,p_name=>'P141_VERFFREQ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(508387410770243002)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Verification Frequency'
,p_source=>'VERFFREQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-decimal'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142928752467487853)
,p_name=>'P141_MODLCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(508387537639243003)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Model Code'
,p_source=>'MODLCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES, NMSOFCDE',
'    FROM NMCODMAS',
'   WHERE COMPCODE = :COMPCODE ',
'     AND MODLCODE = ''NM'' ',
'     AND NMHRDCDE = ''MOD''',
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
 p_id=>wwv_flow_api.id(142929190889487853)
,p_name=>'P141_MODLGROP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(508387537639243003)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Model Group'
,p_source=>'MODLGROP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NMCODDES, NMSOFCDE',
'  FROM NMCODMAS',
' WHERE COMPCODE = :COMPCODE ',
'   AND MODLCODE = ''NM'' ',
'   AND NMHRDCDE = ''SRG'''))
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
 p_id=>wwv_flow_api.id(142929557243487853)
,p_name=>'P141_ITEMSIZE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(508387537639243003)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Size'
,p_source=>'ITEMSIZE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES, NMSOFCDE',
'    FROM NMCODMAS',
'   WHERE COMPCODE = :COMPCODE ',
'     AND MODLCODE = ''NM'' ',
'     AND NMHRDCDE = ''SIZ''',
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
 p_id=>wwv_flow_api.id(142929902326487853)
,p_name=>'P141_ITMGRADE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(508387537639243003)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Grade'
,p_source=>'ITMGRADE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES, NMSOFCDE',
'    FROM NMCODMAS',
'   WHERE COMPCODE = :COMPCODE ',
'     AND MODLCODE = ''NM'' ',
'     AND NMHRDCDE = ''GRA''',
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
 p_id=>wwv_flow_api.id(142930352964487853)
,p_name=>'P141_SRVCEGRP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(508387537639243003)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Service Group'
,p_source=>'SRVCEGRP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES, NMSOFCDE',
'    FROM NMCODMAS',
'   WHERE COMPCODE = :COMPCODE ',
'     AND MODLCODE = ''NM'' ',
'     AND NMHRDCDE = ''JSC''',
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
 p_id=>wwv_flow_api.id(142931083124487854)
,p_name=>'P141_VHCLCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(508387669338243004)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vehicle Code'
,p_source=>'VHCLCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES, NMSOFCDE',
'    FROM NMCODMAS',
'   WHERE COMPCODE = :COMPCODE ',
'     AND MODLCODE = ''NM'' ',
'     AND NMHRDCDE = ''VTP''',
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
 p_id=>wwv_flow_api.id(142931433004487854)
,p_name=>'P141_CATEGORY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(508387669338243004)
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
 p_id=>wwv_flow_api.id(142931887654487854)
,p_name=>'P141_FXASTFLG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(508387669338243004)
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
 p_id=>wwv_flow_api.id(142932248934487854)
,p_name=>'P141_PAINTFLG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(508387669338243004)
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
 p_id=>wwv_flow_api.id(142932614431487855)
,p_name=>'P141_X1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(508387669338243004)
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
 p_id=>wwv_flow_api.id(142934567696487856)
,p_name=>'P141_ABCCLSFN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(507303784839312718)
,p_use_cache_before_default=>'NO'
,p_item_default=>'A'
,p_prompt=>'Consumption'
,p_source=>'ABCCLSFN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:High   ;A,Medium;B,Low;C'
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142934903672487856)
,p_name=>'P141_FSNCLSFN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(507303784839312718)
,p_use_cache_before_default=>'NO'
,p_item_default=>'F'
,p_prompt=>'Movement'
,p_source=>'FSNCLSFN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Fast   ;F,Slow;S,Nil    ;N'
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(142935324266487856)
,p_name=>'P141_XYZCLSFN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(507303784839312718)
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(142939289238487860)
,p_name=>'Set Itemdesc2'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P141_ITEMDES1'
,p_condition_element=>'P141_ITEMDES1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(142939749619487860)
,p_event_id=>wwv_flow_api.id(142939289238487860)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P141_ITEMDES2'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P141_ITEMDES1'
,p_attribute_07=>'P141_ITEMDES1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(142940191607487861)
,p_name=>'set LUOMCODE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P141_HUOMCODE'
,p_condition_element=>'P141_HUOMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(142940647633487861)
,p_event_id=>wwv_flow_api.id(142940191607487861)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P141_LUOMCODE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P141_HUOMCODE'
,p_attribute_07=>'P141_HUOMCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(142941045397487861)
,p_name=>'set item code on usercode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P141_ITEMCODE'
,p_condition_element=>'P141_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(142941599603487861)
,p_event_id=>wwv_flow_api.id(142941045397487861)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P141_USERCODE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P141_ITEMCODE'
,p_attribute_07=>'P141_ITEMCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(142941993323487861)
,p_name=>'Cancel Dialog'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(142937240559487857)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(142942419316487861)
,p_event_id=>wwv_flow_api.id(142941993323487861)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(142942836183487862)
,p_name=>'close X button from dialog page'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(142943340549487863)
,p_event_id=>wwv_flow_api.id(142942836183487862)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var button = parent.$(''.ui-dialog-titlebar-close''); //get the button',
'button.hide(); //hide the button'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(142943789172487863)
,p_name=>'Stock Inline Dialog'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(142933368097487855)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(142944277345487863)
,p_event_id=>wwv_flow_api.id(142943789172487863)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'openModal(''STOCK'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(142944635346487863)
,p_name=>'Model Inline Dialog'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(142933773060487855)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(142945131345487863)
,p_event_id=>wwv_flow_api.id(142944635346487863)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'openModal(''MODEL'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(142945545282487863)
,p_name=>'Group Inline Dialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(142934174324487855)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(142946028300487864)
,p_event_id=>wwv_flow_api.id(142945545282487863)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'openModal(''GROUP'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(142946419455487864)
,p_name=>'CNSMPGRP_ACC'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P141_CNSMPGRP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(142946923813487864)
,p_event_id=>wwv_flow_api.id(142946419455487864)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P141_CNSMPGRP_ACC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT INITCAP (S.ACCTNAME) || ''-''||S.ACCTCODE ACCTNAME',
'    FROM NMACTGRP A, SYCHRTAC S',
'   WHERE     A.COMPCODE = :COMPCODE',
'         AND A.COMPCODE = S.COMPCODE(+)',
'         AND A.ACCTCODE = S.ACCTCODE(+)',
'         AND A.TYPECODE = ''CSP''',
'         AND a.grupcode = :P141_CNSMPGRP',
'ORDER BY A.GRUPCODE'))
,p_attribute_07=>'P141_CNSMPGRP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(142947395931487868)
,p_name=>'SALESGRP_ACC'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P141_SALESGRP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(142947843118487868)
,p_event_id=>wwv_flow_api.id(142947395931487868)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P141_SALESGRP_ACC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT INITCAP (S.ACCTNAME) || ''-''||S.ACCTCODE ACCTNAME',
'    FROM NMACTGRP A, SYCHRTAC S',
'   WHERE     A.COMPCODE = :COMPCODE',
'         AND A.COMPCODE = S.COMPCODE(+)',
'         AND A.ACCTCODE = S.ACCTCODE(+)',
'         AND A.TYPECODE = ''SAL''',
'         AND A.GRUPCODE = :P141_SALESGRP',
'ORDER BY A.GRUPCODE'))
,p_attribute_07=>'P141_SALESGRP'
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(142948284208487868)
,p_name=>'STOCKGRP_ACC'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P141_STOCKGRP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(142948738439487869)
,p_event_id=>wwv_flow_api.id(142948284208487868)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P141_STOCKGRP_ACC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT INITCAP (S.ACCTNAME) || ''-''||S.ACCTCODE ACCTNAME',
'    FROM NMACTGRP A, SYCHRTAC S',
'   WHERE     A.COMPCODE = :COMPCODE',
'         AND A.COMPCODE = S.COMPCODE(+)',
'         AND A.ACCTCODE = S.ACCTCODE(+)',
'         AND A.TYPECODE = ''STK''',
'         AND A.GRUPCODE = :P141_STOCKGRP',
'ORDER BY A.GRUPCODE'))
,p_attribute_07=>'P141_STOCKGRP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(142937642667487857)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMITEMAS'
,p_attribute_02=>'NMITEMAS'
,p_attribute_03=>'P141_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(142938022314487858)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMITEMAS'
,p_attribute_02=>'NMITEMAS'
,p_attribute_03=>'P141_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(142938491082487858)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(142938872966487859)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Page Item Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P141_ITEMCODE IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Item Code Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P141_ITEMCODE'');',
'   END IF;',
'',
'',
'   IF :P141_ITEMDES1 IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Item Description Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P141_ITEMDES1'');',
'   END IF;',
'',
'   IF :P141_COMMGRUP IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Brand Name Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P141_COMMGRUP'');',
'   END IF;',
'',
'',
'   IF :P141_ITEMTYPE IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Item Type Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P141_ITEMTYPE'');',
'   END IF;',
'   ',
'   ',
'   IF :P141_ITEMCLAS IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Item Class Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P141_ITEMCLAS'');',
'   END IF;',
'   ',
'   ',
'   IF :P141_STATUSCD IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Status Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P141_STATUSCD'');',
'   END IF;',
'   ',
'   ',
'   IF :P141_HUOMCODE IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Unit of Measurement Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P141_HUOMCODE'');',
'   END IF;',
'   ',
'   ',
'   IF :P141_SALERATE < 0',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Sale Rate Should be a Positive Value. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P141_SALERATE'');  ',
'   END IF;',
'   ',
'   ',
'   IF :P141_COSTRATE < 0',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Cost Rate Should be a Positive Value. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P141_COSTRATE'');  ',
'   END IF;',
'   ',
'   ',
'   IF TO_NUMBER(:P141_SALERATE) < TO_NUMBER(:P141_COSTRATE)',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Sale Rate Should be Grater Than Cost Rate. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P141_SALERATE'');  ',
'   END IF;',
'   ',
'   ',
'   IF :P141_IREORDER < :P141_RESRDQTY',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''R.O.L Must be Grater Than Safety Stock. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P141_IREORDER'');   ',
'   END IF; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
