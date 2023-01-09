prompt --application/shared_components/logic/application_processes/get_process
begin
--   Manifest
--     APPLICATION PROCESS: Get_process
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
 p_id=>wwv_flow_api.id(66965308422130686)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get_process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT distinct C.PROCESS_NAME',
'     into :A_Process_name',
'     FROM prdepartment d, prprocess c, PRPROCESSRGT g',
'         WHERE     D.COMPCODE = C.COMPCODE',
'               AND D.DEPT_NO = C.DEPT_NO',
'               And G.PROCESS_NO = C.PROCESS_NO',
'               AND D.COMPCODE = :compcode',
'               and G.USER_CODE = :APP_USER;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
