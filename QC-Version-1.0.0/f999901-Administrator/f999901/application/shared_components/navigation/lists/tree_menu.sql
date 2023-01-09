prompt --application/shared_components/navigation/lists/tree_menu
begin
--   Manifest
--     LIST: tree menu
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(2378349242019070)
,p_name=>'tree menu'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  level, name,',
'case when progtype<> ''R'' then',
'               ''f?p=&APP_ID.:9999010001:&SESSION.:T:::P9999010001_SELECTED_NOTE,PROGNAME,P9999010001_PROGDESC:''||id||'',''||id||'',''||NAME ',
'               else',
'               ''f?p=''||APP_ID||'':''||page_id||'':&SESSION.:T::''   end link ,',
' '''' is_current, ',
'       case when connect_by_isleaf = 0 then ''fa-arrow-circle-right''',
'                else ''fa fa-arrow-circle-o-right''',
'       end as icon, ',
'     ''style=height:10px'' img_attr,MENULEAF "MENULF",id',
' from (',
'  select ''P'' item_type,menuleaf,',
'       (SELECT PROGTYPE FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME) AND MODLCODE=A.MODLCODE)PROGTYPE,',
'        (SELECT APP_ID FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE)APP_ID,',
'         to_char(a.PROGNAME) id,',
'       PARENTNM parent,',
'       a.PROGDESC name,',
'       a.PROGDESC tooltip,(SELECT pageid FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME) AND MODLCODE=A.MODLCODE)page_id,',
'       to_char(a.PROGNAME) link,MENUSLNO',
'  from SYRIGHTS a ',
'WHERE USERCODE=:APP_USER',
'AND A.COMPCODE=:COMPCODE',
'and MENULEAF=''M''',
' UNION ',
'select ''P'' item_type,menuleaf,',
'  (SELECT PROGTYPE FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE)PROGTYPE,',
'  (SELECT APP_ID FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE)APP_ID,',
'        to_char(a.PROGNAME) id,',
'       PARENTNM parent,',
'       a.PROGDESC name,',
'       a.PROGDESC tooltip,(SELECT pageid FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE),',
'       to_char(a.PROGNAME) link,MENUSLNO',
'  from SYRIGHTS a ',
'WHERE USERCODE=:APP_USER',
'AND A.COMPCODE=:COMPCODE',
'and exists (select 1 from symenmas b where pageid is not null and a.progname=b.progname)',
')',
'start with parent=''ROOT''',
'connect by prior id = parent',
'order siblings by MENUSLNO',
''))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
