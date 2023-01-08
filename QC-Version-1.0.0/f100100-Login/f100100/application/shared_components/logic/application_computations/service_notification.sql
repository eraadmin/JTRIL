prompt --application/shared_components/logic/application_computations/service_notification
begin
--   Manifest
--     APPLICATION COMPUTATION: SERVICE_NOTIFICATION
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
 p_id=>wwv_flow_api.id(35644770993474043)
,p_computation_sequence=>10
,p_computation_item=>'SERVICE_NOTIFICATION'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(distinct PARAMVAL)  from sypndjob',
'where AUTHPERS =:APP_USER',
'and ACTVSTAT = 0',
'and CHECKEDD = ''Y'' ',
'and compcode = :compcode'))
);
wwv_flow_api.component_end;
end;
/
