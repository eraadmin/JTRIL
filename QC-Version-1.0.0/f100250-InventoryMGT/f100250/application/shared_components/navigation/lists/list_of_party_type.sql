prompt --application/shared_components/navigation/lists/list_of_party_type
begin
--   Manifest
--     LIST: List of Party type
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
 p_id=>wwv_flow_api.id(63461035376024431)
,p_name=>'List of Party type'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(63461230607024434)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Message [&MSG_CNT.]'
,p_list_item_link_target=>'f?p=&APP_ID.:143:&SESSION.:M:&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(63461516918024440)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Alert         [&ALART_CNT.]'
,p_list_item_link_target=>'f?p=&APP_ID.:143:&SESSION.:A:&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(63461841141024440)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Notification'
,p_list_item_link_target=>'f?p=&APP_ID.:143:&SESSION.::&DEBUG.::::'
,p_list_item_current_for_pages=>'NT'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(63462129940024440)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Jobs'
,p_list_item_link_target=>'f?p=&APP_ID.:143:&SESSION.::&DEBUG.::::'
,p_list_item_current_for_pages=>'JS'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(63462423475024440)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Activity'
,p_list_item_link_target=>'f?p=&APP_ID.:143:&SESSION.::&DEBUG.::::'
,p_list_item_current_for_pages=>'AC'
);
wwv_flow_api.component_end;
end;
/
