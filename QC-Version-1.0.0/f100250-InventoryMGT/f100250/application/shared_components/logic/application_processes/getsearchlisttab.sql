prompt --application/shared_components/logic/application_processes/getsearchlisttab
begin
--   Manifest
--     APPLICATION PROCESS: getSearchListTab
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(65170920566312825)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'getSearchListTab'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   TYPE curtyp IS REF CURSOR;',
'',
'   v_row       VARCHAR2 (4000);',
'   v_page_id   NUMBER;',
'   rec         curtyp;',
'   v_counter   NUMBER := 0;',
'BEGIN',
'   :tf_sl_search := REPLACE (:tf_sl_search, ''&'', ''&'');',
'   :tf_sl_search := REPLACE (:tf_sl_search, ''<'', ''<'');',
'   :tf_sl_search := REPLACE (:tf_sl_search, ''>'', ''>'');',
'   :tf_sl_search := REPLACE (:tf_sl_search, ''"'', ''"'');',
'   OWA_UTIL.mime_header (''text/xml'', FALSE);',
'   HTP.p (''Cache-Control: no-cache'');',
'   HTP.p (''Pragma: no-cache'');',
'   OWA_UTIL.http_header_close;',
'   HTP.prn (''<rowset>'');',
'',
'   -- Add some code to prevent SQL injection attacks',
'   -- on :TF_SL_TABLE and TF_SL_COLUMN here ...',
'   OPEN rec FOR    ''select distinct ''',
'                || :ITEMCODE',
'                || '' ''',
'                || ''from ''',
'                || :nmitemas',
'                || '' ''',
'                || ''and rownum < 40''',
'                ||    -- change this to the maximum of rows you want to return',
'                   ''order by ''',
'                || :ITEMCODE USING :tf_sl_search;',
'',
'   LOOP',
'      FETCH rec',
'       INTO v_row;',
'',
'      EXIT WHEN rec%NOTFOUND;',
'      HTP.prn (''<row>'' || HTF.escape_sc (v_row) || ''</row>'');',
'      v_counter := v_counter + 1;',
'   END LOOP;',
'      IF v_counter > 0 THEN ',
'      HTP.prn (''<row>'' || '' '' || ''</row>'');',
'      END IF;',
'',
'   HTP.prn (''</rowset>'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
