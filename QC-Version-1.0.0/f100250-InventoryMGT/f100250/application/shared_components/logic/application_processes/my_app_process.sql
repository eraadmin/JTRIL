prompt --application/shared_components/logic/application_processes/my_app_process
begin
--   Manifest
--     APPLICATION PROCESS: MY_APP_PROCESS
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
 p_id=>wwv_flow_api.id(45339420984849881)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'MY_APP_PROCESS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'HTP.p(''You passed "''||APEX_APPLICATION.g_x01 ||''" as the value for x01. '');',
'HTP.p(''You passed "''||APEX_APPLICATION.g_x02 ||''" as the value for x02. '');',
'HTP.p(''You passed "''||APEX_APPLICATION.g_x03 ||''" as the value for x03. '');'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
