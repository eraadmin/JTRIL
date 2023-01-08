prompt --application/shared_components/user_interface/lovs/usertype
begin
--   Manifest
--     USERTYPE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(113231022590274185)
,p_lov_name=>'USERTYPE'
,p_lov_query=>'.'||wwv_flow_api.id(113231022590274185)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(113230711954274179)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'New'
,p_lov_return_value=>'N'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(113230367331274166)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Active'
,p_lov_return_value=>'A'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(113229917179274166)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Leave'
,p_lov_return_value=>'L'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(113229548973274166)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Suspended'
,p_lov_return_value=>'S'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(113229163580274166)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Terminated'
,p_lov_return_value=>'T'
);
wwv_flow_api.component_end;
end;
/
