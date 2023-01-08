prompt --application/pages/page_00342
begin
--   Manifest
--     PAGE: 00342
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
 p_id=>342
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Accounts Receivable Reports'
,p_page_mode=>'MODAL'
,p_step_title=>'Accounts Receivable Reports'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_upd_yyyymmddhh24miss=>'20200102204621'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126798776817093427)
,p_plug_name=>'Accounts Receivable Reports'
,p_region_template_options=>'i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(38316692866728314)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47620987743858279)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(212481666064893705)
,p_plug_name=>'Advance Parameter'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(297271660528745865)
,p_plug_name=>'Parameter '
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--hiddenOverflow:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html>',
'<body>',
'<tr>',
'<td>&P316_COMPCODE.</td>',
'<td>&P316_REPNAM.</td>',
'</tr>',
'</body>',
'</html>'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(298316091896484545)
,p_plug_name=>'button'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38295737444728310)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(298316091896484545)
,p_button_name=>'AdvancedSettings'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Advance Settings'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38296179652728310)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(298316091896484545)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:319:&SESSION.::&DEBUG.:RP:P319_PARTYCODE,P319_DOCTDATE,P319_DOCTTDAT,P319_POSTFLAG,P319_COSTCODE,P319_DOCTTYPE,P319_SUBTTYPE,P319_DOCNUMBR,P319_ACCTCODE,P319_PROGNAME:&P342_PRTYCDE.,&P342_DATEF.,&P342_DATET.,&P342_POSTFLG.,&P342_COSTCODE.,&P342_DOCTYP.,&P342_SUBTYP.,&P342_DOCNUMBR.,&P342_ACCTCDE.,&P342_REPNAM.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38296507435728310)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(298316091896484545)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38271187083728305)
,p_name=>'P342_SHOWHEAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Show Header'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38271537230728305)
,p_name=>'P342_NMHDSWTP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Heading Orientation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC: Show Company name with left logo;LG,Show Company name with right logo;RG,Only Logo;OG,Only Company Name;OC'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38271958327728305)
,p_name=>'P342_HDLOGALG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Logo Align'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Center;C,Right;R,Left;L'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38272291426728305)
,p_name=>'P342_SHOWFOOT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Show Footer'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38272786568728305)
,p_name=>'P342_REPSRVNM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Report Server'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_begin_on_new_line=>'N'
,p_colspan=>8
,p_grid_column=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38273150822728305)
,p_name=>'P342_FONTPROMT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_item_default=>'Font Name'
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style=''font-color:"blue";'''
,p_colspan=>5
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38273558518728305)
,p_name=>'P342_ALIGNPROMT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_item_default=>'Allignment'
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>6
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38273939247728305)
,p_name=>'P342_SIZEPROMT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_item_default=>'Size'
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38274376840728305)
,p_name=>'P342_WEAIGHTPROMT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_item_default=>'Weight'
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>11
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38274759878728305)
,p_name=>'P342_COMFNTNM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Organization Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.NMCODDES D,S.NMSOFCDE',
'FROM NMCODMAS S',
'WHERE S.NMHRDCDE = ''FNT''',
'AND S.MODLCODE = ''NM''',
'AND S.COMPCODE = :COMPCODE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38275155193728305)
,p_name=>'P342_COMFNTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Center;C,Right;R,Left;L'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>6
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38275580868728306)
,p_name=>'P342_COMFNTSZ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38275914261728306)
,p_name=>'P342_COMNMFWT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Bold;Bold,Italic;Italic,Underline;Underline'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>11
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38276346635728306)
,p_name=>'P342_ADDFNTNM'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Organization Address'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.NMCODDES D,S.NMSOFCDE',
'FROM NMCODMAS S',
'WHERE S.NMHRDCDE = ''FNT''',
'AND S.MODLCODE = ''NM''',
'AND S.COMPCODE = :COMPCODE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38276740791728306)
,p_name=>'P342_ADDFNTAL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Center;C,Right;R,Left;L'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>6
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38277144001728306)
,p_name=>'P342_ADDFNTSZ'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38277579600728306)
,p_name=>'P342_COMADFWT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'New'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Bold;Bold,Italic;Italic,Underline;Underline'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>11
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38277910619728306)
,p_name=>'P342_TTFNTNAM'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Report Title'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.NMCODDES D,S.NMSOFCDE',
'FROM NMCODMAS S',
'WHERE S.NMHRDCDE = ''FNT''',
'AND S.MODLCODE = ''NM''',
'AND S.COMPCODE = :COMPCODE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38278335183728306)
,p_name=>'P342_TTFNTALG'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Center;C,Right;R,Left;L'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>6
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38278778261728306)
,p_name=>'P342_TTFNTSIZ'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38279101632728306)
,p_name=>'P342_RPTITFWT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Bold;Bold,Italic;Italic,Underline;Underline'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>11
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38279538690728306)
,p_name=>'P342_BDFIFNAM'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Report Body'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.NMCODDES D,S.NMSOFCDE',
'FROM NMCODMAS S',
'WHERE S.NMHRDCDE = ''FNT''',
'AND S.MODLCODE = ''NM''',
'AND S.COMPCODE = :COMPCODE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38279971176728306)
,p_name=>'P342_BDFIFSIZ'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38280299295728306)
,p_name=>'P342_BDFNTALG'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Center;C,Right;R,Left;L'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>6
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38280773279728307)
,p_name=>'P342_RPBODFWT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Bold;Bold,Italic;Italic,Underline;Underline'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>11
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38281108084728307)
,p_name=>'P342_REPTFRMT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38281547134728307)
,p_name=>'P342_PGFNTNAM'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Page Number'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.NMCODDES D,S.NMSOFCDE',
'FROM NMCODMAS S',
'WHERE S.NMHRDCDE = ''FNT''',
'AND S.MODLCODE = ''NM''',
'AND S.COMPCODE = :COMPCODE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38281924943728307)
,p_name=>'P342_PGFNTALG'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Center;C,Right;R,Left;L'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>6
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38282312113728307)
,p_name=>'P342_PGFNTSIZ'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38282750276728307)
,p_name=>'P342_PGEFNTWT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Bold;Bold,Italic;Italic,Underline;Underline'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>11
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38283143316728307)
,p_name=>'P342_PARFNTNM'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Parameter Title'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.NMCODDES D,S.NMSOFCDE',
'FROM NMCODMAS S',
'WHERE S.NMHRDCDE = ''FNT''',
'AND S.MODLCODE = ''NM''',
'AND S.COMPCODE = :COMPCODE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38283589225728307)
,p_name=>'P342_PARFNTAL'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Center;C,Right;R,Left;L'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>6
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38283890467728307)
,p_name=>'P342_PARFNTSZ'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38284328293728307)
,p_name=>'P342_PARFNTWT'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Bold;Bold,Italic;Italic,Underline;Underline'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>11
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38284700656728307)
,p_name=>'P342_PARFNTWT_1'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38285117764728307)
,p_name=>'P342_PARFNTWT_1_1'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38285492718728308)
,p_name=>'P342_NMBLDTYP'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Font Weight'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Bold;Bold,Italic;Italic,Underline;Underline'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38285928116728308)
,p_name=>'P342_PGNOFRMT'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Page Format'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Only Page No;2,Page and Total Page;1/1'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38286340168728308)
,p_name=>'P342_PRNTVALU'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Print Date Value'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38286788009728308)
,p_name=>'P342_MSKEFRMT'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Mask'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38287177067728308)
,p_name=>'P342_SDATFRMT'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Date Format'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38287530085728308)
,p_name=>'P342_ROUNDFMT'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Round Format'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38287947168728308)
,p_name=>'P342_SNUMFRMT'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_prompt=>'Number Format'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38288362490728308)
,p_name=>'P342_REPODEST'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38288759613728308)
,p_name=>'P342_PGORIENT'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(212481666064893705)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38289438153728308)
,p_name=>'P342_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(297271660528745865)
,p_item_default=>':compcode'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Company Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.CACMPNAM c, s.CACMPCDE',
'from syparmas s'))
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38289884227728309)
,p_name=>'P342_REPNAM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(297271660528745865)
,p_prompt=>'Report Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT progdesc s,progname',
'  FROM symenmas',
' WHERE compcode = ''001''',
'  -- AND progtype = ''R'''))
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38290213519728309)
,p_name=>'P342_REPNAM_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(297271660528745865)
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
 p_id=>wwv_flow_api.id(38290657258728309)
,p_name=>'P342_REPDET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(297271660528745865)
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT progdesc s,progname',
'  FROM symenmas',
' WHERE compcode = ''001''',
'   AND progtype = ''R'''))
,p_begin_on_new_line=>'N'
,p_colspan=>8
,p_grid_column=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38291028223728309)
,p_name=>'P342_DOCTYP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(297271660528745865)
,p_prompt=>'Document Type'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct s.naration||''--''||s.TRANTYPE s,s.TRANTYPE',
'from actrndtl a,sydocmas s',
'            where a.compcode = s.compcode',
'            and a.compcode = :compcode',
'            and a.docttype = s.trantype',
'            AND a.subttype = s.subttype',
'            AND S.MODLCODE = ''AC'' ',
'         '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38291442092728309)
,p_name=>'P342_SUBTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(297271660528745865)
,p_prompt=>'Sub type'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select distinct a.subttype ',
'from actrndtl a,sydocmas s',
'            where a.compcode = s.compcode',
'            and a.compcode = :compcode',
'            and a.docttype = s.trantype',
'            AND a.subttype = s.subttype',
'            and a.docttype = :P342_DOCTYP',
'            order by a.subttype'))
,p_lov_cascade_parent_items=>'P342_DOCTYP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select distinct a.subttype s,a.subttype',
'from actrndtl a,sydocmas s',
'            where a.compcode = s.compcode',
'            and a.compcode = :compcode',
'            and a.docttype = s.trantype',
'            AND a.subttype = s.subttype',
'            and a.docttype = :P342_DOCTYP',
'            order by a.subttype'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38291821580728309)
,p_name=>'P342_DOCNUMBR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(297271660528745865)
,p_prompt=>'Document No'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT docnumbr ',
'           FROM actrndtl',
'           where COMPCODE=:compcode',
'           and DOCTTYPE=nvl(:P342_DOCTYP,DOCTTYPE)',
'           and subttype=nvl(:P342_SUBTYP,subttype)',
'   --    ORDER BY  doctdate desc'))
,p_lov_cascade_parent_items=>'P342_DOCTYP,P342_SUBTYP'
,p_ajax_items_to_submit=>'P342_DOCTYP,P342_SUBTYP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38292214570728309)
,p_name=>'P342_ACCTCDE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(297271660528745865)
,p_prompt=>'Account Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT s.acctname s,a.acctcode',
'           FROM actrndtl a, sychrtac s',
'          WHERE a.compcode = :compcode',
'            AND a.acctcode = s.acctcode',
'            and a.compcode = s.compcode',
'            AND docttype = NVL (:P342_DOCTYP, docttype)',
'            AND subttype = NVL (:P342_SUBTYP, subttype)',
'            AND docnumbr = NVL (:P342_DOCNUMBR, docnumbr)',
'       ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38292610440728309)
,p_name=>'P342_COSTCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(297271660528745865)
,p_prompt=>'Cost Center'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct  s.costdesc c,s.costcode',
'  FROM syjobmas s,actrndtl a',
' WHERE a.compcode = :compcode',
'            AND a.compcode = s.compcode',
'            AND a.COSTCODE = s.COSTCODE',
'            AND docttype = NVL (:P342_DOCTYP, docttype)',
'            AND subttype = NVL (:P342_SUBTYP, subttype)',
'            AND docnumbr = NVL (:P342_DOCNUMBR, docnumbr)',
'       ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38293052627728309)
,p_name=>'P342_PRTYCDE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(297271660528745865)
,p_prompt=>'Party'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct  partycde||''-''||prtyname p, partycde ',
'    FROM sycompty s,actrndtl a',
' WHERE a.compcode = :compcode',
' and a.compcode = s.compcode',
'            AND a.SUBLEDCD = s.PARTYCDE',
'            AND docttype = NVL (:P342_DOCTYP, docttype)',
'            AND subttype = NVL (:P342_SUBTYP, subttype)',
'            AND docnumbr = NVL (:P342_DOCNUMBR, docnumbr)',
'       ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38293443764728309)
,p_name=>'P342_POSTFLG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(297271660528745865)
,p_prompt=>'Post'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38293860281728309)
,p_name=>'P342_DATEF'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(297271660528745865)
,p_prompt=>'From'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38294268804728309)
,p_name=>'P342_DATET'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(297271660528745865)
,p_prompt=>'To'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38294599763728310)
,p_name=>'P342_SHOWFLG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(297271660528745865)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38295054362728310)
,p_name=>'P342_SHOWADVFLG'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(297271660528745865)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38296909865728310)
,p_name=>'hide_region'
,p_event_sequence=>20
,p_condition_element=>'P342_SHOWFLG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38297409467728310)
,p_event_id=>wwv_flow_api.id(38296909865728310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(297271660528745865)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38297959374728310)
,p_event_id=>wwv_flow_api.id(38296909865728310)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(38295737444728310)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38298372153728310)
,p_name=>'hide_region_adv'
,p_event_sequence=>30
,p_condition_element=>'P342_SHOWADVFLG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38298839670728310)
,p_event_id=>wwv_flow_api.id(38298372153728310)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(212481666064893705)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38299230486728311)
,p_name=>'set_subtyp'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_DOCTYP'
,p_condition_element=>'P342_DOCTYP'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38299708627728311)
,p_event_id=>wwv_flow_api.id(38299230486728311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P342_SUBTYP'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_SUBTYP number;',
'begin',
' select distinct a.subttype',
' into v_SUBTYP',
'from actrndtl a,sydocmas s',
'            where a.compcode = s.compcode',
'            and a.compcode = :compcode',
'            and a.docttype = s.trantype',
'            AND a.subttype = s.subttype',
'            and a.docttype = :P342_DOCTYP;',
'  return v_SUBTYP;',
'  ',
'          ',
'            ',
'exception',
'when no_data_found then',
' v_SUBTYP := '''';',
' return v_SUBTYP;',
'when too_many_rows then',
' v_SUBTYP := '''';',
' return v_SUBTYP;',
'when invalid_number then',
' v_SUBTYP := '''';',
' return v_SUBTYP;',
'when others then',
' v_SUBTYP := '''';',
' return v_SUBTYP;',
'end;'))
,p_attribute_07=>'P342_DOCTYP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38300173638728311)
,p_name=>'get_value_symenmas'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_REPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38300682402728311)
,p_event_id=>wwv_flow_api.id(38300173638728311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT trim(comfntnm), comfntsz, trim(addfntnm),',
'          addfntsz, comfntal, addfntal,',
'          trim(showhead),trim(showfoot), trim(pgnofrmt), ',
'          roundfmt,snumfrmt, repsrvnm, ',
'          reptfrmt,ttfntnam, ttfntsiz, ',
'          pgfntsiz,pgfntnam, mskefrmt, ',
'          pgorient,repodest, ttfntalg,',
'          bdfntalg,pgfntalg, sdatfrmt,',
'          nmbldtyp,nmhdswtp, comnmfwt,',
'          comadfwt,rptitfwt, pgefntwt, ',
'          rpbodfwt,PARFNTNM,PARFNTAL,',
'          PARFNTSZ,PARFNTWT,HDLOGALG,BDFIFNAM',
'     INTO :P342_comfntnm, :P342_comfntsz, :P342_addfntnm,',
'          :P342_addfntsz, :P342_comfntal, :P342_addfntal,',
'          :P342_SHOWHEAD, :P342_showfoot, :P342_pgnofrmt, ',
'          :P342_roundfmt, :P342_snumfrmt, :P342_repsrvnm, ',
'          :P342_reptfrmt, :P342_ttfntnam, :P342_ttfntsiz,',
'          :P342_pgfntsiz, :P342_pgfntnam, :P342_mskefrmt, ',
'          :P342_pgorient, :P342_repodest, :P342_ttfntalg,',
'          :P342_bdfntalg, :P342_pgfntalg, :P342_sdatfrmt, ',
'          :P342_nmbldtyp, :P342_nmhdswtp, :P342_comnmfwt,',
'          :P342_comadfwt, :P342_rptitfwt, :P342_pgefntwt, ',
'          :P342_rpbodfwt,:P342_PARFNTNM,  :P342_PARFNTAL, ',
'          :P342_PARFNTSZ,:P342_PARFNTWT,  :P342_HDLOGALG,',
'          :P342_BDFIFNAM',
'     FROM symenmas',
'    WHERE compcode = ''001'' AND progname = :P342_REPNAM;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'    null;',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'    null;',
'   WHEN OTHERS',
'   THEN',
'    null;',
'END;'))
,p_attribute_02=>'P342_REPNAM'
,p_attribute_03=>'P342_COMFNTNM, P342_COMFNTSZ, P342_ADDFNTNM, P342_ADDFNTSZ, P342_COMFNTAL, P342_ADDFNTAL, P342_SHOWHEAD, P342_SHOWFOOT, P342_PGNOFRMT,  P342_ROUNDFMT, P342_SNUMFRMT, P342_REPSRVNM,  P342_REPTFRMT,P342_TTFNTNAM,P342_TTFNTSIZ,P342_PGFNTSIZ,P342_PGFNTNA'
||'M,P342_MSKEFRMT,P342_PGORIENT,P342_REPODEST,P342_TTFNTALG,P342_BDFNTALG,P342_PGFNTALG,P342_SDATFRMT,P342_NMBLDTYP,P342_NMHDSWTP,P342_COMNMFWT,P342_PGEFNTWT,P342_RPBODFWT,P342_PARFNTNM,P342_PARFNTAL,P342_PARFNTSZ,P342_PARFNTWT, P342_HDLOGALG,P342_BDFI'
||'FNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38300991607728311)
,p_name=>'show_advanced_1'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(38295737444728310)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38301533392728311)
,p_event_id=>wwv_flow_api.id(38300991607728311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P342_SHOWADVFLG'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38302083189728311)
,p_event_id=>wwv_flow_api.id(38300991607728311)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(212481666064893705)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38302474655728311)
,p_name=>'show_para_region'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(126798776817093427)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38302906554728311)
,p_event_id=>wwv_flow_api.id(38302474655728311)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P342_SHOWFLG'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' vname varchar2(500);',
'begin',
' SELECT progdesc ',
' into vname',
'  FROM symenmas',
' WHERE compcode = ''001''',
'   AND progtype = ''R''',
'   AND progname = :P320_REPNAM;',
'  return vname;',
' exception',
'  when no_data_found then',
'   vname := '''';',
'   return vname;',
'  when too_many_rows then',
'   vname := '''';',
'   return vname;',
'  when others then',
'   vname := '''';',
'   return vname;',
'end;'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38303423010728311)
,p_event_id=>wwv_flow_api.id(38302474655728311)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(297271660528745865)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38303976405728311)
,p_event_id=>wwv_flow_api.id(38302474655728311)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(38295737444728310)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38304293688728311)
,p_name=>'setval'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_REPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38304824780728312)
,p_event_id=>wwv_flow_api.id(38304293688728311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P342_REPDET'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' vname varchar2(500);',
'begin',
' SELECT progdesc ',
' into vname',
'  FROM symenmas',
' WHERE compcode = ''001''',
'   AND progtype = ''R''',
'   AND progname = :P342_REPNAM;',
'  return vname;',
' exception',
'  when no_data_found then',
'   vname := '''';',
'   return vname;',
'  when too_many_rows then',
'   vname := '''';',
'   return vname;',
'  when others then',
'   vname := '''';',
'   return vname;',
'end;'))
,p_attribute_07=>'P342_REPNAM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38305276410728312)
,p_name=>'setval_1'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_REPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38305731477728312)
,p_event_id=>wwv_flow_api.id(38305276410728312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38306162613728312)
,p_name=>'set_prgname'
,p_event_sequence=>110
,p_condition_element=>'P342_REPNAM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38306605153728312)
,p_event_id=>wwv_flow_api.id(38306162613728312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' SELECT progdesc ',
' into :P342_REPDET',
'  FROM symenmas',
' WHERE compcode = ''001''',
'   AND progtype = ''R''',
'   AND progname = :P342_REPNAM;',
' exception',
'  when no_data_found then',
'   :P342_REPDET := '''';',
'  when too_many_rows then',
'   :P342_REPDET := '''';',
'  when others then',
'   :P342_REPDET := '''';',
'end;'))
,p_attribute_02=>'P342_REPNAM'
,p_attribute_03=>'P342_REPDET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38307151920728312)
,p_event_id=>wwv_flow_api.id(38306162613728312)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT trim(comfntnm), comfntsz, trim(addfntnm),',
'          addfntsz, comfntal, addfntal,',
'          trim(showhead),trim(showfoot), trim(pgnofrmt), ',
'          roundfmt,snumfrmt, repsrvnm, ',
'          reptfrmt,ttfntnam, ttfntsiz, ',
'          pgfntsiz,pgfntnam, mskefrmt, ',
'          pgorient,repodest, ttfntalg,',
'          bdfntalg,pgfntalg, sdatfrmt,',
'          nmbldtyp,nmhdswtp, comnmfwt,',
'          comadfwt,rptitfwt, pgefntwt, ',
'          rpbodfwt,PARFNTNM,PARFNTAL,',
'          PARFNTSZ,PARFNTWT,HDLOGALG,BDFIFNAM',
'     INTO :P342_comfntnm, :P342_comfntsz, :P342_addfntnm,',
'          :P342_addfntsz, :P342_comfntal, :P342_addfntal,',
'          :P342_SHOWHEAD, :P342_showfoot, :P342_pgnofrmt, ',
'          :P342_roundfmt, :P342_snumfrmt, :P342_repsrvnm, ',
'          :P342_reptfrmt, :P342_ttfntnam, :P342_ttfntsiz,',
'          :P342_pgfntsiz, :P342_pgfntnam, :P342_mskefrmt, ',
'          :P342_pgorient, :P342_repodest, :P342_ttfntalg,',
'          :P342_bdfntalg, :P342_pgfntalg, :P342_sdatfrmt, ',
'          :P342_nmbldtyp, :P342_nmhdswtp, :P342_comnmfwt,',
'          :P342_comadfwt, :P342_rptitfwt, :P342_pgefntwt, ',
'          :P342_rpbodfwt,:P342_PARFNTNM,  :P342_PARFNTAL, ',
'          :P342_PARFNTSZ,:P342_PARFNTWT,  :P342_HDLOGALG,',
'          :P342_BDFIFNAM',
'     FROM symenmas',
'    WHERE compcode = ''001'' AND progname = :P342_REPNAM;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'    null;',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'    null;',
'   WHEN OTHERS',
'   THEN',
'    null;',
'END;',
''))
,p_attribute_02=>'P342_REPNAM'
,p_attribute_03=>'P342_COMFNTNM, P342_COMFNTSZ, P342_ADDFNTNM, P342_ADDFNTSZ, P342_COMFNTAL, P342_ADDFNTAL, P342_SHOWHEAD, P342_SHOWFOOT, P342_PGNOFRMT,  P342_ROUNDFMT, P342_SNUMFRMT, P342_REPSRVNM,  P342_REPTFRMT,P342_TTFNTNAM,P342_TTFNTSIZ,P342_PGFNTSIZ,P342_PGFNTNA'
||'M,P342_MSKEFRMT,P342_PGORIENT,P342_REPODEST,P342_TTFNTALG,P342_BDFNTALG,P342_PGFNTALG,P342_SDATFRMT,P342_NMBLDTYP,P342_NMHDSWTP,P342_COMNMFWT,P342_PGEFNTWT,P342_RPBODFWT,P342_PARFNTNM,P342_PARFNTAL,P342_PARFNTSZ,P342_PARFNTWT, P342_HDLOGALG,P342_BDFI'
||'FNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38307493223728312)
,p_name=>'update_symenmas'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(38296179652728310)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38308030261728312)
,p_event_id=>wwv_flow_api.id(38307493223728312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' if :P342_REPNAM is not null then',
'  update symenmas',
'  set COMFNTNM  = :P342_COMFNTNM,',
'  COMFNTSZ = :P342_COMFNTSZ,',
'  ADDFNTNM = :P342_ADDFNTNM,',
'  ADDFNTSZ = :P342_ADDFNTSZ,',
'  COMFNTAL = :P342_COMFNTAL,',
'  ADDFNTAL = :P342_ADDFNTAL,',
'  BDFIFNAM = :P342_BDFIFNAM,  ',
'  BDFIFSIZ = :P342_BDFIFSIZ,',
'  SHOWHEAD = :P342_SHOWHEAD,',
'  SHOWFOOT = :P342_SHOWFOOT,',
'  PGNOFRMT = :P342_PGNOFRMT,',
'  ROUNDFMT = :P342_ROUNDFMT,',
'  SNUMFRMT = :P342_SNUMFRMT,',
'  REPSRVNM = :P342_REPSRVNM,',
'  REPTFRMT = :P342_REPTFRMT,',
'  TTFNTNAM = :P342_TTFNTNAM,',
'  TTFNTSIZ = :P342_TTFNTSIZ,',
'  PGFNTSIZ = :P342_PGFNTSIZ,',
'  PGFNTNAM = :P342_PGFNTNAM,',
'  MSKEFRMT = :P342_MSKEFRMT,',
'  PGORIENT = :P342_PGORIENT,',
'  REPODEST = :P342_REPODEST,',
'  TTFNTALG = :P342_TTFNTALG,',
'  BDFNTALG = :P342_BDFNTALG,',
'  PGFNTALG = :P342_PGFNTALG,',
'  SDATFRMT = :P342_SDATFRMT,',
'  NMBLDTYP = :P342_NMBLDTYP,',
'  NMHDSWTP = :P342_NMHDSWTP,',
'  COMNMFWT = :P342_COMNMFWT,',
'  COMADFWT = :P342_COMADFWT,',
'  RPTITFWT = :P342_RPTITFWT,',
'  PGEFNTWT = :P342_PGEFNTWT,',
'  RPBODFWT = :P342_RPBODFWT,',
'  PARFNTNM =:P342_PARFNTNM,',
'  PARFNTAL =:P342_PARFNTAL,',
'  PARFNTSZ =:P342_PARFNTSZ,',
'  PARFNTWT =:P342_PARFNTWT,',
'  HDLOGALG =:P342_HDLOGALG',
'  where compcode = ''001''',
'  and progname = :P342_REPNAM;',
' end if;',
'  commit;  ',
'END;'))
,p_attribute_02=>'P342_REPNAM,P342_COMFNTNM,P342_COMFNTSZ,P342_ADDFNTNM,P342_ADDFNTSZ,P342_COMFNTAL,P342_ADDFNTAL,P342_BDFIFSIZ,P342_SHOWHEAD,P342_SHOWFOOT,P342_PGNOFRMT,P342_ROUNDFMT,P342_SNUMFRMT,P342_REPSRVNM,P342_REPTFRMT,P342_TTFNTNAM,P342_TTFNTSIZ,P342_PGFNTSIZ,'
||'P342_PGFNTNAM,P342_MSKEFRMT,P342_PGORIENT,P342_REPODEST,P342_TTFNTALG,P342_BDFNTALG,P342_PGFNTALG,P342_SDATFRMT,P342_NMBLDTYP,P342_NMHDSWTP,P342_COMNMFWT,P342_COMADFWT,P342_RPTITFWT,P342_PGEFNTWT,P342_RPBODFWT,,P342_BDFIFNAMP342_PARFNTNM,P342_PARFNTA'
||'L,P342_PARFNTSZ,P342_PARFNTWT,P342_HDLOGALG,P342_BDFIFNAM'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38308411502728312)
,p_name=>'set_doc'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_DOCTYP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38308946331728312)
,p_event_id=>wwv_flow_api.id(38308411502728312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38309293194728313)
,p_name=>'set_sub'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_SUBTYP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38309831480728313)
,p_event_id=>wwv_flow_api.id(38309293194728313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38310253945728313)
,p_name=>'set_docnum'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_DOCNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38310747744728313)
,p_event_id=>wwv_flow_api.id(38310253945728313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38311136465728313)
,p_name=>'set_acct'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_ACCTCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38311614292728313)
,p_event_id=>wwv_flow_api.id(38311136465728313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38312073765728313)
,p_name=>'set_cst'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_COSTCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38312546038728313)
,p_event_id=>wwv_flow_api.id(38312073765728313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38312913404728313)
,p_name=>'set_prt'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_PRTYCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38313431922728313)
,p_event_id=>wwv_flow_api.id(38312913404728313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38313835569728313)
,p_name=>'set_pstflg'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_POSTFLG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38314366864728313)
,p_event_id=>wwv_flow_api.id(38313835569728313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38314709300728314)
,p_name=>'set_dtf'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_DATEF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38315199792728314)
,p_event_id=>wwv_flow_api.id(38314709300728314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38315851970728314)
,p_name=>'set_dtt'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P342_DATET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38316358633728314)
,p_event_id=>wwv_flow_api.id(38315851970728314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47441432106696340)
,p_name=>'New'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(38296507435728310)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47441560182696341)
,p_event_id=>wwv_flow_api.id(47441432106696340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
