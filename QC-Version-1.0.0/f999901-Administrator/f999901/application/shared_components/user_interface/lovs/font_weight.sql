prompt --application/shared_components/user_interface/lovs/font_weight
begin
--   Manifest
--     FONT_WEIGHT
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
 p_id=>wwv_flow_api.id(51854819446020845)
,p_lov_name=>'FONT_WEIGHT'
,p_lov_query=>'.'||wwv_flow_api.id(51854819446020845)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(51855160297020854)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Bold'
,p_lov_return_value=>'B'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(51855585077020867)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Italic'
,p_lov_return_value=>'I'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(51855999617020867)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Underline'
,p_lov_return_value=>'U'
);
wwv_flow_api.component_end;
end;
/
