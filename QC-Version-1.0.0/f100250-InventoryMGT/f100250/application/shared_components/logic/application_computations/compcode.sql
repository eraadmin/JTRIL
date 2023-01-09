prompt --application/shared_components/logic/application_computations/compcode
begin
--   Manifest
--     APPLICATION COMPUTATION: COMPCODE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(53763687835628508)
,p_computation_sequence=>10
,p_computation_item=>'COMPCODE'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'&COMPCODE.'
);
wwv_flow_api.component_end;
end;
/
