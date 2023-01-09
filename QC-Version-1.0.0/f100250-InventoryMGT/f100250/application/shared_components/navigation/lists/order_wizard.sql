prompt --application/shared_components/navigation/lists/order_wizard
begin
--   Manifest
--     LIST: Order Wizard
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
 p_id=>wwv_flow_api.id(7550106942428250283)
,p_name=>'Order Wizard'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7550107348315251953)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Identify Customer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11,50'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7550116721135281919)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Select Items'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12,51'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7558011543597191067)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Order Summary'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_api.component_end;
end;
/
