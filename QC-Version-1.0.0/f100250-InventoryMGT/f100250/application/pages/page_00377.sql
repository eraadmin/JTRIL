prompt --application/pages/page_00377
begin
--   Manifest
--     PAGE: 00377
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
 p_id=>377
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Receipt Entry'
,p_page_mode=>'MODAL'
,p_step_title=>'Receipt Entry'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180805125235'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46657371025652316)
,p_plug_name=>'Customer Details'
,p_region_template_options=>'#DEFAULT#:i-h260:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46659677817652339)
,p_plug_name=>'Receipt Details'
,p_region_template_options=>'#DEFAULT#:i-h260:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46778877948480106)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46781481118480132)
,p_plug_name=>'Amount Details'
,p_region_template_options=>'#DEFAULT#:i-h260:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46779053505480108)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(46778877948480106)
,p_button_name=>'Create_Voucher'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Voucher'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46778897282480107)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(46778877948480106)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:366:&SESSION.::&DEBUG.:RP,377::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46657418938652317)
,p_name=>'P377_DOCDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(46657371025652316)
,p_item_default=>'trunc(sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Doc Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46657559235652318)
,p_name=>'P377_DEPOSITDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46657371025652316)
,p_prompt=>'Deposit Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46657671109652319)
,p_name=>'P377_DOCNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(46657371025652316)
,p_prompt=>'Doc No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46657784012652320)
,p_name=>'P377_RCVTYP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(46657371025652316)
,p_prompt=>'Rcv. Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT INITCAP(NARATION),subttype',
'from sydocmas ',
'where COMPCODE = :compcode',
'and MODLCODE = ''AC''',
'AND TRANTYPE =  :P377_TRNTYPE',
'AND to_date(SYSDATE,''dd-mon-yyyy'') Between to_date(strtperd,''dd-mon-yyyy'') ',
'                                   and to_date(endperd,''dd-mon-yyyy'')',
'                                   '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P377_TRNTYPE'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_api.id(46657790523652321)
,p_name=>'P377_ACCTCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(46657371025652316)
,p_prompt=>'Account Code'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.ACCTCODE||''-''||S.ACCTNAME,S.ACCTCODE --,S.DFLTCOST,S.COSTREQD',
'FROM sychrtac S',
'WHERE S.COMPCODE = :COMPCODE',
'AND S.ACCTTYPE = 1',
'AND NVL(s.ARACTFLG,''N'')=''Y''',
'AND NVL(ctrlflag,''N'') = ''Y'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>12
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
 p_id=>wwv_flow_api.id(46657910983652322)
,p_name=>'P377_COSTCODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(46657371025652316)
,p_prompt=>'Cost Code'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a.COSTCODE||''-''|| ',
'(select distinct  y.NMCODDES',
'from nmwhsmas x, nmcodmas y',
'where x.COMPCODE = y.COMPCODE ',
'and  y.NMSOFCDE = A.BRANDCDE',
'and y.NMHRDCDE = ''COM''',
'and y.COMPCODE =a.COMPCODE)Brand, a.COSTCODE',
'from nmwhsmas a',
'where  a.COSTCODE in (select CABASECC  from sycstacc',
'where Upper(GRUPCODE) = UPPER(:APP_USER))',
'order by 1',
'',
'--, a.WAREDESC , '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>12
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
 p_id=>wwv_flow_api.id(46658007287652323)
,p_name=>'P377_RCVFRM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(46657371025652316)
,p_prompt=>'Receive Form'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   partycde||''-''||prtyname CUSTNAME,partycde --, creddays, currcode',
'    FROM sycompty s',
'   WHERE compcode = :compcode ',
'and PARTYTYP in (''CU'',''CV'')',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>12
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
 p_id=>wwv_flow_api.id(46658184882652324)
,p_name=>'P377_REFDET'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(46657371025652316)
,p_prompt=>'Ref. Details'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46658230576652325)
,p_name=>'P377_REFSUB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(46657371025652316)
,p_prompt=>'&nbsp.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46658316072652326)
,p_name=>'P377_REFDATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(46657371025652316)
,p_prompt=>'New'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46658398844652327)
,p_name=>'P377_REFDOCNO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(46657371025652316)
,p_prompt=>'&nbsp.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>6
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46658820597652331)
,p_name=>'P377_REMARKS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(46657371025652316)
,p_prompt=>'Narration'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46659153309652334)
,p_name=>'P377_TRNTYPE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(46657371025652316)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46659769940652340)
,p_name=>'P377_ACCTNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46659677817652339)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46659878299652341)
,p_name=>'P377_ACCTBNKCD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(46659677817652339)
,p_prompt=>'Bank Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46659960469652342)
,p_name=>'P377_CHQNUM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46659677817652339)
,p_prompt=>'Cheque No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46659998833652343)
,p_name=>'P377_CHQDAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(46659677817652339)
,p_prompt=>'Cheque Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46660137121652344)
,p_name=>'P377_REFBNK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(46659677817652339)
,p_prompt=>'Ref. Bank'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46660309216652346)
,p_name=>'P377_BNKNAM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(46659677817652339)
,p_prompt=>'Bank Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46660517996652348)
,p_name=>'P377_BNKBRN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(46659677817652339)
,p_prompt=>'Bank Branch'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46781356469480131)
,p_name=>'P377_DOCNUMBR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46657371025652316)
,p_item_default=>'trunc(sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46782042809480138)
,p_name=>'P377_RECEIVABLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(46781481118480132)
,p_prompt=>'Receivable'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46782259569480140)
,p_name=>'P377_TOTRCP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(46781481118480132)
,p_prompt=>'Total Receipt'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46782416521480142)
,p_name=>'P377_RCPAMT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(46781481118480132)
,p_prompt=>'Receipt Amt.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46782511410480143)
,p_validation_name=>'check_subtype'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P377_RCVTYP is null then',
' raise_application_error( -20000, ''Receive type cannot be null..'' );',
'end if;',
'end;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'Receive type cannot be null..'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46782655278480144)
,p_validation_name=>'check_cheque_no'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'begin',
'if :P377_RCVTYP = 5 and :P377_CHQNUM is null then',
' raise_application_error( -20000, ''Cheque no cannot be null..'' );',
'end if;',
'end;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'Cheque no cannot be null..'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46782777142480145)
,p_validation_name=>'check_cheque_date'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P377_RCVTYP = 5 and :P377_CHQDAT is null then',
' raise_application_error( -20000, ''Cheque Date cannot be null..'' );',
'end if;',
'end;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'Cheque Date cannot be null..'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46779134391480109)
,p_name=>'get_doctyp'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46779271098480110)
,p_event_id=>wwv_flow_api.id(46779134391480109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'		select a.DFRECDTY',
'     into :P377_TRNTYPE',
'		from accompar a',
'		where a.COMPCODE = :compcode',
'		and YEARCODE = to_char(sysdate,''yyyy'');',
'exception',
'	when no_data_found then',
'	 :P377_TRNTYPE:='''';',
'	when too_many_rows then',
'	 :P377_TRNTYPE:='''';',
'	when others then',
'	 :P377_TRNTYPE:='''';',
'	end;'))
,p_attribute_03=>'P377_TRNTYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46779335314480111)
,p_name=>'show_reg'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(46659677817652339)
,p_condition_element=>'P377_RCVTYP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'5'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46779420970480112)
,p_event_id=>wwv_flow_api.id(46779335314480111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(46659677817652339)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46779520968480113)
,p_event_id=>wwv_flow_api.id(46779335314480111)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(46659677817652339)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46779596321480114)
,p_name=>'show_reg_new'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P377_RCVTYP'
,p_condition_element=>'P377_RCVTYP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'5'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46779770065480115)
,p_event_id=>wwv_flow_api.id(46779596321480114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(46659677817652339)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46779824981480116)
,p_event_id=>wwv_flow_api.id(46779596321480114)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(46659677817652339)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46781169394480129)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'create_docno'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    If :P377_RCPAMT > 0   then',
'        if :P377_RCVTYP = 5 and :P377_CHQNUM is not null and :P377_CHQDAT is not null then',
'            Docnumber_Generation(:compcode, ''AC'', :P377_TRNTYPE,:P377_RCVTYP, :P377_DOCDATE  ,'''',''AC'', :P377_docnumbr);',
'        elsif :P377_RCVTYP <> 5 and :P377_CHQNUM is null and :P377_CHQDAT is null then',
'            Docnumber_Generation(:compcode, ''AC'', :P377_TRNTYPE,:P377_RCVTYP, :P377_DOCDATE  ,'''',''AC'', :P377_docnumbr);',
'        end if;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46781280151480130)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'create_voucher_receiptt'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P377_RCVTYP = 5 and :P377_CHQNUM is not null and :P377_CHQDAT is not null then',
'    dpr_voucher_receipt(:P377_TRNTYPE,:P377_RCVTYP,:compcode,:P377_ACCTCODE , :P377_DOCDATE , :P377_RCPAMT,',
'    :P377_RCVFRM , :P377_DOCNUMBR ,:P377_DOCDATE ,:P377_COSTCODE ,:P377_REFDOCNO , :P377_REFDATE,:P377_REFDET,:P377_REFSUB,',
'    :P377_CHQNUM , :P377_CHQDAT,:P377_BNKNAM ,:P377_BNKBRN , :P377_ACCTBNKCD ,:app_user);',
'elsif :P377_RCVTYP <> 5 and :P377_CHQNUM is null and :P377_CHQDAT is null then',
'    dpr_voucher_receipt(:P377_TRNTYPE,:P377_RCVTYP,:compcode,:P377_ACCTCODE , :P377_DOCDATE , :P377_RCPAMT,',
'    :P377_RCVFRM , :P377_DOCNUMBR ,:P377_DOCDATE ,:P377_COSTCODE ,:P377_REFDOCNO , :P377_REFDATE,:P377_REFDET,:P377_REFSUB,',
'    :P377_CHQNUM , :P377_CHQDAT,:P377_BNKNAM ,:P377_BNKBRN , :P377_ACCTBNKCD ,:app_user);',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Voucher No generated successfully &P377_DOCNUMBR.'
);
wwv_flow_api.component_end;
end;
/
