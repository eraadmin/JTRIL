prompt --application/pages/page_00291
begin
--   Manifest
--     PAGE: 00291
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
 p_id=>291
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Stock Issue Entry'
,p_page_mode=>'MODAL'
,p_step_title=>'Stock Issue Entry'
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
'<script type="text/javascript">',
'function calculateTotal4(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P81_TABULARITEMCODE'').value=',
'    html_GetElement(''f13_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P81_TABULARITEMCODE'').trigger(''click'');',
'});',
'',
'}',
'</script>',
'',
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
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20200102204621'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(125647609930761990)
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
 p_id=>wwv_flow_api.id(125651583478761995)
,p_plug_name=>'Order and Booking Details'
,p_parent_plug_id=>wwv_flow_api.id(125647609930761990)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P291_TRANTYPE'
,p_plug_display_when_cond2=>'SI2'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(125652979573761997)
,p_plug_name=>'&P291_DISPALY.'
,p_parent_plug_id=>wwv_flow_api.id(125647609930761990)
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
 p_id=>wwv_flow_api.id(125642585656761987)
,p_plug_name=>' &nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(125652979573761997)
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
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
 p_id=>wwv_flow_api.id(125653210293761997)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(125652979573761997)
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
 p_id=>wwv_flow_api.id(154290531049133190)
,p_plug_name=>'Multiple Item Requisition'
,p_parent_plug_id=>wwv_flow_api.id(125652979573761997)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>200
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ROWID,',
'SERLNUMB,',
'COMPCODE,',
'case when COMMCODE is not null then',
'(select distinct NMCODDES from nmcodmas where compcode=a.compcode and NMSOFCDE=a.COMMCODE and NMHRDCDE=''MOD'')',
'when COMMCODE is   null then',
'NULL',
'end "COMMCODE_DESC",',
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
'case when LUOMCODE is not null then',
'(select distinct IUOMDESC from nmuommas  where compcode=a.compcode and IUOMCODE=a.LUOMCODE)',
'when LUOMCODE is   null then',
'NULL',
'end "LUOMCODE_DESC",',
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
'case when COLORCDE is not null then',
'(select distinct NMCODDES from nmcodmas where compcode=a.compcode and NMSOFCDE=a.COLORCDE and NMHRDCDE=''STY'')',
'when COLORCDE is   null then',
'NULL',
'end "COLORCDE_DESC",',
'COSTRATE,',
'BOM_NO,',
'SRCWRECD,',
''''' ISSQTY',
'from NMSTKREC A',
'where compcode = :P291_COMPCODE_APPLICATION ',
'and docttype = nvl(:P291_S_PRDTYP,:P291_DOCTTYPE)',
'and subttype = nvl(:P291_S_PRSTYP,:P291_SUBTTYPE)',
'and DOCNUMBR= nvl(:P291_PRVDNO,:P291_DOCNUMBR)',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P291_COMPCODE_APPLICATION,P291_PRVDNO,P291_S_PRDTYP,P291_DOCTTYPE,P291_S_PRSTYP,P291_SUBTTYPE,P291_DOCNUMBR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(13862985074151260)
,p_name=>'ISSQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<font color="red">Issue Qty.</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>640
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>15
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
 p_id=>wwv_flow_api.id(37257567319054424)
,p_name=>'COMMCODE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMCODE_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>600
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37257658229054425)
,p_name=>'LUOMCODE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>610
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37257783563054426)
,p_name=>'COLORCDE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLORCDE_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>620
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154290718519133192)
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
 p_id=>wwv_flow_api.id(154290840114133193)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Srl.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>true
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
 p_id=>wwv_flow_api.id(154290961332133194)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P291_COMPCODE_APPLICATION'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154291080810133195)
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
,p_default_expression=>'P291_DOCTTYPE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154291144313133196)
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
,p_default_expression=>'P291_SUBTTYPE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154291203571133197)
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
,p_default_type=>'ITEM'
,p_default_expression=>'P291_DOCNUMBR'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154291379726133198)
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
,p_default_expression=>'P291_DOCTDATE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154291480452133199)
,p_name=>'PARTYCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARTYCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
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
 p_id=>wwv_flow_api.id(154291532447133200)
,p_name=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAISEDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
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
 p_id=>wwv_flow_api.id(154291641586133201)
,p_name=>'APPRVDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRVDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
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
 p_id=>wwv_flow_api.id(154291799235133202)
,p_name=>'APPRDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
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
 p_id=>wwv_flow_api.id(154291812220133203)
,p_name=>'REQDDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQDDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
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
 p_id=>wwv_flow_api.id(154291941129133204)
,p_name=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
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
 p_id=>wwv_flow_api.id(154292082144133205)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>200
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
 p_id=>wwv_flow_api.id(154292121516133206)
,p_name=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P291_TABITEMTYPE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154292245633133207)
,p_name=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>200
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
,p_default_type=>'SQL_QUERY'
,p_default_expression=>'select ITEMDES1 from nmitemas'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154292325955133208)
,p_name=>'ITEMLONG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMLONG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ITEMDES1 d,ITEMDES1 r from nmitemas',
'where compcode=:P291_COMPCODE_APPLICATION',
'and ITEMCODE=:ITEMCODE'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'P104_COMPCODE_APPLICATION,ITEMCODE'
,p_ajax_items_to_submit=>'P291_COMPCODE_APPLICATION,ITEMCODE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'SQL_QUERY'
,p_default_expression=>'select ITEMDES1 from nmitemas'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154292458507133209)
,p_name=>'ITEMRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'100'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155097228110555260)
,p_name=>'DISCPCNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCPCNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
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
 p_id=>wwv_flow_api.id(155097398438555261)
,p_name=>'DISCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
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
 p_id=>wwv_flow_api.id(155097429570555262)
,p_name=>'SPLDISPC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLDISPC'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
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
 p_id=>wwv_flow_api.id(155097505314555263)
,p_name=>'SPLDISNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLDISNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
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
 p_id=>wwv_flow_api.id(155097666059555264)
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
 p_id=>wwv_flow_api.id(155097786752555265)
,p_name=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'HUOMCODE'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>true
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155097828436555266)
,p_name=>'FACTRVAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FACTRVAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
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
 p_id=>wwv_flow_api.id(155097918201555267)
,p_name=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>true
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
,p_default_type=>'SQL_QUERY'
,p_default_expression=>'select LUOMCODE  from nmitemas'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155098001331555268)
,p_name=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGNQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Orginal Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>320
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'100'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155098175555555269)
,p_name=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Approve Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>330
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(155098244172555270)
,p_name=>'TRNSQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRNSQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<font color="red">Issue Qty.</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>340
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_item_attributes=>'onchange="setcostcode();"'
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
 p_id=>wwv_flow_api.id(155098381548555271)
,p_name=>'MSFCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSFCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>350
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
 p_id=>wwv_flow_api.id(155098412947555272)
,p_name=>'CURRCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>360
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'BDT'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155098540445555273)
,p_name=>'EXCGRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCGRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>370
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'1'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155098630443555274)
,p_name=>'MSLCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSLCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>380
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
 p_id=>wwv_flow_api.id(155098763584555275)
,p_name=>'REFNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>390
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
 p_id=>wwv_flow_api.id(155098808935555276)
,p_name=>'REFNDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFNDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>400
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
 p_id=>wwv_flow_api.id(155098967434555277)
,p_name=>'UPDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCTYP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>410
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
 p_id=>wwv_flow_api.id(155099054252555278)
,p_name=>'UPSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPSUBTYP'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>420
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
 p_id=>wwv_flow_api.id(155099195924555279)
,p_name=>'UPDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>430
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
 p_id=>wwv_flow_api.id(155099254119555280)
,p_name=>'UPDOCDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCDTE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>440
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
 p_id=>wwv_flow_api.id(155099324911555281)
,p_name=>'UPDOCSRL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCSRL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>450
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
 p_id=>wwv_flow_api.id(155099494911555282)
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
,p_max_length=>180
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
 p_id=>wwv_flow_api.id(155099600123555283)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>470
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155099668162555284)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Warecode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>480
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155099793379555285)
,p_name=>'POSTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSTFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>490
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
 p_id=>wwv_flow_api.id(155099832295555286)
,p_name=>'PRNTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRNTFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>500
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
 p_id=>wwv_flow_api.id(155099991535555287)
,p_name=>'PRICFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>510
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
 p_id=>wwv_flow_api.id(155100005973555288)
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
 p_id=>wwv_flow_api.id(155100138409555289)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>530
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':APP_USER'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155100209690555290)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>540
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'SYSDATE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155100357307555291)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<font color="red">Batch No.</font>'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_is_required=>true
,p_max_length=>150
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.batchnum||'' - ''||a.clbalqty d,a.batchnum r ',
'from nmwhimas a,nmbtrate b',
'where a.compcode= :compcode  ',
'and a.itemcode=b.itemcode',
'and a.batchnum=b.batchnum',
'and a.compcode=b.compcode',
'and a.warecode= :P291_SRWHSCDE',
'and a.itemcode= :itemcode',
'and a.clbalqty>0'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'COMPCODE,ITEMCODE'
,p_ajax_items_to_submit=>'P291_SRWHSCDE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155100473768555292)
,p_name=>'COLORCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLORCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>550
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
 p_id=>wwv_flow_api.id(155100566950555293)
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
 p_id=>wwv_flow_api.id(155100663642555294)
,p_name=>'BOM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOM_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>570
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
 p_id=>wwv_flow_api.id(155100758564555295)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155100890485555296)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155101264507555300)
,p_name=>'SRCWRECD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SRCWRECD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Source Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>580
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
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
,p_default_expression=>'P291_SRWHSCDE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155102000786555307)
,p_name=>'ND_BATCH_QTY'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'<font color="red">Batch Qty.</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT CLBALQTY d,  CLBALQTY r',
'           FROM (SELECT   b.batchnum,sum(w.CLBALQTY) CLBALQTY',
'                     FROM nmbtrate b, nmwhimas w',
'                    WHERE b.compcode = :P291_COMPCODE_APPLICATION',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND w.warecode = :P291_SRWHSCDE',
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
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'P104_COMPCODE_APPLICATION,P104_SRWHSCDE,ITEMCODE,BATCHNUM'
,p_ajax_items_to_submit=>'P291_COMPCODE_APPLICATION,P291_SRWHSCDE,ITEMCODE,BATCHNUM'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(154290601237133191)
,p_internal_uid=>186636984306534535
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET:SAVE'
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
 p_id=>wwv_flow_api.id(155102843203555366)
,p_interactive_grid_id=>wwv_flow_api.id(154290601237133191)
,p_static_id=>'395730'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(155102972413555366)
,p_report_id=>wwv_flow_api.id(155102843203555366)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35821546538560131)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>51
,p_column_id=>wwv_flow_api.id(13862985074151260)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37358339202222530)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(37257567319054424)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37358856658222531)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(37257658229054425)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37359338260222532)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(37257783563054426)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155103411495555371)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(154290718519133192)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155103910061555373)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(154290840114133193)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>10
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155104487084555374)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(154290961332133194)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155104908147555376)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(154291080810133195)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155105450554555376)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(154291144313133196)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155105904245555377)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(154291203571133197)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155106374481555379)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(154291379726133198)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155106877546555380)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(154291480452133199)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155107362453555380)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(154291532447133200)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155107842432555382)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(154291641586133201)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155108337377555383)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(154291799235133202)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155108865092555385)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(154291812220133203)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155109306916555385)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(154291941129133204)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155109859102555387)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(154292082144133205)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155110377862555388)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(154292121516133206)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155110882334555390)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(154292245633133207)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155111364280555390)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(154292325955133208)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155111847684555391)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(154292458507133209)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155112358369555393)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(155097228110555260)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155112862065555394)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(155097398438555261)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155113302424555396)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(155097429570555262)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155113874272555397)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(155097505314555263)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155114362125555397)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(155097666059555264)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155114807700555399)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(155097786752555265)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155115397052555401)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(155097828436555266)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155115817501555402)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>44
,p_column_id=>wwv_flow_api.id(155097918201555267)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155116398532555402)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>36
,p_column_id=>wwv_flow_api.id(155098001331555268)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155116821974555404)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>42
,p_column_id=>wwv_flow_api.id(155098175555555269)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155117345740555405)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>49
,p_column_id=>wwv_flow_api.id(155098244172555270)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155117835578555407)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(155098381548555271)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155118349804555408)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(155098412947555272)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155118863086555410)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(155098540445555273)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155119388671555410)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(155098630443555274)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155119858598555412)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(155098763584555275)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155120330505555413)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(155098808935555276)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155120896831555415)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>36
,p_column_id=>wwv_flow_api.id(155098967434555277)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155121384187555418)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(155099054252555278)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155121871980555419)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(155099195924555279)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155122384669555421)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(155099254119555280)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155122855327555422)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>40
,p_column_id=>wwv_flow_api.id(155099324911555281)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155123304748555422)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>51
,p_column_id=>wwv_flow_api.id(155099494911555282)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155123851266555424)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>57
,p_column_id=>wwv_flow_api.id(155099600123555283)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155124342530555426)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>54
,p_column_id=>wwv_flow_api.id(155099668162555284)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>5
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155124871410555427)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>44
,p_column_id=>wwv_flow_api.id(155099793379555285)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155125379075555427)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>45
,p_column_id=>wwv_flow_api.id(155099832295555286)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155125888338555429)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>46
,p_column_id=>wwv_flow_api.id(155099991535555287)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155126380975555430)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>47
,p_column_id=>wwv_flow_api.id(155100005973555288)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155126861961555432)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>52
,p_column_id=>wwv_flow_api.id(155100138409555289)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155127378653555433)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>53
,p_column_id=>wwv_flow_api.id(155100209690555290)
,p_is_visible=>true
,p_is_frozen=>false
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
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155127841428555435)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(155100357307555291)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155128345197555435)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>55
,p_column_id=>wwv_flow_api.id(155100473768555292)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155128815682555436)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>56
,p_column_id=>wwv_flow_api.id(155100566950555293)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155129354118555438)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>58
,p_column_id=>wwv_flow_api.id(155100663642555294)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155130401354556959)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(155100758564555295)
,p_is_visible=>false
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155246575043601000)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>59
,p_column_id=>wwv_flow_api.id(155101264507555300)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>5
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155283901733600815)
,p_view_id=>wwv_flow_api.id(155102972413555366)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(155102000786555307)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>10
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(187998963238284920)
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
 p_id=>wwv_flow_api.id(43789246132693100)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(125642585656761987)
,p_button_name=>'SEND_PURCHASE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Purchase Request'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'javascript:apex.confirm(''Do You Want To Send Purchase Request?'', ''PURCHASE_REQUEST'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38284649841096510)
,p_button_sequence=>1670
,p_button_plug_id=>wwv_flow_api.id(125653210293761997)
,p_button_name=>'P291_SHOWHIDE'
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
 p_id=>wwv_flow_api.id(38261438295096472)
,p_button_sequence=>1930
,p_button_plug_id=>wwv_flow_api.id(125647609930761990)
,p_button_name=>'P291_RUNREPORT'
,p_button_static_id=>'P81_RUNREPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Run Report'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:49:P49_PROGNAME,P49_DOCNUMBR:&P291_PROGNAME.,&P291_DOCNUMBR49.'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38261825966096474)
,p_button_sequence=>1940
,p_button_plug_id=>wwv_flow_api.id(125647609930761990)
,p_button_name=>'P291_MNYRECEIPT'
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
 p_id=>wwv_flow_api.id(38262206278096475)
,p_button_sequence=>1980
,p_button_plug_id=>wwv_flow_api.id(125647609930761990)
,p_button_name=>'P291_DELIVERY'
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
 p_id=>wwv_flow_api.id(38262578432096475)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(125647609930761990)
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
 p_id=>wwv_flow_api.id(38262965704096475)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(125647609930761990)
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
 p_id=>wwv_flow_api.id(38263386220096475)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(125647609930761990)
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
 p_id=>wwv_flow_api.id(38322692476096574)
,p_button_sequence=>70
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38323108282096574)
,p_button_sequence=>80
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38321484661096552)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(187998963238284920)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:76:&SESSION.:A:&DEBUG.:76::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38321895903096553)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(187998963238284920)
,p_button_name=>'CREATE'
,p_button_static_id=>'BUT_CRT_FRM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38321101481096552)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(187998963238284920)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'NEXT'
,p_button_condition=>'P291_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38322223386096553)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(187998963238284920)
,p_button_name=>'CREATE_NEW'
,p_button_static_id=>'BUT_CRT_TAB'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_condition=>'P291_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38263721595096475)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(125647609930761990)
,p_button_name=>'DELIVERY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delivery'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(38357930497096599)
,p_branch_name=>'Go To Page 81'
,p_branch_action=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.:81::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(38322223386096553)
,p_branch_sequence=>11
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38264199705096475)
,p_name=>'P291_PROGNAME'
,p_item_sequence=>1960
,p_item_plug_id=>wwv_flow_api.id(125647609930761990)
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
 p_id=>wwv_flow_api.id(38264634222096483)
,p_name=>'P291_DOCNUMBR49'
,p_item_sequence=>1970
,p_item_plug_id=>wwv_flow_api.id(125647609930761990)
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
 p_id=>wwv_flow_api.id(38265030611096485)
,p_name=>'P291_TRNDATE'
,p_item_sequence=>1990
,p_item_plug_id=>wwv_flow_api.id(125647609930761990)
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
 p_id=>wwv_flow_api.id(38265778849096486)
,p_name=>'P291_ORDERNO'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_api.id(125651583478761995)
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
'            AND s.docttype = :P291_REQREFTYPE',
'            AND s.subttype = :P291_REQSUBTYPE',
'            AND s.doctdate <= :P291_ORDERDATE',
'            AND s.compcode = sls.compcode(+)',
'            AND s.docnumbr = sls.updocnum(+)',
'            AND s.itemcode = sls.itemcode(+)',
'            AND s.apprqnty > NVL (sls.apprqnty, 0)',
'       ORDER BY 2 DESC'))
,p_lov_cascade_parent_items=>'P291_REQREFTYPE,P291_REQSUBTYPE,P291_ORDERDATE'
,p_ajax_items_to_submit=>'P291_REQREFTYPE,P291_REQSUBTYPE,P291_ORDERDATE'
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
 p_id=>wwv_flow_api.id(38266141337096488)
,p_name=>'P291_ORDERDATE'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(125651583478761995)
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
 p_id=>wwv_flow_api.id(38266525197096488)
,p_name=>'P291_BOOKINGNO'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(125651583478761995)
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
 p_id=>wwv_flow_api.id(38267012994096489)
,p_name=>'P291_BOOKINGDT'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(125651583478761995)
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
 p_id=>wwv_flow_api.id(38267353005096489)
,p_name=>'P291_REQREFTYPE'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(125651583478761995)
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
 p_id=>wwv_flow_api.id(38267753916096489)
,p_name=>'P291_REQSUBTYPE'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(125651583478761995)
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
 p_id=>wwv_flow_api.id(38268473470096492)
,p_name=>'P291_DISPALY'
,p_item_sequence=>2350
,p_item_plug_id=>wwv_flow_api.id(125652979573761997)
,p_item_default=>':DOCDESC||''  (''||:DOCTTYPE||''/''||:SUBTTYPE||'')'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38269192363096494)
,p_name=>'P291_REGION'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
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
 p_id=>wwv_flow_api.id(38269557733096496)
,p_name=>'P291_COMPCODE'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
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
 p_id=>wwv_flow_api.id(38270006578096499)
,p_name=>'P291_OPRSTAMP'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
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
 p_id=>wwv_flow_api.id(38270416661096499)
,p_name=>'P291_TIMSTAMP'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
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
 p_id=>wwv_flow_api.id(38270720423096499)
,p_name=>'P291_SERLNUMB'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
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
 p_id=>wwv_flow_api.id(38271173699096499)
,p_name=>'P291_STATUSCD'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38271543624096499)
,p_name=>'P291_ITEMLONG_1'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38271948172096499)
,p_name=>'P291_MSFCAMNT'
,p_item_sequence=>1430
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38272413443096499)
,p_name=>'P291_TRANTYPE'
,p_item_sequence=>1440
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_prompt=>'Tran Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT Initcap(NARATION),To_Char(SUBTTYPE )',
'                    FROM SYDOCMAS WHERE COMPCODE = :COMPCODE ',
'                    AND TRANTYPE=''IS''',
'                    AND SYSDATE BETWEEN STRTPERD AND ENDPERD ',
'                    AND MODLCODE = :MODLCODE '))
,p_cHeight=>1
,p_colspan=>7
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38272783713096499)
,p_name=>'P291_DOCDESC'
,p_item_sequence=>1450
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38273134287096499)
,p_name=>'P291_ROWID'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
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
 p_id=>wwv_flow_api.id(38273599615096499)
,p_name=>'P291_DOCTTYPE'
,p_item_sequence=>1470
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_use_cache_before_default=>'NO'
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38273919562096500)
,p_name=>'P291_SUBTTYPE'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38274366015096500)
,p_name=>'P291_DOCNUMBR1'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38274769911096500)
,p_name=>'P291_PRVREF'
,p_item_sequence=>1500
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38275178110096500)
,p_name=>'P291_ITEMCODE1'
,p_item_sequence=>1510
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38275598062096500)
,p_name=>'P291_S_PRDTYP'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prdoctyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38275973911096500)
,p_name=>'P291_COMPCODE_APPLICATION'
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38276391234096500)
,p_name=>'P291_TABULARITEMCODE'
,p_item_sequence=>1540
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38276769653096500)
,p_name=>'P291_S_PRSTYP'
,p_item_sequence=>1550
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prsubtyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38277145785096500)
,p_name=>'P291_TABCOSTRATE'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38277602177096500)
,p_name=>'P291_TABITEMDESC'
,p_item_sequence=>1570
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38277978718096502)
,p_name=>'P291_TABITEMRATE'
,p_item_sequence=>1580
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38278367219096502)
,p_name=>'P291_TABITEMUNIT'
,p_item_sequence=>1590
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38278719343096505)
,p_name=>'P291_TABCLOSINGBALANCE'
,p_item_sequence=>1600
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38279180398096505)
,p_name=>'P291_TABITEMTYPE'
,p_item_sequence=>1610
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38279594491096506)
,p_name=>'P291_TABCOMMGRUP'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38279952633096506)
,p_name=>'P291_DOCNUMBR'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_prompt=>'Tran No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38280349676096506)
,p_name=>'P291_TABSALEPERC'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38280748695096508)
,p_name=>'P291_DOCTDATE'
,p_item_sequence=>1650
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Tran Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>4000
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_CUSTOMERID'')"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38281132422096508)
,p_name=>'P291_PRVDNO'
,p_item_sequence=>1660
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.docnumbr||'' / ''||',
'                  a.doctdate||'' / ''||',
'                  b.waredesc||'' / ''||',
'                  a.warecode D,a.docnumbr R',
'    FROM nmstkrec a, nmwhsmas b',
'   WHERE     a.compcode = b.compcode',
'         AND a.warecode = b.warecode',
'         AND a.compcode = :compcode',
'         AND a.docttype = :P291_S_PRDTYP',
'         AND a.subttype = :P291_S_PRSTYP',
'         AND a.statuscd <> ''NEW'' /*and nvl(a.warecode,''A'')=nvl(:crq2.s_locncode,nvl(a.warecode,''A''))*/',
'        ',
'         AND a.apprqnty - (NVL (a.trnsqnty, 0) + NVL (a.trnsqty2, 0)) > 0 /*and a.warecode in (select warecode from sycstacc where compcode = :crq1.cacmpcde and grupcode = :crq1.causridn)*/',
'         AND a.',
'              srcwrecd IN',
'                (SELECT warecode',
'                   FROM sycstacc',
'                  WHERE compcode =:compcode',
'                        AND grupcode =:APP_USER)',
'ORDER BY 2 desc'))
,p_lov_cascade_parent_items=>'P291_S_PRDTYP,P291_S_PRSTYP'
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
 p_id=>wwv_flow_api.id(38281613159096508)
,p_name=>'P291_PRVDDT'
,p_item_sequence=>1680
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_prompt=>'Request Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38281948030096508)
,p_name=>'P291_REFNUM'
,p_item_sequence=>1690
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_prompt=>'Ext. Ref. No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38282376792096508)
,p_name=>'P291_REFNDATE'
,p_item_sequence=>1700
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_prompt=>'Ext. Ref. Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38282748231096508)
,p_name=>'P291_STYLENO'
,p_item_sequence=>1710
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38283195999096508)
,p_name=>'P291_MODAL'
,p_item_sequence=>1720
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38283527026096508)
,p_name=>'P291_UNITOFMESURE'
,p_item_sequence=>1730
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
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
 p_id=>wwv_flow_api.id(38284016459096510)
,p_name=>'P291_BATCHITEMCODE'
,p_item_sequence=>1740
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38285087915096510)
,p_name=>'P291_SRWHSCDE'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
,p_prompt=>'Source Whs. Cd.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select waredesc||'' (''||warecode||'')'',warecode from nmwhsmas ',
'where compcode = :compcode  ',
'order by warecode'))
,p_cSize=>8
,p_cMaxlength=>4000
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
 p_id=>wwv_flow_api.id(38285424734096510)
,p_name=>'P291_SRWHSNME'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38285832439096511)
,p_name=>'P291_SRCSTCDE'
,p_item_sequence=>1105
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38286226372096511)
,p_name=>'P291_SRCSTNME'
,p_item_sequence=>1108
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38286707498096511)
,p_name=>'P291_DSWHSCDE'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Destination Whs. Cd.'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38287026388096511)
,p_name=>'P291_DSWHSNME'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(38287438291096511)
,p_name=>'P291_SRCCOMPNM'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38287828610096511)
,p_name=>'P291_SRCCOMPDS'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38288227028096511)
,p_name=>'P291_COSTCODE'
,p_item_sequence=>1370
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38288677783096513)
,p_name=>'P291_COSTCENTERNAME'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38289115500096513)
,p_name=>'P291_SRCCOSTCD'
,p_item_sequence=>1510
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38289476568096513)
,p_name=>'P291_SRCCOSTDS'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   INITCAP (costdesc) costdesc',
'    FROM syjobmas',
'   WHERE compcode = :compcode ',
'and costcode=:P291_SRCCOSTCD',
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
 p_id=>wwv_flow_api.id(38289832190096513)
,p_name=>'P291_APRPERSON'
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38290261509096513)
,p_name=>'P291_APRPERSNM'
,p_item_sequence=>1550
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38290693799096513)
,p_name=>'P291_RAISEDBY'
,p_item_sequence=>1590
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
,p_use_cache_before_default=>'NO'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38291105553096514)
,p_name=>'P291_RAISEDNAME'
,p_item_sequence=>1600
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
,p_use_cache_before_default=>'NO'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38291469230096514)
,p_name=>'P291_CUSTOMTYPE'
,p_item_sequence=>1610
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38291841729096514)
,p_name=>'P291_CUSTOMERID'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38292312998096514)
,p_name=>'P291_CUSTOMERNAME'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38292658529096514)
,p_name=>'P291_LOVCOSTCODE'
,p_item_sequence=>1680
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
,p_attribute_07=>'P291_COSTCODE'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38293106783096516)
,p_name=>'P291_LOVSALMANID'
,p_item_sequence=>1800
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
'            AND w.costcode = :P291_COSTCODE'))
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
,p_attribute_07=>'P291_SALMANID'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38293435532096516)
,p_name=>'P291_SALMANID'
,p_item_sequence=>1850
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38293837136096516)
,p_name=>'P291_WARECODE'
,p_item_sequence=>2320
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38294290576096516)
,p_name=>'P291_SALMNNAME'
,p_item_sequence=>2330
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38294675691096516)
,p_name=>'P291_SOURCEWARECODE'
,p_item_sequence=>2340
,p_item_plug_id=>wwv_flow_api.id(125653210293761997)
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
 p_id=>wwv_flow_api.id(38323511491096574)
,p_name=>'P291_TABTOTDISAM'
,p_item_sequence=>1620
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Total Discount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
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
 p_id=>wwv_flow_api.id(43789073771693098)
,p_name=>'P291_PUR_DOCNUMBR'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_api.id(125642585656761987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38323934051096575)
,p_validation_name=>'Docdate validation for tabular'
,p_validation_sequence=>10
,p_validation=>'P291_DOCTDATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(38322223386096553)
,p_associated_item=>wwv_flow_api.id(38280748695096508)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38324275039096575)
,p_validation_name=>'Costcode  validation for tabular'
,p_validation_sequence=>30
,p_validation=>'P291_SRWHSCDE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(38322223386096553)
,p_associated_item=>wwv_flow_api.id(38285087915096510)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38324707272096575)
,p_validation_name=>'P291_SUBTTYPE'
,p_validation_sequence=>60
,p_validation=>'P291_SUBTTYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(38322223386096553)
,p_associated_item=>wwv_flow_api.id(38273919562096500)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38325095667096575)
,p_validation_name=>'P291_SRCCOMPNM'
,p_validation_sequence=>70
,p_validation=>'P291_SRCCOMPNM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(38322223386096553)
,p_associated_item=>wwv_flow_api.id(38287438291096511)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38325469803096575)
,p_validation_name=>'P291_SRCCOSTCD'
,p_validation_sequence=>80
,p_validation=>'P291_SRCCOSTCD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(38322223386096553)
,p_associated_item=>wwv_flow_api.id(38289115500096513)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38325842399096575)
,p_validation_name=>'P291_APRPERSON'
,p_validation_sequence=>90
,p_validation=>'P291_APRPERSON'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(38322223386096553)
,p_associated_item=>wwv_flow_api.id(38289832190096513)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38319269554096549)
,p_tabular_form_region_id=>wwv_flow_api.id(154290531049133190)
,p_validation_name=>'Issue Qty'
,p_validation_sequence=>110
,p_validation=>'ISSQTY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#LABEL# must have some value'
,p_when_button_pressed=>wwv_flow_api.id(38321101481096552)
,p_associated_column=>'ISSQTY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38319665805096549)
,p_tabular_form_region_id=>wwv_flow_api.id(154290531049133190)
,p_validation_name=>'Compare approve qty and Issue Qty'
,p_validation_sequence=>130
,p_validation=>'to_number(NVL(:ISSQTY,0)) <= to_number(NVL(:APPRQNTY,0))'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#LABEL# must be less then Approve Qty.'
,p_when_button_pressed=>wwv_flow_api.id(38321101481096552)
,p_associated_column=>'ISSQTY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13867238544151302)
,p_tabular_form_region_id=>wwv_flow_api.id(154290531049133190)
,p_validation_name=>'Batch Qty not null'
,p_validation_sequence=>140
,p_validation=>'ND_BATCH_QTY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#LABEL# must have some value'
,p_when_button_pressed=>wwv_flow_api.id(38321101481096552)
,p_associated_column=>'ND_BATCH_QTY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13867084367151301)
,p_tabular_form_region_id=>wwv_flow_api.id(154290531049133190)
,p_validation_name=>'Compare batch qty and Issue Qty'
,p_validation_sequence=>150
,p_validation=>'to_number(NVL(:ISSQTY,0)) <= to_number(NVL(:ND_BATCH_QTY,0))'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#LABEL# must be less then Approve Qty.'
,p_when_button_pressed=>wwv_flow_api.id(38321101481096552)
,p_associated_column=>'ND_BATCH_QTY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43788846959693096)
,p_tabular_form_region_id=>wwv_flow_api.id(154290531049133190)
,p_validation_name=>'Stock value compare'
,p_validation_sequence=>160
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'qty Number;',
'Begin',
'',
'for i in (Select Nvl(Sum(CLBALQTY),0)  CLBALQTY',
'						  	from   NMWHIMAS',
'						  	where  COMPCODE = :P291_COMPCODE_APPLICATION',
'						  	and    WARECODE = :P291_SRWHSCDE',
'						  	AND    NVL(BATCHNUM,''a'') = NVL(:BATCHNUM,NVL(BATCHNUM,''a''))',
'						  	and    ITEMCODE = :ITEMCODE) ',
' loop',
' if i.CLBALQTY=0 or i.CLBALQTY < :TRNSQNTY then',
' return ''This item: ''||:ITEMCODE||''is Not Available in Warehouse''||''or This item Qty''||:TRNSQNTY||''more than ''||i.CLBALQTY;',
' else',
' return null;',
' end if;',
' end loop;',
'                            /*Select Nvl(Sum(CLBALQTY),0) into :P291_REFNUM',
'						  	from   NMWHIMAS',
'						  	where  COMPCODE = :P291_COMPCODE_APPLICATION',
'						  	and    WARECODE = :P291_SRWHSCDE',
'						  	AND    NVL(BATCHNUM,''a'') = NVL(:BATCHNUM,NVL(BATCHNUM,''a''))',
'						  	and    ITEMCODE = :ITEMCODE;',
'						  Exception',
'						    When No_Data_Found then',
'                            return ''Item Not Available in Warehouse'';',
'						       --  raise_application_error(-20001,''Item Not Available in Warehouse'');',
'						    When Too_Many_Rows then',
'                            return ''More records found in Table...Contact System Administrator'';',
'						      --   raise_application_error(-20001,''More records found in Table...Contact System Administrator'');*/',
'                                 ',
'    /*  if qty < :TRNSQNTY then',
'      return ''Item Not Available in Warehouse'';',
'      else',
'      return null;',
'      end if;*/',
'                                 ',
'End;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(38322223386096553)
,p_exec_cond_for_each_row=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38327831386096580)
,p_name=>'change on costcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P291_COSTCODE'
,p_condition_element=>'P291_COSTCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38328318443096580)
,p_event_id=>wwv_flow_api.id(38327831386096580)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P291_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.warecode',
'into :P291_WARECODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P291_COSTCODE)',
'     AND costcode = :P291_COSTCODE',
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
'IF :P291_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct COSTDESC ',
'into :P291_COSTCENTERNAME',
'from syjobmas',
'where compcode = :compcode',
'AND costcode = :P291_COSTCODE;',
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
'IF :P291_COSTCODE IS NOT NULL and :P291_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT distinct SMANCODE',
'into :P291_SALMANID',
'        FROM nmsalrec',
'       WHERE docnumbr = :p291_docnumbr1',
'         AND DOCTDATE = :P291_DOCTDATE',
'         AND COSTCODE = :P291_COSTCODE;',
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
,p_attribute_02=>'P291_COSTCODE,P291_DOCNUMBR1,P291_DOCTDATE'
,p_attribute_03=>'P291_COSTCENTERNAME,P291_SALMANID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38329666899096580)
,p_name=>'change on trantype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P291_TRANTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38330165929096580)
,p_event_id=>wwv_flow_api.id(38329666899096580)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select distinct TRANTYPE,SUBTTYPE ',
'into :P291_DOCTTYPE,:P291_SUBTTYPE',
'from SYDOCMAS ',
'where COMPCODE = :COMPCODE ',
'AND TRANTYPE=''IS''',
'AND SUBTTYPE=:P291_TRANTYPE',
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
'into :P291_PRDTYP,:P291_PRSTYP',
'        from   NMWRKFLW',
'        where  COMPCODE = :COMPCODE ',
'        and    TRDOCTYP = :P291_DOCTTYPE',
'        and    TRSUBTYP = :P291_SUBTTYPE;',
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
'into :P291_PRVREF',
'  FROM sydocmas',
' WHERE compcode = :compcode ',
'   AND trantype = :P291_PRDTYP',
'   AND subttype = :P291_PRSTYP',
'   AND :P291_DOCTDATE BETWEEN strtperd AND endperd',
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
,p_attribute_02=>'P291_TRANTYPE,P291_DOCTDATE,P291_PRDTYP,P291_PRSTYP,P291_DOCTTYPE,P291_SUBTTYPE'
,p_attribute_03=>'P291_DOCTTYPE,P291_SUBTTYPE,P291_PRDTYP,P291_PRSTYP,P291_PRVREF'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38352415218096589)
,p_name=>'change on P291_PRVDNO'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P291_PRVDNO'
,p_condition_element=>'P291_PRVDNO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38352849421096589)
,p_event_id=>wwv_flow_api.id(38352415218096589)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'If :P291_PRVDNO is not null then',
'  Begin',
'   	Select distinct DOCTDATE',
'   	into   :P291_PRVDDT',
'   	from   NMSTKREC',
'   	where  COMPCODE = :COMPCODE ',
'   	and    DOCTTYPE = :P291_S_PRDTYP',
'   	and    SUBTTYPE = :P291_S_PRSTYP',
'   	and    DOCNUMBR = :P291_PRVDNO;',
'   Exception',
'   	When No_Data_Found then',
'   	     null;',
'     When Too_Many_Rows then',
'          null;',
'   End;',
'end if;',
'END;',
'begin',
'If :P291_PRVDNO  is not null then',
'  Begin',
'   	Select distinct costcode,refnumbr,refndate,SRCWRECD,BATCHNUM',
'   	into   :P291_SRCCOSTCD,:P291_REFNUMBR,:P291_REFNDATE,:P291_SRWHSCDE,:P291_STYLENO',
'   	from   NMSTKREC',
'   	where  COMPCODE = :COMPCODE ',
'   	and    DOCTTYPE = :P291_S_PRDTYP',
'   	and    SUBTTYPE = :P291_S_PRSTYP',
'   	and    DOCNUMBR = :P291_PRVDNO',
'   	and    DOCTDATE = :P291_PRVDDT;',
'   Exception',
'   	When No_Data_Found then',
'   	     null;',
'     When Too_Many_Rows then',
'          null;',
'   End;',
'Begin',
'  If :P291_SRCCOSTCD is not null then ',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P291_SRCCOSTDS',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P291_SRCCOSTCD ;',
'	   Select warecode,waredesc',
'   	 into   :P291_DSWHSCDE,:P291_DSWHSNME',
'   	 from   nmwhsmas',
'   	 where  compcode = :COMPCODE ',
'   	 and    costcode = :P291_SRCCOSTCD;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then ',
'          Null;',
'   End;	',
'  End if;',
'End; ',
'  ',
'End If;  ',
'end;',
''))
,p_attribute_02=>'P291_PRDTYP,P291_PRSTYP,P291_PRVDNO,P291_PRVDDT,P291_SRCCOSTCD'
,p_attribute_03=>'P291_STYLENO,P291_PRVDDT,P291_SRCCOSTCD,P291_REFNUMBR,P291_REFNDATE,P291_SRCCOSTDS,P291_DSWHSCDE,P291_DSWHSNME,P291_SRWHSCDE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38353363567096589)
,p_event_id=>wwv_flow_api.id(38352415218096589)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(154290531049133190)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38353860705096589)
,p_event_id=>wwv_flow_api.id(38352415218096589)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(154290531049133190)
,p_attribute_01=>'$(''#cstmEmployees'').slideDown(1000);'
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
 p_id=>wwv_flow_api.id(38354304775096589)
,p_name=>'change  on P291_SRWHSCDE'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P291_SRWHSCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38354775633096589)
,p_event_id=>wwv_flow_api.id(38354304775096589)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_result number;',
'l_no number;',
'requestno varchar2(20);',
'docnum varchar2(500);',
'begin',
'begin',
'Docnumber_Generation(:P291_COMPCODE_APPLICATION, ''NM'', ''PR'',1, :P291_DOCTDATE, null, --:P291_SRWHSCDE,',
'                     ''NM'', requestno); ',
' ',
':P291_PUR_DOCNUMBR:= requestno;  ',
'',
'exception',
'when no_data_found then',
'--:P291_PUR_DOCNUMBR:= null;',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'--:P291_PUR_DOCNUMBR:=null;',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'end;',
'',
'begin',
'   	Select waredesc,costcode',
'   	into   :P291_SRWHSNME,:P291_SRCSTCDE',
'   	from   nmwhsmas',
'   	where  compcode = :compcode ',
'   	and    warecode = :P291_SRWHSCDE;',
'   Exception',
'   	When No_Data_Found then',
'   	     apex_application.g_print_success_message:=''Invalid Warehouse code...Select valid values from the list'';',
'',
'     When Too_Many_Rows then',
'         apex_application.g_print_success_message:=''More records found in Table...Contact System Administrator'';',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'   End; ',
' ',
'Begin',
'  If :P291_SRCSTCDE is not null then',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P291_SRCSTNME',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P291_SRCSTCDE ;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);          ',
'          ',
'   End;	',
'  End if;',
'  end;',
'End;'))
,p_attribute_02=>'P291_COMPCODE_APPLICATION,P291_DOCTDATE,P291_SRWHSCDE,P291_SRCSTCDE'
,p_attribute_03=>'P291_PUR_DOCNUMBR,P291_SRWHSNME,P291_SRCSTCDE,P291_SRCSTNME'
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
 p_id=>wwv_flow_api.id(38356034396096591)
,p_name=>'refresh on tabular region'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P291_REFNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38356566589096595)
,p_event_id=>wwv_flow_api.id(38356034396096591)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38357000172096597)
,p_name=>'disable field after refresh'
,p_event_sequence=>380
,p_triggering_element_type=>'REGION'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38357464088096597)
,p_event_id=>wwv_flow_api.id(38357000172096597)
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
 p_id=>wwv_flow_api.id(13866378389151294)
,p_name=>'change  on P291_DSWHSCDE'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P291_DSWHSCDE'
,p_condition_element=>'P291_DSWHSCDE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13866459281151295)
,p_event_id=>wwv_flow_api.id(13866378389151294)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   	Select waredesc,costcode',
'   	into   :P291_DSWHSNME,:P291_SRCCOSTCD',
'   	from   nmwhsmas',
'   	where  compcode = :compcode ',
'   	and    warecode = :P291_DSWHSCDE;',
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
'  If :P291_SRCCOSTCD is not null then',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P291_SRCCOSTDS',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P291_SRCCOSTCD ;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
'  End if;',
'  end;'))
,p_attribute_02=>'P291_DSWHSCDE,P291_SRCCOSTCD'
,p_attribute_03=>'P291_DSWHSNME,P291_SRCCOSTCD,P291_SRCCOSTDS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61242284282629779)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(154290531049133190)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Insert nmstkrec'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(38322223386096553)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38319971962096549)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(154290531049133190)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert stkrec'
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
'                srcwrecd, sndpersn, srccmpcd',
'               )',
'        VALUES (:P291_COMPCODE_APPLICATION, :P291_DOCTTYPE, :P291_SUBTTYPE,',
'                :P291_DOCNUMBR, :P291_DOCTDATE, :SERLNUMB, NULL, :APP_USER,',
'                NULL, NULL, :P291_DOCTDATE, :COMMCODE, :ITEMCODE, :ITEMTYPE,',
'                NULL, :ITEMDESC, :ITEMDESC, :ITEMRATE, NULL, NULL,',
'                NULL, NULL, :ITEMRATE, :LUOMCODE, NULL, :LUOMCODE,',
'                :ORGNQNTY, :trnsqnty, :msfcamnt, :currcode, 1, :mslcamnt,',
'                NULL, :P291_DOCTDATE, :P291_S_PRDTYP, :P291_S_PRSTYP, :P291_PRVDNO, :P291_PRVDDT,',
'                NULL, :REMARKSS, :P291_SRCCOSTCD, :P291_SRWHSCDE, ''NEW'',',
'                :APP_USER, :BATCHNUM, NULL, :costrate, :ISSQTY, --:trnsqnty,',
'                :P291_SRWHSCDE, :APP_USER, :P291_SRCCOMPNM',
'               );',
'                  INSERT INTO nmstkrec',
'               (compcode, docttype, subttype,',
'                docnumbr, doctdate, serlnumb, partycde, raisedby,',
'                apprvdby, apprdate, reqddate, commcode, itemcode, itemtype,',
'                mcserial, itemdesc, itemlong, itemrate, discpcnt, discamnt,',
'                spldispc, spldisnt, salerate, huomcode, factrval, luomcode,',
'                orgnqnty, apprqnty, msfcamnt, currcode, excgrate, mslcamnt,',
'                refnumbr, refndate, updoctyp, upsubtyp, updocnum, updocdte,',
'                updocsrl, remarkss, costcode, warecode, statuscd,',
'                oprstamp, batchnum, normrate, costrate, trnsqnty,',
'                srcwrecd, sndpersn, srccmpcd',
'               )',
'        VALUES (:P291_COMPCODE_APPLICATION, ''MR'', 11,',
'                :P291_DOCNUMBR, :P291_DOCTDATE, :SERLNUMB, NULL, :APP_USER,',
'                NULL, NULL, :P291_DOCTDATE, :COMMCODE, :ITEMCODE, :ITEMTYPE,',
'                NULL, :ITEMDESC, :ITEMDESC, :ITEMRATE, NULL, NULL,',
'                NULL, NULL, :ITEMRATE, :LUOMCODE, NULL, :LUOMCODE,',
'                :ORGNQNTY, :trnsqnty, :msfcamnt, :currcode, 1, :mslcamnt,',
'                NULL, :P291_DOCTDATE, :P291_S_PRDTYP, :P291_S_PRSTYP, :P291_PRVDNO, :P291_PRVDDT,',
'                NULL, :REMARKSS, :P291_SRCCOSTCD, :P291_SRWHSCDE, ''NEW'',',
'                :APP_USER, :BATCHNUM, NULL, :costrate, :ISSQTY, --:trnsqnty,',
'                :P291_SRWHSCDE, :APP_USER, :P291_SRCCOMPNM',
'               );',
'END;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(38321101481096552)
,p_process_success_message=>'Record generate successfully<br>Requisition No. : &P291_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43789181434693099)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'docnumber generate_for purchase request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'requestno varchar2(20);',
'docnum varchar2(500);',
'begin',
'Docnumber_Generation(:P291_COMPCODE_APPLICATION, ''NM'', ''PR'',1, :P291_DOCTDATE,:P291_SRWHSCDE,''NM'', requestno);',
' ',
':P291_PUR_DOCNUMBR:= requestno;  ',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'--raise_application_error(-20001,''Others Problem 11'');',
'raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43789246132693100)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43789012526693097)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(154290531049133190)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send Purchase Requisition'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'	newno varchar2(50);',
'	S_REC NUMBER;',
'	s_count number;',
'	s_docno varchar2(50);',
'	Alert_Ret number;',
'    requestno varchar2(30);',
'	',
'	/* Cursor Cur_Altflw    Is',
'					Select *  From Nmaltflw',
'					Where Upper (Rqstprog) = Upper(:PROGNAME)',
'					And Upper (Senduser) = Upper (:APP_USER);',
'',
'   Rec         Cur_Altflw%Rowtype;',
'                            ',
'   Cursor Cur_Jobs Is',
'					Select Paramval  From Sypndjob',
'					Where  Upper (Raisedby) = Upper (:APP_USER)',
'					And Upper (Progname) = Upper (:PROGNAME)',
'					And Actvstat = 1;*/',
'                            ',
'   S_Val       Varchar2 (50);',
'   S_Jobsnum   Number;',
'                            ',
'BEGIN',
'',
'begin',
'    requestno:=:P291_PUR_DOCNUMBR;',
' ',
'    Docnumber_Generation(:P291_COMPCODE_APPLICATION, ''NM'', ''PR'',1, :P291_DOCTDATE,:P291_SRWHSCDE,''NM'', requestno); ',
' ',
'    :P291_PUR_DOCNUMBR:= requestno;  ',
'',
'/*exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,''Others Problem 12'');*/',
'',
'end;',
'--if :P291_PUR_DOCNUMBR is not null then',
'		begin',
'					select count(*) 	into s_count',
'					from nmprocur',
'					where UPDOCNUM = :P291_PRVDNO',
'					and UPDOCTYP = :P291_S_PRDTYP',
'					and UPSUBTYP = :P291_S_PRSTYP',
'					And COMPCODE=:P291_COMPCODE_APPLICATION',
'                    and ITEMCODE = :ITEMCODE;',
'			',
'		exception',
'			when no_data_found then',
'			 s_count:=0;',
'			when too_many_rows then',
'			 s_count:=0;',
'			when others then',
'			 s_count:=0;',
'		end;',
'',
'if s_count = 0 then		',
'for i in (Select Nvl(Sum(CLBALQTY),0)  CLBALQTY',
'						  	from   NMWHIMAS',
'						  	where  COMPCODE = :P291_COMPCODE_APPLICATION',
'						  	and    WARECODE = :P291_SRWHSCDE',
'						  	AND    NVL(BATCHNUM,''a'') = NVL(:BATCHNUM,NVL(BATCHNUM,''a''))',
'						  	and    ITEMCODE = :ITEMCODE) ',
' loop',
' if  i.CLBALQTY < :TRNSQNTY then',
' DPR_INSERT_NMPROCUR (:P291_COMPCODE_APPLICATION,',
'                        ''PR'',',
'                        1,',
'                        :P291_PUR_DOCNUMBR,',
'                        TRUNC(SYSDATE),',
'                        :SERLNUMB, --:crq3.serlnumb,',
'                        NULL,',
'                        NULL, --:crq3.smancode,',
'                        :APP_USER, --:crq3.raisedby,',
'                        :APP_USER, --:crq3.apprvdby,',
'                        SYSDATE, --:crq3.apprdate,',
'                        SYSDATE, --:crq3.reqddate,',
'                        :LUOMCODE,',
'                        :ITEMCODE,',
'                        :ITEMTYPE,',
'                        :ITEMDESC,',
'                        :ITEMDESC,',
'                        :ITEMRATE,',
'                        NULL, --:crq3.markpcnt,',
'                        :DISCPCNT,',
'                        :DISCAMNT,',
'                        NULL,',
'                        NULL,',
'                        :SALERATE,',
'                        :LUOMCODE,',
'                        :FACTRVAL,',
'                        :LUOMCODE,',
'                        nvl(:TRNSQNTY,0)-nvl(i.CLBALQTY,0),',
'                        nvl(:TRNSQNTY,0)-nvl(i.CLBALQTY,0),--APPRQNTY',
'                        NULL, --TRNSQNTY',
'                        :MSFCAMNT,',
'                        :CURRCODE,',
'                        :EXCGRATE,',
'                        :MSLCAMNT,',
'                        :PARTYCDE, --:crq3.refnumbr,',
'                        SYSDATE, --:crq3.refndate,',
'                        :P291_S_PRDTYP,',
'                        :P291_S_PRSTYP,',
'                        :P291_PRVDNO,',
'                        :P291_DOCTDATE,',
'                        :SERLNUMB,',
'                        NULL,',
'                        NULL,',
'                        NULL,',
'                        NULL,',
'                        NULL,',
'                        NULL,',
'                        NULL,',
'                        NULL,',
'                        NULL,',
'                        NULL,',
'                        :REMARKSS,',
'                        :P291_SRCSTCDE, --costcode,',
'                        :P291_SRWHSCDE, --warecode,',
'                        ''N'',------Post Flag',
'                        --:crq3.postflag,------Post Flag',
'                        NULL,',
'                        NULL,',
'                        ''NEW'', --:crq3.statuscd,',
'                        :APP_USER,',
'                        NULL, --:crq3.itpicdir,',
'                        NULL, --:crq3.itfildir,',
'                        NULL, --:crq3.clsgdate,',
'                        NULL, --:crq3.acctcode,',
'                        NULL, --:crq3.acctcate,',
'                        NULL, --:crq3.budgcode,',
'                        NULL, --:crq3.delydate,',
'                        NULL, --:crq3.ballpqty,',
'                        NULL, --:crq3.payamtfc,',
'                        NULL, --:crq3.payamtlc,',
'                        NULL, --:crq3.luomdesc,',
'                        NULL, --:crq3.itemratp,',
'                        NULL, --:crq3.itrfdate,',
'                        NULL, --:crq3.saleratp,',
'                        NULL, --:crq3.intreqno,',
'                        :COSTRATE,',
'                        NULL --:crq3.designcd                        ',
'                       );',
'end if;',
' end loop;',
'  -- :P291_PUR_DOCNUMBR:= newno;  ',
'    --  NEXT_RECORD;				',
'--  END LOOP;',
'--  FIRST_RECORD;',
'  --base_message_box(''Request Send Succussfully'');',
'  ',
'--   Open Cur_Jobs;Fetch Cur_Jobs Into S_Val;Close Cur_Jobs;',
'    If S_Val Is Null Then',
'    ',
'	    Begin',
'	    Select Nvl (Max (Jobsnumb) + 1, 0)    Into S_Jobsnum       ',
'	    From Sypndjob    Where Compcode = :P291_COMPCODE_APPLICATION;',
'	                                ',
'	    Exception When Others     Then',
'	     Null;',
'	    End;',
'	    ',
'   -- Open Cur_Altflw;  Fetch Cur_Altflw Into Rec;Close Cur_Altflw;',
'                            ',
'    /*  Insert Into Sypndjob (Compcode, Jobsnumb, Progname, Raisedby, Paramtbl, Paramfld,',
'                            Paramval, Conditin, Checkedd, Remarkss, Priority, Actvstat,',
'                            Authpers, Oprstamp)',
'                            Values (:P291_COMPCODE_APPLICATION, S_Jobsnum, Rec.Callprog,:APP_USER, requestno, ''docnumbr'',',
'                            newno,'' docnumbr='' ||requestno,''N'',Rec.Remarkss||'':''||newno,''High'',1,',
'                            null, :APP_USER);*/-- Rec.Recvuser',
'   End If;',
'  -- base_message_box(''Request send succussfully with generated no :''||newno);',
' -- END IF;',
'     ',
'  ',
'  ELSE',
'  null;',
'  	begin',
'						select docnumbr 	into s_docno',
'						from nmprocur',
'						where UPDOCNUM = :P291_PRVDNO',
'						and UPDOCTYP = :P291_S_PRDTYP',
'						and UPSUBTYP = :P291_S_PRSTYP',
'						And COMPCODE=:P291_COMPCODE_APPLICATION',
'                        and ITEMCODE = :ITEMCODE;',
'	',
'exception',
'	when no_data_found then',
'	 s_count:=0;',
'	when too_many_rows then',
'	 s_count:=0;',
'	when others then',
'	 s_count:=0;',
'end;',
'  	raise_application_error(-20001,''This Request Already Send and Request No is...''||s_docno);',
' -- end if;',
'END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PURCHASE_REQUEST'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'Record generate successfully<br>Requisition No. : &P291_PUR_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38326602428096575)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'87'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(38322223386096553)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38326180793096575)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'docnumber generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
'',
'docnumber_generation(:P291_COMPCODE_APPLICATION, ''NM'', :P291_DOCTTYPE,',
'                     :P291_SUBTTYPE, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''), null, --:P291_SRWHSCDE, --:P291_DSWHSCDE,',
'                     ''NM'', newno);',
' ',
':P291_DOCNUMBR:= newno;  ',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,''Docnumber Generation Others Problem '');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(38321101481096552)
,p_process_success_message=>'Record generate successfully<br>Requisition No. : &P291_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61242075958629777)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(154290531049133190)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre-Insert nmstkrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
':COMPCODE:=:P291_COMPCODE_APPLICATION;',
':DOCTTYPE:=:P291_DOCTTYPE; ',
':SUBTTYPE:=:P291_SUBTTYPE;',
':DOCTDATE:=:P291_DOCTDATE;',
':ITEMTYPE:=''S'';',
'--:ITEMRATE:=:P291_TABITEMRATE;',
':OPRSTAMP:=:APP_USER;',
':TIMSTAMP:=SYSDATE;',
':RAISEDBY:=:APP_USER;',
':REQDDATE:=SYSDATE;',
':ITEMLONG:=:ITEMDESC;',
':HUOMCODE:=:LUOMCODE;',
':CURRCODE:=''BDT'';',
':FACTRVAL:=1;',
':APPRQNTY:=:ORGNQNTY;',
':DISCAMNT:=((nvl(:ITEMRATE,0)*nvl(:ORGNQNTY,0))*nvl(:DISCPCNT,0)/100);',
':MSLCAMNT:=(nvl(:ITEMRATE,0)*nvl(:ORGNQNTY,0))-((nvl(:ITEMRATE,0)*nvl(:ORGNQNTY,0))*nvl(:DISCPCNT,0)/100);',
':MSFCAMNT:=(nvl(:ITEMRATE,0)*nvl(:ORGNQNTY,0))-((nvl(:ITEMRATE,0)*nvl(:ORGNQNTY,0))*nvl(:DISCPCNT,0)/100);',
':EXCGRATE:=1;',
':REFNDATE:=SYSDATE;',
':COSTCODE:=:P291_SRCCOSTCD;',
':WARECODE:=:P291_DSWHSCDE;',
':STATUSCD:=''NEW'';',
':PRICFLAG:=''N'';',
':postflag:=nvl(:postflag,''N''); ',
':DOCNUMBR:=:P291_DOCNUMBR;',
':SRCWRECD:=:P291_SRWHSCDE;',
':UPDOCTYP:=:P291_S_PRDTYP;',
':UPSUBTYP:=:P291_S_PRSTYP;',
':UPDOCNUM:=:P291_PRVDNO;',
':UPDOCDTE:=:P291_PRVDDT;',
':srccmpcd:=:P291_SRCCOMPNM;',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,''Others Problem''||:P291_WARECODE ||'' warecode not found in SYDOCMAS for Docnumber Generate'');',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(38322223386096553)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
