prompt --application/shared_components/user_interface/lovs/itemtype2
begin
--   Manifest
--     ITEMTYPE2
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
 p_id=>wwv_flow_api.id(42626468723040590)
,p_lov_name=>'ITEMTYPE2'
,p_lov_query=>'.'||wwv_flow_api.id(42626468723040590)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42626859697040596)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Stock Item'
,p_lov_return_value=>'S'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42627252261040602)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Non Stock Item'
,p_lov_return_value=>'N'
);
wwv_flow_api.component_end;
end;
/
