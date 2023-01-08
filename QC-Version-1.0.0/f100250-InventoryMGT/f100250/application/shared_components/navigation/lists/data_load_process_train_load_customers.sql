prompt --application/shared_components/navigation/lists/data_load_process_train_load_customers
begin
--   Manifest
--     LIST: Data Load Process Train - Load Customers
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(996429097236229807)
,p_name=>'Data Load Process Train - Load Customers'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
