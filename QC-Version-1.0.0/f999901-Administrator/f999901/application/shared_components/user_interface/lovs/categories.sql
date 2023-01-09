prompt --application/shared_components/user_interface/lovs/categories
begin
--   Manifest
--     CATEGORIES
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(21266635840428596)
,p_lov_name=>'CATEGORIES'
,p_lov_query=>'.'||wwv_flow_api.id(21266635840428596)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21267014529428609)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Mens'
,p_lov_return_value=>'Mens'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21267484781428612)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Womens'
,p_lov_return_value=>'Womens'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21267828737428612)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Accessories'
,p_lov_return_value=>'Accessories'
);
wwv_flow_api.component_end;
end;
/
