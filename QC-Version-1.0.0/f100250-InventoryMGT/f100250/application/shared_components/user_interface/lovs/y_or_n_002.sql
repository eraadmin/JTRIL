prompt --application/shared_components/user_interface/lovs/y_or_n_002
begin
--   Manifest
--     Y_OR_N
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(42724944582988014)
,p_lov_name=>'Y_OR_N'
,p_lov_query=>'.'||wwv_flow_api.id(42724944582988014)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42725302938988016)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Credit'
,p_lov_return_value=>'Y'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42725688206988016)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Cash'
,p_lov_return_value=>'N'
);
wwv_flow_api.component_end;
end;
/
