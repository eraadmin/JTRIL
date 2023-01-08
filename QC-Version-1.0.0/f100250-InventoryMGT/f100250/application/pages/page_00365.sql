prompt --application/pages/page_00365
begin
--   Manifest
--     PAGE: 00365
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
 p_id=>365
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Sales All Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Sales All Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_upd_yyyymmddhh24miss=>'20200102204621'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(147021993152293310)
,p_plug_name=>'Stock All Report'
,p_region_template_options=>'i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(41142311600326316)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47620987743858279)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(317494876863945748)
,p_plug_name=>'Parameter '
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
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
 p_id=>wwv_flow_api.id(318539308231684428)
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
 p_id=>wwv_flow_api.id(35563283525364355)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(318539308231684428)
,p_button_name=>'Excell'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sale Report Excell'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:397:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43946018499500916)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(318539308231684428)
,p_button_name=>'AdvancedSettings'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Advance Settings'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43946481696500916)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(318539308231684428)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:389:&SESSION.::&DEBUG.:RP,365:P389_PARTYCODE,P389_DOCTDATE,P389_DOCTTDAT,P389_COSTCODE,P389_CATEGORY,P389_PODUCTYPE,P389_DOCNUMBR,P389_SMANCDE,P389_PROGNAME:&P365_PRTYCDE.,&P365_DATEF.,&P365_DATET.,&P365_COSTCODE.,&P365_DOCTYP.,&P365_SUBTYP.,&P365_DOCNUMBR.,&P365_POSTFLG.,&P365_REPNAM.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43946829137500916)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(318539308231684428)
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
 p_id=>wwv_flow_api.id(43921461035500909)
,p_name=>'P365_SHOWHEAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43921888372500909)
,p_name=>'P365_NMHDSWTP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43922205950500910)
,p_name=>'P365_HDLOGALG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43922681720500910)
,p_name=>'P365_SHOWFOOT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43923058533500910)
,p_name=>'P365_REPSRVNM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43923481035500910)
,p_name=>'P365_FONTPROMT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43923885942500910)
,p_name=>'P365_ALIGNPROMT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43924202641500910)
,p_name=>'P365_SIZEPROMT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43924638275500910)
,p_name=>'P365_WEAIGHTPROMT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43925072587500910)
,p_name=>'P365_COMFNTNM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43925469020500910)
,p_name=>'P365_COMFNTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43925824270500910)
,p_name=>'P365_COMFNTSZ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43926237704500911)
,p_name=>'P365_COMNMFWT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43926610517500911)
,p_name=>'P365_ADDFNTNM'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43927041738500911)
,p_name=>'P365_ADDFNTAL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43927462226500911)
,p_name=>'P365_ADDFNTSZ'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43927858068500911)
,p_name=>'P365_COMADFWT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43928272361500911)
,p_name=>'P365_TTFNTNAM'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43928622012500911)
,p_name=>'P365_TTFNTALG'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43929016120500911)
,p_name=>'P365_TTFNTSIZ'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43929428613500911)
,p_name=>'P365_RPTITFWT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43929831991500911)
,p_name=>'P365_BDFIFNAM'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43930194234500911)
,p_name=>'P365_BDFIFSIZ'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43930628910500911)
,p_name=>'P365_BDFNTALG'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43931058761500911)
,p_name=>'P365_RPBODFWT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43931404586500912)
,p_name=>'P365_REPTFRMT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43931880778500912)
,p_name=>'P365_PGFNTNAM'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43932190290500912)
,p_name=>'P365_PGFNTALG'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43932623720500912)
,p_name=>'P365_PGFNTSIZ'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43933001242500912)
,p_name=>'P365_PGEFNTWT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43933464782500912)
,p_name=>'P365_PARFNTNM'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43933792609500912)
,p_name=>'P365_PARFNTAL'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43934209598500912)
,p_name=>'P365_PARFNTSZ'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43934625664500912)
,p_name=>'P365_PARFNTWT'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43935018963500912)
,p_name=>'P365_PARFNTWT_1'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43935463819500912)
,p_name=>'P365_PARFNTWT_1_1'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43935831831500912)
,p_name=>'P365_NMBLDTYP'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43936252575500913)
,p_name=>'P365_PGNOFRMT'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43936652939500913)
,p_name=>'P365_PRNTVALU'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43937069230500913)
,p_name=>'P365_MSKEFRMT'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43937489249500913)
,p_name=>'P365_SDATFRMT'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43937860358500913)
,p_name=>'P365_ROUNDFMT'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43938246651500913)
,p_name=>'P365_SNUMFRMT'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
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
 p_id=>wwv_flow_api.id(43938664096500914)
,p_name=>'P365_REPODEST'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43939054306500914)
,p_name=>'P365_PGORIENT'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(232704882400093588)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43939705374500914)
,p_name=>'P365_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(317494876863945748)
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
 p_id=>wwv_flow_api.id(43940167056500914)
,p_name=>'P365_REPNAM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(317494876863945748)
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
 p_id=>wwv_flow_api.id(43940519663500914)
,p_name=>'P365_REPNAM_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(317494876863945748)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43940933857500914)
,p_name=>'P365_REPDET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(317494876863945748)
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
 p_id=>wwv_flow_api.id(43941339768500914)
,p_name=>'P365_DOCTYP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(317494876863945748)
,p_prompt=>'Category'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''CTG''',
' and compcode=:COMPCODE',
'order by 1 ;',
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
 p_id=>wwv_flow_api.id(43941750248500915)
,p_name=>'P365_SUBTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(317494876863945748)
,p_prompt=>'Product type'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''PTY''',
' and compcode=:COMPCODE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P365_DOCTYP'
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
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select distinct a.subttype s,a.subttype',
'from actrndtl a,sydocmas s',
'            where a.compcode = s.compcode',
'            and a.compcode = :compcode',
'            and a.docttype = s.trantype',
'            AND a.subttype = s.subttype',
'            and a.docttype = :P365_DOCTYP',
'            order by a.subttype'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43942142845500915)
,p_name=>'P365_DOCNUMBR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(317494876863945748)
,p_prompt=>'Document No'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT docnumbr ',
'           FROM actrndtl',
'           where COMPCODE=:compcode',
'           and DOCTTYPE=nvl(:P365_DOCTYP,DOCTTYPE)',
'           and subttype=nvl(:P365_SUBTYP,subttype)',
'   --    ORDER BY  doctdate desc'))
,p_lov_cascade_parent_items=>'P365_DOCTYP,P365_SUBTYP'
,p_ajax_items_to_submit=>'P365_DOCTYP,P365_SUBTYP'
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
 p_id=>wwv_flow_api.id(43942510523500915)
,p_name=>'P365_ACCTCDE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(317494876863945748)
,p_prompt=>'Item Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.ITEMCODE ,a.ITEMDES1',
'           FROM nmitemas a',
'          WHERE a.compcode = :compcode',
'          and FINISHGD=''Y''',
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
 p_id=>wwv_flow_api.id(43942924758500915)
,p_name=>'P365_COSTCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(317494876863945748)
,p_prompt=>'Cost Center'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct  s.costdesc c,s.costcode',
'  FROM syjobmas s,actrndtl a',
' WHERE a.compcode = :compcode',
'            AND a.compcode = s.compcode',
'            AND a.COSTCODE = s.COSTCODE',
'            AND docttype = NVL (:P365_DOCTYP, docttype)',
'            AND subttype = NVL (:P365_SUBTYP, subttype)',
'            AND docnumbr = NVL (:P365_DOCNUMBR, docnumbr)',
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
 p_id=>wwv_flow_api.id(43943375322500915)
,p_name=>'P365_PRTYCDE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(317494876863945748)
,p_prompt=>'Customer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct  partycde||''-''||prtyname p, partycde ',
'    FROM sycompty s,actrndtl a',
' WHERE a.compcode = :compcode',
' and a.compcode = s.compcode',
'            AND a.SUBLEDCD = s.PARTYCDE',
'            AND docttype = NVL (:P365_DOCTYP, docttype)',
'            AND subttype = NVL (:P365_SUBTYP, subttype)',
'            AND docnumbr = NVL (:P365_DOCNUMBR, docnumbr)',
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
 p_id=>wwv_flow_api.id(43943700540500915)
,p_name=>'P365_POSTFLG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(317494876863945748)
,p_prompt=>'Sales Executive'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT  s.smancode||''-''||s.smanname d,s.smancode r',
'           FROM syjobmas j, nmwhsmas w, nmsmnmas s',
'          WHERE j.compcode = :compcode',
'            AND w.costcode = j.costcode',
'            AND w.compcode = j.compcode',
'            AND w.compcode = s.compcode',
'          --  AND w.regncode = s.smantype',
'            AND w.srvcwflg = ''N''',
'            --AND s.smantype <> ''RE''',
'            AND w.warecode = s.suprcode'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...select value....'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
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
 p_id=>wwv_flow_api.id(43944156965500915)
,p_name=>'P365_DATEF'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(317494876863945748)
,p_prompt=>'From Date'
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
 p_id=>wwv_flow_api.id(43944504853500915)
,p_name=>'P365_DATET'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(317494876863945748)
,p_prompt=>'To Date'
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
 p_id=>wwv_flow_api.id(43944905278500916)
,p_name=>'P365_SHOWFLG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(317494876863945748)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43945338896500916)
,p_name=>'P365_SHOWADVFLG'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(317494876863945748)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43965489046500924)
,p_name=>'hide_region'
,p_event_sequence=>20
,p_condition_element=>'P365_SHOWFLG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43966420618500924)
,p_event_id=>wwv_flow_api.id(43965489046500924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(317494876863945748)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43965974441500924)
,p_event_id=>wwv_flow_api.id(43965489046500924)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(43946018499500916)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43947207791500920)
,p_name=>'hide_region_adv'
,p_event_sequence=>30
,p_condition_element=>'P365_SHOWADVFLG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43947699909500920)
,p_event_id=>wwv_flow_api.id(43947207791500920)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(232704882400093588)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43948123559500920)
,p_name=>'set_subtyp'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_DOCTYP'
,p_condition_element=>'P365_DOCTYP'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43948642545500921)
,p_event_id=>wwv_flow_api.id(43948123559500920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P365_SUBTYP'
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
'            and a.docttype = :P365_DOCTYP;',
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
,p_attribute_07=>'P365_DOCTYP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43949023488500921)
,p_name=>'get_value_symenmas'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_REPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43949572111500921)
,p_event_id=>wwv_flow_api.id(43949023488500921)
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
'     INTO :P365_comfntnm, :P365_comfntsz, :P365_addfntnm,',
'          :P365_addfntsz, :P365_comfntal, :P365_addfntal,',
'          :P365_SHOWHEAD, :P365_showfoot, :P365_pgnofrmt, ',
'          :P365_roundfmt, :P365_snumfrmt, :P365_repsrvnm, ',
'          :P365_reptfrmt, :P365_ttfntnam, :P365_ttfntsiz,',
'          :P365_pgfntsiz, :P365_pgfntnam, :P365_mskefrmt, ',
'          :P365_pgorient, :P365_repodest, :P365_ttfntalg,',
'          :P365_bdfntalg, :P365_pgfntalg, :P365_sdatfrmt, ',
'          :P365_nmbldtyp, :P365_nmhdswtp, :P365_comnmfwt,',
'          :P365_comadfwt, :P365_rptitfwt, :P365_pgefntwt, ',
'          :P365_rpbodfwt,:P365_PARFNTNM,  :P365_PARFNTAL, ',
'          :P365_PARFNTSZ,:P365_PARFNTWT,  :P365_HDLOGALG,',
'          :P365_BDFIFNAM',
'     FROM symenmas',
'    WHERE compcode = ''001'' AND progname = :P365_REPNAM;',
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
,p_attribute_02=>'P365_REPNAM'
,p_attribute_03=>'P365_COMFNTNM, P365_COMFNTSZ, P365_ADDFNTNM, P365_ADDFNTSZ, P365_COMFNTAL, P365_ADDFNTAL, P365_SHOWHEAD, P365_SHOWFOOT, P365_PGNOFRMT,  P365_ROUNDFMT, P365_SNUMFRMT, P365_REPSRVNM,  P365_REPTFRMT,P365_TTFNTNAM,P365_TTFNTSIZ,P365_PGFNTSIZ,P365_PGFNTNA'
||'M,P365_MSKEFRMT,P365_PGORIENT,P365_REPODEST,P365_TTFNTALG,P365_BDFNTALG,P365_PGFNTALG,P365_SDATFRMT,P365_NMBLDTYP,P365_NMHDSWTP,P365_COMNMFWT,P365_PGEFNTWT,P365_RPBODFWT,P365_PARFNTNM,P365_PARFNTAL,P365_PARFNTSZ,P365_PARFNTWT, P365_HDLOGALG,P365_BDFI'
||'FNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43949914365500921)
,p_name=>'show_advanced_1'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43946018499500916)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43950404636500921)
,p_event_id=>wwv_flow_api.id(43949914365500921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P365_SHOWADVFLG'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43950914341500921)
,p_event_id=>wwv_flow_api.id(43949914365500921)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(232704882400093588)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43951359915500921)
,p_name=>'show_para_region'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(147021993152293310)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43951862432500921)
,p_event_id=>wwv_flow_api.id(43951359915500921)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P365_SHOWFLG'
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
 p_id=>wwv_flow_api.id(43952293764500921)
,p_event_id=>wwv_flow_api.id(43951359915500921)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(317494876863945748)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43952799859500922)
,p_event_id=>wwv_flow_api.id(43951359915500921)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(43946018499500916)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43953198622500922)
,p_name=>'setval'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_REPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43953778314500922)
,p_event_id=>wwv_flow_api.id(43953198622500922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P365_REPDET'
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
'   AND progname = :P365_REPNAM;',
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
,p_attribute_07=>'P365_REPNAM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43954180143500922)
,p_name=>'setval_1'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_REPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43954645724500922)
,p_event_id=>wwv_flow_api.id(43954180143500922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43955028403500922)
,p_name=>'set_prgname'
,p_event_sequence=>110
,p_condition_element=>'P365_REPNAM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43955506228500922)
,p_event_id=>wwv_flow_api.id(43955028403500922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' SELECT progdesc ',
' into :P365_REPDET',
'  FROM symenmas',
' WHERE compcode = ''001''',
'   AND progtype = ''R''',
'   AND progname = :P365_REPNAM;',
' exception',
'  when no_data_found then',
'   :P365_REPDET := '''';',
'  when too_many_rows then',
'   :P365_REPDET := '''';',
'  when others then',
'   :P365_REPDET := '''';',
'end;'))
,p_attribute_02=>'P365_REPNAM'
,p_attribute_03=>'P365_REPDET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43956015460500922)
,p_event_id=>wwv_flow_api.id(43955028403500922)
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
'     INTO :P365_comfntnm, :P365_comfntsz, :P365_addfntnm,',
'          :P365_addfntsz, :P365_comfntal, :P365_addfntal,',
'          :P365_SHOWHEAD, :P365_showfoot, :P365_pgnofrmt, ',
'          :P365_roundfmt, :P365_snumfrmt, :P365_repsrvnm, ',
'          :P365_reptfrmt, :P365_ttfntnam, :P365_ttfntsiz,',
'          :P365_pgfntsiz, :P365_pgfntnam, :P365_mskefrmt, ',
'          :P365_pgorient, :P365_repodest, :P365_ttfntalg,',
'          :P365_bdfntalg, :P365_pgfntalg, :P365_sdatfrmt, ',
'          :P365_nmbldtyp, :P365_nmhdswtp, :P365_comnmfwt,',
'          :P365_comadfwt, :P365_rptitfwt, :P365_pgefntwt, ',
'          :P365_rpbodfwt,:P365_PARFNTNM,  :P365_PARFNTAL, ',
'          :P365_PARFNTSZ,:P365_PARFNTWT,  :P365_HDLOGALG,',
'          :P365_BDFIFNAM',
'     FROM symenmas',
'    WHERE compcode = ''001'' AND progname = :P365_REPNAM;',
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
,p_attribute_02=>'P365_REPNAM'
,p_attribute_03=>'P365_COMFNTNM, P365_COMFNTSZ, P365_ADDFNTNM, P365_ADDFNTSZ, P365_COMFNTAL, P365_ADDFNTAL, P365_SHOWHEAD, P365_SHOWFOOT, P365_PGNOFRMT,  P365_ROUNDFMT, P365_SNUMFRMT, P365_REPSRVNM,  P365_REPTFRMT,P365_TTFNTNAM,P365_TTFNTSIZ,P365_PGFNTSIZ,P365_PGFNTNA'
||'M,P365_MSKEFRMT,P365_PGORIENT,P365_REPODEST,P365_TTFNTALG,P365_BDFNTALG,P365_PGFNTALG,P365_SDATFRMT,P365_NMBLDTYP,P365_NMHDSWTP,P365_COMNMFWT,P365_PGEFNTWT,P365_RPBODFWT,P365_PARFNTNM,P365_PARFNTAL,P365_PARFNTSZ,P365_PARFNTWT, P365_HDLOGALG,P365_BDFI'
||'FNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43956415191500922)
,p_name=>'update_symenmas'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43946481696500916)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43956936112500922)
,p_event_id=>wwv_flow_api.id(43956415191500922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' if :P365_REPNAM is not null then',
'  update symenmas',
'  set COMFNTNM  = :P365_COMFNTNM,',
'  COMFNTSZ = :P365_COMFNTSZ,',
'  ADDFNTNM = :P365_ADDFNTNM,',
'  ADDFNTSZ = :P365_ADDFNTSZ,',
'  COMFNTAL = :P365_COMFNTAL,',
'  ADDFNTAL = :P365_ADDFNTAL,',
'  BDFIFNAM = :P365_BDFIFNAM,  ',
'  BDFIFSIZ = :P365_BDFIFSIZ,',
'  SHOWHEAD = :P365_SHOWHEAD,',
'  SHOWFOOT = :P365_SHOWFOOT,',
'  PGNOFRMT = :P365_PGNOFRMT,',
'  ROUNDFMT = :P365_ROUNDFMT,',
'  SNUMFRMT = :P365_SNUMFRMT,',
'  REPSRVNM = :P365_REPSRVNM,',
'  REPTFRMT = :P365_REPTFRMT,',
'  TTFNTNAM = :P365_TTFNTNAM,',
'  TTFNTSIZ = :P365_TTFNTSIZ,',
'  PGFNTSIZ = :P365_PGFNTSIZ,',
'  PGFNTNAM = :P365_PGFNTNAM,',
'  MSKEFRMT = :P365_MSKEFRMT,',
'  PGORIENT = :P365_PGORIENT,',
'  REPODEST = :P365_REPODEST,',
'  TTFNTALG = :P365_TTFNTALG,',
'  BDFNTALG = :P365_BDFNTALG,',
'  PGFNTALG = :P365_PGFNTALG,',
'  SDATFRMT = :P365_SDATFRMT,',
'  NMBLDTYP = :P365_NMBLDTYP,',
'  NMHDSWTP = :P365_NMHDSWTP,',
'  COMNMFWT = :P365_COMNMFWT,',
'  COMADFWT = :P365_COMADFWT,',
'  RPTITFWT = :P365_RPTITFWT,',
'  PGEFNTWT = :P365_PGEFNTWT,',
'  RPBODFWT = :P365_RPBODFWT,',
'  PARFNTNM =:P365_PARFNTNM,',
'  PARFNTAL =:P365_PARFNTAL,',
'  PARFNTSZ =:P365_PARFNTSZ,',
'  PARFNTWT =:P365_PARFNTWT,',
'  HDLOGALG =:P365_HDLOGALG',
'  where compcode = ''001''',
'  and progname = :P365_REPNAM;',
' end if;',
'  commit;  ',
'END;'))
,p_attribute_02=>'P365_REPNAM,P365_COMFNTNM,P365_COMFNTSZ,P365_ADDFNTNM,P365_ADDFNTSZ,P365_COMFNTAL,P365_ADDFNTAL,P365_BDFIFSIZ,P365_SHOWHEAD,P365_SHOWFOOT,P365_PGNOFRMT,P365_ROUNDFMT,P365_SNUMFRMT,P365_REPSRVNM,P365_REPTFRMT,P365_TTFNTNAM,P365_TTFNTSIZ,P365_PGFNTSIZ,'
||'P365_PGFNTNAM,P365_MSKEFRMT,P365_PGORIENT,P365_REPODEST,P365_TTFNTALG,P365_BDFNTALG,P365_PGFNTALG,P365_SDATFRMT,P365_NMBLDTYP,P365_NMHDSWTP,P365_COMNMFWT,P365_COMADFWT,P365_RPTITFWT,P365_PGEFNTWT,P365_RPBODFWT,,P365_BDFIFNAMP365_PARFNTNM,P365_PARFNTA'
||'L,P365_PARFNTSZ,P365_PARFNTWT,P365_HDLOGALG,P365_BDFIFNAM'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43957299199500922)
,p_name=>'set_doc'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_DOCTYP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43957850200500922)
,p_event_id=>wwv_flow_api.id(43957299199500922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43958275851500923)
,p_name=>'set_sub'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_SUBTYP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43958731693500923)
,p_event_id=>wwv_flow_api.id(43958275851500923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43959156316500923)
,p_name=>'set_docnum'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_DOCNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43959628129500923)
,p_event_id=>wwv_flow_api.id(43959156316500923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43960007866500923)
,p_name=>'set_acct'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_ACCTCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43960556741500923)
,p_event_id=>wwv_flow_api.id(43960007866500923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43960969047500923)
,p_name=>'set_cst'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_COSTCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43961467018500923)
,p_event_id=>wwv_flow_api.id(43960969047500923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43961880767500923)
,p_name=>'set_prt'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_PRTYCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43962370967500923)
,p_event_id=>wwv_flow_api.id(43961880767500923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43962748258500923)
,p_name=>'set_pstflg'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_POSTFLG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43963205054500923)
,p_event_id=>wwv_flow_api.id(43962748258500923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43963688831500923)
,p_name=>'set_dtf'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_DATEF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43964177970500923)
,p_event_id=>wwv_flow_api.id(43963688831500923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43964585447500924)
,p_name=>'set_dtt'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P365_DATET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43965000941500924)
,p_event_id=>wwv_flow_api.id(43964585447500924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47440629948696332)
,p_name=>'New'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43946829137500916)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48059263561855803)
,p_event_id=>wwv_flow_api.id(47440629948696332)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(317494876863945748)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47440724408696333)
,p_event_id=>wwv_flow_api.id(47440629948696332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
