prompt --application/pages/page_00303
begin
--   Manifest
--     PAGE: 00303
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
 p_id=>303
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Sales Invoice'
,p_page_mode=>'MODAL'
,p_step_title=>'Sales Invoice'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function setitemcode()',
'{',
'var grid = apex.region("invoice").widget().interactiveGrid("getViews", "grid");  ',
'var m = grid.model;  ',
' ',
'var selectedRow = grid.view$.grid("getSelection") ;  ',
' ',
'selectedRow.forEach(function(o, index) {  ',
'    var id          = $(selectedRow[index][0]).data(''id'');  ',
'    var record      = m.getRecord(id);',
'    var srl =id.substr(2, 4);',
'   // var itemcode=String(m.getValue(record,"ITEMCODE"));',
'     var itemcode=String(m.getValue(record,"ITEMCODE"));',
'    ',
'  //  $s(''P88_REFNUMBR'',sal);',
'    //alert(id);',
'   // alert(itemcode.options[itemcode.selectedIndex].text);',
'  //  console.log(itemcode);',
'  ',
'',
'   // document.getElementById(''P88_TABULARITEMCODE'').value=itemcode.options[itemcode.selectedIndex].text;',
'  /*  document.getElementById(''P303_TABULARITEMCODE'').value=itemcode.toString();',
'     $(document).ready(function(){',
'  $(''#P303_TABULARITEMCODE'').trigger(''click'');',
'});*/',
'   // alert(srl); ',
'    m.setValue(record, "SERLNUMB", srl ); ',
' //   m.setValue(record, "ORGNQNTY", trnsqnty);',
'//    m.setValue(record, "APPRQNTY", trnsqnty);',
' //   m.setValue(record, "LUOMCODE", document.getElementById(''P303_UNITOFMESURE'').value);',
' //   m.setValue(record, "ITEMDESC", document.getElementById(''P303_TABITEMDESC'').value);',
' //   m.setValue(record, "COMMCODE", document.getElementById(''P303_TABCOMMGRUP'').value);',
'    ',
'    ',
'/*apex.server.process ( ',
'  "MY_APP_PROCESS"',
',   {   x01: itemcode',
'    ,   x02: ''mysecond custom value''',
'    ,   x03: ''my third custom value''',
'    }',
' , { dataType: ''text''',
' ,success: function(pData){alert(pData)}',
'}',
'); */   ',
'});',
'//var ab=document.getElementById(''P308_TRNDATE'').value;',
'}',
'</script> ',
'',
'<script type="text/javascript">',
'function total()',
'{',
'var grid = apex.region("invoice").widget().interactiveGrid("getViews", "grid");  ',
'var m = grid.model;  ',
' ',
'var selectedRow = grid.view$.grid("getSelection") ;  ',
' ',
'selectedRow.forEach(function(o, index) {  ',
'    var id          = $(selectedRow[index][0]).data(''id'');  ',
'    var record      = m.getRecord(id);',
'     var discpcnt=Number(document.getElementById(''P303_DISCPCNT'').value);//Number(m.getValue(record,"DISCPCNT"));',
'    var vatpcnt=Number(document.getElementById(''P303_VATPRCNT'').value);//Number(m.getValue(record,"VATPRSNT"));',
'    var salerate=Number(m.getValue(record,"SALERATE"));',
'    var orgnqnty=Number(m.getValue(record,"APPRQNTY"));',
'    m.setValue(record, "MSLCAMNT", (salerate*orgnqnty));',
' //   alert(id+discpcnt);',
'/*    if (discpcnt != null ) {',
'         m.setValue(record, "MSLCAMNT", (salerate*orgnqnty)-((salerate*orgnqnty)*discpcnt/100)+((salerate*orgnqnty)*vatpcnt/100));',
'    }',
'    if (discpcnt == null ) {',
'         m.setValue(record, "MSLCAMNT", (salerate*orgnqnty));',
'    }*/',
'   ',
' ',
'});',
'}',
'</script>',
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'function getEmail(pUser) {',
'    var get = new htmldb_Get(null,$v(''pFlowId''),',
'                  ''APPLICATION_PROCESS=GET_EMAIL'',0);',
'    get.addParam(''x01'',pUser);',
'    gReturn = get.get();',
'    json_SetItems(gReturn);  ',
'}',
'',
'function getItem(pUser) {',
'    var get = new htmldb_Get(null,$v(''pFlowId''),',
'                  ''APPLICATION_PROCESS=GET_ITEM'',0);',
'    get.addParam(''x01'',pUser);',
'    gReturn = get.get();',
'    json_SetItems(gReturn);  ',
'}',
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
'function changesrl() {',
'  var grid        =',
'apex.region("invoice").widget().interactiveGrid("getViews","grid");',
'var model       = grid.model;',
'var record      = grid.getSelectedRecords();',
'',
'record.forEach(function(object,index) {',
'    model.setValue(record[index],"SERLNUMB",index);',
'});',
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
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20191118205407'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(188702414461370993)
,p_plug_name=>'installment'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
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
 p_id=>wwv_flow_api.id(250703338295785209)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>200
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(255031709068811764)
,p_plug_name=>'&P303_DISPLAY.'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_3'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(188688393666213582)
,p_plug_name=>'Sales Information'
,p_parent_plug_id=>wwv_flow_api.id(255031709068811764)
,p_region_template_options=>'#DEFAULT#:i-h220:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
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
 p_id=>wwv_flow_api.id(188686215605153714)
,p_plug_name=>'Order and Booking Details'
,p_parent_plug_id=>wwv_flow_api.id(188688393666213582)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P303_TRANTYPE'
,p_plug_display_when_cond2=>'S12'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(188761402087174699)
,p_plug_name=>'Sales Details'
,p_parent_plug_id=>wwv_flow_api.id(188688393666213582)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>15
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54325147971573073)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_api.id(188761402087174699)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(188691187395259067)
,p_plug_name=>'Sales Information'
,p_parent_plug_id=>wwv_flow_api.id(255031709068811764)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
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
 p_id=>wwv_flow_api.id(188688787217221173)
,p_plug_name=>'Customer Information'
,p_parent_plug_id=>wwv_flow_api.id(188691187395259067)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(188869299326486217)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(188691187395259067)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>85
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
 p_id=>wwv_flow_api.id(188871588516577739)
,p_plug_name=>'Item Details'
,p_parent_plug_id=>wwv_flow_api.id(188691187395259067)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>78
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(189547111984864418)
,p_plug_name=>'Multiple Item Invoice'
,p_region_name=>'invoice'
,p_parent_plug_id=>wwv_flow_api.id(188691187395259067)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'"VATPRSNT",',
'"VATAMONT",',
'"INTERESTED_BRAND",',
'"INTERESTED_MODEL",',
'"WGHTQNTY",',
'"CARAT",',
'"MAKING_CHARGE",',
'"CASH_AMOUNT",',
'"CARD_AMOUNT",',
'"ADVANCHED_AMOUNT",',
'"EXCHANGE_AMOUNT",',
'"NMFILENO",',
'null "STOCK_QTY"',
'from NMSALREC --"#OWNER#"."NMSALREC"',
'where DOCNUMBR=:P303_DOCNUMBR1 ',
'--and ITEMCODE=:P303_ITEMCODE1  ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P303_DOCNUMBR1,P303_ITEMCODE1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(36129809365971146)
,p_name=>'NMFILENO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMFILENO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>950
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38648297586292417)
,p_name=>'WGHTQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WGHTQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Weight'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>820
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
 p_id=>wwv_flow_api.id(38648674152292420)
,p_name=>'STOCK_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STOCK_QTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Stock<br>Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>840
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
 p_id=>wwv_flow_api.id(40648013607464406)
,p_name=>'CARAT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CARAT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Carat'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>860
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
 p_id=>wwv_flow_api.id(41041853078735826)
,p_name=>'MAKING_CHARGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAKING_CHARGE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Making<br>Charge'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>880
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
 p_id=>wwv_flow_api.id(41042201867735830)
,p_name=>'CASH_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CASH_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cash amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>900
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
 p_id=>wwv_flow_api.id(41042385049735831)
,p_name=>'CARD_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CARD_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Card amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>910
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
 p_id=>wwv_flow_api.id(42126348624178024)
,p_name=>'ADVANCHED_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADVANCHED_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>930
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(42126410555178025)
,p_name=>'EXCHANGE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCHANGE_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>940
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(54323937746573061)
,p_name=>'VATPRSNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VATPRSNT'
,p_data_type=>'NUMBER'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(54324258494573064)
,p_name=>'INTERESTED_BRAND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERESTED_BRAND'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Brand'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''STY''',
' and compcode=:COMPCODE'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(54324401651573065)
,p_name=>'INTERESTED_MODEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERESTED_MODEL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Model'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''MOD''  and MODLCODE = ''NM'''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(54324989203573071)
,p_name=>'VATAMONT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VATAMONT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>800
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(126717134724963653)
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
 p_id=>wwv_flow_api.id(126717264194963654)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Srl.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_api.id(126717356152963655)
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(126717492430963656)
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(126717552010963657)
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(126717714498963658)
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
 p_id=>wwv_flow_api.id(126717789253963659)
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(126717836737963660)
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
 p_id=>wwv_flow_api.id(126717939203963661)
,p_name=>'SMANCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SMANCODE'
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
 p_id=>wwv_flow_api.id(126718043160963662)
,p_name=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAISEDBY'
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
 p_id=>wwv_flow_api.id(126718154372963663)
,p_name=>'APPRVDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRVDBY'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(126718266965963664)
,p_name=>'APPRDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRDATE'
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
 p_id=>wwv_flow_api.id(126718364771963665)
,p_name=>'REQDDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQDDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
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
 p_id=>wwv_flow_api.id(126718454205963666)
,p_name=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'com code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>320
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>3
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
 p_id=>wwv_flow_api.id(126718523005963667)
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
,p_display_condition_type=>'ITEM_IS_NULL'
,p_display_condition=>'P303_DOCNUMBR1'
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
 p_id=>wwv_flow_api.id(126718717190963668)
,p_name=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
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
 p_id=>wwv_flow_api.id(126718808421963669)
,p_name=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(126718881282963670)
,p_name=>'ITEMLONG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMLONG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(126718954142963671)
,p_name=>'ITEMRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMRATE'
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
 p_id=>wwv_flow_api.id(126719066053963672)
,p_name=>'MARKPCNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MARKPCNT'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(126719164480963673)
,p_name=>'DISCPCNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCPCNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dis.<br>(%)'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>350
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(126719245032963674)
,p_name=>'DISCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dis.<br>Amount'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>370
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(126719394103963675)
,p_name=>'SPLDISPC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLDISPC'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
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
 p_id=>wwv_flow_api.id(126719485053963676)
,p_name=>'SPLDISNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLDISNT'
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
 p_id=>wwv_flow_api.id(126719550296963677)
,p_name=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALERATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sale Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_attributes=>'onfocus="setitemcode();total();"'
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
 p_id=>wwv_flow_api.id(126719685796963678)
,p_name=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HUOMCODE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(126719763963963679)
,p_name=>'FACTRVAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FACTRVAL'
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
 p_id=>wwv_flow_api.id(127433903184599630)
,p_name=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Measurement <br>(gm/mg)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>330
,p_value_alignment=>'CENTER'
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(127433962027599631)
,p_name=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGNQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
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
 p_id=>wwv_flow_api.id(127434066877599632)
,p_name=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>310
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_attributes=>'onfocus="total();"'
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
 p_id=>wwv_flow_api.id(127434131961599633)
,p_name=>'TRNSQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRNSQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>340
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
 p_id=>wwv_flow_api.id(127434295384599634)
,p_name=>'MSFCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSFCAMNT'
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
 p_id=>wwv_flow_api.id(127434376458599635)
,p_name=>'CURRCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRCODE'
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
,p_default_type=>'STATIC'
,p_default_expression=>'BDT'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(127434422230599636)
,p_name=>'EXCGRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCGRATE'
,p_data_type=>'NUMBER'
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
,p_default_type=>'STATIC'
,p_default_expression=>'1'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(127434604872599637)
,p_name=>'MSLCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSLCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total<br>Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>410
,p_value_alignment=>'LEFT'
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(127434697130599638)
,p_name=>'REFNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFNUMBR'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(127434758290599639)
,p_name=>'REFNDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFNDATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_api.id(127434826335599640)
,p_name=>'UPDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCTYP'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(127434926005599641)
,p_name=>'UPSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPSUBTYP'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_api.id(127435041303599642)
,p_name=>'UPDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>460
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
 p_id=>wwv_flow_api.id(127435171691599643)
,p_name=>'UPDOCDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCDTE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>470
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
 p_id=>wwv_flow_api.id(127435277233599644)
,p_name=>'UPDOCSRL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCSRL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>480
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
 p_id=>wwv_flow_api.id(127435327337599645)
,p_name=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>490
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
 p_id=>wwv_flow_api.id(127435453390599646)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
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
 p_id=>wwv_flow_api.id(127435541650599647)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
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
 p_id=>wwv_flow_api.id(127435684002599648)
,p_name=>'POSTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSTFLAG'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(127435731560599649)
,p_name=>'PRNTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRNTFLAG'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(127435829146599650)
,p_name=>'PRICFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICFLAG'
,p_data_type=>'VARCHAR2'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(127435933520599651)
,p_name=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUSCD'
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
 p_id=>wwv_flow_api.id(127436102909599652)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(127436132926599653)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_api.id(127436226337599654)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Stock<br>Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>150
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
 p_id=>wwv_flow_api.id(127436357777599655)
,p_name=>'TRANTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>580
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
 p_id=>wwv_flow_api.id(127436515733599656)
,p_name=>'EXPRDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPRDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>590
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
 p_id=>wwv_flow_api.id(127436536027599657)
,p_name=>'BANKNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANKNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>600
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
 p_id=>wwv_flow_api.id(127436711239599658)
,p_name=>'BANKBRCH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANKBRCH'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>610
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
 p_id=>wwv_flow_api.id(127436762138599659)
,p_name=>'CHEQUENO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHEQUENO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>620
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
 p_id=>wwv_flow_api.id(127436878849599660)
,p_name=>'CHEQUEDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHEQUEDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>630
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
 p_id=>wwv_flow_api.id(127436940557599661)
,p_name=>'VINNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VINNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_AUTO_COMPLETE'
,p_heading=>'Identification No.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>640
,p_value_alignment=>'LEFT'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
,p_item_attributes=>'onkeyup="setitemcode();"'
,p_is_required=>false
,p_max_length=>150
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  w.VINNUMBR vinnumbr',
'                     FROM nmenudtl w',
'                    WHERE w.compcode = :P303_COMPCODE_APPLICATION',
'                      AND w.warecode = :P303_WARECODE',
'                 and w.BOOKCODE is null',
'                 and w.FINSHGD_STATUS=''Y''',
'                 and (nvl(w.apprqnty,0)-nvl(w.trnsqnty,0))>0'))
,p_lov_display_extra=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(127437076712599662)
,p_name=>'COLORCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLORCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>650
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
 p_id=>wwv_flow_api.id(127437194570599663)
,p_name=>'MRNUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRNUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>660
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
 p_id=>wwv_flow_api.id(127437274400599664)
,p_name=>'BILNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BILNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>670
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
 p_id=>wwv_flow_api.id(127437396424599665)
,p_name=>'CUSTMRID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTMRID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>680
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(127437450731599666)
,p_name=>'TERMSCOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TERMSCOD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>690
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
 p_id=>wwv_flow_api.id(127437613204599667)
,p_name=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>700
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
 p_id=>wwv_flow_api.id(127437698189599668)
,p_name=>'SALERTEF'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALERTEF'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>710
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
 p_id=>wwv_flow_api.id(127437791693599669)
,p_name=>'OTHECOST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OTHECOST'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>720
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
 p_id=>wwv_flow_api.id(127437851604599670)
,p_name=>'DELIVERD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELIVERD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>730
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
 p_id=>wwv_flow_api.id(127437936232599671)
,p_name=>'SALRECFK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALRECFK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>740
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
 p_id=>wwv_flow_api.id(127438079864599672)
,p_name=>'PRICREMK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICREMK'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>750
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(127438144922599673)
,p_name=>'PAMTMODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAMTMODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>760
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
 p_id=>wwv_flow_api.id(127438269784599674)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(127438334336599675)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
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
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(126717034655963652)
,p_internal_uid=>159063417725364996
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_add_authorization_scheme=>wwv_flow_api.id(60507628718248520)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.toolbarData = [',
'        ',
'    ];',
'    return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(127462505196600865)
,p_interactive_grid_id=>wwv_flow_api.id(126717034655963652)
,p_static_id=>'395747'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(127462522843600879)
,p_report_id=>wwv_flow_api.id(127462505196600865)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(36139364195006875)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>84
,p_column_id=>wwv_flow_api.id(36129809365971146)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38903436121865179)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(38648297586292417)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38907583735003980)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(38648674152292420)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40654342447515261)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(40648013607464406)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(41164892549153790)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>69
,p_column_id=>wwv_flow_api.id(41041853078735826)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(41171575136221519)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>79
,p_column_id=>wwv_flow_api.id(41042201867735830)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(41171996164221520)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>81
,p_column_id=>wwv_flow_api.id(41042385049735831)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(43905188108498347)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>82
,p_column_id=>wwv_flow_api.id(42126348624178024)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(43905639007498349)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>83
,p_column_id=>wwv_flow_api.id(42126410555178025)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(54378612841198381)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(54323937746573061)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(54404635587397068)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>78
,p_column_id=>wwv_flow_api.id(54324258494573064)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(54405211328397070)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(54324401651573065)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(54504904918297470)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>72
,p_column_id=>wwv_flow_api.id(54324989203573071)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127462957046600921)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(126717134724963653)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127463364779601076)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>74
,p_column_id=>wwv_flow_api.id(126717264194963654)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127463860073601077)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(126717356152963655)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127464404715601079)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(126717492430963656)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127464900656601079)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(126717552010963657)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127465407203601104)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(126717714498963658)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127465870331601108)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(126717789253963659)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127466325354601110)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(126717836737963660)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127466916465601111)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(126717939203963661)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127467344376601111)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(126718043160963662)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127467913651601113)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(126718154372963663)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127468353061601115)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(126718266965963664)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127468834659601116)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(126718364771963665)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127469347407601118)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>75
,p_column_id=>wwv_flow_api.id(126718454205963666)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127469822527601118)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(126718523005963667)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127470342951601119)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>80
,p_column_id=>wwv_flow_api.id(126718717190963668)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>10
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127470870203601121)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(126718808421963669)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127471235744601193)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(126718881282963670)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127471721660601196)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(126718954142963671)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127472303987601197)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(126719066053963672)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127472793697601199)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>48
,p_column_id=>wwv_flow_api.id(126719164480963673)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127473313877601200)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>54
,p_column_id=>wwv_flow_api.id(126719245032963674)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127473733894601200)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(126719394103963675)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127474218439601202)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(126719485053963676)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127474756468601219)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(126719550296963677)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127475299168601224)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(126719685796963678)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127475722293601227)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(126719763963963679)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127476242280601227)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(127433903184599630)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127476697585601269)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(127433962027599631)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127477175518601271)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>40
,p_column_id=>wwv_flow_api.id(127434066877599632)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127477633511601272)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(127434131961599633)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127478122014601274)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(127434295384599634)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127478625844601275)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(127434376458599635)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127479130659601275)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(127434422230599636)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127479666572601277)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>73
,p_column_id=>wwv_flow_api.id(127434604872599637)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127480196657601278)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>36
,p_column_id=>wwv_flow_api.id(127434697130599638)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127480677908601280)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(127434758290599639)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127481160931601281)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(127434826335599640)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127481646475601281)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(127434926005599641)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127482173307601283)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>40
,p_column_id=>wwv_flow_api.id(127435041303599642)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127482674830601285)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>41
,p_column_id=>wwv_flow_api.id(127435171691599643)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127483122900601286)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>42
,p_column_id=>wwv_flow_api.id(127435277233599644)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127483625742601289)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>77
,p_column_id=>wwv_flow_api.id(127435327337599645)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127484157871601291)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>44
,p_column_id=>wwv_flow_api.id(127435453390599646)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127484671795601295)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>45
,p_column_id=>wwv_flow_api.id(127435541650599647)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127485176436601295)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>46
,p_column_id=>wwv_flow_api.id(127435684002599648)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127485658283601297)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>47
,p_column_id=>wwv_flow_api.id(127435731560599649)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127486156206601299)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>48
,p_column_id=>wwv_flow_api.id(127435829146599650)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127486703280601300)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>49
,p_column_id=>wwv_flow_api.id(127435933520599651)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127487188952601302)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>50
,p_column_id=>wwv_flow_api.id(127436102909599652)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127487653774601302)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>51
,p_column_id=>wwv_flow_api.id(127436132926599653)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127488186324601303)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>76
,p_column_id=>wwv_flow_api.id(127436226337599654)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127488714693601305)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>53
,p_column_id=>wwv_flow_api.id(127436357777599655)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127489167313601306)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>54
,p_column_id=>wwv_flow_api.id(127436515733599656)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127489677090601306)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>55
,p_column_id=>wwv_flow_api.id(127436536027599657)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127490167517601308)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>56
,p_column_id=>wwv_flow_api.id(127436711239599658)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127490670051601310)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>57
,p_column_id=>wwv_flow_api.id(127436762138599659)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127491167150601311)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>58
,p_column_id=>wwv_flow_api.id(127436878849599660)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127491674165601313)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(127436940557599661)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127492170162601316)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>60
,p_column_id=>wwv_flow_api.id(127437076712599662)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127492643749601316)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>61
,p_column_id=>wwv_flow_api.id(127437194570599663)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127493176929601317)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>62
,p_column_id=>wwv_flow_api.id(127437274400599664)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127493626184601319)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>63
,p_column_id=>wwv_flow_api.id(127437396424599665)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127494183099601320)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>64
,p_column_id=>wwv_flow_api.id(127437450731599666)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127494620629601322)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>65
,p_column_id=>wwv_flow_api.id(127437613204599667)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127495123874601325)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>66
,p_column_id=>wwv_flow_api.id(127437698189599668)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127495659311601327)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>67
,p_column_id=>wwv_flow_api.id(127437791693599669)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127496155494601327)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>68
,p_column_id=>wwv_flow_api.id(127437851604599670)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127496677528601328)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>69
,p_column_id=>wwv_flow_api.id(127437936232599671)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127497202220601330)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>70
,p_column_id=>wwv_flow_api.id(127438079864599672)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127497637749601331)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>71
,p_column_id=>wwv_flow_api.id(127438144922599673)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127502748019616543)
,p_view_id=>wwv_flow_api.id(127462522843600879)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(127438269784599674)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54325049583573072)
,p_plug_name=>'Discount Region'
,p_parent_plug_id=>wwv_flow_api.id(189547111984864418)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54325259176573074)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_api.id(189547111984864418)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(193927096878793493)
,p_plug_name=>'Gatepass Information'
,p_parent_plug_id=>wwv_flow_api.id(188691187395259067)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="height: 337px;'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(195802555240883395)
,p_plug_name=>'Customer Information'
,p_parent_plug_id=>wwv_flow_api.id(255031709068811764)
,p_region_template_options=>'#DEFAULT#:i-h220:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>27
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38951186548684757)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(54325049583573072)
,p_button_name=>'P303_ADDITEM'
,p_button_static_id=>'P303_ADDITEM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Item'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39003362983684803)
,p_button_sequence=>111
,p_button_plug_id=>wwv_flow_api.id(188688393666213582)
,p_button_name=>'P303_RUNREPORT'
,p_button_static_id=>'P37_RUNREPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Run Report'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:49:P49_PROGNAME,P49_DOCNUMBR:&P303_PROGNAME.,&P303_DOCNUMBR49.'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39003723658684803)
,p_button_sequence=>121
,p_button_plug_id=>wwv_flow_api.id(188688393666213582)
,p_button_name=>'P303_MNYRECEIPT'
,p_button_static_id=>'P37_MNYRECEIPT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Money Receipt'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39004208458684803)
,p_button_sequence=>151
,p_button_plug_id=>wwv_flow_api.id(188688393666213582)
,p_button_name=>'P303_DELIVERY'
,p_button_static_id=>'P37_DELIVERY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delivery Challan'
,p_button_redirect_url=>'javascript:abc();'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39015136573684810)
,p_button_sequence=>1110
,p_button_plug_id=>wwv_flow_api.id(188869299326486217)
,p_button_name=>'P303_SHOWHIDE'
,p_button_static_id=>'P37_SHOWHIDE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Showhide'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38993504966684799)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(189547111984864418)
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
 p_id=>wwv_flow_api.id(38993893702684799)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(189547111984864418)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38994258661684799)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(189547111984864418)
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
 p_id=>wwv_flow_api.id(39004584741684803)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(188688393666213582)
,p_button_name=>'CREATE'
,p_button_static_id=>'BUT_CRT_FRM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'COPY'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39004961477684803)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(188688393666213582)
,p_button_name=>'SHOW_HIDE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Multiple Item Invoice'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39005352879684805)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(188688393666213582)
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
 p_id=>wwv_flow_api.id(39001164536684803)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(250703338295785209)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=100000:1:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39001576559684803)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(250703338295785209)
,p_button_name=>'CREATE_NEW'
,p_button_static_id=>'BUT_CRT_TAB'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P303_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39001949976684803)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(250703338295785209)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P303_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39005726131684805)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(188688393666213582)
,p_button_name=>'DELIVERY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delivery'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
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
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(42124790492178009)
,p_branch_name=>'Report Generate'
,p_branch_action=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP:P50_PROGNAME,P50_DOCNUMBR,P50_DOCTTYPE,P50_SUBTTYPE:nminvgtn,&P303_DOCNUMBR.,&P303_DOCTTYPE.,&P303_SUBTTYPE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(39001576559684803)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(39062721919684825)
,p_branch_name=>'Go To Page 10'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:303::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(39001576559684803)
,p_branch_sequence=>2
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36129904834971147)
,p_name=>'P303_NMFILENO'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_fileno number;',
'begin',
'select max(to_number(NMFILENO))+1',
'into v_fileno',
'from nmsalrec',
'where COMPCODE=:COMPCODE;',
'',
'return v_fileno;',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found file no'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found file no'');',
'when others then',
'raise_application_error(-20001,''Others Problem file no'');',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38948091137684752)
,p_name=>'P303_ZONE'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(188688787217221173)
,p_prompt=>'Zone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
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
 p_id=>wwv_flow_api.id(38948503794684754)
,p_name=>'P303_FILENO'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(188688787217221173)
,p_prompt=>'File No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
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
 p_id=>wwv_flow_api.id(38948860439684754)
,p_name=>'P303_LASTPURCHASEDATE'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(188688787217221173)
,p_prompt=>'Last Purchase Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
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
 p_id=>wwv_flow_api.id(38949232517684754)
,p_name=>'P303_LASTPRODUCT'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(188688787217221173)
,p_prompt=>'Last Product'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
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
 p_id=>wwv_flow_api.id(38949682699684754)
,p_name=>'P303_LASTPURAMOUNT'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(188688787217221173)
,p_prompt=>'Last Pur.  Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
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
 p_id=>wwv_flow_api.id(38950109203684754)
,p_name=>'P303_AREACODE'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(188688787217221173)
,p_prompt=>'Area'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
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
 p_id=>wwv_flow_api.id(38950474654684755)
,p_name=>'P303_PARTYCODE'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(188688787217221173)
,p_prompt=>'Party Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
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
 p_id=>wwv_flow_api.id(38951550074684757)
,p_name=>'P303_SALPRICE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(54325049583573072)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38951958672684757)
,p_name=>'P303_CLOSINGBALANCE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(188761402087174699)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38952335482684757)
,p_name=>'P303_VATAMOUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(54325147971573073)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38952808003684757)
,p_name=>'P303_QUENTITY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(54325049583573072)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38953191232684760)
,p_name=>'P303_AMOUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(54325147971573073)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38953588727684760)
,p_name=>'P303_VATPRCNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(54325049583573072)
,p_prompt=>'Vat(%)'
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
 p_id=>wwv_flow_api.id(38954005106684760)
,p_name=>'P303_DISCPCNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(54325049583573072)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38954401080684760)
,p_name=>'P303_DISAMOUNT'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(54325049583573072)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38954802920684760)
,p_name=>'P303_NETAMOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(54325147971573073)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38955208767684761)
,p_name=>'P303_PERINSTALL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(188761402087174699)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38955888774684761)
,p_name=>'P303_TABULARITEMCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(54325049583573072)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38956289059684761)
,p_name=>'P303_TABCOSTRATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(188871588516577739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38956630028684761)
,p_name=>'P303_TABITEMDESC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(54325147971573073)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38957053169684764)
,p_name=>'P303_TABITEMRATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(188871588516577739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38957503775684764)
,p_name=>'P303_TABITEMUNIT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(54325147971573073)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38957825965684764)
,p_name=>'P303_TABCLOSINGBALANCE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(188871588516577739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38958225236684766)
,p_name=>'P303_S_H_REGION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(188871588516577739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38958684353684766)
,p_name=>'P303_LOVITEMCODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(188871588516577739)
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
'          AND b.warecode = :P303_WARECODE',
'       --   AND b.itemcode =:P303_LOVITEMCODE',
'            AND NVL (b.clbalqty, 0) > 0',
' GROUP BY a.itemcode, a.itemdes2, a.compcode'))
,p_lov_cascade_parent_items=>'P303_WARECODE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_cMaxlength=>4000
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,1'
,p_attribute_06=>'1'
,p_attribute_07=>'P303_ITEMCODE'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38959065714684766)
,p_name=>'P303_ITEMDESC'
,p_item_sequence=>1320
,p_item_plug_id=>wwv_flow_api.id(188871588516577739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38959437383684766)
,p_name=>'P303_LOVBATCHNO'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_api.id(188871588516577739)
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
'                      AND b.itemcode = :P303_ITEMCODE',
'                      AND w.warecode = :P303_WARECODE',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                   HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC)'))
,p_lov_cascade_parent_items=>'P303_ITEMCODE,P303_WARECODE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_cMaxlength=>4000
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'List of Batch No.'
,p_attribute_03=>'1,1'
,p_attribute_06=>'1'
,p_attribute_07=>'P303_BATCHNUM'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38959901925684768)
,p_name=>'P303_BATCHNUM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(54325147971573073)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38960252458684768)
,p_name=>'P303_BRAND'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(54325147971573073)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38960691482684768)
,p_name=>'P303_MODAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(54325147971573073)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38961053405684768)
,p_name=>'P303_UNITOFMESURE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(54325147971573073)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38961448103684768)
,p_name=>'P303_ISSUMTHD'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_api.id(188871588516577739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38961876950684769)
,p_name=>'P303_TABITEMTYPE'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_api.id(188871588516577739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38962222899684769)
,p_name=>'P303_TABSALEPERC'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_api.id(188871588516577739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38962679404684769)
,p_name=>'P303_TABCOMMGRUP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(54325147971573073)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38963066348684769)
,p_name=>'P303_CLRITEMCODE'
,p_item_sequence=>1740
,p_item_plug_id=>wwv_flow_api.id(188871588516577739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38994696696684799)
,p_name=>'P303_TABTOTDISAM'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_api.id(189547111984864418)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38997357026684799)
,p_name=>'P303_TNSPRTYP'
,p_item_sequence=>1830
,p_item_plug_id=>wwv_flow_api.id(193927096878793493)
,p_prompt=>'Transport Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38997777144684799)
,p_name=>'P303_TRNSREGN'
,p_item_sequence=>1840
,p_item_plug_id=>wwv_flow_api.id(193927096878793493)
,p_prompt=>'Transport Reg.No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38998135769684800)
,p_name=>'P303_TNSCHSNO'
,p_item_sequence=>1850
,p_item_plug_id=>wwv_flow_api.id(193927096878793493)
,p_prompt=>'Transport Chasis No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38998555016684800)
,p_name=>'P303_DRIVNAME'
,p_item_sequence=>1860
,p_item_plug_id=>wwv_flow_api.id(193927096878793493)
,p_prompt=>'Driver Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38999003431684800)
,p_name=>'P303_DVNLIDNO'
,p_item_sequence=>1870
,p_item_plug_id=>wwv_flow_api.id(193927096878793493)
,p_prompt=>'Driver N.Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38999336880684800)
,p_name=>'P303_DVLICSNO'
,p_item_sequence=>1880
,p_item_plug_id=>wwv_flow_api.id(193927096878793493)
,p_prompt=>'Driver License'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38999758814684800)
,p_name=>'P303_DELVLOCT'
,p_item_sequence=>1890
,p_item_plug_id=>wwv_flow_api.id(193927096878793493)
,p_prompt=>'Delivery Location'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39000445161684802)
,p_name=>'P303_INSTALLAMOUNT'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(188702414461370993)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39002699222684803)
,p_name=>'P303_DISPLAY'
,p_item_sequence=>1970
,p_item_plug_id=>wwv_flow_api.id(255031709068811764)
,p_item_default=>':P303_DOCDESC||''  (''||:P303_DOCTTYPE||''/''||:P303_SUBTTYPE||'')'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="font-size:18px;color:blue;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39006215429684807)
,p_name=>'P303_DOCDESC'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_item_default=>':DOCDESC'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39006537881684807)
,p_name=>'P303_DOCTTYPE'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39006953911684807)
,p_name=>'P303_SUBTTYPE'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39007333867684807)
,p_name=>'P303_PREVDCNM'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39007734088684807)
,p_name=>'P303_S_PRDTYP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
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
 p_id=>wwv_flow_api.id(39008190976684807)
,p_name=>'P303_S_PRSTYP'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
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
 p_id=>wwv_flow_api.id(39008604349684807)
,p_name=>'P303_DOCNUMBR'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_prompt=>'Invoice No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>7
,p_grid_column=>1
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_api.id(39008934227684807)
,p_name=>'P303_DOCTDATE'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Invoice Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_CUSTOMERID'')"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39009345579684807)
,p_name=>'P303_WARECODE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_warecode varchar2(10);',
'begin',
'SELECT DISTINCT  c.WARECODE into v_warecode',
'    FROM nmwhsmas j, sycstacc c',
'   WHERE     j.compcode = :compcode',
'         AND j.compcode = c.compcode',
'         AND j.WARECODE = c.WARECODE',
'         AND c.grupcode = :APP_USER',
'         AND nvl(J.MAINSTOR,''N'') = ''Y''',
'         AND j.WARECODE not like (''D%'');',
'         return v_warecode;',
'         exception',
'         when no_data_found then',
'         v_warecode:=null;',
'         when too_many_rows then',
'         v_warecode:=null;',
'         when others then',
'         v_warecode:=null;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Sales Center'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT   w.WARECODE||''-''||w.WAREDESC d,w.WARECODE r',
'    FROM nmwhsmas w, syjobmas s',
'   WHERE w.compcode = :compcode',
'     AND w.compcode = s.compcode',
'     AND w.costcode = s.costcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER)',
'ORDER BY warecode'))
,p_cSize=>10
,p_cMaxlength=>4000
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_SALMANID'')"'
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39009810002684807)
,p_name=>'P303_COSTCENTERNAME'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>200
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
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
 p_id=>wwv_flow_api.id(39010152422684808)
,p_name=>'P303_SALESTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_item_default=>'CSH'
,p_prompt=>'Payment Mode'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  NMCODDES d ,NMSOFCDE r from nmcodmas',
'where NMHRDCDE = ''PAY''',
' AND COMPCODE =  :compcode',
' AND MODLCODE = ''NM'''))
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39010592716684808)
,p_name=>'P303_ORDERNO'
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
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
'            AND s.docttype = :P303_S_PRDTYP',
'            AND s.subttype = :P303_S_PRSTYP',
'            AND s.doctdate <= :P303_DOCTDATE',
'            AND s.compcode = sls.compcode(+)',
'            AND s.docnumbr = sls.updocnum(+)',
'            AND s.itemcode = sls.itemcode(+)',
'            AND s.apprqnty > NVL (sls.apprqnty, 0)',
'       ORDER BY 2 DESC'))
,p_lov_cascade_parent_items=>'P303_S_PRDTYP,P303_S_PRSTYP,P303_DOCTDATE'
,p_ajax_items_to_submit=>'P303_S_PRDTYP,P303_S_PRSTYP,P303_DOCTDATE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_item_comment=>'onkeypress="return tabE(this,event,''P7_S_DOCNUM'')"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39010993159684808)
,p_name=>'P303_TRANTYPE'
,p_item_sequence=>91
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39011355930684808)
,p_name=>'P303_COMPCODE_APPLICATION'
,p_item_sequence=>101
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39011769926684808)
,p_name=>'P303_PROGNAME'
,p_item_sequence=>131
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_source=>'nminvmny'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39012146274684808)
,p_name=>'P303_DOCNUMBR49'
,p_item_sequence=>141
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39012853488684808)
,p_name=>'P303_ORDERDATE'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(188686215605153714)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Order Date :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39013271163684808)
,p_name=>'P303_BOOKINGNO'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(188686215605153714)
,p_prompt=>'Booking No :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_api.id(39013700629684808)
,p_name=>'P303_BOOKINGDT'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(188686215605153714)
,p_prompt=>'Booking Date :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39014081649684808)
,p_name=>'P303_REQREFTYPE'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(188686215605153714)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39014480289684808)
,p_name=>'P303_REQSUBTYPE'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(188686215605153714)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39015570906684810)
,p_name=>'P303_LOVCUSTOMERID'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(188869299326486217)
,p_prompt=>'Customer Id'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.partycde, c.custmrid, custname, contpers, custadr1, custadr2,',
'       custadr3, custadr4, custphon, c.tefaxnum, custmobl, custmail,',
'       r.registno, r.chasisno',
'  FROM nmcusmas c, nmitmreg r',
' WHERE c.custmrid = r.custmrid(+) AND c.compcode = r.compcode',
'       AND c.compcode = :compcode',
'       and c.CUSTTYPE=:P303_CUSTOMTYPE;',
''))
,p_lov_cascade_parent_items=>'P303_CUSTOMTYPE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>15
,p_cMaxlength=>4000
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'2,2'
,p_attribute_06=>'2'
,p_attribute_07=>'P303_CUSTOMERID'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39015941711684810)
,p_name=>'P303_CUSTOMTYPE'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(188869299326486217)
,p_item_default=>'COR'
,p_prompt=>'Customer Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct NMCODDES d,NMSOFCDE r from nmcodmas where NMSOFCDE in',
'(select distinct CUSTTYPE from nmcusmas)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''NM''',
'and NMHRDCDE=''CTY'';'))
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100%;"'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_api.id(39016409959684810)
,p_name=>'P303_MIONUM'
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Executive'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39016787724684810)
,p_name=>'P303_MIONAME'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_name varchar2(100);',
'begin',
'select USERNAME into v_name from syusrmas',
'where USERCODE=:P303_MIONUM;',
'return v_name;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
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
 p_id=>wwv_flow_api.id(39017189282684810)
,p_name=>'P303_CUSTOMERID'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(188869299326486217)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39017616843684810)
,p_name=>'P303_CUSTOMERNAME'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(188869299326486217)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39017972712684810)
,p_name=>'P303_CUSADDRESS'
,p_item_sequence=>1082
,p_item_plug_id=>wwv_flow_api.id(188869299326486217)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39018323303684810)
,p_name=>'P303_CRDLIMIT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(195802555240883395)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39018816022684810)
,p_name=>'P303_CRDAMNT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(195802555240883395)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39019216410684810)
,p_name=>'P303_LOVCOSTCODE'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(188869299326486217)
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,1'
,p_attribute_06=>'1'
,p_attribute_07=>'P303_WARECODE'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39019536849684810)
,p_name=>'P303_LOVSALMANID'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_api.id(188869299326486217)
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
'            AND w.costcode = :P303_COSTCODE'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'2,1'
,p_attribute_06=>'1'
,p_attribute_07=>'P303_SALMANID'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39019980124684811)
,p_name=>'P303_SALMANID'
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_prompt=>'Sales Executive'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT  s.smanname||'' (''||s.smancode||'')'' D,s.smancode R',
'           FROM syjobmas j, nmwhsmas w, nmsmnmas s',
'          WHERE j.compcode = :compcode',
'            AND w.costcode = j.costcode',
'            AND w.compcode = j.compcode',
'            AND w.compcode = s.compcode',
'          --  AND w.regncode = s.smantype',
'            AND w.srvcwflg = ''N''',
'            AND s.smantype <> ''RE''',
'            AND w.warecode = s.suprcode',
'          --  AND w.costcode = :P303_COSTCODE'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_api.id(39020343221684811)
,p_name=>'P303_ITEMCODE'
,p_item_sequence=>1310
,p_item_plug_id=>wwv_flow_api.id(188869299326486217)
,p_item_default=>':P303_TESTITEM'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39020785200684811)
,p_name=>'P303_COSTCODE'
,p_item_sequence=>1760
,p_item_plug_id=>wwv_flow_api.id(188869299326486217)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39021202420684811)
,p_name=>'P303_SALMNNAME'
,p_item_sequence=>1770
,p_item_plug_id=>wwv_flow_api.id(188869299326486217)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39021597234684811)
,p_name=>'P303_TERM'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_api.id(188688393666213582)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39021923727684811)
,p_name=>'P303_REGION'
,p_item_sequence=>440
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39022378583684811)
,p_name=>'P303_SALMANTYPE'
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39022770587684811)
,p_name=>'P303_COMPCODE'
,p_item_sequence=>1340
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(39023188896684811)
,p_name=>'P303_OPRSTAMP'
,p_item_sequence=>1350
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(39023564653684811)
,p_name=>'P303_TIMSTAMP'
,p_item_sequence=>1360
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(39023963628684811)
,p_name=>'P303_SERLNUMB'
,p_item_sequence=>1390
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(39024413971684811)
,p_name=>'P303_STATUSCD'
,p_item_sequence=>1400
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(39024781180684811)
,p_name=>'P303_ITEMLONG_1'
,p_item_sequence=>1410
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(39025155911684813)
,p_name=>'P303_MSFCAMNT'
,p_item_sequence=>1420
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(39025547431684813)
,p_name=>'P303_ROWID'
,p_item_sequence=>1460
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(39025966356684813)
,p_name=>'P303_DOCNUMBR1'
,p_item_sequence=>1480
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(39026416116684814)
,p_name=>'P303_ITEMCODE1'
,p_item_sequence=>1490
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(39026737607684814)
,p_name=>'P303_DEVDOCTTYPE'
,p_item_sequence=>1900
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39027138328684814)
,p_name=>'P303_DEVSUBTTYPE'
,p_item_sequence=>1910
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39027604339684814)
,p_name=>'P303_DEVDOCNUMBR'
,p_item_sequence=>1920
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39027923613684814)
,p_name=>'P303_GATDOCTTYPE'
,p_item_sequence=>1930
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39028401022684814)
,p_name=>'P303_GATSUBTTYPE'
,p_item_sequence=>1940
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39028729552684814)
,p_name=>'P303_GATDOCNUMBR'
,p_item_sequence=>1950
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41041930016735827)
,p_name=>'P303_CASH_AMOUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(54325049583573072)
,p_prompt=>'Cash Amount'
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
 p_id=>wwv_flow_api.id(41042056267735828)
,p_name=>'P303_CARD_AMOUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(54325049583573072)
,p_prompt=>'Card Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>18
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42126058726178021)
,p_name=>'P303_ADVANCHED_AMOUNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(54325049583573072)
,p_prompt=>'Advanched Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42126187960178022)
,p_name=>'P303_EXCHANGE_AMOUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(54325049583573072)
,p_prompt=>'Exchange Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54258558245999845)
,p_name=>'P303_PRTYNAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(195802555240883395)
,p_prompt=>'<font color="red">Customer Name</font>'
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
 p_id=>wwv_flow_api.id(54258962174999854)
,p_name=>'P303_DELRTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(195802555240883395)
,p_item_default=>'IND'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54259374187999854)
,p_name=>'P303_OCCUPATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(195802555240883395)
,p_prompt=>'Occupation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Bussiness;BUSSINESS,Service holder;Service holder,Private Jobs;Teacher;Teacher,Doctor;Doctor,PRIVATE JOBS,Govt. Jobs;GOVT. JOBS;Homemaker,Homemaker;Student,Student;Other,Other'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54259754470999854)
,p_name=>'P303_PHONENUM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(195802555240883395)
,p_prompt=>'Office Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
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
 p_id=>wwv_flow_api.id(54260180362999854)
,p_name=>'P303_MOBILENO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(195802555240883395)
,p_prompt=>'<font color="red">Mobile No</font>'
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
 p_id=>wwv_flow_api.id(54260544727999857)
,p_name=>'P303_IDENTIFY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(195802555240883395)
,p_prompt=>'<font color="red">Identify No.</font>'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.CUSTMOBL',
'FROM  nmcusmas r',
'where r.compcode = :compcode',
'order by 1'))
,p_cSize=>100
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54260947535999857)
,p_name=>'P303_BIRTHDATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(195802555240883395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Birth Date'
,p_source=>'BIRTHDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54261345427999862)
,p_name=>'P303_ANNIVERSARY_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(195802555240883395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Anniversary Date'
,p_source=>'ANNIVERSARY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(54261812050999862)
,p_name=>'P303_CUSTMAIL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(195802555240883395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'E-mail adress'
,p_source=>'CUSTMAIL'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(54262206962999862)
,p_name=>'P303_WHSZONFK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(195802555240883395)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54262590804999862)
,p_name=>'P303_PARTYCDE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(195802555240883395)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_partycode varchar2(20);',
'begin',
'Select        upper(''CU'')|| lpad(to_char(max(to_number(substr(PARTYCD1,3,5)))+1),4,0) a ',
'into v_partycode',
'      from             NMcusvlg;',
'     -- where upper(partytyp)=upper(''CU'');',
'      return v_partycode;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'PARTYCD1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54262988016999862)
,p_name=>'P303_PARTYAD2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(195802555240883395)
,p_prompt=>'Permanent Address'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>300
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54263377016999862)
,p_name=>'P303_PARTYAD1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(195802555240883395)
,p_prompt=>'Present Address'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39029301147684814)
,p_validation_name=>'Docdate validation for tabular'
,p_validation_sequence=>10
,p_validation=>'P303_DOCTDATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(56073615248501395)
,p_associated_item=>wwv_flow_api.id(39008934227684807)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39029705804684814)
,p_validation_name=>'Customer id validation for tabular'
,p_validation_sequence=>20
,p_validation=>'P303_CUSTOMERID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(39017189282684810)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39030037387684814)
,p_validation_name=>'costcode  validation for form'
,p_validation_sequence=>130
,p_validation=>'P303_WARECODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(39009345579684807)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39030421455684814)
,p_tabular_form_region_id=>wwv_flow_api.id(189547111984864418)
,p_validation_name=>'validation between qty and stock qty'
,p_validation_sequence=>180
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :APPRQNTY >:STOCK_QTY then',
'   return ''Qty must be less than Stock Qty'';',
'--raise_application_error(-20000,''Qty must be less than Stock Qty'');',
'else',
'   return null;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39030900530684814)
,p_validation_name=>'compare in discount percent with 100'
,p_validation_sequence=>190
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P303_DISCPCNT>100 then',
'   return ''Discount Percent cannot be more than 100'';',
'raise_application_error(-20000,''Discount Percent cannot be more than 100'');',
'else',
'   return null;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(39004584741684803)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38995136807684799)
,p_tabular_form_region_id=>wwv_flow_api.id(189547111984864418)
,p_validation_name=>'Salrate'
,p_validation_sequence=>200
,p_validation=>'SALERATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'SALERATE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38995605895684799)
,p_tabular_form_region_id=>wwv_flow_api.id(189547111984864418)
,p_validation_name=>'Approqty'
,p_validation_sequence=>210
,p_validation=>'APPRQNTY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'APPRQNTY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(40568104710748922)
,p_validation_name=>'IDENTIFY NOT NULL'
,p_validation_sequence=>220
,p_validation=>'P303_IDENTIFY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(54260544727999857)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(40568202143748923)
,p_validation_name=>'PRTYNAME'
,p_validation_sequence=>230
,p_validation=>'P303_PRTYNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(54258558245999845)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(40568370645748924)
,p_validation_name=>'MOBILENAME'
,p_validation_sequence=>240
,p_validation=>'P303_MOBILENO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(54260180362999854)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39033974330684816)
,p_name=>'change on customer id'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_CUSTOMERID'
,p_condition_element=>'P303_CUSTOMERID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39034446049684817)
,p_event_id=>wwv_flow_api.id(39033974330684816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P303_CUSTOMERID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT distinct c.CUSTADR1,r.partycde,c.CUSTNAME',
'into :P303_CUSADDRESS,:P303_PARTYCODE,:P303_CUSTOMERNAME',
'  FROM nmmrkcus c, nmcusmas r',
' WHERE c.PARTYCDE = r.PARTYCDE(+) ',
' AND c.compcode = r.compcode(+)',
'       AND c.compcode = :compcode',
'and c.PARTYCDE=:P303_CUSTOMERID;',
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
,p_attribute_02=>'P303_CUSTOMERID'
,p_attribute_03=>'P303_CUSADDRESS,P303_AREACODE,P303_ZONE,P303_PARTYCODE,P303_CUSTOMERNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39034845579684817)
,p_name=>'change on costcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_WARECODE'
,p_condition_element=>'P303_WARECODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39035370340684817)
,p_event_id=>wwv_flow_api.id(39034845579684817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P303_WARECODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.COSTCODE',
'into :P303_COSTCODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND WARECODE = :P303_WARECODE)',
'     AND warecode = :P303_WARECODE',
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
'IF :P303_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct COSTDESC ',
'into :P303_COSTCENTERNAME',
'from syjobmas',
'where compcode = :compcode',
'AND costcode = :P303_COSTCODE;',
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
'IF :P303_COSTCODE IS NOT NULL and :P303_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT distinct SMANCODE',
'into :P303_SALMANID',
'        FROM nmsalrec',
'       WHERE docnumbr = :p303_docnumbr1',
'         AND DOCTDATE = :P303_DOCTDATE',
'         AND COSTCODE = :P303_COSTCODE;',
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
,p_attribute_02=>'P303_WARECODE,P303_DOCNUMBR1,P303_DOCTDATE'
,p_attribute_03=>'P303_COSTCODE,P303_COSTCENTERNAME,P303_SALMANID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39035761549684817)
,p_name=>'change on itemcode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_ITEMCODE'
,p_condition_element=>'P303_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39036237325684817)
,p_event_id=>wwv_flow_api.id(39035761549684817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P303_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P303_UNITOFMESURE,:P303_ITEMDESC,:P303_BRAND,:P303_MODAL,:P303_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P303_ITEMCODE;',
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
'IF :P303_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P303_SALPRICE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P303_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P303_ITEMCODE;',
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
'IF :P303_ITEMCODE1 IS NOT NULL and :P303_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) ',
'into :P303_QUENTITY',
'       from    nmsalrec s,(SELECT   SUM (d.trnsqnty) trnsqnty, d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE',
'                     FROM nmdevrec d',
'                     group by d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE) e',
'                     WHERE s.docnumbr = :p303_docnumbr1 AND s.itemcode = :p303_itemcode1',
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
,p_attribute_02=>'P303_ITEMCODE,P303_WARECODE,P303_ITEMCODE1,P303_DOCNUMBR1'
,p_attribute_03=>'P303_UNITOFMESURE,P303_ITEMDESC,P303_BRAND,P303_MODAL,P303_SALPRICE,P303_ISSUMTHD,P303_CLOSINGBALANCE,P303_QUENTITY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39036654724684817)
,p_name=>'change on trantype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_TRANTYPE'
,p_condition_element=>'P303_TRANTYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39037158625684817)
,p_event_id=>wwv_flow_api.id(39036654724684817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select distinct PRDOCTYP,PRSUBTYP ',
'into :P303_REQREFTYPE,:P303_REQSUBTYPE',
'from nmwrkflw',
'where TRDOCTYP||TRSUBTYP=:P303_TRANTYPE',
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
,p_attribute_02=>'P303_TRANTYPE'
,p_attribute_03=>'P303_REQREFTYPE,P303_REQSUBTYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39037598015684817)
,p_name=>'installment amount'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39005726131684805)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39038071110684817)
,p_event_id=>wwv_flow_api.id(39037598015684817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P303_PERINSTALL:=(:P303_INSTLLAMOUNT/:P303_INSTALLNO);',
'EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'end;'))
,p_attribute_02=>'P303_VATPRCNT,P303_VATAMOUNT'
,p_attribute_03=>'P303_PERINSTALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39038518908684819)
,p_event_id=>wwv_flow_api.id(39037598015684817)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var tt = window.document.getElementById(''P303_INSTALLNO'').value;',
' for(i=0;i<tt;i++)',
'{',
'var pp = ''f02_000''.concat(i+1);',
'javascript:apex.widget.tabular.addRow();',
'window.document.getElementById(pp).value = window.document.getElementById(''P303_PERINSTALL'').value;',
'',
'}'))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pp = f02_000.concat(i);',
'',
'.concat(f02_000.concat(i)).concat('')'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39038967908684819)
,p_name=>'on change amount'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_QUENTITY'
,p_condition_element=>'P303_QUENTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39039493337684819)
,p_event_id=>wwv_flow_api.id(39038967908684819)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P303_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39039995358684819)
,p_event_id=>wwv_flow_api.id(39038967908684819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/05 14:26 (Formatter Plus v4.8.8) */',
'BEGIN',
'   :p303_amount := :p303_salprice * :p303_quentity;',
':P303_DISAMOUNT:=(:P303_AMOUNT*:P303_DISCPCNT)/100;',
':P303_NETAMOUNT:=nvl(:P303_AMOUNT,0)-nvl(:P303_DISAMOUNT,0);',
'END;'))
,p_attribute_02=>'P303_SALPRICE,P303_QUENTITY,P303_AMOUNT,P303_DISCPCNT,P303_DISAMOUNT'
,p_attribute_03=>'P303_AMOUNT,P303_DISAMOUNT,P303_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39040336081684819)
,p_name=>'on change discount percent'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_DISCPCNT'
,p_condition_element=>'P303_DISCPCNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39040902247684819)
,p_event_id=>wwv_flow_api.id(39040336081684819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P303_DISAMOUNT:=(:P303_AMOUNT*:P303_DISCPCNT)/100;',
'end;'))
,p_attribute_02=>'P303_AMOUNT,P303_DISCPCNT'
,p_attribute_03=>'P303_DISAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39041252499684819)
,p_name=>'on change amount and disamount'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_DISAMOUNT'
,p_condition_element=>'P303_DISAMOUNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39041745986684819)
,p_event_id=>wwv_flow_api.id(39041252499684819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P303_NETAMOUNT:=nvl(:P303_AMOUNT,0)-nvl(:P303_DISAMOUNT,0);',
'end;'))
,p_attribute_02=>'P303_AMOUNT,P303_DISAMOUNT'
,p_attribute_03=>'P303_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39042182253684819)
,p_name=>'query on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39042689337684819)
,p_event_id=>wwv_flow_api.id(39042182253684819)
,p_event_result=>'TRUE'
,p_action_sequence=>9
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:16 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :p303_itemcode1 IS NOT NULL AND :p303_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT s.compcode, s.docttype, s.subttype, s.docnumbr,',
'             s.doctdate, s.serlnumb, s.partycde, s.itemcode,',
'             s.smancode, s.commcode, s.itemdesc,',
'             s.itemlong, s.discpcnt, s.discamnt, s.salerate,',
'             s.custmrid, s.costcode, s.warecode, s.batchnum,',
'             s.msfcamnt, s.apprqnty, s.docnumbr',
'        INTO :p303_compcode, :p303_docttype, :p303_subttype, :p303_docnumbr,',
'             :p303_doctdate, :p303_serlnumb, :p303_partycode, :p303_itemcode,',
'             :p303_salmanid, :p303_unitofmesure,',
'             :p303_itemdesc, :p303_itemlong_1, :p303_discpcnt, :p303_disamount,',
'             :p303_salprice, :p303_customerid, :p303_costcode, :p303_warecode,',
'             :p303_batchnum, :p303_netamount, :p303_quentity , :P303_DOCNUMBR49',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p303_docnumbr1 AND s.itemcode = :p303_itemcode1;',
'   END IF;',
'EXCEPTION',
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
'BEGIN',
'   IF :p303_itemcode1 IS NOT NULL AND :p303_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT distinct TNSPRTYP,TRNSREGN,TNSCHSNO,DRIVNAME,DVNLIDNO,DVLICSNO,DELVLOCT',
'      into :p303_TNSPRTYP,:p303_TRNSREGN,:p303_TNSCHSNO,:p303_DRIVNAME,:p303_DVNLIDNO,:p303_DVLICSNO,:p303_DELVLOCT',
'        FROM nmdevrec ',
'        WHERE UPDOCNUM = :p303_docnumbr',
'      AND UPDOCDTE = :p303_doctdate',
'      and DOCTTYPE = ''GP''',
'      and SUBTTYPE=1;',
'   END IF;',
'EXCEPTION',
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
,p_attribute_02=>'P303_DOCNUMBR1,P303_ITEMCODE1,P303_DOCNUMBR,P303_DOCTDATE'
,p_attribute_03=>'P303_COMPCODE,P303_DOCTTYPE,P303_SUBTTYPE,P303_DOCNUMBR,P303_DOCTDATE,P303_SERLNUMB,P303_PARTYCODE,P303_ITEMCODE,P303_SALMANID,P303_UNITOFMESURE,P303_ITEMDESC,P303_ITEMLONG_1,P303_DISCPCNT,P303_DISAMOUNT,P303_SALPRICE,P303_CUSTOMERID,P303_WARECODE,P3'
||'03_COSTCODE,P303_BATCHNUM,P303_NETAMOUNT,P303_DOCNUMBR49,P303_TNSPRTYP,P303_TRNSREGN,P303_TNSCHSNO,P303_DRIVNAME,P303_DVNLIDNO,P303_DVLICSNO,P303_DELVLOCT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39043076512684819)
,p_name=>'change  on warecode'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39043583503684819)
,p_event_id=>wwv_flow_api.id(39043076512684819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P303_WARECODE IS NOT NULL and :P303_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT a.itemcode',
'into :P303_ITEMCODE ',
'           FROM nmsalrec a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''APR''',
'            AND a.itemcode = b.itemcode',
'            and a.DOCNUMBR=:P303_DOCNUMBR1',
'           -- AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P303_WARECODE',
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
,p_attribute_02=>'P303_DOCNUMBR1,P303_WARECODE'
,p_attribute_03=>'P303_ITEMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39043959316684819)
,p_name=>'change on batchnum'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39044460691684819)
,p_event_id=>wwv_flow_api.id(39043959316684819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P303_ITEMCODE IS NOT NULL and :P303_DOCNUMBR is not null',
'   THEN',
'      BEGIN',
' SELECT  batchnum d',
'into :P303_BATCHNUM',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmsalrec w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P303_ITEMCODE',
'                      AND w.warecode = :P303_WARECODE',
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
,p_attribute_02=>'P303_ITEMCODE,P303_DOCNUMBR,P303_WARECODE'
,p_attribute_03=>'P303_BATCHNUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39044904244684821)
,p_name=>'change  on itemcode1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_ITEMCODE1'
,p_condition_element=>'P303_ITEMCODE1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39045355494684821)
,p_event_id=>wwv_flow_api.id(39044904244684821)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P303_ITEMCODE1 IS NOT NULL and :P303_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
' SELECT s.PAMTMODE,s.DOCTTYPE||s.SUBTTYPE,s.DOCNUMBR',
'        INTO :P303_SALESTYPE,:P303_TRANTYPE,:P303_DOCNUMBR49',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p303_docnumbr1 AND s.itemcode = :p303_itemcode1;',
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
,p_attribute_02=>'P303_DOCNUMBR1,P303_ITEMCODE1'
,p_attribute_03=>'P303_SALESTYPE,P303_TRANTYPE,P303_DOCNUMBR49'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39045720501684821)
,p_name=>'showhide stats'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39004961477684803)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'parseInt(window.document.getElementById(''P303_S_H_REGION'').value) == 1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39046223454684822)
,p_event_id=>wwv_flow_api.id(39045720501684821)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.document.getElementById(''P303_S_H_REGION'').value = 1;',
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
 p_id=>wwv_flow_api.id(39046746004684822)
,p_event_id=>wwv_flow_api.id(39045720501684821)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if( parseInt(window.document.getElementById(''P303_S_H_REGION'').value) == 1)',
'{',
'window.document.getElementById(''TR'').style.display="block";',
'window.document.getElementById(''IR'').style.display="none";',
'window.document.getElementById(''SR'').style.display="none";',
'--apex.item( "BUT_CRT_FRM" ).show();   ',
'apex.item( "BUT_CRT_TAB" ).hide();',
'/*window.document.getElementById(''BUT_CRT_FRM'').style.display="none";',
'window.document.getElementById(''BUT_CRT_TAB'').style.display="block";*/',
'window.document.getElementById(''P303_S_H_REGION'').value = 0;',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39047190907684822)
,p_name=>'show_hide'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_S_H_REGION'
,p_condition_element=>'P303_S_H_REGION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39047680276684822)
,p_event_id=>wwv_flow_api.id(39047190907684822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(189547111984864418)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39048185667684822)
,p_event_id=>wwv_flow_api.id(39047190907684822)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(189547111984864418)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39048651121684822)
,p_event_id=>wwv_flow_api.id(39047190907684822)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(188871588516577739)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39049129826684822)
,p_event_id=>wwv_flow_api.id(39047190907684822)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(188871588516577739)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39051382531684822)
,p_name=>'on change tabular itemcode'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_TABULARITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54324772197573069)
,p_event_id=>wwv_flow_api.id(39051382531684822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P303_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct LUOMCODE,ITEMDES1,ITEMTYPE,SALEPERC,COMMGRUP',
'into :P303_tabitemunit,:P303_TABITEMDESC,:P303_TABITEMTYPE,:P303_TABSALEPERC,:P303_TABCOMMGRUP',
'FROM nmitemas ',
'          WHERE compcode = :P303_COMPCODE_APPLICATION',
'            AND ITEMCODE = :P303_TABULARITEMCODE ;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            :P303_TABITEMDESC:=0;',
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
'IF :P303_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct ITEMRATE',
'into :P303_TABITEMRATE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P303_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P303_TABULARITEMCODE;',
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
'IF :P303_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P303_TABCOSTRATE',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P303_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P303_TABULARITEMCODE;',
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
'IF :P303_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P303_TABCLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P303_WARECODE',
'            AND b.itemcode =:P303_TABULARITEMCODE',
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
,p_attribute_02=>'P303_COMPCODE_APPLICATION,P303_TABULARITEMCODE'
,p_attribute_03=>'P303_TABCOMMGRUP,P303_TABSALEPERC,P303_TABITEMTYPE,P303_TABCOSTRATE,P303_TABITEMDESC,P303_TABCLOSINGBALANCE,P303_TABITEMRATE,P303_TABITEMUNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39052303673684824)
,p_name=>'on page load for hide region default on tabular '
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39052798523684824)
,p_event_id=>wwv_flow_api.id(39052303673684824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P303_S_H_REGION:=0;',
'end;'))
,p_attribute_02=>'P303_S_H_REGION'
,p_attribute_03=>'P303_S_H_REGION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39053254989684824)
,p_event_id=>wwv_flow_api.id(39052303673684824)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39053645320684824)
,p_name=>'on page load for skillbuilders lov field'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39054142290684824)
,p_event_id=>wwv_flow_api.id(39053645320684824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:24 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :p303_itemcode1 IS NOT NULL AND :p303_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT s.smancode, s.costcode, s.custmrid,s.itemcode,s.batchnum',
'        INTO :p303_lovsalmanid, :p303_lovcostcode, :p303_lovcustomerid,:P303_LOVITEMCODE,:P303_LOVBATCHNO',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p303_docnumbr1 AND s.itemcode = :p303_itemcode1;',
'   END IF;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>'P37_DOCNUMBR1,P37_ITEMCODE1'
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
 p_id=>wwv_flow_api.id(39054539310684824)
,p_name=>'change on batchnum'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_BATCHNUM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39055018282684824)
,p_event_id=>wwv_flow_api.id(39054539310684824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P303_BATCHNUM IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P303_CLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P303_WARECODE',
'            AND b.itemcode =:P303_ITEMCODE',
'            and b.BATCHNUM =:P303_BATCHNUM',
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
,p_attribute_02=>'P303_WARECODE,P303_ITEMCODE,P303_BATCHNUM'
,p_attribute_03=>'P303_CLOSINGBALANCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39055505975684824)
,p_name=>'clear on itemcode'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39055931621684824)
,p_event_id=>wwv_flow_api.id(39055505975684824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P303_BATCHNUM,P303_DISCPCNT,P303_DISAMOUNT,P303_NETAMOUNT,P303_QUENTITY,P303_CLOSINGBALANCE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39056338293684824)
,p_name=>'change  on salmancode'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_SALMANID'
,p_condition_element=>'P303_SALMANID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39056890356684824)
,p_event_id=>wwv_flow_api.id(39056338293684824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P303_SALMANID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.SMANNAME',
'into :P303_SALMNNAME',
'    FROM nmsmnmas  w',
'   WHERE w.compcode = :compcode',
'     AND w.SMANCODE =:P303_SALMANID;',
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
,p_attribute_02=>'P303_SALMANID'
,p_attribute_03=>'P303_SALMNNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39057264496684824)
,p_name=>'clear  for docnum49'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(67380567731726445)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39057775697684825)
,p_event_id=>wwv_flow_api.id(39057264496684824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P303_DOCNUMBR49'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39058137648684825)
,p_name=>'click on delivery challan'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39004208458684803)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39058637684684825)
,p_event_id=>wwv_flow_api.id(39058137648684825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$( "#P303_ERRMSG" ).dialog({',
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
 p_id=>wwv_flow_api.id(39059108110684825)
,p_name=>'click for delivery'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39004208458684803)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39059525632684825)
,p_event_id=>wwv_flow_api.id(39059108110684825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'beforeInsert();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39059929676684825)
,p_name=>'change on orderno from sales offer'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_ORDERNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39060503211684825)
,p_event_id=>wwv_flow_api.id(39059929676684825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P303_ORDERNO IS NOT NULL',
'   THEN',
'      SELECT DISTINCT S.COMPCODE, S.PARTYCDE,',
'             S.SMANCODE, S.COMMCODE, ',
'             S.CUSTMRID, S.COSTCODE,  S.BATCHNUM',
'        INTO :P303_COMPCODE, :P303_PARTYCODE,',
'             :P303_SALMANID, :P303_UNITOFMESURE,',
'             :P303_CUSTOMERID, :P303_COSTCODE, :P303_BATCHNUM',
'        FROM NMSLSOFR S',
'       WHERE S.DOCNUMBR = :P303_ORDERNO;',
'   END IF;',
'END;'))
,p_attribute_02=>'P303_ORDERNO'
,p_attribute_03=>'P303_COMPCODE,P303_PARTYCODE,P303_SALMANID,P303_UNITOFMESURE,P303_CUSTOMERID,P303_WARECODE,P303_COSTCODE,P303_BATCHNUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39060828307684825)
,p_name=>'change on javascript on tabular form'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_ORDERNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39061400389684825)
,p_event_id=>wwv_flow_api.id(39060828307684825)
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
 p_id=>wwv_flow_api.id(39061782081684825)
,p_name=>'New'
,p_event_sequence=>320
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(189547111984864418)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39062237857684825)
,p_event_id=>wwv_flow_api.id(39061782081684825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P303_CUSADDRESS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.model.getValue( this.data.selectedRecords[0], "SALERATE")'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52842620497009404)
,p_name=>'change on P303_IDENTIFY'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_IDENTIFY'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52842759069009405)
,p_event_id=>wwv_flow_api.id(52842620497009404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_count number;',
'begin',
'SELECT count(*) into v_count',
'FROM  nmmrkcus r',
'where r.compcode = :compcode',
'and r.CUSTMOBL=:P303_IDENTIFY ;',
'if :P303_IDENTIFY IS NOT NULL THEN',
'SELECT distinct r.CUSTMRID,r.CUSTNAME D,r.CUSTADR1,r.CUSTADR2,t.MOBILENO,t.MOBILENO,r.PARTYCDE,s.CUSTMAIL,s.BIRTHDATE,s.ANNIVERSARY_DATE,t.DELRTYPE,t.OCCUPATION',
'into :P303_CUSTOMERID,:P303_PRTYNAME,:P303_PARTYAD2,:P303_PARTYAD1,:P303_PHONENUM,:P303_MOBILENO,:P303_PARTYCDE,:P303_CUSTMAIL,:P303_BIRTHDATE,:P303_ANNIVERSARY_DATE,:P303_DELRTYPE,:P303_OCCUPATION',
'FROM  nmcusmas r,nmcusvlg s,sycompty t',
'where r.compcode = :compcode',
'and r.compcode = s.compcode',
'and r.CUSTMRID=s.CUSTMRID',
'and r.compcode = t.compcode',
'and r.CUSTMRID=t.CUSTMRID',
'and r.CUSTMOBL=:P303_IDENTIFY;',
'else',
':P303_CUSTOMERID:=NULL;',
':P303_PRTYNAME:=NULL;',
':P303_PARTYAD2:=NULL;',
':P303_PARTYAD1:=NULL;',
':P303_PHONENUM:=NULL;',
':P303_PARTYCDE:=NULL;',
':P303_CUSTMAIL:=NULL;',
':P303_BIRTHDATE:=NULL;',
':P303_ANNIVERSARY_DATE:=NULL;',
':P303_DELRTYPE:=NULL;',
'--:P303_IDENTIFY:=NULL;',
':P303_OCCUPATION:=NULL;',
':P303_MOBILENO:=NULL;',
'END IF;',
'/*SELECT r.CUSTMRID,r.CUSTNAME D,r.CUSTADR1,r.CUSTADR2,r.CUSTPHON,r.CUSTMOBL,r.PARTYCDE,s.CUSTMAIL,s.BIRTHDATE,s.ANNIVERSARY_DATE',
'into :P303_CUSTOMERID,:P303_PRTYNAME,:P303_PARTYAD2,:P303_PARTYAD1,:P303_PHONENUM,:P303_MOBILENO,:P303_PARTYCDE,:P303_CUSTMAIL,:P303_BIRTHDATE,:P303_ANNIVERSARY_DATE',
'FROM  nmcusmas r,nmcusvlg s',
'where r.compcode = :compcode',
'and r.compcode = s.compcode',
'and r.CUSTMRID=s.CUSTMRID',
'and r.CUSTMOBL=:P303_IDENTIFY;*/',
'',
'',
'select distinct s.WARECODE,s.SMANCODE,s.VATPRSNT,s.ADVANCHED_AMOUNT,s.CARD_AMOUNT,s.CASH_AMOUNT,s.EXCHANGE_AMOUNT ',
'into :P303_WARECODE,:P303_SALMANID,:P303_VATPRCNT,:P303_ADVANCHED_AMOUNT,:P303_CARD_AMOUNT,:P303_CASH_AMOUNT,:P303_EXCHANGE_AMOUNT from nmsalrec s',
'where DOCNUMBR=:P303_DOCNUMBR1;',
'--END IF;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_attribute_02=>'P303_IDENTIFY,P303_DOCNUMBR1'
,p_attribute_03=>'P303_CUSTOMERID,P303_PRTYNAME,P303_PARTYAD2,P303_PARTYAD1,P303_PHONENUM,P303_MOBILENO,P303_PARTYCDE,P303_CUSTMAIL,P303_BIRTHDATE,P303_ANNIVERSARY_DATE,P303_DELRTYPE,P303_OCCUPATION,P303_SALMANID,P303_VATPRCNT,P303_ADVANCHED_AMOUNT,P303_CARD_AMOUNT,P3'
||'03_CASH_AMOUNT,P303_EXCHANGE_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40647709752464403)
,p_name=>'Change itemcode'
,p_event_sequence=>340
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(189547111984864418)
,p_triggering_element=>'ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40647874172464404)
,p_event_id=>wwv_flow_api.id(40647709752464403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select distinct LUOMCODE,(SELECT distinct initcap(NMCODDES) CODEDESC',
'  FROM nmcodmas',
' WHERE  compcode=:P303_COMPCODE_APPLICATION',
' and NMSOFCDE=p.ITEMMODL and NMHRDCDE=''PTY'' and MODLCODE=''NM'') ITEMDES1,ITEMTYPE,COMMGRUP,COMMGRUP COMMCODE',
'into :LUOMCODE,:ITEMDESC,:ITEMTYPE,:INTERESTED_MODEL,:COMMCODE',
'FROM nmitemas p',
'          WHERE compcode = :P303_COMPCODE_APPLICATION',
'            AND ITEMCODE = :ITEMCODE ;',
'            ',
'/*select distinct SALERATE,WGHTQNTY,CARAT,APPRQNTY',
'into :SALERATE,:WGHTQNTY,:CARAT,:APPRQNTY',
'from nmenudtl ',
'where BATCHDTE=(select max(BATCHDTE) from nmenudtl',
'where COMPCODE=:P303_COMPCODE_APPLICATION',
'and ITEMCODE=:ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:P303_COMPCODE_APPLICATION',
'and ITEMCODE=:ITEMCODE;',
'',
'SELECT DISTINCT BATCHNUM,CLBALQTY',
'into :BATCHNUM,:STOCK_QTY',
'           FROM (SELECT   w.batchnum,sum(nvl(w.APPRQNTY,0))-sum(nvl(w.TRNSQNTY,0)) CLBALQTY',
'                     FROM nmenudtl w',
'                    WHERE w.compcode = :P303_COMPCODE_APPLICATION',
'                      AND w.warecode = :P303_WARECODE',
'                      AND w.itemcode = :ITEMCODE',
'                     ',
'                 GROUP BY w.batchnum,',
'                          w.batchdte,',
'                          w.itemcode,',
'                          w.warecode',
'                   HAVING sum(nvl(w.APPRQNTY,0))-sum(nvl(w.TRNSQNTY,0)) > 0',
'                 ORDER BY w.batchdte DESC);*/',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_attribute_02=>'P303_COMPCODE_APPLICATION,P303_WARECODE,ITEMCODE'
,p_attribute_03=>'LUOMCODE,ITEMDESC,ITEMTYPE,INTERESTED_MODEL,COMMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41042398566735832)
,p_name=>'Discount percent'
,p_event_sequence=>360
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(189547111984864418)
,p_triggering_element=>'DISCPCNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41042512095735833)
,p_event_id=>wwv_flow_api.id(41042398566735832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':DISCAMNT:=(:SALERATE*:DISCPCNT)/100;',
':MSLCAMNT:=:SALERATE-(:SALERATE*:DISCPCNT)/100;',
'end;'))
,p_attribute_02=>'SALERATE,DISCPCNT'
,p_attribute_03=>'DISCAMNT,MSLCAMNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41042621347735834)
,p_name=>'Discount Amount'
,p_event_sequence=>370
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(189547111984864418)
,p_triggering_element=>'DISCAMNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41042722583735835)
,p_event_id=>wwv_flow_api.id(41042621347735834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':MSLCAMNT:=:SALERATE-:DISCAMNT;',
'end;'))
,p_attribute_02=>'SALERATE,DISCAMNT'
,p_attribute_03=>'MSLCAMNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41042879200735836)
,p_name=>'Making Charge'
,p_event_sequence=>380
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(189547111984864418)
,p_triggering_element=>'MAKING_CHARGE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41042988567735837)
,p_event_id=>wwv_flow_api.id(41042879200735836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':MSLCAMNT:=(:SALERATE-:DISCAMNT)+:MAKING_CHARGE;',
'end;'))
,p_attribute_02=>'SALERATE,DISCPCNT,DISCAMNT,MAKING_CHARGE'
,p_attribute_03=>'MSLCAMNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41861466933845803)
,p_name=>'Change vinnumer'
,p_event_sequence=>390
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(189547111984864418)
,p_triggering_element=>'VINNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41861550608845804)
,p_event_id=>wwv_flow_api.id(41861466933845803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_date date;',
'begin',
'select distinct decode(substr(ITEMCODE,1,1),b.CATEGORY,round((nvl(PRICE,0)/nvl(CONVART_FRMVALUE5,0))*WGHTQNTY,2),SALERATE) SALERATE,WGHTQNTY,CARAT,APPRQNTY',
'into :SALERATE,:WGHTQNTY,:CARAT,:APPRQNTY',
'from nmenudtl a,nmmrkrte b',
'where decode(substr(ITEMCODE,1,1),b.CATEGORY,b.EFECTIVE_DATE,a.BATCHDTE) = decode(substr(ITEMCODE,1,1),b.CATEGORY,(select max(EFECTIVE_DATE) from nmmrkrte',
'where COMPCODE=:P303_COMPCODE_APPLICATION',
'and a.CARAT=UOM(+)',
'group by CATEGORY,UOM',
'having max(EFECTIVE_DATE)=max(EFECTIVE_DATE)),(select max(BATCHDTE) from nmenudtl',
'where a.COMPCODE=:P303_COMPCODE_APPLICATION',
'and VINNUMBR=decode(substr(:VINNUMBR,1,instr(:VINNUMBR,''-'',1)-1),(select distinct PARNTCDE from sycdedtl where compcode=a.compcode and CHILDCDE=a.itemcode1  and PARNTCDE=substr(:VINNUMBR,1,instr(:VINNUMBR,''-'',1)-1)),a.ITEMCODE1||''-''||a.STYLECODE,:VIN'
||'NUMBR)',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))) ',
'and a.COMPCODE=:P303_COMPCODE_APPLICATION',
'and VINNUMBR=decode(substr(:VINNUMBR,1,instr(:VINNUMBR,''-'',1)-1),(select distinct PARNTCDE from sycdedtl where compcode=a.compcode and CHILDCDE=a.itemcode1    and PARNTCDE=substr(:VINNUMBR,1,instr(:VINNUMBR,''-'',1)-1)),a.ITEMCODE1||''-''||a.STYLECODE,:V'
||'INNUMBR)',
'and substr(ITEMCODE,1,1)=b.CATEGORY(+)',
'and a.STYLECODE=substr(:VINNUMBR,instr(:VINNUMBR,''-'',1)+1)',
'and a.BOOKCODE is null',
'and a.FINSHGD_STATUS=''Y''',
'and (nvl(a.apprqnty,0)-nvl(a.trnsqnty,0))>0',
'and a.CARAT=b.UOM(+);',
'',
'SELECT DISTINCT BATCHNUM,CLBALQTY,ITEMCODE1',
'into :BATCHNUM,:STOCK_QTY,:ITEMCODE',
'           FROM (SELECT   w.batchnum,w.ITEMCODE1,sum(nvl(w.APPRQNTY,0))-sum(nvl(w.TRNSQNTY,0)) CLBALQTY',
'                     FROM nmenudtl w',
'                    WHERE w.compcode = :P303_COMPCODE_APPLICATION',
'                      AND w.warecode = :P303_WARECODE',
'                      AND w.VINNUMBR = decode(substr(:VINNUMBR,1,instr(:VINNUMBR,''-'',1)-1),(select distinct PARNTCDE from sycdedtl where compcode=w.compcode and CHILDCDE=w.itemcode1  and PARNTCDE=substr(:VINNUMBR,1,instr(:VINNUMBR,''-'',1)-1)),w.ITEMCO'
||'DE1||''-''||w.STYLECODE,:VINNUMBR)',
'                     and w.STYLECODE=substr(:VINNUMBR,instr(:VINNUMBR,''-'',1)+1)',
'                 and w.BOOKCODE is null',
'                 and w.FINSHGD_STATUS=''Y''',
'                 and (nvl(w.apprqnty,0)-nvl(w.trnsqnty,0))>0',
'                 GROUP BY w.batchnum,',
'                          w.batchdte,',
'                          w.itemcode,',
'                          w.warecode,',
'                          w.ITEMCODE1',
'                   HAVING sum(nvl(w.APPRQNTY,0))-sum(nvl(w.TRNSQNTY,0)) > 0',
'                 ORDER BY w.batchdte DESC);',
'                 null;',
'             -- if    ',
'              /*   select distinct LUOMCODE,(SELECT distinct initcap(NMCODDES) CODEDESC',
'  FROM nmcodmas',
' WHERE  compcode=:P303_COMPCODE_APPLICATION',
' and NMSOFCDE=p.ITEMMODL and NMHRDCDE=''PTY'' and MODLCODE=''NM'') ITEMDES1,ITEMTYPE,COMMGRUP,COMMGRUP COMMCODE',
'into :LUOMCODE,:ITEMDESC,:ITEMTYPE,:INTERESTED_MODEL,:COMMCODE',
'FROM nmitemas p',
'          WHERE compcode = :P303_COMPCODE_APPLICATION',
'            AND ITEMCODE = :ITEMCODE;*/',
'',
'',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_attribute_02=>'P303_COMPCODE_APPLICATION,P303_WARECODE,VINNUMBR'
,p_attribute_03=>'ITEMCODE,BATCHNUM,STOCK_QTY,SALERATE,WGHTQNTY,CARAT,APPRQNTY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10892660178188973)
,p_name=>'closeX'
,p_event_sequence=>400
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10892767338188974)
,p_event_id=>wwv_flow_api.id(10892660178188973)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'parent.$(''.ui-dialog-titlebar-close'').hide();'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38996223356684799)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(189547111984864418)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Multiple Item Invoice - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54323593685573057)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert into SYCOMPTY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_partyname varchar2(100);',
'v_count number;',
'begin',
'select count(MOBILENO) into v_count from sycompty',
'where MOBILENO = :P303_IDENTIFY;',
'if v_count = 0 then',
'--IF :P303_CUSTOMERID IS NOT NULL AND :P303_PARTYCDE is NOT NULL then',
'',
'INSERT INTO SYCOMPTY (COMPCODE,',
'                      CUSTMRID,',
'                      PARTYCDE,',
'                      CUSTTYPE,',
'                      PARTYTYP,',
'                      IDENTIFY,',
'                      PRTYNAME,',
'                      FATHERS_NAME,',
'                      MOBILENO,',
'                      TELENOFF,',
'                      PRESENT_ADDRESS1,',
'                      PRESENT_ADDRESS2,',
'                      PRESENT_ADDRESS3,',
'                      NOMINEE_NAME,',
'                      OCCUPATION,',
'                      TELENRES,',
'                      PERMANENT_ADDRESS1,',
'                      PERMANENT_ADDRESS2,',
'                      PERMANENT_ADDRESS3,',
'                      NOMINEE_RELATIONSHIP,',
'                      PEMAILID,',
'                      ZONLCODE,',
'                      AREACODE,',
'                      FIRST_GUARANTOR,',
'                      FIRST_GUARANTOR_SO_DO,',
'                      FIRST_GUARANTOR_ADD1,',
'                      FIRST_GUARANTOR_ADD2,',
'                      FIRST_GUARANTOR_MOB,',
'                      SECOND_GUARANTOR,',
'                      SECOND_GUARANTOR_SO_DO,',
'                      SECOND_GUARANTOR_ADD1,',
'                      SECOND_GUARANTOR_ADD2,',
'                      SECOND_GUARANTOR_MOB,',
'                      CUSTOMER_CODE,',
'                      OPRSTAMP,',
'                      TIMSTAMP,',
'                      PARTYAD1,',
'                      PARTYAD2,',
'                      PARTYAD3)',
'     VALUES (:COMPCODE,',
'             :P303_CUSTOMERID,',
'             :P303_PARTYCDE,',
'             null,',
'             ''CU'',',
'             :P303_IDENTIFY,',
'             :P303_PRTYNAME,',
'             null,',
'             :P303_MOBILENO,',
'             null,',
'             :P303_PARTYAD2,',
'             null,',
'             null,',
'             null,',
'             :P303_OCCUPATION,',
'             null,',
'             :P303_PARTYAD1,',
'             null,',
'             null,',
'             null,',
'             :P303_CUSTMAIL,',
'             null,',
'             null,',
'             null,',
'             null,',
'             null,',
'             null,',
'             null,',
'             null,',
'             null,',
'             null,',
'             null,',
'             null,',
'             :P303_CUSTOMERID,',
'             :APP_USER,',
'             SYSDATE,',
'             :P303_PARTYAD1,',
'             :P303_PARTYAD2,',
'             null);',
'        else',
'        UPDATE SYCOMPTY',
'   SET PRTYNAME = :P303_PRTYNAME,',
'       PARTYAD1 = :P303_PARTYAD1,',
'       PARTYAD2 = :P303_PARTYAD2,',
'       PHONENUM = :P303_PHONENUM,',
'       MOBILENO = :P303_MOBILENO,',
'       PEMAILID = :P303_CUSTMAIL,',
'       OPRSTAMP = :APP_USER,',
'       TIMSTAMP = SYSDATE,',
'       OCCUPATION=:P303_OCCUPATION',
' WHERE     COMPCODE = :COMPCODE',
'       AND PARTYCDE = :P303_PARTYCDE',
'       AND CUSTMRID = :P303_CUSTOMERID;',
'--end if;',
'end if;',
'----------Updata Customer Master---------',
'/*update nmcusmas set partycde=:P139_PARTYCDE',
'where compcode=:compcode',
'and custmrid=:P139_CUSTMRID;*/',
'----------Updata Customer Master---------',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42126622975178027)
,p_process_sequence=>15
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert into NMCUSVLG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_docnum1 varchar2(50);',
' nxtptycde number(10);',
' vcount number;',
'begin',
'',
'',
'Docnumber_Generation(:P303_COMPCODE_APPLICATION,''NM'',''CS'', 2, sysdate,:P303_WARECODE, ''NM'', v_docnum1);',
'',
'insert into nmcusvlg(COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, SMANCODE, RAISEDBY, CUSTMRID,APP_FLG,PARTYCD1, BIRTHDATE,ANNIVERSARY_DATE,OPRSTAMP, TIMSTAMP )',
'values (:P303_COMPCODE_APPLICATION,''CS'',2,v_docnum1,:P303_DOCTDATE,:P303_SALMANID,:APP_USER,:P303_CUSTOMERID,''Y'',:P303_PARTYCDE,:P303_BIRTHDATE,:P303_ANNIVERSARY_DATE,:APP_USER,sysdate);',
'',
'--IF :P303_CUSTOMERID IS not NULL THEN',
'',
' /* begin',
'  select count(MOBILENO) into vcount from sycompty',
'where MOBILENO = :P303_IDENTIFY;',
'      select count(*)',
'      into vcount',
'      from nmcusmas',
'      where PARTYCDE = :P303_PARTYCDE',
'       and compcode = :P303_COMPCODE_APPLICATION;',
'       exception',
'    when no_data_found then',
'    vcount := 0;',
'    when too_many_rows then',
'    vcount := 0;',
'    when others then',
'    vcount := 0;',
'',
'end;',
'if vcount = 0 then',
'',
'insert into nmmrkpty(COMPCODE,PARTYTYP,PARTYCDE,OCCUPATION,PRTYNAME,IDENTIFY,MOBILENO,PARTYAD2,PARTYAD1,OPRSTAMP,TIMSTAMP,PHONENUM,CUSTMRID,CUSTOMER_CODE,CREDDAYS )',
'values (:COMPCODE,''CU'',:P303_PARTYCDE,:P303_OCCUPATION,:P303_PRTYNAME,:P303_IDENTIFY,:P303_MOBILENO,:P303_PARTYAD2,:P303_PARTYAD1,:APP_USER,sysdate,',
'       :P303_PHONENUM,:P303_CUSTOMERID,:P303_CUSTOMERID,90);',
'commit;',
'ELSE',
'  /*  UPDATE nmmrkpty',
'    SET DELRTYPE = :P303_DELRTYPE,',
'        OCCUPATION = :P303_OCCUPATION,',
'        PRTYNAME = :P303_PRTYNAME,',
'        IDENTIFY = :P303_IDENTIFY,',
'        MOBILENO = :P303_MOBILENO,',
'        PARTYAD2 = :P303_PARTYAD2,',
'        PARTYAD1 = :P303_PARTYAD1,',
'        WHSZONFK = :P303_WHSZONFK,',
'        PHONENUM = :P303_PHONENUM',
'    WHERE PARTYCDE = :P303_PARTYCDE',
'     AND COMPCODE = :COMPCODE;*/',
'    -- NULL;',
'--    COMMIT;',
'--end if;  ',
'',
'--END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39001576559684803)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39031539933684814)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update into nmsalrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/06 18:56 (Formatter Plus v4.8.8) */',
'BEGIN',
'   UPDATE nmsalrec',
'      SET compcode = :compcode,',
'          docttype = ''SI'',',
'          subttype = :p303_subttype,',
'          docnumbr = :p303_docnumbr,',
'          doctdate = :p303_doctdate,',
'          serlnumb = :p303_serlnumb,',
'          partycde = :p303_partycode,',
'          smancode = :P303_SALMANID,',
'          raisedby = ''RILADM'',',
'          apprvdby = ''RILADM'',',
'          apprdate = NULL,',
'          reqddate = NULL,',
'          commcode = :p303_unitofmesure,',
'          itemcode = :p303_itemcode,',
'          itemtype = ''S'',',
'          itemdesc = :p303_itemdesc,',
'          itemlong = :p303_itemdesc,',
'          itemrate = NULL,',
'          markpcnt = NULL,',
'          discpcnt = :p303_discpcnt,',
'          discamnt = :p303_disamount,',
'          spldispc = NULL,',
'          spldisnt = NULL,',
'          salerate = :p303_salprice,',
'          huomcode = NULL,',
'          factrval = NULL,',
'          luomcode = NULL,',
'          orgnqnty = :p303_quentity,',
'          apprqnty = :p303_quentity,',
'          trnsqnty = NULL,',
'          msfcamnt = :p303_netamount,',
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
'          costcode = :p303_costcode,',
'          warecode = :p303_warecode,',
'          postflag = NULL,',
'          prntflag = NULL,',
'          pricflag = NULL,',
'          statuscd = :p303_statuscd,',
'          oprstamp = :APP_USER,',
'          timstamp = :p303_timstamp,',
'          procflag = NULL,',
'          trnsqty2 = NULL,',
'          batchnum = :p303_batchnum,',
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
'          custmrid = :p303_customerid,',
'          termscod = NULL,',
'          costrate = NULL,',
'          salertef = NULL,',
'          othecost = NULL,',
'          deliverd = NULL,',
'          salrecfk = NULL,',
'          pricremk = NULL,',
'          pamtmode = :p303_salestype,',
'          othramnt = NULL,',
'          vatprsnt = NULL,',
'          vatamont = NULL,',
'          totdispt = NULL,',
'          totdisam = NULL',
'    WHERE docnumbr = :p303_docnumbr',
'      AND doctdate = :p303_doctdate',
'      AND itemcode = :p303_itemcode;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39001949976684803)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Update Successfully................'
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
 p_id=>wwv_flow_api.id(38995911211684799)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(189547111984864418)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into actrndtl from tabular form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'Dpr_Nmpost_Sales',
'                                            (',
'                                        :P303_COMPCODE_APPLICATION, :P303_DOCTTYPE,',
'                                 :P303_SUBTTYPE,:P303_DOCNUMBR,:P303_DOCTDATE',
'                                            );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39001576559684803)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39031997317684816)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into actrndtl'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'Dpr_Nmpost_Sales',
'                                            (',
'                                        :P303_COMPCODE_APPLICATION, :P303_DOCTTYPE,',
'                                 :P303_SUBTTYPE,:P303_DOCNUMBR,:P303_DOCTDATE',
'                                            );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39001576559684803)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39032406806684816)
,p_process_sequence=>60
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
'	where compcode = :P303_COMPCODE_APPLICATION',
'	  and docttype = :P303_DOCTTYPE',
'	  and subttype = :P303_SUBTTYPE',
'	  and docnumbr = :P303_DOCNUMBR',
'	  and doctdate = :P303_DOCTDATE;',
'',
'BEGIN',
'		Begin',
'			Select costcode into cst_Cde ',
'			  from nmwhsmas',
'			 where compcode = :P303_COMPCODE_APPLICATION',
'			   and warecode = :P303_WARECODE;',
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
'    Values(:P303_COMPCODE_APPLICATION,:P303_DOCTTYPE ,:P303_SUBTTYPE,:P303_DOCNUMBR,:P303_DOCTDATE,',
'                 run_srl       ,i.partycde,i.RAISEDBY,i.APPRVDBY    ,i.APPRDATE                ,',
'                 i.REQDDATE    ,i.COMMCODE,i.ITEMCODE,i.ITEMTYPE    ,i.MCSERIAL                ,',
'                 i.ITEMDESC    ,i.ITEMLONG,i.ITEMRATE,i.DISCPCNT    ,i.DISCAMNT                ,',
'                 i.SPLDISPC    ,i.SPLDISNT,i.SALERATE,i.HUOMCODE    ,i.FACTRVAL                ,',
'                 i.LUOMCODE    ,i.orgnqnty,i.apprqnty,i.MSFCAMNT    ,i.CURRCODE, ',
'                 i.EXCGRATE    ,i.MSLCAMNT,i.REFNUMBR,i.REFNDATE    ,i.DOCTTYPE   , ',
'                 i.SUBTTYPE    ,i.DOCNUMBR,i.DOCTDATE,i.SERLNUMB    ,i.REMARKSS                ,',
'                 :P303_COSTCODE,:P303_WARECODE,''APR'' ,:APP_USER           ,',
'                 i.BATCHNUM    ,i.itemrate,i.COSTRATE,i.TRNSQNTY);',
'--',
' End Loop;',
' COMMIT;',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39032757011684816)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into nmstkrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cur_qty 	Nmsalrec.orgnqnty%type;  ',
'  run_srl 	Nmsalrec.serlnumb%type := 0;',
'  iss_docno	Nmstkrec.docnumbr%type;',
'  cst_cde		Nmstkrec.costcode%type;',
'  ',
'	Cursor C1 is ',
'	Select * from nmsalrec',
'	where compcode = :P303_COMPCODE_APPLICATION',
'	  and docttype = :P303_DOCTTYPE',
'	  and subttype = :P303_SUBTTYPE',
'	  and docnumbr = :P303_DOCNUMBR',
'	  and doctdate = :P303_DOCTDATE;',
'',
'BEGIN',
'		Begin',
'			Select costcode into cst_Cde ',
'			  from nmwhsmas',
'			 where compcode = :P303_COMPCODE_APPLICATION',
'			   and warecode = :P303_WARECODE;',
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
'    Values(:P303_COMPCODE_APPLICATION,:P303_DOCTTYPE ,:P303_SUBTTYPE,:P303_DOCNUMBR,:P303_DOCTDATE,',
'                 run_srl       ,i.partycde,i.RAISEDBY,i.APPRVDBY    ,i.APPRDATE                ,',
'                 i.REQDDATE    ,i.COMMCODE,i.ITEMCODE,i.ITEMTYPE    ,i.MCSERIAL                ,',
'                 i.ITEMDESC    ,i.ITEMLONG,i.ITEMRATE,i.DISCPCNT    ,i.DISCAMNT                ,',
'                 i.SPLDISPC    ,i.SPLDISNT,i.SALERATE,i.HUOMCODE    ,i.FACTRVAL                ,',
'                 i.LUOMCODE    ,i.orgnqnty,i.apprqnty,i.MSFCAMNT    ,i.CURRCODE, ',
'                 i.EXCGRATE    ,i.MSLCAMNT,i.REFNUMBR,i.REFNDATE    ,i.DOCTTYPE   , ',
'                 i.SUBTTYPE    ,i.DOCNUMBR,i.DOCTDATE,i.SERLNUMB    ,i.REMARKSS                ,',
'                 :P303_COSTCODE,:P303_WARECODE,''APR'' ,:APP_USER           ,',
'                 i.BATCHNUM    ,i.itemrate,i.COSTRATE,i.TRNSQNTY);',
'--',
' End Loop;',
' COMMIT;',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39004584741684803)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39033128969684816)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'value assign into application item'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':DEVDOCNUMBR:=:P303_DEVDOCNUMBR;',
':GATDOCNUMBR:=:P303_GATDOCNUMBR;',
':DOCNUMBR:=:P303_DOCNUMBR;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(56073615248501395)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39033610735684816)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update into nmdevrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   UPDATE nmdevrec',
'      SET TNSPRTYP = :p303_TNSPRTYP,',
'          TRNSREGN = :p303_TRNSREGN,',
'          TNSCHSNO = :p303_TNSCHSNO,',
'          DRIVNAME = :p303_DRIVNAME,',
'          DVNLIDNO = :p303_DVNLIDNO,',
'          DVLICSNO = :p303_DVLICSNO,',
'          DELVLOCT = :p303_DELVLOCT',
'    WHERE UPDOCNUM = :p303_docnumbr',
'      AND UPDOCDTE = :p303_doctdate',
'      and DOCTTYPE = ''GP''',
'      and SUBTTYPE=1;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(62628686573112652)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54323794973573059)
,p_process_sequence=>90
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Docnumber Generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
'',
'--salrec',
'docnumber_generation(:P303_COMPCODE_APPLICATION, :modlcode, :P303_DOCTTYPE,',
'                        :P303_SUBTTYPE, sysdate  ,:P303_WARECODE,',
'                        :modlcode, newno); ',
':P303_DOCNUMBR:= newno; ',
'',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'--raise_application_error(-20001,''Others Problem'');',
'raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39001576559684803)
,p_process_success_message=>'Successfully Insert <br>Invoice No. &P303_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54323701448573058)
,p_process_sequence=>100
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert into sycompty'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_count number;',
'begin',
'select count(MOBILENO) into v_count from sycompty',
'where MOBILENO = :P303_IDENTIFY;',
'',
'if v_count = 0 then',
'select TO_CHAR (sysdate, ''rrrrmmdd'')|| LPAD (seq_custmrid.NEXTVAL, 5, 0) a',
'into :P303_CUSTOMERID',
'from dual;',
'',
'Select        upper(''CU'')|| lpad(to_char(max(to_number(substr(PARTYCDE,3,5)))+1),4,0) a ',
'into :P303_PARTYCDE',
'from  sycompty;',
'end if;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39001576559684803)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42126555644178026)
,p_process_sequence=>110
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert into nmmrkpty'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' V_DOCNUM varchar2(10);',
'v_customer varchar2(20);',
'vcount number;',
'begin',
'select count(*)',
'      into vcount',
'      from sycompty',
'      where MOBILENO = :P303_IDENTIFY',
'       and compcode = :compcode;',
' if vcount=0 then',
'--if :P303_DOCNUMBR is  null then',
'select TO_CHAR (sysdate, ''rrrrmmdd'')|| LPAD (seq_custmrid.NEXTVAL, 5, 0) a',
'into :P303_CUSTOMERID',
'from dual;',
'',
'',
'Select        upper(''CU'')|| lpad(to_char(max(to_number(substr(PARTYCDE,3,5)))+1),4,0) a ',
'into :P303_PARTYCDE',
'from  sycompty;',
'--end if;',
'else',
'/*select CUSTMRID,PARTYCDE',
'      into :P303_CUSTOMERID,:P303_PARTYCDE',
'      from nmmrkcus',
'      where CUSTMOBL = :P303_IDENTIFY',
'       and compcode = :compcode;*/',
'       null;',
'end if;',
'',
'',
'end;',
'',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39001576559684803)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38996669310684799)
,p_process_sequence=>120
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(189547111984864418)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre insert on nmsalrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'docnum varchar2(500);',
'begin',
'',
':NMFILENO:=:P303_NMFILENO;',
':COMPCODE:=:P303_COMPCODE_APPLICATION;',
':DOCTTYPE:=:P303_DOCTTYPE; ',
':SUBTTYPE:=:P303_SUBTTYPE; ',
':DOCNUMBR:=:P303_DOCNUMBR;',
':DOCTDATE:=:P303_DOCTDATE;  ',
':CUSTMRID:=:P303_CUSTOMERID; ',
':PARTYCDE:=:P303_PARTYCDE;',
':OPRSTAMP :=:APP_USER;',
':TIMSTAMP :=sysdate;',
':COSTCODE:=:P303_COSTCODE;',
':MSFCAMNT:=:MSLCAMNT;',
'--:LUOMCODE:=:COMMCODE;',
':WARECODE:=:P303_WARECODE;',
':STATUSCD:=''APR'';',
':UPDOCTYP:=:P303_S_PRDTYP;',
':UPSUBTYP:=:P303_S_PRSTYP;',
':UPDOCNUM:=:P303_ORDERNO;',
':SMANCODE:=:P303_SALMANID;',
':ORGNQNTY:=:APPRQNTY;',
'--:DISCPCNT:=:P303_DISCPCNT;',
':VATPRSNT:=:P303_VATPRCNT;',
':ADVANCHED_AMOUNT:=:P303_ADVANCHED_AMOUNT;',
':EXCHANGE_AMOUNT:=:P303_EXCHANGE_AMOUNT;',
'/*if :DISCPCNT>0 and :DISCPCNT IS NOT NULL then',
':DISCAMNT:=((:SALERATE*:APPRQNTY)*nvl(:DISCPCNT,0))/100;',
'else',
':DISCAMNT:=:DISCAMNT;',
'end if;*/',
':DISCAMNT:=:DISCAMNT;',
':VATAMONT:=((:SALERATE*:APPRQNTY)*nvl(:VATPRSNT,0))/100;',
'--:MSLCAMNT:=:MSLCAMNT;',
'--:MSFCAMNT:=:MSFCAMNT;',
'--:MSLCAMNT:=(:SALERATE*:APPRQNTY)-((:SALERATE*:APPRQNTY)*nvl(:DISCPCNT,0)/100)+((:SALERATE*:APPRQNTY)*nvl(:VATPRSNT,0)/100);',
'--:MSFCAMNT:=(:SALERATE*:APPRQNTY)-((:SALERATE*:APPRQNTY)*nvl(:DISCPCNT,0)/100)+((:SALERATE*:APPRQNTY)*nvl(:VATPRSNT,0)/100);',
'--:P303_MSFCAMNT:=(nvl(:P303_SALPRICE,0)*nvl(:P303_QUENTITY,0))-nvl(:P303_DISCPCNT,0);',
':CASH_AMOUNT:=:P303_CASH_AMOUNT;',
':CARD_AMOUNT:=:P303_CARD_AMOUNT;',
':PAMTMODE:=:P303_SALESTYPE;',
':COMMCODE:=''003'';',
'',
'',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,''Others Problem'');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
