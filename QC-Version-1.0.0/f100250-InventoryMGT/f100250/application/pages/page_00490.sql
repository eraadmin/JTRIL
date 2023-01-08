prompt --application/pages/page_00490
begin
--   Manifest
--     PAGE: 00490
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
 p_id=>490
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Report'
,p_alias=>'REPORT'
,p_page_mode=>'MODAL'
,p_step_title=>'Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px 0px !important;',
'}'))
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220118175932'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(363509995496988679)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(530996671329743851)
,p_plug_name=>'Search Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:50%;float:left; "'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(532313760071151116)
,p_plug_name=>'Report Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:70%;float:left;margin-left:1px;margin-top:1px; "'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_1'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<iframe src="&P490_XURLTEST." width="1000" height="1000">',
'  <p>Your browser does not support iframes.</p>',
'</iframe>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4811447816225500)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(363509995496988679)
,p_button_name=>'Back'
,p_button_static_id=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Back'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:&P490_BACKPAGE.:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P490_BACKPAGE'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4811097525225493)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(363509995496988679)
,p_button_name=>'goback'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'<< Goback'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:&P490_BACKPAGE.:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P490_BACKPAGE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4803246953225460)
,p_name=>'P490_BASECURR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4803600916225471)
,p_name=>'P490_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'url varchar2(1000);',
'cod varchar2(100):=''A0001'';',
'begin',
'--:P490_BASECURR1:=:P490_BASECURR;',
'--cod := :P490_BASECURR;',
'--select 27 into :P490_BASECURR from dual;',
'select distinct s.REPTURLL||''/reports/rwservlet/getjobid2376?server=rep_adminserver_reaz_asinst_1''||',
'CHR (38)',
'|| ''desformat=PDF''',
'|| CHR (38)',
'|| ''destype=Cache''',
'|| CHR (38)',
'|| ''P5=''',
'|| cod ',
'|| CHR (38)',
'|| ''APP_USER=''',
'|| :app_user',
'|| CHR (38)',
'|| ''PROGRAM_CODE=''',
'|| :P307_PROGCODE',
'|| CHR (38)',
'|| ''SESSION_ID=''',
'|| :APP_SESSION',
'into ',
'url',
'     from syparmas s',
'     where CACMPCDE = :compcode;',
'return(url);',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4803978786225478)
,p_name=>'P490_PROGNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4804379390225478)
,p_name=>'P490_XURLTEST'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4804748875225479)
,p_name=>'P490_XURL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4805152270225481)
,p_name=>'P490_DOCNUMBR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT docnumbr||''-''||doctdate||''-''||custname d,docnumbr r',
'           FROM nmsalrec s, nmcusmas cu',
'          WHERE s.partycde = cu.partycde',
'       ORDER BY s.docnumbr DESC',
'',
':P37_DOCNUMBR'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4805542401225482)
,p_name=>'P490_DOCTDATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT docnumbr||''-''||doctdate||''-''||custname d,docnumbr r',
'           FROM nmsalrec s, nmcusmas cu',
'          WHERE s.partycde = cu.partycde',
'       ORDER BY s.docnumbr DESC',
'',
':P37_DOCNUMBR'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4805921196225482)
,p_name=>'P490_DOCTTDAT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT docnumbr||''-''||doctdate||''-''||custname d,docnumbr r',
'           FROM nmsalrec s, nmcusmas cu',
'          WHERE s.partycde = cu.partycde',
'       ORDER BY s.docnumbr DESC',
'',
':P37_DOCNUMBR'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4806301544225484)
,p_name=>'P490_OFRDOCNUMBR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4806796466225485)
,p_name=>'P490_DEVDOCNUMBR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4807195791225485)
,p_name=>'P490_GATDOCNUMBR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4807573075225485)
,p_name=>'P490_ITEMCODE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4807967995225487)
,p_name=>'P490_PARTYCODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4808337260225487)
,p_name=>'P490_POSTFLAG'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4808750953225487)
,p_name=>'P490_COSTCODE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4809186795225487)
,p_name=>'P490_ACCTCODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4809517789225487)
,p_name=>'P490_TEST'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4809942978225487)
,p_name=>'P490_DOCTTYPE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4810367924225487)
,p_name=>'P490_SUBTTYPE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(530996671329743851)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4811871185225500)
,p_name=>'P490_BACKPAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(363509995496988679)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4812919488225548)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(4811447816225500)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4813419807225551)
,p_event_id=>wwv_flow_api.id(4812919488225548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4812505599225540)
,p_process_sequence=>5
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Server Pc Windows'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_path          varchar2(100);',
'V_comcde        varchar2(5);',
'V_prgnme        varchar2(500);',
'v_url           varchar2(500);',
'v_ip            varchar2(500);',
'v_repsrvrnme    varchar2(500);',
'v_osname        VARCHAR2(50);',
'v_frmdte        date;',
'v_toodte        date;',
'V_FLG           VARCHAR2(50);',
'v_party         varchar2(100);',
'v_doc           varchar2(50);',
'v_sub           number;',
'v_docNO         varchar2(100);',
'v_cost          varchar2(100);',
'v_acct          varchar2(100);',
'v_prog          varchar2(100);',
'v_tnsdetails    varchar2(1000);',
'begin',
'v_frmdte    := to_date(:P490_DOCTDATE);',
'v_toodte    := to_date(:P490_DOCTTDAT); ',
'V_FLG       := :P490_POSTFLAG;',
'v_party     := :P490_partycode;',
'v_doc       := :P490_DOCTTYPE;',
'v_sub       := :P490_SUBTTYPE;',
'v_docno     := :P490_DOCNUMBR;',
'v_cost      := :P490_COSTCODE;',
'v_acct      := :P490_ACCTCODE;',
'v_prog      := :P490_PROGNAME;',
'',
'select REPTURLL ',
'into v_ip',
'from syparmas',
'where CACMPCDE=:COMPCODE;',
'',
'select RPTSRVNM ',
'into v_repsrvrnme',
'from syparmas',
'where CACMPCDE=:COMPCODE;',
'',
'select ORACUSER||''/''||ORACPASW||''@''||IPADDRES ||'':''||PORTNUMB||''/''||ORACLSID as tnsdetails ',
'into v_tnsdetails',
'from sytnsnam;',
'',
'v_url :=v_ip|| ''/reports/rwservlet?server=''||v_repsrvrnme||''&userid=''||v_tnsdetails||''&desformat=PDF&destype=cache&paramform=NO&report='';',
'',
'select WEBDRPTH ',
'into V_path',
'from sysyspth',
'where PATHCODE= substr(UPPER(v_prog),1,2); ',
'',
':P490_XURLTEST :=v_url||V_path||v_prog||''.rdf''||''&p0=''||:COMPCODE||''&p13=''||:P490_DOCNUMBR||''&p11=''||v_frmdte||''&p12=''||v_toodte;',
'--:P490_XURLTEST :=v_url||V_path||v_prog||''.rdf''||''&p0=''||:COMPCODE||''&p5=''||:P490_DOCNUMBR;',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''nodata''||V_path);',
'when too_many_rows then',
'raise_application_error(-20001,''toomany''||v_url);',
'when others then',
'raise_application_error(-20001,''others''||v_url);',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
