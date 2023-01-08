prompt --application/pages/page_00294
begin
--   Manifest
--     PAGE: 00294
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
 p_id=>294
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'&PAGE_TITLE.'
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
'html_GetElement(''f22_''+vRow).value=',
'html_GetElement(''f21_''+vRow).value;',
'html_GetElement(''f29_''+vRow).value =',
'   Number(html_GetElement(''f21_''+vRow).value).toFixed(2) *',
'    Number(html_GetElement(''f28_''+vRow).value).toFixed(2);',
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
'document.getElementById(''P88_TABULARITEMCODE'').value=',
'    html_GetElement(''f13_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P88_TABULARITEMCODE'').trigger(''click'');',
'});',
'html_GetElement(''f12_''+vRow).value=',
'document.getElementById(''P88_TABITEMTYPE'').value;',
'html_GetElement(''f14_''+vRow).value=',
'document.getElementById(''P88_TABITEMDESC'').value;',
'html_GetElement(''f17_''+vRow).value=',
'document.getElementById(''P88_TABITEMRATE'').value;',
'html_GetElement(''f19_''+vRow).value=',
'document.getElementById(''P88_TABCOMMGRUP'').value;',
'html_GetElement(''f20_''+vRow).value=',
'document.getElementById(''P88_TABITEMUNIT'').value;',
'html_GetElement(''f28_''+vRow).value=',
'document.getElementById(''P88_TABITEMRATE'').value;',
'',
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
'  $x(''P37_TABTOTDISAM'').value = $total;',
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
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180814105104'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(193693129054259565)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>210
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(193695143460259571)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(193699118984259579)
,p_plug_name=>'Order and Booking Details'
,p_parent_plug_id=>wwv_flow_api.id(193695143460259571)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P294_TRANTYPE'
,p_plug_display_when_cond2=>'SI2'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(193701917312259584)
,p_plug_name=>'&P106_DISPLAY.'
,p_parent_plug_id=>wwv_flow_api.id(193695143460259571)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;float:left;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
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
 p_id=>wwv_flow_api.id(193702333607259584)
,p_name=>'Stock Receipt'
,p_parent_plug_id=>wwv_flow_api.id(193701917312259584)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--noPadding:t-Form--leftLabels'
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
'"COLORCDE",',
'"COSTRATE",',
'NULL MCSERIAL,',
'CASE',
'         WHEN STATUSCD= ''NEW'' THEN ''unchecked="unchecked"''',
'       END AS ADMIN_USER_CHECKBOX',
'from "#OWNER#"."NMSTKREC"',
' Where compcode = :compcode ',
'and DOCNUMBR=:P294_PODCNO',
'and DOCTTYPE=:P294_S_PRDTYP',
'and SUBTTYPE=:P294_S_PRSTYP',
'		     --And nvl(apprqnty,0) > nvl(trnsqnty,0)',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P294_PODCNO,P294_S_PRDTYP,P294_S_PRSTYP'
,p_lazy_loading=>false
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'1:2'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROWS_X_TO_Y_OF_Z'
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
 p_id=>wwv_flow_api.id(38564224883261821)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>2
,p_column_heading=>'Select Row'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38564624869261821)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_column_heading=>'Rowid'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38565056270261822)
,p_query_column_id=>3
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>3
,p_column_heading=>'Srl.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>2
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38565500138261822)
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
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38565847048261822)
,p_query_column_id=>5
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Docttype'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38566284244261822)
,p_query_column_id=>6
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Subttype'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38566673180261822)
,p_query_column_id=>7
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>8
,p_column_heading=>'Docnumbr'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38567048364261822)
,p_query_column_id=>8
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>7
,p_column_heading=>'Doctdate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38567481536261822)
,p_query_column_id=>9
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>11
,p_column_heading=>'Partycde'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38567837259261822)
,p_query_column_id=>10
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>12
,p_column_heading=>'Raisedby'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'RAISEDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38568256701261822)
,p_query_column_id=>11
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>37
,p_column_heading=>'Apprvdby'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'APPRVDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38568658799261822)
,p_query_column_id=>12
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>13
,p_column_heading=>'Apprdate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'APPRDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38569060381261822)
,p_query_column_id=>13
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>14
,p_column_heading=>'Reqddate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'REQDDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38569496439261822)
,p_query_column_id=>14
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>18
,p_column_heading=>'Comm.<br>Cd.'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>10
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'COMMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38569864433261822)
,p_query_column_id=>15
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>9
,p_column_heading=>'Itemcode'
,p_use_as_row_header=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   DISTINCT a.itemcode||''-''||itemdes2 d,a.itemcode r',
'    FROM nmitemas a',
'   WHERE compcode = :compcode  AND statuscd = ''ACT''',
'ORDER BY itemcode'))
,p_lov_show_nulls=>'NO'
,p_column_width=>20
,p_cattributes=>'onchange="calculateTotal3(this);"'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'ITEMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38570297468261824)
,p_query_column_id=>16
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>21
,p_column_heading=>'Item Type'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'ITEMTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38570652884261824)
,p_query_column_id=>17
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>10
,p_column_heading=>'Itemdesc'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>45
,p_cattributes=>'onchange=disable_column_2( this )'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'ITEMDESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38571053572261824)
,p_query_column_id=>18
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>15
,p_column_heading=>'Itemlong'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'ITEMLONG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38571511659261824)
,p_query_column_id=>19
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>23
,p_column_heading=>'Item<br>Rate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'ITEMRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38571838491261824)
,p_query_column_id=>20
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>26
,p_column_heading=>'Dis.<br>(%)'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>2
,p_cattributes=>'onchange="calculateTotal1(this);addTotal(this);"'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'DISCPCNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38572250420261824)
,p_query_column_id=>21
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>35
,p_column_heading=>'Dis.<br>Amount'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>6
,p_cattributes=>'onchange="calculateTotal2(this);addTotal(this);"'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'DISCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38572643443261824)
,p_query_column_id=>22
,p_column_alias=>'SPLDISPC'
,p_column_display_sequence=>36
,p_column_heading=>'Spldispc'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'SPLDISPC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38551448901261808)
,p_query_column_id=>23
,p_column_alias=>'SPLDISNT'
,p_column_display_sequence=>27
,p_column_heading=>'Spldisnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'SPLDISNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38551819150261813)
,p_query_column_id=>24
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>25
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'SALERATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38552232758261815)
,p_query_column_id=>25
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>20
,p_column_heading=>'Uom'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>7
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'HUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38552632805261815)
,p_query_column_id=>26
,p_column_alias=>'FACTRVAL'
,p_column_display_sequence=>16
,p_column_heading=>'Sale<br>(%)'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>2
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'FACTRVAL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38553026284261815)
,p_query_column_id=>27
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>19
,p_column_heading=>'Luom.'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>3
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'LUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38553461253261816)
,p_query_column_id=>28
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>28
,p_column_heading=>'Purchase<br>Order<br>Qty.'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>6
,p_cattributes=>'onchange="calculateTotal(this);calculateTotal1(this);"'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'ORGNQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38553851927261816)
,p_query_column_id=>29
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>30
,p_column_heading=>'Receive Quantity.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_cattributes=>'onchange="calculateTotal(this);",onchange="addTotal();"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'APPRQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38554249797261818)
,p_query_column_id=>30
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>29
,p_column_heading=>'Issue Qty.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_cattributes=>'readonly=''true'';'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'TRNSQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38554669426261818)
,p_query_column_id=>31
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>38
,p_column_heading=>'Total<br>Amount'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>10
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'MSFCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38555079826261818)
,p_query_column_id=>32
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>39
,p_column_heading=>'Currcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'CURRCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38555436863261818)
,p_query_column_id=>33
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>42
,p_column_heading=>'Excgrate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'EXCGRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38555843549261818)
,p_query_column_id=>34
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>41
,p_column_heading=>'Mslcamnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'MSLCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38556263928261818)
,p_query_column_id=>35
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>43
,p_column_heading=>'Refnumbr'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'REFNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38556624674261818)
,p_query_column_id=>36
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>44
,p_column_heading=>'Refndate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'REFNDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38557062604261818)
,p_query_column_id=>37
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>45
,p_column_heading=>'Updoctyp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'UPDOCTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38557417515261819)
,p_query_column_id=>38
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>46
,p_column_heading=>'Upsubtyp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'UPSUBTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38557820501261819)
,p_query_column_id=>39
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>33
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'UPDOCNUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38558281494261819)
,p_query_column_id=>40
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'UPDOCDTE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38558637749261819)
,p_query_column_id=>41
,p_column_alias=>'UPDOCSRL'
,p_column_display_sequence=>47
,p_column_heading=>'Updocsrl'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'UPDOCSRL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38559044354261819)
,p_query_column_id=>42
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>40
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>25
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'REMARKSS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38559475845261819)
,p_query_column_id=>43
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'COSTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38559823497261819)
,p_query_column_id=>44
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>48
,p_column_heading=>'Warecode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38560258319261819)
,p_query_column_id=>45
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>49
,p_column_heading=>'Post All'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'ITEM_IS_NOT_NULL'
,p_display_when_condition=>'P294_DOCNUMBR1'
,p_display_as=>'SIMPLE_CHECKBOX'
,p_inline_lov=>'Y,N'
,p_lov_language=>'PLSQL'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'POSTFLAG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38560683733261821)
,p_query_column_id=>46
,p_column_alias=>'PRNTFLAG'
,p_column_display_sequence=>51
,p_column_heading=>'Prntflag'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'PRNTFLAG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38561101967261821)
,p_query_column_id=>47
,p_column_alias=>'PRICFLAG'
,p_column_display_sequence=>52
,p_column_heading=>'Pricflag'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'PRICFLAG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38561422733261821)
,p_query_column_id=>48
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>31
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_column_width=>5
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'STATUSCD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38561827413261821)
,p_query_column_id=>49
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>53
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38562272584261821)
,p_query_column_id=>50
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>50
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38562675129261821)
,p_query_column_id=>51
,p_column_alias=>'COLORCDE'
,p_column_display_sequence=>17
,p_column_heading=>'Color Code'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.nmcoddes, s.nmsofcde',
'  FROM nmcodmas s',
' WHERE s.nmhrdcde = ''CLR'' AND s.modlcode = ''NM'' AND s.compcode = :compcode '))
,p_lov_show_nulls=>'NO'
,p_column_width=>10
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'COLORCDE'
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
 p_id=>wwv_flow_api.id(38563031542261821)
,p_query_column_id=>52
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>24
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMPROCUR'
,p_ref_column_name=>'COSTRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38563475762261821)
,p_query_column_id=>53
,p_column_alias=>'MCSERIAL'
,p_column_display_sequence=>22
,p_column_heading=>'Barcode'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>10
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38563915549261821)
,p_query_column_id=>54
,p_column_alias=>'ADMIN_USER_CHECKBOX'
,p_column_display_sequence=>54
,p_column_heading=>'<input id="tcheckbox" type="checkbox" name="tcheckbox" />'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<input type="checkbox" #ADMIN_USER_CHECKBOX# value="#ROWNUM#" name="f40" id="f40_#ROWNUM#"/>'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(193727586971259618)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(193701917312259584)
,p_region_template_options=>'#DEFAULT#:i-h200:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(193735900225259635)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(193701917312259584)
,p_region_template_options=>'#DEFAULT#:i-h200:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
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
 p_id=>wwv_flow_api.id(193751414062259644)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(193701917312259584)
,p_region_template_options=>'#DEFAULT#:i-h200:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38546394756261794)
,p_button_sequence=>1690
,p_button_plug_id=>wwv_flow_api.id(193751414062259644)
,p_button_name=>'P294_SHOWHIDE'
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
 p_id=>wwv_flow_api.id(38523544535261780)
,p_button_sequence=>1840
,p_button_plug_id=>wwv_flow_api.id(193695143460259571)
,p_button_name=>'P294_RUNREPORT'
,p_button_static_id=>'P97_RUNREPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Run Report'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:49:P49_PROGNAME,P49_DOCNUMBR:&P294_PROGNAME.,&P294_DOCNUMBR49.'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38524007577261780)
,p_button_sequence=>1850
,p_button_plug_id=>wwv_flow_api.id(193695143460259571)
,p_button_name=>'P294_MNYRECEIPT'
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
 p_id=>wwv_flow_api.id(38524371812261780)
,p_button_sequence=>1890
,p_button_plug_id=>wwv_flow_api.id(193695143460259571)
,p_button_name=>'P294_DELIVERY'
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
 p_id=>wwv_flow_api.id(38573056486261824)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_api.id(193702333607259584)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
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
 p_id=>wwv_flow_api.id(38573457851261824)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(193702333607259584)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38524776311261780)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(193695143460259571)
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
 p_id=>wwv_flow_api.id(38525141262261780)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(193695143460259571)
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
 p_id=>wwv_flow_api.id(38525568134261780)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(193695143460259571)
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
 p_id=>wwv_flow_api.id(38521686236261779)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(193693129054259565)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:105:&SESSION.:A:&DEBUG.:294::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38522116586261779)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(193693129054259565)
,p_button_name=>'CREATE'
,p_button_static_id=>'BUT_CRT_FRM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--large:t-Button--stretch:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'CREATE'
,p_button_position=>'NEXT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38522502422261780)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(193693129054259565)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--large:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'NEXT'
,p_button_condition=>'P294_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38522862789261780)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(193693129054259565)
,p_button_name=>'CREATE_NEW'
,p_button_static_id=>'BUT_CRT_TAB'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_condition=>'P294_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38526014840261780)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(193695143460259571)
,p_button_name=>'DELIVERY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delivery'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(38616605327261841)
,p_branch_action=>'f?p=&APP_ID.:106:&SESSION.::&DEBUG.:106::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(62605068257556405)
,p_branch_sequence=>11
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38526316933261780)
,p_name=>'P294_PROGNAME'
,p_item_sequence=>1870
,p_item_plug_id=>wwv_flow_api.id(193695143460259571)
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
 p_id=>wwv_flow_api.id(38526806041261780)
,p_name=>'P294_DOCNUMBR49'
,p_item_sequence=>1880
,p_item_plug_id=>wwv_flow_api.id(193695143460259571)
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
 p_id=>wwv_flow_api.id(38527470696261782)
,p_name=>'P294_ORDERNO'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_api.id(193699118984259579)
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
'            AND s.docttype = :P294_REQREFTYPE',
'            AND s.subttype = :P294_REQSUBTYPE',
'            AND s.doctdate <= :P294_ORDERDATE',
'            AND s.compcode = sls.compcode(+)',
'            AND s.docnumbr = sls.updocnum(+)',
'            AND s.itemcode = sls.itemcode(+)',
'            AND s.apprqnty > NVL (sls.apprqnty, 0)',
'       ORDER BY 2 DESC'))
,p_lov_cascade_parent_items=>'P294_REQREFTYPE,P294_REQSUBTYPE,P294_ORDERDATE'
,p_ajax_items_to_submit=>'P294_REQREFTYPE,P294_REQSUBTYPE,P294_ORDERDATE'
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
 p_id=>wwv_flow_api.id(38527912533261783)
,p_name=>'P294_ORDERDATE'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(193699118984259579)
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
 p_id=>wwv_flow_api.id(38528286548261783)
,p_name=>'P294_BOOKINGNO'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(193699118984259579)
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
 p_id=>wwv_flow_api.id(38528705949261783)
,p_name=>'P294_BOOKINGDT'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(193699118984259579)
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
 p_id=>wwv_flow_api.id(38529078988261785)
,p_name=>'P294_REQREFTYPE'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(193699118984259579)
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
 p_id=>wwv_flow_api.id(38529436978261785)
,p_name=>'P294_REQSUBTYPE'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(193699118984259579)
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
 p_id=>wwv_flow_api.id(38530201961261786)
,p_name=>'P294_DISPLAY'
,p_item_sequence=>2430
,p_item_plug_id=>wwv_flow_api.id(193701917312259584)
,p_item_default=>':P294_DOCDESC||''  (''||:P294_DOCTTYPE||''/''||:P294_SUBTTYPE||'')'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="font-size:18px;color:blue;"'
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38530848554261786)
,p_name=>'P294_REGION'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38531238727261788)
,p_name=>'P294_COMPCODE'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38531675252261788)
,p_name=>'P294_OPRSTAMP'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38532020719261788)
,p_name=>'P294_TIMSTAMP'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38532501868261788)
,p_name=>'P294_SERLNUMB'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38532868205261788)
,p_name=>'P294_STATUSCD'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38533239411261788)
,p_name=>'P294_ITEMLONG_1'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38533669533261788)
,p_name=>'P294_MSFCAMNT'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38534114548261788)
,p_name=>'P294_ROWID'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38534492937261788)
,p_name=>'P294_DOCNUMBR1'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38534895902261788)
,p_name=>'P294_DOCTDATE1'
,p_item_sequence=>1485
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
,p_prompt=>'Doctdate1'
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
 p_id=>wwv_flow_api.id(38535315244261788)
,p_name=>'P294_ITEMCODE1'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38535642328261788)
,p_name=>'P294_COMPCODE_APPLICATION'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct s.COMPCODE from syrights s,syparmas m',
'where s.COMPCODE=m.CACMPCDE',
'and USERCODE=:APP_USER',
'and s.COMPCODE=:COMPCODE'))
,p_source_type=>'QUERY'
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
 p_id=>wwv_flow_api.id(38536028740261788)
,p_name=>'P294_TABULARITEMCODE'
,p_is_required=>true
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38536441939261788)
,p_name=>'P294_TABCOSTRATE'
,p_item_sequence=>1540
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38536837658261791)
,p_name=>'P294_TABITEMDESC'
,p_item_sequence=>1550
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38537261306261791)
,p_name=>'P294_TABITEMRATE'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38537646838261791)
,p_name=>'P294_TABITEMUNIT'
,p_item_sequence=>1570
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38538074282261791)
,p_name=>'P294_TABCLOSINGBALANCE'
,p_item_sequence=>1580
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38538476997261791)
,p_name=>'P294_TABITEMTYPE'
,p_item_sequence=>1590
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38538886835261791)
,p_name=>'P294_TABCOMMGRUP'
,p_item_sequence=>1600
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38539236264261791)
,p_name=>'P294_TABSALEPERC'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38539662903261791)
,p_name=>'P294_BRAND'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38540097540261791)
,p_name=>'P294_MODAL'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38540493660261793)
,p_name=>'P294_UNITOFMESURE'
,p_item_sequence=>1650
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
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
 p_id=>wwv_flow_api.id(38540870908261793)
,p_name=>'P294_TRNDATE'
,p_item_sequence=>1660
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Tran. Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38541297017261793)
,p_name=>'P294_DOCTTYPE'
,p_item_sequence=>1670
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
,p_item_default=>'RC'
,p_prompt=>'<strong>Rcv. Type</strong>'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38541711418261793)
,p_name=>'P294_SUBTTYPE'
,p_item_sequence=>1680
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>2
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38542049204261793)
,p_name=>'P294_DOCDESC'
,p_item_sequence=>1690
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
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
 p_id=>wwv_flow_api.id(38542457458261793)
,p_name=>'P294_S_PRDTYP'
,p_item_sequence=>1694
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
,p_prompt=>'<strong>Prev. Type</strong>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_label_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(38542916716261793)
,p_name=>'P294_S_PRSTYP'
,p_item_sequence=>1695
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>1
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
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38543245514261793)
,p_name=>'P294_PRDOCDESC'
,p_item_sequence=>1696
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_api.id(38543699831261793)
,p_name=>'P294_DOCNUMBR'
,p_item_sequence=>1700
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
,p_prompt=>'<strong>Rcv.No.</strong>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>7
,p_grid_column=>1
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_api.id(38544047384261793)
,p_name=>'P294_DOCTDATE'
,p_item_sequence=>1710
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<strong>Date</strong>'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_CUSTOMERID'')"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38544492760261793)
,p_name=>'P294_PODCNO'
,p_item_sequence=>1711
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
,p_prompt=>'<strong>Issue No.</strong>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT docnumbr||'' / ''||',
'         doctdate||'' / ''||',
'         warecode||'' / ''||',
'         waredesc D, docnumbr R',
'    FROM (SELECT DISTINCT',
'                 b.docnumbr,',
'                 b.doctdate,',
'                 b.warecode,',
'                 (SELECT DISTINCT waredesc',
'                    FROM nmwhsmas',
'                   WHERE     compcode = :compcode',
'                         AND warecode = b.warecode',
'                         AND costcode = b.costcode)',
'                    waredesc',
'            FROM nmprocur b',
'           WHERE     b.compcode = :compcode',
'                 AND b.docttype = :P294_S_PRDTYP',
'                 AND b.subttype = :P294_S_PRSTYP',
'               --  AND NVL (b.apprqnty, 0) - NVL (b.trnsqnty, 0) > 0',
'                 AND warecode IN (SELECT warecode',
'                                    FROM sycstacc',
'                                   WHERE compcode = :compcode AND grupcode = :APP_USER)',
'                 AND b.docnumbr NOT LIKE ''TMP%''',
'          UNION',
'          SELECT DISTINCT',
'                 a.docnumbr,',
'                 a.doctdate,',
'                 a.warecode,',
'                 (SELECT DISTINCT waredesc',
'                    FROM nmwhsmas',
'                   WHERE     compcode = :compcode',
'                         AND warecode = a.warecode',
'                         AND costcode = a.costcode)',
'                    waredesc',
'            FROM nmstkrec a',
'           WHERE     a.compcode = :compcode',
'                 AND a.docttype = :P294_S_PRDTYP',
'                 AND a.subttype = :P294_S_PRSTYP',
'               --  AND NVL (a.apprqnty, 0) - NVL (a.trnsqnty, 0) > 0',
'                 AND warecode IN (SELECT warecode',
'                                    FROM sycstacc',
'                                   WHERE compcode = :COMPCODE AND grupcode = :APP_USER))',
'ORDER BY doctdate DESC'))
,p_cSize=>20
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38544818588261793)
,p_name=>'P294_PODCDATE'
,p_item_sequence=>1712
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
,p_prompt=>'<strong>Date</strong>'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_grid_label_column_span=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38545233142261793)
,p_name=>'P294_REFNUMBR'
,p_item_sequence=>1713
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
,p_prompt=>'Ext.Ref. No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>7
,p_grid_column=>1
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_api.id(38545682122261793)
,p_name=>'P294_REFNDATE'
,p_item_sequence=>1714
,p_item_plug_id=>wwv_flow_api.id(193735900225259635)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38546727061261794)
,p_name=>'P294_BATCHNO'
,p_item_sequence=>1061
,p_item_plug_id=>wwv_flow_api.id(193751414062259644)
,p_prompt=>'Batch No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
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
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38547119536261794)
,p_name=>'P294_BATCHDATE'
,p_item_sequence=>1062
,p_item_plug_id=>wwv_flow_api.id(193751414062259644)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38547592716261794)
,p_name=>'P294_BTCHEXPDAT'
,p_item_sequence=>1063
,p_item_plug_id=>wwv_flow_api.id(193751414062259644)
,p_prompt=>'Batch Exp.Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38547996391261794)
,p_name=>'P294_SUPPLIERCDE'
,p_item_sequence=>1064
,p_item_plug_id=>wwv_flow_api.id(193751414062259644)
,p_prompt=>'Supplier'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    a.partycde||'' - ''||a.prtyname,a.partycde',
'    FROM sycompty a',
'   WHERE a.compcode = :compcode ',
'     AND a.partytyp IN (''CU'', ''CV'', ''VE'')',
'ORDER BY a.partycde'))
,p_cSize=>6
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_api.id(38548410489261794)
,p_name=>'P294_SUPPLIERNAME'
,p_item_sequence=>1065
,p_item_plug_id=>wwv_flow_api.id(193751414062259644)
,p_use_cache_before_default=>'NO'
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
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38548776749261797)
,p_name=>'P294_CONTPRSN'
,p_item_sequence=>1066
,p_item_plug_id=>wwv_flow_api.id(193751414062259644)
,p_prompt=>'Cont.Person'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>42
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
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38549150660261797)
,p_name=>'P294_SPLRADRS'
,p_item_sequence=>1067
,p_item_plug_id=>wwv_flow_api.id(193751414062259644)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>42
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
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38549599798261797)
,p_name=>'P294_SPLREMAIL'
,p_item_sequence=>1068
,p_item_plug_id=>wwv_flow_api.id(193751414062259644)
,p_prompt=>'E-Mail'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38550016611261802)
,p_name=>'P294_SPLRPHON'
,p_item_sequence=>1069
,p_item_plug_id=>wwv_flow_api.id(193751414062259644)
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38550363677261804)
,p_name=>'P294_POSTSTATUS'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(193751414062259644)
,p_item_default=>'N'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SYCODDES d,SYSOFCDE r from sycodmas where SYSOFCDE in',
'(select distinct PARTYTYP from sycompty)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''SY''',
'and SYHRDCDE=''CUS'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38550738364261804)
,p_name=>'P294_SALMNNAME'
,p_item_sequence=>2390
,p_item_plug_id=>wwv_flow_api.id(193751414062259644)
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
 p_id=>wwv_flow_api.id(38573876880261824)
,p_name=>'P294_TABTOTDISAM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(193702333607259584)
,p_prompt=>'Total Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38576582760261825)
,p_name=>'P294_COSTCODE'
,p_item_sequence=>1071
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_prompt=>'Cost.Center'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   ''Warecode : ''||W.WARECODE||''-''||W.WAREDESC||'' , Costcode : ''||j.costcode||''-''||INITCAP (j.costdesc) costdesc,j.costcode',
'    FROM syjobmas j, nmwhsmas w',
'   WHERE j.compcode = :compcode ',
'     AND j.compcode = w.compcode',
'     AND j.costcode = w.costcode',
'     AND w.warecode = :P294_LOCATIONCDE',
'     AND w.swprntcd IS NULL',
'     AND j.costcode IN (SELECT cabasecc',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode  AND grupcode = :APP_USER)',
'UNION ALL',
'SELECT    ''Warecode : ''||W.WARECODE||''-''||W.WAREDESC||'' , Costcode : ''||j.costcode||''-''||INITCAP (j.costdesc) costdesc,j.costcode',
'    FROM syjobmas j, nmwhsmas w',
'   WHERE j.compcode = :compcode ',
'     AND j.compcode = w.compcode',
'     AND j.costcode = w.costcode',
'     AND w.swprntcd IS NULL',
'     AND :P294_LOCATIONCDE IS NULL',
'     AND j.costcode IN (SELECT cabasecc',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode  AND grupcode = :APP_USER)',
'ORDER BY 1'))
,p_lov_cascade_parent_items=>'P294_LOCATIONCDE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>6
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cattributes_element=>'nowrap'
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_api.id(38576996599261825)
,p_name=>'P294_COSTCENTERNAME'
,p_item_sequence=>1072
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_api.id(38577361562261825)
,p_name=>'P294_WARECODE'
,p_item_sequence=>1073
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_prompt=>'Whs.Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>7
,p_cMaxlength=>4000
,p_cHeight=>1
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38577752329261825)
,p_name=>'P294_WHSNAM'
,p_item_sequence=>1074
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38578175712261827)
,p_name=>'P294_CURRENCY'
,p_item_sequence=>1075
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_item_default=>'BDT'
,p_prompt=>'Currency'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>6
,p_cMaxlength=>4000
,p_cHeight=>1
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_api.id(38578550941261829)
,p_name=>'P294_EXCHANGERATE'
,p_item_sequence=>1076
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_item_default=>'1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>3
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>7
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
 p_id=>wwv_flow_api.id(38579005904261829)
,p_name=>'P294_REQDDAT'
,p_item_sequence=>1077
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_prompt=>'Reqddat'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38579378104261829)
,p_name=>'P294_REQUESTNO'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_prompt=>'Request No.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>9
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38579720537261829)
,p_name=>'P294_LCTOTAL'
,p_item_sequence=>1500
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_use_cache_before_default=>'NO'
,p_prompt=>'LC Total'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   INITCAP (costdesc) costdesc',
'    FROM syjobmas',
'   WHERE compcode = :compcode ',
'and costcode=:P294_SRCCOSTCD',
'ORDER BY costcode'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>12
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38580211753261829)
,p_name=>'P294_POTYPE'
,p_item_sequence=>1570
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_use_cache_before_default=>'NO'
,p_prompt=>'PO Type'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38580517964261829)
,p_name=>'P294_WAREHUSBUGET'
,p_item_sequence=>1580
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Warehouse Budget'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>12
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38580944536261829)
,p_name=>'P294_WAREHUSREM'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_prompt=>'Warehouse (Rem)'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>12
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38581321127261829)
,p_name=>'P294_CUSTOMERNAME'
,p_item_sequence=>1660
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
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
 p_id=>wwv_flow_api.id(38581736573261829)
,p_name=>'P294_LOCATIONCDE'
,p_item_sequence=>1720
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_prompt=>'Cost Code'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
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
 p_id=>wwv_flow_api.id(38582175595261829)
,p_name=>'P294_SOURCEWARECODE'
,p_item_sequence=>1730
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_prompt=>' '
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
 p_id=>wwv_flow_api.id(38582610958261829)
,p_name=>'P294_LOVSALMANID'
,p_item_sequence=>1860
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
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
'            AND w.costcode = :P294_COSTCODE'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'2,1'
,p_attribute_06=>'1'
,p_attribute_07=>'P294_SALMANID'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38582998317261829)
,p_name=>'P294_SALMANID'
,p_item_sequence=>1910
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
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
 p_id=>wwv_flow_api.id(38583402345261829)
,p_name=>'P294_PARTYCDE'
,p_item_sequence=>2400
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_prompt=>'Partycde'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38583754012261829)
,p_name=>'P294_S_BILPART'
,p_item_sequence=>2410
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_prompt=>'Billing Party'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(38584210467261830)
,p_name=>'P294_S_BLPARTNM'
,p_item_sequence=>2420
,p_item_plug_id=>wwv_flow_api.id(193727586971259618)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38585485715261830)
,p_validation_name=>'Docdate validation for tabular'
,p_validation_sequence=>10
,p_validation=>'P294_DOCTDATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(118643477625707639)
,p_associated_item=>wwv_flow_api.id(38544047384261793)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38585897901261830)
,p_validation_name=>'Costcode  validation for tabular'
,p_validation_sequence=>30
,p_validation=>'P294_COSTCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(118643477625707639)
,p_associated_item=>wwv_flow_api.id(38576582760261825)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38574332959261824)
,p_tabular_form_region_id=>wwv_flow_api.id(193702333607259584)
,p_validation_name=>'Itemcode  validation for tabular'
,p_validation_sequence=>50
,p_validation=>'ITEMCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(118643477625707639)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ITEMCODE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38584649066261830)
,p_validation_name=>'P294_SUBTTYPE'
,p_validation_sequence=>60
,p_validation=>'P294_SUBTTYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(118643477625707639)
,p_associated_item=>wwv_flow_api.id(38541711418261793)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38585052095261830)
,p_validation_name=>'P294_BATCHDATE'
,p_validation_sequence=>70
,p_validation=>'P294_BATCHDATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(118643477625707639)
,p_associated_item=>wwv_flow_api.id(38547119536261794)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38586974033261830)
,p_name=>'change on itemcode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_ITEMCODE'
,p_condition_element=>'P294_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38587445066261830)
,p_event_id=>wwv_flow_api.id(38586974033261830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P294_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P294_UNITOFMESURE,:P294_ITEMDESC,:P294_BRAND,:P294_MODAL,:P294_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P294_ITEMCODE;',
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
'IF :P294_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P294_SALPRICE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P294_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P294_ITEMCODE;',
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
'IF :P294_ITEMCODE1 IS NOT NULL and :P294_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) ',
'into :P294_QUENTITY',
'       from    nmsalrec s,(SELECT   SUM (d.trnsqnty) trnsqnty, d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE',
'                     FROM nmdevrec d',
'                     group by d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE) e',
'                     WHERE s.docnumbr = :p294_docnumbr1 AND s.itemcode = :p294_itemcode1',
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
,p_attribute_02=>'P294_ITEMCODE,P294_WARECODE,P294_ITEMCODE1,P294_DOCNUMBR1'
,p_attribute_03=>'P294_UNITOFMESURE,P294_ITEMDESC,P294_BRAND,P294_MODAL,P294_SALPRICE,P294_ISSUMTHD,P294_CLOSINGBALANCE,P294_QUENTITY'
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
 p_id=>wwv_flow_api.id(38587887906261830)
,p_name=>'change on trantype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_SUBTTYPE'
,p_condition_element=>'P294_SUBTTYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38588412653261830)
,p_event_id=>wwv_flow_api.id(38587887906261830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	Select initcap(naration) naration Into :P294_DOCDESC From SYDOCMAS ',
'			Where compcode = :compcode ',
'				And trantype = :P294_DOCTTYPE',
'				And modlcode = :modlcode ',
'				And subttype = :P294_SUBTTYPE',
'				And :P294_TRNDATE Between strtperd And endperd;',
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
,p_attribute_02=>'P294_DOCTTYPE,P294_TRNDATE,P294_SUBTTYPE'
,p_attribute_03=>'P294_DOCDESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38588723414261830)
,p_name=>'installment amount'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(52812440863254007)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38589240124261830)
,p_event_id=>wwv_flow_api.id(38588723414261830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P294_PERINSTALL:=(:P294_INSTLLAMOUNT/:P294_INSTALLNO);',
'end;'))
,p_attribute_02=>'P294_INSTLLAMOUNT,P294_INSTALLNO'
,p_attribute_03=>'P294_PERINSTALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38589770681261832)
,p_event_id=>wwv_flow_api.id(38588723414261830)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var tt = window.document.getElementById(''P294_INSTALLNO'').value;',
' for(i=0;i<tt;i++)',
'{',
'var pp = ''f02_000''.concat(i+1);',
'javascript:apex.widget.tabular.addRow();',
'window.document.getElementById(pp).value = window.document.getElementById(''P294_PERINSTALL'').value;',
'',
'}'))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pp = f02_000.concat(i);',
'',
'.concat(f02_000.concat(i)).concat('')'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38590189001261832)
,p_name=>'on change amount'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_QUENTITY'
,p_condition_element=>'P294_QUENTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38590638253261832)
,p_event_id=>wwv_flow_api.id(38590189001261832)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P294_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38591144128261832)
,p_event_id=>wwv_flow_api.id(38590189001261832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/05 14:26 (Formatter Plus v4.8.8) */',
'BEGIN',
'   :p294_amount := :p294_salprice * :p294_quentity;',
':P294_DISAMOUNT:=(:P294_AMOUNT*:P294_DISCPCNT)/100;',
':P294_NETAMOUNT:=nvl(:P294_AMOUNT,0)-nvl(:P294_DISAMOUNT,0);',
'END;'))
,p_attribute_02=>'P294_SALPRICE,P294_QUENTITY,P294_AMOUNT,P294_DISCPCNT,P294_DISAMOUNT'
,p_attribute_03=>'P294_AMOUNT,P294_DISAMOUNT,P294_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38591541171261832)
,p_name=>'on change discount percent'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_DISCPCNT'
,p_condition_element=>'P294_DISCPCNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38592047853261832)
,p_event_id=>wwv_flow_api.id(38591541171261832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P294_DISAMOUNT:=(:P294_AMOUNT*:P294_DISCPCNT)/100;',
'end;'))
,p_attribute_02=>'P294_AMOUNT,P294_DISCPCNT'
,p_attribute_03=>'P294_DISAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38592455608261832)
,p_name=>'on change amount and disamount'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_DISAMOUNT'
,p_condition_element=>'P294_DISAMOUNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38593012499261832)
,p_event_id=>wwv_flow_api.id(38592455608261832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P294_NETAMOUNT:=nvl(:P294_AMOUNT,0)-nvl(:P294_DISAMOUNT,0);',
'end;'))
,p_attribute_02=>'P294_AMOUNT,P294_DISAMOUNT'
,p_attribute_03=>'P294_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38593363707261832)
,p_name=>'query on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38593911327261832)
,p_event_id=>wwv_flow_api.id(38593363707261832)
,p_event_result=>'TRUE'
,p_action_sequence=>9
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:16 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :p294_itemcode1 IS NOT NULL AND :p294_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT s.compcode, s.docttype, s.subttype, s.docnumbr,',
'             s.doctdate, s.serlnumb, s.partycde, s.itemcode,',
'             s.smancode, s.commcode, s.itemdesc,',
'             s.itemlong, s.discpcnt, s.discamnt, s.salerate,',
'             s.custmrid, s.costcode, s.warecode, s.batchnum,',
'             s.msfcamnt, s.apprqnty, s.docnumbr',
'        INTO :p294_compcode, :p294_docttype, :p294_subttype, :p294_docnumbr,',
'             :p294_doctdate, :p294_serlnumb, :p294_partycode, :p294_itemcode,',
'             :p294_salmanid, :p294_unitofmesure,',
'             :p294_itemdesc, :p294_itemlong_1, :p294_discpcnt, :p294_disamount,',
'             :p294_salprice, :p294_customerid, :p294_costcode, :p294_warecode,',
'             :p294_batchnum, :p294_netamount, :p294_quentity , :P294_DOCNUMBR49',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p294_docnumbr1 AND s.itemcode = :p294_itemcode1;',
'   END IF;',
'END;',
'',
'BEGIN',
'   IF :p294_itemcode1 IS NOT NULL AND :p294_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT distinct TNSPRTYP,TRNSREGN,TNSCHSNO,DRIVNAME,DVNLIDNO,DVLICSNO,DELVLOCT',
'      into :p294_TNSPRTYP,:p294_TRNSREGN,:p294_TNSCHSNO,:p294_DRIVNAME,:p294_DVNLIDNO,:p294_DVLICSNO,:p294_DELVLOCT',
'        FROM nmdevrec ',
'        WHERE UPDOCNUM = :p294_docnumbr',
'      AND UPDOCDTE = :p294_doctdate',
'      and DOCTTYPE = ''GP''',
'      and SUBTTYPE=1;',
'   END IF;',
'END;'))
,p_attribute_02=>'P294_DOCNUMBR1,P294_ITEMCODE1,P294_DOCNUMBR,P294_DOCTDATE'
,p_attribute_03=>'P294_COMPCODE,P294_DOCTTYPE,P294_SUBTTYPE,P294_DOCNUMBR,P294_DOCTDATE,P294_SERLNUMB,P294_PARTYCODE,P294_ITEMCODE,P294_SALMANID,P294_UNITOFMESURE,P294_ITEMDESC,P294_ITEMLONG_1,P294_DISCPCNT,P294_DISAMOUNT,P294_SALPRICE,P294_CUSTOMERID,P294_COSTCODE,P2'
||'94_WARECODE,P294_BATCHNUM,P294_NETAMOUNT,P294_DOCNUMBR49,P294_TNSPRTYP,P294_TRNSREGN,P294_TNSCHSNO,P294_DRIVNAME,P294_DVNLIDNO,P294_DVLICSNO,P294_DELVLOCT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38594311870261832)
,p_name=>'change  on warecode'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38594804048261832)
,p_event_id=>wwv_flow_api.id(38594311870261832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P294_WARECODE IS NOT NULL and :P294_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT a.itemcode',
'into :P294_ITEMCODE ',
'           FROM nmsalrec a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''APR''',
'            AND a.itemcode = b.itemcode',
'            and a.DOCNUMBR=:P294_DOCNUMBR1',
'           -- AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P294_WARECODE',
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
,p_attribute_02=>'P294_DOCNUMBR1,P294_WARECODE'
,p_attribute_03=>'P294_ITEMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38595126316261832)
,p_name=>'change on batchnum'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38595648668261832)
,p_event_id=>wwv_flow_api.id(38595126316261832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P294_ITEMCODE IS NOT NULL and :P294_DOCNUMBR is not null',
'   THEN',
'      BEGIN',
' SELECT  batchnum d',
'into :P294_BATCHNUM',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmsalrec w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P294_ITEMCODE',
'                      AND w.warecode = :P294_WARECODE',
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
,p_attribute_02=>'P294_ITEMCODE,P294_DOCNUMBR,P294_WARECODE'
,p_attribute_03=>'P294_BATCHNUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38596048465261833)
,p_name=>'change  on itemcode1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_ITEMCODE1,P294_DOCNUMBR1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.da.testCondition( this.triggeringElement.id, ''NOT_NULL'' )'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38596610005261833)
,p_event_id=>wwv_flow_api.id(38596048465261833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P294_ITEMCODE1 IS NOT NULL and :P294_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
' SELECT s.DOCTTYPE,s.SUBTTYPE,s.DOCNUMBR,DOCTDATE,COSTCODE,WARECODE',
'        INTO :P294_DOCTTYPE,:P294_SUBTTYPE,:P294_DOCNUMBR,:P294_DOCTDATE,:P294_COSTCODE,:P294_WARECODE',
'        FROM nmprocur s',
'       WHERE s.docnumbr = :p294_docnumbr1',
'and  DOCTDATE=:P294_DOCTDATE1--AND s.itemcode = :p294_itemcode1',
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
'IF :P294_ITEMCODE1 IS NOT NULL and :P294_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT DISTINCT INITCAP (naration) naration',
'into :P294_DOCDESC',
'           FROM sydocmas',
'          WHERE compcode = :compcode ',
'            AND trantype = :P294_DOCTTYPE',
'            and SUBTTYPE = :P294_SUBTTYPE',
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
,p_attribute_02=>'P294_DOCNUMBR1,P294_ITEMCODE1'
,p_attribute_03=>'P294_DOCTTYPE,P294_SUBTTYPE,P294_DOCNUMBR,P294_DOCTDATE,P294_COSTCODE,P294_DOCDESC,P294_WARECODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38596971717261833)
,p_name=>'showhide stats'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(69976028659829428)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'parseInt(window.document.getElementById(''P294_S_H_REGION'').value) == 1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38597418237261835)
,p_event_id=>wwv_flow_api.id(38596971717261833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.document.getElementById(''P294_S_H_REGION'').value = 1;',
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
 p_id=>wwv_flow_api.id(38597922524261835)
,p_event_id=>wwv_flow_api.id(38596971717261833)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if( parseInt(window.document.getElementById(''P294_S_H_REGION'').value) == 1)',
'{',
'window.document.getElementById(''TR'').style.display="block";',
'window.document.getElementById(''IR'').style.display="none";',
'window.document.getElementById(''SR'').style.display="none";',
'--apex.item( "BUT_CRT_FRM" ).show();   ',
'apex.item( "BUT_CRT_TAB" ).hide();',
'/*window.document.getElementById(''BUT_CRT_FRM'').style.display="none";',
'window.document.getElementById(''BUT_CRT_TAB'').style.display="block";*/',
'window.document.getElementById(''P294_S_H_REGION'').value = 0;',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38598340154261835)
,p_name=>'add rows javascript'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38598825034261835)
,p_event_id=>wwv_flow_api.id(38598340154261835)
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
 p_id=>wwv_flow_api.id(38599263705261835)
,p_name=>'disable  field on tabular item'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38599810262261835)
,p_event_id=>wwv_flow_api.id(38599263705261835)
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
'$(''input[name="f20"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f20"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f20"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f19"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f19"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f19"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f22"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f22"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f22"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f23"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f23"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f23"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f29"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f29"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f29"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f30"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f30"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f30"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38600183367261835)
,p_name=>'Click on tabular itemcode'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_TABULARITEMCODE'
,p_condition_element=>'P294_TABULARITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38600680891261835)
,p_event_id=>wwv_flow_api.id(38600183367261835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P294_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct LUOMCODE,ITEMDES1,ITEMTYPE,SALEPERC,COMMGRUP',
'into :P294_tabitemunit,:P294_TABITEMDESC,:P294_TABITEMTYPE,:P294_TABSALEPERC,:P294_TABCOMMGRUP',
'FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P294_TABULARITEMCODE ;',
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
'IF :P294_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct ITEMRATE',
'into :P294_TABITEMRATE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P294_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P294_TABULARITEMCODE;',
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
'IF :P294_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P294_TABCOSTRATE',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P294_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P294_TABULARITEMCODE;',
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
'IF :P294_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P294_TABCLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P294_WARECODE',
'            AND b.itemcode =:P294_TABULARITEMCODE',
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
,p_attribute_02=>'P294_TABULARITEMCODE'
,p_attribute_03=>'P294_TABCOMMGRUP,P294_TABSALEPERC,P294_TABITEMTYPE,P294_TABCOSTRATE,P294_TABITEMDESC,P294_TABCLOSINGBALANCE,P294_TABITEMRATE,P294_TABITEMUNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38601088958261835)
,p_name=>'on page load for hide region default on tabular '
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38601552751261835)
,p_event_id=>wwv_flow_api.id(38601088958261835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P294_S_H_REGION:=0;',
'end;'))
,p_attribute_02=>'P294_S_H_REGION'
,p_attribute_03=>'P294_S_H_REGION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38602049936261835)
,p_event_id=>wwv_flow_api.id(38601088958261835)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38602456820261836)
,p_name=>'on page load for skillbuilders lov field'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38602946916261836)
,p_event_id=>wwv_flow_api.id(38602456820261836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:24 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :p294_itemcode1 IS NOT NULL AND :p294_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT s.smancode, s.costcode, s.custmrid,s.itemcode,s.batchnum',
'        INTO :p294_lovsalmanid, :p294_lovcostcode, :p294_lovcustomerid,:P294_LOVITEMCODE,:P294_LOVBATCHNO',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p294_docnumbr1 AND s.itemcode = :p294_itemcode1;',
'   END IF;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>'P37_DOCNUMBR1,P37_ITEMCODE1'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38603323418261836)
,p_name=>'change on batchnum'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_BATCHNUM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38603876498261836)
,p_event_id=>wwv_flow_api.id(38603323418261836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P294_BATCHNUM IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P294_CLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P294_WARECODE',
'            AND b.itemcode =:P294_ITEMCODE',
'            and b.BATCHNUM =:P294_BATCHNUM',
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
,p_attribute_02=>'P294_WARECODE,P294_ITEMCODE,P294_BATCHNUM'
,p_attribute_03=>'P294_CLOSINGBALANCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38604223826261838)
,p_name=>'clear on itemcode'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38604722657261838)
,p_event_id=>wwv_flow_api.id(38604223826261838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P294_BATCHNUM,P294_DISCPCNT,P294_DISAMOUNT,P294_NETAMOUNT,P294_QUENTITY,P294_CLOSINGBALANCE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38605149595261838)
,p_name=>'change  on salmancode'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_SALMANID'
,p_condition_element=>'P294_SALMANID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38605713661261838)
,p_event_id=>wwv_flow_api.id(38605149595261838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P294_SALMANID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.SMANNAME',
'into :P294_SALMNNAME',
'    FROM nmsmnmas  w',
'   WHERE w.compcode = :compcode',
'     AND w.SMANCODE =:P294_SALMANID;',
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
,p_attribute_02=>'P294_SALMANID'
,p_attribute_03=>'P294_SALMNNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38606061862261838)
,p_name=>'clear  for docnum49'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(69976838069829428)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38606591629261838)
,p_event_id=>wwv_flow_api.id(38606061862261838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P294_DOCNUMBR49'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38606983278261838)
,p_name=>'click on delivery challan'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(69977637008829429)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38607509499261838)
,p_event_id=>wwv_flow_api.id(38606983278261838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$( "#P294_ERRMSG" ).dialog({',
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
 p_id=>wwv_flow_api.id(38607867644261838)
,p_name=>'click for delivery'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(69977637008829429)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38608398101261838)
,p_event_id=>wwv_flow_api.id(38607867644261838)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'beforeInsert();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38608730134261838)
,p_name=>'change on orderno from sales offer'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_ORDERNO'
,p_condition_element=>'P294_ORDERNO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38609253445261838)
,p_event_id=>wwv_flow_api.id(38608730134261838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:16 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :P294_ORDERNO IS NOT NULL',
'   THEN',
'      SELECT s.compcode, s.docttype, s.subttype, s.docnumbr,',
'             s.doctdate, s.serlnumb, s.partycde, s.itemcode,',
'             s.smancode, s.commcode, s.itemdesc,',
'             s.itemlong, s.discpcnt, s.discamnt, s.salerate,',
'             s.custmrid, s.costcode, s.warecode, s.batchnum,',
'             s.msfcamnt, s.apprqnty',
'        INTO :p294_compcode, :p294_docttype, :p294_subttype, :p294_docnumbr,',
'             :p294_doctdate, :p294_serlnumb, :p294_partycode, :p294_itemcode,',
'             :p294_salmanid, :p294_unitofmesure,',
'             :p294_itemdesc, :p294_itemlong_1, :p294_discpcnt, :p294_disamount,',
'             :p294_salprice, :p294_customerid, :p294_costcode, :p294_warecode,',
'             :p294_batchnum, :p294_netamount, :p294_quentity ',
'        FROM nmslsofr s',
'       WHERE s.docnumbr = :P294_ORDERNO;',
'   END IF;',
'END;'))
,p_attribute_02=>'P294_ORDERNO'
,p_attribute_03=>'P294_COMPCODE,P294_DOCTTYPE,P294_SUBTTYPE,P294_DOCNUMBR,P294_DOCTDATE,P294_SERLNUMB,P294_PARTYCODE,P294_ITEMCODE,P294_SALMANID,P294_UNITOFMESURE,P294_ITEMDESC,P294_ITEMLONG_1,P294_DISCPCNT,P294_DISAMOUNT,P294_SALPRICE,P294_CUSTOMERID,P294_COSTCODE,P2'
||'94_WARECODE,P294_BATCHNUM,P294_NETAMOUNT'
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
 p_id=>wwv_flow_api.id(38609678259261838)
,p_name=>'change on javascript on tabular form'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_ORDERNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38610175973261839)
,p_event_id=>wwv_flow_api.id(38609678259261838)
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
 p_id=>wwv_flow_api.id(38610582340261839)
,p_name=>'check all'
,p_event_sequence=>340
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#tcheckbox'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38611028699261839)
,p_event_id=>wwv_flow_api.id(38610582340261839)
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
 p_id=>wwv_flow_api.id(38611590515261839)
,p_event_id=>wwv_flow_api.id(38610582340261839)
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
 p_id=>wwv_flow_api.id(38612016026261839)
,p_name=>'change on warecode'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_WARECODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38612480763261839)
,p_event_id=>wwv_flow_api.id(38612016026261839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'  If :P294_COSTCODE is not null then',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P294_COSTCENTERNAME',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P294_COSTCODE ;',
'Select Initcap(WAREDESC)',
'	   into   :P294_WHSNAM',
'	   from   NMWHSMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    WARECODE = :P294_WARECODE ;',
'select Initcap(PRTYNAME),CONTACT1,PARTYAD1,PEMAILID,PHONENUM',
'into :P294_SUPPLIERNAME,:P294_CONTPRSN,:P294_SPLRADRS,:P294_SPLREMAIL,:P294_SPLRPHON',
'from  sycompty',
' where compcode = :compcode',
' and PARTYCDE=:P294_SUPPLIERCDE;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
'  End if;',
'End;'))
,p_attribute_02=>'P294_COSTCODE,P294_WARECODE,P294_SUPPLIERCDE'
,p_attribute_03=>'P294_COSTCENTERNAME,P294_WHSNAM,P294_SUPPLIERNAME,P294_CONTPRSN,P294_SPLRADRS,P294_SPLREMAIL,P294_SPLRPHON'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38612885102261839)
,p_name=>'pre doctype assign'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_SUBTTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38613365848261839)
,p_event_id=>wwv_flow_api.id(38612885102261839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  Select nvl(prdoctyp,TRDOCTYP), nvl(prsubtyp,TRSUBTYP)',
'    into :P294_S_PRDTYP, :P294_S_PRSTYP',
'    from nmwrkflw',
'   where compcode = :compcode ',
'     and trdoctyp = :P294_DOCTTYPE',
'     and trsubtyp = :P294_SUBTTYPE;',
'     ',
'  ',
'EXCEPTION',
'	When no_data_found Then',
'	  null;',
'	When too_many_rows Then',
'      null;',
'    ',
'END;'))
,p_attribute_02=>'P294_DOCTTYPE,P294_SUBTTYPE'
,p_attribute_03=>'P294_S_PRDTYP,P294_S_PRSTYP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38613745283261839)
,p_name=>'page Refresh for query'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_PODCNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38614304582261839)
,p_event_id=>wwv_flow_api.id(38613745283261839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(193702333607259584)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38614695619261839)
,p_name=>'change on podocno'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_PODCNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38615144832261839)
,p_event_id=>wwv_flow_api.id(38614695619261839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P294_PODCNO IS NOT NULL   THEN',
'      BEGIN',
'    Select distinct Doctdate,nvl(refnumbr,''R''),refndate,currcode,',
'                 excgrate,reqddate,partycde,',
'                 costcode,BILLPARTY,WARECODE',
'     into :P294_PODCDATE,',
'               :P294_REFNUMBR, :P294_REFNDATE, :P294_CURRENCY, ',
'               :P294_EXCHANGERATE, :P294_REQDDAT,',
'               :P294_SUPPLIERCDE, :P294_COSTCODE,:P294_S_BILPART,:P294_WARECODE',
'      from nmstkrec',
'     where compcode = :compcode',
'       and docttype = :P294_S_PRDTYP',
'       and subttype = :P294_S_PRSTYP',
'       and docnumbr = :P294_PODCNO;',
'      -- and doctdate = :P294_PODCDATE',
'     --    and nvl(apprqnty,0)-nvl(trnsqnty,0) > 0;',
'     ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND    THEN',
'            null;',
'WHEN too_many_rows THEN',
'            null;',
'WHEN others THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'',
''))
,p_attribute_02=>'P294_PODCNO,P294_S_PRDTYP,P294_S_PRSTYP'
,p_attribute_03=>'P294_PODCDATE,P294_SALMANID,P294_REFNUMBR,P294_REFNDATE,P294_CURRENCY,P294_EXCHANGERATE,P294_REQDDAT,P294_SUPPLIERCDE,P294_COSTCODE,P294_S_BILPART,P294_WARECODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38615564865261839)
,p_name=>'generate batch number on batchdate'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P294_BATCHDATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38616017480261839)
,p_event_id=>wwv_flow_api.id(38615564865261839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_batchno varchar2(10);',
'begin',
'Docnumber_Generation(''100'',''NM'',''BT'',1,sysdate,''W01'',''NM'',v_batchno);',
':P294_BATCHNO :=v_batchno ;',
'  ',
'end;',
'',
''))
,p_attribute_03=>'P294_BATCHNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38575479711261825)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(193702333607259584)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMSTKREC'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(122826981949596445)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38575895533261825)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(193702333607259584)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMPROCUR'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(38573457851261824)
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38586614194261830)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'87'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(69372728678177280)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38574643951261824)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(193702333607259584)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process Insert  nmprocur for multiple  tabular form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_rcvqty number;',
'v_issqty number;',
'BEGIN',
' select nvl(sum(APPRQNTY),0)  into v_rcvqty ',
'  FROM NMSTKREC b',
'where b.compcode = :compcode',
' and b.UPDOCNUM=:P294_PODCNO;',
' /*                           AND NVL (b.REFNUMBR, 0) IN',
'                                   (SELECT NVL (p.PROCESS_NO, 0)',
'                                      FROM PRPROCESSRGT p',
'                                     WHERE p.compcode = :compcode',
'                                           AND p.USER_CODE = :APP_USER);*/',
' select nvl(sum(TRNSQNTY),0)  into v_issqty ',
'  FROM NMSTKREC b',
'where b.compcode = :compcode',
'and b.DOCNUMBR=:P294_PODCNO;',
'/*AND NVL (b.REFNUMBR, 0) IN (select PROCESS_NO from prprocess where compcode=:compcode and DEPT_NO =(select DEPT_NO from prdepartment',
'where compcode=:compcode and WARECODE=:P1525_WARECODE_TO));*/',
'',
'if v_issqty> v_rcvqty then',
'INSERT INTO NMSTKREC',
'               (COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, SERLNUMB,',
'                PARTYCDE, RAISEDBY, APPRVDBY, APPRDATE, REQDDATE,',
'                COMMCODE, ITEMCODE, ITEMTYPE, MCSERIAL, CMSERIAL,',
'                ITEMDESC, ITEMLONG, ITEMRATE, DISCPCNT, DISCAMNT,',
'                SPLDISPC, SPLDISNT, SALERATE, HUOMCODE, FACTRVAL,',
'                LUOMCODE, ORGNQNTY, APPRQNTY, TRNSQNTY, TRNSQTY2,',
'                MSFCAMNT, CURRCODE, EXCGRATE, MSLCAMNT, ADJAMTLC,',
'                REFNUMBR, REFNDATE, UPDOCTYP, UPSUBTYP, UPDOCNUM,',
'                UPDOCDTE, UPDOCSRL, DWDOCTYP, DWSUBTYP, DWDOCNUM,',
'                DWDOCDTE, DWDOCSRL, ACDOCTYP, ACSUBTYP, ACDOCNUM,',
'                ACDOCDTE, ACDOCSRL, REMARKSS, COSTCODE, WARECODE,',
'                POSTFLAG, PRNTFLAG, PRICFLAG, PRINTCNT, BALNFLAG,',
'                RATVFLAG, STATUSCD, TCSTPCNT, DIVNCODE, TECHNICN,',
'                ENGINEER, AMENDSRL, MATLTYPE, BOQREFER, MFRGDATE,',
'                MFRGTIME, PARNTITM, INDTFLAG, OPRSTAMP, TIMSTAMP,',
'                BATCHNUM, BATCHEXP, BATCHDTE, NORMRATE, SRVCTRCN,',
'                DGNITMFK, STKRCFK1, COSTRATE, AVRGRATE, SERIALST,',
'                SERIALEN, BOM_NO, COLORCDE, SRCWRECD, SNDPERSN,',
'                INVNUMFK, SRCCMPCD',
'               )',
'        VALUES (:COMPCODE, :P294_DOCTTYPE, :P294_SUBTTYPE, :P294_DOCNUMBR, :P294_TRNDATE, :SERLNUMB,',
'                :P294_SUPPLIERCDE, :RAISEDBY, :APPRVDBY, :APPRDATE, :REQDDATE,',
'                :COMMCODE, :ITEMCODE, :ITEMTYPE, :MCSERIAL, :CMSERIAL,',
'                :ITEMDESC, :ITEMDESC, :ITEMRATE, :DISCPCNT, :DISCAMNT,',
'                :SPLDISPC, :SPLDISNT, :SALERATE, :HUOMCODE, :FACTRVAL,',
'                :LUOMCODE, :ORGNQNTY, :APPRQNTY, NULL, :TRNSQTY2,',
'                :MSFCAMNT, :CURRCODE, :EXCGRATE, :MSLCAMNT, :ADJAMTLC,',
'                :P294_REFNUMBR, :P294_REFNDATE, :P294_S_PRDTYP, :P294_S_PRSTYP, :P294_PODCNO,',
'                :P294_PODCDATE, :UPDOCSRL, :DWDOCTYP, :DWSUBTYP, :DWDOCNUM,',
'                :DWDOCDTE, :DWDOCSRL, :ACDOCTYP, :ACSUBTYP, :ACDOCNUM,',
'                :ACDOCDTE, :ACDOCSRL, :REMARKSS, :P294_COSTCODE, :P294_WARECODE,',
'                :POSTFLAG, :PRNTFLAG, :PRICFLAG, :PRINTCNT, :BALNFLAG,',
'                :RATVFLAG,  :STATUSCD, :TCSTPCNT, :DIVNCODE, :TECHNICN,',
'                :ENGINEER, :AMENDSRL, :MATLTYPE, :BOQREFER, :MFRGDATE,',
'                :MFRGTIME, :PARNTITM, :INDTFLAG, :APP_USER, SYSDATE,',
'                :P294_BATCHNO, :P294_BTCHEXPDAT, :P294_BATCHDATE, :NORMRATE, :SRVCTRCN,',
'                :DGNITMFK, :NEGITMFK, :COSTRATE, :AVRGRATE, :SERIALST,',
'                :SERIALEN, :BOM_NO, :COLORCDE, :SRCWRECD, :SNDPERSN,',
'                :INVNUMFK, :SRCCMPCD',
'               );',
'               end if;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(122827378314596447)
,p_only_for_changed_rows=>'N'
,p_process_success_message=>'Record generate successfully<br>Requisition No. : &P294_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38575051685261825)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(193702333607259584)
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
,p_process_when_button_id=>wwv_flow_api.id(122827378314596447)
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38586128963261830)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process for multiple tabular form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(10);',
'btcnum varchar2(10):=''SYS00000'';',
'begin',
'',
'docnumber_generation(:COMPCODE, ''NM'', ''RC'',',
'                       1, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''),null,',
'                        ''NM'', docnum);',
'docnumber_generation(:COMPCODE, ''NM'', ''BT'',',
'                       1, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''),:P294_WARECODE,',
'                        ''NM'', btcnum);',
' ',
':P294_DOCNUMBR:= docnum; ',
':P294_BATCHNO:= btcnum;',
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
,p_process_when_button_id=>wwv_flow_api.id(122827378314596447)
);
wwv_flow_api.component_end;
end;
/
