prompt --application/shared_components/navigation/lists/activity_list
begin
--   Manifest
--     LIST: activity list
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
 p_id=>wwv_flow_api.id(81665041833157480)
,p_name=>'activity list'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null, ',
'       ''Activity'' label, ',
'       null target, ',
'       ''YES'' is_current, ',
'       ''#APP_IMAGES#del.gif'' image, ',
'       ''width="20" height="20"'' image_attrib, ',
'       '''' image_alt',
'FROM  dual',
'union all',
'SELECT null, ',
'       ''Message'' label, ',
'       null target, ',
'       ''YES'' is_current, ',
'       ''#APP_IMAGES#del.gif'' image, ',
'       ''width="20" height="20"'' image_attrib, ',
'       '''' image_alt',
'FROM  dual'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
