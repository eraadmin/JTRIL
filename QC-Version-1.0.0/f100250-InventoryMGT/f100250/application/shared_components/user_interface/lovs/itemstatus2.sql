prompt --application/shared_components/user_interface/lovs/itemstatus2
begin
--   Manifest
--     ITEMSTATUS2
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
 p_id=>wwv_flow_api.id(42629658653040606)
,p_lov_name=>'ITEMSTATUS2'
,p_lov_query=>'.'||wwv_flow_api.id(42629658653040606)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42630017053040606)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Active'
,p_lov_return_value=>'ACT'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42630424976040606)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Not Active'
,p_lov_return_value=>'NOT'
);
wwv_flow_api.component_end;
end;
/
