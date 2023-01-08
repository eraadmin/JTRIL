prompt --application/shared_components/logic/application_computations/new_user_rqst_count
begin
--   Manifest
--     APPLICATION COMPUTATION: NEW_USER_RQST_COUNT
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(110519469650302906)
,p_computation_sequence=>10
,p_computation_item=>'NEW_USER_RQST_COUNT'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) FROM USRSGNUP',
'WHERE VALDFLAG=''N''',
'and USERTYPE =''N'''))
);
wwv_flow_api.component_end;
end;
/
