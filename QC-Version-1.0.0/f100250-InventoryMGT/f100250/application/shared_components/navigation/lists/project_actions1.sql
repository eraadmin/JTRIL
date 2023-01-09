prompt --application/shared_components/navigation/lists/project_actions1
begin
--   Manifest
--     LIST: Project Actions1
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
 p_id=>wwv_flow_api.id(81821565298178399)
,p_name=>'Project Actions1'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(81821783177178399)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Add Milestone'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:RP,48:P48_PROJECT_ID,LAST_VIEW:&P200_ID.,200:'
,p_list_item_icon=>'fa-calendar'
,p_security_scheme=>wwv_flow_api.id(2082879890180006600)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(81822210303178399)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Add Action Item'
,p_list_item_link_target=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:RP,73:P73_PROJECT_ID,LAST_VIEW:&P200_ID.,200:'
,p_list_item_icon=>'fa-check-circle-o'
,p_security_scheme=>wwv_flow_api.id(2082879890180006600)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(81822637517178399)
,p_list_item_display_sequence=>3
,p_list_item_link_text=>'Add Link'
,p_list_item_link_target=>'javascript:openModal(''add_link_modal'');'
,p_list_item_icon=>'fa-external-link'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(81822977565178399)
,p_list_item_display_sequence=>4
,p_list_item_link_text=>'Attach File'
,p_list_item_link_target=>'javascript:openModal(''add_file_modal'')'
,p_list_item_icon=>'fa-paperclip'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(81823400831178400)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Add Update'
,p_list_item_link_target=>'javascript:openModal(''add_update_modal'')'
,p_list_item_icon=>'fa-comment'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(81823821704178400)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Add Status Report'
,p_list_item_link_target=>'f?p=&APP_ID.:116:&APP_SESSION.::NO:116:P116_PROJECT_ID,LAST_VIEW:&P200_ID.,200'
,p_list_item_icon=>'fa-file'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
