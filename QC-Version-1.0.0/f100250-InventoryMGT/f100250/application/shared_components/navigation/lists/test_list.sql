prompt --application/shared_components/navigation/lists/test_list
begin
--   Manifest
--     LIST: test list
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
 p_id=>wwv_flow_api.id(82396597996513944)
,p_name=>'test list'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(82396793785513952)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'General'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(82398166541521103)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'a'
,p_parent_list_item_id=>wwv_flow_api.id(82396793785513952)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(82400510637555645)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'d'
,p_parent_list_item_id=>wwv_flow_api.id(82396793785513952)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(82401574743555647)
,p_list_item_display_sequence=>91
,p_list_item_link_text=>'g'
,p_parent_list_item_id=>wwv_flow_api.id(82396793785513952)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(82397175511513965)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Tasks'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(82398402504521105)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'b'
,p_parent_list_item_id=>wwv_flow_api.id(82397175511513965)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(82400767901555645)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'e'
,p_parent_list_item_id=>wwv_flow_api.id(82397175511513965)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(82402065746555648)
,p_list_item_display_sequence=>92
,p_list_item_link_text=>'h'
,p_parent_list_item_id=>wwv_flow_api.id(82397175511513965)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(82397570803513969)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Profile'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(82398806559521105)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'c'
,p_parent_list_item_id=>wwv_flow_api.id(82397570803513969)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(82401248043555645)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'f'
,p_parent_list_item_id=>wwv_flow_api.id(82397570803513969)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(82402389168555648)
,p_list_item_display_sequence=>93
,p_list_item_link_text=>'i'
,p_parent_list_item_id=>wwv_flow_api.id(82397570803513969)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
