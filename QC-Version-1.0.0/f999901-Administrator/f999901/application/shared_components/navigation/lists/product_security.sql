prompt --application/shared_components/navigation/lists/product_security
begin
--   Manifest
--     LIST: Product_Security
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
 p_id=>wwv_flow_api.id(34445990889603605)
,p_name=>'Product_Security'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34446154092603608)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Group Creation'
,p_list_item_link_target=>'f?p=&APP_ID.:99990116:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34446511072603609)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Item Assgin'
,p_list_item_link_target=>'f?p=&APP_ID.:99990117:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34446998279603610)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'User Assign'
,p_list_item_link_target=>'f?p=&APP_ID.:99990118:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
