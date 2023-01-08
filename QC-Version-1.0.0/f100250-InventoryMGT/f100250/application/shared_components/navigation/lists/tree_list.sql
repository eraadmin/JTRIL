prompt --application/shared_components/navigation/lists/tree_list
begin
--   Manifest
--     LIST: tree list
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
 p_id=>wwv_flow_api.id(46218180573650046)
,p_name=>'tree list'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     CASE',
'              WHEN CONNECT_BY_ISLEAF = 1',
'                 THEN 0',
'              WHEN LEVEL = 1',
'                 THEN 1',
'              ELSE -1',
'           END AS status, b.progdesc AS title,',
'           CASE',
'              WHEN b.menuleaf = ''M''',
'                 THEN ''fa-angle-down''',
'              ELSE ''#WORKSPACE_IMAGES#bug.gif''',
'           END AS icon,',
'           a.progname AS VALUE, NULL AS tooltip, a.lnk AS LINK',
'      FROM (SELECT compcode, usercode, parentnm, progname, menuleaf,(SELECT pageid',
'                         FROM symenmas',
'                        WHERE progname = s.progname',
'                        and pageid is not null',
'                        and compcode=:compcode) pagid,',
'                      ''javascript:change_page(''''''',
'                   || s.progname',
'                   || '''''',''',
'                   || (SELECT pageid',
'                         FROM symenmas',
'                        WHERE progname = s.progname',
'                        )',
'                   || '',''''''',
'                   || s.parentnm',
'                   || '''''')'' lnk',
'              FROM syrights s',
'             WHERE UPPER (usercode) = UPPER (:app_user)',
'and compcode=:compcode) a,',
'           symentre b',
'     WHERE a.parentnm = b.parentnm',
'       AND a.progname = b.progname',
'       AND UPPER (a.usercode) = UPPER (:app_user)',
'START WITH a.parentnm = ''ROOT''',
'CONNECT BY PRIOR a.progname = a.parentnm',
'  ORDER SIBLINGS BY b.menuslno,b.LEVLCODE'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
