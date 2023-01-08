prompt --application/pages/page_00379
begin
--   Manifest
--     PAGE: 00379
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
 p_id=>379
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Payment Entry'
,p_page_mode=>'MODAL'
,p_step_title=>'Payment Entry'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180809113304'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58210113654926314)
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
 p_id=>wwv_flow_api.id(58212420446926337)
,p_plug_name=>'Payment Details'
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
 p_id=>wwv_flow_api.id(58331620577754104)
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
 p_id=>wwv_flow_api.id(58334223747754130)
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
 p_id=>wwv_flow_api.id(46900532759038409)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(58331620577754104)
,p_button_name=>'Create_Voucher'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Voucher'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46900982966038413)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(58331620577754104)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:378:&SESSION.::&DEBUG.:RP,379::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46891582636038403)
,p_name=>'P379_DOCNUMBR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(58210113654926314)
,p_item_default=>'trunc(sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46891931419038403)
,p_name=>'P379_DOCDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(58210113654926314)
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
 p_id=>wwv_flow_api.id(46892369976038403)
,p_name=>'P379_DEPOSITDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(58210113654926314)
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
 p_id=>wwv_flow_api.id(46892767712038404)
,p_name=>'P379_DOCNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(58210113654926314)
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
 p_id=>wwv_flow_api.id(46893168547038404)
,p_name=>'P379_RCVTYP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(58210113654926314)
,p_prompt=>'Pmt. Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT INITCAP(NARATION),subttype',
'from sydocmas ',
'where COMPCODE = :compcode',
'and MODLCODE = ''AC''',
'AND TRANTYPE =  :P379_TRNTYPE',
'AND to_date(SYSDATE,''dd-mon-yyyy'') Between to_date(strtperd,''dd-mon-yyyy'') ',
'                                   and to_date(endperd,''dd-mon-yyyy'')',
'                                   '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P379_TRNTYPE'
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
 p_id=>wwv_flow_api.id(46893508299038404)
,p_name=>'P379_ACCTCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(58210113654926314)
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
 p_id=>wwv_flow_api.id(46893961468038405)
,p_name=>'P379_COSTCODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(58210113654926314)
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
 p_id=>wwv_flow_api.id(46894380945038405)
,p_name=>'P379_RCVFRM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(58210113654926314)
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
 p_id=>wwv_flow_api.id(46894727755038405)
,p_name=>'P379_REFDET'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(58210113654926314)
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
 p_id=>wwv_flow_api.id(46895183996038405)
,p_name=>'P379_REFSUB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(58210113654926314)
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
 p_id=>wwv_flow_api.id(46895490587038405)
,p_name=>'P379_REFDOCNO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(58210113654926314)
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
 p_id=>wwv_flow_api.id(46895978312038405)
,p_name=>'P379_REFDATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(58210113654926314)
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
 p_id=>wwv_flow_api.id(46896357182038405)
,p_name=>'P379_REMARKS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(58210113654926314)
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
 p_id=>wwv_flow_api.id(46896759862038406)
,p_name=>'P379_TRNTYPE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(58210113654926314)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46897397889038407)
,p_name=>'P379_ACCTNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(58212420446926337)
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
 p_id=>wwv_flow_api.id(46897812686038408)
,p_name=>'P379_ACCTBNKCD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(58212420446926337)
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
 p_id=>wwv_flow_api.id(46898228371038408)
,p_name=>'P379_CHQNUM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(58212420446926337)
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
 p_id=>wwv_flow_api.id(46898602127038408)
,p_name=>'P379_CHQDAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(58212420446926337)
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
 p_id=>wwv_flow_api.id(46899061451038408)
,p_name=>'P379_REFBNK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(58212420446926337)
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
 p_id=>wwv_flow_api.id(46899433596038408)
,p_name=>'P379_BNKNAM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(58212420446926337)
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
 p_id=>wwv_flow_api.id(46899875063038408)
,p_name=>'P379_BNKBRN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(58212420446926337)
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
 p_id=>wwv_flow_api.id(46901620849038413)
,p_name=>'P379_RECEIVABLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(58334223747754130)
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
 p_id=>wwv_flow_api.id(46902047014038413)
,p_name=>'P379_TOTRCP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(58334223747754130)
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
 p_id=>wwv_flow_api.id(46902411218038413)
,p_name=>'P379_RCPAMT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(58334223747754130)
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
 p_id=>wwv_flow_api.id(46902899915038414)
,p_validation_name=>'check_subtype'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P379_RCVTYP is null then',
' raise_application_error( -20000, ''Payment type cannot be null..'' );',
'end if;',
'end;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'Payment type cannot be null..'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46903308008038414)
,p_validation_name=>'check_cheque_no'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'begin',
'if :P379_RCVTYP = 5 and :P379_CHQNUM is null then',
' raise_application_error( -20000, ''Cheque no cannot be null..'' );',
'end if;',
'end;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'Cheque no cannot be null..'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46903696261038414)
,p_validation_name=>'check_cheque_date'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P379_RCVTYP = 5 and :P379_CHQDAT is null then',
' raise_application_error( -20000, ''Cheque Date cannot be null..'' );',
'end if;',
'end;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'Cheque Date cannot be null..'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46907646651038418)
,p_name=>'get_doctyp'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46908179799038419)
,p_event_id=>wwv_flow_api.id(46907646651038418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'		select a.DFPMTDTY',
'     into :P379_TRNTYPE',
'		from accompar a',
'		where a.COMPCODE = :compcode',
'		and YEARCODE = to_char(sysdate,''yyyy'');',
'exception',
'	when no_data_found then',
'	 :P379_TRNTYPE:='''';',
'	when too_many_rows then',
'	 :P379_TRNTYPE:='''';',
'	when others then',
'	 :P379_TRNTYPE:='''';',
'	end;'))
,p_attribute_03=>'P379_TRNTYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46904882851038417)
,p_name=>'show_reg'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(58212420446926337)
,p_condition_element=>'P379_RCVTYP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'5'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46905388581038418)
,p_event_id=>wwv_flow_api.id(46904882851038417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(58212420446926337)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46905848269038418)
,p_event_id=>wwv_flow_api.id(46904882851038417)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(58212420446926337)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46906281488038418)
,p_name=>'show_reg_new'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P379_RCVTYP'
,p_condition_element=>'P379_RCVTYP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'5'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46906778414038418)
,p_event_id=>wwv_flow_api.id(46906281488038418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(58212420446926337)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46907282562038418)
,p_event_id=>wwv_flow_api.id(46906281488038418)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(58212420446926337)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46904002862038414)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'create_docno'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    If :P379_RCPAMT > 0   then',
'        if :P379_RCVTYP = 5 and :P379_CHQNUM is not null and :P379_CHQDAT is not null then',
'            Docnumber_Generation(:compcode, ''AC'', :P379_TRNTYPE,:P379_RCVTYP, :P379_DOCDATE  ,'''',''AC'', :P379_docnumbr);',
'        elsif :P379_RCVTYP <> 5 and :P379_CHQNUM is null and :P379_CHQDAT is null then',
'            Docnumber_Generation(:compcode, ''AC'', :P379_TRNTYPE,:P379_RCVTYP, :P379_DOCDATE  ,'''',''AC'', :P379_docnumbr);',
'        end if;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46904394577038416)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'create_voucher_receiptt'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P379_RCVTYP = 5 and :P379_CHQNUM is not null and :P379_CHQDAT is not null then',
'    dpr_voucher_payment(:P379_TRNTYPE,:P379_RCVTYP,:compcode,:P379_ACCTCODE , :P379_DOCDATE , :P379_RCPAMT,',
'    :P379_RCVFRM , :P379_DOCNUMBR ,:P379_DOCDATE ,:P379_COSTCODE ,:P379_REFDOCNO , :P379_REFDATE,:P379_REFDET,:P379_REFSUB,',
'    :P379_CHQNUM , :P379_CHQDAT,:P379_BNKNAM ,:P379_BNKBRN , :P379_ACCTBNKCD ,:app_user);',
'elsif :P379_RCVTYP <> 5 and :P379_CHQNUM is null and :P379_CHQDAT is null then',
'    dpr_voucher_payment(:P379_TRNTYPE,:P379_RCVTYP,:compcode,:P379_ACCTCODE , :P379_DOCDATE , :P379_RCPAMT,',
'    :P379_RCVFRM , :P379_DOCNUMBR ,:P379_DOCDATE ,:P379_COSTCODE ,:P379_REFDOCNO , :P379_REFDATE,:P379_REFDET,:P379_REFSUB,',
'    :P379_CHQNUM , :P379_CHQDAT,:P379_BNKNAM ,:P379_BNKBRN , :P379_ACCTBNKCD ,:app_user);',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Voucher No generated successfully &P379_DOCNUMBR.'
);
wwv_flow_api.component_end;
end;
/
