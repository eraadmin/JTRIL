prompt --application/shared_components/navigation/lists/reports
begin
--   Manifest
--     LIST: Reports
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
 p_id=>wwv_flow_api.id(4177756049301731946)
,p_name=>'Reports'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4177756253963731948)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Customer Map'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Map of orders with zoom in and out'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4177756538831731949)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Product Order Tree'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Tree control with expand and collapse'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4177776352897409852)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Tags'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'View tags by customer, product, and order.'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
