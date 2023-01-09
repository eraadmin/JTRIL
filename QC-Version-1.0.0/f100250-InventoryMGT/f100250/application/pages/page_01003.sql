prompt --application/pages/page_01003
begin
--   Manifest
--     PAGE: 01003
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>1003
,p_user_interface_id=>wwv_flow_api.id(1733908345645258388)
,p_name=>'Dashboard'
,p_step_title=>'Dashboard'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072238553908352)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'span.uValueHeading {margin-right: 120px;white-space: nowrap; overflow: hidden;}',
'</style>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.uRegion.scrollable-region>.uRegionContent {',
'box-sizing: border-box;',
'height: 340px;',
'overflow: auto;',
'}'))
,p_step_template=>wwv_flow_api.id(1032960684481990487)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140746'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126301700741149784)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1032965074212990491)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_list_template_id=>wwv_flow_api.id(1032966899780990492)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_template_id=>wwv_flow_api.id(1032960684481990487)
,p_plug_header=>'<div class="sCustomSearch">'
,p_plug_footer=>'</div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126302481204149784)
,p_plug_name=>'Column 4'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1032965074212990491)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_list_template_id=>wwv_flow_api.id(1032966899780990492)
,p_prn_template_id=>wwv_flow_api.id(1032960684481990487)
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126302960231149784)
,p_plug_name=>'YEARLY'
,p_parent_plug_id=>wwv_flow_api.id(126302481204149784)
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 650px;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1032965074212990491)
,p_plug_display_sequence=>150
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   label, VALUE, url',
'    FROM (WITH DATA AS',
'               (SELECT t.total, s.service, s.REF',
'                  FROM (SELECT COUNT (*) service, NULL REF',
'                          FROM nmservce',
'                         WHERE doctdate',
'                                  BETWEEN ADD_MONTHS',
'                                                (TRUNC (ADD_MONTHS (SYSDATE,',
'                                                                    6),',
'                                                        ''YEAR''',
'                                                       ),',
'                                                 -6',
'                                                )',
'                                      AND   ADD_MONTHS',
'                                                (TRUNC (ADD_MONTHS (SYSDATE,',
'                                                                    6),',
'                                                        ''YEAR''',
'                                                       ),',
'                                                 6',
'                                                )',
'                                          - 1) s,',
'                       (SELECT COUNT (*) total',
'                          FROM sycompty',
'                         WHERE partytyp IN (''CU'', ''CV'')',
'and TIMSTAMP',
'                                  BETWEEN ADD_MONTHS',
'                                                (TRUNC (ADD_MONTHS (SYSDATE,',
'                                                                    6),',
'                                                        ''YEAR''',
'                                                       ),',
'                                                 -6',
'                                                )',
'                                      AND   ADD_MONTHS',
'                                                (TRUNC (ADD_MONTHS (SYSDATE,',
'                                                                    6),',
'                                                        ''YEAR''',
'                                                       ),',
'                                                 6',
'                                                )',
'                                          - 1) t),',
'               rws AS',
'               (SELECT     LEVEL r',
'                      FROM DUAL',
'                CONNECT BY LEVEL < 3)',
'          SELECT rws.r display_order,',
'                 DECODE (rws.r,',
'                         1, ''No of Customer'',',
'                         2, ''No of Service''',
'                        ) label,',
'                 DECODE (rws.r, 1, DATA.total, 2, DATA.service) VALUE,',
'                 DECODE (rws.r,',
'                         1,  ''f?p=''',
'                          || :app_id',
'                          || '':213:''',
'                          || :app_session',
'                          || '':::213,RIR:'',',
'                         2,  ''f?p=''',
'                          || :app_id',
'                          || '':298:''',
'                          || :app_session',
'                          || '':::298,RIR:IR_MARQUEE_CUSTOMER:Yes''',
'                        ) url',
'            FROM DATA, rws',
'          UNION ALL',
'          SELECT 3 display_order, ''No of Car Sales in Period'' label,',
'                 COUNT (itemcode) VALUE,',
'                 ''f?p='' || :app_id || '':203:'' || :app_session',
'                 || '':::203,RIR'' url',
'            FROM nmsalrec',
'             WHERE doctdate',
'                                  BETWEEN ADD_MONTHS',
'                                                (TRUNC (ADD_MONTHS (SYSDATE,',
'                                                                    6),',
'                                                        ''YEAR''',
'                                                       ),',
'                                                 -6',
'                                                )',
'                                      AND   ADD_MONTHS',
'                                                (TRUNC (ADD_MONTHS (SYSDATE,',
'                                                                    6),',
'                                                        ''YEAR''',
'                                                       ),',
'                                                 6',
'                                                )',
'                                          - 1',
'          UNION ALL',
'',
'SELECT 4 display_order, ''Total Appointment'' label,',
'       COUNT (DISTINCT partycde) VALUE,',
'       ''f?p='' || :app_id || '':212:'' || :app_session || '':::212,RIR'' url',
'  FROM nmsrvndr',
' WHERE (   appndate IS NOT NULL',
'        OR sndapndt IS NOT NULL',
'        OR trdapndt IS NOT NULL',
'       )',
'   AND doctdate BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1)',
'ORDER BY display_order'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BIG_VALUE_LIST'
,p_list_template_id=>wwv_flow_api.id(1032966899780990492)
,p_prn_template_id=>wwv_flow_api.id(1032960684481990487)
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'2'
,p_attribute_06=>'B'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label, value, url from (',
'with data as (',
'select t.total,s.service,s.ref from ',
'    (select  count(*) service,   null  ref from nmservce where to_char(sysdate,''RRRR'')=TO_CHAR(DOCTDATE,''RRRR''))s,',
'    (select count(*)total from sycompty where PARTYTYP in (''CU'',''CV''))t',
'),',
'rws as (',
'    select level r from dual connect by level < 3',
')',
'',
'select rws.r display_order,',
'    decode(rws.r, 1, ''No of Customer'',    2, ''No of Service'' )  label,',
'    decode(rws.r, 1, data.total, 2, data.service) value,',
'    decode(rws.r, 1, ''f?p=''||:APP_ID||'':1:''||:APP_SESSION||'':::1,RIR:'',',
'                  2, ''f?p=''||:APP_ID||'':1:''||:APP_SESSION||'':::1,RIR:IR_MARQUEE_CUSTOMER:Yes''',
'                  ) url',
'from data, rws',
'union all',
'select 3 display_order,',
'    ''No of Sales in Period'' label,',
'    count(distinct itemcode) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::44,RIR'' url',
'from nmsalrec',
'union all',
'select 4 display_order,',
'    ''Total Service Taken'' label,',
'    count(*) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from nmservce',
'union all',
'select 5 display_order,',
'    ''Waiting for Reminder'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from nmsalrec',
'where partycde not in (select partycde from nmservce union select partycde from NMSRVNDR)',
'union all',
'select 6 display_order,',
'    ''Total Reminder'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from NMSRVNDR',
'where FSTFLWUP is null',
'UNION ALL',
'select 7 display_order,',
'    ''Today''''s Followup'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from NMSRVNDR',
'where trunc(sysdate) in (FSTRMNDT, SNDRMNDT, TRDRMNDT, FURRMNDT, FVERMNDT)',
'union all',
'select 8 display_order,',
'    ''Total Followed Today'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from NMSRVNDR',
'where trunc(FSTFLWUP)=trunc(sysdate)',
')',
'order by display_order'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126303339293149786)
,p_plug_name=>'Column 5'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1032965074212990491)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_3'
,p_list_template_id=>wwv_flow_api.id(1032966899780990492)
,p_prn_template_id=>wwv_flow_api.id(1032960684481990487)
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126303725707149787)
,p_plug_name=>'CURRENT MONTH'
,p_parent_plug_id=>wwv_flow_api.id(126303339293149786)
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 650px;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1032965074212990491)
,p_plug_display_sequence=>150
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   label, VALUE, url',
'    FROM (WITH DATA AS',
'               (SELECT t.total, s.service, s.REF',
'                  FROM (SELECT COUNT (*) service, NULL REF',
'                          FROM nmservce',
'                         WHERE doctdate BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                                            AND LAST_DAY (TRUNC (SYSDATE,',
'                                                                 ''MONTH''',
'                                                                )',
'                                                         )) s,',
'                       (SELECT COUNT (*) total',
'                          FROM sycompty',
'                         WHERE partytyp IN (''CU'', ''CV'')',
'                           AND timstamp BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                                            AND LAST_DAY (TRUNC (SYSDATE,',
'                                                                 ''MONTH''',
'                                                                )',
'                                                         )) t),',
'               rws AS',
'               (SELECT     LEVEL r',
'                      FROM DUAL',
'                CONNECT BY LEVEL < 3)',
'          SELECT rws.r display_order, DECODE (rws.r,',
'                                              1,''No of Customer'',',
'                                              2, ''No of Service''',
'                                             ) label,',
'                 DECODE (rws.r, 1, DATA.total, 2, DATA.service) VALUE,',
'                 DECODE (rws.r,',
'                         1,  ''f?p=''',
'                          || :app_id',
'                          || '':214:''',
'                          || :app_session',
'                          || '':::214,RIR:'',',
'                         2,  ''f?p=''',
'                          || :app_id',
'                          || '':297:''',
'                          || :app_session',
'                          || '':::297,RIR:IR_MARQUEE_CUSTOMER:Yes''',
'                        ) url',
'            FROM DATA, rws',
'          UNION ALL',
'          SELECT 3 display_order, ''No of Car Sales in Month'' label,',
'                 COUNT (itemcode) VALUE,',
'                 ''f?p='' || :app_id || '':202:'' || :app_session',
'                 || '':::202,RIR'' url',
'            FROM nmsalrec',
'           WHERE doctdate BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))',
'          UNION ALL',
'          SELECT 4 display_order, ''Total Reminder'' label,',
'                 COUNT ( DELVRYDT+90) VALUE,',
'                 ''f?p='' || :app_id || '':207:'' || :app_session || '':::207,RIR'' url',
'            FROM nmsrvndr',
'           WHERE trunc(DELVRYDT+90) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))',
'          UNION ALL',
'SELECT 9 display_order, ''Total Appointment'' label,',
'                 COUNT (DISTINCT partycde) VALUE,',
'                 ''f?p='' || :app_id || '':211:'' || :app_session || '':::211,RIR'' url',
'            FROM nmsrvndr',
'           WHERE (   appndate IS NOT NULL',
'        OR sndapndt IS NOT NULL',
'        OR trdapndt IS NOT NULL',
'       )',
'   AND trunc(doctdate) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR''))',
'ORDER BY display_order'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BIG_VALUE_LIST'
,p_list_template_id=>wwv_flow_api.id(1032966899780990492)
,p_prn_template_id=>wwv_flow_api.id(1032960684481990487)
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'2'
,p_attribute_06=>'B'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126304128868149789)
,p_plug_name=>'Column 6'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1032965074212990491)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY_3'
,p_list_template_id=>wwv_flow_api.id(1032966899780990492)
,p_prn_template_id=>wwv_flow_api.id(1032960684481990487)
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126304547240149789)
,p_plug_name=>'TODAY''S'
,p_parent_plug_id=>wwv_flow_api.id(126304128868149789)
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 650px;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1032965074212990491)
,p_plug_display_sequence=>150
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   label, VALUE, url',
'    FROM (WITH DATA AS',
'               (SELECT t.total, s.service, s.REF',
'                  FROM (SELECT COUNT (*) service, NULL REF',
'                          FROM nmservce',
'                         WHERE doctdate',
'                                 = TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) s,',
'                       (select COUNT (*) total from sycompty P,NMSERVCE S ',
'where PARTYTYP in (''CU'',''CV'')',
'AND P.PARTYCDE=S.PARTYCDE',
'AND trunc(S.TIMSTAMP) =',
'                                         TO_DATE (',
'                                            TO_CHAR (SYSDATE, ''MM/DD/RRRR''),',
'                                            ''MM/DD/RRRR'')',
'ORDER BY S.TIMSTAMP DESC) t),',
'               rws AS',
'               (SELECT     LEVEL r',
'                      FROM DUAL',
'                CONNECT BY LEVEL < 3)',
'          SELECT rws.r display_order,',
'                 DECODE (rws.r,',
'                         1, ''No of Customer'',',
'                         2, ''No of Service''',
'                        ) label,',
'                 DECODE (rws.r, 1, DATA.total, 2, DATA.service) VALUE,',
'                 DECODE (rws.r,',
'                         1,  ''f?p=''',
'                          || :app_id',
'                          || '':215:''',
'                          || :app_session',
'                          || '':::215,RIR:'',',
'                         2,  ''f?p=''',
'                          || :app_id',
'                          || '':296:''',
'                          || :app_session',
'                          || '':::296,RIR:IR_MARQUEE_CUSTOMER:Yes''',
'                        ) url',
'            FROM DATA, rws',
'          UNION ALL',
'          SELECT 3 display_order, ''Today''''s Car Sales'' label,',
'                 COUNT (itemcode) VALUE,',
'                 ''f?p='' || :app_id || '':299:'' || :app_session',
'                 || '':::299,RIR'' url',
'            FROM nmsalrec',
'             WHERE doctdate  = TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')',
'          UNION ALL',
'          SELECT 5 display_order, ''Waiting for Reminder'' label,',
'                 COUNT (DISTINCT partycde) VALUE,',
'                 ''f?p='' || :app_id || '':205:'' || :app_session || '':::205,RIR'' url',
'            FROM nmsalrec',
'           WHERE partycde NOT IN (SELECT partycde  FROM nmservce  UNION SELECT partycde    FROM nmsrvndr)',
'                 and  doctdate   = TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')',
'          UNION ALL',
'          SELECT 6 display_order, ''Today''''s Reminder'' label,',
'                 COUNT (DISTINCT partycde) VALUE,',
'                 ''f?p='' || :app_id || '':206:'' || :app_session || '':::206,RIR'' url',
'            FROM nmsrvndr',
'           WHERE TRUNC (SYSDATE) IN (fstrmndt, sndrmndt, trdrmndt, furrmndt, fvermndt)',
'          UNION ALL',
'          SELECT 7 display_order, ''Today''''s Followup'' label,',
'                 COUNT (DISTINCT partycde) VALUE,',
'                 ''f?p='' || :app_id || '':208:'' || :app_session || '':::208,RIR'' url',
'            FROM nmsrvndr',
'            where (TRUNC (SYSDATE)=fstrmndt and FSTFLWUP is null ) or (TRUNC (SYSDATE)=sndrmndt and SNDFLWUP is null) OR (TRUNC (SYSDATE)=TRDrmndt and TRDFLWUP is null)',
'          UNION ALL',
'          SELECT 8 display_order, ''Today''''s Followed'' label,',
'                 COUNT (DISTINCT partycde) VALUE,',
'                 ''f?p='' || :app_id || '':209:'' || :app_session || '':::209,RIR'' url',
'            FROM nmsrvndr',
'            where (TRUNC (SYSDATE)=fstrmndt and FSTFLWUP is not null ) or (TRUNC (SYSDATE)=sndrmndt and SNDFLWUP is not null) OR (TRUNC (SYSDATE)=TRDrmndt and TRDFLWUP is not null) ',
'UNION ALL',
'SELECT 9 display_order, ''Today''''s Appointment'' label,',
'       COUNT (DISTINCT partycde) VALUE,',
'       ''f?p='' || :app_id || '':210:'' || :app_session || '':::210,RIR'' url',
'  FROM nmsrvndr',
' WHERE appndate IS NOT NULL',
'   AND trunc(appndate) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR''))',
'ORDER BY display_order'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BIG_VALUE_LIST'
,p_list_template_id=>wwv_flow_api.id(1032966899780990492)
,p_prn_template_id=>wwv_flow_api.id(1032960684481990487)
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'2'
,p_attribute_06=>'B'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126304899911149792)
,p_plug_name=>'About this application'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1032965074212990491)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  t varchar2(4000) := null;',
'begin',
'  begin',
'      t := EBA_CUST_FW.get_preference_value(''WELCOME_TEXT'');',
'  exception',
'      when others then ',
'      t := null;',
'  end;',
'  if t is null or t = ''&nbsp;'' or t = ''Preference does not exist'' then',
'     sys.htp.p(''<p>Use this application to organize and share interactions with your customer community.  Click on items in this dashboard page below, or click the customers tab to review and manage your install base.</p>'');',
'  else',
'     sys.htp.p(''<p>''||t||''</p>'');',
'  end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_list_template_id=>wwv_flow_api.id(1032966899780990492)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_template_id=>wwv_flow_api.id(1032960684481990487)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126305344421149792)
,p_plug_name=>'Column 2'
,p_region_css_classes=>'uGrid col_2'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1032965074212990491)
,p_plug_display_sequence=>122
,p_plug_display_point=>'BODY_3'
,p_list_template_id=>wwv_flow_api.id(1032966899780990492)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_template_id=>wwv_flow_api.id(1032960684481990487)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(126305712400149792)
,p_name=>'Recently Updated Customers'
,p_parent_plug_id=>wwv_flow_api.id(126305344421149792)
,p_template=>wwv_flow_api.id(1032965987932990492)
,p_display_sequence=>140
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:204%;"'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customer_name,uPDATED_ON, ID from (',
'select P.PARTYCDE||'':''||P.PRTYNAME CUSTOMER_NAME,S.TIMSTAMP,',
'TO_CHAR(S.TIMSTAMP,''DD/MM/RRRR HH12:MI AM'')||'' against sales ''||s.docnumbr||'':''||s.itemcode||s.itemdesc uPDATED_ON,P.PARTYCDE ID from sycompty P,NMSALREC S ',
'where PARTYTYP in (''CU'',''CV'')',
'AND P.PARTYCDE=S.PARTYCDE',
'union all',
'select P.PARTYCDE||'':''||P.PRTYNAME CUSTOMER_NAME,S.TIMSTAMP,',
'TO_CHAR(S.TIMSTAMP,''DD/MM/RRRR HH12:MI AM'')||'' against service ''||s.docnumbr||'':''||s.itemcode||s.itemdesc uPDATED_ON,P.PARTYCDE ID from sycompty P,NMSERVCE S ',
'where PARTYTYP in (''CU'',''CV'')',
'AND P.PARTYCDE=S.PARTYCDE)',
'ORDER BY TIMSTAMP DESC'))
,p_header=>'<p class="largeLinkListDescription">Customers with date of most recent update.</p>'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>40
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No customers found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>40
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_template_id=>wwv_flow_api.id(1032960684481990487)
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(126306127924149794)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>2
,p_include_in_export=>'Y'
,p_print_col_width=>'50'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(126306475892149794)
,p_query_column_id=>2
,p_column_alias=>'UPDATED_ON'
,p_column_display_sequence=>3
,p_include_in_export=>'Y'
,p_print_col_width=>'50'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(126306897314149794)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126308092794149795)
,p_plug_name=>'Tags'
,p_parent_plug_id=>wwv_flow_api.id(126305344421149792)
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1032965074212990491)
,p_plug_display_sequence=>220
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag, tag_count',
'  from eba_cust_tags_type_sum',
' where content_type = ''CUSTOMER''',
'   and tag_count > 0',
'order by tag_count desc'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TAG_CLOUD'
,p_list_template_id=>wwv_flow_api.id(1032966899780990492)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_template_id=>wwv_flow_api.id(1032960684481990487)
,p_attribute_01=>'f?p=&APP_ID.:1:&APP_SESSION.::::IRC_TAGS:#TAG#'
,p_attribute_02=>'35'
,p_attribute_03=>'Y'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_tags_type_sum',
' where content_type = ''CUSTOMER''',
'   and tag_count > 0'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126308903275149798)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1032965074212990491)
,p_plug_display_sequence=>230
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align:right; height:20px; top: 10px;left: 50%;font-size:14px;color:#6633FF; font-weight:bold;"><br>User: &P1_USER_ID.<Br>&P1_USER_NAME.<Br></font>',
'</div>',
'',
'<div style="text-align:center; height:20px; position:absolute;position: absolute; top: 10px;left: 50%; margin-left: -160px;font-size:16px;color:#336633; font-weight:bold;">&P1_COMPNAME.<br><font size=''2'' color=''#336633''>&P1_COMPADD.</font>',
'',
'<div>',
'',
'<html>',
'<head>',
'<script type="text/javascript">',
'function startTime()',
'{',
'var today=new Date();',
'var h=today.getHours();',
'var m=today.getMinutes();',
'var s=today.getSeconds();',
'var don="AM"',
'// add a zero in front of numbers<10',
'm=checkTime(m);',
's=checkTime(s);',
'',
'if (h>=12){ don="PM" }',
'if (h>12) { h-=12 }',
'if (h==0) { h=12 }',
'',
'document.getElementById(''txt'').innerHTML=h+":"+m+":"+s+" "+don;',
't=setTimeout(''startTime()'',500);',
'}',
'',
'function checkTime(i)',
'{',
'if (i<10)',
'  {',
'  i="0" + i;',
'  }',
'return i;',
'}',
'</script>',
'</head>',
'',
'<body onload="startTime()">',
'<div id="txt"></div>',
'</body>',
'</html>',
'',
'</div>',
'',
'</div>'))
,p_list_template_id=>wwv_flow_api.id(1032966899780990492)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_template_id=>wwv_flow_api.id(1032960684481990487)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126309302890149798)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1032965074212990491)
,p_plug_display_sequence=>240
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P1003_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P1003_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_list_template_id=>wwv_flow_api.id(1032966899780990492)
,p_plug_display_condition_type=>'NEVER'
,p_prn_template_id=>wwv_flow_api.id(1032960684481990487)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(126307323584149794)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(126305712400149792)
,p_button_name=>'CREATE_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Create Customer'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(126307692819149794)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(126305712400149792)
,p_button_name=>'VIEW_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Customer'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(126308509389149798)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(126308092794149795)
,p_button_name=>'VIEW_TAGS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View All'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:RP,40,RIR::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(126310874509149803)
,p_button_sequence=>30
,p_button_name=>'VIEW_CUSTOMERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Customers'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:RP,44,RIR::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(126311321738149803)
,p_button_sequence=>50
,p_button_name=>'VIEW_UPDATES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Updates'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,RIR::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(126313016509149803)
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,100:P15_STATUS:'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P1003_SEARCH'
,p_branch_comment=>'Created 16-DEC-2010 17:41 by MIKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126302093226149784)
,p_name=>'P1003_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(126301700741149784)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Search'
,p_placeholder=>'Search customers, products, customers, tags...'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CUSTOMER_NAME',
'from   EBA_CUST_CUSTOMERS',
'order by 1'))
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_cattributes_element=>'nowrap="nowrap"'
,p_tag_attributes=>'class="sSearchFieldBig"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_06=>'N'
,p_attribute_07=>'N'
,p_attribute_08=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126309732256149798)
,p_name=>'P1003_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(126309302890149798)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126310101407149801)
,p_name=>'P1003_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(126309302890149798)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126310505985149803)
,p_name=>'P1003_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(126309302890149798)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(126311819988149803)
,p_computation_sequence=>10
,p_computation_item=>'P15_SEARCH'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P1003_SEARCH.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(126312244829149803)
,p_computation_sequence=>20
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'100'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(126312497616149803)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- code update by Md. Zahidul Islam--',
'begin',
'select PROGNAME into :FX_PROG_NAME from SYMENMAS where PAGEID=:APP_PAGE_ID;',
'',
':FX_PAGE_NO:=:APP_PAGE_ID;',
'exception',
'',
'when no_data_found then',
' --apex_application.g_print_success_message :=''Error..No page found'';',
' htp.init();',
' owa_util.redirect_url(''f?p=''||:APP_ID||'':1:''||:APP_SESSION, true);',
' --apex_application.g_print_success_message :=''Error..No page found'';',
'when too_many_rows then',
' raise_application_error(-20003,''Too Many Page ID found in database'');',
'end;',
'--- code updated--',
'',
'',
'If :P4_PROGNM  is null and :P4_NO is null then',
'   :P4_PROGNM := :FX_PROG_NAME;',
'   :P4_NO := :FX_PAGE_NO;',
'End if;',
'',
'',
'  --:P4_OPRSTAMP := :app_user;',
'  --:P4_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P4_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P4_PROGNM;',
'   :FX_PAGE_NO := :P4_NO;',
'Elsif :FX_PROG_NAME <> :P4_PROGNM And :FX_PAGE_NO <> :P4_NO Then',
'   :FX_PROG_NAME := :P4_PROGNM;',
'   :FX_PAGE_NO := :P4_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
