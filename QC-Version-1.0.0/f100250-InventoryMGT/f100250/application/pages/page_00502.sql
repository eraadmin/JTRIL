prompt --application/pages/page_00502
begin
--   Manifest
--     PAGE: 00502
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
 p_id=>502
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Production Request'
,p_page_mode=>'MODAL'
,p_step_title=>'Production Request'
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
'for (i = 0; i <=vRow; i++)',
'{',
'var y= pad(i-1, 4);',
'var tmp= ''f47_''.concat(y);',
' //   alert(html_GetElement(tmp).value);',
'  //  var t=html_GetElement(''f47_''+vRow).value;',
'html_GetElement(''f02_''+vRow).value = i+0;',
'html_GetElement(''f47_''+vRow).value =Number(html_GetElement(tmp).value)+1;',
'   // alert(t);',
'};',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal1(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f25_''+vRow).value =',
'   Number(html_GetElement(''f21_''+vRow).value).toFixed(2) *',
'    Number(html_GetElement(''f23_''+vRow).value).toFixed(2);',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal2(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f29_''+vRow).value =',
'   Number(html_GetElement(''f21_''+vRow).value).toFixed(2) *',
'    Number(html_GetElement(''f28_''+vRow).value).toFixed(2);',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal3(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P502_TABULARITEMCODE'').value=',
'    html_GetElement(''f13_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P502_TABULARITEMCODE'').trigger(''click'');',
'});',
'html_GetElement(''f12_''+vRow).value=',
'document.getElementById(''P502_TABITEMTYPE'').value;',
'html_GetElement(''f14_''+vRow).value=',
'document.getElementById(''P502_TABITEMDESC'').value;',
'html_GetElement(''f15_''+vRow).value=',
'document.getElementById(''P502_TABITEMDESC'').value;',
'html_GetElement(''f20_''+vRow).value=',
'document.getElementById(''P502_TABITEMRATE'').value;',
'html_GetElement(''f18_''+vRow).value=',
'document.getElementById(''P502_TABCOMMGRUP'').value;',
'html_GetElement(''f22_''+vRow).value=',
'document.getElementById(''P502_TABITEMUNIT'').value;',
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
'  $x(''P502_TABTOTDISAM'').value = $total;',
' }',
'</script>',
'',
'<script>',
'function abc()',
'{',
'doSubmit(''XYZ'') //here XYZ is the name of request which helps to call plsql procedure..you can use request name according to you.',
'}',
'</script>',
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
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body .ui-dialog .ui-dialog-title {',
'    color: #3d3d3d;',
'    margin-left: 50%;',
'}'))
,p_dialog_chained=>'N'
,p_overwrite_navigation_list=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180814105104'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(123201745145025640)
,p_plug_name=>' <font color="chartreuse">&P502_DISPLAY.</font>'
,p_region_name=>'stock_type'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>'&P88_DISPLAY.'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(123205767996025661)
,p_plug_name=>'Order and Booking Details'
,p_parent_plug_id=>wwv_flow_api.id(123201745145025640)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P502_TRANTYPE'
,p_plug_display_when_cond2=>'SI2'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(123207170155025666)
,p_plug_name=>' <font color="chartreuse">&P502_DISPLAY.</font>'
,p_region_name=>'REPORT_DEPT'
,p_parent_plug_id=>wwv_flow_api.id(123201745145025640)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noUI:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>180
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(123196754835025619)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(123207170155025666)
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(123207351903025668)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(123207170155025666)
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
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
 p_id=>wwv_flow_api.id(123211948920025672)
,p_name=>'Product Details'
,p_parent_plug_id=>wwv_flow_api.id(123201745145025640)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>190
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_report_attributes=>'style="background-color:&BACKGROUND_COLOR.;line-color:blue;border-color:blue;"'
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
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
'"COLORCDE",',
'"COSTRATE",',
'"ITEMRATP",',
'"BATCHNUM",',
'"SLSOFRNO",',
'CASE',
'         WHEN STATUSCD= ''NEW'' THEN ''unchecked="unchecked"''',
'       END AS ADMIN_USER_CHECKBOX',
'from "#OWNER#"."NMSLSOFR"',
'where DOCNUMBR=:P502_DOCNUMBR1 ',
'--and DOCTDATE=:P502_DOCTDATE1 ',
'--and ITEMCODE=:P502_ITEMCODE1  ',
'and DOCTTYPE=:P502_DOCTTYPE',
'and SUBTTYPE=:P502_SUBTTYPE',
'',
''))
,p_display_when_condition=>'P502_OPNSTK'
,p_display_when_cond2=>'O'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_items_to_submit=>'P502_DOCNUMBR1,P502_DOCTDATE1,P502_ITEMCODE1,P502_DOCTTYPE,P502_SUBTTYPE'
,p_lazy_loading=>false
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
 p_id=>wwv_flow_api.id(67777029425476925)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_pk_col_source_type=>'T'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67777406412476927)
,p_query_column_id=>2
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>3
,p_column_heading=>'Srl.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>1
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67777779729476927)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'P502_COMPCODE_APPLICATION'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67778200907476927)
,p_query_column_id=>4
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'P502_DOCTTYPE'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67779060750476927)
,p_query_column_id=>5
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'P502_SUBTTYPE'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67779465316476928)
,p_query_column_id=>6
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'P502_DOCNUMBR'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67779849963476932)
,p_query_column_id=>7
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'TO_DATE(:P502_DOCTDATE,''DD-MON-RRRR'')'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67780233527476932)
,p_query_column_id=>8
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'P502_PARTYCODE'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67780613450476932)
,p_query_column_id=>9
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'RAISEDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67780985164476932)
,p_query_column_id=>10
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>33
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'APPRVDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67781385624476933)
,p_query_column_id=>11
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'APPRDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67781846792476935)
,p_query_column_id=>12
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'REQDDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67782208662476935)
,p_query_column_id=>13
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>19
,p_column_heading=>'Generic Name'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>10
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'COMMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67782629322476935)
,p_query_column_id=>14
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>14
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   DISTINCT itemdes2||'' (''||a.itemcode||'')'' d,a.itemcode r',
'    FROM nmitemas a',
'   WHERE compcode = :compcode  AND statuscd = ''ACT''',
'and FINISHGD=''Y''',
'ORDER BY itemdes2 '))
,p_lov_show_nulls=>'NO'
,p_column_width=>25
,p_cattributes=>'onchange="calculateTotal3(this);"'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'ITEMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67783057994476935)
,p_query_column_id=>15
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'ITEMTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67783456141476935)
,p_query_column_id=>16
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>15
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>35
,p_cattributes=>'onchange=disable_column_2( this )'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'ITEMDESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67783835624476935)
,p_query_column_id=>17
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'ITEMLONG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67784238675476935)
,p_query_column_id=>18
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'ITEMRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67784601045476935)
,p_query_column_id=>19
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67784991470476936)
,p_query_column_id=>20
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>31
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67785417605476936)
,p_query_column_id=>21
,p_column_alias=>'SPLDISPC'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67785783124476936)
,p_query_column_id=>22
,p_column_alias=>'SPLDISNT'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67786226281476936)
,p_query_column_id=>23
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>23
,p_column_heading=>'Sale Rate'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'SALERATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67786618442476936)
,p_query_column_id=>24
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>35
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'HUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67787045632476936)
,p_query_column_id=>25
,p_column_alias=>'FACTRVAL'
,p_column_display_sequence=>17
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67787446054476936)
,p_query_column_id=>26
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>26
,p_column_heading=>'UOM'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>5
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'LUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67787775586476936)
,p_query_column_id=>27
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>24
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'ORGNQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67788212626476938)
,p_query_column_id=>28
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>25
,p_column_heading=>'Qty.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>10
,p_cattributes=>'onchange="calculateTotal(this);calculateTotal1(this);addTotal();"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'APPRQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67788638560476938)
,p_query_column_id=>29
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67789063396476938)
,p_query_column_id=>30
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>36
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'MSFCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67789398305476938)
,p_query_column_id=>31
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>38
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'P502_CURRCODE'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'CURRCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67789853841476938)
,p_query_column_id=>32
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'P502_EXCGRATE'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'EXCGRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67790170882476938)
,p_query_column_id=>33
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>29
,p_column_heading=>'Est. Production Amount'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>25
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSTKREC'
,p_ref_column_name=>'MSLCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67790654441476938)
,p_query_column_id=>34
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>41
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'P502_REFNUMBR'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'REFNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67790972525476938)
,p_query_column_id=>35
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>42
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'REFNDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67791368374476938)
,p_query_column_id=>36
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>43
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67791854908476938)
,p_query_column_id=>37
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>44
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67792265602476938)
,p_query_column_id=>38
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>45
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67792614748476938)
,p_query_column_id=>39
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>46
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67792973433476938)
,p_query_column_id=>40
,p_column_alias=>'UPDOCSRL'
,p_column_display_sequence=>47
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67793466211476939)
,p_query_column_id=>41
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>39
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67793846503476939)
,p_query_column_id=>42
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>48
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'P502_COSTCODE'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'COSTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67794217431476939)
,p_query_column_id=>43
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>49
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'P502_WARECODE'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67794631151476939)
,p_query_column_id=>44
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'ITEM_IS_NOT_NULL'
,p_display_when_condition=>'P502_DOCNUMBR1'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'POSTFLAG'
,p_column_comment=>'<input id="tcheckbox" type="checkbox" name="tcheckbox" />'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67795020949476939)
,p_query_column_id=>45
,p_column_alias=>'PRNTFLAG'
,p_column_display_sequence=>52
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67795442040476939)
,p_query_column_id=>46
,p_column_alias=>'PRICFLAG'
,p_column_display_sequence=>53
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67795828433476939)
,p_query_column_id=>47
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>37
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'STATUSCD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67796196891476939)
,p_query_column_id=>48
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>54
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>':APP_USER'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67796653954476939)
,p_query_column_id=>49
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>51
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'SYSDATE'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67796989184476939)
,p_query_column_id=>50
,p_column_alias=>'COLORCDE'
,p_column_display_sequence=>18
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67797458849476941)
,p_query_column_id=>51
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>21
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'COSTRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67978927235398197)
,p_query_column_id=>52
,p_column_alias=>'ITEMRATP'
,p_column_display_sequence=>27
,p_column_heading=>'MRP'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_cattributes=>'onchange="calculateTotal1(this);addTotal();"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'ITEMRATP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68095497673207795)
,p_query_column_id=>53
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>22
,p_column_heading=>'Manufacture No.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'BATCHNUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(65845788134133726)
,p_query_column_id=>54
,p_column_alias=>'SLSOFRNO'
,p_column_display_sequence=>56
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_pk_col_source_type=>'T'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'SLSOFRNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67797807616476941)
,p_query_column_id=>55
,p_column_alias=>'ADMIN_USER_CHECKBOX'
,p_column_display_sequence=>55
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67778567393476927)
,p_query_column_id=>56
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(113333824982086613)
,p_plug_name=>'button'
,p_parent_plug_id=>wwv_flow_api.id(123211948920025672)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
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
 p_id=>wwv_flow_api.id(165090198195432161)
,p_name=>'Excel File'
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>205
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_query varchar2(4000);',
'  v_sheet_name varchar2(100);',
'  v_sheet_nr number;',
'  v_cnt number;',
'begin',
'/* Brzydkie rozwiazanie ale chce pokazac przyklad jak mozna dynamicznie stworzyc kwerende na xlsx-a */',
'  select min(sheet_nr) into v_sheet_nr from (select * from table( as_read_xlsx.read( (select blob_content from XLSX_FILES where id = :P502_FILE_ID )) ));',
'  ',
'  select min(sheet_name) into v_sheet_name from(select * from table( as_read_xlsx.read( (select blob_content from XLSX_FILES where id = :P502_FILE_ID )) )) where sheet_nr =  :P502_SHEET;',
'',
'  v_query := ''with xlsx as (',
'          select ',
'            ROW_NR,',
'            COL_NR,',
'            case CELL_TYPE',
'              when ''''S'''' then STRING_VAL',
'              when ''''N'''' then to_char(NUMBER_VAL)',
'              when ''''D'''' then to_char(DATE_VAL, ''''YYYY-MM-DD HH24:MI:SS'''')',
'              else FORMULA',
'            end CELL_VAL',
'          from (select *',
'            from table( as_read_xlsx.read( (select blob_content from XLSX_FILES where id = :P502_FILE_ID ),''''''||v_sheet_name||'''''' ) )))',
'        select ad.* from xlsx ',
'        PIVOT',
'         ( max(CELL_VAL)',
'           FOR COL_NR in ('';',
'  v_cnt := 0;',
'  ',
'  for x in (select col_nr, case CELL_TYPE',
'              when ''S'' then STRING_VAL',
'              when ''N'' then to_char(NUMBER_VAL)',
'              when ''D'' then to_char(DATE_VAL, ''YYYY-MM-DD HH24:MI:SS'')',
'              else FORMULA',
'            end CELL_VAL',
'            from table( as_read_xlsx.read( (select blob_content from XLSX_FILES where id = :P502_FILE_ID ),v_sheet_name ) ) where row_nr = 1)',
'  loop',
'    v_cnt := v_cnt+1;',
'    if v_cnt = 1 then',
'      v_query := v_query||x.col_nr||'' as ''||x.cell_val;',
'    else',
'      v_query := v_query||'',''||x.col_nr||'' as ''||x.cell_val;',
'    end if;',
'',
'  end loop;',
'  ',
'  v_query := v_query||'' )) ad',
'        where row_nr >1 '';',
'        ',
'  return v_query;',
' ',
'end;'))
,p_display_when_condition=>'P502_OPNSTK'
,p_display_when_cond2=>'I'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_max_columns=>60
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>25
,p_query_options=>'GENERIC_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'csv'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>297
,p_prn_height=>210
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
 p_id=>wwv_flow_api.id(67843170195476997)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>1
,p_column_heading=>'Col01'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67843605359476997)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>2
,p_column_heading=>'Col02'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67844018764476999)
,p_query_column_id=>3
,p_column_alias=>'COL03'
,p_column_display_sequence=>3
,p_column_heading=>'Col03'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67844388285476999)
,p_query_column_id=>4
,p_column_alias=>'COL04'
,p_column_display_sequence=>4
,p_column_heading=>'Col04'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67844818075476999)
,p_query_column_id=>5
,p_column_alias=>'COL05'
,p_column_display_sequence=>5
,p_column_heading=>'Col05'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67845183557476999)
,p_query_column_id=>6
,p_column_alias=>'COL06'
,p_column_display_sequence=>6
,p_column_heading=>'Col06'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67845620453476999)
,p_query_column_id=>7
,p_column_alias=>'COL07'
,p_column_display_sequence=>7
,p_column_heading=>'Col07'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67845984241476999)
,p_query_column_id=>8
,p_column_alias=>'COL08'
,p_column_display_sequence=>8
,p_column_heading=>'Col08'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67846428894476999)
,p_query_column_id=>9
,p_column_alias=>'COL09'
,p_column_display_sequence=>9
,p_column_heading=>'Col09'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67848066101476999)
,p_query_column_id=>10
,p_column_alias=>'COL10'
,p_column_display_sequence=>10
,p_column_heading=>'Col10'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67848380226477000)
,p_query_column_id=>11
,p_column_alias=>'COL11'
,p_column_display_sequence=>11
,p_column_heading=>'Col11'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67848786730477000)
,p_query_column_id=>12
,p_column_alias=>'COL12'
,p_column_display_sequence=>12
,p_column_heading=>'Col12'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67849227619477000)
,p_query_column_id=>13
,p_column_alias=>'COL13'
,p_column_display_sequence=>13
,p_column_heading=>'Col13'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67849633085477000)
,p_query_column_id=>14
,p_column_alias=>'COL14'
,p_column_display_sequence=>14
,p_column_heading=>'Col14'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67849992919477000)
,p_query_column_id=>15
,p_column_alias=>'COL15'
,p_column_display_sequence=>15
,p_column_heading=>'Col15'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67850396019477000)
,p_query_column_id=>16
,p_column_alias=>'COL16'
,p_column_display_sequence=>16
,p_column_heading=>'Col16'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67850832992477000)
,p_query_column_id=>17
,p_column_alias=>'COL17'
,p_column_display_sequence=>17
,p_column_heading=>'Col17'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67851239234477000)
,p_query_column_id=>18
,p_column_alias=>'COL18'
,p_column_display_sequence=>18
,p_column_heading=>'Col18'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67851572734477000)
,p_query_column_id=>19
,p_column_alias=>'COL19'
,p_column_display_sequence=>19
,p_column_heading=>'Col19'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67851998183477003)
,p_query_column_id=>20
,p_column_alias=>'COL20'
,p_column_display_sequence=>20
,p_column_heading=>'Col20'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67852433801477003)
,p_query_column_id=>21
,p_column_alias=>'COL21'
,p_column_display_sequence=>21
,p_column_heading=>'Col21'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67852808909477003)
,p_query_column_id=>22
,p_column_alias=>'COL22'
,p_column_display_sequence=>22
,p_column_heading=>'Col22'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67853198152477003)
,p_query_column_id=>23
,p_column_alias=>'COL23'
,p_column_display_sequence=>23
,p_column_heading=>'Col23'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67853658301477005)
,p_query_column_id=>24
,p_column_alias=>'COL24'
,p_column_display_sequence=>24
,p_column_heading=>'Col24'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67854015585477005)
,p_query_column_id=>25
,p_column_alias=>'COL25'
,p_column_display_sequence=>25
,p_column_heading=>'Col25'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67854448646477005)
,p_query_column_id=>26
,p_column_alias=>'COL26'
,p_column_display_sequence=>26
,p_column_heading=>'Col26'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67854839930477005)
,p_query_column_id=>27
,p_column_alias=>'COL27'
,p_column_display_sequence=>27
,p_column_heading=>'Col27'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67855215876477005)
,p_query_column_id=>28
,p_column_alias=>'COL28'
,p_column_display_sequence=>28
,p_column_heading=>'Col28'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67855575903477005)
,p_query_column_id=>29
,p_column_alias=>'COL29'
,p_column_display_sequence=>29
,p_column_heading=>'Col29'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67856035312477005)
,p_query_column_id=>30
,p_column_alias=>'COL30'
,p_column_display_sequence=>30
,p_column_heading=>'Col30'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67856453308477005)
,p_query_column_id=>31
,p_column_alias=>'COL31'
,p_column_display_sequence=>31
,p_column_heading=>'Col31'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67856804807477005)
,p_query_column_id=>32
,p_column_alias=>'COL32'
,p_column_display_sequence=>32
,p_column_heading=>'Col32'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67857240355477005)
,p_query_column_id=>33
,p_column_alias=>'COL33'
,p_column_display_sequence=>33
,p_column_heading=>'Col33'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67857586902477006)
,p_query_column_id=>34
,p_column_alias=>'COL34'
,p_column_display_sequence=>34
,p_column_heading=>'Col34'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67834004267476988)
,p_query_column_id=>35
,p_column_alias=>'COL35'
,p_column_display_sequence=>35
,p_column_heading=>'Col35'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67834422724476988)
,p_query_column_id=>36
,p_column_alias=>'COL36'
,p_column_display_sequence=>36
,p_column_heading=>'Col36'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67834844450476988)
,p_query_column_id=>37
,p_column_alias=>'COL37'
,p_column_display_sequence=>37
,p_column_heading=>'Col37'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67835245091476988)
,p_query_column_id=>38
,p_column_alias=>'COL38'
,p_column_display_sequence=>38
,p_column_heading=>'Col38'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67835581880476988)
,p_query_column_id=>39
,p_column_alias=>'COL39'
,p_column_display_sequence=>39
,p_column_heading=>'Col39'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67835976860476988)
,p_query_column_id=>40
,p_column_alias=>'COL40'
,p_column_display_sequence=>40
,p_column_heading=>'Col40'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67836370883476988)
,p_query_column_id=>41
,p_column_alias=>'COL41'
,p_column_display_sequence=>41
,p_column_heading=>'Col41'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67836843717476988)
,p_query_column_id=>42
,p_column_alias=>'COL42'
,p_column_display_sequence=>42
,p_column_heading=>'Col42'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67837206928476989)
,p_query_column_id=>43
,p_column_alias=>'COL43'
,p_column_display_sequence=>43
,p_column_heading=>'Col43'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67837633693476989)
,p_query_column_id=>44
,p_column_alias=>'COL44'
,p_column_display_sequence=>44
,p_column_heading=>'Col44'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67837997316476989)
,p_query_column_id=>45
,p_column_alias=>'COL45'
,p_column_display_sequence=>45
,p_column_heading=>'Col45'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67846864937476999)
,p_query_column_id=>46
,p_column_alias=>'COL46'
,p_column_display_sequence=>46
,p_column_heading=>'Col46'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67847169772476999)
,p_query_column_id=>47
,p_column_alias=>'COL47'
,p_column_display_sequence=>47
,p_column_heading=>'Col47'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67847645058476999)
,p_query_column_id=>48
,p_column_alias=>'COL48'
,p_column_display_sequence=>48
,p_column_heading=>'Col48'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67838406569476989)
,p_query_column_id=>49
,p_column_alias=>'COL49'
,p_column_display_sequence=>49
,p_column_heading=>'Col49'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67838814926476989)
,p_query_column_id=>50
,p_column_alias=>'COL50'
,p_column_display_sequence=>50
,p_column_heading=>'Col50'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67839262446476989)
,p_query_column_id=>51
,p_column_alias=>'COL51'
,p_column_display_sequence=>51
,p_column_heading=>'Col51'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67839657168476989)
,p_query_column_id=>52
,p_column_alias=>'COL52'
,p_column_display_sequence=>52
,p_column_heading=>'Col52'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67840032816476989)
,p_query_column_id=>53
,p_column_alias=>'COL53'
,p_column_display_sequence=>53
,p_column_heading=>'Col53'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67840408277476989)
,p_query_column_id=>54
,p_column_alias=>'COL54'
,p_column_display_sequence=>54
,p_column_heading=>'Col54'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67840790078476989)
,p_query_column_id=>55
,p_column_alias=>'COL55'
,p_column_display_sequence=>55
,p_column_heading=>'Col55'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67841208513476989)
,p_query_column_id=>56
,p_column_alias=>'COL56'
,p_column_display_sequence=>56
,p_column_heading=>'Col56'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67841623739476992)
,p_query_column_id=>57
,p_column_alias=>'COL57'
,p_column_display_sequence=>57
,p_column_heading=>'Col57'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67842001181476992)
,p_query_column_id=>58
,p_column_alias=>'COL58'
,p_column_display_sequence=>58
,p_column_heading=>'Col58'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67842407547476992)
,p_query_column_id=>59
,p_column_alias=>'COL59'
,p_column_display_sequence=>59
,p_column_heading=>'Col59'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67842826911476992)
,p_query_column_id=>60
,p_column_alias=>'COL60'
,p_column_display_sequence=>60
,p_column_heading=>'Col60'
,p_include_in_export=>'Y'
,p_print_col_width=>'1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(169936203063864645)
,p_plug_name=>'button region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>210
,p_plug_display_point=>'BODY_3'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67801283418476953)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_api.id(113333824982086613)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67820203005476974)
,p_button_sequence=>24
,p_button_plug_id=>wwv_flow_api.id(123207351903025668)
,p_button_name=>'Upload_excel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Show from Excel'
,p_button_execute_validations=>'N'
,p_button_condition=>'P502_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'N'
,p_grid_column_span=>3
,p_grid_column=>7
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67771971013476916)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(169936203063864645)
,p_button_name=>'CREATE'
,p_button_static_id=>'BUT_CRT_FRM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67820629191476974)
,p_button_sequence=>34
,p_button_plug_id=>wwv_flow_api.id(123207351903025668)
,p_button_name=>'Process'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Process Into Table'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67820996406476974)
,p_button_sequence=>174
,p_button_plug_id=>wwv_flow_api.id(123207351903025668)
,p_button_name=>'P502_SHOWHIDE'
,p_button_static_id=>'P88_SHOWHIDE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Showhide'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67773521109476918)
,p_button_sequence=>1840
,p_button_plug_id=>wwv_flow_api.id(123201745145025640)
,p_button_name=>'P502_RUNREPORT'
,p_button_static_id=>'P88_RUNREPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Run Report'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:49:P49_PROGNAME,P49_DOCNUMBR:&P502_PROGNAME.,&P502_DOCNUMBR49.'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67773893626476918)
,p_button_sequence=>1850
,p_button_plug_id=>wwv_flow_api.id(123201745145025640)
,p_button_name=>'P502_MNYRECEIPT'
,p_button_static_id=>'P88_MNYRECEIPT'
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
 p_id=>wwv_flow_api.id(67774296293476918)
,p_button_sequence=>1890
,p_button_plug_id=>wwv_flow_api.id(123201745145025640)
,p_button_name=>'P502_DELIVERY'
,p_button_static_id=>'P88_DELIVERY'
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
 p_id=>wwv_flow_api.id(67798194033476941)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(123211948920025672)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67773160245476918)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(123201745145025640)
,p_button_name=>'SHOW_HIDE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Multiple Item Invoice'
,p_button_position=>'HELP'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67774682289476918)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(123201745145025640)
,p_button_name=>'CREATE_ANOTHER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Another'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67775089626476918)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(123201745145025640)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67771200677476916)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(169936203063864645)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:500:&SESSION.:A:&DEBUG.:502::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67772436608476916)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(169936203063864645)
,p_button_name=>'CREATE_NEW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_condition=>'P502_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67771665645476916)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(169936203063864645)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'NEXT'
,p_button_condition=>'P502_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67775495587476921)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(123201745145025640)
,p_button_name=>'DELIVERY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delivery'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65845739177133725)
,p_name=>'P502_SLSOFRNO'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67775964800476921)
,p_name=>'P502_PROGNAME'
,p_item_sequence=>1870
,p_item_plug_id=>wwv_flow_api.id(123201745145025640)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67776330817476921)
,p_name=>'P502_DOCNUMBR49'
,p_item_sequence=>1880
,p_item_plug_id=>wwv_flow_api.id(123201745145025640)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67801689641476953)
,p_name=>'P502_TABTOTDISAM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(113333824982086613)
,p_prompt=>'Total'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67802422889476958)
,p_name=>'P502_OPNSTK'
,p_item_sequence=>2210
,p_item_plug_id=>wwv_flow_api.id(123207170155025666)
,p_item_default=>'O'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67802789132476958)
,p_name=>'P502_DISPLAY'
,p_item_sequence=>2220
,p_item_plug_id=>wwv_flow_api.id(123207170155025666)
,p_item_default=>':P502_DOCDESC||''  (''||:P502_DOCTTYPE||''/''||:P502_SUBTTYPE||'')'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="font-size:18px;color:red;"'
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67803488924476958)
,p_name=>'P502_REGION'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67803895546476958)
,p_name=>'P502_COMPCODE'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_item_default=>':P502_COMPCODE_APPLICATION'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67804272667476960)
,p_name=>'P502_OPRSTAMP'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67804739540476960)
,p_name=>'P502_TIMSTAMP'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
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
 p_id=>wwv_flow_api.id(67805116011476963)
,p_name=>'P502_SERLNUMB'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67805491329476963)
,p_name=>'P502_STATUSCD'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67805906308476963)
,p_name=>'P502_ITEMLONG_1'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67806337438476963)
,p_name=>'P502_MSFCAMNT'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67806710365476963)
,p_name=>'P502_ROWID'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67807132374476963)
,p_name=>'P502_DOCNUMBR1'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
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
 p_id=>wwv_flow_api.id(67807517718476963)
,p_name=>'P502_DOCTDATE1'
,p_item_sequence=>1500
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67807963034476963)
,p_name=>'P502_ITEMCODE1'
,p_item_sequence=>1510
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67808277624476963)
,p_name=>'P502_COMPCODE_APPLICATION'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67808686751476963)
,p_name=>'P502_TABULARITEMCODE'
,p_is_required=>true
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67809071055476964)
,p_name=>'P502_TABCOSTRATE'
,p_item_sequence=>1540
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67809504709476964)
,p_name=>'P502_TABITEMDESC'
,p_item_sequence=>1550
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67809906236476964)
,p_name=>'P502_TABITEMRATE'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67810273904476964)
,p_name=>'P502_TABITEMUNIT'
,p_item_sequence=>1570
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67810743522476964)
,p_name=>'P502_TABCLOSINGBALANCE'
,p_item_sequence=>1580
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67811135191476964)
,p_name=>'P502_TABITEMTYPE'
,p_item_sequence=>1590
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67811558703476964)
,p_name=>'P502_TABCOMMGRUP'
,p_item_sequence=>1600
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_prompt=>'Tabcommgrup'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67811917058476964)
,p_name=>'P502_TABSALEPERC'
,p_item_sequence=>1610
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67812294680476966)
,p_name=>'P502_BRAND'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67812757619476966)
,p_name=>'P502_MODAL'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67813099989476966)
,p_name=>'P502_UNITOFMESURE'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67813529547476966)
,p_name=>'P502_TRNDATE'
,p_item_sequence=>1650
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67813881934476966)
,p_name=>'P502_DOCTTYPE'
,p_item_sequence=>1660
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67814286119476966)
,p_name=>'P502_SUBTTYPE'
,p_item_sequence=>1670
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67814698580476966)
,p_name=>'P502_DOCDESC'
,p_item_sequence=>1680
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67815115695476966)
,p_name=>'P502_REFNUMBR'
,p_item_sequence=>1750
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_prompt=>'Ref. No.'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT DISTINCT c.docnumbr,',
'                  c.doctdate,',
'                  (SELECT INITCAP (costdesc)',
'                     FROM syjobmas',
'                    WHERE compcode = c.compcode AND costcode = c.costcode)',
'                     costdesc,',
'                  (SELECT INITCAP (waredesc)',
'                     FROM nmwhsmas',
'                    WHERE compcode = c.compcode AND warecode = c.warecode)',
'                     waredesc,',
'                  (SELECT INITCAP (smanname)',
'                     FROM nmsmnmas',
'                    WHERE compcode = c.compcode AND smancode = c.smancode)',
'                     smanname,',
'                  INITCAP (p.custname) cust_name,',
'                  p.custmobl,',
'                  i.modelnam,',
'                  i.colordsc,',
'                  c.smancode,',
'                  c.costcode,',
'                  c.warecode,',
'                  c.custmrid',
'    FROM nmcusvlg c, vwnmitem i, nmcusmas p',
'   WHERE     c.compcode = :compcode',
'         AND c.compcode = i.compcode(+)',
'         AND c.itemcode = i.itemcode(+)',
'         AND c.compcode = p.compcode(+)',
'         AND c.custmrid = p.custmrid(+)',
'         AND c.oprstamp = :APP_USER',
'ORDER BY 1, 2 DESC'))
,p_cSize=>19
,p_cMaxlength=>4000
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,1'
,p_attribute_05=>'10,11,12,13'
,p_attribute_06=>'2,10,11,12,13'
,p_attribute_07=>'P502_REFNDATE,P502_SALMANID,P502_COSTCODE,P502_WARECODE,P502_CUSTOMERID'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67815474337476966)
,p_name=>'P502_REFNDATE'
,p_item_sequence=>1760
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_prompt=>'Ref. Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>33
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67815897171476966)
,p_name=>'P502_DOCNUMBR'
,p_item_sequence=>1700
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_prompt=>'<strong>Production Request No.</strong>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>33
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67816301030476966)
,p_name=>'P502_DOCTDATE'
,p_item_sequence=>1690
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<strong>Transaction Date</strong>'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67816680579476966)
,p_name=>'P502_BATCHNO'
,p_item_sequence=>1770
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67817152482476966)
,p_name=>'P502_BATCHDATE'
,p_item_sequence=>1780
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_item_default=>'to_date(SYSDATE,''dd/mm/rrrr'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67817561215476974)
,p_name=>'P502_WARECODE'
,p_item_sequence=>1730
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_prompt=>'Ware Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    waredesc||'' (''||warecode||'')'' d,warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode ',
'   AND costcode IN (SELECT cabasecc FROM sycstacc WHERE compcode = :compcode   AND grupcode = :APP_USER)'))
,p_cSize=>19
,p_cMaxlength=>4000
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67817878899476974)
,p_name=>'P502_MODE'
,p_item_sequence=>1790
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_item_default=>':REQUEST'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67818347379476974)
,p_name=>'P502_S_PRDTYP'
,p_item_sequence=>1800
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67818693669476974)
,p_name=>'P502_S_PRSTYP'
,p_item_sequence=>1810
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67819092267476974)
,p_name=>'P502_CURRCODE'
,p_item_sequence=>1820
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67819486566476974)
,p_name=>'P502_EXCGRATE'
,p_item_sequence=>1830
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67821440181476978)
,p_name=>'P502_FILEPATH'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_prompt=>'Filepath'
,p_source=>':IMAGE_PREFIX'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67821783733476978)
,p_name=>'P502_FILE_ID'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_prompt=>'Filename'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select filename, id from xlsx_files',
'where ID=:P502_FILESIZE'))
,p_lov_cascade_parent_items=>'P502_FILESIZE'
,p_ajax_items_to_submit=>'P502_FILESIZE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67822189101476978)
,p_name=>'P502_SHEET'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_prompt=>'Sheet'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>' select distinct sheet_name, sheet_nr from (select * from table( as_read_xlsx.read( (select blob_content from XLSX_FILES where id = :P502_FILESIZE)) ));'
,p_lov_cascade_parent_items=>'P502_FILESIZE'
,p_ajax_items_to_submit=>'P502_FILESIZE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67822632279476978)
,p_name=>'P502_FILESIZE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_prompt=>'Filesize'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67823031334476978)
,p_name=>'P502_ID'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67823436462476978)
,p_name=>'P502_FILE'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Blob Content'
,p_source=>'BLOB_CONTENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIME_TYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_04=>'CHARACTER_SET'
,p_attribute_05=>'LAST_UPDATED'
,p_attribute_06=>'N'
,p_attribute_12=>'NATIVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67823853656476983)
,p_name=>'P502_SRCCOMPNM'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67824232478476983)
,p_name=>'P502_SRCCOMPDS'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P1_COMPNAME.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67824643091476983)
,p_name=>'P502_SOURCEWARECODE'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67825024085476983)
,p_name=>'P502_COSTCODE'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67825453917476985)
,p_name=>'P502_COSTCENTERNAME'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67825777785476985)
,p_name=>'P502_SRCCOSTCD'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67826252040476985)
,p_name=>'P502_SRCCOSTDS'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   INITCAP (costdesc) costdesc',
'    FROM syjobmas',
'   WHERE compcode = :compcode ',
'and costcode=:P502_SRCCOSTCD',
'ORDER BY costcode'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67826614161476985)
,p_name=>'P502_APRPERSON'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67827057368476985)
,p_name=>'P502_APRPERSNM'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67827449411476985)
,p_name=>'P502_RAISEDBY'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P1_USER_ID.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67827800758476985)
,p_name=>'P502_RAISEDNAME'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P1_USER_NAME.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67828185812476985)
,p_name=>'P502_CUSTOMERID'
,p_item_sequence=>154
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67828608462476985)
,p_name=>'P502_CUSTOMERNAME'
,p_item_sequence=>164
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67829036098476985)
,p_name=>'P502_LOVCOSTCODE'
,p_item_sequence=>184
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
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
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'2,1'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67829444808476986)
,p_name=>'P502_LOVSALMANID'
,p_item_sequence=>194
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
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
'            AND w.costcode = :P502_COSTCODE'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'2,1'
,p_attribute_06=>'1'
,p_attribute_07=>'P502_SALMANID'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67829843180476986)
,p_name=>'P502_SALMANID'
,p_item_sequence=>204
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67830193407476986)
,p_name=>'P502_SALMNNAME'
,p_item_sequence=>214
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67830654575476986)
,p_name=>'P502_POSTSTATUS'
,p_item_sequence=>224
,p_item_plug_id=>wwv_flow_api.id(123207351903025668)
,p_item_default=>'N'
,p_prompt=>'<strong>Post Status</strong>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SYCODDES d,SYSOFCDE r from sycodmas where SYSOFCDE in',
'(select distinct PARTYTYP from sycompty)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''SY''',
'and SYHRDCDE=''CUS'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67831362441476986)
,p_name=>'P502_ORDERNO'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_api.id(123205767996025661)
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
'            AND s.docttype = :P502_REQREFTYPE',
'            AND s.subttype = :P502_REQSUBTYPE',
'            AND s.doctdate <= :P502_ORDERDATE',
'            AND s.compcode = sls.compcode(+)',
'            AND s.docnumbr = sls.updocnum(+)',
'            AND s.itemcode = sls.itemcode(+)',
'            AND s.apprqnty > NVL (sls.apprqnty, 0)',
'       ORDER BY 2 DESC'))
,p_lov_cascade_parent_items=>'P502_REQREFTYPE,P502_REQSUBTYPE,P502_ORDERDATE'
,p_ajax_items_to_submit=>'P502_REQREFTYPE,P502_REQSUBTYPE,P502_ORDERDATE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_item_comment=>'onkeypress="return tabE(this,event,''P7_S_DOCNUM'')"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67831680401476986)
,p_name=>'P502_ORDERDATE'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(123205767996025661)
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
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67832116834476986)
,p_name=>'P502_BOOKINGNO'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(123205767996025661)
,p_prompt=>'Booking No :'
,p_display_as=>'NATIVE_TEXT_FIELD'
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
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67832520855476986)
,p_name=>'P502_BOOKINGDT'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(123205767996025661)
,p_prompt=>'Booking Date :'
,p_display_as=>'NATIVE_TEXT_FIELD'
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
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67832885104476988)
,p_name=>'P502_REQREFTYPE'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(123205767996025661)
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
 p_id=>wwv_flow_api.id(67833345980476988)
,p_name=>'P502_REQSUBTYPE'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(123205767996025661)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67978685951398195)
,p_name=>'P502_PARTYCODE'
,p_item_sequence=>1710
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_prompt=>'Produce for'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select A.prtyname||'' (''||A.partycde||'')'' display,A.partycde return',
'From Sycompty A',
'Where A.Compcode=:Compcode',
'AND A.PARTYTYP IN (''CU'', ''CV'')'))
,p_cSize=>19
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67978851640398196)
,p_name=>'P502_PARTYNAME'
,p_item_sequence=>1720
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partyname'
,p_source=>'PARTYNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68608421106049701)
,p_name=>'P502_WAREDESC'
,p_item_sequence=>1740
,p_item_plug_id=>wwv_flow_api.id(123196754835025619)
,p_prompt=>'Waredesc'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(67858109600477006)
,p_validation_name=>'Docdate validation for tabular'
,p_validation_sequence=>10
,p_validation=>'P502_DOCTDATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(67772436608476916)
,p_associated_item=>wwv_flow_api.id(67816301030476966)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(67858536546477006)
,p_validation_name=>'Costcode  validation for tabular'
,p_validation_sequence=>30
,p_validation=>'P502_COSTCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'costcode must have some value.'
,p_associated_item=>wwv_flow_api.id(67825024085476983)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(67798752998476941)
,p_tabular_form_region_id=>wwv_flow_api.id(123211948920025672)
,p_validation_name=>'Itemcode  validation for tabular'
,p_validation_sequence=>50
,p_validation=>'ITEMCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_associated_column=>'ITEMCODE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(67858900810477006)
,p_validation_name=>'P502_SUBTTYPE'
,p_validation_sequence=>60
,p_validation=>'P502_SUBTTYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(67814286119476966)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(67859327516477006)
,p_validation_name=>'Warecode validation'
,p_validation_sequence=>110
,p_validation=>'P502_WARECODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(67817561215476974)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(68205334762508191)
,p_tabular_form_region_id=>wwv_flow_api.id(123211948920025672)
,p_validation_name=>'BATCHNUM'
,p_validation_sequence=>120
,p_validation=>'BATCHNUM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'BATCHNUM'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(68856798134706099)
,p_tabular_form_region_id=>wwv_flow_api.id(123211948920025672)
,p_validation_name=>'APPRQNTY'
,p_validation_sequence=>130
,p_validation=>'APPRQNTY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'APPRQNTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(68857111053709117)
,p_tabular_form_region_id=>wwv_flow_api.id(123211948920025672)
,p_validation_name=>'ITEMRATP'
,p_validation_sequence=>140
,p_validation=>'ITEMRATP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ITEMRATP'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(37708167427469161)
,p_tabular_form_region_id=>wwv_flow_api.id(123211948920025672)
,p_validation_name=>'BATCHNUM is number value'
,p_validation_sequence=>150
,p_validation=>'BATCHNUM'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'BATCHNUM'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67861185645477006)
,p_name=>'change on Party Code'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_PARTYCODE'
,p_condition_element=>'P502_CUSTOMERID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67861757222477010)
,p_event_id=>wwv_flow_api.id(67861185645477006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P502_PARTYCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'',
'Select A.prtyname,a.CUSTMRID',
'into :P502_PARTYNAME,:P502_CUSTOMERID',
'From Sycompty A',
'Where A.Compcode=:COMPCODE',
'and A.partycde=:P502_PARTYCODE;',
'        ',
'EXCEPTION',
'WHEN NO_DATA_FOUND',
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
,p_attribute_02=>'P502_PARTYCODE'
,p_attribute_03=>'P502_PARTYNAME,P502_CUSTOMERID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67862080551477010)
,p_name=>'change on costcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_COSTCODE'
,p_condition_element=>'P502_COSTCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67862569316477010)
,p_event_id=>wwv_flow_api.id(67862080551477010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P502_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.warecode',
'into :P502_WARECODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P502_COSTCODE)',
'     AND costcode = :P502_COSTCODE',
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
'IF :P502_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct COSTDESC ',
'into :P502_COSTCENTERNAME',
'from syjobmas',
'where compcode = :compcode',
'AND costcode = :P502_COSTCODE;',
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
'IF :P502_COSTCODE IS NOT NULL and :P502_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT distinct SMANCODE',
'into :P502_SALMANID',
'        FROM nmsalrec',
'       WHERE docnumbr = :p502_docnumbr1',
'         AND DOCTDATE = :P502_DOCTDATE',
'         AND COSTCODE = :P502_COSTCODE;',
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
,p_attribute_02=>'P502_COSTCODE,P502_DOCNUMBR1,P502_DOCTDATE'
,p_attribute_03=>'P502_WARECODE,P502_COSTCENTERNAME,P502_SALMANID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67862991111477010)
,p_name=>'change on itemcode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_ITEMCODE'
,p_condition_element=>'P502_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67863515159477010)
,p_event_id=>wwv_flow_api.id(67862991111477010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P502_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P502_UNITOFMESURE,:P502_ITEMDESC,:P502_BRAND,:P502_MODAL,:P502_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P502_ITEMCODE;',
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
'IF :P502_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P502_SALPRICE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P502_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P502_ITEMCODE;',
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
'IF :P502_ITEMCODE1 IS NOT NULL and :P502_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) ',
'into :P502_QUENTITY',
'       from    nmsalrec s,(SELECT   SUM (d.trnsqnty) trnsqnty, d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE',
'                     FROM nmdevrec d',
'                     group by d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE) e',
'                     WHERE s.docnumbr = :p502_docnumbr1 AND s.itemcode = :p502_itemcode1',
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
,p_attribute_02=>'P502_ITEMCODE,P502_WARECODE,P502_ITEMCODE1,P502_DOCNUMBR1'
,p_attribute_03=>'P502_UNITOFMESURE,P502_ITEMDESC,P502_BRAND,P502_MODAL,P502_SALPRICE,P502_ISSUMTHD,P502_CLOSINGBALANCE,P502_QUENTITY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67863934566477010)
,p_name=>'change on trantype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_SUBTTYPE'
,p_condition_element=>'P502_SUBTTYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67864405786477010)
,p_event_id=>wwv_flow_api.id(67863934566477010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	Select initcap(naration) naration Into :P502_DOCDESC From SYDOCMAS ',
'			Where compcode = :compcode ',
'				And trantype = :P502_DOCTTYPE',
'				And modlcode = :modlcode ',
'				And subttype = :P502_SUBTTYPE',
'				And :P502_TRNDATE Between strtperd And endperd;',
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
,p_attribute_02=>'P502_DOCTTYPE,P502_TRNDATE,P502_SUBTTYPE'
,p_attribute_03=>'P502_DOCDESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67864865401477010)
,p_name=>'installment amount'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(51869188485777894)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67865331844477016)
,p_event_id=>wwv_flow_api.id(67864865401477010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P502_PERINSTALL:=(:P502_INSTLLAMOUNT/:P502_INSTALLNO);',
'end;'))
,p_attribute_02=>'P502_INSTLLAMOUNT,P502_INSTALLNO'
,p_attribute_03=>'P502_PERINSTALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67865754550477016)
,p_event_id=>wwv_flow_api.id(67864865401477010)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var tt = window.document.getElementById(''P502_INSTALLNO'').value;',
' for(i=0;i<tt;i++)',
'{',
'var pp = ''f02_000''.concat(i+1);',
'javascript:apex.widget.tabular.addRow();',
'window.document.getElementById(pp).value = window.document.getElementById(''P502_PERINSTALL'').value;',
'',
'}'))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pp = f02_000.concat(i);',
'',
'.concat(f02_000.concat(i)).concat('')'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67866069410477017)
,p_name=>'on change amount'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_QUENTITY'
,p_condition_element=>'P502_QUENTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67866599409477017)
,p_event_id=>wwv_flow_api.id(67866069410477017)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P502_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67867094451477017)
,p_event_id=>wwv_flow_api.id(67866069410477017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/05 14:26 (Formatter Plus v4.8.8) */',
'BEGIN',
'   :p502_amount := :p502_salprice * :p502_quentity;',
':P502_DISAMOUNT:=(:P502_AMOUNT*:P502_DISCPCNT)/100;',
':P502_NETAMOUNT:=nvl(:P502_AMOUNT,0)-nvl(:P502_DISAMOUNT,0);',
'END;'))
,p_attribute_02=>'P502_SALPRICE,P502_QUENTITY,P502_AMOUNT,P502_DISCPCNT,P502_DISAMOUNT'
,p_attribute_03=>'P502_AMOUNT,P502_DISAMOUNT,P502_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67867491491477017)
,p_name=>'on change discount percent'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_DISCPCNT'
,p_condition_element=>'P502_DISCPCNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67868058950477019)
,p_event_id=>wwv_flow_api.id(67867491491477017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P502_DISAMOUNT:=(:P502_AMOUNT*:P502_DISCPCNT)/100;',
'end;'))
,p_attribute_02=>'P502_AMOUNT,P502_DISCPCNT'
,p_attribute_03=>'P502_DISAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67868437207477019)
,p_name=>'on change amount and disamount'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_DISAMOUNT'
,p_condition_element=>'P502_DISAMOUNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67868875604477019)
,p_event_id=>wwv_flow_api.id(67868437207477019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P502_NETAMOUNT:=nvl(:P502_AMOUNT,0)-nvl(:P502_DISAMOUNT,0);',
'end;'))
,p_attribute_02=>'P502_AMOUNT,P502_DISAMOUNT'
,p_attribute_03=>'P502_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67869364265477019)
,p_name=>'query on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67869815683477020)
,p_event_id=>wwv_flow_api.id(67869364265477019)
,p_event_result=>'TRUE'
,p_action_sequence=>9
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:16 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :p502_itemcode1 IS NOT NULL AND :p502_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT s.compcode, s.docttype, s.subttype, s.docnumbr,',
'             s.doctdate, s.serlnumb, s.partycde, s.itemcode,',
'             s.smancode, s.commcode, s.itemdesc,',
'             s.itemlong, s.discpcnt, s.discamnt, s.salerate,',
'             s.custmrid, s.costcode, s.warecode, s.batchnum,',
'             s.msfcamnt, s.apprqnty, s.docnumbr',
'        INTO :p502_compcode, :p502_docttype, :p502_subttype, :p502_docnumbr,',
'             :p502_doctdate, :p502_serlnumb, :p502_partycode, :p502_itemcode,',
'             :p502_salmanid, :p502_unitofmesure,',
'             :p502_itemdesc, :p502_itemlong_1, :p502_discpcnt, :p502_disamount,',
'             :p502_salprice, :p502_customerid, :p502_costcode, :p502_warecode,',
'             :p502_batchnum, :p502_netamount, :p502_quentity , :P502_DOCNUMBR49',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p502_docnumbr1 AND s.itemcode = :p502_itemcode1;',
'   END IF;',
'END;',
'',
'BEGIN',
'   IF :p502_itemcode1 IS NOT NULL AND :p502_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT distinct TNSPRTYP,TRNSREGN,TNSCHSNO,DRIVNAME,DVNLIDNO,DVLICSNO,DELVLOCT',
'      into :p502_TNSPRTYP,:p502_TRNSREGN,:p502_TNSCHSNO,:p502_DRIVNAME,:p502_DVNLIDNO,:p502_DVLICSNO,:p502_DELVLOCT',
'        FROM nmdevrec ',
'        WHERE UPDOCNUM = :p502_docnumbr',
'      AND UPDOCDTE = :p502_doctdate',
'      and DOCTTYPE = ''GP''',
'      and SUBTTYPE=1;',
'   END IF;',
'END;'))
,p_attribute_02=>'P502_DOCNUMBR1,P502_ITEMCODE1,P502_DOCNUMBR,P502_DOCTDATE'
,p_attribute_03=>'P502_COMPCODE,P502_DOCTTYPE,P502_SUBTTYPE,P502_DOCNUMBR,P502_DOCTDATE,P502_SERLNUMB,P502_PARTYCODE,P502_ITEMCODE,P502_SALMANID,P502_UNITOFMESURE,P502_ITEMDESC,P502_ITEMLONG_1,P502_DISCPCNT,P502_DISAMOUNT,P502_SALPRICE,P502_CUSTOMERID,P502_COSTCODE,P5'
||'02_WARECODE,P502_BATCHNUM,P502_NETAMOUNT,P502_DOCNUMBR49,P502_TNSPRTYP,P502_TRNSREGN,P502_TNSCHSNO,P502_DRIVNAME,P502_DVNLIDNO,P502_DVLICSNO,P502_DELVLOCT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67870248269477020)
,p_name=>'change  on warecode'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67870700425477020)
,p_event_id=>wwv_flow_api.id(67870248269477020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P502_WARECODE IS NOT NULL and :P502_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT a.itemcode',
'into :P502_ITEMCODE ',
'           FROM nmsalrec a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''APR''',
'            AND a.itemcode = b.itemcode',
'            and a.DOCNUMBR=:P502_DOCNUMBR1',
'           -- AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P502_WARECODE',
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
,p_attribute_02=>'P502_DOCNUMBR1,P502_WARECODE'
,p_attribute_03=>'P502_ITEMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67871164555477020)
,p_name=>'change on batchnum'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67871656041477020)
,p_event_id=>wwv_flow_api.id(67871164555477020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P502_ITEMCODE IS NOT NULL and :P502_DOCNUMBR is not null',
'   THEN',
'      BEGIN',
' SELECT  batchnum d',
'into :P502_BATCHNUM',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmsalrec w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P502_ITEMCODE',
'                      AND w.warecode = :P502_WARECODE',
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
,p_attribute_02=>'P502_ITEMCODE,P502_DOCNUMBR,P502_WARECODE'
,p_attribute_03=>'P502_BATCHNUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67872057814477020)
,p_name=>'change  on itemcode1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_DOCNUMBR1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.da.testCondition( this.triggeringElement.id, ''NOT_NULL'' )'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67872522041477022)
,p_event_id=>wwv_flow_api.id(67872057814477020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF  :P502_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
' SELECT distinct s.DOCNUMBR,DOCTDATE,COSTCODE,WARECODE',
'        INTO :P502_DOCNUMBR,:P502_DOCTDATE,:P502_COSTCODE,:P502_WARECODE',
'        FROM nmstkrec s',
'       WHERE s.docnumbr = :P502_DOCNUMBR1',
'and s.doctdate=:P502_DOCTDATE1 --AND s.itemcode = :P502_ITEMCODE1',
';',
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
'',
'BEGIN',
'IF  :P502_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT DISTINCT INITCAP (naration) naration',
'into :P502_DOCDESC',
'           FROM sydocmas',
'          WHERE compcode = :compcode ',
'            AND trantype = :P502_DOCTTYPE',
'            and SUBTTYPE = :P502_SUBTTYPE',
'            AND modlcode = :modlcode ;',
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
,p_attribute_02=>'P502_DOCNUMBR1,P502_DOCTDATE1'
,p_attribute_03=>'P502_DOCNUMBR,P502_DOCTDATE,P502_COSTCODE,P502_WARECODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67872884186477022)
,p_name=>'showhide stats'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(68429667521701171)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'parseInt(window.document.getElementById(''P502_S_H_REGION'').value) == 1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67873411500477022)
,p_event_id=>wwv_flow_api.id(67872884186477022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.document.getElementById(''P502_S_H_REGION'').value = 1;',
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
 p_id=>wwv_flow_api.id(67873908211477022)
,p_event_id=>wwv_flow_api.id(67872884186477022)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if( parseInt(window.document.getElementById(''P502_S_H_REGION'').value) == 1)',
'{',
'window.document.getElementById(''TR'').style.display="block";',
'window.document.getElementById(''IR'').style.display="none";',
'window.document.getElementById(''SR'').style.display="none";',
'--apex.item( "BUT_CRT_FRM" ).show();   ',
'apex.item( "BUT_CRT_TAB" ).hide();',
'/*window.document.getElementById(''BUT_CRT_FRM'').style.display="none";',
'window.document.getElementById(''BUT_CRT_TAB'').style.display="block";*/',
'window.document.getElementById(''P502_S_H_REGION'').value = 0;',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67874324828477022)
,p_name=>'add rows javascript on modify mode'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P502_MODE'
,p_display_when_cond2=>'MOD'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67874802770477022)
,p_event_id=>wwv_flow_api.id(67874324828477022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var counter = document.wwv_flow.f11.length;',
'for (var i = 0; i < counter; i++)',
'{',
'',
'if(counter < 4 && counter == 3){',
'',
'for (i = 1; i <=1; i++)',
'{',
'apex.widget.tabular.addRow();',
'}',
'}',
'if(counter < 3 && counter == 2){',
'',
'for (i = 1; i <=2; i++)',
'{',
'apex.widget.tabular.addRow();',
'}',
'}',
'',
'}',
'',
'if(typeof(counter) == ''undefined'' || counter=== null){',
'',
'for (i = 1; i <=3; i++)',
'{',
'apex.widget.tabular.addRow();',
'}',
'',
'}',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67890658916477030)
,p_name=>'add rows javascript on create mode'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P502_MODE'
,p_display_when_cond2=>'ADD'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67891163480477030)
,p_event_id=>wwv_flow_api.id(67890658916477030)
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
'for (i = 0; i <=3; i++)',
'{',
'javascript:addRow();',
'};',
'};'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67875253944477022)
,p_name=>'disable  field on tabular item'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
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
 p_id=>wwv_flow_api.id(67875740266477022)
,p_event_id=>wwv_flow_api.id(67875253944477022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''input[name="f02"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f02"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f02"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f14"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f14"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f14"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f18"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f18"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f18"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f20"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f20"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f20"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
' ',
'$(''input[name="f22"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f22"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f22"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f25"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f25"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f25"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f30"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f30"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f30"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67876128365477022)
,p_name=>'Click on tabular itemcode'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_TABULARITEMCODE'
,p_condition_element=>'P502_TABULARITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67876617603477022)
,p_event_id=>wwv_flow_api.id(67876128365477022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P502_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct LUOMCODE,ITEMDES1,ITEMTYPE,SALEPERC,COMMGRUP',
'into :P502_tabitemunit,:P502_TABITEMDESC,:P502_TABITEMTYPE,:P502_TABSALEPERC,:P502_TABCOMMGRUP',
'FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P502_TABULARITEMCODE ;',
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
'IF :P502_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct ITEMRATE',
'into :P502_TABITEMRATE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P502_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P502_TABULARITEMCODE;',
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
'IF :P502_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P502_TABCOSTRATE',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P502_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P502_TABULARITEMCODE;',
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
'IF :P502_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P502_TABCLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P502_WARECODE',
'            AND b.itemcode =:P502_TABULARITEMCODE',
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
,p_attribute_02=>'P502_TABULARITEMCODE'
,p_attribute_03=>'P502_TABCOMMGRUP,P502_TABSALEPERC,P502_TABITEMTYPE,P502_TABCOSTRATE,P502_TABITEMDESC,P502_TABCLOSINGBALANCE,P502_TABITEMRATE,P502_TABITEMUNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67877049101477024)
,p_name=>'on page load for hide region default on tabular '
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67877559582477024)
,p_event_id=>wwv_flow_api.id(67877049101477024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P502_S_H_REGION:=0;',
'end;'))
,p_attribute_02=>'P502_S_H_REGION'
,p_attribute_03=>'P502_S_H_REGION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67878011021477025)
,p_event_id=>wwv_flow_api.id(67877049101477024)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67878425177477025)
,p_name=>'on page load for skillbuilders lov field'
,p_event_sequence=>220
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67878904569477025)
,p_event_id=>wwv_flow_api.id(67878425177477025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:24 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :p502_itemcode1 IS NOT NULL AND :p502_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT s.smancode, s.costcode, s.custmrid,s.itemcode,s.batchnum',
'        INTO :p502_lovsalmanid, :p502_lovcostcode, :p502_lovcustomerid,:P502_LOVITEMCODE,:P502_LOVBATCHNO',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p502_docnumbr1 AND s.itemcode = :p502_itemcode1;',
'   END IF;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>'P37_DOCNUMBR1,P37_ITEMCODE1'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67879319932477025)
,p_name=>'change on batchnum'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_BATCHNUM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67879859822477027)
,p_event_id=>wwv_flow_api.id(67879319932477025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P502_BATCHNUM IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P502_CLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P502_WARECODE',
'            AND b.itemcode =:P502_ITEMCODE',
'            and b.BATCHNUM =:P502_BATCHNUM',
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
,p_attribute_02=>'P502_WARECODE,P502_ITEMCODE,P502_BATCHNUM'
,p_attribute_03=>'P502_CLOSINGBALANCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67880188850477027)
,p_name=>'clear on itemcode'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67880755899477027)
,p_event_id=>wwv_flow_api.id(67880188850477027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P502_BATCHNUM,P502_DISCPCNT,P502_DISAMOUNT,P502_NETAMOUNT,P502_QUENTITY,P502_CLOSINGBALANCE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67881069874477027)
,p_name=>'change  on salmancode'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_SALMANID'
,p_condition_element=>'P502_SALMANID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67881628185477027)
,p_event_id=>wwv_flow_api.id(67881069874477027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P502_SALMANID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.SMANNAME',
'into :P502_SALMNNAME',
'    FROM nmsmnmas  w',
'   WHERE w.compcode = :compcode',
'     AND w.SMANCODE =:P502_SALMANID;',
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
,p_attribute_02=>'P502_SALMANID'
,p_attribute_03=>'P502_SALMNNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67882015726477027)
,p_name=>'clear  for docnum49'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(68430691865701174)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67882531379477027)
,p_event_id=>wwv_flow_api.id(67882015726477027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P502_DOCNUMBR49'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67882966655477027)
,p_name=>'click on delivery challan'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(68431474090701177)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67883428046477027)
,p_event_id=>wwv_flow_api.id(67882966655477027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$( "#P502_ERRMSG" ).dialog({',
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
 p_id=>wwv_flow_api.id(67883804009477027)
,p_name=>'click for delivery'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(68431474090701177)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67884349004477027)
,p_event_id=>wwv_flow_api.id(67883804009477027)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'beforeInsert();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67884752986477028)
,p_name=>'change on orderno from sales offer'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_ORDERNO'
,p_condition_element=>'P502_ORDERNO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67885198360477028)
,p_event_id=>wwv_flow_api.id(67884752986477028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:16 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :P502_ORDERNO IS NOT NULL',
'   THEN',
'      SELECT s.compcode, s.docttype, s.subttype, s.docnumbr,',
'             s.doctdate, s.serlnumb, s.partycde, s.itemcode,',
'             s.smancode, s.commcode, s.itemdesc,',
'             s.itemlong, s.discpcnt, s.discamnt, s.salerate,',
'             s.custmrid, s.costcode, s.warecode, s.batchnum,',
'             s.msfcamnt, s.apprqnty',
'        INTO :p502_compcode, :p502_docttype, :p502_subttype, :p502_docnumbr,',
'             :p502_doctdate, :p502_serlnumb, :p502_partycode, :p502_itemcode,',
'             :p502_salmanid, :p502_unitofmesure,',
'             :p502_itemdesc, :p502_itemlong_1, :p502_discpcnt, :p502_disamount,',
'             :p502_salprice, :p502_customerid, :p502_costcode, :p502_warecode,',
'             :p502_batchnum, :p502_netamount, :p502_quentity ',
'        FROM nmslsofr s',
'       WHERE s.docnumbr = :P502_ORDERNO;',
'   END IF;',
'END;'))
,p_attribute_02=>'P502_ORDERNO'
,p_attribute_03=>'P502_COMPCODE,P502_DOCTTYPE,P502_SUBTTYPE,P502_DOCNUMBR,P502_DOCTDATE,P502_SERLNUMB,P502_PARTYCODE,P502_ITEMCODE,P502_SALMANID,P502_UNITOFMESURE,P502_ITEMDESC,P502_ITEMLONG_1,P502_DISCPCNT,P502_DISAMOUNT,P502_SALPRICE,P502_CUSTOMERID,P502_COSTCODE,P5'
||'02_WARECODE,P502_BATCHNUM,P502_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67885659432477028)
,p_name=>'change on javascript on tabular form'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_ORDERNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67886159585477028)
,p_event_id=>wwv_flow_api.id(67885659432477028)
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
 p_id=>wwv_flow_api.id(67886551989477028)
,p_name=>'change on source cost code'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_SRCCOSTCD'
,p_condition_element=>'P502_SRCCOSTCD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67887052426477028)
,p_event_id=>wwv_flow_api.id(67886551989477028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P502_SRCCOSTCD IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT  w.WAREDESC',
'into :P502_SRCCOSTDS',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P502_SRCCOSTCD)',
'     AND costcode = :P502_SRCCOSTCD',
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
'IF :P502_SRCCOSTCD IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.warecode',
'into :P502_SOURCEWARECODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P502_SRCCOSTCD)',
'     AND costcode = :P502_SRCCOSTCD',
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
'END;'))
,p_attribute_02=>'P502_SRCCOSTCD'
,p_attribute_03=>'P502_SOURCEWARECODE,P502_SRCCOSTDS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67887456547477028)
,p_name=>'check all'
,p_event_sequence=>320
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#tcheckbox'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67887917120477028)
,p_event_id=>wwv_flow_api.id(67887456547477028)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
' for (i=1;i<=3000;i++)',
'{',
'var b = zeroPad(i, 1);',
'document.getElementById(("f30_").concat(b)).checked=false;',
'};'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67888459729477028)
,p_event_id=>wwv_flow_api.id(67887456547477028)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $( ''#tcheckbox'' ).is('':checked'') ) {',
'  $(''input[type=checkbox][name=f40]'').attr(''checked'',true);',
'}',
'else {',
'  $(''input[type=checkbox][name=f40]'').attr(''checked'',false);',
'}',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67888775543477028)
,p_name=>'change on warecode'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P502_WARECODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67889270961477030)
,p_event_id=>wwv_flow_api.id(67888775543477028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' If :P502_WARECODE is not null then',
'Select costcode',
'   	into   :P502_COSTCODE',
'   	from   nmwhsmas',
'   	where  compcode = :compcode ',
'   	and    warecode = :P502_WARECODE;',
'SELECT    waredesc',
'INTO :P502_WAREDESC',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode ',
'   and  warecode = :P502_WARECODE;',
'end if;',
'    EXCEPTION',
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
'   End;',
' ',
'Begin',
'  If :P502_COSTCODE is not null then',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P502_COSTCENTERNAME',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P502_COSTCODE ;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
'  End if;',
'End;'))
,p_attribute_02=>'P502_WARECODE,P502_COSTCODE'
,p_attribute_03=>'P502_COSTCODE,P502_WAREDESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67799857722476946)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(123211948920025672)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_01=>'ORBRGS_RMG'
,p_attribute_02=>'NMSLSOFR'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(67771665645476916)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67860821531477006)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert  into nmslsofr from excel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_query varchar2(4000);',
'  v_sheet_name varchar2(100);',
'  v_sheet_nr number;',
'  v_cnt number;',
'begin',
'/* Brzydkie rozwiazanie ale chce pokazac przyklad jak mozna dynamicznie stworzyc kwerende na xlsx-a */',
'  select min(sheet_nr) into v_sheet_nr from (select * from table( as_read_xlsx.read( (select blob_content from XLSX_FILES where id = :P502_FILE_ID )) ));',
'  ',
'  select min(sheet_name) into v_sheet_name',
'   from(select * from table( as_read_xlsx.read( (select blob_content from XLSX_FILES where id = :P502_FILE_ID )) )) where sheet_nr =  :P502_SHEET;',
'',
'  ',
'  v_cnt := 0;',
'  ',
'  for x in (with xlsx as (select ',
'    ROW_NR,',
'    COL_NR,',
'    case CELL_TYPE',
'      when ''S'' then STRING_VAL',
'      when ''N'' then to_char(NUMBER_VAL)',
'      when ''D'' then to_char(DATE_VAL, ''YYYY-MM-DD HH24:MI:SS'')',
'      else FORMULA',
'    end CELL_VAL -- to make PIVOT works we have to have one data type for this column - in our case CHAR',
'  from (select *',
'    from table( as_read_xlsx.read( (select blob_content from XLSX_FILES where id = :P502_FILE_ID ),v_sheet_name ) )))',
'select ad.* from xlsx ',
'PIVOT',
'  ( max(CELL_VAL)',
'    FOR COL_NR in (1 as COMPCODE,2 as  DOCTTYPE, 3 as SUBTTYPE,4 as  DOCNUMBR,5 as  DOCTDATE, 6 as SERLNUMB,trim(7) as  ITEMCODE,8 as  ITEMTYPE, 9 as ITEMDESC,',
'    10 as  ITEMLONG,11 as  ITEMRATE, 12 as HUOMCODE,13 as  LUOMCODE,14 as ORGNQNTY,15 as CURRCODE,16 as EXCGRATE,17 as  COSTCODE, 18 as STATUSCD,19 as OPRSTAMP,20 as TIMSTAMP )) ad',
'where row_nr >1 )',
'  loop',
'  /*dbms_output.put_line(x.COMPCODE||'' , ''||x.DOCTTYPE||'' , ''||x.SUBTTYPE||'' , ''||x.DOCNUMBR||'' , ''||x.DOCTDATE||'' , ''||x.SERLNUMB||'' , ''||TRIM(x.ITEMCODE)||'' , ''||x.ITEMTYPE||'' , ''||x.ITEMDESC||'' , ''||',
'                            x.ITEMLONG||'' , ''||x.ITEMRATE||'' , ''|| x.HUOMCODE||'' , ''|| x.LUOMCODE||'' , ''||x.ORGNQNTY||'' , ''||x.CURRCODE||'' , ''||x.EXCGRATE||'' , ''||x.COSTCODE||'' , ''||x.STATUSCD||'' , ''||x.OPRSTAMP||'' , ''||',
'                            x.TIMSTAMP);*/',
'    --v_cnt := v_cnt+1;',
'    insert into EXCEL (COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, SERLNUMB, ITEMCODE, ITEMTYPE, ITEMDESC, ',
'                            ITEMLONG, ITEMRATE, HUOMCODE, LUOMCODE, ORGNQNTY, CURRCODE, EXCGRATE, COSTCODE, STATUSCD, OPRSTAMP, TIMSTAMP)',
'  values(x.COMPCODE, x.DOCTTYPE, x.SUBTTYPE, x.DOCNUMBR, to_date(x.DOCTDATE,''RRRR-MM-DD HH24:MI:SS''), x.SERLNUMB, TRIM(x.ITEMCODE),x.ITEMTYPE,x.ITEMDESC, ',
'                            x.ITEMLONG, x.ITEMRATE, x.HUOMCODE, x.LUOMCODE, x.ORGNQNTY, x.CURRCODE, x.EXCGRATE, x.COSTCODE, x.STATUSCD, x.OPRSTAMP,  to_date(x.TIMSTAMP,''RRRR-MM-DD HH24:MI:SS''));',
'  end loop;',
'  ',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(67820629191476974)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67800231823476946)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(123211948920025672)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMSLSOFR'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(67798194033476941)
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67859985552477006)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of XLSX_FILES'
,p_attribute_02=>'XLSX_FILES'
,p_attribute_03=>'P502_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P502_FILESIZE'
,p_attribute_11=>'I'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(67820203005476974)
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37335628205756113)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(123211948920025672)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert nmslsofr'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_slsofrno number:=100;',
'BEGIN',
'select max(nvl(slsofrno,0))+1 into v_slsofrno from nmslsofr;',
'begin',
'INSERT INTO NMSLSOFR',
'            (COMPCODE, DOCTTYPE, SUBTTYPE,',
'             DOCNUMBR, DOCTDATE, SERLNUMB, PARTYCDE, RAISEDBY, APPRVDBY,',
'             APPRDATE, REQDDATE, COMMCODE, ITEMCODE, ITEMTYPE,  ',
'             ITEMDESC, ITEMLONG, ITEMRATE, DISCPCNT, DISCAMNT, SPLDISPC,',
'             SPLDISNT, SALERATE, HUOMCODE, FACTRVAL, LUOMCODE, ORGNQNTY,',
'             APPRQNTY, MSFCAMNT, CURRCODE, EXCGRATE, MSLCAMNT, REFNUMBR,',
'             REFNDATE, UPDOCTYP, UPSUBTYP, UPDOCNUM, UPDOCDTE, UPDOCSRL,',
'             REMARKSS, COSTCODE, WARECODE, STATUSCD, OPRSTAMP, COLORCDE,',
'             TIMSTAMP, COSTRATE, TRNSQNTY, PRICFLAG, POSTFLAG, BATCHNUM,',
'             SLSOFRNO, CUSTMRID,  SMANCODE',
'            )',
'     VALUES (:COMPCODE, :P502_DOCTTYPE, :P502_SUBTTYPE,',
'             :P502_DOCNUMBR, :P502_DOCTDATE, :SERLNUMB, :P502_PARTYCODE, :APP_USER, NULL,',
'             NULL, :P502_DOCTDATE, :COMMCODE, :ITEMCODE, :ITEMTYPE,',
'             :ITEMDESC, :ITEMDESC, :ITEMRATE, NULL, NULL, NULL,',
'             NULL, :SALERATE, :LUOMCODE, NULL, :LUOMCODE, :APPRQNTY,',
'             :APPRQNTY,  :SALERATE*:APPRQNTY, ''BDT'', 1, :SALERATE*:APPRQNTY, NULL,',
'             :P502_DOCTDATE, NULL, NULL, NULL, NULL, NULL,',
'             :REMARKSS, :P502_COSTCODE, :P502_WARECODE, ''APR'', :APP_USER,:COLORCDE,',
'             SYSDATE, :COSTRATE, NULL, ''N'', NVL(:POSTFLAG,''N''),:BATCHNUM,',
'             v_slsofrno,:P502_CUSTOMERID,:P502_SALMANID',
'            );',
' end;',
' exception',
'when no_data_found then',
'v_slsofrno:=1;',
'when others then',
'v_slsofrno:=1;',
'  END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(67772436608476916)
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'Record generate successfully<br>Requisition No. : &P502_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(65846536078133733)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'page load max slsofrno'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_slsofrno number;',
'BEGIN',
'select max(slsofrno)+1 into :P502_SLSOFRNO from nmslsofr;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39154612559040929)
,p_process_sequence=>110
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'page load max slsofrno'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_slsofrno number;',
'BEGIN',
'select max(slsofrno)+1 into :P502_SLSOFRNO from nmslsofr;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67799381827476944)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(123211948920025672)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'check duplicate item on tabular'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vAccNo1    VARCHAR2(1024);',
'vAccNo2    VARCHAR2(1024);',
'vAmount    NUMBER;',
'',
'BEGIN',
'',
'',
' FOR i IN 1 .. APEX_APPLICATION.g_f13.COUNT',
' LOOP',
'   vAccNo1  := APEX_APPLICATION.g_f13(i);',
'',
'  FOR j IN 1 .. APEX_APPLICATION.g_f13.COUNT',
'  LOOP',
'  BEGIN',
'    vAccNo2  := APEX_APPLICATION.g_f13(j);',
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
,p_process_when_button_id=>wwv_flow_api.id(67772436608476916)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67859579881477006)
,p_process_sequence=>90
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE Process on nmslsofr'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update nmslsofr',
'set COSTCODE=:p502_costcode,',
'WARECODE=:p502_warecode',
'where compcode=:p502_compcode_application',
'and DOCNUMBR=:p502_docnumbr',
'and doctdate =:p502_doctdate',
'and docttype=:p502_docttype',
'and subttype=:p502_subttype;',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(67771665645476916)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67860441086477006)
,p_process_sequence=>100
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'docnumber  no generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'Docnumber_generation (:COMPCODE, ''NM'', :P502_DOCTTYPE, :P502_SUBTTYPE, TRUNC (SYSDATE), :P502_WARECODE, ''NM'', :P502_DOCNUMBR);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(67772436608476916)
);
wwv_flow_api.component_end;
end;
/
