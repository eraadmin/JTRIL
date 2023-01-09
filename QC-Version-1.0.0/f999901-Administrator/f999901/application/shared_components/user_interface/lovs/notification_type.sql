prompt --application/shared_components/user_interface/lovs/notification_type
begin
--   Manifest
--     NOTIFICATION TYPE
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
 p_id=>wwv_flow_api.id(2865053701909465075)
,p_lov_name=>'NOTIFICATION TYPE'
,p_lov_query=>'.'||wwv_flow_api.id(2865053701909465075)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2865054005559465078)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Yellow'
,p_lov_return_value=>'YELLOW'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2865054216304465079)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Red'
,p_lov_return_value=>'RED'
);
wwv_flow_api.component_end;
end;
/
