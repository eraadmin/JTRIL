prompt --application/shared_components/user_interface/lovs/usertype
begin
--   Manifest
--     USERTYPE
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
 p_id=>wwv_flow_api.id(55429422705001839)
,p_lov_name=>'USERTYPE'
,p_lov_query=>'.'||wwv_flow_api.id(55429422705001839)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(55429706991001846)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'New'
,p_lov_return_value=>'N'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(55430161571001851)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Active'
,p_lov_return_value=>'A'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(55430582838001854)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Leave'
,p_lov_return_value=>'L'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(55430906103001854)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Suspended'
,p_lov_return_value=>'S'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(55431380959001854)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Terminated'
,p_lov_return_value=>'T'
);
wwv_flow_api.component_end;
end;
/
