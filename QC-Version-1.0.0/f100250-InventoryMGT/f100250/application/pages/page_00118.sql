prompt --application/pages/page_00118
begin
--   Manifest
--     PAGE: 00118
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
 p_id=>118
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Spare Parts'
,p_page_mode=>'MODAL'
,p_step_title=>'Spare Parts'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function pad(n, width, z) {',
'  z = z || ''0'';',
'  n = n + '''';',
'  return n.length >= width ? n : new Array(width - n.length + 1).join(z) + n;',
'}',
'    ',
'function calculateTotal(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f26_''+vRow).value =',
'    Number(html_GetElement(''f20_''+vRow).value).toPrecision() *',
'    Number(html_GetElement(''f21_''+vRow).value).toPrecision();',
'var y = document.getElementById(''P118_C_NEGMASPK'').value;',
'',
'var str = vRow;',
'str = str.replace(/^0+/, ''''); ',
'    ',
' if(str == 1){           ',
'',
' if (html_GetElement(''f02_''+vRow).value == ""){',
'      html_GetElement(''f02_''+vRow).value = (y-1)+parseInt(str);',
'      html_GetElement(''f08_''+vRow).value = parseInt(str);',
' }',
'    }',
'    else{',
'        var prev = (parseInt(vRow)-1);',
'        ',
'        prev = pad(prev, 4);',
'        var id = ''f02_''.concat(prev);',
'        var uuu = document.getElementById(id).value;',
'        uuu++;',
'        html_GetElement(''f02_''+vRow).value = uuu;',
'        html_GetElement(''f08_''+vRow).value = parseInt(str);',
'        ',
'      }',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal3(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P118_ITEMCODE'').value=',
'    html_GetElement(''f11_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P118_ITEMCODE'').trigger(''click'');',
'});',
'html_GetElement(''f15_''+vRow).value=',
'document.getElementById(''P118_P_ITEMDESC'').value;',
'html_GetElement(''f17_''+vRow).value=',
'document.getElementById(''P118_SALERATE'').value;    ',
'}',
'</script>',
'<script type="text/javascript">',
'function clearrow(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f17_''+vRow).value="";',
'html_GetElement(''f19_''+vRow).value="";',
'html_GetElement(''f23_''+vRow).value="";',
'html_GetElement(''f26_''+vRow).value="";',
'html_GetElement(''f21_''+vRow).value="";',
'    ',
'}',
'</script>',
'<script type="text/javascript">',
'function Batchnum(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P110_BATCHNUM'').value=',
'    html_GetElement(''f18_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P110_BATCHNUM'').trigger(''click'');',
'});',
'html_GetElement(''f37_''+vRow).value=',
'document.getElementById(''P110_STOCKQTY'').value;    ',
'}',
'</script>',
'<script type="text/javascript">',
'function changediscount(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f23_''+vRow).value =',
'Number((Number(html_GetElement(''f17_''+vRow).value).toFixed(2)) *',
'    Number(html_GetElement(''f19_''+vRow).value).toFixed(2)*',
'(Number(html_GetElement(''f21_''+vRow).value).toFixed(2)/100)).toFixed(1);',
'html_GetElement(''f26_''+vRow).value =',
'   Number(html_GetElement(''f17_''+vRow).value).toFixed(2) *',
'    Number(html_GetElement(''f19_''+vRow).value).toFixed(2)-Number(html_GetElement(''f23_''+vRow).value).toFixed(2);',
'}',
'</script>',
'<script type="text/javascript">',
'function changedisamnt(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f26_''+vRow).value =',
'    Number(html_GetElement(''f17_''+vRow).value).toFixed(2) *',
'    Number(html_GetElement(''f19_''+vRow).value).toFixed(2)-Number(html_GetElement(''f23_''+vRow).value).toFixed(2);',
'html_GetElement(''f21_''+vRow).value =',
'    Number((Number(html_GetElement(''f23_''+vRow).value).toFixed(2) *',
'100)/(Number(html_GetElement(''f17_''+vRow).value).toFixed(2)*',
'Number(html_GetElement(''f19_''+vRow).value).toFixed(2))).toFixed(2);',
'}',
'</script>',
'<script type="text/javascript">',
'function changesalrate(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f26_''+vRow).value =',
'    Number(html_GetElement(''f17_''+vRow).value).toFixed(2) *',
'    Number(html_GetElement(''f19_''+vRow).value).toFixed(2)-Number(html_GetElement(''f23_''+vRow).value).toFixed(2);',
'}',
'</script>',
'',
''))
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
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170316124423'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56169499170192245)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>35
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(56501320036388988)
,p_name=>'Service Charge'
,p_parent_plug_id=>wwv_flow_api.id(56169499170192245)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
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
'NULL "Serv_name",',
'NULL "Total_Amount"',
'from "#OWNER#"."NMNEGCRG"',
'where NEGCRGFK=:P118_NEGITMFK',
'and SRVCNOFK=:P118_SRVCNOFK',
'order by SERLNUMB',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P118_NEGITMFK,P118_SRVCNOFK'
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
 p_id=>wwv_flow_api.id(56501641512388991)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56502051870388999)
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
 p_id=>wwv_flow_api.id(56502432517388999)
,p_query_column_id=>3
,p_column_alias=>'NEGCRGPK'
,p_column_display_sequence=>3
,p_column_heading=>'PK'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>5
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'NEGCRGPK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56502812731388999)
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
 p_id=>wwv_flow_api.id(56503233685389000)
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
 p_id=>wwv_flow_api.id(56503570832389000)
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
 p_id=>wwv_flow_api.id(56504005475389000)
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
 p_id=>wwv_flow_api.id(56504403219389000)
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
 p_id=>wwv_flow_api.id(56504866438389002)
,p_query_column_id=>9
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>9
,p_column_heading=>'Srl.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>2
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56505251551389002)
,p_query_column_id=>10
,p_column_alias=>'TEXTCODE'
,p_column_display_sequence=>12
,p_column_heading=>'Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select srvcnopk||'' | ''||srvccode||'' | ''||srvsecnm||'' | ''||srvcname||'' | ''||vhclname||'' | ''||groupnm||'' | ''||modelcde||'' | ''||modlname||'' | ''||sjobrate||'' | ''||sjobrate||'' | ''||crgprcnt||'' | ''||modcrgam||'' | ''||moddisam d,srvccode r',
'  from nmsvchrg',
' where compcode=:P129_COMPCODE',
' and modelcde =''NM''',
' and nvl(activflg,''N'')=''Y''',
' union ',
'select srvcnopk||'' | ''||srvccode||'' | ''||srvsecnm||'' | ''||srvcname||'' | ''||vhclname||'' | ''||groupnm||'' | ''||modelcde||'' | ''||modlname||'' | ''||sjobrate||'' | ''||sjobrate||'' | ''||crgprcnt||'' | ''||modcrgam||'' | ''||moddisam d,srvccode r',
'  from nmsvchrg',
' where compcode=:P129_COMPCODE',
'  and nvl(activflg,''N'')=''Y''',
'  and vhlmascd=(select vhclcode from nmitemas where compcode=:P129_COMPCODE and itemcode = :P129_S_ITEMCODE)'))
,p_lov_show_nulls=>'YES'
,p_column_width=>22
,p_cattributes=>'onchange="calculateTotal(this);calculateTotal3(this);clearrow(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'TEXTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56505645262389002)
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
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'TEXTSERL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56506027487389002)
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
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'TEXTLINE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56506410833389002)
,p_query_column_id=>13
,p_column_alias=>'TEXTAMNT'
,p_column_display_sequence=>18
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>8
,p_cattributes=>'onchange="changesalrate(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'TEXTAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56506832387389002)
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
 p_id=>wwv_flow_api.id(56507169453389003)
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
 p_id=>wwv_flow_api.id(56507602609389005)
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
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56507992036389005)
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
 p_id=>wwv_flow_api.id(56508372128389005)
,p_query_column_id=>18
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>23
,p_column_heading=>'Partycde'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56508823254389005)
,p_query_column_id=>19
,p_column_alias=>'RECNUMBR'
,p_column_display_sequence=>21
,p_column_heading=>'Recnumbr'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'RECNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56509177906389005)
,p_query_column_id=>20
,p_column_alias=>'ACCTCODE'
,p_column_display_sequence=>25
,p_column_heading=>'Acctcode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'ACCTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56509619577389005)
,p_query_column_id=>21
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>26
,p_column_heading=>'Costcode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'COSTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56510021200389005)
,p_query_column_id=>22
,p_column_alias=>'REFDCTYP'
,p_column_display_sequence=>28
,p_column_heading=>'Refdctyp'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'REFDCTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56510436496389006)
,p_query_column_id=>23
,p_column_alias=>'REFDCSTY'
,p_column_display_sequence=>30
,p_column_heading=>'Refdcsty'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'REFDCSTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56510855235389006)
,p_query_column_id=>24
,p_column_alias=>'REFDOCNO'
,p_column_display_sequence=>31
,p_column_heading=>'Refdocno'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'REFDOCNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56511186351389006)
,p_query_column_id=>25
,p_column_alias=>'REFDCDTE'
,p_column_display_sequence=>32
,p_column_heading=>'Refdcdte'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'REFDCDTE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56511604906389008)
,p_query_column_id=>26
,p_column_alias=>'REFSRLNO'
,p_column_display_sequence=>33
,p_column_heading=>'Refsrlno'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'REFSRLNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56512066508389008)
,p_query_column_id=>27
,p_column_alias=>'SRVCNOFK'
,p_column_display_sequence=>34
,p_column_heading=>'Srvcnofk'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'SRVCNOFK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56512447838389008)
,p_query_column_id=>28
,p_column_alias=>'ADITIONL'
,p_column_display_sequence=>35
,p_column_heading=>'Aditionl'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'ADITIONL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56512772082389008)
,p_query_column_id=>29
,p_column_alias=>'CUSTAPRV'
,p_column_display_sequence=>36
,p_column_heading=>'Custaprv'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'CUSTAPRV'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56513226617389008)
,p_query_column_id=>30
,p_column_alias=>'ADDICODE'
,p_column_display_sequence=>37
,p_column_heading=>'Addicode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'ADDICODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56513654242389009)
,p_query_column_id=>31
,p_column_alias=>'SCRGNOFK'
,p_column_display_sequence=>38
,p_column_heading=>'Scrgnofk'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'SCRGNOFK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56514047332389009)
,p_query_column_id=>32
,p_column_alias=>'NEGCRGFK'
,p_column_display_sequence=>39
,p_column_heading=>'Negcrgfk'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'NEGCRGFK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56514467021389009)
,p_query_column_id=>33
,p_column_alias=>'NEGCRGFK1'
,p_column_display_sequence=>40
,p_column_heading=>'Negcrgfk1'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'NEGCRGFK1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56514855821389009)
,p_query_column_id=>34
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>20
,p_column_heading=>'Qty.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>4
,p_cattributes=>'onchange="changesalrate(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'TRNSQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56515236369389011)
,p_query_column_id=>35
,p_column_alias=>'DISPRCNT'
,p_column_display_sequence=>22
,p_column_heading=>'Discount<br>(%)'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>6
,p_cattributes=>'onchange="changediscount(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'DISPRCNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56515609085389011)
,p_query_column_id=>36
,p_column_alias=>'DISAMONT'
,p_column_display_sequence=>24
,p_column_heading=>'Discount<br>Amount'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>6
,p_cattributes=>'onchange="changedisamnt(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'DISAMONT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56516061273389011)
,p_query_column_id=>37
,p_column_alias=>'MODIFYDT'
,p_column_display_sequence=>41
,p_column_heading=>'Modifydt'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'MODIFYDT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56516461665389011)
,p_query_column_id=>38
,p_column_alias=>'CHRGRATE'
,p_column_display_sequence=>42
,p_column_heading=>'Chrgrate'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'CHRGRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56516732847389011)
,p_query_column_id=>39
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>29
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGCRG'
,p_ref_column_name=>'REMARKSS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56517142224389011)
,p_query_column_id=>40
,p_column_alias=>'Tools_desc'
,p_column_display_sequence=>14
,p_column_heading=>'Tools<br>Description'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>20
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56517533880389013)
,p_query_column_id=>41
,p_column_alias=>'Serv_name'
,p_column_display_sequence=>16
,p_column_heading=>'Service<br>Name'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>28
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(56918209322044050)
,p_query_column_id=>42
,p_column_alias=>'Total_Amount'
,p_column_display_sequence=>27
,p_column_heading=>'Total<br>Amount'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56172670277192250)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56517924018389013)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(56501320036388988)
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
 p_id=>wwv_flow_api.id(56173520132192252)
,p_button_sequence=>40
,p_button_name=>'ADD_ROW1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56518318985389019)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(56501320036388988)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Charge'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cunt number;',
'begin',
'SELECT    Count(DOCNUMBR) DOCNUMBR into v_cunt FROM NMNEGCRG',
'    WHERE COMPCODE=:COMPCODE',
'    and SRVCNOFK=:P118_SRVCNOFK',
'    and DOCNUMBR=:P118_NEXTESTIMATION;',
'',
'if  v_cunt  > 0 then',
'return false;',
'else ',
'return true;',
'end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56990951374103087)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(56501320036388988)
,p_button_name=>'CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cunt number;',
'begin',
'SELECT    Count(DOCNUMBR) DOCNUMBR into v_cunt FROM NMNEGCRG',
'    WHERE COMPCODE=:COMPCODE',
'    and SRVCNOFK=:P118_SRVCNOFK',
'   and DOCNUMBR=:P118_NEXTESTIMATION;',
'if  v_cunt  > 0 then',
'return true;',
'else ',
'return false;',
'end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56518678462389020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(56501320036388988)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56519069741389020)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(56501320036388988)
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
 p_id=>wwv_flow_api.id(56519537764389022)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(56501320036388988)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(56193161446192303)
,p_branch_action=>'f?p=&APP_ID.:118:&SESSION.::&DEBUG.:118::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(56518318985389019)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(61808235688579908)
,p_branch_name=>'go to page'
,p_branch_action=>'f?p=&APP_ID.:118:&SESSION.::&DEBUG.:118::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(56990951374103087)
,p_branch_sequence=>11
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56159167684192211)
,p_name=>'P118_SERVNO'
,p_item_sequence=>40
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_item_default=>'&P129_SRVCNOFK.'
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
 p_id=>wwv_flow_api.id(56159469842192227)
,p_name=>'P118_P_DOCTDATE'
,p_item_sequence=>540
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(56159964502192230)
,p_name=>'P118_NEXTESTIMATION'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(56169499170192245)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P129_NEXTESTIMATION.'
,p_prompt=>'Estimation'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56160295439192230)
,p_name=>'P118_NEGITMFK'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(56169499170192245)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P129_NEGMASPK.'
,p_prompt=>'Negitmfk'
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
 p_id=>wwv_flow_api.id(56160700310192230)
,p_name=>'P118_ESTIMATIONDETAILS'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(56501320036388988)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estimation Details'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct DOCNUMBR||'' / ''||DOCTDATE||'' / ''||SRVCNOFK||'' / ''||NEGMASPK d ',
'from nmnegmas',
'where NEGMASPK=:P118_NEGITMFK',
'and SRVCNOFK=:P118_SRVCNOFK'))
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
 p_id=>wwv_flow_api.id(56161135351192230)
,p_name=>'P118_SRVCNOFK'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(56169499170192245)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P129_SRVCNOFK.'
,p_prompt=>'Srvcnofk'
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
 p_id=>wwv_flow_api.id(56169873002192249)
,p_name=>'P118_P_ITEMCODE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(56169499170192245)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P129_S_ITEMCODE.'
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
 p_id=>wwv_flow_api.id(56170284325192249)
,p_name=>'P118_P_ITEMDESC'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(56169499170192245)
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
 p_id=>wwv_flow_api.id(56170765202192250)
,p_name=>'P118_P_COSTCODE'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(56169499170192245)
,p_item_default=>'&P129_COSTCODE.'
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
 p_id=>wwv_flow_api.id(56171106222192250)
,p_name=>'P118_SALERATE'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(56169499170192245)
,p_prompt=>'Salerate'
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
 p_id=>wwv_flow_api.id(56171485067192250)
,p_name=>'P118_STOCKQTY'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(56169499170192245)
,p_prompt=>'Stockqty'
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
 p_id=>wwv_flow_api.id(56171934444192250)
,p_name=>'P118_BATCHNUM'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(56169499170192245)
,p_prompt=>'Batchnum'
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
 p_id=>wwv_flow_api.id(56172304944192250)
,p_name=>'P118_DISCPCNT'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(56169499170192245)
,p_item_default=>'100'
,p_prompt=>'Discpcnt'
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
 p_id=>wwv_flow_api.id(56173945486192252)
,p_name=>'P118_WARCD'
,p_item_sequence=>50
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_item_default=>'&P129_WARCD.'
,p_prompt=>'Warecode'
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
 p_id=>wwv_flow_api.id(56174350747192252)
,p_name=>'P118_SERDATE'
,p_item_sequence=>60
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Service Date'
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
 p_id=>wwv_flow_api.id(56174702720192252)
,p_name=>'P118_RGSNO'
,p_item_sequence=>70
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Registration No.'
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
 p_id=>wwv_flow_api.id(56175075618192252)
,p_name=>'P118_CHASNO'
,p_item_sequence=>80
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Chasis No.'
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
 p_id=>wwv_flow_api.id(56175486066192253)
,p_name=>'P118_S_SRVCNOPK'
,p_item_sequence=>210
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(56175936562192253)
,p_name=>'P118_P_DOCNUMBR'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(56169499170192245)
,p_item_default=>'&P129_NEXTESTIMATION.'
,p_prompt=>'P docnumbr'
,p_display_as=>'NATIVE_HIDDEN'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56176310130192253)
,p_name=>'P118_ROWID'
,p_item_sequence=>440
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(56176724035192253)
,p_name=>'P118_P_NEGITMPK'
,p_item_sequence=>450
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(56177083478192253)
,p_name=>'P118_COMPCODE'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(56169499170192245)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P129_COMPCODE.'
,p_prompt=>'Compcode'
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
 p_id=>wwv_flow_api.id(56177528307192253)
,p_name=>'P118_C_NEGMASPK'
,p_item_sequence=>590
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56177961848192267)
,p_name=>'P118_P_DOCTTYPE'
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
 p_id=>wwv_flow_api.id(56178285795192267)
,p_name=>'P118_P_SUBTTYPE'
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
 p_id=>wwv_flow_api.id(56178725152192267)
,p_name=>'P118_P_NEGMASPK'
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
 p_id=>wwv_flow_api.id(56179118119192267)
,p_name=>'P118_P_UNITOFMESURE'
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
 p_id=>wwv_flow_api.id(56179525778192269)
,p_name=>'P118_P_BRAND'
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
 p_id=>wwv_flow_api.id(56179907793192269)
,p_name=>'P118_P_MODAL'
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
 p_id=>wwv_flow_api.id(56180279054192269)
,p_name=>'P118_P_ISSUMTHD'
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
 p_id=>wwv_flow_api.id(56180703550192269)
,p_name=>'P118_P_ROWNUM'
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
 p_id=>wwv_flow_api.id(56181166401192269)
,p_name=>'P118_P_SERLNUMB'
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
 p_id=>wwv_flow_api.id(56181480431192269)
,p_name=>'P118_P_ITEMTYPE'
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
 p_id=>wwv_flow_api.id(56181945638192269)
,p_name=>'P118_P_ITEMRATE'
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
 p_id=>wwv_flow_api.id(56182306829192269)
,p_name=>'P118_P_CURRCODE'
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
 p_id=>wwv_flow_api.id(56182705522192269)
,p_name=>'P118_P_EXCGRATE'
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
 p_id=>wwv_flow_api.id(56183102124192269)
,p_name=>'P118_P_STATUSCD'
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
 p_id=>wwv_flow_api.id(61020491406944194)
,p_name=>'P118_ITEMCODE'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_api.id(56169499170192245)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Itemcode'
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
 p_id=>wwv_flow_api.id(61790748718296119)
,p_name=>'P118_TEST'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_api.id(56169499170192245)
,p_prompt=>'Test'
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
 p_id=>wwv_flow_api.id(61811204899637020)
,p_name=>'P118_NEGMASPK_MAS'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_api.id(56501320036388988)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Negmaspk Mas'
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
 p_id=>wwv_flow_api.id(61811564434637020)
,p_name=>'P118_DOCNUMBR_MAS'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_api.id(56501320036388988)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Docnumbr Mas'
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
 p_id=>wwv_flow_api.id(61811932017637021)
,p_name=>'P118_ESTJOBNO_MAS'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(56501320036388988)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estjobno Mas'
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
 p_id=>wwv_flow_api.id(61812400995641254)
,p_name=>'P118_DOCTTYPE'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_api.id(56501320036388988)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Docttype'
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
 p_id=>wwv_flow_api.id(61812670248641254)
,p_name=>'P118_SUBTTYPE'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_api.id(56501320036388988)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subttype'
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
 p_id=>wwv_flow_api.id(61813070650641254)
,p_name=>'P118_DOCNUMBR'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(56501320036388988)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Docnumbr'
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
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(56183615672192270)
,p_computation_sequence=>10
,p_computation_item=>'P129_SRVCNOFK'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_SRVCNOFK.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(56184047310192273)
,p_computation_sequence=>10
,p_computation_item=>'P129_WARCD'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_WARCD.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(56184446262192273)
,p_computation_sequence=>10
,p_computation_item=>'P129_E_DOCTDATE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_E_DOCTDATE.'
,p_computation_error_message=>'no date'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(56184790669192273)
,p_computation_sequence=>10
,p_computation_item=>'P129_COMPCODE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_COMPCODE.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(56185249623192273)
,p_computation_sequence=>10
,p_computation_item=>'P129_COSTCODE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_COSTCODE.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(56185627294192273)
,p_computation_sequence=>10
,p_computation_item=>'P129_NEXTESTIMATION'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_NEXTESTIMATION.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(56186058922192275)
,p_computation_sequence=>10
,p_computation_item=>'P129_NEGMASPK'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_NEGMASPK.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(60832670197772876)
,p_computation_sequence=>10
,p_computation_item=>'P129_S_ITEMCODE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_S_ITEMCODE.'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(57147505142405914)
,p_tabular_form_region_id=>wwv_flow_api.id(56501320036388988)
,p_validation_name=>'TEXTCODE for insert'
,p_validation_sequence=>10
,p_validation=>'TEXTCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(56518318985389019)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'TEXTCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(57147775080410650)
,p_tabular_form_region_id=>wwv_flow_api.id(56501320036388988)
,p_validation_name=>'TRNSQNTY for insert'
,p_validation_sequence=>20
,p_validation=>'TRNSQNTY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(56518318985389019)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'TRNSQNTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(57148157163415007)
,p_tabular_form_region_id=>wwv_flow_api.id(56501320036388988)
,p_validation_name=>'TEXTAMNT for insert'
,p_validation_sequence=>30
,p_validation=>'TEXTAMNT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(56518318985389019)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'TEXTAMNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(57148978139421571)
,p_tabular_form_region_id=>wwv_flow_api.id(56501320036388988)
,p_validation_name=>'TEXTCODE for update'
,p_validation_sequence=>40
,p_validation=>'TEXTCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(56990951374103087)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'TEXTCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(57149313255423464)
,p_tabular_form_region_id=>wwv_flow_api.id(56501320036388988)
,p_validation_name=>'TRNSQNTY  for update'
,p_validation_sequence=>50
,p_validation=>'TRNSQNTY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(56990951374103087)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'TRNSQNTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(57149595572425501)
,p_tabular_form_region_id=>wwv_flow_api.id(56501320036388988)
,p_validation_name=>'TEXTAMNT  for update'
,p_validation_sequence=>60
,p_validation=>'TEXTAMNT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(56990951374103087)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'TEXTAMNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(57150264036442415)
,p_tabular_form_region_id=>wwv_flow_api.id(56501320036388988)
,p_validation_name=>'Comparison discount percent with 100 for update'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'discprcnt VARCHAR2 (4000);',
'disamount number;',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f21.COUNT',
'   LOOP',
'    ',
'discprcnt := apex_application.g_f21 (i);',
'disamount := :P110_DISCPCNT;',
'if discprcnt > disamount then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Discount Percent cannot be gater than 100''',
'            || discprcnt ',
'            ||''>'' ',
'            || disamount ;',
'end if;',
'   END LOOP;',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(56990951374103087)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'DISCPCNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(57150543141445266)
,p_tabular_form_region_id=>wwv_flow_api.id(56501320036388988)
,p_validation_name=>'Comparison discount percent with 100 for insert'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'discprcnt VARCHAR2 (4000);',
'disamount number;',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f21.COUNT',
'   LOOP',
'    ',
'discprcnt := apex_application.g_f21 (i);',
'disamount := :P110_DISCPCNT;',
'if discprcnt > disamount then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Discount Percent cannot be gater than 100''',
'            || discprcnt ',
'            ||''>'' ',
'            || disamount ;',
'end if;',
'   END LOOP;',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(56518318985389019)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'DISCPCNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56186675733192275)
,p_name=>'add rows javascript'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56187239315192294)
,p_event_id=>wwv_flow_api.id(56186675733192275)
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
'for (i = 0; i <=5; i++)',
'{',
'javascript:addRow();',
'};',
'};',
'/*document.getElementById(''ITEMDESC'').readOnly = true;*/',
''))
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
 p_id=>wwv_flow_api.id(56187582560192297)
,p_name=>'change on itemcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P118_P_ITEMCODE'
,p_condition_element=>'P118_P_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56188092494192297)
,p_event_id=>wwv_flow_api.id(56187582560192297)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P118_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P118_UNITOFMESURE,:P118_ITEMDESC,:P118_BRAND,:P118_MODAL,:P118_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P118_ITEMCODE;',
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
'IF :P118_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P118_SALPRICE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P118_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P118_ITEMCODE;',
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
'IF :P118_ITEMCODE1 IS NOT NULL and :P118_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) ',
'into :P118_QUENTITY',
'       from    nmsalrec s,(SELECT   SUM (d.trnsqnty) trnsqnty, d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE',
'                     FROM nmdevrec d',
'                     group by d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE) e',
'                     WHERE s.docnumbr = :P118_docnumbr1 AND s.itemcode = :P118_itemcode1',
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
,p_attribute_02=>'P118_ITEMCODE,P118_WARECODE,P118_ITEMCODE1,P118_DOCNUMBR1'
,p_attribute_03=>'P118_UNITOFMESURE,P118_ITEMDESC,P118_BRAND,P118_MODAL,P118_SALPRICE,P118_ISSUMTHD,P118_CLOSINGBALANCE,P118_QUENTITY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56188562304192298)
,p_name=>'item description assign'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P118_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56189043166192298)
,p_event_id=>wwv_flow_api.id(56188562304192298)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if :P118_P_ITEMCODE is not null then',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P118_P_UNITOFMESURE,:P118_P_ITEMDESC,:P118_P_BRAND,:P118_P_MODAL,:P118_P_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :P118_COMPCODE',
'            AND ITEMCODE = :P118_ITEMCODE;',
' end if;       ',
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
'END;',
'',
'  BEGIN',
'if :P118_P_ITEMCODE is not null then',
'select distinct SALERATE',
'into :P118_SALERATE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:P118_COMPCODE',
'and ITEMCODE= :P118_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:P118_COMPCODE',
'and ITEMCODE= :P118_ITEMCODE;',
'end if;        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            :P118_SALERATE :=''NO'';',
' WHEN too_many_rows',
'         THEN',
'             :P118_SALERATE :=''TOO'';',
' WHEN others',
'         THEN',
'              :P118_SALERATE :=''Others'';',
'      END;'))
,p_attribute_02=>'P118_ITEMCODE,P118_COMPCODE'
,p_attribute_03=>'P118_P_UNITOFMESURE,P118_P_ITEMDESC,P118_P_BRAND,P118_P_MODAL,P118_P_ISSUMTHD,P118_SALERATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56189404296192298)
,p_name=>'disable  field on tabular item'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56189954684192298)
,p_event_id=>wwv_flow_api.id(56189404296192298)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''input[name="f08"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f08"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f08"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f13"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f13"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f13"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f15"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f15"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f15"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  '))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56190331154192300)
,p_name=>'Change on batchnum on tabular item'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P118_BATCHNUM'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56190852053192300)
,p_event_id=>wwv_flow_api.id(56190331154192300)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P118_BATCHNUM IS NOT NULL',
'   THEN',
'      BEGIN',
'           SELECT DISTINCT SUM (clbalqty) clsbln',
'             INTO :P118_STOCKQTY',
'             FROM nmitemas a, nmwhimas b',
'            WHERE     a.compcode = :P118_COMPCODE',
'                  AND b.compcode = a.compcode',
'                  AND a.statuscd = ''ACT''',
'                  AND a.itemcode = b.itemcode',
'                  AND NVL (a.finishgd, ''N'') = ''Y''',
'                  AND b.warecode = :P118_WARCD',
'                  AND b.itemcode = :P118_P_ITEMCOD',
'                  AND b.BATCHNUM = :P118_BATCHNUM',
'                  AND NVL (b.clbalqty, 0) > 0',
'         GROUP BY a.itemcode, INITCAP (itemdes2), a.compcode;',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            :P118_STOCKQTY:=0;',
'         WHEN TOO_MANY_ROWS',
'         THEN',
'            NULL;',
'         WHEN OTHERS',
'         THEN',
'            NULL;',
'      END;',
'   END IF;',
'END;'))
,p_attribute_02=>'P118_BATCHNUM,P118_COMPCODE,P118_WARCD,P118_P_ITEMCOD'
,p_attribute_03=>'P118_STOCKQTY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56191206940192302)
,p_name=>'Check All'
,p_event_sequence=>60
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#tcheckbox'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56191741559192302)
,p_event_id=>wwv_flow_api.id(56191206940192302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P118_SERVNO'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $( ''#tcheckbox'' ).is('':checked'') ) {',
'  $(''input[type=checkbox][name=f40_NOSUBMIT]'').attr(''checked'',true);',
'}',
'else {',
'  $(''input[type=checkbox][name=f40_NOSUBMIT]'').attr(''checked'',false);',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56192109557192302)
,p_name=>'change on service no'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56192596581192302)
,p_event_id=>wwv_flow_api.id(56192109557192302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P118_SRVCNOFK:=:P118_SERVNO;',
'end;'))
,p_attribute_02=>'P118_SERVNO'
,p_attribute_03=>'P118_SRVCNOFK'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56558240626427844)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(56501320036388988)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMNEGCRG'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(56990951374103087)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56558528879429436)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(56501320036388988)
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
 p_id=>wwv_flow_api.id(61807044429526737)
,p_process_sequence=>65
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into nmnegmas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cunt number;',
'v_cunt1 number;',
'BEGIN',
'select count(DOCNUMBR) into v_cunt from nmnegmas',
'where NEGMASPK=(select distinct NEGCRGPK from nmnegcrg',
'where TEXTCODE=:P118_P_ITEMCODE',
'and SRVCNOFK=:P118_SERVNO',
'and DOCNUMBR=:P118_NEXTESTIMATION);',
'select ',
'count(distinct DOCNUMBR) docnum into v_cunt1',
'from NMNEGMAS',
'where SRVCNOFK=:P118_SERVNO',
'and DOCNUMBR=:P118_NEXTESTIMATION;',
'if v_cunt1=0 then',
'if v_cunt=0 and :P118_ITEMCODE is not null then',
'   INSERT INTO nmnegmas (COMPCODE,',
'                         DOCTTYPE,',
'                         SUBTTYPE,',
'                         DOCNUMBR,',
'                         DOCTDATE,',
'                         RAISEDBY,',
'                         APPRVDBY,',
'                         APPRDATE,',
'                         UPDOCTYP,',
'                         UPSUBTYP,',
'                         UPDOCNUM,',
'                         UPDOCDTE,',
'                         UPDOCSRL,',
'                         DWDOCTYP,',
'                         DWSUBTYP,',
'                         DWDOCNUM,',
'                         DWDOCDTE,',
'                         DWDOCSRL,',
'                         REMARKSS,',
'                         POSTFLAG,',
'                         PRNTFLAG,',
'                         STATUSCD,',
'                         OPRSTAMP,',
'                         TIMSTAMP,',
'                         COMPLETE,',
'                         APRVFLAG,',
'                         ESTJOBNO,',
'                         SRVCNOFK,',
'                         ADITIONL,',
'                         NEGMASPK,',
'                         TOTCHARG,',
'                         TOTPAMNT,',
'                         TOTALVAT,',
'                         BILLNOFK,',
'                         MODIFYDT)',
'        VALUES (:P118_COMPCODE,',
'                ''ES'',',
'                1,',
'                :P118_DOCNUMBR_MAS,',
'                TRUNC(SYSDATE),',
'                :APP_USER,',
'                :APP_USER,',
'                SYSDATE,',
'                :P118_DOCTTYPE,',
'                :P118_SUBTTYPE,',
'                :P118_DOCNUMBR,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                :APP_USER,',
'                SYSDATE,',
'                NULL,',
'                NULL,',
'                :P118_ESTJOBNO_MAS,',
'                :P118_SERVNO,',
'                NULL,',
'                :P118_NEGMASPK_MAS,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL);',
'',
'end if;',
'end if;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(56518318985389019)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56558794219430992)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(56501320036388988)
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
'           VALUES (:NEGCRGPK, :COMPCODE, :DOCTTYPE,:SUBTTYPE,:P118_P_DOCNUMBR,',
'                   :P118_P_DOCTDATE,:SERLNUMB, :TEXTCODE, NULL, NULL, ',
'                  :TEXTAMNT, NULL, :APP_USER, SYSDATE, NULL, ',
'                  NULL, NULL, NULL, NULL, NULL, ',
'                  NULL, NULL, NULL, NULL, :P118_SERVNO, ',
'                  NULL, NULL, NULL, NULL, :P118_NEGMASPK_MAS, ',
'                  NULL, :TRNSQNTY, :DISPRCNT, :DISAMONT, NULL, ',
'                  NULL, :REMARKSS',
'                  );',
'',
'',
'   COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(56518318985389019)
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'Insert Successfully..........'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56991616303188427)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(56501320036388988)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update into nmnegcrg'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   V_negitmpk   NUMBER;',
'BEGIN',
'   FOR i IN 1 .. APEX_APPLICATION.g_f02.COUNT',
'   LOOP',
'      DECLARE',
'         CURSOR v_cur',
'         IS',
'            SELECT NEGCRGPK',
'              FROM nmnegcrg',
'             WHERE NEGCRGPK = APEX_APPLICATION.g_f02 (i);',
'',
'         v_negitmpk1   NUMBER;',
'         v_app_pk      VARCHAR2 (20);',
'      BEGIN',
'         FOR i IN 1 .. APEX_APPLICATION.g_f02.COUNT',
'         LOOP',
'            OPEN v_cur;',
'',
'            FETCH v_cur INTO v_negitmpk1;',
'',
'            CLOSE v_cur;',
'',
'            IF APEX_APPLICATION.g_f02 (i) = v_negitmpk1',
'            THEN',
'               UPDATE nmnegcrg',
'                  SET negcrgpk = APEX_APPLICATION.g_f02 (i),',
'                      compcode = :compcode,',
'                      docttype = :docttype,',
'                      subttype = :subttype,',
'                      docnumbr = :docnumbr,',
'                      doctdate = :doctdate,',
'                      serlnumb = APEX_APPLICATION.g_f08 (i),',
'                      textcode = APEX_APPLICATION.g_f11 (i),',
'                      disprcnt = APEX_APPLICATION.g_f21 (i),',
'                      disamont = APEX_APPLICATION.g_f23 (i),',
'                      trnsqnty = APEX_APPLICATION.g_f19 (i),',
'                      TEXTAMNT = APEX_APPLICATION.g_f17 (i),',
'                      oprstamp = :oprstamp,',
'                      timstamp = :timstamp,',
'                      srvcnofk = :srvcnofk,',
'                      negcrgfk = :negcrgfk,',
'                      remarkss = APEX_APPLICATION.g_f28 (i)',
'                WHERE     NEGCRGFK = :P118_NEGITMFK',
'                      AND SRVCNOFK = :P118_SRVCNOFK',
'                      AND negcrgpk = APEX_APPLICATION.g_f02 (i)',
'                      AND serlnumb = APEX_APPLICATION.g_f08 (i);',
'            END IF;',
'         END LOOP;',
'      END;',
'   END LOOP;',
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
'      COMMIT;',
'END;',
'',
'BEGIN',
'   FOR i IN 1 .. APEX_APPLICATION.g_f02.COUNT',
'   LOOP',
'      DECLARE',
'         CURSOR v_cur1',
'         IS',
'            SELECT NEGCRGPK',
'              FROM nmnegcrg',
'             WHERE NEGCRGPK = APEX_APPLICATION.g_f02 (i);',
'',
'         v_negitmpk2   NUMBER;',
'         v_app_pk      VARCHAR2 (20);',
'      BEGIN',
'         FOR i IN 1 .. APEX_APPLICATION.g_f02.COUNT',
'         LOOP',
'            OPEN v_cur1;',
'',
'            FETCH v_cur1 INTO v_negitmpk2;',
'',
'            CLOSE v_cur1;',
'',
'            IF APEX_APPLICATION.g_f02 (i) <> v_negitmpk2',
'            THEN',
'--            :P118_TEST:=''MONir'';',
'               INSERT INTO nmnegcrg (NEGCRGPK,',
'                                     COMPCODE,',
'                                     DOCTTYPE,',
'                                     SUBTTYPE,',
'                                     DOCNUMBR,',
'                                     DOCTDATE,',
'                                     SERLNUMB,',
'                                     TEXTCODE,',
'                                     TEXTSERL,',
'                                     TEXTLINE,',
'                                     TEXTAMNT,',
'                                     DISADJAM,',
'                                     OPRSTAMP,',
'                                     TIMSTAMP,',
'                                     TEXTPCNT,',
'                                     PARTYCDE,',
'                                     RECNUMBR,',
'                                     ACCTCODE,',
'                                     COSTCODE,',
'                                     REFDCTYP,',
'                                     REFDCSTY,',
'                                     REFDOCNO,',
'                                     REFDCDTE,',
'                                     REFSRLNO,',
'                                     SRVCNOFK,',
'                                     ADITIONL,',
'                                     CUSTAPRV,',
'                                     ADDICODE,',
'                                     SCRGNOFK,',
'                                     NEGCRGFK,',
'                                     NEGCRGFK1,',
'                                     TRNSQNTY,',
'                                     DISPRCNT,',
'                                     DISAMONT,',
'                                     MODIFYDT,',
'                                     CHRGRATE,',
'                                     REMARKSS)',
'                    VALUES (:NEGCRGPK,',
'                            :COMPCODE,',
'                            :DOCTTYPE,',
'                            :SUBTTYPE,',
'                            :P118_P_DOCNUMBR,',
'                            :P118_P_DOCTDATE,',
'                            :SERLNUMB,',
'                            :TEXTCODE,',
'                            NULL,',
'                            NULL,',
'                            :TEXTAMNT,',
'                            NULL,',
'                            :APP_USER,',
'                            SYSDATE,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            :P118_SRVCNOFK,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            :P118_NEGITMFK,',
'                            NULL,',
'                            :TRNSQNTY,',
'                            :DISPRCNT,',
'                            :DISAMONT,',
'                            NULL,',
'                            NULL,',
'                            :REMARKSS);',
'            END IF;',
'         END LOOP;',
'      END;',
'   END LOOP;',
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
'      COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(56990951374103087)
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'Update Successfully........'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'for i in 1..apex_application.g_f02.count loop  ',
'   UPDATE nmnegcrg',
'      SET negcrgpk = apex_application.g_f02(i),',
'          compcode = :compcode,',
'          docttype = :docttype,',
'          subttype = :subttype,',
'          docnumbr = :docnumbr,',
'          doctdate = :doctdate,',
'          serlnumb = apex_application.g_f08(i),',
'          textcode = apex_application.g_f11(i),',
'          disprcnt = apex_application.g_f21(i),',
'          disamont = apex_application.g_f23(i),',
'          trnsqnty = apex_application.g_f19(i),',
'          TEXTAMNT = apex_application.g_f17(i),',
'          oprstamp = :oprstamp,',
'          timstamp = :timstamp,',
'          srvcnofk = :srvcnofk,',
'          negcrgfk = :negcrgfk,',
'          remarkss = apex_application.g_f28(i)',
'    WHERE NEGCRGFK = :P110_NEGITMFK ',
'    AND SRVCNOFK = :P118_SRVCNOFK',
'    and negcrgpk = apex_application.g_f02(i)',
'    and serlnumb = apex_application.g_f08(i);',
'end loop;',
'   COMMIT;',
'END;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56186325333192275)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate negitmpk an negcrgpk'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'begin',
'    ',
' 	SELECT 	NVL(MAX(negcrgpk),0) +1',
'	INTO :P118_C_NEGMASPK ',
'	  FROM NMNEGCRG',
'	 WHERE COMPCODE=:COMPCODE;',
'    ',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61806675481514692)
,p_process_sequence=>65
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert into nmnegmas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*begin',
'     :COMPCODE:=:P110_COMPCODE;',
'     :DOCTTYPE:= ''ES'';',
'     :SUBTTYPE:= 1;',
'     :OPRSTAMP := :APP_USER;',
'     :TIMSTAMP := SYSDATE;',
'  ',
'',
'end;*/',
'',
'BEGIN',
'if :P118_NEGITMFK is not null then',
':P118_NEGMASPK_MAS:= :P118_NEGITMFK;',
'else',
'    SELECT     NVL(MAX(NEGMASPK),0)+1 INTO :P118_NEGMASPK_MAS FROM NMNEGMAS',
'    WHERE COMPCODE=:COMPCODE;',
'end if;  ',
'EXCEPTION WHEN OTHERS THEN NULL;',
'   ',
'    ',
'END;',
'',
'begin',
'--if :P129_FLAG =''A'' then',
':P118_DOCNUMBR_MAS:=Drp_Primarykey_Generate(:COMPCODE,''NMNEGMAS'',''DOCNUMBR'',''SRVCNOFK=''||:P118_SERVNO,1,''NM'',''ES'',1,TRUNC(SYSDATE));',
'--end if;',
'end;',
'BEGIN',
'--if :P129_FLAG =''A'' then',
'--:P110_ESTJOBNO_MAS:=Drp_Primarykey_Generate(:P129_COMPCODE,''NMNEGMAS'',''ESTJOBNO'',''SRVCNOFK=''||:P110_SERVNO,1,:MODLCODE,''JB'',1,Trunc(Sysdate));',
'--end if;',
':P118_ESTJOBNO_MAS:=NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(56518318985389019)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56559400641434510)
,p_process_sequence=>90
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(56501320036388988)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre insert into NMNECRG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'     :COMPCODE:=:P118_COMPCODE;',
'     :DOCTTYPE:= ''ES'';',
'     :SUBTTYPE:= 1;',
'     :DOCNUMBR:=:P118_P_DOCNUMBR;',
'     :DOCTDATE:=:P118_P_DOCTDATE;',
'   ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(56518318985389019)
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61791502037332656)
,p_process_sequence=>90
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(56501320036388988)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre update into nmnegcrg'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'     :COMPCODE:=:P118_COMPCODE;',
'     :DOCTTYPE:= ''ES'';',
'     :SUBTTYPE:= 1;',
'     :DOCNUMBR:=:P118_P_DOCNUMBR;',
'     :DOCTDATE:=:P118_P_DOCTDATE;',
'   ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(56990951374103087)
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(57150688759448808)
,p_process_sequence=>100
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(56501320036388988)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'check duplicate item on tabular'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vAccNo1    VARCHAR2(1024);',
'vAccNo2    VARCHAR2(1024);',
'vAmount    NUMBER;',
'',
'BEGIN',
'--RAISE_APPLICATION_ERROR(-20010,''vAccNo1''  );',
'',
' FOR i IN 1 .. APEX_APPLICATION.g_f11.COUNT',
' LOOP',
'   vAccNo1  := APEX_APPLICATION.g_f11(i);',
'',
'  FOR j IN 1 .. APEX_APPLICATION.g_f11.COUNT',
'  LOOP',
'  BEGIN',
'    vAccNo2  := APEX_APPLICATION.g_f11(j);',
'    ',
'',
'    IF vAccNo1  = vAccNo2 ',
'    AND i <> j ',
'    THEN',
'      RAISE_APPLICATION_ERROR(-20010,''Itemcode cannot be duplicate.''||vAccNo1  );',
'    END IF;',
'  END;',
'  END LOOP;',
' END LOOP; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(56518318985389019)
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(57151765293461651)
,p_process_sequence=>110
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(56501320036388988)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'check duplicate item on tabular for update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vAccNo1    VARCHAR2(1024);',
'vAccNo2    VARCHAR2(1024);',
'vAmount    NUMBER;',
'',
'BEGIN',
'--RAISE_APPLICATION_ERROR(-20010,''vAccNo1''  );',
'',
' FOR i IN 1 .. APEX_APPLICATION.g_f11.COUNT',
' LOOP',
'   vAccNo1  := APEX_APPLICATION.g_f11(i);',
'',
'  FOR j IN 1 .. APEX_APPLICATION.g_f11.COUNT',
'  LOOP',
'  BEGIN',
'    vAccNo2  := APEX_APPLICATION.g_f11(j);',
'    ',
'',
'    IF vAccNo1  = vAccNo2 ',
'    AND i <> j ',
'    THEN',
'      RAISE_APPLICATION_ERROR(-20010,''Itemcode cannot be duplicate.''||vAccNo1  );',
'    END IF;',
'  END;',
'  END LOOP;',
' END LOOP; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(56990951374103087)
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
