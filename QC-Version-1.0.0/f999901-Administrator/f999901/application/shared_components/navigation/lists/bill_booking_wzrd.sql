prompt --application/shared_components/navigation/lists/bill_booking_wzrd
begin
--   Manifest
--     LIST: Bill Booking Wzrd
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(34467407751691713)
,p_name=>'Bill Booking Wzrd'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34467783027691715)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Billing Info'
,p_list_item_link_target=>'f?p=&APP_ID.:10042023:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34468150707691716)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Bill Details'
,p_list_item_link_target=>'f?p=&APP_ID.:10042024:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
