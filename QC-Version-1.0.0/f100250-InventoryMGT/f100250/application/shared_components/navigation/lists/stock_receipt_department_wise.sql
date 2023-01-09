prompt --application/shared_components/navigation/lists/stock_receipt_department_wise
begin
--   Manifest
--     LIST: Stock Receipt (Department Wise)
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
 p_id=>wwv_flow_api.id(49856637893248098)
,p_name=>'Stock Receipt (Department Wise)'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(49856815806248143)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Pending PO Request'
,p_list_item_link_target=>'f?p=&APP_ID.:1002500421:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(49857234702248153)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Document Information'
,p_list_item_link_target=>'f?p=&APP_ID.:1002500422:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(49857650835248153)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Product Information'
,p_list_item_link_target=>'f?p=&APP_ID.:1002500423:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(49858062191248153)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Other Cost'
,p_list_item_link_target=>'f?p=&APP_ID.:1002500424:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':OTHERCOST_PAGE = 0'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(49858426597248156)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Confirmation'
,p_list_item_link_target=>'f?p=&APP_ID.:1002500425:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
