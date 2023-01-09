prompt --application/shared_components/user_interface/lovs/costmethod2
begin
--   Manifest
--     COSTMETHOD2
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
 p_id=>wwv_flow_api.id(42631080906040609)
,p_lov_name=>'COSTMETHOD2'
,p_lov_query=>'.'||wwv_flow_api.id(42631080906040609)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42631427459040609)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'FIFO'
,p_lov_return_value=>'FF'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42631908972040610)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'LIFO'
,p_lov_return_value=>'LF'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42632251589040610)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'WEIGHTED AVERAGE'
,p_lov_return_value=>'WA'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42632654351040610)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'BATCH'
,p_lov_return_value=>'BT'
);
wwv_flow_api.component_end;
end;
/
