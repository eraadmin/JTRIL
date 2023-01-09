prompt --application/shared_components/legacy_data_loads/demo_customers
begin
--   Manifest
--     DEMO_CUSTOMERS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_load_table(
 p_id=>wwv_flow_api.id(996428477264229802)
,p_name=>'Load Customers'
,p_owner=>'#OWNER#'
,p_table_name=>'DEMO_CUSTOMERS'
,p_unique_column_1=>'CUST_FIRST_NAME'
,p_is_uk1_case_sensitive=>'N'
,p_unique_column_2=>'CUST_LAST_NAME'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_column_names_lov_id=>wwv_flow_api.id(996464087138270541)
,p_skip_validation=>'N'
);
wwv_flow_api.create_load_table_lookup(
 p_id=>wwv_flow_api.id(1002148384580294702)
,p_load_table_id=>wwv_flow_api.id(996428477264229802)
,p_load_column_name=>'CUST_STATE'
,p_lookup_owner=>'#OWNER#'
,p_lookup_table_name=>'DEMO_STATES'
,p_key_column=>'ST'
,p_display_column=>'STATE_NAME'
,p_insert_new_value=>'N'
);
wwv_flow_api.create_load_table_rule(
 p_id=>wwv_flow_api.id(996428777788229804)
,p_load_table_id=>wwv_flow_api.id(996428477264229802)
,p_load_column_name=>'TAGS'
,p_rule_name=>'Tags in Upper Case'
,p_rule_type=>'TO_UPPER_CASE'
,p_rule_sequence=>10
);
wwv_flow_api.component_end;
end;
/
