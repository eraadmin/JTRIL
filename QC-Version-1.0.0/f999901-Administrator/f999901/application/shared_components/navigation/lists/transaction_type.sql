prompt --application/shared_components/navigation/lists/transaction_type
begin
--   Manifest
--     LIST: TRANSACTION TYPE
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
 p_id=>wwv_flow_api.id(2918618450365703)
,p_name=>'TRANSACTION TYPE'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct NULL,',
'      a.NARATION LABEL,--||'' (''||a.TRANTYPE||'',''||a.SUBTTYPE||'')''||'' (''||a.PRDOCTYP||'',''||a.PRSUBTYP||'')''',
'      apex_util.prepare_url ( ''f?p=&APP_ID.:''',
'                                    ||b.MOD_PAGEID',
'                                    ||'':''',
'                                    || :app_session',
'                                    || '':ENQ:NO:''',
'                                    ||b.MOD_PAGEID',
'                                    ||'':P''',
'                                    ||b.MOD_PAGEID',
'                                    ||''_TRANTYPE,P''',
'                                    ||b.MOD_PAGEID',
'                                    ||''_SUBTTYPE,P''',
'                                    ||b.MOD_PAGEID',
'                                    ||''_PRDOCTYP,P''',
'                                    ||b.MOD_PAGEID',
'                                    ||''_PRSUBTYP,P''',
'                                    ||b.MOD_PAGEID',
'                                    ||''_NARATION:''',
'                                    ||a.TRANTYPE',
'                                    ||'','' ',
'                                    ||a.SUBTTYPE',
'                                    ||'','' ',
'                                    ||a.PRDOCTYP',
'                                    ||'','' ',
'                                    ||a.PRSUBTYP',
'                                    ||'','' ',
'                                    ||a.NARATION',
'                                    ||'':''',
'                                   ) TARGET,',
'       ''YES'' is_current, ',
'       ''#APP_IMAGES#del.gif'' image, ',
'       ''width="20" height="20"'' image_attrib, ',
'       a.SUBTTYPE image_alt',
'from (select distinct a.compcode,a.TRANTYPE,a.SUBTTYPE,initcap(a.NARATION) NARATION,b.PRDOCTYP,b.PRSUBTYP,c.CATGRYCD',
' from sydocmas a,nmwrkflw b,nmwrkftr c,doctype_security d',
'where a.compcode=:COMPCODE',
'and a.compcode=b.compcode(+)',
'and a.TRANTYPE=b.TRDOCTYP(+)',
'and a.SUBTTYPE=b.TRSUBTYP(+)',
'and a.compcode=c.compcode(+)',
'and a.TRANTYPE=c.TRDOCTYP(+)',
'and a.SUBTTYPE=c.TRSUBTYP(+)',
'and a.compcode=d.compcode(+)',
'and a.TRANTYPE=d.TRDOCTYP(+)',
'and a.SUBTTYPE=d.TRSUBTYP(+)',
'and Upper(modlcode)=substr(Upper(:P10023501_SELECTED_NOTE),1,2)',
'and a.TRANTYPE||a.SUBTTYPE NOT IN(''SI2'',''IR1'',''IR2'',''IR5'')',
'and TRANTYPE IN (select distinct regexp_substr(NMTRNTYP,''[^,]+'', 1, level) from symenmas where PROGNAME=:P10023501_SELECTED_NOTE',
'  connect by regexp_substr(NMTRNTYP, ''[^,]+'', 1, level) is not null )',
'    order by a.SUBTTYPE) a,symenmas b',
'    where /*a.TRANTYPE=b.NMTRNTYP',
'    and*/ a.compcode=:COMPCODE',
'    and PROGNAME=:P10023501_SELECTED_NOTE',
'order by image_alt'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
