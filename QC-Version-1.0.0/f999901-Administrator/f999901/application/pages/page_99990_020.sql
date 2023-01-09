prompt --application/pages/page_99990_020
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
 p_id=>9999010000
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Query Report Generate'
,p_alias=>'QUERY-REPORT-GENERATE'
,p_page_mode=>'MODAL'
,p_step_title=>'Query Report Generate'
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
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'ui-dialog--stretch'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20221228131734'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(172151353543990038)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(872703396395080716)
,p_plug_name=>'Search Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:50%;float:left; "'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(874020485136487981)
,p_plug_name=>'Report Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:70%;float:left;margin-left:1px;margin-top:1px; "'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_1'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<iframe src="&P9999010000_URL." width="1000" height="1000">',
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
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39252241855407998)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(172151353543990038)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Back'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39252953782407999)
,p_name=>'P9999010000_PROGNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39253357672408001)
,p_name=>'P9999010000_PATH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39253723296408001)
,p_name=>'P9999010000_REPTURLL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_item_default=>'REPTURLL'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39254136331408001)
,p_name=>'P9999010000_REPSERVER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_source=>'REPSERVER'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39254545342408002)
,p_name=>'P9999010000_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39254973934408002)
,p_name=>'P9999010000_BASECURR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39255339508408002)
,p_name=>'P9999010000_DOCNUMBR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
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
 p_id=>wwv_flow_api.id(39255777379408002)
,p_name=>'P9999010000_DOCTDATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
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
 p_id=>wwv_flow_api.id(39256161761408003)
,p_name=>'P9999010000_DOCTTDAT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
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
 p_id=>wwv_flow_api.id(39256510572408003)
,p_name=>'P9999010000_OFRDOCNUMBR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39256915447408003)
,p_name=>'P9999010000_DEVDOCNUMBR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39257304628408003)
,p_name=>'P9999010000_GATDOCNUMBR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39257766688408003)
,p_name=>'P9999010000_ITEMCODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39258101214408004)
,p_name=>'P9999010000_PARTYCODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39258588568408004)
,p_name=>'P9999010000_POSTFLAG'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39258936206408004)
,p_name=>'P9999010000_COSTCODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39259326129408004)
,p_name=>'P9999010000_ACCTCODE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39259708676408004)
,p_name=>'P9999010000_DOCTTYPE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39260195156408005)
,p_name=>'P9999010000_SUBTTYPE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39260513794408006)
,p_name=>'P9999010000_MODLCODE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_item_default=>':MODLCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39260951520408006)
,p_name=>'P9999010000_WARECODE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(872703396395080716)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39264452315408010)
,p_name=>'close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39252241855407998)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39264957097408010)
,p_event_id=>wwv_flow_api.id(39264452315408010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39261677553408007)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DMO server 1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 03-Nov-21 5:56:39 PM (QP5 v5.287) */',
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
'       WHERE PROGNAME = :P9999010000_PROGNAME;',
'   EXCEPTION',
'      WHEN NO_DATA_FOUND',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20001, ''Report Path Not Found. ''|| :P9999010000_PROGNAME);',
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
'         RAISE_APPLICATION_ERROR (-20001, ''Report Directory Not Found. '');',
'   END;',
'',
'   IF vSvrType = ''Y''',
'   THEN',
'      :P9999010000_PATH := vLinuxDir;',
'   ELSE',
'      :P9999010000_PATH := vWindowsDir;',
'   END IF;',
'',
'',
'   v_url :=',
'         :REPTURLL',
'      || ''/reports/rwservlet?server=''',
'      || :REPSERVER',
'      || ''&userid=''',
'      || ''ORBRGS/orbrgs@10.11.201.53:1525/ORBITSPDB''--:CURRENT_SCHEMA',
'      || ''&desformat=pdf&destype=cache&paramform=NO&report='';',
'',
'',
'   :P9999010000_URL :=',
'         v_url',
'      || :P9999010000_PATH',
'      || :P9999010000_PROGNAME',
'      || ''.rdf''',
'      || ''&p0=''',
'      || :COMPCODE',
'      || ''&p73=''',
'      || :P9999010000_DOCTTYPE',
'      || ''&p1=''',
'      || :P9999010000_DOCTTYPE',
'      || ''&p72=''',
'      || :P9999010000_SUBTTYPE',
'      || ''&p3=''',
'      || :P9999010000_SUBTTYPE',
'      || ''&p13=''',
'      || :P9999010000_DOCNUMBR',
'      || ''&p5=''',
'      || :P9999010000_DOCNUMBR',
'      || ''&p11=''',
'      || :P9999010000_DOCTDATE',
'      || ''&p12=''',
'      || :P9999010000_DOCTDATE',
'      || ''&p29=''',
'      || :P9999010000_WARECODE;',
'--raise_application_error(-20001,v_url);',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
