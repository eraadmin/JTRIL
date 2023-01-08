prompt --application/pages/page_00123
begin
--   Manifest
--     PAGE: 00123
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
 p_id=>123
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Modify Item Master New (prev 390,392))'
,p_alias=>'MODIFY-ITEM-MASTER-NEW'
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
,p_last_updated_by=>'ADITI'
,p_last_upd_yyyymmddhh24miss=>'20221226181654'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(160266283903310339)
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
 p_id=>wwv_flow_api.id(133545490928045099)
,p_plug_name=>'Rate'
,p_parent_plug_id=>wwv_flow_api.id(160266283903310339)
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
 p_id=>wwv_flow_api.id(140122765896693772)
,p_plug_name=>'Rate Region 01'
,p_parent_plug_id=>wwv_flow_api.id(133545490928045099)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(140122882947693773)
,p_plug_name=>'Rate Region 02'
,p_parent_plug_id=>wwv_flow_api.id(133545490928045099)
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
 p_id=>wwv_flow_api.id(133545607222045100)
,p_plug_name=>'Item '
,p_parent_plug_id=>wwv_flow_api.id(160266283903310339)
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
 p_id=>wwv_flow_api.id(140122372704693768)
,p_plug_name=>'Item Region 01'
,p_parent_plug_id=>wwv_flow_api.id(133545607222045100)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(140122499497693769)
,p_plug_name=>'Item Region 02'
,p_parent_plug_id=>wwv_flow_api.id(133545607222045100)
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
 p_id=>wwv_flow_api.id(133546728980045112)
,p_plug_name=>'Stock'
,p_region_name=>'STOCK'
,p_parent_plug_id=>wwv_flow_api.id(160266283903310339)
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
 p_id=>wwv_flow_api.id(140122929745693774)
,p_plug_name=>'Stock Region 01'
,p_parent_plug_id=>wwv_flow_api.id(133546728980045112)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(140123081818693775)
,p_plug_name=>'Stock Region 02'
,p_parent_plug_id=>wwv_flow_api.id(133546728980045112)
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
 p_id=>wwv_flow_api.id(139037808402763474)
,p_plug_name=>'Group'
,p_region_name=>'GROUP'
,p_parent_plug_id=>wwv_flow_api.id(160266283903310339)
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
 p_id=>wwv_flow_api.id(140123130401693776)
,p_plug_name=>'Group Region 01'
,p_parent_plug_id=>wwv_flow_api.id(139037808402763474)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(140123262715693777)
,p_plug_name=>'Group Region 02'
,p_parent_plug_id=>wwv_flow_api.id(139037808402763474)
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
 p_id=>wwv_flow_api.id(139038262517763479)
,p_plug_name=>'Model '
,p_region_name=>'MODEL'
,p_parent_plug_id=>wwv_flow_api.id(160266283903310339)
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
 p_id=>wwv_flow_api.id(140123389584693778)
,p_plug_name=>'Model Region 01'
,p_parent_plug_id=>wwv_flow_api.id(139038262517763479)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(140123521283693779)
,p_plug_name=>'Model Region 02'
,p_parent_plug_id=>wwv_flow_api.id(139038262517763479)
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
 p_id=>wwv_flow_api.id(139039636784763493)
,p_plug_name=>'Classification'
,p_parent_plug_id=>wwv_flow_api.id(160266283903310339)
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
 p_id=>wwv_flow_api.id(179653241728883304)
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
 p_id=>wwv_flow_api.id(91707089193642613)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(139039636784763493)
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
 p_id=>wwv_flow_api.id(91709748085642615)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(179653241728883304)
,p_button_name=>'REFRESH'
,p_button_static_id=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_RFRS_LBL.'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.:RP,390::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'&BTN_RFRS_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(91707426696642614)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(139039636784763493)
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
 p_id=>wwv_flow_api.id(91707802965642614)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(139039636784763493)
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
 p_id=>wwv_flow_api.id(91710105887642618)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(179653241728883304)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P123_ITEMCODE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(91710539857642619)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(179653241728883304)
,p_button_name=>'CREATE'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P123_ITEMCODE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'&BTN_SBMT_ICON.'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(91689689065642601)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_api.id(140122499497693769)
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
 p_id=>wwv_flow_api.id(91710978681642619)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(179653241728883304)
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
 p_id=>wwv_flow_api.id(91722946882642638)
,p_branch_name=>'Go To Page 128'
,p_branch_action=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91674777729642585)
,p_name=>'P123_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(160266283903310339)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91675662496642591)
,p_name=>'P123_SALERATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(140122765896693772)
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
 p_id=>wwv_flow_api.id(91676032877642592)
,p_name=>'P123_SALEPERC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(140122765896693772)
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
 p_id=>wwv_flow_api.id(91676488578642592)
,p_name=>'P123_COSTTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(140122765896693772)
,p_use_cache_before_default=>'NO'
,p_source=>'COSTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91676865493642592)
,p_name=>'P123_COSTMTOD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(140122765896693772)
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
 p_id=>wwv_flow_api.id(91677260207642593)
,p_name=>'P123_COSTRATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(140122765896693772)
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
 p_id=>wwv_flow_api.id(91677699966642593)
,p_name=>'P123_STNDRATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(140122765896693772)
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
 p_id=>wwv_flow_api.id(91678014997642593)
,p_name=>'P123_AVRGRATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(140122765896693772)
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
 p_id=>wwv_flow_api.id(91678494222642594)
,p_name=>'P123_USE_SLSPCT_FLG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(140122765896693772)
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
 p_id=>wwv_flow_api.id(91678871667642594)
,p_name=>'P123_SALESFLG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(140122765896693772)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'SALESFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91679273504642595)
,p_name=>'P123_PROCESS_REQ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(140122765896693772)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_source=>'PROCESS_REQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91679673358642595)
,p_name=>'P123_CREADATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(140122765896693772)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return sysdate;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'CREADATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91680077584642595)
,p_name=>'P123_FACTRVAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(140122765896693772)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_source=>'FACTRVAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91680489263642595)
,p_name=>'P123_PACKSETP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(140122765896693772)
,p_use_cache_before_default=>'NO'
,p_item_default=>'3'
,p_source=>'PACKSETP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91680886045642595)
,p_name=>'P123_DEALER_SALE_PERC'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(140122765896693772)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91681533135642596)
,p_name=>'P123_CNSMPGRP'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(140122882947693773)
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
 p_id=>wwv_flow_api.id(91681936908642597)
,p_name=>'P123_CNSMPGRP_ACC'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(140122882947693773)
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
 p_id=>wwv_flow_api.id(91682382234642597)
,p_name=>'P123_SALESGRP'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(140122882947693773)
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
 p_id=>wwv_flow_api.id(91682701124642597)
,p_name=>'P123_SALESGRP_ACC'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(140122882947693773)
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
 p_id=>wwv_flow_api.id(91683150478642597)
,p_name=>'P123_STOCKGRP'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(140122882947693773)
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
 p_id=>wwv_flow_api.id(91683596751642597)
,p_name=>'P123_STOCKGRP_ACC'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(140122882947693773)
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
 p_id=>wwv_flow_api.id(91683927846642598)
,p_name=>'P123_COSTCODE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(140122882947693773)
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
 p_id=>wwv_flow_api.id(91684996628642598)
,p_name=>'P123_ITEMCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(140122372704693768)
,p_use_cache_before_default=>'NO'
,p_item_default=>'IRON1'
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
 p_id=>wwv_flow_api.id(91685302691642599)
,p_name=>'P123_ITEMDES1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(140122372704693768)
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
 p_id=>wwv_flow_api.id(91685747909642599)
,p_name=>'P123_INMFGREF'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(140122372704693768)
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
 p_id=>wwv_flow_api.id(91686184846642599)
,p_name=>'P123_COMMGRUP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(140122372704693768)
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
 p_id=>wwv_flow_api.id(91686539893642599)
,p_name=>'P123_ITEMMODL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(140122372704693768)
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
 p_id=>wwv_flow_api.id(91686985646642600)
,p_name=>'P123_USERDEF1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(140122372704693768)
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
 p_id=>wwv_flow_api.id(91687305940642600)
,p_name=>'P123_HUOMCODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(140122372704693768)
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
 p_id=>wwv_flow_api.id(91687774799642600)
,p_name=>'P123_ITEMDES2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(140122372704693768)
,p_use_cache_before_default=>'NO'
,p_source=>'ITEMDES2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91688169870642600)
,p_name=>'P123_LUOMCODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(140122372704693768)
,p_use_cache_before_default=>'NO'
,p_source=>'LUOMCODE'
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
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91688556615642600)
,p_name=>'P123_COMPCODE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(140122372704693768)
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
 p_id=>wwv_flow_api.id(91688931846642601)
,p_name=>'P123_X3'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(140122372704693768)
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
 p_id=>wwv_flow_api.id(91690012168642602)
,p_name=>'P123_ITEMTYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(140122499497693769)
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
 p_id=>wwv_flow_api.id(91690499243642602)
,p_name=>'P123_ITEMCLAS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(140122499497693769)
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
 p_id=>wwv_flow_api.id(91690842864642602)
,p_name=>'P123_STATUSCD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(140122499497693769)
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
 p_id=>wwv_flow_api.id(91691227940642602)
,p_name=>'P123_LOCALPRT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(140122499497693769)
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
 p_id=>wwv_flow_api.id(91691603758642603)
,p_name=>'P123_USE_LOCATION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(140122499497693769)
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
 p_id=>wwv_flow_api.id(91692051607642603)
,p_name=>'P123_FINISHGD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(140122499497693769)
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
 p_id=>wwv_flow_api.id(91692497655642603)
,p_name=>'P123_SEMFINGD'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(140122499497693769)
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
 p_id=>wwv_flow_api.id(91692854143642603)
,p_name=>'P123_FILE_BLOB'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(140122499497693769)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Location'
,p_source=>'FILE_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'NATIVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91693288759642603)
,p_name=>'P123_USERCODE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(140122499497693769)
,p_use_cache_before_default=>'NO'
,p_source=>'USERCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91693689344642604)
,p_name=>'P123_LOCATION'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(140122499497693769)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(91694086557642604)
,p_name=>'P123_OPRSTAMP'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(140122499497693769)
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
 p_id=>wwv_flow_api.id(91695012238642606)
,p_name=>'P123_ECOORDER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(140122929745693774)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Economic Order Quantity'
,p_source=>'ECOORDER'
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
 p_id=>wwv_flow_api.id(91695487691642606)
,p_name=>'P123_IREORDER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(140122929745693774)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reorder Level'
,p_source=>'IREORDER'
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
 p_id=>wwv_flow_api.id(91695855013642606)
,p_name=>'P123_LEADTIME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(140122929745693774)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lead Time'
,p_source=>'LEADTIME'
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
 p_id=>wwv_flow_api.id(91696207461642607)
,p_name=>'P123_ISSUMTHD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(140122929745693774)
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
 p_id=>wwv_flow_api.id(91696948471642607)
,p_name=>'P123_MAXLEVEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(140123081818693775)
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
 p_id=>wwv_flow_api.id(91697311096642607)
,p_name=>'P123_MINLEVEL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(140123081818693775)
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
 p_id=>wwv_flow_api.id(91697752594642608)
,p_name=>'P123_RESRDQTY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(140123081818693775)
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
 p_id=>wwv_flow_api.id(91698112131642608)
,p_name=>'P123_X2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(140123081818693775)
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
 p_id=>wwv_flow_api.id(91699197222642609)
,p_name=>'P123_ITDISGRP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(140123130401693776)
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
 p_id=>wwv_flow_api.id(91699591340642609)
,p_name=>'P123_TCSTGRUP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(140123130401693776)
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
 p_id=>wwv_flow_api.id(91699919304642609)
,p_name=>'P123_LEVYGRUP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(140123130401693776)
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
 p_id=>wwv_flow_api.id(91700678886642610)
,p_name=>'P123_CMSNGRUP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(140123262715693777)
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
 p_id=>wwv_flow_api.id(91701058051642610)
,p_name=>'P123_VERFGRUP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(140123262715693777)
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
 p_id=>wwv_flow_api.id(91701439638642610)
,p_name=>'P123_VERFFREQ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(140123262715693777)
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
 p_id=>wwv_flow_api.id(91702437672642611)
,p_name=>'P123_MODLCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(140123389584693778)
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
 p_id=>wwv_flow_api.id(91702830671642611)
,p_name=>'P123_MODLGROP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(140123389584693778)
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
 p_id=>wwv_flow_api.id(91703281212642611)
,p_name=>'P123_ITEMSIZE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(140123389584693778)
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
 p_id=>wwv_flow_api.id(91703662468642611)
,p_name=>'P123_ITMGRADE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(140123389584693778)
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
 p_id=>wwv_flow_api.id(91704053144642612)
,p_name=>'P123_SRVCEGRP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(140123389584693778)
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
 p_id=>wwv_flow_api.id(91704748577642612)
,p_name=>'P123_VHCLCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(140123521283693779)
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
 p_id=>wwv_flow_api.id(91705152142642612)
,p_name=>'P123_CATEGORY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(140123521283693779)
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
 p_id=>wwv_flow_api.id(91705545619642613)
,p_name=>'P123_FXASTFLG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(140123521283693779)
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
 p_id=>wwv_flow_api.id(91705930792642613)
,p_name=>'P123_PAINTFLG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(140123521283693779)
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
 p_id=>wwv_flow_api.id(91706309819642613)
,p_name=>'P123_X1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(140123521283693779)
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
 p_id=>wwv_flow_api.id(91708261474642614)
,p_name=>'P123_ABCCLSFN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(139039636784763493)
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
 p_id=>wwv_flow_api.id(91708621560642614)
,p_name=>'P123_FSNCLSFN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(139039636784763493)
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
 p_id=>wwv_flow_api.id(91709023130642614)
,p_name=>'P123_XYZCLSFN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(139039636784763493)
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
 p_id=>wwv_flow_api.id(91712947506642630)
,p_name=>'Set Itemdesc2'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P123_ITEMDES1'
,p_condition_element=>'P123_ITEMDES1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(91713400061642631)
,p_event_id=>wwv_flow_api.id(91712947506642630)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P123_ITEMDES2'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P123_ITEMDES1'
,p_attribute_07=>'P123_ITEMDES1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(91713872359642631)
,p_name=>'set LUOMCODE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P123_HUOMCODE'
,p_condition_element=>'P123_HUOMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(91714385139642632)
,p_event_id=>wwv_flow_api.id(91713872359642631)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P123_LUOMCODE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P123_HUOMCODE'
,p_attribute_07=>'P123_HUOMCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(91714758325642632)
,p_name=>'set item code on usercode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P123_ITEMCODE'
,p_condition_element=>'P123_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(91715250910642632)
,p_event_id=>wwv_flow_api.id(91714758325642632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P123_USERCODE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P123_ITEMCODE'
,p_attribute_07=>'P123_ITEMCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(91715627051642632)
,p_name=>'Cancel Dialog'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(91710978681642619)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(91716119709642632)
,p_event_id=>wwv_flow_api.id(91715627051642632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(91716521426642633)
,p_name=>'close X button from dialog page'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(91717008574642633)
,p_event_id=>wwv_flow_api.id(91716521426642633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var button = parent.$(''.ui-dialog-titlebar-close''); //get the button',
'button.hide(); //hide the button'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(91717413780642633)
,p_name=>'Stock Inline Dialog'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(91707089193642613)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(91717952265642633)
,p_event_id=>wwv_flow_api.id(91717413780642633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'openModal(''STOCK'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(91718382211642634)
,p_name=>'Model Inline Dialog'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(91707426696642614)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(91718816126642634)
,p_event_id=>wwv_flow_api.id(91718382211642634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'openModal(''MODEL'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(91719241987642634)
,p_name=>'Group Inline Dialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(91707802965642614)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(91719741608642634)
,p_event_id=>wwv_flow_api.id(91719241987642634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'openModal(''GROUP'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(91720161846642634)
,p_name=>'CNSMPGRP_ACC'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P123_CNSMPGRP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(91720600826642635)
,p_event_id=>wwv_flow_api.id(91720161846642634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P123_CNSMPGRP_ACC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT INITCAP (S.ACCTNAME) || ''-''||S.ACCTCODE ACCTNAME',
'    FROM NMACTGRP A, SYCHRTAC S',
'   WHERE     A.COMPCODE = :COMPCODE',
'         AND A.COMPCODE = S.COMPCODE(+)',
'         AND A.ACCTCODE = S.ACCTCODE(+)',
'         AND A.TYPECODE = ''CSP''',
'         AND a.grupcode = :P123_CNSMPGRP',
'ORDER BY A.GRUPCODE'))
,p_attribute_07=>'P123_CNSMPGRP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(91721072514642635)
,p_name=>'SALESGRP_ACC'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P123_SALESGRP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(91721570769642635)
,p_event_id=>wwv_flow_api.id(91721072514642635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P123_SALESGRP_ACC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT INITCAP (S.ACCTNAME) || ''-''||S.ACCTCODE ACCTNAME',
'    FROM NMACTGRP A, SYCHRTAC S',
'   WHERE     A.COMPCODE = :COMPCODE',
'         AND A.COMPCODE = S.COMPCODE(+)',
'         AND A.ACCTCODE = S.ACCTCODE(+)',
'         AND A.TYPECODE = ''SAL''',
'         AND A.GRUPCODE = :P123_SALESGRP',
'ORDER BY A.GRUPCODE'))
,p_attribute_07=>'P123_SALESGRP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(91721933716642635)
,p_name=>'STOCKGRP_ACC'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P123_STOCKGRP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(91722487571642636)
,p_event_id=>wwv_flow_api.id(91721933716642635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P123_STOCKGRP_ACC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT INITCAP (S.ACCTNAME) || ''-''||S.ACCTCODE ACCTNAME',
'    FROM NMACTGRP A, SYCHRTAC S',
'   WHERE     A.COMPCODE = :COMPCODE',
'         AND A.COMPCODE = S.COMPCODE(+)',
'         AND A.ACCTCODE = S.ACCTCODE(+)',
'         AND A.TYPECODE = ''STK''',
'         AND A.GRUPCODE = :P123_STOCKGRP',
'ORDER BY A.GRUPCODE'))
,p_attribute_07=>'P123_STOCKGRP'
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
 p_id=>wwv_flow_api.id(67897219912188510)
,p_name=>'Load Item Data'
,p_event_sequence=>120
,p_condition_element=>'P123_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67897388158188511)
,p_event_id=>wwv_flow_api.id(67897219912188510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--raise_application_error(-20001, ''sfdghsdf'');',
'BEGIN',
'   SELECT ITEMDES1,',
'          INMFGREF,',
'          COMMGRUP,',
'          ITEMMODL,',
'          USERDEF1,',
'          HUOMCODE,',
'          ITEMDES2,',
'          LUOMCODE,',
'          COMPCODE,',
'          ITEMTYPE,',
'          ITEMCLAS,',
'          STATUSCD,',
'          LOCALPRT,',
'          USE_LOCATION,',
'          FINISHGD,',
'          SEMFINGD,',
'          --FILE_BLOB,',
'          USERCODE,',
'          OPRSTAMP,',
'          SALERATE,',
'          SALEPERC,',
'          COSTTYPE,',
'          COSTMTOD,',
'          COSTRATE,',
'          STNDRATE,',
'          AVRGRATE,',
'          USE_SLSPCT_FLG,',
'          SALESFLG,',
'          PROCESS_REQ,',
'          CREADATE,',
'          FACTRVAL,',
'          PACKSETP,',
'          DEALER_SALE_PERC,',
'          CNSMPGRP,',
'          SALESGRP,',
'          STOCKGRP,',
'          COSTCODE,',
'          ECOORDER,',
'          IREORDER,',
'          LEADTIME,',
'          ISSUMTHD,',
'          MAXLEVEL,',
'          MINLEVEL,',
'          RESRDQTY,',
'          ITDISGRP,',
'          TCSTGRUP,',
'          LEVYGRUP,',
'          CMSNGRUP,',
'          VERFGRUP,',
'          VERFFREQ,',
'          MODLCODE,',
'          MODLGROP,',
'          ITEMSIZE,',
'          ITMGRADE,',
'          SRVCEGRP,',
'          VHCLCODE,',
'          CATEGORY,',
'          FXASTFLG,',
'          PAINTFLG,',
'          ABCCLSFN,',
'          FSNCLSFN,',
'          XYZCLSFN',
'     INTO :P123_ITEMDES1,',
'          :P123_INMFGREF,',
'          :P123_COMMGRUP,',
'          :P123_ITEMMODL,',
'          :P123_USERDEF1,',
'          :P123_HUOMCODE,',
'          :P123_ITEMDES2,',
'          :P123_LUOMCODE,',
'          :P123_COMPCODE,',
'          :P123_ITEMTYPE,',
'          :P123_ITEMCLAS,',
'          :P123_STATUSCD,',
'          :P123_LOCALPRT,',
'          :P123_USE_LOCATION,',
'          :P123_FINISHGD,',
'          :P123_SEMFINGD,',
'          --:P123_FILE_BLOB,',
'          :P123_USERCODE,',
'          :P123_OPRSTAMP,',
'          :P123_SALERATE,',
'          :P123_SALEPERC,',
'          :P123_COSTTYPE,',
'          :P123_COSTMTOD,',
'          :P123_COSTRATE,',
'          :P123_STNDRATE,',
'          :P123_AVRGRATE,',
'          :P123_USE_SLSPCT_FLG,',
'          :P123_SALESFLG,',
'          :P123_PROCESS_REQ,',
'          :P123_CREADATE,',
'          :P123_FACTRVAL,',
'          :P123_PACKSETP,',
'          :P123_DEALER_SALE_PERC,',
'          :P123_CNSMPGRP,',
'          :P123_SALESGRP,',
'          :P123_STOCKGRP,',
'          :P123_COSTCODE,',
'          :P123_ECOORDER,',
'          :P123_IREORDER,',
'          :P123_LEADTIME,',
'          :P123_ISSUMTHD,',
'          :P123_MAXLEVEL,',
'          :P123_MINLEVEL,',
'          :P123_RESRDQTY,',
'          :P123_ITDISGRP,',
'          :P123_TCSTGRUP,',
'          :P123_LEVYGRUP,',
'          :P123_CMSNGRUP,',
'          :P123_VERFGRUP,',
'          :P123_VERFFREQ,',
'          :P123_MODLCODE,',
'          :P123_MODLGROP,',
'          :P123_ITEMSIZE,',
'          :P123_ITMGRADE,',
'          :P123_SRVCEGRP,',
'          :P123_VHCLCODE,',
'          :P123_CATEGORY,',
'          :P123_FXASTFLG,',
'          :P123_PAINTFLG,',
'          :P123_ABCCLSFN,',
'          :P123_FSNCLSFN,',
'          :P123_XYZCLSFN',
'     FROM NMITEMAS',
'    WHERE COMPCODE = :COMPCODE AND ITEMCODE = :P123_ITEMCODE;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      :P123_ITEMCODE := NULL;',
'   WHEN OTHERS',
'   THEN',
'      :P123_ITEMCODE := NULL;',
'END;',
'',
'ENd;'))
,p_attribute_02=>'P123_ITEMCODE'
,p_attribute_03=>'P123_ITEMDES1, P123_INMFGREF, P123_COMMGRUP, P123_ITEMMODL, P123_USERDEF1, P123_HUOMCODE, P123_ITEMDES2, P123_LUOMCODE, P123_COMPCODE, P123_ITEMTYPE, P123_ITEMCLAS, P123_STATUSCD, P123_LOCALPRT, P123_USE_LOCATION, P123_FINISHGD, P123_SEMFINGD, P123_U'
||'SERCODE, P123_OPRSTAMP, P123_SALERATE, P123_SALEPERC, P123_COSTTYPE, P123_COSTMTOD, P123_COSTRATE, P123_STNDRATE, P123_AVRGRATE, P123_USE_SLSPCT_FLG, P123_SALESFLG, P123_PROCESS_REQ, P123_CREADATE, P123_FACTRVAL, P123_PACKSETP, P123_DEALER_SALE_PERC,'
||' P123_CNSMPGRP, P123_SALESGRP, P123_STOCKGRP, P123_COSTCODE, P123_ECOORDER, P123_IREORDER, P123_LEADTIME, P123_ISSUMTHD, P123_MAXLEVEL, P123_MINLEVEL, P123_RESRDQTY, P123_ITDISGRP, P123_TCSTGRUP, P123_LEVYGRUP, P123_CMSNGRUP, P123_VERFGRUP, P123_VERF'
||'FREQ, P123_MODLCODE, P123_MODLGROP, P123_ITEMSIZE, P123_ITMGRADE, P123_SRVCEGRP, P123_VHCLCODE, P123_CATEGORY, P123_FXASTFLG, P123_PAINTFLG, P123_ABCCLSFN, P123_FSNCLSFN, P123_XYZCLSFN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67897165244188509)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 28/Sep/22 4:19:36 PM (QP5 v5.287) */',
'BEGIN',
'   UPDATE NMITEMAS',
'      SET ITEMDES1 = :P123_ITEMDES1,',
'          INMFGREF = :P123_INMFGREF,',
'          COMMGRUP = :P123_COMMGRUP,',
'          ITEMMODL = :P123_ITEMMODL,',
'          USERDEF1 = :P123_USERDEF1,',
'          HUOMCODE = :P123_HUOMCODE,',
'          ITEMDES2 = :P123_ITEMDES2,',
'          LUOMCODE = :P123_LUOMCODE,',
'          ITEMTYPE = :P123_ITEMTYPE,',
'          ITEMCLAS = :P123_ITEMCLAS,',
'          STATUSCD = :P123_STATUSCD,',
'          LOCALPRT = :P123_LOCALPRT,',
'          USE_LOCATION = :P123_USE_LOCATION,',
'          FINISHGD = :P123_FINISHGD,',
'          SEMFINGD = :P123_SEMFINGD,',
'          --FILE_BLOB  = :P123_FILE_BLOB,',
'          USERCODE = :P123_USERCODE,',
'          SALERATE = :P123_SALERATE,',
'          SALEPERC = :P123_SALEPERC,',
'          COSTTYPE = :P123_COSTTYPE,',
'          COSTMTOD = :P123_COSTMTOD,',
'          COSTRATE = :P123_COSTRATE,',
'          STNDRATE = :P123_STNDRATE,',
'          AVRGRATE = :P123_AVRGRATE,',
'          USE_SLSPCT_FLG = :P123_USE_SLSPCT_FLG,',
'          SALESFLG = :P123_SALESFLG,',
'          PROCESS_REQ = :P123_PROCESS_REQ,',
'          CREADATE = :P123_CREADATE,',
'          FACTRVAL = :P123_FACTRVAL,',
'          PACKSETP = :P123_PACKSETP,',
'          DEALER_SALE_PERC = :P123_DEALER_SALE_PERC,',
'          CNSMPGRP = :P123_CNSMPGRP,',
'          SALESGRP = :P123_SALESGRP,',
'          STOCKGRP = :P123_STOCKGRP,',
'          COSTCODE = :P123_COSTCODE,',
'          ECOORDER = :P123_ECOORDER,',
'          IREORDER = :P123_IREORDER,',
'          LEADTIME = :P123_LEADTIME,',
'          ISSUMTHD = :P123_ISSUMTHD,',
'          MAXLEVEL = :P123_MAXLEVEL,',
'          MINLEVEL = :P123_MINLEVEL,',
'          RESRDQTY = :P123_RESRDQTY,',
'          ITDISGRP = :P123_ITDISGRP,',
'          TCSTGRUP = :P123_TCSTGRUP,',
'          LEVYGRUP = :P123_LEVYGRUP,',
'          CMSNGRUP = :P123_CMSNGRUP,',
'          VERFGRUP = :P123_VERFGRUP,',
'          VERFFREQ = :P123_VERFFREQ,',
'          MODLCODE = :P123_MODLCODE,',
'          MODLGROP = :P123_MODLGROP,',
'          ITEMSIZE = :P123_ITEMSIZE,',
'          ITMGRADE = :P123_ITMGRADE,',
'          SRVCEGRP = :P123_SRVCEGRP,',
'          VHCLCODE = :P123_VHCLCODE,',
'          CATEGORY = :P123_CATEGORY,',
'          FXASTFLG = :P123_FXASTFLG,',
'          PAINTFLG = :P123_PAINTFLG,',
'          ABCCLSFN = :P123_ABCCLSFN,',
'          FSNCLSFN = :P123_FSNCLSFN,',
'          XYZCLSFN = :P123_XYZCLSFN,',
'          MODIFYDT = SYSDATE',
'    WHERE COMPCODE = :COMPCODE AND ITEMCODE = :P123_ITEMCODE;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      RAISE_APPLICATION_ERROR (-20001, ''Item Code Not Found. '');',
'   WHEN OTHERS',
'   THEN',
'      RAISE_APPLICATION_ERROR (-20002,',
'                               ''Unable to Update. '' ||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(91710105887642618)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(91712189352642629)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(91712512529642629)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Page Item Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P123_ITEMCODE IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Item Code Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P123_ITEMCODE'');',
'   END IF;',
'',
'',
'   IF :P123_ITEMDES1 IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Item Description Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P123_ITEMDES1'');',
'   END IF;',
'',
'   IF :P123_COMMGRUP IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Brand Name Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P123_COMMGRUP'');',
'   END IF;',
'',
'',
'   IF :P123_ITEMTYPE IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Item Type Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P123_ITEMTYPE'');',
'   END IF;',
'   ',
'   ',
'   IF :P123_ITEMCLAS IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Item Class Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P123_ITEMCLAS'');',
'   END IF;',
'   ',
'   ',
'   IF :P123_STATUSCD IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Status Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P123_STATUSCD'');',
'   END IF;',
'   ',
'   ',
'   IF :P123_HUOMCODE IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Unit of Measurement Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P123_HUOMCODE'');',
'   END IF;',
'   ',
'   ',
'   IF :P123_SALERATE < 0',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Sale Rate Should be a Positive Value. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P123_SALERATE'');  ',
'   END IF;',
'   ',
'   ',
'   IF :P123_COSTRATE < 0',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Cost Rate Should be a Positive Value. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P123_COSTRATE'');  ',
'   END IF;',
'   ',
'   ',
'   IF TO_NUMBER(:P123_SALERATE) < TO_NUMBER(:P123_COSTRATE)',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Sale Rate Should be Grater Than Cost Rate. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P123_SALERATE'');  ',
'   END IF;',
'   ',
'   ',
'   IF :P123_IREORDER < :P123_RESRDQTY',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''R.O.L Must be Grater Than Safety Stock. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P123_IREORDER'');   ',
'   END IF; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
