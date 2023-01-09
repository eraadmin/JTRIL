prompt --application/shared_components/navigation/lists/issue_request_dept
begin
--   Manifest
--     LIST: Issue Request (DEPT)
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
 p_id=>wwv_flow_api.id(41540688182999803)
,p_name=>'Issue Request (DEPT)'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(41540812680999810)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Document Information'
,p_list_item_link_target=>'f?p=&APP_ID.:1002500413:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(41541285352999817)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Product Information'
,p_list_item_link_target=>'f?p=&APP_ID.:1002500414:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(41541675421999817)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Confirmation'
,p_list_item_link_target=>'f?p=&APP_ID.:1002500415:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
