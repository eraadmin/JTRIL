prompt --application/pages/page_09998
begin
--   Manifest
--     PAGE: 09998
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
 p_id=>9998
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Dashboard for Management'
,p_step_title=>'Dashboard for Management'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript">',
'function printPage() {',
'    ',
'    var printContents = document.getElementById("printableAreaaging").innerHTML;',
'    var originalContents = document.body.innerHTML;',
'    var printContents1 = document.getElementById("groundagingchart").innerHTML;',
'    var originalContents1 = document.body.innerHTML;',
'if(document.all) {',
'document.all.divButtons.style.visibility = ''hidden'';',
'document.body.innerHTML =printContents+printContents1;',
'window.print();',
'document.body.innerHTML =originalContents+originalContents1;',
'document.all.divButtons.style.visibility = ''visible'';',
'} else {',
'document.getElementById(''divButtons'').style.visibility = ''hidden'';',
'document.body.innerHTML =printContents+printContents1;',
'window.print();',
'document.body.innerHTML =originalContents+originalContents1;',
'document.getElementById(''divButtons'').style.visibility = ''visible'';',
'}',
'}',
'</script>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'widget.on(''render'', function(sender,event){',
'	',
'	//	URL to the background Image',
'	var imageLink = ''http://siliconangle.com/files/2014/12/BlackWhite-Logo.jpg''',
'	',
'	//	Set the chart background as the image',
'	sender.queryResult.chart.plotBackgroundImage = imageLink;',
'		',
'})'))
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
'    padding: 0.0rem 0.0rem;',
'    background-color: #1F68A7;',
'}',
'.t-BadgeList--circular.t-BadgeList--large .t-BadgeList-item {',
'   ',
'    background-color: azure;',
'}',
'.scrollbar{',
'width:500px;',
'height:200px;',
'background-color:lightgray;',
'overflow-y:scroll;',
'float:left;',
'line-height: 3px;',
'}',
'.CSSTableGenerator{',
'height:400px;',
'}',
'.scrollbar1{',
'width:180px;',
'height:100px;',
'background-color:lightgray;',
'overflow-y:none;',
'float:left;',
'line-height: 3px;',
'}',
'.CSSTableGenerator1{',
'height:400px;',
'background-color: #E0FFFF;',
'}',
'.scrollbar2{',
'width:490px;',
'height:290px;',
'background-color:lightgray;',
'overflow-y:scroll;',
'float:left;',
'line-height: 3px;',
'}',
'.CSSTableGenerator2{',
'height:550px;',
'background-color: #E0FFFF;',
'}',
'.scrollbar3{',
'width:490px;',
'height:290px;',
'background-color:lightgray;',
'overflow-y:scroll;',
'float:left;',
'line-height: 3px;',
'}',
'.CSSTableGenerator3{',
'height:600px;',
'background-color: #E0FFFF;',
'}',
'.brandcategory{',
'width:350px;',
'height:140px;',
'background-color:lightgray;',
'overflow-y:scroll;',
'float:left;',
'line-height: 3px;',
'}',
'.CSSTableGeneratorbrndcat{',
'height:520px;',
'background-color: #E0FFFF;',
'}',
'.brandcategory1{',
'width:1100px;',
'height:260px;',
'background-color:lightgray;',
'overflow-y:scroll;',
'float:left;',
'line-height: 3px;',
'}',
'',
'.CSSTableGeneratorbrndcat1{',
'height:400px;',
'background-color: #E0FFFF;',
'}',
'.brandcategory2{',
'width:350px;',
'height:160px;',
'background-color:lightgray;',
'overflow-y:scroll;',
'float:left;',
'line-height: 3px;',
'}',
'.CSSTableGeneratorbrndcat2{',
'height:400px;',
'background-color: #E0FFFF;',
'}',
'.brandcategory3{',
'width:500px;',
'height:215px;',
'background-color:lightgray;',
'overflow-y:none;',
'float:left;',
'line-height: 3px;',
'}',
'.brandcategory4{',
'width:300px;',
'height:70px;',
'background-color:lightgray;',
'overflow-y:none;',
'float:left;',
'line-height: 3px;',
'}'))
,p_step_template=>wwv_flow_api.id(47556057873858111)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from target_achivement;',
'update target_achivement',
'set ACHIVQTY= 18069577',
'where ACHIVQTY IS NOT NULL;'))
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180327160049'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(45193057778775309)
,p_name=>'Booking Information'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>83
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
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
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40273968650767204)
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
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40274297781767204)
,p_query_column_id=>2
,p_column_alias=>'MONTHLY'
,p_column_display_sequence=>2
,p_column_heading=>'Monthly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:166:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#MONTHLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40274723550767204)
,p_query_column_id=>3
,p_column_alias=>'YEARLY'
,p_column_display_sequence=>3
,p_column_heading=>'Yearly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:167:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#YEARLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(45194669242775311)
,p_name=>'Collection Information'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>93
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
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
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40275438103767204)
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
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40275825510767204)
,p_query_column_id=>2
,p_column_alias=>'MONTHLY'
,p_column_display_sequence=>2
,p_column_heading=>'Monthly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:172:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#MONTHLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40276255268767204)
,p_query_column_id=>3
,p_column_alias=>'YEARLY'
,p_column_display_sequence=>3
,p_column_heading=>'Yearly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:173:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#YEARLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45196211691775311)
,p_plug_name=>'Buyer Form chart with report'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(45196601226775311)
,p_name=>'Buyer Information'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>1
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT DOCNUMBR,DOCTDATE ,ITEMDESC,SALERATE,CUSTMRID_NAME,WARECODE_NAME FROM',
'(SELECT DISTINCT b.compcode, TO_CHAR(b.DOCTDATE,''MMRRRR'')Mon_year,b.DOCNUMBR, ',
'b.DOCTDATE,b.ITEMDESC, b.SALERATE,',
'(select NMCODDES from nmcodmas ',
'       where compcode=b.compcode',
'       and NMHRDCDE=''CLR''',
'       and NMSOFCDE=b.COLORCDE)COLORCDE_NAME,',
'      (select CUSTNAME from nmcusmas ',
'       where compcode=b.compcode',
'       and CUSTMRID=b.CUSTMRID ) CUSTMRID_NAME,',
'       (select SMANNAME from nmsmnmas ',
'       where compcode=b.compcode',
'       and SMANCODE=b.SMANCODE',
'       and COSTCODE=b.COSTCODE) SMANCODE_NAME,',
'       (select WAREDESC from nmwhsmas ',
'       where compcode=b.compcode',
'       and WARECODE=b.WARECODE ) WARECODE_NAME',
'           from nmslsofr b',
'            where b.compcode=:compcode',
'            AND  NOT EXISTS (SELECT DISTINCT a.UPDOCNUM  from nmsalrec a',
'            where b.compcode=:compcode',
'            AND B.compcode=A.compcode',
'            AND B.PARTYCDE=A.PARTYCDE',
'            AND B.ITEMCODE=A.ITEMCODE',
'            AND NVL(B.DOCNUMBR,0)=NVL(A.UPDOCNUM,0)',
'            AND  EXISTS (SELECT CABASECC from sycstacc where compcode=:compcode and GRUPCODE=:APP_USER )',
'            )   ',
'            ) b,',
'            (SELECT TO_CHAR(DT,''MMRRRR'')MON_YEAR FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM-1)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM ACCOMPAR WHERE COMPCODE=:COMPCODE AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13))DT',
'            ',
'            WHERE B.MON_YEAR=DT.MON_YEAR',
'           ',
'            '))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40277277041767205)
,p_query_column_id=>1
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>2
,p_column_heading=>'Docnumbr'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40277632585767205)
,p_query_column_id=>2
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>3
,p_column_heading=>'Doctdate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40278006967767205)
,p_query_column_id=>3
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>5
,p_column_heading=>'Product'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#ITEMDESC#</span>'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40278417240767205)
,p_query_column_id=>4
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>6
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40278879002767205)
,p_query_column_id=>5
,p_column_alias=>'CUSTMRID_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Cutomer Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#CUSTMRID_NAME#</span>'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40279209228767205)
,p_query_column_id=>6
,p_column_alias=>'WARECODE_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Warecode Name'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45335295007084951)
,p_plug_name=>'Enquiry Information'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
'v_stat varchar2(100);',
'',
'/*CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;*/',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'--monir',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P9998_START_DATE||''&P12=''||:P9998_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a>',
'',
'        htp.p(''<div class="enquire"  id="ex4"style="line-height: 8px;font-size: 10px;">',
'             <div class="CSSTableGenerator" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'                  <tr style="max-height:7px;">',
'                       <td style="width: 10px;background-color:#4DEAC7;text-align:center;border-right: none;"></td>',
'                        <td style="width: 10px;background-color:#4FF323;text-align:center;border-left: none;">Total Enquiry</td>',
'                        <td style="width: 10px;background-color:#4FF323;text-align:center">Win</td>',
'                        <td style="width: 10px;background-color:#63D0F9;text-align:center">Loss</td>',
'                  </tr>''); ',
'',
'For c1 in (select DISTINCT  label,value from (SELECT ',
'       ''today'' LABEL,',
'       today  VALUE',
'FROM  (select  value today',
'from ',
'    (select sum(p.value) value FROM (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from orbrgs_rml.nmcusvlg',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'       and INTERESTED_BRAND=decode(:BRAND_CODE,''A'',INTERESTED_BRAND,:BRAND_CODE)',
'       AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''DD-MM-RRRR''),''DD-MM-RRRR'')',
'       UNION ALL',
'       SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from orbrgs_cvl.nmcusvlg',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'       and INTERESTED_BRAND=decode(:BRAND_CODE,''A'',INTERESTED_BRAND,:BRAND_CODE)',
'       AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''DD-MM-RRRR''),''DD-MM-RRRR'')) p',
'       ',
') ))',
'UNION ALL',
'SELECT ',
'       ''monthly'' LABEL,',
'       monthly  VALUE',
'FROM  (select value monthly',
'from ',
'    ( select sum(p.value) value FROM (SELECT ',
'                 COUNT (DOCNUMBR) VALUE',
'             from orbrgs_rml.nmcusvlg',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'       and INTERESTED_BRAND=decode(:BRAND_CODE,''A'',INTERESTED_BRAND,:BRAND_CODE)',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH''))',
'       UNION ALL',
'       SELECT ',
'                 COUNT (DOCNUMBR) VALUE',
'             from orbrgs_cvl.nmcusvlg',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'       and INTERESTED_BRAND=decode(:BRAND_CODE,''A'',INTERESTED_BRAND,:BRAND_CODE)',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH''))) p',
'      ',
') )',
'UNION ALL',
'SELECT ',
'       ''Yearly'' LABEL,',
'       Yearly VALUE',
'FROM  (select value Yearly',
'from ',
'    ( select sum(p.value) value FROM (SELECT ',
'                 COUNT ( DOCNUMBR) VALUE',
'            from orbrgs_rml.nmcusvlg',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'       and INTERESTED_BRAND=decode(:BRAND_CODE,''A'',INTERESTED_BRAND,:BRAND_CODE)',
'      AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'                        UNION ALL',
'                        SELECT ',
'                 COUNT ( DOCNUMBR) VALUE',
'            from orbrgs_cvl.nmcusvlg',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'       and INTERESTED_BRAND=decode(:BRAND_CODE,''A'',INTERESTED_BRAND,:BRAND_CODE)',
'      AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'                      ) p',
'                        ',
') )',
'order by 1 desc',
' ',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'    <tr style="max-height:3px;line-height: 7px;font-size: 10px;">',
'    <td style="width: 100px;background-color:#4DEAC7;text-align:center">''||Initcap(c1.label)||''</td>',
'    <td style="width: 10px;background-color:#c77893;text-align:center">''||c1.value||''</td>',
'    <td style="width: 10px;background-color:#c77893;text-align:center">''||c1.value||''</td>',
'    <td style="width: 10px;background-color:#c77893;text-align:center">''||c1.value||''</td>',
'  </tr>',
'    '');',
'                 ',
'End Loop;',
' ',
'htp.p(''</table></div></div></br>'');',
'',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45341046100345550)
,p_plug_name=>'Brand & Categorywise Summary Sales'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>11
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_total1   number := 0;',
' v_error_page  number := 1;',
'Begin',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGeneratorbrndcat {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGeneratorbrndcat table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGeneratorbrndcat tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGeneratorbrndcat td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGeneratorbrndcat tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGeneratorbrndcat tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'',
'',
'For c1 in (',
'select distinct a.compcode,a.brand,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  a.compcode,a.COMMCODE,c.brand brand,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'         and upper(a.compcode) != ''XXX''',
'         --   AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'           AND trunc(a.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'            group by a.compcode,a.COMMCODE,c.brand) a,',
'           ( select distinct sum( b.TARGET_QTY) TARGET_QTY, b.compcode,b.COMMCODE  from orbrgs_rml.nmslsfst b',
'               where b.compcode=:compcode',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.COMMCODE) b',
'            where a.compcode=b.compcode(+)',
'            and a.COMMCODE=b.COMMCODE(+)',
'            UNION ALL',
'            select distinct a.compcode,a.brand,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  a.compcode,a.COMMCODE,c.brand brand,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_cvl.nmsalrec a,orbrgs_cvl.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_cvl.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'           AND trunc(a.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'            group by a.compcode,a.COMMCODE,c.brand) a,',
'           ( select distinct sum( b.TARGET_QTY) TARGET_QTY, b.compcode,b.COMMCODE  from orbrgs_cvl.nmslsfst b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_cvl.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.COMMCODE) b',
'            where a.compcode=b.compcode(+)',
'            and a.COMMCODE=b.COMMCODE(+)',
'                )',
'Loop',
'',
' v_cnt := v_cnt + 1;',
' ',
'    If v_prev_bnk <> c1.Brand then',
'      ',
'',
'htp.p(initcap(c1.Brand)||''</br>'');',
'',
'htp.p(''<div class="brandcategory"  id="ex11"style="line-height: 10px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:10px;">',
'                <td>Category</td>',
'                <td>Target Qty.</td>',
'                <td>Qty.</td>',
'                <td>Amount</td>',
'              </tr>'');',
'                  For c2 in (',
'select distinct a.compcode,a.COMMCODE,a.ITEMCODE,a.brand,a.PRODUCT modal_Category,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  s.compcode,s.COMMCODE,wm_concat(s.ITEMCODE) ITEMCODE,c.brand brand,c.PRODNAME PRODUCT,count( s.ITEMCODE) no_of_item,sum(s.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec S,  orbrgs_rml.nmwhznms z,orbrgs_rml.vwnmitem c',
'               where s.compcode=decode(:COMPCODE,''A'',s.compcode,:COMPCODE)',
'             --  AND S.COMPCODE=M.COMPCODE',
'               and s.compcode=Z.COMPCODE(+)',
'               and s.NMZONEFK=Z.WHSZONPK(+)',
'            --   AND S.SMANCODE=M.SMANCODE',
'               and s.compcode=c.compcode',
'            AND s.ITEMCODE=c.ITEMCODE',
'            and s.COMMCODE=c.COMMGRUP',
'            and s.COMMCODE=decode(:BRAND_CODE,''A'',s.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where s.compcode=decode(:COMPCODE,''A'',s.compcode,:COMPCODE)',
'            AND c.compcode=s.compcode',
'            AND c.ITEMCODE=s.ITEMCODE',
'             AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y'')',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=s.compcode and d.CABASECC=s.COSTCODE)',
'           AND trunc(s.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'            group by s.compcode,s.COMMCODE,c.brand,c.PRODNAME) a,',
'           ( select distinct sum( b.TARGET_QTY) TARGET_QTY, b.compcode,b.ITEMCODE,b.COMMCODE  from orbrgs_rml.nmslsfst b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'         --   AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'            group by b.compcode,b.ITEMCODE,b.COMMCODE) b',
'            where a.compcode=b.compcode(+)',
'            and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'')   ',
'            and a.COMMCODE=b.COMMCODE(+)',
'            and a.BRAND=c1.BRAND       ',
'            UNION ALL',
'            select distinct a.compcode,a.COMMCODE,a.ITEMCODE,a.brand,a.PRODUCT modal_Category,no_of_item,b.TARGET_QTY,Amount from(',
'select  s.compcode,s.COMMCODE,wm_concat(s.ITEMCODE) ITEMCODE,c.brand brand,c.PRODNAME PRODUCT,count( s.ITEMCODE) no_of_item,sum(s.MSLCAMNT) Amount  from orbrgs_cvl.nmsalrec S, orbrgs_cvl.NMSMNMAS M, orbrgs_cvl.nmwhznms z,orbrgs_cvl.vwnmitem c',
'               where s.compcode=decode(:COMPCODE,''A'',s.compcode,:COMPCODE)',
'               AND S.COMPCODE=M.COMPCODE',
'               and s.compcode=Z.COMPCODE(+)',
'               and s.NMZONEFK=Z.WHSZONPK(+)',
'               AND S.SMANCODE=M.SMANCODE',
'               and s.compcode=c.compcode',
'            AND s.ITEMCODE=c.ITEMCODE',
'            and s.COMMCODE=c.COMMGRUP',
'            and s.COMMCODE=decode(:BRAND_CODE,''A'',s.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_cvl.nmitemas c',
'            where s.compcode=decode(:COMPCODE,''A'',s.compcode,:COMPCODE)',
'            AND c.compcode=s.compcode',
'            AND c.ITEMCODE=s.ITEMCODE',
'            AND c.FINISHGD =''Y'')',
'            --AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=s.compcode and d.CABASECC=s.COSTCODE)',
'           AND trunc(s.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'            group by s.compcode,s.COMMCODE,c.brand,c.PRODNAME) a,',
'           ( select distinct sum( b.TARGET_QTY) TARGET_QTY, b.compcode,b.ITEMCODE,b.COMMCODE  from orbrgs_cvl.nmslsfst b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_cvl.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y'')',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'            group by b.compcode,b.ITEMCODE,b.COMMCODE) b',
'            where a.compcode=b.compcode(+)',
'            and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'')   ',
'            and a.COMMCODE=b.COMMCODE(+)',
'            and a.BRAND=c1.BRAND ',
'                  order by no_of_item desc,amount desc',
'                )',
'Loop',
'htp.p(''',
'<tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'    <td style="width: 50%;text-align:left;font-size: 10px;">''||initcap(c2.modal_Category)||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.TARGET_QTY||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.no_of_item||''</td>',
'    <td style="width: 50%;text-align:right;font-size: 10px;">''||to_char(c2.Amount,''99,99,99,99,99,99,999.99'')||''</td>',
'  </tr>',
''');',
' v_bank_rows1 := v_bank_rows1 +c2.no_of_item;',
'  v_bank_total1 := v_bank_total1 + c2.AMOUNT;',
' end loop;',
'',
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="2" style="text-align:right;">Total</td>',
'                <td style="width: 60%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                <td style="width: 60%;text-align:right;font-size: 10px;">''||to_char(v_bank_total1,''99,99,99,99,99,99,999.99'')||''</td>',
'              </tr>              ',
'            '');',
' ',
'   End If;',
'',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows1 := 0;',
'          v_bank_total1 := 0;',
'End Loop;',
'',
'',
'',
'End;',
'',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="2" style="text-align:right;">Total</td>',
'                <td style="width: 60%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                <td style="width: 60%;text-align:right;font-size: 10px;">''||to_char(v_bank_total1,''99,99,99,99,99,99,999.99'')||''</td>',
'              </tr>              ',
'            '');'))
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45350013031738968)
,p_plug_name=>'Summary Sales'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>131
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45386727256597778)
,p_plug_name=>'Current Stock Status'
,p_parent_plug_id=>wwv_flow_api.id(45350013031738968)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_total1   number := 0;',
'Begin',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGeneratorbrndcat {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGeneratorbrndcat table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGeneratorbrndcat tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGeneratorbrndcat td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGeneratorbrndcat tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGeneratorbrndcat tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'',
'',
'For c1 in (SELECT DISTINCT b.BRAND Brand,count(b.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount',
'           FROM ORBRGS_RML.nmenudtl a, ORBRGS_RML.vwnmitem b, ORBRGS_RML.nmwhsmas c',
'          WHERE a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            and a.compcode = b.compcode',
'            AND a.compcode = c.compcode(+)',
'            AND a.itemcode = b.itemcode',
'            AND a.warecode = c.warecode(+)',
'            AND NVL (a.trnsqnty, 0) = 0',
'            AND a.docttype <>''BK''',
'         --   and upper(a.compcode)<>upper(''xxx'')',
'           and trim(upper(a.vinnumbr)) not in(select trim(upper(BATCHNUM)) from nmsalrec where compcode=:p0 and BATCHNUM=NVL (:p46, NVL (a.vinnumbr, ''0'')))',
'        --    and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'          --  AND NVL (a.docnumbr, ''0'') = NVL (:p13, NVL (a.docnumbr, ''0''))',
'          --  AND NVL (a.itemcode, ''0'') = NVL (:p9998, NVL (a.itemcode, ''0''))',
'           -- AND NVL (a.warecode, ''0'') = NVL (:p29, NVL (a.warecode, ''0''))',
'          --  AND NVL (a.colorcde, ''0'') = NVL (:p71, NVL (a.colorcde, ''0''))',
'           -- AND NVL (a.vinnumbr, ''0'') = NVL (:p46, NVL (a.vinnumbr, ''0''))',
'           -- AND a.doctdate = NVL (:p12,trunc(sysdate)) ',
'                                --AND NVL (:p12, a.doctdate)',
'                               group by b.BRAND',
'                         /*      UNION ALL',
'                               SELECT DISTINCT b.BRAND Brand,count(b.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount',
'           FROM ORBRGS_CVL.nmenudtl a, ORBRGS_CVL.vwnmitem b, ORBRGS_CVL.nmwhsmas c',
'          WHERE a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            and a.compcode = b.compcode',
'            AND a.compcode = c.compcode(+)',
'            AND a.itemcode = b.itemcode',
'            AND a.warecode = c.warecode(+)',
'            AND NVL (a.trnsqnty, 0) = 0',
'            AND a.docttype <>''BK''',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'                               group by b.BRAND*/',
'                  order by 1',
'                )',
'Loop',
'',
' v_cnt := v_cnt + 1;',
' ',
'    If v_prev_bnk <> c1.Brand then',
'      ',
'htp.p(initcap(c1.Brand)||''</br>'');',
'',
'htp.p(''<div class="brandcategory"  id="ex11"style="line-height: 10px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:10px;">',
'                <td>Model</td>',
'                <td>Qty.</td>',
'              </tr>'');',
'                  For c2 in (',
'select  DISTINCT a.MODELNAM  modal_Category,sum(e.orgnqnty) no_of_item  ',
'FROM nmenudtl e, vwnmitem a',
'   WHERE     e.compcode = :compcode',
'         AND a.compcode = e.compcode',
'         AND a.itemcode = e.itemcode',
'         AND nvl(e.trnsqnty,0)=0-- IS NULL',
'         AND e.docttype NOT IN (''BK'')',
'       /*   AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL)))*/',
'         --AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=a.compcode and PRODUCT_TYPE=a.ITEMMODL)                                  ',
'         and trim(upper(e.vinnumbr)) not in(select trim(upper(BATCHNUM)) from nmsalrec where compcode=:compcode and BATCHNUM=NVL (:p46, NVL (e.vinnumbr, ''0'')))',
'       --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=e.compcode and d.CABASECC=e.COSTCODE)',
'--ORDER BY nodage desc ',
'group by a.MODELNAM,c1.BRAND',
'                  order by 2 desc',
'',
'',
'                )',
'Loop',
'htp.p(''',
'<tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'    <td style="width: 80%;text-align:left;font-size: 10px;">''||c2.modal_Category||''</td>',
'    <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.no_of_item||''</td>',
'  </tr>',
''');',
' v_bank_rows1 := v_bank_rows1 +c2.no_of_item;',
' -- v_bank_total1 := v_bank_total1 + c2.AMOUNT;',
'                  ',
' end loop;',
'',
' htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="1" style="text-align:right;">Total</td>',
'                <td style="width: 60%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'              </tr>              ',
'            '');',
'   End If;',
'',
'              ',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows1 := 0;',
'          v_bank_total1 := 0;',
'End Loop;',
'',
'',
'',
'End;',
'',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46378265451494919)
,p_plug_name=>'Category wise Stock Status'
,p_parent_plug_id=>wwv_flow_api.id(45350013031738968)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_total1   number := 0;',
'Begin',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGeneratorbrndcat {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGeneratorbrndcat table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGeneratorbrndcat tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGeneratorbrndcat td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGeneratorbrndcat tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGeneratorbrndcat tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'',
'',
'For c1 in (SELECT DISTINCT b.BRAND Brand,count(b.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount',
'           FROM ORBRGS_RML.nmenudtl a, ORBRGS_RML.vwnmitem b, ORBRGS_RML.nmwhsmas c',
'          WHERE a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            and a.compcode = b.compcode',
'            AND a.compcode = c.compcode(+)',
'            AND a.itemcode = b.itemcode',
'            AND a.warecode = c.warecode(+)',
'            AND NVL (a.trnsqnty, 0) = 0',
'            AND a.docttype <>''BK''',
'          --  and upper(a.compcode)<>upper(''xxx'')',
'         --   and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'          --  AND NVL (a.docnumbr, ''0'') = NVL (:p13, NVL (a.docnumbr, ''0''))',
'          --  AND NVL (a.itemcode, ''0'') = NVL (:p9998, NVL (a.itemcode, ''0''))',
'           -- AND NVL (a.warecode, ''0'') = NVL (:p29, NVL (a.warecode, ''0''))',
'          --  AND NVL (a.colorcde, ''0'') = NVL (:p71, NVL (a.colorcde, ''0''))',
'           -- AND NVL (a.vinnumbr, ''0'') = NVL (:p46, NVL (a.vinnumbr, ''0''))',
'           -- AND a.doctdate = NVL (:p12,trunc(sysdate)) ',
'                                --AND NVL (:p12, a.doctdate)',
'                               group by b.BRAND',
'                               UNION ALL',
'                               SELECT DISTINCT b.BRAND Brand,count(b.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount',
'           FROM ORBRGS_CVL.nmenudtl a, ORBRGS_CVL.vwnmitem b, ORBRGS_CVL.nmwhsmas c',
'          WHERE a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            and a.compcode = b.compcode',
'            AND a.compcode = c.compcode(+)',
'            AND a.itemcode = b.itemcode',
'            AND a.warecode = c.warecode(+)',
'            AND NVL (a.trnsqnty, 0) = 0',
'            AND a.docttype <>''BK''',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'                               group by b.BRAND',
'                  order by 1',
'                )',
'Loop',
'',
' v_cnt := v_cnt + 1;',
' ',
'    If v_prev_bnk <> c1.Brand then',
'      ',
'htp.p(initcap(c1.Brand)||''</br>'');',
'',
'htp.p(''<div class="brandcategory"  id="ex11"style="line-height: 10px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:10px;">',
'                <td>Category</td>',
'                <td>Qty.</td>',
'              </tr>'');',
'                  For c2 in (',
'select  DISTINCT e.itemcode,',
'         ( select NMCODDES from nmcodmas',
'  where compcode=:compcode',
'  and NMHRDCDE=''MOD''',
'  and nmsofcde=(select MODLCODE from nmitemas where itemcode=e.itemcode and compcode=:compcode) ) model_name,sum(e.orgnqnty) no_of_item  ',
'FROM nmenudtl e, nmitemas a',
'   WHERE     e.compcode = :compcode',
'         AND a.compcode = e.compcode',
'         AND a.itemcode = e.itemcode',
'         AND nvl(e.trnsqnty,0)=0-- IS NULL',
'         AND e.docttype NOT IN (''BK'')',
'       /*   AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL)))*/',
'         --AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=a.compcode and PRODUCT_TYPE=a.ITEMMODL)                                  ',
'         and trim(upper(e.vinnumbr)) not in(select trim(upper(BATCHNUM)) from nmsalrec where compcode=:compcode and BATCHNUM=NVL (:p46, NVL (e.vinnumbr, ''0'')))',
'       --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=e.compcode and d.CABASECC=e.COSTCODE)',
'--ORDER BY nodage desc ',
'group by e.itemcode,c1.BRAND',
'',
'                )',
'Loop',
'htp.p(''',
'<tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'    <td style="width: 80%;text-align:left;font-size: 10px;">''||c2.model_name||''</td>',
'    <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.no_of_item||''</td>',
'  </tr>',
''');',
' v_bank_rows1 := v_bank_rows1 +c2.no_of_item;',
' -- v_bank_total1 := v_bank_total1 + c2.AMOUNT;',
'                  ',
' end loop;',
'',
'  htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="1" style="text-align:right;">Total</td>',
'                <td style="width: 60%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'              </tr>              ',
'            '');',
'   End If;',
'',
'             ',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows1 := 0;',
'          v_bank_total1 := 0;',
'End Loop;',
'',
'',
'',
'End;',
'',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61794452325995214)
,p_plug_name=>'Prospect Analysis'
,p_parent_plug_id=>wwv_flow_api.id(45350013031738968)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P9998_START_DATE||''&P12=''||:P9998_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator3 {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator3 table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator3 tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator3 tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator3 tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator3 td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator3 tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator3 tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator3 tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator3 tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator3 tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P9998_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P9998_COMPADD.</font>',
'</div></br>'');*/',
'',
'        htp.p(''<div class="brandcategory2"  id="ex4"style="line-height: 8px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:7px;">',
'                <td style="width: 60%;background-color:#38ACEC;text-align:center;font-size: 10px;">Mode</td>',
'                <td style="width: 40%;background-color:#38ACEC;text-align:center;font-size: 10px;">No. of Mode generated</td>',
'              </tr>''); ',
'',
'For c1 in (select DISTINCT  b.NMCODDES  NMCODDES,count((PURCHASE_TYPE) ) CONTACT_MODE',
'from nmcusvlg a, nmcodmas b',
'where a.compcode=:COMPCODE',
'and a.PURCHASE_TYPE=b.NMSOFCDE',
'and b.NMHRDCDE=''MOS''',
'and b.MODLCODE=''NM''',
'--and A.INTERESTED_BRAND=decode(:BRAND_CODE,''A'',A.INTERESTED_BRAND,:BRAND_CODE)',
'--AND trunc(A.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
' AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR a.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (a.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = a.NMPRDTYP',
'                      AND a.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'group by NMSOFCDE,b.NMCODDES',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'     <tr style="max-height:3px;line-height: 7px;font-size: 10px;">',
'    <td style="width: 40%;text-align:left;font-size: 10px;">''||c1.NMCODDES||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c1.CONTACT_MODE||''</td>',
'  </tr>',
'    '');',
'  v_bank_rows := v_bank_rows +c1.CONTACT_MODE;            ',
'End Loop;',
'',
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="1" style="text-align:right;">Total</td>',
'                <td style="width: 60%;text-align:center;font-size: 10px;">''||v_bank_rows||''</td>',
'              </tr>              ',
'            '');',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows := 0;',
'          v_bank_total := 0;',
'',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45350652720755762)
,p_plug_name=>'Brand & Modelwise Summary Sales'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>21
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_total1   number := 0;',
'v_error_page  number := 2;',
'Begin',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGeneratorbrndcat {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGeneratorbrndcat table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGeneratorbrndcat tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGeneratorbrndcat td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGeneratorbrndcat tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGeneratorbrndcat tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'',
'',
'For c1 in (',
'select distinct a.compcode,a.brand,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  a.compcode,a.COMMCODE,c.brand brand,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from ORBRGS_RML.nmsalrec a,ORBRGS_RML.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from ORBRGS_RML.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'              AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)            ',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y'')',
'            and upper(a.compcode) != ''XXX''',
'         --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'           AND trunc(a.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'            group by a.compcode,a.COMMCODE,c.brand) a,',
'           (select distinct sum(b.SLTRGQTY) TARGET_QTY, b.compcode,b.BRANDCDE from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )',
'           AND trunc(b.TRGTDATE) BETWEEN TRUNC (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH''))',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE) b',
'            where a.compcode=b.compcode(+)',
'            and a.COMMCODE=b.BRANDCDE(+)',
'                  UNION ALL',
'                  select distinct a.compcode,a.brand,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  a.compcode,a.COMMCODE,c.brand brand,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from ORBRGS_CVL.nmsalrec a,ORBRGS_CVL.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from ORBRGS_CVL.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'            AND c.FINISHGD =''Y'')',
'           AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'           AND trunc(a.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'            group by a.compcode,a.COMMCODE,c.brand) a,',
'           ( select distinct sum( b.TARGET_QTY) TARGET_QTY, b.compcode,b.COMMCODE  from ORBRGS_CVL.nmslsfst b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from ORBRGS_CVL.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y'')',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'            group by b.compcode,b.COMMCODE) b',
'            where a.compcode=b.compcode(+)',
'            and a.COMMCODE=b.COMMCODE(+)',
'                  order by 2',
'',
'',
'                )',
'Loop',
'',
' v_cnt := v_cnt + 1;',
' ',
'    If v_prev_bnk <> c1.Brand then',
'      ',
'htp.p(initcap(c1.Brand)||''</br>'');',
'',
'htp.p(''<div class="brandcategory"  id="ex11"style="line-height: 10px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:10px;">',
'                <td>Model</td>',
'                <td>Target Qty.</td>',
'                <td>Qty.</td>',
'                <td>Amount</td>',
'              </tr>'');',
'                  For c2 in (',
'select distinct a.compcode,a.COMMCODE,a.ITEMCODE,a.brand,a.PRODUCT modal_Category,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  s.compcode,s.COMMCODE,wm_concat(s.ITEMCODE) ITEMCODE,c.brand brand,c.MODELNAM PRODUCT,count( s.ITEMCODE) no_of_item,sum(s.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec S, orbrgs_rml.nmwhznms z,orbrgs_rml.vwnmitem c',
'               where s.compcode=decode(:COMPCODE,''A'',s.compcode,:COMPCODE)',
'              -- AND S.COMPCODE=M.COMPCODE',
'               and s.compcode=Z.COMPCODE(+)',
'               and s.NMZONEFK=Z.WHSZONPK(+)',
'             --  AND S.SMANCODE=M.SMANCODE',
'               and s.compcode=c.compcode',
'            AND s.ITEMCODE=c.ITEMCODE',
'            and s.COMMCODE=c.COMMGRUP',
'            and s.COMMCODE=decode(:BRAND_CODE,''A'',s.COMMCODE,:BRAND_CODE) ',
'            AND s.ITEMCODE IN (SELECT DISTINCT ITEMCODE FROM orbrgs_rml.NMITEMAS c WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'      AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'     -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'      )',
'          /* AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where s.compcode=decode(:COMPCODE,''A'',s.compcode,:COMPCODE)',
'            AND c.compcode=s.compcode',
'            AND c.ITEMCODE=s.ITEMCODE',
'             AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y'')*/',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=s.compcode and d.CABASECC=s.COSTCODE)',
'           AND trunc(s.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'            group by s.compcode,s.COMMCODE,c.brand,c.MODELNAM) a,',
'           (select distinct sum(b.SLTRGQTY) TARGET_QTY, b.compcode,b.BRANDCDE from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'             AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            )',
'           AND trunc(b.TRGTDATE) BETWEEN TRUNC (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH''))',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE) b',
'            where a.compcode=b.compcode(+)',
'           -- and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'')   ',
'            and a.COMMCODE=b.BRANDCDE(+)',
'            and a.BRAND=c1.BRAND       ',
'            UNION ALL',
'            select distinct a.compcode,a.COMMCODE,a.ITEMCODE,a.brand,a.PRODUCT modal_Category,no_of_item,b.TARGET_QTY,Amount from(',
'select  s.compcode,s.COMMCODE,wm_concat(s.ITEMCODE) ITEMCODE,c.brand brand,c.MODELNAM PRODUCT,count( s.ITEMCODE) no_of_item,sum(s.MSLCAMNT) Amount  from orbrgs_cvl.nmsalrec S, orbrgs_cvl.NMSMNMAS M, orbrgs_cvl.nmwhznms z,orbrgs_cvl.vwnmitem c',
'               where s.compcode=decode(:COMPCODE,''A'',s.compcode,:COMPCODE)',
'               AND S.COMPCODE=M.COMPCODE',
'               and s.compcode=Z.COMPCODE(+)',
'               and s.NMZONEFK=Z.WHSZONPK(+)',
'               AND S.SMANCODE=M.SMANCODE',
'               and s.compcode=c.compcode',
'            AND s.ITEMCODE=c.ITEMCODE',
'            and s.COMMCODE=c.COMMGRUP',
'            and s.COMMCODE=decode(:BRAND_CODE,''A'',s.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_cvl.nmitemas c',
'            where s.compcode=decode(:COMPCODE,''A'',s.compcode,:COMPCODE)',
'            AND c.compcode=s.compcode',
'            AND c.ITEMCODE=s.ITEMCODE',
'            AND c.FINISHGD =''Y'')',
'            --AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=s.compcode and d.CABASECC=s.COSTCODE)',
'           AND trunc(s.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'            group by s.compcode,s.COMMCODE,c.brand,c.MODELNAM) a,',
'           ( select distinct sum( b.TARGET_QTY) TARGET_QTY, b.compcode,b.ITEMCODE,b.COMMCODE  from orbrgs_cvl.nmslsfst b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_cvl.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y'')',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'            group by b.compcode,b.ITEMCODE,b.COMMCODE) b',
'            where a.compcode=b.compcode(+)',
'            and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'')   ',
'            and a.COMMCODE=b.COMMCODE(+)',
'            and a.BRAND=c1.BRAND ',
'                  order by no_of_item desc,amount desc',
'                )',
'Loop',
'htp.p(''',
'<tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'    <td style="width: 50%;text-align:left;font-size: 10px;">''||c2.modal_Category||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.TARGET_QTY||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.no_of_item||''</td>',
'    <td style="width: 30%;text-align:center;font-size: 10px;">''||to_char(c2.Amount,''99,99,99,999.99'')||''</td>',
'  </tr>',
''');',
' v_bank_rows1 := v_bank_rows1 +c2.no_of_item;',
'  v_bank_total1 := v_bank_total1 + c2.AMOUNT;',
'                  ',
' end loop;',
'',
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="2" style="text-align:right;">Total</td>',
'                <td style="width: 60%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                <td style="width: 60%;text-align:right;font-size: 10px;">''||to_char(v_bank_total1,''99,99,99,99,99,99,999.99'')||''</td>',
'              </tr>              ',
'            '');',
' ',
'   End If;',
'',
'            ',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows1 := 0;',
'          v_bank_total1 := 0;',
'End Loop;',
'',
'',
'',
'End;',
'',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45352582522034039)
,p_plug_name=>'Brand & Zonewise Summary Sales'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>31
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_total1   number := 0;',
' v_error_page  number := 3;',
'Begin',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGeneratorbrndcat {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGeneratorbrndcat table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGeneratorbrndcat tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGeneratorbrndcat td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGeneratorbrndcat tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGeneratorbrndcat tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'',
'',
'For c1 in (select  DISTINCT S.compcode,c.BRAND Brand,c.COMMGRUP,count(S.ITEMCODE) no_of_item,sum(S.MSLCAMNT) Amount',
'from ORBRGS_RML.nmsalrec S,ORBRGS_RML.NMSMNMAS M,ORBRGS_RML.vwnmitem c,ORBRGS_RML.nmwhznms d',
'where S.COMPCODE=M.COMPCODE',
'AND S.SMANCODE=M.SMANCODE',
'and s.compcode=c.compcode',
'AND s.ITEMCODE=c.ITEMCODE',
'and s.COMMCODE=c.COMMGRUP',
'AND S.compcode=decode(:COMPCODE,''A'',S.compcode,:COMPCODE)',
'and s.compcode=d.compcode',
'and S.NMZONEFK=d.WHSZONPK',
'          --  and c.BRAND=c1.Brand',
'and S.COMMCODE=decode(:BRAND_CODE,''A'',S.COMMCODE,:BRAND_CODE)',
'            AND   EXISTS (SELECT DISTINCT a.ITEMCODE  from ORBRGS_RML.nmitemas a',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND A.compcode=S.compcode',
'            AND A.ITEMCODE=S.ITEMCODE',
'            and a.ITEMMODL=c.ITEMMODL',
'             AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            --AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND A.FINISHGD =''Y''',
'            ) ',
'AND trunc(S.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'--and LOCATYPE=''UPZ''',
'          group by S.compcode,c.BRAND,c.COMMGRUP --,S.NMZONEFK',
'          UNION ALL',
'          select  DISTINCT S.compcode,c.BRAND Brand,c.COMMGRUP,count(S.ITEMCODE) no_of_item,sum(S.MSLCAMNT) Amount',
'from ORBRGS_CVL.nmsalrec S,ORBRGS_CVL.NMSMNMAS M,ORBRGS_CVL.vwnmitem c,ORBRGS_CVL.nmwhznms d',
'where S.COMPCODE=M.COMPCODE',
'AND S.SMANCODE=M.SMANCODE',
'and s.compcode=c.compcode',
'AND s.ITEMCODE=c.ITEMCODE',
'and s.COMMCODE=c.COMMGRUP',
'AND S.compcode=decode(:COMPCODE,''A'',S.compcode,:COMPCODE)',
'and s.compcode=d.compcode',
'and S.NMZONEFK=d.WHSZONPK',
'          --  and c.BRAND=c1.Brand',
'and S.COMMCODE=decode(:BRAND_CODE,''A'',S.COMMCODE,:BRAND_CODE)',
'            AND   EXISTS (SELECT DISTINCT a.ITEMCODE  from ORBRGS_CVL.nmitemas a',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND A.compcode=S.compcode',
'            AND A.ITEMCODE=S.ITEMCODE',
'            and a.ITEMMODL=c.ITEMMODL',
'            AND A.FINISHGD =''Y''',
'            ) ',
'AND trunc(S.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'--and LOCATYPE=''UPZ''',
'          group by S.compcode,c.BRAND,c.COMMGRUP --,S.NMZONEFK',
'                   order by 2',
'',
'',
'                )',
'Loop',
'',
' v_cnt := v_cnt + 1;',
' ',
'    If v_prev_bnk <> c1.Brand then',
'      ',
'htp.p(initcap(c1.Brand)||''</br>'');',
'',
'htp.p(''<div class="brandcategory"  id="ex11"style="line-height: 10px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:10px;">',
'                 <td>Zone</td>',
'                <td>area</td>',
'                <td>Qty.</td>',
'                <td>Amount</td>',
'              </tr>'');',
'                 For c2 in (select case  when  LOCATYPE =''UPZ'' then (  select AREANAME   ',
'    from orbrgs_rml.nmwhznms',
'    where  compcode =decode(:COMPCODE,''A'',compcode,:COMPCODE) and AREACODE=( select DISTINCT AREACODE ',
'     from orbrgs_rml.nmwhznms',
'     where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'     and   AREACODE=(select  ZONLCODE',
'      from orbrgs_rml.nmwhznms  where AREACODE=(select distinct  ZONLCODE from orbrgs_rml.nmwhznms',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and WHSZONPK=s.NMZONEFK ))))',
'       when LOCATYPE =''ZLA'' then(  select  AREANAME --into v_zone',
'      from orbrgs_rml.nmwhznms  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and AREACODE=(select distinct  ZONLCODE from orbrgs_rml.nmwhznms',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and WHSZONPK=s.NMZONEFK))',
'       else null',
'       end zone ,(select distinct AREANAME from orbrgs_rml.nmwhznms',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and WHSZONPK=s.NMZONEFK) area,',
' sum(TRNSQNTY)quantity,sum(MSFCAMNT)Amount      ',
' from orbrgs_rml.nmsalrec S,orbrgs_rml.nmwhznms z',
'where  s.compcode=Z.COMPCODE(+)',
'and s.NMZONEFK=Z.WHSZONPK(+)',
'--AND S.SMANCODE=M.SMANCODE',
'AND S.compcode=decode(:COMPCODE,''A'',s.compcode,:COMPCODE)',
'and S.COMMCODE=c1.COMMGRUP',
'AND ITEMCODE IN (SELECT DISTINCT ITEMCODE FROM orbrgs_rml.NMITEMAS c WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'      AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'     -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'      )',
'/*AND NVL(DOCNUMBR,''X'') in (SELECT DOCNUMBR FROM orbrgs_rml.NMSALREC',
'    WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'AND ITEMCODE IN (SELECT DISTINCT ITEMCODE FROM orbrgs_rml.NMITEMAS c WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'     AND COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'      AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'      ))*/',
'AND S.DOCTDATE BETWEEN nvl(TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''),s.DOCTDATE) and nvl(TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''),s.DOCTDATE)',
'GROUP BY  DOCNUMBR,DOCTDATE,ITEMCODE,s.SALERATE,s.DEA_AGN_CODE,s.NMZONEFK,s.PARTYCDE,s.PAMTMODE,z.LOCATYPE,s.WARECODE--, c1.COMMGRUP',
'union all',
'select case  when  LOCATYPE =''UPZ'' then (  select AREANAME   ',
'    from orbrgs_cvl.nmwhznms',
'    where  compcode =decode(:COMPCODE,''A'',compcode,:COMPCODE) and AREACODE=( select DISTINCT AREACODE ',
'     from orbrgs_cvl.nmwhznms',
'     where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'     and   AREACODE=(select  ZONLCODE',
'      from orbrgs_cvl.nmwhznms  where AREACODE=(select distinct  ZONLCODE from orbrgs_cvl.nmwhznms',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and WHSZONPK=s.NMZONEFK ))))',
'       when LOCATYPE =''ZLA'' then(  select  AREANAME --into v_zone',
'      from orbrgs_cvl.nmwhznms  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and AREACODE=(select distinct  ZONLCODE from orbrgs_cvl.nmwhznms',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and WHSZONPK=s.NMZONEFK))',
'       else null',
'       end zone ,(select distinct AREANAME from orbrgs_cvl.nmwhznms',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and WHSZONPK=s.NMZONEFK) area,',
' sum(TRNSQNTY)quantity,sum(MSFCAMNT)Amount      ',
' from orbrgs_cvl.nmsalrec S,orbrgs_cvl.NMSMNMAS M,orbrgs_cvl.nmwhznms z',
'where S.COMPCODE=M.COMPCODE',
'and s.compcode=Z.COMPCODE(+)',
'and s.NMZONEFK=Z.WHSZONPK(+)',
'AND S.SMANCODE=M.SMANCODE',
'AND S.compcode=decode(:COMPCODE,''A'',s.compcode,:COMPCODE)',
'and S.COMMCODE=c1.COMMGRUP',
'AND NVL(DOCNUMBR,''X'') IN(SELECT DOCNUMBR FROM orbrgs_cvl.NMSALREC',
'    WHERE ITEMCODE IN(SELECT DISTINCT ITEMCODE FROM orbrgs_cvl.NMITEMAS WHERE NVL(MODLCODE,''X'')=NVL(:P18,NVL(MODLCODE,''X'')) AND nvl(ITEMMODL,''X'')=nvl(:p19,nvl(ITEMMODL,''X''))',
'     AND COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE)))',
'AND S.DOCTDATE BETWEEN nvl(TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''),s.DOCTDATE) and nvl(TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''),s.DOCTDATE)',
'GROUP BY  DOCNUMBR,DOCTDATE,ITEMCODE,SMANNAME,s.SALERATE,s.DEA_AGN_CODE,s.NMZONEFK,s.PARTYCDE,s.PAMTMODE,z.LOCATYPE,s.WARECODE--, c1.COMMGRUP',
' ORDER BY quantity desc,Amount desc',
'                )',
'Loop',
'htp.p(''',
'<tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'    <td style="width: 30%;text-align:center;font-size: 10px;">''||initcap(c2.zone)||''</td>',
'    <td style="width: 30%;text-align:left;font-size: 10px;">''||initcap(c2.area)||''</td>',
'    <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.quantity||''</td>',
'    <td style="width: 20%;text-align:right;font-size: 10px;">''||to_char(c2.Amount,''99,99,99,999.99'')||''</td>',
'  </tr>',
''');',
' v_bank_rows1 := v_bank_rows1 +c2.quantity;',
'  v_bank_total1 := v_bank_total1 + c2.AMOUNT;',
'              ',
' end loop;',
' ',
'   End If;',
'--v_bank_rows1 := v_bank_rows1 +c1.no_of_item;',
'--  v_bank_total1 := v_bank_total1 + c1.AMOUNT;',
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="2" style="text-align:right;">Total</td>',
'                <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                <td style="width: 40%;text-align:right;font-size: 10px;">''||to_char(v_bank_total1,''99,99,99,99,99,99,999.99'')||''</td>',
'              </tr>              ',
'            '');',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows1 := 0;',
'          v_bank_total1 := 0;',
'End Loop;',
'',
'',
'',
'End;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45445194541878890)
,p_plug_name=>'Sales Report & chart '
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>251
,p_plug_display_point=>'SUB_REGIONS'
,p_translate_title=>'N'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45239481622725885)
,p_plug_name=>'Best active saller'
,p_parent_plug_id=>wwv_flow_api.id(45445194541878890)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P9998_START_DATE||''&P12=''||:P9998_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator3 {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator3 table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator3 tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator3 tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator3 tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator3 td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator3 tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator3 tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator3 tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator3 tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator3 tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P9998_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P9998_COMPADD.</font>',
'</div></br>'');*/',
'',
'        htp.p(''<div class="scrollbar3"  id="ex4"style="line-height: 8px;font-size: 10px;">',
'              <div class="CSSTableGenerator3" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:7px;">',
'                <td style="width: 60%;background-color:#38ACEC;text-align:center;font-size: 10px;">Sales Person</td>',
'                <td style="width: 10%;background-color:#38ACEC;text-align:center;font-size: 10px;">Brand</td>',
'                <td style="width: 10%;background-color:#38ACEC;text-align:center;font-size: 10px;">No of Sales</td>',
'                <td style="width: 10%;background-color:#38ACEC;text-align:center;font-size: 10px;">Sales Amount</td>',
'              </tr>''); ',
'',
'For c1 in (',
'   SELECT  DISTINCT  regexp_replace(',
'    listagg(c.SMANNAME, '','') within group (order by c.SMANNAME)',
'    ,''([^,]+)(,\1)+'', ''\1'') SMANNAME,regexp_replace(',
'    listagg(e.BRAND, '','') within group (order by e.BRAND)',
'    ,''([^,]+)(,\1)+'', ''\1'') BRAND,COUNT ( a.DOCNUMBR)TOTAL_SALES,sum(d.TRGTAMNT) TRGTAMNT,sum(a.MSLCAMNT) Sales_amount',
'            from  ORBRGS_RML.installment_collection b,ORBRGS_RML.nmsalrec a,ORBRGS_RML.nmsmnmas c,ORBRGS_RML.nmsmntrg d,ORBRGS_RML.vwnmitem e',
'            where A.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND A.compcode=B.compcode(+)',
'            and a.compcode=c.compcode',
'            and a.SMANCODE=c.SMANCODE',
'            and a.compcode=d.compcode(+)',
'            and a.SMANCODE=d.SMANCODE(+)',
'            and a.ITEMCODE=d.ITEMCODE(+)',
'            AND A.PARTYCDE=B.SUBLEDCD(+)',
'            and a.compcode=e.compcode',
'            and a.COMMCODE=e.COMMGRUP',
'            and a.ITEMCODE=e.ITEMCODE',
'            AND NVL(A.DOCNUMBR,0)=NVL(B.REFDOCNO(+),0)',
'            and A.COMMCODE=decode(:BRAND_CODE,''A'',A.COMMCODE,:BRAND_CODE)',
'          /*  AND EXISTS (SELECT distinct CABASECC from sycstacc  b where b.compcode=:compcode and b.GRUPCODE=:APP_USER AND b.compcode=a.compcode and b.CABASECC=a.COSTCODE )*/',
'            AND trunc(A.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'        group by a.SMANCODE ',
'        UNION ALL',
'        SELECT  DISTINCT  regexp_replace(',
'    listagg(c.SMANNAME, '','') within group (order by c.SMANNAME)',
'    ,''([^,]+)(,\1)+'', ''\1'') SMANNAME,regexp_replace(',
'    listagg(e.BRAND, '','') within group (order by e.BRAND)',
'    ,''([^,]+)(,\1)+'', ''\1'') BRAND,COUNT ( a.DOCNUMBR)TOTAL_SALES,sum(d.TRGTAMNT) TRGTAMNT,sum(a.MSLCAMNT) Sales_amount',
'            from  ORBRGS_CVL.installment_collection b,ORBRGS_CVL.nmsalrec a,ORBRGS_CVL.nmsmnmas c,ORBRGS_CVL.nmsmntrg d,ORBRGS_CVL.vwnmitem e',
'            where A.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND A.compcode=B.compcode(+)',
'            and a.compcode=c.compcode',
'            and a.SMANCODE=c.SMANCODE',
'            and a.compcode=d.compcode(+)',
'            and a.SMANCODE=d.SMANCODE(+)',
'            and a.ITEMCODE=d.ITEMCODE(+)',
'            AND A.PARTYCDE=B.SUBLEDCD(+)',
'            and a.compcode=e.compcode',
'            and a.COMMCODE=e.COMMGRUP',
'            and a.ITEMCODE=e.ITEMCODE',
'            AND NVL(A.DOCNUMBR,0)=NVL(B.REFDOCNO(+),0)',
'            and A.COMMCODE=decode(:BRAND_CODE,''A'',A.COMMCODE,:BRAND_CODE)',
'          /*  AND EXISTS (SELECT distinct CABASECC from sycstacc  b where b.compcode=:compcode and b.GRUPCODE=:APP_USER AND b.compcode=a.compcode and b.CABASECC=a.COSTCODE )*/',
'            AND trunc(A.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'        group by a.SMANCODE  ',
'        order by   3 desc,Sales_amount desc',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'     <tr style="max-height:3px;line-height: 7px;font-size: 10px;">',
'    <td style="width: 40%;text-align:left;font-size: 10px;">''||c1.SMANNAME||''</td>',
'    <td style="width: 10%;text-align:left;font-size: 10px;">''||c1.BRAND||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c1.TOTAL_SALES||''</td>',
'    <td style="width: 20%;text-align:right;font-size: 10px;">''||to_char(c1.Sales_amount,''99,99,99,999.99'')||''</td>',
'  </tr>',
'    '');',
'  v_bank_rows := v_bank_rows +c1.TOTAL_SALES;',
'  v_bank_total := v_bank_total + c1.Sales_amount;               ',
'End Loop;',
'',
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="2" style="text-align:right;">Total</td>',
'                <td style="width: 60%;text-align:center;font-size: 10px;">''||v_bank_rows||''</td>',
'                <td style="width: 60%;text-align:right;font-size: 10px;">''||to_char(v_bank_total,''99,99,99,99,99,99,99,99,99,99,99,99,999.99'')||''</td>',
'              </tr>              ',
'            '');',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows := 0;',
'          v_bank_total := 0;',
'',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(45445504142878890)
,p_name=>'Sales  Information'
,p_parent_plug_id=>wwv_flow_api.id(45445194541878890)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>62
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select DISTINCT DOCNUMBR,DOCTDATE ,ITEMDESC,SALERATE,CUSTMRID_NAME,WARECODE_NAME  FROM',
'    (',
'    SELECT  DISTINCT TO_CHAR(A.DOCTDATE,''MMRRRR'')Mon_year, a.DOCNUMBR, ',
'a.DOCTDATE,a.ITEMDESC, a.SALERATE,',
'(select NMCODDES from nmcodmas ',
'       where compcode=a.compcode',
'       and NMHRDCDE=''CLR''',
'       and NMSOFCDE=a.COLORCDE)COLORCDE_NAME,',
'      (select CUSTNAME from nmcusmas ',
'       where compcode=a.compcode',
'       and CUSTMRID=a.CUSTMRID ) CUSTMRID_NAME,',
'       (select SMANNAME from nmsmnmas ',
'       where compcode=a.compcode',
'       and SMANCODE=a.SMANCODE',
'       and COSTCODE=a.COSTCODE) SMANCODE_NAME,',
'       (select WAREDESC from nmwhsmas ',
'       where compcode=a.compcode',
'       and WARECODE=a.WARECODE ) WARECODE_NAME',
'            from  installment_collection b,nmsalrec a',
'            where A.compcode=:compcode',
'            AND A.compcode=B.compcode(+)',
'            AND A.PARTYCDE=B.SUBLEDCD(+)',
'            AND NVL(A.DOCNUMBR,0)=NVL(B.REFDOCNO(+),0)',
'            AND EXISTS (SELECT CABASECC from sycstacc where compcode=:compcode and GRUPCODE=:APP_USER )',
'     )S,(SELECT TO_CHAR(DT,''MMRRRR'')MON_YEAR FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM-1)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM ACCOMPAR WHERE COMPCODE=:COMPCODE AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13))DT',
'                    WHERE S.MON_YEAR=DT.MON_YEAR',
'                    order by DOCTDATE desc'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40282898838767208)
,p_query_column_id=>1
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>3
,p_column_heading=>'Docnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40283329123767208)
,p_query_column_id=>2
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Doctdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40283779964767208)
,p_query_column_id=>3
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>2
,p_column_heading=>'Product'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#ITEMDESC#</span>'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40284096551767209)
,p_query_column_id=>4
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>4
,p_column_heading=>'Amount'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40284517303767209)
,p_query_column_id=>5
,p_column_alias=>'CUSTMRID_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Customer Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#CUSTMRID_NAME#</span>'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
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
 p_id=>wwv_flow_api.id(40284944232767209)
,p_query_column_id=>6
,p_column_alias=>'WARECODE_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Warecode Name'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45504441713000610)
,p_plug_name=>'Sales Chart'
,p_parent_plug_id=>wwv_flow_api.id(45445194541878890)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>72
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with q(qtr) as(',
'  select add_months(',
'                   TO_DATE(:P9998_Y_SALE,''YYYY-MM-DD'')',
'                    , (level-1)',
'                    )',
'    from dual ',
'  connect by level <= 12',
')',
'',
'select distinct NULL LINK, Decode(p.DOCTDATE,''1'',''January'',''2'',''February'',''3'',''March'',''4'',''April'',''5'',''May'',''6'',''June'',''7'',''July'',''8'',''August'',''9'',''September'',''10'',''October'',''11'',''November'',''12'',''December'',null)    as LABEL',
'     , p.sal VALUE1,p.DOCTDATE VALUE2',
'  from q,(SELECT  sal  ,DOCTDATE',
'FROM ',
'    ( SELECT distinct',
'                 extract(month from DOCTDATE) DOCTDATE,COUNT (DOCNUMBR) VALUE,sum(MSLCAMNT) sal',
'            from nmsalrec',
'       where compcode=:compcode',
'       AND EXISTS (SELECT CABASECC FROM SYCSTACC WHERE COMPCODE=:COMPCODE AND GRUPCODE=:APP_USER )',
'        AND OPRSTAMP=:APP_USER',
'        AND trunc(DOCTDATE) BETWEEN COALESCE(TO_DATE(:P9998_YRLY_FROM_DATE,''DD-MON-YYYY''),TO_DATE(:P9998_FROM_DATE,''DD-MON-YYYY''),TO_DATE(:P9998_MNLY__FROM_DATE,''DD-MON-YYYY''))',
'                    AND   COALESCE(TO_DATE(:P9998_YRLY_TO_DATE,''DD-MON-YYYY''),TO_DATE(:P9998_TO_DATE,''DD-MON-YYYY''),TO_DATE(:P9998_MNLY_TO_DATE,''DD-MON-YYYY''))',
'                    group by extract(month from DOCTDATE)',
'                    order by 1 ) p',
')p',
'order by p.DOCTDATE'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(756367854395256)
,p_region_id=>wwv_flow_api.id(45504441713000610)
,p_chart_type=>'line'
,p_title=>'Sales'
,p_width=>'500'
,p_height=>'200'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(756676278395256)
,p_chart_id=>wwv_flow_api.id(756367854395256)
,p_seq=>10
,p_name=>'Series 1'
,p_max_row_count=>15
,p_ajax_items_to_submit=>'P9998_YRLY_FROM_DATE,P9998_FROM_DATE,P9998_MNLY__FROM_DATE,P9998_YRLY_TO_DATE,P9998_TO_DATE,P9998_MNLY_TO_DATE'
,p_location=>'REGION_SOURCE'
,p_series_type=>'line'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(756465917395256)
,p_chart_id=>wwv_flow_api.id(756367854395256)
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
 p_id=>wwv_flow_api.id(756532387395256)
,p_chart_id=>wwv_flow_api.id(756367854395256)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49077449226037567)
,p_plug_name=>'Sales Information'
,p_parent_plug_id=>wwv_flow_api.id(45445194541878890)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>52
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P9998_START_DATE||''&P12=''||:P9998_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P9998_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P9998_COMPADD.</font>',
'</div></br>'');*/',
'',
'        htp.p(''<div class="scrollbar"  id="ex3"style="line-height: 4px;font-size: 10px;">',
'              <div class="CSSTableGenerator" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:6px;">',
'                <td style="width: 12%;background-color:#38ACEC;text-align:center;font-size: 10px;">Brand</td>',
'                <td style="width: 30%;background-color:#38ACEC;text-align:center;font-size: 10px;">Model Name</td>',
'                <td style="width: 5%;background-color:#38ACEC;text-align:center;font-size: 10px;">Customer</td>',
'                <td style="width: 5%;background-color:#38ACEC;text-align:center;font-size: 10px;">No of Item</td>',
'                <td style="width: 38%;background-color:#38ACEC;text-align:center;font-size: 10px;">Product</td>',
'                <td style="width: 10%;background-color:#38ACEC;text-align:center;font-size: 10px;">Amount</td>',
'              </tr>''); ',
'',
'For c1 in (',
'select  DISTINCT c.BRAND Brand,',
'regexp_replace(',
'    listagg(c.MODELNAM, '','') within group (order by c.MODELNAM)',
'    ,''([^,]+)(,\1)+'', ''\1'') modal,count(Distinct b.PARTYCDE) Customer,count(b.ITEMCODE) no_of_item,',
'regexp_replace(',
'    listagg(b.ITEMDESC, '','') within group (order by b.ITEMDESC)',
'    ,''([^,]+)(,\1)+'', ''\1'') product,sum(MSLCAMNT) Amount',
'from nmsalrec b,vwnmitem c',
'            where b.compcode=:compcode',
'            and b.compcode=c.compcode',
'            AND B.ITEMCODE=c.ITEMCODE',
'            and B.COMMCODE=c.COMMGRUP',
'            AND   EXISTS (SELECT DISTINCT a.ITEMCODE  from nmitemas a',
'            where a.compcode=:compcode',
'            AND A.compcode=B.compcode',
'            AND A.ITEMCODE=B.ITEMCODE',
'            AND A.FINISHGD =''Y''',
'            ) ',
'            AND  EXISTS (SELECT CABASECC from sycstacc a where compcode=:compcode and GRUPCODE=:APP_USER AND A.compcode=B.compcode and a.CABASECC=b.COSTCODE)',
'           group by c.BRAND,b.ITEMCODE,c.MODLCODE',
'                  order by 1',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'     <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'    <td style="width: 12%;text-align:left;font-size: 10px;">''||c1.Brand||''</td>',
'    <td style="width: 30%;text-align:left;font-size: 10px;">''||c1.Modal||''</td>',
'    <td style="width: 5%;text-align:center;font-size: 10px;">''||c1.Customer||''</td>',
'    <td style="width: 5%;text-align:center;font-size: 10px;">''||c1.no_of_item||''</td>',
'    <td style="width: 38%;text-align:left;font-size: 10px;">''||c1.Product||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c1.Amount||''</td>',
'  </tr>',
'    '');',
'                 ',
'End Loop;',
' ',
'htp.p(''</table></div></div></br>'');',
'',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49393672244599433)
,p_plug_name=>'Booking Information'
,p_parent_plug_id=>wwv_flow_api.id(45445194541878890)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P9998_START_DATE||''&P12=''||:P9998_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator3 {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator3 table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator3 tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator3 tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator3 tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator3 td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator3 tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator3 tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator3 tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator3 tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator3 tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P9998_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P9998_COMPADD.</font>',
'</div></br>'');*/',
'',
'        htp.p(''<div class="scrollbar3"  id="ex4"style="line-height: 8px;font-size: 10px;">',
'              <div class="CSSTableGenerator3" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:7px;">',
'                <td style="width: 60%;background-color:#38ACEC;text-align:center;font-size: 10px;">Customer Details</td>',
'                <td style="width: 5%;background-color:#38ACEC;text-align:center;font-size: 10px;">No of inst</td>',
'                <td style="width: 5%;background-color:#38ACEC;text-align:center;font-size: 10px;">Sales Amnt</td>',
'                <td style="width: 5%;background-color:#38ACEC;text-align:center;font-size: 10px;">Invoice Amnt</td>',
'                <td style="width: 5%;background-color:#38ACEC;text-align:center;font-size: 10px;">Down Payment</td>',
'                <td style="width: 5%;background-color:#38ACEC;text-align:center;font-size: 10px;">Remaining Amnt</td>',
'              </tr>''); ',
'',
'For c1 in (select DISTINCT  c.CUSTMRID_NAME,NO_OF_INSTALLMENT, salerate,invoice_amount,DOWN_PAYMENT,remaining_amount from',
'(SELECT  DISTINCT wm_concat(b.CUSTMRID) CUSTMRID,',
'sum( b.SALERATE ) salerate ,wm_concat(b.NO_OF_INSTALLMENT) NO_OF_INSTALLMENT,sum(b.MSLCAMNT) invoice_amount,sum(b.DOWN_PAYMENT) DOWN_PAYMENT,',
'(sum(b.MSLCAMNT)-sum(b.DOWN_PAYMENT))remaining_amount',
'from ORBRGS_RML.nmenudtl b',
'            where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'            AND B.DOCTTYPE=''BK''',
'            AND B.SUBTTYPE=1',
'            AND  NOT EXISTS (SELECT DISTINCT a.UPDOCNUM  from ORBRGS_RML.nmsalrec a',
'            where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'            AND B.compcode=A.compcode',
'            AND B.PARTYCDE=A.PARTYCDE',
'            AND B.ITEMCODE=A.ITEMCODE',
'            AND NVL(B.DOCNUMBR,0)=NVL(A.UPDOCNUM,0)',
'           --AND  EXISTS (SELECT DISTINCT CABASECC from sycstacc a where compcode=:compcode and GRUPCODE=:APP_USER AND A.compcode=B.compcode and a.CABASECC=b.COSTCODE)',
'            ) ',
'           group by b.DOCNUMBR) b,(select distinct c.compcode,c.CUSTMRID,c.CUSTNAME||'' / ''||c.CUSTMOBL CUSTMRID_NAME  from ORBRGS_RML.nmcusmas c,ORBRGS_RML.nmsalrec a ',
'       where c.compcode=a.compcode',
'       and c.CUSTMRID=a.CUSTMRID ) c',
'       where b.CUSTMRID=c.CUSTMRID',
'       UNION ALL',
'       select DISTINCT  c.CUSTMRID_NAME,NO_OF_INSTALLMENT, salerate,invoice_amount,DOWN_PAYMENT,remaining_amount from',
'(SELECT  DISTINCT wm_concat(b.CUSTMRID) CUSTMRID,',
'sum( b.SALERATE ) salerate ,wm_concat(b.NO_OF_INSTALLMENT) NO_OF_INSTALLMENT,sum(b.MSLCAMNT) invoice_amount,sum(b.DOWN_PAYMENT) DOWN_PAYMENT,',
'(sum(b.MSLCAMNT)-sum(b.DOWN_PAYMENT))remaining_amount',
'from ORBRGS_CVL.nmenudtl b',
'            where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'            AND B.DOCTTYPE=''BK''',
'            AND B.SUBTTYPE=1',
'            AND  NOT EXISTS (SELECT DISTINCT a.UPDOCNUM  from ORBRGS_CVL.nmsalrec a',
'            where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'            AND B.compcode=A.compcode',
'            AND B.PARTYCDE=A.PARTYCDE',
'            AND B.ITEMCODE=A.ITEMCODE',
'            AND NVL(B.DOCNUMBR,0)=NVL(A.UPDOCNUM,0)',
'            ) ',
'           group by b.DOCNUMBR) b,(select distinct c.compcode,c.CUSTMRID,c.CUSTNAME||'' / ''||c.CUSTMOBL CUSTMRID_NAME  from ORBRGS_CVL.nmcusmas c,ORBRGS_CVL.nmsalrec a ',
'       where c.compcode=a.compcode',
'       and c.CUSTMRID=a.CUSTMRID ) c',
'       where b.CUSTMRID=c.CUSTMRID',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'     <tr style="max-height:3px;line-height: 7px;font-size: 10px;">',
'    <td style="width: 60%;text-align:left;font-size: 10px;">''||c1.CUSTMRID_NAME||''</td>',
'    <td style="width: 5%;text-align:center;font-size: 10px;">''||c1.NO_OF_INSTALLMENT||''</td>',
'    <td style="width: 5%;text-align:center;font-size: 10px;">''||c1.salerate||''</td>',
'    <td style="width: 5%;text-align:center;font-size: 10px;">''||c1.invoice_amount||''</td>',
'    <td style="width: 5%;text-align:left;font-size: 10px;">''||c1.DOWN_PAYMENT||''</td>',
'    <td style="width: 5%;text-align:center;font-size: 10px;">''||c1.remaining_amount||''</td>',
'  </tr>',
'    '');',
'                 ',
'End Loop;',
' ',
'htp.p(''</table></div></div></br>'');',
'',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45457398762887687)
,p_plug_name=>'Collection Report & chart '
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h350:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>181
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45375784542511081)
,p_plug_name=>'Collection Information'
,p_parent_plug_id=>wwv_flow_api.id(45457398762887687)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
'v_stat varchar2(100);',
'',
'/*CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;*/',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'',
'        htp.p(''<div class="enquire"  id="ex4"style="line-height: 8px;font-size: 10px;">',
'             <div class="CSSTableGenerator" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'                  <tr style="max-height:7px;">',
'                       <td style="width: 10px;background-color:#4DEAC7;text-align:center;border-right: none;">Collection</td>',
'                        <td style="width: 10px;background-color:#4FF323;text-align:center;border-left: none;">Total Amount</td>',
'                  </tr>''); ',
'',
'For c1 in (select   label,value from (SELECT ',
'       ''today'' LABEL,',
'       today  VALUE',
'FROM  (select  value today',
'from ',
'    (SELECT sum(p.value) value from(SELECT  SUM( b.JVLCAMNT) value',
'            from  orbrgs_rml.nmsalrec a,orbrgs_rml.installment_collection b',
'            where A.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND A.compcode=B.compcode(+)',
'            AND A.DOCNUMBR=B.REFDOCNO(+)',
'            and A.COMMCODE=decode(:BRAND_CODE,''A'',A.COMMCODE,:BRAND_CODE)',
'            --AND EXISTS (SELECT CABASECC from sycstacc c where c.compcode=:compcode and c.GRUPCODE=:APP_USER and c.CABASECC=a.COSTCODE  )',
'       AND  trunc(A.DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''DD-MM-RRRR''),''DD-MM-RRRR'')',
'       UNION ALL',
'       SELECT  SUM( b.JVLCAMNT)value',
'            from  orbrgs_cvl.nmsalrec a,orbrgs_cvl.installment_collection b',
'            where A.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND A.compcode=B.compcode(+)',
'            AND A.DOCNUMBR=B.REFDOCNO(+)',
'            and A.COMMCODE=decode(:BRAND_CODE,''A'',A.COMMCODE,:BRAND_CODE)',
'       AND  trunc(A.DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''DD-MM-RRRR''),''DD-MM-RRRR'')) p',
'       ',
') ))',
'UNION ALL',
'SELECT ',
'       ''monthly'' LABEL,',
'       monthly  VALUE',
'FROM  (select value monthly',
'from ',
'    ( SELECT sum(p.value) value from(SELECT  SUM( b.JVLCAMNT)value',
'            from  orbrgs_rml.nmsalrec a,orbrgs_rml.installment_collection b',
'            where A.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND A.compcode=B.compcode(+)',
'            AND A.DOCNUMBR=B.REFDOCNO(+)',
'            and A.COMMCODE=decode(:BRAND_CODE,''A'',A.COMMCODE,:BRAND_CODE)',
'          --  AND EXISTS (SELECT CABASECC from sycstacc c where c.compcode=:compcode and c.GRUPCODE=:APP_USER and c.CABASECC=a.COSTCODE  )',
'       AND trunc(A.DOCTDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'       UNION ALL',
'       SELECT  SUM( b.JVLCAMNT)value',
'            from  orbrgs_cvl.nmsalrec a,orbrgs_cvl.installment_collection b',
'            where A.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND A.compcode=B.compcode(+)',
'            AND A.DOCNUMBR=B.REFDOCNO(+)',
'            and A.COMMCODE=decode(:BRAND_CODE,''A'',A.COMMCODE,:BRAND_CODE)',
'       AND trunc(A.DOCTDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))) p',
'      ',
') )',
'UNION ALL',
'SELECT ',
'       ''Yearly'' LABEL,',
'       Yearly VALUE',
'FROM  (select value Yearly',
'from ',
'    ( SELECT sum(p.value) value from(SELECT  SUM( b.JVLCAMNT)value',
'            from  orbrgs_rml.nmsalrec a,orbrgs_rml.installment_collection b',
'            where A.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND A.compcode=B.compcode(+)',
'            AND A.DOCNUMBR=B.REFDOCNO(+)',
'            and A.COMMCODE=decode(:BRAND_CODE,''A'',A.COMMCODE,:BRAND_CODE)',
'           -- AND EXISTS (SELECT CABASECC from sycstacc c where c.compcode=:compcode and c.GRUPCODE=:APP_USER and c.CABASECC=a.COSTCODE  )',
'      AND trunc(A.DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'                        UNION ALL',
'                        SELECT  SUM( b.JVLCAMNT)value',
'            from  orbrgs_cvl.nmsalrec a,orbrgs_cvl.installment_collection b',
'            where A.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND A.compcode=B.compcode(+)',
'            AND A.DOCNUMBR=B.REFDOCNO(+)',
'            and A.COMMCODE=decode(:BRAND_CODE,''A'',A.COMMCODE,:BRAND_CODE)',
'      AND trunc(A.DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'                      ) p',
'                        ',
') ) )',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'    <tr style="max-height:3px;line-height: 7px;font-size: 10px;">',
'    <td style="width: 100px;background-color:#4DEAC7;text-align:center">''||Initcap(c1.label)||''</td>',
'    <td style="width: 100px;background-color:#c77893;text-align:right;font-size: 10px;">''||c1.value||''</td>',
'  </tr>',
'    '');',
'                 ',
'End Loop;',
' ',
'htp.p(''</table></div></div></br>'');',
'',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(45457721276887688)
,p_name=>'Collection Information'
,p_parent_plug_id=>wwv_flow_api.id(45457398762887687)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DOCNUMBR, ',
'DOCTDATE,ACCTCODE, JVLCAMNT,',
'      (select CUSTNAME from nmcusmas ',
'       where compcode=a.compcode',
'       and PARTYCDE=a.SUBLEDCD ) CUSTMRID_NAME',
'             from installment_collection a',
'       where compcode=:compcode',
'       ',
'      '))
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
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40289491300767211)
,p_query_column_id=>1
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>2
,p_column_heading=>'Docnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40289910900767211)
,p_query_column_id=>2
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>3
,p_column_heading=>'Doctdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40290379859767211)
,p_query_column_id=>3
,p_column_alias=>'ACCTCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Acctcode'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40290736776767211)
,p_query_column_id=>4
,p_column_alias=>'JVLCAMNT'
,p_column_display_sequence=>5
,p_column_heading=>'Jvlcamnt'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40291150792767211)
,p_query_column_id=>5
,p_column_alias=>'CUSTMRID_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Buyer Name'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45461331346887690)
,p_plug_name=>'Collection'
,p_parent_plug_id=>wwv_flow_api.id(45457398762887687)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NULL LINK,',
'       ''today'' LABEL,',
'       today  VALUE',
'FROM  (select p.value today',
'from ',
'    (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmenudtl',
'       where compcode=:compcode',
'       and  BOOKCODE  is NOT NULL',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) p',
') '))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(763309786395259)
,p_region_id=>wwv_flow_api.id(45461331346887690)
,p_chart_type=>'bar'
,p_title=>'Booking'
,p_width=>'500'
,p_height=>'200'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(763628204395259)
,p_chart_id=>wwv_flow_api.id(763309786395259)
,p_seq=>10
,p_name=>'1'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(763703700395259)
,p_chart_id=>wwv_flow_api.id(763309786395259)
,p_seq=>20
,p_name=>'2'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(763877345395259)
,p_chart_id=>wwv_flow_api.id(763309786395259)
,p_seq=>30
,p_name=>'3'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(763468023395259)
,p_chart_id=>wwv_flow_api.id(763309786395259)
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
 p_id=>wwv_flow_api.id(763527641395259)
,p_chart_id=>wwv_flow_api.id(763309786395259)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45759932429474182)
,p_plug_name=>'Sales Vs Collection'
,p_parent_plug_id=>wwv_flow_api.id(45457398762887687)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>8
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null,DT.MON,S.TOTAL_SALES "Sales",S.TOTAL_COLLECTION "Collection"  FROM',
'    (SELECT  distinct  TO_CHAR(A.DOCTDATE,''MMRRRR'')Mon_year,SUM ( distinct a.MSLCAMNT)TOTAL_SALES,',
'SUM( b.JVLCAMNT)TOTAL_COLLECTION',
'            from  nmsalrec a,installment_collection b',
'            where A.compcode=:compcode',
'            AND A.compcode=B.compcode(+)',
'           -- AND A.PARTYCDE=B.SUBLEDCD(+)',
'           -- AND B.ITEMCODE=A.ITEMCODE(+)',
'            AND A.DOCNUMBR=B.REFDOCNO(+)',
'           -- and A.DOCTDATE=b.REFDOCDT',
'          -- and UPPER(a.PAMTMODE)=UPPER(''CRT'')',
'        --  and A.INSTALLMENT_PAY=''Y''',
'        and A.COMMCODE=decode(:BRAND_CODE,''A'',A.COMMCODE,:BRAND_CODE)',
'            AND EXISTS (SELECT CABASECC from sycstacc c where c.compcode=:compcode and c.GRUPCODE=:APP_USER and c.CABASECC=a.COSTCODE  )',
'            --and a.OPRSTAMP=:APP_USER',
'            group by TO_CHAR(A.DOCTDATE,''MMRRRR'')',
'     )S,(SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM-1)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM ACCOMPAR WHERE COMPCODE=:COMPCODE AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13))DT',
'                    WHERE S.MON_YEAR(+)=DT.MON_YEAR',
'                    order by dt.mm'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(762933899395259)
,p_region_id=>wwv_flow_api.id(45759932429474182)
,p_chart_type=>'bar'
,p_width=>'520'
,p_height=>'215'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(763244401395259)
,p_chart_id=>wwv_flow_api.id(762933899395259)
,p_seq=>10
,p_name=>'Buyer Vs Sales'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'triangleUp'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(763019709395259)
,p_chart_id=>wwv_flow_api.id(762933899395259)
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
 p_id=>wwv_flow_api.id(763161231395259)
,p_chart_id=>wwv_flow_api.id(762933899395259)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45667448805595078)
,p_plug_name=>'Sales Vs Achivement'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>171
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  null,DT.MON,nvl(S.TARGET_QTY,0) "TARGET_QTY",nvl(S.no_of_item,0) "SALE_QTY",round((nvl(S.no_of_item,0)/nullif(S.TARGET_QTY,0))*100,2) "%" FROM',
'    (select distinct a.compcode,a.Mon_year,sum(no_of_item) no_of_item,sum(TARGET_QTY) TARGET_QTY,sum(Amount) Amount from(',
'    select distinct a.compcode,a.Mon_year Mon_year,b.Mon_year target_year,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  TO_CHAR(a.DOCTDATE,''MMRRRR'')Mon_year,a.compcode,a.COMMCODE,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'          --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y''',
'            )',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'            AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(SYSDATE,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND    ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(SYSDATE,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'            group by a.compcode,TO_CHAR(a.DOCTDATE,''MMRRRR''),a.COMMCODE) a,',
'           ( select distinct sum(b.SLTRGQTY) TARGET_QTY,TO_CHAR(b.TRGTDATE,''MMRRRR'') Mon_year, b.compcode,b.BRANDCDE from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'          /* AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'          --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )*/',
'           AND trunc(TRGTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(SYSDATE,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND    ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(SYSDATE,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE,TO_CHAR(b.TRGTDATE,''MMRRRR'')) b',
'            where a.compcode=b.compcode(+)',
'           -- and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'') ',
'            and a.COMMCODE=b.BRANDCDE(+)',
'            and a.Mon_year=b.Mon_year(+)',
'     ) a',
' group by  a.compcode,a.Mon_year,a.target_year )S,(SELECT distinct MM,MON,MON_YEAR,MONTH ',
'FROM(SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM+17)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM orbrgs_rml.ACCOMPAR WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE) AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13)',
'                   ))DT',
'                    WHERE S.MON_YEAR(+)=DT.MON_YEAR',
'                    order by CASE WHEN dt.mm=07 THEN 1',
'            WHEN dt.mm=08 THEN 2',
'            WHEN dt.mm=09 THEN 3',
'            WHEN dt.mm=10 THEN 4',
'            WHEN dt.mm=11 THEN 5',
'            WHEN dt.mm=12 THEN 6',
'            WHEN dt.mm=01 THEN 7',
'            WHEN dt.mm=02 THEN 8',
'            WHEN dt.mm=03 THEN 9',
'            WHEN dt.mm=04 THEN 10',
'            WHEN dt.mm=05 THEN 11',
'            WHEN dt.mm=06 THEN 12',
'            end'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(762586186395259)
,p_region_id=>wwv_flow_api.id(45667448805595078)
,p_chart_type=>'bar'
,p_width=>'500'
,p_height=>'232'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(762869332395259)
,p_chart_id=>wwv_flow_api.id(762586186395259)
,p_seq=>10
,p_name=>'Target Vs Achivement'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(762647881395259)
,p_chart_id=>wwv_flow_api.id(762586186395259)
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
 p_id=>wwv_flow_api.id(762711032395259)
,p_chart_id=>wwv_flow_api.id(762586186395259)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46046321216362172)
,p_plug_name=>'Buyer Information'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>261
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P9998_START_DATE||''&P12=''||:P9998_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P9998_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P9998_COMPADD.</font>',
'</div></br>'');*/',
'',
'        htp.p(''<div class="scrollbar"  id="ex3"style="line-height: 4px;font-size: 10px;">',
'              <div class="CSSTableGenerator" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:6px;">',
'                <td style="width: 12%;background-color:#38ACEC;text-align:center;font-size: 10px;">Brand</td>',
'                <td style="width: 30%;background-color:#38ACEC;text-align:center;font-size: 10px;">Model Name</td>',
'                <td style="width: 5%;background-color:#38ACEC;text-align:center;font-size: 10px;">Buyer</td>',
'                <td style="width: 5%;background-color:#38ACEC;text-align:center;font-size: 10px;">No of Item</td>',
'                <td style="width: 38%;background-color:#38ACEC;text-align:center;font-size: 10px;">Product</td>',
'                <td style="width: 10%;background-color:#38ACEC;text-align:center;font-size: 10px;">Amount</td>',
'              </tr>''); ',
'',
'For c1 in (',
'select  DISTINCT c.BRAND Brand,',
'regexp_replace(',
'    listagg(c.MODELNAM, '','') within group (order by c.MODELNAM)',
'    ,''([^,]+)(,\1)+'', ''\1'') modal,count(Distinct b.PARTYCDE) Buyer,count(b.ITEMCODE) no_of_item,',
'regexp_replace(',
'    listagg(b.ITEMDESC, '','') within group (order by b.ITEMDESC)',
'    ,''([^,]+)(,\1)+'', ''\1'') product,sum(MSLCAMNT) Amount',
'from nmslsofr b,vwnmitem c',
'            where b.compcode=:compcode',
'            and b.compcode=c.compcode',
'            AND B.ITEMCODE=c.ITEMCODE',
'            AND  NOT EXISTS (SELECT DISTINCT a.UPDOCNUM  from nmsalrec a',
'            where b.compcode=:compcode',
'            AND B.compcode=A.compcode',
'            AND B.PARTYCDE=A.PARTYCDE',
'            AND B.ITEMCODE=A.ITEMCODE',
'            AND NVL(B.DOCNUMBR,0)=NVL(A.UPDOCNUM,0)',
'            AND  EXISTS (SELECT CABASECC from sycstacc where compcode=:compcode and GRUPCODE=:APP_USER )',
'            ) ',
'           group by c.BRAND,c.ITEMCODE,c.MODLCODE',
'                  order by 1 ',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'     <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'    <td style="width: 12%;text-align:left;font-size: 10px;">''||c1.Brand||''</td>',
'    <td style="width: 30%;text-align:left;font-size: 10px;">''||c1.Modal||''</td>',
'    <td style="width: 5%;text-align:center;font-size: 10px;">''||c1.Buyer||''</td>',
'    <td style="width: 5%;text-align:center;font-size: 10px;">''||c1.no_of_item||''</td>',
'    <td style="width: 38%;text-align:left;font-size: 10px;">''||c1.Product||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c1.Amount||''</td>',
'  </tr>',
'    '');',
'                 ',
'End Loop;',
' ',
'htp.p(''</table></div></div></br>'');',
'',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54548419036716516)
,p_plug_name=>'Sales Vs Achivement'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>161
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_rows2    number := 0;',
' v_bank_total    number := 0;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P9998_START_DATE||''&P12=''||:P9998_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator3 {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator3 table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator3 tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator3 tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator3 tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator3 td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator3 tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator3 tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator3 tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator3 tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator3 tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P9998_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P9998_COMPADD.</font>',
'</div></br>'');*/',
'',
'        htp.p(''<div class="brandcategory3"  id="ex4"style="line-height: 8px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:7px;">',
'                <td style="width: 40%;background-color:#38ACEC;text-align:center;font-size: 10px;">Month</td>',
'                <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">Target</td>',
'              <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">Sale</td>',
'              <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">% of Sale</td>',
'              </tr>''); ',
'',
'For c1 in (select  null,DT.MON,nvl(S.TARGET_QTY,0) "TARGET_QTY",nvl(S.no_of_item,0) "SALE_QTY",round((nvl(S.no_of_item,0)/nullif(S.TARGET_QTY,0))*100,2)||''%'' "PERCENT" FROM',
'    (select distinct a.compcode,a.Mon_year,sum(no_of_item) no_of_item,sum(TARGET_QTY) TARGET_QTY,sum(Amount) Amount from(',
'    select distinct a.compcode,a.Mon_year Mon_year,b.Mon_year target_year,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  TO_CHAR(a.DOCTDATE,''MMRRRR'')Mon_year,a.compcode,a.COMMCODE,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'          --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y''',
'            )',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'            AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(SYSDATE,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND    ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(SYSDATE,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'            group by a.compcode,TO_CHAR(a.DOCTDATE,''MMRRRR''),a.COMMCODE) a,',
'           ( select distinct sum(b.SLTRGQTY) TARGET_QTY,TO_CHAR(b.TRGTDATE,''MMRRRR'') Mon_year, b.compcode,b.BRANDCDE from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'          /* AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'          --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )*/',
'           AND trunc(TRGTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(SYSDATE,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND    ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(SYSDATE,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE,TO_CHAR(b.TRGTDATE,''MMRRRR'')) b',
'            where a.compcode=b.compcode(+)',
'           -- and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'') ',
'            and a.COMMCODE=b.BRANDCDE(+)',
'            and a.Mon_year=b.Mon_year(+)',
'     ) a',
' group by  a.compcode,a.Mon_year,a.target_year )S,(SELECT distinct MM,MON,MON_YEAR,MONTH ',
'FROM(SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM+17)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM orbrgs_rml.ACCOMPAR WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE) AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13)',
'                   ))DT',
'                    WHERE S.MON_YEAR(+)=DT.MON_YEAR',
'                    order by CASE WHEN dt.mm=07 THEN 1',
'            WHEN dt.mm=08 THEN 2',
'            WHEN dt.mm=09 THEN 3',
'            WHEN dt.mm=10 THEN 4',
'            WHEN dt.mm=11 THEN 5',
'            WHEN dt.mm=12 THEN 6',
'            WHEN dt.mm=01 THEN 7',
'            WHEN dt.mm=02 THEN 8',
'            WHEN dt.mm=03 THEN 9',
'            WHEN dt.mm=04 THEN 10',
'            WHEN dt.mm=05 THEN 11',
'            WHEN dt.mm=06 THEN 12',
'            end',
'           ',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'     <tr style="max-height:3px;line-height: 7px;font-size: 10px;">',
'    <td style="width: 40%;text-align:left;font-size: 10px;">''||c1.MON||''</td>',
'    <td style="width: 20%;text-align:center;font-size: 10px;">''||c1.TARGET_QTY||''</td>',
'    <td style="width: 20%;text-align:center;font-size: 10px;">''||c1.SALE_QTY||''</td>',
'    <td style="width: 20%;text-align:center;font-size: 10px;">''||c1.PERCENT||''</td>',
'  </tr>',
'    '');',
'  v_bank_rows := v_bank_rows +c1.TARGET_QTY; ',
'  v_bank_rows1 := v_bank_rows1 +c1.SALE_QTY; ',
' -- v_bank_rows2 := v_bank_rows2 +c1.Percent; ',
'End Loop;',
'',
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="1" style="text-align:right;">Total</td>',
'                <td style="width: 20%;text-align:center;font-size: 10px;">''||v_bank_rows||''</td>',
'                <td style="width: 20%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                <td style="width: 20%;text-align:center;font-size: 10px;">''||v_bank_rows2||''</td>',
'              </tr>              ',
'            '');',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows := 0;',
'            v_bank_rows1 := 0;',
'          v_bank_total := 0;',
'',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54548510457716517)
,p_plug_name=>'Collection Vs Achivement'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>191
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_rows2    number := 0;',
' v_bank_total    number := 0;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P9998_START_DATE||''&P12=''||:P9998_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator3 {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator3 table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator3 tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator3 tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator3 tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator3 td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator3 tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator3 tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator3 tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator3 tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator3 tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P9998_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P9998_COMPADD.</font>',
'</div></br>'');*/',
'',
'        htp.p(''<div class="brandcategory3"  id="ex4"style="line-height: 8px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:7px;">',
'                <td style="width: 40%;background-color:#38ACEC;text-align:center;font-size: 10px;">Month</td>',
'                <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">Target</td>',
'              <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">Collection</td>',
'              <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">% of Collection</td>',
'              </tr>''); ',
'',
'For c1 in (select  null,DT.MON,ACHIVQTY "ACHIVEMENT",TARGET_QTY "COLLECTION",round((nvl(S.ACHIVQTY,0)/nvl(S.TARGET_QTY,1))*100,2) "PERCENT" FROM',
'    ( select distinct TO_CHAR(ENDDATE,''MMRRRR'') Mon_year,sum( b.TARGTQTY) TARGET_QTY,sum( b.ACHIVQTY) ACHIVQTY,b.compcode,b.BRANDCDE  from orbrgs_rml.target_achivement b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'           --  and MODELCDE IS NULL',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'           AND trunc(b.ENDDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(SYSDATE,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND    ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(SYSDATE,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'            group by b.compcode,b.BRANDCDE,TO_CHAR(ENDDATE,''MMRRRR''))S,(SELECT distinct MM,MON,MON_YEAR,MONTH ',
'FROM(SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM+17)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM orbrgs_rml.ACCOMPAR WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE) AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13)',
'                    UNION ALL',
'                    SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM+13)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM orbrgs_cvl.ACCOMPAR WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE) AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13)))DT',
'                    WHERE S.MON_YEAR(+)=DT.MON_YEAR',
'                    order by CASE WHEN dt.mm=07 THEN 1',
'            WHEN dt.mm=08 THEN 2',
'            WHEN dt.mm=09 THEN 3',
'            WHEN dt.mm=10 THEN 4',
'            WHEN dt.mm=11 THEN 5',
'            WHEN dt.mm=12 THEN 6',
'            WHEN dt.mm=01 THEN 7',
'            WHEN dt.mm=02 THEN 8',
'            WHEN dt.mm=03 THEN 9',
'            WHEN dt.mm=04 THEN 10',
'            WHEN dt.mm=05 THEN 11',
'            WHEN dt.mm=06 THEN 12',
'            end)',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'     <tr style="max-height:3px;line-height: 7px;font-size: 10px;">',
'    <td style="width: 40%;text-align:left;font-size: 10px;">''||c1.MON||''</td>',
'    <td style="width: 20%;text-align:center;font-size: 10px;">''||c1.COLLECTION||''</td>',
'    <td style="width: 20%;text-align:center;font-size: 10px;">''||c1.ACHIVEMENT||''</td>',
'    <td style="width: 20%;text-align:center;font-size: 10px;">''||c1.PERCENT||''</td>',
'  </tr>',
'    '');',
'  v_bank_rows := v_bank_rows +c1.Collection; ',
'  v_bank_rows1 := v_bank_rows1 +c1.ACHIVEMENT; ',
' -- v_bank_rows2 := v_bank_rows2 +c1.Percent; ',
'End Loop;',
'',
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="1" style="text-align:right;">Total</td>',
'                <td style="width: 20%;text-align:center;font-size: 10px;">''||v_bank_rows||''</td>',
'                <td style="width: 20%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                <td style="width: 20%;text-align:center;font-size: 10px;">''||v_bank_rows2||''</td>',
'              </tr>              ',
'            '');',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows := 0;',
'            v_bank_rows1 := 0;',
'          v_bank_total := 0;',
'',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54548542302716518)
,p_plug_name=>'Collection Vs Achivement'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>201
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  null,DT.MON,TARGET_QTY "Target Amount",ACHIVQTY "Collection Amount",round((nvl(S.ACHIVQTY,0)/nullif(S.TARGET_QTY,0))*100,2) "%" FROM',
'    (select distinct TO_CHAR(ENDDATE,''MMRRRR'') Mon_year,sum( b.TARGTQTY) TARGET_QTY,sum( b.ACHIVQTY) ACHIVQTY,b.compcode,b.BRANDCDE  from orbrgs_rml.target_achivement b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'           --  and MODELCDE IS NULL',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'           AND trunc(b.ENDDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(SYSDATE,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND    ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(SYSDATE,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'            group by b.compcode,b.BRANDCDE,TO_CHAR(ENDDATE,''MMRRRR'') )S,(SELECT distinct MM,MON,MON_YEAR,MONTH ',
'FROM(SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM+17)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM orbrgs_rml.ACCOMPAR WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE) AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13)',
'                    UNION ALL',
'                    SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM+11)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM orbrgs_cvl.ACCOMPAR WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE) AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13)))DT',
'                    WHERE S.MON_YEAR(+)=DT.MON_YEAR',
' order by CASE WHEN dt.mm=07 THEN 1',
'            WHEN dt.mm=08 THEN 2',
'            WHEN dt.mm=09 THEN 3',
'            WHEN dt.mm=10 THEN 4',
'            WHEN dt.mm=11 THEN 5',
'            WHEN dt.mm=12 THEN 6',
'            WHEN dt.mm=01 THEN 7',
'            WHEN dt.mm=02 THEN 8',
'            WHEN dt.mm=03 THEN 9',
'            WHEN dt.mm=04 THEN 10',
'            WHEN dt.mm=05 THEN 11',
'            WHEN dt.mm=06 THEN 12',
'            end'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(762166462395259)
,p_region_id=>wwv_flow_api.id(54548542302716518)
,p_chart_type=>'bar'
,p_width=>'500'
,p_height=>'232'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
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
 p_id=>wwv_flow_api.id(762480733395259)
,p_chart_id=>wwv_flow_api.id(762166462395259)
,p_seq=>10
,p_name=>'Target Vs Achivement'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(762214279395259)
,p_chart_id=>wwv_flow_api.id(762166462395259)
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
 p_id=>wwv_flow_api.id(762341134395259)
,p_chart_id=>wwv_flow_api.id(762166462395259)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54548905787716521)
,p_plug_name=>'Sales Vs Achivement'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>211
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54549063738716523)
,p_plug_name=>'Sales Target Vs Achievement &P1_CURRENTDATE.'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>51
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54548978820716522)
,p_plug_name=>'Current Month Sales Vs Achivement Report'
,p_parent_plug_id=>wwv_flow_api.id(54549063738716523)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_rows2    number := 0;',
' v_bank_total    number := 0;',
'v_error_page  number := 4;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P9998_START_DATE||''&P12=''||:P9998_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator3 {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator3 table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator3 tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator3 tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator3 tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator3 td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator3 tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator3 tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator3 tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator3 tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator3 tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P9998_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P9998_COMPADD.</font>',
'</div></br>'');*/',
'For c1 in (',
'select distinct a.compcode,a.COMMCODE,a.brand,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  a.compcode,a.COMMCODE,c.brand brand,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            --AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y''',
'            )',
'         and upper(a.compcode) != ''XXX''',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'           AND trunc(a.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'            group by a.compcode,a.COMMCODE,c.brand) a,',
'           ( select distinct sum(b.SLTRGQTY) TARGET_QTY, b.compcode,b.BRANDCDE  from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'          --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )',
'           AND trunc(b.TIMSTAMP) BETWEEN TRUNC (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH''))',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE) b',
'            where a.compcode=b.compcode(+)',
'           -- and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'') ',
'            and a.COMMCODE=b.BRANDCDE(+)',
'                )',
'Loop',
'',
' v_cnt := v_cnt + 1;',
' ',
'    If v_prev_bnk <> c1.Brand then',
'      ',
'',
'htp.p(initcap(c1.Brand)||''</br>'');',
'',
'        htp.p(''<div class="brandcategory4"  id="ex4"style="line-height: 8px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:7px;">',
'                <td style="width: 40%;background-color:#38ACEC;text-align:center;font-size: 10px;"></td>',
'                <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;"></td>',
'              </tr>''); ',
'',
'For c2 in (select DISTINCT num, label,nvl(value,0) value from (',
'SELECT 1 num,',
'       ''Target'' LABEL,',
'       monthly  VALUE',
'FROM  (select value monthly',
'from ',
'    (',
'    select distinct sum(nvl(TARGET_QTY,0)) value  from(',
'/*select distinct  TO_CHAR(a.DOCTDATE,''MMRRRR'')Mon_year,a.compcode,a.COMMCODE,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'             AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y''',
'            )',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'            AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'            group by a.compcode,TO_CHAR(a.DOCTDATE,''MMRRRR''),a.COMMCODE) a,',
'           (*/',
'        ',
'        select distinct sum(b.SLTRGQTY) TARGET_QTY, b.compcode,b.BRANDCDE  from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )',
'             AND trunc(b.TRGTDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE) b',
'          --  where a.compcode=b.compcode(+)',
'           -- and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'') ',
'           -- and a.COMMCODE=b.BRANDCDE(+)',
'            where b.BRANDCDE=c1.COMMCODE ',
'      ',
') )',
'UNION ALL',
'',
'SELECT 2 num,',
'       ''Achievement'' LABEL,',
'       monthly  VALUE',
'FROM  (select sum(value) monthly',
'from ',
'    ( ',
'    select distinct nvl(no_of_item,0) value  from(',
'select distinct  TO_CHAR(a.DOCTDATE,''MMRRRR'')Mon_year,a.compcode,a.COMMCODE,wm_concat(a.ITEMCODE) ITEMCODE,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'            AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            --AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y''',
'            )',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'            AND trunc(a.DOCTDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'            group by a.compcode,TO_CHAR(a.DOCTDATE,''MMRRRR''),a.COMMCODE) a,',
'           (  select distinct sum(b.SLTRGQTY) TARGET_QTY, b.compcode,b.BRANDCDE,b.ITEMCODE  from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'             AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )',
'            AND trunc(b.TRGTDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'         --  AND trunc(b.TRGTDATE) BETWEEN TRUNC (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH'') ',
'      -- AND LAST_DAY (TRUNC (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH''))',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE,b.ITEMCODE) b',
'            where a.compcode=b.compcode(+)',
'            and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'') ',
'            and a.COMMCODE=b.BRANDCDE(+)',
'            and a.COMMCODE=c1.COMMCODE ',
'      ',
') )',
'UNION ALL',
'',
'SELECT 3 num,',
'       ''Achievement %'' LABEL,',
'       monthly  VALUE',
'FROM  (select value monthly',
'from ',
'    ( ',
'    select distinct nvl(round(nvl(no_of_item,0)/nullif(TARGET_QTY,0)*100,2),0) value  from(',
'select distinct  a.compcode,a.COMMCODE,wm_concat(a.ITEMCODE) ITEMCODE,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'          --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y''',
'            )',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'            AND trunc(a.DOCTDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'            group by a.compcode,a.COMMCODE) a,',
'           (  select distinct sum(b.SLTRGQTY) TARGET_QTY, b.compcode,b.BRANDCDE  from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )',
'            AND trunc(b.TRGTDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE) b',
'            where a.compcode=b.compcode(+)',
'         --   and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'') ',
'            and a.COMMCODE=b.BRANDCDE(+)',
'            and a.COMMCODE=c1.COMMCODE ',
'      ',
') )',
')',
'order by 1 ',
'',
'',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'     <tr style="max-height:3px;line-height: 7px;font-size: 10px;">',
'    <td style="width: 40%;text-align:left;font-size: 10px;">''||c2.label||''</td>',
'    <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.value||''</td>',
'  </tr>',
'    '');',
'  v_bank_rows := v_bank_rows +c2.value; ',
' -- v_bank_rows1 := v_bank_rows1 +c1.ACHIVEMENT; ',
' -- v_bank_rows2 := v_bank_rows2 +c1.Percent; ',
'End Loop;',
' End If;',
'             /* htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="1" style="text-align:right;">Total</td>',
'                <td style="width: 20%;text-align:center;font-size: 10px;">''||v_bank_rows||''</td>',
'              </tr>              ',
'            '');*/',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows := 0;',
'            v_bank_rows1 := 0;',
'          v_bank_total := 0;',
'End Loop;',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="2" style="text-align:right;">Total</td>',
'                <td style="width: 60%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                <td style="width: 60%;text-align:right;font-size: 10px;">''||to_char(v_bank_total1,''99,99,99,99,99,99,999.99'')||''</td>',
'              </tr>              ',
'            '');'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54549304639716525)
,p_plug_name=>'Sales Vs Achivement'
,p_parent_plug_id=>wwv_flow_api.id(54548978820716522)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>41
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  null,DT.MON,no_of_item "Achivement",TARGET_QTY "Target",round((nvl(S.no_of_item,0)/nullif(S.TARGET_QTY,0))*100,2) "%" FROM',
'    (select distinct a.compcode,a.Mon_year,sum(no_of_item) no_of_item,sum(TARGET_QTY) TARGET_QTY,sum(Amount) Amount from(',
'    select distinct a.compcode,a.Mon_year,a.ITEMCODE,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  TO_CHAR(a.DOCTDATE,''MMRRRR'')Mon_year,a.compcode,a.COMMCODE,wm_concat(a.ITEMCODE) ITEMCODE,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y''',
'            )',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'           AND trunc(a.DOCTDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'            group by a.compcode,TO_CHAR(a.DOCTDATE,''MMRRRR''),a.COMMCODE) a,',
'           (  select distinct sum(b.SLTRGQTY) TARGET_QTY, b.compcode,b.BRANDCDE  from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )',
'           AND trunc(b.TRGTDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE) b',
'            where a.compcode=b.compcode(+)',
'           -- and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'') ',
'            and a.COMMCODE=b.BRANDCDE(+)',
'            UNION ALL',
'             select distinct a.compcode,a.Mon_year,a.ITEMCODE,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  TO_CHAR(a.DOCTDATE,''MMRRRR'')Mon_year,a.compcode,a.COMMCODE,wm_concat(a.ITEMCODE) ITEMCODE,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_cvl.nmsalrec a,orbrgs_cvl.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_cvl.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'            AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y'')',
'           AND trunc(a.DOCTDATE) BETWEEN TRUNC (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH''))',
'            group by a.compcode,TO_CHAR(a.DOCTDATE,''MMRRRR''),a.COMMCODE) a,',
'           ( select distinct sum( b.TARGTQTY) TARGET_QTY, b.compcode,b.ITEMCODE,b.BRANDCDE  from orbrgs_cvl.target_achivement b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_cvl.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y'')',
'            group by b.compcode,b.ITEMCODE,b.BRANDCDE) b',
'            where a.compcode=b.compcode(+)',
'            and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'') ',
'            and a.COMMCODE=b.BRANDCDE(+)',
'     ) a',
' group by  a.compcode,a.Mon_year  )S,(SELECT distinct MM,MON,MON_YEAR,MONTH ',
'FROM(SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM+17)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM orbrgs_rml.ACCOMPAR WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE) AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13)',
'                    UNION ALL',
'                    SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM+11)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM orbrgs_cvl.ACCOMPAR WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE) AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13)))DT',
'                    WHERE S.MON_YEAR=DT.MON_YEAR',
'                    order by dt.mm'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
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
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(761717914395259)
,p_region_id=>wwv_flow_api.id(54549304639716525)
,p_chart_type=>'bar'
,p_width=>'300'
,p_height=>'232'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(762065601395259)
,p_chart_id=>wwv_flow_api.id(761717914395259)
,p_seq=>10
,p_name=>'Target Vs Achivement'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(761838652395259)
,p_chart_id=>wwv_flow_api.id(761717914395259)
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
 p_id=>wwv_flow_api.id(761947503395259)
,p_chart_id=>wwv_flow_api.id(761717914395259)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54549608687716528)
,p_plug_name=>'Sales - YTD'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>61
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54549775050716530)
,p_plug_name=>'Current Year Sales Vs Achivement Report'
,p_parent_plug_id=>wwv_flow_api.id(54549608687716528)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_rows2    number := 0;',
' v_bank_total    number := 0;',
'v_error_page  number := 5;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P9998_START_DATE||''&P12=''||:P9998_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator3 {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator3 table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator3 tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator3 tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator3 tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator3 td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator3 tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator3 tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator3 tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator3 tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator3 tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P9998_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P9998_COMPADD.</font>',
'</div></br>'');*/',
'For c1 in (',
'select distinct a.compcode,a.COMMCODE,a.brand,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  a.compcode,a.COMMCODE,c.brand brand,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'         and upper(a.compcode) != ''XXX''',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'           AND trunc(a.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'            group by a.compcode,a.COMMCODE,c.brand) a,',
'           ( select distinct sum( b.TARGET_QTY) TARGET_QTY, b.compcode,b.COMMCODE  from orbrgs_rml.nmslsfst b',
'               where b.compcode=:compcode',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.COMMCODE) b',
'            where a.compcode=b.compcode(+)',
'            and a.COMMCODE=b.COMMCODE(+)',
'                )',
'Loop',
'',
' v_cnt := v_cnt + 1;',
' ',
'    If v_prev_bnk <> c1.Brand then',
'      ',
'',
'htp.p(initcap(c1.Brand)||''</br>'');',
'',
'        htp.p(''<div class="brandcategory4"  id="ex4"style="line-height: 8px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:7px;">',
'                <td style="width: 40%;background-color:#38ACEC;text-align:center;font-size: 10px;"></td>',
'                <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;"></td>',
'              </tr>''); ',
'',
'For c2 in (select DISTINCT num, label,value from (',
'SELECT 1 num,',
'       ''Target'' LABEL,',
'       monthly  VALUE',
'FROM  (select value monthly',
'from ',
'    (',
'    select distinct sum(nvl(TARGET_QTY,0)) value  from(',
'/*select distinct  TO_CHAR(a.DOCTDATE,''MMRRRR'')Mon_year,a.compcode,a.COMMCODE,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'             AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y''',
'            )',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'            AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'            group by a.compcode,TO_CHAR(a.DOCTDATE,''MMRRRR''),a.COMMCODE) a,',
'           (*/',
'        ',
'        select distinct sum(b.SLTRGQTY) TARGET_QTY, b.compcode,b.BRANDCDE  from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )',
'            AND trunc(TRGTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE) b',
'          --  where a.compcode=b.compcode(+)',
'           -- and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'') ',
'           -- and a.COMMCODE=b.BRANDCDE(+)',
'            where b.BRANDCDE=c1.COMMCODE ',
'      ',
') )',
'UNION ALL',
'',
'SELECT 2 num,',
'       ''Achievement'' LABEL,',
'       monthly  VALUE',
'FROM  (select sum(value) monthly',
'from ',
'    ( ',
'    select distinct nvl(no_of_item,0) value  from(',
'select distinct  TO_CHAR(a.DOCTDATE,''MMRRRR'')Mon_year,a.compcode,a.COMMCODE,count( a.docnumbr) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y''',
'            )',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'            AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'            group by a.compcode,TO_CHAR(a.DOCTDATE,''MMRRRR''),a.COMMCODE) a/*,',
'           ( select distinct sum(b.SLTRGQTY) TARGET_QTY, b.compcode,b.BRANDCDE  from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )',
'           AND trunc(b.TIMSTAMP) BETWEEN TRUNC (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH''))',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE) b',
'            where a.compcode=b.compcode(+)',
'          --  and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'') ',
'            and a.COMMCODE=b.BRANDCDE(+)*/',
'            where a.COMMCODE=c1.COMMCODE ',
'      ',
') )',
'UNION ALL',
'',
'SELECT 3 num,',
'       ''Achievement %'' LABEL,',
'       monthly  VALUE',
'FROM  (select value monthly',
'from ',
'    ( ',
'    select distinct round(nvl(no_of_item,0)/nvl(TARGET_QTY,0)*100,2) value  from(',
'select distinct  a.compcode,a.COMMCODE,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y''',
'            )',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'            AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'            group by a.compcode,a.COMMCODE) a,',
'           (  select distinct sum(b.SLTRGQTY) TARGET_QTY, b.compcode,b.BRANDCDE  from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'          --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )',
'           AND trunc(TRGTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE) b',
'            where a.compcode=b.compcode(+)',
'           -- and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'') ',
'            and a.COMMCODE=b.BRANDCDE(+)',
'            and a.COMMCODE=c1.COMMCODE ',
'      ',
') )',
')',
'order by 1 ',
'',
'',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'     <tr style="max-height:3px;line-height: 7px;font-size: 10px;">',
'    <td style="width: 40%;text-align:left;font-size: 10px;">''||c2.label||''</td>',
'    <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.value||''</td>',
'  </tr>',
'    '');',
'  v_bank_rows := v_bank_rows +c2.value; ',
' -- v_bank_rows1 := v_bank_rows1 +c1.ACHIVEMENT; ',
' -- v_bank_rows2 := v_bank_rows2 +c1.Percent; ',
'End Loop;',
' End If;',
'             /* htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="1" style="text-align:right;">Total</td>',
'                <td style="width: 20%;text-align:center;font-size: 10px;">''||v_bank_rows||''</td>',
'              </tr>              ',
'            '');*/',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows := 0;',
'            v_bank_rows1 := 0;',
'          v_bank_total := 0;',
'End Loop;',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="2" style="text-align:right;">Total</td>',
'                <td style="width: 60%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                <td style="width: 60%;text-align:right;font-size: 10px;">''||to_char(v_bank_total1,''99,99,99,99,99,99,999.99'')||''</td>',
'              </tr>              ',
'            '');'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54549908003716531)
,p_plug_name=>'Sales Vs Achivement'
,p_parent_plug_id=>wwv_flow_api.id(54549775050716530)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null ,null name,sum(no_of_item) "Achivement",sum(b.TARGET_QTY) "Target",sum(round((nvl(a.no_of_item,0)/nullif(b.TARGET_QTY,0))*100,2)) "%"  from(',
'select a.compcode,a.COMMCODE,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y''',
'            )',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'            AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'            group by a.compcode,a.COMMCODE) a,',
'           (  select sum(b.SLTRGQTY) TARGET_QTY, b.compcode,b.BRANDCDE  from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'          --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )',
'           AND trunc(TRGTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE) b',
'            where a.compcode=b.compcode(+)',
'           -- and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'') ',
'            and a.COMMCODE=b.BRANDCDE(+)',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE)--''001''--c1.COMMCODE '))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>',round((nvl(S.no_of_item,0)/nvl(S.TARGET_QTY,1))*100,2) "Achive %"'
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
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(761367226395257)
,p_region_id=>wwv_flow_api.id(54549908003716531)
,p_chart_type=>'bar'
,p_width=>'300'
,p_height=>'232'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(761612936395259)
,p_chart_id=>wwv_flow_api.id(761367226395257)
,p_seq=>10
,p_name=>'Target Vs Achivement'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(761444558395259)
,p_chart_id=>wwv_flow_api.id(761367226395257)
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
 p_id=>wwv_flow_api.id(761552662395259)
,p_chart_id=>wwv_flow_api.id(761367226395257)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54549690917716529)
,p_plug_name=>'Current Week Sales Target Vs Achievement'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>71
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54550142644716534)
,p_plug_name=>'Current Week Sales Vs Achivement Report'
,p_parent_plug_id=>wwv_flow_api.id(54549690917716529)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_rows2    number := 0;',
' v_bank_total    number := 0;',
'v_error_page  number := 6;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P9998_START_DATE||''&P12=''||:P9998_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator3 {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator3 table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator3 tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator3 tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator3 tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator3 td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator3 tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator3 tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator3 tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator3 tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator3 tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P9998_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P9998_COMPADD.</font>',
'</div></br>'');*/',
'For c1 in (',
'select distinct a.compcode,a.COMMCODE,a.brand,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  a.compcode,a.COMMCODE,c.brand brand,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'         and upper(a.compcode) != ''XXX''',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'           AND trunc(a.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'            group by a.compcode,a.COMMCODE,c.brand) a,',
'           ( select distinct sum(b.SLTRGQTY) TARGET_QTY, b.compcode,b.BRANDCDE  from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )',
'           AND trunc(b.TIMSTAMP) BETWEEN TRUNC (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH''))',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE) b',
'            where a.compcode=b.compcode(+)',
'           -- and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'') ',
'            and a.COMMCODE=b.BRANDCDE(+)',
'                )',
'Loop',
'',
' v_cnt := v_cnt + 1;',
' ',
'    If v_prev_bnk <> c1.Brand then',
'      ',
'',
'htp.p(initcap(c1.Brand)||''</br>'');',
'',
'        htp.p(''<div class="brandcategory4"  id="ex4"style="line-height: 8px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:7px;">',
'              <td style="width: 40%;background-color:#38ACEC;text-align:center;font-size: 10px;"></td>',
'              <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">1st Week</td>',
'              <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">2nd Week</td>',
'              <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">3rd Week</td>',
'              <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">4th Week</td>',
'              <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">5th Week</td>',
'              </tr>''); ',
'',
'For c2 in (select * from (select num, label,value,pipe from (SELECT 1 num,',
'       ''Target'' LABEL,',
'       monthly  VALUE',
'       ,pipe',
'FROM  (select value monthly,pipe',
'from ',
'    (',
'    select distinct nvl(TARGET_QTY,0) value,decode(pipe,''-'',''29-31'',pipe) pipe from(',
'select distinct sum(b.SLTRGQTY) TARGET_QTY, b.compcode,nvl(case when TRGTDATE between to_date(''01/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''07/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''1-7''',
'        when TRGTDATE between to_date(''08/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''14/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''8-14''  ',
'       when TRGTDATE between to_date(''15/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''21/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''15-21''',
'       when TRGTDATE between to_date(''22/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''28/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''22-28''',
'       end,0) pipe from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )',
'--AND b.TRGTDATE BETWEEN to_date(:1,''DD-MM-RRRR'')',
'--       AND to_date(:2,''DD-MM-RRRR'')',
'           AND trunc(b.TRGTDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.TRGTDATE)',
'      ',
') )',
'UNION ALL',
'',
'SELECT 2 num,',
'       ''Achievement'' LABEL,',
'       monthly  VALUE',
'       ,pipe',
'FROM  (select value monthly, pipe',
'from ',
'    ( ',
'    select nvl(no_of_item,0) value,pipe  from(',
'select TO_CHAR(a.DOCTDATE,''MMRRRR'')Mon_year,case when a.doctdate between to_date(''01/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''07/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''1-7'' ',
'       when a.doctdate between to_date(''08/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''14/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''8-14''  ',
'       when a.doctdate between to_date(''15/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''21/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''15-21'' ',
'       when a.doctdate between to_date(''22/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''28/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''22-28''',
'       end pipe,a.compcode,a.COMMCODE,wm_concat(a.ITEMCODE) ITEMCODE,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'            AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y''',
'            )',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'           AND trunc(a.DOCTDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'            group by a.compcode,TO_CHAR(a.DOCTDATE,''MMRRRR''),a.DOCTDATE,a.COMMCODE) a',
'            where a.COMMCODE=c1.COMMCODE ',
'      ',
') )',
'UNION ALL',
'',
'SELECT 3 num,',
'       ''Achievement %'' LABEL,',
'       monthly  VALUE',
'       ,pipe',
'FROM  (select distinct value monthly,pipe PIPE,TARGET_QTY,no_of_item',
'from ',
'    ( ',
'    select distinct round(sum(nvl(no_of_item,0))/nullif(TARGET_QTY,0)*100,2) value,nvl(b.TARGET_QTY,0) TARGET_QTY,sum(nvl(no_of_item,0)) no_of_item,pipe  from(',
'select TO_CHAR(a.DOCTDATE,''MMRRRR'')Mon_year,case when a.doctdate between to_date(''01/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''07/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''1-7'' ',
'       when a.doctdate between to_date(''08/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''14/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''8-14''  ',
'       when a.doctdate between to_date(''15/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''21/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''15-21'' ',
'       when a.doctdate between to_date(''22/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''28/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''22-28''',
'       end pipe,a.compcode,a.COMMCODE,wm_concat(a.ITEMCODE) ITEMCODE,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'             AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)            ',
'            --AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y''',
'            )',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'           AND trunc(a.DOCTDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'            group by a.compcode,TO_CHAR(a.DOCTDATE,''MMRRRR''),a.DOCTDATE,a.COMMCODE) a,',
'           ( select distinct sum(b.SLTRGQTY) TARGET_QTY, b.compcode,b.BRANDCDE,case when TRGTDATE between to_date(''01/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''07/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''1-7'' ',
'       when TRGTDATE between to_date(''08/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''14/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''8-14''  ',
'       when TRGTDATE between to_date(''15/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''21/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''15-21'' ',
'       when TRGTDATE between to_date(''22/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''28/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''22-28''',
'       when TRGTDATE between to_date(''29/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''31/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''29-2''',
'       end pipe1 from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'           AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            )',
'           AND trunc(b.TRGTDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE,b.TRGTDATE) b',
'            where a.compcode=b.compcode',
'           -- and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'')',
'            And a.pipe=b.pipe1',
'            and a.COMMCODE=b.BRANDCDE',
'            and a.COMMCODE=c1.COMMCODE ',
'group by pipe,b.TARGET_QTY',
'      ',
') )',
'))',
'PIVOT',
'(',
'  sum(value) Potential',
'  FOR pipe IN ( ''1-7'' a,''8-14'' b,''15-21'' c,''22-28'' d,''29-31'' e)',
')',
'order by 1 ',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'     <tr style="max-height:3px;line-height: 7px;font-size: 10px;">',
'    <td style="width: 40%;text-align:left;font-size: 10px;">''||c2.label||''</td>',
'    <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.A_POTENTIAL||''</td>',
'        <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.B_POTENTIAL||''</td>',
'        <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.C_POTENTIAL||''</td>',
'        <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.D_POTENTIAL||''</td>',
'        <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.E_POTENTIAL||''</td>',
'  </tr>',
'    '');',
'  v_bank_rows := v_bank_rows +c2.A_POTENTIAL; ',
' -- v_bank_rows1 := v_bank_rows1 +c1.ACHIVEMENT; ',
' -- v_bank_rows2 := v_bank_rows2 +c1.Percent; ',
'End Loop;',
' End If;',
'             /* htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="1" style="text-align:right;">Total</td>',
'                <td style="width: 20%;text-align:center;font-size: 10px;">''||v_bank_rows||''</td>',
'              </tr>              ',
'            '');*/',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows := 0;',
'            v_bank_rows1 := 0;',
'          v_bank_total := 0;',
'End Loop;',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="2" style="text-align:right;">Total</td>',
'                <td style="width: 60%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                <td style="width: 60%;text-align:right;font-size: 10px;">''||to_char(v_bank_total1,''99,99,99,99,99,99,999.99'')||''</td>',
'              </tr>              ',
'            '');'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54550256652716535)
,p_plug_name=>'Sales Vs Achivement'
,p_parent_plug_id=>wwv_flow_api.id(54550142644716534)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>71
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  null,DT.MON,no_of_item "Achivement",TARGET_QTY "Target",value "%" FROM',
'    (',
'    select distinct a.compcode,a.Mon_year,round(sum(nvl(no_of_item,0))/sum(distinct nvl(TARGET_QTY,0))*100,2) value,sum(distinct nvl(b.TARGET_QTY,0)) TARGET_QTY,sum(nvl(no_of_item,0)) no_of_item,pipe from(',
'',
'select TO_CHAR(a.DOCTDATE,''MMRRRR'')Mon_year,case when a.doctdate between to_date(''01/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''07/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''1-7'' ',
'       when a.doctdate between to_date(''08/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''14/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''8-14''  ',
'       when a.doctdate between to_date(''15/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''21/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''15-21'' ',
'       when a.doctdate between to_date(''22/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''28/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''22-28''',
'       when a.doctdate between to_date(''29/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''31/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''29-2''',
'       end pipe,a.compcode,a.COMMCODE,wm_concat(a.ITEMCODE) ITEMCODE,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'            AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y''',
'            )',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'           AND trunc(a.DOCTDATE) BETWEEN next_day(sysdate, ''fri'')-6 AND   next_day(sysdate, ''fri'')',
'            group by a.compcode,TO_CHAR(a.DOCTDATE,''MMRRRR''),a.DOCTDATE,a.COMMCODE) a,',
'           (select distinct sum(b.SLTRGQTY) TARGET_QTY, b.compcode,b.BRANDCDE,case when TRGTDATE between to_date(''01/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''07/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''1-7'' ',
'       when TRGTDATE between to_date(''08/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''14/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''8-14''  ',
'       when TRGTDATE between to_date(''15/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''21/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''15-21'' ',
'       when TRGTDATE between to_date(''22/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''28/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''22-28''',
'       when TRGTDATE between to_date(''29/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''31/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''29-2''',
'       end pipe1 from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )',
'        --   AND trunc(b.TRGTDATE) BETWEEN next_day(sysdate, ''fri'')-6 AND   next_day(sysdate, ''fri'')',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE,b.TRGTDATE) b',
'             where a.compcode=b.compcode',
'           -- and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'')',
'            And a.pipe=b.pipe1',
'            and a.COMMCODE=b.BRANDCDE',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'group by a.compcode,a.Mon_year,pipe)S,(SELECT distinct MM,MON,MON_YEAR,MONTH ',
'FROM(SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM+17)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM orbrgs_rml.ACCOMPAR WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE) AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13)',
'                    UNION ALL',
'                    SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM+11)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM orbrgs_cvl.ACCOMPAR WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE) AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13)))DT',
'                    WHERE S.MON_YEAR=DT.MON_YEAR',
'                    order by dt.mm'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
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
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(760922121395257)
,p_region_id=>wwv_flow_api.id(54550256652716535)
,p_chart_type=>'bar'
,p_width=>'300'
,p_height=>'232'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'Target Vs Achievement No data found.'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(761289219395257)
,p_chart_id=>wwv_flow_api.id(760922121395257)
,p_seq=>10
,p_name=>'Target Vs Achivement'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(761071687395257)
,p_chart_id=>wwv_flow_api.id(760922121395257)
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
 p_id=>wwv_flow_api.id(761199420395257)
,p_chart_id=>wwv_flow_api.id(760922121395257)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61796227129007119)
,p_plug_name=>'Ground Stock Aging Report'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>141
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
'v_prev_bnk number := ''333333333'';',
' --v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_rows2    number := 0;',
' v_bank_rows3    number := 0;',
' v_bank_rows4    number := 0;',
' v_bank_rows5    number := 0;',
' v_bank_rows6    number := 0;',
' v_bank_rows7    number := 0;',
' v_bank_rows8    number := 0;',
' v_bank_rows9    number := 0;',
' v_bank_rows10    number := 0;',
' v_bank_rows11    number := 0;',
' v_bank_rows12    number := 0;',
' v_bank_total    number := 0;',
' v_bank_total1   number := 0;',
'Begin',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGeneratorbrndcat {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGeneratorbrndcat table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGeneratorbrndcat tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGeneratorbrndcat td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGeneratorbrndcat tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGeneratorbrndcat tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'',
' v_cnt := v_cnt + 1;',
' ',
'  --  If v_prev_bnk <> c1.Brand then',
'      ',
'--htp.p(initcap(c1.Brand));',
'/*htp.p(''<div id="divButtons1" name="divButtons1" style="align:right;">',
'    <input type="button" id="button1" name="Booking" onclick="printPage1()" value="Print"  style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158'
||') 100%) repeat scroll 0% 0%; border-radius: 4px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-decoration: none'
||'; text-shadow: 0px -1px 0px rgb(40, 57, 102);" />',
'',
'</div>'');*/',
'htp.p(''<div class="brandcategory1"  id="ex11"style="line-height: 16px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableAreaaging" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:10px;">',
'                <td>Model</td>',
'                <td>0-90</td>',
'                <td>91-180</td>',
'                <td>181-270</td>',
'                <td>271-360</td>',
'                <td>361-720</td>',
'                <td>721-1442</td>',
'                <td>1443-2884</td>',
'                <td>Grand Total</td>',
'              </tr>'');',
'                 For c2 in (select * from ( SELECT ',
' ',
'         e.itemcode,',
'         ( select NMCODDES from nmcodmas',
'  where compcode=:compcode',
'  and NMHRDCDE=''MOD''',
'  and nmsofcde=(select MODLCODE from nmitemas where itemcode=e.itemcode and compcode=:compcode) ) model_name,',
'(SELECT round(nvl(sysdate-doctdate,0))',
'            FROM nmenudtl',
'           WHERE     compcode = :compcode',
'                 AND updoctyp = ''GR''',
'                 AND warecode = ''W01''',
'                 AND engineno = e.engineno',
'                 AND vinnumbr = e.vinnumbr) nodage,',
'case when (SELECT round(sysdate-doctdate)',
'            FROM nmenudtl',
'           WHERE     compcode = :compcode',
'                 AND updoctyp = ''GR''',
'                 AND warecode = ''W01''',
'                 AND engineno = e.engineno',
'                 AND vinnumbr = e.vinnumbr) between 0 and 90 then',
'       ''0-90'' ',
'       when (SELECT round(sysdate-doctdate)',
'            FROM nmenudtl',
'           WHERE     compcode = :compcode',
'                 AND updoctyp = ''GR''',
'                 AND warecode = ''W01''',
'                 AND engineno = e.engineno',
'                 AND vinnumbr = e.vinnumbr) between 91 and 180 then',
'       ''91-180''  ',
'       when (SELECT round(sysdate-doctdate)',
'            FROM nmenudtl',
'           WHERE     compcode = :compcode',
'                 AND updoctyp = ''GR''',
'                 AND warecode = ''W01''',
'                 AND engineno = e.engineno',
'                 AND vinnumbr = e.vinnumbr) between 181 and 270 then',
'       ''181-270'' ',
'       when (SELECT round(sysdate-doctdate)',
'            FROM nmenudtl',
'           WHERE     compcode = :compcode',
'                 AND updoctyp = ''GR''',
'                 AND warecode = ''W01''',
'                 AND engineno = e.engineno',
'                 AND vinnumbr = e.vinnumbr) between 271 and 360 then',
'       ''271-360''',
'       when (SELECT round(sysdate-doctdate)',
'            FROM nmenudtl',
'           WHERE     compcode = :compcode',
'                 AND updoctyp = ''GR''',
'                 AND warecode = ''W01''',
'                 AND engineno = e.engineno',
'                 AND vinnumbr = e.vinnumbr) between 361 and 720 then',
'       ''361-720''',
'       when (SELECT round(sysdate-doctdate)',
'            FROM nmenudtl',
'           WHERE     compcode = :compcode',
'                 AND updoctyp = ''GR''',
'                 AND warecode = ''W01''',
'                 AND engineno = e.engineno',
'                 AND vinnumbr = e.vinnumbr) between 721 and 1442 then',
'       ''721-1442''',
'       when (SELECT round(sysdate-doctdate)',
'            FROM nmenudtl',
'           WHERE     compcode = :compcode',
'                 AND updoctyp = ''GR''',
'                 AND warecode = ''W01''',
'                 AND engineno = e.engineno',
'                 AND vinnumbr = e.vinnumbr) between 1443 and 2884 then',
'       ''1443-2884''',
'       end pipe',
'    FROM nmenudtl e, nmitemas a',
'   WHERE     e.compcode = :compcode',
'         AND a.compcode = e.compcode',
'         AND a.itemcode = e.itemcode',
'         AND nvl(e.trnsqnty,0)=0-- IS NULL',
'         AND e.docttype NOT IN (''BK'')',
'       /*   AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL)))*/',
'         --AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=a.compcode and PRODUCT_TYPE=a.ITEMMODL)                                  ',
'         and trim(upper(e.vinnumbr)) not in(select trim(upper(BATCHNUM)) from nmsalrec where compcode=:compcode and BATCHNUM=NVL (:p46, NVL (e.vinnumbr, ''0'')))',
'       --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=e.compcode and d.CABASECC=e.COSTCODE)',
'--ORDER BY nodage desc ',
') ',
'',
'PIVOT',
'(',
'  COUNT(nodage) Status',
'  FOR pipe IN ( ''0-90'' a,''91-180'' b,''181-270'' c,''271-360'' d,''361-720'' e,''721-1442'' f,''1443-2884'' g)',
'    ',
')',
'                ',
'                )',
'Loop',
'v_bank_total:= (nvl(c2.A_STATUS,0)+nvl(c2.B_STATUS,0)+nvl(c2.C_STATUS,0)+nvl(c2.D_STATUS,0)+nvl(c2.E_STATUS,0)+nvl(c2.F_STATUS,0));',
'htp.p(''',
'<tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'      <td style="width: 30%;text-align:left;font-size: 10px;">''||initcap(c2.model_name)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.A_STATUS,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.B_STATUS,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.C_STATUS,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.D_STATUS,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.E_STATUS,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.F_STATUS,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.G_STATUS,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||v_bank_total||''</td>',
'      ',
'    ',
''');',
' v_bank_rows := v_bank_rows +nvl(c2.A_STATUS,0);',
' --v_bank_rows1 := v_bank_rows1 +nvl(c2.A_POTENTIAL,0);',
' v_bank_rows2 := v_bank_rows2 +nvl(c2.B_STATUS,0);',
' --v_bank_rows3 := v_bank_rows3 +nvl(c2.B_POTENTIAL,0);',
' v_bank_rows4 := v_bank_rows4 +nvl(c2.C_STATUS,0);',
'-- v_bank_rows5 := v_bank_rows5 +nvl(c2.C_POTENTIAL,0);',
' v_bank_rows6 := v_bank_rows6 +nvl(c2.D_STATUS,0);',
'-- v_bank_rows7 := v_bank_rows7 +nvl(c2.D_POTENTIAL,0);',
' v_bank_rows8 := v_bank_rows8 +nvl(c2.E_STATUS,0);',
'-- v_bank_rows9 := v_bank_rows9 +nvl(c2.E_POTENTIAL,0);',
' v_bank_rows10:= v_bank_rows10 +nvl(c2.F_STATUS,0);',
' v_bank_rows12:= v_bank_rows12 +nvl(c2.G_STATUS,0);',
' v_bank_rows11:= v_bank_rows11 +v_bank_total;',
' ',
'              ',
' end loop;',
' ',
' --  End If;',
'--v_bank_rows1 := v_bank_rows1 +c1.no_of_item;',
'--  v_bank_total1 := v_bank_total1 + c1.AMOUNT;',
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="1" style="text-align:right;">Summary</td>',
'                <td style="width: 10%;text-align:center;font-size: 10px;">''||v_bank_rows||''</td>',
'                    <td style="width: 10%;text-align:center;font-size: 10px;">''||v_bank_rows2||''</td>',
'                    <td style="width: 10%;text-align:center;font-size: 10px;">''||v_bank_rows4||''</td>',
'                    <td style="width: 10%;text-align:center;font-size: 10px;">''||v_bank_rows6||''</td>',
'                    <td style="width: 10%;text-align:center;font-size: 10px;">''||v_bank_rows8||''</td>',
'                    <td style="width: 10%;text-align:center;font-size: 10px;">''||v_bank_rows10||''</td>',
'                    <td style="width: 10%;text-align:center;font-size: 10px;">''||v_bank_rows12||''</td>',
'                    <td style="width: 10%;text-align:center;font-size: 10px;">''||v_bank_rows11||''</td>',
'                    ',
'              </tr>              ',
'            '');',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows := 0;',
'            v_bank_rows1 := 0;',
'            v_bank_rows2 := 0;',
'            v_bank_rows3 := 0;',
'            v_bank_rows4 := 0;',
'            v_bank_rows5 := 0;',
'            v_bank_rows6 := 0;',
'            v_bank_rows7 := 0;',
'            v_bank_rows8 := 0;',
'            v_bank_rows9 := 0;',
'            v_bank_rows10 := 0;',
'            v_bank_rows11 := 0;',
'            v_bank_rows12 := 0;',
'          v_bank_total := 0;',
'--End Loop;',
'',
'',
'',
'End;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65001795654961439)
,p_plug_name=>'Ground Stock Aging Chart'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>231
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null link,model_name label,A_STATUS "0-90",B_STATUS "91-180",C_STATUS "181-270",D_STATUS "271-360",E_STATUS "361-720",F_STATUS "721-1442" from ( SELECT ',
' ',
'         e.itemcode,',
'         ( select NMCODDES from nmcodmas',
'  where compcode=:compcode',
'  and NMHRDCDE=''MOD''',
'  and nmsofcde=(select MODLCODE from nmitemas where itemcode=e.itemcode and compcode=:compcode) ) model_name,',
'(SELECT round(nvl(sysdate-doctdate,0))',
'            FROM nmenudtl',
'           WHERE     compcode = :compcode',
'                 AND updoctyp = ''GR''',
'                 AND warecode = ''W01''',
'                 AND engineno = e.engineno',
'                 AND vinnumbr = e.vinnumbr) nodage,',
'case when (SELECT round(sysdate-doctdate)',
'            FROM nmenudtl',
'           WHERE     compcode = :compcode',
'                 AND updoctyp = ''GR''',
'                 AND warecode = ''W01''',
'                 AND engineno = e.engineno',
'                 AND vinnumbr = e.vinnumbr) between 0 and 90 then',
'       ''0-90'' ',
'       when (SELECT round(sysdate-doctdate)',
'            FROM nmenudtl',
'           WHERE     compcode = :compcode',
'                 AND updoctyp = ''GR''',
'                 AND warecode = ''W01''',
'                 AND engineno = e.engineno',
'                 AND vinnumbr = e.vinnumbr) between 91 and 180 then',
'       ''91-180''  ',
'       when (SELECT round(sysdate-doctdate)',
'            FROM nmenudtl',
'           WHERE     compcode = :compcode',
'                 AND updoctyp = ''GR''',
'                 AND warecode = ''W01''',
'                 AND engineno = e.engineno',
'                 AND vinnumbr = e.vinnumbr) between 181 and 270 then',
'       ''181-270'' ',
'       when (SELECT round(sysdate-doctdate)',
'            FROM nmenudtl',
'           WHERE     compcode = :compcode',
'                 AND updoctyp = ''GR''',
'                 AND warecode = ''W01''',
'                 AND engineno = e.engineno',
'                 AND vinnumbr = e.vinnumbr) between 271 and 360 then',
'       ''271-360''',
'       when (SELECT round(sysdate-doctdate)',
'            FROM nmenudtl',
'           WHERE     compcode = :compcode',
'                 AND updoctyp = ''GR''',
'                 AND warecode = ''W01''',
'                 AND engineno = e.engineno',
'                 AND vinnumbr = e.vinnumbr) between 361 and 720 then',
'       ''361-720''',
'       when (SELECT round(sysdate-doctdate)',
'            FROM nmenudtl',
'           WHERE     compcode = :compcode',
'                 AND updoctyp = ''GR''',
'                 AND warecode = ''W01''',
'                 AND engineno = e.engineno',
'                 AND vinnumbr = e.vinnumbr) between 721 and 1442 then',
'       ''721-1442''',
'       when (SELECT round(sysdate-doctdate)',
'            FROM nmenudtl',
'           WHERE     compcode = :compcode',
'                 AND updoctyp = ''GR''',
'                 AND warecode = ''W01''',
'                 AND engineno = e.engineno',
'                 AND vinnumbr = e.vinnumbr) between 1443 and 2884 then',
'       ''1443-2884''',
'       end pipe',
'    FROM nmenudtl e, nmitemas a',
'   WHERE     e.compcode = :compcode',
'         AND a.compcode = e.compcode',
'         AND a.itemcode = e.itemcode',
'         AND nvl(e.trnsqnty,0)=0-- IS NULL',
'         AND e.docttype NOT IN (''BK'')                               ',
'         and trim(upper(e.vinnumbr)) not in(select trim(upper(BATCHNUM)) from nmsalrec where compcode=:compcode and BATCHNUM=NVL (:p46, NVL (e.vinnumbr, ''0'')))',
'   ',
'',
') ',
'',
'PIVOT',
'(',
'  COUNT(nodage) Status',
'  FOR pipe IN ( ''0-90'' a,''91-180'' b,''181-270'' c,''271-360'' d,''361-720'' e,''721-1440'' f)',
'    ',
')'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(760548290395257)
,p_region_id=>wwv_flow_api.id(65001795654961439)
,p_chart_type=>'bar'
,p_width=>'1100'
,p_height=>'600'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'on'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'end'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(760829968395257)
,p_chart_id=>wwv_flow_api.id(760548290395257)
,p_seq=>10
,p_name=>'Series 1'
,p_max_row_count=>50
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'insideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(760601621395257)
,p_chart_id=>wwv_flow_api.id(760548290395257)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
 p_id=>wwv_flow_api.id(760795590395257)
,p_chart_id=>wwv_flow_api.id(760548290395257)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_min=>0
,p_max=>1
,p_format_type=>'percent'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61797143889007128)
,p_plug_name=>'print ground stock aging chart'
,p_parent_plug_id=>wwv_flow_api.id(65001795654961439)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="divButtons" name="divButtons" style="align:right;">',
'    <input type="button" id="button" name="Booking" onclick="printPage();" value="Print"  style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158)'
||' 100%) repeat scroll 0% 0%; border-radius: 4px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-decoration: none;'
||' text-shadow: 0px -1px 0px rgb(40, 57, 102);" />',
'',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66259188378715296)
,p_plug_name=>'Collection Vs Achivement'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>221
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66259346329715298)
,p_plug_name=>'Collection Vs Achievement &P1_CURRENTDATE.'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>101
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66259261411715297)
,p_plug_name=>'Current Month Collection Vs achievement Report'
,p_parent_plug_id=>wwv_flow_api.id(66259346329715298)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_rows2    number := 0;',
' v_bank_total    number := 0;',
'v_error_page  number := 7;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P9998_START_DATE||''&P12=''||:P9998_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator3 {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator3 table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator3 tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator3 tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator3 tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator3 td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator3 tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator3 tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator3 tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator3 tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator3 tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P9998_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P9998_COMPADD.</font>',
'</div></br>'');*/',
'For c1 in (',
'select distinct a.compcode,a.COMMCODE,a.brand,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  a.compcode,a.COMMCODE,c.brand brand,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'            AND c.FINISHGD =''Y''',
'            )',
'         and upper(a.compcode) != ''XXX''',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'           AND trunc(a.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'            group by a.compcode,a.COMMCODE,c.brand) a,',
'           ( select distinct sum(b.SLTRGQTY) TARGET_QTY, b.compcode,b.BRANDCDE  from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )',
'           AND trunc(b.TIMSTAMP) BETWEEN TRUNC (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), ''MONTH''))',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE) b',
'            where a.compcode=b.compcode(+)',
'           -- and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'') ',
'            and a.COMMCODE=b.BRANDCDE(+)',
'                )',
'Loop',
'',
' v_cnt := v_cnt + 1;',
' ',
'    If v_prev_bnk <> c1.Brand then',
'      ',
'',
'htp.p(initcap(c1.Brand)||''</br>'');',
'',
'        htp.p(''<div class="brandcategory4"  id="ex4"style="line-height: 8px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:7px;">',
'                <td style="width: 40%;background-color:#38ACEC;text-align:center;font-size: 10px;"></td>',
'                <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;"></td>',
'              </tr>''); ',
'',
'For c2 in (select DISTINCT num, label,value from (',
'SELECT 1 num,',
'       ''Collection Target'' LABEL,',
'       monthly  VALUE',
'FROM  (select value monthly',
'from ',
'    ( ',
'        select distinct sum(nvl(TARGET_QTY,0)) value  from( ',
'        select distinct TO_CHAR(TRGTDATE,''MMRRRR'') Mon_year,sum( b.TARGTQTY) TARGET_QTY,sum( b.ACHIVQTY) ACHIVQTY,b.compcode,b.ITEMCODE,b.BRANDCDE  from orbrgs_rml.target_achivement b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             and MODELCDE IS NULL',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'          --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'           AND trunc(b.ENDDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'            group by b.compcode,b.ITEMCODE,b.BRANDCDE,b.TRGTDATE',
'      ',
') ))',
'UNION ALL',
'',
'SELECT 2 num,',
'       ''Achievement'' LABEL,',
'       monthly  VALUE',
'FROM  (select sum(value) monthly',
'from ',
'    ( ',
'    select distinct nvl(ACHIVQTY,0) value  from(',
' select distinct TO_CHAR(TRGTDATE,''MMRRRR'') Mon_year,sum( b.TARGTQTY) TARGET_QTY,sum( b.ACHIVQTY) ACHIVQTY,b.compcode,b.ITEMCODE,b.BRANDCDE  from orbrgs_rml.target_achivement b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             and MODELCDE IS NULL',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'          --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'           AND trunc(b.ENDDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'            group by b.compcode,b.ITEMCODE,b.BRANDCDE,b.TRGTDATE',
'      ',
') ))',
'UNION ALL',
'',
'SELECT 3 num,',
'       ''Achievement %'' LABEL,',
'       monthly  VALUE',
'FROM  (select value monthly',
'from ',
'    ( ',
'    select distinct round(nvl(ACHIVQTY,0)/nvl(TARGET_QTY,1)*100,2) value  from(',
' select distinct TO_CHAR(TRGTDATE,''MMRRRR'') Mon_year,sum( b.TARGTQTY) TARGET_QTY,sum( b.ACHIVQTY) ACHIVQTY,b.compcode,b.ITEMCODE,b.BRANDCDE  from orbrgs_rml.target_achivement b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             and MODELCDE IS NULL',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'           AND trunc(b.ENDDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'            group by b.compcode,b.ITEMCODE,b.BRANDCDE,b.TRGTDATE',
'      ',
') ))',
')',
'order by 1',
'',
'',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'     <tr style="max-height:3px;line-height: 7px;font-size: 10px;">',
'    <td style="width: 40%;text-align:left;font-size: 10px;">''||c2.label||''</td>',
'    <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.value||''</td>',
'  </tr>',
'    '');',
'  v_bank_rows := v_bank_rows +c2.value; ',
' -- v_bank_rows1 := v_bank_rows1 +c1.ACHIVEMENT; ',
' -- v_bank_rows2 := v_bank_rows2 +c1.Percent; ',
'End Loop;',
' End If;',
'             /* htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="1" style="text-align:right;">Total</td>',
'                <td style="width: 20%;text-align:center;font-size: 10px;">''||v_bank_rows||''</td>',
'              </tr>              ',
'            '');*/',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows := 0;',
'            v_bank_rows1 := 0;',
'          v_bank_total := 0;',
'End Loop;',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="2" style="text-align:right;">Total</td>',
'                <td style="width: 60%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                <td style="width: 60%;text-align:right;font-size: 10px;">''||to_char(v_bank_total1,''99,99,99,99,99,99,999.99'')||''</td>',
'              </tr>              ',
'            '');'))
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66259587230715300)
,p_plug_name=>'Collection Vs Achivement'
,p_parent_plug_id=>wwv_flow_api.id(66259261411715297)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>41
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  null,DT.MON,ACHIVQTY "Achieve",TARGET_QTY "Target",round((nvl(S.ACHIVQTY,0)/nvl(S.TARGET_QTY,1))*100,2) "%" FROM',
'    ( select distinct TO_CHAR(ENDDATE,''MMRRRR'') Mon_year,sum( b.TARGTQTY) TARGET_QTY,sum( b.ACHIVQTY) ACHIVQTY,b.compcode,b.BRANDCDE  from orbrgs_rml.target_achivement b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             and MODELCDE IS NULL',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'          --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'           AND trunc(b.ENDDATE) BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'            group by b.compcode,b.BRANDCDE,TO_CHAR(ENDDATE,''MMRRRR''))S,(SELECT distinct MM,MON,MON_YEAR,MONTH ',
'FROM(SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM+17)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM orbrgs_rml.ACCOMPAR WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE) AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13)',
'                    UNION ALL',
'                    SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM+13)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM orbrgs_cvl.ACCOMPAR WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE) AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13)))DT',
'                    WHERE S.MON_YEAR=DT.MON_YEAR',
'                    order by dt.mm'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(760117430395257)
,p_region_id=>wwv_flow_api.id(66259587230715300)
,p_chart_type=>'bar'
,p_width=>'300'
,p_height=>'232'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'Collection Vs Achievement No data found.'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(760423663395257)
,p_chart_id=>wwv_flow_api.id(760117430395257)
,p_seq=>10
,p_name=>'Collection Vs Achivement'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(760246095395257)
,p_chart_id=>wwv_flow_api.id(760117430395257)
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
 p_id=>wwv_flow_api.id(760346322395257)
,p_chart_id=>wwv_flow_api.id(760117430395257)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66259891278715303)
,p_plug_name=>'Collection - YTD'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>111
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66260057641715305)
,p_plug_name=>'Current Year Collection Vs Achivement Report'
,p_parent_plug_id=>wwv_flow_api.id(66259891278715303)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_rows2    number := 0;',
' v_bank_total    number := 0;',
'v_error_page  number := 8;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P9998_START_DATE||''&P12=''||:P9998_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator3 {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator3 table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator3 tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator3 tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator3 tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator3 td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator3 tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator3 tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator3 tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator3 tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator3 tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P9998_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P9998_COMPADD.</font>',
'</div></br>'');*/',
'For c1 in (',
'select distinct a.compcode,a.COMMCODE,a.brand,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  a.compcode,a.COMMCODE,c.brand brand,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'         and upper(a.compcode) != ''XXX''',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'           AND trunc(a.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'            group by a.compcode,a.COMMCODE,c.brand) a,',
'           ( select distinct sum( b.TARGET_QTY) TARGET_QTY, b.compcode,b.COMMCODE  from orbrgs_rml.nmslsfst b',
'               where b.compcode=:compcode',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.COMMCODE) b',
'            where a.compcode=b.compcode(+)',
'            and a.COMMCODE=b.COMMCODE(+)',
'                )',
'Loop',
'',
' v_cnt := v_cnt + 1;',
' ',
'    If v_prev_bnk <> c1.Brand then',
'      ',
'',
'htp.p(initcap(c1.Brand)||''</br>'');',
'',
'        htp.p(''<div class="brandcategory4"  id="ex4"style="line-height: 8px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:7px;">',
'                <td style="width: 40%;background-color:#38ACEC;text-align:center;font-size: 10px;"></td>',
'                <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;"></td>',
'              </tr>''); ',
'',
'For c2 in (select DISTINCT num, label,value from (',
'SELECT 1 num,',
'       ''Target'' LABEL,',
'       monthly  VALUE',
'FROM  (select value monthly',
'from ',
'    (',
'    select distinct sum(nvl(TARGET_QTY,0)) value  from( ',
'        select distinct TO_CHAR(TRGTDATE,''MMRRRR'') Mon_year,sum( b.TARGTQTY) TARGET_QTY,sum( b.ACHIVQTY) ACHIVQTY,b.compcode,b.ITEMCODE,b.BRANDCDE  from orbrgs_rml.target_achivement b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'            -- and MODELCDE IS NULL',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'           AND trunc(ENDDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'            group by b.compcode,b.ITEMCODE,b.BRANDCDE,b.TRGTDATE',
'      ',
') ))',
'UNION ALL',
'',
'SELECT 2 num,',
'       ''Achievement'' LABEL,',
'       monthly  VALUE',
'FROM  (select sum(value) monthly',
'from ',
'    ( ',
'    select distinct nvl(ACHIVQTY,0) value  from(',
' select distinct TO_CHAR(TRGTDATE,''MMRRRR'') Mon_year,sum( b.TARGTQTY) TARGET_QTY,sum( b.ACHIVQTY) ACHIVQTY,b.compcode,b.ITEMCODE,b.BRANDCDE  from orbrgs_rml.target_achivement b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'            -- and MODELCDE IS NULL',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'          --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'           AND trunc(ENDDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'            group by b.compcode,b.ITEMCODE,b.BRANDCDE,b.TRGTDATE',
'      ',
') ))',
'UNION ALL',
'',
'SELECT 3 num,',
'       ''Achievement %'' LABEL,',
'       monthly  VALUE',
'FROM  (select sum(value) monthly',
'from ',
'    ( ',
'    select distinct round(nvl(ACHIVQTY,0)/nullif(TARGET_QTY,0)*100,2) value  from(',
' select distinct TO_CHAR(TRGTDATE,''MMRRRR'') Mon_year,sum( b.TARGTQTY) TARGET_QTY,sum( b.ACHIVQTY) ACHIVQTY,b.compcode from orbrgs_rml.target_achivement b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'            -- and MODELCDE IS NULL',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'          --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'           AND trunc(ENDDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'            group by b.compcode,TO_CHAR(TRGTDATE,''MMRRRR'')',
'      ',
') ))',
')',
'order by 1 ',
'',
'',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'     <tr style="max-height:3px;line-height: 7px;font-size: 10px;">',
'    <td style="width: 40%;text-align:left;font-size: 10px;">''||c2.label||''</td>',
'    <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.value||''</td>',
'  </tr>',
'    '');',
'  v_bank_rows := v_bank_rows +c2.value; ',
' -- v_bank_rows1 := v_bank_rows1 +c1.ACHIVEMENT; ',
' -- v_bank_rows2 := v_bank_rows2 +c1.Percent; ',
'End Loop;',
' End If;',
'             /* htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="1" style="text-align:right;">Total</td>',
'                <td style="width: 20%;text-align:center;font-size: 10px;">''||v_bank_rows||''</td>',
'              </tr>              ',
'            '');*/',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows := 0;',
'            v_bank_rows1 := 0;',
'          v_bank_total := 0;',
'End Loop;',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="2" style="text-align:right;">Total</td>',
'                <td style="width: 60%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                <td style="width: 60%;text-align:right;font-size: 10px;">''||to_char(v_bank_total1,''99,99,99,99,99,99,999.99'')||''</td>',
'              </tr>              ',
'            '');'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66260190594715306)
,p_plug_name=>'Collection Vs Achivement'
,p_parent_plug_id=>wwv_flow_api.id(66260057641715305)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  null,NULL Name,ACHIVQTY "Achieve",TARGET_QTY "Target",round((nvl(S.ACHIVQTY,0)/nvl(S.TARGET_QTY,1))*100,2) "%" FROM',
'    ( select distinct sum( b.TARGTQTY) TARGET_QTY,sum( b.ACHIVQTY) ACHIVQTY,b.compcode,b.BRANDCDE  from orbrgs_rml.target_achivement b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'           --  and MODELCDE IS NULL',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'                          AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'          --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'           AND trunc(ENDDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''), 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'            group by b.compcode,b.BRANDCDE ) S'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>',round((nvl(S.no_of_item,0)/nvl(S.TARGET_QTY,1))*100,2) "Achive %"'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(759795821395257)
,p_region_id=>wwv_flow_api.id(66260190594715306)
,p_chart_type=>'bar'
,p_width=>'300'
,p_height=>'232'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(760081331395257)
,p_chart_id=>wwv_flow_api.id(759795821395257)
,p_seq=>10
,p_name=>'Collection Vs Achivement'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(759884474395257)
,p_chart_id=>wwv_flow_api.id(759795821395257)
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
 p_id=>wwv_flow_api.id(759900180395257)
,p_chart_id=>wwv_flow_api.id(759795821395257)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66259973508715304)
,p_plug_name=>'Current Week Collection Vs achievement'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>121
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66260425235715309)
,p_plug_name=>'Current Week Collection Vs Achivement Report'
,p_parent_plug_id=>wwv_flow_api.id(66259973508715304)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_rows2    number := 0;',
' v_bank_total    number := 0;',
'v_error_page  number := 9;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P9998_START_DATE||''&P12=''||:P9998_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator3 {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator3 table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator3 tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator3 table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator3 tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator3 tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator3 td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator3 tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator3 tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator3 tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator3 tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator3 tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator3 tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P9998_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P9998_COMPADD.</font>',
'</div></br>'');*/',
'For c1 in (',
'select distinct a.compcode,a.COMMCODE,a.brand,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  a.compcode,a.COMMCODE,c.brand brand,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'         and upper(a.compcode) != ''XXX''',
'            AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'           AND trunc(a.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'            group by a.compcode,a.COMMCODE,c.brand) a,',
'           ( select distinct sum(b.SLTRGQTY) TARGET_QTY, b.compcode,b.BRANDCDE  from orbrgs_rml.nmsmntrg b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and BRANDCDE=decode(:BRAND_CODE,''A'',BRANDCDE,:BRAND_CODE))',
'            )',
'           AND trunc(b.TRGTDATE)  BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.BRANDCDE) b',
'            where a.compcode=b.compcode(+)',
'           -- and a.ITEMCODE like(''%''||b.ITEMCODE(+)||''%'') ',
'            and a.COMMCODE=b.BRANDCDE(+)',
'                )',
'Loop',
'',
' v_cnt := v_cnt + 1;',
' ',
'    If v_prev_bnk <> c1.Brand then',
'      ',
'',
'htp.p(initcap(c1.Brand)||''</br>'');',
'',
'        htp.p(''<div class="brandcategory4"  id="ex4"style="line-height: 8px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:7px;">',
'              <td style="width: 40%;background-color:#38ACEC;text-align:center;font-size: 10px;"></td>',
'              <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">1st Week</td>',
'              <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">2nd Week</td>',
'              <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">3rd Week</td>',
'              <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">4th Week</td>',
'              <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">5th Week</td>',
'              </tr>''); ',
'',
'For c2 in (select * from (select num, label,value,pipe from (',
'SELECT 1 num,',
'       ''Target'' LABEL,',
'       monthly  VALUE',
'       ,pipe',
'FROM  (select value monthly,pipe',
'from ',
'    (',
'    select distinct nvl(TARGET_QTY,0) value,pipe  from(',
' select distinct TO_CHAR(ENDDATE,''MMRRRR'') Mon_year,case when ENDDATE between to_date(''01/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''07/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''1-7'' ',
'       when ENDDATE between to_date(''08/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''14/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''8-14''  ',
'       when ENDDATE between to_date(''15/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''21/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''15-21'' ',
'       when ENDDATE between to_date(''22/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''28/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''22-28''',
'       end pipe,sum( b.TARGTQTY) TARGET_QTY,sum( b.ACHIVQTY) ACHIVQTY,b.compcode  from orbrgs_rml.target_achivement b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'          --   and MODELCDE IS NULL',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'                         AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'          --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'           AND trunc(ENDDATE)  BETWEEN TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'            group by b.compcode,b.ENDDATE',
'      ',
') ) )',
'UNION ALL',
'',
'SELECT 2 num,',
'       ''Achievement'' LABEL,',
'       monthly  VALUE',
'       ,pipe',
'FROM  (select value monthly, pipe',
'from ',
'    ( ',
'    select nvl(ACHIVQTY,0) value,pipe  from(',
' select distinct TO_CHAR(ENDDATE,''MMRRRR'') Mon_year,case when ENDDATE between to_date(''01/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''07/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''1-7'' ',
'       when ENDDATE between to_date(''08/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''14/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''8-14''  ',
'       when ENDDATE between to_date(''15/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''21/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''15-21'' ',
'       when ENDDATE between to_date(''22/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''28/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''22-28''',
'       end pipe,sum( b.TARGTQTY) TARGET_QTY,sum( b.ACHIVQTY) ACHIVQTY,b.compcode from orbrgs_rml.target_achivement b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'           --  and MODELCDE IS NULL',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'                         AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'           AND trunc(ENDDATE) BETWEEN  TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'            group by b.compcode,b.ENDDATE',
'      ',
') ) )',
'UNION ALL',
'',
'SELECT 3 num,',
'       ''Achievement %'' LABEL,',
'       monthly  VALUE',
'       ,pipe',
'FROM  (select value monthly,pipe',
'from ',
'    ( ',
'    select distinct round(nvl(ACHIVQTY,0)/nvl(TARGET_QTY,1)*100,2) value,pipe  from(',
' select distinct TO_CHAR(ENDDATE,''MMRRRR'') Mon_year,case when ENDDATE between to_date(''01/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''07/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''1-7'' ',
'       when ENDDATE between to_date(''08/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''14/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''8-14''  ',
'       when ENDDATE between to_date(''15/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''21/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''15-21'' ',
'       when ENDDATE between to_date(''22/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') and to_date(''28/''||substr(trunc(sysdate,''Month''),4),''DD-MM-RRRR'') then',
'       ''22-28''',
'       end pipe,sum( b.TARGTQTY) TARGET_QTY,sum( b.ACHIVQTY) ACHIVQTY,b.compcode  from orbrgs_rml.target_achivement b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'         --    and MODELCDE IS NULL',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'                         AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))',
'AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'           AND trunc(ENDDATE) BETWEEN   TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH'') ',
'       AND LAST_DAY (TRUNC (TO_DATE(SYSDATE,''DD-MM-RRRR''), ''MONTH''))',
'            group by b.compcode,b.ENDDATE',
')) )',
'))',
'PIVOT',
'(',
'  sum(value) Potential',
'  FOR pipe IN ( ''1-7'' a,''8-14'' b,''15-21'' c,''22-28'' d,''29-31'' e)',
')',
'order by 1 ',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'     <tr style="max-height:3px;line-height: 7px;font-size: 10px;">',
'    <td style="width: 40%;text-align:left;font-size: 10px;">''||c2.label||''</td>',
'    <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.A_POTENTIAL||''</td>',
'        <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.B_POTENTIAL||''</td>',
'        <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.C_POTENTIAL||''</td>',
'        <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.D_POTENTIAL||''</td>',
'        <td style="width: 20%;text-align:center;font-size: 10px;">''||c2.E_POTENTIAL||''</td>',
'  </tr>',
'    '');',
'  v_bank_rows := v_bank_rows +c2.A_POTENTIAL; ',
' -- v_bank_rows1 := v_bank_rows1 +c1.ACHIVEMENT; ',
' -- v_bank_rows2 := v_bank_rows2 +c1.Percent; ',
'End Loop;',
' End If;',
'             /* htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="1" style="text-align:right;">Total</td>',
'                <td style="width: 20%;text-align:center;font-size: 10px;">''||v_bank_rows||''</td>',
'              </tr>              ',
'            '');*/',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows := 0;',
'            v_bank_rows1 := 0;',
'          v_bank_total := 0;',
'End Loop;',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="2" style="text-align:right;">Total</td>',
'                <td style="width: 60%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                <td style="width: 60%;text-align:right;font-size: 10px;">''||to_char(v_bank_total1,''99,99,99,99,99,99,999.99'')||''</td>',
'              </tr>              ',
'            '');'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66260539243715310)
,p_plug_name=>'Collection Vs Achivement'
,p_parent_plug_id=>wwv_flow_api.id(66260425235715309)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>71
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  null,DT.MON,ACHIVQTY "Achieve",TARGET_QTY "Target",round((nvl(S.ACHIVQTY,0)/nvl(S.TARGET_QTY,1))*100,2) "%" FROM',
'    ( select distinct TO_CHAR(ENDDATE,''MMRRRR'') Mon_year,sum( b.TARGTQTY) TARGET_QTY,sum( b.ACHIVQTY) ACHIVQTY,b.compcode,b.ITEMCODE,b.BRANDCDE  from orbrgs_rml.target_achivement b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             and MODELCDE IS NULL',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'           -- AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'          --  AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'           AND trunc(b.ENDDATE) BETWEEN next_day(sysdate, ''fri'')-6 AND   next_day(sysdate, ''fri'')',
'            group by b.compcode,b.ITEMCODE,b.BRANDCDE,b.ENDDATE)S,(SELECT distinct MM,MON,MON_YEAR,MONTH ',
'FROM(SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM+17)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM orbrgs_rml.ACCOMPAR WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE) AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13)',
'                    UNION ALL',
'                    SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM+11)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM orbrgs_cvl.ACCOMPAR WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE) AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13)))DT',
'                    WHERE S.MON_YEAR=DT.MON_YEAR',
'                    order by dt.mm'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(759342725395257)
,p_region_id=>wwv_flow_api.id(66260539243715310)
,p_chart_type=>'bar'
,p_width=>'300'
,p_height=>'232'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'Collection Vs achievement No data found.'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(759691766395257)
,p_chart_id=>wwv_flow_api.id(759342725395257)
,p_seq=>10
,p_name=>'Collection Vs Achivement'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(759405335395257)
,p_chart_id=>wwv_flow_api.id(759342725395257)
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
 p_id=>wwv_flow_api.id(759511230395257)
,p_chart_id=>wwv_flow_api.id(759342725395257)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69817731711316051)
,p_plug_name=>'Location wise Pipeline Status Summary'
,p_parent_plug_id=>wwv_flow_api.id(45196211691775311)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>241
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
'v_prev_bnk number := ''333333333'';',
' --v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_rows2    number := 0;',
' v_bank_rows3    number := 0;',
' v_bank_rows4    number := 0;',
' v_bank_rows5    number := 0;',
' v_bank_rows6    number := 0;',
' v_bank_rows7    number := 0;',
' v_bank_rows8    number := 0;',
' v_bank_rows9    number := 0;',
' v_bank_rows10    number := 0;',
' v_bank_rows11    number := 0;',
' v_bank_total    number := 0;',
' v_bank_total1   number := 0;',
'Begin',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGeneratorbrndcat {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGeneratorbrndcat table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGeneratorbrndcat tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGeneratorbrndcat td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGeneratorbrndcat tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGeneratorbrndcat tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'',
' v_cnt := v_cnt + 1;',
' ',
'  --  If v_prev_bnk <> c1.Brand then',
'      ',
'--htp.p(initcap(c1.Brand));',
'/*htp.p(''<div id="divButtons1" name="divButtons1" style="align:right;">',
'    <input type="button" id="button1" name="Booking" onclick="printPage1()" value="Print"  style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158'
||') 100%) repeat scroll 0% 0%; border-radius: 4px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-decoration: none'
||'; text-shadow: 0px -1px 0px rgb(40, 57, 102);" />',
'',
'</div>'');*/',
'htp.p(''<div class="brandcategory1"  id="ex11"style="line-height: 16px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:10px;">',
'                <td>Location</td>',
'                <td>Sales Executive</td>',
'                <td>Product Type</td>',
'                <td>Pending Customer</td>',
'                <td>Unit</td>',
'                <td>Confirmed Customer</td>',
'                <td>Unit</td>',
'                <td>Finance Waited Customer</td>',
'                <td>Unit</td>',
'                <td>Finance Cleared Customer</td>',
'                <td>Unit</td>',
'                <td>Retail Customer</td>',
'                <td>Unit</td>',
'                <td>Lost Customer</td>',
'                <td>Unit</td>',
'              </tr>'');',
'                 For c2 in (SELECT * FROM',
'(',
'  SELECT b.AREA_NAME_TREE_TYPE AREANAME,case when m.PIPLNSTS=''001'' then',
'       ''Pending'' ',
'       when m.PIPLNSTS=''002'' then',
'       ''Confirmed''  ',
'       when m.PIPLNSTS=''003'' then',
'       ''Finance Awaited(FA)'' ',
'       when m.PIPLNSTS=''004'' then',
'       ''Finance Cleared(FC)''',
'       when m.PIPLNSTS=''005'' then',
'       ''Retail(R)''',
'       when m.PIPLNSTS=''006'' then',
'       ''Lost(L)''',
'       end pipe,  m.SMANCODE,s.SMANNAME,m.NMPRDTYP,',
'       (select distinct s.nmcoddes',
'        from nmcodmas s ',
'        where s.compcode=:compcode',
'        and s.modlcode=''NM''',
'        and s.nmhrdcde = ''PRD''',
'        and S.NMSOFCDE = m.NMPRDTYP) Product_Type,',
'       ''nmpiptrc'' report_name,',
'       m.SALES_POTENTIAL SALES_POTENTIAL',
'  FROM nmcusvlg m,VW_NMWHZNMAS b,nmsmnmas s  ',
'where m.compcode=b.COMPCODE',
'and m.WHSZONFK=b.WHSZONPK',
'and M.SMANCODE=S.SMANCODE',
'and M.COMPCODE=S.COMPCODE',
'AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL))))',
'PIVOT',
'(',
'  COUNT(pipe) Status,sum(SALES_POTENTIAL) Potential',
'  FOR pipe IN ( ''Pending'' a,''Confirmed'' b,''Finance Awaited(FA)'' c,''Finance Cleared(FC)'' d,''Retail(R)'' e,''Lost(L)'' f)',
')',
'ORDER BY AREANAME                     ',
'                )',
'Loop',
'htp.p(''',
'<tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'      <td style="width: 30%;text-align:left;font-size: 10px;">''||initcap(c2.AREANAME)||''</td>',
'      <td style="width: 30%;text-align:left;font-size: 10px;">''||c2.SMANNAME||''</td>',
'      <td style="width: 20%;text-align:left;font-size: 10px;">''||c2.Product_Type||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.A_STATUS,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.A_POTENTIAL,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.B_STATUS,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.B_POTENTIAL,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.C_STATUS,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.C_POTENTIAL,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.D_STATUS,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.D_POTENTIAL,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.E_STATUS,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.E_POTENTIAL,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.F_STATUS,0)||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||nvl(c2.F_POTENTIAL,0)||''</td>',
''');',
' v_bank_rows := v_bank_rows +nvl(c2.A_STATUS,0);',
' v_bank_rows1 := v_bank_rows1 +nvl(c2.A_POTENTIAL,0);',
' v_bank_rows2 := v_bank_rows2 +nvl(c2.B_STATUS,0);',
' v_bank_rows3 := v_bank_rows3 +nvl(c2.B_POTENTIAL,0);',
' v_bank_rows4 := v_bank_rows4 +nvl(c2.C_STATUS,0);',
' v_bank_rows5 := v_bank_rows5 +nvl(c2.C_POTENTIAL,0);',
' v_bank_rows6 := v_bank_rows6 +nvl(c2.D_STATUS,0);',
' v_bank_rows7 := v_bank_rows7 +nvl(c2.D_POTENTIAL,0);',
' v_bank_rows8 := v_bank_rows8 +nvl(c2.E_STATUS,0);',
' v_bank_rows9 := v_bank_rows9 +nvl(c2.E_POTENTIAL,0);',
' v_bank_rows10:= v_bank_rows10 +nvl(c2.F_STATUS,0);',
' v_bank_rows11:= v_bank_rows11 +nvl(c2.F_POTENTIAL,0);',
'              ',
' end loop;',
' ',
' --  End If;',
'--v_bank_rows1 := v_bank_rows1 +c1.no_of_item;',
'--  v_bank_total1 := v_bank_total1 + c1.AMOUNT;',
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="3" style="text-align:right;">Summary</td>',
'                <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows2||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows3||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows4||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows5||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows6||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows7||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows8||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows9||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows10||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows11||''</td>',
'              </tr>              ',
'            '');',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows := 0;',
'            v_bank_rows1 := 0;',
'            v_bank_rows2 := 0;',
'            v_bank_rows3 := 0;',
'            v_bank_rows4 := 0;',
'            v_bank_rows5 := 0;',
'            v_bank_rows6 := 0;',
'            v_bank_rows7 := 0;',
'            v_bank_rows8 := 0;',
'            v_bank_rows9 := 0;',
'            v_bank_rows10 := 0;',
'            v_bank_rows11 := 0;',
'        --  v_bank_total1 := 0;',
'--End Loop;',
'',
'',
'',
'End;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45199068332775314)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background:gray;"'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>63
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P9998_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P9998_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(45201852248775314)
,p_name=>'Buyer Form'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>73
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--small:t-BadgeList--cols t-BadgeList--3cols'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.value today,b.value monthly, p.value Yearly',
'from (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmslsofr',
'       where compcode=:P101_COMP_NAME',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) a,',
'        (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmslsofr',
'       where compcode=:P101_COMP_NAME',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))) b,',
'    ( SELECT ',
'                 COUNT (DOCNUMBR) VALUE',
'            from nmslsofr',
'       where compcode=:P101_COMP_NAME',
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
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40324642573767226)
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
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40325031109767226)
,p_query_column_id=>2
,p_column_alias=>'MONTHLY'
,p_column_display_sequence=>2
,p_column_heading=>'Monthly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:161:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#MONTHLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40325425458767227)
,p_query_column_id=>3
,p_column_alias=>'YEARLY'
,p_column_display_sequence=>3
,p_column_heading=>'Yearly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#YEARLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(45203818896775315)
,p_name=>'Sales Information'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>33
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--small:t-BadgeList--cols t-BadgeList--3cols'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct sum(distinct nvl(a.value,0)) today,sum(distinct nvl(b.value,0)) monthly, sum(distinct nvl(p.value,0)) Yearly',
'from (SELECT ',
'                 COUNT ( DOCNUMBR) VALUE',
'             from orbrgs_rml.nmsalrec',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'       and  COMMCODE=decode(:BRAND_CODE,''A'',COMMCODE,:BRAND_CODE) ',
'      AND ITEMCODE IN (SELECT DISTINCT ITEMCODE FROM orbrgs_rml.NMITEMAS c WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'     AND COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'      AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL)))',
'      --AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'      )',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')',
'       ',
'        union all',
'        SELECT ',
'                 COUNT ( DOCNUMBR) VALUE',
'             from orbrgs_cvl.nmsalrec',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'       and  COMMCODE=decode(:BRAND_CODE,''A'',COMMCODE,:BRAND_CODE) ',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')',
'      ) a,',
'        (SELECT ',
'                 COUNT ( DOCNUMBR) VALUE',
'             from orbrgs_rml.nmsalrec',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'       and upper(compcode) != ''XXX''',
'       and  COMMCODE=decode(:BRAND_CODE,''A'',COMMCODE,:BRAND_CODE)',
'       AND ITEMCODE IN (SELECT DISTINCT ITEMCODE FROM orbrgs_rml.NMITEMAS c WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'     AND COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'                        AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL)))',
'   --   AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'      )',
'       --  AND trunc(DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))',
'                              having COUNT ( DOCNUMBR)>0',
'                              union all',
'                              SELECT ',
'                 COUNT ( DOCNUMBR) VALUE',
'             from orbrgs_cvl.nmsalrec',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'       and upper(compcode) != ''XXX''',
'       and  COMMCODE=decode(:BRAND_CODE,''A'',COMMCODE,:BRAND_CODE)',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))',
'                             ) b,',
'    ( SELECT ',
'                 COUNT ( DOCNUMBR) VALUE',
'             from orbrgs_rml.nmsalrec',
'       where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'       and upper(compcode) != ''XXX''',
'       and  COMMCODE=decode(:BRAND_CODE,''A'',COMMCODE,:BRAND_CODE)',
'       AND ITEMCODE IN (SELECT DISTINCT ITEMCODE FROM orbrgs_rml.NMITEMAS c WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'     AND COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'                        AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL)))',
'   --   AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'      )',
'AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1',
'--AND S.DOCTDATE BETWEEN nvl(to_date(:p11,''dd-mm-rrrr''),s.DOCTDATE) and nvl(to_date(:p12,''dd-mm-rrrr''),s.DOCTDATE)',
'--GROUP BY  DOCNUMBR,DOCTDATE,ITEMCODE,SMANNAME,s.SALERATE,s.DEA_AGN_CODE,s.NMZONEFK,s.PARTYCDE,s.PAMTMODE,z.LOCATYPE,s.WARECODE,s.BATCHNUM ',
'    ) p',
'                        where a.value>=0 and b.value>=0 and p.value>=0',
'order by 1;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'0'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40326142365767227)
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
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40326588812767227)
,p_query_column_id=>2
,p_column_alias=>'MONTHLY'
,p_column_display_sequence=>2
,p_column_heading=>'Monthly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:169:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#MONTHLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40326921285767227)
,p_query_column_id=>3
,p_column_alias=>'YEARLY'
,p_column_display_sequence=>3
,p_column_heading=>'Yearly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:170:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#YEARLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45205445195775315)
,p_plug_name=>'PC is not open.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--3cols:t-Cards--featured'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47616803464858276)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45300721071788218)
,p_plug_name=>'Search Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--leftLabels'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(45309737789125853)
,p_name=>'Enquring Information'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>43
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--small:t-BadgeList--cols t-BadgeList--3cols'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a.value today,b.value monthly, p.value Yearly',
'from (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from orbrgs_rml.nmcusvlg',
'       where compcode=:compcode',
'       and  INTERESTED_BRAND=decode(:BRAND_CODE,''A'',INTERESTED_BRAND,:BRAND_CODE)',
'       AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')',
'       union all',
'       SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from orbrgs_cvl.nmcusvlg',
'       where compcode=:compcode',
'       and  INTERESTED_BRAND=decode(:BRAND_CODE,''A'',INTERESTED_BRAND,:BRAND_CODE)',
'       AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) a,',
'        (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from orbrgs_rml.nmcusvlg',
'       where compcode=:compcode',
'       and  INTERESTED_BRAND=decode(:BRAND_CODE,''A'',INTERESTED_BRAND,:BRAND_CODE)',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))',
'                              union all',
'                              SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from orbrgs_cvl.nmcusvlg',
'       where compcode=:compcode',
'       and  INTERESTED_BRAND=decode(:BRAND_CODE,''A'',INTERESTED_BRAND,:BRAND_CODE)',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))',
'                             ) b,',
'                                 ( SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'            from orbrgs_rml.nmcusvlg',
'       where compcode=:compcode',
'       and  INTERESTED_BRAND=decode(:BRAND_CODE,''A'',INTERESTED_BRAND,:BRAND_CODE)',
'       AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1 ',
'                        union all',
'                        SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'            from orbrgs_cvl.nmcusvlg',
'       where compcode=:compcode',
'       and  INTERESTED_BRAND=decode(:BRAND_CODE,''A'',INTERESTED_BRAND,:BRAND_CODE)',
'       AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1 ',
'                        ) p',
'order by 1'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P9998_FROM_DATE_SEARCH,P9998_TO_DATE_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40319613604767225)
,p_query_column_id=>1
,p_column_alias=>'TODAY'
,p_column_display_sequence=>1
,p_column_heading=>'Today''s'
,p_use_as_row_header=>'N'
,p_column_css_style=>'style="color:red;"'
,p_column_link=>'javascript:$s(''P1_PROGNAME'',''nmboktdy'');$(''#P1_PROGNAME'').trigger(''click'');$(''#P1_XURLDYNMC'').trigger(''click'');'
,p_column_linktext=>'#TODAY#'
,p_column_link_attr=>'class="boktdy"'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40319993821767225)
,p_query_column_id=>2
,p_column_alias=>'MONTHLY'
,p_column_display_sequence=>2
,p_column_heading=>'Monthly'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P1_PROGNAME'',''nmbokmth'');$(''#P1_PROGNAME'').trigger(''click'');$(''#P1_XURLDYNMC'').trigger(''click'');'
,p_column_linktext=>'#MONTHLY#'
,p_column_link_attr=>'class="bokmth"'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40320400871767225)
,p_query_column_id=>3
,p_column_alias=>'YEARLY'
,p_column_display_sequence=>3
,p_column_heading=>'Yearly'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P1_PROGNAME'',''nmbokyer'');$(''#P1_PROGNAME'').trigger(''click'');$(''#P1_XURLDYNMC'').trigger(''click'');'
,p_column_linktext=>'#YEARLY#'
,p_column_link_attr=>'class="bokyer"'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45435120966865383)
,p_plug_name=>'Booking Report & chart '
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(45435392361865388)
,p_name=>'Booking Information'
,p_parent_plug_id=>wwv_flow_api.id(45435120966865383)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>1
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT DOCNUMBR,DOCTDATE ,ITEMDESC,SALERATE,CUSTMRID_NAME,WARECODE_NAME FROM',
'(SELECT DISTINCT b.compcode, TO_CHAR(b.DOCTDATE,''MMRRRR'')Mon_year,b.DOCNUMBR, ',
'b.DOCTDATE,b.ITEMDESC, b.SALERATE,',
'(select NMCODDES from nmcodmas ',
'       where compcode=b.compcode',
'       and NMHRDCDE=''CLR''',
'       and NMSOFCDE=b.COLORCDE)COLORCDE_NAME,',
'      (select CUSTNAME from nmcusmas ',
'       where compcode=b.compcode',
'       and CUSTMRID=b.CUSTMRID ) CUSTMRID_NAME,',
'       (select SMANNAME from nmsmnmas ',
'       where compcode=b.compcode',
'       and SMANCODE=b.SMANCODE',
'       and COSTCODE=b.COSTCODE) SMANCODE_NAME,',
'       (select WAREDESC from nmwhsmas ',
'       where compcode=b.compcode',
'       and WARECODE=b.WARECODE ) WARECODE_NAME',
'           from nmenudtl b',
'            where b.compcode=:compcode',
'            AND  NOT EXISTS (SELECT DISTINCT a.UPDOCNUM  from nmsalrec a',
'            where b.compcode=:compcode',
'            AND B.compcode=A.compcode',
'            AND B.PARTYCDE=A.PARTYCDE',
'            AND B.ITEMCODE=A.ITEMCODE',
'            AND NVL(B.DOCNUMBR,0)=NVL(A.UPDOCNUM,0)',
'            AND  EXISTS (SELECT CABASECC from sycstacc where compcode=:compcode and GRUPCODE=:APP_USER )',
'            )   ',
'            ) b,',
'            (SELECT TO_CHAR(DT,''MMRRRR'')MON_YEAR FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM-1)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM ACCOMPAR WHERE COMPCODE=:COMPCODE AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13))DT',
'            ',
'            WHERE B.MON_YEAR=DT.MON_YEAR'))
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
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40328206805767228)
,p_query_column_id=>1
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>3
,p_column_heading=>'Docnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40328592311767228)
,p_query_column_id=>2
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Doctdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40329085387767228)
,p_query_column_id=>3
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>2
,p_column_heading=>'Product'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#ITEMDESC#</span> '
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40329466611767228)
,p_query_column_id=>4
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>4
,p_column_heading=>'Amount'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40329808392767228)
,p_query_column_id=>5
,p_column_alias=>'CUSTMRID_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Customer Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#CUSTMRID_NAME#</span> '
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40330273478767228)
,p_query_column_id=>6
,p_column_alias=>'WARECODE_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Warecode Name'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45440213062865391)
,p_plug_name=>'Bookings'
,p_parent_plug_id=>wwv_flow_api.id(45435120966865383)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>2
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NULL LINK,',
'       ''today'' LABEL,',
'       today  VALUE',
'FROM  (select p.value today',
'from ',
'    (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmenudtl',
'       where compcode=:compcode',
'       and  BOOKCODE  is NOT NULL',
'AND EXISTS (SELECT CABASECC FROM SYCSTACC WHERE COMPCODE=:COMPCODE AND GRUPCODE=:APP_USER )',
'        AND OPRSTAMP=:APP_USER',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) p',
') '))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(758732224395257)
,p_region_id=>wwv_flow_api.id(45440213062865391)
,p_chart_type=>'bar'
,p_title=>'Booking'
,p_width=>'500'
,p_height=>'200'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(759004314395257)
,p_chart_id=>wwv_flow_api.id(758732224395257)
,p_seq=>10
,p_name=>'1'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(759169312395257)
,p_chart_id=>wwv_flow_api.id(758732224395257)
,p_seq=>20
,p_name=>'2'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(759245085395257)
,p_chart_id=>wwv_flow_api.id(758732224395257)
,p_seq=>30
,p_name=>'3'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(758803286395257)
,p_chart_id=>wwv_flow_api.id(758732224395257)
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
 p_id=>wwv_flow_api.id(758936244395257)
,p_chart_id=>wwv_flow_api.id(758732224395257)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45750568789269443)
,p_plug_name=>'Booking Vs Sales'
,p_parent_plug_id=>wwv_flow_api.id(45435120966865383)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>2
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select null,DT.MON,S.TOTAL_BOOKING "Booking",S.TOTAL_SALES "Sales",S.PERCENT_RATIO "Percent Ratio(%)" FROM',
'    (',
'    SELECT   TO_CHAR(B.DOCTDATE,''MMRRRR'')Mon_year,COUNT(DISTINCT b.DOCNUMBR)TOTAL_BOOKING,COUNT (DISTINCT a.UPDOCNUM)TOTAL_SALES,',
'        round((COUNT(DISTINCT a.UPDOCNUM)/decode(COUNT(DISTINCT b.DOCNUMBR),0,1,COUNT(DISTINCT b.DOCNUMBR)))*100,2) percent_ratio',
'            from nmenudtl b,nmsalrec a',
'            where b.compcode=:compcode',
'            AND B.compcode=A.compcode(+)',
'            AND B.PARTYCDE=A.PARTYCDE(+)',
'            AND B.ITEMCODE=A.ITEMCODE(+)',
'            AND NVL(B.DOCNUMBR,0)=NVL(A.UPDOCNUM(+),0)',
'            --AND B.DOCTTYPE=A.UPDOCTYP(+)',
'            --AND B.SUBTTYPE=A.UPSUBTYP(+)',
'            AND EXISTS (SELECT CABASECC from sycstacc where compcode=:compcode and GRUPCODE=:APP_USER )',
'            --and a.OPRSTAMP=:APP_USER',
'            group by TO_CHAR(B.DOCTDATE,''MMRRRR'')',
'     )S,(SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM-1)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM ACCOMPAR WHERE COMPCODE=:COMPCODE AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13))DT',
'                    WHERE S.MON_YEAR(+)=DT.MON_YEAR',
'                    order by dt.mm'))
,p_plug_source_type=>'NATIVE_JET_CHART'
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
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(758351721395257)
,p_region_id=>wwv_flow_api.id(45750568789269443)
,p_chart_type=>'bar'
,p_width=>'520'
,p_height=>'215'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(758652392395257)
,p_chart_id=>wwv_flow_api.id(758351721395257)
,p_seq=>10
,p_name=>'Buyer Vs Sales'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'triangleUp'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(758411178395257)
,p_chart_id=>wwv_flow_api.id(758351721395257)
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
 p_id=>wwv_flow_api.id(758585708395257)
,p_chart_id=>wwv_flow_api.id(758351721395257)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45451372665882912)
,p_plug_name=>'Delivery Report & chart '
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(45451652980882912)
,p_name=>'Delivery Information'
,p_parent_plug_id=>wwv_flow_api.id(45451372665882912)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>1
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DOCNUMBR, ',
'DOCTDATE,ITEMDESC, SALERATE,',
'      (select CUSTNAME from nmcusmas ',
'       where compcode=a.compcode',
'       and CUSTMRID=a.CUSTMRID ) CUSTMRID_NAME,',
'       (select SMANNAME from nmsmnmas ',
'       where compcode=a.compcode',
'       and SMANCODE=a.SMANCODE',
'       and COSTCODE=a.COSTCODE) SMANCODE_NAME,',
'       (select WAREDESC from nmwhsmas ',
'       where compcode=a.compcode',
'       and WARECODE=a.WARECODE ) WARECODE_NAME',
'             from nmdevrec a',
'       where compcode=:compcode',
'       ',
'      '))
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
 p_id=>wwv_flow_api.id(40334207342767229)
,p_query_column_id=>1
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>3
,p_column_heading=>'Docnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40334678240767229)
,p_query_column_id=>2
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>4
,p_column_heading=>'Doctdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40335045697767230)
,p_query_column_id=>3
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>2
,p_column_heading=>'Product'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40335434367767230)
,p_query_column_id=>4
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>5
,p_column_heading=>'Amount'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40335889205767230)
,p_query_column_id=>5
,p_column_alias=>'CUSTMRID_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Buyer Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40336256972767230)
,p_query_column_id=>6
,p_column_alias=>'SMANCODE_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Smancode Name'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40336598267767230)
,p_query_column_id=>7
,p_column_alias=>'WARECODE_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'Warecode Name'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45455239495882915)
,p_plug_name=>'Delivery'
,p_parent_plug_id=>wwv_flow_api.id(45451372665882912)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>2
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NULL LINK,',
'       ''today'' LABEL,',
'       today  VALUE',
'FROM  (select p.value today',
'from ',
'    (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmenudtl',
'       where compcode=:compcode',
'       and  BOOKCODE  is NOT NULL',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) p',
') '))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(757733418395256)
,p_region_id=>wwv_flow_api.id(45455239495882915)
,p_chart_type=>'bar'
,p_title=>'Booking'
,p_width=>'500'
,p_height=>'200'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(758067466395257)
,p_chart_id=>wwv_flow_api.id(757733418395256)
,p_seq=>10
,p_name=>'1'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(758148240395257)
,p_chart_id=>wwv_flow_api.id(757733418395256)
,p_seq=>20
,p_name=>'2'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(758264495395257)
,p_chart_id=>wwv_flow_api.id(757733418395256)
,p_seq=>30
,p_name=>'3'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(757860270395257)
,p_chart_id=>wwv_flow_api.id(757733418395256)
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
 p_id=>wwv_flow_api.id(757916784395257)
,p_chart_id=>wwv_flow_api.id(757733418395256)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45677467143035372)
,p_plug_name=>'field regin'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>130
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45521196921233841)
,p_plug_name=>'Sales chart field'
,p_parent_plug_id=>wwv_flow_api.id(45677467143035372)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45678027455043738)
,p_plug_name=>'Buyer Chart field'
,p_parent_plug_id=>wwv_flow_api.id(45677467143035372)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>140
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45722841626669417)
,p_plug_name=>'Best seller Report & chart '
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h400:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45742574473889981)
,p_plug_name=>'Most Active Seller'
,p_parent_plug_id=>wwv_flow_api.id(45722841626669417)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>2
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with q(qtr) as(',
'  select add_months(',
'                   TO_DATE(:P9998_Y_SALE,''YYYY-MM-DD'')',
'                    , (level-1)',
'                    )',
'    from dual ',
'  connect by level <= 12',
')',
'',
'select distinct p.DOCTDATE LINK, p.SMANCODE_NAME   as LABEL',
'     , p.sal VALUE1',
'  from q,(SELECT  sal  ,DOCTDATE,SMANCODE_NAME',
'FROM ',
'    ( SELECT distinct',
'                 extract(month from TRGTDATE) DOCTDATE,COUNT (SMANCODE) VALUE,sum(TRGTAMNT) sal,',
'                 WM_CONCAT(DISTINCT(select  SMANNAME from nmsmnmas ',
'       where compcode=a.compcode',
'       and SMANCODE=a.SMANCODE',
'       and SUPRCODE=a.WARECODE) ) SMANCODE_NAME,SMANCODE',
'            from nmsmntrg a',
'       where compcode=:compcode',
'       AND EXISTS (SELECT CABASECC FROM SYCSTACC WHERE COMPCODE=:COMPCODE AND GRUPCODE=:APP_USER )',
'        AND OPRSTAMP=:APP_USER',
'        AND trunc(TRGTDATE) BETWEEN COALESCE(TO_DATE(:P9998_YRLY_FROM_DATE,''DD-MON-YYYY''),TO_DATE(:P9998_FROM_DATE,''DD-MON-YYYY''),TO_DATE(:P9998_MNLY__FROM_DATE,''DD-MON-YYYY''))',
'                    AND   COALESCE(TO_DATE(:P9998_YRLY_TO_DATE,''DD-MON-YYYY''),TO_DATE(:P9998_TO_DATE,''DD-MON-YYYY''),TO_DATE(:P9998_MNLY_TO_DATE,''DD-MON-YYYY''))',
'                    group by extract(month from TRGTDATE),SMANCODE',
'                    order by 1 ) p',
')p',
'order by p.DOCTDATE'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(757547830395256)
,p_region_id=>wwv_flow_api.id(45742574473889981)
,p_chart_type=>'pie'
,p_title=>'Most Active Seller'
,p_width=>'500'
,p_height=>'200'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(757601437395256)
,p_chart_id=>wwv_flow_api.id(757547830395256)
,p_seq=>10
,p_name=>'Series 1'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45981288759258251)
,p_plug_name=>'Active seller'
,p_parent_plug_id=>wwv_flow_api.id(45722841626669417)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h480:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>2
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select DISTINCT null,B.SMANNAME LABEL,S.TOTAL_COLLECTION "Collection",S.TOTAL_SALES "Sales",S.PERCENT_RATIO "Percent Ratio(%)" FROM',
'    (',
'    SELECT  DISTINCT  a.compcode,TO_CHAR(A.DOCTDATE,''MMRRRR'')Mon_year,COUNT(DISTINCT b.REFDOCNO)TOTAL_COLLECTION,COUNT (DISTINCT a.DOCNUMBR)TOTAL_SALES,',
'        round((COUNT(DISTINCT b.REFDOCNO)/decode(COUNT(DISTINCT a.DOCNUMBR),0,1,COUNT(DISTINCT a.DOCNUMBR)))*100,2) percent_ratio,WM_CONCAT(DISTINCT SMANCODE) SMANCODE,',
'        WM_CONCAT(DISTINCT NMZONEFK) NMZONEFK',
'            from  installment_collection b,nmsalrec a',
'            where A.compcode=:compcode',
'            AND A.compcode=B.compcode(+)',
'            AND A.PARTYCDE=B.SUBLEDCD(+)',
'            AND NVL(A.DOCNUMBR,0)=NVL(B.REFDOCNO(+),0)',
'            AND EXISTS (SELECT CABASECC from sycstacc where compcode=:compcode and GRUPCODE=:APP_USER )',
'            group by TO_CHAR(A.DOCTDATE,''MMRRRR''),a.compcode',
'     )S,(select DISTINCT b.compcode,b.AREACODE,b.AREANAME,b.ZONLCODE, b.WHSZONPK_TREE,c.SMANNAME,c.SMANCODE,a.WHSZONFK',
'      FROM ',
'           VW_NMWHZNMAS b,nmsmazon  a,nmsmnmas c',
'           where a.compcode=:compcode',
'           and a.compcode=b.compcode',
'           and a.compcode=c.compcode',
'           and a.SMANCODE=c.SMANCODE',
'           and b.WHSZONPK=a.WHSZONFK',
'           AND b.WHSZONPK_TREE like ''%''||:P9998_SELLERLIST||''%'') B',
'           WHERE S.NMZONEFK(+) LIKE ''%''||B.WHSZONPK_TREE||''%''',
'           and s.SMANCODE(+) LIKE ''%''||b.SMANCODE||''%'' ',
'                  order by 2'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(757153112395256)
,p_region_id=>wwv_flow_api.id(45981288759258251)
,p_chart_type=>'bar'
,p_width=>'500'
,p_height=>'300'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(757482811395256)
,p_chart_id=>wwv_flow_api.id(757153112395256)
,p_seq=>10
,p_name=>'Buyer Vs Sales'
,p_max_row_count=>50
,p_ajax_items_to_submit=>'P9998_SELLERLIST'
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(757242553395256)
,p_chart_id=>wwv_flow_api.id(757153112395256)
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
 p_id=>wwv_flow_api.id(757350134395256)
,p_chart_id=>wwv_flow_api.id(757153112395256)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
 p_id=>wwv_flow_api.id(45723126250669428)
,p_name=>'Most Active Seller'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>170
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select DISTINCT null,B.SMANNAME LABEL,b.AREANAME,S.TOTAL_COLLECTION "Collection",S.TOTAL_SALES "Sales",S.PERCENT_RATIO "Percent Ratio(%)" FROM',
'    (',
'    SELECT  DISTINCT  a.compcode,TO_CHAR(A.DOCTDATE,''MMRRRR'')Mon_year,COUNT(DISTINCT b.REFDOCNO)TOTAL_COLLECTION,COUNT (DISTINCT a.DOCNUMBR)TOTAL_SALES,',
'        round((COUNT(DISTINCT b.REFDOCNO)/decode(COUNT(DISTINCT a.DOCNUMBR),0,1,COUNT(DISTINCT a.DOCNUMBR)))*100,2) percent_ratio,WM_CONCAT(DISTINCT SMANCODE) SMANCODE,',
'        WM_CONCAT(DISTINCT NMZONEFK) NMZONEFK',
'            from  installment_collection b,nmsalrec a',
'            where A.compcode=:compcode',
'            AND A.compcode=B.compcode(+)',
'            AND A.PARTYCDE=B.SUBLEDCD(+)',
'            AND NVL(A.DOCNUMBR,0)=NVL(B.REFDOCNO(+),0)',
'            AND EXISTS (SELECT CABASECC from sycstacc where compcode=:compcode and GRUPCODE=:APP_USER )',
'            group by TO_CHAR(A.DOCTDATE,''MMRRRR''),a.compcode',
'     )S,(select DISTINCT b.compcode,b.AREACODE,b.AREANAME,b.ZONLCODE, b.WHSZONPK_TREE,c.SMANNAME,c.SMANCODE,a.WHSZONFK',
'      FROM ',
'           VW_NMWHZNMAS b,nmsmazon  a,nmsmnmas c',
'           where a.compcode=:compcode',
'           and a.compcode=b.compcode',
'           and a.compcode=c.compcode',
'           and a.SMANCODE=c.SMANCODE',
'           and b.WHSZONPK=a.WHSZONFK',
'           AND b.WHSZONPK_TREE like ''%''||:P9998_SELLERLIST||''%'') B',
'           WHERE S.NMZONEFK(+) LIKE ''%''||B.WHSZONPK_TREE||''%''',
'           and s.SMANCODE(+) LIKE ''%''||b.SMANCODE||''%'' ',
'                  order by 2'))
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
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40266698161767200)
,p_query_column_id=>1
,p_column_alias=>'NULL'
,p_column_display_sequence=>1
,p_column_heading=>'Null'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40267166822767200)
,p_query_column_id=>2
,p_column_alias=>'LABEL'
,p_column_display_sequence=>2
,p_column_heading=>'Salesman'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#LABEL#</span>'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40267541362767201)
,p_query_column_id=>3
,p_column_alias=>'AREANAME'
,p_column_display_sequence=>3
,p_column_heading=>'Area Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#AREANAME#</span>'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40267949940767201)
,p_query_column_id=>4
,p_column_alias=>'Collection'
,p_column_display_sequence=>4
,p_column_heading=>'Collection'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40268308513767201)
,p_query_column_id=>5
,p_column_alias=>'Sales'
,p_column_display_sequence=>5
,p_column_heading=>' Total Sales'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40268692873767201)
,p_query_column_id=>6
,p_column_alias=>'Percent Ratio(%)'
,p_column_display_sequence=>6
,p_column_heading=>'Percent Ratio(%)'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45763045912658950)
,p_plug_name=>'Areawise Sales'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h350:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>7
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(45764566400658951)
,p_name=>'Areawise Sales'
,p_parent_plug_id=>wwv_flow_api.id(45763045912658950)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>1
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h350:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT DOCNUMBR,DOCTDATE ,ITEMDESC,SALERATE,CUSTMRID_NAME,WARECODE_NAME FROM',
'    (',
'    SELECT   DISTINCT TO_CHAR(A.DOCTDATE,''MMRRRR'')Mon_year, a.DOCNUMBR, ',
'a.DOCTDATE,a.ITEMDESC, a.SALERATE,',
'(select NMCODDES from nmcodmas ',
'       where compcode=a.compcode',
'       and NMHRDCDE=''CLR''',
'       and NMSOFCDE=a.COLORCDE)COLORCDE_NAME,',
'      (select CUSTNAME from nmcusmas ',
'       where compcode=a.compcode',
'       and CUSTMRID=a.CUSTMRID ) CUSTMRID_NAME,',
'       (select SMANNAME from nmsmnmas ',
'       where compcode=a.compcode',
'       and SMANCODE=a.SMANCODE',
'       and COSTCODE=a.COSTCODE) SMANCODE_NAME,',
'       (select WAREDESC from nmwhsmas ',
'       where compcode=a.compcode',
'       and WARECODE=a.WARECODE ) WARECODE_NAME',
'            from  installment_collection b,nmsalrec a,nmwhznms c',
'            where A.compcode=:compcode',
'            AND NMZONEFK like ''%''||nvl(:P9998_AREALIST,NMZONEFK)||''%''',
'            AND A.compcode=B.compcode(+)',
'            AND A.compcode=c.compcode(+)',
'            AND A.NMZONEFK=c.AREACODE(+)',
'            AND A.PARTYCDE=B.SUBLEDCD(+)',
'            AND NVL(A.DOCNUMBR,0)=NVL(B.REFDOCNO(+),0)',
'            AND EXISTS (SELECT CABASECC from sycstacc where compcode=:compcode and GRUPCODE=:APP_USER )',
'     )S'))
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
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40269720243767202)
,p_query_column_id=>1
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>3
,p_column_heading=>'Docnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40270175436767202)
,p_query_column_id=>2
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Doctdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40270547301767202)
,p_query_column_id=>3
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>2
,p_column_heading=>'Product'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#ITEMDESC#</span> '
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40270893883767202)
,p_query_column_id=>4
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>4
,p_column_heading=>'Amount'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40271324433767202)
,p_query_column_id=>5
,p_column_alias=>'CUSTMRID_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Customer Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#CUSTMRID_NAME#</span> '
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
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
 p_id=>wwv_flow_api.id(40271726739767202)
,p_query_column_id=>6
,p_column_alias=>'WARECODE_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Warecode Name'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45797866476789981)
,p_plug_name=>'Areawise Sales'
,p_parent_plug_id=>wwv_flow_api.id(45763045912658950)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h350:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>2
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select null,B.AREANAME LABEL ,S.TOTAL_COLLECTION "Collection",S.TOTAL_SALES "Sales",S.PERCENT_RATIO "Percent Ratio(%)" FROM',
'    (',
'    SELECT   TO_CHAR(A.DOCTDATE,''MMRRRR'')Mon_year,COUNT(DISTINCT b.REFDOCNO)TOTAL_COLLECTION,COUNT (DISTINCT a.DOCNUMBR)TOTAL_SALES,',
'        round((COUNT(DISTINCT b.REFDOCNO)/decode(COUNT(DISTINCT a.DOCNUMBR),0,1,COUNT(DISTINCT a.DOCNUMBR)))*100,2) percent_ratio,WM_CONCAT(DISTINCT NMZONEFK) NMZONEFK',
'            from  installment_collection b,nmsalrec a,nmwhznms c',
'            where A.compcode=:compcode',
'            AND NMZONEFK like ''%''||:P9998_AREALIST||''%''',
'            AND A.compcode=B.compcode(+)',
'            AND A.compcode=c.compcode(+)',
'            AND A.NMZONEFK=c.AREACODE(+)',
'            AND A.PARTYCDE=B.SUBLEDCD(+)',
'            AND NVL(A.DOCNUMBR,0)=NVL(B.REFDOCNO(+),0)',
'            AND EXISTS (SELECT CABASECC from sycstacc where compcode=:compcode and GRUPCODE=:APP_USER )',
'            group by TO_CHAR(A.DOCTDATE,''MMRRRR'')',
'     )S,(select b.AREANAME,b.ZONLCODE, WHSZONPK_TREE',
'      FROM ',
'           VW_NMWHZNMAS  b',
'           where compcode=:compcode',
'           AND WHSZONPK_TREE like ''''||:P9998_AREALIST||''%'') B',
'           ',
'            WHERE S.NMZONEFK(+) LIKE ''%''||B.WHSZONPK_TREE||''%''',
'                  order by 2'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(756708156395256)
,p_region_id=>wwv_flow_api.id(45797866476789981)
,p_chart_type=>'bar'
,p_width=>'500'
,p_height=>'300'
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
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(757004222395256)
,p_chart_id=>wwv_flow_api.id(756708156395256)
,p_seq=>10
,p_name=>'Buyer Vs Sales'
,p_max_row_count=>50
,p_ajax_items_to_submit=>'P9998_AREALIST'
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(756863778395256)
,p_chart_id=>wwv_flow_api.id(756708156395256)
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
 p_id=>wwv_flow_api.id(756985509395256)
,p_chart_id=>wwv_flow_api.id(756708156395256)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
 p_id=>wwv_flow_api.id(46356349539601154)
,p_name=>'Cash/Credit Sales Qty'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>53
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--small:t-BadgeList--cols t-BadgeList--3cols'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  sum(nvl(a.QTY,0)) Cash,sum(nvl(b.QTY,0)) Credit, sum(nvl(p.QTY,0)) Total',
'from (select case when s.PAMTMODE=''CSH'' then ''Cash''  when s.PAMTMODE=''CRT'' then ''Credit'' else null end PAMTMODE,',
' sum(TRNSQNTY)QTY,sum(MSFCAMNT)AMT      ',
' from nmsalrec S,NMSMNMAS M,nmwhznms z',
'where S.COMPCODE=M.COMPCODE',
'and s.compcode=Z.COMPCODE(+)',
'and s.NMZONEFK=Z.WHSZONPK(+)',
'AND S.SMANCODE=M.SMANCODE',
'AND S.compcode=decode(:COMPCODE,''A'',S.compcode,:COMPCODE)',
'and S.COMMCODE=decode(:BRAND_CODE,''A'',S.COMMCODE,:BRAND_CODE) ',
'--and S.COMMCODE=nvl(:p20,S.COMMCODE)',
'--AND S.CUSTMRID=NVL(:P15,S.CUSTMRID)',
'--and S.SMANCODE=nvl(:p21,S.SMANCODE)',
'AND NVL(DOCNUMBR,''X'') IN(SELECT DOCNUMBR FROM NMSALREC',
'    WHERE ITEMCODE IN(SELECT DISTINCT ITEMCODE FROM NMITEMAS WHERE NVL(MODLCODE,''X'')=NVL(:P18,NVL(MODLCODE,''X'')) AND nvl(ITEMMODL,''X'')=nvl(:p19,nvl(ITEMMODL,''X''))',
'     AND COMPCODE=decode(:COMPCODE,''A'',S.compcode,:COMPCODE)))',
'AND S.DOCTDATE BETWEEN nvl(TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''),s.DOCTDATE) and nvl(TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''),s.DOCTDATE)',
'AND s.PAMTMODE=''CSH''',
'GROUP BY s.PAMTMODE',
'order by  1 ) a,',
'        (select case when s.PAMTMODE=''CSH'' then ''Cash''  when s.PAMTMODE=''CRT'' then ''Credit'' else null end PAMTMODE,',
' sum(TRNSQNTY)QTY,sum(MSFCAMNT)AMT      ',
' from nmsalrec S,NMSMNMAS M,nmwhznms z',
'where S.COMPCODE=M.COMPCODE',
'and s.compcode=Z.COMPCODE(+)',
'and s.NMZONEFK=Z.WHSZONPK(+)',
'AND S.SMANCODE=M.SMANCODE',
'AND S.compcode=decode(:COMPCODE,''A'',S.compcode,:COMPCODE)',
'and S.COMMCODE=decode(:BRAND_CODE,''A'',S.COMMCODE,:BRAND_CODE) ',
'AND NVL(DOCNUMBR,''X'') IN(SELECT DOCNUMBR FROM NMSALREC',
'    WHERE ITEMCODE IN(SELECT DISTINCT ITEMCODE FROM NMITEMAS WHERE NVL(MODLCODE,''X'')=NVL(:P18,NVL(MODLCODE,''X'')) AND nvl(ITEMMODL,''X'')=nvl(:p19,nvl(ITEMMODL,''X''))',
'     AND COMPCODE=decode(:COMPCODE,''A'',S.compcode,:COMPCODE)))',
'AND S.DOCTDATE BETWEEN nvl(TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''),s.DOCTDATE) and nvl(TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''),s.DOCTDATE)',
'AND s.PAMTMODE=''CRT''',
'GROUP BY s.PAMTMODE',
'order by  1',
'                             ) b,',
'                                 ( select ',
' sum(TRNSQNTY)QTY,sum(MSFCAMNT)AMT      ',
' from nmsalrec S,NMSMNMAS M,nmwhznms z',
'where S.COMPCODE=M.COMPCODE',
'and s.compcode=Z.COMPCODE(+)',
'and s.NMZONEFK=Z.WHSZONPK(+)',
'AND S.SMANCODE=M.SMANCODE',
'AND S.compcode=decode(:COMPCODE,''A'',S.compcode,:COMPCODE)',
'and S.COMMCODE=decode(:BRAND_CODE,''A'',S.COMMCODE,:BRAND_CODE) ',
'AND NVL(DOCNUMBR,''X'') IN(SELECT DOCNUMBR FROM NMSALREC',
'    WHERE ITEMCODE IN(SELECT DISTINCT ITEMCODE FROM NMITEMAS WHERE NVL(MODLCODE,''X'')=NVL(:P18,NVL(MODLCODE,''X'')) AND nvl(ITEMMODL,''X'')=nvl(:p19,nvl(ITEMMODL,''X''))',
'     AND COMPCODE=decode(:COMPCODE,''A'',S.compcode,:COMPCODE)))',
'AND S.DOCTDATE BETWEEN nvl(TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''),s.DOCTDATE) and nvl(TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''),s.DOCTDATE)',
'group by TRNSQNTY      ) p'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P9998_FROM_DATE_SEARCH,P9998_TO_DATE_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'0'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40310705951767222)
,p_query_column_id=>1
,p_column_alias=>'CASH'
,p_column_display_sequence=>1
,p_column_heading=>'Cash'
,p_use_as_row_header=>'N'
,p_column_linktext=>'#CASH#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40311188662767222)
,p_query_column_id=>2
,p_column_alias=>'CREDIT'
,p_column_display_sequence=>2
,p_column_heading=>'Credit'
,p_use_as_row_header=>'N'
,p_column_linktext=>'#CREDIT#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40311510838767222)
,p_query_column_id=>3
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>3
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_column_linktext=>'#TOTAL#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46399255203221453)
,p_plug_name=>'Cash/Credit Sales Qty'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>3
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_total1   number := 0;',
'Begin',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGeneratorbrndcat1 {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGeneratorbrndcat1 table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGeneratorbrndcat1 tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat1 table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat1 table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGeneratorbrndcat1 tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGeneratorbrndcat1 tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGeneratorbrndcat1 td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGeneratorbrndcat1 tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGeneratorbrndcat1 tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGeneratorbrndcat1 tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGeneratorbrndcat1 tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGeneratorbrndcat1 tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGeneratorbrndcat1 tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGeneratorbrndcat1 tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'',
'',
'For c1 in (',
'select distinct a.compcode,a.COMMCODE,a.brand,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  a.compcode,a.COMMCODE,c.brand brand,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_rml.nmsalrec a,orbrgs_rml.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'             AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL)))',
'           -- AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL) ',
'            AND c.FINISHGD =''Y''',
'            )',
'         and upper(a.compcode) != ''XXX''',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'           AND trunc(a.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'            group by a.compcode,a.COMMCODE,c.brand) a,',
'           ( select distinct sum( b.TARGET_QTY) TARGET_QTY, b.compcode,b.COMMCODE  from orbrgs_rml.nmslsfst b',
'               where b.compcode=:compcode',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_rml.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'         --   AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.COMMCODE) b',
'            where a.compcode=b.compcode(+)',
'            and a.COMMCODE=b.COMMCODE(+)',
'            UNION ALL',
'            select distinct a.compcode,a.COMMCODE,a.brand,no_of_item,b.TARGET_QTY,Amount from(',
'select distinct  a.compcode,a.COMMCODE,c.brand brand,count( a.ITEMCODE) no_of_item,sum(a.MSLCAMNT) Amount  from orbrgs_cvl.nmsalrec a,orbrgs_cvl.vwnmitem c',
'               where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'               and a.compcode=c.compcode',
'            AND a.ITEMCODE=c.ITEMCODE',
'            and a.COMMCODE=c.COMMGRUP',
'            and a.COMMCODE=decode(:BRAND_CODE,''A'',a.COMMCODE,:BRAND_CODE) ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_cvl.nmitemas c',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND c.compcode=a.compcode',
'            AND c.ITEMCODE=a.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'           -- AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and GRUPCODE=:APP_USER AND d.compcode=a.compcode and d.CABASECC=a.COSTCODE)',
'           AND trunc(a.DOCTDATE) BETWEEN TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'            group by a.compcode,a.COMMCODE,c.brand) a,',
'           ( select distinct sum( b.TARGET_QTY) TARGET_QTY, b.compcode,b.COMMCODE  from orbrgs_cvl.nmslsfst b',
'               where b.compcode=decode(:COMPCODE,''A'',b.compcode,:COMPCODE)',
'             ',
'           AND   EXISTS (SELECT DISTINCT c.ITEMCODE  from orbrgs_cvl.nmitemas c',
'            where c.compcode=decode(:COMPCODE,''A'',c.compcode,:COMPCODE)',
'            AND c.compcode=b.compcode',
'            AND c.ITEMCODE=b.ITEMCODE',
'            AND c.FINISHGD =''Y''',
'            )',
'         --   AND  EXISTS (SELECT CABASECC from sycstacc d where compcode=:compcode and GRUPCODE=:APP_USER AND d.compcode=b.compcode and d.CABASECC=b.COSTCODE)',
'            group by b.compcode,b.COMMCODE) b',
'            where a.compcode=b.compcode(+)',
'            and a.COMMCODE=b.COMMCODE(+)',
'                )',
'Loop',
'',
' v_cnt := v_cnt + 1;',
' ',
'    If v_prev_bnk <> c1.Brand then',
'      ',
'',
'htp.p(initcap(c1.Brand)||''</br>'');',
'',
'htp.p(''<div class="scrollbar1"  id="ex11"style="line-height: 10px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat1" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:10px;">',
'                <td></td>',
'                <td>Qty.</td>',
'                <td>Amount</td>',
'              </tr>'');',
'                  For c2 in (select case when s.PAMTMODE=''CSH'' then ''Cash''  when s.PAMTMODE=''CRT'' then ''Credit'' else null end PAMTMODE,',
' sum(TRNSQNTY)QTY,sum(MSFCAMNT)AMT      ',
' from orbrgs_rml.nmsalrec S,orbrgs_rml.nmwhznms z',
'where s.compcode=Z.COMPCODE(+)',
'and s.NMZONEFK=Z.WHSZONPK(+)',
'--AND S.SMANCODE=M.SMANCODE',
'AND S.compcode=decode(:COMPCODE,''A'',S.compcode,:COMPCODE)',
'and S.COMMCODE=decode(:BRAND_CODE,''A'',S.COMMCODE,:BRAND_CODE) ',
'AND ITEMCODE IN (SELECT DISTINCT ITEMCODE FROM orbrgs_rml.NMITEMAS c WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'     AND COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'      AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi a where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)  AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                 ',
'                  AND P.PRODUCT_TYPE = a.PRODUCT_TYPE ',
'                  AND compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode and BRAND_CODE IS NULL)))',
'    --  AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'      )',
'AND S.DOCTDATE BETWEEN nvl(TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''),s.DOCTDATE) and nvl(TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''),s.DOCTDATE)',
' and S.COMMCODE=c1.COMMCODE    ',
'GROUP BY s.PAMTMODE--,c1.BRAND',
'UNION ALL',
'select case when s.PAMTMODE=''CSH'' then ''Cash''  when s.PAMTMODE=''CRT'' then ''Credit'' else null end PAMTMODE,',
' sum(TRNSQNTY)QTY,sum(MSFCAMNT)AMT      ',
' from orbrgs_cvl.nmsalrec S, orbrgs_cvl.NMSMNMAS M, orbrgs_cvl.nmwhznms z',
'where S.COMPCODE=M.COMPCODE',
'and s.compcode=Z.COMPCODE(+)',
'and s.NMZONEFK=Z.WHSZONPK(+)',
'AND S.SMANCODE=M.SMANCODE',
'AND S.compcode=decode(:COMPCODE,''A'',S.compcode,:COMPCODE)',
'and S.COMMCODE=decode(:BRAND_CODE,''A'',S.COMMCODE,:BRAND_CODE) ',
'AND ITEMCODE IN (SELECT DISTINCT ITEMCODE FROM orbrgs_rml.NMITEMAS c WHERE COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'     AND COMPCODE=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'      AND  EXISTS (SELECT PRODUCT_TYPE from nmprdhdi  where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE) and SMANCODE=:APP_USER AND compcode=c.compcode and PRODUCT_TYPE=c.ITEMMODL)',
'      )',
'AND S.DOCTDATE BETWEEN nvl(TO_DATE(:P9998_FROM_DATE_SEARCH,''DD-MM-RRRR''),s.DOCTDATE) and nvl(TO_DATE(:P9998_TO_DATE_SEARCH,''DD-MM-RRRR''),s.DOCTDATE)',
'and S.COMMCODE=c1.COMMCODE  ',
'GROUP BY s.PAMTMODE,c1.BRAND',
'order by  1 ',
'                )',
'Loop',
'htp.p(''',
'<tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'    <td style="width: 50%;text-align:left;font-size: 10px;">''||initcap(c2.PAMTMODE)||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.QTY||''</td>',
'    <td style="width: 50%;text-align:right;font-size: 10px;">''||to_char(c2.AMT,''99,99,99,99,99,99,999.99'')||''</td>',
'  </tr>',
''');',
' v_bank_rows1 := v_bank_rows1 +c2.QTY;',
'  v_bank_total1 := v_bank_total1 + c2.AMT;',
' end loop;',
'',
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="1" style="text-align:right;">Total</td>',
'                <td style="width: 60%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                <td style="width: 60%;text-align:right;font-size: 10px;">''||to_char(v_bank_total1,''99,99,99,99,99,99,999.99'')||''</td>',
'              </tr>              ',
'            '');',
' ',
'   End If;',
'',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows1 := 0;',
'          v_bank_total1 := 0;',
'End Loop;',
'',
'',
'',
'End;',
'',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="2" style="text-align:right;">Total</td>',
'                <td style="width: 60%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                <td style="width: 60%;text-align:right;font-size: 10px;">''||to_char(v_bank_total1,''99,99,99,99,99,99,999.99'')||''</td>',
'              </tr>              ',
'            '');'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49033343785835628)
,p_plug_name=>'test'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>150
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49199544182350350)
,p_plug_name=>'Areawise Sales'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>170
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P9998_START_DATE||''&P12=''||:P9998_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator2 {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator2 table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator2 tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator2 table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator2 table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator2 tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator2 tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator2 td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator2 tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator2 tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator2 tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator2 tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator2 tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator2 tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator2 tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P9998_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P9998_COMPADD.</font>',
'</div></br>'');*/',
'',
'        htp.p(''<div class="scrollbar2"  id="ex5"style="line-height: 8px;font-size: 10px;">',
'              <div class="CSSTableGenerator2" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:7px;">',
'                <td style="width: 40%;background-color:#38ACEC;text-align:center;font-size: 10px;">Customer Details</td>',
'                <td style="width: 20%;background-color:#38ACEC;text-align:center;font-size: 10px;">Area Name</td>',
'                <td style="width: 5%;background-color:#38ACEC;text-align:center;font-size: 10px;">No of inst</td>',
'                <td style="width: 5%;background-color:#38ACEC;text-align:center;font-size: 10px;">Sales Amnt</td>',
'                <td style="width: 5%;background-color:#38ACEC;text-align:center;font-size: 10px;">Invoice Amnt</td>',
'                <td style="width: 5%;background-color:#38ACEC;text-align:center;font-size: 10px;">Down Payment</td>',
'                <td style="width: 5%;background-color:#38ACEC;text-align:center;font-size: 10px;">Remaining Amnt</td>',
'                <td style="width: 15%;background-color:#38ACEC;text-align:center;font-size: 10px;">Total collection Amnt</td>',
'              </tr>''); ',
'',
'For c1 in (select DISTINCT  c.CUSTMRID_NAME,AREANAME,NO_OF_INSTALLMENT, salerate,invoice_amount,DOWN_PAYMENT,remaining_amount,total_collection_amount from',
'(SELECT  DISTINCT wm_concat(a.CUSTMRID) CUSTMRID,',
'sum( a.SALERATE ) salerate ,count(a.NO_OF_INSTALLMENT) NO_OF_INSTALLMENT,sum(a.MSLCAMNT) invoice_amount,sum(a.DOWN_PAYMENT) DOWN_PAYMENT,',
'sum(a.LOAN_AMOUNT) remaining_amount,sum(JVLCAMNT) total_collection_amount,wm_concat(c.AREANAME) AREANAME',
'           from  installment_collection b,nmsalrec a,nmwhznms c',
'            where A.compcode=:compcode',
'            AND NMZONEFK like ''%''||nvl(:P9998_AREALIST,NMZONEFK)||''%''',
'            AND A.compcode=B.compcode(+)',
'            AND A.compcode=c.compcode(+)',
'            AND A.NMZONEFK=to_char(c.WHSZONPK(+),''999'')',
'            AND A.PARTYCDE=B.SUBLEDCD(+)',
'            AND NVL(A.DOCNUMBR,0)=NVL(B.REFDOCNO(+),0)',
'            AND EXISTS (SELECT CABASECC from sycstacc where compcode=:compcode and GRUPCODE=:APP_USER )',
'            group by a.DOCNUMBR) b,(select distinct c.compcode,c.CUSTMRID,c.CUSTNAME||'' / ''||c.CUSTMOBL CUSTMRID_NAME  from nmcusmas c,nmsalrec a ',
'       where c.compcode=a.compcode',
'       and c.CUSTMRID=a.CUSTMRID ) c',
'       ',
'       where b.CUSTMRID=c.CUSTMRID',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'     <tr style="max-height:3px;line-height: 10px;font-size: 10px;">',
'    <td style="width: 40%;text-align:left;font-size: 10px;">''||c1.CUSTMRID_NAME||''</td>',
'    <td style="width: 20%;text-align:left;font-size: 10px;">''||c1.AREANAME||''</td>',
'    <td style="width: 5%;text-align:center;font-size: 10px;">''||c1.NO_OF_INSTALLMENT||''</td>',
'    <td style="width: 5%;text-align:center;font-size: 10px;">''||c1.salerate||''</td>',
'    <td style="width: 5%;text-align:center;font-size: 10px;">''||c1.invoice_amount||''</td>',
'    <td style="width: 5%;text-align:left;font-size: 10px;">''||c1.DOWN_PAYMENT||''</td>',
'    <td style="width: 5%;text-align:center;font-size: 10px;">''||c1.remaining_amount||''</td>',
'    <td style="width: 15%;text-align:center;font-size: 10px;">''||c1.total_collection_amount||''</td>',
'  </tr>',
'    '');',
'                 ',
'End Loop;',
' ',
'htp.p(''</table></div></div></br>'');',
'',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(49226213413584590)
,p_name=>'Booking Information'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>23
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--responsive:t-BadgeList--small:t-BadgeList--cols t-BadgeList--3cols'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.value today,b.value monthly, p.value Yearly',
'from (SELECT ',
'                 COUNT ( DOCNUMBR) VALUE',
'             from nmenudtl',
'       where compcode=:compcode',
'       and DOCTTYPE=''BK''',
'       and SUBTTYPE=1',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) a,',
'        (SELECT ',
'                 COUNT ( DOCNUMBR) VALUE',
'             from nmenudtl',
'       where compcode=:compcode',
'       and DOCTTYPE=''BK''',
'       and SUBTTYPE=1',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))) b,',
'    ( SELECT ',
'                 COUNT (DOCNUMBR) VALUE',
'            from nmenudtl',
'       where compcode=:compcode',
'       and DOCTTYPE=''BK''',
'       and SUBTTYPE=1',
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
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40314695890767224)
,p_query_column_id=>1
,p_column_alias=>'TODAY'
,p_column_display_sequence=>1
,p_column_heading=>'Today''s'
,p_use_as_row_header=>'N'
,p_column_css_style=>'style="color:red;"'
,p_column_link=>'javascript:$s(''P1_PROGNAME'',''nmboktdy'');$(''#P1_PROGNAME'').trigger(''click'');$(''#P1_XURLDYNMC'').trigger(''click'');'
,p_column_linktext=>'#TODAY#'
,p_column_link_attr=>'class="boktdy"'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40315165494767224)
,p_query_column_id=>2
,p_column_alias=>'MONTHLY'
,p_column_display_sequence=>2
,p_column_heading=>'Monthly'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P1_PROGNAME'',''nmbokmth'');$(''#P1_PROGNAME'').trigger(''click'');$(''#P1_XURLDYNMC'').trigger(''click'');'
,p_column_linktext=>'#MONTHLY#'
,p_column_link_attr=>'class="bokmth"'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40315549523767224)
,p_query_column_id=>3
,p_column_alias=>'YEARLY'
,p_column_display_sequence=>3
,p_column_heading=>'Yearly'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P1_PROGNAME'',''nmbokyer'');$(''#P1_PROGNAME'').trigger(''click'');$(''#P1_XURLDYNMC'').trigger(''click'');'
,p_column_linktext=>'#YEARLY#'
,p_column_link_attr=>'class="bokyer"'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49542611011119689)
,p_plug_name=>' modal'
,p_region_name=>'Modal'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>160
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<iframe src="&P9998_XURLDYNMC." width="925" height="825">',
'  <p>Your browser does not support iframes.</p>',
'</iframe>'))
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40316578339767224)
,p_button_sequence=>280
,p_button_plug_id=>wwv_flow_api.id(45300721071788218)
,p_button_name=>'P9998_PREVIEW'
,p_button_static_id=>'P1_PREVIEW'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Preview'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40273199066767203)
,p_name=>'P9998_AREALIST'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(45797866476789981)
,p_prompt=>'Area Zone'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.AREA_NAME_TREE AS Display,b.WHSZONPK_TREE AS Retrun',
'      FROM ',
'           VW_NMWHZNMAS  b',
'     CONNECT BY PRIOR AREACODE=ZONLCODE ',
'  START WITH ZONLCODE = ''ROOT''',
'      CONNECT BY PRIOR AREACODE=ZONLCODE ',
'      ORDER SIBLINGS BY AREACODE'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40286439229767209)
,p_name=>'P9998_Y_BUYER'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(45504441713000610)
,p_prompt=>'Year'
,p_source=>'select extract(year from sysdate)||''-01-01'' as only_year from dual;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     CAST (TO_CHAR (SYSDATE, ''yyyy'') AS NUMBER) - LEVEL + 1 AS D,CAST (TO_CHAR (SYSDATE, ''yyyy'') AS NUMBER) - LEVEL + 1||''-01-01'' AS R',
'FROM       DUAL',
'CONNECT BY LEVEL <= 10'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'.....Please selet.....'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40286851231767209)
,p_name=>'P9998_Y_SALE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(45504441713000610)
,p_prompt=>'Year'
,p_source=>'select extract(year from sysdate)||''-01-01'' as only_year from dual;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     CAST (TO_CHAR (SYSDATE, ''yyyy'') AS NUMBER) - LEVEL + 1 AS D,CAST (TO_CHAR (SYSDATE, ''yyyy'') AS NUMBER) - LEVEL + 1||''-01-01'' AS R',
'FROM       DUAL',
'CONNECT BY LEVEL <= 10'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'.....Please selet.....'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40287273529767209)
,p_name=>'P9998_Q_SALE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(45504441713000610)
,p_prompt=>'Quarter'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with q(qtr) as(',
'  select add_months(',
'                   TO_DATE(:P9998_Y_SALE,''YYYY-MM-DD'')',
'                    , (level-1)*3',
'                    )',
'    from dual ',
'  connect by level <= 4',
')',
'select Decode(extract(month from qtr),''1'',''Q1'',''4'',''Q2'',''7'',''Q3'',''10'',''Q4'',extract(month from qtr))                         as first_day',
'     , qtr  ||''/''||last_day(add_months(qtr, 2)) as last_day',
'  from q'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'.....Please selet.....'
,p_lov_cascade_parent_items=>'P9998_Y_SALE'
,p_ajax_items_to_submit=>'P9998_Y_SALE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40287669874767210)
,p_name=>'P9998_M_SALE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(45504441713000610)
,p_prompt=>'Month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with q(qtr) as(',
'  select add_months(',
'                   TO_DATE(:P9998_Y_SALE,''YYYY-MM-DD'')',
'                    , (level-1)',
'                    )',
'    from dual ',
'  connect by level <= 12',
')',
'select Decode(extract(month from qtr),''1'',''January'',''2'',''February'',''3'',''March'',''4'',''April'',''5'',''May'',''6'',''June'',''7'',''July'',''8'',''August'',''9'',''September'',''10'',''October'',''11'',''November'',''12'',''December'',extract(month from qtr))                         as'
||' first_day',
'     , qtr  ||''/''||last_day(qtr) as last_day',
'  from q'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'.....Please selet.....'
,p_lov_cascade_parent_items=>'P9998_Y_SALE'
,p_ajax_items_to_submit=>'P9998_Y_SALE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40312567062767223)
,p_name=>'P9998_COMPLOGO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(49033343785835628)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IMAGE',
'from syparmas',
'where CACMPCDE = :COMPCODE'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40312967718767223)
,p_name=>'P9998_XURLDYNMC'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(49033343785835628)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Xurldynmc'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40313292775767223)
,p_name=>'P9998_PROGNAME'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(49033343785835628)
,p_prompt=>'Progname'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40313704155767223)
,p_name=>'P9998_SESSIONID'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(49033343785835628)
,p_item_default=>'&SESSION.'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Sessionid'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40316897990767224)
,p_name=>'P9998_CURRENTDATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(45300721071788218)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_month varchar2(50);',
'begin',
'select substr(trunc(sysdate,''Month''),4) into v_month from dual;',
'return v_month;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40317374825767224)
,p_name=>'P9998_FROM_DATE_SEARCH'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(45300721071788218)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_date date;',
'begin',
'select trunc(sysdate,''MONTH'') into v_date from dual;',
'return(v_date);',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<span style="font-size:10px;font-weight:bold;color:green;">Date From</span>'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width:72px;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40317697777767224)
,p_name=>'P9998_TO_DATE_SEARCH'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(45300721071788218)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<span style="font-size:10px;font-weight:bold;color:green;">To</span>'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="width:72px;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40318094555767225)
,p_name=>'P9998_BRAND_NAME'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(45300721071788218)
,p_prompt=>'Brand Name'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40318552018767225)
,p_name=>'P9998_COMPCODE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(45300721071788218)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40318975269767225)
,p_name=>'P9998_BRAND_CODE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(45300721071788218)
,p_item_default=>':BRAND_CODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Brand Code'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40321125147767225)
,p_name=>'P9998_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(45199068332775314)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40321583963767226)
,p_name=>'P9998_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(45199068332775314)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40321967617767226)
,p_name=>'P9998_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(45199068332775314)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40322309299767226)
,p_name=>'P9998_USER_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(45199068332775314)
,p_prompt=>'User Name'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40322722387767226)
,p_name=>'P9998_USER_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(45199068332775314)
,p_prompt=>'User'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40323155562767226)
,p_name=>'P9998_MSG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(45199068332775314)
,p_prompt=>'Msg'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40323543674767226)
,p_name=>'P9998_COMPNAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(45199068332775314)
,p_prompt=>'Compname'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40323960448767226)
,p_name=>'P9998_COMPADD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(45199068332775314)
,p_prompt=>'Compadd'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40339580288767231)
,p_name=>'P9998_FROM_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(45521196921233841)
,p_prompt=>'Qrtly From Date'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40339982660767231)
,p_name=>'P9998_TO_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(45521196921233841)
,p_prompt=>'Qrtly To Date'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40340360465767231)
,p_name=>'P9998_YRLY_FROM_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(45521196921233841)
,p_prompt=>'Yearly From Date'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40340769220767231)
,p_name=>'P9998_YRLY_TO_DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(45521196921233841)
,p_prompt=>'Yearly To Date'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40341097375767231)
,p_name=>'P9998_MNLY__FROM_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(45521196921233841)
,p_prompt=>'Monthly From Date'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40341544616767231)
,p_name=>'P9998_MNLY_TO_DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(45521196921233841)
,p_prompt=>'Monthly To Date'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40342275788767231)
,p_name=>'P9998_Y_FROM_BUYER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(45678027455043738)
,p_prompt=>'Y from Buyer'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40342647882767231)
,p_name=>'P9998_Y_TO_BUYER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(45678027455043738)
,p_prompt=>'Y to Buyer'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40344451464767232)
,p_name=>'P9998_SELLERLIST'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(45981288759258251)
,p_prompt=>'Seller Zone'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.AREA_NAME_TREE AS Display,b.WHSZONPK_TREE AS Retrun',
'      FROM ',
'           VW_NMWHZNMAS  b',
'     CONNECT BY PRIOR AREACODE=ZONLCODE ',
'  START WITH ZONLCODE = ''ROOT''',
'      CONNECT BY PRIOR AREACODE=ZONLCODE ',
'      ORDER SIBLINGS BY AREACODE'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40347133915767234)
,p_name=>'page load clear field'
,p_event_sequence=>1
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40347646297767234)
,p_event_id=>wwv_flow_api.id(40347133915767234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9998_XURLDYNMC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40348105996767234)
,p_event_id=>wwv_flow_api.id(40347133915767234)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'null;',
'end;'))
,p_attribute_02=>'P9998_FROM_DATE_SEARCH,P9998_TO_DATE_SEARCH'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40348521279767234)
,p_name=>'hide Modal region on page load'
,p_event_sequence=>5
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40349004076767234)
,p_event_id=>wwv_flow_api.id(40348521279767234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(49542611011119689)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40349424325767234)
,p_name=>'Click progname test'
,p_event_sequence=>7
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9998_PROGNAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40349921069767234)
,p_event_id=>wwv_flow_api.id(40349424325767234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_path varchar2(100);',
'V_comcde varchar2(5);',
'V_prgnme varchar2(500);',
'v_url varchar2(500);',
'v_ip varchar2(50);',
'begin',
'select REPTURLL ',
'into v_ip',
'from syparmas',
'where CACMPCDE=:COMPCODE;',
' v_url :=',
'         v_ip ',
'         || ''/reports/rwservlet?userid=orbrgs_rml/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=''',
';',
'select WEBDRPTH ',
'into V_path',
'from sysyspth',
'where PATHCODE=substr(UPPER(:P9998_PROGNAME),1,2);',
'',
':P9998_XURLDYNMC:=v_url||V_path||:P9998_PROGNAME||''.rdf''||''&p0=''||:COMPCODE;',
'',
'',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_attribute_02=>'P9998_PROGNAME'
,p_attribute_03=>'P9998_XURLDYNMC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>'||''&P14=''||''SV''||''&P15=''||1||''&P13=''||''SV210022'' '
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40350335506767235)
,p_name=>'assign Quartly Date for sale'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9998_Q_SALE'
,p_condition_element=>'P9998_Q_SALE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40350816064767235)
,p_event_id=>wwv_flow_api.id(40350335506767235)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9998_YRLY_FROM_DATE,P9998_YRLY_TO_DATE,P9998_MNLY__FROM_DATE,P9998_MNLY_TO_DATE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40351379734767235)
,p_event_id=>wwv_flow_api.id(40350335506767235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
':P9998_FROM_DATE:=REGEXP_SUBSTR(:P9998_Q_SALE,',
'                ''[^/]+'');',
':P9998_TO_DATE  :=TRIM(''/'' FROM REGEXP_SUBSTR(:P9998_Q_SALE,',
'                ''/[^/]+''));',
'End;'))
,p_attribute_02=>'P9998_Q_SALE'
,p_attribute_03=>'P9998_FROM_DATE,P9998_TO_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40351878169767235)
,p_event_id=>wwv_flow_api.id(40350335506767235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(45504441713000610)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40352230878767235)
,p_name=>'assign year Date for sale'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9998_Y_SALE'
,p_condition_element=>'P9998_Y_SALE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40352787273767235)
,p_event_id=>wwv_flow_api.id(40352230878767235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P9998_YRLY_FROM_DATE:=TRUNC (TO_DATE(:P9998_Y_SALE,''YYYY-MM-DD'') , ''YEAR'');',
':P9998_YRLY_TO_DATE:=ADD_MONTHS(TRUNC (TO_DATE(:P9998_Y_SALE,''YYYY-MM-DD'') ,''YEAR''),12)-1;',
'end;'))
,p_attribute_02=>'P9998_Y_SALE'
,p_attribute_03=>'P9998_YRLY_FROM_DATE,P9998_YRLY_TO_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40353262334767235)
,p_event_id=>wwv_flow_api.id(40352230878767235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(45504441713000610)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40353691512767235)
,p_event_id=>wwv_flow_api.id(40352230878767235)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9998_FROM_DATE,P9998_TO_DATE,P9998_MNLY__FROM_DATE,P9998_MNLY_TO_DATE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40354090491767235)
,p_name=>'assign Monthly Date for sale'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9998_M_SALE'
,p_condition_element=>'P9998_M_SALE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40354672428767235)
,p_event_id=>wwv_flow_api.id(40354090491767235)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9998_YRLY_FROM_DATE,P9998_YRLY_TO_DATE,P9998_FROM_DATE,P9998_TO_DATE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40355123070767235)
,p_event_id=>wwv_flow_api.id(40354090491767235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P9998_MNLY__FROM_DATE:=REGEXP_SUBSTR(:P9998_M_SALE,',
'                ''[^/]+'');',
':P9998_MNLY_TO_DATE:=TRIM(''/'' FROM REGEXP_SUBSTR(:P9998_M_SALE,',
'                ''/[^/]+''));',
'end;'))
,p_attribute_02=>'P9998_M_SALE'
,p_attribute_03=>'P9998_MNLY_TO_DATE,P9998_MNLY__FROM_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40355617686767235)
,p_event_id=>wwv_flow_api.id(40354090491767235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(45504441713000610)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40355995235767236)
,p_name=>'assign year Date for Buyer'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9998_Y_BUYER'
,p_condition_element=>'P9998_Y_BUYER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40356519699767236)
,p_event_id=>wwv_flow_api.id(40355995235767236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P9998_Y_FROM_BUYER:=TRUNC (TO_DATE(:P9998_Y_BUYER,''YYYY-MM-DD'') , ''YEAR'');',
':P9998_Y_TO_BUYER:=ADD_MONTHS(TRUNC (TO_DATE(:P9998_Y_BUYER,''YYYY-MM-DD'') ,''YEAR''),12)-1;',
'end;'))
,p_attribute_02=>'P9998_Y_BUYER'
,p_attribute_03=>'P9998_Y_FROM_BUYER,P9998_Y_TO_BUYER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40357030531767236)
,p_event_id=>wwv_flow_api.id(40355995235767236)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(45667448805595078)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40357483749767236)
,p_name=>'refresh areawise chart'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9998_AREALIST'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40357922911767236)
,p_event_id=>wwv_flow_api.id(40357483749767236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(45797866476789981)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40358361888767236)
,p_name=>'refresh active seller chart'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9998_SELLERLIST'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40358856998767236)
,p_event_id=>wwv_flow_api.id(40358361888767236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(45981288759258251)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40359239224767236)
,p_name=>'change'
,p_event_sequence=>65
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9998_XURLDYNMC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40359703181767236)
,p_event_id=>wwv_flow_api.id(40359239224767236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'go'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40360135686767236)
,p_name=>'Call Report'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.boktdy'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40360689286767236)
,p_event_id=>wwv_flow_api.id(40360135686767236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:$(''#Modal'').dialog(',
'    {',
'        autoOpen: true,',
'        width:950,',
'        height: 850,',
'        modal: true',
'    }).dialog(''moveToTop'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40360994618767236)
,p_name=>'Call Report'
,p_event_sequence=>71
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.bokmth'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40361498775767236)
,p_event_id=>wwv_flow_api.id(40360994618767236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:$(''#Modal'').dialog(',
'    {',
'        autoOpen: true,',
'        width:950,',
'        height: 850,',
'        modal: true',
'    }).dialog(''moveToTop'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40361943996767237)
,p_name=>'Call Report'
,p_event_sequence=>72
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.bokyer'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40362451695767237)
,p_event_id=>wwv_flow_api.id(40361943996767237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:$(''#Modal'').dialog(',
'    {',
'        autoOpen: true,',
'        width:950,',
'        height: 850,',
'        modal: true',
'    }).dialog(''moveToTop'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40362837910767237)
,p_name=>'refresh modal region'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9998_XURLDYNMC'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40363349891767237)
,p_event_id=>wwv_flow_api.id(40362837910767237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':REPORT_URL:=:P9998_XURLDYNMC;',
'END;'))
,p_attribute_02=>'P9998_XURLDYNMC'
,p_attribute_03=>'REPORT_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40346375353767233)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET COOKIE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cookie  OWA_COOKIE.cookie;',
'comcde varchar2(5);',
'v varchar2(255) := null;',
'c owa_cookie.cookie;',
'begin',
':P101_USERNAME:= apex_authentication.get_login_username_cookie;',
'',
'c := owa_cookie.get(''APEX_AT_WORK_COOKIE'');',
' -- :P9998_COMPCODE := c.vals(1);',
'  if :P9998_COMPCDE is null then',
'  :COMPCODE := c.vals(1);',
'  else',
'  :COMPCODE := :P9998_COMPCDE;',
'  end if;',
'exception',
'   when others then',
'      null;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40346745827767233)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2015/01/19 15:44 (Formatter Plus v4.8.8) */',
'   --system',
'',
'',
'DECLARE',
'   vnmsession   NUMBER                   := :SESSION;',
'   v_pageid     NUMBER;',
'   v_link       VARCHAR2 (100);',
'   v1           VARCHAR2 (100);',
'   v_progtype   symenmas.progtype%TYPE;',
'BEGIN',
'',
'  select distinct a,b',
'                 INTO :p9998_compname,',
'                       :p9998_compadd',
'                       from(',
'SELECT distinct decode(:COMPCODE,''A'',''ALL COMPANY'',cacmpnam)  a,',
'decode(:COMPCODE,''A'',''ADDRESS'',INITCAP (   caaddrs1',
'                   || caaddrs2',
'                   || '' ''',
'                   || caaddrs3',
'                   || '',  ''',
'                   || caaddrs4',
'                   || ''.''',
'                  ))',
'           b',
'     FROM orbrgs_rml.syparmas a,orbrgs_rml.SYRIGHTS b',
'    WHERE cacmpcde = decode(:COMPCODE,''A'',cacmpcde,:COMPCODE) ',
'    and a.cacmpcde=b.COMPCODE',
'    And lower(B.USERCODE) = lower(:APP_USER)',
'    UNION ALL',
'    SELECT distinct decode(:COMPCODE,''A'',''ALL COMPANY'',cacmpnam)  a,',
'         decode(:COMPCODE,''A'',''ADDRESS'',INITCAP (   caaddrs1',
'                   || caaddrs2',
'                   || '' ''',
'                   || caaddrs3',
'                   || '',  ''',
'                   || caaddrs4',
'                   || ''.''',
'                  )) b',
'     FROM orbrgs_cvl.syparmas a,orbrgs_cvl.SYRIGHTS b',
'    WHERE cacmpcde = decode(:COMPCODE,''A'',cacmpcde,:COMPCODE)',
'    and a.cacmpcde=b.COMPCODE',
'    And lower(B.USERCODE) = lower(:APP_USER));',
'    ',
'    select distinct b into :P9998_BRAND_NAME from(',
' select distinct decode(:BRAND_CODE,''A'',''ALL BRAND'',NMCODDES) b',
'--into :P9998_BRAND_NAME',
'from orbrgs_rml.nmcodmas',
'where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'and MODLCODE=''NM''',
'and NMHRDCDE=''COM''',
'and NMSOFCDE=decode(:BRAND_CODE,''A'',NMSOFCDE,:BRAND_CODE)',
'UNION ALL',
'select distinct decode(:BRAND_CODE,''A'',''ALL BRAND'',NMCODDES) b',
'from orbrgs_cvl.nmcodmas',
'where compcode=decode(:COMPCODE,''A'',compcode,:COMPCODE)',
'and MODLCODE=''NM''',
'and NMHRDCDE=''COM''',
'and NMSOFCDE=decode(:BRAND_CODE,''A'',NMSOFCDE,:BRAND_CODE));',
'    ',
'    :COMPLOGO:=:P9998_COMPLOGO;',
'',
' /*  dpr_random_quotes (:p9998_msg);',
'',
'   DELETE FROM stglobtm',
'         WHERE UPPER (colmc2) = UPPER (:app_user);*/',
'',
'   select distinct a,b,c ',
'        INTO :p9998_user_name, :fx_username, :p9998_user_id',
' from(',
'SELECT username a, username b, :app_user c',
'     FROM orbrgs_rml.syusrmas',
'    WHERE usercode = :APP_USER',
'and DIVNCODE=:COMPCODE',
'    UNION ALL',
'    SELECT username a, username b, :app_user c',
'     FROM orbrgs_cvl.syusrmas',
'    WHERE usercode = :APP_USER',
'and DIVNCODE=:COMPCODE);',
'',
'  /* FOR c1 IN (SELECT DISTINCT a.compcode, a.usercode, a.parentnm, a.progname,',
'                              a.menuleaf',
'                         FROM syrights a',
'                        WHERE a.compcode = :COMPCODE',
'                          AND a.usercode = :app_user',
'              UNION',
'              SELECT DISTINCT :COMPCODE compcode, :app_user usercode,',
'                              a.parentnm, a.progname, a.menuleaf',
'                         FROM syrights a',
'                        WHERE compcode = :COMPCODE',
'                              AND a.usercode = :app_user',
'              UNION',
'              SELECT :COMPCODE compcode, :app_user usercode, ''ROOTP'',',
'                     ''ROOT'' progname, ''M'' menuleaf',
'                FROM DUAL',
'               WHERE :COMPCODE IS NOT NULL)',
'   LOOP',
'      v_link := NULL;',
'',
'      IF c1.menuleaf = ''L''',
'      THEN',
'         BEGIN',
'            SELECT pageid, progtype',
'              INTO v_pageid, v_progtype',
'              FROM symenmas b',
'             WHERE progname = c1.progname;',
'         EXCEPTION',
'            WHEN NO_DATA_FOUND',
'            THEN',
'               v_pageid := NULL;',
'               v_progtype := ''F'';',
'         END;',
'',
'         IF v_pageid IS NOT NULL AND v_progtype IN (''R'', ''F'')',
'         THEN',
'            v_link :=',
'                  ''javascript:change_page(''''''',
'               || c1.progname',
'               || '''''',''',
'               || v_pageid',
'               || '',''''''',
'               || c1.parentnm',
'               || '''''',''''''',
'               || v_progtype',
'               || '''''')'';',
'         END IF;',
'      ELSE',
'         v_progtype := ''F'';',
'      END IF;',
'',
'      INSERT INTO stglobtm',
'                  (colmc1, colmc2, colmc3, colmc4,',
'                   colmc5, colmc7',
'                  )',
'           VALUES (c1.compcode, c1.usercode, c1.parentnm, c1.progname,',
'                   c1.menuleaf, v_link',
'                  );',
'   END LOOP;*/',
'',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      :P9998_COMPNAME := ''Please Select Your Company'';',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40345899439767233)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'redirect in 102 application login page'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_redirect_url VARCHAR2(1000) := ''f?p=102:101'';',
'BEGIN',
'if :P101_USERNAME is null then',
'htp.init();',
'owa_util.redirect_url(l_redirect_url); --- Redirect',
'apex_application.g_unrecoverable_error := true;   --- stops all further page processing',
'end if;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
