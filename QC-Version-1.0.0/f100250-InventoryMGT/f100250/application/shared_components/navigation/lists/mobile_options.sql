prompt --application/shared_components/navigation/lists/mobile_options
begin
--   Manifest
--     LIST: Mobile Options
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
 p_id=>wwv_flow_api.id(1733919219547293421)
,p_name=>'Mobile Options'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1733919437550293422)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:201:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1733919738490293422)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Products'
,p_list_item_link_target=>'f?p=&APP_ID.:203:&SESSION.::&DEBUG.:203:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1733920028987293422)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:205:&SESSION.::&DEBUG.:205:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1371998314733693760)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:208:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1733920617449293423)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:215:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
