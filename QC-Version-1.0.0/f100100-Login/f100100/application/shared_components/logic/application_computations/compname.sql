prompt --application/shared_components/logic/application_computations/compname
begin
--   Manifest
--     APPLICATION COMPUTATION: COMPNAME
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
 p_id=>wwv_flow_api.id(102720394366717551)
,p_computation_sequence=>10
,p_computation_item=>'COMPNAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Distinct A.CACMPNAM ',
'From SYPARMAS A ',
'Where A.CACMPCDE =:COMPCODE;'))
);
wwv_flow_api.component_end;
end;
/
