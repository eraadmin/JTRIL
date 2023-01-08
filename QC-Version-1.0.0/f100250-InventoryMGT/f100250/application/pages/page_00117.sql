prompt --application/pages/page_00117
begin
--   Manifest
--     PAGE: 00117
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
 p_id=>117
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Spare Parts'
,p_step_title=>'Spare Parts'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function calculateTotal(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'var y = document.getElementById(''P117_C_NEGMASPK'').value;',
'     ',
'  html_GetElement(''f02_''+vRow).value = y;    ',
'for (i = 0; i <=vRow; i++)',
'{',
'  if(i != 1) {',
'      html_GetElement(''f02_''+vRow).value = y++;',
'  }',
' html_GetElement(''f08_''+vRow).value = i+0;',
'',
'};',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal3(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P110_P_ITEMCODE'').value=',
'    html_GetElement(''f14_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P110_P_ITEMCODE'').trigger(''click'');',
'});',
'html_GetElement(''f16_''+vRow).value=',
'document.getElementById(''P110_P_ITEMDESC'').value;',
'html_GetElement(''f26_''+vRow).value=',
'document.getElementById(''P110_P_ITEMRATE'').value;',
'html_GetElement(''f21_''+vRow).value=',
'document.getElementById(''P110_P_UNITOFMESURE'').value;',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function Servicenegcrgpk(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'',
'var y = document.getElementById(''P110_C_NEGMASPK'').value;',
'     ',
'  html_GetElement(''f40_''+vRow).value = y;    ',
'for (i = 0; i <=vRow; i++)',
'{',
'  if(i != 1) {',
'      html_GetElement(''f40_''+vRow).value = y++;',
'  }',
' html_GetElement(''f41_''+vRow).value = i+0;',
'',
'};',
'}',
'</script>'))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
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
,p_last_upd_yyyymmddhh24miss=>'20161006140807'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52928221998159915)
,p_plug_name=>'fst'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>45
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52941781683159951)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>25
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(53006527354217401)
,p_name=>'Service Charge'
,p_template=>wwv_flow_api.id(47568291304858133)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"NEGCRGPK",',
'"COMPCODE",',
'"DOCTTYPE",',
'"SUBTTYPE",',
'"DOCNUMBR",',
'"DOCTDATE",',
'"SERLNUMB",',
'"TEXTCODE",',
'"TEXTSERL",',
'"TEXTLINE",',
'"TEXTAMNT",',
'"DISADJAM",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"TEXTPCNT",',
'"PARTYCDE",',
'"RECNUMBR",',
'"ACCTCODE",',
'"COSTCODE",',
'"REFDCTYP",',
'"REFDCSTY",',
'"REFDOCNO",',
'"REFDCDTE",',
'"REFSRLNO",',
'"SRVCNOFK",',
'"ADITIONL",',
'"CUSTAPRV",',
'"ADDICODE",',
'"SCRGNOFK",',
'"NEGCRGFK",',
'"NEGCRGFK1",',
'"TRNSQNTY",',
'"DISPRCNT",',
'"DISAMONT",',
'"MODIFYDT",',
'"CHRGRATE",',
'"REMARKSS",',
'NULL "Tools_desc",',
'NULL "Serv_name"',
'from "#OWNER#"."NMNEGCRG"',
'where NEGCRGPK is null',
''))
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53056889277217432)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53007149298217403)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53007496849217403)
,p_query_column_id=>3
,p_column_alias=>'NEGCRGPK'
,p_column_display_sequence=>3
,p_column_heading=>'Negcrgpk'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'NEGCRGPK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53007873312217403)
,p_query_column_id=>4
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Compcode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53008359593217403)
,p_query_column_id=>5
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Docttype'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53008762319217404)
,p_query_column_id=>6
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Subttype'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53009072426217404)
,p_query_column_id=>7
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>7
,p_column_heading=>'Docnumbr'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53009512897217404)
,p_query_column_id=>8
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Doctdate'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53009899171217404)
,p_query_column_id=>9
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>9
,p_column_heading=>'Srl.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>2
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53010284675217404)
,p_query_column_id=>10
,p_column_alias=>'TEXTCODE'
,p_column_display_sequence=>12
,p_column_heading=>'Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>25
,p_cattributes=>'onchange="calculateTotal(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'TEXTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53010722553217404)
,p_query_column_id=>11
,p_column_alias=>'TEXTSERL'
,p_column_display_sequence=>10
,p_column_heading=>'Textserl'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'TEXTSERL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53011105347217404)
,p_query_column_id=>12
,p_column_alias=>'TEXTLINE'
,p_column_display_sequence=>11
,p_column_heading=>'Textline'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'TEXTLINE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53011532568217404)
,p_query_column_id=>13
,p_column_alias=>'TEXTAMNT'
,p_column_display_sequence=>18
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'TEXTAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53011928548217404)
,p_query_column_id=>14
,p_column_alias=>'DISADJAM'
,p_column_display_sequence=>13
,p_column_heading=>'Disadjam'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'DISADJAM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53012357427217404)
,p_query_column_id=>15
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>15
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53012705294217404)
,p_query_column_id=>16
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>17
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53013128690217406)
,p_query_column_id=>17
,p_column_alias=>'TEXTPCNT'
,p_column_display_sequence=>19
,p_column_heading=>'Textpcnt'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'TEXTPCNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53013511323217406)
,p_query_column_id=>18
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>20
,p_column_heading=>'Partycde'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53013905674217406)
,p_query_column_id=>19
,p_column_alias=>'RECNUMBR'
,p_column_display_sequence=>21
,p_column_heading=>'Recnumbr'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'RECNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53014352887217406)
,p_query_column_id=>20
,p_column_alias=>'ACCTCODE'
,p_column_display_sequence=>22
,p_column_heading=>'Acctcode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'ACCTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53014718676217406)
,p_query_column_id=>21
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>23
,p_column_heading=>'Costcode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'COSTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53015151042217406)
,p_query_column_id=>22
,p_column_alias=>'REFDCTYP'
,p_column_display_sequence=>24
,p_column_heading=>'Refdctyp'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'REFDCTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53015536626217406)
,p_query_column_id=>23
,p_column_alias=>'REFDCSTY'
,p_column_display_sequence=>26
,p_column_heading=>'Refdcsty'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'REFDCSTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53015890522217406)
,p_query_column_id=>24
,p_column_alias=>'REFDOCNO'
,p_column_display_sequence=>28
,p_column_heading=>'Refdocno'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'REFDOCNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53016357246217406)
,p_query_column_id=>25
,p_column_alias=>'REFDCDTE'
,p_column_display_sequence=>30
,p_column_heading=>'Refdcdte'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'REFDCDTE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53016693882217406)
,p_query_column_id=>26
,p_column_alias=>'REFSRLNO'
,p_column_display_sequence=>32
,p_column_heading=>'Refsrlno'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'REFSRLNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53017155128217406)
,p_query_column_id=>27
,p_column_alias=>'SRVCNOFK'
,p_column_display_sequence=>33
,p_column_heading=>'Srvcnofk'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'SRVCNOFK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53017479026217406)
,p_query_column_id=>28
,p_column_alias=>'ADITIONL'
,p_column_display_sequence=>34
,p_column_heading=>'Aditionl'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'ADITIONL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53017891843217406)
,p_query_column_id=>29
,p_column_alias=>'CUSTAPRV'
,p_column_display_sequence=>35
,p_column_heading=>'Custaprv'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'CUSTAPRV'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53018324929217406)
,p_query_column_id=>30
,p_column_alias=>'ADDICODE'
,p_column_display_sequence=>36
,p_column_heading=>'Addicode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'ADDICODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53018673937217406)
,p_query_column_id=>31
,p_column_alias=>'SCRGNOFK'
,p_column_display_sequence=>37
,p_column_heading=>'Scrgnofk'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'SCRGNOFK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53019147024217406)
,p_query_column_id=>32
,p_column_alias=>'NEGCRGFK'
,p_column_display_sequence=>38
,p_column_heading=>'Negcrgfk'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'NEGCRGFK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53019471031217407)
,p_query_column_id=>33
,p_column_alias=>'NEGCRGFK1'
,p_column_display_sequence=>39
,p_column_heading=>'Negcrgfk1'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'NEGCRGFK1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53019926276217407)
,p_query_column_id=>34
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>25
,p_column_heading=>'Qty.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>8
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'TRNSQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53020313339217407)
,p_query_column_id=>35
,p_column_alias=>'DISPRCNT'
,p_column_display_sequence=>27
,p_column_heading=>'Discount<br>(%)'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>8
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'DISPRCNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53020697241217407)
,p_query_column_id=>36
,p_column_alias=>'DISAMONT'
,p_column_display_sequence=>29
,p_column_heading=>'Discount<br>Amount'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'DISAMONT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53021081468217407)
,p_query_column_id=>37
,p_column_alias=>'MODIFYDT'
,p_column_display_sequence=>40
,p_column_heading=>'Modifydt'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'MODIFYDT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53021498088217407)
,p_query_column_id=>38
,p_column_alias=>'CHRGRATE'
,p_column_display_sequence=>41
,p_column_heading=>'Chrgrate'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'CHRGRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53021942207217407)
,p_query_column_id=>39
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>31
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'REMARKSS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53179577292293885)
,p_query_column_id=>40
,p_column_alias=>'Tools_desc'
,p_column_display_sequence=>14
,p_column_heading=>'Tools<br>Description'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>30
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53180005225293885)
,p_query_column_id=>41
,p_column_alias=>'Serv_name'
,p_column_display_sequence=>16
,p_column_heading=>'Service<br>Name'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>30
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(53034033663217417)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(53006527354217401)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52967864846159966)
,p_button_sequence=>40
,p_button_name=>'ADD_ROW1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52939842962159948)
,p_button_sequence=>50
,p_button_name=>'ADD_ROW2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52939453482159948)
,p_button_sequence=>60
,p_button_name=>'CHARGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Charge'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(53296240386183587)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(53006527354217401)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Charge'
,p_button_position=>'TEMPLATE_DEFAULT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(53033741178217417)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(53006527354217401)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(53033935204217417)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(53006527354217401)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(53033784644217417)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(53006527354217401)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(52981504480159977)
,p_branch_action=>'f?p=&APP_ID.:117:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(50581230567970571)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(53057325690217434)
,p_branch_action=>'f?p=&APP_ID.:117:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(53033784644217417)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52928574375159918)
,p_name=>'P117_SERVNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(52928221998159915)
,p_item_default=>'&P129_SERVNO.'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Service No.'
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
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52929063454159920)
,p_name=>'P117_WARCD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(52928221998159915)
,p_item_default=>'&P129_WARCD.'
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
 p_id=>wwv_flow_api.id(52929455600159921)
,p_name=>'P117_SERDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(52928221998159915)
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
 p_id=>wwv_flow_api.id(52929846485159921)
,p_name=>'P117_RGSNO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(52928221998159915)
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
 p_id=>wwv_flow_api.id(52930232894159921)
,p_name=>'P117_CHASNO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(52928221998159915)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52930641849159923)
,p_name=>'P117_S_SRVCNOPK'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(52928221998159915)
,p_prompt=>'Srvcnopk'
,p_display_as=>'NATIVE_TEXT_FIELD'
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
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52930988207159923)
,p_name=>'P117_P_DOCNUMBR'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(52928221998159915)
,p_item_default=>'&P129_E_DOCNUMBR.'
,p_prompt=>'P docnumbr'
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
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52931400221159923)
,p_name=>'P117_ROWID'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(52928221998159915)
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
 p_id=>wwv_flow_api.id(52931807353159923)
,p_name=>'P117_P_NEGITMPK'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(52928221998159915)
,p_prompt=>'P negitmpk'
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
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52932186453159923)
,p_name=>'P117_P_DOCTDATE'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(52928221998159915)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52932606418159923)
,p_name=>'P117_COMPCODE'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(52928221998159915)
,p_item_default=>'&P129_COMPCODE.'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Compcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
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
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_api.id(52933062450159924)
,p_name=>'P117_C_NEGMASPK'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(52928221998159915)
,p_prompt=>'C negmaspk'
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
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52940180956159948)
,p_name=>'P117_C_DOCNUMBR'
,p_item_sequence=>550
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52940640879159949)
,p_name=>'P117__C_DOCTDATE'
,p_item_sequence=>560
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52941012555159949)
,p_name=>'P117_C_DOCTTYPE'
,p_item_sequence=>570
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52941458955159949)
,p_name=>'P117_C_SUBTTYPE'
,p_item_sequence=>580
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52968184359159966)
,p_name=>'P117_P_DOCTTYPE'
,p_item_sequence=>270
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52968626525159968)
,p_name=>'P117_P_SUBTTYPE'
,p_item_sequence=>280
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52969048763159968)
,p_name=>'P117_P_NEGMASPK'
,p_item_sequence=>290
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52969422121159968)
,p_name=>'P117_P_UNITOFMESURE'
,p_item_sequence=>380
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52969822892159968)
,p_name=>'P117_P_BRAND'
,p_item_sequence=>400
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52970237599159968)
,p_name=>'P117_P_MODAL'
,p_item_sequence=>410
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52970583262159968)
,p_name=>'P117_P_ISSUMTHD'
,p_item_sequence=>420
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52970989529159968)
,p_name=>'P117_P_ROWNUM'
,p_item_sequence=>430
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52971400869159968)
,p_name=>'P117_P_SERLNUMB'
,p_item_sequence=>460
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52971794612159968)
,p_name=>'P117_P_ITEMTYPE'
,p_item_sequence=>470
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52972207160159968)
,p_name=>'P117_P_ITEMRATE'
,p_item_sequence=>480
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52972587614159968)
,p_name=>'P117_P_CURRCODE'
,p_item_sequence=>490
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52973046841159968)
,p_name=>'P117_P_EXCGRATE'
,p_item_sequence=>500
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52973387529159968)
,p_name=>'P117_P_COSTCODE'
,p_item_sequence=>510
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(52973855942159969)
,p_name=>'P117_P_STATUSCD'
,p_item_sequence=>520
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(54746469958737751)
,p_name=>'P117_ESTIMATIONDETAILS'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(53006527354217401)
,p_prompt=>'Estimation Details'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct DOCNUMBR||'' / ''||DOCTDATE||'' / ''||SRVCNOFK||'' / ''||NEGMASPK d ',
'from nmnegmas',
'where NEGMASPK=91',
'and SRVCNOFK=:P117_SRVCNOFK;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(54748026691769524)
,p_name=>'P117_NEGITMFK'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(52941781683159951)
,p_prompt=>'Negitmfk'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54748323197769524)
,p_name=>'P117_SRVCNOFK'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(52941781683159951)
,p_prompt=>'Srvcnofk'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(52974333632159969)
,p_computation_sequence=>10
,p_computation_item=>'P129_SERVNO'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_SERVNO.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(52974683481159971)
,p_computation_sequence=>10
,p_computation_item=>'P129_WARCD'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_WARCD.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(52975090588159971)
,p_computation_sequence=>10
,p_computation_item=>'P129_E_DOCNUMBR'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_E_DOCNUMBR.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(52975508504159971)
,p_computation_sequence=>10
,p_computation_item=>'P129_E_DOCTDATE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_E_DOCTDATE.'
,p_computation_error_message=>'no date'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(52975891783159974)
,p_computation_sequence=>10
,p_computation_item=>'P129_COMPCODE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_COMPCODE.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(54746717116744442)
,p_computation_sequence=>20
,p_computation_item=>'P129_NEGMASPK'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_NEGMASPK.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(54746985741745963)
,p_computation_sequence=>20
,p_computation_item=>'P129_NEXTESTIMATION'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_NEXTESTIMATION.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(54747320414747653)
,p_computation_sequence=>20
,p_computation_item=>'P129_COSTCODE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_COSTCODE.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52976871038159974)
,p_name=>'add rows javascript'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52977457272159974)
,p_event_id=>wwv_flow_api.id(52976871038159974)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $mydiv = $("#f14_0011");',
'    if ($mydiv.length){',
'/*alert(''test'');*/',
'}',
'else',
'{',
'for (i = 0; i <=10; i++)',
'{',
'javascript:addRow();',
'};',
'};',
'/*document.getElementById(''ITEMDESC'').readOnly = true;*/',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52979615576159976)
,p_name=>'change on itemcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P117_P_ITEMCODE'
,p_condition_element=>'P117_P_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52980156768159976)
,p_event_id=>wwv_flow_api.id(52979615576159976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P117_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P117_UNITOFMESURE,:P117_ITEMDESC,:P117_BRAND,:P117_MODAL,:P117_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P117_ITEMCODE;',
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
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P117_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P117_SALPRICE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P117_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P117_ITEMCODE;',
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
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P117_ITEMCODE1 IS NOT NULL and :P117_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) ',
'into :P117_QUENTITY',
'       from    nmsalrec s,(SELECT   SUM (d.trnsqnty) trnsqnty, d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE',
'                     FROM nmdevrec d',
'                     group by d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE) e',
'                     WHERE s.docnumbr = :P117_docnumbr1 AND s.itemcode = :P117_itemcode1',
'     AND S.ITEMCODE=e.ITEMCODE',
'AND S.DOCNUMBR=e.UPDOCNUM',
'AND NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) > 0;',
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
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P117_ITEMCODE,P117_WARECODE,P117_ITEMCODE1,P117_DOCNUMBR1'
,p_attribute_03=>'P117_UNITOFMESURE,P117_ITEMDESC,P117_BRAND,P117_MODAL,P117_SALPRICE,P117_ISSUMTHD,P117_CLOSINGBALANCE,P117_QUENTITY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52980521439159976)
,p_name=>'item description assign'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P117_P_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52981043705159976)
,p_event_id=>wwv_flow_api.id(52980521439159976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P117_P_UNITOFMESURE,:P117_P_ITEMDESC,:P117_P_BRAND,:P117_P_MODAL,:P117_P_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P117_P_ITEMCODE;',
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
,p_attribute_02=>'P117_P_ITEMCODE'
,p_attribute_03=>'P117_P_UNITOFMESURE,P117_P_ITEMDESC,P117_P_BRAND,P117_P_MODAL,P117_P_ISSUMTHD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52977822417159976)
,p_name=>'add rows on javascript in Service Charge region'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(52861098741782367)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52978350360159976)
,p_event_id=>wwv_flow_api.id(52977822417159976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'addRow(''payment4'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52978702492159976)
,p_name=>'set region id dynamically'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52979244714159976)
,p_event_id=>wwv_flow_api.id(52978702492159976)
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
 p_id=>wwv_flow_api.id(53069358975222942)
,p_name=>'add rows javascript'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(53069744611222942)
,p_event_id=>wwv_flow_api.id(53069358975222942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $mydiv = $("#f14_0011");',
'    if ($mydiv.length){',
'/*alert(''test'');*/',
'}',
'else',
'{',
'for (i = 0; i <=10; i++)',
'{',
'javascript:addRow();',
'};',
'};',
'/*document.getElementById(''ITEMDESC'').readOnly = true;*/',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54748992217783252)
,p_name=>'change on service no'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54749440053783297)
,p_event_id=>wwv_flow_api.id(54748992217783252)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P117_SRVCNOFK:=:P117_SERVNO;',
'end;'))
,p_attribute_02=>'P117_SERVNO'
,p_attribute_03=>'P117_SRVCNOFK'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(53044701553217425)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(53006527354217401)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMNEGCRG'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(53033784644217417)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(53045085208217425)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(53006527354217401)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMNEGCRG'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(53297616927286390)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(53006527354217401)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert into nmnegcrg'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
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
'           VALUES (:NEGCRGPK, :COMPCODE, :DOCTTYPE,:SUBTTYPE,:P117_P_DOCNUMBR,',
'                   :P117_P_DOCTDATE,:SERLNUMB, :SERLNUMB, NULL, NULL, ',
'                  NULL, NULL, :APP_USER, SYSDATE, NULL, ',
'                  NULL, NULL, NULL, NULL, NULL, ',
'                  NULL, NULL, NULL, NULL, NULL, ',
'                  NULL, NULL, NULL, NULL, NULL, ',
'                  NULL, :TRNSQNTY, :DISPRCNT, :DISAMONT, NULL, ',
'                  NULL, NULL',
'                  );',
'',
'',
'   COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(53296240386183587)
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'Insert Successfully..........'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52976220887159974)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate negitmpk an negcrgpk'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' BEGIN',
'    SELECT 	NVL(MAX(negitmpk),0)+1 INTO :P117_P_NEGITMPK FROM NMNEGITM',
'	WHERE COMPCODE=:COMPCODE;',
'    ',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
'',
'begin',
'    ',
' 	SELECT 	NVL(MAX(negcrgpk),0) +1',
'	INTO :P117_C_NEGMASPK ',
'	  FROM NMNEGCRG',
'	 WHERE COMPCODE=:COMPCODE;',
'    ',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(53296959482229890)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(53006527354217401)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre insert into NMNECRG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'     :COMPCODE:=:P117_COMPCODE;',
'     :DOCTTYPE:= ''ES'';',
'     :SUBTTYPE:= 1;',
'     :DOCNUMBR:=:P117_P_DOCNUMBR;',
'     :DOCTDATE:=:P117_P_DOCTDATE;',
'   ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(53296240386183587)
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
