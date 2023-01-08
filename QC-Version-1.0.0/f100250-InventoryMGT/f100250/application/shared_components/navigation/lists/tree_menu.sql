prompt --application/shared_components/navigation/lists/tree_menu
begin
--   Manifest
--     LIST: Tree Menu
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
 p_id=>wwv_flow_api.id(49204631322227646)
,p_name=>'Tree Menu'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from(',
'select t.* from(',
'select LEVEL "level",',
'       b.progdesc  "label",--||decode(LEVEL,1,''[0]'',null)',
'      decode(LEVEL,1, ''f?p=&APP_ID.:''||''324''||'':&SESSION.::&DEBUG.:pageid:P324_PROCUREMENT_NONIFICATION,P324_SALES_NONIFICATION,P324_NONIFICATION_NO:''||c.progname||'',''||c.parentnm||'',''||',
'MENUSLNO||'':'',2,null, ''f?p=&APP_ID.:''||decode(NMTRNTYP,'''',pageid,999)||'':&SESSION.:''||decode(c.progname,''nmmulapr'',''B'',''A'')||'':&DEBUG.:pageid:PROGNAME,PAGE_TITLE,CANCEL_PROGRAM_ID:''||c.progname||'',''||c.PROGDESC||'',''||',
'dbms_random.random||'':'')  "target" ,',
'        '''' "is_current",',
' decode(connect_by_isleaf,0,''fa-home'',''fa-forward'') AS  image,''style=height:10px'' img_attr,b.MENULEAF "MENULF",pageid',
'FROM (SELECT distinct a.compcode, a.MENULEAF,usercode, parentnm, a.progname,null PROGDESC, null pageid,a.progname pagid,null NMTRNTYP,null lnk',
'              FROM syrights a,symenmas b',
'             WHERE UPPER (a.usercode) = UPPER (:app_user)',
'and a.compcode=:compcode',
'--and a.progname = b.progname',
'and MENULEAF <>''L''',
'--and pageid is not null',
'UNION ALL',
'SELECT distinct a.compcode, a.MENULEAF,usercode, parentnm, a.progname,b.PROGDESC,pageid,a.progname pagid,NMTRNTYP, ''javascript:change_page(''''''',
'                   || a.progname',
'                   || '''''',''',
'                   ||(SELECT pageid',
'                         FROM symenmas',
'                        WHERE progname = a.progname',
'                        )',
'                   || '',''''''',
'                   || a.parentnm',
'                   || '''''')'' lnk',
'              FROM syrights a,symenmas b',
'             WHERE a.progname = b.progname and UPPER (a.usercode) = UPPER (:app_user)',
'and a.compcode=:compcode',
'and pageid is not null',
'',
') c, symentre b',
'     WHERE c.parentnm = b.parentnm',
'       AND c.progname = b.progname',
'       AND UPPER (c.usercode) = UPPER (:app_user)',
'START WITH c.parentnm = ''ROOT''',
'CONNECT BY PRIOR c.progname = c.parentnm',
'  ORDER SIBLINGS BY b.LEVLCODE  desc,MENUSLNO) t',
'  ) --where ("MENULF" = ''M'' and "target" is not null) or "MENULF" = ''L''',
'  where "target" is  not null or "MENULF" = ''M'' or pageid is not null'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
