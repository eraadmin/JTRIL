prompt --application/shared_components/navigation/navigation_bar
begin
--   Manifest
--     ICON BAR ITEMS: 100250
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(1733907728804239295)
,p_icon_sequence=>10
,p_icon_subtext=>'Mobile'
,p_icon_target=>'f?p=&APP_ID.:HOME_JQM_SMARTPHONE:&SESSION.::&DEBUG.::::'
,p_icon_image_alt=>'Mobile'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond_type=>'NEVER'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(7576262796388842417)
,p_icon_sequence=>20
,p_icon_subtext=>'Feedback'
,p_icon_target=>'javascript:popupURL(''f?p=&APP_ID.:102:&SESSION.:::102:P102_APPLICATION_ID,P102_PAGE_ID:&APP_ID.,&APP_PAGE_ID.'');'
,p_nav_entry_is_feedback_yn=>'Y'
,p_icon_bar_disp_cond_type=>'NEVER'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(4180834863692509394)
,p_icon_sequence=>30
,p_icon_subtext=>'Administration'
,p_icon_target=>'f?p=&APP_ID.:admin:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond_type=>'NEVER'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(4180834267024500985)
,p_icon_sequence=>40
,p_icon_subtext=>'Help'
,p_icon_target=>'f?p=&APP_ID.:help:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond_type=>'NEVER'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(7532875132893662856)
,p_icon_sequence=>50
,p_icon_subtext=>'<font color=red>Logout</font>'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Logout'
,p_icon_height=>32
,p_icon_width=>32
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond_type=>'NEVER'
,p_begins_on_new_line=>'YES'
,p_cell_colspan=>6
);
wwv_flow_api.component_end;
end;
/