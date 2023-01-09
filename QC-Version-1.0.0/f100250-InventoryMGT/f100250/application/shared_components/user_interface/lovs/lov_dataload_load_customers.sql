prompt --application/shared_components/user_interface/lovs/lov_dataload_load_customers
begin
--   Manifest
--     LOV_DATALOAD_LOAD CUSTOMERS
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
 p_id=>wwv_flow_api.id(996464087138270541)
,p_lov_name=>'LOV_DATALOAD_LOAD CUSTOMERS'
,p_lov_query=>'.'||wwv_flow_api.id(996464087138270541)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(996464782375270542)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Customer Identifier'
,p_lov_return_value=>'CUSTOMER_ID'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(996465682555270542)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'First Name'
,p_lov_return_value=>'CUST_FIRST_NAME'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(996465983593270542)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Last Name'
,p_lov_return_value=>'CUST_LAST_NAME'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(996466878802270542)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Street Address'
,p_lov_return_value=>'CUST_STREET_ADDRESS1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(996467168950270543)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'Street Address Line 2'
,p_lov_return_value=>'CUST_STREET_ADDRESS2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(996465072957270542)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'City'
,p_lov_return_value=>'CUST_CITY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(996466586442270542)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'State'
,p_lov_return_value=>'CUST_STATE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(996466283037270542)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'Postal Code'
,p_lov_return_value=>'CUST_POSTAL_CODE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(996465401202270542)
,p_lov_disp_sequence=>90
,p_lov_disp_value=>'Email'
,p_lov_return_value=>'CUST_EMAIL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(996467477064270543)
,p_lov_disp_sequence=>100
,p_lov_disp_value=>'Phone Number'
,p_lov_return_value=>'PHONE_NUMBER1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(996467782645270544)
,p_lov_disp_sequence=>110
,p_lov_disp_value=>'Alternate Number'
,p_lov_return_value=>'PHONE_NUMBER2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(996468383618270544)
,p_lov_disp_sequence=>120
,p_lov_disp_value=>'URL'
,p_lov_return_value=>'URL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(996464470920270542)
,p_lov_disp_sequence=>130
,p_lov_disp_value=>'Credit Limit'
,p_lov_return_value=>'CREDIT_LIMIT'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(996468071383270544)
,p_lov_disp_sequence=>140
,p_lov_disp_value=>'Tags'
,p_lov_return_value=>'TAGS'
);
wwv_flow_api.component_end;
end;
/
