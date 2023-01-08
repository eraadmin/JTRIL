prompt --application/shared_components/navigation/lists/mobile_options1
begin
--   Manifest
--     LIST: Mobile Options1
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
 p_id=>wwv_flow_api.id(126282568998923065)
,p_name=>'Mobile Options1'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(126282880692923071)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard for Marketing'
,p_list_item_link_target=>'f?p=&APP_ID.:1003:&SESSION.::&DEBUG.:1003:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(126283331517923080)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Generate Leads'
,p_list_item_link_target=>'f?p=&APP_ID.:203:&SESSION.::&DEBUG.:203:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(126283627262923080)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Follow Up'
,p_list_item_link_target=>'f?p=&APP_ID.:205:&SESSION.::&DEBUG.:205:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(126284066937923080)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Appointment'
,p_list_item_link_target=>'f?p=&APP_ID.:208:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(126284409552923080)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Quotation'
,p_list_item_link_target=>'f?p=&APP_ID.:215:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(126287476849048772)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Generate Customer'
,p_list_item_link_target=>'f?p=&APP_ID.:215:&SESSION.::&DEBUG.::::'
);
wwv_flow_api.component_end;
end;
/
