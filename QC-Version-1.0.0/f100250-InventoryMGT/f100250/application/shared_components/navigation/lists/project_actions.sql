prompt --application/shared_components/navigation/lists/project_actions
begin
--   Manifest
--     LIST: Project Actions
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
 p_id=>wwv_flow_api.id(81819677041178394)
,p_name=>'Project Actions'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(81820019235178397)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Perma Link'
,p_list_item_link_target=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_ID:&P200_ID.:'
,p_list_item_icon=>'fa-bookmark'
,p_list_item_current_type=>'NEVER'
,p_list_item_current_for_pages=>'f?p=&APP_ID.:200:&APP_SESSION.:::200:P200_ID:&P200_ID.'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(81820420388178399)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Email'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20:P20_ID:&P200_ID.:'
,p_list_item_icon=>'fa-envelope'
,p_list_item_current_type=>'NEVER'
,p_list_item_current_for_pages=>'f?p=&APP_ID.:20:&APP_SESSION.:::20:P20_ID:&P200_ID.'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(81820789801178399)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Merge'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:RP,54:P54_PRIMARY_PROJECT:&P200_ID.:'
,p_list_item_icon=>'fa-angle-double-right'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
