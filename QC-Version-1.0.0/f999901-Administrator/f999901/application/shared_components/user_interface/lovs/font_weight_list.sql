prompt --application/shared_components/user_interface/lovs/font_weight_list
begin
--   Manifest
--     FONT WEIGHT LIST
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
 p_id=>wwv_flow_api.id(11687851180160170)
,p_lov_name=>'FONT WEIGHT LIST'
,p_lov_query=>'.'||wwv_flow_api.id(11687851180160170)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11688158839160187)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Regular'
,p_lov_return_value=>'Regular'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11688518060160201)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Bold'
,p_lov_return_value=>'Bold'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11688999885160201)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Italic'
,p_lov_return_value=>'Italic'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11689306850160203)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'100'
,p_lov_return_value=>'100'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11689777353160203)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'200'
,p_lov_return_value=>'200'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11690192883160203)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'300'
,p_lov_return_value=>'300'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11690502060160203)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'400'
,p_lov_return_value=>'400'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11690911138160204)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'500'
,p_lov_return_value=>'500'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11691382318160204)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'600'
,p_lov_return_value=>'600'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11691763649160206)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'700'
,p_lov_return_value=>'700'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11692180140160206)
,p_lov_disp_sequence=>11
,p_lov_disp_value=>'800'
,p_lov_return_value=>'800'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11692564294160206)
,p_lov_disp_sequence=>12
,p_lov_disp_value=>'900'
,p_lov_return_value=>'900'
);
wwv_flow_api.component_end;
end;
/
