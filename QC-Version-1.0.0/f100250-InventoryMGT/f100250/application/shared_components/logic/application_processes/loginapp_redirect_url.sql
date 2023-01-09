prompt --application/shared_components/logic/application_processes/loginapp_redirect_url
begin
--   Manifest
--     APPLICATION PROCESS: LOGINAPP_REDIRECT_URL
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
 p_id=>wwv_flow_api.id(66616916844216196)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LOGINAPP_REDIRECT_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT LOGINAPP_REDIRECT_URL,substr(LOGINAPP_REDIRECT_URL,5,3) into :LOGINAPP_REDIRECT_URL,:APPLOGOUT_ID FROM SYPARMAS',
'WHERE CACMPCDE=nvl(:COMPCODE,''100'');',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
