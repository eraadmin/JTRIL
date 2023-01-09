prompt --application/shared_components/user_interface/lovs/costmethod1
begin
--   Manifest
--     COSTMETHOD1
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
 p_id=>wwv_flow_api.id(37960471977888200)
,p_lov_name=>'COSTMETHOD1'
,p_lov_query=>'.'||wwv_flow_api.id(37960471977888200)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(37960836199888200)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'FIFO'
,p_lov_return_value=>'FF'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(37961225388888200)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'LIFO'
,p_lov_return_value=>'LF'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(37961678871888200)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'WEIGHTED AVERAGE'
,p_lov_return_value=>'WA'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(37962044014888200)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'BATCH'
,p_lov_return_value=>'BT'
);
wwv_flow_api.component_end;
end;
/
