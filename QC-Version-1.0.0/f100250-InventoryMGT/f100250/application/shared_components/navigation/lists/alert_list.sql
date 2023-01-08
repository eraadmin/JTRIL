prompt --application/shared_components/navigation/lists/alert_list
begin
--   Manifest
--     LIST: Alert List
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
 p_id=>wwv_flow_api.id(56565175225010748)
,p_name=>'Alert List'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a.compcode,a.TRANTYPE,a.SUBTTYPE,initcap(a.NARATION) NARATION,b.PRDOCTYP,b.PRSUBTYP,c.CATGRYCD',
' from sydocmas a,nmwrkflw b,nmwrkftr c,doctype_security d',
'where a.compcode=''100''',
'and a.compcode=b.compcode(+)',
'and a.TRANTYPE=b.TRDOCTYP(+)',
'and a.SUBTTYPE=b.TRSUBTYP(+)',
'and a.compcode=c.compcode(+)',
'and a.TRANTYPE=c.TRDOCTYP(+)',
'and a.SUBTTYPE=c.TRSUBTYP(+)',
'and a.compcode=d.compcode(+)',
'and a.TRANTYPE=d.TRDOCTYP(+)',
'and a.SUBTTYPE=d.TRSUBTYP(+)',
'and Upper(modlcode)=substr(Upper(''NMINDLPO''),1,2)',
'and TRANTYPE IN (''LP'')'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
