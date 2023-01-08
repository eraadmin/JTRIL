prompt --application/pages/page_00501
begin
--   Manifest
--     PAGE: 00501
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
 p_id=>501
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Report Paraform Advance'
,p_page_mode=>'MODAL'
,p_step_title=>'Report Paraform Advance'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'t-Dialog--noPadding'
,p_dialog_height=>'600'
,p_dialog_width=>'700'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20200701183024'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(149660295816301070)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(186860775325665281)
,p_plug_name=>'Report Layout'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(166617225372409746)
,p_plug_name=>'Layout-Region 4'
,p_parent_plug_id=>wwv_flow_api.id(186860775325665281)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(186860913479665282)
,p_plug_name=>'Layout-Region 1'
,p_parent_plug_id=>wwv_flow_api.id(186860775325665281)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(186861614160665289)
,p_plug_name=>'Layout-Region 2'
,p_parent_plug_id=>wwv_flow_api.id(186860775325665281)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(187059176628545895)
,p_plug_name=>'Organization Name'
,p_parent_plug_id=>wwv_flow_api.id(186861614160665289)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(187059596156545899)
,p_plug_name=>'Organization Address'
,p_parent_plug_id=>wwv_flow_api.id(186861614160665289)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(187061629008545919)
,p_plug_name=>'Report Title'
,p_parent_plug_id=>wwv_flow_api.id(186861614160665289)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(187062087679545924)
,p_plug_name=>'Report Body'
,p_parent_plug_id=>wwv_flow_api.id(186861614160665289)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(187590428213445279)
,p_plug_name=>'Page Number'
,p_parent_plug_id=>wwv_flow_api.id(186861614160665289)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(187590872669445284)
,p_plug_name=>'Layout-Region 3'
,p_parent_plug_id=>wwv_flow_api.id(186860775325665281)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56499423336510556)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(149660295816301070)
,p_button_name=>'REFRESH'
,p_button_static_id=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_RFRS_LBL.'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:501:&SESSION.::&DEBUG.:RP,48::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'&BTN_RFRS_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56499845609510556)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(149660295816301070)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_SBMT_LBL.'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'&BTN_RFRS_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56500223090510556)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(149660295816301070)
,p_button_name=>'BACK'
,p_button_static_id=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_BACK_LBL.'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:500:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'&BTN_BACK_LBL.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56501234950510557)
,p_name=>'P501_REPORT_LOGO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(166617225372409746)
,p_prompt=>'Report Logo :'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56501690805510559)
,p_name=>'P501_LOGO_ALIGN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(166617225372409746)
,p_item_default=>'L'
,p_prompt=>'Logo Alignment'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Left;L,Right;R'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56502369903510559)
,p_name=>'P501_REPORT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(186860913479665282)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56502788123510560)
,p_name=>'P501_HEADER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(186860913479665282)
,p_prompt=>'Show Header : '
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56503144180510560)
,p_name=>'P501_HEADING'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(186860913479665282)
,p_prompt=>'Heading Orientation : '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>7
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
 p_id=>wwv_flow_api.id(56503593238510560)
,p_name=>'P501_FOOTER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(186860913479665282)
,p_prompt=>'Show Footer'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56503976652510560)
,p_name=>'P501_REPORT_SERVER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(186860913479665282)
,p_prompt=>'Report Server : '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>7
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
 p_id=>wwv_flow_api.id(56504909100510562)
,p_name=>'P501_FONT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(187059176628545895)
,p_prompt=>'Font :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT INITCAP (ELMNT_NAME) AS d, ELMNT_ID AS r',
'    FROM SYPGELMNT',
'   WHERE ELMNT_TYPE = ''FONT''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56505321113510562)
,p_name=>'P501_FONT_ALIGN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(187059176628545895)
,p_prompt=>'Alignment :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Center;C,Left;L,Right;R'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56505799605510564)
,p_name=>'P501_FONT_SIZE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(187059176628545895)
,p_prompt=>'Size :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56506199764510564)
,p_name=>'P501_FONT_WEIGHT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(187059176628545895)
,p_prompt=>'Weight :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT_WEIGHT'
,p_lov=>'.'||wwv_flow_api.id(51854819446020845)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56506804867510565)
,p_name=>'P501_FONT_NAME_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(187059596156545899)
,p_prompt=>'Font :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT INITCAP (ELMNT_NAME) AS d, ELMNT_ID AS r',
'    FROM SYPGELMNT',
'   WHERE ELMNT_TYPE = ''FONT''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56507228275510565)
,p_name=>'P501_FONT_ALIGN_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(187059596156545899)
,p_prompt=>'Alignment :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Center;C,Left;L,Right;R'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56507628000510565)
,p_name=>'P501_FONT_SIZE_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(187059596156545899)
,p_prompt=>'Size :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56508020183510565)
,p_name=>'P501_FONT_WEIGHT_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(187059596156545899)
,p_prompt=>'Weight :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT_WEIGHT'
,p_lov=>'.'||wwv_flow_api.id(51854819446020845)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56508749045510567)
,p_name=>'P501_FONT_NAME_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(187061629008545919)
,p_prompt=>'Font :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT INITCAP (ELMNT_NAME) AS d, ELMNT_ID AS r',
'    FROM SYPGELMNT',
'   WHERE ELMNT_TYPE = ''FONT''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56509195258510567)
,p_name=>'P501_FONT_ALIGN_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(187061629008545919)
,p_prompt=>'Alignment :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Center;C,Left;L,Right;R'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56509557697510567)
,p_name=>'P501_FONT_SIZE_2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(187061629008545919)
,p_prompt=>'Size :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56509907171510568)
,p_name=>'P501_FONT_WEIGHT_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(187061629008545919)
,p_prompt=>'Weight :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT_WEIGHT'
,p_lov=>'.'||wwv_flow_api.id(51854819446020845)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56510619996510568)
,p_name=>'P501_FONT_NAME_3'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(187062087679545924)
,p_prompt=>'Font :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT INITCAP (ELMNT_NAME) AS d, ELMNT_ID AS r',
'    FROM SYPGELMNT',
'   WHERE ELMNT_TYPE = ''FONT''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56511053773510568)
,p_name=>'P501_FONT_ALIGN_3'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(187062087679545924)
,p_prompt=>'Alignment :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Center;C,Left;L,Right;R'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56511481772510570)
,p_name=>'P501_FONT_SIZE_3'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(187062087679545924)
,p_prompt=>'Size :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56511894204510570)
,p_name=>'P501_FONT_WEIGHT_3'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(187062087679545924)
,p_prompt=>'Weight :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT_WEIGHT'
,p_lov=>'.'||wwv_flow_api.id(51854819446020845)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56512509133510570)
,p_name=>'P501_FONT_NAME_4'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(187590428213445279)
,p_prompt=>'Font :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT INITCAP (ELMNT_NAME) AS d, ELMNT_ID AS r',
'    FROM SYPGELMNT',
'   WHERE ELMNT_TYPE = ''FONT''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56512973466510571)
,p_name=>'P501_FONT_ALIGN_4'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(187590428213445279)
,p_prompt=>'Alignment :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Center;C,Left;L,Right;R'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56513399502510571)
,p_name=>'P501_FONT_SIZE_4'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(187590428213445279)
,p_prompt=>'Size :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56513764078510571)
,p_name=>'P501_FONT_WEIGHT_4'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(187590428213445279)
,p_prompt=>'Weight :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT_WEIGHT'
,p_lov=>'.'||wwv_flow_api.id(51854819446020845)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56514429068510573)
,p_name=>'P501_RPT_FONT_WEIGHT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(187590872669445284)
,p_prompt=>'Font Weight :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56514803169510573)
,p_name=>'P501_RPT_MASK'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(187590872669445284)
,p_prompt=>'Mask :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56515232895510573)
,p_name=>'P501_RPT_PAGE_FORMAT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(187590872669445284)
,p_prompt=>'Page Format :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56515696634510573)
,p_name=>'P501_RPT_DATE_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(187590872669445284)
,p_prompt=>'Date Format :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56516079508510575)
,p_name=>'P501_RPT_NUMBER_FORMAT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(187590872669445284)
,p_prompt=>'Number Format :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56516493155510575)
,p_name=>'P501_RPT_ROUND_FORMAT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(187590872669445284)
,p_prompt=>'Round Format :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56516857147510575)
,p_name=>'P501_REPORT_FORMAT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(187590872669445284)
,p_prompt=>'Report Format :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56517263040510575)
,p_name=>'P501_REPORT_DESTINATION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(187590872669445284)
,p_prompt=>'Report Destination :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56518061176510576)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Advance Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT COMFNTNM,',
'          COMFNTSZ,',
'          ADDFNTNM,',
'          ADDFNTSZ,',
'          COMFNTAL,',
'          ADDFNTAL,',
'          BDFIFNAM,',
'          BDFIFSIZ,',
'          SHOWHEAD,',
'          SHOWFOOT,',
'          PGNOFRMT,',
'          ROUNDFMT,',
'          SNUMFRMT,',
'          SDATFRMT,',
'          REPSRVNM,',
'          REPTFRMT,',
'          TTFNTNAM,',
'          TTFNTSIZ,',
'          PGFNTSIZ,',
'          PGFNTNAM,',
'          MSKEFRMT,',
'          PGORIENT,',
'          REPODEST,',
'          TTFNTALG,',
'          BDFNTALG,',
'          PGFNTALG,',
'          COMNMFWT,',
'          COMADFWT,',
'          RPTITFWT,',
'          PGEFNTWT,',
'          RPBODFWT',
'     INTO :P501_FONT_NAME,',
'          :P501_FONT_SIZE,',
'          :P501_FONT_NAME_1,',
'          :P501_FONT_SIZE_1,',
'          :P501_FONT_ALIGN,',
'          :P501_FONT_ALIGN_1,',
'          :P501_FONT_NAME_3,',
'          :P501_FONT_SIZE_3,',
'          :P501_HEADER,',
'          :P501_FOOTER,',
'          :P501_RPT_PAGE_FORMAT,',
'          :P501_RPT_ROUND_FORMAT,',
'          :P501_RPT_NUMBER_FORMAT,',
'          :P501_RPT_DATE_FORMAT,',
'          :P501_REPORT_SERVER,',
'          :P501_REPORT_FORMAT,',
'          :P501_FONT_NAME_2,',
'          :P501_FONT_SIZE_2,',
'          :P501_FONT_SIZE_4,',
'          :P501_FONT_NAME_4,',
'          :P501_RPT_MASK,',
'          :P501_HEADING,',
'          :P501_REPORT_DESTINATION,',
'          :P501_FONT_ALIGN_2,',
'          :P501_FONT_ALIGN_3,',
'          :P501_FONT_ALIGN_4,',
'          :P501_FONT_WEIGHT,',
'          :P501_FONT_WEIGHT_1,',
'          :P501_FONT_WEIGHT_2,',
'          :P501_FONT_WEIGHT_4,',
'          :P501_FONT_WEIGHT_3',
'     FROM SYMENMAS',
'    WHERE COMPCODE = ''001'' AND PROGNAME = :P501_REPORT_NAME;',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      :P501_FONT_NAME := NULL;',
'      :P501_FONT_SIZE := NULL;',
'      :P501_FONT_NAME_1 := NULL;',
'      :P501_FONT_SIZE_1 := NULL;',
'      :P501_FONT_ALIGN := NULL;',
'      :P501_FONT_ALIGN_1 := NULL;',
'      :P501_FONT_NAME_3 := NULL;',
'      :P501_FONT_SIZE_3 := NULL;',
'      :P501_HEADER := NULL;',
'      :P501_FOOTER := NULL;',
'      :P501_RPT_PAGE_FORMAT := NULL;',
'      :P501_RPT_ROUND_FORMAT := NULL;',
'      :P501_RPT_NUMBER_FORMAT := NULL;',
'      :P501_REPORT_SERVER := NULL;',
'      :P501_REPORT_FORMAT := NULL;',
'      :P501_FONT_NAME_2 := NULL;',
'      :P501_FONT_SIZE_2 := NULL;',
'      :P501_FONT_SIZE_4 := NULL;',
'      :P501_FONT_NAME_4 := NULL;',
'      :P501_RPT_MASK := NULL;',
'      :P501_HEADING := NULL;',
'      :P501_REPORT_DESTINATION := NULL;',
'      :P501_FONT_ALIGN_2 := NULL;',
'      :P501_FONT_ALIGN_3 := NULL;',
'      :P501_FONT_ALIGN_4 := NULL;',
'      :P501_FONT_WEIGHT := NULL;',
'      :P501_FONT_WEIGHT_1 := NULL;',
'      :P501_FONT_WEIGHT_2 := NULL;',
'      :P501_FONT_WEIGHT_4 := NULL;',
'      :P501_FONT_WEIGHT_3 := NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56517683193510576)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Advance Process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 09/Feb/20 9:07:36 PM (QP5 v5.227.12220.39754) */',
'BEGIN',
'   UPDATE SYMENMAS',
'      SET COMFNTNM = :P501_FONT_NAME,',
'          COMFNTSZ = :P501_FONT_SIZE,',
'          ADDFNTNM = :P501_FONT_NAME_1,',
'          ADDFNTSZ = :P501_FONT_SIZE_1,',
'          COMFNTAL = :P501_FONT_ALIGN,',
'          ADDFNTAL = :P501_FONT_ALIGN_1,',
'          BDFIFNAM = :P501_FONT_NAME_3,',
'          BDFIFSIZ = :P501_FONT_SIZE_3,',
'          SHOWHEAD = :P501_HEADER,',
'          SHOWFOOT = :P501_FOOTER,',
'          PGNOFRMT = :P501_RPT_PAGE_FORMAT,',
'          ROUNDFMT = :P501_RPT_ROUND_FORMAT,',
'          SNUMFRMT = :P501_RPT_NUMBER_FORMAT,',
'          SDATFRMT = :P501_RPT_DATE_FORMAT,',
'          REPSRVNM = :P501_REPORT_SERVER,',
'          REPTFRMT = :P501_REPORT_FORMAT,',
'          TTFNTNAM = :P501_FONT_NAME_2,',
'          TTFNTSIZ = :P501_FONT_SIZE_2,',
'          PGFNTSIZ = :P501_FONT_SIZE_4,',
'          PGFNTNAM = :P501_FONT_NAME_4,',
'          MSKEFRMT = :P501_RPT_MASK,',
'          PGORIENT = :P501_HEADING,',
'          REPODEST = :P501_REPORT_DESTINATION,',
'          TTFNTALG = :P501_FONT_ALIGN_2,',
'          BDFNTALG = :P501_FONT_ALIGN_3,',
'          PGFNTALG = :P501_FONT_ALIGN_4,',
'          /* ',
'           PAGESIZE = :PAGESIZE,',
'           NMBLDTYP = :NMBLDTYP,',
'           NMHDSWTP = :NMHDSWTP,*/',
'          COMNMFWT = :P501_FONT_WEIGHT,',
'          COMADFWT = :P501_FONT_WEIGHT_1,',
'          RPTITFWT = :P501_FONT_WEIGHT_2,',
'          PGEFNTWT = :P501_FONT_WEIGHT_4,',
'          RPBODFWT = :P501_FONT_WEIGHT_3',
'    WHERE COMPCODE = ''001'' AND PROGNAME = :P501_REPORT_NAME;',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      RAISE_APPLICATION_ERROR (-20001, ''Unable to set Advance Data. '');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
