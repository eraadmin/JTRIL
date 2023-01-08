prompt --application/shared_components/logic/application_processes/nameexists
begin
--   Manifest
--     APPLICATION PROCESS: NameExists
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
 p_id=>wwv_flow_api.id(60507184141389008)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NameExists'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_flag varchar2(1);',
'BEGIN',
'select distinct ESTJOBNO ',
'into l_flag',
'from nmnegmas',
'where SRVCNOFK = v(''ID'');',
'',
'htp.p(''true'');',
'',
'EXCEPTION',
'when no_data_found then ',
'',
'htp.p(''false'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
