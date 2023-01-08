prompt --application/pages/page_00107
begin
--   Manifest
--     PAGE: 00107
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
 p_id=>107
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Store Purchase Request(SPR)'
,p_step_title=>'Store Purchase Request(SPR)'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_footer_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'highlight_nodes(document.getElementById(''row_&P107_DOCNUMBER.''));',
'</script>'))
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'function highlight_nodes (pthis) {',
'if (pthis) {',
'for( var i = 0; i ',
'   < pthis.parentNode.parentNode.childNodes.length; i++ )',
'pthis.parentNode.parentNode.childNodes[i].style.backgroundColor = ''rgb(0, 207, 255)'';}',
'}',
'</script>',
'',
'<style type="text/css">',
'',
'#R4387074569682855 > .rc-body > .rc-body-r { /* Use child selectors so that sub-regions are not affected */',
'  height: 700px; /* Apply some arithmetic to get required height = 650 - (height of region title + bottom chrome) */',
'}',
'</style>',
'',
'<style type="text/css">',
'',
'#R4696256844339345 > .rc-body > .rc-body-r { /* Use child selectors so that sub-regions are not affected */',
'  height: 696px; /* Apply some arithmetic to get required height = 650 - (height of region title + bottom chrome) */',
'}',
'</style>',
'',
''))
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
 p_id=>wwv_flow_api.id(40946637225896666)
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
'Select Distinct Initcap(naration)||''  (''||s.trantype||''/''||subttype||'')'' as d  ,s.trantype as doctype,subttype  as r ,''(''||(select count(count(Distinct Docnumbr))',
'from nmreqapr',
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
,p_display_condition_type=>'NEVER'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40947002744896669)
,p_query_column_id=>1
,p_column_alias=>'D'
,p_column_display_sequence=>1
,p_column_heading=>'Transection Type'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.::P107_S_DOCTYP,P107_S_SUBTYP:#DOCTYPE#,#R#'
,p_column_linktext=>'#D#'
,p_column_link_attr=>'style="color: #4B66A7; cursor: auto; text-decoration: blink;"'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40947414818896676)
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
 p_id=>wwv_flow_api.id(40947815799896677)
,p_query_column_id=>3
,p_column_alias=>'R'
,p_column_display_sequence=>2
,p_column_heading=>'Sub. Type'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40948204258896677)
,p_query_column_id=>4
,p_column_alias=>'DOCNUM'
,p_column_display_sequence=>4
,p_column_heading=>'Total '
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40948620082896677)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>91
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P107_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P107_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40950206786896680)
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
 p_id=>wwv_flow_api.id(40950591698896680)
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
 p_id=>wwv_flow_api.id(42089340281725617)
,p_plug_name=>'a'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>161
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41541941695363349)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(42089340281725617)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>108
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41582057969427409)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(41541941695363349)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>141
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41468813429099092)
,p_plug_name=>'Purchase Request'
,p_parent_plug_id=>wwv_flow_api.id(41582057969427409)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   A.COMPCODE, DOCTTYPE, SUBTTYPE, A.DOCNUMBR',
'         || ''/''',
'         || DOCTDATE',
'         || ''/''',
'         || DOCTTYPE',
'         || ''/''',
'         || SUBTTYPE DOCNUMBR,',
'            A.DOCNUMBR as DOCNUMBR1,',
'         DOCTDATE,',
'         (SELECT INITCAP (A.RAISEDBY || ''-'' || USERNAME)',
'            FROM SYUSRMAS',
'           WHERE USERCODE = A.RAISEDBY) AS USERCODE, COUNT (*) NO_OF_ITEM,',
'         SUM (APPRQNTY), A.WARECODE,',
'         INITCAP ((SELECT WAREDESC',
'                     FROM NMWHSMAS',
'                    WHERE WARECODE =',
'                             (SELECT DISTINCT LOCNCODE',
'                                         FROM NMUSRLEV',
'                                        WHERE TRDOCTYP = A.DOCTTYPE',
'                                          AND TRSUBTYP = A.SUBTTYPE',
'                                          AND USERCODE = A.RAISEDBY',
'                                          AND LOCNCODE = A.WARECODE)',
'                      AND COMPCODE = A.COMPCODE)',
'                 ) RAISEDFROM,UPDOCNUM',
'    FROM NMPROCUR A',
'   WHERE A.COMPCODE = :COMPCODE',
'     --   AND A.DOCNUMBR = B.DOCNUMBR',
'    -- AND A.STATUSCD = NVL(:P107_RADIO,A.STATUSCD)',
'     AND RAISEDBY = :APP_USER',
'     and DOCTTYPE=''PR''',
'     and SUBTTYPE=1',
'GROUP BY A.COMPCODE,',
'         A.DOCTTYPE,',
'         A.SUBTTYPE,',
'         A.DOCNUMBR,',
'         A.DOCTDATE,',
'         A.WARECODE,',
'         A.RAISEDBY,',
'        A.UPDOCNUM'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P107_S_DOCNUM,P107_S_DOCTYP,P107_S_SUBTYP,P107_S_JOBCDE,P107_RADIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(41469155639099102)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'Request number not found'
,p_max_rows_per_page=>'5'
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
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'MONIR'
,p_internal_uid=>4314288513418608
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41470434455099122)
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
 p_id=>wwv_flow_api.id(41469221692099117)
,p_db_column_name=>'USERCODE'
,p_display_order=>100
,p_column_identifier=>'CM'
,p_column_label=>'Raised By'
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
,p_static_id=>'USERCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41473194427099124)
,p_db_column_name=>'WARECODE'
,p_display_order=>101
,p_column_identifier=>'DE'
,p_column_label=>'Warecode'
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
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'WARECODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41471974249099124)
,p_db_column_name=>'NO_OF_ITEM'
,p_display_order=>106
,p_column_identifier=>'DB'
,p_column_label=>'Total<br>Qty.'
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
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'NO_OF_ITEM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41472437488099124)
,p_db_column_name=>'SUM(APPRQNTY)'
,p_display_order=>107
,p_column_identifier=>'DC'
,p_column_label=>'Total Amount'
,p_column_html_expression=>'<span id="row_#DOCNUMBR1#">#SUM(APPRQNTY)#</span>'
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
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SUM(APPRQNTY)'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41474419354099124)
,p_db_column_name=>'RAISEDFROM'
,p_display_order=>110
,p_column_identifier=>'DH'
,p_column_label=>'Raised From'
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
,p_static_id=>'RAISEDFROM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41928628887109840)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>111
,p_column_identifier=>'DI'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41929334635109840)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>112
,p_column_identifier=>'DJ'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41929997216109840)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>113
,p_column_identifier=>'DK'
,p_column_label=>'Docnumber Details'
,p_column_link=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.::P107_DOCNUMBER,P107_S_DOCNUM:#DOCNUMBR1#,#UPDOCNUM#'
,p_column_linktext=>'#DOCNUMBR#'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41930736226109840)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>114
,p_column_identifier=>'DL'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42056994413683521)
,p_db_column_name=>'UPDOCNUM'
,p_display_order=>115
,p_column_identifier=>'DM'
,p_column_label=>'Updocnum'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42267176422181759)
,p_db_column_name=>'DOCNUMBR1'
,p_display_order=>116
,p_column_identifier=>'DN'
,p_column_label=>'Docnumbr1'
,p_column_link=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.::P107_DOCNUMBER,P107_S_DOCNUM:#DOCNUMBR#,#UPDOCNUM#'
,p_column_linktext=>'#DOCNUMBR1#'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(41475232199099124)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'43204'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'USERCODE:RAISEDFROM:NO_OF_ITEM:SUM(APPRQNTY):DOCTTYPE:SUBTTYPE:DOCNUMBR:DOCTDATE:UPDOCNUM:DOCNUMBR1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41582874178430741)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(41541941695363349)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>151
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41485473220117385)
,p_name=>'Purchase Request items '
,p_parent_plug_id=>wwv_flow_api.id(41582874178430741)
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ROWID,',
'COMPCODE,',
'DOCNUMBR,',
'DOCTTYPE,',
'SUBTTYPE,',
'DOCTDATE,',
'SERLNUMB,',
'RAISEDBY,',
'ITEMCODE, ITEMDESC,',
'(Select initcap(usercode||''-''||USERNAME)',
'                From syusrmas',
'                Where USERCODE=P.RAISEDBY) as usercode,',
'APPRQNTY,',
'OPRSTAMP,',
'TIMSTAMP,',
'PARTYCDE,',
'APPRVDBY,',
'STATUSCD,',
'REMARKSS,',
'CURRCODE,',
'EXCGRATE,',
'COSTCODE,',
' (select initcap(P.COSTCODE||'':''||n.COSTDESC) from syjobmas n',
' where n.COSTCODE=P.COSTCODE ',
' and n.COMPCODE=P.COMPCODE) COSTDESC,',
'INITCAP ((SELECT WAREDESC',
'                     FROM NMWHSMAS',
'                    WHERE WARECODE =P.WARECODE',
'                    and compcode=:compcode',
'                 )) WARECODE ,',
'       CASE',
'          WHEN statuscd is not null',
'             THEN ''view Details''',
'          ELSE NULL',
'       END AS details',
'from NMPROCUR P',
'where DOCNUMBR=:P107_DOCNUMBER',
'and RAISEDBY=:APP_USER',
'and compcode=:compcode',
'--and STATUSCD= ''NEW''',
'         '))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P107_DOCNUMBER'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'Request number not found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41486571364117391)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>9
,p_column_heading=>'Rowid'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41486996546117391)
,p_query_column_id=>2
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>10
,p_column_heading=>'Compcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41486265372117391)
,p_query_column_id=>3
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>8
,p_column_heading=>'Docnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41487375730117391)
,p_query_column_id=>4
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>11
,p_column_heading=>'Docttype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41487835735117391)
,p_query_column_id=>5
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>12
,p_column_heading=>'Subttype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41488200170117391)
,p_query_column_id=>6
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Doctdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41488666534117391)
,p_query_column_id=>7
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>13
,p_column_heading=>'Serlnumb'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41489017587117391)
,p_query_column_id=>8
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>14
,p_column_heading=>'Raisedby'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41493804481117396)
,p_query_column_id=>9
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>1
,p_column_heading=>'Itemcode'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41494262248117396)
,p_query_column_id=>10
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>2
,p_column_heading=>'Item<br>Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41489445742117393)
,p_query_column_id=>11
,p_column_alias=>'USERCODE'
,p_column_display_sequence=>15
,p_column_heading=>'Usercode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41494573959117396)
,p_query_column_id=>12
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>3
,p_column_heading=>'Approved<br>Qty.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41489803755117393)
,p_query_column_id=>13
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>16
,p_column_heading=>'Oprstamp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41490180858117393)
,p_query_column_id=>14
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>17
,p_column_heading=>'Timstamp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41490572773117393)
,p_query_column_id=>15
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>18
,p_column_heading=>'Partycde'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41490987440117393)
,p_query_column_id=>16
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>19
,p_column_heading=>'Apprvdby'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41491408158117393)
,p_query_column_id=>17
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>20
,p_column_heading=>'Statuscd'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41491856689117393)
,p_query_column_id=>18
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>21
,p_column_heading=>'Remarkss'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41492201711117393)
,p_query_column_id=>19
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>22
,p_column_heading=>'Currcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41492613346117393)
,p_query_column_id=>20
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>23
,p_column_heading=>'Excgrate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41494995184117396)
,p_query_column_id=>21
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Costcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41493016454117393)
,p_query_column_id=>22
,p_column_alias=>'COSTDESC'
,p_column_display_sequence=>24
,p_column_heading=>'Costdesc'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41495415759117396)
,p_query_column_id=>23
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>6
,p_column_heading=>'Warehouse'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41485863688117388)
,p_query_column_id=>24
,p_column_alias=>'DETAILS'
,p_column_display_sequence=>7
,p_column_heading=>'Details'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#DETAILS#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41495912448120652)
,p_name=>'Purchase Item Status'
,p_parent_plug_id=>wwv_flow_api.id(41582874178430741)
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT INITCAP (   (SELECT NMCODDES',
'                               FROM NMCODMAS',
'                              WHERE NMHRDCDE = ''AT''',
'                                AND COMPCODE = :COMPCODE',
'                                AND MODLCODE = ''NM''',
'                                AND NMSOFCDE = ',
'                                       (SELECT AUTHTYPE',
'                                          FROM NMREQAPR B',
'                                         WHERE B.COMPCODE = A.COMPCODE',
'                                           AND B.DOCNUMBR = A.DOCNUMBR',
'                                           AND B.SERLNUMB = A.SERLNUMB',
'                                           AND B.COMPCODE = :COMPCODE',
'                                           AND B.DOCNUMBR = :P107_DOCNUMBER',
'                                           AND B.ITEMCODE = :P107_ITEMCODE',
'                                           AND B.SERLNUMB=:P107_SERLNO',
'                                           and B.RAISEDBY=:APP_USER',
'                                           AND B.REFNUMBR IS NULL))',
'                         || ''-''',
'                         || S.USERNAME',
'                         || ''(''',
'                         || (SELECT NVL (NMCODDES, '''')',
'                               FROM NMCODMAS',
'                              WHERE COMPCODE = :COMPCODE',
'                                AND MODLCODE = ''NM''',
'                                AND NMHRDCDE = ''DEG''',
'                                AND NMSOFCDE =',
'                                       (SELECT PYDEPCDE',
'                                          FROM SYEMPMAS',
'                                         WHERE PYCOMCDE = :COMPCODE',
'                                           AND PYEMPCDE = :APP_USER))',
'                         || '')''',
'                        ) VDES,',
'                A.APPRDATE, A.REMARKSS, A.APPRQNTY',
'           FROM SYUSRMAS S, NMPROCUR A',
'          WHERE A.RAISEDBY = S.USERCODE',
'            AND A.COMPCODE = :COMPCODE',
'            AND DOCNUMBR = :P107_DOCNUMBER',
'            AND ITEMCODE = :P107_ITEMCODE',
'            AND SERLNUMB=:P107_SERLNO',
'            and RAISEDBY=:APP_USER',
'            AND REFNUMBR IS NULL',
'',
' UNION ALL',
'            ',
'            SELECT NULL VDES,',
'                NULL APPRDATE, NULL REMARKSS, NULL APPRQNTY',
'           FROM DUAL',
'           connect by level < 6'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P107_DOCNUMBER,P107_ITEMCODE,P107_SERLNO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'Click View Details Link'
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
 p_id=>wwv_flow_api.id(41496195469120652)
,p_query_column_id=>1
,p_column_alias=>'VDES'
,p_column_display_sequence=>1
,p_column_heading=>'Approved by'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41496573289120655)
,p_query_column_id=>2
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>2
,p_column_heading=>'Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41497034153120655)
,p_query_column_id=>3
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>3
,p_column_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41497436668120655)
,p_query_column_id=>4
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>4
,p_column_heading=>'Approved Amount'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42487542021703032)
,p_plug_name=>'Purchase Request Items'
,p_parent_plug_id=>wwv_flow_api.id(41582874178430741)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>79
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'COMPCODE,',
'DOCNUMBR,',
'DOCTTYPE,',
'SUBTTYPE,',
'DOCTDATE,',
'SERLNUMB,',
'RAISEDBY,',
'ITEMCODE, ITEMDESC,',
'(Select initcap(usercode||''-''||USERNAME)',
'                From syusrmas',
'                Where USERCODE=P.RAISEDBY) as usercode,',
'APPRQNTY,',
'OPRSTAMP,',
'TIMSTAMP,',
'PARTYCDE,',
'APPRVDBY,',
'STATUSCD,',
'REMARKSS,',
'CURRCODE,',
'EXCGRATE,',
'COSTCODE,',
' (select initcap(P.COSTCODE||'':''||n.COSTDESC) from syjobmas n',
' where n.COSTCODE=P.COSTCODE ',
' and n.COMPCODE=P.COMPCODE) COSTDESC,',
'INITCAP ((SELECT WAREDESC',
'                     FROM NMWHSMAS',
'                    WHERE WARECODE =P.WARECODE',
'                    and compcode=:compcode',
'                 )) WARECODE ,',
'       CASE',
'          WHEN statuscd is not null',
'             THEN ''view Details''',
'          ELSE NULL',
'       END AS details',
'from NMPROCUR P',
'where DOCNUMBR=:P107_DOCNUMBER',
'and RAISEDBY=:APP_USER',
'and compcode=:compcode',
'--and STATUSCD= ''NEW''',
'',
'UNION ALL',
'',
'select ',
'NULL COMPCODE,',
'NULL DOCNUMBR,',
'NULL DOCTTYPE,',
'NULL SUBTTYPE,',
'NULL DOCTDATE,',
'NULL SERLNUMB,',
'NULL RAISEDBY,',
'NULL ITEMCODE, NULL ITEMDESC,',
'NULL as usercode,',
'NULL APPRQNTY,',
'NULL OPRSTAMP,',
'NULL TIMSTAMP,',
'NULL PARTYCDE,',
'NULL APPRVDBY,',
'NULL STATUSCD,',
'NULL REMARKSS,',
'NULL CURRCODE,',
'NULL EXCGRATE,',
'NULL COSTCODE,',
' NULL COSTDESC,',
'NULL WARECODE ,',
'    NULL details',
'from DUAL',
'connect by level<6'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P107_DOCNUMBER'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
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
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(42487599119703032)
,p_name=>'Purchase Request Items'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'5'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>5332731994022538
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42488276037703049)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42488704734703049)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42489108930703049)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42489479383703050)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42489883230703050)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42490328941703050)
,p_db_column_name=>'SERLNUMB'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Serlnumb'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42490732490703050)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42491162391703052)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Itemcode'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42491552366703052)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Item<br>Description'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42491794600703054)
,p_db_column_name=>'USERCODE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Usercode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42492221943703054)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Approved<br>Qty.'
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
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42492646744703054)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42493042266703054)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42493465137703054)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42493768003703054)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Apprvdby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42494174688703054)
,p_db_column_name=>'STATUSCD'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42494597261703055)
,p_db_column_name=>'REMARKSS'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Remarkss'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42495018096703055)
,p_db_column_name=>'CURRCODE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42495426582703055)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42495799958703055)
,p_db_column_name=>'COSTCODE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42496210509703055)
,p_db_column_name=>'COSTDESC'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Costdesc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42496662430703055)
,p_db_column_name=>'WARECODE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Warehouse'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42497037627703057)
,p_db_column_name=>'DETAILS'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'View Details'
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
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(42513176918709116)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'53584'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMPCODE:DOCNUMBR:DOCTTYPE:SUBTTYPE:DOCTDATE:SERLNUMB:RAISEDBY:ITEMCODE:ITEMDESC:USERCODE:APPRQNTY:OPRSTAMP:TIMSTAMP:PARTYCDE:APPRVDBY:STATUSCD:REMARKSS:CURRCODE:EXCGRATE:COSTCODE:COSTDESC:WARECODE:DETAILS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42568960786761510)
,p_plug_name=>'Purchase Items Status'
,p_parent_plug_id=>wwv_flow_api.id(41582874178430741)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>81
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT INITCAP (   (SELECT NMCODDES',
'                               FROM NMCODMAS',
'                              WHERE NMHRDCDE = ''AT''',
'                                AND COMPCODE = :COMPCODE',
'                                AND MODLCODE = ''NM''',
'                                AND NMSOFCDE = ',
'                                       (SELECT AUTHTYPE',
'                                          FROM NMREQAPR B',
'                                         WHERE B.COMPCODE = A.COMPCODE',
'                                           AND B.DOCNUMBR = A.DOCNUMBR',
'                                           AND B.SERLNUMB = A.SERLNUMB',
'                                           AND B.COMPCODE = :COMPCODE',
'                                           AND B.DOCNUMBR = :P107_DOCNUMBER',
'                                           AND B.ITEMCODE = :P107_ITEMCODE',
'                                           AND B.SERLNUMB=:P107_SERLNO',
'                                           and B.RAISEDBY=:APP_USER',
'                                           AND B.REFNUMBR IS NULL))',
'                         || ''-''',
'                         || S.USERNAME',
'                         || ''(''',
'                         || (SELECT NVL (NMCODDES, '''')',
'                               FROM NMCODMAS',
'                              WHERE COMPCODE = :COMPCODE',
'                                AND MODLCODE = ''NM''',
'                                AND NMHRDCDE = ''DEG''',
'                                AND NMSOFCDE =',
'                                       (SELECT PYDEPCDE',
'                                          FROM SYEMPMAS',
'                                         WHERE PYCOMCDE = :COMPCODE',
'                                           AND PYEMPCDE = :APP_USER))',
'                         || '')''',
'                        ) VDES,',
'                A.APPRDATE, A.REMARKSS, A.APPRQNTY',
'           FROM SYUSRMAS S, NMPROCUR A',
'          WHERE A.RAISEDBY = S.USERCODE',
'            AND A.COMPCODE = :COMPCODE',
'            AND DOCNUMBR = :P107_DOCNUMBER',
'            AND ITEMCODE = :P107_ITEMCODE',
'            AND SERLNUMB=:P107_SERLNO',
'            and RAISEDBY=:APP_USER',
'            AND REFNUMBR IS NULL',
'',
' UNION ALL',
'            ',
'            SELECT NULL VDES,',
'                NULL APPRDATE, NULL REMARKSS, NULL APPRQNTY',
'           FROM DUAL',
'           connect by level < 6'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P107_DOCNUMBER,P107_ITEMCODE,P107_SERLNO'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(42569182163761512)
,p_name=>'Purchase Request Items'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'5'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>5414315038081018
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42573752239761520)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Approved<br>Qty.'
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
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42576088896761521)
,p_db_column_name=>'REMARKSS'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Remarkss'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42587941635770015)
,p_db_column_name=>'VDES'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Approved by'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42588590302770015)
,p_db_column_name=>'APPRDATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Date'
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
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(42578922112761524)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'54241'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPRQNTY:REMARKSS:VDES:APPRDATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41850859224019829)
,p_plug_name=>' '
,p_region_name=>'HGT'
,p_parent_plug_id=>wwv_flow_api.id(42089340281725617)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41851123970019839)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(41850859224019829)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>121
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41851509635019842)
,p_plug_name=>' Material Request'
,p_parent_plug_id=>wwv_flow_api.id(41851123970019839)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   A.COMPCODE, UPDOCTYP, UPSUBTYP, A.UPDOCNUM,',
'            A.UPDOCNUM',
'         || ''/''',
'         || UPDOCDTE',
'         || ''/''',
'         || UPDOCTYP',
'         || ''/''',
'         || UPSUBTYP AS DOCDETAILS,',
'         UPDOCDTE,',
'         (SELECT INITCAP (A.RAISEDBY || ''-'' || USERNAME)',
'            FROM SYUSRMAS',
'           WHERE USERCODE = A.RAISEDBY) AS USERCODE, COUNT (*) NO_OF_ITEM,',
'         SUM (APPRQNTY), A.WARECODE,',
'         INITCAP ((SELECT WAREDESC',
'                     FROM NMWHSMAS',
'                    WHERE WARECODE =',
'                             (SELECT DISTINCT LOCNCODE',
'                                         FROM NMUSRLEV',
'                                        WHERE TRDOCTYP = A.UPDOCTYP',
'                                          AND TRSUBTYP = A.UPSUBTYP',
'                                          AND USERCODE = A.RAISEDBY',
'                                          AND LOCNCODE = A.WARECODE)',
'                      AND COMPCODE = A.COMPCODE)',
'                 ) RAISEDFROM',
'    FROM NMPROCUR A',
'   WHERE A.COMPCODE = :COMPCODE',
'      AND A.DOCNUMBR = :P107_DOCNUMBER',
'   --  AND A.STATUSCD = NVL(:P107_RADIO,A.STATUSCD)',
'     AND RAISEDBY = :APP_USER',
'     and UPDOCTYP=''MI''',
'GROUP BY A.COMPCODE,',
'         A.UPDOCTYP,',
'         A.UPSUBTYP,',
'         A.UPDOCNUM,',
'         A.UPDOCDTE,',
'         A.WARECODE,',
'         A.RAISEDBY',
'',
' UNION ALL',
'         SELECT   NULL, NULL, NULL, NULL,',
'            NULL AS DOCDETAILS,',
'         NULL,',
'         NULL AS USERCODE, NULL NO_OF_ITEM,',
'         NULL, NULL,',
'         NULL RAISEDFROM',
'    FROM DUAL ',
' connect by level <6'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P107_DOCNUMBER,P107_S_JOBCDE,P107_RADIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(41851905002019842)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'Request number not found'
,p_max_rows_per_page=>'5'
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
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'MONIR'
,p_internal_uid=>4697037876339348
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41855226710019845)
,p_db_column_name=>'DOCDETAILS'
,p_display_order=>6
,p_column_identifier=>'DF'
,p_column_label=>'Docnumber Details'
,p_column_link=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.::P107_S_DOCNUM:#UPDOCNUM#'
,p_column_link_attr=>'style="color: #4B66A7; cursor: auto; text-decoration: blink;"'
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
,p_static_id=>'DOCDETAILS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41852462009019845)
,p_db_column_name=>'COMPCODE'
,p_display_order=>7
,p_column_identifier=>'CX'
,p_column_label=>'Comp. Code'
,p_report_label=>'Company<br>Code'
,p_sync_form_label=>'N'
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
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'COMPCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41852024662019843)
,p_db_column_name=>'USERCODE'
,p_display_order=>100
,p_column_identifier=>'CM'
,p_column_label=>'Raised By'
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
,p_static_id=>'USERCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41854785391019845)
,p_db_column_name=>'WARECODE'
,p_display_order=>101
,p_column_identifier=>'DE'
,p_column_label=>'Warecode'
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
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'WARECODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41853973093019845)
,p_db_column_name=>'NO_OF_ITEM'
,p_display_order=>106
,p_column_identifier=>'DB'
,p_column_label=>'Total<br>Request'
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
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'NO_OF_ITEM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41854371316019845)
,p_db_column_name=>'SUM(APPRQNTY)'
,p_display_order=>107
,p_column_identifier=>'DC'
,p_column_label=>'Total Amount'
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
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SUM(APPRQNTY)'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41855625175019845)
,p_db_column_name=>'RAISEDFROM'
,p_display_order=>110
,p_column_identifier=>'DH'
,p_column_label=>'Raised From'
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
,p_static_id=>'RAISEDFROM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41871148265027298)
,p_db_column_name=>'UPDOCTYP'
,p_display_order=>111
,p_column_identifier=>'DI'
,p_column_label=>'Updoctyp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41871785643027298)
,p_db_column_name=>'UPSUBTYP'
,p_display_order=>112
,p_column_identifier=>'DJ'
,p_column_label=>'Upsubtyp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41872549608027302)
,p_db_column_name=>'UPDOCNUM'
,p_display_order=>113
,p_column_identifier=>'DK'
,p_column_label=>'Updocnum'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41873218928027302)
,p_db_column_name=>'UPDOCDTE'
,p_display_order=>114
,p_column_identifier=>'DL'
,p_column_label=>'Updocdte'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(41856370348019845)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'47016'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCDETAILS:USERCODE:RAISEDFROM:NO_OF_ITEM:SUM(APPRQNTY):UPDOCTYP:UPSUBTYP:UPDOCNUM:UPDOCDTE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41856919497019846)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(41851123970019839)
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-top:1%;"'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>131
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41857311983019848)
,p_name=>'Material Request items'
,p_parent_plug_id=>wwv_flow_api.id(41856919497019846)
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>59
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ROWID,',
'COMPCODE,',
'DOCNUMBR,',
'DOCTTYPE,',
'SUBTTYPE,',
'DOCTDATE,',
'SERLNUMB,',
'RAISEDBY,',
'ITEMCODE, ITEMDESC,',
'(Select initcap(usercode||''-''||USERNAME)',
'                From syusrmas',
'                Where USERCODE=P.RAISEDBY) as usercode,',
'APPRQNTY,',
'OPRSTAMP,',
'TIMSTAMP,',
'PARTYCDE,',
'APPRVDBY,',
'STATUSCD,',
'REMARKSS,',
'CURRCODE,',
'EXCGRATE,',
'COSTCODE,',
' (select initcap(P.COSTCODE||'':''||n.COSTDESC) from syjobmas n',
' where n.COSTCODE=P.COSTCODE ',
' and n.COMPCODE=P.COMPCODE) COSTDESC,',
'INITCAP ((SELECT WAREDESC',
'                     FROM NMWHSMAS',
'                    WHERE WARECODE =P.WARECODE',
'                    and compcode=:compcode',
'                 )) WARECODE ,',
'       CASE',
'          WHEN statuscd is not null',
'             THEN ''view Details''',
'          ELSE NULL',
'       END AS details',
'from NMSTKREC P',
'where DOCNUMBR=:P107_S_DOCNUM',
'--and RAISEDBY=:APP_USER',
'--and STATUSCD= ''NEW'''))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P107_S_DOCNUM'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'Request not found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41858538557019849)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>9
,p_column_heading=>'Rowid'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41858892638019849)
,p_query_column_id=>2
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>10
,p_column_heading=>'Compcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41858068220019849)
,p_query_column_id=>3
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>8
,p_column_heading=>'Docnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41859362870019849)
,p_query_column_id=>4
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>11
,p_column_heading=>'Docttype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41859745962019849)
,p_query_column_id=>5
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>12
,p_column_heading=>'Subttype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41860089010019849)
,p_query_column_id=>6
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Doctdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41860527958019849)
,p_query_column_id=>7
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>13
,p_column_heading=>'Serlnumb'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41860880879019851)
,p_query_column_id=>8
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>14
,p_column_heading=>'Raisedby'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41865351628019853)
,p_query_column_id=>9
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>1
,p_column_heading=>'Itemcode'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41865735680019853)
,p_query_column_id=>10
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>2
,p_column_heading=>'Item<br>Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41861317009019851)
,p_query_column_id=>11
,p_column_alias=>'USERCODE'
,p_column_display_sequence=>15
,p_column_heading=>'Usercode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41866147941019853)
,p_query_column_id=>12
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>3
,p_column_heading=>'Approved<br>Qty.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41861739613019851)
,p_query_column_id=>13
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>16
,p_column_heading=>'Oprstamp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41862157757019851)
,p_query_column_id=>14
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>17
,p_column_heading=>'Timstamp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41862533934019851)
,p_query_column_id=>15
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>18
,p_column_heading=>'Partycde'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41862913371019853)
,p_query_column_id=>16
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>19
,p_column_heading=>'Apprvdby'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41863267788019853)
,p_query_column_id=>17
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>20
,p_column_heading=>'Statuscd'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41863704024019853)
,p_query_column_id=>18
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>21
,p_column_heading=>'Remarkss'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41864132113019853)
,p_query_column_id=>19
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>22
,p_column_heading=>'Currcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41864478145019853)
,p_query_column_id=>20
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>23
,p_column_heading=>'Excgrate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41866555173019853)
,p_query_column_id=>21
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Costcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41864892862019853)
,p_query_column_id=>22
,p_column_alias=>'COSTDESC'
,p_column_display_sequence=>24
,p_column_heading=>'Costdesc'
,p_hidden_column=>'Y'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41866943623019854)
,p_query_column_id=>23
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>6
,p_column_heading=>'Warehouse'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41857679091019848)
,p_query_column_id=>24
,p_column_alias=>'DETAILS'
,p_column_display_sequence=>7
,p_column_heading=>'Details'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.::P107_S_DOCNUM:#DOCNUMBR#'
,p_column_linktext=>'#DETAILS#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41867301894019854)
,p_name=>'Material Item Status'
,p_parent_plug_id=>wwv_flow_api.id(41856919497019846)
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select distinct     initcap((Select NMCODDES  ',
'        From nmcodmas',
'        Where NMHRDCDE=''AT''',
'        And     CompCode=:CompCode',
'        And    MODLCODE=''NM''',
'        And     NMSOFCDE= a.AUTHTYPE)||''-''||s.USERNAME||''(''||(Select NVL(NMCODDES,'''')  ',
'                                From nmcodmas',
'                                Where compcode=:compcode',
'                                And     MODLCODE=''NM''',
'                                And     NMHRDCDE=''DEG''',
'                                And     NMSOFCDE=(',
'                                Select  PYDEPCDE',
'                                From syempmas',
'                                Where    PYCOMCDE=:compcode',
'                                And        PYEMPCDE=:APP_USER))||'')'') vDes,a.APPRDATE,',
'                                a.REMARKSS,a.APPRQNTY',
'                From syusrmas s,nmreqapr a',
'                Where a.USERCODE=s.USERCODE',
'                and a.CompCode=:CompCode',
'        and DOCNUMBR=:P107_DOCNUMBER',
'         and ITEMCODE=:P107_ITEMCODE',
'       --  and SERLNUMB=:P107_SERLNO',
'        and REFNUMBR is null'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P107_DOCNUMBER,P107_ITEMCODE,P107_SERLNO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'Click View Details Link'
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
 p_id=>wwv_flow_api.id(41867743319019854)
,p_query_column_id=>1
,p_column_alias=>'VDES'
,p_column_display_sequence=>1
,p_column_heading=>'Approved by'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41868123690019854)
,p_query_column_id=>2
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>2
,p_column_heading=>'Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41868526109019854)
,p_query_column_id=>3
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>3
,p_column_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41868918219019854)
,p_query_column_id=>4
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>4
,p_column_heading=>'Approved Amount'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42600725157819658)
,p_plug_name=>'Material Request Items'
,p_parent_plug_id=>wwv_flow_api.id(41856919497019846)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>58
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'COMPCODE,',
'DOCNUMBR,',
'DOCTTYPE,',
'SUBTTYPE,',
'DOCTDATE,',
'SERLNUMB,',
'RAISEDBY,',
'ITEMCODE, ITEMDESC,',
'(Select initcap(usercode||''-''||USERNAME)',
'                From syusrmas',
'                Where USERCODE=P.RAISEDBY) as usercode,',
'APPRQNTY,',
'OPRSTAMP,',
'TIMSTAMP,',
'PARTYCDE,',
'APPRVDBY,',
'STATUSCD,',
'REMARKSS,',
'CURRCODE,',
'EXCGRATE,',
'COSTCODE,',
' (select initcap(P.COSTCODE||'':''||n.COSTDESC) from syjobmas n',
' where n.COSTCODE=P.COSTCODE ',
' and n.COMPCODE=P.COMPCODE) COSTDESC,',
'INITCAP ((SELECT WAREDESC',
'                     FROM NMWHSMAS',
'                    WHERE WARECODE =P.WARECODE',
'                    and compcode=:compcode',
'                 )) WARECODE ,',
'       CASE',
'          WHEN statuscd is not null',
'             THEN ''view Details''',
'          ELSE NULL',
'       END AS details',
'from NMSTKREC P',
'where DOCNUMBR=:P107_S_DOCNUM',
'--and RAISEDBY=:APP_USER',
'--and STATUSCD= ''NEW''',
'',
'UNION ALL',
'',
'select ',
'NULL COMPCODE,',
'NULL DOCNUMBR,',
'NULL DOCTTYPE,',
'NULL SUBTTYPE,',
'NULL DOCTDATE,',
'NULL SERLNUMB,',
'NULL RAISEDBY,',
'NULL ITEMCODE, NULL ITEMDESC,',
'NULL as usercode,',
'NULL APPRQNTY,',
'NULL OPRSTAMP,',
'NULL TIMSTAMP,',
'NULL PARTYCDE,',
'NULL APPRVDBY,',
'NULL STATUSCD,',
'NULL REMARKSS,',
'NULL CURRCODE,',
'NULL EXCGRATE,',
'NULL COSTCODE,',
' NULL COSTDESC,',
'NULL WARECODE ,',
'      NULL AS details',
'from DUAL',
'connect by level<6'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(42601026628819661)
,p_name=>'Purchase Request Items'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'5'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>5446159503139167
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42601468130819664)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42601951768819664)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42602295138819664)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42602675137819666)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42603136269819666)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42603485452819666)
,p_db_column_name=>'SERLNUMB'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Serlnumb'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42603899095819666)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42604313103819666)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Itemcode'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42604746502819667)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Item<br>Description'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42605118227819667)
,p_db_column_name=>'USERCODE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Usercode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42605534488819667)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Approved<br>Qty.'
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
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42605906155819667)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42606325985819671)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42606718484819671)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42607072791819671)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Apprvdby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42607537160819671)
,p_db_column_name=>'STATUSCD'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42607883585819671)
,p_db_column_name=>'REMARKSS'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Remarkss'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42608292545819671)
,p_db_column_name=>'CURRCODE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42608742496819671)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42609165722819671)
,p_db_column_name=>'COSTCODE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42609542232819671)
,p_db_column_name=>'COSTDESC'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Costdesc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42609886124819671)
,p_db_column_name=>'WARECODE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Warehouse'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42610339115819671)
,p_db_column_name=>'DETAILS'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'View Details'
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
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(42610689134819671)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'54559'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMPCODE:DOCNUMBR:DOCTTYPE:SUBTTYPE:DOCTDATE:SERLNUMB:RAISEDBY:ITEMCODE:ITEMDESC:USERCODE:APPRQNTY:OPRSTAMP:TIMSTAMP:PARTYCDE:APPRVDBY:STATUSCD:REMARKSS:CURRCODE:EXCGRATE:COSTCODE:COSTDESC:WARECODE:DETAILS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42612415510833364)
,p_plug_name=>'Material Items Status'
,p_parent_plug_id=>wwv_flow_api.id(41856919497019846)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>59
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select distinct     initcap((Select NMCODDES  ',
'        From nmcodmas',
'        Where NMHRDCDE=''AT''',
'        And     CompCode=:CompCode',
'        And    MODLCODE=''NM''',
'        And     NMSOFCDE= a.AUTHTYPE)||''-''||s.USERNAME||''(''||(Select NVL(NMCODDES,'''')  ',
'                                From nmcodmas',
'                                Where compcode=:compcode',
'                                And     MODLCODE=''NM''',
'                                And     NMHRDCDE=''DEG''',
'                                And     NMSOFCDE=(',
'                                Select  PYDEPCDE',
'                                From syempmas',
'                                Where    PYCOMCDE=:compcode',
'                                And        PYEMPCDE=:APP_USER))||'')'') vDes,a.APPRDATE,',
'                                a.REMARKSS,a.APPRQNTY',
'                From syusrmas s,nmreqapr a',
'                Where a.USERCODE=s.USERCODE',
'                and a.CompCode=:CompCode',
'        and DOCNUMBR=:P107_DOCNUMBER',
'         and ITEMCODE=:P107_ITEMCODE',
'       --  and SERLNUMB=:P107_SERLNO',
'        and REFNUMBR is null',
'',
' UNION ALL',
'            ',
'            SELECT NULL VDES,',
'                NULL APPRDATE, NULL REMARKSS, NULL APPRQNTY',
'           FROM DUAL',
'           connect by level < 6'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P107_DOCNUMBER,P107_ITEMCODE,P107_SERLNO'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(42612727904833369)
,p_name=>'Purchase Request Items'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'5'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>5457860779152875
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42612827778833369)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Approved<br>Qty.'
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
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42613244416833369)
,p_db_column_name=>'REMARKSS'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Remarkss'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42613637225833369)
,p_db_column_name=>'VDES'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Approved by'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42614063868833369)
,p_db_column_name=>'APPRDATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Date'
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
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(42614368624833369)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'54596'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPRQNTY:REMARKSS:VDES:APPRDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41001124230910214)
,p_button_sequence=>10
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:107::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41001504462910214)
,p_button_sequence=>20
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40963883898896698)
,p_button_sequence=>30
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Create'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41001891161910214)
,p_button_sequence=>30
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Submit'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41000716169910214)
,p_button_sequence=>40
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Row'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41005840939915744)
,p_button_sequence=>40
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40964338596896699)
,p_button_sequence=>60
,p_button_name=>'ADVAN_SRCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Show advanched Search'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40965501658896699)
,p_button_sequence=>70
,p_button_name=>'HIDE_SERCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Hide advanched Search'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40964757988896699)
,p_button_sequence=>80
,p_button_name=>'P107_CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40965107645896699)
,p_button_sequence=>90
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Approved'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40951054935896680)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(40950591698896680)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Search'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40949056377896677)
,p_name=>'P107_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(40948620082896677)
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
 p_id=>wwv_flow_api.id(40949452763896680)
,p_name=>'P107_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(40948620082896677)
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
 p_id=>wwv_flow_api.id(40949771619896680)
,p_name=>'P107_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(40948620082896677)
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
 p_id=>wwv_flow_api.id(40951462156896682)
,p_name=>'P107_S_DOCNUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(40950591698896680)
,p_prompt=>'Doc.No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT p.docnumbr||''__''||p.doctdate as Docdesc,p.docnumbr as Docnumber',
'           FROM acreqapr p',
'          WHERE p.compcode = :compcode ',
'       ORDER BY 1 DESC'))
,p_lov_cascade_parent_items=>'P107_S_DOCTYP,P107_S_SUBTYP,P107_CAMODESL'
,p_ajax_items_to_submit=>'P107_S_DOCTYP,P107_S_SUBTYP,P107_CAMODESL'
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
 p_id=>wwv_flow_api.id(40951756606896684)
,p_name=>'P107_S_DOCTYP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(40950591698896680)
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
 p_id=>wwv_flow_api.id(40952158506896684)
,p_name=>'P107_S_SUBTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(40950591698896680)
,p_prompt=>'Sub Type'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Distinct Initcap(naration) as naration  ,subttype  as subttype ',
'From SYDOCMAS ',
'Where compcode = :compcode ',
'And trantype = :P107_S_DOCTYP',
'And modlcode = :modlcode',
'AND subttype IN (''1'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''10'', ''11'', ''12'')',
'--And :P107_S_DOCDTE Between strtperd And endperd',
'Order by Subttype'))
,p_lov_cascade_parent_items=>'P107_S_DOCTYP,P107_S_DOCDTE'
,p_ajax_items_to_submit=>'P107_S_DOCTYP,P107_S_DOCDTE'
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
 p_id=>wwv_flow_api.id(40952515650896684)
,p_name=>'P107_S_INDTYP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(40950591698896680)
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
 p_id=>wwv_flow_api.id(40952935514896684)
,p_name=>'P107_S_JOBCDE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(40950591698896680)
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
 p_id=>wwv_flow_api.id(40953293385896684)
,p_name=>'P107_S_JOBNAM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(40950591698896680)
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
 p_id=>wwv_flow_api.id(40953668656896685)
,p_name=>'P107_S_WHSCDE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(40950591698896680)
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
 p_id=>wwv_flow_api.id(40954112413896685)
,p_name=>'P107_S_WHSNAM'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(40950591698896680)
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
 p_id=>wwv_flow_api.id(40954560810896685)
,p_name=>'P107_ITEMCODE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(40950591698896680)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40954940692896685)
,p_name=>'P107_ITEMDESC'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(40950591698896680)
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
 p_id=>wwv_flow_api.id(40955292188896685)
,p_name=>'P107_S_RAISED'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(40950591698896680)
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
 p_id=>wwv_flow_api.id(40955694412896685)
,p_name=>'P107_S_CTGCODE'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(40950591698896680)
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
 p_id=>wwv_flow_api.id(40956096378896685)
,p_name=>'P107_S_CATEGORY'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(40950591698896680)
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
 p_id=>wwv_flow_api.id(40956486312896685)
,p_name=>'P107_S_RAINAM'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(40950591698896680)
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
 p_id=>wwv_flow_api.id(40965963913896699)
,p_name=>'P107_RADIO'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_api.id(41541941695363349)
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
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40966355185896699)
,p_name=>'P107_CHECKEDVALUE'
,p_item_sequence=>740
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(40966759536896699)
,p_name=>'P107_ROWCOUNT'
,p_item_sequence=>750
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(40967153262896701)
,p_name=>'P107_STATUS'
,p_item_sequence=>760
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
'               AND docnumbr = NVL (:p107_s_docnum, docnumbr)',
'               AND docttype = NVL (:p107_s_doctyp, docttype)',
'               AND subttype = NVL (:p107_s_subtyp, subttype)',
'               AND costcode = NVL (:p107_s_jobcde, costcode)',
'--and WARECODE=nvl(:P6_S_WHSCDE,WARECODE)',
'               AND usercode = :app_user',
'               AND statuscd = :p107_radio',
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
'     AND a.statuscd = :P107_RADIO',
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
 p_id=>wwv_flow_api.id(41002336195910214)
,p_name=>'P107_DOCNUMBER'
,p_item_sequence=>10
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Docnumber'
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
 p_id=>wwv_flow_api.id(41002758297910215)
,p_name=>'P107_DOCDETAILS'
,p_item_sequence=>20
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'         ''REQUISITION NO: ''||docnumbr||'' ,DATE: ''||',
'        doctdate||'' ,RAISED BY: ''||',
'         (SELECT INITCAP (username)',
'            FROM syusrmas',
'           WHERE usercode = a.RAISEDBY)',
'            AS usercode FROM acreqapr a WHERE     compcode = :compcode',
'                   AND docnumbr = :P107_DOCNUMBER',
'                   AND usercode = :app_user',
'                   AND statuscd = :p84_radio',
'                   GROUP BY a.compcode,',
'         a.docttype,',
'         a.subttype,',
'         a.docnumbr,',
'         a.doctdate,',
'         a.usercode,',
'         a.apprvlev,',
'         a.warecode,',
'         a.RAISEDBY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>100
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="color: rgb(66, 104, 185);font-weight:bold;"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41003089061910215)
,p_name=>'P107_STATUS_1'
,p_item_sequence=>30
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(41003559438910215)
,p_name=>'P107_REFNUMBR'
,p_item_sequence=>100
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(41006200141915744)
,p_name=>'P107_FUNDETAIL'
,p_item_sequence=>70
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'         ''REQUISITION NO: ''||docnumbr||'' ,DATE: ''||',
'        doctdate||'' ,RAISED BY: ''||',
'         (SELECT INITCAP (usercode || ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = a.usercode)',
'            AS usercode FROM acreqapr a WHERE     compcode = :compcode',
'                       and DOCNUMBR=:P107_UPDOCNUM',
'                       and REFNUMBR is null',
'                   GROUP BY a.compcode,',
'         a.docttype,',
'         a.subttype,',
'         a.docnumbr,',
'         a.doctdate,',
'         a.usercode,',
'         a.apprvlev,',
'         a.warecode,',
'         a.RAISEDBY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>100
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="color: rgb(66, 104, 185);font-weight:bold;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41006599055915744)
,p_name=>'P107_ACCOUNTCODE'
,p_item_sequence=>80
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(41007029820915744)
,p_name=>'P107_SERLNO'
,p_item_sequence=>90
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40968283718896708)
,p_name=>'dynamic on subtype'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P107_S_SUBTYP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40968828863896708)
,p_event_id=>wwv_flow_api.id(40968283718896708)
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
 p_id=>wwv_flow_api.id(40984551344896715)
,p_name=>'dynamic on Docnumber'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P107_S_DOCNUM'
,p_condition_element=>'P107_S_DOCNUM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40985006176896715)
,p_event_id=>wwv_flow_api.id(40984551344896715)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT DISTINCT p.docnumbr,p.docttype, p.subttype, p.costcode, p.warecode,a.waredesc, b.costdesc',
'into :P107_S_DOCNUM,:P107_S_DOCTYP,:P107_S_SUBTYP,:P107_S_JOBCDE,:P107_S_WHSCDE,:P107_S_WHSNAM,:P107_S_JOBNAM',
'           FROM nmreqapr p,nmwhsmas a ,syjobmas b',
'          WHERE p.compcode = :compcode',
'          and a.compcode = b.compcode',
'          and p.costcode=b.costcode',
'          and a.costcode=b.costcode',
'            and P.DOCNUMBR not in (select P.DOCNUMBR',
'                                    from nmprocur p',
'                                    where P.STATUSCD = ''LPO'')',
'           and p.docttype=:P107_S_DOCTYP',
'           and p.subttype=:P107_S_SUBTYP',
'and P.DOCNUMBR=:P107_S_DOCNUM',
'       ORDER BY p.docnumbr;',
'EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'end;'))
,p_attribute_02=>'P107_S_DOCNUM,P107_S_DOCTYP,P107_S_SUBTYP,P107_S_JOBCDE,P107_S_WHSCDE,P107_S_WHSNAM,P107_S_JOBNAM'
,p_attribute_03=>'P107_S_DOCNUM,P107_S_DOCTYP,P107_S_SUBTYP,P107_S_JOBCDE,P107_S_WHSCDE,P107_S_WHSNAM,P107_S_JOBNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40970119408896710)
,p_name=>'edsfgsdfsd'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40970662768896710)
,p_event_id=>wwv_flow_api.id(40970119408896710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(40950591698896680)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40971030951896710)
,p_name=>'ooo'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40646868168542374)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40971520866896710)
,p_event_id=>wwv_flow_api.id(40971030951896710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(40950591698896680)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40971917334896710)
,p_name=>'hide show button'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40646868168542374)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40972408749896712)
,p_event_id=>wwv_flow_api.id(40971917334896710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40972854163896712)
,p_name=>'show hide button'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40646868168542374)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40973284935896712)
,p_event_id=>wwv_flow_api.id(40972854163896712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(40965501658896699)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40973732519896712)
,p_name=>'hide advanched region'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40965501658896699)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40974200543896712)
,p_event_id=>wwv_flow_api.id(40973732519896712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(40950591698896680)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40974646038896712)
,p_name=>'hide hide_button'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40965501658896699)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40975165306896712)
,p_event_id=>wwv_flow_api.id(40974646038896712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(40965501658896699)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40975522412896712)
,p_name=>'show show_button'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40965501658896699)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40976020871896712)
,p_event_id=>wwv_flow_api.id(40975522412896712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40976456711896712)
,p_name=>'hide button on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40976905979896712)
,p_event_id=>wwv_flow_api.id(40976456711896712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(40965501658896699)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40977339065896712)
,p_name=>'show region'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40680077764719967)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40977804902896712)
,p_event_id=>wwv_flow_api.id(40977339065896712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(40950591698896680)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40978221704896713)
,p_name=>'hide button'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40680077764719967)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40978690009896713)
,p_event_id=>wwv_flow_api.id(40978221704896713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40979070997896713)
,p_name=>'show button'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40680077764719967)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40979649692896713)
,p_event_id=>wwv_flow_api.id(40979070997896713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(40965501658896699)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40980058039896713)
,p_name=>'refresh on region'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P107_RADIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'mousedown'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40980551673896713)
,p_event_id=>wwv_flow_api.id(40980058039896713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P107_S_DOCTYP := null;',
':P107_S_SUBTYP  := null;',
'end;'))
,p_attribute_03=>'P107_S_DOCTYP,P107_S_SUBTYP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40980963238896713)
,p_name=>'refresh on region'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P107_RADIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'mousedown'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40981436380896713)
,p_event_id=>wwv_flow_api.id(40980963238896713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P107_S_DOCTYP := null;',
':P107_S_SUBTYP  := null;',
'end;'))
,p_attribute_03=>'P107_S_DOCTYP,P107_S_SUBTYP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40981767795896713)
,p_name=>'all selected'
,p_event_sequence=>150
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40982274148896715)
,p_event_id=>wwv_flow_api.id(40981767795896713)
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
 p_id=>wwv_flow_api.id(40982686170896715)
,p_name=>'getting checkbox value'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40965107645896699)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40983190705896715)
,p_event_id=>wwv_flow_api.id(40982686170896715)
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
'     window.document.getElementById(''P107_CHECKEDVALUE'').value = checkedValue;',
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
 p_id=>wwv_flow_api.id(40983651608896715)
,p_name=>'alert on checkbox'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40965107645896699)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40984083108896715)
,p_event_id=>wwv_flow_api.id(40983651608896715)
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
 p_id=>wwv_flow_api.id(40969216586896708)
,p_name=>'count row'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40965107645896699)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40969755220896710)
,p_event_id=>wwv_flow_api.id(40969216586896708)
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
':P107_ROWCOUNT:=v_cnt;',
'end;'))
,p_attribute_02=>'P107_ROWCOUNT'
,p_attribute_03=>'P107_ROWCOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40967537972896707)
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
 p_id=>wwv_flow_api.id(40967912864896707)
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
,p_process_when_button_id=>wwv_flow_api.id(40965107645896699)
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
