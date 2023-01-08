prompt --application/pages/page_00104
begin
--   Manifest
--     PAGE: 00104
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
 p_id=>104
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Warehouse Stock Issue Entry'
,p_page_mode=>'MODAL'
,p_step_title=>'&PAGE_TITLE.'
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
'document.getElementById(''P81_TABULARITEMCODE'').value=',
'    html_GetElement(''f13_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P81_TABULARITEMCODE'').trigger(''click'');',
'});',
'html_GetElement(''f12_''+vRow).value=',
'document.getElementById(''P81_TABITEMTYPE'').value;',
'html_GetElement(''f14_''+vRow).value=',
'document.getElementById(''P81_TABITEMDESC'').value;',
'html_GetElement(''f17_''+vRow).value=',
'document.getElementById(''P81_TABITEMRATE'').value;',
'html_GetElement(''f18_''+vRow).value=',
'document.getElementById(''P81_TABITEMUNIT'').value;',
'html_GetElement(''f19_''+vRow).value=',
'document.getElementById(''P81_TABCOMMGRUP'').value;',
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
'  $x(''P81_TABTOTDISAM'').value = $total;',
' }',
'</script>',
'',
'<script>',
'function abc()',
'{',
'doSubmit(''XYZ'') //here XYZ is the name of request which helps to call plsql procedure..you can use request name according to you.',
'}',
'</script>',
'<script type="text/javascript" src="#WORKSPACE_IMAGES#amilos_refreshIR.js"></script>',
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
'function setDeptno(pDeptno) {',
'  var get = new htmldb_Get(null, &APP_ID., ''APPLICATION_PROCESS=dummy'', 0);',
'  get.add(''P81_DEPTNO'', pDeptno);',
'  gReturn = get.get();',
'  get = null;',
'  $s(''P81_DEPTNO'', pDeptno);',
'}',
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
'    }',
'.t-Region h2.t-Region-title {',
'    color: rgb(255, 255, 255);',
'}',
'.t-Region-headerItems--title {',
'    text-align: center;',
'    padding: 0.0rem 0.0rem;',
'    background-color: #1F68A7;',
'}',
'.t-Form-inputContainer, .t-Form-inputContainer.col, .t-Form-labelContainer, .t-Form-labelContainer.col {',
'    padding: 0.2rem;',
'}',
'.t-Form-label {',
'    padding: .0rem 0;',
'    line-height: 1.0rem;',
'    display: inline-block;',
'    -webkit-hyphens: auto;',
'    -moz-hyphens: auto;',
'    -ms-hyphens: auto;',
'    hyphens: auto;',
'    font-size: 1.2rem;',
'    margin-top: 0px;',
'}'))
,p_dialog_height=>'650'
,p_dialog_width=>'100%'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20200102204621'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121284693087756632)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121289137885756647)
,p_plug_name=>'Order and Booking Details'
,p_parent_plug_id=>wwv_flow_api.id(121284693087756632)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P104_TRANTYPE'
,p_plug_display_when_cond2=>'SI2'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121291952280756661)
,p_plug_name=>' <font color="chartreuse">&P104_DISPLAY.</font>'
,p_parent_plug_id=>wwv_flow_api.id(121284693087756632)
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_api.id(121292305843756661)
,p_plug_name=>' &nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(121291952280756661)
,p_region_template_options=>'i-h150:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
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
 p_id=>wwv_flow_api.id(121307435750756680)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(121291952280756661)
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
 p_id=>wwv_flow_api.id(121318182742756685)
,p_name=>'Multiple Item Requisition'
,p_parent_plug_id=>wwv_flow_api.id(121291952280756661)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
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
'"BATCHNUM",',
'"COLORCDE",',
'"COSTRATE",',
'"BOM_NO"',
'from "#OWNER#"."NMSTKREC"',
'where compcode = :compcode ',
'and docttype = decode(:P104_PRVDNO,NULL,:P104_DOCTTYPE,:P104_S_PRDTYP)',
'and subttype = decode(:P104_PRVDNO,NULL,:P104_SUBTTYPE,:P104_S_PRSTYP)',
'and DOCNUMBR= nvl(:P104_PRVDNO,:P104_DOCNUMBR)',
'',
'',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P104_PRVDNO,P104_S_PRDTYP,P104_S_PRSTYP,P104_DOCNUMBR'
,p_lazy_loading=>false
,p_query_num_rows=>25
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
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
'and docttype = :P81_DOCTTYPE ',
'and subttype = Nvl(:P81_SUBTTYPE,subttype) ',
'and docnumbr = :P81_PRVDNO ',
'and doctdate = Nvl(:P81_DOCTDATE,doctdate)'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121318974468756688)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_pk_col_source_type=>'T'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121319435402756688)
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
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121319848123756688)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121320210301756688)
,p_query_column_id=>4
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121320660098756688)
,p_query_column_id=>5
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121321033100756688)
,p_query_column_id=>6
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121321383712756688)
,p_query_column_id=>7
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121321815430756688)
,p_query_column_id=>8
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121322169664756688)
,p_query_column_id=>9
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'RAISEDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121322593883756690)
,p_query_column_id=>10
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'APPRVDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121323004754756690)
,p_query_column_id=>11
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'APPRDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121323458642756690)
,p_query_column_id=>12
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'REQDDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121323860002756690)
,p_query_column_id=>13
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>36
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'COMMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121324212940756690)
,p_query_column_id=>14
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>14
,p_column_heading=>'Itemcode'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>20
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121324573818756690)
,p_query_column_id=>15
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121325027088756690)
,p_query_column_id=>16
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>15
,p_column_heading=>'Itemdesc'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>30
,p_cattributes=>'onchange=disable_column_2( this )'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121325442923756690)
,p_query_column_id=>17
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121325846002756690)
,p_query_column_id=>18
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>19
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121326255030756691)
,p_query_column_id=>19
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>24
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_cattributes=>'onchange="calculateTotal1(this);addTotal(this);"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121326582227756691)
,p_query_column_id=>20
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_cattributes=>'onchange="calculateTotal2(this);addTotal(this);"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121327051071756691)
,p_query_column_id=>21
,p_column_alias=>'SPLDISPC'
,p_column_display_sequence=>29
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121327419716756691)
,p_query_column_id=>22
,p_column_alias=>'SPLDISNT'
,p_column_display_sequence=>31
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121327840166756691)
,p_query_column_id=>23
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>25
,p_column_heading=>'Salerate'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>8
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121328192284756691)
,p_query_column_id=>24
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121328630902756691)
,p_query_column_id=>25
,p_column_alias=>'FACTRVAL'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121328975620756691)
,p_query_column_id=>26
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>20
,p_column_heading=>'Suom.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>5
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121329422929756691)
,p_query_column_id=>27
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>21
,p_column_heading=>'Req. Qty.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>8
,p_cattributes=>'onchange="calculateTotal(this);"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121329795374756691)
,p_query_column_id=>28
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>22
,p_column_heading=>'Appr. Qty.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>8
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121330183397756691)
,p_query_column_id=>29
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>23
,p_column_heading=>'Iss. Qty.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>8
,p_cattributes=>'onchange="calculateTotal(this);",onchange="addTotal();"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121330640676756691)
,p_query_column_id=>30
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121331000846756691)
,p_query_column_id=>31
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121331433273756693)
,p_query_column_id=>32
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>37
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121331775069756693)
,p_query_column_id=>33
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>38
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121332228642756693)
,p_query_column_id=>34
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>39
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121332600177756697)
,p_query_column_id=>35
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121332994604756697)
,p_query_column_id=>36
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>41
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121333369115756697)
,p_query_column_id=>37
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>42
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121333799161756697)
,p_query_column_id=>38
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>43
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121334227305756697)
,p_query_column_id=>39
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>44
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121334651478756699)
,p_query_column_id=>40
,p_column_alias=>'UPDOCSRL'
,p_column_display_sequence=>45
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121334972721756699)
,p_query_column_id=>41
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>35
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>30
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121335402199756699)
,p_query_column_id=>42
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>46
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121335791606756699)
,p_query_column_id=>43
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>47
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121336204238756699)
,p_query_column_id=>44
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>48
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121336593922756700)
,p_query_column_id=>45
,p_column_alias=>'PRNTFLAG'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121337028490756700)
,p_query_column_id=>46
,p_column_alias=>'PRICFLAG'
,p_column_display_sequence=>51
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121337444791756700)
,p_query_column_id=>47
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>33
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121337824544756700)
,p_query_column_id=>48
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>52
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121338170257756700)
,p_query_column_id=>49
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>49
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121338608095756700)
,p_query_column_id=>50
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>16
,p_column_heading=>'Batch<br>No.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>8
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121338981175756700)
,p_query_column_id=>51
,p_column_alias=>'COLORCDE'
,p_column_display_sequence=>53
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121339404919756700)
,p_query_column_id=>52
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>26
,p_column_heading=>'Costrate'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>8
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73856080880804141)
,p_query_column_id=>53
,p_column_alias=>'BOM_NO'
,p_column_display_sequence=>54
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(121318635020756685)
,p_query_column_id=>54
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121343826945756710)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>190
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(121307782672756680)
,p_button_sequence=>1670
,p_button_plug_id=>wwv_flow_api.id(121307435750756680)
,p_button_name=>'P104_SHOWHIDE'
,p_button_static_id=>'P81_SHOWHIDE'
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
 p_id=>wwv_flow_api.id(121285078935756632)
,p_button_sequence=>1930
,p_button_plug_id=>wwv_flow_api.id(121284693087756632)
,p_button_name=>'P104_RUNREPORT'
,p_button_static_id=>'P81_RUNREPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Run Report'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:49:P49_PROGNAME,P49_DOCNUMBR:&P104_PROGNAME.,&P104_DOCNUMBR49.'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(121285526159756640)
,p_button_sequence=>1940
,p_button_plug_id=>wwv_flow_api.id(121284693087756632)
,p_button_name=>'P104_MNYRECEIPT'
,p_button_static_id=>'P81_MNYRECEIPT'
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
 p_id=>wwv_flow_api.id(121285890682756641)
,p_button_sequence=>1980
,p_button_plug_id=>wwv_flow_api.id(121284693087756632)
,p_button_name=>'P104_DELIVERY'
,p_button_static_id=>'P81_DELIVERY'
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
 p_id=>wwv_flow_api.id(121339856298756700)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(121318182742756685)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(121340250222756702)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(121318182742756685)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(121344200155756710)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(121343826945756710)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--large:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:999:&SESSION.:A:&DEBUG.:104::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(121344584958756710)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(121343826945756710)
,p_button_name=>'CREATE'
,p_button_static_id=>'BUT_CRT_FRM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--large:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CHANGE'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(121345065318756710)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(121343826945756710)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--large:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'CHANGE'
,p_button_condition=>'P104_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(121345408687756710)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(121343826945756710)
,p_button_name=>'CREATE_NEW'
,p_button_static_id=>'BUT_CRT_TAB'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CHANGE'
,p_button_condition=>'P104_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(121286321496756641)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(121284693087756632)
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
 p_id=>wwv_flow_api.id(121286739586756641)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(121284693087756632)
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
 p_id=>wwv_flow_api.id(121287135337756641)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(121284693087756632)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(121287526527756641)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(121284693087756632)
,p_button_name=>'DELIVERY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delivery'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(121381380507756729)
,p_branch_action=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:104::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(61661815880080292)
,p_branch_sequence=>11
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121287957803756643)
,p_name=>'P104_PROGNAME'
,p_item_sequence=>1960
,p_item_plug_id=>wwv_flow_api.id(121284693087756632)
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
 p_id=>wwv_flow_api.id(121288278299756646)
,p_name=>'P104_DOCNUMBR49'
,p_item_sequence=>1970
,p_item_plug_id=>wwv_flow_api.id(121284693087756632)
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
 p_id=>wwv_flow_api.id(121288716820756646)
,p_name=>'P104_TRNDATE'
,p_item_sequence=>1990
,p_item_plug_id=>wwv_flow_api.id(121284693087756632)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Tran. Date'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>12
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121289468000756647)
,p_name=>'P104_ORDERNO'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_api.id(121289137885756647)
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
'            AND s.docttype = :P104_REQREFTYPE',
'            AND s.subttype = :P104_REQSUBTYPE',
'            AND s.doctdate <= :P104_ORDERDATE',
'            AND s.compcode = sls.compcode(+)',
'            AND s.docnumbr = sls.updocnum(+)',
'            AND s.itemcode = sls.itemcode(+)',
'            AND s.apprqnty > NVL (sls.apprqnty, 0)',
'       ORDER BY 2 DESC'))
,p_lov_cascade_parent_items=>'P104_REQREFTYPE,P104_REQSUBTYPE,P104_ORDERDATE'
,p_ajax_items_to_submit=>'P104_REQREFTYPE,P104_REQSUBTYPE,P104_ORDERDATE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
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
 p_id=>wwv_flow_api.id(121289907875756647)
,p_name=>'P104_ORDERDATE'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(121289137885756647)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121290293380756649)
,p_name=>'P104_BOOKINGNO'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(121289137885756647)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121290672401756649)
,p_name=>'P104_BOOKINGDT'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(121289137885756647)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121291123429756649)
,p_name=>'P104_REQREFTYPE'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(121289137885756647)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121291507938756660)
,p_name=>'P104_REQSUBTYPE'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(121289137885756647)
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
 p_id=>wwv_flow_api.id(121292752412756663)
,p_name=>'P104_REGION'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121293090125756663)
,p_name=>'P104_COMPCODE'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121293513219756663)
,p_name=>'P104_OPRSTAMP'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121293913054756663)
,p_name=>'P104_TIMSTAMP'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121294267205756663)
,p_name=>'P104_SERLNUMB'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121294761723756665)
,p_name=>'P104_STATUSCD'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121295148458756665)
,p_name=>'P104_ITEMLONG_1'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121295508734756665)
,p_name=>'P104_MSFCAMNT'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121295918485756665)
,p_name=>'P104_TRANTYPE'
,p_item_sequence=>1450
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
,p_prompt=>'Tran Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_colspan=>7
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121296295621756665)
,p_name=>'P104_ROWID'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121296684812756665)
,p_name=>'P104_DOCTTYPE'
,p_item_sequence=>1470
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&DOCTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121297083185756665)
,p_name=>'P104_DOCNUMBR1'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121297547633756665)
,p_name=>'P104_SUBTTYPE'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
,p_item_default=>'&SUBTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121297953299756666)
,p_name=>'P104_PRVREF'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
,p_item_default=>':DOCDESC'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Prv. Ref. Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_colspan=>7
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121298366814756672)
,p_name=>'P104_ITEMCODE1'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121298763353756672)
,p_name=>'P104_S_PRDTYP'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prdoctyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121299048788756675)
,p_name=>'P104_COMPCODE_APPLICATION'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121299397839756675)
,p_name=>'P104_S_PRSTYP'
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prsubtyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121299811264756675)
,p_name=>'P104_TABULARITEMCODE'
,p_is_required=>true
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121300212001756677)
,p_name=>'P104_TABCOSTRATE'
,p_item_sequence=>1540
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121300576572756677)
,p_name=>'P104_TABITEMDESC'
,p_item_sequence=>1550
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121301047382756677)
,p_name=>'P104_TABITEMRATE'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121301441868756677)
,p_name=>'P104_TABITEMUNIT'
,p_item_sequence=>1570
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121301804576756677)
,p_name=>'P104_DOCDESC'
,p_item_sequence=>1451
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
,p_prompt=>'Tran Type'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>7
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121302238470756677)
,p_name=>'P104_TABCLOSINGBALANCE'
,p_item_sequence=>1580
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121302577201756679)
,p_name=>'P104_TABITEMTYPE'
,p_item_sequence=>1590
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121303019386756679)
,p_name=>'P104_TABCOMMGRUP'
,p_item_sequence=>1600
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
 p_id=>wwv_flow_api.id(121303402254756679)
,p_name=>'P104_DOCNUMBR'
,p_item_sequence=>1610
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
,p_prompt=>'Tran No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121303835932756679)
,p_name=>'P104_TABSALEPERC'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121304237707756679)
,p_name=>'P104_DOCTDATE'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Tran Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_CUSTOMERID'')"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121304655996756680)
,p_name=>'P104_PRVDNO'
,p_item_sequence=>1621
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT docnumbr d, docnumbr r',
'           FROM nmstkrec',
'          WHERE compcode = :compcode ',
'            AND docttype = :P104_S_PRDTYP',
'            AND subttype = :P104_S_PRSTYP',
'         --   AND statuscd <> ''NEW''',
'          -- AND NVL (srcwrecd, ''A'') = NVL (:P104_SRWHSCDE, NVL (srcwrecd, ''A''))',
'            AND apprqnty - (NVL (trnsqnty, 0) + NVL (trnsqty2, 0)) > 0',
'            AND costcode IN (SELECT cabasecc',
'                               FROM sycstacc',
'                              WHERE compcode = :compcode AND grupcode = :APP_USER)',
''))
,p_lov_cascade_parent_items=>'P104_S_PRDTYP,P104_S_PRSTYP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>12
,p_cMaxlength=>4000
,p_tag_attributes=>'href="javascript:void(0)" onchange="setDeptno(this);"'
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
 p_id=>wwv_flow_api.id(121305025948756680)
,p_name=>'P104_PRVDDT'
,p_item_sequence=>1622
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
,p_prompt=>'Request Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121305417144756680)
,p_name=>'P104_REFNUM'
,p_item_sequence=>1623
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
,p_prompt=>'Ext. Ref. No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121305845117756680)
,p_name=>'P104_REFNDATE'
,p_item_sequence=>1624
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
,p_prompt=>'Ext. Ref. Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121306194646756680)
,p_name=>'P104_BRAND'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121306659833756680)
,p_name=>'P104_MODAL'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121307051876756680)
,p_name=>'P104_UNITOFMESURE'
,p_item_sequence=>1650
,p_item_plug_id=>wwv_flow_api.id(121292305843756661)
,p_prompt=>'Unit Of Mesurement'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121308230151756680)
,p_name=>'P104_SRWHSCDE'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_prompt=>'Source Whs. Cd.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select waredesc,warecode from nmwhsmas ',
'where compcode = :compcode  ',
'order by warecode'))
,p_cSize=>8
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(121308657030756682)
,p_name=>'P104_SRWHSNME'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>27
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_api.id(121309065907756682)
,p_name=>'P104_SRCSTCDE'
,p_item_sequence=>1105
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_prompt=>'Source Cst. Cd.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121309385650756682)
,p_name=>'P104_SRCSTNME'
,p_item_sequence=>1108
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121309853477756682)
,p_name=>'P104_DSWHSCDE'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_prompt=>'Destination Whs. Cd.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121310210409756682)
,p_name=>'P104_DSWHSNME'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121310612973756682)
,p_name=>'P104_SRCCOMPNM'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_prompt=>'Source Company'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>12
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121311049291756682)
,p_name=>'P104_SRCCOMPDS'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P1_COMPNAME.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121311388506756682)
,p_name=>'P104_COSTCODE'
,p_item_sequence=>1370
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_prompt=>'Business Unit'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>12
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_SALMANID'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121311841452756682)
,p_name=>'P104_COSTCENTERNAME'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>41
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
 p_id=>wwv_flow_api.id(121312171461756682)
,p_name=>'P104_SRCCOSTCD'
,p_item_sequence=>1510
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_prompt=>'Destination Cst. Cd.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121312579312756682)
,p_name=>'P104_SRCCOSTDS'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   INITCAP (costdesc) costdesc',
'    FROM syjobmas',
'   WHERE compcode = :compcode ',
'and costcode=:P104_SRCCOSTCD',
'ORDER BY costcode'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121313010139756683)
,p_name=>'P104_APRPERSON'
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_prompt=>'Approve Person'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>12
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121313411969756683)
,p_name=>'P104_APRPERSNM'
,p_item_sequence=>1550
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>43
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121313859385756683)
,p_name=>'P104_RAISEDBY'
,p_item_sequence=>1590
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_item_default=>'&APP_USER.'
,p_prompt=>'Raised By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>'RILADM'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121314172528756683)
,p_name=>'P104_RAISEDNAME'
,p_item_sequence=>1600
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USERNAME from syusrmas',
'where upper(USERCODE)=:APP_USER'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>34
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>'&P1_USER_NAME.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121314647372756683)
,p_name=>'P104_CUSTOMTYPE'
,p_item_sequence=>1610
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_item_default=>'COR'
,p_prompt=>'Customer Type'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100%;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SYCODDES d,SYSOFCDE r from sycodmas where SYSOFCDE in',
'(select distinct PARTYTYP from sycompty)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''SY''',
'and SYHRDCDE=''CUS'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121315065918756683)
,p_name=>'P104_CUSTOMERID'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_prompt=>'Customer Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_COSTCODE'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121315435992756683)
,p_name=>'P104_CUSTOMERNAME'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121315769643756683)
,p_name=>'P104_LOVCOSTCODE'
,p_item_sequence=>1680
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,1'
,p_attribute_06=>'1'
,p_attribute_07=>'P104_COSTCODE'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121316245939756683)
,p_name=>'P104_LOVSALMANID'
,p_item_sequence=>1800
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
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
'            AND w.costcode = :P104_COSTCODE'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'2,1'
,p_attribute_06=>'1'
,p_attribute_07=>'P104_SALMANID'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121316662373756683)
,p_name=>'P104_SALMANID'
,p_item_sequence=>1850
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
,p_prompt=>'Sales Man'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_ITEMCODE'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121317024411756683)
,p_name=>'P104_WARECODE'
,p_item_sequence=>2320
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121317383146756683)
,p_name=>'P104_SALMNNAME'
,p_item_sequence=>2330
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
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
 p_id=>wwv_flow_api.id(121317852629756685)
,p_name=>'P104_SOURCEWARECODE'
,p_item_sequence=>2340
,p_item_plug_id=>wwv_flow_api.id(121307435750756680)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121340588659756702)
,p_name=>'P104_TABTOTDISAM'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_api.id(121318182742756685)
,p_prompt=>'Total Discount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_api.id(127779156391275404)
,p_name=>'P104_DISPLAY'
,p_item_sequence=>2350
,p_item_plug_id=>wwv_flow_api.id(121291952280756661)
,p_item_default=>':DOCDESC||''  (''||:DOCTTYPE||''/''||:SUBTTYPE||'')'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>':P104_DOCDESC||''  (''||:P104_DOCTTYPE||''/''||:P104_SUBTTYPE||'')'''
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(121345897273756713)
,p_validation_name=>'Docdate validation for tabular'
,p_validation_sequence=>10
,p_validation=>'P104_DOCTDATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(121345408687756710)
,p_associated_item=>wwv_flow_api.id(121304237707756679)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(121346287617756713)
,p_validation_name=>'Costcode  validation for tabular'
,p_validation_sequence=>30
,p_validation=>'P104_SRWHSCDE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(121345408687756710)
,p_associated_item=>wwv_flow_api.id(121308230151756680)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(121341148668756704)
,p_tabular_form_region_id=>wwv_flow_api.id(121318182742756685)
,p_validation_name=>'Itemcode  validation for tabular'
,p_validation_sequence=>50
,p_validation=>'ITEMCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(54098294570788066)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ITEMCODE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(121346754989756713)
,p_validation_name=>'P104_SUBTTYPE'
,p_validation_sequence=>60
,p_validation=>'P104_SUBTTYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(121345408687756710)
,p_associated_item=>wwv_flow_api.id(121297547633756665)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(121347141802756713)
,p_validation_name=>'P104_SRCCOMPNM'
,p_validation_sequence=>70
,p_validation=>'P104_SRCCOMPNM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(121345408687756710)
,p_associated_item=>wwv_flow_api.id(121310612973756682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(121347562377756713)
,p_validation_name=>'P104_SRCCOSTCD'
,p_validation_sequence=>80
,p_validation=>'P104_SRCCOSTCD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(121345408687756710)
,p_associated_item=>wwv_flow_api.id(121312171461756682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(121347965878756713)
,p_validation_name=>'P104_APRPERSON'
,p_validation_sequence=>90
,p_validation=>'P104_APRPERSON'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(121345408687756710)
,p_associated_item=>wwv_flow_api.id(121313010139756683)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(121341564727756707)
,p_tabular_form_region_id=>wwv_flow_api.id(121318182742756685)
,p_validation_name=>'ORGNQNTY'
,p_validation_sequence=>100
,p_validation=>'ORGNQNTY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(54098294570788066)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ORGNQNTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121348579788756713)
,p_name=>'change on customer id'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_CUSTOMERID'
,p_condition_element=>'P104_CUSTOMERID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121349105223756714)
,p_event_id=>wwv_flow_api.id(121348579788756713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P104_CUSTOMERID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT distinct c.CUSTADR1,r.AREACODE,r.ZONLCODE,r.partycde,CUSTNAME',
'into :P104_CUSADDRESS,:P104_AREACODE,:P104_ZONE,:P104_PARTYCODE,:P104_CUSTOMERNAME',
'  FROM nmcusmas c, sycompty r',
' WHERE c.PARTYCDE = r.PARTYCDE(+) AND c.compcode = r.compcode',
'       AND c.compcode = :compcode',
'and c.CUSTMRID=:P104_CUSTOMERID;',
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
,p_attribute_02=>'P104_CUSTOMERID'
,p_attribute_03=>'P104_CUSADDRESS,P104_AREACODE,P104_ZONE,P104_PARTYCODE,P104_CUSTOMERNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121349469415756714)
,p_name=>'change on costcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_COSTCODE'
,p_condition_element=>'P104_COSTCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121350012881756714)
,p_event_id=>wwv_flow_api.id(121349469415756714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P104_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.warecode',
'into :P104_WARECODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P104_COSTCODE)',
'     AND costcode = :P104_COSTCODE',
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
'IF :P104_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct COSTDESC ',
'into :P104_COSTCENTERNAME',
'from syjobmas',
'where compcode = :compcode',
'AND costcode = :P104_COSTCODE;',
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
'IF :P104_COSTCODE IS NOT NULL and :P104_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT distinct SMANCODE',
'into :P104_SALMANID',
'        FROM nmsalrec',
'       WHERE docnumbr = :p104_docnumbr1',
'         AND DOCTDATE = :P104_DOCTDATE',
'         AND COSTCODE = :P104_COSTCODE;',
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
,p_attribute_02=>'P104_COSTCODE,P104_DOCNUMBR1,P104_DOCTDATE'
,p_attribute_03=>'P104_WARECODE,P104_COSTCENTERNAME,P104_SALMANID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121350406502756714)
,p_name=>'change on itemcode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_ITEMCODE'
,p_condition_element=>'P104_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121350963412756714)
,p_event_id=>wwv_flow_api.id(121350406502756714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P104_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P104_UNITOFMESURE,:P104_ITEMDESC,:P104_BRAND,:P104_MODAL,:P104_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P104_ITEMCODE;',
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
'IF :P104_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P104_SALPRICE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P104_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P104_ITEMCODE;',
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
'IF :P104_ITEMCODE1 IS NOT NULL and :P104_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) ',
'into :P104_QUENTITY',
'       from    nmsalrec s,(SELECT   SUM (d.trnsqnty) trnsqnty, d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE',
'                     FROM nmdevrec d',
'                     group by d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE) e',
'                     WHERE s.docnumbr = :p104_docnumbr1 AND s.itemcode = :p104_itemcode1',
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
,p_attribute_02=>'P104_ITEMCODE,P104_WARECODE,P104_ITEMCODE1,P104_DOCNUMBR1'
,p_attribute_03=>'P104_UNITOFMESURE,P104_ITEMDESC,P104_BRAND,P104_MODAL,P104_SALPRICE,P104_ISSUMTHD,P104_CLOSINGBALANCE,P104_QUENTITY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121351366743756714)
,p_name=>'change on trantype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_TRANTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121351797329756714)
,p_event_id=>wwv_flow_api.id(121351366743756714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select distinct TRANTYPE,SUBTTYPE ',
'into :P104_DOCTTYPE,:P104_SUBTTYPE',
'from SYDOCMAS ',
'where COMPCODE = :COMPCODE ',
'AND TRANTYPE=''IS''',
'AND SUBTTYPE=:P104_TRANTYPE',
'AND SYSDATE BETWEEN STRTPERD AND ENDPERD ',
'AND MODLCODE = :MODLCODE ;',
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
'END;',
'',
'BEGIN',
'  Select PRDOCTYP,PRSUBTYP',
'into :P104_PRDTYP,:P104_PRSTYP',
'        from   NMWRKFLW',
'        where  COMPCODE = :COMPCODE ',
'        and    TRDOCTYP = :P104_DOCTTYPE',
'        and    TRSUBTYP = :P104_SUBTTYPE;',
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
'END;',
'BEGIN',
'SELECT INITCAP (naration)',
'into :P104_PRVREF',
'  FROM sydocmas',
' WHERE compcode = :compcode ',
'   AND trantype = :P104_PRDTYP',
'   AND subttype = :P104_PRSTYP',
'   AND :P104_DOCTDATE BETWEEN strtperd AND endperd',
'   AND modlcode = :modlcode ;',
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
'END;',
'  ',
'',
''))
,p_attribute_02=>'P104_TRANTYPE,P104_DOCTDATE,P104_PRDTYP,P104_PRSTYP,P104_DOCTTYPE,P104_SUBTTYPE'
,p_attribute_03=>'P104_DOCTTYPE,P104_SUBTTYPE,P104_PRDTYP,P104_PRSTYP,P104_PRVREF'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121352216373756714)
,p_name=>'installment amount'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(51869188485777894)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121352760202756714)
,p_event_id=>wwv_flow_api.id(121352216373756714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P104_PERINSTALL:=(:P104_INSTLLAMOUNT/:P104_INSTALLNO);',
'end;'))
,p_attribute_02=>'P104_INSTLLAMOUNT,P104_INSTALLNO'
,p_attribute_03=>'P104_PERINSTALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121353255593756716)
,p_event_id=>wwv_flow_api.id(121352216373756714)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var tt = window.document.getElementById(''P104_INSTALLNO'').value;',
' for(i=0;i<tt;i++)',
'{',
'var pp = ''f02_000''.concat(i+1);',
'javascript:apex.widget.tabular.addRow();',
'window.document.getElementById(pp).value = window.document.getElementById(''P104_PERINSTALL'').value;',
'',
'}'))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pp = f02_000.concat(i);',
'',
'.concat(f02_000.concat(i)).concat('')'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121353621645756716)
,p_name=>'on change amount'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_QUENTITY'
,p_condition_element=>'P104_QUENTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121354148272756716)
,p_event_id=>wwv_flow_api.id(121353621645756716)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P104_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121354582070756716)
,p_event_id=>wwv_flow_api.id(121353621645756716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/05 14:26 (Formatter Plus v4.8.8) */',
'BEGIN',
'   :p104_amount := :p104_salprice * :p104_quentity;',
':P104_DISAMOUNT:=(:P104_AMOUNT*:P104_DISCPCNT)/100;',
':P104_NETAMOUNT:=nvl(:P104_AMOUNT,0)-nvl(:P104_DISAMOUNT,0);',
'END;'))
,p_attribute_02=>'P104_SALPRICE,P104_QUENTITY,P104_AMOUNT,P104_DISCPCNT,P104_DISAMOUNT'
,p_attribute_03=>'P104_AMOUNT,P104_DISAMOUNT,P104_NETAMOUNT'
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
 p_id=>wwv_flow_api.id(121354982103756718)
,p_name=>'on change discount percent'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_DISCPCNT'
,p_condition_element=>'P104_DISCPCNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121355502134756718)
,p_event_id=>wwv_flow_api.id(121354982103756718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P104_DISAMOUNT:=(:P104_AMOUNT*:P104_DISCPCNT)/100;',
'end;'))
,p_attribute_02=>'P104_AMOUNT,P104_DISCPCNT'
,p_attribute_03=>'P104_DISAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121355918591756718)
,p_name=>'on change amount and disamount'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_DISAMOUNT'
,p_condition_element=>'P104_DISAMOUNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121356415774756718)
,p_event_id=>wwv_flow_api.id(121355918591756718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P104_NETAMOUNT:=nvl(:P104_AMOUNT,0)-nvl(:P104_DISAMOUNT,0);',
'end;'))
,p_attribute_02=>'P104_AMOUNT,P104_DISAMOUNT'
,p_attribute_03=>'P104_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121356826285756718)
,p_name=>'query on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121357345225756719)
,p_event_id=>wwv_flow_api.id(121356826285756718)
,p_event_result=>'TRUE'
,p_action_sequence=>9
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:16 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :p104_itemcode1 IS NOT NULL AND :p104_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT s.compcode, s.docttype, s.subttype, s.docnumbr,',
'             s.doctdate, s.serlnumb, s.partycde, s.itemcode,',
'             s.smancode, s.commcode, s.itemdesc,',
'             s.itemlong, s.discpcnt, s.discamnt, s.salerate,',
'             s.custmrid, s.costcode, s.warecode, s.batchnum,',
'             s.msfcamnt, s.apprqnty, s.docnumbr',
'        INTO :p104_compcode, :p104_docttype, :p104_subttype, :p104_docnumbr,',
'             :p104_doctdate, :p104_serlnumb, :p104_partycode, :p104_itemcode,',
'             :p104_salmanid, :p104_unitofmesure,',
'             :p104_itemdesc, :p104_itemlong_1, :p104_discpcnt, :p104_disamount,',
'             :p104_salprice, :p104_customerid, :p104_costcode, :p104_warecode,',
'             :p104_batchnum, :p104_netamount, :p104_quentity , :P104_DOCNUMBR49',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p104_docnumbr1 AND s.itemcode = :p104_itemcode1;',
'   END IF;',
'END;',
'',
'BEGIN',
'   IF :p104_itemcode1 IS NOT NULL AND :p104_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT distinct TNSPRTYP,TRNSREGN,TNSCHSNO,DRIVNAME,DVNLIDNO,DVLICSNO,DELVLOCT',
'      into :p104_TNSPRTYP,:p104_TRNSREGN,:p104_TNSCHSNO,:p104_DRIVNAME,:p104_DVNLIDNO,:p104_DVLICSNO,:p104_DELVLOCT',
'        FROM nmdevrec ',
'        WHERE UPDOCNUM = :p104_docnumbr',
'      AND UPDOCDTE = :p104_doctdate',
'      and DOCTTYPE = ''GP''',
'      and SUBTTYPE=1;',
'   END IF;',
'END;'))
,p_attribute_02=>'P104_DOCNUMBR1,P104_ITEMCODE1,P104_DOCNUMBR,P104_DOCTDATE'
,p_attribute_03=>'P104_COMPCODE,P104_DOCTTYPE,P104_SUBTTYPE,P104_DOCNUMBR,P104_DOCTDATE,P104_SERLNUMB,P104_PARTYCODE,P104_ITEMCODE,P104_SALMANID,P104_UNITOFMESURE,P104_ITEMDESC,P104_ITEMLONG_1,P104_DISCPCNT,P104_DISAMOUNT,P104_SALPRICE,P104_CUSTOMERID,P104_COSTCODE,P1'
||'04_WARECODE,P104_BATCHNUM,P104_NETAMOUNT,P104_DOCNUMBR49,P104_TNSPRTYP,P104_TRNSREGN,P104_TNSCHSNO,P104_DRIVNAME,P104_DVNLIDNO,P104_DVLICSNO,P104_DELVLOCT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121357683646756721)
,p_name=>'change  on warecode'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121358188272756721)
,p_event_id=>wwv_flow_api.id(121357683646756721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P104_WARECODE IS NOT NULL and :P104_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT a.itemcode',
'into :P104_ITEMCODE ',
'           FROM nmsalrec a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''APR''',
'            AND a.itemcode = b.itemcode',
'            and a.DOCNUMBR=:P104_DOCNUMBR1',
'           -- AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P104_WARECODE',
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
,p_attribute_02=>'P104_DOCNUMBR1,P104_WARECODE'
,p_attribute_03=>'P104_ITEMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121358656751756721)
,p_name=>'change on batchnum'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121359121300756721)
,p_event_id=>wwv_flow_api.id(121358656751756721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P104_ITEMCODE IS NOT NULL and :P104_DOCNUMBR is not null',
'   THEN',
'      BEGIN',
' SELECT  batchnum d',
'into :P104_BATCHNUM',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmsalrec w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P104_ITEMCODE',
'                      AND w.warecode = :P104_WARECODE',
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
,p_attribute_02=>'P104_ITEMCODE,P104_DOCNUMBR,P104_WARECODE'
,p_attribute_03=>'P104_BATCHNUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121359535096756721)
,p_name=>'change  on itemcode1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_ITEMCODE1,P104_DOCNUMBR1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.da.testCondition( this.triggeringElement.id, ''NOT_NULL'' )'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121360043168756721)
,p_event_id=>wwv_flow_api.id(121359535096756721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P104_ITEMCODE1 IS NOT NULL and :P104_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
' SELECT s.DOCTTYPE,s.SUBTTYPE,s.DOCNUMBR,DOCTDATE,COSTCODE,SRCCMPCD',
'        INTO :P104_DOCTTYPE,:P104_SUBTTYPE,:P104_DOCNUMBR,:P104_DOCTDATE,:P104_COSTCODE,:P104_SRCCOMPNM ',
'        FROM nmstkrec s',
'       WHERE s.docnumbr = :p104_docnumbr1 AND s.itemcode = :p104_itemcode1;',
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
'IF :P104_ITEMCODE1 IS NOT NULL and :P104_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  distinct w.COSTCODE',
'into :P104_SRCCOSTCD',
'    FROM nmwhsmas w',
'    where w.warecode=(',
' SELECT SRCWRECD',
'        FROM nmstkrec s',
'       WHERE s.docnumbr = :p104_docnumbr1 AND s.itemcode = :p104_itemcode1',
'and s.COMPCODE=:COMPCODE)',
'and w.COMPCODE=:COMPCODE;',
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
'IF :P104_ITEMCODE1 IS NOT NULL and :P104_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT DISTINCT INITCAP (naration) naration',
'into :P104_DOCDESC',
'           FROM sydocmas',
'          WHERE compcode = :compcode ',
'            AND trantype = :P104_DOCTTYPE',
'            and SUBTTYPE = :P104_SUBTTYPE',
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
,p_attribute_02=>'P104_DOCNUMBR1,P104_ITEMCODE1'
,p_attribute_03=>'P104_DOCTTYPE,P104_SUBTTYPE,P104_DOCNUMBR,P104_DOCTDATE,P104_COSTCODE,P104_SRCCOSTCD,P104_SRCCOMPNM,P104_DOCDESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121360390037756721)
,p_name=>'showhide stats'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(54098467582788066)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'parseInt(window.document.getElementById(''P104_S_H_REGION'').value) == 1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121360915578756721)
,p_event_id=>wwv_flow_api.id(121360390037756721)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if( parseInt(window.document.getElementById(''P104_S_H_REGION'').value) == 1)',
'{',
'window.document.getElementById(''TR'').style.display="block";',
'window.document.getElementById(''IR'').style.display="none";',
'window.document.getElementById(''SR'').style.display="none";',
'--apex.item( "BUT_CRT_FRM" ).show();   ',
'apex.item( "BUT_CRT_TAB" ).hide();',
'/*window.document.getElementById(''BUT_CRT_FRM'').style.display="none";',
'window.document.getElementById(''BUT_CRT_TAB'').style.display="block";*/',
'window.document.getElementById(''P104_S_H_REGION'').value = 0;',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121361387811756721)
,p_event_id=>wwv_flow_api.id(121360390037756721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.document.getElementById(''P104_S_H_REGION'').value = 1;',
'window.document.getElementById(''TR'').style.display="none";',
'window.document.getElementById(''IR'').style.display="block";',
'window.document.getElementById(''SR'').style.display="block";',
'apex.item( "BUT_CRT_TAB" ).show();   ',
'--apex.item( "BUT_CRT_FRM" ).hide();',
'/*window.document.getElementById(''BUT_CRT_FRM'').style.display="block";',
'window.document.getElementById(''BUT_CRT_TAB'').style.display="none";*/',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121361810042756721)
,p_name=>'add rows javascript'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121362306062756721)
,p_event_id=>wwv_flow_api.id(121361810042756721)
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
'};',
'/*document.getElementById(''ITEMDESC'').readOnly = true;*/',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121362696030756721)
,p_name=>'disable  field on tabular item'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121363170279756721)
,p_event_id=>wwv_flow_api.id(121362696030756721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''input[name="f02"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f02"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f02"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f13"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f13"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f13"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f14"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f14"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f14"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f15"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f15"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f15"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f18"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f18"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f18"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f19"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f19"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f19"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f20"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f20"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f20"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f21"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f21"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f21"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f30"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f30"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f30"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f24"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f24"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f24"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121363594388756721)
,p_name=>'on change tabular itemcode'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_TABULARITEMCODE'
,p_condition_element=>'P104_TABULARITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121364079555756722)
,p_event_id=>wwv_flow_api.id(121363594388756721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P104_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct LUOMCODE,ITEMDES1,ITEMTYPE,SALEPERC,COMMGRUP',
'into :P104_tabitemunit,:P104_TABITEMDESC,:P104_TABITEMTYPE,:P104_TABSALEPERC,:P104_TABCOMMGRUP',
'FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P104_TABULARITEMCODE ;',
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
'IF :P104_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct ITEMRATE',
'into :P104_TABITEMRATE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P104_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P104_TABULARITEMCODE;',
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
'IF :P104_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P104_TABCOSTRATE',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P104_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P104_TABULARITEMCODE;',
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
'IF :P104_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P104_TABCLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P104_WARECODE',
'            AND b.itemcode =:P104_TABULARITEMCODE',
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
,p_attribute_02=>'P104_TABULARITEMCODE'
,p_attribute_03=>'P104_TABCOMMGRUP,P104_TABSALEPERC,P104_TABITEMTYPE,P104_TABCOSTRATE,P104_TABITEMDESC,P104_TABCLOSINGBALANCE,P104_TABITEMRATE,P104_TABITEMUNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121364538934756722)
,p_name=>'on page load for hide region default on tabular '
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121365007925756722)
,p_event_id=>wwv_flow_api.id(121364538934756722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P104_S_H_REGION:=0;',
'end;'))
,p_attribute_02=>'P104_S_H_REGION'
,p_attribute_03=>'P104_S_H_REGION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121365556187756722)
,p_event_id=>wwv_flow_api.id(121364538934756722)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(121345408687756710)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121365922205756722)
,p_name=>'on page load for skillbuilders lov field'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121366409619756722)
,p_event_id=>wwv_flow_api.id(121365922205756722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:24 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :p104_itemcode1 IS NOT NULL AND :p104_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT s.smancode, s.costcode, s.custmrid,s.itemcode,s.batchnum',
'        INTO :p104_lovsalmanid, :p104_lovcostcode, :p104_lovcustomerid,:P104_LOVITEMCODE,:P104_LOVBATCHNO',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p104_docnumbr1 AND s.itemcode = :p104_itemcode1;',
'   END IF;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>'P37_DOCNUMBR1,P37_ITEMCODE1'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121366843662756722)
,p_name=>'change on batchnum'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_BATCHNUM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121367360236756722)
,p_event_id=>wwv_flow_api.id(121366843662756722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P104_BATCHNUM IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P104_CLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P104_WARECODE',
'            AND b.itemcode =:P104_ITEMCODE',
'            and b.BATCHNUM =:P104_BATCHNUM',
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
,p_attribute_02=>'P104_WARECODE,P104_ITEMCODE,P104_BATCHNUM'
,p_attribute_03=>'P104_CLOSINGBALANCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121367717749756722)
,p_name=>'clear on itemcode'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121368254521756722)
,p_event_id=>wwv_flow_api.id(121367717749756722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P104_BATCHNUM,P104_DISCPCNT,P104_DISAMOUNT,P104_NETAMOUNT,P104_QUENTITY,P104_CLOSINGBALANCE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121368603013756722)
,p_name=>'change  on salmancode'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_SALMANID'
,p_condition_element=>'P104_SALMANID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121369148664756724)
,p_event_id=>wwv_flow_api.id(121368603013756722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P104_SALMANID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.SMANNAME',
'into :P104_SALMNNAME',
'    FROM nmsmnmas  w',
'   WHERE w.compcode = :compcode',
'     AND w.SMANCODE =:P104_SALMANID;',
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
,p_attribute_02=>'P104_SALMANID'
,p_attribute_03=>'P104_SALMNNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121369526723756724)
,p_name=>'clear  for docnum49'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(54100079378788069)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121369991392756724)
,p_event_id=>wwv_flow_api.id(121369526723756724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P104_DOCNUMBR49'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121370434852756724)
,p_name=>'click on delivery challan'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(54100892930788071)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121370963946756724)
,p_event_id=>wwv_flow_api.id(121370434852756724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$( "#P104_ERRMSG" ).dialog({',
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
 p_id=>wwv_flow_api.id(121371311091756724)
,p_name=>'click for delivery'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(54100892930788071)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121371786091756724)
,p_event_id=>wwv_flow_api.id(121371311091756724)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'beforeInsert();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121372259020756724)
,p_name=>'change on orderno from sales offer'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_ORDERNO'
,p_condition_element=>'P104_ORDERNO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121372704310756724)
,p_event_id=>wwv_flow_api.id(121372259020756724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:16 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :P104_ORDERNO IS NOT NULL',
'   THEN',
'      SELECT s.compcode, s.docttype, s.subttype, s.docnumbr,',
'             s.doctdate, s.serlnumb, s.partycde, s.itemcode,',
'             s.smancode, s.commcode, s.itemdesc,',
'             s.itemlong, s.discpcnt, s.discamnt, s.salerate,',
'             s.custmrid, s.costcode, s.warecode, s.batchnum,',
'             s.msfcamnt, s.apprqnty',
'        INTO :p104_compcode, :p104_docttype, :p104_subttype, :p104_docnumbr,',
'             :p104_doctdate, :p104_serlnumb, :p104_partycode, :p104_itemcode,',
'             :p104_salmanid, :p104_unitofmesure,',
'             :p104_itemdesc, :p104_itemlong_1, :p104_discpcnt, :p104_disamount,',
'             :p104_salprice, :p104_customerid, :p104_costcode, :p104_warecode,',
'             :p104_batchnum, :p104_netamount, :p104_quentity ',
'        FROM nmslsofr s',
'       WHERE s.docnumbr = :P104_ORDERNO;',
'   END IF;',
'END;'))
,p_attribute_02=>'P104_ORDERNO'
,p_attribute_03=>'P104_COMPCODE,P104_DOCTTYPE,P104_SUBTTYPE,P104_DOCNUMBR,P104_DOCTDATE,P104_SERLNUMB,P104_PARTYCODE,P104_ITEMCODE,P104_SALMANID,P104_UNITOFMESURE,P104_ITEMDESC,P104_ITEMLONG_1,P104_DISCPCNT,P104_DISAMOUNT,P104_SALPRICE,P104_CUSTOMERID,P104_COSTCODE,P1'
||'04_WARECODE,P104_BATCHNUM,P104_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121373138345756724)
,p_name=>'change on javascript on tabular form'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_ORDERNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121373599543756724)
,p_event_id=>wwv_flow_api.id(121373138345756724)
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
 p_id=>wwv_flow_api.id(121374926053756724)
,p_name=>'change on source company code'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_SRCCOMPNM'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121375443408756725)
,p_event_id=>wwv_flow_api.id(121374926053756724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P104_SRCCOMPNM IS NOT NULL',
'   THEN',
'      BEGIN',
' select distinct CACMPNAM ',
'into :P104_SRCCOMPDS',
'from syparmas  w',
'    where w.CACMPCDE=:P104_SRCCOMPNM;',
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
'IF :P104_ITEMCODE1 IS NOT NULL and :P104_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
' select distinct CACMPNAM ',
'into :P104_SRCCOMPDS',
'from syparmas  w',
'    where w.CACMPCDE=(',
' SELECT SRCCMPCD',
'        FROM nmstkrec s',
'       WHERE s.docnumbr = :p104_docnumbr1 AND s.itemcode = :p104_itemcode1',
'       and s.COMPCODE=:P104_SRCCOMPNM);',
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
'',
'',
''))
,p_attribute_02=>'P104_SRCCOMPNM,P104_DOCNUMBR1,P104_ITEMCODE1'
,p_attribute_03=>'P104_SRCCOMPDS'
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
 p_id=>wwv_flow_api.id(121375797486756725)
,p_name=>'change on P104_PRVDNO'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_PRVDNO'
,p_condition_element=>'P104_PRVDNO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121376302570756727)
,p_event_id=>wwv_flow_api.id(121375797486756725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'If :P104_PRVDNO is not null then',
'  Begin',
'   	Select distinct DOCTDATE',
'   	into   :P104_PRVDDT',
'   	from   NMSTKREC',
'   	where  COMPCODE = :COMPCODE ',
'   	and    DOCTTYPE = :P104_S_PRDTYP',
'   	and    SUBTTYPE = :P104_S_PRSTYP',
'   	and    DOCNUMBR = :P104_PRVDNO;',
'   Exception',
'   	When No_Data_Found then',
'   	     null;',
'     When Too_Many_Rows then',
'          null;',
'   End;',
'end if;',
'END;',
'begin',
'If :P104_PRVDNO  is not null then',
'  Begin',
'   	Select distinct costcode,refnumbr,refndate,SRCWRECD',
'   	into   :P104_SRCCOSTCD,:P104_REFNUMBR,:P104_REFNDATE,:P104_SRWHSCDE',
'   	from   NMSTKREC',
'   	where  COMPCODE = :COMPCODE ',
'   	and    DOCTTYPE = :P104_S_PRDTYP',
'   	and    SUBTTYPE = :P104_S_PRSTYP',
'   	and    DOCNUMBR = :P104_PRVDNO',
'   	and    DOCTDATE = :P104_PRVDDT;',
'   Exception',
'   	When No_Data_Found then',
'   	     null;',
'     When Too_Many_Rows then',
'          null;',
'   End;',
'  ',
'End If;  ',
'Begin',
'  If :P104_SRCCOSTCD is not null then ',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P104_SRCCOSTDS',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P104_SRCCOSTCD ;',
'	   Select warecode,waredesc',
'   	 into   :P104_DSWHSCDE,:P104_DSWHSNME',
'   	 from   nmwhsmas',
'   	 where  compcode = :COMPCODE ',
'   	 and    costcode = :P104_SRCCOSTCD;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then ',
'          Null;',
'   End;	',
'  End if;',
'End; ',
'end;',
''))
,p_attribute_02=>'P104_PRDTYP,P104_PRSTYP,P104_PRVDNO,P104_PRVDDT,P104_SRCCOSTCD'
,p_attribute_03=>'P104_PRVDDT,P104_SRCCOSTCD,P104_REFNUMBR,P104_REFNDATE,P104_SRCCOSTDS,P104_DSWHSCDE,P104_DSWHSNME,P104_SRWHSCDE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121376807160756727)
,p_event_id=>wwv_flow_api.id(121375797486756725)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(121318182742756685)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121377358473756727)
,p_event_id=>wwv_flow_api.id(121375797486756725)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(121318182742756685)
,p_attribute_01=>'$(''#cstmEmployees'').slideDown(1000);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121374051057756724)
,p_name=>'change on source cost code'
,p_event_sequence=>345
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_SRCCOSTCD'
,p_condition_element=>'P104_SRCCOSTCD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121374537911756724)
,p_event_id=>wwv_flow_api.id(121374051057756724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'  If :P104_SRCCOSTCD is not null then ',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P104_SRCCOSTDS',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P104_SRCCOSTCD ;',
'	   Select warecode,waredesc',
'   	 into   :P104_DSWHSCDE,:P104_DSWHSNME',
'   	 from   nmwhsmas',
'   	 where  compcode = :COMPCODE ',
'   	 and    costcode = :P104_SRCCOSTCD;',
'   Exception',
'    	When No_Data_Found then ',
'	 raise_application_error(-20001,''no_data_found'');',
'      When Too_many_Rows then ',
'          Null;',
'   End;',
'end if;',
'end;'))
,p_attribute_02=>'P104_SRCCOSTCD'
,p_attribute_03=>'P104_SRCCOSTDS,P104_DSWHSCDE,P104_DSWHSNME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121377696165756727)
,p_name=>'change  on P104_SRWHSCDE'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_SRWHSCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121378211301756727)
,p_event_id=>wwv_flow_api.id(121377696165756727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_result number;',
'l_no number;',
'begin',
'',
'   	Select waredesc,costcode',
'   	into   :P104_SRWHSNME,:P104_SRCSTCDE',
'   	from   nmwhsmas',
'   	where  compcode = :compcode ',
'   	and    warecode = :P104_SRWHSCDE;',
'   Exception',
'   	When No_Data_Found then',
'   	     apex_application.g_print_success_message:=''Invalid Warehouse code...Select valid values from the list'';',
'',
'     When Too_Many_Rows then',
'         apex_application.g_print_success_message:=''More records found in Table...Contact System Administrator'';',
'',
'   End; ',
' ',
'Begin',
'  If :P104_SRCSTCDE is not null then',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P104_SRCSTNME',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P104_SRCSTCDE ;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
'  End if;',
'End;',
''))
,p_attribute_02=>'P104_SRWHSCDE,P104_SRCSTCDE'
,p_attribute_03=>'P104_SRWHSNME,P104_SRCSTCDE,P104_SRCSTNME,P104_SRCCOSTDS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    ',
'	Declare',
'			a number; ',
'l_result number;',
'l_no number;',
'',
'		Begin',
'',
'			Select 1 into a from sycstacc',
'				Where compcode = :compcode ',
'					And grupcode = :APP_USER',
'					And cabasecc = ''00000'';',
'',
'			Begin	',
'				Select waredesc,costcode into :P81_SRWHSNME,:P81_SRCSTCDE',
'					From nmwhsmas ',
'				 Where compcode = :compcode   ',
'				 	 And warecode = :P81_SRWHSCDE;',
'			 Exception',
'					When no_data_found then',
'					    apex_application.g_print_success_message:='' has not access in this cost center'';',
'					When others then',
'						apex_application.g_print_success_message:=''Too many Cost Center Access defined for the User: '';',
'				End;',
'				',
'',
'		Exception',
'			When No_Data_Found then',
'				Begin',
'				 	Select 1 into a from nmperson a, syusrmas b',
'						where a.compcode = :compcode ',
'							and a.compcode = b.divncode',
'							and a.usercode = b.usercode',
'							and a.usercode = :APP_USER',
'							and a.authtype in (''APR'',''RAS'');',
'					',
'				Begin	',
'					Select a.warecode,waredesc into :P81_SRCSTCDE,:P81_SRCSTNME ',
'					 From SYCSTACC a,NMWHSMAS b',
'						Where a.compcode = :compcode ',
'						    And a.compcode = b.compcode',
'						    And a.cabasecc = b.costcode ',
'						    And a.warecode = b.warecode',
'						    And a.grupcode = :APP_USER',
'						    And b.warecode = :P81_SRWHSCDE;',
'					Exception',
'						When no_data_found then',
'				apex_application.g_print_success_message:='' has not access in this cost center'';',
'',
'						When others then',
'						apex_application.g_print_success_message:=''Too many Cost Center Access defined for the User: '';',
'',
'					End;			',
'				Exception',
'					When No_Data_Found then',
'						apex_application.g_print_success_message:=''No user Code define in SYUSRMAS/NMPERSON..'';',
'					When Too_Many_Rows then',
'					apex_application.g_print_success_message:=''Too Many user Codes defined in SYUSRMAS/NMPERSON..'';					',
'				End;',
'		End;	',
'',
'   if :P81_SRWHSCDE = :P81_DSWHSCDE then',
'   	  apex_application.g_print_success_message:=''Source and Destination Warehouse cannot be the same'';',
'',
'   end if;',
'   ',
'Begin',
'  If :P81_SRCSTCDE is not null then',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P81_SRCSTNME',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P81_SRCSTCDE;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
'  End if;',
'End;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121378610576756727)
,p_name=>'lose focus on warecode'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_SRWHSCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121379115865756727)
,p_event_id=>wwv_flow_api.id(121378610576756727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_AMILOS_REFRESH_REPORT'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(121318182742756685)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121379505328756727)
,p_name=>'refresh on tabular region'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P104_REFNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121380026017756727)
,p_event_id=>wwv_flow_api.id(121379505328756727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(121318182742756685)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(121380415092756727)
,p_name=>'disable field after refresh'
,p_event_sequence=>380
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(121318182742756685)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(121380879536756729)
,p_event_id=>wwv_flow_api.id(121380415092756727)
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
'$(''input[name="f19"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f19"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f19"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f20"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f20"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f20"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f21"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f21"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f21"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f30"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f30"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f30"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f24"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f24"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f24"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10641160472434587)
,p_name=>'closeX'
,p_event_sequence=>390
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10641295305434588)
,p_event_id=>wwv_flow_api.id(10641160472434587)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'parent.$(''.ui-dialog-titlebar-close'').hide();'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(121341825131756707)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(121318182742756685)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMSTKREC'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(121345065318756710)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(121342246259756708)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(121318182742756685)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMSTKREC'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(121340250222756702)
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(121348243099756713)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'87'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(121345408687756710)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(121342574247756708)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(121318182742756685)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process Insert  nmstkrec  for multiple  tabular form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   INSERT INTO nmstkrec',
'               (compcode, docttype, subttype,',
'                docnumbr, doctdate, serlnumb, partycde, raisedby,',
'                apprvdby, apprdate, reqddate, commcode, itemcode, itemtype,',
'                mcserial, itemdesc, itemlong, itemrate, discpcnt, discamnt,',
'                spldispc, spldisnt, salerate, huomcode, factrval, luomcode,',
'                orgnqnty, apprqnty, msfcamnt, currcode, excgrate, mslcamnt,',
'                refnumbr, refndate, updoctyp, upsubtyp, updocnum, updocdte,',
'                updocsrl, remarkss, costcode, warecode, statuscd,',
'                oprstamp, batchnum, normrate, costrate, trnsqnty,',
'                srcwrecd, sndpersn, srccmpcd,BOM_NO',
'               )',
'        VALUES (:P104_COMPCODE_APPLICATION, :P104_DOCTTYPE, :P104_SUBTTYPE,',
'                :P104_DOCNUMBR, :P104_DOCTDATE, :SERLNUMB, :partycde, :APP_USER,',
'                NULL, NULL, :P104_DOCTDATE, :COMMCODE, :ITEMCODE, :ITEMTYPE,',
'                NULL, :ITEMDESC, :ITEMDESC, :ITEMRATE, NULL, NULL,',
'                NULL, NULL, :ITEMRATE, :LUOMCODE, NULL, :LUOMCODE,',
'                :ORGNQNTY, :apprqnty, :msfcamnt, :currcode, 1, :mslcamnt,',
'                NULL, :P104_DOCTDATE, :P104_S_PRDTYP, :P104_S_PRSTYP, :P104_PRVDNO, :P104_PRVDDT,',
'                NULL, :REMARKSS, :P104_SRCSTCDE, :P104_SRWHSCDE, ''NEW'',',
'                :APP_USER, :batchnum, NULL, :costrate, :trnsqnty,',
'                :P104_DSWHSCDE, :APP_USER, :P104_SRCCOMPNM,:BOM_NO',
'               );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(121345408687756710)
,p_process_success_message=>'Record generate successfully<br>Requisition No. : &P104_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12782931984119884)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session State'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(121345408687756710)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(121343012725756708)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(121318182742756685)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process for multiple tabular form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
'',
'docnumber_generation(:COMPCODE, ''NM'', :P104_DOCTTYPE,',
'                     :P104_SUBTTYPE, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''),null,',
'                     ''NM'', newno);',
' ',
':P104_DOCNUMBR:= newno;  ',
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
,p_process_when_button_id=>wwv_flow_api.id(121345408687756710)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(121343390433756710)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(121318182742756685)
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
,p_process_when_button_id=>wwv_flow_api.id(121345408687756710)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
