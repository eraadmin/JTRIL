prompt --application/shared_components/user_interface/lovs/new_or_existing_customer
begin
--   Manifest
--     NEW OR EXISTING CUSTOMER
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
 p_id=>wwv_flow_api.id(4177742337799473172)
,p_lov_name=>'NEW OR EXISTING CUSTOMER'
,p_lov_query=>'.'||wwv_flow_api.id(4177742337799473172)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4177742555036473175)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Existing Customer'
,p_lov_return_value=>'EXISTING'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4177742769127473180)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'New Customer'
,p_lov_return_value=>'NEW'
);
wwv_flow_api.component_end;
end;
/
