prompt --application/shared_components/user_interface/lovs/itemtype
begin
--   Manifest
--     ITEMTYPE
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
 p_id=>wwv_flow_api.id(66330043047906377)
,p_lov_name=>'ITEMTYPE'
,p_lov_query=>'.'||wwv_flow_api.id(66330043047906377)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(66330327004906390)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Stock Item'
,p_lov_return_value=>'S'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(66330617963906393)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Non Stock Item'
,p_lov_return_value=>'N'
);
wwv_flow_api.component_end;
end;
/
