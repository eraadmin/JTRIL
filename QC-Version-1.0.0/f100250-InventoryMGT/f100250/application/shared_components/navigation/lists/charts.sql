prompt --application/shared_components/navigation/lists/charts
begin
--   Manifest
--     LIST: Charts
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
 p_id=>wwv_flow_api.id(1742929246449949469)
,p_name=>'Charts'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1742929725490949470)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Sales by Category'
,p_list_item_link_target=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1742936818755127836)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sales by Product'
,p_list_item_link_target=>'f?p=&APP_ID.:211:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1743146245100133578)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Tags'
,p_list_item_link_target=>'f?p=&APP_ID.:214:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
