prompt --application/shared_components/navigation/lists/indent_entry
begin
--   Manifest
--     LIST: Indent Entry
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
 p_id=>wwv_flow_api.id(36971309856355294)
,p_name=>'Indent Entry'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(36971690379355295)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Document Information'
,p_list_item_link_target=>'f?p=&APP_ID.:555:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(36972004496355296)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Product Information'
,p_list_item_link_target=>'f?p=&APP_ID.:556:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(36972430480355296)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Confirmation'
,p_list_item_link_target=>'f?p=&APP_ID.:557:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
