prompt --application/pages/page_00111
begin
--   Manifest
--     PAGE: 00111
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
 p_id=>111
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Sales Information'
,p_step_title=>'Sales Information'
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
'html_GetElement(''f26_''+vRow).value =',
'    Number(html_GetElement(''f20_''+vRow).value).toPrecision() *',
'    Number(html_GetElement(''f21_''+vRow).value).toPrecision();',
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
'Number((Number(html_GetElement(''f20_''+vRow).value).toFixed(2)) *',
'    Number(html_GetElement(''f21_''+vRow).value).toFixed(2)*',
'(Number(html_GetElement(''f24_''+vRow).value).toFixed(2)/100)).toFixed(1);',
'html_GetElement(''f26_''+vRow).value =',
'   Number(html_GetElement(''f20_''+vRow).value).toFixed(2) *',
'    Number(html_GetElement(''f21_''+vRow).value).toFixed(2)-Number(html_GetElement(''f25_''+vRow).value).toFixed(2);',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal2(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f26_''+vRow).value =',
'    Number(html_GetElement(''f20_''+vRow).value).toFixed(2) *',
'    Number(html_GetElement(''f21_''+vRow).value).toFixed(2)-Number(html_GetElement(''f25_''+vRow).value).toFixed(2);',
'html_GetElement(''f24_''+vRow).value =',
'    Number((Number(html_GetElement(''f25_''+vRow).value).toFixed(2) *',
'100)/(Number(html_GetElement(''f20_''+vRow).value).toFixed(2)*',
'Number(html_GetElement(''f21_''+vRow).value).toFixed(2))).toFixed(2);',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal3(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P97_TABULARITEMCODE'').value=',
'    html_GetElement(''f14_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P97_TABULARITEMCODE'').trigger(''click'');',
'});',
'html_GetElement(''f15_''+vRow).value=',
'document.getElementById(''P97_TABITEMDESC'').value;',
'html_GetElement(''f18_''+vRow).value=',
'document.getElementById(''P97_TABITEMRATE'').value;',
'html_GetElement(''f22_''+vRow).value=',
'document.getElementById(''P97_TABITEMUNIT'').value;',
'html_GetElement(''f17_''+vRow).value=',
'document.getElementById(''P97_TABITEMRATE'').value;',
'html_GetElement(''f20_''+vRow).value=',
'document.getElementById(''P97_TABCOSTRATE'').value;',
'html_GetElement(''f19_''+vRow).value=',
'document.getElementById(''P97_TABSALEPERC'').value;',
'html_GetElement(''f23_''+vRow).value=',
'document.getElementById(''P97_TABCOMMGRUP'').value;',
'}',
'</script>',
'<script type="text/javascript">',
'function calculateTotal4(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P97_BATCHNUM'').value=',
'    html_GetElement(''f16_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P97_BATCHNUM'').trigger(''click'');',
'});',
'html_GetElement(''f27_''+vRow).value=',
'document.getElementById(''P97_CLOSINGBALANCE'').value;',
'}',
'</script>',
'',
'<script language="JavaScript" type="text/javascript">',
'',
' function addTotal()',
' {',
'  var items = document.getElementsByName("f25"); // Tabular form column to add up',
'  ',
'  $total = 0;',
'  $itemValue = 0;',
'  for (var i = 0; i < items.length; i++)',
'  {  ',
'   // if non-numeric character was entered, it will be considered as 0, ',
'   // isNaN returns true if anything but number was entered',
'   if(isNaN(items[i].value) || items[i].value == null || items[i].value == "")',
'    $itemValue = 0;',
'   else',
'    $itemValue = parseFloat(items[i].value); // convert to number',
'   ',
'   $total =$total+ $itemValue; // add up',
'  } ',
'  ',
'  // $x sets the text field to be updated to the column total just calculated',
'  $x(''P97_TABTOTDISAM'').value = $total;',
' }',
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
'$(document).ready(function () {   ',
'$(''#TR'').on("keydown",'':input'', (function (e) {   ',
'  var key = e.charCode ? e.charCode : e.keyCode ? e.keyCode : 0;   ',
'  if (key == 13) {   ',
'    e.preventDefault();   ',
'    var inputs = $(this).closest(''form'').find('':input:visible'');   ',
'    inputs.eq(inputs.index(this) + 1).focus();   ',
'  }   ',
'}));  ',
'});  ',
'',
'',
'function beforeInsert() {',
'  var answer = confirm ( ''are you sure you want to delivery challan?'' )',
'  if (answer) {',
'    javascript:apex.submit(''doInsert'');',
'  }',
'};',
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
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20200102204621'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43117201612083369)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43117663043083371)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7533132934253244474)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43117998723083372)
,p_plug_name=>'installment'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43118845995083383)
,p_plug_name=>'Customer Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
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
 p_id=>wwv_flow_api.id(43125977743083399)
,p_plug_name=>'Gatepass Information'
,p_parent_plug_id=>wwv_flow_api.id(43118845995083383)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:20%;float:right;margin-top:-17.8%; position: static; !important"'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>180
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
 p_id=>wwv_flow_api.id(43129228440083404)
,p_plug_name=>'Sales Information'
,p_parent_plug_id=>wwv_flow_api.id(43118845995083383)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:80%;float:left;"'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>180
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(43129612090083404)
,p_name=>'Product Information '
,p_parent_plug_id=>wwv_flow_api.id(43129228440083404)
,p_template=>wwv_flow_api.id(47568291304858133)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="height:50%; position: static; !important"'
,p_display_point=>'SUB_REGIONS'
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
'"PAMTMODE",',
'NULL "MSFCAMNT1"',
'from "#OWNER#"."NMSALREC"',
'where DOCNUMBR=:P111_DOCNUMBR1 ',
'and ITEMCODE=:P111_ITEMCODE1  ',
''))
,p_ajax_items_to_submit=>'P111_DOCNUMBR1,P111_ITEMCODE1'
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
,p_prn_output=>'N'
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
 p_id=>wwv_flow_api.id(43130033847083407)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43130415639083424)
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
 p_id=>wwv_flow_api.id(43130735706083425)
,p_query_column_id=>3
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>3
,p_column_heading=>'Srl.'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>1
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43131161461083425)
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
 p_id=>wwv_flow_api.id(43131489598083425)
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
 p_id=>wwv_flow_api.id(43131889045083427)
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
 p_id=>wwv_flow_api.id(43132304837083427)
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
 p_id=>wwv_flow_api.id(43132710491083427)
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
 p_id=>wwv_flow_api.id(43133149406083427)
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
 p_id=>wwv_flow_api.id(43133493646083428)
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
 p_id=>wwv_flow_api.id(43133896646083428)
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
 p_id=>wwv_flow_api.id(43134282880083428)
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
 p_id=>wwv_flow_api.id(43134693944083428)
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
 p_id=>wwv_flow_api.id(43135113907083428)
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
 p_id=>wwv_flow_api.id(43135507435083430)
,p_query_column_id=>15
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>28
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>3
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'COMMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43135963475083430)
,p_query_column_id=>16
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>16
,p_column_heading=>'Itemcode'
,p_use_as_row_header=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode||'' / ''||a.itemdes2||'' / ''||w.batchnum||'' / ''||b.clbalqty d,a.itemcode r',
'           FROM nmitemas a, nmwhimas b,nmbtrate w',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND b.itemcode = w.itemcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P97_WARECODE',
'            AND NVL (b.clbalqty, 0) > 0'))
,p_lov_show_nulls=>'NO'
,p_column_width=>20
,p_cattributes=>'onchange="calculateTotal3(this);"'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43136312044083430)
,p_query_column_id=>17
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>15
,p_column_heading=>'Itemtype'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43136711591083430)
,p_query_column_id=>18
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>17
,p_column_heading=>'Itemdesc'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>22
,p_cattributes=>'onchange=disable_column_2( this )'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43137160346083430)
,p_query_column_id=>19
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>19
,p_column_heading=>'Itemlong'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43137538582083430)
,p_query_column_id=>20
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>21
,p_column_heading=>'Itemrate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_cattributes=>'onchange="calculateTotal4(this);"'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43137874154083433)
,p_query_column_id=>21
,p_column_alias=>'MARKPCNT'
,p_column_display_sequence=>35
,p_column_heading=>'Markpcnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43151080223083439)
,p_query_column_id=>22
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>29
,p_column_heading=>'Dis.<br>(%)'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>2
,p_cattributes=>'onchange="calculateTotal1(this);addTotal(this);"'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43138335423083433)
,p_query_column_id=>23
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>30
,p_column_heading=>'Dis.<br>Amount'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>6
,p_cattributes=>'onchange="calculateTotal2(this);addTotal(this);"'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43138733833083433)
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
 p_id=>wwv_flow_api.id(43139080157083433)
,p_query_column_id=>25
,p_column_alias=>'SPLDISNT'
,p_column_display_sequence=>36
,p_column_heading=>'Spldisnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43139499530083435)
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
 p_id=>wwv_flow_api.id(43139908491083435)
,p_query_column_id=>27
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>37
,p_column_heading=>'Huomcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43140356508083435)
,p_query_column_id=>28
,p_column_alias=>'FACTRVAL'
,p_column_display_sequence=>22
,p_column_heading=>'Sale<br>(%)'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>2
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43140740894083435)
,p_query_column_id=>29
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>27
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>3
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43141138336083435)
,p_query_column_id=>30
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>26
,p_column_heading=>'Orgnqnty'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43141506206083435)
,p_query_column_id=>31
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>24
,p_column_heading=>'Qty.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_cattributes=>'onchange="calculateTotal(this);",onchange="addTotal();"'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43141897180083435)
,p_query_column_id=>32
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>25
,p_column_heading=>'Trnsqnty'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43142342105083435)
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
 p_id=>wwv_flow_api.id(43142684590083435)
,p_query_column_id=>34
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>38
,p_column_heading=>'Currcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43143070098083436)
,p_query_column_id=>35
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>39
,p_column_heading=>'Excgrate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43143564027083436)
,p_query_column_id=>36
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>40
,p_column_heading=>'Mslcamnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43143958826083436)
,p_query_column_id=>37
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>41
,p_column_heading=>'Refnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43144360924083436)
,p_query_column_id=>38
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>42
,p_column_heading=>'Refndate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43144719666083436)
,p_query_column_id=>39
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>43
,p_column_heading=>'Updoctyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43145138551083438)
,p_query_column_id=>40
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>44
,p_column_heading=>'Upsubtyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43145543943083438)
,p_query_column_id=>41
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>45
,p_column_heading=>'Updocnum'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43145965213083438)
,p_query_column_id=>42
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>46
,p_column_heading=>'Updocdte'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43146310715083438)
,p_query_column_id=>43
,p_column_alias=>'UPDOCSRL'
,p_column_display_sequence=>47
,p_column_heading=>'Updocsrl'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43146724026083438)
,p_query_column_id=>44
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>34
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>15
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43147134507083438)
,p_query_column_id=>45
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>48
,p_column_heading=>'Costcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43147548007083438)
,p_query_column_id=>46
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>49
,p_column_heading=>'Warecode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43147914335083438)
,p_query_column_id=>47
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>50
,p_column_heading=>'Postflag'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43148341485083438)
,p_query_column_id=>48
,p_column_alias=>'PRNTFLAG'
,p_column_display_sequence=>52
,p_column_heading=>'Prntflag'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43148748767083438)
,p_query_column_id=>49
,p_column_alias=>'PRICFLAG'
,p_column_display_sequence=>53
,p_column_heading=>'Pricflag'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43149112152083439)
,p_query_column_id=>50
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>54
,p_column_heading=>'Statuscd'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43149473652083439)
,p_query_column_id=>51
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>55
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43149893338083439)
,p_query_column_id=>52
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>51
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43150292648083439)
,p_query_column_id=>53
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>18
,p_column_heading=>'Batch<br>No.'
,p_use_as_row_header=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT DISTINCT batchnum||'' / ''||batchdte||'' / ''||clbalqty d,batchnum r',
'           FROM (SELECT distinct  b.batchnum,b.batchdte,SUM (w.clbalqty) clbalqty',
'                     FROM nmbtrate b, nmwhimas w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND w.warecode = :P97_WARECODE',
'                      AND b.itemcode = :P97_TABULARITEMCODE',
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
,p_cattributes=>'onchange="calculateTotal4(this);"'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43150735788083439)
,p_query_column_id=>54
,p_column_alias=>'TRANTYPE'
,p_column_display_sequence=>58
,p_column_heading=>'Trantype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43151551431083439)
,p_query_column_id=>55
,p_column_alias=>'EXPRDATE'
,p_column_display_sequence=>59
,p_column_heading=>'Exprdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43151948946083439)
,p_query_column_id=>56
,p_column_alias=>'BANKNAME'
,p_column_display_sequence=>56
,p_column_heading=>'Bankname'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43152275856083439)
,p_query_column_id=>57
,p_column_alias=>'BANKBRCH'
,p_column_display_sequence=>57
,p_column_heading=>'Bankbrch'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43152726203083439)
,p_query_column_id=>58
,p_column_alias=>'CHEQUENO'
,p_column_display_sequence=>60
,p_column_heading=>'Chequeno'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43153099089083439)
,p_query_column_id=>59
,p_column_alias=>'CHEQUEDT'
,p_column_display_sequence=>61
,p_column_heading=>'Chequedt'
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
 p_id=>wwv_flow_api.id(43153501419083441)
,p_query_column_id=>60
,p_column_alias=>'VINNUMBR'
,p_column_display_sequence=>62
,p_column_heading=>'Vinnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43153934064083441)
,p_query_column_id=>61
,p_column_alias=>'COLORCDE'
,p_column_display_sequence=>63
,p_column_heading=>'Colorcde'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43154321059083441)
,p_query_column_id=>62
,p_column_alias=>'MRNUMBER'
,p_column_display_sequence=>64
,p_column_heading=>'Mrnumber'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43154738419083441)
,p_query_column_id=>63
,p_column_alias=>'BILNUMBR'
,p_column_display_sequence=>65
,p_column_heading=>'Bilnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43155155149083441)
,p_query_column_id=>64
,p_column_alias=>'CUSTMRID'
,p_column_display_sequence=>66
,p_column_heading=>'Custmrid'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43155468988083441)
,p_query_column_id=>65
,p_column_alias=>'TERMSCOD'
,p_column_display_sequence=>67
,p_column_heading=>'Termscod'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43155934853083441)
,p_query_column_id=>66
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>20
,p_column_heading=>'Costrate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43156285517083441)
,p_query_column_id=>67
,p_column_alias=>'SALERTEF'
,p_column_display_sequence=>68
,p_column_heading=>'Salertef'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43156704994083441)
,p_query_column_id=>68
,p_column_alias=>'OTHECOST'
,p_column_display_sequence=>69
,p_column_heading=>'Othecost'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43157114865083441)
,p_query_column_id=>69
,p_column_alias=>'DELIVERD'
,p_column_display_sequence=>70
,p_column_heading=>'Deliverd'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43157478706083441)
,p_query_column_id=>70
,p_column_alias=>'SALRECFK'
,p_column_display_sequence=>72
,p_column_heading=>'Salrecfk'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43157927339083441)
,p_query_column_id=>71
,p_column_alias=>'PRICREMK'
,p_column_display_sequence=>73
,p_column_heading=>'Pricremk'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43158301190083441)
,p_query_column_id=>72
,p_column_alias=>'PAMTMODE'
,p_column_display_sequence=>71
,p_column_heading=>'Pamtmode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43158729543083441)
,p_query_column_id=>73
,p_column_alias=>'MSFCAMNT1'
,p_column_display_sequence=>33
,p_column_heading=>'Stock<br>Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>3
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43165896201083461)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(43129612090083404)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>230
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43166762251083461)
,p_plug_name=>'Item Details'
,p_parent_plug_id=>wwv_flow_api.id(43129228440083404)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:50%;float:left;"'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(43175558764083474)
,p_name=>'Payment Details'
,p_parent_plug_id=>wwv_flow_api.id(43129228440083404)
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>210
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.COMPCODE, ',
'x.DOCTTYPE, ',
'x.SUBTTYPE, ',
'x.DOCNUMBR, ',
'x.DOCTDATE, ',
'x.PARTYCDE, ',
'x.TRANTYPE, ',
'x.TRANREF1, ',
'x.TRANREF2, ',
'x.TRANDATE, ',
'x.DBCRCODE, ',
'x.TRNFCAMT, ',
'x.CURRCODE, ',
'x.EXCGRATE, ',
'x.TRNLCAMT, ',
'x.POSTFLAG, ',
'x.OPRSTAMP, ',
'x.TIMSTAMP, ',
'x.ADVNFLAG, ',
'x.ACTVFLAG, ',
'x.SERLNUMB, ',
'x.UPDOCTYP, ',
'x.UPSUBTYP, ',
'x.UPDOCNUM, ',
'x.UPDOCDTE, ',
'x.CHQDEPDT, ',
'x.REFNUMBR, ',
'x.REFDOCDT, ',
'x.NARATION, ',
'x.COSTCODE, ',
'x.COMPLETE, ',
'x.COMPGVAT, ',
'x.NPAYABLE, ',
'x.PMTDTLFK,',
'x.cks',
'from (',
'select htmldb_item.text(1,COMPCODE,3) COMPCODE, ',
'htmldb_item.text(2,DOCTTYPE,2) DOCTTYPE, ',
'htmldb_item.text(3,SUBTTYPE,10) SUBTTYPE, ',
'htmldb_item.text(4,DOCNUMBR,8) DOCNUMBR, ',
'wwv_flow_item.date_popup(6,null,DOCTDATE) DOCTDATE,',
'htmldb_item.text(70,PARTYCDE,6) PARTYCDE, ',
'htmldb_item.select_list_from_query(5,TRANTYPE,''select  NMCODDES,NMSOFCDE from nmcodmas where NMHRDCDE = ''''PAY'''' AND COMPCODE =  ''''100'''' AND MODLCODE = ''''NM'''''') TRANTYPE, ',
'htmldb_item.text(72,TRANREF1,20) TRANREF1, ',
'htmldb_item.text(73,TRANREF2,40) TRANREF2, ',
'htmldb_item.text(74,TRANDATE,15) TRANDATE, ',
'htmldb_item.text(75,DBCRCODE,1) DBCRCODE, ',
'htmldb_item.text(76,TRNFCAMT,40) TRNFCAMT, ',
'htmldb_item.text(77,CURRCODE,3) CURRCODE, ',
'htmldb_item.text(78,EXCGRATE,10) EXCGRATE, ',
'htmldb_item.text(79,TRNLCAMT,40) TRNLCAMT, ',
'htmldb_item.text(77,POSTFLAG,1) POSTFLAG, ',
'htmldb_item.text(7,OPRSTAMP,6) OPRSTAMP, ',
'htmldb_item.text(8,TIMSTAMP,25) TIMSTAMP, ',
'htmldb_item.text(83,ADVNFLAG,10) ADVNFLAG, ',
'htmldb_item.text(84,ACTVFLAG,10) ACTVFLAG, ',
'htmldb_item.text(9,SERLNUMB,10) SERLNUMB, ',
'htmldb_item.text(86,UPDOCTYP,10) UPDOCTYP, ',
'htmldb_item.text(87,UPSUBTYP,10) UPSUBTYP, ',
'htmldb_item.text(88,UPDOCNUM,10) UPDOCNUM, ',
'htmldb_item.text(89,UPDOCDTE,10) UPDOCDTE, ',
'htmldb_item.text(90,CHQDEPDT,10) CHQDEPDT, ',
'htmldb_item.text(91,REFNUMBR,10) REFNUMBR, ',
'htmldb_item.text(92,REFDOCDT,10) REFDOCDT, ',
'htmldb_item.text(93,NARATION,500) NARATION, ',
'htmldb_item.text(94,COSTCODE,10) COSTCODE, ',
'htmldb_item.text(95,COMPLETE,50) COMPLETE, ',
'htmldb_item.text(96,COMPGVAT,50) COMPGVAT, ',
'htmldb_item.text(97,NPAYABLE,50) NPAYABLE, ',
'htmldb_item.text(98,PMTDTLFK,50) PMTDTLFK,',
'htmldb_item.md5_checksum(COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, PARTYCDE, TRANTYPE, ',
'TRANREF1, TRANREF2, TRANDATE, DBCRCODE, TRNFCAMT, CURRCODE, EXCGRATE, TRNLCAMT, POSTFLAG, OPRSTAMP, ',
'TIMSTAMP, ADVNFLAG, ACTVFLAG, SERLNUMB, UPDOCTYP, UPSUBTYP, UPDOCNUM, UPDOCDTE, CHQDEPDT, REFNUMBR, ',
'REFDOCDT, NARATION, COSTCODE, COMPLETE, COMPGVAT, NPAYABLE, PMTDTLFK) cks',
'from nmpmtdtl',
'where DOCNUMBR=:P111_DOCNUMBR1',
'union all',
'select htmldb_item.text(1,NULL,3) COMPCODE, ',
'htmldb_item.text(2,NULL,2) DOCTTYPE, ',
'htmldb_item.text(3,NULL,10) SUBTTYPE, ',
'htmldb_item.text(4,NULL,8) DOCNUMBR,  ',
'wwv_flow_item.date_popup(6,null,null) DOCTDATE, ',
'htmldb_item.text(70,NULL,6) PARTYCDE, ',
'htmldb_item.select_list_from_query(5,NULL,''select  NMCODDES,NMSOFCDE from nmcodmas where NMHRDCDE = ''''PAY'''' AND COMPCODE =  ''''100'''' AND MODLCODE = ''''NM'''''') TRANTYPE, ',
'htmldb_item.text(72,NULL,20) TRANREF1, ',
'htmldb_item.text(73,NULL,40) TRANREF2, ',
'htmldb_item.text(74,NULL,15) TRANDATE, ',
'htmldb_item.text(75,NULL,1) DBCRCODE, ',
'htmldb_item.text(76,NULL,40) TRNFCAMT, ',
'htmldb_item.text(77,NULL,3) CURRCODE, ',
'htmldb_item.text(78,NULL,10) EXCGRATE, ',
'htmldb_item.text(79,NULL,40) TRNLCAMT, ',
'htmldb_item.text(80,NULL,1) POSTFLAG, ',
'htmldb_item.text(7,NULL,6) OPRSTAMP, ',
'htmldb_item.text(8,NULL,25) TIMSTAMP, ',
'htmldb_item.text(83,NULL,10) ADVNFLAG, ',
'htmldb_item.text(84,NULL,10) ACTVFLAG, ',
'htmldb_item.text(9,NULL,10) SERLNUMB, ',
'htmldb_item.text(86,NULL,10) UPDOCTYP, ',
'htmldb_item.text(87,NULL,10) UPSUBTYP, ',
'htmldb_item.text(88,NULL,10) UPDOCNUM, ',
'htmldb_item.text(89,NULL,10) UPDOCDTE, ',
'htmldb_item.text(90,NULL,10) CHQDEPDT, ',
'htmldb_item.text(91,NULL,10) REFNUMBR, ',
'htmldb_item.text(92,NULL,10) REFDOCDT, ',
'htmldb_item.text(93,NULL,500) NARATION, ',
'htmldb_item.text(94,NULL,10) COSTCODE, ',
'htmldb_item.text(95,NULL,50) COMPLETE, ',
'htmldb_item.text(96,NULL,50) COMPGVAT, ',
'htmldb_item.text(97,NULL,50) NPAYABLE, ',
'htmldb_item.text(98,NULL,50) PMTDTLFK,',
'htmldb_item.md5_checksum(null, null, null, null, null, null, ',
'null, null, null, null, null, null, ',
'null, null, null, null, null, null, ',
'null, null, null, null, null, null, ',
'null, null, null, null, null, null, ',
'null, null, null, null) cks',
'from dual',
'connect by level <6) x'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P111_DOCNUMBR1'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, PARTYCDE, ',
'TRANTYPE, TRANREF1, TRANREF2, TRANDATE, DBCRCODE,TRNLCAMT , CURRCODE, ',
'EXCGRATE, TRNFCAMT , POSTFLAG, OPRSTAMP, TIMSTAMP, ADVNFLAG, ACTVFLAG, ',
'SERLNUMB, UPDOCTYP, UPSUBTYP, UPDOCNUM, UPDOCDTE, CHQDEPDT, REFNUMBR, ',
'REFDOCDT, NARATION, COSTCODE, COMPLETE, COMPGVAT, NPAYABLE, PMTDTLFK',
' from  NMPMTDTL',
' where DOCNUMBR=:P59_DOCNUMBR1 ',
'UNION ALL',
'SELECT     NULL COMPCODE, NULL DOCTTYPE, NULL SUBTTYPE, NULL DOCNUMBR, NULL DOCTDATE,NULL PARTYCDE, ',
'NULL TRANTYPE,NULL TRANREF1,NULL TRANREF2,NULL TRANDATE,NULL DBCRCODE,NULL TRNLCAMT,NULL CURRCODE, ',
'NULL EXCGRATE, NULL TRNFCAMT ,NULL POSTFLAG,NULL OPRSTAMP,NULL TIMSTAMP,NULL ADVNFLAG,NULL ACTVFLAG, ',
'NULL SERLNUMB,NULL UPDOCTYP,NULL UPSUBTYP,NULL UPDOCNUM,NULL UPDOCDTE,NULL CHQDEPDT,NULL REFNUMBR, ',
'NULL REFDOCDT,NULL NARATION,NULL COSTCODE,NULL COMPLETE,NULL COMPGVAT,NULL NPAYABLE,NULL FROM  NMPMTDTL',
'   CONNECT BY LEVEL < 4'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43175876572083478)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_column_heading=>'COMPCODE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43176357520083478)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>2
,p_column_heading=>'DOCTTYPE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43176762126083480)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'SUBTTYPE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43177124523083482)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>4
,p_column_heading=>'DOCNUMBR'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43177515618083483)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>7
,p_column_heading=>'Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>20
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPMTDTL'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43177938970083483)
,p_query_column_id=>6
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>9
,p_column_heading=>'PARTYCDE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43178338653083485)
,p_query_column_id=>7
,p_column_alias=>'TRANTYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Payment Mode'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  NMCODDES d ,NMSOFCDE r from nmcodmas',
'where NMHRDCDE = ''PAY''',
' AND COMPCODE =  :compcode',
' AND MODLCODE = ''NM'''))
,p_lov_show_nulls=>'NO'
,p_column_width=>40
,p_cattributes=>'style="width: 100%;"'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPMTDTL'
,p_ref_column_name=>'TRANTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43178693035083485)
,p_query_column_id=>8
,p_column_alias=>'TRANREF1'
,p_column_display_sequence=>10
,p_column_heading=>'TRANREF1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43179075616083485)
,p_query_column_id=>9
,p_column_alias=>'TRANREF2'
,p_column_display_sequence=>11
,p_column_heading=>'TRANREF2'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43179549712083485)
,p_query_column_id=>10
,p_column_alias=>'TRANDATE'
,p_column_display_sequence=>12
,p_column_heading=>'TRANDATE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43179955153083488)
,p_query_column_id=>11
,p_column_alias=>'DBCRCODE'
,p_column_display_sequence=>13
,p_column_heading=>'DBCRCODE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43180301230083488)
,p_query_column_id=>12
,p_column_alias=>'TRNFCAMT'
,p_column_display_sequence=>14
,p_column_heading=>'TRNFCAMT'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43180730836083488)
,p_query_column_id=>13
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>16
,p_column_heading=>'CURRCODE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43181098665083489)
,p_query_column_id=>14
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>15
,p_column_heading=>'EXCGRATE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43181519016083489)
,p_query_column_id=>15
,p_column_alias=>'TRNLCAMT'
,p_column_display_sequence=>8
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>40
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPMTDTL'
,p_ref_column_name=>'TRNLCAMT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43181921095083489)
,p_query_column_id=>16
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>17
,p_column_heading=>'POSTFLAG'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43182281943083489)
,p_query_column_id=>17
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>18
,p_column_heading=>'OPRSTAMP'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43182710609083489)
,p_query_column_id=>18
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>19
,p_column_heading=>'TIMSTAMP'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43183083358083491)
,p_query_column_id=>19
,p_column_alias=>'ADVNFLAG'
,p_column_display_sequence=>20
,p_column_heading=>'ADVNFLAG'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43183565738083491)
,p_query_column_id=>20
,p_column_alias=>'ACTVFLAG'
,p_column_display_sequence=>21
,p_column_heading=>'ACTVFLAG'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43183942985083494)
,p_query_column_id=>21
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>5
,p_column_heading=>'Srl.'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43184323508083494)
,p_query_column_id=>22
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>22
,p_column_heading=>'Updoctyp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43184683178083494)
,p_query_column_id=>23
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>23
,p_column_heading=>'Upsubtyp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43185128293083494)
,p_query_column_id=>24
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>24
,p_column_heading=>'Updocnum'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43185488118083494)
,p_query_column_id=>25
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>25
,p_column_heading=>'Updocdte'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43185891656083496)
,p_query_column_id=>26
,p_column_alias=>'CHQDEPDT'
,p_column_display_sequence=>26
,p_column_heading=>'Chqdepdt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43186337279083496)
,p_query_column_id=>27
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>27
,p_column_heading=>'Refnumbr'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43186734421083496)
,p_query_column_id=>28
,p_column_alias=>'REFDOCDT'
,p_column_display_sequence=>28
,p_column_heading=>'Refdocdt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43187158633083496)
,p_query_column_id=>29
,p_column_alias=>'NARATION'
,p_column_display_sequence=>29
,p_column_heading=>'Naration'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43187540809083497)
,p_query_column_id=>30
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>30
,p_column_heading=>'Costcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43187874755083503)
,p_query_column_id=>31
,p_column_alias=>'COMPLETE'
,p_column_display_sequence=>31
,p_column_heading=>'Complete'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43188332967083505)
,p_query_column_id=>32
,p_column_alias=>'COMPGVAT'
,p_column_display_sequence=>32
,p_column_heading=>'Compgvat'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43188727059083505)
,p_query_column_id=>33
,p_column_alias=>'NPAYABLE'
,p_column_display_sequence=>33
,p_column_heading=>'Npayable'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43189147948083506)
,p_query_column_id=>34
,p_column_alias=>'PMTDTLFK'
,p_column_display_sequence=>34
,p_column_heading=>'Pmtdtlfk'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43189547296083506)
,p_query_column_id=>35
,p_column_alias=>'CKS'
,p_column_display_sequence=>35
,p_column_heading=>'Cks'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43190667628083508)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(43129228440083404)
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
 p_id=>wwv_flow_api.id(43196214114083531)
,p_plug_name=>'Sales Details'
,p_parent_plug_id=>wwv_flow_api.id(43129228440083404)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:50%;float:right;"'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_api.id(43200613420083535)
,p_plug_name=>'Customer Information'
,p_parent_plug_id=>wwv_flow_api.id(43118845995083383)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:20%;float:right;"'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
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
 p_id=>wwv_flow_api.id(43204194482083541)
,p_plug_name=>'Order and Booking Details'
,p_parent_plug_id=>wwv_flow_api.id(43118845995083383)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P111_TRANTYPE'
,p_plug_display_when_cond2=>'SI2'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43207042724083544)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(43217040888083555)
,p_name=>'maually tabular form'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>220
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.COMPCODE, ',
'x.DOCTTYPE, ',
'x.SUBTTYPE, ',
'x.DOCNUMBR, ',
'x.DOCTDATE, ',
'x.PARTYCDE, ',
'x.TRANTYPE, ',
'x.TRANREF1, ',
'x.TRANREF2, ',
'x.TRANDATE, ',
'x.DBCRCODE, ',
'x.TRNFCAMT, ',
'x.CURRCODE, ',
'x.EXCGRATE, ',
'x.TRNLCAMT, ',
'x.POSTFLAG, ',
'x.OPRSTAMP, ',
'x.TIMSTAMP, ',
'x.ADVNFLAG, ',
'x.ACTVFLAG, ',
'x.SERLNUMB, ',
'x.UPDOCTYP, ',
'x.UPSUBTYP, ',
'x.UPDOCNUM, ',
'x.UPDOCDTE, ',
'x.CHQDEPDT, ',
'x.REFNUMBR, ',
'x.REFDOCDT, ',
'x.NARATION, ',
'x.COSTCODE, ',
'x.COMPLETE, ',
'x.COMPGVAT, ',
'x.NPAYABLE, ',
'x.PMTDTLFK',
'from (',
'select htmldb_item.text(65,COMPCODE,3) COMPCODE, ',
'htmldb_item.text(66,DOCTTYPE,2) DOCTTYPE, ',
'htmldb_item.text(67,SUBTTYPE,10) SUBTTYPE, ',
'htmldb_item.text(68,DOCNUMBR,8) DOCNUMBR, ',
'wwv_flow_item.date_popup(69,null,DOCTDATE) DOCTDATE, ',
'htmldb_item.text(70,PARTYCDE,6) PARTYCDE, ',
'htmldb_item.select_list_from_query(71,TRANTYPE,''select  NMCODDES from nmcodmas where NMHRDCDE = ''''PAY'''' AND COMPCODE =  ''''100'''' AND MODLCODE = ''''NM'''''') TRANTYPE, ',
'htmldb_item.text(72,TRANREF1,20) TRANREF1, ',
'htmldb_item.text(73,TRANREF2,40) TRANREF2, ',
'htmldb_item.text(74,TRANDATE,15) TRANDATE, ',
'htmldb_item.text(75,DBCRCODE,1) DBCRCODE, ',
'htmldb_item.text(76,TRNFCAMT,40) TRNFCAMT, ',
'htmldb_item.text(77,CURRCODE,3) CURRCODE, ',
'htmldb_item.text(78,EXCGRATE,10) EXCGRATE, ',
'htmldb_item.text(79,TRNLCAMT,40) TRNLCAMT, ',
'htmldb_item.text(80,POSTFLAG,1) POSTFLAG, ',
'htmldb_item.text(81,OPRSTAMP,6) OPRSTAMP, ',
'htmldb_item.text(82,TIMSTAMP,25) TIMSTAMP, ',
'htmldb_item.text(83,ADVNFLAG,10) ADVNFLAG, ',
'htmldb_item.text(84,ACTVFLAG,10) ACTVFLAG, ',
'htmldb_item.text(85,SERLNUMB,10) SERLNUMB, ',
'htmldb_item.text(86,UPDOCTYP,10) UPDOCTYP, ',
'htmldb_item.text(87,UPSUBTYP,10) UPSUBTYP, ',
'htmldb_item.text(88,UPDOCNUM,10) UPDOCNUM, ',
'htmldb_item.text(89,UPDOCDTE,10) UPDOCDTE, ',
'htmldb_item.text(90,CHQDEPDT,10) CHQDEPDT, ',
'htmldb_item.text(91,REFNUMBR,10) REFNUMBR, ',
'htmldb_item.text(92,REFDOCDT,10) REFDOCDT, ',
'htmldb_item.text(93,NARATION,500) NARATION, ',
'htmldb_item.text(94,COSTCODE,10) COSTCODE, ',
'htmldb_item.text(95,COMPLETE,50) COMPLETE, ',
'htmldb_item.text(96,COMPGVAT,50) COMPGVAT, ',
'htmldb_item.text(97,NPAYABLE,50) NPAYABLE, ',
'htmldb_item.text(98,PMTDTLFK,50) PMTDTLFK',
'from nmpmtdtl',
'where DOCNUMBR=''SI100141''',
'union all',
'select htmldb_item.text(65,NULL,3) COMPCODE, ',
'htmldb_item.text(66,NULL,2) DOCTTYPE, ',
'htmldb_item.text(67,NULL,10) SUBTTYPE, ',
'htmldb_item.text(68,NULL,8) DOCNUMBR, ',
'wwv_flow_item.date_popup(69,null,null) DOCTDATE,  ',
'htmldb_item.text(70,NULL,6) PARTYCDE, ',
'htmldb_item.select_list_from_query(71,NULL,''select  NMCODDES from nmcodmas where NMHRDCDE = ''''PAY'''' AND COMPCODE =  ''''100'''' AND MODLCODE = ''''NM'''''') TRANTYPE, ',
'htmldb_item.text(72,NULL,20) TRANREF1, ',
'htmldb_item.text(73,NULL,40) TRANREF2, ',
'htmldb_item.text(74,NULL,15) TRANDATE, ',
'htmldb_item.text(75,NULL,1) DBCRCODE, ',
'htmldb_item.text(76,NULL,40) TRNFCAMT, ',
'htmldb_item.text(77,NULL,3) CURRCODE, ',
'htmldb_item.text(78,NULL,10) EXCGRATE, ',
'htmldb_item.text(79,NULL,40) TRNLCAMT, ',
'htmldb_item.text(80,NULL,1) POSTFLAG, ',
'htmldb_item.text(81,NULL,6) OPRSTAMP, ',
'htmldb_item.text(82,NULL,25) TIMSTAMP, ',
'htmldb_item.text(83,NULL,10) ADVNFLAG, ',
'htmldb_item.text(84,NULL,10) ACTVFLAG, ',
'htmldb_item.text(85,NULL,10) SERLNUMB, ',
'htmldb_item.text(86,NULL,10) UPDOCTYP, ',
'htmldb_item.text(87,NULL,10) UPSUBTYP, ',
'htmldb_item.text(88,NULL,10) UPDOCNUM, ',
'htmldb_item.text(89,NULL,10) UPDOCDTE, ',
'htmldb_item.text(90,NULL,10) CHQDEPDT, ',
'htmldb_item.text(91,NULL,10) REFNUMBR, ',
'htmldb_item.text(92,NULL,10) REFDOCDT, ',
'htmldb_item.text(93,NULL,500) NARATION, ',
'htmldb_item.text(94,NULL,10) COSTCODE, ',
'htmldb_item.text(95,NULL,50) COMPLETE, ',
'htmldb_item.text(96,NULL,50) COMPGVAT, ',
'htmldb_item.text(97,NULL,50) NPAYABLE, ',
'htmldb_item.text(98,NULL,50) PMTDTLFK',
'from dual) x'))
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
 p_id=>wwv_flow_api.id(43222595447083563)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
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
 p_id=>wwv_flow_api.id(43223004329083563)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Docttype'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43223391446083563)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Subttype'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43223852538083563)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>4
,p_column_heading=>'Docnumbr'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43224232431083563)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Doctdate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>20
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43224640188083563)
,p_query_column_id=>6
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>6
,p_column_heading=>'Partycde'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43225063206083563)
,p_query_column_id=>7
,p_column_alias=>'TRANTYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Trantype'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43217373979083556)
,p_query_column_id=>8
,p_column_alias=>'TRANREF1'
,p_column_display_sequence=>8
,p_column_heading=>'Tranref1'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43217809534083556)
,p_query_column_id=>9
,p_column_alias=>'TRANREF2'
,p_column_display_sequence=>9
,p_column_heading=>'Tranref2'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43218264290083556)
,p_query_column_id=>10
,p_column_alias=>'TRANDATE'
,p_column_display_sequence=>10
,p_column_heading=>'Trandate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43218625151083556)
,p_query_column_id=>11
,p_column_alias=>'DBCRCODE'
,p_column_display_sequence=>11
,p_column_heading=>'Dbcrcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43219060353083556)
,p_query_column_id=>12
,p_column_alias=>'TRNFCAMT'
,p_column_display_sequence=>12
,p_column_heading=>'Trnfcamt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43219377907083560)
,p_query_column_id=>13
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>13
,p_column_heading=>'Currcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43219786408083561)
,p_query_column_id=>14
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>14
,p_column_heading=>'Excgrate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43220246460083561)
,p_query_column_id=>15
,p_column_alias=>'TRNLCAMT'
,p_column_display_sequence=>15
,p_column_heading=>'Trnlcamt'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43220630584083561)
,p_query_column_id=>16
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>16
,p_column_heading=>'Postflag'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43221019975083561)
,p_query_column_id=>17
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>17
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43221457448083561)
,p_query_column_id=>18
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>18
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43221797759083561)
,p_query_column_id=>19
,p_column_alias=>'ADVNFLAG'
,p_column_display_sequence=>19
,p_column_heading=>'Advnflag'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43222235253083561)
,p_query_column_id=>20
,p_column_alias=>'ACTVFLAG'
,p_column_display_sequence=>20
,p_column_heading=>'Actvflag'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43225455332083564)
,p_query_column_id=>21
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>21
,p_column_heading=>'Serlnumb'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43225849083083564)
,p_query_column_id=>22
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>22
,p_column_heading=>'Updoctyp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43226256327083564)
,p_query_column_id=>23
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>23
,p_column_heading=>'Upsubtyp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43226596867083566)
,p_query_column_id=>24
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>24
,p_column_heading=>'Updocnum'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43227026373083566)
,p_query_column_id=>25
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>25
,p_column_heading=>'Updocdte'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43227412926083566)
,p_query_column_id=>26
,p_column_alias=>'CHQDEPDT'
,p_column_display_sequence=>26
,p_column_heading=>'Chqdepdt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43227842911083566)
,p_query_column_id=>27
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>27
,p_column_heading=>'Refnumbr'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43228217948083566)
,p_query_column_id=>28
,p_column_alias=>'REFDOCDT'
,p_column_display_sequence=>28
,p_column_heading=>'Refdocdt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43228599803083566)
,p_query_column_id=>29
,p_column_alias=>'NARATION'
,p_column_display_sequence=>29
,p_column_heading=>'Naration'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43229066455083566)
,p_query_column_id=>30
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>30
,p_column_heading=>'Costcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43229409035083567)
,p_query_column_id=>31
,p_column_alias=>'COMPLETE'
,p_column_display_sequence=>31
,p_column_heading=>'Complete'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43229854141083567)
,p_query_column_id=>32
,p_column_alias=>'COMPGVAT'
,p_column_display_sequence=>32
,p_column_heading=>'Compgvat'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43230238435083567)
,p_query_column_id=>33
,p_column_alias=>'NPAYABLE'
,p_column_display_sequence=>33
,p_column_heading=>'Npayable'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43230584029083567)
,p_query_column_id=>34
,p_column_alias=>'PMTDTLFK'
,p_column_display_sequence=>34
,p_column_heading=>'Pmtdtlfk'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43231439997083567)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>190
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
 p_id=>wwv_flow_api.id(43231831277083567)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43191140327083511)
,p_button_sequence=>1110
,p_button_plug_id=>wwv_flow_api.id(43190667628083508)
,p_button_name=>'P111_SHOWHIDE'
,p_button_static_id=>'P97_SHOWHIDE'
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
 p_id=>wwv_flow_api.id(43196658296083531)
,p_button_sequence=>1380
,p_button_plug_id=>wwv_flow_api.id(43196214114083531)
,p_button_name=>'P111_ADDINSTALL'
,p_button_static_id=>'P97_ADDINSTALL'
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
 p_id=>wwv_flow_api.id(43122398136083386)
,p_button_sequence=>1770
,p_button_plug_id=>wwv_flow_api.id(43118845995083383)
,p_button_name=>'P111_RUNREPORT'
,p_button_static_id=>'P97_RUNREPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Run Report'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:49:P49_PROGNAME,P49_DOCNUMBR:&P111_PROGNAME.,&P111_DOCNUMBR49.'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43122835239083386)
,p_button_sequence=>1780
,p_button_plug_id=>wwv_flow_api.id(43118845995083383)
,p_button_name=>'P111_MNYRECEIPT'
,p_button_static_id=>'P97_MNYRECEIPT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Money Receipt'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43123200942083386)
,p_button_sequence=>1820
,p_button_plug_id=>wwv_flow_api.id(43118845995083383)
,p_button_name=>'P111_DELIVERY'
,p_button_static_id=>'P97_DELIVERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delivery Challan'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:abc();'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43207436970083545)
,p_button_sequence=>2020
,p_button_plug_id=>wwv_flow_api.id(43207042724083544)
,p_button_name=>'P111_GO'
,p_button_static_id=>'P97_GO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Go'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:96:&SESSION.::&DEBUG.::P96_CUSTMRID:&P111_CUSTOMERID.'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43159087941083443)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(43129612090083404)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Submit'
,p_button_position=>'BOTTOM'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43159565005083443)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(43129612090083404)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43159869665083443)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_api.id(43129612090083404)
,p_button_name=>'PAYMENT_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Payment Details'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:96:&SESSION.::&DEBUG.:96::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43119988286083385)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(43118845995083383)
,p_button_name=>'CREATE'
,p_button_static_id=>'BUT_CRT_FRM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43120439383083385)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(43118845995083383)
,p_button_name=>'SHOW_HIDE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Multiple Item Invoice'
,p_button_position=>'HELP'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43120799021083385)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(43118845995083383)
,p_button_name=>'CREATE_ANOTHER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Another'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43121251890083386)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(43118845995083383)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_redirect_url=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43121614361083386)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(43118845995083383)
,p_button_name=>'CREATE_NEW'
,p_button_static_id=>'BUT_CRT_TAB'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Create'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_condition=>'P111_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43121974910083386)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(43118845995083383)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43119652585083385)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(43118845995083383)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_condition=>'P111_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43119212045083383)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(43118845995083383)
,p_button_name=>'DELIVERY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delivery'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43190336634083508)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(43175558764083474)
,p_button_name=>'ADD_ROWS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Rows'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43230982624083567)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(43217040888083555)
,p_button_name=>'ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43189961186083508)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_api.id(43175558764083474)
,p_button_name=>'UPDATE_EMP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Emp'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43269128553083597)
,p_branch_name=>'go to payment(96)'
,p_branch_action=>'f?p=&APP_ID.:96:&SESSION.::&DEBUG.::P97_DOCNUMBR:&P96_DEVDOCNUMBR.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(57155282660097719)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43118402115083372)
,p_name=>'P111_INSTALLAMOUNT'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(43117998723083372)
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
 p_id=>wwv_flow_api.id(43123615770083393)
,p_name=>'P111_SALESTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(43118845995083383)
,p_prompt=>'Payment Mode'
,p_display_as=>'NATIVE_HIDDEN'
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
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  NMCODDES d ,NMSOFCDE r from nmcodmas',
'where NMHRDCDE = ''PAY''',
' AND COMPCODE =  :compcode',
' AND MODLCODE = ''NM'''))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43124054695083393)
,p_name=>'P111_TRANTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(43118845995083383)
,p_prompt=>'Sales Type'
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
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43124427877083394)
,p_name=>'P111_DOCNUMBR'
,p_item_sequence=>1450
,p_item_plug_id=>wwv_flow_api.id(43118845995083383)
,p_prompt=>'Invoice No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
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
 p_id=>wwv_flow_api.id(43124772609083396)
,p_name=>'P111_DOCTDATE'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(43118845995083383)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Invoice Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
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
 p_id=>wwv_flow_api.id(43125217016083397)
,p_name=>'P111_PROGNAME'
,p_item_sequence=>1800
,p_item_plug_id=>wwv_flow_api.id(43118845995083383)
,p_prompt=>'Progname'
,p_source=>'nminvmny'
,p_source_type=>'STATIC'
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
 p_id=>wwv_flow_api.id(43125657313083399)
,p_name=>'P111_DOCNUMBR49'
,p_item_sequence=>1810
,p_item_plug_id=>wwv_flow_api.id(43118845995083383)
,p_prompt=>'Docnumbr49'
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
 p_id=>wwv_flow_api.id(43126402456083400)
,p_name=>'P111_TNSPRTYP'
,p_item_sequence=>1830
,p_item_plug_id=>wwv_flow_api.id(43125977743083399)
,p_prompt=>'Transport Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(43126800294083400)
,p_name=>'P111_TRNSREGN'
,p_item_sequence=>1840
,p_item_plug_id=>wwv_flow_api.id(43125977743083399)
,p_prompt=>'Transport Reg.No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(43127193514083400)
,p_name=>'P111_TNSCHSNO'
,p_item_sequence=>1850
,p_item_plug_id=>wwv_flow_api.id(43125977743083399)
,p_prompt=>'Transport Chasis No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(43127618693083402)
,p_name=>'P111_DRIVNAME'
,p_item_sequence=>1860
,p_item_plug_id=>wwv_flow_api.id(43125977743083399)
,p_prompt=>'Driver Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(43128019771083402)
,p_name=>'P111_DVNLIDNO'
,p_item_sequence=>1870
,p_item_plug_id=>wwv_flow_api.id(43125977743083399)
,p_prompt=>'Driver N.Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(43128446689083402)
,p_name=>'P111_DVLICSNO'
,p_item_sequence=>1880
,p_item_plug_id=>wwv_flow_api.id(43125977743083399)
,p_prompt=>'Driver License'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(43128830654083404)
,p_name=>'P111_DELVLOCT'
,p_item_sequence=>1890
,p_item_plug_id=>wwv_flow_api.id(43125977743083399)
,p_prompt=>'Delivery Location'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(43166328546083461)
,p_name=>'P111_TABTOTDISAM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(43165896201083461)
,p_prompt=>'Total Discount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_grid_column=>2
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
 p_id=>wwv_flow_api.id(43167095428083463)
,p_name=>'P111_TABULARITEMCODE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
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
 p_id=>wwv_flow_api.id(43167477514083463)
,p_name=>'P111_CLOSINGBALANCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
,p_prompt=>'stock Qty.'
,p_display_as=>'NATIVE_HIDDEN'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43167947414083463)
,p_name=>'P111_TABCOSTRATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
,p_prompt=>'Tabcostrate'
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
 p_id=>wwv_flow_api.id(43168329584083463)
,p_name=>'P111_TABITEMDESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
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
 p_id=>wwv_flow_api.id(43168757767083464)
,p_name=>'P111_TABITEMRATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
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
 p_id=>wwv_flow_api.id(43169153713083464)
,p_name=>'P111_TABITEMUNIT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
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
 p_id=>wwv_flow_api.id(43169487055083467)
,p_name=>'P111_TABCLOSINGBALANCE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
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
 p_id=>wwv_flow_api.id(43169881498083467)
,p_name=>'P111_S_H_REGION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
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
 p_id=>wwv_flow_api.id(43170321136083469)
,p_name=>'P111_LOVITEMCODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
,p_prompt=>'Item Code'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode, a.itemdes2 ,',
'                a.compcode, SUM (clbalqty) clsbln',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P111_WARECODE',
'       --   AND b.itemcode =:P111_LOVITEMCODE',
'            AND NVL (b.clbalqty, 0) > 0',
' GROUP BY a.itemcode, a.itemdes2, a.compcode'))
,p_lov_cascade_parent_items=>'P111_WARECODE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,1'
,p_attribute_06=>'1'
,p_attribute_07=>'P111_ITEMCODE'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43170725219083469)
,p_name=>'P111_ITEMCODE'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
,p_item_default=>':P111_TESTITEM'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Item Code'
,p_display_as=>'NATIVE_HIDDEN'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43171087867083469)
,p_name=>'P111_ITEMDESC'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_HIDDEN'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43171496574083469)
,p_name=>'P111_LOVBATCHNO'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
,p_prompt=>'Batch No.'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT batchnum,itemrate, NVL (costrate, itemrate) costrate,',
'                salerate',
'           FROM (SELECT   b.batchnum,b.itemrate, b.costrate, b.salerate',
'                     FROM nmbtrate b, nmwhimas w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P111_ITEMCODE',
'                      AND w.warecode = :P111_WARECODE',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                   HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC)'))
,p_lov_cascade_parent_items=>'P111_ITEMCODE,P111_WARECODE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'List of Batch No.'
,p_attribute_03=>'1,1'
,p_attribute_06=>'1'
,p_attribute_07=>'P111_BATCHNUM'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43171914033083471)
,p_name=>'P111_BATCHNUM'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
,p_prompt=>'Batch No.'
,p_display_as=>'NATIVE_HIDDEN'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43172343434083471)
,p_name=>'P111_BRAND'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_HIDDEN'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43172746512083471)
,p_name=>'P111_MODAL'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_HIDDEN'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43173145070083471)
,p_name=>'P111_UNITOFMESURE'
,p_item_sequence=>1430
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
,p_prompt=>'Unit Of Mesurement'
,p_display_as=>'NATIVE_HIDDEN'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43173514990083472)
,p_name=>'P111_ISSUMTHD'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
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
 p_id=>wwv_flow_api.id(43173952915083472)
,p_name=>'P111_TABITEMTYPE'
,p_item_sequence=>1650
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
,p_prompt=>'Tabitemtype'
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
 p_id=>wwv_flow_api.id(43174286743083472)
,p_name=>'P111_TABSALEPERC'
,p_item_sequence=>1660
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
,p_prompt=>'Tabsaleperc'
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
 p_id=>wwv_flow_api.id(43174719196083472)
,p_name=>'P111_TABCOMMGRUP'
,p_item_sequence=>1670
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
,p_prompt=>'Tabcommgrup'
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
 p_id=>wwv_flow_api.id(43175120441083472)
,p_name=>'P111_CLRITEMCODE'
,p_item_sequence=>1760
,p_item_plug_id=>wwv_flow_api.id(43166762251083461)
,p_prompt=>'Clritemcode'
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
 p_id=>wwv_flow_api.id(43191517067083511)
,p_name=>'P111_LOVCUSTOMERID'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(43190667628083508)
,p_prompt=>'Customer Id'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.partycde, c.custmrid, custname, contpers, custadr1, custadr2,',
'       custadr3, custadr4, custphon, c.tefaxnum, custmobl, custmail,',
'       r.registno, r.chasisno',
'  FROM nmcusmas c, nmitmreg r',
' WHERE c.custmrid = r.custmrid(+) AND c.compcode = r.compcode',
'       AND c.compcode = :compcode',
'       and c.CUSTTYPE=:P111_CUSTOMTYPE;',
''))
,p_lov_cascade_parent_items=>'P111_CUSTOMTYPE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'2,2'
,p_attribute_06=>'2'
,p_attribute_07=>'P111_CUSTOMERID'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43191930782083511)
,p_name=>'P111_CUSTOMTYPE'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(43190667628083508)
,p_item_default=>'COR'
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
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SYCODDES d,SYSOFCDE r from sycodmas where SYSOFCDE in',
'(select distinct PARTYTYP from sycompty)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''SY''',
'and SYHRDCDE=''CUS'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43192343591083514)
,p_name=>'P111_CUSTOMERID'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(43190667628083508)
,p_prompt=>'Customer Id'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.custmrid||''-''||custname d,c.custmrid r',
'  FROM nmcusmas c, nmitmreg r',
' WHERE c.custmrid = r.custmrid(+) AND c.compcode = r.compcode(+)',
'       AND c.compcode = :compcode',
'       and c.CUSTTYPE=:P111_CUSTOMTYPE;'))
,p_lov_cascade_parent_items=>'P111_CUSTOMTYPE'
,p_ajax_optimize_refresh=>'N'
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
 p_id=>wwv_flow_api.id(43192740741083514)
,p_name=>'P111_CUSTOMERNAME'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(43190667628083508)
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
 p_id=>wwv_flow_api.id(43193085784083514)
,p_name=>'P111_LOVCOSTCODE'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(43190667628083508)
,p_prompt=>'Cost Code'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   w.costcode,s.costdesc, w.warecode, w.waredesc',
'    FROM nmwhsmas w, syjobmas s',
'   WHERE w.compcode = :compcode',
'     AND w.compcode = s.compcode',
'     AND w.costcode = s.costcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER)',
'ORDER BY warecode;'))
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,1'
,p_attribute_06=>'1'
,p_attribute_07=>'P111_COSTCODE'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43193479775083514)
,p_name=>'P111_COSTCODE'
,p_item_sequence=>1220
,p_item_plug_id=>wwv_flow_api.id(43190667628083508)
,p_prompt=>'Business Unit'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   w.costcode||''-''||s.costdesc d,w.costcode r',
'    FROM nmwhsmas w, syjobmas s',
'   WHERE w.compcode = :compcode',
'     AND w.compcode = s.compcode',
'     AND w.costcode = s.costcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER)',
'ORDER BY warecode;'))
,p_cSize=>12
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_SALMANID'')"'
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
 p_id=>wwv_flow_api.id(43193958631083514)
,p_name=>'P111_COSTCENTERNAME'
,p_item_sequence=>1230
,p_item_plug_id=>wwv_flow_api.id(43190667628083508)
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
 p_id=>wwv_flow_api.id(43194294410083516)
,p_name=>'P111_LOVSALMANID'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_api.id(43190667628083508)
,p_prompt=>'Saleman'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT  s.smancode,s.smanname',
'           FROM syjobmas j, nmwhsmas w, nmsmnmas s',
'          WHERE j.compcode = :compcode',
'            AND w.costcode = j.costcode',
'            AND w.compcode = j.compcode',
'            AND w.compcode = s.compcode',
'            AND w.regncode = s.smantype',
'            AND w.srvcwflg = ''N''',
'            AND s.smantype <> ''RE''',
'            AND w.warecode = s.suprcode',
'            AND w.costcode = :P111_COSTCODE'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'2,1'
,p_attribute_06=>'1'
,p_attribute_07=>'P111_SALMANID'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43194751417083516)
,p_name=>'P111_SALMANID'
,p_item_sequence=>1290
,p_item_plug_id=>wwv_flow_api.id(43190667628083508)
,p_prompt=>'Sales Man'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT  s.smancode||''-''||s.smanname d,s.smancode r',
'           FROM syjobmas j, nmwhsmas w, nmsmnmas s',
'          WHERE j.compcode = :compcode',
'            AND w.costcode = j.costcode',
'            AND w.compcode = j.compcode',
'            AND w.compcode = s.compcode',
'            AND w.regncode = s.smantype',
'            AND w.srvcwflg = ''N''',
'            AND s.smantype <> ''RE''',
'            AND w.warecode = s.suprcode',
'            AND w.costcode = :P111_COSTCODE'))
,p_lov_cascade_parent_items=>'P111_COSTCODE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>10
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
 p_id=>wwv_flow_api.id(43195138585083516)
,p_name=>'P111_SALMNNAME'
,p_item_sequence=>1300
,p_item_plug_id=>wwv_flow_api.id(43190667628083508)
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
 p_id=>wwv_flow_api.id(43195544847083516)
,p_name=>'P111_WARECODE'
,p_item_sequence=>1780
,p_item_plug_id=>wwv_flow_api.id(43190667628083508)
,p_prompt=>'Ware Code'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43195908745083530)
,p_name=>'P111_WAREHOUSENM'
,p_item_sequence=>2010
,p_item_plug_id=>wwv_flow_api.id(43190667628083508)
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
 p_id=>wwv_flow_api.id(43197004522083531)
,p_name=>'P111_SALPRICE'
,p_item_sequence=>1250
,p_item_plug_id=>wwv_flow_api.id(43196214114083531)
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
 p_id=>wwv_flow_api.id(43197420793083531)
,p_name=>'P111_INSTALLNO'
,p_item_sequence=>1280
,p_item_plug_id=>wwv_flow_api.id(43196214114083531)
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
 p_id=>wwv_flow_api.id(43197839362083533)
,p_name=>'P111_QUENTITY'
,p_item_sequence=>1320
,p_item_plug_id=>wwv_flow_api.id(43196214114083531)
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
 p_id=>wwv_flow_api.id(43198240442083533)
,p_name=>'P111_AMOUNT'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_api.id(43196214114083531)
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
 p_id=>wwv_flow_api.id(43198569402083533)
,p_name=>'P111_INSTLLAMOUNT'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(43196214114083531)
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
 p_id=>wwv_flow_api.id(43198983265083535)
,p_name=>'P111_DISCPCNT'
,p_item_sequence=>1370
,p_item_plug_id=>wwv_flow_api.id(43196214114083531)
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
 p_id=>wwv_flow_api.id(43199368703083535)
,p_name=>'P111_DISAMOUNT'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(43196214114083531)
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
 p_id=>wwv_flow_api.id(43199788499083535)
,p_name=>'P111_NETAMOUNT'
,p_item_sequence=>1430
,p_item_plug_id=>wwv_flow_api.id(43196214114083531)
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
 p_id=>wwv_flow_api.id(43200265758083535)
,p_name=>'P111_PERINSTALL'
,p_item_sequence=>1470
,p_item_plug_id=>wwv_flow_api.id(43196214114083531)
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
 p_id=>wwv_flow_api.id(43201038140083535)
,p_name=>'P111_CUSADDRESS'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(43200613420083535)
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
 p_id=>wwv_flow_api.id(43201426365083535)
,p_name=>'P111_ZONE'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(43200613420083535)
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
 p_id=>wwv_flow_api.id(43201808368083538)
,p_name=>'P111_FILENO'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(43200613420083535)
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
 p_id=>wwv_flow_api.id(43202208964083538)
,p_name=>'P111_LASTPURCHASEDATE'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(43200613420083535)
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
 p_id=>wwv_flow_api.id(43202586343083539)
,p_name=>'P111_LASTPRODUCT'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(43200613420083535)
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
 p_id=>wwv_flow_api.id(43203057888083539)
,p_name=>'P111_LASTPURAMOUNT'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(43200613420083535)
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
 p_id=>wwv_flow_api.id(43203400482083539)
,p_name=>'P111_AREACODE'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(43200613420083535)
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
 p_id=>wwv_flow_api.id(43203856891083539)
,p_name=>'P111_PARTYCODE'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(43200613420083535)
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
 p_id=>wwv_flow_api.id(43204620070083542)
,p_name=>'P111_ORDERNO'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_api.id(43204194482083541)
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
'            AND s.docttype = :P111_REQREFTYPE',
'            AND s.subttype = :P111_REQSUBTYPE',
'            AND s.doctdate <= :P111_ORDERDATE',
'            AND s.compcode = sls.compcode(+)',
'            AND s.docnumbr = sls.updocnum(+)',
'            AND s.itemcode = sls.itemcode(+)',
'            AND s.apprqnty > NVL (sls.apprqnty, 0)',
'       ORDER BY 2 DESC'))
,p_lov_cascade_parent_items=>'P111_REQREFTYPE,P111_REQSUBTYPE,P111_ORDERDATE'
,p_ajax_items_to_submit=>'P111_REQREFTYPE,P111_REQSUBTYPE,P111_ORDERDATE'
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
 p_id=>wwv_flow_api.id(43205017134083544)
,p_name=>'P111_ORDERDATE'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(43204194482083541)
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
 p_id=>wwv_flow_api.id(43205434778083544)
,p_name=>'P111_BOOKINGNO'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(43204194482083541)
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
 p_id=>wwv_flow_api.id(43205836022083544)
,p_name=>'P111_BOOKINGDT'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(43204194482083541)
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
 p_id=>wwv_flow_api.id(43206218275083544)
,p_name=>'P111_REQREFTYPE'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(43204194482083541)
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43206583269083544)
,p_name=>'P111_REQSUBTYPE'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(43204194482083541)
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43207788576083550)
,p_name=>'P111_REGION'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
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
 p_id=>wwv_flow_api.id(43208207604083550)
,p_name=>'P111_COMPCODE'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
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
 p_id=>wwv_flow_api.id(43208640310083550)
,p_name=>'P111_OPRSTAMP'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
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
 p_id=>wwv_flow_api.id(43209050406083552)
,p_name=>'P111_TIMSTAMP'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
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
 p_id=>wwv_flow_api.id(43209396144083552)
,p_name=>'P111_DOCTTYPE'
,p_item_sequence=>1370
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
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
 p_id=>wwv_flow_api.id(43209848393083552)
,p_name=>'P111_SUBTTYPE'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
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
 p_id=>wwv_flow_api.id(43210191673083552)
,p_name=>'P111_SERLNUMB'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
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
 p_id=>wwv_flow_api.id(43210593867083552)
,p_name=>'P111_STATUSCD'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
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
 p_id=>wwv_flow_api.id(43211028758083552)
,p_name=>'P111_ITEMLONG_1'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
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
 p_id=>wwv_flow_api.id(43211398259083553)
,p_name=>'P111_MSFCAMNT'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
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
 p_id=>wwv_flow_api.id(43211808607083553)
,p_name=>'P111_ROWID'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
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
 p_id=>wwv_flow_api.id(43212193397083553)
,p_name=>'P111_DOCNUMBR1'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
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
 p_id=>wwv_flow_api.id(43212640290083553)
,p_name=>'P111_ITEMCODE1'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
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
 p_id=>wwv_flow_api.id(43212998478083553)
,p_name=>'P111_COMPCODE_APPLICATION'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
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
 p_id=>wwv_flow_api.id(43213404127083553)
,p_name=>'P111_DEVDOCTTYPE'
,p_item_sequence=>1900
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
,p_prompt=>'Devdocttype'
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
 p_id=>wwv_flow_api.id(43213800840083555)
,p_name=>'P111_DEVSUBTTYPE'
,p_item_sequence=>1910
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
,p_prompt=>'Devsubttype'
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
 p_id=>wwv_flow_api.id(43214242901083555)
,p_name=>'P111_DEVDOCNUMBR'
,p_item_sequence=>1920
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
,p_prompt=>'Devdocnumbr'
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
 p_id=>wwv_flow_api.id(43214639587083555)
,p_name=>'P111_GATDOCTTYPE'
,p_item_sequence=>1930
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
,p_prompt=>'Gatdocttype'
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
 p_id=>wwv_flow_api.id(43215054993083555)
,p_name=>'P111_GATSUBTTYPE'
,p_item_sequence=>1940
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
,p_prompt=>'Gatsubttype'
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
 p_id=>wwv_flow_api.id(43215459385083555)
,p_name=>'P111_GATDOCNUMBR'
,p_item_sequence=>1950
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
,p_prompt=>'Gatdocnumbr'
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
 p_id=>wwv_flow_api.id(43215809995083555)
,p_name=>'P111_PMTDOCTYP'
,p_item_sequence=>1960
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
,p_prompt=>'Pmtdoctyp'
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
 p_id=>wwv_flow_api.id(43216245637083555)
,p_name=>'P111_PMTSUBTYP'
,p_item_sequence=>1970
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
,p_prompt=>'Pmtsubtyp'
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
 p_id=>wwv_flow_api.id(43216593824083555)
,p_name=>'P111_PMTDOCNUM'
,p_item_sequence=>1980
,p_item_plug_id=>wwv_flow_api.id(43207042724083544)
,p_prompt=>'Pmtdocnum'
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
 p_id=>wwv_flow_api.id(43232852686083569)
,p_name=>'P111_SALMANTYPE'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43234544018083569)
,p_validation_name=>'Docdate validation for tabular'
,p_validation_sequence=>10
,p_validation=>'P111_DOCTDATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(56174274749843470)
,p_associated_item=>wwv_flow_api.id(43124772609083396)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43234915839083569)
,p_validation_name=>'Customer id validation for tabular'
,p_validation_sequence=>20
,p_validation=>'P111_CUSTOMERID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(56174274749843470)
,p_associated_item=>wwv_flow_api.id(43192343591083514)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43233285870083569)
,p_validation_name=>'Costcode  validation for tabular'
,p_validation_sequence=>30
,p_validation=>'P111_COSTCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(56174274749843470)
,p_associated_item=>wwv_flow_api.id(43193479775083514)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43233699532083569)
,p_validation_name=>'Costcode  validation for tabular'
,p_validation_sequence=>30
,p_validation=>'P111_COSTCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(56174274749843470)
,p_associated_item=>wwv_flow_api.id(43193479775083514)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43160381637083446)
,p_tabular_form_region_id=>wwv_flow_api.id(43129612090083404)
,p_validation_name=>'Comparison apprqty and stockqty validation for tabular'
,p_validation_sequence=>39
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'aprqty number;',
'stkqty number;',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f21.COUNT',
'   LOOP',
'    ',
'aprqty := apex_application.g_f21 (i);',
'stkqty := apex_application.g_f27 (i);',
'if aprqty > stkqty then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Qty cannot be more than Stockqty''',
'            || aprqty ',
'            ||''>'' ',
'            || stkqty ;',
'end if;',
'   END LOOP;',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(43121614361083386)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'APPRQNTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43234156928083569)
,p_validation_name=>'Salesman  validation for tabular'
,p_validation_sequence=>40
,p_validation=>'P111_SALMANID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(56174274749843470)
,p_associated_item=>wwv_flow_api.id(43194751417083516)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43160814167083449)
,p_tabular_form_region_id=>wwv_flow_api.id(43129612090083404)
,p_validation_name=>'Itemcode  validation for tabular'
,p_validation_sequence=>50
,p_validation=>'ITEMCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(56174274749843470)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ITEMCODE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43161221904083449)
,p_tabular_form_region_id=>wwv_flow_api.id(43129612090083404)
,p_validation_name=>'Batchnumber  validation for tabular'
,p_validation_sequence=>60
,p_validation=>'BATCHNUM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(56174274749843470)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'BATCHNUM'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43161622720083449)
,p_tabular_form_region_id=>wwv_flow_api.id(43129612090083404)
,p_validation_name=>'Salrarte  validation for tabular'
,p_validation_sequence=>70
,p_validation=>'SALERATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(56174274749843470)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'SALERATE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43162024091083449)
,p_tabular_form_region_id=>wwv_flow_api.id(43129612090083404)
,p_validation_name=>'Qty.  validation for tabular'
,p_validation_sequence=>80
,p_validation=>'APPRQNTY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(56174274749843470)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'APPRQNTY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43162434870083449)
,p_tabular_form_region_id=>wwv_flow_api.id(43129612090083404)
,p_validation_name=>'Compariso costrate and salerate  validation for tabular'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'sale VARCHAR2 (4000);',
'item VARCHAR2 (4000);',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f17.COUNT',
'   LOOP',
'    ',
'sale := apex_application.g_f20 (i);',
'item := apex_application.g_f17 (i);',
'if sale < item  then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Salerate cannot be less than itemrate''',
'            || sale',
'            ||''>'' ',
'            || item ',
'            ||apex_application.g_f17.COUNT;',
'end if;',
'   END LOOP;',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(43121614361083386)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'COSTRATE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43162796736083449)
,p_tabular_form_region_id=>wwv_flow_api.id(43129612090083404)
,p_validation_name=>'FACTRVAL'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'sale VARCHAR2 (4000);',
'item VARCHAR2 (4000);',
'BEGIN',
'select distinct SALEPERC',
'into sale',
'FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P111_TABULARITEMCODE ;',
'   FOR i IN 1 .. apex_application.g_f19.COUNT',
'   LOOP',
'item := apex_application.g_f19 (i);',
'if sale < item  then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Sale% cannot be less than sale percent in itemmaster''',
'            || sale',
'            ||''>'' ',
'            || item ',
'            ||apex_application.g_f19.COUNT;',
'end if;',
'   END LOOP;',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(56174274749843470)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'FACTRVAL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43238945411083581)
,p_name=>'change on customer id'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_CUSTOMERID'
,p_condition_element=>'P111_CUSTOMERID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43239375918083583)
,p_event_id=>wwv_flow_api.id(43238945411083581)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P111_CUSTOMERID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT distinct c.CUSTADR1,r.AREACODE,r.ZONLCODE,r.partycde,CUSTNAME',
'into :P111_CUSADDRESS,:P111_AREACODE,:P111_ZONE,:P111_PARTYCODE,:P111_CUSTOMERNAME',
'  FROM nmcusmas c, sycompty r',
' WHERE c.PARTYCDE = r.PARTYCDE(+) AND c.compcode = r.compcode',
'       AND c.compcode = :compcode',
'and c.CUSTMRID=:P111_CUSTOMERID;',
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
,p_attribute_02=>'P111_CUSTOMERID'
,p_attribute_03=>'P111_CUSADDRESS,P111_AREACODE,P111_ZONE,P111_PARTYCODE,P111_CUSTOMERNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43239812105083583)
,p_name=>'change on costcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_COSTCODE'
,p_condition_element=>'P111_COSTCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43240832828083584)
,p_event_id=>wwv_flow_api.id(43239812105083583)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P111_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.warecode,w.WAREDESC',
'into :P111_WARECODE,:P111_WAREHOUSENM',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P111_COSTCODE)',
'     AND costcode = :P111_COSTCODE',
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
'IF :P111_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct COSTDESC ',
'into :P111_COSTCENTERNAME',
'from syjobmas',
'where compcode = :compcode',
'AND costcode = :P111_COSTCODE;',
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
'IF :P111_COSTCODE IS NOT NULL and :P111_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT distinct SMANCODE',
'into :P111_SALMANID',
'        FROM nmsalrec',
'       WHERE docnumbr = :p111_docnumbr1',
'         AND DOCTDATE = :P111_DOCTDATE',
'         AND COSTCODE = :P111_COSTCODE;',
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
,p_attribute_02=>'P111_COSTCODE,P111_DOCNUMBR1,P111_DOCTDATE'
,p_attribute_03=>'P111_WARECODE,P111_COSTCENTERNAME,P111_SALMANID,P111_WAREHOUSENM'
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
 p_id=>wwv_flow_api.id(43240312895083583)
,p_event_id=>wwv_flow_api.id(43239812105083583)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P111_SALMANID,P111_SALMNNAME'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43241195386083584)
,p_name=>'change on itemcode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_ITEMCODE'
,p_condition_element=>'P111_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43241751740083584)
,p_event_id=>wwv_flow_api.id(43241195386083584)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P111_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P111_UNITOFMESURE,:P111_ITEMDESC,:P111_BRAND,:P111_MODAL,:P111_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P111_ITEMCODE;',
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
'IF :P111_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P111_SALPRICE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P111_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P111_ITEMCODE;',
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
'IF :P111_ITEMCODE1 IS NOT NULL and :P111_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) ',
'into :P111_QUENTITY',
'       from    nmsalrec s,(SELECT   SUM (d.trnsqnty) trnsqnty, d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE',
'                     FROM nmdevrec d',
'                     group by d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE) e',
'                     WHERE s.docnumbr = :p111_docnumbr1 AND s.itemcode = :p111_itemcode1',
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
,p_attribute_02=>'P111_ITEMCODE,P111_WARECODE,P111_ITEMCODE1,P111_DOCNUMBR1'
,p_attribute_03=>'P111_UNITOFMESURE,P111_ITEMDESC,P111_BRAND,P111_MODAL,P111_SALPRICE,P111_ISSUMTHD,P111_CLOSINGBALANCE,P111_QUENTITY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43242130290083584)
,p_name=>'change on trantype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_TRANTYPE'
,p_condition_element=>'P111_TRANTYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43242655771083586)
,p_event_id=>wwv_flow_api.id(43242130290083584)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select distinct PRDOCTYP,PRSUBTYP ',
'into :P111_REQREFTYPE,:P111_REQSUBTYPE',
'from nmwrkflw',
'where TRDOCTYP||TRSUBTYP=:P111_TRANTYPE',
'and COMPCODE=:COMPCODE;',
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
,p_attribute_02=>'P111_TRANTYPE'
,p_attribute_03=>'P111_REQREFTYPE,P111_REQSUBTYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43242969669083588)
,p_name=>'installment amount'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(57167381904097738)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43244026663083589)
,p_event_id=>wwv_flow_api.id(43242969669083588)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P111_PERINSTALL:=(:P111_INSTLLAMOUNT/:P111_INSTALLNO);',
'end;'))
,p_attribute_02=>'P111_INSTLLAMOUNT,P111_INSTALLNO'
,p_attribute_03=>'P111_PERINSTALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43243494569083589)
,p_event_id=>wwv_flow_api.id(43242969669083588)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var tt = window.document.getElementById(''P111_INSTALLNO'').value;',
' for(i=0;i<tt;i++)',
'{',
'var pp = ''f02_000''.concat(i+1);',
'javascript:apex.widget.tabular.addRow();',
'window.document.getElementById(pp).value = window.document.getElementById(''P111_PERINSTALL'').value;',
'',
'}'))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pp = f02_000.concat(i);',
'',
'.concat(f02_000.concat(i)).concat('')'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43244410482083589)
,p_name=>'on change amount'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_QUENTITY'
,p_condition_element=>'P111_QUENTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43244887753083589)
,p_event_id=>wwv_flow_api.id(43244410482083589)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P111_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43245464027083589)
,p_event_id=>wwv_flow_api.id(43244410482083589)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/05 14:26 (Formatter Plus v4.8.8) */',
'BEGIN',
'   :p111_amount := :p111_salprice * :p111_quentity;',
':P111_DISAMOUNT:=(:P111_AMOUNT*:P111_DISCPCNT)/100;',
':P111_NETAMOUNT:=nvl(:P111_AMOUNT,0)-nvl(:P111_DISAMOUNT,0);',
'END;'))
,p_attribute_02=>'P111_SALPRICE,P111_QUENTITY,P111_AMOUNT,P111_DISCPCNT,P111_DISAMOUNT'
,p_attribute_03=>'P111_AMOUNT,P111_DISAMOUNT,P111_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43245789641083589)
,p_name=>'on change discount percent'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_DISCPCNT'
,p_condition_element=>'P111_DISCPCNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43246268897083589)
,p_event_id=>wwv_flow_api.id(43245789641083589)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P111_DISAMOUNT:=(:P111_AMOUNT*:P111_DISCPCNT)/100;',
'end;'))
,p_attribute_02=>'P111_AMOUNT,P111_DISCPCNT'
,p_attribute_03=>'P111_DISAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43246699514083591)
,p_name=>'on change amount and disamount'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_DISAMOUNT'
,p_condition_element=>'P111_DISAMOUNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43247259448083591)
,p_event_id=>wwv_flow_api.id(43246699514083591)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P111_NETAMOUNT:=nvl(:P111_AMOUNT,0)-nvl(:P111_DISAMOUNT,0);',
'end;'))
,p_attribute_02=>'P111_AMOUNT,P111_DISAMOUNT'
,p_attribute_03=>'P111_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43247646460083591)
,p_name=>'query on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43248158730083591)
,p_event_id=>wwv_flow_api.id(43247646460083591)
,p_event_result=>'TRUE'
,p_action_sequence=>9
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:16 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :p111_itemcode1 IS NOT NULL AND :p111_docnumbr1 IS NOT NULL',
'   THEN',
'        SELECT s.compcode, s.docttype, s.subttype, s.docnumbr,',
'             s.doctdate, s.serlnumb, s.partycde, s.itemcode,',
'             s.smancode, s.commcode, s.itemdesc,',
'             s.itemlong, s.discpcnt, s.discamnt, s.salerate,',
'             s.custmrid, s.costcode, s.warecode, s.batchnum,',
'             s.msfcamnt, s.apprqnty, s.docnumbr',
'        INTO :p111_compcode, :p111_docttype, :p111_subttype, :p111_docnumbr,',
'             :p111_doctdate, :p111_serlnumb, :p111_partycode, :p111_itemcode,',
'             :p111_salmanid, :p111_unitofmesure,',
'             :p111_itemdesc, :p111_itemlong_1, :p111_discpcnt, :p111_disamount,',
'             :p111_salprice, :p111_customerid, :p111_costcode, :p111_warecode,',
'             :p111_batchnum, :p111_netamount, :p111_quentity , :P111_DOCNUMBR49',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p111_docnumbr1 AND s.itemcode = :p111_itemcode1;',
'   END IF;',
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
'END;',
'',
'BEGIN',
'   IF :p111_itemcode1 IS NOT NULL AND :p111_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT distinct TNSPRTYP,TRNSREGN,TNSCHSNO,DRIVNAME,DVNLIDNO,DVLICSNO,DELVLOCT',
'      into :p111_TNSPRTYP,:p111_TRNSREGN,:p111_TNSCHSNO,:p111_DRIVNAME,:p111_DVNLIDNO,:p111_DVLICSNO,:p111_DELVLOCT',
'        FROM nmdevrec ',
'        WHERE UPDOCNUM = :p111_docnumbr',
'      AND UPDOCDTE = :p111_doctdate',
'      and DOCTTYPE = ''GP''',
'      and SUBTTYPE=1;',
'   END IF;',
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
'END;',
'BEGIN',
'declare ',
'cunt number;',
'begin',
'select count(WARECODE)',
'into cunt',
'from sycstacc',
'where GRUPCODE=:APP_USER',
'and compcode = :compcode;',
'if cunt=1 then',
'SELECT  distinct w.costcode ,s.costdesc ',
'into :P111_COSTCODE,:P111_COSTCENTERNAME',
'    FROM nmwhsmas w, syjobmas s',
'   WHERE w.compcode = :compcode',
'     AND w.compcode = s.compcode',
'     AND w.costcode = s.costcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER);',
'                         ',
'end if;',
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
'end;',
'',
'END;',
'',
''))
,p_attribute_02=>'P111_DOCNUMBR1,P111_ITEMCODE1,P111_DOCNUMBR,P111_DOCTDATE'
,p_attribute_03=>'P111_COMPCODE,P111_DOCTTYPE,P111_SUBTTYPE,P111_DOCNUMBR,P111_DOCTDATE,P111_SERLNUMB,P111_PARTYCODE,P111_ITEMCODE,P111_SALMANID,P111_CUSTOMERID,P111_COSTCODE,P111_WARECODE,P111_BATCHNUM,P111_NETAMOUNT,P111_DOCNUMBR49,P111_TNSPRTYP,P111_TRNSREGN,P111_T'
||'NSCHSNO,P111_DRIVNAME,P111_DVNLIDNO,P111_DVLICSNO,P111_DELVLOCT,P111_COSTCENTERNAME,P111_COSTCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43248560301083591)
,p_name=>'change  on warecode'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43248982718083591)
,p_event_id=>wwv_flow_api.id(43248560301083591)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P111_WARECODE IS NOT NULL and :P111_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT a.itemcode',
'into :P111_ITEMCODE ',
'           FROM nmsalrec a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''APR''',
'            AND a.itemcode = b.itemcode',
'            and a.DOCNUMBR=:P111_DOCNUMBR1',
'           -- AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P111_WARECODE',
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
,p_attribute_02=>'P111_DOCNUMBR1,P111_WARECODE'
,p_attribute_03=>'P111_ITEMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43249439014083591)
,p_name=>'change on batchnum'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43249961901083592)
,p_event_id=>wwv_flow_api.id(43249439014083591)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P111_ITEMCODE IS NOT NULL and :P111_DOCNUMBR is not null',
'   THEN',
'      BEGIN',
' SELECT  batchnum d',
'into :P111_BATCHNUM',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmsalrec w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P111_ITEMCODE',
'                      AND w.warecode = :P111_WARECODE',
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
,p_attribute_02=>'P111_ITEMCODE,P111_DOCNUMBR,P111_WARECODE'
,p_attribute_03=>'P111_BATCHNUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43250279291083592)
,p_name=>'change  on itemcode1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_ITEMCODE1'
,p_condition_element=>'P111_ITEMCODE1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43250847220083592)
,p_event_id=>wwv_flow_api.id(43250279291083592)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P111_ITEMCODE1 IS NOT NULL and :P111_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
' SELECT s.PAMTMODE,s.DOCTTYPE||s.SUBTTYPE,s.DOCNUMBR',
'        INTO :P111_SALESTYPE,:P111_TRANTYPE,:P111_DOCNUMBR49',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p111_docnumbr1 AND s.itemcode = :p111_itemcode1;',
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
,p_attribute_02=>'P111_DOCNUMBR1,P111_ITEMCODE1'
,p_attribute_03=>'P111_SALESTYPE,P111_TRANTYPE,P111_DOCNUMBR49'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43251170924083592)
,p_name=>'showhide stats'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(56174498607843470)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'parseInt(window.document.getElementById(''P111_S_H_REGION'').value) == 1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43251723792083592)
,p_event_id=>wwv_flow_api.id(43251170924083592)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.document.getElementById(''P111_S_H_REGION'').value = 1;',
'window.document.getElementById(''TR'').style.display="none";',
'window.document.getElementById(''IR'').style.display="block";',
'window.document.getElementById(''SR'').style.display="block";',
'apex.item( "BUT_CRT_TAB" ).show();   ',
'--apex.item( "BUT_CRT_FRM" ).hide();',
'/*window.document.getElementById(''BUT_CRT_FRM'').style.display="block";',
'window.document.getElementById(''BUT_CRT_TAB'').style.display="none";*/',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43252227935083592)
,p_event_id=>wwv_flow_api.id(43251170924083592)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if( parseInt(window.document.getElementById(''P111_S_H_REGION'').value) == 1)',
'{',
'window.document.getElementById(''TR'').style.display="block";',
'window.document.getElementById(''IR'').style.display="none";',
'window.document.getElementById(''SR'').style.display="none";',
'--apex.item( "BUT_CRT_FRM" ).show();   ',
'apex.item( "BUT_CRT_TAB" ).hide();',
'/*window.document.getElementById(''BUT_CRT_FRM'').style.display="none";',
'window.document.getElementById(''BUT_CRT_TAB'').style.display="block";*/',
'window.document.getElementById(''P111_S_H_REGION'').value = 0;',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43252580428083592)
,p_name=>'show_hide'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_S_H_REGION'
,p_condition_element=>'P111_S_H_REGION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43254653961083594)
,p_event_id=>wwv_flow_api.id(43252580428083592)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(43129612090083404)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43253605812083592)
,p_event_id=>wwv_flow_api.id(43252580428083592)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(43166762251083461)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43254133208083594)
,p_event_id=>wwv_flow_api.id(43252580428083592)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(43129612090083404)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43253074918083592)
,p_event_id=>wwv_flow_api.id(43252580428083592)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(43166762251083461)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43254997525083594)
,p_name=>'add rows javascript'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43255542263083594)
,p_event_id=>wwv_flow_api.id(43254997525083594)
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
 p_id=>wwv_flow_api.id(43255904252083594)
,p_name=>'disable  field on tabular item'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43256433295083594)
,p_event_id=>wwv_flow_api.id(43255904252083594)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' $(''input[name="f02"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f02"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f02"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f15"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f15"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f15"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f18"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f18"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f18"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f22"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f22"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f22"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f26"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f26"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f26"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f17"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f17"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f17"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f27"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f27"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f27"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43256788781083594)
,p_name=>'on change tabular itemcode'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_TABULARITEMCODE'
,p_condition_element=>'P111_TABULARITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43257321320083594)
,p_event_id=>wwv_flow_api.id(43256788781083594)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P111_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct LUOMCODE,ITEMDES1,ITEMTYPE,SALEPERC,COMMGRUP',
'into :P111_tabitemunit,:P111_TABITEMDESC,:P111_TABITEMTYPE,:P111_TABSALEPERC,:P111_TABCOMMGRUP',
'FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P111_TABULARITEMCODE ;',
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
'IF :P111_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct ITEMRATE',
'into :P111_TABITEMRATE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P111_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P111_TABULARITEMCODE;',
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
'IF :P111_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P111_TABCOSTRATE',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P111_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P111_TABULARITEMCODE;',
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
'IF :P111_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P111_TABCLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P111_WARECODE',
'            AND b.itemcode =:P111_TABULARITEMCODE',
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
,p_attribute_02=>'P111_TABULARITEMCODE'
,p_attribute_03=>'P111_TABCOMMGRUP,P111_TABSALEPERC,P111_TABITEMTYPE,P111_TABCOSTRATE,P111_TABITEMDESC,P111_TABCLOSINGBALANCE,P111_TABITEMRATE,P111_TABITEMUNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43257696629083594)
,p_name=>'on page load for hide region default on tabular '
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43258169960083595)
,p_event_id=>wwv_flow_api.id(43257696629083594)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P111_S_H_REGION:=0;',
'end;'))
,p_attribute_02=>'P111_S_H_REGION'
,p_attribute_03=>'P111_S_H_REGION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43258677208083595)
,p_event_id=>wwv_flow_api.id(43257696629083594)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43259154367083595)
,p_name=>'on page load for skillbuilders lov field'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43259656808083595)
,p_event_id=>wwv_flow_api.id(43259154367083595)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:24 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :p111_itemcode1 IS NOT NULL AND :p111_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT s.smancode, s.costcode, s.custmrid,s.itemcode,s.batchnum',
'        INTO :p111_lovsalmanid, :p111_lovcostcode, :p111_lovcustomerid,:P111_LOVITEMCODE,:P111_LOVBATCHNO',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p111_docnumbr1 AND s.itemcode = :p111_itemcode1;',
'   END IF;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>'P37_DOCNUMBR1,P37_ITEMCODE1'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43260001914083595)
,p_name=>'change on batchnum'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_BATCHNUM'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43260470328083595)
,p_event_id=>wwv_flow_api.id(43260001914083595)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P111_BATCHNUM IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P111_CLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P111_WARECODE',
'            AND b.itemcode =:P111_TABULARITEMCODE',
'            and b.BATCHNUM =:P111_BATCHNUM',
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
''))
,p_attribute_02=>'P111_WARECODE,P111_TABULARITEMCODE,P111_BATCHNUM'
,p_attribute_03=>'P111_CLOSINGBALANCE'
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43260868418083595)
,p_name=>'clear on itemcode'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43261466664083595)
,p_event_id=>wwv_flow_api.id(43260868418083595)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P111_BATCHNUM,P111_DISCPCNT,P111_DISAMOUNT,P111_NETAMOUNT,P111_QUENTITY,P111_CLOSINGBALANCE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43261845755083595)
,p_name=>'change  on salmancode'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_SALMANID'
,p_condition_element=>'P111_SALMANID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43262281721083595)
,p_event_id=>wwv_flow_api.id(43261845755083595)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P111_SALMANID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.SMANNAME',
'into :P111_SALMNNAME',
'    FROM nmsmnmas  w',
'   WHERE w.compcode = :compcode',
'     AND w.SMANCODE =:P111_SALMANID;',
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
,p_attribute_02=>'P111_SALMANID'
,p_attribute_03=>'P111_SALMNNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43262684108083595)
,p_name=>'clear  for docnum49'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43122398136083386)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43263221670083595)
,p_event_id=>wwv_flow_api.id(43262684108083595)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P111_DOCNUMBR49'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43263663090083595)
,p_name=>'click on delivery challan'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43123200942083386)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43264111357083595)
,p_event_id=>wwv_flow_api.id(43263663090083595)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$( "#P111_ERRMSG" ).dialog({',
'       minWidth:430,',
'        minHeight:200,',
'      modal: true,',
'      buttons: {',
'        Close: function() {',
'$( this ).dialog( "Ok" );',
'$( this ).dialog( "close" );',
'        }',
'      }',
'    });'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43264562077083595)
,p_name=>'click for delivery'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43123200942083386)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43265015760083595)
,p_event_id=>wwv_flow_api.id(43264562077083595)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'beforeInsert();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43265429343083597)
,p_name=>'change on orderno from sales offer'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_ORDERNO'
,p_condition_element=>'P111_ORDERNO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43265921238083597)
,p_event_id=>wwv_flow_api.id(43265429343083597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:16 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :P111_ORDERNO IS NOT NULL',
'   THEN',
'      SELECT s.compcode, s.docttype, s.subttype, s.docnumbr,',
'             s.doctdate, s.serlnumb, s.partycde, s.itemcode,',
'             s.smancode, s.commcode, s.itemdesc,',
'             s.itemlong, s.discpcnt, s.discamnt, s.salerate,',
'             s.custmrid, s.costcode, s.warecode, s.batchnum,',
'             s.msfcamnt, s.apprqnty',
'        INTO :p111_compcode, :p111_docttype, :p111_subttype, :p111_docnumbr,',
'             :p111_doctdate, :p111_serlnumb, :p111_partycode, :p111_itemcode,',
'             :p111_salmanid, :p111_unitofmesure,',
'             :p111_itemdesc, :p111_itemlong_1, :p111_discpcnt, :p111_disamount,',
'             :p111_salprice, :p111_customerid, :p111_costcode, :p111_warecode,',
'             :p111_batchnum, :p111_netamount, :p111_quentity ',
'        FROM nmslsofr s',
'       WHERE s.docnumbr = :P111_ORDERNO;',
'   END IF;',
'END;'))
,p_attribute_02=>'P111_ORDERNO'
,p_attribute_03=>'P111_COMPCODE,P111_DOCTTYPE,P111_SUBTTYPE,P111_DOCNUMBR,P111_DOCTDATE,P111_SERLNUMB,P111_PARTYCODE,P111_ITEMCODE,P111_SALMANID,P111_UNITOFMESURE,P111_ITEMDESC,P111_ITEMLONG_1,P111_DISCPCNT,P111_DISAMOUNT,P111_SALPRICE,P111_CUSTOMERID,P111_COSTCODE,P1'
||'11_WARECODE,P111_BATCHNUM,P111_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43266347691083597)
,p_name=>'change on javascript on tabular form'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_ORDERNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43266780734083597)
,p_event_id=>wwv_flow_api.id(43266347691083597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function lpad_num (n, length)',
'{',
'    var str = (n > 0 ? n : -n) + "";',
'    var zeros = "";',
'    for (var i = length - str.length; i > 0; i--)',
'        zeros += "0";',
'    zeros += str;',
'    return n >= 0 ? zeros : "-" + zeros;',
'}',
'',
'var i = $(''[name="f20"]'').length;',
'',
'for ( var j = 1; j <= i; j++ ) {',
'$(''#f20_'' + lpad_num(j,4)).val(5000);',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43267237350083597)
,p_name=>'add row on manual tabular form'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(56923592170700272)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43267708510083597)
,p_event_id=>wwv_flow_api.id(43267237350083597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(43175558764083474)
,p_attribute_01=>'addrow(''empTable'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43268133018083597)
,p_name=>'change on customer type'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_CUSTOMTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43268617529083597)
,p_event_id=>wwv_flow_api.id(43268133018083597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P111_CUSTOMERID,P111_CUSTOMERNAME'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43238059576083572)
,p_name=>'Tabular form freeze'
,p_event_sequence=>340
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(43129612090083404)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43238521451083577)
,p_event_id=>wwv_flow_api.id(43238059576083572)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#report_VH_SCROLL_EMP").htmldbDscroll({freezeColumns:2});'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43163121011083449)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(43129612090083404)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMSALREC'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(57156098173097719)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43165531580083458)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(43129612090083404)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMSALREC'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43121974910083386)
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43237624228083570)
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
'          subttype = :p111_subttype,',
'          docnumbr = :p111_docnumbr,',
'          doctdate = :p111_doctdate,',
'          serlnumb = :p111_serlnumb,',
'          partycde = :p111_partycode,',
'          smancode = :p111_salmanid,',
'          raisedby = ''RILADM'',',
'          apprvdby = ''RILADM'',',
'          apprdate = NULL,',
'          reqddate = NULL,',
'          commcode = :p111_unitofmesure,',
'          itemcode = :p111_itemcode,',
'          itemtype = ''S'',',
'          itemdesc = :p111_itemdesc,',
'          itemlong = :p111_itemdesc,',
'          itemrate = NULL,',
'          markpcnt = NULL,',
'          discpcnt = :p111_discpcnt,',
'          discamnt = :p111_disamount,',
'          spldispc = NULL,',
'          spldisnt = NULL,',
'          salerate = :p111_salprice,',
'          huomcode = NULL,',
'          factrval = NULL,',
'          luomcode = NULL,',
'          orgnqnty = :p111_quentity,',
'          apprqnty = :p111_quentity,',
'          trnsqnty = NULL,',
'          msfcamnt = :p111_netamount,',
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
'          costcode = :p111_costcode,',
'          warecode = :p111_warecode,',
'          postflag = NULL,',
'          prntflag = NULL,',
'          pricflag = NULL,',
'          statuscd = :p111_statuscd,',
'          oprstamp = :APP_USER,',
'          timstamp = :p111_timstamp,',
'          procflag = NULL,',
'          trnsqty2 = NULL,',
'          batchnum = :p111_batchnum,',
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
'          custmrid = :p111_customerid,',
'          termscod = NULL,',
'          costrate = NULL,',
'          salertef = NULL,',
'          othecost = NULL,',
'          deliverd = NULL,',
'          salrecfk = NULL,',
'          pricremk = NULL,',
'          pamtmode = :p111_salestype,',
'          othramnt = NULL,',
'          vatprsnt = NULL,',
'          vatamont = NULL,',
'          totdispt = NULL,',
'          totdisam = NULL',
'    WHERE docnumbr = :p111_docnumbr',
'      AND doctdate = :p111_doctdate',
'      AND itemcode = :p111_itemcode;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(57156098173097719)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Update Successfully................'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43165164754083457)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(43129612090083404)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process Insert  nmsalrec  for multiple  tabular form'
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
'             deliverd, salrecfk, pricremk, pamtmode, DELCCODE, DELWCODE,',
'             TOTDISAM',
'            )',
'     VALUES (:P111_COMPCODE_APPLICATION,:P111_DOCTTYPE,:P111_SUBTTYPE, :P111_DOCNUMBR, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''), :SERLNUMB,',
'             :P111_PARTYCODE, :P111_SALMANID, NULL , :APP_USER, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''), NULL,',
'             :COMMCODE, :ITEMCODE, :P111_TABITEMTYPE, :ITEMDESC, :ITEMDESC, :ITEMRATE,',
'             NULL, :discpcnt, :discamnt,NULL, NULL, :salerate,',
'             :luomcode, :factrval, :luomcode, :apprqnty, :apprqnty, :apprqnty,',
'             :msfcamnt, ''BDT'', 1, :msfcamnt, NULL, NULL,',
'             NULL, NULL, NULL, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''), :SERLNUMB, :remarkss,',
'             :P111_COSTCODE, :P111_WARECODE, NULL, NULL, NULL, ''APR'',',
'             :APP_USER, SYSDATE, :batchnum, NULL, NULL, NULL,',
'             NULL, NULL, NULL, NULL, NULL, NULL,',
'             NULL, :P111_CUSTOMERID,NULL, :COSTRATE, NULL, NULL,',
' ''N'', NULL, NULL,:P111_SALESTYPE,:P111_COSTCODE, :P111_WARECODE,',
':P111_TABTOTDISAM',
'            );',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43121614361083386)
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'Record generate successfully<br>Sales Invoice No. : &P111_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43237252160083570)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into actrndtl from tabular form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'Dpr_Nmpost_Sales',
'                                            (',
'                                        :P111_COMPCODE_APPLICATION, :P111_DOCTTYPE,',
'                                 :P111_SUBTTYPE,:P111_DOCNUMBR,:P111_DOCTDATE',
'                                            );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43121614361083386)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43236819322083570)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into stkrec for tabular form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cur_qty 	Nmsalrec.orgnqnty%type;  ',
'  run_srl 	Nmsalrec.serlnumb%type := 0;',
'  iss_docno	Nmstkrec.docnumbr%type;',
'  cst_cde		Nmstkrec.costcode%type;',
'  ',
'	Cursor C1 is ',
'	Select * from nmsalrec',
'	where compcode = :P111_COMPCODE_APPLICATION',
'	  and docttype = :P111_DOCTTYPE',
'	  and subttype = :P111_SUBTTYPE',
'	  and docnumbr = :P111_DOCNUMBR',
'	  and doctdate = :P111_DOCTDATE;',
'',
'BEGIN',
'		Begin',
'			Select costcode into cst_Cde ',
'			  from nmwhsmas',
'			 where compcode = :P111_COMPCODE_APPLICATION',
'			   and warecode = :P111_WARECODE;',
'		Exception',
'			When no_data_found then',
'			null;',
'When too_many_rows then',
'			null;',
'When others then',
'			null;',
'          --  Raise form_trigger_Failure;',
'        End;',
' For i in c1 Loop',
'           run_Srl := run_srl + 1;',
'    ',
'    ',
'    Insert into nmstkrec ',
'                (COMPCODE      ,DOCTTYPE  ,SUBTTYPE  ,DOCNUMBR  ,DOCTDATE                      ,',
'                 SERLNUMB      ,PARTYCDE  ,RAISEDBY  ,APPRVDBY  ,APPRDATE                      ,',
'                 REQDDATE      ,COMMCODE  ,ITEMCODE  ,ITEMTYPE  ,MCSERIAL                      ,',
'                 ITEMDESC      ,ITEMLONG  ,ITEMRATE  ,DISCPCNT  ,DISCAMNT                      ,',
'                 SPLDISPC      ,SPLDISNT  ,SALERATE  ,HUOMCODE  ,FACTRVAL                      ,',
'                 LUOMCODE      ,ORGNQNTY  ,APPRQNTY  ,MSFCAMNT  ,CURRCODE                      ,',
'                 EXCGRATE      ,MSLCAMNT  ,REFNUMBR  ,REFNDATE  ,UPDOCTYP                      ,',
'                 UPSUBTYP      ,UPDOCNUM  ,UPDOCDTE  ,UPDOCSRL  ,REMARKSS                      ,',
'                 COSTCODE      ,WARECODE  ,STATUSCD  ,OPRSTAMP                        ,',
'                 BATCHNUM      ,NORMRATE ,COSTRATE   ,TRNSQNTY)',
'    ',
'    Values(:P111_COMPCODE_APPLICATION,:P111_DOCTTYPE ,:P111_SUBTTYPE,:P111_DOCNUMBR,:P111_DOCTDATE,',
'                 run_srl       ,i.partycde,i.RAISEDBY,i.APPRVDBY    ,i.APPRDATE                ,',
'                 i.REQDDATE    ,i.COMMCODE,i.ITEMCODE,i.ITEMTYPE    ,i.MCSERIAL                ,',
'                 i.ITEMDESC    ,i.ITEMLONG,i.ITEMRATE,i.DISCPCNT    ,i.DISCAMNT                ,',
'                 i.SPLDISPC    ,i.SPLDISNT,i.SALERATE,i.HUOMCODE    ,i.FACTRVAL                ,',
'                 i.LUOMCODE    ,i.orgnqnty,i.apprqnty,i.MSFCAMNT    ,i.CURRCODE, ',
'                 i.EXCGRATE    ,i.MSLCAMNT,i.REFNUMBR,i.REFNDATE    ,i.DOCTTYPE   , ',
'                 i.SUBTTYPE    ,i.DOCNUMBR,i.DOCTDATE,i.SERLNUMB    ,i.REMARKSS                ,',
'                 :P111_COSTCODE,:P111_WARECODE,''APR'' ,:APP_USER           ,',
'                 i.BATCHNUM    ,i.itemrate,i.COSTRATE,i.TRNSQNTY);',
'--',
' End Loop;',
' COMMIT;',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43121614361083386)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43164692902083450)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(43129612090083404)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into nmdevrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2015/01/05 17:28 (Formatter Plus v4.8.8) */',
'BEGIN',
'   INSERT INTO nmdevrec',
'               (compcode, docttype, subttype,',
'                docnumbr,',
'                doctdate,',
'                serlnumb, partycde, smancode, raisedby,',
'                apprvdby,',
'                apprdate,',
'                reqddate,',
'                commcode, itemcode, itemtype, itemdesc, itemlong,',
'                itemrate, markpcnt, discpcnt, discamnt, spldispc, spldisnt,',
'                salerate, huomcode, factrval, luomcode, orgnqnty,',
'                apprqnty, trnsqnty, msfcamnt, currcode, excgrate,',
'                mslcamnt, refnumbr,',
'                refndate,',
'                updoctyp, upsubtyp, updocnum, updocdte, updocsrl, remarkss,',
'                costcode, warecode, postflag, prntflag, pricflag, statuscd,',
'                oprstamp, timstamp, batchnum, bankname,',
'                custmrid, termscod, costrate,TNSPRTYP, TRNSREGN,TNSCHSNO,DRIVNAME,DVNLIDNO,DVLICSNO,DELVLOCT',
'               )',
'        VALUES (:p111_compcode_application, :P111_DEVDOCTTYPE, :P111_DEVSUBTTYPE,',
'                :P111_DEVDOCNUMBR,',
'                TO_DATE (TO_CHAR (SYSDATE, ''DD-MM-YYYY''), ''DD-MM-YYYY''),',
'                :serlnumb, :p111_partycode, :p111_salmanid, :app_user,',
'                :app_user,',
'                TO_DATE (TO_CHAR (SYSDATE, ''DD-MM-YYYY''), ''DD-MM-YYYY''),',
'                TO_DATE (TO_CHAR (SYSDATE, ''DD-MM-YYYY''), ''DD-MM-YYYY''),',
'                :luomcode, :itemcode, :itemtype, :itemdesc, :itemdesc,',
'                :itemrate, NULL, :discpcnt, :discamnt, NULL, NULL,',
'                :salerate, :luomcode, :p111_factrval, :luomcode, :apprqnty,',
'                :apprqnty, NULL, :msfcamnt, :p111_currcode, :p111_excgrate,',
'                :msfcamnt, NULL,',
'                TO_DATE (TO_CHAR (SYSDATE, ''DD-MM-YYYY''), ''DD-MM-YYYY''),',
'                :P111_DOCTTYPE, :P111_SUBTTYPE, :P111_DOCNUMBR, ',
'                TO_DATE (TO_CHAR (SYSDATE, ''DD-MM-YYYY''), ''DD-MM-YYYY''), ',
'                NULL, :remarkss,',
'                :p111_costcode, :p111_warecode, NULL, NULL, NULL, ''NEW'',',
'                :app_user, SYSDATE, :batchnum, NULL,',
'                :p111_customerid, NULL, :salerate,:P111_TNSPRTYP,:P111_TRNSREGN,:P111_TNSCHSNO,:P111_DRIVNAME,:P111_DVNLIDNO,:P111_DVLICSNO,:P111_DELVLOCT',
'               );',
'END;',
'BEGIN',
'   INSERT INTO nmdevrec',
'               (compcode, docttype, subttype,',
'                docnumbr,',
'                doctdate,',
'                serlnumb, partycde, smancode, raisedby,',
'                apprvdby,',
'                apprdate,',
'                reqddate,',
'                commcode, itemcode, itemtype, itemdesc, itemlong,',
'                itemrate, markpcnt, discpcnt, discamnt, spldispc, spldisnt,',
'                salerate, huomcode, factrval, luomcode, orgnqnty,',
'                apprqnty, trnsqnty, msfcamnt, currcode, excgrate,',
'                mslcamnt, refnumbr,',
'                refndate,',
'                updoctyp, upsubtyp, updocnum, updocdte, updocsrl, remarkss,',
'                costcode, warecode, postflag, prntflag, pricflag, statuscd,',
'                oprstamp, timstamp, batchnum, bankname,',
'                custmrid, termscod, costrate,TNSPRTYP, TRNSREGN,TNSCHSNO,DRIVNAME,DVNLIDNO,DVLICSNO,DELVLOCT',
'               )',
'        VALUES (:p111_compcode_application, :P111_GATDOCTTYPE, :P111_GATSUBTTYPE,',
'                :P111_GATDOCNUMBR,',
'                TO_DATE (TO_CHAR (SYSDATE, ''DD-MM-YYYY''), ''DD-MM-YYYY''),',
'                :serlnumb, :p111_partycode, :p111_salmanid, :app_user,',
'                :app_user,',
'                TO_DATE (TO_CHAR (SYSDATE, ''DD-MM-YYYY''), ''DD-MM-YYYY''),',
'                TO_DATE (TO_CHAR (SYSDATE, ''DD-MM-YYYY''), ''DD-MM-YYYY''),',
'                :luomcode, :itemcode, :itemtype, :itemdesc, :itemdesc,',
'                :itemrate, NULL, :discpcnt, :discamnt, NULL, NULL,',
'                :salerate, :luomcode, :p111_factrval, :luomcode, :apprqnty,',
'                :apprqnty, NULL, :msfcamnt, :p111_currcode, :p111_excgrate,',
'                :msfcamnt, NULL,',
'                TO_DATE (TO_CHAR (SYSDATE, ''DD-MM-YYYY''), ''DD-MM-YYYY''),',
'                :P111_DOCTTYPE, :P111_SUBTTYPE, :P111_DOCNUMBR, ',
'                TO_DATE (TO_CHAR (SYSDATE, ''DD-MM-YYYY''), ''DD-MM-YYYY''), ',
'                NULL, :remarkss,',
'                :p111_costcode, :p111_warecode, NULL, NULL, NULL, ''NEW'',',
'                :app_user, SYSDATE, :batchnum, NULL,',
'                :p111_customerid, NULL, :salerate,:P111_TNSPRTYP,:P111_TRNSREGN,:P111_TNSCHSNO,:P111_DRIVNAME,:P111_DVNLIDNO,:P111_DVLICSNO,:P111_DELVLOCT',
'               );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'no insert into nmdevrec'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43121614361083386)
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>Delivery challan No. : &P111_DEVDOCNUMBR.',
'<br>Gatepass No. : &P111_GATDOCNUMBR.'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43236431267083570)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update into nmdevrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   UPDATE nmdevrec',
'      SET TNSPRTYP = :p111_TNSPRTYP,',
'          TRNSREGN = :p111_TRNSREGN,',
'          TNSCHSNO = :p111_TNSCHSNO,',
'          DRIVNAME = :p111_DRIVNAME,',
'          DVNLIDNO = :p111_DVNLIDNO,',
'          DVLICSNO = :p111_DVLICSNO,',
'          DELVLOCT = :p111_DELVLOCT',
'    WHERE UPDOCNUM = :p111_docnumbr',
'      AND UPDOCDTE = :p111_doctdate',
'      and DOCTTYPE = ''GP''',
'      and SUBTTYPE=1;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(57156098173097719)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43236013253083569)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update and insert from manual tabular form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- update EMP',
'--',
'for i in 1..htmldb_application.g_f01.count',
'loop    ',
'    ',
'',
'        if htmldb_application.g_f02(i) is not null then     ',
'              insert into nmpmtdtl',
'          (COMPCODE,',
'           DOCTTYPE,',
'           SUBTTYPE,',
'           DOCNUMBR,',
'           TRANTYPE,',
'           DOCTDATE,',
'           SERLNUMB,',
'           OPRSTAMP,',
'           TIMSTAMP)',
'          values',
'          (:compcode,',
'           htmldb_application.g_f02(i),',
'           htmldb_application.g_f03(i),',
'           htmldb_application.g_f04(i),',
'           replace(htmldb_application.g_f05(i),''%''||''null%'',NULL),',
'           htmldb_application.g_f06(i),',
'           htmldb_application.g_f09(i),',
'           htmldb_application.g_f07(i),',
'           htmldb_application.g_f08(i));',
'        end if;    ',
'',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(57078969743252195)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Record generate successfully<br>Payment No. : &P111_PMTDOCNUM.'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_insertcount   NUMBER := 0;',
'   v_updatecount   NUMBER := 0;',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f31.COUNT                         -- EMPNO',
'   LOOP',
'      IF     apex_application.g_f33 (i) IS NOT NULL                   -- CHECKSUM FIELD',
'         AND wwv_flow_item.md5 (apex_application.g_f32 (i)            -- ENAME',
'                                                          ,',
'                                apex_application.g_f34 (i)            -- JOB',
'                                                          ,',
'                                apex_application.g_f35 (i)            -- SAL',
'                               ) <> apex_application.g_f33 (i)',
'      THEN',
'         UPDATE emp_garbage',
'            SET ename = apex_application.g_f32 (i),',
'                job = apex_application.g_f34 (i),',
'                sal = apex_application.g_f35 (i)',
'          WHERE empno = apex_application.g_f31 (i);',
'',
'         v_updatecount := v_updatecount + 1;',
'      ELSIF     apex_application.g_f33 (i) IS NULL',
'            AND (   apex_application.g_f32 (i) IS NOT NULL            -- ENAME',
'                 OR apex_application.g_f34 (i) IS NOT NULL            -- JOB',
'                 OR apex_application.g_f35 (i) IS NOT NULL            -- SAL',
'                )',
'      THEN',
'         INSERT INTO emp_garbage',
'                     (ename,',
'                      job,',
'                      sal',
'                     )',
'              VALUES (apex_application.g_f32 (i)                      -- ENAME',
'                                                ,',
'                      apex_application.g_f34 (i)                      -- JOB',
'                                                ,',
'                      apex_application.g_f35 (i)                      -- SAL',
'                     );',
'',
'         v_insertcount := v_insertcount + 1;',
'      END IF;',
'   END LOOP;',
'',
'   :p170_detail_insert_cnt := v_insertcount;',
'   :p170_detail_update_cnt := v_updatecount;',
'END;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43235567701083569)
,p_process_sequence=>11
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre  insert on nmsalrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
':P111_COMPCODE:=:COMPCODE;',
':P111_OPRSTAMP:=:APP_USER;',
':P111_TIMSTAMP:=sysdate;',
':P111_DOCTTYPE:=substr(:P111_TRANTYPE,1,2);',
':P111_SUBTTYPE:=substr(:P111_TRANTYPE,3,1);',
':P111_SERLNUMB:=''000001'';',
':P111_STATUSCD:=''APR'';',
':P111_MSFCAMNT:=(nvl(:P111_SALPRICE,0)*nvl(:P111_QUENTITY,0))-nvl(:P111_DISCPCNT,0);',
'docnumber_generation(:compcode, :modlcode, :P111_DOCTTYPE,',
'                        :P111_SUBTTYPE, sysdate  ,null,',
'                        :modlcode, newno);',
' ',
':P111_DOCNUMBR:= newno;  ',
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
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43163931376083450)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(43129612090083404)
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
,p_process_when_button_id=>wwv_flow_api.id(43121614361083386)
,p_exec_cond_for_each_row=>'Y'
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
 p_id=>wwv_flow_api.id(43164358819083450)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(43129612090083404)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process for multiple tabular form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
':P111_DOCTTYPE:=substr(:P111_TRANTYPE,1,2);',
':P111_SUBTTYPE:=substr(:P111_TRANTYPE,3,1);',
'docnumber_generation(:P111_COMPCODE_APPLICATION, ''NM'', :P111_DOCTTYPE,',
'                       :P111_SUBTTYPE, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''),null,',
'                        ''NM'', newno);',
' ',
':P111_DOCNUMBR:= newno;  ',
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
,p_process_when_button_id=>wwv_flow_api.id(43121614361083386)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43163541735083450)
,p_process_sequence=>120
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(43129612090083404)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert for nmdevrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'gatnewno varchar2(10);',
'begin',
':P111_DEVDOCTTYPE:=''DC'';',
':P111_DEVSUBTTYPE:=1;',
'docnumber_generation(''100'', ''NM'', ''DC'',',
'                        1, sysdate  ,null,',
'                        ''NM'', newno);',
' ',
':P111_DEVDOCNUMBR:= newno;  ',
'',
':P111_GATDOCTTYPE:=''GP'';',
':P111_GATSUBTTYPE:=1;',
'docnumber_generation(''100'', ''NM'', ''GP'',',
'                        1, sysdate  ,null,',
'                        ''NM'', gatnewno);',
' ',
':P111_GATDOCNUMBR:= gatnewno;  ',
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
,p_process_when_button_id=>wwv_flow_api.id(43121614361083386)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43235179152083569)
,p_process_sequence=>150
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert into NMPMTDTL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
':P111_PMTDOCTYP:=''RE'';',
':P111_PMTSUBTYP:=1;',
'docnumber_generation(:compcode, ''NM'', :P111_PMTDOCTYP,',
'                       :P111_PMTSUBTYP, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''),null,',
'                        ''NM'', newno);',
' ',
':P111_PMTDOCNUM:= newno;  ',
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
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
