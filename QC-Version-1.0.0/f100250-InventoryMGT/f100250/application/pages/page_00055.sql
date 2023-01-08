prompt --application/pages/page_00055
begin
--   Manifest
--     PAGE: 00055
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
 p_id=>55
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Sales Information find error'
,p_step_title=>'Sales Information find error'
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
'</script> ',
'',
'',
'',
'<script type="text/javascript">',
'function calculateTotal(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f25_''+vRow).value =',
'    parseInt(html_GetElement(''f20_''+vRow).value, 10) *',
'    parseInt(html_GetElement(''f21_''+vRow).value, 10);',
'for (i = 0; i <=vRow; i++)',
'{',
'var y= pad(i+1, 4);',
'var tmp= ''f02_''.concat(y);',
'html_GetElement(''f02_''+vRow).value = i+0;',
'};',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal1(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f25_''+vRow).value =',
'(parseInt(html_GetElement(''f20_''+vRow).value, 10) *',
'    parseInt(html_GetElement(''f21_''+vRow).value, 10))-',
'(parseInt(html_GetElement(''f20_''+vRow).value, 10) *',
'    parseInt(html_GetElement(''f21_''+vRow).value, 10))*',
'(parseInt(html_GetElement(''f23_''+vRow).value, 10)/100);',
'',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal2(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f25_''+vRow).value =',
'    parseInt(html_GetElement(''f20_''+vRow).value, 10) *',
'    parseInt(html_GetElement(''f21_''+vRow).value, 10)-parseInt(html_GetElement(''f24_''+vRow).value, 10);',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal3(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P37_TABULARITEMCODE'').value=',
'    html_GetElement(''f15_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P37_TABULARITEMCODE'').trigger(''click'');',
'});',
'html_GetElement(''f16_''+vRow).value=',
'document.getElementById(''P37_TABITEMDESC'').value;',
'html_GetElement(''f18_''+vRow).value=',
'document.getElementById(''P37_TABITEMRATE'').value;',
'html_GetElement(''f22_''+vRow).value=',
'document.getElementById(''P37_TABITEMUNIT'').value',
'}',
'</script>',
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function pad(n, width, z) {',
'  z = z || ''0'';',
'  n = n + '''';',
'  return n.length >= width ? n : new Array(width - n.length + 1).join(z) + n;',
'}',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180206182302'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64418329470925394)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
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
 p_id=>wwv_flow_api.id(64421333716925413)
,p_plug_name=>'Customer Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>30
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
 p_id=>wwv_flow_api.id(64423133061925430)
,p_plug_name=>'Order and Booking Details'
,p_parent_plug_id=>wwv_flow_api.id(64421333716925413)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P55_TRANTYPE'
,p_plug_display_when_cond2=>'SI2'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64424538906925435)
,p_plug_name=>'Customer Information'
,p_parent_plug_id=>wwv_flow_api.id(64421333716925413)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:20%;float:right;"'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64426316829925441)
,p_plug_name=>'Sales Information'
,p_parent_plug_id=>wwv_flow_api.id(64421333716925413)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:80%;float:left;"'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64426521290925444)
,p_plug_name=>'Sales Details'
,p_parent_plug_id=>wwv_flow_api.id(64426316829925441)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:50%;float:right;"'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64428936234925447)
,p_plug_name=>'OrderInformation'
,p_parent_plug_id=>wwv_flow_api.id(64426316829925441)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;float:left;"'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64430736082925450)
,p_plug_name=>'Item Details'
,p_parent_plug_id=>wwv_flow_api.id(64426316829925441)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:50%;float:left;"'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64433531470925454)
,p_plug_name=>'installment'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(64433919160925455)
,p_name=>'Multiple Item Invoice'
,p_region_name=>'TR'
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"SERLNUMB",',
'"COMPCODE",',
'"DOCTTYPE",',
'"SUBTTYPE",',
'"DOCNUMBR",',
'"DOCTDATE",',
'"PARTYCDE",',
'"SMANCODE",',
'"RAISEDBY",',
'"APPRVDBY",',
'"APPRDATE",',
'"REQDDATE",',
'"COMMCODE",',
'"ITEMCODE",',
'"ITEMTYPE",',
'"ITEMDESC",',
'"ITEMLONG",',
'"ITEMRATE",',
'"MARKPCNT",',
'"DISCPCNT",',
'"DISCAMNT",',
'"SPLDISPC",',
'"SPLDISNT",',
'"SALERATE",',
'"HUOMCODE",',
'"FACTRVAL",',
'"LUOMCODE",',
'"ORGNQNTY",',
'"APPRQNTY",',
'"TRNSQNTY",',
'"MSFCAMNT",',
'"CURRCODE",',
'"EXCGRATE",',
'"MSLCAMNT",',
'"REFNUMBR",',
'"REFNDATE",',
'"UPDOCTYP",',
'"UPSUBTYP",',
'"UPDOCNUM",',
'"UPDOCDTE",',
'"UPDOCSRL",',
'"REMARKSS",',
'"COSTCODE",',
'"WARECODE",',
'"POSTFLAG",',
'"PRNTFLAG",',
'"PRICFLAG",',
'"STATUSCD",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"BATCHNUM",',
'"TRANTYPE",',
'"EXPRDATE",',
'"BANKNAME",',
'"BANKBRCH",',
'"CHEQUENO",',
'"CHEQUEDT",',
'"VINNUMBR",',
'"COLORCDE",',
'"MRNUMBER",',
'"BILNUMBR",',
'"CUSTMRID",',
'"TERMSCOD",',
'"COSTRATE",',
'"SALERTEF",',
'"OTHECOST",',
'"DELIVERD",',
'"SALRECFK",',
'"PRICREMK",',
'"PAMTMODE"',
'from "#OWNER#"."NMSALREC"',
'where DOCNUMBR=:P55_DOCNUMBR1 ',
'and ITEMCODE=:P55_ITEMCODE1  ',
''))
,p_display_when_condition=>'P52_ORDER_ID'
,p_display_condition_type=>'ITEM_IS_NULL'
,p_ajax_items_to_submit=>'P55_DOCNUMBR1,P55_ITEMCODE1'
,p_fixed_header=>'NONE'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64434137432925461)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64434233042925468)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64434313773925468)
,p_query_column_id=>3
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>3
,p_column_heading=>'Srl.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>1
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64434420533925468)
,p_query_column_id=>4
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_column_default=>'100'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64434529026925468)
,p_query_column_id=>5
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Docttype'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64434618562925468)
,p_query_column_id=>6
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Subttype'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64434722330925468)
,p_query_column_id=>7
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>7
,p_column_heading=>'Docnumbr'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64434841287925468)
,p_query_column_id=>8
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Doctdate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64434941809925468)
,p_query_column_id=>9
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>9
,p_column_heading=>'Partycde'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64435020121925468)
,p_query_column_id=>10
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>10
,p_column_heading=>'Smancode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'SMANCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64435120557925468)
,p_query_column_id=>11
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>11
,p_column_heading=>'Raisedby'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'RAISEDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64435228864925468)
,p_query_column_id=>12
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>12
,p_column_heading=>'Apprvdby'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'APPRVDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64435325468925469)
,p_query_column_id=>13
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>13
,p_column_heading=>'Apprdate'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'APPRDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64435440791925469)
,p_query_column_id=>14
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>14
,p_column_heading=>'Reqddate'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'REQDDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64435541593925469)
,p_query_column_id=>15
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>15
,p_column_heading=>'Commcode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'COMMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64435622931925469)
,p_query_column_id=>16
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>16
,p_column_heading=>'Itemcode'
,p_use_as_row_header=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode||''-''||itemdes2 d,a.itemcode r',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P37_WARECODE',
'           -- AND b.itemcode LIKE ''%'' || :3 || ''%''',
'            AND NVL (b.clbalqty, 0) > 0'))
,p_lov_show_nulls=>'NO'
,p_column_width=>20
,p_cattributes=>'onchange="calculateTotal3(this);"'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64435730798925469)
,p_query_column_id=>17
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>17
,p_column_heading=>'Itemtype'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64435824941925469)
,p_query_column_id=>18
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>18
,p_column_heading=>'Itemdesc'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>22
,p_cattributes=>'onchange=disable_column_2( this )'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64435935115925469)
,p_query_column_id=>19
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>20
,p_column_heading=>'Itemlong'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64436041378925469)
,p_query_column_id=>20
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>21
,p_column_heading=>'Itemrate'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_cattributes=>'onchange="calculateTotal4(this);"'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64436141735925469)
,p_query_column_id=>21
,p_column_alias=>'MARKPCNT'
,p_column_display_sequence=>27
,p_column_heading=>'Markpcnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64436234503925469)
,p_query_column_id=>22
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>29
,p_column_heading=>'Dis.<br>(%)'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>2
,p_cattributes=>'onchange="calculateTotal1(this);"'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64436344746925472)
,p_query_column_id=>23
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>30
,p_column_heading=>'Dis.<br>Amount'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_cattributes=>'onchange="calculateTotal2(this);"'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64436431206925472)
,p_query_column_id=>24
,p_column_alias=>'SPLDISPC'
,p_column_display_sequence=>32
,p_column_heading=>'Spldispc'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64436520693925472)
,p_query_column_id=>25
,p_column_alias=>'SPLDISNT'
,p_column_display_sequence=>33
,p_column_heading=>'Spldisnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64436632602925472)
,p_query_column_id=>26
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>23
,p_column_heading=>'Salerate'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64436722773925472)
,p_query_column_id=>27
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>34
,p_column_heading=>'Huomcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64436828387925472)
,p_query_column_id=>28
,p_column_alias=>'FACTRVAL'
,p_column_display_sequence=>22
,p_column_heading=>'Sale<br>(%)'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>2
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64436918738925472)
,p_query_column_id=>29
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>28
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>3
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64437023087925472)
,p_query_column_id=>30
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>24
,p_column_heading=>'Orgnqnty'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64437126616925472)
,p_query_column_id=>31
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>25
,p_column_heading=>'Qty.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_cattributes=>'onchange="calculateTotal(this);"'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64437238219925472)
,p_query_column_id=>32
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>26
,p_column_heading=>'Trnsqnty'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64437321888925472)
,p_query_column_id=>33
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>31
,p_column_heading=>'Total<br>Amount'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>10
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64437432945925472)
,p_query_column_id=>34
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>35
,p_column_heading=>'Currcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64437517807925472)
,p_query_column_id=>35
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>36
,p_column_heading=>'Excgrate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64437616113925472)
,p_query_column_id=>36
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>37
,p_column_heading=>'Mslcamnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64437740419925472)
,p_query_column_id=>37
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>38
,p_column_heading=>'Refnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64437830771925472)
,p_query_column_id=>38
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>39
,p_column_heading=>'Refndate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64437940672925472)
,p_query_column_id=>39
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>40
,p_column_heading=>'Updoctyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64438017394925472)
,p_query_column_id=>40
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>41
,p_column_heading=>'Upsubtyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64438114175925472)
,p_query_column_id=>41
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>42
,p_column_heading=>'Updocnum'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64438221957925472)
,p_query_column_id=>42
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>43
,p_column_heading=>'Updocdte'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64438334227925472)
,p_query_column_id=>43
,p_column_alias=>'UPDOCSRL'
,p_column_display_sequence=>44
,p_column_heading=>'Updocsrl'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64438444062925472)
,p_query_column_id=>44
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>45
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64438540755925474)
,p_query_column_id=>45
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>46
,p_column_heading=>'Costcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64438620536925474)
,p_query_column_id=>46
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>47
,p_column_heading=>'Warecode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64438721748925474)
,p_query_column_id=>47
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>48
,p_column_heading=>'Postflag'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64438817580925474)
,p_query_column_id=>48
,p_column_alias=>'PRNTFLAG'
,p_column_display_sequence=>49
,p_column_heading=>'Prntflag'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64438940821925474)
,p_query_column_id=>49
,p_column_alias=>'PRICFLAG'
,p_column_display_sequence=>50
,p_column_heading=>'Pricflag'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64439040047925474)
,p_query_column_id=>50
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>51
,p_column_heading=>'Statuscd'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64439129803925474)
,p_query_column_id=>51
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>52
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64439228191925474)
,p_query_column_id=>52
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>53
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64439322767925474)
,p_query_column_id=>53
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>19
,p_column_heading=>'Batch<br>No.'
,p_use_as_row_header=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT DISTINCT batchnum d,  batchnum r',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmwhimas w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND w.warecode = :P37_WARECODE',
'                      AND b.itemcode = :P37_TABULARITEMCODE',
'                     ',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                   HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC)'))
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64439432745925474)
,p_query_column_id=>54
,p_column_alias=>'TRANTYPE'
,p_column_display_sequence=>56
,p_column_heading=>'Trantype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64439522457925474)
,p_query_column_id=>55
,p_column_alias=>'EXPRDATE'
,p_column_display_sequence=>57
,p_column_heading=>'Exprdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64439644659925474)
,p_query_column_id=>56
,p_column_alias=>'BANKNAME'
,p_column_display_sequence=>54
,p_column_heading=>'Bankname'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64439728216925474)
,p_query_column_id=>57
,p_column_alias=>'BANKBRCH'
,p_column_display_sequence=>55
,p_column_heading=>'Bankbrch'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64439817804925474)
,p_query_column_id=>58
,p_column_alias=>'CHEQUENO'
,p_column_display_sequence=>58
,p_column_heading=>'Chequeno'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64439921655925474)
,p_query_column_id=>59
,p_column_alias=>'CHEQUEDT'
,p_column_display_sequence=>59
,p_column_heading=>'Chequedt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64440021389925474)
,p_query_column_id=>60
,p_column_alias=>'VINNUMBR'
,p_column_display_sequence=>60
,p_column_heading=>'Vinnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64440135862925474)
,p_query_column_id=>61
,p_column_alias=>'COLORCDE'
,p_column_display_sequence=>61
,p_column_heading=>'Colorcde'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64440232948925474)
,p_query_column_id=>62
,p_column_alias=>'MRNUMBER'
,p_column_display_sequence=>62
,p_column_heading=>'Mrnumber'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64440344107925474)
,p_query_column_id=>63
,p_column_alias=>'BILNUMBR'
,p_column_display_sequence=>63
,p_column_heading=>'Bilnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64440445538925474)
,p_query_column_id=>64
,p_column_alias=>'CUSTMRID'
,p_column_display_sequence=>64
,p_column_heading=>'Custmrid'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64440519220925474)
,p_query_column_id=>65
,p_column_alias=>'TERMSCOD'
,p_column_display_sequence=>65
,p_column_heading=>'Termscod'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64440619068925474)
,p_query_column_id=>66
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>66
,p_column_heading=>'Costrate'
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
 p_id=>wwv_flow_api.id(64440725707925474)
,p_query_column_id=>67
,p_column_alias=>'SALERTEF'
,p_column_display_sequence=>67
,p_column_heading=>'Salertef'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64440819302925474)
,p_query_column_id=>68
,p_column_alias=>'OTHECOST'
,p_column_display_sequence=>68
,p_column_heading=>'Othecost'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64440942592925474)
,p_query_column_id=>69
,p_column_alias=>'DELIVERD'
,p_column_display_sequence=>69
,p_column_heading=>'Deliverd'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64441025932925474)
,p_query_column_id=>70
,p_column_alias=>'SALRECFK'
,p_column_display_sequence=>70
,p_column_heading=>'Salrecfk'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64441119158925474)
,p_query_column_id=>71
,p_column_alias=>'PRICREMK'
,p_column_display_sequence=>71
,p_column_heading=>'Pricremk'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64441227319925474)
,p_query_column_id=>72
,p_column_alias=>'PAMTMODE'
,p_column_display_sequence=>72
,p_column_heading=>'Pamtmode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(64471644638979438)
,p_name=>'sales'
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>120
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return q''{select ',
'rowid,',
'WARECODE, ORDER_ITEM_ID, ',
'ORDER_ID,  COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, ',
'PARTYCDE, SMANCODE, RAISEDBY, APPRVDBY, APPRDATE, REQDDATE, COMMCODE, ',
'ITEMTYPE, ITEMDESC, ITEMLONG, ITEMRATE, MARKPCNT,   ',
'SPLDISPC, SPLDISNT, HUOMCODE, FACTRVAL, ORGNQNTY,  TRNSQNTY, ',
'CURRCODE, EXCGRATE, MSLCAMNT, REFNUMBR, REFNDATE, UPDOCTYP, ',
'UPSUBTYP, UPDOCNUM, UPDOCDTE, UPDOCSRL, DWDOCTYP, DWSUBTYP, DWDOCNUM, ',
'DWDOCDTE, DWDOCSRL, ACDOCTYP, ACSUBTYP, ACDOCNUM, ACDOCDTE, ACDOCSRL, ',
'COSTCODE, POSTFLAG, PRNTFLAG, PRICFLAG, STATUSCD, OPRSTAMP, ',
'TIMSTAMP, ITPICDIR, ITFILDIR, CLSGDATE, ACCTCODE, ACCTCATE, BUDGCODE, ',
'DELYDATE, BALLPQTY, PAYAMTFC, PAYAMTLC, LUOMDESC, ITEMRATP, ITRFDATE, ',
'SALERATP, INTREQNO, COSTRATE, DESIGNCD, CUSTMRID, TERMSCOD, COLORCDE, ',
'SLSOFRNO, SOFNUMBR, DONUMBER',
'',
'from apex_order_items1',
'where ORDER_ID=:P55_ORDER_ID}'';'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P55_ORDER_ID'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_max_columns=>80
,p_query_num_rows=>15
,p_query_options=>'GENERIC_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64482625437992458)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>1
,p_column_heading=>'Col01'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64482736243992458)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>2
,p_column_heading=>'Col02'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64482844005992458)
,p_query_column_id=>3
,p_column_alias=>'COL03'
,p_column_display_sequence=>3
,p_column_heading=>'Col03'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64482932448992458)
,p_query_column_id=>4
,p_column_alias=>'COL04'
,p_column_display_sequence=>4
,p_column_heading=>'Col04'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64483033319992458)
,p_query_column_id=>5
,p_column_alias=>'COL05'
,p_column_display_sequence=>5
,p_column_heading=>'Col05'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64483135710992458)
,p_query_column_id=>6
,p_column_alias=>'COL06'
,p_column_display_sequence=>6
,p_column_heading=>'Col06'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64483240804992458)
,p_query_column_id=>7
,p_column_alias=>'COL07'
,p_column_display_sequence=>7
,p_column_heading=>'Col07'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64483319493992458)
,p_query_column_id=>8
,p_column_alias=>'COL08'
,p_column_display_sequence=>8
,p_column_heading=>'Col08'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64483434236992458)
,p_query_column_id=>9
,p_column_alias=>'COL09'
,p_column_display_sequence=>9
,p_column_heading=>'Col09'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64483529731992458)
,p_query_column_id=>10
,p_column_alias=>'COL10'
,p_column_display_sequence=>10
,p_column_heading=>'Col10'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64483613780992458)
,p_query_column_id=>11
,p_column_alias=>'COL11'
,p_column_display_sequence=>11
,p_column_heading=>'Col11'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64483737928992458)
,p_query_column_id=>12
,p_column_alias=>'COL12'
,p_column_display_sequence=>12
,p_column_heading=>'Col12'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64483813725992464)
,p_query_column_id=>13
,p_column_alias=>'COL13'
,p_column_display_sequence=>13
,p_column_heading=>'Col13'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64483942942992464)
,p_query_column_id=>14
,p_column_alias=>'COL14'
,p_column_display_sequence=>14
,p_column_heading=>'Col14'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64484019960992464)
,p_query_column_id=>15
,p_column_alias=>'COL15'
,p_column_display_sequence=>15
,p_column_heading=>'Col15'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64484136232992464)
,p_query_column_id=>16
,p_column_alias=>'COL16'
,p_column_display_sequence=>16
,p_column_heading=>'Col16'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64484216188992464)
,p_query_column_id=>17
,p_column_alias=>'COL17'
,p_column_display_sequence=>17
,p_column_heading=>'Col17'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64484314431992465)
,p_query_column_id=>18
,p_column_alias=>'COL18'
,p_column_display_sequence=>18
,p_column_heading=>'Col18'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64484429898992467)
,p_query_column_id=>19
,p_column_alias=>'COL19'
,p_column_display_sequence=>19
,p_column_heading=>'Col19'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64484523806992467)
,p_query_column_id=>20
,p_column_alias=>'COL20'
,p_column_display_sequence=>20
,p_column_heading=>'Col20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64484634341992467)
,p_query_column_id=>21
,p_column_alias=>'COL21'
,p_column_display_sequence=>21
,p_column_heading=>'Col21'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64484727397992467)
,p_query_column_id=>22
,p_column_alias=>'COL22'
,p_column_display_sequence=>22
,p_column_heading=>'Col22'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64484843089992467)
,p_query_column_id=>23
,p_column_alias=>'COL23'
,p_column_display_sequence=>23
,p_column_heading=>'Col23'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64484937237992468)
,p_query_column_id=>24
,p_column_alias=>'COL24'
,p_column_display_sequence=>24
,p_column_heading=>'Col24'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64485042089992468)
,p_query_column_id=>25
,p_column_alias=>'COL25'
,p_column_display_sequence=>25
,p_column_heading=>'Col25'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64485113816992468)
,p_query_column_id=>26
,p_column_alias=>'COL26'
,p_column_display_sequence=>26
,p_column_heading=>'Col26'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64485234981992468)
,p_query_column_id=>27
,p_column_alias=>'COL27'
,p_column_display_sequence=>27
,p_column_heading=>'Col27'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64485329580992468)
,p_query_column_id=>28
,p_column_alias=>'COL28'
,p_column_display_sequence=>28
,p_column_heading=>'Col28'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64485442827992468)
,p_query_column_id=>29
,p_column_alias=>'COL29'
,p_column_display_sequence=>29
,p_column_heading=>'Col29'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64485514444992468)
,p_query_column_id=>30
,p_column_alias=>'COL30'
,p_column_display_sequence=>30
,p_column_heading=>'Col30'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64485641791992468)
,p_query_column_id=>31
,p_column_alias=>'COL31'
,p_column_display_sequence=>31
,p_column_heading=>'Col31'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64485717486992468)
,p_query_column_id=>32
,p_column_alias=>'COL32'
,p_column_display_sequence=>32
,p_column_heading=>'Col32'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64485821550992468)
,p_query_column_id=>33
,p_column_alias=>'COL33'
,p_column_display_sequence=>33
,p_column_heading=>'Col33'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64485926451992468)
,p_query_column_id=>34
,p_column_alias=>'COL34'
,p_column_display_sequence=>34
,p_column_heading=>'Col34'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64486017542992468)
,p_query_column_id=>35
,p_column_alias=>'COL35'
,p_column_display_sequence=>35
,p_column_heading=>'Col35'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64486118225992468)
,p_query_column_id=>36
,p_column_alias=>'COL36'
,p_column_display_sequence=>36
,p_column_heading=>'Col36'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64486233214992468)
,p_query_column_id=>37
,p_column_alias=>'COL37'
,p_column_display_sequence=>37
,p_column_heading=>'Col37'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64486327522992468)
,p_query_column_id=>38
,p_column_alias=>'COL38'
,p_column_display_sequence=>38
,p_column_heading=>'Col38'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64486431640992468)
,p_query_column_id=>39
,p_column_alias=>'COL39'
,p_column_display_sequence=>39
,p_column_heading=>'Col39'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64486545900992468)
,p_query_column_id=>40
,p_column_alias=>'COL40'
,p_column_display_sequence=>40
,p_column_heading=>'Col40'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64486620830992468)
,p_query_column_id=>41
,p_column_alias=>'COL41'
,p_column_display_sequence=>41
,p_column_heading=>'Col41'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64486727913992468)
,p_query_column_id=>42
,p_column_alias=>'COL42'
,p_column_display_sequence=>42
,p_column_heading=>'Col42'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64486815446992468)
,p_query_column_id=>43
,p_column_alias=>'COL43'
,p_column_display_sequence=>43
,p_column_heading=>'Col43'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64486926589992468)
,p_query_column_id=>44
,p_column_alias=>'COL44'
,p_column_display_sequence=>44
,p_column_heading=>'Col44'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64487021714992468)
,p_query_column_id=>45
,p_column_alias=>'COL45'
,p_column_display_sequence=>45
,p_column_heading=>'Col45'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64487118380992468)
,p_query_column_id=>46
,p_column_alias=>'COL46'
,p_column_display_sequence=>46
,p_column_heading=>'Col46'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64487219378992470)
,p_query_column_id=>47
,p_column_alias=>'COL47'
,p_column_display_sequence=>47
,p_column_heading=>'Col47'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64487332763992470)
,p_query_column_id=>48
,p_column_alias=>'COL48'
,p_column_display_sequence=>48
,p_column_heading=>'Col48'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64487427694992470)
,p_query_column_id=>49
,p_column_alias=>'COL49'
,p_column_display_sequence=>49
,p_column_heading=>'Col49'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64487525958992470)
,p_query_column_id=>50
,p_column_alias=>'COL50'
,p_column_display_sequence=>50
,p_column_heading=>'Col50'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64487625149992470)
,p_query_column_id=>51
,p_column_alias=>'COL51'
,p_column_display_sequence=>51
,p_column_heading=>'Col51'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64487741368992470)
,p_query_column_id=>52
,p_column_alias=>'COL52'
,p_column_display_sequence=>52
,p_column_heading=>'Col52'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64487826622992470)
,p_query_column_id=>53
,p_column_alias=>'COL53'
,p_column_display_sequence=>53
,p_column_heading=>'Col53'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64487914399992470)
,p_query_column_id=>54
,p_column_alias=>'COL54'
,p_column_display_sequence=>54
,p_column_heading=>'Col54'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64488045291992470)
,p_query_column_id=>55
,p_column_alias=>'COL55'
,p_column_display_sequence=>55
,p_column_heading=>'Col55'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64488141914992470)
,p_query_column_id=>56
,p_column_alias=>'COL56'
,p_column_display_sequence=>56
,p_column_heading=>'Col56'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64488215287992470)
,p_query_column_id=>57
,p_column_alias=>'COL57'
,p_column_display_sequence=>57
,p_column_heading=>'Col57'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64488337867992470)
,p_query_column_id=>58
,p_column_alias=>'COL58'
,p_column_display_sequence=>58
,p_column_heading=>'Col58'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64488446122992470)
,p_query_column_id=>59
,p_column_alias=>'COL59'
,p_column_display_sequence=>59
,p_column_heading=>'Col59'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64488526618992470)
,p_query_column_id=>60
,p_column_alias=>'COL60'
,p_column_display_sequence=>60
,p_column_heading=>'Col60'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64488719399995320)
,p_query_column_id=>61
,p_column_alias=>'COL61'
,p_column_display_sequence=>61
,p_column_heading=>'Col61'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64488845184995320)
,p_query_column_id=>62
,p_column_alias=>'COL62'
,p_column_display_sequence=>62
,p_column_heading=>'Col62'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64488929180995320)
,p_query_column_id=>63
,p_column_alias=>'COL63'
,p_column_display_sequence=>63
,p_column_heading=>'Col63'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64489033379995320)
,p_query_column_id=>64
,p_column_alias=>'COL64'
,p_column_display_sequence=>64
,p_column_heading=>'Col64'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64489137298995320)
,p_query_column_id=>65
,p_column_alias=>'COL65'
,p_column_display_sequence=>65
,p_column_heading=>'Col65'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64489234181995320)
,p_query_column_id=>66
,p_column_alias=>'COL66'
,p_column_display_sequence=>66
,p_column_heading=>'Col66'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64489322669995320)
,p_query_column_id=>67
,p_column_alias=>'COL67'
,p_column_display_sequence=>67
,p_column_heading=>'Col67'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64489423676995320)
,p_query_column_id=>68
,p_column_alias=>'COL68'
,p_column_display_sequence=>68
,p_column_heading=>'Col68'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64489533832995320)
,p_query_column_id=>69
,p_column_alias=>'COL69'
,p_column_display_sequence=>69
,p_column_heading=>'Col69'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64489632913995320)
,p_query_column_id=>70
,p_column_alias=>'COL70'
,p_column_display_sequence=>70
,p_column_heading=>'Col70'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64489738228995320)
,p_query_column_id=>71
,p_column_alias=>'COL71'
,p_column_display_sequence=>71
,p_column_heading=>'Col71'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64489825192995320)
,p_query_column_id=>72
,p_column_alias=>'COL72'
,p_column_display_sequence=>72
,p_column_heading=>'Col72'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64489930071995320)
,p_query_column_id=>73
,p_column_alias=>'COL73'
,p_column_display_sequence=>73
,p_column_heading=>'Col73'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64490018400995320)
,p_query_column_id=>74
,p_column_alias=>'COL74'
,p_column_display_sequence=>74
,p_column_heading=>'Col74'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64490131796995320)
,p_query_column_id=>75
,p_column_alias=>'COL75'
,p_column_display_sequence=>75
,p_column_heading=>'Col75'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64490218609995320)
,p_query_column_id=>76
,p_column_alias=>'COL76'
,p_column_display_sequence=>76
,p_column_heading=>'Col76'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64490323004995320)
,p_query_column_id=>77
,p_column_alias=>'COL77'
,p_column_display_sequence=>77
,p_column_heading=>'Col77'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64490426283995320)
,p_query_column_id=>78
,p_column_alias=>'COL78'
,p_column_display_sequence=>78
,p_column_heading=>'Col78'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64490536713995320)
,p_query_column_id=>79
,p_column_alias=>'COL79'
,p_column_display_sequence=>79
,p_column_heading=>'Col79'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64490616295995320)
,p_query_column_id=>80
,p_column_alias=>'COL80'
,p_column_display_sequence=>80
,p_column_heading=>'Col80'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64430533529925450)
,p_button_sequence=>1070
,p_button_plug_id=>wwv_flow_api.id(64428936234925447)
,p_button_name=>'P55_SHOWHIDE'
,p_button_static_id=>'P55_SHOWHIDE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Showhide'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64428338145925447)
,p_button_sequence=>1370
,p_button_plug_id=>wwv_flow_api.id(64426521290925444)
,p_button_name=>'P55_ADDINSTALL'
,p_button_static_id=>'P55_ADDINSTALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Install'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64441333767925474)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(64433919160925455)
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
 p_id=>wwv_flow_api.id(64441516624925474)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(64433919160925455)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Submit'
,p_button_position=>'CHANGE'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64441735251925475)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(64433919160925455)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64441943549925475)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(64433919160925455)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64421514439925415)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(64421333716925413)
,p_button_name=>'SHOW_HIDE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Multiple Item Invoice'
,p_button_position=>'HELP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64421736046925426)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(64421333716925413)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'HELP'
,p_button_condition=>'P55_ITEMCODE1'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64421935947925427)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(64421333716925413)
,p_button_name=>'CREATE_ANOTHER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Another'
,p_button_position=>'HELP'
,p_button_condition=>'P55_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64422135714925427)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(64421333716925413)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'HELP'
,p_button_condition=>'P55_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64442115492925475)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(64433919160925455)
,p_button_name=>'CREATE_NEW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Create'
,p_button_position=>'HELP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(64452829034925514)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:55::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(61661624060073204)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(64453044725925519)
,p_branch_action=>'f?p=&APP_ID.:55:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(64453234830925524)
,p_branch_action=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:55::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(61661815880080292)
,p_branch_sequence=>11
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64418531597925401)
,p_name=>'P55_ROWID'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(64418329470925394)
,p_prompt=>'Rowid'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64418738865925407)
,p_name=>'P55_DOCNUMBR1'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(64418329470925394)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64418919344925407)
,p_name=>'P55_ITEMCODE1'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(64418329470925394)
,p_prompt=>'Itemcode1'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64419122416925408)
,p_name=>'P55_COMPCODE_APPLICATION'
,p_item_sequence=>1500
,p_item_plug_id=>wwv_flow_api.id(64418329470925394)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct s.COMPCODE from syrights s,syparmas m',
'where s.COMPCODE=m.CACMPCDE',
'and USERCODE=:APP_USER'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64419333933925408)
,p_name=>'P55_REGION'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(64418329470925394)
,p_prompt=>'Region'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64419546441925408)
,p_name=>'P55_COMPCODE'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(64418329470925394)
,p_prompt=>'Compcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64419737760925408)
,p_name=>'P55_OPRSTAMP'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(64418329470925394)
,p_prompt=>'Oprstamp'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64419932778925408)
,p_name=>'P55_TIMSTAMP'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(64418329470925394)
,p_prompt=>'Timstamp'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64420117652925410)
,p_name=>'P55_DOCTTYPE'
,p_item_sequence=>1370
,p_item_plug_id=>wwv_flow_api.id(64418329470925394)
,p_prompt=>'Docttype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64420338071925410)
,p_name=>'P55_SUBTTYPE'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(64418329470925394)
,p_prompt=>'Subttype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64420537896925410)
,p_name=>'P55_SERLNUMB'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_api.id(64418329470925394)
,p_prompt=>'Serlnumb'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64420714731925410)
,p_name=>'P55_STATUSCD'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_api.id(64418329470925394)
,p_prompt=>'Statuscd'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64420938595925410)
,p_name=>'P55_ITEMLONG_1'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(64418329470925394)
,p_prompt=>'Itemlong 1'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64421127378925410)
,p_name=>'P55_MSFCAMNT'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(64418329470925394)
,p_prompt=>'Msfcamnt'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64422331686925427)
,p_name=>'P55_TRANTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(64421333716925413)
,p_prompt=>'Trantype'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NARATION d,TRANTYPE||SUBTTYPE r from sydocmas',
'where TRANTYPE =''SI''',
' AND COMPCODE = :COMPCODE',
' AND MODLCODE = ''NM''',
' AND SUBTTYPE in(1,2)',
' order by 2'))
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100%;"'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
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
 p_id=>wwv_flow_api.id(64422514878925429)
,p_name=>'P55_SALESTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(64421333716925413)
,p_prompt=>'Salestype'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  NMCODDES d ,NMSOFCDE r from nmcodmas',
'where NMHRDCDE = ''PAY''',
' AND COMPCODE =  :compcode',
' AND MODLCODE = ''NM'''))
,p_cSize=>50
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100%;"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64422730722925429)
,p_name=>'P55_DOCNUMBR'
,p_item_sequence=>1450
,p_item_plug_id=>wwv_flow_api.id(64421333716925413)
,p_prompt=>'Invoice No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64422930309925429)
,p_name=>'P55_DOCTDATE'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(64421333716925413)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Invoice Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_CUSTOMERID'')"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64423318800925432)
,p_name=>'P55_ORDERNO'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_api.id(64423133061925430)
,p_prompt=>'Order No :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT s.docnumbr||''-''||s.partycde||''-''||s.doctdate d,s.docnumbr r',
'           FROM nmslsofr s,',
'                (SELECT   compcode, updoctyp, upsubtyp, updocnum, itemcode,',
'                          SUM (apprqnty) apprqnty',
'                     FROM nmsalrec',
'                 GROUP BY compcode, updoctyp, upsubtyp, updocnum, itemcode) sls',
'          WHERE s.compcode = :compcode ',
'            AND s.docttype = :P55_REQREFTYPE',
'            AND s.subttype = :P55_REQSUBTYPE',
'            AND s.doctdate <= :P55_ORDERDATE',
'            AND s.compcode = sls.compcode(+)',
'            AND s.docnumbr = sls.updocnum(+)',
'            AND s.itemcode = sls.itemcode(+)',
'            AND s.apprqnty > NVL (sls.apprqnty, 0)',
'       ORDER BY 2 DESC'))
,p_lov_cascade_parent_items=>'P55_REQREFTYPE,P55_REQSUBTYPE,P55_ORDERDATE'
,p_ajax_items_to_submit=>'P55_REQREFTYPE,P55_REQSUBTYPE,P55_ORDERDATE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_item_comment=>'onkeypress="return tabE(this,event,''P7_S_DOCNUM'')"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64423545742925432)
,p_name=>'P55_BOOKINGNO'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(64423133061925430)
,p_prompt=>'Booking No :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
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
 p_id=>wwv_flow_api.id(64423745252925432)
,p_name=>'P55_ORDERDATE'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(64423133061925430)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Order Date :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
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
 p_id=>wwv_flow_api.id(64423918386925433)
,p_name=>'P55_BOOKINGDT'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(64423133061925430)
,p_prompt=>'Booking Date :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
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
 p_id=>wwv_flow_api.id(64424125781925433)
,p_name=>'P55_REQREFTYPE'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(64423133061925430)
,p_prompt=>'Reqreftype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64424329431925433)
,p_name=>'P55_REQSUBTYPE'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(64423133061925430)
,p_prompt=>'Reqsubtype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64424742098925435)
,p_name=>'P55_CUSADDRESS'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(64424538906925435)
,p_prompt=>'Customer Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64424927794925436)
,p_name=>'P55_ZONE'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(64424538906925435)
,p_prompt=>'Zone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64425140062925438)
,p_name=>'P55_FILENO'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(64424538906925435)
,p_prompt=>'File No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64425339382925438)
,p_name=>'P55_LASTPURCHASEDATE'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(64424538906925435)
,p_prompt=>'Last Purchase Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64425525724925440)
,p_name=>'P55_LASTPRODUCT'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(64424538906925435)
,p_prompt=>'Last Product'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64425732735925441)
,p_name=>'P55_LASTPURAMOUNT'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(64424538906925435)
,p_prompt=>'Last Pur.  Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64425935698925441)
,p_name=>'P55_AREACODE'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(64424538906925435)
,p_prompt=>'Area'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64426142011925441)
,p_name=>'P55_PARTYCODE'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(64424538906925435)
,p_prompt=>'Party Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64426745082925446)
,p_name=>'P55_CLOSINGBALANCE'
,p_item_sequence=>1250
,p_item_plug_id=>wwv_flow_api.id(64426521290925444)
,p_prompt=>'stock Qty.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_grid_column=>4
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64426925599925446)
,p_name=>'P55_QUENTITY'
,p_item_sequence=>1310
,p_item_plug_id=>wwv_flow_api.id(64426521290925444)
,p_prompt=>'Quantity'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_DISCPCNT'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64427142453925446)
,p_name=>'P55_SALPRICE'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_api.id(64426521290925444)
,p_prompt=>'Sales Price'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64427322580925446)
,p_name=>'P55_DISAMOUNT'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(64426521290925444)
,p_prompt=>'Dis Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
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
 p_id=>wwv_flow_api.id(64427531311925446)
,p_name=>'P55_NETAMOUNT'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(64426521290925444)
,p_prompt=>'Net Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64427721933925446)
,p_name=>'P55_DISCPCNT'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(64426521290925444)
,p_prompt=>'Dis. %'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_DISAMOUNT'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
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
 p_id=>wwv_flow_api.id(64427915799925447)
,p_name=>'P55_INSTALLNO'
,p_item_sequence=>1270
,p_item_plug_id=>wwv_flow_api.id(64426521290925444)
,p_prompt=>'No. of Install.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64428146449925447)
,p_name=>'P55_INSTLLAMOUNT'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(64426521290925444)
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64428541925925447)
,p_name=>'P55_PERINSTALL'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(64426521290925444)
,p_prompt=>'Perinstall'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64428723850925447)
,p_name=>'P55_AMOUNT'
,p_item_sequence=>1320
,p_item_plug_id=>wwv_flow_api.id(64426521290925444)
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64429129104925449)
,p_name=>'P55_CUSTOMERNAME'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(64428936234925447)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64429322233925449)
,p_name=>'P55_COSTCENTERNAME'
,p_item_sequence=>1170
,p_item_plug_id=>wwv_flow_api.id(64428936234925447)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64429545644925449)
,p_name=>'P55_CUSTOMTYPE'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(64428936234925447)
,p_prompt=>'Customer Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct NMCODDES d,NMSOFCDE r from nmcodmas where NMSOFCDE in',
'(select distinct CUSTTYPE from nmcusmas)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''NM''',
'and NMHRDCDE=''CTY'';'))
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100%;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SYCODDES d,SYSOFCDE r from sycodmas where SYSOFCDE in',
'(select distinct PARTYTYP from sycompty)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''SY''',
'and SYHRDCDE=''CUS'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64429738620925450)
,p_name=>'P55_CUSTOMERID'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(64428936234925447)
,p_prompt=>'Customer Id'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct c.custmrid||''-''||custname d,c.custmrid r',
'  FROM nmcusmas c, nmitmreg r',
' WHERE c.custmrid = r.custmrid(+) AND c.compcode = r.compcode',
'       AND c.compcode = :compcode',
'       and c.CUSTTYPE=:P55_CUSTOMTYPE;'))
,p_lov_cascade_parent_items=>'P55_CUSTOMTYPE'
,p_ajax_items_to_submit=>'P55_CUSTOMTYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_COSTCODE'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
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
 p_id=>wwv_flow_api.id(64429941970925450)
,p_name=>'P55_SALMANID'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_api.id(64428936234925447)
,p_prompt=>'Salesman'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT  s.smanname,s.smancode',
'           FROM syjobmas j, nmwhsmas w, nmsmnmas s',
'          WHERE j.compcode = :compcode',
'            AND w.costcode = j.costcode',
'            AND w.compcode = j.compcode',
'            AND w.compcode = s.compcode',
'            AND w.regncode = s.smantype',
'            AND w.srvcwflg = ''N''',
'            AND s.smantype <> ''RE''',
'            AND w.warecode = s.suprcode',
'            AND w.costcode = :P55_COSTCODE'))
,p_lov_cascade_parent_items=>'P55_COSTCODE'
,p_ajax_items_to_submit=>'P55_COSTCODE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_ITEMCODE'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
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
 p_id=>wwv_flow_api.id(64430121744925450)
,p_name=>'P55_COSTCODE'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_api.id(64428936234925447)
,p_prompt=>'Cost Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   w.costcode||''-''||s.costdesc d, w.costcode r',
'    FROM nmwhsmas w, syjobmas s',
'   WHERE w.compcode = :compcode',
'     AND w.compcode = s.compcode',
'     AND w.costcode = s.costcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER)',
'ORDER BY warecode;'))
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_SALMANID'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
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
 p_id=>wwv_flow_api.id(64430318700925450)
,p_name=>'P55_WARECODE'
,p_item_sequence=>1220
,p_item_plug_id=>wwv_flow_api.id(64428936234925447)
,p_prompt=>'Ware Code'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64430945317925452)
,p_name=>'P55_ISSUMTHD'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_api.id(64430736082925450)
,p_prompt=>'Issumthd'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64431124237925452)
,p_name=>'P55_S_H_REGION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(64430736082925450)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64431313860925452)
,p_name=>'P55_TABULARITEMCODE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(64430736082925450)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tabularitemcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64431522253925452)
,p_name=>'P55_TABITEMDESC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(64430736082925450)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tabitemdesc'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64431719078925454)
,p_name=>'P55_TABITEMRATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(64430736082925450)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64431934120925454)
,p_name=>'P55_TABITEMUNIT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(64430736082925450)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64432120183925454)
,p_name=>'P55_TABCLOSINGBALANCE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(64430736082925450)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64432316565925454)
,p_name=>'P55_ITEMCODE'
,p_item_sequence=>1270
,p_item_plug_id=>wwv_flow_api.id(64430736082925450)
,p_item_default=>':P55_TESTITEM'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Item Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode||''-''||itemdes2 d,a.itemcode r',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P55_WARECODE',
'           -- AND b.itemcode LIKE ''%'' || :3 || ''%''',
'            AND NVL (b.clbalqty, 0) > 0'))
,p_lov_cascade_parent_items=>'P55_WARECODE'
,p_ajax_items_to_submit=>'P55_WARECODE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_BATCHNUM'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
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
 p_id=>wwv_flow_api.id(64432515575925454)
,p_name=>'P55_ITEMDESC'
,p_item_sequence=>1280
,p_item_plug_id=>wwv_flow_api.id(64430736082925450)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64432738728925454)
,p_name=>'P55_BRAND'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_api.id(64430736082925450)
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64432932062925454)
,p_name=>'P55_MODAL'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(64430736082925450)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64433114640925454)
,p_name=>'P55_UNITOFMESURE'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(64430736082925450)
,p_prompt=>'Unit Of Mesurement'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64433340655925454)
,p_name=>'P55_BATCHNUM'
,p_item_sequence=>1300
,p_item_plug_id=>wwv_flow_api.id(64430736082925450)
,p_prompt=>'Batch No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT DISTINCT batchnum d,  batchnum r',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmwhimas w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P55_ITEMCODE',
'                      AND w.warecode = :P55_WARECODE',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                   HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC)'))
,p_lov_cascade_parent_items=>'P55_ITEMCODE,P55_WARECODE'
,p_ajax_items_to_submit=>'P55_ITEMCODE,P55_WARECODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_QUENTITY'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
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
 p_id=>wwv_flow_api.id(64433743707925455)
,p_name=>'P55_INSTALLAMOUNT'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(64433531470925454)
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64443321792925491)
,p_name=>'P55_SALMANTYPE'
,p_item_sequence=>1160
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Type'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64444335862925496)
,p_name=>'change on customer id'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_CUSTOMERID'
,p_condition_element=>'P55_CUSTOMERID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64444642444925497)
,p_event_id=>wwv_flow_api.id(64444335862925496)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P55_CUSTOMERID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT distinct c.CUSTADR1,r.AREACODE,r.ZONLCODE,r.partycde,CUSTNAME',
'into :P55_CUSADDRESS,:P55_AREACODE,:P55_ZONE,:P55_PARTYCODE,:P55_CUSTOMERNAME',
'  FROM nmcusmas c, sycompty r',
' WHERE c.PARTYCDE = r.PARTYCDE(+) AND c.compcode = r.compcode',
'       AND c.compcode = :compcode',
'and c.CUSTMRID=:P55_CUSTOMERID;',
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
'END;'))
,p_attribute_02=>'P55_CUSTOMERID'
,p_attribute_03=>'P55_CUSADDRESS,P55_AREACODE,P55_ZONE,P55_PARTYCODE,P55_CUSTOMERNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64444729053925497)
,p_name=>'change on costcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_COSTCODE'
,p_condition_element=>'P55_COSTCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64445037178925497)
,p_event_id=>wwv_flow_api.id(64444729053925497)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P55_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.warecode',
'into :P55_WARECODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P55_COSTCODE)',
'     AND costcode = :P55_COSTCODE',
'ORDER BY warecode;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P55_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct COSTDESC ',
'into :P55_COSTCENTERNAME',
'from syjobmas',
'where compcode = :compcode',
'AND costcode = :P55_COSTCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P55_COSTCODE IS NOT NULL and :P55_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT distinct SMANCODE',
'into :P55_SALMANID',
'        FROM nmsalrec',
'       WHERE docnumbr = :p55_docnumbr1',
'         AND DOCTDATE = :P55_DOCTDATE',
'         AND COSTCODE = :P55_COSTCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P55_COSTCODE,P55_DOCNUMBR1,P55_DOCTDATE'
,p_attribute_03=>'P55_WARECODE,P55_COSTCENTERNAME,P55_SALMANID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64445134798925500)
,p_name=>'change on itemcode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_ITEMCODE'
,p_condition_element=>'P55_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64445414453925500)
,p_event_id=>wwv_flow_api.id(64445134798925500)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P55_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P55_UNITOFMESURE,:P55_ITEMDESC,:P55_BRAND,:P55_MODAL,:P55_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P55_ITEMCODE;',
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
'IF :P55_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P55_SALPRICE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P55_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P55_ITEMCODE;',
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
'IF :P55_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P55_CLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P55_WARECODE',
'            AND b.itemcode =:P55_ITEMCODE',
'            AND NVL (b.clbalqty, 0) > 0',
'       GROUP BY a.itemcode, INITCAP (itemdes2), a.compcode;',
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
'IF :P55_ITEMCODE1 IS NOT NULL and :P55_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) ',
'into :P55_QUENTITY',
'       from    nmsalrec s,(SELECT   SUM (d.trnsqnty) trnsqnty, d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE',
'                     FROM nmdevrec d',
'                     group by d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE) e',
'                     WHERE s.docnumbr = :p55_docnumbr1 AND s.itemcode = :p55_itemcode1',
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
,p_attribute_02=>'P55_ITEMCODE,P55_WARECODE,P55_ITEMCODE1,P55_DOCNUMBR1'
,p_attribute_03=>'P55_UNITOFMESURE,P55_ITEMDESC,P55_BRAND,P55_MODAL,P55_SALPRICE,P55_ISSUMTHD,P55_CLOSINGBALANCE,P55_QUENTITY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64445536068925500)
,p_name=>'change on trantype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_TRANTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64445824863925500)
,p_event_id=>wwv_flow_api.id(64445536068925500)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select distinct PRDOCTYP,PRSUBTYP ',
'into :P55_REQREFTYPE,:P55_REQSUBTYPE',
'from nmwrkflw',
'where TRDOCTYP||TRSUBTYP=:P55_TRANTYPE;',
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
'',
'END;'))
,p_attribute_02=>'P55_TRANTYPE'
,p_attribute_03=>'P55_REQREFTYPE,P55_REQSUBTYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64445929558925500)
,p_name=>'installment amount'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(64428338145925447)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64446238148925502)
,p_event_id=>wwv_flow_api.id(64445929558925500)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P55_PERINSTALL:=(:P55_INSTLLAMOUNT/:P55_INSTALLNO);',
'end;'))
,p_attribute_02=>'P55_INSTLLAMOUNT,P55_INSTALLNO'
,p_attribute_03=>'P55_PERINSTALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64446430759925504)
,p_event_id=>wwv_flow_api.id(64445929558925500)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var tt = window.document.getElementById(''P55_INSTALLNO'').value;',
' for(i=0;i<tt;i++)',
'{',
'var pp = ''f02_000''.concat(i+1);',
'javascript:apex.widget.tabular.addRow();',
'window.document.getElementById(pp).value = window.document.getElementById(''P55_PERINSTALL'').value;',
'',
'}'))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pp = f02_000.concat(i);',
'',
'.concat(f02_000.concat(i)).concat('')'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64446514856925504)
,p_name=>'on change amount'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_QUENTITY'
,p_condition_element=>'P55_QUENTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64446841758925504)
,p_event_id=>wwv_flow_api.id(64446514856925504)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64447032504925504)
,p_event_id=>wwv_flow_api.id(64446514856925504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/05 14:26 (Formatter Plus v4.8.8) */',
'BEGIN',
'   :p55_amount := :p55_salprice * :p55_quentity;',
'END;'))
,p_attribute_02=>'P55_SALPRICE,P55_QUENTITY'
,p_attribute_03=>'P55_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64447119793925504)
,p_name=>'on change discount percent'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_DISCPCNT'
,p_condition_element=>'P55_DISCPCNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64447427667925505)
,p_event_id=>wwv_flow_api.id(64447119793925504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P55_DISAMOUNT:=(:P55_AMOUNT*:P55_DISCPCNT)/100;',
'end;'))
,p_attribute_02=>'P55_AMOUNT,P55_DISCPCNT'
,p_attribute_03=>'P55_DISAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64447542902925505)
,p_name=>'on change amount and disamount'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_AMOUNT,P55_DISCPCNT'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.da.testCondition( this.triggeringElement.id, ''NOT_NULL'' )'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64447829655925505)
,p_event_id=>wwv_flow_api.id(64447542902925505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P55_NETAMOUNT:=nvl(:P55_AMOUNT,0)-nvl(:P55_DISAMOUNT,0);',
'end;'))
,p_attribute_02=>'P55_AMOUNT,P55_DISAMOUNT'
,p_attribute_03=>'P55_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64447923250925505)
,p_name=>'query on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64448216267925505)
,p_event_id=>wwv_flow_api.id(64447923250925505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/06 17:44 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF      :p55_itemcode1 IS NOT NULL',
'and :P55_DOCNUMBR1 is not null',
'   THEN',
'      SELECT s.compcode, s.docttype, s.subttype, s.DOCNUMBR,s.doctdate,',
'             s.serlnumb, s.partycde, s.itemcode, s.smancode,',
'             s.commcode, s.itemdesc, s.itemlong,',
'             s.discpcnt, s.discamnt, s.salerate, s.custmrid,',
'             s.costcode, s.warecode, s.batchnum,s.MSFCAMNT',
'        INTO :p55_compcode, :p55_docttype, :p55_subttype,:P55_DOCNUMBR, :p55_doctdate,',
'             :p55_serlnumb, :p55_partycode, :p55_itemcode, :p55_salmanid,',
'             :p55_unitofmesure, :p55_itemdesc, :p55_itemlong_1,',
'             :p55_discpcnt, :p55_disamount, :p55_salprice, :p55_customerid,',
'             :p55_costcode, :p55_warecode, :p55_batchnum,:P55_NETAMOUNT',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p55_docnumbr1 AND s.itemcode = :p55_itemcode1;',
'   END IF;',
'END;'))
,p_attribute_02=>'P55_DOCNUMBR1,P55_ITEMCODE1'
,p_attribute_03=>'P55_COMPCODE,P55_DOCTTYPE,P55_SUBTTYPE,P55_DOCNUMBR,P55_DOCTDATE,P55_SERLNUMB,P55_PARTYCODE,P55_ITEMCODE,P55_SALMANID,P55_UNITOFMESURE,P55_ITEMDESC,P55_ITEMLONG_1,P55_DISCPCNT,P55_DISAMOUNT,P55_SALPRICE,P55_CUSTOMERID,P55_COSTCODE,P55_WARECODE,P55_BA'
||'TCHNUM,P55_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64448326717925505)
,p_name=>'change  on warecode'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64448632937925505)
,p_event_id=>wwv_flow_api.id(64448326717925505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P55_WARECODE IS NOT NULL and :P55_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT a.itemcode',
'into :P55_ITEMCODE ',
'           FROM nmsalrec a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''APR''',
'            AND a.itemcode = b.itemcode',
'            and a.DOCNUMBR=:P55_DOCNUMBR1',
'           -- AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P55_WARECODE',
'           -- AND b.itemcode LIKE ''%'' || :3 || ''%''',
'            AND NVL (b.clbalqty, 0) > 0;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P55_DOCNUMBR1,P55_WARECODE'
,p_attribute_03=>'P55_ITEMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64448714094925505)
,p_name=>'change on batchnum'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64449043364925505)
,p_event_id=>wwv_flow_api.id(64448714094925505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P55_ITEMCODE IS NOT NULL and :P55_DOCNUMBR is not null',
'   THEN',
'      BEGIN',
' SELECT  batchnum d',
'into :P55_BATCHNUM',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmsalrec w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P55_ITEMCODE',
'                      AND w.warecode = :P55_WARECODE',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                 --  HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC);',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P55_ITEMCODE,P55_DOCNUMBR,P55_WARECODE'
,p_attribute_03=>'P55_BATCHNUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64449128724925505)
,p_name=>'change  on itemcode1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_ITEMCODE1'
,p_condition_element=>'P55_ITEMCODE1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64449442873925505)
,p_event_id=>wwv_flow_api.id(64449128724925505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P55_ITEMCODE1 IS NOT NULL and :P55_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
' SELECT s.PAMTMODE,s.DOCTTYPE||s.SUBTTYPE',
'        INTO :P55_SALESTYPE,:P55_TRANTYPE',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p55_docnumbr1 AND s.itemcode = :p55_itemcode1;',
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
,p_attribute_02=>'P55_DOCNUMBR1,P55_ITEMCODE1'
,p_attribute_03=>'P55_SALESTYPE,P55_TRANTYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64449521460925505)
,p_name=>'showhide stats'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(64421514439925415)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'parseInt(window.document.getElementById(''P55_S_H_REGION'').value) == 0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64449836155925507)
,p_event_id=>wwv_flow_api.id(64449521460925505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.document.getElementById(''P55_S_H_REGION'').value = 1;',
'window.document.getElementById(''TR'').style.display="none";',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64450039028925507)
,p_event_id=>wwv_flow_api.id(64449521460925505)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if( parseInt(window.document.getElementById(''P55_S_H_REGION'').value) == 1)',
'{',
'window.document.getElementById(''TR'').style.display="block";',
'window.document.getElementById(''P55_S_H_REGION'').value = 0;',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64450118379925507)
,p_name=>'show_hide'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_S_H_REGION'
,p_condition_element=>'P55_S_H_REGION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64450441859925507)
,p_event_id=>wwv_flow_api.id(64450118379925507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(64433919160925455)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64450643507925507)
,p_event_id=>wwv_flow_api.id(64450118379925507)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(64433919160925455)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64450730287925508)
,p_name=>'add rows javascript'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64451025949925508)
,p_event_id=>wwv_flow_api.id(64450730287925508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for (i = 0; i <=10; i++)',
'{',
'javascript:addRow();',
'};',
'document.getElementById(''ITEMDESC'').readOnly = true;',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64451137990925508)
,p_name=>'disable  field on tabular item'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64451442802925508)
,p_event_id=>wwv_flow_api.id(64451137990925508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''input[name="f02"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f02"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f02"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f16"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f16"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f16"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f18"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f18"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f18"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f22"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f22"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f22"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f25"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f25"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f25"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64451522883925508)
,p_name=>'on change tabular itemcode'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_TABULARITEMCODE'
,p_condition_element=>'P55_TABULARITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64451815133925508)
,p_event_id=>wwv_flow_api.id(64451522883925508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P55_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct LUOMCODE,ITEMDES1',
'into :P55_tabitemunit,:P55_TABITEMDESC',
'FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P55_TABULARITEMCODE ;',
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
'IF :P55_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P55_TABITEMRATE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P55_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P55_TABULARITEMCODE;',
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
'IF :P55_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P55_TABCLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P55_WARECODE',
'            AND b.itemcode =:P55_TABULARITEMCODE',
'            AND NVL (b.clbalqty, 0) > 0',
'       GROUP BY a.itemcode, INITCAP (itemdes2), a.compcode;',
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
'END;'))
,p_attribute_02=>'P55_TABULARITEMCODE'
,p_attribute_03=>'P55_TABITEMDESC,P55_TABCLOSINGBALANCE,P55_TABITEMRATE,P55_TABITEMUNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64451921621925508)
,p_name=>'on page load for hide region default on tabular '
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64452245796925508)
,p_event_id=>wwv_flow_api.id(64451921621925508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P55_S_H_REGION:=1;',
'end;'))
,p_attribute_02=>'P55_S_H_REGION'
,p_attribute_03=>'P55_S_H_REGION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64452346118925508)
,p_name=>'validation on customer id'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_CUSTOMERID,P55_COSTCODE,P55_SALMANID,P55_ITEMCODE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.da.testCondition( this.triggeringElement.id, ''NULL'' )'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64452625397925508)
,p_event_id=>wwv_flow_api.id(64452346118925508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $v(''<P55_CUSTOMERID>'') ==='''' )',
'{',
'  alert(''Customer id cannot be blank'');',
'  $(''#P55_CUSTOMERID'').focus();',
'};',
'',
'if ( $v(''<P55_COSTCODE>'') ==='''' )',
'{',
'  alert(''Cost code cannot be blank'');',
'  $(''#P55_COSTCODE'').focus();',
'};',
'',
'if ( $v(''<P55_SALMANID>'') ==='''' )',
'{',
'  alert(''Salesman cannot be blank'');',
'  $(''#P55_SALMANID'').focus();',
'};',
'',
'if ( $v(''<P55_ITEMCODE>'') ==='''' )',
'{',
'  alert(''Itemcode cannot be blank'');',
'  $(''#P55_ITEMCODE'').focus();',
'};'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64442339296925475)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(64433919160925455)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMSALREC'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64441516624925474)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64443529641925493)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into nmsalrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/03 12:50 (Formatter Plus v4.8.8) */',
'BEGIN',
'   INSERT INTO nmsalrec',
'               (compcode, docttype, subttype, docnumbr,',
'                doctdate, serlnumb, partycde, smancode,',
'                raisedby, apprvdby, apprdate, reqddate, commcode,',
'                itemcode, itemtype, itemdesc, itemlong,',
'                itemrate, markpcnt, discpcnt, discamnt, spldispc,',
'                spldisnt, salerate, huomcode, factrval, luomcode, orgnqnty,',
'                apprqnty, trnsqnty, msfcamnt, currcode, excgrate, mslcamnt,',
'                refnumbr, refndate, updoctyp, upsubtyp, updocnum, updocdte,',
'                updocsrl, dwdoctyp, dwsubtyp, dwdocnum, dwdocdte, dwdocsrl,',
'                acdoctyp, acsubtyp, acdocnum, acdocdte, acdocsrl, remarkss,',
'                costcode, warecode, postflag, prntflag, pricflag,',
'                statuscd, oprstamp, timstamp, procflag, trnsqty2,',
'                batchnum, mcserial, wrperiod, trantype, delccode, delwcode,',
'                exprdate, bankname, bankbrch, chequeno, chequedt, vinnumbr,',
'                colorcde, mrnumber, bilnumbr, custmrid, termscod, costrate,',
'                salertef, othecost, deliverd, salrecfk, pricremk, pamtmode,',
'                othramnt, vatprsnt, vatamont, totdispt, totdisam',
'               )',
'        VALUES (:COMPCODE, ''SI'', :p55_subttype, :p55_docnumbr,',
'                :P55_DOCTDATE, :p55_serlnumb, :P55_PARTYCODE, :P55_SALMANID,',
'                ''RILADM'', ''RILADM'', NULL, NULL, :P55_UNITOFMESURE,',
'                :P55_ITEMCODE, ''S'', :P55_ITEMDESC, :P55_ITEMDESC,',
'                NULL, NULL, :P55_DISCPCNT, :P55_DISAMOUNT, NULL,',
'                NULL, :P55_SALPRICE, NULL, NULL, NULL, :P55_QUENTITY,',
'                :P55_QUENTITY, :P55_QUENTITY, :P55_NETAMOUNT, NULL, NULL, NULL,',
'                NULL, NULL, NULL, NULL, NULL, NULL,',
'                NULL, NULL, NULL, NULL, NULL, NULL,',
'                NULL, NULL, NULL, NULL, NULL, NULL,',
'                :P55_COSTCODE, :P55_WARECODE, NULL, NULL, NULL,',
'                :P55_STATUSCD, :P55_OPRSTAMP, :P55_TIMSTAMP, NULL, NULL,',
'                :P55_BATCHNUM, NULL, NULL, NULL, NULL, NULL,',
'                NULL, NULL, NULL, NULL, NULL, NULL,',
'                NULL, NULL, NULL, :P55_CUSTOMERID, NULL, NULL,',
'                NULL, NULL, NULL, NULL, NULL, :P55_SALESTYPE,',
'                NULL, NULL, NULL, NULL, NULL',
'               );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(61661624060073204)
,p_process_success_message=>'Record generate successfully<br>Sales Invoice No. : &P55_DOCNUMBR.'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64442541902925486)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(64433919160925455)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMSALREC'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64441943549925475)
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64443714125925493)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'37'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(61661624060073204)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64443915577925496)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update into nmsalrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/06 18:56 (Formatter Plus v4.8.8) */',
'BEGIN',
'   UPDATE nmsalrec',
'      SET compcode = :compcode,',
'          docttype = ''SI'',',
'          subttype = :p55_subttype,',
'          docnumbr = :p55_docnumbr,',
'          doctdate = :p55_doctdate,',
'          serlnumb = :p55_serlnumb,',
'          partycde = :p55_partycode,',
'          smancode = :p55_salmanid,',
'          raisedby = ''RILADM'',',
'          apprvdby = ''RILADM'',',
'          apprdate = NULL,',
'          reqddate = NULL,',
'          commcode = :p55_unitofmesure,',
'          itemcode = :p55_itemcode,',
'          itemtype = ''S'',',
'          itemdesc = :p55_itemdesc,',
'          itemlong = :p55_itemdesc,',
'          itemrate = NULL,',
'          markpcnt = NULL,',
'          discpcnt = :p55_discpcnt,',
'          discamnt = :p55_disamount,',
'          spldispc = NULL,',
'          spldisnt = NULL,',
'          salerate = :p55_salprice,',
'          huomcode = NULL,',
'          factrval = NULL,',
'          luomcode = NULL,',
'          orgnqnty = :p55_quentity,',
'          apprqnty = :p55_quentity,',
'          trnsqnty = NULL,',
'          msfcamnt = :p55_netamount,',
'          currcode = NULL,',
'          excgrate = NULL,',
'          mslcamnt = NULL,',
'          refnumbr = NULL,',
'          refndate = NULL,',
'          updoctyp = NULL,',
'          upsubtyp = NULL,',
'          updocnum = NULL,',
'          updocdte = NULL,',
'          updocsrl = NULL,',
'          dwdoctyp = NULL,',
'          dwsubtyp = NULL,',
'          dwdocnum = NULL,',
'          dwdocdte = NULL,',
'          dwdocsrl = NULL,',
'          acdoctyp = NULL,',
'          acsubtyp = NULL,',
'          acdocnum = NULL,',
'          acdocdte = NULL,',
'          acdocsrl = NULL,',
'          remarkss = NULL,',
'          costcode = :p55_costcode,',
'          warecode = :p55_warecode,',
'          postflag = NULL,',
'          prntflag = NULL,',
'          pricflag = NULL,',
'          statuscd = :p55_statuscd,',
'          oprstamp = :APP_USER,',
'          timstamp = :p55_timstamp,',
'          procflag = NULL,',
'          trnsqty2 = NULL,',
'          batchnum = :p55_batchnum,',
'          mcserial = NULL,',
'          wrperiod = NULL,',
'          trantype = NULL,',
'          delccode = NULL,',
'          delwcode = NULL,',
'          exprdate = NULL,',
'          bankname = NULL,',
'          bankbrch = NULL,',
'          chequeno = NULL,',
'          chequedt = NULL,',
'          vinnumbr = NULL,',
'          colorcde = NULL,',
'          mrnumber = NULL,',
'          bilnumbr = NULL,',
'          custmrid = :p55_customerid,',
'          termscod = NULL,',
'          costrate = NULL,',
'          salertef = NULL,',
'          othecost = NULL,',
'          deliverd = NULL,',
'          salrecfk = NULL,',
'          pricremk = NULL,',
'          pamtmode = :p55_salestype,',
'          othramnt = NULL,',
'          vatprsnt = NULL,',
'          vatamont = NULL,',
'          totdispt = NULL,',
'          totdisam = NULL',
'    WHERE docnumbr = :p55_docnumbr',
'      AND doctdate = :p55_doctdate',
'      AND itemcode = :p55_itemcode;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(61685434195636539)
,p_process_success_message=>'Update Successfully................'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64442739669925486)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(64433919160925455)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process Insert  for multiple  tabular form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'INSERT INTO nmsalrec',
'            (compcode, docttype, subttype, docnumbr, doctdate, serlnumb,',
'             partycde, smancode, raisedby, apprvdby, apprdate, reqddate,',
'             commcode, itemcode, itemtype, itemdesc, itemlong, itemrate,',
'             markpcnt, discpcnt, discamnt, spldispc, spldisnt, salerate,',
'             huomcode, factrval, luomcode, orgnqnty, apprqnty, trnsqnty,',
'             msfcamnt, currcode, excgrate, mslcamnt, refnumbr, refndate,',
'             updoctyp, upsubtyp, updocnum, updocdte, updocsrl, remarkss,',
'             costcode, warecode, postflag, prntflag, pricflag, statuscd,',
'             oprstamp, timstamp, batchnum, trantype, exprdate, bankname,',
'             bankbrch, chequeno, chequedt, vinnumbr, colorcde, mrnumber,',
'             bilnumbr, custmrid, termscod, costrate, salertef, othecost, ',
'             deliverd, salrecfk, pricremk, pamtmode',
'            )',
'     VALUES (:P55_COMPCODE_APPLICATION,:P55_DOCTTYPE,:P55_SUBTTYPE, :P55_DOCNUMBR, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''), :SERLNUMB,',
'             :P55_PARTYCODE, :P55_SALMANID, :APP_USER, :APP_USER, NULL, NULL,',
'             ''PCS'', :ITEMCODE, ''S'', :ITEMDESC, :ITEMDESC, :ITEMRATE,',
'             NULL, :discpcnt, :discamnt,NULL, NULL, :salerate,',
'             :luomcode, :factrval, :luomcode, :apprqnty, :apprqnty, :apprqnty,',
'             :msfcamnt, NULL, NULL, NULL, NULL, NULL,',
'             NULL, NULL, NULL, NULL, NULL, :remarkss,',
'             :P55_COSTCODE, :P55_WARECODE, NULL, NULL, NULL, ''APR'',',
'             :APP_USER, SYSDATE, :batchnum, NULL, NULL, NULL,',
'             NULL, NULL, NULL, NULL, NULL, NULL,',
'             NULL, :P55_CUSTOMERID,NULL, NULL, NULL, NULL,',
' NULL, NULL, NULL,:P55_SALESTYPE',
'            );',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64442115492925475)
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'Record generate successfully<br>Sales Invoice No. : &P55_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64444143408925496)
,p_process_sequence=>11
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre  insert on nmsalrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
':P55_COMPCODE:=:COMPCODE;',
':P55_OPRSTAMP:=:APP_USER;',
':P55_TIMSTAMP:=sysdate;',
':P55_DOCTTYPE:=substr(:P55_TRANTYPE,1,2);',
':P55_SUBTTYPE:=substr(:P55_TRANTYPE,3,1);',
':P55_SERLNUMB:=''000001'';',
':P55_STATUSCD:=''APR'';',
':P55_MSFCAMNT:=(nvl(:P55_SALPRICE,0)*nvl(:P55_QUENTITY,0))-nvl(:P55_DISCPCNT,0);',
'docnumber_generation(:compcode, :modlcode, :P55_DOCTTYPE,',
'                        :P55_SUBTTYPE, sysdate  ,null,',
'                        :modlcode, newno);',
' ',
':P55_DOCNUMBR:= newno;  ',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,''Others Problem'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(61661624060073204)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64442928211925489)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(64433919160925455)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process for multiple tabular form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
':P55_DOCTTYPE:=substr(:P55_TRANTYPE,1,2);',
':P55_SUBTTYPE:=substr(:P55_TRANTYPE,3,1);',
'docnumber_generation(:P55_COMPCODE_APPLICATION, ''NM'', :P55_DOCTTYPE,',
'                       :P55_SUBTTYPE, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''),null,',
'                        ''NM'', newno);',
' ',
':P55_DOCNUMBR:= newno;  ',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,''Others Problem'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64442115492925475)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64443145901925491)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(64433919160925455)
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
' FOR i IN 1 .. APEX_APPLICATION.g_f15.COUNT',
' LOOP',
'   vAccNo1  := APEX_APPLICATION.g_f15(i);',
'',
'  FOR j IN 1 .. APEX_APPLICATION.g_f15.COUNT',
'  LOOP',
'  BEGIN',
'    vAccNo2  := APEX_APPLICATION.g_f15(j);',
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
,p_process_when_button_id=>wwv_flow_api.id(64442115492925475)
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
