prompt --application/shared_components/navigation/lists/alert_list_for_alert
begin
--   Manifest
--     LIST: Alert List for alert
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
 p_id=>wwv_flow_api.id(60162800756047339)
,p_name=>'Alert List for alert'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.rwid ,p.value Today, c.value "This Month",d.value "This Year",e.value "Booking",f.value "Not Booking"',
'from (select rownum rwid from nmslsofr) a,',
'( select count(*) value',
'       from nmslsofr',
'       where compcode=:compcode',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'') ) p,',
'    (  select count(*) value',
'       from nmslsofr',
'       where compcode=:compcode',
'        AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))) c,',
'       (  select count(*) value',
'       from nmslsofr',
'       where compcode=:compcode',
'       ',
'        AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1)  d,',
'       (  select count(*) value',
'       from nmslsofr',
'       where compcode=:compcode',
'         ) e,',
'       (  select count(*) value',
'       from nmslsofr ',
'       where compcode=:compcode',
'        ) f',
'order by 1',
'       '))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
