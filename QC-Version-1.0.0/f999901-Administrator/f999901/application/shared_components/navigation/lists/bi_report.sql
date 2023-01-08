prompt --application/shared_components/navigation/lists/bi_report
begin
--   Manifest
--     LIST: BI Report
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
 p_id=>wwv_flow_api.id(34937098592985354)
,p_name=>'BI Report'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34938069384985357)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Report Wizard'
,p_list_item_link_target=>'f?p=&APP_ID.:9999010010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34941534857985360)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Report Source'
,p_list_item_link_target=>'f?p=&APP_ID.:9999010011:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34945791945985362)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'User Define Column'
,p_list_item_link_target=>'f?p=&APP_ID.:9999010012:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34949916937985364)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'View and Save'
,p_list_item_link_target=>'f?p=&APP_ID.:9999010013:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
