prompt --application/shared_components/navigation/lists/stock_receipt
begin
--   Manifest
--     LIST: Stock Receipt
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
 p_id=>wwv_flow_api.id(20769873224985657)
,p_name=>'Stock Receipt'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22365633593549523)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Pending PO Request'
,p_list_item_link_target=>'f?p=&APP_ID.:421:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22365903659549523)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Document Information'
,p_list_item_link_target=>'f?p=&APP_ID.:422:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22373130772573090)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Product Information'
,p_list_item_link_target=>'f?p=&APP_ID.:423:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23141335462995156)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Other Cost'
,p_list_item_link_target=>'f?p=&APP_ID.:424:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':OTHERCOST_PAGE = 0'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22373581412573092)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Confirmation'
,p_list_item_link_target=>'f?p=&APP_ID.:425:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
