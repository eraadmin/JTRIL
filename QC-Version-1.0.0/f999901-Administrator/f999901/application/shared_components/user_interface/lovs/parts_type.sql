prompt --application/shared_components/user_interface/lovs/parts_type
begin
--   Manifest
--     PARTS TYPE
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
 p_id=>wwv_flow_api.id(64798760104687190)
,p_lov_name=>'PARTS TYPE'
,p_lov_query=>'.'||wwv_flow_api.id(64798760104687190)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(64799051182687190)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Foreign'
,p_lov_return_value=>'N'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(64799427186687190)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Local'
,p_lov_return_value=>'Y'
);
wwv_flow_api.component_end;
end;
/
