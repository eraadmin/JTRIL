prompt --application/pages/page_99990
begin
--   Manifest
--     PAGE: 99990
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
 p_id=>99990100
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Transactional Report'
,p_alias=>'TRANSACTIONAL-REPORT'
,p_page_mode=>'MODAL'
,p_step_title=>'Transactional Report'
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
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20220713092850'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(590963479183013248)
,p_plug_name=>'report'
,p_region_css_classes=>'u-textCenter'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_URL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'&P99990100_URL.'
,p_attribute_02=>'IFRAME'
,p_attribute_03=>'width=80% height=100%'
,p_plug_comment=>'style="text-align:center"'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1444921209424776274)
,p_plug_name=>'Search Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1446238298166183539)
,p_plug_name=>'Report Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<iframe src="&P99990100_URL." width="1000" height="1000">',
'  <p>Your browser does not support iframes.</p>',
'</iframe>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>'style="width:70%;float:left;margin-left:1px;margin-top:1px; "'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45625167197879536)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_button_name=>'Cancel'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45625526696879538)
,p_name=>'P99990100_PROGNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45625944559879540)
,p_name=>'P99990100_PATH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45626354733879540)
,p_name=>'P99990100_REPTURLL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_source=>'REPTURLL'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45626754806879541)
,p_name=>'P99990100_REPSERVER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_source=>'REPSERVER'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45627109855879541)
,p_name=>'P99990100_URL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'url varchar2(1000);',
'cod varchar2(100):=''A0001'';',
'begin',
'--:P99990100_BASECURR1:=:P99990100_BASECURR;',
'--cod := :P99990100_BASECURR;',
'--select 27 into :P99990100_BASECURR from dual;',
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
 p_id=>wwv_flow_api.id(45627540153879542)
,p_name=>'P99990100_BASECURR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45627925884879542)
,p_name=>'P99990100_DOCNUMBR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
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
 p_id=>wwv_flow_api.id(45628357879879543)
,p_name=>'P99990100_DOCTDATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
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
 p_id=>wwv_flow_api.id(45628717310879543)
,p_name=>'P99990100_DOCTTDAT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
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
 p_id=>wwv_flow_api.id(45629154745879543)
,p_name=>'P99990100_OFRDOCNUMBR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45629530216879543)
,p_name=>'P99990100_DEVDOCNUMBR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45629940305879544)
,p_name=>'P99990100_GATDOCNUMBR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45630361951879544)
,p_name=>'P99990100_ITEMCODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45630798478879544)
,p_name=>'P99990100_PARTYCODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45631102154879544)
,p_name=>'P99990100_POSTFLAG'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45631599741879545)
,p_name=>'P99990100_COSTCODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45631970011879545)
,p_name=>'P99990100_ACCTCODE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45632325752879546)
,p_name=>'P99990100_DOCTTYPE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45632717770879546)
,p_name=>'P99990100_SUBTTYPE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45633181230879546)
,p_name=>'P99990100_MODLCODE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_item_default=>':MODLCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45633503197879546)
,p_name=>'P99990100_WARECODE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(1444921209424776274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45634685698879565)
,p_name=>'Cancel dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(45625167197879536)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45635190780879566)
,p_event_id=>wwv_flow_api.id(45634685698879565)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45634291636879559)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RML server'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_url         VARCHAR2 (500);',
'   vSvrType      VARCHAR2 (1);',
'   vPATHCODE     VARCHAR2 (5);',
'   vLinuxDir     VARCHAR2 (40);',
'   vWindowsDir   VARCHAR2 (200);',
'BEGIN',
'   BEGIN',
'      SELECT NVL (LINUX_RPTSERVER_USE, ''N'')',
'        INTO vSvrType',
'        FROM syparmas',
'       WHERE CACMPCDE = :COMPCODE;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         vSvrType := ''N'';',
'   END;',
'',
'   BEGIN',
'      SELECT PATHCODE',
'        INTO vPATHCODE',
'        FROM SYMENMAS',
'       WHERE LOWER(PROGNAME) = LOWER(:P99990100_PROGNAME);',
'   EXCEPTION',
'      /*WHEN NO_DATA_FOUND',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20001, ''1.Report Path Not Found. ''|| :P99990100_PROGNAME);*/',
'      WHEN others',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20003, ''Problem in Report Path. ''|| :P99990100_PROGNAME|| sqlerrm);',
'   END;',
'',
'   BEGIN',
'      SELECT SYPTHDIR, WEBDRPTH',
'        INTO vLinuxDir, vWindowsDir',
'        FROM sysyspth',
'       WHERE PATHCODE = vPATHCODE; --SUBSTR (UPPER ( :P99990100_PROGNAME), 1, 2);',
'   EXCEPTION',
'      WHEN NO_DATA_FOUND',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20002, ''2.Report Path Not Found. '');',
'   END;',
'',
'   /* SELECT WEBDRPTH',
'   INTO V_path',
'   FROM sysyspth',
'  WHERE PATHCODE = SUBSTR (UPPER ( :P9999010000_PROGNAME), 1, 2);',
'  */',
'',
'   IF vSvrType = ''Y''',
'   THEN',
'      :P99990100_PATH := vLinuxDir;',
'   ELSE',
'      :P99990100_PATH := vWindowsDir;',
'   END IF;',
'',
'',
'   v_url :=',
'         :REPTURLL',
'      || ''/reports/rwservlet?server=''',
'      || :REPSERVER',
'      || ''&userid=''',
'      || :CURRENT_SCHEMA',
'      || ''/orbrgs@10.11.201.58:1521/orbitspdb&desformat=pdf&destype=cache&paramform=NO&report='';',
'',
'   :P99990100_URL :=',
'         v_url',
'      || :P99990100_PATH ',
'      || :P99990100_PROGNAME',
'      || ''.rdf''',
'      || ''&p0=''',
'      || :COMPCODE',
'      || ''&p73=''',
'      || :P99990100_DOCTTYPE',
'      || ''&p1=''',
'      || :P99990100_DOCTTYPE',
'      || ''&p72=''',
'      || :P99990100_SUBTTYPE',
'      || ''&p3=''',
'      || :P99990100_SUBTTYPE',
'      || ''&p13=''',
'      || :P99990100_DOCNUMBR',
'      || ''&p5=''',
'      || :P99990100_DOCNUMBR',
'      || ''&p11=''',
'      || :P99990100_DOCTDATE',
'      || ''&p12=''',
'      || :P99990100_DOCTDATE',
'      || ''&p29=''',
'      || :P99990100_WARECODE;',
'--raise_application_error(-20001,v_url);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
