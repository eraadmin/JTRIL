prompt --application/pages/page_00084
begin
--   Manifest
--     PAGE: 00084
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
 p_id=>84
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Fund Requisition Report'
,p_alias=>'ACMULAPR'
,p_step_title=>'Fund Requisition Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript"> ',
'function tabE(obj,e,s)',
'{',
'  if(e.keyCode==13)',
'  {',
'    window.document.getElementById(s).focus();',
'    return false; ',
'  } ',
'} ',
'</script> '))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.Current{',
' /* empty -display as requested by the report template */',
'}',
'',
'.Waiting{',
' display: none;',
'}',
'',
'.formlayout td fieldset label {',
'color: green ',
'! important;',
'font-weight: bold',
'! important;',
'}',
'',
'.tbl-main {',
'  vertical-align: top;',
'  width: 25%;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124815'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68742290659222088)
,p_name=>'Requisition Type'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Distinct Initcap(naration)||''  (''||s.trantype||''/''||subttype||'')'' as d  ,s.trantype as doctype,subttype  as r ,''(''||(select count(count(Distinct Docnumbr))from acreqapr',
'where DOCTTYPE=s.trantype ',
'and SUBTTYPE=s.subttype',
'and COMPCODE=s.compcode',
'and USERCODE=:APP_USER',
'and STATUSCD=''NEW''',
'group by DOCNUMBR)||'')'' as docnum',
'From SYDOCMAS s',
'Where s.compcode = :compcode ',
'And s.trantype||s.subttype in (',
'   SELECT  distinct  TRDOCTYP||TRSUBTYP',
'          FROM nmusrlev v',
'        WHERE v.trdoctyp in (SELECT distinct TRDOCTYP',
'        FROM nmwrkflw w',
'       WHERE w.compcode = :compcode',
'         and APPRNEED=''Y''',
'         and TRDOCTYP is not null',
'         and TRSUBTYP is not null)',
'         ',
'          AND v.trsubtyp in (SELECT distinct TRSUBTYP',
'        FROM nmwrkflw w',
'       WHERE w.compcode = :compcode',
'         and APPRNEED=''Y''',
'         and TRDOCTYP is not null',
'         and TRSUBTYP is not null)',
'         ',
'        and v.COMPCODE = :compcode',
'        and v.USERCODE=:APP_USER',
')',
'order by doctype',
''))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68742795723222105)
,p_query_column_id=>1
,p_column_alias=>'D'
,p_column_display_sequence=>1
,p_column_heading=>'Transection Type'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.::P84_S_DOCTYP,P84_S_SUBTYP:#DOCTYPE#,#R#'
,p_column_linktext=>'#D#'
,p_column_link_attr=>'style="color: #4B66A7; cursor: auto; text-decoration: blink;"'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68742486767222099)
,p_query_column_id=>2
,p_column_alias=>'DOCTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Doc. Type'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68742572858222105)
,p_query_column_id=>3
,p_column_alias=>'R'
,p_column_display_sequence=>2
,p_column_heading=>'Sub. Type'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68742684472222105)
,p_query_column_id=>4
,p_column_alias=>'DOCNUM'
,p_column_display_sequence=>4
,p_column_heading=>'Total '
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68742867860222108)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   a.compcode, docttype, subttype, a.docnumbr,a.docnumbr|| ''/''|| doctdate|| ''/''|| docttype|| ''/''|| subttype AS docdetails,doctdate,',
'         b.selected,',
'         (SELECT INITCAP (a.RAISEDBY|| ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = a.RAISEDBY) AS usercode, b.status, b.edit,',
'         COUNT (*) no_of_item, SUM (apprqnty), a.apprvlev, a.warecode,',
' INITCAP (',
'            (SELECT WAREDESC',
'               FROM nmwhsmas',
'              WHERE WARECODE =',
'                       (SELECT DISTINCT LOCNCODE',
'                          FROM nmusrlev',
'                         WHERE     TRDOCTYP = a.docttype',
'                               AND TRSUBTYP = a.subttype',
'                               AND USERCODE = a.RAISEDBY)',
'                    AND COMPCODE = a.compcode))',
'            raisedfrom',
'    FROM acreqapr a,',
'         (SELECT   p.compcode, p.docnumbr,',
'                   CASE',
'                      WHEN p.statuscd = ''APR''',
'                         THEN ''Approved''',
'                      WHEN p.apprvlev =',
'                             (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                                FROM acreqapr a',
'                               WHERE a.apprvlev <= p.apprvlev',
'                                 AND a.statuscd = ''APR''',
'                                 AND ACCTCODE = p.ACCTCODE',
'                                 AND docnumbr = p.docnumbr)',
'                         THEN ''Current''',
'                      ELSE ''Waiting''',
'                   END status,',
'                   CASE',
'                      WHEN p.apprvlev =',
'                             (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                                FROM acreqapr a',
'                               WHERE a.apprvlev <= p.apprvlev',
'                                 AND a.statuscd = ''APR''',
'                                 AND ACCTCODE = p.ACCTCODE',
'                                 AND docnumbr = p.docnumbr)',
'                         THEN apex_item.checkbox2 (1,p.docnumbr',
'                             ) ',
'                      ELSE null',
'                   END selected,',
'                    CASE',
'                      WHEN p.apprvlev =',
'                             (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                                FROM acreqapr a',
'                               WHERE a.apprvlev <= p.apprvlev',
'                                 AND a.statuscd = ''APR''',
'                                 AND ACCTCODE = p.ACCTCODE',
'                                 AND docnumbr = p.docnumbr)',
'                         THEN ''<Font color= #4B66A7>Approved</Font>''',
'                      ELSE ''<Font color=red>Show Details</Font>''',
'                   END edit',
'              FROM acreqapr p',
'             WHERE compcode = :compcode',
'               AND docnumbr = NVL (:p84_s_docnum, docnumbr)',
'               AND docttype = NVL (:p84_s_doctyp, docttype)',
'               AND subttype = NVL (:p84_s_subtyp, subttype)',
'               AND costcode = NVL (:p84_s_jobcde, costcode)',
'               AND usercode = :app_user',
'               AND statuscd = :p84_radio',
'          GROUP BY p.compcode,',
'                   p.docnumbr,',
'                   p.docttype,',
'                   p.subttype,',
'                   p.doctdate,',
'                   p.usercode,',
'                   p.apprvlev,',
'                   p.warecode,',
'                   p.statuscd,',
'                   p.ACCTCODE',
'          ORDER BY p.docnumbr DESC, 2, p.apprvlev) b',
'   WHERE a.compcode = b.compcode',
'     AND a.docnumbr = b.docnumbr',
'     AND a.statuscd = :P84_RADIO',
'     AND usercode = :app_user',
'     and a.docttype=''FR''',
'     and a.subttype=1',
'GROUP BY a.compcode,',
'         a.docttype,',
'         a.subttype,',
'         a.docnumbr,',
'         a.doctdate,',
'         a.usercode,',
'         b.status,',
'         b.edit,',
'         a.apprvlev,',
'         a.warecode,',
'         a.RAISEDBY,',
'         b.selected'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P84_S_DOCNUM,P84_S_DOCTYP,P84_S_SUBTYP,P84_S_JOBCDE,P84_RADIO'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68743084540222109)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'MONIR'
,p_internal_uid=>31588217414541615
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68743384392222127)
,p_db_column_name=>'EDIT'
,p_display_order=>5
,p_column_identifier=>'CW'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::P28_DOCNUMBER:#DOCNUMBR#'
,p_column_linktext=>'#EDIT#'
,p_column_link_attr=>'style="color: #4B66A7; cursor: auto; text-decoration: blink;"'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'EDIT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68744291428222128)
,p_db_column_name=>'DOCDETAILS'
,p_display_order=>6
,p_column_identifier=>'DF'
,p_column_label=>'Docnumber Details'
,p_column_link=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.::P91_DOCNUMBER,P91_STATUS:#DOCNUMBR#,#STATUS#'
,p_column_linktext=>'#DOCDETAILS#'
,p_column_link_attr=>'style="color: #4B66A7; cursor: auto; text-decoration: blink;"'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCDETAILS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68743468610222127)
,p_db_column_name=>'COMPCODE'
,p_display_order=>7
,p_column_identifier=>'CX'
,p_column_label=>'Comp. Code'
,p_report_label=>'Company<br>Code'
,p_sync_form_label=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'COMPCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68743286378222125)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'CS'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68744586120222128)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>9
,p_column_identifier=>'E'
,p_column_label=>'Document<br>No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68743794956222127)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>10
,p_column_identifier=>'DA'
,p_column_label=>'Doctdate'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68743584704222127)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>11
,p_column_identifier=>'CY'
,p_column_label=>'Doc.<br>Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68743685188222127)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>12
,p_column_identifier=>'CZ'
,p_column_label=>'Sub<br>Type'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'SUBTTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68743178465222119)
,p_db_column_name=>'USERCODE'
,p_display_order=>100
,p_column_identifier=>'CM'
,p_column_label=>'Raised By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'USERCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68744177267222128)
,p_db_column_name=>'WARECODE'
,p_display_order=>101
,p_column_identifier=>'DE'
,p_column_label=>'Warecode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'WARECODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68743890802222127)
,p_db_column_name=>'NO_OF_ITEM'
,p_display_order=>106
,p_column_identifier=>'DB'
,p_column_label=>'Total<br>Request'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'NO_OF_ITEM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68743974557222127)
,p_db_column_name=>'SUM(APPRQNTY)'
,p_display_order=>107
,p_column_identifier=>'DC'
,p_column_label=>'Total Amount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SUM(APPRQNTY)'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68744081525222128)
,p_db_column_name=>'APPRVLEV'
,p_display_order=>108
,p_column_identifier=>'DD'
,p_column_label=>'Approved<br>Level'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'APPRVLEV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68744397109222128)
,p_db_column_name=>'SELECTED'
,p_display_order=>109
,p_column_identifier=>'DG'
,p_column_label=>'<input type="checkbox" id="selectunselectall">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'SELECTED'
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_condition=>'P31_STATUS'
,p_display_condition2=>':Waiting:Current'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<input type="checkbox" #selectunselectall# value="#ROWNUM#" name="f30" id="f30_#ROWNUM#"/>',
'<input type="checkbox" #selectunselectall# value="1" name="f30" id="f30_1"/>',
'if :P31_STATUS <> ''Waiting:Approved''',
'then return true;',
'else',
'return false;',
'end if;'))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68744490239222128)
,p_db_column_name=>'RAISEDFROM'
,p_display_order=>110
,p_column_identifier=>'DH'
,p_column_label=>'Raised From'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RAISEDFROM'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68744699320222130)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'315899'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCDETAILS:USERCODE:RAISEDFROM:NO_OF_ITEM:SUM(APPRQNTY):STATUS:APPRVLEV:SELECTED:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68746695525222162)
,p_plug_name=>'Search Region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68765999094118854)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>40
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
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68780788479399674)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P84_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P84_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68745689620222145)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(68742867860222108)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68744871544222134)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(68742867860222108)
,p_button_name=>'ADVAN_SRCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Show advanched Search'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68745094822222144)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(68742867860222108)
,p_button_name=>'HIDE_SERCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Hide advanched Search'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68745299289222144)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(68742867860222108)
,p_button_name=>'P84_CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68745492711222145)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(68742867860222108)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Approved'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68746887268222164)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(68746695525222162)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Search'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68745889552222145)
,p_name=>'P84_RADIO'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_api.id(68742867860222108)
,p_item_default=>'NEW'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct case WHEN NMSOFCDE = ''NEW''',
'               THEN ''Non Approved''',
'WHEN NMSOFCDE = ''APR''',
'               THEN ''Approved''',
' END d , NMSOFCDE as r',
'from nmcodmas',
'where NMHRDCDE = ''ST''',
' AND MODLCODE = ''NM''',
' AND COMPCODE = :COMPCODE ',
'AND NMSOFCDE  in (''NEW'',''APR'')'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'REDIRECT_SET_VALUE'
,p_attribute_04=>'HORIZONTAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68746086272222161)
,p_name=>'P84_CHECKEDVALUE'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_api.id(68742867860222108)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68746279035222161)
,p_name=>'P84_ROWCOUNT'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(68742867860222108)
,p_prompt=>'Rowcount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68746477496222161)
,p_name=>'P84_STATUS'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(68742867860222108)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct  b.status',
'    FROM acreqapr a,',
'         (SELECT   p.compcode, p.docnumbr,',
'                   CASE',
'                      WHEN p.statuscd = ''APR''',
'                         THEN ''Approved''',
'                      WHEN p.apprvlev =',
'                             (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                                FROM acreqapr a',
'                               WHERE a.apprvlev <= p.apprvlev',
'                                 AND a.statuscd = ''APR''',
'                                 AND ACCTCODE= p.ACCTCODE',
'                                 AND docnumbr = p.docnumbr)',
'                         THEN ''Current''',
'                      ELSE ''Waiting''',
'                   END status',
'              FROM acreqapr p',
'             WHERE compcode = :compcode',
'               AND docnumbr = NVL (:p84_s_docnum, docnumbr)',
'               AND docttype = NVL (:p84_s_doctyp, docttype)',
'               AND subttype = NVL (:p84_s_subtyp, subttype)',
'               AND costcode = NVL (:p84_s_jobcde, costcode)',
'--and WARECODE=nvl(:P6_S_WHSCDE,WARECODE)',
'               AND usercode = :app_user',
'               AND statuscd = :p84_radio',
'          GROUP BY p.compcode,',
'                   p.docnumbr,',
'                   p.docttype,',
'                   p.subttype,',
'                   p.doctdate,',
'                   p.usercode,',
'                   p.apprvlev,',
'                   p.warecode,',
'                   p.statuscd,',
'                   p.ACCTCODE',
'          ORDER BY p.docnumbr DESC, 2, p.apprvlev) b',
'   WHERE a.compcode = b.compcode',
'     AND a.docnumbr = b.docnumbr',
'     AND a.statuscd = :P84_RADIO',
'     AND usercode = :app_user',
'GROUP BY a.compcode,',
'         a.docttype,',
'         a.subttype,',
'         a.docnumbr,',
'         a.doctdate,',
'         a.usercode,',
'         b.status,',
'         a.apprvlev,',
'         a.warecode,',
'         a.RAISEDBY'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68747088601222164)
,p_name=>'P84_S_CTGCODE'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(68746695525222162)
,p_prompt=>'S ctgcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68747283789222164)
,p_name=>'P84_S_SUBTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(68746695525222162)
,p_prompt=>'Sub Type'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Distinct Initcap(naration) as naration  ,subttype  as subttype ',
'From SYDOCMAS ',
'Where compcode = :compcode ',
'And trantype = :P84_S_DOCTYP',
'And modlcode = :modlcode',
'AND subttype IN (''1'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''10'', ''11'', ''12'')',
'--And :P84_S_DOCDTE Between strtperd And endperd',
'Order by Subttype'))
,p_lov_cascade_parent_items=>'P84_S_DOCTYP,P84_S_DOCDTE'
,p_ajax_items_to_submit=>'P84_S_DOCTYP,P84_S_DOCDTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P31_S_WHSCDE'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68747477212222166)
,p_name=>'P84_S_DOCNUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(68746695525222162)
,p_prompt=>'Doc.No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT p.docnumbr||''__''||p.doctdate as Docdesc,p.docnumbr as Docnumber',
'           FROM acreqapr p',
'          WHERE p.compcode = :compcode ',
'       ORDER BY 1 DESC'))
,p_lov_cascade_parent_items=>'P84_S_DOCTYP,P84_S_SUBTYP,P84_CAMODESL'
,p_ajax_items_to_submit=>'P84_S_DOCTYP,P84_S_SUBTYP,P84_CAMODESL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P31_S_DOCTYP'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68747676961222167)
,p_name=>'P84_ITEMDESC'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(68746695525222162)
,p_prompt=>'Item Desc.'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P7_S_RAISED'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68747878618222167)
,p_name=>'P84_S_WHSCDE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(68746695525222162)
,p_prompt=>'Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT warecode||''----''||waredesc as waredesc,warecode as warecode',
'  FROM nmwhsmas',
' WHERE compcode = :compcode',
' order by 1 '))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P6_ITEMCODE'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68748072067222167)
,p_name=>'P84_ITEMCODE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(68746695525222162)
,p_prompt=>'Item Code'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P6_S_RAISED'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68748277329222167)
,p_name=>'P84_S_CATEGORY'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(68746695525222162)
,p_prompt=>'category'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68748487510222167)
,p_name=>'P84_S_INDTYP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(68746695525222162)
,p_prompt=>'Sub Desc.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68748686268222169)
,p_name=>'P84_S_WHSNAM'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(68746695525222162)
,p_prompt=>'Ware. Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68748867659222169)
,p_name=>'P84_S_JOBCDE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(68746695525222162)
,p_prompt=>'Cst. Cd.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P7_S_WHSCDE'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68749073858222169)
,p_name=>'P84_S_JOBNAM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(68746695525222162)
,p_prompt=>'Cst. Cd. Name'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68749295273222169)
,p_name=>'P84_S_RAISED'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(68746695525222162)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Raised By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''SERLNUMB'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68749471392222169)
,p_name=>'P84_S_RAINAM'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(68746695525222162)
,p_prompt=>'rainam'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68749679196222169)
,p_name=>'P84_S_DOCTYP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(68746695525222162)
,p_prompt=>'Req. Type'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT p.docttype||''__''||p.subttype as docdesc,p.docttype as doctype',
'           FROM nmreqapr p',
'          WHERE p.compcode = :compcode '))
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P31_S_SUBTYP'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68780971318399676)
,p_name=>'P84_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(68780788479399674)
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
 p_id=>wwv_flow_api.id(68781182698399678)
,p_name=>'P84_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68780788479399674)
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
 p_id=>wwv_flow_api.id(68781369612399678)
,p_name=>'P84_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(68780788479399674)
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68757469037222195)
,p_name=>'dynamic on subtype'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P84_S_SUBTYP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68757784917222195)
,p_event_id=>wwv_flow_api.id(68757469037222195)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'Select Distinct Initcap(naration) as naration  ',
'into :P7_S_INDTYP',
'From SYDOCMAS ',
'Where compcode = :compcode ',
'And trantype = :P7_S_DOCTYP',
'And modlcode = :modlcode',
'AND subttype =:P7_S_SUBTYP;',
'end;',
''))
,p_attribute_02=>'P7_S_DOCTYP,P7_S_SUBTYP'
,p_attribute_03=>'P7_S_INDTYP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68750290955222181)
,p_name=>'dynamic on Docnumber'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P84_S_DOCNUM'
,p_condition_element=>'P84_S_DOCNUM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68750597318222189)
,p_event_id=>wwv_flow_api.id(68750290955222181)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT DISTINCT p.docnumbr,p.docttype, p.subttype, p.costcode, p.warecode,a.waredesc, b.costdesc',
'into :P84_S_DOCNUM,:P84_S_DOCTYP,:P84_S_SUBTYP,:P84_S_JOBCDE,:P84_S_WHSCDE,:P84_S_WHSNAM,:P84_S_JOBNAM',
'           FROM nmreqapr p,nmwhsmas a ,syjobmas b',
'          WHERE p.compcode = :compcode',
'          and a.compcode = b.compcode',
'          and p.costcode=b.costcode',
'          and a.costcode=b.costcode',
'            and P.DOCNUMBR not in (select P.DOCNUMBR',
'                                    from nmprocur p',
'                                    where P.STATUSCD = ''LPO'')',
'           and p.docttype=:P84_S_DOCTYP',
'           and p.subttype=:P84_S_SUBTYP',
'and P.DOCNUMBR=:P84_S_DOCNUM',
'       ORDER BY p.docnumbr;',
'EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'end;'))
,p_attribute_02=>'P84_S_DOCNUM,P84_S_DOCTYP,P84_S_SUBTYP,P84_S_JOBCDE,P84_S_WHSCDE,P84_S_WHSNAM,P84_S_JOBNAM'
,p_attribute_03=>'P84_S_DOCNUM,P84_S_DOCTYP,P84_S_SUBTYP,P84_S_JOBCDE,P84_S_WHSCDE,P84_S_WHSNAM,P84_S_JOBNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68750693196222192)
,p_name=>'edsfgsdfsd'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68750992310222192)
,p_event_id=>wwv_flow_api.id(68750693196222192)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(68746695525222162)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68751084390222192)
,p_name=>'ooo'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40646868168542374)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68751397122222192)
,p_event_id=>wwv_flow_api.id(68751084390222192)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(68746695525222162)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68751491736222192)
,p_name=>'hide show button'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40646868168542374)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68751777921222192)
,p_event_id=>wwv_flow_api.id(68751491736222192)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68751889024222194)
,p_name=>'show hide button'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40646868168542374)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68752195252222194)
,p_event_id=>wwv_flow_api.id(68751889024222194)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(68745094822222144)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68752275783222194)
,p_name=>'hide advanched region'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(68745094822222144)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68752582146222194)
,p_event_id=>wwv_flow_api.id(68752275783222194)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(68746695525222162)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68752699146222194)
,p_name=>'hide hide_button'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(68745094822222144)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68752981808222194)
,p_event_id=>wwv_flow_api.id(68752699146222194)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(68745094822222144)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68753090443222194)
,p_name=>'show show_button'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(68745094822222144)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68753367332222194)
,p_event_id=>wwv_flow_api.id(68753090443222194)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68753493016222194)
,p_name=>'hide button on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68753787866222194)
,p_event_id=>wwv_flow_api.id(68753493016222194)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(68745094822222144)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68753897916222194)
,p_name=>'show region'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40680077764719967)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68754193063222194)
,p_event_id=>wwv_flow_api.id(68753897916222194)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(68746695525222162)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68754296741222194)
,p_name=>'hide button'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40680077764719967)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68754581934222194)
,p_event_id=>wwv_flow_api.id(68754296741222194)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68754692565222194)
,p_name=>'show button'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40680077764719967)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68754991776222194)
,p_event_id=>wwv_flow_api.id(68754692565222194)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(68745094822222144)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68755088397222194)
,p_name=>'refresh on region'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P84_RADIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'mousedown'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68755383480222195)
,p_event_id=>wwv_flow_api.id(68755088397222194)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P84_S_DOCTYP := null;',
':P84_S_SUBTYP  := null;',
'end;'))
,p_attribute_03=>'P84_S_DOCTYP,P84_S_SUBTYP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68755489015222195)
,p_name=>'refresh on region'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P84_RADIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'mousedown'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68755790838222195)
,p_event_id=>wwv_flow_api.id(68755489015222195)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P84_S_DOCTYP := null;',
':P84_S_SUBTYP  := null;',
'end;'))
,p_attribute_03=>'P84_S_DOCTYP,P84_S_SUBTYP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68755870098222195)
,p_name=>'all selected'
,p_event_sequence=>150
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68756167578222195)
,p_event_id=>wwv_flow_api.id(68755870098222195)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $( ''#selectunselectall'' ).is('':checked'') ) {',
'  $(''input[type=checkbox][name=f01]'').attr(''checked'',true);',
'}',
'else {',
'  $(''input[type=checkbox][name=f01]'').attr(''checked'',false);',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68756281571222195)
,p_name=>'getting checkbox value'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(68745492711222145)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68756594660222195)
,p_event_id=>wwv_flow_api.id(68756281571222195)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var checkedValue = null; ',
'var inputElements = document.getElementsByTagName(''input'');',
'for(var i=0; inputElements[i]; ++i){',
'      if(inputElements[i].checked){',
'           checkedValue = inputElements[i-5].value;',
'            inputElements[i-3].value = ''Current'';',
'     window.document.getElementById(''P84_CHECKEDVALUE'').value = checkedValue;',
'      }',
'}'))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var checkedValue = null; ',
'var inputElements = document.getElementsByTagName(''input'');',
'for(var i=0; inputElements[i]; ++i){',
'      if(inputElements[i].checked){',
'           checkedValue = inputElements[i-5].value;',
'            inputElements[i-3].value = ''Current'';',
'     window.document.getElementById(''P31_CHECKEDVALUE'').value = checkedValue;',
'      }',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68756678618222195)
,p_name=>'alert on checkbox'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(68745492711222145)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68756986635222195)
,p_event_id=>wwv_flow_api.id(68756678618222195)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var counter = 0;',
'if (!(document.wwv_flow.f01==null)) //At least some rows exist',
'{  ',
'l_checkboxes=document.wwv_flow.f01;',
'for (i=0;i<l_checkboxes.length;i++)',
'{',
'if (l_checkboxes.checked==true)',
'{counter = counter + 1;}',
'}',
'alert (''You have checked: ''+counter+'' rows.'');',
'} ',
'if (counter == 0) ',
'{',
'alert("Would you please select one or more rows to update?");',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68757073282222195)
,p_name=>'count row'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(68745492711222145)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68757385596222195)
,p_event_id=>wwv_flow_api.id(68757073282222195)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_cnt number(9);',
'BEGIN',
'v_cnt := 0;',
'FOR i in 1..htmldb_application.g_f30.count',
'LOOP',
'v_cnt := v_cnt + 1;',
'END LOOP;',
'return v_cnt;',
':P84_ROWCOUNT:=v_cnt;',
'end;'))
,p_attribute_02=>'P84_ROWCOUNT'
,p_attribute_03=>'P84_ROWCOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68765794938117645)
,p_process_sequence=>20
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
'If :P87_PROGNM  is null and :P87_NO is null then',
'   :P87_PROGNM := :FX_PROG_NAME;',
'   :P87_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P87_PROGNM,',
'                                      p_parentnm =>:P87_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P87_OPRSTAMP := :app_user;',
'  --:P87_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P87_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P87_PROGNM;',
'   :FX_PAGE_NO := :P87_NO;',
'Elsif :FX_PROG_NAME <> :P87_PROGNM And :FX_PAGE_NO <> :P87_NO Then',
'   :FX_PROG_NAME := :P87_PROGNM;',
'   :FX_PAGE_NO := :P87_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68750075457222173)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update on nmreqapr'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'FOR i in 1..APEX_APPLICATION.G_F01.count LOOP',
'update acreqapr',
'set statuscd = ''APR'' ',
'where docnumbr=APEX_APPLICATION.G_F01(i)',
'and USERCODE=:APP_USER; ',
'END LOOP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(68745492711222145)
,p_process_success_message=>'Update successfully ..............'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_rowno NUMBER;',
'BEGIN',
'   for i in 1..apex_application.g_f30.count',
'   loop',
'      v_rowno := apex_application.g_f30(i);',
':P13_TEST_VAL := apex_application.g_f30(v_rowno);',
'   end loop;',
'END;'))
);
wwv_flow_api.component_end;
end;
/
