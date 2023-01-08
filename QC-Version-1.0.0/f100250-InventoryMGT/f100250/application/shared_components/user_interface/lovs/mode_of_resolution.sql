prompt --application/shared_components/user_interface/lovs/mode_of_resolution
begin
--   Manifest
--     MODE OF RESOLUTION
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
 p_id=>wwv_flow_api.id(101844983890361775)
,p_lov_name=>'MODE OF RESOLUTION'
,p_lov_query=>'.'||wwv_flow_api.id(101844983890361775)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(101845457304361775)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'P/D'
,p_lov_return_value=>'P/D'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(101845768523361775)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Workshop Visit'
,p_lov_return_value=>'Workshop Visit'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(101846187958361775)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Home Visit'
,p_lov_return_value=>'Home Visit'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(101846638440361775)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Scramble Team'
,p_lov_return_value=>'Scramble Team'
);
wwv_flow_api.component_end;
end;
/
