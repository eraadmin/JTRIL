prompt --application/shared_components/logic/application_processes/other_cost
begin
--   Manifest
--     APPLICATION PROCESS: OTHER_COST
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
 p_id=>wwv_flow_api.id(101581577567538487)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'OTHER_COST'
,p_process_sql_clob=>':OTHERCOST_PAGE := 0;'
,p_process_clob_language=>'PLSQL'
,p_process_when=>'421'
,p_process_when_type=>'CURRENT_PAGE_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
