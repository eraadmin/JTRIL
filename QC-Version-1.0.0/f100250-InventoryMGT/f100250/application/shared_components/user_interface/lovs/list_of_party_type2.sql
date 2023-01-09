prompt --application/shared_components/user_interface/lovs/list_of_party_type2
begin
--   Manifest
--     LIST OF PARTY TYPE2
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
 p_id=>wwv_flow_api.id(101418795556082520)
,p_lov_name=>'LIST OF PARTY TYPE2'
,p_lov_query=>'.'||wwv_flow_api.id(101418795556082520)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(101419211666082520)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Customer'
,p_lov_return_value=>'CU'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(101419578316082523)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Vendor'
,p_lov_return_value=>'VE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(101419999217082523)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Customer-Vendor'
,p_lov_return_value=>'CV'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(101420380011082523)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Employee-Staff'
,p_lov_return_value=>'ES'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(101420837774082523)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Employee-Worker'
,p_lov_return_value=>'EW'
);
wwv_flow_api.component_end;
end;
/
