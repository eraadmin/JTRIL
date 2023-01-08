prompt --application/pages/page_00358
begin
--   Manifest
--     PAGE: 00358
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
 p_id=>358
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Stock Summary Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Stock Summary Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_upd_yyyymmddhh24miss=>'20200102204621'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(138439666862556807)
,p_plug_name=>'Stock All Report'
,p_region_template_options=>'i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(41268644350738479)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47620987743858279)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(308912550574209245)
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
 p_id=>wwv_flow_api.id(309956981941947925)
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
 p_id=>wwv_flow_api.id(41247573215729813)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(309956981941947925)
,p_button_name=>'AdvancedSettings'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Advance Settings'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41247903109729813)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(309956981941947925)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print Pdf'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP:P49_PARTYCODE,P49_DOCTDATE,P49_DOCTTDAT,P49_POSTFLAG,P49_COSTCODE,P49_DOCTTYPE,P49_SUBTTYPE,P49_DOCNUMBR,P49_ACCTCODE,P49_PROGNAME:&P358_PRTYCDE.,&P358_DATEF.,&P358_DATET.,&P358_POSTFLG.,&P358_COSTCODE.,&P358_DOCTYP.,&P358_SUBTYP.,&P358_DOCNUMBR.,&P358_ACCTCDE.,&P358_REPNAM.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48598976977407846)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(309956981941947925)
,p_button_name=>'Print_excell'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print Excell'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:392:&SESSION.::&DEBUG.:RP:P392_DOCNUMBR,P392_DOCTTYPE,P392_SUBTTYPE,P392_DOCFDATE,P392_DOCTDATE:&P358_DOCNUMBR.,&P358_DOCTYP.,&P358_SUBTYP.,&P358_DATEF.,&P358_DATET.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41248349794729813)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(309956981941947925)
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
 p_id=>wwv_flow_api.id(41222969993729805)
,p_name=>'P358_SHOWHEAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41223359547729806)
,p_name=>'P358_NMHDSWTP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41223691200729807)
,p_name=>'P358_HDLOGALG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41224149869729807)
,p_name=>'P358_SHOWFOOT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41224503232729807)
,p_name=>'P358_REPSRVNM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41224905786729807)
,p_name=>'P358_FONTPROMT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41225315972729807)
,p_name=>'P358_ALIGNPROMT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41225692551729807)
,p_name=>'P358_SIZEPROMT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41226178288729807)
,p_name=>'P358_WEAIGHTPROMT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41226526395729807)
,p_name=>'P358_COMFNTNM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41226902196729807)
,p_name=>'P358_COMFNTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41227353872729807)
,p_name=>'P358_COMFNTSZ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41227709600729807)
,p_name=>'P358_COMNMFWT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41228149727729807)
,p_name=>'P358_ADDFNTNM'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41228513073729807)
,p_name=>'P358_ADDFNTAL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41228962621729808)
,p_name=>'P358_ADDFNTSZ'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41229339096729808)
,p_name=>'P358_COMADFWT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41229703532729808)
,p_name=>'P358_TTFNTNAM'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41230186531729808)
,p_name=>'P358_TTFNTALG'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41230530503729808)
,p_name=>'P358_TTFNTSIZ'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41230965631729808)
,p_name=>'P358_RPTITFWT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41231377472729808)
,p_name=>'P358_BDFIFNAM'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41231787694729808)
,p_name=>'P358_BDFIFSIZ'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41232095267729808)
,p_name=>'P358_BDFNTALG'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41232567506729808)
,p_name=>'P358_RPBODFWT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41232948638729808)
,p_name=>'P358_REPTFRMT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41233388877729808)
,p_name=>'P358_PGFNTNAM'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41233775576729808)
,p_name=>'P358_PGFNTALG'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41234100269729809)
,p_name=>'P358_PGFNTSIZ'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41234515992729809)
,p_name=>'P358_PGEFNTWT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41234928531729809)
,p_name=>'P358_PARFNTNM'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41235372405729809)
,p_name=>'P358_PARFNTAL'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41235741297729809)
,p_name=>'P358_PARFNTSZ'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41236177288729809)
,p_name=>'P358_PARFNTWT'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41236581225729809)
,p_name=>'P358_PARFNTWT_1'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41236918028729809)
,p_name=>'P358_PARFNTWT_1_1'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41237305920729809)
,p_name=>'P358_NMBLDTYP'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41237742169729809)
,p_name=>'P358_PGNOFRMT'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41238135197729809)
,p_name=>'P358_PRNTVALU'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41238497821729809)
,p_name=>'P358_MSKEFRMT'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41238917572729810)
,p_name=>'P358_SDATFRMT'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41239369205729810)
,p_name=>'P358_ROUNDFMT'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41239695828729810)
,p_name=>'P358_SNUMFRMT'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
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
 p_id=>wwv_flow_api.id(41240147536729810)
,p_name=>'P358_REPODEST'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41240569739729810)
,p_name=>'P358_PGORIENT'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(224122556110357085)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41241235229729810)
,p_name=>'P358_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(308912550574209245)
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
 p_id=>wwv_flow_api.id(41241684049729811)
,p_name=>'P358_REPNAM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(308912550574209245)
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
 p_id=>wwv_flow_api.id(41242057399729811)
,p_name=>'P358_REPNAM_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(308912550574209245)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41242458881729811)
,p_name=>'P358_REPDET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(308912550574209245)
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
 p_id=>wwv_flow_api.id(41242846505729811)
,p_name=>'P358_DOCTYP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(308912550574209245)
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
 p_id=>wwv_flow_api.id(41243246807729812)
,p_name=>'P358_SUBTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(308912550574209245)
,p_prompt=>'Product type'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''PTY''',
' and compcode=:COMPCODE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P358_DOCTYP'
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
'            and a.docttype = :P358_DOCTYP',
'            order by a.subttype'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41243659872729812)
,p_name=>'P358_DOCNUMBR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(308912550574209245)
,p_prompt=>'Document No'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT docnumbr ',
'           FROM actrndtl',
'           where COMPCODE=:compcode',
'           and DOCTTYPE=nvl(:P358_DOCTYP,DOCTTYPE)',
'           and subttype=nvl(:P358_SUBTYP,subttype)',
'   --    ORDER BY  doctdate desc'))
,p_lov_cascade_parent_items=>'P358_DOCTYP,P358_SUBTYP'
,p_ajax_items_to_submit=>'P358_DOCTYP,P358_SUBTYP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>100
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_10=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41244029133729812)
,p_name=>'P358_ACCTCDE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(308912550574209245)
,p_prompt=>'Item Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.ITEMCODE ,a.ITEMDES1',
'           FROM nmitemas a',
'          WHERE a.compcode = :compcode',
'          and FINISHGD=''Y''',
'       ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>100
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
 p_id=>wwv_flow_api.id(41244423376729812)
,p_name=>'P358_COSTCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(308912550574209245)
,p_prompt=>'Cost Center'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct  s.costdesc c,s.costcode',
'  FROM syjobmas s,actrndtl a',
' WHERE a.compcode = :compcode',
'            AND a.compcode = s.compcode',
'            AND a.COSTCODE = s.COSTCODE',
'            AND docttype = NVL (:P358_DOCTYP, docttype)',
'            AND subttype = NVL (:P358_SUBTYP, subttype)',
'            AND docnumbr = NVL (:P358_DOCNUMBR, docnumbr)',
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
 p_id=>wwv_flow_api.id(41244824380729812)
,p_name=>'P358_PRTYCDE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(308912550574209245)
,p_prompt=>'Customer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct  partycde||''-''||prtyname p, partycde ',
'    FROM sycompty s,actrndtl a',
' WHERE a.compcode = :compcode',
' and a.compcode = s.compcode',
'            AND a.SUBLEDCD = s.PARTYCDE',
'            AND docttype = NVL (:P358_DOCTYP, docttype)',
'            AND subttype = NVL (:P358_SUBTYP, subttype)',
'            AND docnumbr = NVL (:P358_DOCNUMBR, docnumbr)',
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
 p_id=>wwv_flow_api.id(41245205600729812)
,p_name=>'P358_POSTFLG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(308912550574209245)
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
 p_id=>wwv_flow_api.id(41245662078729812)
,p_name=>'P358_DATEF'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(308912550574209245)
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
 p_id=>wwv_flow_api.id(41246051930729812)
,p_name=>'P358_DATET'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(308912550574209245)
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
 p_id=>wwv_flow_api.id(41246467755729812)
,p_name=>'P358_SHOWFLG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(308912550574209245)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41246872082729813)
,p_name=>'P358_SHOWADVFLG'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(308912550574209245)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41266983714729826)
,p_name=>'hide_region'
,p_event_sequence=>20
,p_condition_element=>'P358_SHOWFLG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41267928825729827)
,p_event_id=>wwv_flow_api.id(41266983714729826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(308912550574209245)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41267427933729826)
,p_event_id=>wwv_flow_api.id(41266983714729826)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(41247573215729813)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41248779997729822)
,p_name=>'hide_region_adv'
,p_event_sequence=>30
,p_condition_element=>'P358_SHOWADVFLG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41249253308729823)
,p_event_id=>wwv_flow_api.id(41248779997729822)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(224122556110357085)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41249685907729823)
,p_name=>'set_subtyp'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_DOCTYP'
,p_condition_element=>'P358_DOCTYP'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41250100896729823)
,p_event_id=>wwv_flow_api.id(41249685907729823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P358_SUBTYP'
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
'            and a.docttype = :P358_DOCTYP;',
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
,p_attribute_07=>'P358_DOCTYP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41250498446729823)
,p_name=>'get_value_symenmas'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_REPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41251049443729824)
,p_event_id=>wwv_flow_api.id(41250498446729823)
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
'     INTO :P358_comfntnm, :P358_comfntsz, :P358_addfntnm,',
'          :P358_addfntsz, :P358_comfntal, :P358_addfntal,',
'          :P358_SHOWHEAD, :P358_showfoot, :P358_pgnofrmt, ',
'          :P358_roundfmt, :P358_snumfrmt, :P358_repsrvnm, ',
'          :P358_reptfrmt, :P358_ttfntnam, :P358_ttfntsiz,',
'          :P358_pgfntsiz, :P358_pgfntnam, :P358_mskefrmt, ',
'          :P358_pgorient, :P358_repodest, :P358_ttfntalg,',
'          :P358_bdfntalg, :P358_pgfntalg, :P358_sdatfrmt, ',
'          :P358_nmbldtyp, :P358_nmhdswtp, :P358_comnmfwt,',
'          :P358_comadfwt, :P358_rptitfwt, :P358_pgefntwt, ',
'          :P358_rpbodfwt,:P358_PARFNTNM,  :P358_PARFNTAL, ',
'          :P358_PARFNTSZ,:P358_PARFNTWT,  :P358_HDLOGALG,',
'          :P358_BDFIFNAM',
'     FROM symenmas',
'    WHERE compcode = ''001'' AND progname = :P358_REPNAM;',
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
,p_attribute_02=>'P358_REPNAM'
,p_attribute_03=>'P358_COMFNTNM, P358_COMFNTSZ, P358_ADDFNTNM, P358_ADDFNTSZ, P358_COMFNTAL, P358_ADDFNTAL, P358_SHOWHEAD, P358_SHOWFOOT, P358_PGNOFRMT,  P358_ROUNDFMT, P358_SNUMFRMT, P358_REPSRVNM,  P358_REPTFRMT,P358_TTFNTNAM,P358_TTFNTSIZ,P358_PGFNTSIZ,P358_PGFNTNA'
||'M,P358_MSKEFRMT,P358_PGORIENT,P358_REPODEST,P358_TTFNTALG,P358_BDFNTALG,P358_PGFNTALG,P358_SDATFRMT,P358_NMBLDTYP,P358_NMHDSWTP,P358_COMNMFWT,P358_PGEFNTWT,P358_RPBODFWT,P358_PARFNTNM,P358_PARFNTAL,P358_PARFNTSZ,P358_PARFNTWT, P358_HDLOGALG,P358_BDFI'
||'FNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41251443233729824)
,p_name=>'show_advanced_1'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41247573215729813)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41251935604729824)
,p_event_id=>wwv_flow_api.id(41251443233729824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P358_SHOWADVFLG'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41252441705729824)
,p_event_id=>wwv_flow_api.id(41251443233729824)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(224122556110357085)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41252791810729824)
,p_name=>'show_para_region'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(138439666862556807)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41253340671729824)
,p_event_id=>wwv_flow_api.id(41252791810729824)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P358_SHOWFLG'
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
 p_id=>wwv_flow_api.id(41253836568729824)
,p_event_id=>wwv_flow_api.id(41252791810729824)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(308912550574209245)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41254306651729824)
,p_event_id=>wwv_flow_api.id(41252791810729824)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(41247573215729813)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41254786697729824)
,p_name=>'setval'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_REPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41255253519729824)
,p_event_id=>wwv_flow_api.id(41254786697729824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P358_REPDET'
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
'   AND progname = :P358_REPNAM;',
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
,p_attribute_07=>'P358_REPNAM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41255611641729824)
,p_name=>'setval_1'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_REPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41256149757729824)
,p_event_id=>wwv_flow_api.id(41255611641729824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41256557396729824)
,p_name=>'set_prgname'
,p_event_sequence=>110
,p_condition_element=>'P358_REPNAM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41257043858729825)
,p_event_id=>wwv_flow_api.id(41256557396729824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' SELECT progdesc ',
' into :P358_REPDET',
'  FROM symenmas',
' WHERE compcode = ''001''',
'   AND progtype = ''R''',
'   AND progname = :P358_REPNAM;',
' exception',
'  when no_data_found then',
'   :P358_REPDET := '''';',
'  when too_many_rows then',
'   :P358_REPDET := '''';',
'  when others then',
'   :P358_REPDET := '''';',
'end;'))
,p_attribute_02=>'P358_REPNAM'
,p_attribute_03=>'P358_REPDET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41257510757729825)
,p_event_id=>wwv_flow_api.id(41256557396729824)
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
'     INTO :P358_comfntnm, :P358_comfntsz, :P358_addfntnm,',
'          :P358_addfntsz, :P358_comfntal, :P358_addfntal,',
'          :P358_SHOWHEAD, :P358_showfoot, :P358_pgnofrmt, ',
'          :P358_roundfmt, :P358_snumfrmt, :P358_repsrvnm, ',
'          :P358_reptfrmt, :P358_ttfntnam, :P358_ttfntsiz,',
'          :P358_pgfntsiz, :P358_pgfntnam, :P358_mskefrmt, ',
'          :P358_pgorient, :P358_repodest, :P358_ttfntalg,',
'          :P358_bdfntalg, :P358_pgfntalg, :P358_sdatfrmt, ',
'          :P358_nmbldtyp, :P358_nmhdswtp, :P358_comnmfwt,',
'          :P358_comadfwt, :P358_rptitfwt, :P358_pgefntwt, ',
'          :P358_rpbodfwt,:P358_PARFNTNM,  :P358_PARFNTAL, ',
'          :P358_PARFNTSZ,:P358_PARFNTWT,  :P358_HDLOGALG,',
'          :P358_BDFIFNAM',
'     FROM symenmas',
'    WHERE compcode = ''001'' AND progname = :P358_REPNAM;',
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
,p_attribute_02=>'P358_REPNAM'
,p_attribute_03=>'P358_COMFNTNM, P358_COMFNTSZ, P358_ADDFNTNM, P358_ADDFNTSZ, P358_COMFNTAL, P358_ADDFNTAL, P358_SHOWHEAD, P358_SHOWFOOT, P358_PGNOFRMT,  P358_ROUNDFMT, P358_SNUMFRMT, P358_REPSRVNM,  P358_REPTFRMT,P358_TTFNTNAM,P358_TTFNTSIZ,P358_PGFNTSIZ,P358_PGFNTNA'
||'M,P358_MSKEFRMT,P358_PGORIENT,P358_REPODEST,P358_TTFNTALG,P358_BDFNTALG,P358_PGFNTALG,P358_SDATFRMT,P358_NMBLDTYP,P358_NMHDSWTP,P358_COMNMFWT,P358_PGEFNTWT,P358_RPBODFWT,P358_PARFNTNM,P358_PARFNTAL,P358_PARFNTSZ,P358_PARFNTWT, P358_HDLOGALG,P358_BDFI'
||'FNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41257904371729825)
,p_name=>'update_symenmas'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41247903109729813)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41258400841729825)
,p_event_id=>wwv_flow_api.id(41257904371729825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' if :P358_REPNAM is not null then',
'  update symenmas',
'  set COMFNTNM  = :P358_COMFNTNM,',
'  COMFNTSZ = :P358_COMFNTSZ,',
'  ADDFNTNM = :P358_ADDFNTNM,',
'  ADDFNTSZ = :P358_ADDFNTSZ,',
'  COMFNTAL = :P358_COMFNTAL,',
'  ADDFNTAL = :P358_ADDFNTAL,',
'  BDFIFNAM = :P358_BDFIFNAM,  ',
'  BDFIFSIZ = :P358_BDFIFSIZ,',
'  SHOWHEAD = :P358_SHOWHEAD,',
'  SHOWFOOT = :P358_SHOWFOOT,',
'  PGNOFRMT = :P358_PGNOFRMT,',
'  ROUNDFMT = :P358_ROUNDFMT,',
'  SNUMFRMT = :P358_SNUMFRMT,',
'  REPSRVNM = :P358_REPSRVNM,',
'  REPTFRMT = :P358_REPTFRMT,',
'  TTFNTNAM = :P358_TTFNTNAM,',
'  TTFNTSIZ = :P358_TTFNTSIZ,',
'  PGFNTSIZ = :P358_PGFNTSIZ,',
'  PGFNTNAM = :P358_PGFNTNAM,',
'  MSKEFRMT = :P358_MSKEFRMT,',
'  PGORIENT = :P358_PGORIENT,',
'  REPODEST = :P358_REPODEST,',
'  TTFNTALG = :P358_TTFNTALG,',
'  BDFNTALG = :P358_BDFNTALG,',
'  PGFNTALG = :P358_PGFNTALG,',
'  SDATFRMT = :P358_SDATFRMT,',
'  NMBLDTYP = :P358_NMBLDTYP,',
'  NMHDSWTP = :P358_NMHDSWTP,',
'  COMNMFWT = :P358_COMNMFWT,',
'  COMADFWT = :P358_COMADFWT,',
'  RPTITFWT = :P358_RPTITFWT,',
'  PGEFNTWT = :P358_PGEFNTWT,',
'  RPBODFWT = :P358_RPBODFWT,',
'  PARFNTNM =:P358_PARFNTNM,',
'  PARFNTAL =:P358_PARFNTAL,',
'  PARFNTSZ =:P358_PARFNTSZ,',
'  PARFNTWT =:P358_PARFNTWT,',
'  HDLOGALG =:P358_HDLOGALG',
'  where compcode = ''001''',
'  and progname = :P358_REPNAM;',
' end if;',
'  commit;  ',
'END;'))
,p_attribute_02=>'P358_REPNAM,P358_COMFNTNM,P358_COMFNTSZ,P358_ADDFNTNM,P358_ADDFNTSZ,P358_COMFNTAL,P358_ADDFNTAL,P358_BDFIFSIZ,P358_SHOWHEAD,P358_SHOWFOOT,P358_PGNOFRMT,P358_ROUNDFMT,P358_SNUMFRMT,P358_REPSRVNM,P358_REPTFRMT,P358_TTFNTNAM,P358_TTFNTSIZ,P358_PGFNTSIZ,'
||'P358_PGFNTNAM,P358_MSKEFRMT,P358_PGORIENT,P358_REPODEST,P358_TTFNTALG,P358_BDFNTALG,P358_PGFNTALG,P358_SDATFRMT,P358_NMBLDTYP,P358_NMHDSWTP,P358_COMNMFWT,P358_COMADFWT,P358_RPTITFWT,P358_PGEFNTWT,P358_RPBODFWT,,P358_BDFIFNAMP358_PARFNTNM,P358_PARFNTA'
||'L,P358_PARFNTSZ,P358_PARFNTWT,P358_HDLOGALG,P358_BDFIFNAM'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41258851633729825)
,p_name=>'set_doc'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_DOCTYP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41259300898729825)
,p_event_id=>wwv_flow_api.id(41258851633729825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41259694345729825)
,p_name=>'set_sub'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_SUBTYP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41260237552729825)
,p_event_id=>wwv_flow_api.id(41259694345729825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41260685181729825)
,p_name=>'set_docnum'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_DOCNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41261161694729825)
,p_event_id=>wwv_flow_api.id(41260685181729825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41261589686729825)
,p_name=>'set_acct'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_ACCTCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41262046978729825)
,p_event_id=>wwv_flow_api.id(41261589686729825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41262421785729826)
,p_name=>'set_cst'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_COSTCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41262910465729826)
,p_event_id=>wwv_flow_api.id(41262421785729826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41263388239729826)
,p_name=>'set_prt'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_PRTYCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41263881604729826)
,p_event_id=>wwv_flow_api.id(41263388239729826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41264196270729826)
,p_name=>'set_pstflg'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_POSTFLG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41264703613729826)
,p_event_id=>wwv_flow_api.id(41264196270729826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41265159511729826)
,p_name=>'set_dtf'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_DATEF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41265595098729826)
,p_event_id=>wwv_flow_api.id(41265159511729826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41266062522729826)
,p_name=>'set_dtt'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P358_DATET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41266557560729826)
,p_event_id=>wwv_flow_api.id(41266062522729826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47440197768696328)
,p_name=>'New'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41248349794729813)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47440371092696329)
,p_event_id=>wwv_flow_api.id(47440197768696328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
