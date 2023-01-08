prompt --application/pages/page_00357
begin
--   Manifest
--     PAGE: 00357
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
 p_id=>357
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Sales All Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Sales All Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_upd_yyyymmddhh24miss=>'20200102204621'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(132555852744591406)
,p_plug_name=>'Sales All Report'
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
 p_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(303028736456243844)
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
 p_id=>wwv_flow_api.id(304073167823982524)
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
 p_id=>wwv_flow_api.id(41120728168262387)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(304073167823982524)
,p_button_name=>'AdvancedSettings'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Advance Settings'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41121120365262389)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(304073167823982524)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP:P49_PARTYCODE,P49_DOCTDATE,P49_DOCTTDAT,P49_POSTFLAG,P49_COSTCODE,P49_DOCTTYPE,P49_SUBTTYPE,P49_DOCNUMBR,P49_ACCTCODE,P49_PROGNAME:&P357_PRTYCDE.,&P357_DATEF.,&P357_DATET.,&P357_POSTFLG.,&P357_COSTCODE.,&P357_DOCTYP.,&P357_SUBTYP.,&P357_DOCNUMBR.,&P357_ACCTCDE.,&P357_REPNAM.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41121525620262389)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(304073167823982524)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,320::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41096132676262381)
,p_name=>'P357_SHOWHEAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41096573192262382)
,p_name=>'P357_NMHDSWTP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41096965516262382)
,p_name=>'P357_HDLOGALG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41097339282262382)
,p_name=>'P357_SHOWFOOT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41097725425262382)
,p_name=>'P357_REPSRVNM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41098181424262382)
,p_name=>'P357_FONTPROMT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41098561921262382)
,p_name=>'P357_ALIGNPROMT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41098970748262382)
,p_name=>'P357_SIZEPROMT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41099297421262382)
,p_name=>'P357_WEAIGHTPROMT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41099739148262382)
,p_name=>'P357_COMFNTNM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41100184192262382)
,p_name=>'P357_COMFNTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41100530364262382)
,p_name=>'P357_COMFNTSZ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41100951911262382)
,p_name=>'P357_COMNMFWT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41101295794262383)
,p_name=>'P357_ADDFNTNM'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41101692404262383)
,p_name=>'P357_ADDFNTAL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41102114610262383)
,p_name=>'P357_ADDFNTSZ'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41102586825262383)
,p_name=>'P357_COMADFWT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41102928089262383)
,p_name=>'P357_TTFNTNAM'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41103311663262383)
,p_name=>'P357_TTFNTALG'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41103744922262383)
,p_name=>'P357_TTFNTSIZ'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41104152017262383)
,p_name=>'P357_RPTITFWT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41104576906262383)
,p_name=>'P357_BDFIFNAM'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41104893570262383)
,p_name=>'P357_BDFIFSIZ'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41105317666262383)
,p_name=>'P357_BDFNTALG'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41105715745262383)
,p_name=>'P357_RPBODFWT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41106167808262384)
,p_name=>'P357_REPTFRMT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41106522247262384)
,p_name=>'P357_PGFNTNAM'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41106892187262384)
,p_name=>'P357_PGFNTALG'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41107304258262384)
,p_name=>'P357_PGFNTSIZ'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41107731015262384)
,p_name=>'P357_PGEFNTWT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41108128324262384)
,p_name=>'P357_PARFNTNM'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41108561384262384)
,p_name=>'P357_PARFNTAL'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41108964203262384)
,p_name=>'P357_PARFNTSZ'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41109308556262384)
,p_name=>'P357_PARFNTWT'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41109738307262384)
,p_name=>'P357_PARFNTWT_1'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41110095785262384)
,p_name=>'P357_PARFNTWT_1_1'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41110534519262384)
,p_name=>'P357_NMBLDTYP'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41110894741262384)
,p_name=>'P357_PGNOFRMT'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41111379485262385)
,p_name=>'P357_PRNTVALU'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41111727356262385)
,p_name=>'P357_MSKEFRMT'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41112165550262385)
,p_name=>'P357_SDATFRMT'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41112491029262385)
,p_name=>'P357_ROUNDFMT'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41112906658262385)
,p_name=>'P357_SNUMFRMT'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
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
 p_id=>wwv_flow_api.id(41113290650262385)
,p_name=>'P357_REPODEST'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41113718316262385)
,p_name=>'P357_PGORIENT'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(218238741992391684)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41114409484262386)
,p_name=>'P357_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(303028736456243844)
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
 p_id=>wwv_flow_api.id(41114796251262386)
,p_name=>'P357_REPNAM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(303028736456243844)
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
 p_id=>wwv_flow_api.id(41115197912262386)
,p_name=>'P357_REPNAM_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(303028736456243844)
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
 p_id=>wwv_flow_api.id(41115612455262386)
,p_name=>'P357_REPDET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(303028736456243844)
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
 p_id=>wwv_flow_api.id(41116012623262386)
,p_name=>'P357_DOCTYP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(303028736456243844)
,p_prompt=>'Document Type'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct s.naration||''--''||s.TRANTYPE s,s.TRANTYPE',
'from nmsalrec a,sydocmas s',
'            where a.compcode = s.compcode',
'            and a.compcode = :compcode',
'            and a.docttype = s.trantype',
'            AND a.subttype = s.subttype',
'            AND S.MODLCODE = ''NM'' ',
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
 p_id=>wwv_flow_api.id(41116489612262386)
,p_name=>'P357_SUBTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(303028736456243844)
,p_prompt=>'Sub type'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select distinct a.subttype ',
'from actrndtl a,sydocmas s',
'            where a.compcode = s.compcode',
'            and a.compcode = :compcode',
'            and a.docttype = s.trantype',
'            AND a.subttype = s.subttype',
'            and a.docttype = :P357_DOCTYP',
'            order by a.subttype'))
,p_lov_cascade_parent_items=>'P357_DOCTYP'
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
'            and a.docttype = :P357_DOCTYP',
'            order by a.subttype'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41116794416262386)
,p_name=>'P357_DOCNUMBR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(303028736456243844)
,p_prompt=>'Document No'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT docnumbr ',
'           FROM actrndtl',
'           where COMPCODE=:compcode',
'           and DOCTTYPE=nvl(:P357_DOCTYP,DOCTTYPE)',
'           and subttype=nvl(:P357_SUBTYP,subttype)',
'   --    ORDER BY  doctdate desc'))
,p_lov_cascade_parent_items=>'P357_DOCTYP,P357_SUBTYP'
,p_ajax_items_to_submit=>'P357_DOCTYP,P357_SUBTYP'
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
 p_id=>wwv_flow_api.id(41117205182262386)
,p_name=>'P357_ACCTCDE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(303028736456243844)
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
 p_id=>wwv_flow_api.id(41117604499262386)
,p_name=>'P357_COSTCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(303028736456243844)
,p_prompt=>'Cost Center'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct  s.costdesc c,s.costcode',
'  FROM syjobmas s,actrndtl a',
' WHERE a.compcode = :compcode',
'            AND a.compcode = s.compcode',
'            AND a.COSTCODE = s.COSTCODE',
'            AND docttype = NVL (:P357_DOCTYP, docttype)',
'            AND subttype = NVL (:P357_SUBTYP, subttype)',
'            AND docnumbr = NVL (:P357_DOCNUMBR, docnumbr)',
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
 p_id=>wwv_flow_api.id(41118044296262386)
,p_name=>'P357_PRTYCDE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(303028736456243844)
,p_prompt=>'Customer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct  partycde||''-''||prtyname p, partycde ',
'    FROM sycompty s,actrndtl a',
' WHERE a.compcode = :compcode',
' and a.compcode = s.compcode',
'            AND a.SUBLEDCD = s.PARTYCDE',
'            AND docttype = NVL (:P357_DOCTYP, docttype)',
'            AND subttype = NVL (:P357_SUBTYP, subttype)',
'            AND docnumbr = NVL (:P357_DOCNUMBR, docnumbr)',
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
 p_id=>wwv_flow_api.id(41118451099262386)
,p_name=>'P357_POSTFLG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(303028736456243844)
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
 p_id=>wwv_flow_api.id(41118818846262386)
,p_name=>'P357_DATEF'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(303028736456243844)
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
 p_id=>wwv_flow_api.id(41119282562262387)
,p_name=>'P357_DATET'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(303028736456243844)
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
 p_id=>wwv_flow_api.id(41119646368262387)
,p_name=>'P357_SHOWFLG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(303028736456243844)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41119990635262387)
,p_name=>'P357_SHOWADVFLG'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(303028736456243844)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41121928292262389)
,p_name=>'hide_region'
,p_event_sequence=>20
,p_condition_element=>'P357_SHOWFLG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41122466596262390)
,p_event_id=>wwv_flow_api.id(41121928292262389)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(303028736456243844)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41122985840262390)
,p_event_id=>wwv_flow_api.id(41121928292262389)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(41120728168262387)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41123315476262391)
,p_name=>'hide_region_adv'
,p_event_sequence=>30
,p_condition_element=>'P357_SHOWADVFLG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41123839909262391)
,p_event_id=>wwv_flow_api.id(41123315476262391)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(218238741992391684)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41124225633262391)
,p_name=>'set_subtyp'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P357_DOCTYP'
,p_condition_element=>'P357_DOCTYP'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41124754180262391)
,p_event_id=>wwv_flow_api.id(41124225633262391)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P357_SUBTYP'
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
'            and a.docttype = :P357_DOCTYP;',
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
,p_attribute_07=>'P357_DOCTYP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41125150765262391)
,p_name=>'get_value_symenmas'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P357_REPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41125632551262391)
,p_event_id=>wwv_flow_api.id(41125150765262391)
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
'     INTO :P357_comfntnm, :P357_comfntsz, :P357_addfntnm,',
'          :P357_addfntsz, :P357_comfntal, :P357_addfntal,',
'          :P357_SHOWHEAD, :P357_showfoot, :P357_pgnofrmt, ',
'          :P357_roundfmt, :P357_snumfrmt, :P357_repsrvnm, ',
'          :P357_reptfrmt, :P357_ttfntnam, :P357_ttfntsiz,',
'          :P357_pgfntsiz, :P357_pgfntnam, :P357_mskefrmt, ',
'          :P357_pgorient, :P357_repodest, :P357_ttfntalg,',
'          :P357_bdfntalg, :P357_pgfntalg, :P357_sdatfrmt, ',
'          :P357_nmbldtyp, :P357_nmhdswtp, :P357_comnmfwt,',
'          :P357_comadfwt, :P357_rptitfwt, :P357_pgefntwt, ',
'          :P357_rpbodfwt,:P357_PARFNTNM,  :P357_PARFNTAL, ',
'          :P357_PARFNTSZ,:P357_PARFNTWT,  :P357_HDLOGALG,',
'          :P357_BDFIFNAM',
'     FROM symenmas',
'    WHERE compcode = ''001'' AND progname = :P357_REPNAM;',
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
,p_attribute_02=>'P357_REPNAM'
,p_attribute_03=>'P357_COMFNTNM, P357_COMFNTSZ, P357_ADDFNTNM, P357_ADDFNTSZ, P357_COMFNTAL, P357_ADDFNTAL, P357_SHOWHEAD, P357_SHOWFOOT, P357_PGNOFRMT,  P357_ROUNDFMT, P357_SNUMFRMT, P357_REPSRVNM,  P357_REPTFRMT,P357_TTFNTNAM,P357_TTFNTSIZ,P357_PGFNTSIZ,P357_PGFNTNA'
||'M,P357_MSKEFRMT,P357_PGORIENT,P357_REPODEST,P357_TTFNTALG,P357_BDFNTALG,P357_PGFNTALG,P357_SDATFRMT,P357_NMBLDTYP,P357_NMHDSWTP,P357_COMNMFWT,P357_PGEFNTWT,P357_RPBODFWT,P357_PARFNTNM,P357_PARFNTAL,P357_PARFNTSZ,P357_PARFNTWT, P357_HDLOGALG,P357_BDFI'
||'FNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41126049522262391)
,p_name=>'show_advanced_1'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41120728168262387)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41126525761262391)
,p_event_id=>wwv_flow_api.id(41126049522262391)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P357_SHOWADVFLG'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41127056648262391)
,p_event_id=>wwv_flow_api.id(41126049522262391)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(218238741992391684)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41127437504262391)
,p_name=>'show_para_region'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(132555852744591406)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41127896405262391)
,p_event_id=>wwv_flow_api.id(41127437504262391)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P357_SHOWFLG'
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
 p_id=>wwv_flow_api.id(41128393911262392)
,p_event_id=>wwv_flow_api.id(41127437504262391)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(303028736456243844)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41128932960262392)
,p_event_id=>wwv_flow_api.id(41127437504262391)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(41120728168262387)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41129334104262392)
,p_name=>'setval'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P357_REPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41129881126262392)
,p_event_id=>wwv_flow_api.id(41129334104262392)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P357_REPDET'
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
'   AND progname = :P357_REPNAM;',
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
,p_attribute_07=>'P357_REPNAM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41130251786262392)
,p_name=>'setval_1'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P357_REPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41130786447262392)
,p_event_id=>wwv_flow_api.id(41130251786262392)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41131099849262392)
,p_name=>'set_prgname'
,p_event_sequence=>110
,p_condition_element=>'P357_REPNAM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41131625711262392)
,p_event_id=>wwv_flow_api.id(41131099849262392)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' SELECT progdesc ',
' into :P357_REPDET',
'  FROM symenmas',
' WHERE compcode = ''001''',
'   AND progtype = ''R''',
'   AND progname = :P357_REPNAM;',
' exception',
'  when no_data_found then',
'   :P357_REPDET := '''';',
'  when too_many_rows then',
'   :P357_REPDET := '''';',
'  when others then',
'   :P357_REPDET := '''';',
'end;'))
,p_attribute_02=>'P357_REPNAM'
,p_attribute_03=>'P357_REPDET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41132176039262392)
,p_event_id=>wwv_flow_api.id(41131099849262392)
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
'     INTO :P357_comfntnm, :P357_comfntsz, :P357_addfntnm,',
'          :P357_addfntsz, :P357_comfntal, :P357_addfntal,',
'          :P357_SHOWHEAD, :P357_showfoot, :P357_pgnofrmt, ',
'          :P357_roundfmt, :P357_snumfrmt, :P357_repsrvnm, ',
'          :P357_reptfrmt, :P357_ttfntnam, :P357_ttfntsiz,',
'          :P357_pgfntsiz, :P357_pgfntnam, :P357_mskefrmt, ',
'          :P357_pgorient, :P357_repodest, :P357_ttfntalg,',
'          :P357_bdfntalg, :P357_pgfntalg, :P357_sdatfrmt, ',
'          :P357_nmbldtyp, :P357_nmhdswtp, :P357_comnmfwt,',
'          :P357_comadfwt, :P357_rptitfwt, :P357_pgefntwt, ',
'          :P357_rpbodfwt,:P357_PARFNTNM,  :P357_PARFNTAL, ',
'          :P357_PARFNTSZ,:P357_PARFNTWT,  :P357_HDLOGALG,',
'          :P357_BDFIFNAM',
'     FROM symenmas',
'    WHERE compcode = ''001'' AND progname = :P357_REPNAM;',
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
,p_attribute_02=>'P357_REPNAM'
,p_attribute_03=>'P357_COMFNTNM, P357_COMFNTSZ, P357_ADDFNTNM, P357_ADDFNTSZ, P357_COMFNTAL, P357_ADDFNTAL, P357_SHOWHEAD, P357_SHOWFOOT, P357_PGNOFRMT,  P357_ROUNDFMT, P357_SNUMFRMT, P357_REPSRVNM,  P357_REPTFRMT,P357_TTFNTNAM,P357_TTFNTSIZ,P357_PGFNTSIZ,P357_PGFNTNA'
||'M,P357_MSKEFRMT,P357_PGORIENT,P357_REPODEST,P357_TTFNTALG,P357_BDFNTALG,P357_PGFNTALG,P357_SDATFRMT,P357_NMBLDTYP,P357_NMHDSWTP,P357_COMNMFWT,P357_PGEFNTWT,P357_RPBODFWT,P357_PARFNTNM,P357_PARFNTAL,P357_PARFNTSZ,P357_PARFNTWT, P357_HDLOGALG,P357_BDFI'
||'FNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41132490090262392)
,p_name=>'update_symenmas'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41121120365262389)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41133056303262392)
,p_event_id=>wwv_flow_api.id(41132490090262392)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' if :P357_REPNAM is not null then',
'  update symenmas',
'  set COMFNTNM  = :P357_COMFNTNM,',
'  COMFNTSZ = :P357_COMFNTSZ,',
'  ADDFNTNM = :P357_ADDFNTNM,',
'  ADDFNTSZ = :P357_ADDFNTSZ,',
'  COMFNTAL = :P357_COMFNTAL,',
'  ADDFNTAL = :P357_ADDFNTAL,',
'  BDFIFNAM = :P357_BDFIFNAM,  ',
'  BDFIFSIZ = :P357_BDFIFSIZ,',
'  SHOWHEAD = :P357_SHOWHEAD,',
'  SHOWFOOT = :P357_SHOWFOOT,',
'  PGNOFRMT = :P357_PGNOFRMT,',
'  ROUNDFMT = :P357_ROUNDFMT,',
'  SNUMFRMT = :P357_SNUMFRMT,',
'  REPSRVNM = :P357_REPSRVNM,',
'  REPTFRMT = :P357_REPTFRMT,',
'  TTFNTNAM = :P357_TTFNTNAM,',
'  TTFNTSIZ = :P357_TTFNTSIZ,',
'  PGFNTSIZ = :P357_PGFNTSIZ,',
'  PGFNTNAM = :P357_PGFNTNAM,',
'  MSKEFRMT = :P357_MSKEFRMT,',
'  PGORIENT = :P357_PGORIENT,',
'  REPODEST = :P357_REPODEST,',
'  TTFNTALG = :P357_TTFNTALG,',
'  BDFNTALG = :P357_BDFNTALG,',
'  PGFNTALG = :P357_PGFNTALG,',
'  SDATFRMT = :P357_SDATFRMT,',
'  NMBLDTYP = :P357_NMBLDTYP,',
'  NMHDSWTP = :P357_NMHDSWTP,',
'  COMNMFWT = :P357_COMNMFWT,',
'  COMADFWT = :P357_COMADFWT,',
'  RPTITFWT = :P357_RPTITFWT,',
'  PGEFNTWT = :P357_PGEFNTWT,',
'  RPBODFWT = :P357_RPBODFWT,',
'  PARFNTNM =:P357_PARFNTNM,',
'  PARFNTAL =:P357_PARFNTAL,',
'  PARFNTSZ =:P357_PARFNTSZ,',
'  PARFNTWT =:P357_PARFNTWT,',
'  HDLOGALG =:P357_HDLOGALG',
'  where compcode = ''001''',
'  and progname = :P357_REPNAM;',
' end if;',
'  commit;  ',
'END;'))
,p_attribute_02=>'P357_REPNAM,P357_COMFNTNM,P357_COMFNTSZ,P357_ADDFNTNM,P357_ADDFNTSZ,P357_COMFNTAL,P357_ADDFNTAL,P357_BDFIFSIZ,P357_SHOWHEAD,P357_SHOWFOOT,P357_PGNOFRMT,P357_ROUNDFMT,P357_SNUMFRMT,P357_REPSRVNM,P357_REPTFRMT,P357_TTFNTNAM,P357_TTFNTSIZ,P357_PGFNTSIZ,'
||'P357_PGFNTNAM,P357_MSKEFRMT,P357_PGORIENT,P357_REPODEST,P357_TTFNTALG,P357_BDFNTALG,P357_PGFNTALG,P357_SDATFRMT,P357_NMBLDTYP,P357_NMHDSWTP,P357_COMNMFWT,P357_COMADFWT,P357_RPTITFWT,P357_PGEFNTWT,P357_RPBODFWT,,P357_BDFIFNAMP357_PARFNTNM,P357_PARFNTA'
||'L,P357_PARFNTSZ,P357_PARFNTWT,P357_HDLOGALG,P357_BDFIFNAM'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41133402653262392)
,p_name=>'set_doc'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P357_DOCTYP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41133973303262393)
,p_event_id=>wwv_flow_api.id(41133402653262392)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41134335824262393)
,p_name=>'set_sub'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P357_SUBTYP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41134854994262393)
,p_event_id=>wwv_flow_api.id(41134335824262393)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41135252323262393)
,p_name=>'set_docnum'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P357_DOCNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41135694384262393)
,p_event_id=>wwv_flow_api.id(41135252323262393)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41136128294262393)
,p_name=>'set_acct'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P357_ACCTCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41136676663262393)
,p_event_id=>wwv_flow_api.id(41136128294262393)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41137089032262393)
,p_name=>'set_cst'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P357_COSTCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41137578448262393)
,p_event_id=>wwv_flow_api.id(41137089032262393)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41137916376262393)
,p_name=>'set_prt'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P357_PRTYCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41138470590262393)
,p_event_id=>wwv_flow_api.id(41137916376262393)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41138876853262393)
,p_name=>'set_pstflg'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P357_POSTFLG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41139320829262393)
,p_event_id=>wwv_flow_api.id(41138876853262393)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41139697253262393)
,p_name=>'set_dtf'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P357_DATEF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41140193498262394)
,p_event_id=>wwv_flow_api.id(41139697253262393)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41140620098262394)
,p_name=>'set_dtt'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P357_DATET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41141122037262394)
,p_event_id=>wwv_flow_api.id(41140620098262394)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.component_end;
end;
/
