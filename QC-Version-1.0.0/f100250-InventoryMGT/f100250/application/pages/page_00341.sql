prompt --application/pages/page_00341
begin
--   Manifest
--     PAGE: 00341
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
 p_id=>341
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Accounts  Payable Reports'
,p_page_mode=>'MODAL'
,p_step_title=>'Accounts  Payable Reports'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_upd_yyyymmddhh24miss=>'20200102204621'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(126068668123443334)
,p_plug_name=>'Accounts  Payable Reports'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(38249433188683053)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47620987743858279)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(210800646319744422)
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
 p_id=>wwv_flow_api.id(211845077687483102)
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
 p_id=>wwv_flow_api.id(38229025841683036)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(211845077687483102)
,p_button_name=>'AdvancedSettings'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Advance Settings'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38229423958683036)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(211845077687483102)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:319:&SESSION.::&DEBUG.:RP:P319_PARTYCODE,P319_DOCTDATE,P319_DOCTTDAT,P319_POSTFLAG,P319_COSTCODE,P319_DOCTTYPE,P319_SUBTTYPE,P319_DOCNUMBR,P319_ACCTCODE,P319_PROGNAME:&P341_PRTYCDE.,&P341_DATEF.,&P341_DATET.,&P341_POSTFLG.,&P341_COSTCODE.,&P341_DOCTYP.,&P341_SUBTYP.,&P341_DOCNUMBR.,&P341_ACCTCDE.,&P341_REPNAM.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38229874297683037)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(211845077687483102)
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
 p_id=>wwv_flow_api.id(38204143845683031)
,p_name=>'P341_SHOWHEAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38204498294683031)
,p_name=>'P341_NMHDSWTP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38204940198683031)
,p_name=>'P341_HDLOGALG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38205372672683031)
,p_name=>'P341_SHOWFOOT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38205757311683031)
,p_name=>'P341_REPSRVNM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38206101927683031)
,p_name=>'P341_FONTPROMT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38206589594683032)
,p_name=>'P341_ALIGNPROMT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38206963519683032)
,p_name=>'P341_SIZEPROMT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38207375661683032)
,p_name=>'P341_WEAIGHTPROMT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38207788188683032)
,p_name=>'P341_COMFNTNM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38208165545683032)
,p_name=>'P341_COMFNTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38208502522683032)
,p_name=>'P341_COMFNTSZ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38208960132683032)
,p_name=>'P341_COMNMFWT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38209309636683032)
,p_name=>'P341_ADDFNTNM'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38209779607683032)
,p_name=>'P341_ADDFNTAL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38210102634683032)
,p_name=>'P341_ADDFNTSZ'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38210534256683032)
,p_name=>'P341_COMADFWT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38210963174683032)
,p_name=>'P341_TTFNTNAM'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38211340162683033)
,p_name=>'P341_TTFNTALG'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38211713208683033)
,p_name=>'P341_TTFNTSIZ'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38212138150683033)
,p_name=>'P341_RPTITFWT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38212491399683033)
,p_name=>'P341_BDFIFNAM'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38212906714683033)
,p_name=>'P341_BDFIFSIZ'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38213304128683033)
,p_name=>'P341_BDFNTALG'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38213780454683033)
,p_name=>'P341_RPBODFWT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38214113320683033)
,p_name=>'P341_REPTFRMT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38214535110683033)
,p_name=>'P341_PGFNTNAM'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38214916839683033)
,p_name=>'P341_PGFNTALG'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38215303279683033)
,p_name=>'P341_PGFNTSIZ'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38215767345683033)
,p_name=>'P341_PGEFNTWT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38216160149683033)
,p_name=>'P341_PARFNTNM'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38216541120683034)
,p_name=>'P341_PARFNTAL'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38216892630683034)
,p_name=>'P341_PARFNTSZ'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38217322215683034)
,p_name=>'P341_PARFNTWT'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38217748128683034)
,p_name=>'P341_PARFNTWT_1'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38218156970683034)
,p_name=>'P341_PARFNTWT_1_1'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38218570675683034)
,p_name=>'P341_NMBLDTYP'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38218983134683034)
,p_name=>'P341_PGNOFRMT'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38219380170683034)
,p_name=>'P341_PRNTVALU'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38219713105683034)
,p_name=>'P341_MSKEFRMT'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38220140535683034)
,p_name=>'P341_SDATFRMT'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38220579729683034)
,p_name=>'P341_ROUNDFMT'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38220905910683034)
,p_name=>'P341_SNUMFRMT'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
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
 p_id=>wwv_flow_api.id(38221379593683035)
,p_name=>'P341_REPODEST'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38221770035683035)
,p_name=>'P341_PGORIENT'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(126010651855892262)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38222765236683035)
,p_name=>'P341_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(210800646319744422)
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
 p_id=>wwv_flow_api.id(38223161406683035)
,p_name=>'P341_REPNAM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(210800646319744422)
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
 p_id=>wwv_flow_api.id(38223582426683035)
,p_name=>'P341_REPNAM_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(210800646319744422)
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
 p_id=>wwv_flow_api.id(38223942058683035)
,p_name=>'P341_REPDET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(210800646319744422)
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
 p_id=>wwv_flow_api.id(38224364085683035)
,p_name=>'P341_DOCTYP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(210800646319744422)
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
 p_id=>wwv_flow_api.id(38224768317683035)
,p_name=>'P341_SUBTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(210800646319744422)
,p_prompt=>'Sub type'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select distinct a.subttype ',
'from actrndtl a,sydocmas s',
'            where a.compcode = s.compcode',
'            and a.compcode = :compcode',
'            and a.docttype = s.trantype',
'            AND a.subttype = s.subttype',
'            and a.docttype = :P341_DOCTYP',
'            order by a.subttype'))
,p_lov_cascade_parent_items=>'P341_DOCTYP'
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
'            and a.docttype = :P341_DOCTYP',
'            order by a.subttype'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38225178000683035)
,p_name=>'P341_DOCNUMBR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(210800646319744422)
,p_prompt=>'Document No'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT docnumbr ',
'           FROM actrndtl',
'           where COMPCODE=:compcode',
'           and DOCTTYPE=nvl(:P341_DOCTYP,DOCTTYPE)',
'           and subttype=nvl(:P341_SUBTYP,subttype)',
''))
,p_lov_cascade_parent_items=>'P341_DOCTYP,P341_SUBTYP'
,p_ajax_items_to_submit=>'DOCTYP,P341_SUBTYP'
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
 p_id=>wwv_flow_api.id(38225548056683036)
,p_name=>'P341_ACCTCDE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(210800646319744422)
,p_prompt=>'Account Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT s.acctname s,a.acctcode',
'           FROM actrndtl a, sychrtac s',
'          WHERE a.compcode = :compcode',
'            AND a.acctcode = s.acctcode',
'            and a.compcode = s.compcode',
'            AND docttype = NVL (:P341_DOCTYP, docttype)',
'            AND subttype = NVL (:P341_SUBTYP, subttype)',
'            AND docnumbr = NVL (:P341_DOCNUMBR, docnumbr)',
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
 p_id=>wwv_flow_api.id(38225926229683036)
,p_name=>'P341_COSTCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(210800646319744422)
,p_prompt=>'Cost Center'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct  s.costdesc c,s.costcode',
'  FROM syjobmas s,actrndtl a',
' WHERE a.compcode = :compcode',
'            AND a.compcode = s.compcode',
'            AND a.COSTCODE = s.COSTCODE',
'            AND docttype = NVL (:P341_DOCTYP, docttype)',
'            AND subttype = NVL (:P341_SUBTYP, subttype)',
'            AND docnumbr = NVL (:P341_DOCNUMBR, docnumbr)',
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
 p_id=>wwv_flow_api.id(38226341773683036)
,p_name=>'P341_PRTYCDE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(210800646319744422)
,p_prompt=>'Party'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct partycde||''-''||prtyname p,partycde',
'    FROM sycompty s,actrndtl a',
' WHERE a.compcode = :compcode',
' and a.compcode = s.compcode',
'            AND a.SUBLEDCD = s.PARTYCDE',
'            AND docttype = NVL (:P341_DOCTYP, docttype)',
'            AND subttype = NVL (:P341_SUBTYP, subttype)',
'            AND docnumbr = NVL (:P341_DOCNUMBR, docnumbr)',
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
 p_id=>wwv_flow_api.id(38226758847683036)
,p_name=>'P341_POSTFLG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(210800646319744422)
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
 p_id=>wwv_flow_api.id(38227188736683036)
,p_name=>'P341_DATEF'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(210800646319744422)
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
 p_id=>wwv_flow_api.id(38227516556683036)
,p_name=>'P341_DATET'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(210800646319744422)
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
 p_id=>wwv_flow_api.id(38227956013683036)
,p_name=>'P341_SHOWFLG'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(210800646319744422)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38228324719683036)
,p_name=>'P341_SHOWADVFLG'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(210800646319744422)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38230205609683050)
,p_name=>'show_para_region'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(126068668123443334)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38230697443683050)
,p_event_id=>wwv_flow_api.id(38230205609683050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P341_SHOWFLG'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38231216516683050)
,p_event_id=>wwv_flow_api.id(38230205609683050)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(210800646319744422)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38231709852683050)
,p_event_id=>wwv_flow_api.id(38230205609683050)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(38229025841683036)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38232119359683050)
,p_name=>'hide_region'
,p_event_sequence=>20
,p_condition_element=>'P341_SHOWFLG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38232665656683050)
,p_event_id=>wwv_flow_api.id(38232119359683050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(210800646319744422)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38233130102683050)
,p_event_id=>wwv_flow_api.id(38232119359683050)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(38229025841683036)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38233543272683050)
,p_name=>'show_advanced'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(38229025841683036)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38234033257683050)
,p_event_id=>wwv_flow_api.id(38233543272683050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P341_SHOWADVFLG'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38234545622683051)
,p_event_id=>wwv_flow_api.id(38233543272683050)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(126010651855892262)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38234931571683051)
,p_name=>'hide_region_adv'
,p_event_sequence=>90
,p_condition_element=>'P341_SHOWADVFLG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38235428337683051)
,p_event_id=>wwv_flow_api.id(38234931571683051)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(126010651855892262)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38235809526683051)
,p_name=>'set_prgname'
,p_event_sequence=>100
,p_condition_element=>'P341_REPNAM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38236380553683051)
,p_event_id=>wwv_flow_api.id(38235809526683051)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' SELECT progdesc ',
' into :P341_REPDET',
'  FROM symenmas',
' WHERE compcode = ''001''',
'   AND progtype = ''R''',
'   AND progname = :P341_REPNAM;',
' exception',
'  when no_data_found then',
'   :P341_REPDET := '''';',
'  when too_many_rows then',
'   :P341_REPDET := '''';',
'  when others then',
'   :P341_REPDET := '''';',
'end;'))
,p_attribute_02=>'P341_REPNAM'
,p_attribute_03=>'P341_REPDET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38236858403683051)
,p_event_id=>wwv_flow_api.id(38235809526683051)
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
'          PARFNTSZ,PARFNTWT,HDLOGALG,',
'          BDFIFNAM',
'     INTO :P341_comfntnm, :P341_comfntsz, :P341_addfntnm,',
'          :P341_addfntsz, :P341_comfntal, :P341_addfntal,',
'          :P341_SHOWHEAD, :P341_showfoot, :P341_pgnofrmt, ',
'          :P341_roundfmt, :P341_snumfrmt, :P341_repsrvnm, ',
'          :P341_reptfrmt, :P341_ttfntnam, :P341_ttfntsiz,',
'          :P341_pgfntsiz, :P341_pgfntnam, :P341_mskefrmt, ',
'          :P341_pgorient, :P341_repodest, :P341_ttfntalg,',
'          :P341_bdfntalg, :P341_pgfntalg, :P341_sdatfrmt, ',
'          :P341_nmbldtyp, :P341_nmhdswtp, :P341_comnmfwt,',
'          :P341_comadfwt, :P341_rptitfwt, :P341_pgefntwt, ',
'          :P341_rpbodfwt,:P341_PARFNTNM,  :P341_PARFNTAL, ',
'          :P341_PARFNTSZ,:P341_PARFNTWT,  :P341_HDLOGALG,',
'          :P341_BDFIFNAM',
'     FROM symenmas',
'    WHERE compcode = ''001'' AND progname = :P341_REPNAM;',
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
,p_attribute_02=>'P341_REPNAM'
,p_attribute_03=>'P341_COMFNTNM, P341_COMFNTSZ, P341_ADDFNTNM, P341_ADDFNTSZ, P341_COMFNTAL, P341_ADDFNTAL, P341_SHOWHEAD, P341_SHOWFOOT, P341_PGNOFRMT,  P341_ROUNDFMT, P341_SNUMFRMT, P341_REPSRVNM,  P341_REPTFRMT,P341_TTFNTNAM,P341_TTFNTSIZ,P341_PGFNTSIZ,P341_PGFNTNA'
||'M,P341_MSKEFRMT,P341_PGORIENT,P341_REPODEST,P341_TTFNTALG,P341_BDFNTALG,P341_PGFNTALG,P341_SDATFRMT,P341_NMBLDTYP,P341_NMHDSWTP,P341_COMNMFWT,P341_PGEFNTWT,P341_RPBODFWT,P341_PARFNTNM,P341_PARFNTAL,P341_PARFNTSZ,P341_PARFNTWT, P341_HDLOGALG,P341_BDFI'
||'FNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38237268078683051)
,p_name=>'setval'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P341_REPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38237726934683051)
,p_event_id=>wwv_flow_api.id(38237268078683051)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P341_REPDET'
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
'   AND progname = :P341_REPNAM;',
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
,p_attribute_07=>'P341_REPNAM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38238176693683051)
,p_name=>'get_value_symenmas'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P341_REPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38238590261683051)
,p_event_id=>wwv_flow_api.id(38238176693683051)
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
'          PARFNTSZ,PARFNTWT,HDLOGALG,',
'          BDFIFNAM',
'     INTO :P341_comfntnm, :P341_comfntsz, :P341_addfntnm,',
'          :P341_addfntsz, :P341_comfntal, :P341_addfntal,',
'          :P341_SHOWHEAD, :P341_showfoot, :P341_pgnofrmt, ',
'          :P341_roundfmt, :P341_snumfrmt, :P341_repsrvnm, ',
'          :P341_reptfrmt, :P341_ttfntnam, :P341_ttfntsiz,',
'          :P341_pgfntsiz, :P341_pgfntnam, :P341_mskefrmt, ',
'          :P341_pgorient, :P341_repodest, :P341_ttfntalg,',
'          :P341_bdfntalg, :P341_pgfntalg, :P341_sdatfrmt, ',
'          :P341_nmbldtyp, :P341_nmhdswtp, :P341_comnmfwt,',
'          :P341_comadfwt, :P341_rptitfwt, :P341_pgefntwt, ',
'          :P341_rpbodfwt,:P341_PARFNTNM,  :P341_PARFNTAL, ',
'          :P341_PARFNTSZ,:P341_PARFNTWT,  :P341_HDLOGALG,',
'          :P341_BDFIFNAM',
'     FROM symenmas',
'    WHERE compcode = ''001'' AND progname = :P341_REPNAM;',
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
,p_attribute_02=>'P341_REPNAM'
,p_attribute_03=>'P341_COMFNTNM, P341_COMFNTSZ, P341_ADDFNTNM, P341_ADDFNTSZ, P341_COMFNTAL, P341_ADDFNTAL, P341_SHOWHEAD, P341_SHOWFOOT, P341_PGNOFRMT,  P341_ROUNDFMT, P341_SNUMFRMT, P341_REPSRVNM,  P341_REPTFRMT,P341_TTFNTNAM,P341_TTFNTSIZ,P341_PGFNTSIZ,P341_PGFNTNA'
||'M,P341_MSKEFRMT,P341_PGORIENT,P341_REPODEST,P341_TTFNTALG,P341_BDFNTALG,P341_PGFNTALG,P341_SDATFRMT,P341_NMBLDTYP,P341_NMHDSWTP,P341_COMNMFWT,P341_PGEFNTWT,P341_RPBODFWT,P341_PARFNTNM,P341_PARFNTAL,P341_PARFNTSZ,P341_PARFNTWT, P341_HDLOGALG,P341_BDFI'
||'FNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38239025935683051)
,p_name=>'setval_1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P341_REPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38239513647683051)
,p_event_id=>wwv_flow_api.id(38239025935683051)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38239939738683052)
,p_name=>'update_menmas'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(38229423958683036)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38240461083683052)
,p_event_id=>wwv_flow_api.id(38239939738683052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  update symenmas',
'  set COMFNTNM  = :P341_COMFNTNM,',
'  COMFNTSZ = :P341_COMFNTSZ,',
'  ADDFNTNM = :P341_ADDFNTNM,',
'  ADDFNTSZ = :P341_ADDFNTSZ,',
'  COMFNTAL = :P341_COMFNTAL,',
'  ADDFNTAL = :P341_ADDFNTAL,',
'  BDFIFNAM = :P341_BDFIFNAM,  ',
'  BDFIFSIZ = :P341_BDFIFSIZ,',
'  SHOWHEAD = :P341_SHOWHEAD,',
'  SHOWFOOT = :P341_SHOWFOOT,',
'  PGNOFRMT = :P341_PGNOFRMT,',
'  ROUNDFMT = :P341_ROUNDFMT,',
'  SNUMFRMT = :P341_SNUMFRMT,',
'  REPSRVNM = :P341_REPSRVNM,',
'  REPTFRMT = :P341_REPTFRMT,',
'  TTFNTNAM = :P341_TTFNTNAM,',
'  TTFNTSIZ = :P341_TTFNTSIZ,',
'  PGFNTSIZ = :P341_PGFNTSIZ,',
'  PGFNTNAM = :P341_PGFNTNAM,',
'  MSKEFRMT = :P341_MSKEFRMT,',
'  PGORIENT = :P341_PGORIENT,',
'  REPODEST = :P341_REPODEST,',
'  TTFNTALG = :P341_TTFNTALG,',
'  BDFNTALG = :P341_BDFNTALG,',
'  PGFNTALG = :P341_PGFNTALG,',
'  SDATFRMT = :P341_SDATFRMT,',
'  NMBLDTYP = :P341_NMBLDTYP,',
'  NMHDSWTP = :P341_NMHDSWTP,',
'  COMNMFWT = :P341_COMNMFWT,',
'  COMADFWT = :P341_COMADFWT,',
'  RPTITFWT = :P341_RPTITFWT,',
'  PGEFNTWT = :P341_PGEFNTWT,',
'  RPBODFWT = :P341_RPBODFWT,',
'  PARFNTNM =:P341_PARFNTNM,',
'  PARFNTAL =:P341_PARFNTAL,',
'  PARFNTSZ =:P341_PARFNTSZ,',
'  PARFNTWT =:P341_PARFNTWT,',
'  HDLOGALG =:P341_HDLOGALG',
'  where compcode = ''001''',
'  and progname = :P341_REPNAM;',
'  ',
'  commit;  ',
'END;'))
,p_attribute_02=>'P341_REPNAM,P341_COMFNTNM,P341_COMFNTSZ,P341_ADDFNTNM,P341_ADDFNTSZ,P341_COMFNTAL,P341_ADDFNTAL,P341_BDFIFSIZ,P341_SHOWHEAD,P341_SHOWFOOT,P341_PGNOFRMT,P341_ROUNDFMT,P341_SNUMFRMT,P341_REPSRVNM,P341_REPTFRMT,P341_TTFNTNAM,P341_TTFNTSIZ,P341_PGFNTSIZ,'
||'P341_PGFNTNAM,P341_MSKEFRMT,P341_PGORIENT,P341_REPODEST,P341_TTFNTALG,P341_BDFNTALG,P341_PGFNTALG,P341_SDATFRMT,P341_NMBLDTYP,P341_NMHDSWTP,P341_COMNMFWT,P341_COMADFWT,P341_RPTITFWT,P341_PGEFNTWT,P341_RPBODFWT,,P341_BDFIFNAMP341_PARFNTNM,P341_PARFNTA'
||'L,P341_PARFNTSZ,P341_PARFNTWT,P341_HDLOGALG,P341_BDFIFNAM'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38240930914683052)
,p_event_id=>wwv_flow_api.id(38239939738683052)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38241384927683052)
,p_name=>'set_doc'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P341_DOCTYP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38241857946683052)
,p_event_id=>wwv_flow_api.id(38241384927683052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38242207826683052)
,p_name=>'set_sub'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P341_SUBTYP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38242693166683052)
,p_event_id=>wwv_flow_api.id(38242207826683052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38243183777683052)
,p_name=>'set_docnum'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P341_DOCNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38243622530683052)
,p_event_id=>wwv_flow_api.id(38243183777683052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38244004761683052)
,p_name=>'set_acct'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P341_ACCTCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38244517185683052)
,p_event_id=>wwv_flow_api.id(38244004761683052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38244969123683052)
,p_name=>'set_cst'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P341_COSTCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38245434669683052)
,p_event_id=>wwv_flow_api.id(38244969123683052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38245869144683053)
,p_name=>'set_prt'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P341_PRTYCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38246310507683053)
,p_event_id=>wwv_flow_api.id(38245869144683053)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38246724144683053)
,p_name=>'set_flg'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P341_POSTFLG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38247254717683053)
,p_event_id=>wwv_flow_api.id(38246724144683053)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38247638101683053)
,p_name=>'set_dtf'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P341_DATEF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38248141586683053)
,p_event_id=>wwv_flow_api.id(38247638101683053)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38248546274683053)
,p_name=>'set_dtt'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P341_DATET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38249075963683053)
,p_event_id=>wwv_flow_api.id(38248546274683053)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47440830076696334)
,p_name=>'New'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(38229874297683037)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47440893466696335)
,p_event_id=>wwv_flow_api.id(47440830076696334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
