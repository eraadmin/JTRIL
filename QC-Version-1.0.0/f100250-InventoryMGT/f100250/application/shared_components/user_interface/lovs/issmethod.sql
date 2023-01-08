prompt --application/shared_components/user_interface/lovs/issmethod
begin
--   Manifest
--     ISSMETHOD
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
 p_id=>wwv_flow_api.id(66335227042996368)
,p_lov_name=>'ISSMETHOD'
,p_lov_query=>'.'||wwv_flow_api.id(66335227042996368)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(66335537319996368)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'LIFO'
,p_lov_return_value=>'LF'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(66335843691996368)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'FIFO'
,p_lov_return_value=>'FF'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(66336133069996368)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'NORMAL'
,p_lov_return_value=>'NN'
);
wwv_flow_api.component_end;
end;
/
