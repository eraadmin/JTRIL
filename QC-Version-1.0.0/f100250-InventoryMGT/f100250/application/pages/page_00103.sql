prompt --application/pages/page_00103
begin
--   Manifest
--     PAGE: 00103
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
 p_id=>103
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Cost Negotiation'
,p_step_title=>'Cost Negotiation'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function addRow(tableId) {',
'   ',
'   var thisTable   = $(''#''+tableId)                         // the table that will be affected',
'   ,   newRow  = $(thisTable).find(''tbody tr:last'').html()   // new row that we''re going to add',
'   $(thisTable).find(''tr:last'').after(''<tr>''+newRow+''</tr>'') // place the new row after the last one in the table',
'   ',
'   $(''#''+tableId+'' tbody tr:last input'').each(',
'       function(){',
'           var x = this.id;',
'               /* $(this).data(id);   parseInt($(this).attr("data-id"));*/',
'           var z = "f"+x.substr(1,4);',
'           x= x.substr(4,4);',
'           var y= parseInt(x)+1;',
'           var pad = ''000'';',
'           x = (pad + y).slice(-pad.length);',
'           x= z+x;',
'           $(this).attr(''id'', x);',
'',
'       }',
'   )  ',
'   // clear all values from the new row',
'  ',
'',
'}',
'</script>',
'',
'',
'<script type="text/javascript">',
'function addRowttt(tableId) {',
'   ',
'   var thisTable   = $(''#''+tableId)                         // the table that will be affected',
'   ,   newRow  = $(thisTable).find(''tbody tr:last'').html()   // new row that we''re going to add',
'   $(thisTable).find(''tr:last'').after(''<tr>''+newRow+''</tr>'') // place the new row after the last one in the table',
'   ',
'   $(''#''+tableId+'' tbody tr:last input'').each(function(){var x=$(this).attr(''id'', ''''+ Index+1); alert(x); })  // clear all values from the new row',
'   ',
'   ',
'  ',
'   html_GetElement(''f15_0001'').value = 1;',
'   ',
'  ',
'',
'}',
'</script>',
'',
'',
'<script type="text/javascript">',
'function calculateTotal(pThis)',
'{',
'var vRow =  pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f21_0001'').value =1;',
'for (i = 0; i <=vRow; i++)',
'{',
'var y= pad(i+1, 4);',
'var tmp= ''f21_''.concat(y);',
'html_GetElement(''f21_''+vRow).value = i+0;',
'};',
'}',
'</script>',
'',
'<script language="JavaScript" type="text/javascript">',
'',
' function addDate()',
' {',
'  var items = document.getElementsByName("p_t25"); ',
'  ',
' ',
'  for (var i = 0; i < items.length; i++)',
'  {  ',
'   ',
'    $x(''P103_E_DOCTDATE'').value = items[i].value;',
'   ',
'  ',
'  } ',
'  ',
' ',
' }',
'</script>',
'',
'<script type="text/javascript">',
'function estimatedocnum(pThis)',
'{',
'    ',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'$(document).ready(function(){',
'  $(''#P103_E_DOCNUMBR'').trigger(''click'');',
'});',
'html_GetElement(''f11_''+vRow).value=',
'document.getElementById(''P103_E_DOCNUMBR'').value;',
'html_GetElement(''f12_''+vRow).value=',
'document.getElementById(''P103_E_DOCTDATE'').value;',
'   ',
' ',
'}',
'</script>',
'',
'',
'',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px !important;',
'}',
'#tabs .bg {',
'    height: 8px ! important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39302720177776734)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7533132934253244474)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39303389966795727)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P103_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P103_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39305021834797894)
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
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39545272842080908)
,p_plug_name=>'mid'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>19
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39298612878753301)
,p_name=>'Estimation Details'
,p_region_name=>'payment'
,p_parent_plug_id=>wwv_flow_api.id(39545272842080908)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    apex_item.hidden (8,',
'                         compcode',
'                        ) compcode,',
'apex_item.hidden (9,',
'                         docttype',
'                        ) docttype,',
'       apex_item.hidden (10,',
'                         subttype',
'                        ) subttype,',
'                         apex_item.text',
'                         (11,',
'                          docnumbr,',
'                          80,',
'                          100,',
'                          ''style="width:170px" '',',
'                          ''f11_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) docnumbr,',
'           apex_item.text',
'                         (12,',
'                          doctdate,',
'                          80,',
'                          100,',
'                          ''style="width:170px" onclick="estimatedocnum(this);" '',',
'                          ''f12_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) doctdate,',
'           apex_item.text',
'                         (14,',
'                          remarkss,',
'                          80,',
'                          100,',
'                          ''style="width:170px" '',',
'                          ''f14_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) remarkss,',
'           apex_item.text',
'                         (15,',
'                          estjobno,',
'                          80,',
'                          100,',
'                          ''style="width:170px" readonly="readonly"'',',
'                          ''f15_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) estjobno,',
'APEX_ITEM.CHECKBOX(16,estjobno,NULL,NULL,NULL,''f16_#ROWNUM#'') checkbox,',
'apex_item.hidden (17,',
'                         oprstamp',
'                        ) oprstamp,',
'       apex_item.hidden (18,',
'                         timstamp',
'                        ) timstamp,',
'      apex_item.text',
'                         (19,',
'                          negmaspk,',
'                          80,',
'                          100,',
'                          ''style="width:20px" '',',
'                          ''f19_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) negmaspk',
'      FROM nmnegmas',
'where COMPCODE=:COMPCODE',
'and SRVCNOFK=:P103_SERVNO',
'UNION ALL',
'SELECT     apex_item.hidden (8,',
'                         null',
'                        ) compcode,',
'apex_item.hidden (9,',
'                         null',
'                        ) docttype,',
'       apex_item.hidden (10,',
'                         null',
'                        ) subttype,',
'                        apex_item.text',
'                         (11,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:170px" '',',
'                          ''f11_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) docnumbr,',
'           apex_item.text',
'                         (12,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:170px" onclick="estimatedocnum(this);"'',',
'                          ''f12_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) doctdate,',
'',
'           apex_item.text',
'                         (14,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:170px" '',',
'                          ''f14_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) remarkss,',
'           apex_item.text',
'                         (15,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:170px" readonly="readonly"'',',
'                          ''f15_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) estjobno,',
'APEX_ITEM.CHECKBOX(16,NULL,NULL,NULL,NULL,''f16_#ROWNUM#'') checkbox,',
'apex_item.hidden (17,',
'                         null',
'                        ) oprstamp,',
'       apex_item.hidden (18,',
'                         null',
'                        ) timstamp,',
'       apex_item.text',
'                         (19,',
'                          Null,',
'                          80,',
'                          100,',
'                          ''style="width:20px" '',',
'                          ''f19_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) negmaspk',
'      FROM DUAL',
'connect by level<1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P103_SERVNO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found esti'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     apex_item.text',
'                         (11,',
'                          docnumbr,',
'                          80,',
'                          100,',
'                          ''style="width:170px" readonly="readonly"'',',
'                          ''f11_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) docnumbr,',
'           apex_item.text',
'                         (12,',
'                          doctdate,',
'                          80,',
'                          100,',
'                          ''style="width:170px" '',',
'                          ''f12_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) doctdate,',
'           apex_item.text',
'                         (14,',
'                          remarkss,',
'                          80,',
'                          100,',
'                          ''style="width:170px" '',',
'                          ''f14_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) remarkss,',
'           apex_item.text',
'                         (15,',
'                          estjobno,',
'                          80,',
'                          100,',
'                          ''style="width:170px" readonly="readonly"'',',
'                          ''f15_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) estjobno,',
'APEX_ITEM.CHECKBOX(16,estjobno,NULL,NULL,NULL,''f16_#ROWNUM#'') checkbox',
'      FROM nmnegmas',
'where COMPCODE=:COMPCODE',
'and SRVCNOFK=:P103_SERVNO',
'UNION ALL',
'SELECT     apex_item.text',
'                         (11,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:170px" readonly="readonly"'',',
'                          ''f11_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) docnumbr,',
'           apex_item.text',
'                         (12,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:170px" onclick="addDate();estimatedocnum(this);" '',',
'                          ''f12_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) doctdate,',
'',
'           apex_item.text',
'                         (14,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:170px" '',',
'                          ''f14_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) remarkss,',
'           apex_item.text',
'                         (15,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:170px" readonly="readonly"'',',
'                          ''f15_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) estjobno,',
'APEX_ITEM.CHECKBOX(16,NULL,NULL,NULL,NULL,''f16_#ROWNUM#'') checkbox',
'      FROM DUAL',
'CONNECT BY LEVEL <= 5'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45636549447383581)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>6
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45643396121393714)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Docttype'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45643863497393714)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Subttype'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39299186308753306)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>1
,p_column_heading=>'Estimation<br>No.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39299636993753309)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>2
,p_column_heading=>'Estimation<br>Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_column_comment=>'onclick="estimatedocnum(this);"'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39299982210753309)
,p_query_column_id=>6
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>3
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  batchnum,batchnum',
'    FROM (SELECT DISTINCT w.batchnum,',
'                 ROUND (r.costrate) costrate,',
'                 CASE',
'                    WHEN NVL (i.saleperc, 0) > 0',
'                    THEN',
'                       ROUND (r.costrate * (i.saleperc / 100) + r.costrate)',
'                    ELSE',
'                       ROUND (r.salerate)',
'                 END',
'                    s_salerate, NVL (w.clbalqty, 0) clbalqty,w.compcode',
'            FROM nmwhimas w, nmbtrate r, nmitemas i',
'           WHERE     w.compcode = ''100''',
'                 AND w.compcode = r.compcode',
'                 AND w.compcode = i.compcode',
'                 AND w.itemcode = r.itemcode',
'                 AND w.itemcode = i.itemcode',
'                 AND w.warecode = r.warecode',
'                 AND w.batchnum = r.batchnum',
'                 AND w.clbalqty > 0',
'                 AND w.warecode = ''E01''',
'                 AND TRUNC (r.batchdte) =',
'                        (SELECT MAX (TRUNC (batchdte))',
'                           FROM nmbtrate',
'                          WHERE     compcode = ''100'' ',
'                                AND warecode = ''E01''',
'                                AND batchnum = w.batchnum))',
'GROUP BY compcode,batchnum,costrate, s_salerate'))
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39300440261753311)
,p_query_column_id=>7
,p_column_alias=>'ESTJOBNO'
,p_column_display_sequence=>4
,p_column_heading=>'Estimation<br>job<br>no'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40575465029900318)
,p_query_column_id=>8
,p_column_alias=>'CHECKBOX'
,p_column_display_sequence=>5
,p_column_heading=>'Complete?'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45652399108408071)
,p_query_column_id=>9
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>9
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45652798581408071)
,p_query_column_id=>10
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>10
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45653231175408073)
,p_query_column_id=>11
,p_column_alias=>'NEGMASPK'
,p_column_display_sequence=>11
,p_column_heading=>'Negmaspk'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39333620523528188)
,p_name=>'Spare Parts'
,p_region_name=>'payment1'
,p_parent_plug_id=>wwv_flow_api.id(39545272842080908)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT apex_item.text (21,',
'                       serlnumb,',
'                       80,',
'                       100,',
'                       ''style="width:40px" '',',
'                       ''f21_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) srl,',
'       apex_item.text (22,',
'                       itemlong,',
'                       80,',
'                       100,',
'                       ''style="width:200px" '',',
'                       ''f22_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) itemlong,',
'   APEX_ITEM.POPUP_FROM_QUERY (23,BATCHNUM,''SELECT  batchnum,batchnum',
'    FROM (SELECT DISTINCT w.batchnum,',
'                 ROUND (r.costrate) costrate,',
'                 CASE',
'                    WHEN NVL (i.saleperc, 0) > 0',
'                    THEN',
'                       ROUND (r.costrate * (i.saleperc / 100) + r.costrate)',
'                    ELSE',
'                       ROUND (r.salerate)',
'                 END',
'                    s_salerate, NVL (w.clbalqty, 0) clbalqty,w.compcode',
'            FROM nmwhimas w, nmbtrate r, nmitemas i',
'           WHERE     w.compcode = ''''100'''' ',
'                 AND w.compcode = r.compcode',
'                 AND w.compcode = i.compcode',
'                 AND w.itemcode = r.itemcode',
'                 AND w.itemcode = i.itemcode',
'                 AND w.warecode = r.warecode',
'                 AND w.batchnum = r.batchnum',
'                 AND w.clbalqty > 0',
'                 AND w.warecode = ''''E01''''',
'                 AND TRUNC (r.batchdte) =',
'                        (SELECT MAX (TRUNC (batchdte))',
'                           FROM nmbtrate',
'                          WHERE     compcode = ''''100'''' ',
'                                AND warecode = ''''E01''''',
'                                AND batchnum = w.batchnum))',
'GROUP BY compcode,batchnum,costrate, s_salerate'') batchnum,',
'',
'                     APEX_ITEM.POPUP_FROM_QUERY (p_idx =>24,p_value=>itemcode,p_lov_query =>''select itemcode d, itemcode r',
'  from (select itemcode, itemdes1 description, usercode mhc, i.modelnam model, brand,  product,',
'           (select warecode',
'                  from nmwhsmas',
'                 where compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  warecode,',
'               (select costcode',
'                  from nmwhsmas',
'                 where compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  costcode,',
'               (select nvl (sum (clbalqty), 0)',
'                  from nmwhimas',
'                 where     itemcode = i.itemcode',
'                       and compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  stock',
'          from vwnmitem i',
'         where     compcode = '''''' || :compcode || ''''''',
'               and nvl (statuscd, ''''ACT'''') = ''''ACT''''',
'               and nvl (finishgd, ''''N'''') = ''''N''''',
'               and nvl (paintflg, ''''N'''') = nvl ('''''' || :paintflg || '''''', ''''N'''')',
'               and nvl (paintflg, ''''N'''') = ''''N''''',
'               and i.modlcode = '''''' || :modlcode || ''''''',
'        union',
'        select itemcode,',
'               itemdes1 description,',
'               usercode mhc,',
'               i.modelnam model,',
'               brand,',
'               product,',
'               (select warecode',
'                  from nmwhsmas',
'                 where compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  warecode,',
'               (select costcode',
'                  from nmwhsmas',
'                 where compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  costcode,',
'               (select nvl (sum (clbalqty), 0)',
'                  from nmwhimas',
'                 where     itemcode = i.itemcode',
'                       and compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  stock',
'          from vwnmitem i',
'         where     compcode = '''''' || :compcode || ''''''',
'               and nvl (statuscd, ''''ACT'''') = ''''ACT''''',
'               and nvl (finishgd, ''''N'''') = ''''N''''',
'               and nvl (paintflg, ''''N'''') = nvl ('''''' || :paintflg || '''''', ''''N'''')',
'               and nvl (paintflg, ''''N'''') = ''''N''''',
'        union',
'        select i.itemcode,',
'               itemdes1 description,',
'               usercode mhc,',
'               i.modlcode model,',
'               brand,',
'               i.product,',
'               (select warecode',
'                  from nmwhsmas',
'                 where compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  warecode,',
'               (select costcode',
'                  from nmwhsmas',
'                 where compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  costcode,',
'               (select nvl (sum (clbalqty), 0)',
'                  from nmwhimas',
'                 where     itemcode = i.itemcode',
'                       and compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  stock',
'          from vwnmitem i, nmitpart p',
'         where     i.compcode = p.compcode(+)',
'               and i.itemcode = p.itemcode(+)',
'               and i.compcode = '''''' || :compcode || ''''''',
'               and nvl (statuscd, ''''ACT'''') = ''''ACT''''',
'               and nvl (paintflg, ''''N'''') = nvl ('''''' || :paintflg || '''''', ''''N'''')',
'               and nvl (paintflg, ''''N'''') = ''''N''''',
'               and i.modlcode = '''''' || :modlcode || '''''')',
'               union all',
'select itemcode d, itemcode r',
'  from vwnmitem i',
' where     compcode = '''''' || :compcode || ''''''',
'       and nvl (statuscd, ''''ACT'''') = ''''ACT''''',
'       and nvl (finishgd, ''''N'''') = ''''N''''',
'       and nvl (paintflg, ''''N'''') = nvl ('''''' || :paintflg || '''''', ''''N'''')',
'       and nvl (paintflg, ''''N'''') = ''''Y''''',
''',p_item_id=>''f24_'' || LPAD (ROWNUM, 4, ''0'')) itemcode,',
'       apex_item.text (25,',
'                       huomcode,',
'                       5,',
'                       100,',
'                       ''style="width:50px" readonly="readonly"'',',
'                       ''f25_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) huomcode,',
'       apex_item.text (26,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:60px" '',',
'                       ''f26_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) qty,',
'       apex_item.text (27,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:80px" readonly="readonly"'',',
'                       ''f27_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) suggestrate,',
'       apex_item.text (28,',
'                       salerate,',
'                       80,',
'                       100,',
'                       ''style="width:80px" '',',
'                       ''f28_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) salerate,',
'       apex_item.text (29,',
'                       discpcnt,',
'                       80,',
'                       100,',
'                       ''style="width:70px" '',',
'                       ''f29_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) discpcnt,',
'       apex_item.text (30,',
'                       discamnt,',
'                       80,',
'                       100,',
'                       ''style="width:70px" '',',
'                       ''f30_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) discamnt,',
'       apex_item.text (32,',
'                       msfcamnt,',
'                       80,',
'                       100,',
'                       ''style="width:80px" readonly="readonly"'',',
'                       ''f32_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) msfcamnt,',
'       apex_item.text (33,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:80px" readonly="readonly"'',',
'                       ''f33_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) stockqty,',
'       apex_item.text (34,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:80px" readonly="readonly"'',',
'                       ''f34_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) rcvstock,',
'     apex_item.text (35,',
'                       NEGITMPK,',
'                       80,',
'                       100,',
'                       ''style="width:80px" '',',
'                       ''f35_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) NEGITMPK',
'  FROM nmnegitm',
' WHERE compcode = :compcode',
'and DOCNUMBR=:P103_P_DOCNUMBR',
'and DOCTDATE=:P103_P_DOCTDATE',
'and DOCTTYPE=:P103_P_DOCTTYPE',
'and SUBTTYPE=:P103_P_SUBTTYPE',
'and NEGITMFK=:P103_P_NEGMASPK',
'UNION ALL',
'SELECT apex_item.text (21,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:40px" '',',
'                       ''f21_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) srl,',
'                     ',
'       apex_item.text (22,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:200px" '',',
'                       ''f22_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) itemlong,',
'      APEX_ITEM.POPUP_FROM_QUERY (23,NULL,''SELECT  batchnum,batchnum',
'    FROM (SELECT DISTINCT w.batchnum,',
'                 ROUND (r.costrate) costrate,',
'                 CASE',
'                    WHEN NVL (i.saleperc, 0) > 0',
'                    THEN',
'                       ROUND (r.costrate * (i.saleperc / 100) + r.costrate)',
'                    ELSE',
'                       ROUND (r.salerate)',
'                 END',
'                    s_salerate, NVL (w.clbalqty, 0) clbalqty,w.compcode',
'            FROM nmwhimas w, nmbtrate r, nmitemas i',
'           WHERE     w.compcode = ''''100'''' ',
'                 AND w.compcode = r.compcode',
'                 AND w.compcode = i.compcode',
'                 AND w.itemcode = r.itemcode',
'                 AND w.itemcode = i.itemcode',
'                 AND w.warecode = r.warecode',
'                 AND w.batchnum = r.batchnum',
'                 AND w.clbalqty > 0',
'                 AND w.warecode = ''''E01''''',
'                 AND TRUNC (r.batchdte) =',
'                        (SELECT MAX (TRUNC (batchdte))',
'                           FROM nmbtrate',
'                          WHERE     compcode = ''''100'''' ',
'                                AND warecode = ''''E01''''',
'                                AND batchnum = w.batchnum))',
'GROUP BY compcode,batchnum,costrate, s_salerate'') batchnum,',
'  APEX_ITEM.POPUP_FROM_QUERY (p_idx=>24,p_value=>NULL,p_lov_query =>''select itemcode d, itemcode r',
'  from (select itemcode, itemdes1 description, usercode mhc, i.modelnam model, brand,  product,',
'           (select warecode',
'                  from nmwhsmas',
'                 where compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  warecode,',
'               (select costcode',
'                  from nmwhsmas',
'                 where compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  costcode,',
'               (select nvl (sum (clbalqty), 0)',
'                  from nmwhimas',
'                 where     itemcode = i.itemcode',
'                       and compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  stock',
'          from vwnmitem i',
'         where     compcode = '''''' || :compcode || ''''''',
'               and nvl (statuscd, ''''ACT'''') = ''''ACT''''',
'               and nvl (finishgd, ''''N'''') = ''''N''''',
'               and nvl (paintflg, ''''N'''') = nvl ('''''' || :paintflg || '''''', ''''N'''')',
'               and nvl (paintflg, ''''N'''') = ''''N''''',
'               and i.modlcode = '''''' || :modlcode || ''''''',
'        union',
'        select itemcode,',
'               itemdes1 description,',
'               usercode mhc,',
'               i.modelnam model,',
'               brand,',
'               product,',
'               (select warecode',
'                  from nmwhsmas',
'                 where compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  warecode,',
'               (select costcode',
'                  from nmwhsmas',
'                 where compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  costcode,',
'               (select nvl (sum (clbalqty), 0)',
'                  from nmwhimas',
'                 where     itemcode = i.itemcode',
'                       and compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  stock',
'          from vwnmitem i',
'         where     compcode = '''''' || :compcode || ''''''',
'               and nvl (statuscd, ''''ACT'''') = ''''ACT''''',
'               and nvl (finishgd, ''''N'''') = ''''N''''',
'               and nvl (paintflg, ''''N'''') = nvl ('''''' || :paintflg || '''''', ''''N'''')',
'               and nvl (paintflg, ''''N'''') = ''''N''''',
'        union',
'        select i.itemcode,',
'               itemdes1 description,',
'               usercode mhc,',
'               i.modlcode model,',
'               brand,',
'               i.product,',
'               (select warecode',
'                  from nmwhsmas',
'                 where compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  warecode,',
'               (select costcode',
'                  from nmwhsmas',
'                 where compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  costcode,',
'               (select nvl (sum (clbalqty), 0)',
'                  from nmwhimas',
'                 where     itemcode = i.itemcode',
'                       and compcode = '''''' || :compcode || ''''''',
'                       and warecode = '''''' || :P103_WARCD || '''''')',
'                  stock',
'          from vwnmitem i, nmitpart p',
'         where     i.compcode = p.compcode(+)',
'               and i.itemcode = p.itemcode(+)',
'               and i.compcode = '''''' || :compcode || ''''''',
'               and nvl (statuscd, ''''ACT'''') = ''''ACT''''',
'               and nvl (paintflg, ''''N'''') = nvl ('''''' || :paintflg || '''''', ''''N'''')',
'               and nvl (paintflg, ''''N'''') = ''''N''''',
'               and i.modlcode = '''''' || :modlcode || '''''')',
'               union all',
'select itemcode d, itemcode r',
'  from vwnmitem i',
' where     compcode = '''''' || :compcode || ''''''',
'       and nvl (statuscd, ''''ACT'''') = ''''ACT''''',
'       and nvl (finishgd, ''''N'''') = ''''N''''',
'       and nvl (paintflg, ''''N'''') = nvl ('''''' || :paintflg || '''''', ''''N'''')',
'       and nvl (paintflg, ''''N'''') = ''''Y''''',
''',p_item_id=>''f24_'' || LPAD (ROWNUM, 4, ''0'')) itemcode,',
'       apex_item.text (25,',
'                       NULL,',
'                       5,',
'                       100,',
'                       ''style="width:50px" readonly="readonly"'',',
'                       ''f25_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) huomcode,',
'       apex_item.text (26,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:60px" '',',
'                       ''f26_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) qty,',
'       apex_item.text (27,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:80px" readonly="readonly"'',',
'                       ''f27_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) suggestrate,',
'       apex_item.text (28,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:80px" '',',
'                       ''f28_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) salerate,',
'       apex_item.text (29,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:70px" '',',
'                       ''f29_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) discpcnt,',
'       apex_item.text (30,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:70px" '',',
'                       ''f30_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) discamnt,',
'       apex_item.text (32,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:80px" readonly="readonly"'',',
'                       ''f32_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) msfcamnt,',
'       apex_item.text (33,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:80px" readonly="readonly"'',',
'                       ''f33_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) stockqty,',
'       apex_item.text (34,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:80px" readonly="readonly"'',',
'                       ''f34_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) rcvstock,',
'       apex_item.text (35,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:80px" '',',
'                       ''f35_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) NEGITMPK',
' FROM DUAL',
'connect by level<1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found mon'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
,p_comment=>'TR '
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
 p_id=>wwv_flow_api.id(39409720784827540)
,p_query_column_id=>1
,p_column_alias=>'SRL'
,p_column_display_sequence=>1
,p_column_heading=>'Srl'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39334608011528191)
,p_query_column_id=>2
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>3
,p_column_heading=>'Itemlong'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ITEMDES1',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P103_P_ITEMCODE;'))
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39335411350528193)
,p_query_column_id=>3
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>4
,p_column_heading=>'Batchnum'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40679195833216951)
,p_query_column_id=>4
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Itemcode'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39335831373528193)
,p_query_column_id=>5
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>5
,p_column_heading=>'Hum'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39336226422528193)
,p_query_column_id=>6
,p_column_alias=>'QTY'
,p_column_display_sequence=>6
,p_column_heading=>'Qty'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39336615951528193)
,p_query_column_id=>7
,p_column_alias=>'SUGGESTRATE'
,p_column_display_sequence=>7
,p_column_heading=>'Suggest<br>Rate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39337059827528193)
,p_query_column_id=>8
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>8
,p_column_heading=>'Salerate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39337382422528193)
,p_query_column_id=>9
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>9
,p_column_heading=>'Discount<br>(%)'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39337842083528193)
,p_query_column_id=>10
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>10
,p_column_heading=>'Discount<br>Amount'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39338236560528194)
,p_query_column_id=>11
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>11
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39338591803528194)
,p_query_column_id=>12
,p_column_alias=>'STOCKQTY'
,p_column_display_sequence=>12
,p_column_heading=>'Stock<br>Qty.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39339056186528194)
,p_query_column_id=>13
,p_column_alias=>'RCVSTOCK'
,p_column_display_sequence=>13
,p_column_heading=>'Receive<br>Stock'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(48998660247739425)
,p_query_column_id=>14
,p_column_alias=>'NEGITMPK'
,p_column_display_sequence=>14
,p_column_heading=>'Negitmpk'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39343513819637574)
,p_name=>'Service Charge'
,p_region_name=>'payment2'
,p_parent_plug_id=>wwv_flow_api.id(39545272842080908)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT apex_item.hidden (37,',
'                         compcode',
'                        ) compcode,',
'apex_item.hidden (38,',
'                         OPRSTAMP',
'                        ) OPRSTAMP,',
'apex_item.hidden (39,',
'                         TIMSTAMP',
'                        ) TIMSTAMP,',
'apex_item.text (40,',
'                       NEGCRGPK,',
'                       80,',
'                       100,',
'                       ''style="width:20px" '',',
'                       ''f40_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) NEGCRGPK,',
'apex_item.text (41,',
'                       textserl,',
'                       80,',
'                       100,',
'                       ''style="width:40px" readonly="readonly"'',',
'                       ''f41_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) textserl,',
'       apex_item.text (42,',
'                       textcode,',
'                       80,',
'                       100,',
'                       ''style="width:80px" '',',
'                       ''f42_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) textcode,',
'       apex_item.text (43,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:170px" readonly="readonly"'',',
'                       ''f43_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) system_name,',
'       apex_item.text',
'                     (44,',
'                      NULL,',
'                      10,',
'                      100,',
'                      ''style="width:200px" readonly="readonly"'',',
'                      ''f44_'' || LPAD (ROWNUM, 4, ''0'')',
'                     ) service_name,',
'       apex_item.text (45,',
'                       NULL,',
'                       5,',
'                       100,',
'                       ''style="width:80px" readonly="readonly"'',',
'                       ''f45_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) group1,',
'       apex_item.text (46,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:80px"readonly="readonly" '',',
'                       ''f46_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) vehicle,',
'       apex_item.text (47,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:80px" readonly="readonly"'',',
'                       ''f47_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) srvcamt,',
'       apex_item.text (48,',
'                       trnsqnty,',
'                       80,',
'                       100,',
'                       ''style="width:40px" '',',
'                       ''f48_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) trnsqnty,',
'       apex_item.text (49,',
'                       disprcnt,',
'                       80,',
'                       100,',
'                       ''style="width:80px" '',',
'                       ''f49_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) disprcnt,',
'       apex_item.text (50,',
'                       disamont,',
'                       80,',
'                       100,',
'                       ''style="width:100px" '',',
'                       ''f50_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) disamont',
'  FROM nmnegcrg',
' WHERE compcode = :compcode ',
'and DOCNUMBR=:P103_P_DOCNUMBR',
'--and DOCTDATE=:P103_p_DOCTDATE',
'and DOCTTYPE=:P103_P_DOCTTYPE',
'and SUBTTYPE=:P103_P_SUBTTYPE',
'and NEGCRGFK=:P103_P_NEGMASPK',
'UNION ALL',
'SELECT   apex_item.hidden (37,',
'                         null',
'                        ) compcode,',
'apex_item.hidden (38,',
'                         null',
'                        ) OPRSTAMP,',
'apex_item.hidden (39,',
'                         null',
'                        ) TIMSTAMP, ',
'apex_item.text (40,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:20px" '',',
'                       ''f40_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) NEGCRGPK,',
'apex_item.text (41,',
'                           NULL,',
'                           80,',
'                           100,',
'                           ''style="width:40px" readonly="readonly"'',',
'                           ''f41_'' || LPAD (ROWNUM, 4, ''0'')',
'                          ) textserl,',
'           apex_item.text (42,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:80px" '',',
'                       ''f42_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) textcode,',
'           apex_item.text',
'                      (43,',
'                       NULL,',
'                       80,',
'                       100,',
'                       ''style="width:170px" readonly="readonly"'',',
'                       ''f43_'' || LPAD (ROWNUM, 4, ''0'')',
'                      ) system_name,',
'           apex_item.text',
'                     (44,',
'                      NULL,',
'                      10,',
'                      100,',
'                      ''style="width:200px" readonly="readonly"'',',
'                      ''f44_'' || LPAD (ROWNUM, 4, ''0'')',
'                     ) service_name,',
'           apex_item.text (45,',
'                           NULL,',
'                           5,',
'                           100,',
'                           ''style="width:80px" readonly="readonly"'',',
'                           ''f45_'' || LPAD (ROWNUM, 4, ''0'')',
'                          ) group1,',
'           apex_item.text (46,',
'                           NULL,',
'                           80,',
'                           100,',
'                           ''style="width:80px"readonly="readonly" '',',
'                           ''f46_'' || LPAD (ROWNUM, 4, ''0'')',
'                          ) vehicle,',
'           apex_item.text (47,',
'                           NULL,',
'                           80,',
'                           100,',
'                           ''style="width:80px" readonly="readonly"'',',
'                           ''f47_'' || LPAD (ROWNUM, 4, ''0'')',
'                          ) srvcamt,',
'           apex_item.text (48,',
'                           NULL,',
'                           80,',
'                           100,',
'                           ''style="width:40px" '',',
'                           ''f48_'' || LPAD (ROWNUM, 4, ''0'')',
'                          ) trnsqnty,',
'           apex_item.text (49,',
'                           NULL,',
'                           80,',
'                           100,',
'                           ''style="width:100px" '',',
'                           ''f49_'' || LPAD (ROWNUM, 4, ''0'')',
'                          ) disprcnt,',
'           apex_item.text (50,',
'                           NULL,',
'                           80,',
'                           100,',
'                           ''style="width:100px" '',',
'                           ''f50_'' || LPAD (ROWNUM, 4, ''0'')',
'                          ) disamont',
'      FROM DUAL',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found charg'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49735018565655546)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>11
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49735436894655548)
,p_query_column_id=>2
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>12
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49735779737655548)
,p_query_column_id=>3
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>13
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49783689116913062)
,p_query_column_id=>4
,p_column_alias=>'NEGCRGPK'
,p_column_display_sequence=>14
,p_column_heading=>'Negcrgpk'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39344126316637576)
,p_query_column_id=>5
,p_column_alias=>'TEXTSERL'
,p_column_display_sequence=>1
,p_column_heading=>'Srl.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39344485043637576)
,p_query_column_id=>6
,p_column_alias=>'TEXTCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39344899770637576)
,p_query_column_id=>7
,p_column_alias=>'SYSTEM_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Tools Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39345353929637576)
,p_query_column_id=>8
,p_column_alias=>'SERVICE_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Service Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39345704296637576)
,p_query_column_id=>9
,p_column_alias=>'GROUP1'
,p_column_display_sequence=>5
,p_column_heading=>'Group'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39346123478637576)
,p_query_column_id=>10
,p_column_alias=>'VEHICLE'
,p_column_display_sequence=>6
,p_column_heading=>'Vehicle'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39346540818637576)
,p_query_column_id=>11
,p_column_alias=>'SRVCAMT'
,p_column_display_sequence=>7
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39346874712637576)
,p_query_column_id=>12
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>8
,p_column_heading=>'Qty.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39347307657637578)
,p_query_column_id=>13
,p_column_alias=>'DISPRCNT'
,p_column_display_sequence=>9
,p_column_heading=>'Discount<br>(%)'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39347700073637578)
,p_query_column_id=>14
,p_column_alias=>'DISAMONT'
,p_column_display_sequence=>10
,p_column_heading=>'Discount<br>Amount'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39591513817459689)
,p_plug_name=>'2'
,p_parent_plug_id=>wwv_flow_api.id(39545272842080908)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P103_SERVNO'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39290384356704238)
,p_name=>'Cost Negotiation'
,p_parent_plug_id=>wwv_flow_api.id(39591513817459689)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  apex_item.text (1,',
'                          DOCNUMBR,',
'                          80,',
'                          100,',
'                          ''style="width:110px"'',',
'                          ''f01_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) DOCNUMBR,',
'      apex_item.text (2,',
'                          DOCTDATE,',
'                          80,',
'                          100,',
'                          ''style="width:80px" readonly="readonly"'',',
'                          ''f02_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) DOCTDATE,',
'      apex_item.text (3,',
'                          WARECODE,',
'                          80,',
'                          100,',
'                          ''style="width:80px" readonly="readonly"'',',
'                          ''f03_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) WARECODE,',
'     apex_item.text (4,',
'                          REGISTNO,',
'                          80,',
'                          100,',
'                          ''style="width:110px" readonly="readonly"'',',
'                          ''f04_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) REGISTNO,',
'    apex_item.text (5,',
'                          CHASISNO,',
'                          80,',
'                          100,',
'                          ''style="width:110px" readonly="readonly"'',',
'                          ''f05_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) CHASISNO',
'  FROM NMSERVCE',
'  where compcode = :compcode',
'  and nvl(complete,''N'')=''N''',
'and  srvcnopk=:P103_SERVNO',
'UNION ALL',
'SELECT  apex_item.text (1,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:110px"'',',
'                          ''f01_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) DOCNUMBR,',
'      apex_item.text (2,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:80px" readonly="readonly"'',',
'                          ''f02_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) DOCTDATE,',
'      apex_item.text (3,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:80px" readonly="readonly"'',',
'                          ''f03_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) WARECODE,',
'     apex_item.text (4,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:110px" readonly="readonly"'',',
'                          ''f04_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) REGISTNO,',
'    apex_item.text (5,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:110px" readonly="readonly"'',',
'                          ''f05_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) CHASISNO',
'  FROM DUAL',
'CONNECT BY LEVEL <= 1',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P103_SERVNO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found crg'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  apex_item.text (1,',
'                          DOCNUMBR,',
'                          80,',
'                          100,',
'                          ''style="width:170px"'',',
'                          ''f01_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) DOCNUMBR,',
'      apex_item.text (2,',
'                          DOCTDATE,',
'                          80,',
'                          100,',
'                          ''style="width:170px" readonly="readonly"'',',
'                          ''f02_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) DOCTDATE,',
'      apex_item.text (3,',
'                          WARECODE,',
'                          80,',
'                          100,',
'                          ''style="width:170px" readonly="readonly"'',',
'                          ''f03_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) WARECODE,',
'     apex_item.text (4,',
'                          REGISTNO,',
'                          80,',
'                          100,',
'                          ''style="width:170px" readonly="readonly"'',',
'                          ''f04_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) REGISTNO,',
'    apex_item.text (5,',
'                          CHASISNO,',
'                          80,',
'                          100,',
'                          ''style="width:170px" readonly="readonly"'',',
'                          ''f05_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) CHASISNO',
'  FROM NMSERVCE',
'  where compcode = :compcode',
'  and nvl(complete,''N'')=''N''',
'and  DOCNUMBR=''1233'''))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39291095867704241)
,p_query_column_id=>1
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>1
,p_column_heading=>'Service No.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_column_width=>8
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39291545703704245)
,p_query_column_id=>2
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>3
,p_column_heading=>'Service<br>Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39291959750704245)
,p_query_column_id=>3
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>2
,p_column_heading=>'Warecode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39292363085704245)
,p_query_column_id=>4
,p_column_alias=>'REGISTNO'
,p_column_display_sequence=>4
,p_column_heading=>'Registration<br>No.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39292748068704245)
,p_query_column_id=>5
,p_column_alias=>'CHASISNO'
,p_column_display_sequence=>5
,p_column_heading=>'Chasis<br>No.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39556784476091651)
,p_plug_name=>'fst'
,p_parent_plug_id=>wwv_flow_api.id(39591513817459689)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>9
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39564137087198393)
,p_plug_name=>'lst'
,p_parent_plug_id=>wwv_flow_api.id(39591513817459689)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>11
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49832561626254170)
,p_plug_name=>'Spare Parts'
,p_parent_plug_id=>wwv_flow_api.id(39545272842080908)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>25
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NEGITMPK,',
'       COMPCODE,',
'       DOCTTYPE,',
'       SUBTTYPE,',
'       DOCNUMBR,',
'       DOCTDATE,',
'       SERLNUMB,',
'       PARTYCDE,',
'       RAISEDBY,',
'       APPRVDBY,',
'       APPRDATE,',
'       REQDDATE,',
'       COMMCODE,',
'       ITEMCODE,',
'       ITEMTYPE,',
'       MCSERIAL,',
'       CMSERIAL,',
'       ITEMDESC,',
'       ITEMLONG,',
'       ITEMRATE,',
'       DISCPCNT,',
'       DISCAMNT,',
'       SPLDISPC,',
'       SPLDISNT,',
'       SALERATE,',
'       HUOMCODE,',
'       FACTRVAL,',
'       LUOMCODE,',
'       ORGNQNTY,',
'       APPRQNTY,',
'       TRNSQNTY,',
'       TRNSQTY2,',
'       MSFCAMNT,',
'       CURRCODE,',
'       EXCGRATE,',
'       MSLCAMNT,',
'       ADJAMTLC,',
'       REFNUMBR,',
'       REFNDATE,',
'       UPDOCTYP,',
'       UPSUBTYP,',
'       UPDOCNUM,',
'       UPDOCDTE,',
'       UPDOCSRL,',
'       DWDOCTYP,',
'       DWSUBTYP,',
'       DWDOCNUM,',
'       DWDOCDTE,',
'       DWDOCSRL,',
'       ACDOCTYP,',
'       ACSUBTYP,',
'       ACDOCNUM,',
'       ACDOCDTE,',
'       ACDOCSRL,',
'       REMARKSS,',
'       COSTCODE,',
'       WARECODE,',
'       POSTFLAG,',
'       PRNTFLAG,',
'       PRICFLAG,',
'       PRINTCNT,',
'       BALNFLAG,',
'       RATVFLAG,',
'       STATUSCD,',
'       TCSTPCNT,',
'       DIVNCODE,',
'       TECHNICN,',
'       ENGINEER,',
'       AMENDSRL,',
'       MATLTYPE,',
'       BOQREFER,',
'       MFRGDATE,',
'       MFRGTIME,',
'       PARNTITM,',
'       INDTFLAG,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       BATCHNUM,',
'       BATCHEXP,',
'       BATCHDTE,',
'       NORMRATE,',
'       CUSTACPT,',
'       ADITIONL,',
'       CUSTAPRV,',
'       ADDICODE,',
'       SRVCNOFK,',
'       NEGITMFK,',
'       NEGITMFK1,',
'       COSTRATE,',
'       AVRGRATE,',
'       SALEPERC,',
'       MODIFYDT',
'  from NMNEGITM',
' WHERE compcode = :compcode',
'and DOCNUMBR=:P103_P_DOCNUMBR',
'and DOCTDATE=:P103_P_DOCTDATE',
'and DOCTTYPE=:P103_P_DOCTTYPE',
'and SUBTTYPE=:P103_P_SUBTTYPE',
'and NEGITMFK=:P103_P_NEGMASPK'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(49832582916254170)
,p_name=>'Spare Parts'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>12677715790573676
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49832958829254193)
,p_db_column_name=>'NEGITMPK'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Negitmpk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49833232711254201)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
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
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49833581475254201)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49833983256254201)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49834380777254201)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49834836881254201)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49835191856254203)
,p_db_column_name=>'SERLNUMB'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Serlnumb'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49835607985254203)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49835985703254203)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49836416597254203)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Apprvdby'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49836823625254203)
,p_db_column_name=>'APPRDATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Apprdate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49837260136254203)
,p_db_column_name=>'REQDDATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Reqddate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49837618677254203)
,p_db_column_name=>'COMMCODE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Commcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49838063554254203)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49838419917254203)
,p_db_column_name=>'ITEMTYPE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Itemtype'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49838775142254203)
,p_db_column_name=>'MCSERIAL'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Mcserial'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49839258126254203)
,p_db_column_name=>'CMSERIAL'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Cmserial'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49839591907254204)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Itemdesc'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49840021642254204)
,p_db_column_name=>'ITEMLONG'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Itemlong'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49840426455254204)
,p_db_column_name=>'ITEMRATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Itemrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49840785396254204)
,p_db_column_name=>'DISCPCNT'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Discpcnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49841206475254204)
,p_db_column_name=>'DISCAMNT'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Discamnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49841654681254204)
,p_db_column_name=>'SPLDISPC'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Spldispc'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49841970563254206)
,p_db_column_name=>'SPLDISNT'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Spldisnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49842388148254206)
,p_db_column_name=>'SALERATE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Salerate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49842777204254207)
,p_db_column_name=>'HUOMCODE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Huomcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49843170597254207)
,p_db_column_name=>'FACTRVAL'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Factrval'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49843655729254207)
,p_db_column_name=>'LUOMCODE'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Luomcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49843994731254207)
,p_db_column_name=>'ORGNQNTY'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Orgnqnty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49844465878254211)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Apprqnty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49844772499254211)
,p_db_column_name=>'TRNSQNTY'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Trnsqnty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49845196674254211)
,p_db_column_name=>'TRNSQTY2'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Trnsqty2'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49845569502254211)
,p_db_column_name=>'MSFCAMNT'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Msfcamnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49846055975254211)
,p_db_column_name=>'CURRCODE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49846404749254211)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49846814296254211)
,p_db_column_name=>'MSLCAMNT'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Mslcamnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49847212696254211)
,p_db_column_name=>'ADJAMTLC'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Adjamtlc'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49847572906254212)
,p_db_column_name=>'REFNUMBR'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Refnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49848043584254212)
,p_db_column_name=>'REFNDATE'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Refndate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49848427018254212)
,p_db_column_name=>'UPDOCTYP'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Updoctyp'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49848777797254214)
,p_db_column_name=>'UPSUBTYP'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Upsubtyp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49849241793254214)
,p_db_column_name=>'UPDOCNUM'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Updocnum'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49849618865254214)
,p_db_column_name=>'UPDOCDTE'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Updocdte'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49850014772254214)
,p_db_column_name=>'UPDOCSRL'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Updocsrl'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49850411200254214)
,p_db_column_name=>'DWDOCTYP'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Dwdoctyp'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49850788997254214)
,p_db_column_name=>'DWSUBTYP'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Dwsubtyp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49851237236254214)
,p_db_column_name=>'DWDOCNUM'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Dwdocnum'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49851646945254214)
,p_db_column_name=>'DWDOCDTE'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Dwdocdte'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49852002152254214)
,p_db_column_name=>'DWDOCSRL'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Dwdocsrl'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49852403898254214)
,p_db_column_name=>'ACDOCTYP'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Acdoctyp'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49852802168254215)
,p_db_column_name=>'ACSUBTYP'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Acsubtyp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49853187948254217)
,p_db_column_name=>'ACDOCNUM'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Acdocnum'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49853654116254217)
,p_db_column_name=>'ACDOCDTE'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Acdocdte'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49854060441254217)
,p_db_column_name=>'ACDOCSRL'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Acdocsrl'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49854418904254217)
,p_db_column_name=>'REMARKSS'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Remarkss'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49854768259254217)
,p_db_column_name=>'COSTCODE'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49855252968254217)
,p_db_column_name=>'WARECODE'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49855616530254217)
,p_db_column_name=>'POSTFLAG'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Postflag'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49856039749254217)
,p_db_column_name=>'PRNTFLAG'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Prntflag'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49856410571254217)
,p_db_column_name=>'PRICFLAG'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Pricflag'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49856850905254217)
,p_db_column_name=>'PRINTCNT'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Printcnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49857264133254217)
,p_db_column_name=>'BALNFLAG'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Balnflag'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49857616861254217)
,p_db_column_name=>'RATVFLAG'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Ratvflag'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49858008749254218)
,p_db_column_name=>'STATUSCD'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49858407257254218)
,p_db_column_name=>'TCSTPCNT'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Tcstpcnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49858828565254218)
,p_db_column_name=>'DIVNCODE'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Divncode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49859189774254218)
,p_db_column_name=>'TECHNICN'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Technicn'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49859607109254218)
,p_db_column_name=>'ENGINEER'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Engineer'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49859996161254218)
,p_db_column_name=>'AMENDSRL'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Amendsrl'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49860375056254218)
,p_db_column_name=>'MATLTYPE'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Matltype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49860863276254218)
,p_db_column_name=>'BOQREFER'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'Boqrefer'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49861201849254218)
,p_db_column_name=>'MFRGDATE'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'Mfrgdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49861620279254220)
,p_db_column_name=>'MFRGTIME'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'Mfrgtime'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49861979597254220)
,p_db_column_name=>'PARNTITM'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'Parntitm'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49862442418254220)
,p_db_column_name=>'INDTFLAG'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'Indtflag'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49862812581254220)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>76
,p_column_identifier=>'BX'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49863256719254220)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49863618529254220)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49864059811254220)
,p_db_column_name=>'BATCHEXP'
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'Batchexp'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49864387906254220)
,p_db_column_name=>'BATCHDTE'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Batchdte'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49864808833254220)
,p_db_column_name=>'NORMRATE'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Normrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49865260832254220)
,p_db_column_name=>'CUSTACPT'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Custacpt'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49865595122254220)
,p_db_column_name=>'ADITIONL'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Aditionl'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49866025612254220)
,p_db_column_name=>'CUSTAPRV'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'Custaprv'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49866418725254221)
,p_db_column_name=>'ADDICODE'
,p_display_order=>85
,p_column_identifier=>'CG'
,p_column_label=>'Addicode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49866859125254221)
,p_db_column_name=>'SRVCNOFK'
,p_display_order=>86
,p_column_identifier=>'CH'
,p_column_label=>'Srvcnofk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49867219362254221)
,p_db_column_name=>'NEGITMFK'
,p_display_order=>87
,p_column_identifier=>'CI'
,p_column_label=>'Negitmfk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49867602992254221)
,p_db_column_name=>'NEGITMFK1'
,p_display_order=>88
,p_column_identifier=>'CJ'
,p_column_label=>'Negitmfk1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49868061615254221)
,p_db_column_name=>'COSTRATE'
,p_display_order=>89
,p_column_identifier=>'CK'
,p_column_label=>'Costrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49868452367254221)
,p_db_column_name=>'AVRGRATE'
,p_display_order=>90
,p_column_identifier=>'CL'
,p_column_label=>'Avrgrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49868807253254221)
,p_db_column_name=>'SALEPERC'
,p_display_order=>91
,p_column_identifier=>'CM'
,p_column_label=>'Saleperc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49869226503254221)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>92
,p_column_identifier=>'CN'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(49870593571264803)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'127158'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NEGITMPK:COMPCODE:DOCTTYPE:SUBTTYPE:DOCNUMBR:DOCTDATE:SERLNUMB:PARTYCDE:RAISEDBY:APPRVDBY:APPRDATE:REQDDATE:COMMCODE:ITEMCODE:ITEMTYPE:MCSERIAL:CMSERIAL:ITEMDESC:ITEMLONG:ITEMRATE:DISCPCNT:DISCAMNT:SPLDISPC:SPLDISNT:SALERATE:HUOMCODE:FACTRVAL:LUOMCOD'
||'E:ORGNQNTY:APPRQNTY:TRNSQNTY:TRNSQTY2:MSFCAMNT:CURRCODE:EXCGRATE:MSLCAMNT:ADJAMTLC:REFNUMBR:REFNDATE:UPDOCTYP:UPSUBTYP:UPDOCNUM:UPDOCDTE:UPDOCSRL:DWDOCTYP:DWSUBTYP:DWDOCNUM:DWDOCDTE:DWDOCSRL:ACDOCTYP:ACSUBTYP:ACDOCNUM:ACDOCDTE:ACDOCSRL:REMARKSS:COSTC'
||'ODE:WARECODE:POSTFLAG:PRNTFLAG:PRICFLAG:PRINTCNT:BALNFLAG:RATVFLAG:STATUSCD:TCSTPCNT:DIVNCODE:TECHNICN:ENGINEER:AMENDSRL:MATLTYPE:BOQREFER:MFRGDATE:MFRGTIME:PARNTITM:INDTFLAG:OPRSTAMP:TIMSTAMP:BATCHNUM:BATCHEXP:BATCHDTE:NORMRATE:CUSTACPT:ADITIONL:CUS'
||'TAPRV:ADDICODE:SRVCNOFK:NEGITMFK:NEGITMFK1:COSTRATE:AVRGRATE:SALEPERC:MODIFYDT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44568240090812346)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39302720177776734)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48979094255287847)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(39302720177776734)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49957558590664544)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(39298612878753301)
,p_button_name=>'ADD_ROW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'BELOW_BOX'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50177847763341415)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(39333620523528188)
,p_button_name=>'ADD_ROW1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'BELOW_BOX'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50193295742416328)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(39343513819637574)
,p_button_name=>'ADD_ROW2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39303707140795729)
,p_name=>'P103_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39303389966795727)
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
 p_id=>wwv_flow_api.id(39304144781795729)
,p_name=>'P103_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39303389966795727)
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
 p_id=>wwv_flow_api.id(39304485563795729)
,p_name=>'P103_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(39303389966795727)
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
 p_id=>wwv_flow_api.id(39557469001116345)
,p_name=>'P103_SERVNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(39556784476091651)
,p_prompt=>'Service No.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39557824891116354)
,p_name=>'P103_WARCD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(39556784476091651)
,p_item_default=>'E01'
,p_prompt=>'Warecode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(39558239510116354)
,p_name=>'P103_SERDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(39556784476091651)
,p_prompt=>'Service Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(39558586721116354)
,p_name=>'P103_RGSNO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(39556784476091651)
,p_prompt=>'Registration No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(39559045040116359)
,p_name=>'P103_CHASNO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(39556784476091651)
,p_prompt=>'Chasis No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(39564646659256165)
,p_name=>'P103_S_ITEMCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(39564137087198393)
,p_prompt=>'Vehicle'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(39564882844256165)
,p_name=>'P103_S_ITEMDESC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(39564137087198393)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
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
 p_id=>wwv_flow_api.id(39565362817256167)
,p_name=>'P103_S_CUSTNAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(39564137087198393)
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(39565680573256167)
,p_name=>'P103_S_CONTPERS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(39564137087198393)
,p_prompt=>'Contact Person'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(39566075782256167)
,p_name=>'P103_S_CUSTADR1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(39564137087198393)
,p_prompt=>'Address [1-2]'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(39566500672256167)
,p_name=>'P103_S_CUSTADR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(39564137087198393)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
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
 p_id=>wwv_flow_api.id(39566914173256167)
,p_name=>'P103_S_CUSTADR3'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(39564137087198393)
,p_prompt=>'Address [3-4]'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(39567284661256167)
,p_name=>'P103_S_CUSTADR4'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(39564137087198393)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
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
 p_id=>wwv_flow_api.id(39567667690256168)
,p_name=>'P103_S_CUSTMAIL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(39564137087198393)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(39568102047256173)
,p_name=>'P103_S_CUSTPHON'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(39564137087198393)
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(39568485679256175)
,p_name=>'P103_S_CUSTMOBL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(39564137087198393)
,p_prompt=>'Mobile'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(39568931379256175)
,p_name=>'P103_S_TEFAXNUM'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(39564137087198393)
,p_prompt=>'Fax'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(39684261050924918)
,p_name=>'P103_S_SRVCNOPK'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(39556784476091651)
,p_prompt=>'Srvcnopk'
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
 p_id=>wwv_flow_api.id(39820762275271143)
,p_name=>'P103_E_DOCNUMBR'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(39298612878753301)
,p_prompt=>'E docnumbr'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39821021249271144)
,p_name=>'P103_E_DOCTDATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(39298612878753301)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'E doctdate'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39821396283271144)
,p_name=>'P103_E_DOCTTYPE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(39298612878753301)
,p_prompt=>'E docttype'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39821781183271144)
,p_name=>'P103_E_SUBTTYPE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(39298612878753301)
,p_prompt=>'E subttype'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40825689768011138)
,p_name=>'P103_P_DOCNUMBR'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P docnumbr'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40825968616011159)
,p_name=>'P103_P_DOCTTYPE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P docttype'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40826407504011159)
,p_name=>'P103_P_SUBTTYPE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P subttype'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40826866390011159)
,p_name=>'P103_P_NEGMASPK'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P negmaspk'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40852330075605232)
,p_name=>'P103_C_ITEMCODE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(39290384356704238)
,p_prompt=>'C itemcode'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40852605772605233)
,p_name=>'P103_C_PAINTFLG'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(39290384356704238)
,p_prompt=>'C paintflg'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40852976684605233)
,p_name=>'P103_C_MODLCODE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(39290384356704238)
,p_prompt=>'C modlcode'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45199276024026649)
,p_name=>'P103_E_COMPCODE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(39298612878753301)
,p_prompt=>'E compcode'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45199570507026649)
,p_name=>'P103_E_OPRSTAMP'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(39298612878753301)
,p_prompt=>'E oprstamp'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45200038547026649)
,p_name=>'P103_E_TIMSTAMP'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(39298612878753301)
,p_prompt=>'E timstamp'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45200436935026650)
,p_name=>'P103_E_NEGMASPK'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(39298612878753301)
,p_prompt=>'E negmaspk'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47795759311682865)
,p_name=>'P103_P_ITEMCODE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P itemcode'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47803205353865916)
,p_name=>'P103_P_UNITOFMESURE'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P unitofmesure'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47803542846865916)
,p_name=>'P103_P_ITEMDESC'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P itemdesc'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47803904902865916)
,p_name=>'P103_P_BRAND'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P brand'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47804347732865916)
,p_name=>'P103_P_MODAL'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P modal'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47804721820865919)
,p_name=>'P103_P_ISSUMTHD'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_item_default=>'&TEMPORARY_APPLICATION_ITEM.'
,p_prompt=>'P issumthd'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47855584787079983)
,p_name=>'P103_P_ROWNUM'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P Rownum'
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
 p_id=>wwv_flow_api.id(48914405217369120)
,p_name=>'P103_ROWID'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(39556784476091651)
,p_prompt=>'Rowid'
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
 p_id=>wwv_flow_api.id(48992516741687653)
,p_name=>'P103_P_NEGITMPK'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P negitmpk'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48992771543687655)
,p_name=>'P103_P_SERLNUMB'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P serlnumb'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48993169839687655)
,p_name=>'P103_P_ITEMTYPE'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P itemtype'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48993590755687655)
,p_name=>'P103_P_ITEMRATE'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P itemrate'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48993969064687655)
,p_name=>'P103_P_CURRCODE'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P currcode'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48994448805687655)
,p_name=>'P103_P_EXCGRATE'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P excgrate'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48994863673687655)
,p_name=>'P103_P_COSTCODE'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P costcode'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48995199685687655)
,p_name=>'P103_P_STATUSCD'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_prompt=>'P statuscd'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49089508150329209)
,p_name=>'P103_SERVCENO_DETAILS'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(39545272842080908)
,p_prompt=>'Service No. Details'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  srvcnopk||'' / ''||docnumbr ||'' / ''||TRUNC (doctdate)||'' / ''||',
'warecode||'' / ''||costcode||'' / ''||svcpkgfk D ',
'    FROM nmservce',
'   WHERE NVL (COMPLETE, ''N'') = ''N'' AND NVL (statuscd, ''NEW'') <> ''CAN''',
'    AND  costcode IN (  SELECT cabasecc',
'                                        FROM sycstacc',
'                                       WHERE compcode = :compcode ',
'                                         AND grupcode = :APP_USER)',
'and  srvcnopk=:P103_SERVNO',
'                                         ',
'ORDER BY dfn_char2number (docnumbr) DESC'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="color: blue;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49512195902598378)
,p_name=>'P103_P_DOCTDATE'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(39333620523528188)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49526940293713877)
,p_name=>'P103_C_DOCNUMBR'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(39343513819637574)
,p_prompt=>'C docnumbr'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49527194150713878)
,p_name=>'P103__C_DOCTDATE'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(39343513819637574)
,p_prompt=>' c Doctdate'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49527581253713878)
,p_name=>'P103_C_DOCTTYPE'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(39343513819637574)
,p_prompt=>'C docttype'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49528047979713878)
,p_name=>'P103_C_SUBTTYPE'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(39343513819637574)
,p_prompt=>'C subttype'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49528409336713878)
,p_name=>'P103_C_NEGMASPK'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(39343513819637574)
,p_prompt=>'C negmaspk'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39689483263070320)
,p_name=>'change on Service no'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_SERVNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39689925394070330)
,p_event_id=>wwv_flow_api.id(39689483263070320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT C.CUSTNAME, C.CUSTADR1, C.CUSTADR2,',
'          C.CUSTADR3, C.CUSTADR4, C.CUSTPHON,',
'          C.CUSTMOBL, C.TEFAXNUM, C.CONTPERS,',
'          C.CUSTMAIL',
'     INTO :P103_S_CUSTNAME, :P103_S_CUSTADR1, :P103_S_CUSTADR2,',
'          :P103_S_CUSTADR3, :P103_S_CUSTADR4, :P103_S_CUSTPHON,',
'          :P103_S_CUSTMOBL, :P103_S_TEFAXNUM, :P103_S_CONTPERS,',
'          :P103_S_CUSTMAIL',
'     FROM NMCUSMAS C, NMSERVCE S',
'    WHERE S.CUSTMRID = C.CUSTMRID',
'      AND S.COMPCODE = C.COMPCODE',
'      AND S.SRVCNOPK = :P103_SERVNO;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      NULL;',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      NULL;',
'   WHEN OTHERS',
'   THEN',
'      NULL;',
'END;',
'',
'BEGIN',
'   SELECT DOCNUMBR,DOCTTYPE,SUBTTYPE,NEGMASPK ',
'INTO :P103_P_DOCNUMBR,:P103_P_DOCTTYPE,:P103_P_SUBTTYPE,:P103_P_NEGMASPK',
'FROM NMNEGMAS ',
'WHERE COMPCODE=:COMPCODE',
'AND SRVCNOFK=:P103_SERVNO;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      NULL;',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      NULL;',
'   WHEN OTHERS',
'   THEN',
'      NULL;',
'END;',
'',
'BEGIN',
'  SELECT DOCTDATE,WARECODE,REGISTNO,CHASISNO,ITEMCODE ',
'INTO :P103_SERDATE,:P103_WARCD,:P103_RGSNO,:P103_CHASNO,:P103_C_ITEMCODE',
'FROM NMSERVCE',
'WHERE SRVCNOPK=:P103_SERVNO;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      NULL;',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      NULL;',
'   WHEN OTHERS',
'   THEN',
'      NULL;',
'END;'))
,p_attribute_02=>'P103_SERVNO'
,p_attribute_03=>'P103_S_SRVCNOPK,P103_S_CUSTNAME,P103_S_CUSTADR1,P103_S_CUSTADR2,P103_S_CUSTADR3,P103_S_CUSTADR4,P103_S_CUSTPHON,P103_S_CUSTMOBL,P103_S_TEFAXNUM,P103_S_CONTPERS,P103_S_CUSTMAIL,P103_P_DOCNUMBR,P103_P_DOCTTYPE,P103_P_SUBTTYPE,P103_P_NEGMASPK,P103_SERDA'
||'TE,P103_WARCD,P103_RGSNO,P103_CHASNO,P103_C_ITEMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39779689168994197)
,p_event_id=>wwv_flow_api.id(39689483263070320)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39290384356704238)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40818418722856128)
,p_event_id=>wwv_flow_api.id(39689483263070320)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39298612878753301)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40827505313048698)
,p_event_id=>wwv_flow_api.id(39689483263070320)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39333620523528188)
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39868057883353217)
,p_name=>'estimate docnumber generate on E_DOCNUM'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_E_DOCNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39868433888353224)
,p_event_id=>wwv_flow_api.id(39868057883353217)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P103_E_DOCNUMBR:=Drp_Primarykey_Generate(:COMPCODE,''NMNEGMAS'',''DOCNUMBR'',''SRVCNOFK=''||:P103_SERVNO,1,''NM'',''ES'',1,TRUNC(SYSDATE));',
'end;'))
,p_attribute_02=>'P103_SERVNO'
,p_attribute_03=>'P103_E_DOCNUMBR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40082025993064083)
,p_name=>'click highlight'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name=''f12'']'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40082394351064089)
,p_event_id=>wwv_flow_api.id(40082025993064083)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$x_RowHighlight(gCurrentRow,''pink'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47796083174697806)
,p_name=>'change on Itemcode'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name=''f24'']'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47796518858697808)
,p_event_id=>wwv_flow_api.id(47796083174697806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_P_ITEMCODE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.value'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47802208547852904)
,p_name=>'item description assign'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_P_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47802617930852907)
,p_event_id=>wwv_flow_api.id(47802208547852904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P103_P_UNITOFMESURE,:P103_P_ITEMDESC,:P103_P_BRAND,:P103_P_MODAL,:P103_P_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P103_P_ITEMCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'END;'))
,p_attribute_02=>'P103_P_ITEMCODE'
,p_attribute_03=>'P103_P_UNITOFMESURE,P103_P_ITEMDESC,P103_P_BRAND,P103_P_MODAL,P103_P_ISSUMTHD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47843777754503750)
,p_name=>'item description assign in tabular item'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name=''f24'']'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47844170135503761)
,p_event_id=>wwv_flow_api.id(47843777754503750)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var row = $x_UpTill(this.triggeringElement, ''TR'');',
'',
'',
'var itemdesc= $(''input[name="f22"]'', row)[0];',
'var hum= $(''input[name="f25"]'', row)[0];',
'var srl= $(''input[name="f21"]'', row)[0];',
'var vRow =$(''#TR'').children().length;',
'',
'itemdesc.value = $x(''P103_P_ITEMDESC'').value; ',
'hum.value = $x(''P103_P_BRAND'').value; ',
'',
'srl.value =$(this.triggeringElement ).attr(''id'').substr(4);',
'',
'',
'',
'',
'',
''))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var row = $x_UpTill(this.triggeringElement, ''TR'');',
'',
'',
'var itemdesc= $(''input[name="f22"]'', row)[0];',
'var hum= $(''input[name="f25"]'', row)[0];',
'var srl= $(''input[name="f21"]'', row)[0];',
'var vRow =$(''#TR'').children().length;',
'',
'itemdesc.value = $x(''P103_P_ITEMDESC'').value; ',
'hum.value = $x(''P103_P_BRAND'').value; ',
'',
'--srl.value =$(this.triggeringElement ).attr(''id'').substr(4);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50040263200661201)
,p_name=>'set region id dynamically'
,p_event_sequence=>75
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50040646122661209)
,p_event_id=>wwv_flow_api.id(50040263200661201)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#payment table table'').attr(''id'',''payment2'')',
'$(''#payment1 table table'').attr(''id'',''payment3'')',
'$(''#payment2 table table'').attr(''id'',''payment4'')'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50035894963618797)
,p_name=>'add rows on javascript in Estimation Region'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(49957558590664544)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50036363671618802)
,p_event_id=>wwv_flow_api.id(50035894963618797)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'addRow(''payment2'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50191831713398410)
,p_name=>'add rows on javascript in Spare parts region'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(50177847763341415)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50192189600398415)
,p_event_id=>wwv_flow_api.id(50191831713398410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'addRow(''payment3'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50198321217429147)
,p_name=>'add rows on javascript in Service Charge region'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(50193295742416328)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50198741255429147)
,p_event_id=>wwv_flow_api.id(50198321217429147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'addRow(''payment4'');'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39306372415802928)
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
 p_id=>wwv_flow_api.id(45201035594147228)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into nmnegmas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' for i in 1..apex_application.g_f19.count loop ',
' insert into nmnegmas(COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, ',
'                      RAISEDBY, APPRVDBY, APPRDATE, UPDOCTYP, UPSUBTYP,',
'                      UPDOCNUM, UPDOCDTE, UPDOCSRL, DWDOCTYP, DWSUBTYP,',
'                      DWDOCNUM, DWDOCDTE, DWDOCSRL, REMARKSS, POSTFLAG,',
'                      PRNTFLAG, STATUSCD, OPRSTAMP, TIMSTAMP, COMPLETE,',
'                      APRVFLAG, ESTJOBNO, SRVCNOFK, ADITIONL, NEGMASPK,',
'                      TOTCHARG, TOTPAMNT, TOTALVAT, BILLNOFK, MODIFYDT)',
' values(:P103_E_COMPCODE,:P103_E_DOCTTYPE,:P103_E_SUBTTYPE, apex_application.g_f11(i),apex_application.g_f12(i),',
'         NULL,NULL,NULL,NULL,NULL,',
'         NULL,NULL,NULL,NULL,NULL,',
'         NULL,NULL,NULL,apex_application.g_f14(i),NULL,',
'         NULL,NULL,:P103_E_OPRSTAMP,:P103_E_TIMSTAMP,NULL,',
'         NULL,NULL,:P103_SERVNO,NULL,:P103_E_NEGMASPK,',
'         NULL,NULL,NULL,NULL,NULL);',
' end loop;',
'',
'commit;',
'  END;',
'  ',
'  ',
'  ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44568240090812346)
,p_process_success_message=>'Successfully insert'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'FOR i IN 1..APEX_APPLICATION.G_F19.COUNT LOOP ',
' insert into nmnegmas(COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, ',
'                      RAISEDBY, APPRVDBY, APPRDATE, UPDOCTYP, UPSUBTYP,',
'                      UPDOCNUM, UPDOCDTE, UPDOCSRL, DWDOCTYP, DWSUBTYP,',
'                      DWDOCNUM, DWDOCDTE, DWDOCSRL, REMARKSS, POSTFLAG,',
'                      PRNTFLAG, STATUSCD, OPRSTAMP, TIMSTAMP, COMPLETE,',
'                      APRVFLAG, ESTJOBNO, SRVCNOFK, ADITIONL, NEGMASPK,',
'                      TOTCHARG, TOTPAMNT, TOTALVAT, BILLNOFK, MODIFYDT)',
' values(:P103_E_COMPCODE,:P103_E_DOCTTYPE,:P103_E_SUBTTYPE,:P103_E_DOCNUMBR,:P103_E_DOCTDATE,',
'         NULL,NULL,NULL,NULL,NULL,',
'         NULL,NULL,NULL,NULL,NULL,',
'         NULL,NULL,NULL,NULL,NULL,',
'         NULL,NULL,:P103_E_OPRSTAMP,:P103_E_TIMSTAMP,NULL,',
'         NULL,NULL,:P103_SERVNO,NULL,:P103_E_NEGMASPK,',
'         NULL,NULL,NULL,NULL,NULL);',
'END LOOP;',
'commit;',
'  END;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48997781927716661)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into nmnegitm'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'for i in 1..apex_application.g_f35.count loop ',
'INSERT INTO nmnegitm',
'                  (negitmpk, compcode, docttype,',
'                   subttype, docnumbr,',
'                   doctdate, serlnumb,',
'                   partycde, raisedby, apprvdby, apprdate, reqddate,',
'                   commcode, itemcode, itemtype, mcserial, cmserial,',
'                   itemdesc, itemlong,',
'                   itemrate, discpcnt,',
'                   discamnt, spldispc, spldisnt,',
'                   salerate, huomcode,',
'                   factrval, luomcode,',
'                   orgnqnty, apprqnty, trnsqnty, trnsqty2, msfcamnt,',
'                   currcode, excgrate, mslcamnt, adjamtlc, refnumbr,',
'                   refndate, updoctyp, upsubtyp, updocnum, updocdte,',
'                   updocsrl, dwdoctyp, dwsubtyp, dwdocnum, dwdocdte,',
'                   dwdocsrl, acdoctyp, acsubtyp, acdocnum, acdocdte,',
'                   acdocsrl, remarkss, costcode, warecode, postflag,',
'                   prntflag, pricflag, printcnt, balnflag, ratvflag,',
'                   statuscd, tcstpcnt, divncode, technicn, engineer,',
'                   amendsrl, matltype, boqrefer, mfrgdate, mfrgtime,',
'                   parntitm, indtflag, oprstamp, timstamp,',
'                   batchnum, batchexp, batchdte, normrate, custacpt,',
'                   aditionl, custaprv, addicode, srvcnofk, negitmfk,',
'                   negitmfk1, costrate, avrgrate, saleperc, modifydt',
'                  )',
'           VALUES (apex_application.g_f35 (i), :p103_e_compcode, :p103_e_docttype,',
'                   :p103_e_subttype, apex_application.g_f11 (i),',
'                   apex_application.g_f12 (i) , apex_application.g_f21 (i) ,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   NULL, apex_application.g_f24 (i) , ''S'', NULL, NULL,',
'                   apex_application.g_f22 (i) , apex_application.g_f22 (i) ,',
'                   apex_application.g_f28 (i) , apex_application.g_f29 (i) ,',
'                   apex_application.g_f30 (i) , NULL, NULL,',
'                   apex_application.g_f28 (i) , apex_application.g_f25 (i) ,',
'                   NULL, apex_application.g_f25 (i) ,',
'                   apex_application.g_f26 (i) , NULL, NULL, NULL, NULL,',
'                   ''BDT'', 1, NULL, NULL, NULL,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   NULL, NULL, ''003'', ''E01'', NULL,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   ''APR'', NULL, NULL, NULL, NULL,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   NULL, NULL, :app_user, SYSDATE,',
'                   apex_application.g_f23 (i) , NULL, NULL, NULL, NULL,',
'                   NULL, NULL, NULL, NULL, :P103_E_NEGMASPK,',
'                   NULL, NULL, NULL, NULL, NULL',
'                  );',
'',
' end loop;',
'commit;',
'  END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44568240090812346)
,p_process_success_message=>'pre'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49694007493869443)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into nmnegcrg'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'for i in 1..apex_application.g_f40.count loop    ',
'       INSERT INTO nmnegcrg',
'                  (NEGCRGPK, COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, ',
'                  DOCTDATE, SERLNUMB, TEXTCODE, TEXTSERL, TEXTLINE, ',
'                  TEXTAMNT, DISADJAM, OPRSTAMP, TIMSTAMP, TEXTPCNT, ',
'                  PARTYCDE, RECNUMBR, ACCTCODE, COSTCODE, REFDCTYP, ',
'                  REFDCSTY, REFDOCNO, REFDCDTE, REFSRLNO, SRVCNOFK, ',
'                  ADITIONL, CUSTAPRV, ADDICODE, SCRGNOFK, NEGCRGFK, ',
'                  NEGCRGFK1, TRNSQNTY, DISPRCNT, DISAMONT, MODIFYDT, ',
'                  CHRGRATE, REMARKSS',
'                  )',
'           VALUES (apex_application.g_f40 (i), :p103_e_compcode, :p103_e_docttype,:p103_e_subttype,apex_application.g_f11 (i),',
'                   apex_application.g_f12 (i),apex_application.g_f41 (i), apex_application.g_f42 (i), NULL, NULL, ',
'                  NULL, NULL, :APP_USER, SYSDATE, NULL, ',
'                  NULL, NULL, NULL, NULL, NULL, ',
'                  NULL, NULL, NULL, NULL, NULL, ',
'                  NULL, NULL, NULL, NULL, NULL, ',
'                  NULL, apex_application.g_f48 (i), apex_application.g_f49 (i), apex_application.g_f50 (i), NULL, ',
'                  NULL, NULL',
'                  );',
'',
'end loop;',
'   COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44568240090812346)
,p_process_success_message=>'crg'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47969533426742681)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'asd'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_itemdesc       VARCHAR2 (200);',
'   v_emp_count   NUMBER;',
'   v_today       VARCHAR2 (200);',
'BEGIN',
'   SELECT distinct  ITEMDES1',
'   into v_itemdesc',
'           FROM nmitemas ',
'          WHERE compcode = ''100''',
'            AND ITEMCODE = ''100108V31-LOC-710B'';',
'            SELECT COUNT (*)',
'     INTO v_emp_count',
'     FROM nmitemas;',
'for i in (SELECT COUNT (*) FROM nmitemas) loop',
'   v_today := SYSDATE;',
'   HTP.p (''<script type="text/javascript">'');',
'   HTP.p (''alert(''''Today is ''',
'          ||v_itemdesc',
'          || ''.\n''',
'          || ''You have ''',
'          || v_emp_count',
'          || '' employees in your emp table. \n''',
'          || ''This is an alert generated by a PL/SQL block \n''',
'          || ''executing javascript code!'''');'');',
'--HTP.p (''gen_alert()'');',
'  HTP.p (''</script>'');',
'END loop;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P103_WARCD'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45200681890069302)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre insert into nmnegmas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'     :P103_E_COMPCODE:= :COMPCODE;',
'     :P103_E_DOCTTYPE:= ''ES'';',
'     :P103_E_SUBTTYPE:= 1;',
'     :P103_E_OPRSTAMP := :APP_USER;',
'     :P103_E_TIMSTAMP := SYSDATE;',
'   ',
' BEGIN',
'    SELECT     NVL(MAX(NEGMASPK),0)+1 INTO :P103_E_NEGMASPK FROM NMNEGMAS',
'    WHERE COMPCODE=:COMPCODE;',
'    ',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
'end;',
'',
'begin',
'    ',
'   ',
'    	SELECT 	NVL(MAX(negitmpk),0)+1 INTO :P103_P_NEGITMPK FROM NMNEGITM',
'	WHERE COMPCODE=:COMPCODE;',
'    ',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'',
'end;',
'',
'begin',
'    ',
' 	SELECT 	NVL(MAX(negcrgpk),0) +1',
'	INTO :P103_C_NEGMASPK ',
'	  FROM NMNEGCRG',
'	 WHERE COMPCODE=:COMPCODE;',
'    ',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44568240090812346)
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*begin',
'    ',
' 	SELECT 	NVL(MAX(negcrgpk),0) +1',
'	INTO :P103_C_NEGMASPK ',
'	  FROM NMNEGCRG',
'	 WHERE COMPCODE=:COMPCODE;',
'    ',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'',
'end;*/'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47017955039429699)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'estimation number generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' for i in 1..apex_application.g_f19.count loop ',
':P103_E_DOCNUMBR := Drp_Primarykey_Generate(:COMPCODE,''NMNEGMAS'',''DOCNUMBR'',''SRVCNOFK=''||:P103_SERVNO,1,''NM'',''ES'',1,TRUNC(SYSDATE));',
' end loop;',
'',
'  END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
