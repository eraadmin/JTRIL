prompt --application/shared_components/navigation/lists/reconciliation_list
begin
--   Manifest
--     LIST: Reconciliation List
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
 p_id=>wwv_flow_api.id(67745909791967350)
,p_name=>'Reconciliation List'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67746186179967353)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Document Information'
,p_list_item_link_target=>'f?p=&APP_ID.:454:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67746597096967353)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Item Information'
,p_list_item_link_target=>'f?p=&APP_ID.:455:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
