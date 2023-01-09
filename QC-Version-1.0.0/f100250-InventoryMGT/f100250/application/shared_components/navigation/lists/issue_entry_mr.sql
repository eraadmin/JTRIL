prompt --application/shared_components/navigation/lists/issue_entry_mr
begin
--   Manifest
--     LIST: Issue Entry (MR)
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
 p_id=>wwv_flow_api.id(24685888503784642)
,p_name=>'Issue Entry (MR)'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24686004052784646)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Pending Issue Request'
,p_list_item_link_target=>'f?p=&APP_ID.:426:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24686495872784653)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Document Information'
,p_list_item_link_target=>'f?p=&APP_ID.:427:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24686890193784654)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Product Information'
,p_list_item_link_target=>'f?p=&APP_ID.:428:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24687249541784654)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Confirmation'
,p_list_item_link_target=>'f?p=&APP_ID.:429:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
