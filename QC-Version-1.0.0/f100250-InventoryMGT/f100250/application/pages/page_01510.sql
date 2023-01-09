prompt --application/pages/page_01510
begin
--   Manifest
--     PAGE: 01510
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
 p_id=>1510
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Production Budget/Costing'
,p_page_mode=>'MODAL'
,p_step_title=>'Production Budget/Costing'
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
'document.getElementById(''P86_TABULARITEMCODE'').value=',
'    html_GetElement(''f13_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P86_TABULARITEMCODE'').trigger(''click'');',
'});',
'html_GetElement(''f12_''+vRow).value=',
'document.getElementById(''P86_TABITEMTYPE'').value;',
'html_GetElement(''f14_''+vRow).value=',
'document.getElementById(''P86_TABITEMDESC'').value;',
'html_GetElement(''f17_''+vRow).value=',
'document.getElementById(''P86_TABITEMRATE'').value;',
'html_GetElement(''f18_''+vRow).value=',
'document.getElementById(''P86_TABITEMUNIT'').value;',
'html_GetElement(''f19_''+vRow).value=',
'document.getElementById(''P86_TABCOMMGRUP'').value;',
'}',
'</script>',
'',
'<script language="JavaScript" type="text/javascript">',
'',
' function addTotal()',
' {',
'  var items = document.getElementsByName("f21"); // Tabular form column to add up',
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
'  $x(''P86_TABTOTDISAM'').value = $total;',
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
'.a-IG-header {',
'    padding: 0px 1px 0;',
'    border-bottom: 1px solid;',
'}',
'',
'.t-Region-body {',
'    padding: 1px 1px 1px 1px;',
'}'))
,p_dialog_height=>'650'
,p_dialog_width=>'100%'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20191205175346'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79950763809104653)
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
 p_id=>wwv_flow_api.id(79957349540104678)
,p_plug_name=>'&P1510_DISPLAY.'
,p_parent_plug_id=>wwv_flow_api.id(79950763809104653)
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;float:left;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
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
 p_id=>wwv_flow_api.id(65463151695239107)
,p_plug_name=>'Process Info.'
,p_region_name=>'A1'
,p_parent_plug_id=>wwv_flow_api.id(79957349540104678)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'class="process"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  Distinct C.PROCESS_NO,C.oper_name || '' - '' || C.process_name ProcesNm,    (Select Itemdes1 From Nmitemas Where Compcode=:Compcode And Itemcode=B.ITEMCODE) TRGSFG,',
'           B.QTY_PER_FG_UOM*NVL(:P1510_ORDERQTY,0) TRGQTY,A.DESIGN_ID',
'From prdesign A,Prdesignfg B,vwprop_process C',
'Where A.Compcode=B.Compcode',
'And     A.DESIGN_NO=B.DESIGN_NO',
'And     B.Compcode=C.Compcode',
'And     B.OPERDTL_NO=C.OPERDTL_NO',
'And     A.Compcode=:Compcode',
'And     A.TGT_FG_ITEMCODE=:P1510_FITEMCD'))
,p_plug_source_type=>'NATIVE_IG'
,p_translate_title=>'N'
,p_ajax_items_to_submit=>':P1510_FITEMCD'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(65465110268239127)
,p_name=>'PROCESS_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESS_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(65626763498011332)
,p_name=>'PROCESNM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESNM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Process Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>153
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(65626860028011333)
,p_name=>'TRGSFG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRGSFG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Target Finished Product'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66354615984304600)
,p_name=>'TRGQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRGQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Target Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(68647990341338996)
,p_name=>'DESIGN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESIGN_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(65463248863239108)
,p_internal_uid=>28308381737558614
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>false
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(65606315315002245)
,p_interactive_grid_id=>wwv_flow_api.id(65463248863239108)
,p_static_id=>'396069'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(65606430841002245)
,p_report_id=>wwv_flow_api.id(65606315315002245)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(65615959642002276)
,p_view_id=>wwv_flow_api.id(65606430841002245)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(65465110268239127)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66261913027141801)
,p_view_id=>wwv_flow_api.id(65606430841002245)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(65626763498011332)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66262333520141811)
,p_view_id=>wwv_flow_api.id(65606430841002245)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(65626860028011333)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66403314774586594)
,p_view_id=>wwv_flow_api.id(65606430841002245)
,p_display_seq=>42
,p_column_id=>wwv_flow_api.id(66354615984304600)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(68966841299129097)
,p_view_id=>wwv_flow_api.id(65606430841002245)
,p_display_seq=>43
,p_column_id=>wwv_flow_api.id(68647990341338996)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65466633338239142)
,p_plug_name=>'Required Raw-Material'
,p_parent_plug_id=>wwv_flow_api.id(79957349540104678)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  Distinct C.PROCESS_NO,D.ITEMCODE,(Select Itemdes1 From Nmitemas Where Compcode=:Compcode And Itemcode=D.ITEMCODE) RAWITEM,D.DESIGNRAW_QTY*NVL(:P1510_ORDERQTY,0) REQQTY,A.DESIGN_ID',
'From prdesign A,Prdesignfg B,vwprop_process C,PRDESIGNRAW D',
'Where A.Compcode=B.Compcode',
'And     A.DESIGN_NO=B.DESIGN_NO',
'And     B.Compcode=C.Compcode',
'And     B.OPERDTL_NO=C.OPERDTL_NO',
'And     B.COMPCODE=D.COMPCODE',
'And     B.DESIGNFG_NO=D.DESIGNFG_NO',
'And     A.Compcode=:Compcode',
'--And     A.DESIGN_ID=:DESIGN_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(65463151695239107)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'ALWAYS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(65627911391011344)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66354127716304595)
,p_name=>'RAWITEM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAWITEM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Item Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66354302665304597)
,p_name=>'PROCESS_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESS_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_api.id(65465110268239127)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66354706205304601)
,p_name=>'REQQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Required.Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(68648108703338997)
,p_name=>'DESIGN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESIGN_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_api.id(68647990341338996)
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(65466690250239143)
,p_internal_uid=>28311823124558649
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(65628884708011385)
,p_interactive_grid_id=>wwv_flow_api.id(65466690250239143)
,p_static_id=>'396070'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(65629035740011385)
,p_report_id=>wwv_flow_api.id(65628884708011385)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66360122461304693)
,p_view_id=>wwv_flow_api.id(65629035740011385)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(65627911391011344)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66360664248304702)
,p_view_id=>wwv_flow_api.id(65629035740011385)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(66354127716304595)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66383529167527278)
,p_view_id=>wwv_flow_api.id(65629035740011385)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(66354302665304597)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66545414727930987)
,p_view_id=>wwv_flow_api.id(65629035740011385)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(66354706205304601)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(68969083939153694)
,p_view_id=>wwv_flow_api.id(65629035740011385)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(68648108703338997)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65626452885011329)
,p_plug_name=>'B'
,p_parent_plug_id=>wwv_flow_api.id(79957349540104678)
,p_region_template_options=>'#DEFAULT#:i-h100:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>9
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79946553949104625)
,p_plug_name=>'A'
,p_parent_plug_id=>wwv_flow_api.id(79957349540104678)
,p_region_template_options=>'#DEFAULT#:i-h100:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_column=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(144441022726160725)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(65627783083011343)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(65626452885011329)
,p_button_name=>'Search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'BELOW_BOX'
,p_button_cattributes=>'style = "width:295px;"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(65301766135007338)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(144441022726160725)
,p_button_name=>'Save'
,p_button_static_id=>'BUT_CRT_TAB'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P1510_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(65462012660239096)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(144441022726160725)
,p_button_name=>'Clear'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:1510:&SESSION.::&DEBUG.:RP,1510::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42821505806002204)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(144441022726160725)
,p_button_name=>'PB_RESET'
,p_button_static_id=>'PB_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Reset Page'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(65245501094007285)
,p_button_sequence=>1840
,p_button_plug_id=>wwv_flow_api.id(79950763809104653)
,p_button_name=>'P1510_RUNREPORT'
,p_button_static_id=>'P86_RUNREPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Run Report'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:49:P49_PROGNAME,P49_DOCNUMBR:&P1510_PROGNAME.,&P1510_DOCNUMBR49.'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(65245908073007288)
,p_button_sequence=>1850
,p_button_plug_id=>wwv_flow_api.id(79950763809104653)
,p_button_name=>'P1510_MNYRECEIPT'
,p_button_static_id=>'P86_MNYRECEIPT'
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
 p_id=>wwv_flow_api.id(65246306869007288)
,p_button_sequence=>1890
,p_button_plug_id=>wwv_flow_api.id(79950763809104653)
,p_button_name=>'P1510_DELIVERY'
,p_button_static_id=>'P86_DELIVERY'
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
 p_id=>wwv_flow_api.id(65300915877007338)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(144441022726160725)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--large:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:999:&SESSION.:A:&DEBUG.:1510::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(65246760892007288)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(79950763809104653)
,p_button_name=>'CREATE'
,p_button_static_id=>'BUT_CRT_FRM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(65247074504007288)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(79950763809104653)
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
 p_id=>wwv_flow_api.id(65247510088007289)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(79950763809104653)
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
 p_id=>wwv_flow_api.id(65247895060007289)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(79950763809104653)
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
 p_id=>wwv_flow_api.id(65248338585007289)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(79950763809104653)
,p_button_name=>'DELIVERY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delivery'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(65334009333007355)
,p_branch_name=>'Go To Page 1510'
,p_branch_action=>'f?p=&APP_ID.:1510:&SESSION.::&DEBUG.:RP,1510::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(65301766135007338)
,p_branch_sequence=>11
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65251693546007294)
,p_name=>'P1510_DISPLAY'
,p_item_sequence=>2110
,p_item_plug_id=>wwv_flow_api.id(79957349540104678)
,p_item_default=>':P1510_DOCDESC||''  (''||:P1510_DOCTTYPE||''/''||:P1510_SUBTTYPE||'')'''
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
 p_id=>wwv_flow_api.id(65252440353007299)
,p_name=>'P1510_REGION'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65252814762007300)
,p_name=>'P1510_COMPCODE'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65253225720007302)
,p_name=>'P1510_OPRSTAMP'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65253665067007302)
,p_name=>'P1510_TIMSTAMP'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65253970387007302)
,p_name=>'P1510_SERLNUMB'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65254405835007302)
,p_name=>'P1510_STATUSCD'
,p_item_sequence=>1470
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65254841498007302)
,p_name=>'P1510_FITEMNM'
,p_item_sequence=>1430
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_api.id(65255174014007302)
,p_name=>'P1510_MSFCAMNT'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65256026140007303)
,p_name=>'P1510_DOCTTYPE'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_use_cache_before_default=>'NO'
,p_item_default=>'MI'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65256465322007303)
,p_name=>'P1510_ROWID'
,p_item_sequence=>1500
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65256832592007303)
,p_name=>'P1510_SUBTTYPE'
,p_item_sequence=>1510
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65257195701007303)
,p_name=>'P1510_DOCNUMBR1'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65257622725007303)
,p_name=>'P1510_DOCDESC'
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65258425566007306)
,p_name=>'P1510_COMPCODE_APPLICATION'
,p_item_sequence=>1540
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65258814434007306)
,p_name=>'P1510_DOCNUMBR'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_api.id(65626452885011329)
,p_prompt=>'Budget No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>26
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65259175518007306)
,p_name=>'P1510_TABULARITEMCODE'
,p_item_sequence=>1550
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65259570481007306)
,p_name=>'P1510_DOCTDATE'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(65626452885011329)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Budget Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>22
,p_cMaxlength=>4000
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_CUSTOMERID'')"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65259981000007306)
,p_name=>'P1510_TABCOSTRATE'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65260392989007308)
,p_name=>'P1510_TABITEMDESC'
,p_item_sequence=>1570
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65260836409007308)
,p_name=>'P1510_TABITEMRATE'
,p_item_sequence=>1580
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65261236178007308)
,p_name=>'P1510_TABITEMUNIT'
,p_item_sequence=>1590
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65261645349007308)
,p_name=>'P1510_TABCLOSINGBALANCE'
,p_item_sequence=>1600
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65262059630007308)
,p_name=>'P1510_TABITEMTYPE'
,p_item_sequence=>1610
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65262453632007308)
,p_name=>'P1510_TABCOMMGRUP'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65262861932007308)
,p_name=>'P1510_TABSALEPERC'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65263224145007309)
,p_name=>'P1510_BRAND'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65263567880007309)
,p_name=>'P1510_MODAL'
,p_item_sequence=>1650
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65264055839007309)
,p_name=>'P1510_UNITOFMESURE'
,p_item_sequence=>1660
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65264443598007311)
,p_name=>'P1510_PROGNAME'
,p_item_sequence=>1670
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_source=>'nminvmny'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65264830422007311)
,p_name=>'P1510_DOCNUMBR49'
,p_item_sequence=>1680
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65265261884007311)
,p_name=>'P1510_S_PRDTYP'
,p_item_sequence=>1690
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65265586118007311)
,p_name=>'P1510_S_PRSTYP'
,p_item_sequence=>1700
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65461910607239095)
,p_name=>'P1510_BUDGTNM'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65462444846239100)
,p_name=>'P1510_ORDERNO'
,p_item_sequence=>1370
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_prompt=>'Order No'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Distinct A.DOCNUMBR,A.DOCTDATE,A.PARTYCDE,',
'          (Select Distinct PRTYNAME  From sycompty Where Compcode=:Compcode And PARTYCDE=A.PARTYCDE) PRTYNAME',
'From Nmslsofr A',
'Where A.Compcode=:Compcode',
'And   A.DOCTTYPE=''MQ''',
'Order By A.DOCTDATE Desc,A.DOCNUMBR'))
,p_lov_display_null=>'YES'
,p_cSize=>19
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,1'
,p_attribute_06=>'3,4'
,p_attribute_07=>'P1510_PARTYCD,P1510_PARTYNM'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65462617230239102)
,p_name=>'P1510_STYLENO'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_prompt=>'Style No.'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.DESIGN_NO,a.DESIGN_ID,',
'        a.DESIGN_DATE,',
'       a.SALE_PRICE,',
'        a.DESIGN_NAME,',
'        a.TGT_FG_ITEMCODE,',
'        a.TARGET_FG_QTY',
'  FROM PRODUCTION_DESIGN a',
'  where a.COMPCODE=:COMPCODE'))
,p_lov_cascade_parent_items=>'P1510_ORDERNO'
,p_ajax_items_to_submit=>'P1510_ORDERNO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>15
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,1'
,p_attribute_06=>'7,6,5,2'
,p_attribute_07=>'P1510_ORDERQTY,P1510_FITEMCD,P1510_FITEMNM,P1510_DESIGNID'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65462704257239103)
,p_name=>'P1510_FITEMCD'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_prompt=>'Item Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65462857434239104)
,p_name=>'P1510_ORDERQTY'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_prompt=>'Order Qty.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>28
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65462943970239105)
,p_name=>'P1510_PARTYCD'
,p_item_sequence=>1440
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_prompt=>'Buyer'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65463063174239106)
,p_name=>'P1510_PARTYNM'
,p_item_sequence=>1450
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68648183288338998)
,p_name=>'P1510_DESIGNID'
,p_item_sequence=>1710
,p_item_plug_id=>wwv_flow_api.id(79946553949104625)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65304890540007342)
,p_name=>'change on customer id'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_CUSTOMERID'
,p_condition_element=>'P1510_CUSTOMERID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65305402654007344)
,p_event_id=>wwv_flow_api.id(65304890540007342)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P1510_CUSTOMERID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT distinct c.CUSTADR1,r.AREACODE,r.ZONLCODE,r.partycde,CUSTNAME',
'into :P1510_CUSADDRESS,:P1510_AREACODE,:P1510_ZONE,:P1510_PARTYCODE,:P1510_CUSTOMERNAME',
'  FROM nmcusmas c, sycompty r',
' WHERE c.PARTYCDE = r.PARTYCDE(+) AND c.compcode = r.compcode',
'       AND c.compcode = :compcode',
'and c.CUSTMRID=:P1510_CUSTOMERID;',
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
,p_attribute_02=>'P1510_CUSTOMERID'
,p_attribute_03=>'P1510_CUSADDRESS,P1510_AREACODE,P1510_ZONE,P1510_PARTYCODE,P1510_CUSTOMERNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65305832171007345)
,p_name=>'change on costcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_COSTCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65306351919007345)
,p_event_id=>wwv_flow_api.id(65305832171007345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P1510_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.warecode',
'into :P1510_WARECODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P1510_COSTCODE)',
'     AND costcode = :P1510_COSTCODE',
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
'IF :P1510_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct COSTDESC ',
'into :P1510_COSTCENTERNAME',
'from syjobmas',
'where compcode = :compcode',
'AND costcode = :P1510_COSTCODE;',
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
'   END IF;',
'END;',
'BEGIN',
'IF :P1510_COSTCODE IS NOT NULL and :P1510_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT distinct SMANCODE',
'into :P1510_SALMANID',
'        FROM nmsalrec',
'       WHERE docnumbr = :p1510_docnumbr1',
'         AND DOCTDATE = :P1510_DOCTDATE',
'         AND COSTCODE = :P1510_COSTCODE;',
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
,p_attribute_02=>'P1510_COSTCODE,P1510_DOCNUMBR1,P1510_DOCTDATE'
,p_attribute_03=>'P1510_WARECODE,P1510_COSTCENTERNAME,P1510_SALMANID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65306689993007345)
,p_name=>'change on itemcode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_FITEMCD'
,p_condition_element=>'P1510_FITEMCD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65307236547007347)
,p_event_id=>wwv_flow_api.id(65306689993007345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P1510_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P1510_UNITOFMESURE,:P1510_ITEMDESC,:P1510_BRAND,:P1510_MODAL,:P1510_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P1510_ITEMCODE;',
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
'IF :P1510_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P1510_SALPRICE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P1510_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P1510_ITEMCODE;',
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
'IF :P1510_ITEMCODE1 IS NOT NULL and :P1510_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) ',
'into :P1510_QUENTITY',
'       from    nmsalrec s,(SELECT   SUM (d.trnsqnty) trnsqnty, d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE',
'                     FROM nmdevrec d',
'                     group by d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE) e',
'                     WHERE s.docnumbr = :p1510_docnumbr1 AND s.itemcode = :p1510_itemcode1',
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
,p_attribute_02=>'P1510_FITEMCD,P1510_DOCNUMBR1'
,p_attribute_03=>'P1510_UNITOFMESURE,P1510_ITEMDESC,P1510_BRAND,P1510_MODAL,P1510_SALPRICE,P1510_ISSUMTHD,P1510_CLOSINGBALANCE,P1510_QUENTITY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65307612641007347)
,p_name=>'change on trantype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_TRANTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65308092373007347)
,p_event_id=>wwv_flow_api.id(65307612641007347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select distinct PRDOCTYP,PRSUBTYP ',
'into :P1510_REQREFTYPE,:P1510_REQSUBTYPE',
'from nmwrkflw',
'where TRDOCTYP||TRSUBTYP=:P1510_TRANTYPE',
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
,p_attribute_02=>'P1510_TRANTYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65308502725007347)
,p_name=>'installment amount'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(51869188485777894)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65309014590007347)
,p_event_id=>wwv_flow_api.id(65308502725007347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P1510_PERINSTALL:=(:P1510_INSTLLAMOUNT/:P1510_INSTALLNO);',
'end;'))
,p_attribute_02=>'P1510_INSTLLAMOUNT,P1510_INSTALLNO'
,p_attribute_03=>'P1510_PERINSTALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65309470014007347)
,p_event_id=>wwv_flow_api.id(65308502725007347)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var tt = window.document.getElementById(''P1510_INSTALLNO'').value;',
' for(i=0;i<tt;i++)',
'{',
'var pp = ''f02_000''.concat(i+1);',
'javascript:apex.widget.tabular.addRow();',
'window.document.getElementById(pp).value = window.document.getElementById(''P1510_PERINSTALL'').value;',
'',
'}'))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pp = f02_000.concat(i);',
'',
'.concat(f02_000.concat(i)).concat('')'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65309880624007348)
,p_name=>'on change amount'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_QUENTITY'
,p_condition_element=>'P1510_QUENTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65310423902007348)
,p_event_id=>wwv_flow_api.id(65309880624007348)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1510_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65310963228007348)
,p_event_id=>wwv_flow_api.id(65309880624007348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/05 14:26 (Formatter Plus v4.8.8) */',
'BEGIN',
'   :p1510_amount := :p1510_salprice * :p1510_quentity;',
':P1510_DISAMOUNT:=(:P1510_AMOUNT*:P1510_DISCPCNT)/100;',
':P1510_NETAMOUNT:=nvl(:P1510_AMOUNT,0)-nvl(:P1510_DISAMOUNT,0);',
'END;'))
,p_attribute_02=>'P1510_SALPRICE,P1510_QUENTITY,P1510_AMOUNT,P1510_DISCPCNT,P1510_DISAMOUNT'
,p_attribute_03=>'P1510_AMOUNT,P1510_DISAMOUNT,P1510_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65311274830007348)
,p_name=>'on change discount percent'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_DISCPCNT'
,p_condition_element=>'P1510_DISCPCNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65311853775007348)
,p_event_id=>wwv_flow_api.id(65311274830007348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P1510_DISAMOUNT:=(:P1510_AMOUNT*:P1510_DISCPCNT)/100;',
'end;'))
,p_attribute_02=>'P1510_AMOUNT,P1510_DISCPCNT'
,p_attribute_03=>'P1510_DISAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65312192456007348)
,p_name=>'on change amount and disamount'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_DISAMOUNT'
,p_condition_element=>'P1510_DISAMOUNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65312669301007348)
,p_event_id=>wwv_flow_api.id(65312192456007348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P1510_NETAMOUNT:=nvl(:P1510_AMOUNT,0)-nvl(:P1510_DISAMOUNT,0);',
'end;'))
,p_attribute_02=>'P1510_AMOUNT,P1510_DISAMOUNT'
,p_attribute_03=>'P1510_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65313087441007348)
,p_name=>'query on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65313593010007350)
,p_event_id=>wwv_flow_api.id(65313087441007348)
,p_event_result=>'TRUE'
,p_action_sequence=>9
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:16 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :p1510_itemcode1 IS NOT NULL AND :p1510_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT s.compcode, s.docttype, s.subttype, s.docnumbr,',
'             s.doctdate, s.serlnumb, s.partycde, s.itemcode,',
'             s.smancode, s.commcode, s.itemdesc,',
'             s.itemlong, s.discpcnt, s.discamnt, s.salerate,',
'             s.custmrid, s.costcode, s.warecode, s.batchnum,',
'             s.msfcamnt, s.apprqnty, s.docnumbr',
'        INTO :p1510_compcode, :p1510_docttype, :p1510_subttype, :p1510_docnumbr,',
'             :p1510_doctdate, :p1510_serlnumb, :p1510_partycode, :p1510_itemcode,',
'             :p1510_salmanid, :p1510_unitofmesure,',
'             :p1510_itemdesc, :p1510_itemlong_1, :p1510_discpcnt, :p1510_disamount,',
'             :p1510_salprice, :p1510_customerid, :p1510_costcode, :p1510_warecode,',
'             :p1510_batchnum, :p1510_netamount, :p1510_quentity , :P1510_DOCNUMBR49',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p1510_docnumbr1 AND s.itemcode = :p1510_itemcode1;',
'   END IF;',
'END;',
'',
'BEGIN',
'   IF :p1510_itemcode1 IS NOT NULL AND :p1510_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT distinct TNSPRTYP,TRNSREGN,TNSCHSNO,DRIVNAME,DVNLIDNO,DVLICSNO,DELVLOCT',
'      into :p1510_TNSPRTYP,:p1510_TRNSREGN,:p1510_TNSCHSNO,:p1510_DRIVNAME,:p1510_DVNLIDNO,:p1510_DVLICSNO,:p1510_DELVLOCT',
'        FROM nmdevrec ',
'        WHERE UPDOCNUM = :p1510_docnumbr',
'      AND UPDOCDTE = :p1510_doctdate',
'      and DOCTTYPE = ''GP''',
'      and SUBTTYPE=1;',
'   END IF;',
'END;'))
,p_attribute_02=>'P1510_DOCNUMBR1,P1510_DOCTDATE'
,p_attribute_03=>'P1510_COMPCODE,P1510_DOCTTYPE,P1510_SUBTTYPE,P1510_DOCTDATE,P1510_SERLNUMB,P1510_PARTYCODE,P1510_FITEMCD,P1510_UNITOFMESURE,P1510_ITEMDESC,P1510_FITEMNM,P1510_DISCPCNT,P1510_DISAMOUNT,P1510_SALPRICE,P1510_BATCHNUM,P1510_NETAMOUNT,P1510_DOCNUMBR49,P15'
||'10_TNSPRTYP,P1510_TRNSREGN,P1510_TNSCHSNO,P1510_DRIVNAME,P1510_DVNLIDNO,P1510_DVLICSNO,P1510_DELVLOCT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65314002447007350)
,p_name=>'change  on warecode'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65314556948007350)
,p_event_id=>wwv_flow_api.id(65314002447007350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P1510_WARECODE IS NOT NULL and :P1510_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT a.itemcode',
'into :P1510_ITEMCODE ',
'           FROM nmsalrec a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''APR''',
'            AND a.itemcode = b.itemcode',
'            and a.DOCNUMBR=:P1510_DOCNUMBR1',
'           -- AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P1510_WARECODE',
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
,p_attribute_02=>'P1510_DOCNUMBR1'
,p_attribute_03=>'P1510_FITEMCD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65314919149007350)
,p_name=>'change on batchnum'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65315405295007350)
,p_event_id=>wwv_flow_api.id(65314919149007350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P1510_ITEMCODE IS NOT NULL and :P1510_DOCNUMBR is not null',
'   THEN',
'      BEGIN',
' SELECT  batchnum d',
'into :P1510_BATCHNUM',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmsalrec w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P1510_ITEMCODE',
'                      AND w.warecode = :P1510_WARECODE',
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
,p_attribute_02=>'P1510_FITEMCD'
,p_attribute_03=>'P1510_BATCHNUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65315777080007350)
,p_name=>'change  on itemcode1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_DOCNUMBR1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.da.testCondition( this.triggeringElement.id, ''NOT_NULL'' )'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_api.id(65316354744007350)
,p_event_id=>wwv_flow_api.id(65315777080007350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P1510_ITEMCODE1 IS NOT NULL and :P1510_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
' SELECT s.DOCTTYPE,s.SUBTTYPE,s.DOCNUMBR,DOCTDATE,COSTCODE,SRCCMPCD',
'        INTO :P1510_DOCTTYPE,:P1510_SUBTTYPE,:P1510_DOCNUMBR,:P1510_DOCTDATE,:P1510_COSTCODE,:P1510_SRCCOMPNM ',
'        FROM nmstkrec s',
'       WHERE s.docnumbr = :p1510_docnumbr1 AND s.itemcode = :p1510_itemcode1;',
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
'IF :P1510_ITEMCODE1 IS NOT NULL and :P1510_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  distinct w.COSTCODE',
'into :P1510_SRCCOSTCD',
'    FROM nmwhsmas w',
'    where w.warecode=(',
' SELECT SRCWRECD',
'        FROM nmstkrec s',
'       WHERE s.docnumbr = :p1510_docnumbr1 AND s.itemcode = :p1510_itemcode1',
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
'IF :P1510_ITEMCODE1 IS NOT NULL and :P1510_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT DISTINCT INITCAP (naration) naration',
'into :P1510_DOCDESC',
'           FROM sydocmas',
'          WHERE compcode = :compcode ',
'            AND trantype = :P1510_DOCTTYPE',
'            and SUBTTYPE = :P1510_SUBTTYPE',
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
,p_attribute_02=>'P1510_DOCNUMBR1'
,p_attribute_03=>'P1510_DOCTTYPE,P1510_SUBTTYPE,P1510_DOCTDATE,P1510_DOCDESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65316699862007350)
,p_name=>'showhide stats'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(65247074504007288)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'parseInt(window.document.getElementById(''P1510_S_H_REGION'').value) == 1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65317254042007352)
,p_event_id=>wwv_flow_api.id(65316699862007350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.document.getElementById(''P1510_S_H_REGION'').value = 1;',
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
 p_id=>wwv_flow_api.id(65317716630007352)
,p_event_id=>wwv_flow_api.id(65316699862007350)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if( parseInt(window.document.getElementById(''P1510_S_H_REGION'').value) == 1)',
'{',
'window.document.getElementById(''TR'').style.display="block";',
'window.document.getElementById(''IR'').style.display="none";',
'window.document.getElementById(''SR'').style.display="none";',
'--apex.item( "BUT_CRT_FRM" ).show();   ',
'apex.item( "BUT_CRT_TAB" ).hide();',
'/*window.document.getElementById(''BUT_CRT_FRM'').style.display="none";',
'window.document.getElementById(''BUT_CRT_TAB'').style.display="block";*/',
'window.document.getElementById(''P1510_S_H_REGION'').value = 0;',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65318162958007352)
,p_name=>'add rows javascript'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65318632285007352)
,p_event_id=>wwv_flow_api.id(65318162958007352)
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
 p_id=>wwv_flow_api.id(65319058774007352)
,p_name=>'disable  field on tabular item'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65319473808007352)
,p_event_id=>wwv_flow_api.id(65319058774007352)
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
'$(''input[name="f22"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f22"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f22"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f23"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f23"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f23"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f30"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f30"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f30"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f24"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f24"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f24"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f29"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f29"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f29"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65319936181007352)
,p_name=>'on change tabular itemcode'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_TABULARITEMCODE'
,p_condition_element=>'P1510_TABULARITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65320461356007352)
,p_event_id=>wwv_flow_api.id(65319936181007352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P1510_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct LUOMCODE,ITEMDES1,ITEMTYPE,SALEPERC,COMMGRUP',
'into :P1510_tabitemunit,:P1510_TABITEMDESC,:P1510_TABITEMTYPE,:P1510_TABSALEPERC,:P1510_TABCOMMGRUP',
'FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P1510_TABULARITEMCODE ;',
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
'IF :P1510_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct ITEMRATE',
'into :P1510_TABITEMRATE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P1510_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P1510_TABULARITEMCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            :P1510_TABITEMRATE:=0;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            :P1510_TABITEMRATE:=0;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P1510_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P1510_TABCOSTRATE',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P1510_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P1510_TABULARITEMCODE;',
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
'IF :P1510_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P1510_TABCLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P1510_WARECODE',
'            AND b.itemcode =:P1510_TABULARITEMCODE',
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
,p_attribute_02=>'P1510_TABULARITEMCODE'
,p_attribute_03=>'P1510_TABCOMMGRUP,P1510_TABSALEPERC,P1510_TABITEMTYPE,P1510_TABCOSTRATE,P1510_TABITEMDESC,P1510_TABCLOSINGBALANCE,P1510_TABITEMRATE,P1510_TABITEMUNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65320793923007352)
,p_name=>'on page load for hide region default on tabular '
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65321334747007352)
,p_event_id=>wwv_flow_api.id(65320793923007352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P1510_S_H_REGION:=0;',
'end;'))
,p_attribute_02=>'P1510_S_H_REGION'
,p_attribute_03=>'P1510_S_H_REGION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65321830849007353)
,p_event_id=>wwv_flow_api.id(65320793923007352)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(65301766135007338)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65322213907007353)
,p_name=>'on page load for skillbuilders lov field'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65322747962007353)
,p_event_id=>wwv_flow_api.id(65322213907007353)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:24 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :p1510_itemcode1 IS NOT NULL AND :p1510_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT s.smancode, s.costcode, s.custmrid,s.itemcode,s.batchnum',
'        INTO :p1510_lovsalmanid, :p1510_lovcostcode, :p1510_lovcustomerid,:P1510_LOVITEMCODE,:P1510_LOVBATCHNO',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p1510_docnumbr1 AND s.itemcode = :p1510_itemcode1;',
'   END IF;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>'P37_DOCNUMBR1,P37_ITEMCODE1'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65323136231007353)
,p_name=>'change on batchnum'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_BATCHNUM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65323584842007353)
,p_event_id=>wwv_flow_api.id(65323136231007353)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P1510_BATCHNUM IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P1510_CLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P1510_WARECODE',
'            AND b.itemcode =:P1510_ITEMCODE',
'            and b.BATCHNUM =:P1510_BATCHNUM',
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
,p_attribute_02=>'P1510_FITEMCD,P1510_BATCHNUM'
,p_attribute_03=>'P1510_CLOSINGBALANCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65323986998007353)
,p_name=>'clear on itemcode'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_FITEMCD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65324531652007353)
,p_event_id=>wwv_flow_api.id(65323986998007353)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1510_BATCHNUM,P1510_DISCPCNT,P1510_DISAMOUNT,P1510_NETAMOUNT,P1510_QUENTITY,P1510_CLOSINGBALANCE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65324950121007353)
,p_name=>'change  on salmancode'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_SALMANID'
,p_condition_element=>'P1510_SALMANID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65325458414007353)
,p_event_id=>wwv_flow_api.id(65324950121007353)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P1510_SALMANID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.SMANNAME',
'into :P1510_SALMNNAME',
'    FROM nmsmnmas  w',
'   WHERE w.compcode = :compcode',
'     AND w.SMANCODE =:P1510_SALMANID;',
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
,p_attribute_02=>'P1510_SALMANID'
,p_attribute_03=>'P1510_SALMNNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65328531493007355)
,p_name=>'change on orderno from sales offer'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_ORDERNO'
,p_condition_element=>'P1510_ORDERNO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65329045123007355)
,p_event_id=>wwv_flow_api.id(65328531493007355)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:16 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :P1510_ORDERNO IS NOT NULL',
'   THEN',
'      SELECT s.compcode, s.docttype, s.subttype, s.docnumbr,',
'             s.doctdate, s.serlnumb, s.partycde, s.itemcode,',
'             s.smancode, s.commcode, s.itemdesc,',
'             s.itemlong, s.discpcnt, s.discamnt, s.salerate,',
'             s.custmrid, s.costcode, s.warecode, s.batchnum,',
'             s.msfcamnt, s.apprqnty',
'        INTO :p1510_compcode, :p1510_docttype, :p1510_subttype, :p1510_docnumbr,',
'             :p1510_doctdate, :p1510_serlnumb, :p1510_partycode, :p1510_itemcode,',
'             :p1510_salmanid, :p1510_unitofmesure,',
'             :p1510_itemdesc, :p1510_itemlong_1, :p1510_discpcnt, :p1510_disamount,',
'             :p1510_salprice, :p1510_customerid, :p1510_costcode, :p1510_warecode,',
'             :p1510_batchnum, :p1510_netamount, :p1510_quentity ',
'        FROM nmslsofr s',
'       WHERE s.docnumbr = :P1510_ORDERNO;',
'   END IF;',
'END;'))
,p_attribute_02=>'P1510_ORDERNO'
,p_attribute_03=>'P1510_COMPCODE,P1510_DOCTTYPE,P1510_SUBTTYPE,P1510_DOCTDATE,P1510_SERLNUMB,P1510_PARTYCODE,P1510_ITEMCODE,P1510_SALMANID,P1510_UNITOFMESURE,P1510_ITEMDESC,P1510_ITEMLONG_1,P1510_DISCPCNT,P1510_DISAMOUNT,P1510_SALPRICE,P1510_CUSTOMERID,P1510_COSTCODE,'
||'P1510_WARECODE,P1510_BATCHNUM,P1510_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65329390015007355)
,p_name=>'change on javascript on tabular form'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_ORDERNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65329936058007355)
,p_event_id=>wwv_flow_api.id(65329390015007355)
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
 p_id=>wwv_flow_api.id(65330283016007355)
,p_name=>'change on source cost code'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_SRCCOSTCD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65330775616007355)
,p_event_id=>wwv_flow_api.id(65330283016007355)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P1510_SRCCOSTCD IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT  w.WAREDESC',
'into :P1510_SRCCOSTDS',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P1510_SRCCOSTCD)',
'     AND costcode = :P1510_SRCCOSTCD',
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
'IF :P1510_SRCCOSTCD IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.warecode',
'into :P1510_SOURCEWARECODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P1510_SRCCOSTCD)',
'     AND costcode = :P1510_SRCCOSTCD',
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
,p_attribute_02=>'P1510_SRCCOSTCD'
,p_attribute_03=>'P1510_SOURCEWARECODE,P1510_SRCCOSTDS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65331181769007355)
,p_name=>'change on source company code'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_SRCCOMPNM'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65331743120007355)
,p_event_id=>wwv_flow_api.id(65331181769007355)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P1510_SRCCOMPNM IS NOT NULL',
'   THEN',
'      BEGIN',
' select distinct CACMPNAM ',
'into :P1510_SRCCOMPDS',
'from syparmas  w',
'    where w.CACMPCDE=:P1510_SRCCOMPNM;',
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
'',
''))
,p_attribute_02=>'P1510_SRCCOMPNM,P1510_DOCNUMBR1'
,p_attribute_03=>'P1510_SRCCOMPDS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65332071961007355)
,p_name=>'changed on aprove person'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_APRPERSON'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65332620711007355)
,p_event_id=>wwv_flow_api.id(65332071961007355)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT DISTINCT s.username d',
'into :P1510_APRPERSNM',
'           FROM nmusrlev v, syusrmas s',
'          WHERE v.compcode = :compcode ',
'            AND v.trdoctyp = :P1510_DOCTTYPE',
'            AND v.trsubtyp = :P1510_SUBTTYPE',
'            AND v.usercode = s.usercode',
'            AND v.locncode = :P1510_SOURCEWARECODE',
'           AND v.aprlevel <> 0;',
'',
'end;'))
,p_attribute_02=>'P1510_WARECODE'
,p_attribute_03=>'P1510_APRPERSNM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65333049270007355)
,p_name=>'change on source warecode'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1510_SOURCEWARECODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65333550178007355)
,p_event_id=>wwv_flow_api.id(65333049270007355)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P1510_SOURCEWARECODE IS NOT NULL and :P1510_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT   w.costcode',
'into :P1510_SRCCOSTCD',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode =:P1510_SOURCEWARECODE',
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
'IF :P1510_SOURCEWARECODE IS NOT NULL and :P1510_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  w.WAREDESC',
'into :P1510_SRCCOSTDS',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P1510_SRCCOSTCD)',
'     AND costcode = :P1510_SRCCOSTCD',
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
''))
,p_attribute_02=>'P1510_DOCNUMBR1,P1510_SRCCOSTCD,P1510_SOURCEWARECODE'
,p_attribute_03=>'P1510_SRCCOSTCD,P1510_SRCCOSTDS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66354925818304603)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert_Into_probudget'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'  dpr_insert_probudget(:compcode,:P1510_ORDERNO,:P1510_DESIGNID,:app_user,:P1510_DOCNUMBR);',
'dpr_insert_prbgtdtl(:compcode,:P1510_ORDERNO,:P1510_DESIGNID,:app_user);',
'End; '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(65301766135007338)
,p_process_success_message=>'Data Saved Successful And Budget No =  &P1510_DOCNUMBR.'
,p_process_is_stateful_y_n=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(65304537351007342)
,p_process_sequence=>55
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42821462598002203)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset pagination'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PB_RESET'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
