prompt --application/shared_components/navigation/lists/orbits_navigation_menu
begin
--   Manifest
--     LIST: Orbits Navigation Menu
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
 p_id=>wwv_flow_api.id(100167981816782382)
,p_name=>'Orbits Navigation Menu'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  level, name,',
'case when progtype NOT IN (''M'',''R'',''P'') then',
'                 '' javascript:$s(''''P1_SELECTED_NOTE'''',''''''||id||'''''')'' ',
'     WHEN progtype =''P'' then',
'               ''f?p=''||APP_ID||'':''||PAGEID||'':''||:APP_SESSION||'':::''||PAGEID||'':PROGNAME,DOCTTYPE:''||id||'',''||NMTRNTYP',
'     ELSE',
'--                ''f?p=&APP_ID.:1:&SESSION.:T::NO:P1_SELECTED_NOTE:''||id',
'               -- '' javascript:$s(''''P1_SELECTED_NOTE'''',''''''||id||'''''')'' ',
'                null',
'     end link,',
'        '''' "is_current",',
'       case when connect_by_isleaf = 0 then ''fa-tiles-8 u-color-12-text'' ',
'when connect_by_isleaf = 1 then ''fa-tiles-2x2 u-color-35-text'' else  ''fa-tiles-8''',
'       end as icon, ',
'     ''style=height:7px'' img_attr,MENULEAF "MENULF",id,NMTRNTYP',
' from (',
'  select ''P'' item_type,menuleaf,',
'       (SELECT PROGTYPE FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME) AND MODLCODE=A.MODLCODE)PROGTYPE,',
'       (SELECT MODLCODE FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME) AND MODLCODE=A.MODLCODE)MODLCODE,',
'        (SELECT APP_ID FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE)APP_ID,',
'        (SELECT NMTRNTYP FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE)NMTRNTYP,',
'        (SELECT TRNSUBTP FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE)TRNSUBTP,',
'         to_char(a.PROGNAME) id,',
'       PARENTNM parent,',
'       a.PROGDESC name,',
'       a.PROGDESC tooltip,',
'       (SELECT Add_PAGEID FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE) pageid, ',
'       (SELECT MOD_PAGEID FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE) MOD_PAGEID,',
'       (SELECT ENQ_PAGEID FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE) PAGE_ID,',
'       to_char(a.PROGNAME) link,',
'       MENUSLNO',
'  from SYRIGHTS a ',
'WHERE USERCODE=:APP_USER',
'AND A.COMPCODE=:COMPCODE',
'and MENULEAF=''M''',
' UNION ',
'select ''P'' item_type,menuleaf,',
'  (SELECT PROGTYPE FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE)PROGTYPE,',
'   (SELECT MODLCODE FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME) AND MODLCODE=A.MODLCODE)MODLCODE,',
'  (SELECT APP_ID FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE)APP_ID,',
'  (SELECT NMTRNTYP FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE)NMTRNTYP,',
'  (SELECT TRNSUBTP FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE)TRNSUBTP,',
'        to_char(a.PROGNAME) id,',
'       PARENTNM parent,',
'       a.PROGDESC name,',
'       a.PROGDESC tooltip,',
'       (SELECT Add_PAGEID FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE) pageid, ',
'       (SELECT MOD_PAGEID FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE) MOD_PAGEID,',
'       (SELECT ENQ_PAGEID FROM SYMENMAS WHERE UPPER(PROGNAME)=upper(A.PROGNAME)  AND MODLCODE=A.MODLCODE) PAGE_ID,',
'       to_char(a.PROGNAME) link,',
'       MENUSLNO',
'  from SYRIGHTS a ',
'WHERE USERCODE=:APP_USER',
'AND A.COMPCODE=:COMPCODE',
'and exists (select 1 from symenmas b where Add_PAGEID is not null and a.progname=b.progname)',
')',
'--where lower(name) like nvl(lower(''%''||:MENUSEARCH||''%''),lower(name))',
'start with parent=''ROOT''',
'connect by --NOCYCLE --(NOCYCLE is added by Mukul for handling ORA-01436: CONNECT BY loop in user data Error)',
'prior id = parent',
'order siblings by MENUSLNO'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
