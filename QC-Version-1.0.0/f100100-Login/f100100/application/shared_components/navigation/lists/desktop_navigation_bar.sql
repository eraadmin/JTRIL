prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
--   Manifest
--     LIST: Desktop Navigation Bar
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(100064493207690213)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(109638625135427464)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Landing Page-->'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(109544555554007192)
,p_list_item_display_sequence=>4
,p_list_item_link_text=>'(ICONIC_LIST)'
,p_list_item_link_target=>'http://10.11.201.58:8090/orbits/f?p=301:1:&SESSION.'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(66134935030892583)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'(ICON)'
,p_list_item_link_target=>'http://10.11.201.58:8090/orbits/f?p=100200:1:&SESSION.'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(66135463079897987)
,p_list_item_display_sequence=>6
,p_list_item_link_text=>'(TOP)'
,p_list_item_link_target=>'http://10.11.201.58:8090/orbits/f?p=101:1:&SESSION.'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(114125882329613968)
,p_list_item_display_sequence=>7
,p_list_item_link_text=>'(TAB)'
,p_list_item_link_target=>'http://10.11.201.58:8090/orbits/f?p=201:1:&SESSION.'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(35652086880577182)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'Notification[&SERVICE_NOTIFICATION.]'
,p_list_item_link_target=>'f?p=100370:603:&SESSION.'
,p_list_item_icon=>'fa-bell'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   vCOUNT   NUMBER;',
'BEGIN',
'  select count(*) ',
'INTO vCOUNT',
' from sypndjob',
'where AUTHPERS =:APP_USER',
'and ACTVSTAT = 0',
'and CHECKEDD = ''Y'';',
'',
'   IF vCOUNT > 0',
'   THEN',
'      RETURN TRUE;',
'   ELSE',
'      RETURN FALSE;',
'   END IF;',
'END;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(100076122925690262)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(110518643291291601)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'[&NEW_USER_RQST_COUNT.]'
,p_list_item_link_target=>'f?p=&APP_ID.:10010004:&SESSION.::&DEBUG.:10010004:::'
,p_list_item_icon=>'fa-user-plus'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   vCOUNT   NUMBER;',
'BEGIN',
'   SELECT COUNT (*)',
'     INTO vCOUNT',
'     FROM USRSGNUP',
'    WHERE VALDFLAG = ''N'' AND USERTYPE = ''N'';',
'',
'   IF vCOUNT > 0',
'   THEN',
'      RETURN TRUE;',
'   ELSE',
'      RETURN FALSE;',
'   END IF;',
'END;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(100946475283747243)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'LOGOUT: &APP_USER.'
,p_list_item_link_target=>'javascript:if(confirm(''You are about to exit. Are you sure to continue..?'')) '||wwv_flow.LF||
'{window.location.href =''&LOGOUT_URL.'';}'
,p_list_item_icon=>'fa-user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(100077037032690262)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'NEVER'
,p_parent_list_item_id=>wwv_flow_api.id(100946475283747243)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(58668282337272251)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'>>'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(54276704718620027)
,p_list_item_display_sequence=>9
,p_list_item_link_text=>'Change Password'
,p_list_item_link_target=>'f?p=&APP_ID.:10010006:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-adjust'
,p_parent_list_item_id=>wwv_flow_api.id(58668282337272251)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(111305542173343998)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Landing Page Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:10010080:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-apex'
,p_parent_list_item_id=>wwv_flow_api.id(58668282337272251)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
