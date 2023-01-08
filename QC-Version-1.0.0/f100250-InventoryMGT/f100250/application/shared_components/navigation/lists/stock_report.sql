prompt --application/shared_components/navigation/lists/stock_report
begin
--   Manifest
--     LIST: Stock_report
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
 p_id=>wwv_flow_api.id(41268644350738479)
,p_name=>'Stock_report'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null,',
'         A.PROGDESC label,',
'         ''javascript:$s(''''P358_REPNAM'''', ''''''||PROGNAME||'''''')'' target,',
'          ''YES'' is_current, ',
'        ''#APP_IMAGES#del.gif'' image, ',
'        ''width="20" height="20"'' image_attrib, ',
'        PROGNAME image_alt',
'from symenmas a',
'where A.COMPCODE = ''001''',
'and A.PROGTYPE = ''R''',
'and A.PROGNAME  in  (select a.PROGNAME  FROM syrights a,symenmas b',
'             WHERE UPPER (a.usercode) = UPPER (:app_user)',
'and a.compcode=:compcode and a.PROGNAME in (''nmvhigtn'',''nmvhidtl'',''nmamstsm'',''nmamstsh'',''nmstkage''));'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
