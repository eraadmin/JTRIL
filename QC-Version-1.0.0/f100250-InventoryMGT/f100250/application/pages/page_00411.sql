prompt --application/pages/page_00411
begin
--   Manifest
--     PAGE: 00411
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
 p_id=>411
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Stock Adjustment'
,p_page_mode=>'MODAL'
,p_step_title=>'Stock Adjustment'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function setcostcode()',
'{',
'    var grid = apex.region("waretransfer").widget().interactiveGrid("getViews", "grid");  ',
'var m = grid.model;  ',
' ',
'var selectedRow = grid.view$.grid("getSelection") ;  ',
'',
'  ',
'selectedRow.forEach(function(o, index) {  ',
'    var id          = $(selectedRow[index][0]).data(''id'');  ',
'    var record      = m.getRecord(id);',
'    var srl =id.substr(2, 4);;',
'    var trnsqnty=m.getValue(record,"ND_BATCH_QTY");',
'   // alert(srl); ',
'      m.setValue(record, "SERLNUMB", srl ); ',
'    m.setValue(record, "ORGNQNTY", trnsqnty);',
'    m.setValue(record, "APPRQNTY", trnsqnty);',
'      m.setValue(record, "COSTCODE", document.getElementById(''P104_SRCCOSTCD'').value);',
'    m.setValue(record, "SRCWRECD", document.getElementById(''P104_S_WARECODE'').value);',
'    m.setValue(record, "WARECODE", document.getElementById(''P104_D_WARECODE'').value);',
'    ',
'',
'    ',
'    ',
'});',
'',
'}',
'</script>',
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
'document.getElementById(''P104_TABULARITEMCODE'').value=',
'    html_GetElement(''f13_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P104_TABULARITEMCODE'').trigger(''click'');',
'});',
'html_GetElement(''f14_''+vRow).value=',
'document.getElementById(''P104_TABITEMDESC'').value;',
'html_GetElement(''f18_''+vRow).value=',
'document.getElementById(''P104_TABITEMRATE'').value;',
'html_GetElement(''f24_''+vRow).value=',
'document.getElementById(''P104_TABITEMRATE'').value;',
'html_GetElement(''f25_''+vRow).value=',
'document.getElementById(''P104_TABITEMRATE'').value;',
'html_GetElement(''f19_''+vRow).value=',
'document.getElementById(''P104_TABITEMUNIT'').value;',
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
'',
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
'',
'.t-Region-headerItems--title {',
'    text-align: center;',
'    padding: 0.0rem 0.0rem;',
'    background-color: #1F68A7;',
'}',
'',
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
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20191202163503'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(317676091734089149)
,p_plug_name=>'  <font color="chartreuse">&P411_DISPLAY.</font>'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
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
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(317680536532089164)
,p_plug_name=>'Order and Booking Details'
,p_parent_plug_id=>wwv_flow_api.id(317676091734089149)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P411_TRANTYPE'
,p_plug_display_when_cond2=>'SI2'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(317683350927089178)
,p_plug_name=>' <font color="chartreuse">&P411_DISPLAY.</font>'
,p_parent_plug_id=>wwv_flow_api.id(317676091734089149)
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
,p_plug_comment=>'&P257_DISPLAY.'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65040468387346969)
,p_plug_name=>'Stock Adjustment'
,p_parent_plug_id=>wwv_flow_api.id(317683350927089178)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(235637837949377577)
,p_plug_name=>'Stock Adjustment'
,p_parent_plug_id=>wwv_flow_api.id(65040468387346969)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID,',
'       compcode,',
'       docttype,',
'       subttype,',
'       doctdate,',
'       docnumbr,',
'       serlnumb,',
'       warecode,',
'       costcode,',
'       itemcode,',
'       itemdesc,',
'       luomcode,',
'       periodcd,',
'       batchnum,',
'       costrate,',
'       salerate,',
'       rackno,',
'       bincdqty,',
'       clblqty,',
'       clblamnt,',
'       invtrqty,',
'       adjqnty,',
'       excesqty,',
'       shortqty,',
'       remarkss,',
'       statuscd,',
'       oprstamp,',
'       raisedby,',
'       modifydt,',
'       NULL adjqty',
'  FROM nmstkinv',
' WHERE compcode = :P411_COMPCODE_APPLICATION',
'  and warecode = nvl(:P411_SRWHSCDE, warecode)',
'--and DOCNUMBR = :P411_PRVDNO',
'--and DOCTTYPE = ''MR'' --:P411_S_PRDTYP',
'--and SUBTTYPE = 11 --:P411_S_PRSTYP',
'--and UPDOCTYP IN (''RC'',''IR'')',
'--and UPSUBTYP IN (3,1)',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P411_COMPCODE_APPLICATION,P411_PRVDNO,P411_SRWHSCDE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ROWID,',
'SERLNUMB,',
'COMPCODE,',
'DOCTTYPE,',
'SUBTTYPE,',
'DOCNUMBR,',
'DOCTDATE,',
'PARTYCDE,',
'RAISEDBY,',
'APPRVDBY,',
'APPRDATE,',
'REQDDATE,',
'COMMCODE,',
'ITEMCODE,',
'ITEMTYPE,',
'ITEMDESC,',
'ITEMLONG,',
'ITEMRATE,',
'DISCPCNT,',
'DISCAMNT,',
'SPLDISPC,',
'SPLDISNT,',
'SALERATE,',
'HUOMCODE,',
'FACTRVAL,',
'LUOMCODE,',
'ORGNQNTY,',
'APPRQNTY,',
'TRNSQNTY,',
'MSFCAMNT,',
'CURRCODE,',
'EXCGRATE,',
'MSLCAMNT,',
'REFNUMBR,',
'REFNDATE,',
'UPDOCTYP,',
'UPSUBTYP,',
'UPDOCNUM,',
'UPDOCDTE,',
'UPDOCSRL,',
'REMARKSS,',
'COSTCODE,',
'WARECODE,',
'POSTFLAG,',
'PRNTFLAG,',
'PRICFLAG,',
'STATUSCD,',
'OPRSTAMP,',
'TIMSTAMP,',
'BATCHNUM,',
'COLORCDE,',
'COSTRATE,',
'BOM_NO,',
'SRCWRECD,',
'--NULL ND_BATCH_QTY,',
'RETURNQT',
'from NMSTKREC',
'where compcode = :compcode ',
'and UPDOCNUM= nvl(:P406_PRVDNO,:P406_DOCNUMBR)',
'AND DOCTTYPE = ''IS''',
'--and docttype = decode(:P406_PRVDNO,NULL,:P406_S_PRDTYP,:P406_DOCTTYPE)',
'--and subttype = decode(:P406_PRVDNO,NULL,:P406_S_PRSTYP,:P406_SUBTTYPE)',
'--and DOCNUMBR= nvl(:P406_PRVDNO,:P406_DOCNUMBR)'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(13127063695835071)
,p_name=>'PERIODCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERIODCD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Periodcd'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>570
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_api.id(13127219959835072)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Batchnum'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>580
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(13127300617835073)
,p_name=>'RACKNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RACKNO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Rackno'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>590
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(13127387181835074)
,p_name=>'BINCDQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BINCDQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Bincdqty'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>600
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_api.id(13127516900835075)
,p_name=>'CLBLQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLBLQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Clblqty'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>610
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_api.id(13127620788835076)
,p_name=>'CLBLAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLBLAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'CLBLAMNT'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>620
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(13127734319835077)
,p_name=>'INVTRQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVTRQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invtrqty'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>630
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_api.id(13127784211835078)
,p_name=>'ADJQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADJQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'ADJQNTY'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>640
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(13127873204835079)
,p_name=>'EXCESQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCESQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Excesqty'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>650
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_api.id(13127993522835080)
,p_name=>'SHORTQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHORTQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Shortqty'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>660
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_api.id(13128070051835081)
,p_name=>'ADJQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADJQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Adjqty'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>670
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>0
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(13129025193835090)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Oprstamp'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>680
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
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
 p_id=>wwv_flow_api.id(13129121207835091)
,p_name=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAISEDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Raisedby'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>690
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
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
 p_id=>wwv_flow_api.id(13129241148835092)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Modifydt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>700
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_api.id(13129405937835094)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Serlnumb'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>710
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>6
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
 p_id=>wwv_flow_api.id(13129465547835095)
,p_name=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Luomcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>720
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
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
 p_id=>wwv_flow_api.id(235638025419377579)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(235638268232377581)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P411_COMPCODE_APPLICATION'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(235638387710377582)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P411_DOCTTYPE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(235638451213377583)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P411_SUBTTYPE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(235638510471377584)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(235638686626377585)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P411_DOCTDATE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(235639389044377592)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Item Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_is_required=>false
,p_max_length=>200
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode||''-''||itemdes2 d,a.itemcode r',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'           -- AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND a.SEMFINGD = ''Y''',
'          AND b.warecode = :P411_SRWHSCDE',
'            AND NVL (b.clbalqty, 0) > 0'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'P257_SRWHSCDE'
,p_ajax_items_to_submit=>'P411_SRWHSCDE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(235639552533377594)
,p_name=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Item Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_item_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ITEMDES1 d,ITEMDES1 r from nmitemas',
'where compcode=:P411_COMPCODE_APPLICATION',
'and ITEMCODE=:ITEMCODE'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'P104_COMPCODE_APPLICATION,ITEMCODE'
,p_ajax_items_to_submit=>'P411_COMPCODE_APPLICATION,ITEMCODE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'SQL_QUERY'
,p_default_expression=>'select ITEMDES1 from nmitemas'
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(236444972959799651)
,p_name=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALERATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(236446801811799669)
,p_name=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>460
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(236446907023799670)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>470
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P411_SRCSTCDE'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(236446975062799671)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Warecode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>480
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
,p_default_type=>'ITEM'
,p_default_expression=>'P411_SRWHSCDE'
,p_duplicate_value=>false
,p_include_in_export=>false
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(236447312873799675)
,p_name=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUSCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>520
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'NEW'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(236447873850799680)
,p_name=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>560
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(236448065464799682)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(236448197385799683)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(236449307686799694)
,p_name=>'ND_BATCH_QTY'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Batch Qty.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_item_css_classes=>'is-readonly'
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT CLBALQTY d,  CLBALQTY r',
'           FROM (SELECT   b.batchnum,sum(w.CLBALQTY) CLBALQTY',
'                     FROM nmbtrate b, nmwhimas w',
'                    WHERE b.compcode = :P411_COMPCODE_APPLICATION',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND w.warecode = :P411_SRWHSCDE',
'                      AND b.itemcode = :ITEMCODE',
'                      and w.batchnum=:BATCHNUM',
'                     ',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                   HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC)'))
,p_lov_display_extra=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(235637908137377578)
,p_internal_uid=>251154052334043620
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
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
 p_id=>wwv_flow_api.id(236450150103799753)
,p_interactive_grid_id=>wwv_flow_api.id(235637908137377578)
,p_static_id=>'395935'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(236450279313799753)
,p_report_id=>wwv_flow_api.id(236450150103799753)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13486430524372664)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(13127063695835071)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13486922513372683)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(13127219959835072)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13487397317372685)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(13127300617835073)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13487939267372688)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(13127387181835074)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13488429136372689)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(13127516900835075)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13488871603372691)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(13127620788835076)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13489359446372693)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(13127734319835077)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13489914007372694)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(13127784211835078)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13490389706372696)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(13127873204835079)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13490934335372698)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(13127993522835080)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13511598595402955)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(13128070051835081)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13575685662895646)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(13129405937835094)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13576769239915144)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(13129465547835095)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35820408218289852)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(13129241148835092)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35820962788289854)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(13129121207835091)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35821618310289858)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(13129025193835090)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(236450718395799758)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(235638025419377579)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(236451793984799761)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(235638268232377581)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(236452215047799763)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(235638387710377582)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(236452757454799763)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(235638451213377583)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(236453211145799764)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(235638510471377584)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(236453681381799766)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(235638686626377585)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(236457166002799774)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(235639389044377592)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(236458189234799777)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(235639552533377594)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>171
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(236461669025799784)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(236444972959799651)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(236470611648799809)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(236446801811799669)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(236471158166799811)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(236446907023799670)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(236471649430799813)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(236446975062799671)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>47
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(236473687875799817)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(236447312873799675)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(236476122582799823)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(236447873850799680)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(236477708254801346)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(236448065464799682)
,p_is_visible=>false
,p_is_frozen=>true
,p_width=>10
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(236631208633845202)
,p_view_id=>wwv_flow_api.id(236450279313799753)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(236449307686799694)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(317683704490089178)
,p_plug_name=>' &nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(317683350927089178)
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
 p_id=>wwv_flow_api.id(317698834397089197)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(317683350927089178)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(317735225592089227)
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
 p_id=>wwv_flow_api.id(13411123734372276)
,p_button_sequence=>1670
,p_button_plug_id=>wwv_flow_api.id(317698834397089197)
,p_button_name=>'P411_SHOWHIDE'
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
 p_id=>wwv_flow_api.id(13386406236372230)
,p_button_sequence=>1930
,p_button_plug_id=>wwv_flow_api.id(317676091734089149)
,p_button_name=>'P411_RUNREPORT'
,p_button_static_id=>'P81_RUNREPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Run Report'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:49:P49_PROGNAME,P49_DOCNUMBR:&P411_PROGNAME.,&P411_DOCNUMBR49.'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13386778298372231)
,p_button_sequence=>1940
,p_button_plug_id=>wwv_flow_api.id(317676091734089149)
,p_button_name=>'P411_MNYRECEIPT'
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
 p_id=>wwv_flow_api.id(13387207120372231)
,p_button_sequence=>1980
,p_button_plug_id=>wwv_flow_api.id(317676091734089149)
,p_button_name=>'P411_DELIVERY'
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
 p_id=>wwv_flow_api.id(13447831191372325)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(317735225592089227)
,p_button_name=>'CREATE'
,p_button_static_id=>'BUT_CRT_FRM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--large:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create_old'
,p_button_position=>'CHANGE'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13448188580372325)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(317735225592089227)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--large:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'CHANGE'
,p_button_condition=>'P411_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13387646992372231)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(317676091734089149)
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
 p_id=>wwv_flow_api.id(13388025486372231)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(317676091734089149)
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
 p_id=>wwv_flow_api.id(13388398382372232)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(317676091734089149)
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
 p_id=>wwv_flow_api.id(13448633779372326)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(317735225592089227)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13448961554372326)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(317735225592089227)
,p_button_name=>'CREATE_NEW'
,p_button_static_id=>'BUT_CRT_TAB'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P411_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13388840625372232)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(317676091734089149)
,p_button_name=>'DELIVERY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delivery'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13482668528372365)
,p_branch_name=>'Go To Page 402'
,p_branch_action=>'f?p=&APP_ID.:402:&SESSION.::&DEBUG.:402::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(13448961554372326)
,p_branch_sequence=>11
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13128647048835086)
,p_name=>'P411_PERIODCD'
,p_item_sequence=>1684
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_prompt=>'Periodcd'
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
 p_id=>wwv_flow_api.id(13389232647372234)
,p_name=>'P411_PROGNAME'
,p_item_sequence=>1960
,p_item_plug_id=>wwv_flow_api.id(317676091734089149)
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
 p_id=>wwv_flow_api.id(13389625821372237)
,p_name=>'P411_DOCNUMBR49'
,p_item_sequence=>1970
,p_item_plug_id=>wwv_flow_api.id(317676091734089149)
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
 p_id=>wwv_flow_api.id(13389991842372237)
,p_name=>'P411_TRNDATE'
,p_item_sequence=>1990
,p_item_plug_id=>wwv_flow_api.id(317676091734089149)
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
 p_id=>wwv_flow_api.id(13390731419372239)
,p_name=>'P411_ORDERNO'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_api.id(317680536532089164)
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
'            AND s.docttype = :P411_REQREFTYPE',
'            AND s.subttype = :P411_REQSUBTYPE',
'            AND s.doctdate <= :P411_ORDERDATE',
'            AND s.compcode = sls.compcode(+)',
'            AND s.docnumbr = sls.updocnum(+)',
'            AND s.itemcode = sls.itemcode(+)',
'            AND s.apprqnty > NVL (sls.apprqnty, 0)',
'       ORDER BY 2 DESC'))
,p_lov_cascade_parent_items=>'P411_REQREFTYPE,P411_REQSUBTYPE,P411_ORDERDATE'
,p_ajax_items_to_submit=>'P411_REQREFTYPE,P411_REQSUBTYPE,P411_ORDERDATE'
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
 p_id=>wwv_flow_api.id(13391117905372240)
,p_name=>'P411_ORDERDATE'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(317680536532089164)
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
 p_id=>wwv_flow_api.id(13391508085372240)
,p_name=>'P411_BOOKINGNO'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(317680536532089164)
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
 p_id=>wwv_flow_api.id(13391917580372240)
,p_name=>'P411_BOOKINGDT'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(317680536532089164)
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
 p_id=>wwv_flow_api.id(13392352483372240)
,p_name=>'P411_REQREFTYPE'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(317680536532089164)
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
 p_id=>wwv_flow_api.id(13392664658372240)
,p_name=>'P411_REQSUBTYPE'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(317680536532089164)
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
 p_id=>wwv_flow_api.id(13393436432372241)
,p_name=>'P411_DISPLAY'
,p_item_sequence=>2350
,p_item_plug_id=>wwv_flow_api.id(317683350927089178)
,p_item_default=>':DOCDESC||''  (''||:DOCTTYPE||''/''||:SUBTTYPE||'')'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>':P411_DOCDESC||''  (''||:P411_DOCTTYPE||''/''||:P411_SUBTTYPE||'')'''
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13394138088372243)
,p_name=>'P411_TEST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_item_default=>'005'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13394459851372243)
,p_name=>'P411_S_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13394864956372243)
,p_name=>'P411_D_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13395312522372243)
,p_name=>'P411_REGION'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13395750689372245)
,p_name=>'P411_COMPCODE'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13396107009372245)
,p_name=>'P411_OPRSTAMP'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13396525849372246)
,p_name=>'P411_TIMSTAMP'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13396907971372246)
,p_name=>'P411_SERLNUMB'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13397296131372246)
,p_name=>'P411_STATUSCD'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13397658096372247)
,p_name=>'P411_ITEMLONG_1'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13398128954372247)
,p_name=>'P411_MSFCAMNT'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13398475680372247)
,p_name=>'P411_TRANTYPE'
,p_item_sequence=>1450
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13398950049372247)
,p_name=>'P411_DOCDESC'
,p_item_sequence=>1451
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_item_default=>'&DOCDESC.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13399351615372247)
,p_name=>'P411_ROWID'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13399716993372247)
,p_name=>'P411_DOCTTYPE'
,p_item_sequence=>1470
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&DOCTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13400124360372248)
,p_name=>'P411_DOCNUMBR1'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13400465261372248)
,p_name=>'P411_SUBTTYPE'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_item_default=>'&SUBTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13400874560372248)
,p_name=>'P411_PRVREF'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13401167916372267)
,p_name=>'P411_ITEMCODE1'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13401584628372268)
,p_name=>'P411_S_PRDTYP'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prdoctyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13402017067372268)
,p_name=>'P411_COMPCODE_APPLICATION'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13402382804372268)
,p_name=>'P411_S_PRSTYP'
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prsubtyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13402819529372268)
,p_name=>'P411_TABULARITEMCODE'
,p_is_required=>true
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13403163646372268)
,p_name=>'P411_TABCOSTRATE'
,p_item_sequence=>1540
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13403598643372269)
,p_name=>'P411_TABITEMDESC'
,p_item_sequence=>1550
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13404031171372269)
,p_name=>'P411_TABITEMRATE'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_prompt=>'New'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13404361504372269)
,p_name=>'P411_TABITEMUNIT'
,p_item_sequence=>1570
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_prompt=>'New'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13404780967372269)
,p_name=>'P411_TABCLOSINGBALANCE'
,p_item_sequence=>1580
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13405240453372270)
,p_name=>'P411_TABITEMTYPE'
,p_item_sequence=>1590
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_item_default=>'S'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13405654279372270)
,p_name=>'P411_TABCOMMGRUP'
,p_item_sequence=>1600
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13405993321372270)
,p_name=>'P411_DOCNUMBR'
,p_item_sequence=>1610
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13406385495372270)
,p_name=>'P411_TABSALEPERC'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
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
 p_id=>wwv_flow_api.id(13406759684372270)
,p_name=>'P411_DOCTDATE'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13407234442372271)
,p_name=>'P411_PRVDNO'
,p_item_sequence=>1621
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13407654322372271)
,p_name=>'P411_PRVDDT'
,p_item_sequence=>1622
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13408019983372272)
,p_name=>'P411_REFNUM'
,p_item_sequence=>1623
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13408371492372272)
,p_name=>'P411_REFNDATE'
,p_item_sequence=>1624
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13408780097372272)
,p_name=>'P411_RAISEDBY'
,p_item_sequence=>1634
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_item_default=>'&APP_USER.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>'RILADM'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13409202387372273)
,p_name=>'P411_RAISEDNAME'
,p_item_sequence=>1644
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USERNAME from syusrmas',
'where upper(USERCODE)=:APP_USER'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>'&P1_USER_NAME.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13409608247372275)
,p_name=>'P411_BRAND'
,p_item_sequence=>1654
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13410038635372275)
,p_name=>'P411_MODAL'
,p_item_sequence=>1664
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13410448478372275)
,p_name=>'P411_UNITOFMESURE'
,p_item_sequence=>1674
,p_item_plug_id=>wwv_flow_api.id(317683704490089178)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13411492306372276)
,p_name=>'P411_SRWHSCDE'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
,p_prompt=>'Source Whs. Cd.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT  INITCAP (b.waredesc)||'' (''||a.warecode||'' )'' D,a.warecode R',
'    FROM NMWHIMAS a, NMWHSMAS b, SYCSTACC c',
'   WHERE     a.compcode = :P411_COMPCODE_APPLICATION',
'         AND a.compcode = b.compcode',
'         AND c.compcode = b.compcode',
'         AND a.warecode = b.warecode',
'         AND c.warecode = a.warecode',
'         AND c.cabasecc = b.costcode',
'         AND c.grupcode = :APP_USER',
'       --  AND NVL (SRVCWFLG, ''N'') = ''N''',
'ORDER BY  a.warecode'))
,p_lov_cascade_parent_items=>'P411_COMPCODE_APPLICATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>50
,p_cMaxlength=>4000
,p_colspan=>5
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
 p_id=>wwv_flow_api.id(13411898996372277)
,p_name=>'P411_SRWHSNME'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13412276273372278)
,p_name=>'P411_SRCSTCDE'
,p_item_sequence=>1105
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13412659322372278)
,p_name=>'P411_SRCSTNME'
,p_item_sequence=>1108
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13413064709372278)
,p_name=>'P411_DSWHSCDE'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13413523225372278)
,p_name=>'P411_DSWHSNME'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13413942984372278)
,p_name=>'P411_SRCCOMPNM'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
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
 p_id=>wwv_flow_api.id(13414319408372279)
,p_name=>'P411_SRCCOMPDS'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
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
 p_id=>wwv_flow_api.id(13414673732372279)
,p_name=>'P411_COSTCODE'
,p_item_sequence=>1370
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13415087198372279)
,p_name=>'P411_COSTCENTERNAME'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
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
 p_id=>wwv_flow_api.id(13415504284372279)
,p_name=>'P411_SRCCOSTCD'
,p_item_sequence=>1510
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13415953245372279)
,p_name=>'P411_SRCCOSTDS'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   INITCAP (costdesc) costdesc',
'    FROM syjobmas',
'   WHERE compcode = :compcode ',
'and costcode=:P411_SRCCOSTCD',
'ORDER BY costcode'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13416278203372281)
,p_name=>'P411_APRPERSON'
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
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
 p_id=>wwv_flow_api.id(13416673118372281)
,p_name=>'P411_APRPERSNM'
,p_item_sequence=>1550
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
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
 p_id=>wwv_flow_api.id(13417070381372281)
,p_name=>'P411_CUSTOMTYPE'
,p_item_sequence=>1610
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
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
 p_id=>wwv_flow_api.id(13417504875372282)
,p_name=>'P411_CUSTOMERID'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
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
 p_id=>wwv_flow_api.id(13417926228372282)
,p_name=>'P411_CUSTOMERNAME'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
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
 p_id=>wwv_flow_api.id(13418330967372283)
,p_name=>'P411_LOVCOSTCODE'
,p_item_sequence=>1680
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
,p_prompt=>'Cost Code'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13418698568372283)
,p_name=>'P411_LOVSALMANID'
,p_item_sequence=>1800
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
,p_prompt=>'Saleman'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13419066422372283)
,p_name=>'P411_SALMANID'
,p_item_sequence=>1850
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
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
 p_id=>wwv_flow_api.id(13419470270372284)
,p_name=>'P411_WARECODE'
,p_item_sequence=>2320
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13419876110372284)
,p_name=>'P411_SALMNNAME'
,p_item_sequence=>2330
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
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
 p_id=>wwv_flow_api.id(13420279310372284)
,p_name=>'P411_SOURCEWARECODE'
,p_item_sequence=>2340
,p_item_plug_id=>wwv_flow_api.id(317698834397089197)
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13446374141372323)
,p_tabular_form_region_id=>wwv_flow_api.id(235637837949377577)
,p_validation_name=>'Issue Qty not null'
,p_validation_sequence=>110
,p_validation=>'INVTRQTY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#LABEL# must have some value'
,p_when_button_pressed=>wwv_flow_api.id(13448961554372326)
,p_associated_column=>'INVTRQTY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13446801003372323)
,p_tabular_form_region_id=>wwv_flow_api.id(235637837949377577)
,p_validation_name=>'Return Qty less than Issue Qty'
,p_validation_sequence=>130
,p_validation=>'to_number(NVL(:ADJQTY,0)) <= to_number(NVL(:TRNSQNTY,0))'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#LABEL# must be less then Issue Qty.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(13448961554372326)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ADJQTY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13129288639835093)
,p_tabular_form_region_id=>wwv_flow_api.id(235637837949377577)
,p_validation_name=>'Return Qty less than Issue Qty_1'
,p_validation_sequence=>140
,p_validation=>'to_number(NVL(:INVTRQTY,0)) <= to_number(NVL(:CLBLQTY,0))'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#LABEL# must be less then Issue Qty.'
,p_when_button_pressed=>wwv_flow_api.id(13448961554372326)
,p_associated_column=>'INVTRQTY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13470937526372354)
,p_name=>'change on customer id'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_CUSTOMERID'
,p_condition_element=>'P411_CUSTOMERID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13471364083372355)
,p_event_id=>wwv_flow_api.id(13470937526372354)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P411_CUSTOMERID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT distinct c.CUSTADR1,r.AREACODE,r.ZONLCODE,r.partycde,CUSTNAME',
'into :P411_CUSADDRESS,:P411_AREACODE,:P411_ZONE,:P411_PARTYCODE,:P411_CUSTOMERNAME',
'  FROM nmcusmas c, sycompty r',
' WHERE c.PARTYCDE = r.PARTYCDE(+) AND c.compcode = r.compcode',
'       AND c.compcode = :compcode',
'and c.CUSTMRID=:P411_CUSTOMERID;',
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
,p_attribute_02=>'P411_CUSTOMERID'
,p_attribute_03=>'P411_CUSADDRESS,P411_AREACODE,P411_ZONE,P411_PARTYCODE,P411_CUSTOMERNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13471850746372355)
,p_name=>'change on costcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_COSTCODE'
,p_condition_element=>'P411_COSTCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13472299394372355)
,p_event_id=>wwv_flow_api.id(13471850746372355)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P411_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.warecode',
'into :P411_WARECODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P411_COSTCODE)',
'     AND costcode = :P411_COSTCODE',
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
'IF :P411_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct COSTDESC ',
'into :P411_COSTCENTERNAME',
'from syjobmas',
'where compcode = :compcode',
'AND costcode = :P411_COSTCODE;',
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
'IF :P411_COSTCODE IS NOT NULL and :P411_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT distinct SMANCODE',
'into :P411_SALMANID',
'        FROM nmsalrec',
'       WHERE docnumbr = :p411_docnumbr1',
'         AND DOCTDATE = :P411_DOCTDATE',
'         AND COSTCODE = :P411_COSTCODE;',
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
,p_attribute_02=>'P411_COSTCODE,P411_DOCNUMBR1,P411_DOCTDATE'
,p_attribute_03=>'P411_WARECODE,P411_COSTCENTERNAME,P411_SALMANID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13472708077372359)
,p_name=>'change on itemcode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_ITEMCODE'
,p_condition_element=>'P411_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13473191479372359)
,p_event_id=>wwv_flow_api.id(13472708077372359)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P411_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P411_UNITOFMESURE,:P411_ITEMDESC,:P411_BRAND,:P411_MODAL,:P411_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P411_ITEMCODE;',
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
'IF :P411_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P411_SALPRICE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P411_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P411_ITEMCODE;',
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
'IF :P411_ITEMCODE1 IS NOT NULL and :P411_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) ',
'into :P411_QUENTITY',
'       from    nmsalrec s,(SELECT   SUM (d.trnsqnty) trnsqnty, d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE',
'                     FROM nmdevrec d',
'                     group by d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE) e',
'                     WHERE s.docnumbr = :p411_docnumbr1 AND s.itemcode = :p411_itemcode1',
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
,p_attribute_02=>'P411_ITEMCODE,P411_WARECODE,P411_ITEMCODE1,P411_DOCNUMBR1'
,p_attribute_03=>'P411_UNITOFMESURE,P411_ITEMDESC,P411_BRAND,P411_MODAL,P411_SALPRICE,P411_ISSUMTHD,P411_CLOSINGBALANCE,P411_QUENTITY'
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
 p_id=>wwv_flow_api.id(13473603242372360)
,p_name=>'change on trantype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_TRANTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13474149462372360)
,p_event_id=>wwv_flow_api.id(13473603242372360)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select distinct TRANTYPE,SUBTTYPE ',
'into :P411_DOCTTYPE,:P411_SUBTTYPE',
'from SYDOCMAS ',
'where COMPCODE = :COMPCODE ',
'AND TRANTYPE=''IS''',
'AND SUBTTYPE=:P411_TRANTYPE',
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
'into :P411_PRDTYP,:P411_PRSTYP',
'        from   NMWRKFLW',
'        where  COMPCODE = :COMPCODE ',
'        and    TRDOCTYP = :P411_DOCTTYPE',
'        and    TRSUBTYP = :P411_SUBTTYPE;',
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
'into :P411_PRVREF',
'  FROM sydocmas',
' WHERE compcode = :compcode ',
'   AND trantype = :P411_PRDTYP',
'   AND subttype = :P411_PRSTYP',
'   AND :P411_DOCTDATE BETWEEN strtperd AND endperd',
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
,p_attribute_02=>'P411_TRANTYPE,P411_DOCTDATE,P411_PRDTYP,P411_PRSTYP,P411_DOCTTYPE,P411_SUBTTYPE'
,p_attribute_03=>'P411_DOCTTYPE,P411_SUBTTYPE,P411_PRDTYP,P411_PRSTYP,P411_PRVREF'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13474370479372360)
,p_name=>'installment amount'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(52812440863254007)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13474869843372360)
,p_event_id=>wwv_flow_api.id(13474370479372360)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P411_PERINSTALL:=(:P411_INSTLLAMOUNT/:P411_INSTALLNO);',
'end;'))
,p_attribute_02=>'P411_INSTLLAMOUNT,P411_INSTALLNO'
,p_attribute_03=>'P411_PERINSTALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13475390049372361)
,p_event_id=>wwv_flow_api.id(13474370479372360)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var tt = window.document.getElementById(''P411_INSTALLNO'').value;',
' for(i=0;i<tt;i++)',
'{',
'var pp = ''f02_000''.concat(i+1);',
'javascript:apex.widget.tabular.addRow();',
'window.document.getElementById(pp).value = window.document.getElementById(''P411_PERINSTALL'').value;',
'',
'}'))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pp = f02_000.concat(i);',
'',
'.concat(f02_000.concat(i)).concat('')'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13475795091372361)
,p_name=>'on change amount'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_QUENTITY'
,p_condition_element=>'P411_QUENTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13476798012372361)
,p_event_id=>wwv_flow_api.id(13475795091372361)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P411_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13476326687372361)
,p_event_id=>wwv_flow_api.id(13475795091372361)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/05 14:26 (Formatter Plus v4.8.8) */',
'BEGIN',
'   :p411_amount := :p411_salprice * :p411_quentity;',
':P411_DISAMOUNT:=(:P411_AMOUNT*:P411_DISCPCNT)/100;',
':P411_NETAMOUNT:=nvl(:P411_AMOUNT,0)-nvl(:P411_DISAMOUNT,0);',
'END;'))
,p_attribute_02=>'P411_SALPRICE,P411_QUENTITY,P411_AMOUNT,P411_DISCPCNT,P411_DISAMOUNT'
,p_attribute_03=>'P411_AMOUNT,P411_DISAMOUNT,P411_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13477172087372361)
,p_name=>'on change discount percent'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_DISCPCNT'
,p_condition_element=>'P411_DISCPCNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13477681890372362)
,p_event_id=>wwv_flow_api.id(13477172087372361)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P411_DISAMOUNT:=(:P411_AMOUNT*:P411_DISCPCNT)/100;',
'end;'))
,p_attribute_02=>'P411_AMOUNT,P411_DISCPCNT'
,p_attribute_03=>'P411_DISAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13478983260372362)
,p_name=>'on change amount and disamount'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_DISAMOUNT'
,p_condition_element=>'P411_DISAMOUNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13479531570372362)
,p_event_id=>wwv_flow_api.id(13478983260372362)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P411_NETAMOUNT:=nvl(:P411_AMOUNT,0)-nvl(:P411_DISAMOUNT,0);',
'end;'))
,p_attribute_02=>'P411_AMOUNT,P411_DISAMOUNT'
,p_attribute_03=>'P411_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13479923958372363)
,p_name=>'query on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13480438109372363)
,p_event_id=>wwv_flow_api.id(13479923958372363)
,p_event_result=>'TRUE'
,p_action_sequence=>9
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:16 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :p411_itemcode1 IS NOT NULL AND :p411_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT s.compcode, s.docttype, s.subttype, s.docnumbr,',
'             s.doctdate, s.serlnumb, s.partycde, s.itemcode,',
'             s.smancode, s.commcode, s.itemdesc,',
'             s.itemlong, s.discpcnt, s.discamnt, s.salerate,',
'             s.custmrid, s.costcode, s.warecode, s.batchnum,',
'             s.msfcamnt, s.apprqnty, s.docnumbr',
'        INTO :p411_compcode, :p411_docttype, :p411_subttype, :p411_docnumbr,',
'             :p411_doctdate, :p411_serlnumb, :p411_partycode, :p411_itemcode,',
'             :p411_salmanid, :p411_unitofmesure,',
'             :p411_itemdesc, :p411_itemlong_1, :p411_discpcnt, :p411_disamount,',
'             :p411_salprice, :p411_customerid, :p411_costcode, :p411_warecode,',
'             :p411_batchnum, :p411_netamount, :p411_quentity , :P411_DOCNUMBR49',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p411_docnumbr1 AND s.itemcode = :p411_itemcode1;',
'   END IF;',
'END;',
'',
'BEGIN',
'   IF :p411_itemcode1 IS NOT NULL AND :p411_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT distinct TNSPRTYP,TRNSREGN,TNSCHSNO,DRIVNAME,DVNLIDNO,DVLICSNO,DELVLOCT',
'      into :p411_TNSPRTYP,:p411_TRNSREGN,:p411_TNSCHSNO,:p411_DRIVNAME,:p411_DVNLIDNO,:p411_DVLICSNO,:p411_DELVLOCT',
'        FROM nmdevrec ',
'        WHERE UPDOCNUM = :p411_docnumbr',
'      AND UPDOCDTE = :p411_doctdate',
'      and DOCTTYPE = ''GP''',
'      and SUBTTYPE=1;',
'   END IF;',
'END;'))
,p_attribute_02=>'P411_DOCNUMBR1,P411_ITEMCODE1,P411_DOCNUMBR,P411_DOCTDATE'
,p_attribute_03=>'P411_COMPCODE,P411_DOCTTYPE,P411_SUBTTYPE,P411_DOCNUMBR,P411_DOCTDATE,P411_SERLNUMB,P411_PARTYCODE,P411_ITEMCODE,P411_SALMANID,P411_UNITOFMESURE,P411_ITEMDESC,P411_ITEMLONG_1,P411_DISCPCNT,P411_DISAMOUNT,P411_SALPRICE,P411_CUSTOMERID,P411_COSTCODE,P4'
||'11_WARECODE,P411_BATCHNUM,P411_NETAMOUNT,P411_DOCNUMBR49,P411_TNSPRTYP,P411_TRNSREGN,P411_TNSCHSNO,P411_DRIVNAME,P411_DVNLIDNO,P411_DVLICSNO,P411_DELVLOCT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13480795155372363)
,p_name=>'change  on warecode'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13481294136372363)
,p_event_id=>wwv_flow_api.id(13480795155372363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P411_WARECODE IS NOT NULL and :P411_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT a.itemcode',
'into :P411_ITEMCODE ',
'           FROM nmsalrec a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''APR''',
'            AND a.itemcode = b.itemcode',
'            and a.DOCNUMBR=:P411_DOCNUMBR1',
'           -- AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P411_WARECODE',
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
,p_attribute_02=>'P411_DOCNUMBR1,P411_WARECODE'
,p_attribute_03=>'P411_ITEMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13481664749372364)
,p_name=>'change on batchnum'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13482167151372364)
,p_event_id=>wwv_flow_api.id(13481664749372364)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P411_ITEMCODE IS NOT NULL and :P411_DOCNUMBR is not null',
'   THEN',
'      BEGIN',
' SELECT  batchnum d',
'into :P411_BATCHNUM',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmsalrec w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P411_ITEMCODE',
'                      AND w.warecode = :P411_WARECODE',
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
,p_attribute_02=>'P411_ITEMCODE,P411_DOCNUMBR,P411_WARECODE'
,p_attribute_03=>'P411_BATCHNUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13450246002372339)
,p_name=>'change  on itemcode1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_ITEMCODE1,P411_DOCNUMBR1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.da.testCondition( this.triggeringElement.id, ''NOT_NULL'' )'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13450671223372340)
,p_event_id=>wwv_flow_api.id(13450246002372339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P411_ITEMCODE1 IS NOT NULL and :P411_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
' SELECT s.DOCTTYPE,s.SUBTTYPE,s.DOCNUMBR,DOCTDATE,COSTCODE,SRCCMPCD',
'        INTO :P411_DOCTTYPE,:P411_SUBTTYPE,:P411_DOCNUMBR,:P411_DOCTDATE,:P411_COSTCODE,:P411_SRCCOMPNM ',
'        FROM nmstkrec s',
'       WHERE s.docnumbr = :p411_docnumbr1 AND s.itemcode = :p411_itemcode1;',
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
'IF :P411_ITEMCODE1 IS NOT NULL and :P411_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  distinct w.COSTCODE',
'into :P411_SRCCOSTCD',
'    FROM nmwhsmas w',
'    where w.warecode=(',
' SELECT SRCWRECD',
'        FROM nmstkrec s',
'       WHERE s.docnumbr = :p411_docnumbr1 AND s.itemcode = :p411_itemcode1',
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
'IF :P411_ITEMCODE1 IS NOT NULL and :P411_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT DISTINCT INITCAP (naration) naration',
'into :P411_DOCDESC',
'           FROM sydocmas',
'          WHERE compcode = :compcode ',
'            AND trantype = :P411_DOCTTYPE',
'            and SUBTTYPE = :P411_SUBTTYPE',
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
,p_attribute_02=>'P411_DOCNUMBR1,P411_ITEMCODE1'
,p_attribute_03=>'P411_DOCTTYPE,P411_SUBTTYPE,P411_DOCNUMBR,P411_DOCTDATE,P411_COSTCODE,P411_SRCCOSTCD,P411_SRCCOMPNM,P411_DOCDESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13451133215372341)
,p_name=>'showhide stats'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(55041719960264179)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'parseInt(window.document.getElementById(''P411_S_H_REGION'').value) == 1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13451589679372342)
,p_event_id=>wwv_flow_api.id(13451133215372341)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if( parseInt(window.document.getElementById(''P411_S_H_REGION'').value) == 1)',
'{',
'window.document.getElementById(''TR'').style.display="block";',
'window.document.getElementById(''IR'').style.display="none";',
'window.document.getElementById(''SR'').style.display="none";',
'--apex.item( "BUT_CRT_FRM" ).show();   ',
'apex.item( "BUT_CRT_TAB" ).hide();',
'/*window.document.getElementById(''BUT_CRT_FRM'').style.display="none";',
'window.document.getElementById(''BUT_CRT_TAB'').style.display="block";*/',
'window.document.getElementById(''P411_S_H_REGION'').value = 0;',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13452119417372342)
,p_event_id=>wwv_flow_api.id(13451133215372341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.document.getElementById(''P411_S_H_REGION'').value = 1;',
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
 p_id=>wwv_flow_api.id(13452479655372342)
,p_name=>'add rows javascript'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13452970910372343)
,p_event_id=>wwv_flow_api.id(13452479655372342)
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
 p_id=>wwv_flow_api.id(13453436826372343)
,p_name=>'disable  field on tabular item'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13453930434372343)
,p_event_id=>wwv_flow_api.id(13453436826372343)
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
 p_id=>wwv_flow_api.id(13454284247372343)
,p_name=>'on change tabular itemcode'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_TABULARITEMCODE'
,p_condition_element=>'P411_TABULARITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13454784809372344)
,p_event_id=>wwv_flow_api.id(13454284247372343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P411_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct LUOMCODE,ITEMDES1,ITEMTYPE,SALEPERC,COMMGRUP',
'into :P411_tabitemunit,:P411_TABITEMDESC,:P411_TABITEMTYPE,:P411_TABSALEPERC,:P411_TABCOMMGRUP',
'FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P411_TABULARITEMCODE ;',
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
'IF :P411_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct ITEMRATE',
'into :P411_TABITEMRATE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P411_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P411_TABULARITEMCODE;',
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
'IF :P411_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P411_TABCOSTRATE',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P411_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P411_TABULARITEMCODE;',
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
'IF :P411_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P411_TABCLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P411_WARECODE',
'            AND b.itemcode =:P411_TABULARITEMCODE',
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
,p_attribute_02=>'P411_TABULARITEMCODE'
,p_attribute_03=>'P411_TABCOMMGRUP,P411_TABSALEPERC,P411_TABITEMTYPE,P411_TABCOSTRATE,P411_TABITEMDESC,P411_TABCLOSINGBALANCE,P411_TABITEMRATE,P411_TABITEMUNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13455175794372344)
,p_name=>'on page load for hide region default on tabular '
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13455674487372344)
,p_event_id=>wwv_flow_api.id(13455175794372344)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P411_S_H_REGION:=0;',
'end;'))
,p_attribute_02=>'P411_S_H_REGION'
,p_attribute_03=>'P411_S_H_REGION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13456195611372345)
,p_event_id=>wwv_flow_api.id(13455175794372344)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(13448961554372326)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13456576013372345)
,p_name=>'on page load for skillbuilders lov field'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13457059879372346)
,p_event_id=>wwv_flow_api.id(13456576013372345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:24 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :p411_itemcode1 IS NOT NULL AND :p411_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT s.smancode, s.costcode, s.custmrid,s.itemcode,s.batchnum',
'        INTO :p411_lovsalmanid, :p411_lovcostcode, :p411_lovcustomerid,:P411_LOVITEMCODE,:P411_LOVBATCHNO',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p411_docnumbr1 AND s.itemcode = :p411_itemcode1;',
'   END IF;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>'P37_DOCNUMBR1,P37_ITEMCODE1'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13457527755372346)
,p_name=>'change on batchnum'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_BATCHNUM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13458034518372347)
,p_event_id=>wwv_flow_api.id(13457527755372346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P411_BATCHNUM IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P411_CLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P411_WARECODE',
'            AND b.itemcode =:P411_ITEMCODE',
'            and b.BATCHNUM =:P411_BATCHNUM',
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
,p_attribute_02=>'P411_WARECODE,P411_ITEMCODE,P411_BATCHNUM'
,p_attribute_03=>'P411_CLOSINGBALANCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13458435052372347)
,p_name=>'clear on itemcode'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13458864953372347)
,p_event_id=>wwv_flow_api.id(13458435052372347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P411_BATCHNUM,P411_DISCPCNT,P411_DISAMOUNT,P411_NETAMOUNT,P411_QUENTITY,P411_CLOSINGBALANCE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13459304342372347)
,p_name=>'change  on salmancode'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_SALMANID'
,p_condition_element=>'P411_SALMANID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13459789217372348)
,p_event_id=>wwv_flow_api.id(13459304342372347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P411_SALMANID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.SMANNAME',
'into :P411_SALMNNAME',
'    FROM nmsmnmas  w',
'   WHERE w.compcode = :compcode',
'     AND w.SMANCODE =:P411_SALMANID;',
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
,p_attribute_02=>'P411_SALMANID'
,p_attribute_03=>'P411_SALMNNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13460241270372348)
,p_name=>'clear  for docnum49'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(55043331756264182)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13460692520372348)
,p_event_id=>wwv_flow_api.id(13460241270372348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P411_DOCNUMBR49'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13461082274372348)
,p_name=>'click on delivery challan'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(55044145308264184)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13461555959372348)
,p_event_id=>wwv_flow_api.id(13461082274372348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$( "#P411_ERRMSG" ).dialog({',
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
 p_id=>wwv_flow_api.id(13462051442372349)
,p_name=>'click for delivery'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(55044145308264184)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13462532872372349)
,p_event_id=>wwv_flow_api.id(13462051442372349)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'beforeInsert();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13462904616372349)
,p_name=>'change on orderno from sales offer'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_ORDERNO'
,p_condition_element=>'P411_ORDERNO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13463412284372350)
,p_event_id=>wwv_flow_api.id(13462904616372349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:16 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :P411_ORDERNO IS NOT NULL',
'   THEN',
'      SELECT s.compcode, s.docttype, s.subttype, ',
'             s.doctdate, s.serlnumb, s.partycde, s.itemcode,',
'             s.smancode, s.commcode, s.itemdesc,',
'             s.itemlong, s.discpcnt, s.discamnt, s.salerate,',
'             s.custmrid, s.costcode, s.warecode, s.batchnum,',
'             s.msfcamnt, s.apprqnty',
'        INTO :p411_compcode, :p411_docttype, :p411_subttype, ',
'             :p411_doctdate, :p411_serlnumb, :p411_partycode, :p411_itemcode,',
'             :p411_salmanid, :p411_unitofmesure,',
'             :p411_itemdesc, :p411_itemlong_1, :p411_discpcnt, :p411_disamount,',
'             :p411_salprice, :p411_customerid, :p411_costcode, :p411_warecode,',
'             :p411_batchnum, :p411_netamount, :p411_quentity ',
'        FROM nmslsofr s',
'       WHERE s.docnumbr = :P411_ORDERNO;',
'   END IF;',
'END;'))
,p_attribute_02=>'P411_ORDERNO'
,p_attribute_03=>'P411_COMPCODE,P411_DOCTTYPE,P411_SUBTTYPE,P411_DOCNUMBR,P411_DOCTDATE,P411_SERLNUMB,P411_PARTYCODE,P411_ITEMCODE,P411_SALMANID,P411_UNITOFMESURE,P411_ITEMDESC,P411_ITEMLONG_1,P411_DISCPCNT,P411_DISAMOUNT,P411_SALPRICE,P411_CUSTOMERID,P411_COSTCODE,P4'
||'11_WARECODE,P411_BATCHNUM,P411_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13463767851372350)
,p_name=>'change on javascript on tabular form'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_ORDERNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13464269853372350)
,p_event_id=>wwv_flow_api.id(13463767851372350)
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
 p_id=>wwv_flow_api.id(13464716228372351)
,p_name=>'change on source company code'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_SRCCOMPNM'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13465175805372351)
,p_event_id=>wwv_flow_api.id(13464716228372351)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P411_SRCCOMPNM IS NOT NULL',
'   THEN',
'      BEGIN',
' select distinct CACMPNAM ',
'into :P411_SRCCOMPDS',
'from syparmas  w',
'    where w.CACMPCDE=:P411_SRCCOMPNM;',
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
'IF :P411_ITEMCODE1 IS NOT NULL and :P411_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
' select distinct CACMPNAM ',
'into :P411_SRCCOMPDS',
'from syparmas  w',
'    where w.CACMPCDE=(',
' SELECT SRCCMPCD',
'        FROM nmstkrec s',
'       WHERE s.docnumbr = :p411_docnumbr1 AND s.itemcode = :p411_itemcode1',
'       and s.COMPCODE=:P411_SRCCOMPNM);',
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
,p_attribute_02=>'P411_SRCCOMPNM,P411_DOCNUMBR1,P411_ITEMCODE1'
,p_attribute_03=>'P411_SRCCOMPDS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13465650795372351)
,p_name=>'change on P411_PRVDNO'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_PRVDNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13466142637372352)
,p_event_id=>wwv_flow_api.id(13465650795372351)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'If :P411_PRVDNO is not null then',
'  Begin',
'       Select distinct DOCTDATE',
'       into   :P411_PRVDDT',
'       from   NMSTKREC',
'       where  COMPCODE = :P411_COMPCODE_APPLICATION ',
'       and    DOCTTYPE = ''IS'' --:P411_S_PRDTYP',
'       and    SUBTTYPE = 2 --:P411_S_PRSTYP',
'       and    DOCNUMBR = :P411_PRVDNO;',
'   Exception',
'       When No_Data_Found then',
'           null;',
'       When Too_Many_Rows then',
'           null;',
'   End;',
'end if;',
'END;',
'',
'begin',
'If :P81_PRVDNO  is not null then',
'  Begin',
'       Select distinct costcode,refndate,SRCWRECD  -- refnumbr,',
'       into   :P411_SRCCOSTCD,:P411_REFNDATE,:P411_SRWHSCDE --:P411_REFNUMBR,',
'       from   NMSTKREC',
'       where  COMPCODE = :P411_COMPCODE_APPLICATION ',
'       and    DOCTTYPE = ''IS'' --:P411_S_PRDTYP',
'       and    SUBTTYPE = 2 --:P411_S_PRSTYP',
'       and    DOCNUMBR = :P411_PRVDNO',
'       and    DOCTDATE = to_date(:P411_PRVDDT,''dd-mon-yyyy''); --:P411_PRVDDT;',
'   Exception',
'       When No_Data_Found then',
'            null;',
'     When Too_Many_Rows then',
'          null;',
'   End;',
'Begin',
'  If :P411_SRCCOSTCD is not null then ',
'   Begin',
'       Select Initcap(COSTDESC)',
'       into   :P411_SRCCOSTDS',
'       from   SYJOBMAS',
'       where  COMPCODE = :P411_COMPCODE_APPLICATION ',
'       and    COSTCODE = :P411_SRCCOSTCD ;',
'       ',
'       Select warecode,waredesc',
'        into   :P411_DSWHSCDE,:P411_DSWHSNME',
'        from   nmwhsmas',
'        where  compcode = :P411_COMPCODE_APPLICATION ',
'        and    costcode = :P411_SRCCOSTCD;',
'   Exception',
'        When No_Data_Found then ',
'            Null;',
'      When Too_many_Rows then ',
'          Null;',
'   End;    ',
'  End if;',
'End; ',
'  ',
'End If;  ',
'end;'))
,p_attribute_02=>'P411_COMPCODE_APPLICATION,P411_PRVDNO,P411_SRCCOSTCD'
,p_attribute_03=>'P411_PRVDDT,P411_SRCCOSTCD,P411_REFNDATE,P411_SRWHSCDE,P411_SRCCOSTDS,P411_DSWHSCDE,P411_DSWHSNME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13466484001372352)
,p_name=>'change on source cost code'
,p_event_sequence=>345
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_SRCCOSTCD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13467026985372352)
,p_event_id=>wwv_flow_api.id(13466484001372352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'  If :P411_SRCCOSTCD is not null then ',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P411_SRCCOSTDS',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P411_SRCCOSTCD ;',
'	  /* Select warecode,waredesc',
'   	 into   :P411_DSWHSCDE,:P411_DSWHSNME',
'   	 from   nmwhsmas',
'   	 where  compcode = :COMPCODE ',
'   	 and    costcode = :P411_SRCCOSTCD;*/',
'   Exception',
'    	When No_Data_Found then ',
'	 raise_application_error(-20001,''no_data_found'');',
'      When Too_many_Rows then ',
'          Null;',
'   End;',
'end if;',
'end;'))
,p_attribute_02=>'P411_SRCCOSTCD'
,p_attribute_03=>'P411_SRCCOSTDS,P411_DSWHSCDE,P411_DSWHSNME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13467376769372352)
,p_name=>'change  on P411_SRWHSCDE'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_SRWHSCDE'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13467932557372353)
,p_event_id=>wwv_flow_api.id(13467376769372352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_result number;',
'l_no number;',
'begin',
'',
'   	Select waredesc,costcode,WARECODE',
'   	into   :P411_SRWHSNME,:P411_SRCSTCDE,:P411_S_WARECODE',
'   	from   nmwhsmas',
'   	where  compcode = :P411_COMPCODE_APPLICATION ',
'   	and    warecode = :P411_SRWHSCDE;',
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
'  If :P411_SRCSTCDE is not null then',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P411_SRCSTNME',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :P411_COMPCODE_APPLICATION ',
'	   and    COSTCODE = :P411_SRCSTCDE;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
'  End if;',
'End;',
''))
,p_attribute_02=>'P411_SRWHSCDE,P411_SRCSTCDE,P411_COMPCODE_APPLICATION'
,p_attribute_03=>'P411_SRCSTNME,P411_SRWHSNME,P411_SRCSTCDE,P411_S_WARECODE'
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
 p_id=>wwv_flow_api.id(13468293710372353)
,p_name=>'lose focus on warecode'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_SRWHSCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13468693483372353)
,p_name=>'refresh on tabular region'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_REFNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13469104557372353)
,p_name=>'change on destination warehouse'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_DSWHSCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13469566994372354)
,p_event_id=>wwv_flow_api.id(13469104557372353)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_result number;',
'l_no number;',
'begin',
'',
'   	Select waredesc,costcode,WARECODE',
'   	into   :P411_DSWHSNME,:P411_SRCCOSTCD,:P411_D_WARECODE',
'   	from   nmwhsmas',
'   	where  compcode = :P411_COMPCODE_APPLICATION ',
'   	and    warecode = :P411_DSWHSCDE;',
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
'  If :P411_SRCCOSTCD is not null then',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P411_SRCSTNME',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :P411_COMPCODE_APPLICATION ',
'	   and    COSTCODE = :P411_SRCCOSTCD;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
'  End if;',
'End;',
''))
,p_attribute_02=>'P411_SRCCOSTCD,P411_DSWHSCDE,P411_COMPCODE_APPLICATION'
,p_attribute_03=>'P411_DSWHSNME,P411_SRCCOSTCD,P411_SRCSTNME,P411_D_WARECODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13478116385372362)
,p_name=>'closeX'
,p_event_sequence=>400
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13478600403372362)
,p_event_id=>wwv_flow_api.id(13478116385372362)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'parent.$(''.ui-dialog-titlebar-close'').hide();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13469994096372354)
,p_name=>'refresh Issue Return'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P411_PRVDNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13470489224372354)
,p_event_id=>wwv_flow_api.id(13469994096372354)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(235637837949377577)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11810883345185547)
,p_name=>'Close Dialog'
,p_event_sequence=>420
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13448633779372326)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11810986834185548)
,p_event_id=>wwv_flow_api.id(11810883345185547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13128929035835089)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(235637837949377577)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE-INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
':OPRSTAMP := :APP_USER;',
':RAISEDBY := :APP_USER;',
':MODIFYDT := SYSDATE;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13128827612835088)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(235637837949377577)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'update nmstkinv'
,p_attribute_01=>'TABLE'
,p_attribute_03=>'NMSTKINV'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13447106083372323)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(235637837949377577)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert nmstkrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    INSERT INTO NMSTKREC (',
'                            COMPCODE,      DOCTTYPE,  SUBTTYPE,  DOCNUMBR,  DOCTDATE,',
'                            SERLNUMB,      ITEMCODE,  ITEMTYPE,  ITEMDESC,  ITEMLONG,  ',
'                            ITEMRATE,      HUOMCODE,  LUOMCODE,  CURRCODE,  EXCGRATE,',
'                            WARECODE,      COSTCODE,  BATCHNUM,  STATUSCD,  OPRSTAMP,  ',
'                            ORGNQNTY,      APPRQNTY,  UPDOCTYP,  UPSUBTYP,  UPDOCNUM,  ',
'                            UPDOCDTE,      UPDOCSRL,  REMARKSS',
'                        )',
'        VALUES         (',
'                           :P411_COMPCODE_APPLICATION, ''RR'', 1, :P411_DOCNUMBR, SYSDATE, --:P411_DOCTDATE,',
'                           :SERLNUMB,     :ITEMCODE,   ''S'',     :ITEMDESC,  :ITEMDESC,',
'                           :COSTRATE,     :LUOMCODE,   :LUOMCODE, ''BDT'',   1,',
'                           :WARECODE,     :COSTCODE,   :BATCHNUM,  :STATUSCD,  :APP_USER, ',
'                           :INVTRQTY,     :INVTRQTY,   :DOCTTYPE,  :SUBTTYPE,  :DOCNUMBR,',
'                           :DOCTDATE,     :SERLNUMB,   :REMARKSS',
'                       );',
'                        ',
'    ',
'    /*',
'                (COMPCODE      ,DOCTTYPE  ,SUBTTYPE  ,DOCNUMBR  ,DOCTDATE,',
'                 SERLNUMB      ,PARTYCDE  ,RAISEDBY  ,APPRVDBY  ,APPRDATE,',
'                 REQDDATE      ,COMMCODE  ,ITEMCODE  ,ITEMTYPE  , --MCSERIAL,',
'                 ITEMDESC      ,ITEMLONG  ,ITEMRATE  ,--DISCPCNT  ,DISCAMNT,',
'                 SPLDISPC      ,SPLDISNT  ,SALERATE  ,HUOMCODE  ,--FACTRVAL,',
'                 LUOMCODE      ,ORGNQNTY  ,APPRQNTY  ,MSFCAMNT  ,CURRCODE,',
'                 EXCGRATE      ,MSLCAMNT  ,REFNUMBR  ,REFNDATE  ,UPDOCTYP,',
'                 UPSUBTYP      ,UPDOCNUM  ,UPDOCDTE  ,UPDOCSRL  ,REMARKSS,',
'                 COSTCODE      ,WARECODE  ,STATUSCD  ,OPRSTAMP,',
'                 BATCHNUM      ,NORMRATE ,COSTRATE, SRCWRECD',
'                ',
'                )',
'',
'',
'         VALUES (:P411_COMPCODE_APPLICATION, ''RR'', 1, :P411_DOCNUMBR, SYSDATE, --:P411_DOCTDATE,',
'                 :SERLNUMB    ,:PARTYCDE,:RAISEDBY,:APPRVDBY    ,:APPRDATE,',
'                 :REQDDATE    ,:COMMCODE,:ITEMCODE, ''S'', --:ITEMTYPE    ,:MCSERIAL,',
'                 :ITEMDESC,   :ITEMDESC,    :COSTRATE,  ',
'                 --:ITEMDESC    ,:ITEMLONG,:ITEMRATE,:DISCPCNT    ,:DISCAMNT,',
'                 ',
'                 :SPLDISPC    ,:SPLDISNT,:SALERATE,',
'                 :LUOMCODE    ,--:FACTRVAL,                 ',
'                 :LUOMCODE    ,',
'                 :INVTRQTY,  :INVTRQTY,  :MSFCAMNT,    :CURRCODE, ',
'                 :EXCGRATE    ,:MSLCAMNT,:REFNUMBR,:REFNDATE    , NULL, --:DOCTTYPE, ',
'                 NULL, NULL, NULL, --:SUBTTYPE    ,:DOCNUMBR,:DOCTDATE,',
'                 :SERLNUMB    ,:REMARKSS,',
'                 :COSTCODE, :WARECODE,:STATUSCD, :APP_USER,',
'                 :BATCHNUM    ,:ITEMRATE,:COSTRATE,:SRCWRECD',
'                );',
'',
'    UPDATE nmstkinv',
'       SET invtrqty = nvl(:invtrqty,0) - :ADJQTY',
'           --updoctyp = ''IR'',',
'           --upsubtyp = 1,',
'           --updocnum = :P411_DOCNUMBR,',
'           --updocdte = SYSDATE',
'     WHERE docnumbr = :docnumbr ',
'       AND itemcode = :ITEMCODE',
'       AND docttype = :DOCTTYPE',
'       AND subttype = :SUBTTYPE',
'       AND BATCHNUM = :BATCHNUM;',
'*/       ',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001, sqlcode||'' ''||sqlerrm);',
'',
'--raise_application_error(-20001,''Other Problem'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13448961554372326)
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
'docnumber_generation(:P406_COMPCODE_APPLICATION, ''NM'', ''IR'',',
'                     1, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''),null,',
'                     ''NM'', newno);',
'                     ',
'if docnum is not null then                        ',
' --:COSTCODE:=:P406_SRCSTCDE;',
' --:WARECODE:=:P406_SRWHSCDE;',
' --:DOCNUMBR:=docnum;',
':P406_DOCNUMBR:=newno;',
'end if;',
'',
'if newno is not null then',
'INSERT INTO NMSTKREC ',
'                (COMPCODE      ,DOCTTYPE  ,SUBTTYPE  ,DOCNUMBR  ,DOCTDATE                      ,',
'                 SERLNUMB      ,PARTYCDE  ,RAISEDBY  ,APPRVDBY  ,APPRDATE                      ,',
'                 REQDDATE      ,COMMCODE  ,ITEMCODE  ,ITEMTYPE  ,MCSERIAL                      ,',
'                 ITEMDESC      ,ITEMLONG  ,ITEMRATE  ,DISCPCNT  ,DISCAMNT                      ,',
'                 SPLDISPC      ,SPLDISNT  ,SALERATE  ,HUOMCODE  ,FACTRVAL                      ,',
'                 LUOMCODE      ,ORGNQNTY  ,APPRQNTY  ,MSFCAMNT  ,CURRCODE                      ,',
'                 EXCGRATE      ,MSLCAMNT  ,REFNUMBR  ,REFNDATE  ,UPDOCTYP                      ,',
'                 UPSUBTYP      ,UPDOCNUM  ,UPDOCDTE  ,UPDOCSRL  ,REMARKSS                      ,',
'                 COSTCODE      ,WARECODE  ,STATUSCD  ,OPRSTAMP                        ,',
'                 BATCHNUM      ,NORMRATE ,COSTRATE   ,TRNSQNTY ,SRCWRECD)',
'    ',
'    VALUES(:P406_COMPCODE_APPLICATION, ''IR'', 1, NEWNO,:P406_DOCTDATE,',
'                 :SERLNUMB     ,:PARTYCDE,:RAISEDBY,:APPRVDBY    ,:APPRDATE                ,',
'                 :REQDDATE    ,:COMMCODE,:ITEMCODE,:ITEMTYPE    ,:MCSERIAL                ,',
'                 :ITEMDESC    ,:ITEMLONG,:ITEMRATE,:DISCPCNT    ,:DISCAMNT                ,',
'                 :SPLDISPC    ,:SPLDISNT,:SALERATE,:HUOMCODE    ,:FACTRVAL                ,',
'                 :LUOMCODE    ,:ORGNQNTY,:APPRQNTY,:MSFCAMNT    ,:CURRCODE, ',
'                 :EXCGRATE    ,:MSLCAMNT,:REFNUMBR,:REFNDATE    ,:DOCTTYPE   , ',
'                 :SUBTTYPE    ,:P406_DOCNUMBR,:DOCTDATE,:SERLNUMB    ,:REMARKSS                ,',
'                 :P406_SRCCOSTCD,:P406_DSWHSCDE,''APR'' ,:APP_USER           ,',
'                 :BATCHNUM    ,:ITEMRATE,:COSTRATE,:RCVQTY,:P406_SRWHSCDE);',
'end if;                 ',
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
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13449359125372338)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13448961554372326)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13449777442372339)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process for doc generation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(20);',
'btcnum varchar2(20):=''SYS00000'';',
'begin',
'',
'docnumber_generation(:P411_COMPCODE_APPLICATION, ''NM'', ''RR'',',
'                     1, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''), NULL, --:P408_WARECODE,',
'                     ''NM'', docnum);                    ',
'                     ',
':P411_DOCNUMBR := docnum; ',
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
,p_process_when_button_id=>wwv_flow_api.id(13448961554372326)
,p_process_success_message=>'Record generate successfully<br>Requisition No. : &P411_DOCNUMBR.'
);
wwv_flow_api.component_end;
end;
/
