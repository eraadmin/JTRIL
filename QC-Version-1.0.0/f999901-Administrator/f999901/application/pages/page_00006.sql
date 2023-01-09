prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
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
,p_last_upd_yyyymmddhh24miss=>'20200227200529'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37892796177961026)
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
 p_id=>wwv_flow_api.id(75093275687325237)
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
 p_id=>wwv_flow_api.id(54849725734069702)
,p_plug_name=>'Layout-Region 4'
,p_parent_plug_id=>wwv_flow_api.id(75093275687325237)
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
 p_id=>wwv_flow_api.id(75093413841325238)
,p_plug_name=>'Layout-Region 1'
,p_parent_plug_id=>wwv_flow_api.id(75093275687325237)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75094114522325245)
,p_plug_name=>'Layout-Region 2'
,p_parent_plug_id=>wwv_flow_api.id(75093275687325237)
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
 p_id=>wwv_flow_api.id(75291676990205851)
,p_plug_name=>'Organization Name'
,p_parent_plug_id=>wwv_flow_api.id(75094114522325245)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75292096518205855)
,p_plug_name=>'Organization Address'
,p_parent_plug_id=>wwv_flow_api.id(75094114522325245)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75294129370205875)
,p_plug_name=>'Report Title'
,p_parent_plug_id=>wwv_flow_api.id(75094114522325245)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75294588041205880)
,p_plug_name=>'Report Body'
,p_parent_plug_id=>wwv_flow_api.id(75094114522325245)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75822928575105235)
,p_plug_name=>'Page Number'
,p_parent_plug_id=>wwv_flow_api.id(75094114522325245)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582245671854857847)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75823373031105240)
,p_plug_name=>'Layout-Region 3'
,p_parent_plug_id=>wwv_flow_api.id(75093275687325237)
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
 p_id=>wwv_flow_api.id(46755218829592412)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(37892796177961026)
,p_button_name=>'REFRESH'
,p_button_static_id=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_RFRS_LBL.'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6::'
,p_icon_css_classes=>'&BTN_RFRS_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46758922082592449)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(37892796177961026)
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
 p_id=>wwv_flow_api.id(37892879313961027)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(37892796177961026)
,p_button_name=>'BACK'
,p_button_static_id=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_BACK_LBL.'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'&BTN_BACK_LBL.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38393449797867737)
,p_name=>'P6_FONT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75291676990205851)
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
 p_id=>wwv_flow_api.id(38393898856867745)
,p_name=>'P6_FONT_ALIGN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75291676990205851)
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
 p_id=>wwv_flow_api.id(38394252439867745)
,p_name=>'P6_FONT_SIZE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75291676990205851)
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
 p_id=>wwv_flow_api.id(38394615936867745)
,p_name=>'P6_FONT_WEIGHT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(75291676990205851)
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
 p_id=>wwv_flow_api.id(38395390800867746)
,p_name=>'P6_FONT_NAME_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75292096518205855)
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
 p_id=>wwv_flow_api.id(38395793267867748)
,p_name=>'P6_FONT_ALIGN_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75292096518205855)
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
 p_id=>wwv_flow_api.id(38396112960867748)
,p_name=>'P6_FONT_SIZE_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75292096518205855)
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
 p_id=>wwv_flow_api.id(38396557429867748)
,p_name=>'P6_FONT_WEIGHT_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(75292096518205855)
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
 p_id=>wwv_flow_api.id(38397226121867748)
,p_name=>'P6_FONT_NAME_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75294129370205875)
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
 p_id=>wwv_flow_api.id(38397614155867748)
,p_name=>'P6_FONT_ALIGN_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75294129370205875)
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
 p_id=>wwv_flow_api.id(38398072180867748)
,p_name=>'P6_FONT_SIZE_2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75294129370205875)
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
 p_id=>wwv_flow_api.id(38398425632867748)
,p_name=>'P6_FONT_WEIGHT_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(75294129370205875)
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
 p_id=>wwv_flow_api.id(38399181255867750)
,p_name=>'P6_FONT_NAME_3'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75294588041205880)
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
 p_id=>wwv_flow_api.id(38399573006867750)
,p_name=>'P6_FONT_ALIGN_3'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75294588041205880)
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
 p_id=>wwv_flow_api.id(38399924181867750)
,p_name=>'P6_FONT_SIZE_3'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75294588041205880)
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
 p_id=>wwv_flow_api.id(38400335010867750)
,p_name=>'P6_FONT_WEIGHT_3'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(75294588041205880)
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
 p_id=>wwv_flow_api.id(38401005499867751)
,p_name=>'P6_FONT_NAME_4'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75822928575105235)
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
 p_id=>wwv_flow_api.id(38401401499867751)
,p_name=>'P6_FONT_ALIGN_4'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75822928575105235)
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
 p_id=>wwv_flow_api.id(38401808837867751)
,p_name=>'P6_FONT_SIZE_4'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75822928575105235)
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
 p_id=>wwv_flow_api.id(38402289674867751)
,p_name=>'P6_FONT_WEIGHT_4'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(75822928575105235)
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
 p_id=>wwv_flow_api.id(38402982289867751)
,p_name=>'P6_HEADER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75093413841325238)
,p_prompt=>'Show Header : '
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38403361701867753)
,p_name=>'P6_HEADING'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75093413841325238)
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
 p_id=>wwv_flow_api.id(38403755445867753)
,p_name=>'P6_FOOTER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(75093413841325238)
,p_prompt=>'Show Footer'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38404192147867753)
,p_name=>'P6_REPORT_SERVER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(75093413841325238)
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
 p_id=>wwv_flow_api.id(38404853298867753)
,p_name=>'P6_RPT_FONT_WEIGHT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75823373031105240)
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
 p_id=>wwv_flow_api.id(38405293937867753)
,p_name=>'P6_RPT_MASK'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75823373031105240)
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
 p_id=>wwv_flow_api.id(38405669251867753)
,p_name=>'P6_RPT_PAGE_FORMAT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75823373031105240)
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
 p_id=>wwv_flow_api.id(38406047964867753)
,p_name=>'P6_RPT_DATE_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(75823373031105240)
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
 p_id=>wwv_flow_api.id(38406420280867754)
,p_name=>'P6_RPT_NUMBER_FORMAT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(75823373031105240)
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
 p_id=>wwv_flow_api.id(38406858675867756)
,p_name=>'P6_RPT_ROUND_FORMAT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(75823373031105240)
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
 p_id=>wwv_flow_api.id(38407258757867756)
,p_name=>'P6_REPORT_FORMAT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(75823373031105240)
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
 p_id=>wwv_flow_api.id(38407657097867756)
,p_name=>'P6_REPORT_DESTINATION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(75823373031105240)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46755563184592415)
,p_name=>'P6_REPORT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75093413841325238)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54849860012069703)
,p_name=>'P6_REPORT_LOGO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(54849725734069702)
,p_prompt=>'Report Logo :'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54849960416069704)
,p_name=>'P6_LOGO_ALIGN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(54849725734069702)
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46755657049592416)
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
'     INTO :P6_FONT_NAME,',
'          :P6_FONT_SIZE,',
'          :P6_FONT_NAME_1,',
'          :P6_FONT_SIZE_1,',
'          :P6_FONT_ALIGN,',
'          :P6_FONT_ALIGN_1,',
'          :P6_FONT_NAME_3,',
'          :P6_FONT_SIZE_3,',
'          :P6_HEADER,',
'          :P6_FOOTER,',
'          :P6_RPT_PAGE_FORMAT,',
'          :P6_RPT_ROUND_FORMAT,',
'          :P6_RPT_NUMBER_FORMAT,',
'          :P6_RPT_DATE_FORMAT,',
'          :P6_REPORT_SERVER,',
'          :P6_REPORT_FORMAT,',
'          :P6_FONT_NAME_2,',
'          :P6_FONT_SIZE_2,',
'          :P6_FONT_SIZE_4,',
'          :P6_FONT_NAME_4,',
'          :P6_RPT_MASK,',
'          :P6_HEADING,',
'          :P6_REPORT_DESTINATION,',
'          :P6_FONT_ALIGN_2,',
'          :P6_FONT_ALIGN_3,',
'          :P6_FONT_ALIGN_4,',
'          :P6_FONT_WEIGHT,',
'          :P6_FONT_WEIGHT_1,',
'          :P6_FONT_WEIGHT_2,',
'          :P6_FONT_WEIGHT_4,',
'          :P6_FONT_WEIGHT_3',
'     FROM SYMENMAS',
'    WHERE COMPCODE = ''001'' AND PROGNAME = :P6_REPORT_NAME;',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      :P6_FONT_NAME := NULL;',
'      :P6_FONT_SIZE := NULL;',
'      :P6_FONT_NAME_1 := NULL;',
'      :P6_FONT_SIZE_1 := NULL;',
'      :P6_FONT_ALIGN := NULL;',
'      :P6_FONT_ALIGN_1 := NULL;',
'      :P6_FONT_NAME_3 := NULL;',
'      :P6_FONT_SIZE_3 := NULL;',
'      :P6_HEADER := NULL;',
'      :P6_FOOTER := NULL;',
'      :P6_RPT_PAGE_FORMAT := NULL;',
'      :P6_RPT_ROUND_FORMAT := NULL;',
'      :P6_RPT_NUMBER_FORMAT := NULL;',
'      :P6_REPORT_SERVER := NULL;',
'      :P6_REPORT_FORMAT := NULL;',
'      :P6_FONT_NAME_2 := NULL;',
'      :P6_FONT_SIZE_2 := NULL;',
'      :P6_FONT_SIZE_4 := NULL;',
'      :P6_FONT_NAME_4 := NULL;',
'      :P6_RPT_MASK := NULL;',
'      :P6_HEADING := NULL;',
'      :P6_REPORT_DESTINATION := NULL;',
'      :P6_FONT_ALIGN_2 := NULL;',
'      :P6_FONT_ALIGN_3 := NULL;',
'      :P6_FONT_ALIGN_4 := NULL;',
'      :P6_FONT_WEIGHT := NULL;',
'      :P6_FONT_WEIGHT_1 := NULL;',
'      :P6_FONT_WEIGHT_2 := NULL;',
'      :P6_FONT_WEIGHT_4 := NULL;',
'      :P6_FONT_WEIGHT_3 := NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46755366355592413)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Advance Process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 09/Feb/20 9:07:36 PM (QP5 v5.227.12220.39754) */',
'BEGIN',
'   UPDATE SYMENMAS',
'      SET COMFNTNM = :P6_FONT_NAME,',
'          COMFNTSZ = :P6_FONT_SIZE,',
'          ADDFNTNM = :P6_FONT_NAME_1,',
'          ADDFNTSZ = :P6_FONT_SIZE_1,',
'          COMFNTAL = :P6_FONT_ALIGN,',
'          ADDFNTAL = :P6_FONT_ALIGN_1,',
'          BDFIFNAM = :P6_FONT_NAME_3,',
'          BDFIFSIZ = :P6_FONT_SIZE_3,',
'          SHOWHEAD = :P6_HEADER,',
'          SHOWFOOT = :P6_FOOTER,',
'          PGNOFRMT = :P6_RPT_PAGE_FORMAT,',
'          ROUNDFMT = :P6_RPT_ROUND_FORMAT,',
'          SNUMFRMT = :P6_RPT_NUMBER_FORMAT,',
'          SDATFRMT = :P6_RPT_DATE_FORMAT,',
'          REPSRVNM = :P6_REPORT_SERVER,',
'          REPTFRMT = :P6_REPORT_FORMAT,',
'          TTFNTNAM = :P6_FONT_NAME_2,',
'          TTFNTSIZ = :P6_FONT_SIZE_2,',
'          PGFNTSIZ = :P6_FONT_SIZE_4,',
'          PGFNTNAM = :P6_FONT_NAME_4,',
'          MSKEFRMT = :P6_RPT_MASK,',
'          PGORIENT = :P6_HEADING,',
'          REPODEST = :P6_REPORT_DESTINATION,',
'          TTFNTALG = :P6_FONT_ALIGN_2,',
'          BDFNTALG = :P6_FONT_ALIGN_3,',
'          PGFNTALG = :P6_FONT_ALIGN_4,',
'          /* ',
'           PAGESIZE = :PAGESIZE,',
'           NMBLDTYP = :NMBLDTYP,',
'           NMHDSWTP = :NMHDSWTP,*/',
'          COMNMFWT = :P6_FONT_WEIGHT,',
'          COMADFWT = :P6_FONT_WEIGHT_1,',
'          RPTITFWT = :P6_FONT_WEIGHT_2,',
'          PGEFNTWT = :P6_FONT_WEIGHT_4,',
'          RPBODFWT = :P6_FONT_WEIGHT_3',
'    WHERE COMPCODE = ''001'' AND PROGNAME = :PROGNAME;',
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
