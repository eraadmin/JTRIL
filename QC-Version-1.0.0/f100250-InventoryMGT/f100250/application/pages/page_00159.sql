prompt --application/pages/page_00159
begin
--   Manifest
--     PAGE: 00159
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
 p_id=>159
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Dashboard for Management'
,p_alias=>'NMDASHBD'
,p_step_title=>'Dashboard for Management'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-BadgeList--circular.t-BadgeList--large .t-BadgeList-label {',
'    font-size: 12px;',
'    font-weight: bold;',
'}',
'.t-BadgeList--circular .t-BadgeList-label {',
'    color: #1F68A7;',
'}',
'.t-Region h2.t-Region-title {',
'    color: rgb(255, 255, 255);',
'}',
'.t-Region-headerItems--title {',
'    text-align: center;',
'    background-color: #1F68A7;',
'}',
'.t-BadgeList--circular.t-BadgeList--large .t-BadgeList-item {',
'   ',
'    background-color: azure;',
'}',
'.t-BadgeList--dash a.t-BadgeList-wrap {',
'    transition: box-shadow .1s;',
'    text-decoration: none;',
'    padding: 0px;',
'}'))
,p_step_template=>wwv_flow_api.id(47556057873858111)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SYSADM'
,p_last_upd_yyyymmddhh24miss=>'20170821150711'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95050152575853384)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background:gray;"'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P159_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P159_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95155779812537968)
,p_plug_name=>'PC is not open.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--colorize:t-Cards--5cols:t-Cards--basic'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_list_id=>wwv_flow_api.id(60162800756047339)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47616803464858276)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95165437281806523)
,p_plug_name=>'Buyer Form'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>5
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   label, VALUE, url',
'    FROM (WITH DATA AS',
'               (SELECT t.total, s.service, s.REF',
'                  FROM (select count(*) service, NULL REF',
'       from nmslsofr',
'       where compcode=:compcode',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) s,',
'                       (select count(*) total',
'       from nmslsofr',
'       where compcode=:compcode',
'        AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))) t),',
'               rws AS',
'               (SELECT     LEVEL r',
'                      FROM DUAL',
'                CONNECT BY LEVEL < 3)',
'          SELECT rws.r display_order,',
'                 DECODE (rws.r,',
'                         1, ''Today''''s'',',
'                         2, ''This Month''',
'                        ) label,',
'                 DECODE (rws.r, 1, DATA.service, 2,DATA.total) VALUE,',
'                 DECODE (rws.r,',
'                         1,  ''f?p=''',
'                          || :app_id',
'                          || '':115:''',
'                          || :app_session',
'                          || '':::115,RIR:'',',
'                         2,  ''f?p=''',
'                          || :app_id',
'                          || '':96:''',
'                          || :app_session',
'                          || '':::96,RIR:IR_MARQUEE_CUSTOMER:Yes''',
'                        ) url',
'            FROM DATA, rws',
'          UNION ALL',
'          SELECT 3 display_order, ''Yearly'' label,',
'                 COUNT (DOCNUMBR) VALUE,',
'                 ''f?p='' || :app_id || '':99:'' || :app_session',
'                 || '':::99,RIR'' url',
'            from nmslsofr',
'       where compcode=:compcode',
'       ',
'        AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'          UNION ALL',
'          SELECT 4 display_order, ''Booking'' label,',
'                 COUNT (DISTINCT DOCNUMBR) VALUE,',
'                 ''f?p='' || :app_id || '':105:'' || :app_session || '':::105,RIR'' url',
'            FROM nmenudtl',
'           WHERE compcode=:compcode',
'                 and  BOOKCODE  is NOT NULL',
'          UNION ALL',
'          SELECT 5 display_order, ''Not Booking'' label,',
'                 COUNT (DISTINCT docnumbr) VALUE,',
'                 ''f?p='' || :app_id || '':106:'' || :app_session || '':::106,RIR'' url',
'           FROM nmenudtl',
'           WHERE compcode=:compcode',
'                 and  BOOKCODE  IS NULL)',
'ORDER BY display_order'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_translate_title=>'N'
,p_plug_query_num_rows=>15
,p_plug_header=>'<span style="font-size:12px;font-weight:bold;color:green;">Buyer Form</span>'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'5'
,p_attribute_07=>'BOX'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95166764241916368)
,p_plug_name=>'Booking Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   label, VALUE, url',
'    FROM (WITH DATA AS',
'               (SELECT t.total, s.service, s.REF',
'                  FROM (select count(*) service, NULL REF',
'       from nmenudtl',
'       where compcode=:compcode',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) s,',
'                       (select count(*) total',
'       from nmenudtl',
'       where compcode=:compcode',
'        AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))) t),',
'               rws AS',
'               (SELECT     LEVEL r',
'                      FROM DUAL',
'                CONNECT BY LEVEL < 3)',
'          SELECT rws.r display_order,',
'                 DECODE (rws.r,',
'                         1, ''Today''''s'',',
'                         2, ''This Month''',
'                        ) label,',
'                 DECODE (rws.r, 1, DATA.service, 2,DATA.total) VALUE,',
'                 DECODE (rws.r,',
'                         1,  ''f?p=''',
'                          || :app_id',
'                          || '':115:''',
'                          || :app_session',
'                          || '':::115,RIR:'',',
'                         2,  ''f?p=''',
'                          || :app_id',
'                          || '':96:''',
'                          || :app_session',
'                          || '':::96,RIR:IR_MARQUEE_CUSTOMER:Yes''',
'                        ) url',
'            FROM DATA, rws',
'          UNION ALL',
'          SELECT 3 display_order, ''Yearly'' label,',
'                 COUNT (DOCNUMBR) VALUE,',
'                 ''f?p='' || :app_id || '':99:'' || :app_session',
'                 || '':::99,RIR'' url',
'            from nmenudtl',
'       where compcode=:compcode',
'       ',
'        AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'          UNION ALL',
'          SELECT 4 display_order, ''Booking'' label,',
'                 COUNT (DISTINCT DOCNUMBR) VALUE,',
'                 ''f?p='' || :app_id || '':105:'' || :app_session || '':::105,RIR'' url',
'            FROM nmenudtl',
'           WHERE compcode=:compcode',
'                 and  BOOKCODE  is NOT NULL',
'          UNION ALL',
'          SELECT 5 display_order, ''Not Booking'' label,',
'                 COUNT (DISTINCT docnumbr) VALUE,',
'                 ''f?p='' || :app_id || '':106:'' || :app_session || '':::106,RIR'' url',
'           FROM nmenudtl',
'           WHERE compcode=:compcode',
'                 and  BOOKCODE  IS NULL)',
'ORDER BY display_order'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'5'
,p_attribute_06=>'L'
,p_attribute_07=>'BOX'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95167393786942959)
,p_plug_name=>'Sales Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   label, VALUE, url',
'    FROM (WITH DATA AS',
'               (SELECT t.total, s.service, s.REF',
'                  FROM (select count(*) service, NULL REF',
'       from nmsalrec',
'       where compcode=:compcode',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) s,',
'                       (select count(*) total',
'       from nmsalrec',
'       where compcode=:compcode',
'        AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))) t),',
'               rws AS',
'               (SELECT     LEVEL r',
'                      FROM DUAL',
'                CONNECT BY LEVEL < 3)',
'          SELECT rws.r display_order,',
'                 DECODE (rws.r,',
'                         1, ''Today''''s'',',
'                         2, ''This Month''',
'                        ) label,',
'                 DECODE (rws.r, 1, DATA.service, 2,DATA.total) VALUE,',
'                 DECODE (rws.r,',
'                         1,  ''f?p=''',
'                          || :app_id',
'                          || '':115:''',
'                          || :app_session',
'                          || '':::115,RIR:'',',
'                         2,  ''f?p=''',
'                          || :app_id',
'                          || '':96:''',
'                          || :app_session',
'                          || '':::96,RIR:IR_MARQUEE_CUSTOMER:Yes''',
'                        ) url',
'            FROM DATA, rws',
'          UNION ALL',
'          SELECT 3 display_order, ''Yearly'' label,',
'                 COUNT (DOCNUMBR) VALUE,',
'                 ''f?p='' || :app_id || '':99:'' || :app_session',
'                 || '':::99,RIR'' url',
'            from nmsalrec',
'       where compcode=:compcode',
'       ',
'        AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1)',
'ORDER BY display_order'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'5'
,p_attribute_06=>'L'
,p_attribute_07=>'BOX'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95167963111956570)
,p_plug_name=>'Collection Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   label, VALUE, url',
'    FROM (WITH DATA AS',
'               (SELECT t.total, s.service, s.REF',
'                  FROM (select count(*) service, NULL REF',
'       from nmsalrec',
'       where compcode=:compcode',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) s,',
'                       (select count(*) total',
'       from nmsalrec',
'       where compcode=:compcode',
'        AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))) t),',
'               rws AS',
'               (SELECT     LEVEL r',
'                      FROM DUAL',
'                CONNECT BY LEVEL < 3)',
'          SELECT rws.r display_order,',
'                 DECODE (rws.r,',
'                         1, ''Today''''s'',',
'                         2, ''This Month''',
'                        ) label,',
'                 DECODE (rws.r, 1, DATA.service, 2,DATA.total) VALUE,',
'                 DECODE (rws.r,',
'                         1,  ''f?p=''',
'                          || :app_id',
'                          || '':115:''',
'                          || :app_session',
'                          || '':::115,RIR:'',',
'                         2,  ''f?p=''',
'                          || :app_id',
'                          || '':96:''',
'                          || :app_session',
'                          || '':::96,RIR:IR_MARQUEE_CUSTOMER:Yes''',
'                        ) url',
'            FROM DATA, rws',
'          UNION ALL',
'          SELECT 3 display_order, ''Yearly'' label,',
'                 COUNT (DOCNUMBR) VALUE,',
'                 ''f?p='' || :app_id || '':99:'' || :app_session',
'                 || '':::99,RIR'' url',
'            from nmsalrec',
'       where compcode=:compcode',
'       ',
'        AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1)',
'ORDER BY display_order'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'5'
,p_attribute_06=>'L'
,p_attribute_07=>'BOX'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(95188794329056355)
,p_name=>'Buyer Form'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--small:t-BadgeList--cols t-BadgeList--3cols'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.value today,b.value monthly, p.value Yearly',
'from (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmslsofr',
'       where compcode=:compcode',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) a,',
'        (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmslsofr',
'       where compcode=:compcode',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))) b,',
'    ( SELECT ',
'                 COUNT (DOCNUMBR) VALUE',
'            from nmslsofr',
'       where compcode=:compcode',
'       ',
'        AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1 ) p',
'order by 1',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95190530987130833)
,p_query_column_id=>1
,p_column_alias=>'TODAY'
,p_column_display_sequence=>1
,p_column_heading=>'Today''s'
,p_use_as_row_header=>'N'
,p_column_css_style=>'style="color:red;"'
,p_column_link=>'f?p=&APP_ID.:160:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#TODAY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95190905133130836)
,p_query_column_id=>2
,p_column_alias=>'MONTHLY'
,p_column_display_sequence=>3
,p_column_heading=>'Monthly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:161:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#MONTHLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95191364577130837)
,p_query_column_id=>3
,p_column_alias=>'YEARLY'
,p_column_display_sequence=>2
,p_column_heading=>'Yearly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#YEARLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(95443167531735161)
,p_name=>'Booking Information'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--small:t-BadgeList--cols t-BadgeList--3cols'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.value today,b.value monthly, p.value Yearly',
'from (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmenudtl',
'       where compcode=:compcode',
'       and  BOOKCODE  is NOT NULL',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) a,',
'        (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmenudtl',
'       where compcode=:compcode',
'       and  BOOKCODE  is NOT NULL',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))) b,',
'    ( SELECT ',
'                 COUNT (DOCNUMBR) VALUE',
'            from nmenudtl',
'       where compcode=:compcode',
'       and  BOOKCODE  is NOT NULL',
'        AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1 ) p',
'order by 1',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95443563278735164)
,p_query_column_id=>1
,p_column_alias=>'TODAY'
,p_column_display_sequence=>1
,p_column_heading=>'Today''s'
,p_use_as_row_header=>'N'
,p_column_css_style=>'style="color:red;"'
,p_column_link=>'f?p=&APP_ID.:165:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#TODAY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95443890287735166)
,p_query_column_id=>2
,p_column_alias=>'MONTHLY'
,p_column_display_sequence=>2
,p_column_heading=>'Monthly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:166:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#MONTHLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95444324781735166)
,p_query_column_id=>3
,p_column_alias=>'YEARLY'
,p_column_display_sequence=>3
,p_column_heading=>'Yearly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:167:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#YEARLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(95450916309755338)
,p_name=>'Sales Information'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--small:t-BadgeList--cols t-BadgeList--3cols'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.value today,b.value monthly, p.value Yearly',
'from (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmsalrec',
'       where compcode=:compcode',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) a,',
'        (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmsalrec',
'       where compcode=:compcode',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))) b,',
'    ( SELECT ',
'                 COUNT (DOCNUMBR) VALUE',
'            from nmsalrec',
'       where compcode=:compcode',
'       ',
'        AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1 ) p',
'order by 1',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95451171558755340)
,p_query_column_id=>1
,p_column_alias=>'TODAY'
,p_column_display_sequence=>1
,p_column_heading=>'Today''s'
,p_use_as_row_header=>'N'
,p_column_css_style=>'style="color:red;"'
,p_column_link=>'f?p=&APP_ID.:168:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#TODAY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95451630557755341)
,p_query_column_id=>2
,p_column_alias=>'MONTHLY'
,p_column_display_sequence=>2
,p_column_heading=>'Monthly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:169:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#MONTHLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95451974638755341)
,p_query_column_id=>3
,p_column_alias=>'YEARLY'
,p_column_display_sequence=>3
,p_column_heading=>'Yearly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:170:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#YEARLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(95452458324757506)
,p_name=>'Collection Information'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--small:t-BadgeList--cols t-BadgeList--3cols'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.value today,b.value monthly, p.value Yearly',
'from (SELECT ',
'                 COUNT (*) VALUE',
'             from installment_collection',
'       where compcode=:compcode',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) a,',
'        (SELECT ',
'                 COUNT (*) VALUE',
'             from installment_collection',
'       where compcode=:compcode',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))) b,',
'    ( SELECT ',
'                 COUNT (*) VALUE',
'            from installment_collection',
'       where compcode=:compcode',
'       ',
'        AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1 ) p',
'order by 1',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95453492665757508)
,p_query_column_id=>1
,p_column_alias=>'TODAY'
,p_column_display_sequence=>1
,p_column_heading=>'Today''s'
,p_use_as_row_header=>'N'
,p_column_css_style=>'style="color:red;"'
,p_column_link=>'f?p=&APP_ID.:171:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#TODAY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95452752724757508)
,p_query_column_id=>2
,p_column_alias=>'MONTHLY'
,p_column_display_sequence=>2
,p_column_heading=>'Monthly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:172:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#MONTHLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95453153215757508)
,p_query_column_id=>3
,p_column_alias=>'YEARLY'
,p_column_display_sequence=>3
,p_column_heading=>'Yearly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:173:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#YEARLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97449595082057893)
,p_plug_name=>'Buyer Form chart with report'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97448468234044927)
,p_plug_name=>' Monthly Sales'
,p_parent_plug_id=>wwv_flow_api.id(97449595082057893)
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>2
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.MM_YEAR,A.MON_YEAR,B.FCAMNT "Sales" FROM (',
'SELECT TO_CHAR(DT,''MMRRRR'')MM_YEAR,TO_CHAR(DT,''MON-RRRR'')MON_YEAR FROM (',
'SELECT TRUNC(ADD_MONTHS(FINYEARB,ROWNUM-1),''MM'')DT FROM (',
'SELECT FINYEARB,FINYEARE FROM ACCOMPAR',
'WHERE (yclosflg=''N'' or to_char(finyearb,''RRRR'')=TO_CHAR(SYSDATE,''RRRR''))',
')',
'CONNECT BY LEVEL <= ROUND(MONTHS_BETWEEN(FINYEARE,FINYEARB))',
'))A,',
'(select TO_CHAR(DOCTDATE,''MMRRRR'')MM_YEAR,NVL(SUM(MSFCAMNT),0)FCAMNT,NVL(SUM(MSLCAMNT),0)LCAMNT from nmsalrec',
'GROUP BY TO_CHAR(DOCTDATE,''MMRRRR''))B',
'WHERE A.MM_YEAR=B.MM_YEAR(+)  ',
'ORDER BY TO_DATE(''01''||MM_YEAR,''DDMMRRRR'')'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(750635846395245)
,p_region_id=>wwv_flow_api.id(97448468234044927)
,p_chart_type=>'combo'
,p_title=>'Monthly Sales'
,p_width=>'380'
,p_height=>'200'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'N'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>false
,p_show_label=>false
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No data found.'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(750930499395245)
,p_chart_id=>wwv_flow_api.id(750635846395245)
,p_seq=>10
,p_name=>'Series 1'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'line'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(750790902395245)
,p_chart_id=>wwv_flow_api.id(750635846395245)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(750804995395245)
,p_chart_id=>wwv_flow_api.id(750635846395245)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(97450026798088075)
,p_name=>'Buyer Information'
,p_parent_plug_id=>wwv_flow_api.id(97449595082057893)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>1
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'                 ITEMDESC,PAYMENT_MODE',
'            FROM nmenudtl',
'           WHERE compcode=:compcode',
'                 and  BOOKCODE  is NOT NULL'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97450472348088081)
,p_query_column_id=>1
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>1
,p_column_heading=>'Itemdesc'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97450908944088081)
,p_query_column_id=>2
,p_column_alias=>'PAYMENT_MODE'
,p_column_display_sequence=>2
,p_column_heading=>'Payment Mode'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95050539923853395)
,p_name=>'P159_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(95050152575853384)
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
 p_id=>wwv_flow_api.id(95050923151853396)
,p_name=>'P159_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(95050152575853384)
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
 p_id=>wwv_flow_api.id(95051320880853396)
,p_name=>'P159_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(95050152575853384)
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
wwv_flow_api.component_end;
end;
/
