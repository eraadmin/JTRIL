prompt --application/shared_components/logic/application_processes/filter_shuttle_item
begin
--   Manifest
--     APPLICATION PROCESS: filter_shuttle_item
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
 p_id=>wwv_flow_api.id(62385935968107858)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'filter_shuttle_item'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   OWA_UTIL.mime_header (''text/xml'', FALSE);',
'   HTP.p (''Cache-Control: no-cache'');',
'   HTP.p (''Pragma: no-cache'');',
'   OWA_UTIL.http_header_close;',
'   HTP.prn (''<select>'');',
'',
'   FOR c IN (SELECT city_id, HTF.escape_sc (city) city',
'               FROM world_cities',
'              WHERE LOWER (city) LIKE',
'                                      ''%'' || LOWER (:filter_item_value)',
'                                      || ''%''',
'                AND INSTR ('':'' || :shuttle_item_value || '':'',',
'                           '':'' || city_id || '':''',
'                          ) = 0',
'              ORDER BY city)',
'   LOOP',
'      HTP.prn (''<option value="'' || c.city_id || ''">'' || c.city || ''</option>'');',
'   END LOOP;',
'',
'   HTP.prn (''</select>'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
