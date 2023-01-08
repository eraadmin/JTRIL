prompt --application/pages/page_00384
begin
--   Manifest
--     PAGE: 00384
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
 p_id=>384
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Product Exchange'
,p_page_mode=>'MODAL'
,p_step_title=>'Product Exchange'
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
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180909130022'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(200595987741268841)
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
 p_id=>wwv_flow_api.id(262596911575683057)
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
 p_id=>wwv_flow_api.id(266925282348709612)
,p_plug_name=>'&P384_DISPLAY.'
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
 p_id=>wwv_flow_api.id(200581966946111430)
,p_plug_name=>'Sales Information'
,p_parent_plug_id=>wwv_flow_api.id(266925282348709612)
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
 p_id=>wwv_flow_api.id(200579788885051562)
,p_plug_name=>'Order and Booking Details'
,p_parent_plug_id=>wwv_flow_api.id(200581966946111430)
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
,p_plug_display_when_condition=>'P384_TRANTYPE'
,p_plug_display_when_cond2=>'S12'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(200654975367072547)
,p_plug_name=>'Sales Details'
,p_parent_plug_id=>wwv_flow_api.id(200581966946111430)
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
 p_id=>wwv_flow_api.id(66218721251470921)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_api.id(200654975367072547)
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
 p_id=>wwv_flow_api.id(200584760675156915)
,p_plug_name=>'Sales Information'
,p_parent_plug_id=>wwv_flow_api.id(266925282348709612)
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
 p_id=>wwv_flow_api.id(200582360497119021)
,p_plug_name=>'Customer Information'
,p_parent_plug_id=>wwv_flow_api.id(200584760675156915)
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
 p_id=>wwv_flow_api.id(200762872606384065)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(200584760675156915)
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
 p_id=>wwv_flow_api.id(200765161796475587)
,p_plug_name=>'Item Details'
,p_parent_plug_id=>wwv_flow_api.id(200584760675156915)
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
 p_id=>wwv_flow_api.id(201440685264762266)
,p_plug_name=>'Multiple Item Invoice'
,p_region_name=>'invoice'
,p_parent_plug_id=>wwv_flow_api.id(200584760675156915)
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
'MSLCAMNT "PRV_TOTAL",',
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
'VINNUMBR "IDENTIFICATION_NO",',
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
'null "STOCK_QTY"',
'from "#OWNER#"."NMSALREC"',
'where DOCNUMBR=:P384_DOCNUMBR1 ',
'and DOCTTYPE=:P384_DOCTTYPE',
'and SUBTTYPE=:P384_SUBTTYPE',
'--and UPDOCNUM IS NULL',
'--and ITEMCODE=:P384_ITEMCODE1  ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P384_DOCNUMBR1,P384_ITEMCODE1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47039426238358114)
,p_name=>'IDENTIFICATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IDENTIFICATION_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>960
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
 p_id=>wwv_flow_api.id(47039796582358118)
,p_name=>'PRV_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRV_TOTAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>980
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
 p_id=>wwv_flow_api.id(50541870866190265)
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
 p_id=>wwv_flow_api.id(50542247432190268)
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
 p_id=>wwv_flow_api.id(52541586887362254)
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
 p_id=>wwv_flow_api.id(52935426358633674)
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
 p_id=>wwv_flow_api.id(52935775147633678)
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
 p_id=>wwv_flow_api.id(52935958329633679)
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
 p_id=>wwv_flow_api.id(54019921904075872)
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
 p_id=>wwv_flow_api.id(54019983835075873)
,p_name=>'EXCHANGE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCHANGE_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Exchange<br>Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>940
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
 p_id=>wwv_flow_api.id(66217511026470909)
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
 p_id=>wwv_flow_api.id(66217831774470912)
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
'SELECT distinct nmcoddes, nmsofcde',
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
 p_id=>wwv_flow_api.id(66217974931470913)
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
' SELECT distinct nmcoddes,nmsofcde',
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
 p_id=>wwv_flow_api.id(66218562483470919)
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
 p_id=>wwv_flow_api.id(138610708004861501)
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
 p_id=>wwv_flow_api.id(138610837474861502)
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
 p_id=>wwv_flow_api.id(138610929432861503)
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
 p_id=>wwv_flow_api.id(138611065710861504)
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
 p_id=>wwv_flow_api.id(138611125290861505)
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
 p_id=>wwv_flow_api.id(138611287778861506)
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
 p_id=>wwv_flow_api.id(138611362533861507)
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
 p_id=>wwv_flow_api.id(138611410017861508)
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
 p_id=>wwv_flow_api.id(138611512483861509)
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
 p_id=>wwv_flow_api.id(138611616440861510)
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
 p_id=>wwv_flow_api.id(138611727652861511)
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
 p_id=>wwv_flow_api.id(138611840245861512)
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
 p_id=>wwv_flow_api.id(138611938051861513)
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
 p_id=>wwv_flow_api.id(138612027485861514)
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
 p_id=>wwv_flow_api.id(138612096285861515)
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(138612290470861516)
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
 p_id=>wwv_flow_api.id(138612381701861517)
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
 p_id=>wwv_flow_api.id(138612454562861518)
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
 p_id=>wwv_flow_api.id(138612527422861519)
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
 p_id=>wwv_flow_api.id(138612639333861520)
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
 p_id=>wwv_flow_api.id(138612737760861521)
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
 p_id=>wwv_flow_api.id(138612818312861522)
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
 p_id=>wwv_flow_api.id(138612967383861523)
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
 p_id=>wwv_flow_api.id(138613058333861524)
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
 p_id=>wwv_flow_api.id(138613123576861525)
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
 p_id=>wwv_flow_api.id(138613259076861526)
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
 p_id=>wwv_flow_api.id(138613337243861527)
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
 p_id=>wwv_flow_api.id(139327476464497478)
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
 p_id=>wwv_flow_api.id(139327535307497479)
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
 p_id=>wwv_flow_api.id(139327640157497480)
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
 p_id=>wwv_flow_api.id(139327705241497481)
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
 p_id=>wwv_flow_api.id(139327868664497482)
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
 p_id=>wwv_flow_api.id(139327949738497483)
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
 p_id=>wwv_flow_api.id(139327995510497484)
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
 p_id=>wwv_flow_api.id(139328178152497485)
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
 p_id=>wwv_flow_api.id(139328270410497486)
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
 p_id=>wwv_flow_api.id(139328331570497487)
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
 p_id=>wwv_flow_api.id(139328399615497488)
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
 p_id=>wwv_flow_api.id(139328499285497489)
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
 p_id=>wwv_flow_api.id(139328614583497490)
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
 p_id=>wwv_flow_api.id(139328744971497491)
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
 p_id=>wwv_flow_api.id(139328850513497492)
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
 p_id=>wwv_flow_api.id(139328900617497493)
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
 p_id=>wwv_flow_api.id(139329026670497494)
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
 p_id=>wwv_flow_api.id(139329114930497495)
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
 p_id=>wwv_flow_api.id(139329257282497496)
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
 p_id=>wwv_flow_api.id(139329304840497497)
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
 p_id=>wwv_flow_api.id(139329402426497498)
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
 p_id=>wwv_flow_api.id(139329506800497499)
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
 p_id=>wwv_flow_api.id(139329676189497500)
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
 p_id=>wwv_flow_api.id(139329706206497501)
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
 p_id=>wwv_flow_api.id(139329799617497502)
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
 p_id=>wwv_flow_api.id(139329931057497503)
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
 p_id=>wwv_flow_api.id(139330089013497504)
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
 p_id=>wwv_flow_api.id(139330109307497505)
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
 p_id=>wwv_flow_api.id(139330284519497506)
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
 p_id=>wwv_flow_api.id(139330335418497507)
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
 p_id=>wwv_flow_api.id(139330452129497508)
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
 p_id=>wwv_flow_api.id(139330513837497509)
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
,p_is_required=>false
,p_max_length=>150
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  w.VINNUMBR vinnumbr',
'                     FROM nmenudtl w',
'                    WHERE w.compcode = :P384_COMPCODE_APPLICATION',
'                      AND w.warecode = :P384_WARECODE',
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
 p_id=>wwv_flow_api.id(139330649992497510)
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
 p_id=>wwv_flow_api.id(139330767850497511)
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
 p_id=>wwv_flow_api.id(139330847680497512)
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
 p_id=>wwv_flow_api.id(139330969704497513)
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
 p_id=>wwv_flow_api.id(139331024011497514)
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
 p_id=>wwv_flow_api.id(139331186484497515)
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
 p_id=>wwv_flow_api.id(139331271469497516)
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
 p_id=>wwv_flow_api.id(139331364973497517)
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
 p_id=>wwv_flow_api.id(139331424884497518)
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
 p_id=>wwv_flow_api.id(139331509512497519)
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
 p_id=>wwv_flow_api.id(139331653144497520)
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
 p_id=>wwv_flow_api.id(139331718202497521)
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
 p_id=>wwv_flow_api.id(139331843064497522)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(139331907616497523)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(138610607935861500)
,p_internal_uid=>103272517898097098
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_api.id(60507628718248520)
,p_delete_authorization_scheme=>wwv_flow_api.id(60489002166243136)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
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
'} '))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(139356078476498713)
,p_interactive_grid_id=>wwv_flow_api.id(138610607935861500)
,p_static_id=>'395887'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(139356096123498727)
,p_report_id=>wwv_flow_api.id(139356078476498713)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47384512148989219)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>84
,p_column_id=>wwv_flow_api.id(47039426238358114)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47388980540664297)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>85
,p_column_id=>wwv_flow_api.id(47039796582358118)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(50797009401763027)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(50541870866190265)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(50801157014901828)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(50542247432190268)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52547915727413109)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>36
,p_column_id=>wwv_flow_api.id(52541586887362254)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53058465829051638)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>72
,p_column_id=>wwv_flow_api.id(52935426358633674)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53065148416119367)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>80
,p_column_id=>wwv_flow_api.id(52935775147633678)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53065569444119368)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>82
,p_column_id=>wwv_flow_api.id(52935958329633679)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(55798761388396195)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>82
,p_column_id=>wwv_flow_api.id(54019921904075872)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(55799212287396197)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>74
,p_column_id=>wwv_flow_api.id(54019983835075873)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66272186121096229)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(66217511026470909)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66298208867294916)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>79
,p_column_id=>wwv_flow_api.id(66217831774470912)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66298784608294918)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(66217974931470913)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66398478198195318)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>72
,p_column_id=>wwv_flow_api.id(66218562483470919)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139356530326498769)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(138610708004861501)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139356938059498924)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(138610837474861502)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>5
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139357433353498925)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(138610929432861503)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139357977995498927)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(138611065710861504)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139358473936498927)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(138611125290861505)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139358980483498952)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(138611287778861506)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139359443611498956)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(138611362533861507)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139359898634498958)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(138611410017861508)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139360489745498959)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(138611512483861509)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139360917656498959)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(138611616440861510)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139361486931498961)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(138611727652861511)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139361926341498963)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(138611840245861512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139362407939498964)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(138611938051861513)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139362920687498966)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>76
,p_column_id=>wwv_flow_api.id(138612027485861514)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139363395807498966)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(138612096285861515)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139363916231498967)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>81
,p_column_id=>wwv_flow_api.id(138612290470861516)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>10
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139364443483498969)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(138612381701861517)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139364809024499041)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(138612454562861518)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139365294940499044)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(138612527422861519)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139365877267499045)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(138612639333861520)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139366366977499047)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>52
,p_column_id=>wwv_flow_api.id(138612737760861521)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139366887157499048)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>58
,p_column_id=>wwv_flow_api.id(138612818312861522)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139367307174499048)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(138612967383861523)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139367791719499050)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(138613058333861524)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139368329748499067)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(138613123576861525)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139368872448499072)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(138613259076861526)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139369295573499075)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(138613337243861527)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139369815560499075)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(139327476464497478)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139370270865499117)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(139327535307497479)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139370748798499119)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>45
,p_column_id=>wwv_flow_api.id(139327640157497480)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139371206791499120)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(139327705241497481)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139371695294499122)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(139327868664497482)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139372199124499123)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(139327949738497483)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139372703939499123)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(139327995510497484)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139373239852499125)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>75
,p_column_id=>wwv_flow_api.id(139328178152497485)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139373769937499126)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>36
,p_column_id=>wwv_flow_api.id(139328270410497486)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139374251188499128)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(139328331570497487)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139374734211499129)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(139328399615497488)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139375219755499129)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(139328499285497489)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139375746587499131)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>40
,p_column_id=>wwv_flow_api.id(139328614583497490)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139376248110499133)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>41
,p_column_id=>wwv_flow_api.id(139328744971497491)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139376696180499134)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>42
,p_column_id=>wwv_flow_api.id(139328850513497492)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139377199022499137)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>78
,p_column_id=>wwv_flow_api.id(139328900617497493)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139377731151499139)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>44
,p_column_id=>wwv_flow_api.id(139329026670497494)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139378245075499143)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>45
,p_column_id=>wwv_flow_api.id(139329114930497495)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139378749716499143)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>46
,p_column_id=>wwv_flow_api.id(139329257282497496)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139379231563499145)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>47
,p_column_id=>wwv_flow_api.id(139329304840497497)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139379729486499147)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>48
,p_column_id=>wwv_flow_api.id(139329402426497498)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139380276560499148)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>49
,p_column_id=>wwv_flow_api.id(139329506800497499)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139380762232499150)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>50
,p_column_id=>wwv_flow_api.id(139329676189497500)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139381227054499150)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>51
,p_column_id=>wwv_flow_api.id(139329706206497501)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139381759604499151)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>77
,p_column_id=>wwv_flow_api.id(139329799617497502)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139382287973499153)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>53
,p_column_id=>wwv_flow_api.id(139329931057497503)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139382740593499154)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>54
,p_column_id=>wwv_flow_api.id(139330089013497504)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139383250370499154)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>55
,p_column_id=>wwv_flow_api.id(139330109307497505)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139383740797499156)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>56
,p_column_id=>wwv_flow_api.id(139330284519497506)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139384243331499158)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>57
,p_column_id=>wwv_flow_api.id(139330335418497507)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139384740430499159)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>58
,p_column_id=>wwv_flow_api.id(139330452129497508)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139385247445499161)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(139330513837497509)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139385743442499164)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>60
,p_column_id=>wwv_flow_api.id(139330649992497510)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139386217029499164)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>61
,p_column_id=>wwv_flow_api.id(139330767850497511)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139386750209499165)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>62
,p_column_id=>wwv_flow_api.id(139330847680497512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139387199464499167)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>63
,p_column_id=>wwv_flow_api.id(139330969704497513)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139387756379499168)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>64
,p_column_id=>wwv_flow_api.id(139331024011497514)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139388193909499170)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>65
,p_column_id=>wwv_flow_api.id(139331186484497515)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139388697154499173)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>66
,p_column_id=>wwv_flow_api.id(139331271469497516)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139389232591499175)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>67
,p_column_id=>wwv_flow_api.id(139331364973497517)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139389728774499175)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>68
,p_column_id=>wwv_flow_api.id(139331424884497518)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139390250808499176)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>69
,p_column_id=>wwv_flow_api.id(139331509512497519)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139390775500499178)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>70
,p_column_id=>wwv_flow_api.id(139331653144497520)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139391211029499179)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>71
,p_column_id=>wwv_flow_api.id(139331718202497521)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(139396321299514391)
,p_view_id=>wwv_flow_api.id(139356096123498727)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(139331843064497522)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66218622863470920)
,p_plug_name=>'Discount Region'
,p_parent_plug_id=>wwv_flow_api.id(201440685264762266)
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
 p_id=>wwv_flow_api.id(66218832456470922)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_api.id(201440685264762266)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(205820670158691341)
,p_plug_name=>'Gatepass Information'
,p_parent_plug_id=>wwv_flow_api.id(200584760675156915)
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
 p_id=>wwv_flow_api.id(207696128520781243)
,p_plug_name=>'Customer Information'
,p_parent_plug_id=>wwv_flow_api.id(266925282348709612)
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
 p_id=>wwv_flow_api.id(47235234925662255)
,p_button_sequence=>101
,p_button_plug_id=>wwv_flow_api.id(200581966946111430)
,p_button_name=>'P384_RUNREPORT'
,p_button_static_id=>'P37_RUNREPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Run Report'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:49:P49_PROGNAME,P49_DOCNUMBR:&P384_PROGNAME.,&P384_DOCNUMBR49.'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47305616909662305)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(66218622863470920)
,p_button_name=>'P384_ADDITEM'
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
 p_id=>wwv_flow_api.id(47235650103662256)
,p_button_sequence=>111
,p_button_plug_id=>wwv_flow_api.id(200581966946111430)
,p_button_name=>'P384_MNYRECEIPT'
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
 p_id=>wwv_flow_api.id(47236037520662256)
,p_button_sequence=>141
,p_button_plug_id=>wwv_flow_api.id(200581966946111430)
,p_button_name=>'P384_DELIVERY'
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
 p_id=>wwv_flow_api.id(47257361095662275)
,p_button_sequence=>1110
,p_button_plug_id=>wwv_flow_api.id(200762872606384065)
,p_button_name=>'P384_SHOWHIDE'
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
 p_id=>wwv_flow_api.id(47301297925662303)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(201440685264762266)
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
 p_id=>wwv_flow_api.id(47301733500662304)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(201440685264762266)
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
 p_id=>wwv_flow_api.id(47302180102662304)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(201440685264762266)
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
 p_id=>wwv_flow_api.id(47236475897662257)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(200581966946111430)
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
 p_id=>wwv_flow_api.id(47236754312662257)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(200581966946111430)
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
 p_id=>wwv_flow_api.id(47237166860662257)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(200581966946111430)
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
 p_id=>wwv_flow_api.id(47233032207662253)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(262596911575683057)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:383:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47233415643662253)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(262596911575683057)
,p_button_name=>'CREATE_NEW'
,p_button_static_id=>'BUT_CRT_TAB'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P384_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
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
 p_id=>wwv_flow_api.id(47233804449662253)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(262596911575683057)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P384_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47237530646662257)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(200581966946111430)
,p_button_name=>'DELIVERY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delivery'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(47366979177662329)
,p_branch_name=>'Report Generate'
,p_branch_action=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP:P50_PROGNAME,P50_DOCNUMBR,P50_DOCTTYPE,P50_SUBTTYPE:nminvgtn,&P384_DOCNUMBR.,&P384_DOCTTYPE.,&P384_SUBTTYPE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(47233804449662253)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(47366491843662329)
,p_branch_name=>'Go To Page 10'
,p_branch_action=>'f?p=&APP_ID.:383:&SESSION.::&DEBUG.:384::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(39001576559684803)
,p_branch_sequence=>2
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47232379558662252)
,p_name=>'P384_INSTALLAMOUNT'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(200595987741268841)
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
 p_id=>wwv_flow_api.id(47234567316662255)
,p_name=>'P384_DISPLAY'
,p_item_sequence=>1970
,p_item_plug_id=>wwv_flow_api.id(266925282348709612)
,p_item_default=>':P384_DOCDESC||''  (''||:P384_DOCTTYPE||''/''||:P384_SUBTTYPE||'')'''
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
 p_id=>wwv_flow_api.id(47237956650662258)
,p_name=>'P384_DOCDESC'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47238381960662258)
,p_name=>'P384_DOCTTYPE'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47238746225662258)
,p_name=>'P384_SUBTTYPE'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47239175963662258)
,p_name=>'P384_PREVDCNM'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47239503731662258)
,p_name=>'P384_S_PRDTYP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47239894416662258)
,p_name=>'P384_S_PRSTYP'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47240353540662259)
,p_name=>'P384_DOCNUMBR'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
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
 p_id=>wwv_flow_api.id(47240777325662259)
,p_name=>'P384_DOCTDATE'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
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
 p_id=>wwv_flow_api.id(47241182018662259)
,p_name=>'P384_WARECODE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
,p_prompt=>'Sales Center'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47241530172662259)
,p_name=>'P384_COSTCENTERNAME'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
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
 p_id=>wwv_flow_api.id(47241930508662260)
,p_name=>'P384_SALESTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
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
 p_id=>wwv_flow_api.id(47242376464662260)
,p_name=>'P384_MIONUM'
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
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
 p_id=>wwv_flow_api.id(47242780485662262)
,p_name=>'P384_MIONAME'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_name varchar2(100);',
'begin',
'select USERNAME into v_name from syusrmas',
'where USERCODE=:P384_MIONUM;',
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
 p_id=>wwv_flow_api.id(47243168504662262)
,p_name=>'P384_SALMANID'
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
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
'            AND w.costcode = :P384_COSTCODE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P384_COSTCODE'
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
 p_id=>wwv_flow_api.id(47243521487662262)
,p_name=>'P384_TERM'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47243956028662262)
,p_name=>'P384_ORDERNO'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
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
'            AND s.docttype = :P384_S_PRDTYP',
'            AND s.subttype = :P384_S_PRSTYP',
'            AND s.doctdate <= :P384_DOCTDATE',
'            AND s.compcode = sls.compcode(+)',
'            AND s.docnumbr = sls.updocnum(+)',
'            AND s.itemcode = sls.itemcode(+)',
'            AND s.apprqnty > NVL (sls.apprqnty, 0)',
'       ORDER BY 2 DESC'))
,p_lov_cascade_parent_items=>'P384_S_PRDTYP,P384_S_PRSTYP,P384_DOCTDATE'
,p_ajax_items_to_submit=>'P384_S_PRDTYP,P384_S_PRSTYP,P384_DOCTDATE'
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
 p_id=>wwv_flow_api.id(47244374178662262)
,p_name=>'P384_TRANTYPE'
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47244768794662262)
,p_name=>'P384_COMPCODE_APPLICATION'
,p_item_sequence=>91
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47245121118662263)
,p_name=>'P384_PROGNAME'
,p_item_sequence=>121
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
,p_source=>'nminvmny'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47245553023662263)
,p_name=>'P384_DOCNUMBR49'
,p_item_sequence=>131
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47246274419662265)
,p_name=>'P384_ORDERDATE'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(200579788885051562)
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
 p_id=>wwv_flow_api.id(47246642916662265)
,p_name=>'P384_BOOKINGNO'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(200579788885051562)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47247047121662265)
,p_name=>'P384_BOOKINGDT'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(200579788885051562)
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
 p_id=>wwv_flow_api.id(47247432006662265)
,p_name=>'P384_REQREFTYPE'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(200579788885051562)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47247871265662265)
,p_name=>'P384_REQSUBTYPE'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(200579788885051562)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47248515658662267)
,p_name=>'P384_CLOSINGBALANCE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(200654975367072547)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47248929618662267)
,p_name=>'P384_PERINSTALL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(200654975367072547)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47249605099662268)
,p_name=>'P384_TABITEMDESC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66218721251470921)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47250024531662268)
,p_name=>'P384_TABITEMUNIT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66218721251470921)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47250411294662269)
,p_name=>'P384_UNITOFMESURE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(66218721251470921)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47250865989662269)
,p_name=>'P384_TABCOMMGRUP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(66218721251470921)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47251283295662270)
,p_name=>'P384_BATCHNUM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(66218721251470921)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47251607910662270)
,p_name=>'P384_BRAND'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(66218721251470921)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47252004790662270)
,p_name=>'P384_MODAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(66218721251470921)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47252475054662270)
,p_name=>'P384_VATAMOUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(66218721251470921)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47252838863662270)
,p_name=>'P384_AMOUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(66218721251470921)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47253265271662270)
,p_name=>'P384_NETAMOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(66218721251470921)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47254202995662272)
,p_name=>'P384_ZONE'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(200582360497119021)
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
 p_id=>wwv_flow_api.id(47254675091662273)
,p_name=>'P384_FILENO'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(200582360497119021)
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
 p_id=>wwv_flow_api.id(47255060846662273)
,p_name=>'P384_LASTPURCHASEDATE'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(200582360497119021)
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
 p_id=>wwv_flow_api.id(47255448999662273)
,p_name=>'P384_LASTPRODUCT'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(200582360497119021)
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
 p_id=>wwv_flow_api.id(47255855619662273)
,p_name=>'P384_LASTPURAMOUNT'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(200582360497119021)
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
 p_id=>wwv_flow_api.id(47256238624662274)
,p_name=>'P384_AREACODE'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(200582360497119021)
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
 p_id=>wwv_flow_api.id(47256593513662274)
,p_name=>'P384_PARTYCODE'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(200582360497119021)
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
 p_id=>wwv_flow_api.id(47257780787662275)
,p_name=>'P384_LOVCUSTOMERID'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(200762872606384065)
,p_prompt=>'Customer Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47258096993662275)
,p_name=>'P384_CUSTOMTYPE'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(200762872606384065)
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
 p_id=>wwv_flow_api.id(47258513608662275)
,p_name=>'P384_CUSTOMERID'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(200762872606384065)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47258980139662275)
,p_name=>'P384_CUSTOMERNAME'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(200762872606384065)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47259345963662275)
,p_name=>'P384_CUSADDRESS'
,p_item_sequence=>1082
,p_item_plug_id=>wwv_flow_api.id(200762872606384065)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47259742905662276)
,p_name=>'P384_LOVCOSTCODE'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(200762872606384065)
,p_prompt=>'Cost Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47260125006662276)
,p_name=>'P384_LOVSALMANID'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_api.id(200762872606384065)
,p_prompt=>'Saleman'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47260563224662276)
,p_name=>'P384_ITEMCODE'
,p_item_sequence=>1310
,p_item_plug_id=>wwv_flow_api.id(200762872606384065)
,p_item_default=>':P384_TESTITEM'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47260911737662279)
,p_name=>'P384_COSTCODE'
,p_item_sequence=>1760
,p_item_plug_id=>wwv_flow_api.id(200762872606384065)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47261364083662279)
,p_name=>'P384_SALMNNAME'
,p_item_sequence=>1770
,p_item_plug_id=>wwv_flow_api.id(200762872606384065)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47261994353662279)
,p_name=>'P384_TABCOSTRATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(200765161796475587)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47262453223662279)
,p_name=>'P384_TABITEMRATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(200765161796475587)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47262871191662280)
,p_name=>'P384_TABCLOSINGBALANCE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(200765161796475587)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47263197941662280)
,p_name=>'P384_S_H_REGION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(200765161796475587)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47263618846662280)
,p_name=>'P384_LOVITEMCODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(200765161796475587)
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
'          AND b.warecode = :P384_WARECODE',
'       --   AND b.itemcode =:P384_LOVITEMCODE',
'            AND NVL (b.clbalqty, 0) > 0',
' GROUP BY a.itemcode, a.itemdes2, a.compcode'))
,p_lov_cascade_parent_items=>'P384_WARECODE'
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
,p_attribute_07=>'P384_ITEMCODE'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47264045567662280)
,p_name=>'P384_ITEMDESC'
,p_item_sequence=>1320
,p_item_plug_id=>wwv_flow_api.id(200765161796475587)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47264461955662280)
,p_name=>'P384_LOVBATCHNO'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_api.id(200765161796475587)
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
'                      AND b.itemcode = :P384_ITEMCODE',
'                      AND w.warecode = :P384_WARECODE',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                   HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC)'))
,p_lov_cascade_parent_items=>'P384_ITEMCODE,P384_WARECODE'
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
,p_attribute_07=>'P384_BATCHNUM'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47264886273662280)
,p_name=>'P384_ISSUMTHD'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_api.id(200765161796475587)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47265263531662281)
,p_name=>'P384_TABITEMTYPE'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_api.id(200765161796475587)
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
 p_id=>wwv_flow_api.id(47265666390662281)
,p_name=>'P384_TABSALEPERC'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_api.id(200765161796475587)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47266082540662281)
,p_name=>'P384_CLRITEMCODE'
,p_item_sequence=>1740
,p_item_plug_id=>wwv_flow_api.id(200765161796475587)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47302566728662304)
,p_name=>'P384_TABTOTDISAM'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_api.id(201440685264762266)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47306072926662306)
,p_name=>'P384_TABULARITEMCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66218622863470920)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47306432681662306)
,p_name=>'P384_SALPRICE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66218622863470920)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47306794016662306)
,p_name=>'P384_QUENTITY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(66218622863470920)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47307197557662306)
,p_name=>'P384_DISCPCNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(66218622863470920)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47307622704662306)
,p_name=>'P384_DISAMOUNT'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(66218622863470920)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47308034271662306)
,p_name=>'P384_VATPRCNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(66218622863470920)
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
 p_id=>wwv_flow_api.id(47308431589662307)
,p_name=>'P384_ADVANCHED_AMOUNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(66218622863470920)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47308793875662307)
,p_name=>'P384_CASH_AMOUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(66218622863470920)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47309286792662307)
,p_name=>'P384_EXCHANGE_AMOUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(66218622863470920)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47309660968662307)
,p_name=>'P384_CARD_AMOUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(66218622863470920)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47310647715662308)
,p_name=>'P384_TNSPRTYP'
,p_item_sequence=>1830
,p_item_plug_id=>wwv_flow_api.id(205820670158691341)
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
 p_id=>wwv_flow_api.id(47311030642662308)
,p_name=>'P384_TRNSREGN'
,p_item_sequence=>1840
,p_item_plug_id=>wwv_flow_api.id(205820670158691341)
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
 p_id=>wwv_flow_api.id(47311393408662308)
,p_name=>'P384_TNSCHSNO'
,p_item_sequence=>1850
,p_item_plug_id=>wwv_flow_api.id(205820670158691341)
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
 p_id=>wwv_flow_api.id(47311879307662308)
,p_name=>'P384_DRIVNAME'
,p_item_sequence=>1860
,p_item_plug_id=>wwv_flow_api.id(205820670158691341)
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
 p_id=>wwv_flow_api.id(47312211442662308)
,p_name=>'P384_DVNLIDNO'
,p_item_sequence=>1870
,p_item_plug_id=>wwv_flow_api.id(205820670158691341)
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
 p_id=>wwv_flow_api.id(47312598775662309)
,p_name=>'P384_DVLICSNO'
,p_item_sequence=>1880
,p_item_plug_id=>wwv_flow_api.id(205820670158691341)
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
 p_id=>wwv_flow_api.id(47313043659662309)
,p_name=>'P384_DELVLOCT'
,p_item_sequence=>1890
,p_item_plug_id=>wwv_flow_api.id(205820670158691341)
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
 p_id=>wwv_flow_api.id(47313788494662309)
,p_name=>'P384_IDENTIFY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(207696128520781243)
,p_prompt=>'Identify No.'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.CUSTMOBL',
'FROM  nmcusmas r',
'where r.compcode = :compcode',
'order by 1'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47314164035662309)
,p_name=>'P384_PRTYNAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(207696128520781243)
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
 p_id=>wwv_flow_api.id(47314512476662310)
,p_name=>'P384_DELRTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(207696128520781243)
,p_item_default=>'IND'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47314960525662310)
,p_name=>'P384_OCCUPATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(207696128520781243)
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
 p_id=>wwv_flow_api.id(47315351166662310)
,p_name=>'P384_PHONENUM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(207696128520781243)
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
 p_id=>wwv_flow_api.id(47315776421662310)
,p_name=>'P384_MOBILENO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(207696128520781243)
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
 p_id=>wwv_flow_api.id(47316150154662310)
,p_name=>'P384_BIRTHDATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(207696128520781243)
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
 p_id=>wwv_flow_api.id(47316570526662311)
,p_name=>'P384_ANNIVERSARY_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(207696128520781243)
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
 p_id=>wwv_flow_api.id(47316927939662311)
,p_name=>'P384_CUSTMAIL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(207696128520781243)
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
 p_id=>wwv_flow_api.id(47317354076662311)
,p_name=>'P384_WHSZONFK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(207696128520781243)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47317730624662311)
,p_name=>'P384_PARTYCDE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(207696128520781243)
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
 p_id=>wwv_flow_api.id(47318175126662311)
,p_name=>'P384_PARTYAD2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(207696128520781243)
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
 p_id=>wwv_flow_api.id(47318511518662311)
,p_name=>'P384_PARTYAD1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(207696128520781243)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47318986978662312)
,p_name=>'P384_CRDLIMIT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(207696128520781243)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47319293642662312)
,p_name=>'P384_CRDAMNT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(207696128520781243)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47319723375662312)
,p_name=>'P384_REGION'
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
 p_id=>wwv_flow_api.id(47320143284662312)
,p_name=>'P384_SALMANTYPE'
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
 p_id=>wwv_flow_api.id(47320580712662312)
,p_name=>'P384_COMPCODE'
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
 p_id=>wwv_flow_api.id(47320940086662312)
,p_name=>'P384_OPRSTAMP'
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
 p_id=>wwv_flow_api.id(47321383749662313)
,p_name=>'P384_TIMSTAMP'
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
 p_id=>wwv_flow_api.id(47321712609662313)
,p_name=>'P384_SERLNUMB'
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
 p_id=>wwv_flow_api.id(47322126294662313)
,p_name=>'P384_STATUSCD'
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
 p_id=>wwv_flow_api.id(47322514369662313)
,p_name=>'P384_ITEMLONG_1'
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
 p_id=>wwv_flow_api.id(47322928115662313)
,p_name=>'P384_MSFCAMNT'
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
 p_id=>wwv_flow_api.id(47323372379662313)
,p_name=>'P384_ROWID'
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
 p_id=>wwv_flow_api.id(47323733636662313)
,p_name=>'P384_DOCNUMBR1'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(200581966946111430)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47324160168662314)
,p_name=>'P384_ITEMCODE1'
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
 p_id=>wwv_flow_api.id(47324547555662314)
,p_name=>'P384_DEVDOCTTYPE'
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
 p_id=>wwv_flow_api.id(47324966058662314)
,p_name=>'P384_DEVSUBTTYPE'
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
 p_id=>wwv_flow_api.id(47325377959662314)
,p_name=>'P384_DEVDOCNUMBR'
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
 p_id=>wwv_flow_api.id(47325764685662314)
,p_name=>'P384_GATDOCTTYPE'
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
 p_id=>wwv_flow_api.id(47326142774662314)
,p_name=>'P384_GATSUBTTYPE'
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
 p_id=>wwv_flow_api.id(47326533449662315)
,p_name=>'P384_GATDOCNUMBR'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47327014159662315)
,p_validation_name=>'Docdate validation for tabular'
,p_validation_sequence=>10
,p_validation=>'P384_DOCTDATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(56073615248501395)
,p_associated_item=>wwv_flow_api.id(47240777325662259)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47327430584662315)
,p_validation_name=>'Customer id validation for tabular'
,p_validation_sequence=>20
,p_validation=>'P384_CUSTOMERID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(47258513608662275)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47327881161662315)
,p_validation_name=>'costcode  validation for form'
,p_validation_sequence=>130
,p_validation=>'P384_WARECODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(47241182018662259)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47303864920662305)
,p_tabular_form_region_id=>wwv_flow_api.id(201440685264762266)
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
 p_id=>wwv_flow_api.id(47328211061662315)
,p_validation_name=>'compare in discount percent with 100'
,p_validation_sequence=>190
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P384_DISCPCNT>100 then',
'   return ''Discount Percent cannot be more than 100'';',
'raise_application_error(-20000,''Discount Percent cannot be more than 100'');',
'else',
'   return null;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(47236475897662257)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47303079553662304)
,p_tabular_form_region_id=>wwv_flow_api.id(201440685264762266)
,p_validation_name=>'Salrate'
,p_validation_sequence=>200
,p_validation=>'SALERATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'SALERATE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47303411576662304)
,p_tabular_form_region_id=>wwv_flow_api.id(201440685264762266)
,p_validation_name=>'Approqty'
,p_validation_sequence=>210
,p_validation=>'APPRQNTY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'APPRQNTY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47328593839662315)
,p_validation_name=>'IDENTIFY NOT NULL'
,p_validation_sequence=>220
,p_validation=>'P384_IDENTIFY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(47313788494662309)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47329062064662315)
,p_validation_name=>'PRTYNAME'
,p_validation_sequence=>230
,p_validation=>'P384_PRTYNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(47314164035662309)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47329423163662315)
,p_validation_name=>'MOBILENAME'
,p_validation_sequence=>240
,p_validation=>'P384_MOBILENO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(47315776421662310)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47334121730662318)
,p_name=>'change on customer id'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P384_CUSTOMERID'
,p_condition_element=>'P384_CUSTOMERID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47334595120662318)
,p_event_id=>wwv_flow_api.id(47334121730662318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P384_CUSTOMERID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT distinct c.CUSTADR1,r.partycde,c.CUSTNAME',
'into :P384_CUSADDRESS,:P384_PARTYCODE,:P384_CUSTOMERNAME',
'  FROM nmmrkcus c, nmcusmas r',
' WHERE c.PARTYCDE = r.PARTYCDE(+) ',
' AND c.compcode = r.compcode(+)',
'       AND c.compcode = :compcode',
'and c.PARTYCDE=:P384_CUSTOMERID;',
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
,p_attribute_02=>'P384_CUSTOMERID'
,p_attribute_03=>'P384_CUSADDRESS,P384_AREACODE,P384_ZONE,P384_PARTYCODE,P384_CUSTOMERNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47335058597662318)
,p_name=>'change on costcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P384_WARECODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47335518452662318)
,p_event_id=>wwv_flow_api.id(47335058597662318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P384_WARECODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.COSTCODE',
'into :P384_COSTCODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND WARECODE = :P384_WARECODE)',
'     AND warecode = :P384_WARECODE',
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
'IF :P384_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct COSTDESC ',
'into :P384_COSTCENTERNAME',
'from syjobmas',
'where compcode = ''100''',
'AND costcode = :P384_COSTCODE;',
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
'IF :P384_COSTCODE IS NOT NULL and :P384_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT distinct SMANCODE',
'into :P384_SALMANID',
'        FROM nmsalrec',
'       WHERE docnumbr = :p384_docnumbr1',
'         AND DOCTDATE = :P384_DOCTDATE',
'         AND COSTCODE = :P384_COSTCODE;',
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
,p_attribute_02=>'P384_DOCNUMBR1,P384_WARECODE,P384_DOCTDATE'
,p_attribute_03=>'P384_COSTCODE,P384_COSTCENTERNAME,P384_SALMANID'
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
 p_id=>wwv_flow_api.id(47335956896662318)
,p_name=>'change on itemcode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P384_ITEMCODE'
,p_condition_element=>'P384_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47336441373662318)
,p_event_id=>wwv_flow_api.id(47335956896662318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P384_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P384_UNITOFMESURE,:P384_ITEMDESC,:P384_BRAND,:P384_MODAL,:P384_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P384_ITEMCODE;',
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
'IF :P384_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P384_SALPRICE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P384_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P384_ITEMCODE;',
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
'IF :P384_ITEMCODE1 IS NOT NULL and :P384_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) ',
'into :P384_QUENTITY',
'       from    nmsalrec s,(SELECT   SUM (d.trnsqnty) trnsqnty, d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE',
'                     FROM nmdevrec d',
'                     group by d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE) e',
'                     WHERE s.docnumbr = :p384_docnumbr1 AND s.itemcode = :p384_itemcode1',
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
,p_attribute_02=>'P384_ITEMCODE,P384_WARECODE,P384_ITEMCODE1,P384_DOCNUMBR1'
,p_attribute_03=>'P384_UNITOFMESURE,P384_ITEMDESC,P384_BRAND,P384_MODAL,P384_SALPRICE,P384_ISSUMTHD,P384_CLOSINGBALANCE,P384_QUENTITY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47336823617662319)
,p_name=>'change on trantype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P384_TRANTYPE'
,p_condition_element=>'P384_TRANTYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47337326614662319)
,p_event_id=>wwv_flow_api.id(47336823617662319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select distinct PRDOCTYP,PRSUBTYP ',
'into :P384_REQREFTYPE,:P384_REQSUBTYPE',
'from nmwrkflw',
'where TRDOCTYP||TRSUBTYP=:P384_TRANTYPE',
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
,p_attribute_02=>'P384_TRANTYPE'
,p_attribute_03=>'P384_REQREFTYPE,P384_REQSUBTYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47337758156662319)
,p_name=>'installment amount'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(62542881490351411)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47338263736662319)
,p_event_id=>wwv_flow_api.id(47337758156662319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P384_PERINSTALL:=(:P384_INSTLLAMOUNT/:P384_INSTALLNO);',
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
,p_attribute_02=>'P384_VATPRCNT,P384_VATAMOUNT'
,p_attribute_03=>'P384_PERINSTALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47338759005662319)
,p_event_id=>wwv_flow_api.id(47337758156662319)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var tt = window.document.getElementById(''P384_INSTALLNO'').value;',
' for(i=0;i<tt;i++)',
'{',
'var pp = ''f02_000''.concat(i+1);',
'javascript:apex.widget.tabular.addRow();',
'window.document.getElementById(pp).value = window.document.getElementById(''P384_PERINSTALL'').value;',
'',
'}'))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pp = f02_000.concat(i);',
'',
'.concat(f02_000.concat(i)).concat('')'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47339090466662319)
,p_name=>'on change amount'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P384_QUENTITY'
,p_condition_element=>'P384_QUENTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47339674586662320)
,p_event_id=>wwv_flow_api.id(47339090466662319)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P384_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47340132464662321)
,p_event_id=>wwv_flow_api.id(47339090466662319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/05 14:26 (Formatter Plus v4.8.8) */',
'BEGIN',
'   :p384_amount := :p384_salprice * :p384_quentity;',
':P384_DISAMOUNT:=(:P384_AMOUNT*:P384_DISCPCNT)/100;',
':P384_NETAMOUNT:=nvl(:P384_AMOUNT,0)-nvl(:P384_DISAMOUNT,0);',
'END;'))
,p_attribute_02=>'P384_SALPRICE,P384_QUENTITY,P384_AMOUNT,P384_DISCPCNT,P384_DISAMOUNT'
,p_attribute_03=>'P384_AMOUNT,P384_DISAMOUNT,P384_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47340551302662321)
,p_name=>'on change discount percent'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P384_DISCPCNT'
,p_condition_element=>'P384_DISCPCNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47341026121662321)
,p_event_id=>wwv_flow_api.id(47340551302662321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P384_DISAMOUNT:=(:P384_AMOUNT*:P384_DISCPCNT)/100;',
'end;'))
,p_attribute_02=>'P384_AMOUNT,P384_DISCPCNT'
,p_attribute_03=>'P384_DISAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47341416583662321)
,p_name=>'on change amount and disamount'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P384_DISAMOUNT'
,p_condition_element=>'P384_DISAMOUNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47341939033662321)
,p_event_id=>wwv_flow_api.id(47341416583662321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P384_NETAMOUNT:=nvl(:P384_AMOUNT,0)-nvl(:P384_DISAMOUNT,0);',
'end;'))
,p_attribute_02=>'P384_AMOUNT,P384_DISAMOUNT'
,p_attribute_03=>'P384_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47343207186662321)
,p_name=>'change  on warecode'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47343765795662322)
,p_event_id=>wwv_flow_api.id(47343207186662321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P384_WARECODE IS NOT NULL and :P384_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT a.itemcode',
'into :P384_ITEMCODE ',
'           FROM nmsalrec a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''APR''',
'            AND a.itemcode = b.itemcode',
'            and a.DOCNUMBR=:P384_DOCNUMBR1',
'           -- AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P384_WARECODE',
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
,p_attribute_02=>'P384_DOCNUMBR1,P384_WARECODE'
,p_attribute_03=>'P384_ITEMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47344141080662322)
,p_name=>'change on batchnum'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47344645495662322)
,p_event_id=>wwv_flow_api.id(47344141080662322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P384_ITEMCODE IS NOT NULL and :P384_DOCNUMBR is not null',
'   THEN',
'      BEGIN',
' SELECT  batchnum d',
'into :P384_BATCHNUM',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmsalrec w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P384_ITEMCODE',
'                      AND w.warecode = :P384_WARECODE',
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
,p_attribute_02=>'P384_ITEMCODE,P384_DOCNUMBR,P384_WARECODE'
,p_attribute_03=>'P384_BATCHNUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47345044158662322)
,p_name=>'change  on itemcode1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P384_ITEMCODE1'
,p_condition_element=>'P384_ITEMCODE1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47345501518662322)
,p_event_id=>wwv_flow_api.id(47345044158662322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P384_ITEMCODE1 IS NOT NULL and :P384_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
' SELECT s.PAMTMODE,s.DOCTTYPE||s.SUBTTYPE,s.DOCNUMBR',
'        INTO :P384_SALESTYPE,:P384_TRANTYPE,:P384_DOCNUMBR49',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p384_docnumbr1 AND s.itemcode = :p384_itemcode1;',
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
,p_attribute_02=>'P384_DOCNUMBR1,P384_ITEMCODE1'
,p_attribute_03=>'P384_SALESTYPE,P384_TRANTYPE,P384_DOCNUMBR49'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47345964374662322)
,p_name=>'showhide stats'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(47236754312662257)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'parseInt(window.document.getElementById(''P384_S_H_REGION'').value) == 1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47346420806662323)
,p_event_id=>wwv_flow_api.id(47345964374662322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.document.getElementById(''P384_S_H_REGION'').value = 1;',
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
 p_id=>wwv_flow_api.id(47346929915662323)
,p_event_id=>wwv_flow_api.id(47345964374662322)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if( parseInt(window.document.getElementById(''P384_S_H_REGION'').value) == 1)',
'{',
'window.document.getElementById(''TR'').style.display="block";',
'window.document.getElementById(''IR'').style.display="none";',
'window.document.getElementById(''SR'').style.display="none";',
'--apex.item( "BUT_CRT_FRM" ).show();   ',
'apex.item( "BUT_CRT_TAB" ).hide();',
'/*window.document.getElementById(''BUT_CRT_FRM'').style.display="none";',
'window.document.getElementById(''BUT_CRT_TAB'').style.display="block";*/',
'window.document.getElementById(''P384_S_H_REGION'').value = 0;',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47347364706662323)
,p_name=>'show_hide'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P384_S_H_REGION'
,p_condition_element=>'P384_S_H_REGION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47347838928662323)
,p_event_id=>wwv_flow_api.id(47347364706662323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(201440685264762266)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47348335245662323)
,p_event_id=>wwv_flow_api.id(47347364706662323)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(201440685264762266)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47348879205662323)
,p_event_id=>wwv_flow_api.id(47347364706662323)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(200765161796475587)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47349357288662323)
,p_event_id=>wwv_flow_api.id(47347364706662323)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(200765161796475587)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47349695258662324)
,p_name=>'on change tabular itemcode'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P384_TABULARITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47350274119662324)
,p_event_id=>wwv_flow_api.id(47349695258662324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P384_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct LUOMCODE,ITEMDES1,ITEMTYPE,SALEPERC,COMMGRUP',
'into :P384_tabitemunit,:P384_TABITEMDESC,:P384_TABITEMTYPE,:P384_TABSALEPERC,:P384_TABCOMMGRUP',
'FROM nmitemas ',
'          WHERE compcode = :P384_COMPCODE_APPLICATION',
'            AND ITEMCODE = :P384_TABULARITEMCODE ;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            :P384_TABITEMDESC:=0;',
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
'IF :P384_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct ITEMRATE',
'into :P384_TABITEMRATE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P384_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P384_TABULARITEMCODE;',
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
'IF :P384_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P384_TABCOSTRATE',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P384_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P384_TABULARITEMCODE;',
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
'IF :P384_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P384_TABCLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P384_WARECODE',
'            AND b.itemcode =:P384_TABULARITEMCODE',
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
,p_attribute_02=>'P384_COMPCODE_APPLICATION,P384_TABULARITEMCODE'
,p_attribute_03=>'P384_TABCOMMGRUP,P384_TABSALEPERC,P384_TABITEMTYPE,P384_TABCOSTRATE,P384_TABITEMDESC,P384_TABCLOSINGBALANCE,P384_TABITEMRATE,P384_TABITEMUNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47350653693662324)
,p_name=>'on page load for hide region default on tabular '
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47351113073662324)
,p_event_id=>wwv_flow_api.id(47350653693662324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P384_S_H_REGION:=0;',
'end;'))
,p_attribute_02=>'P384_S_H_REGION'
,p_attribute_03=>'P384_S_H_REGION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47351635673662324)
,p_event_id=>wwv_flow_api.id(47350653693662324)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47352066476662324)
,p_name=>'on page load for skillbuilders lov field'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47352568019662324)
,p_event_id=>wwv_flow_api.id(47352066476662324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/09 13:24 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF :p384_itemcode1 IS NOT NULL AND :p384_docnumbr1 IS NOT NULL',
'   THEN',
'      SELECT s.smancode, s.costcode, s.custmrid,s.itemcode,s.batchnum',
'        INTO :p384_lovsalmanid, :p384_lovcostcode, :p384_lovcustomerid,:P384_LOVITEMCODE,:P384_LOVBATCHNO',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p384_docnumbr1 AND s.itemcode = :p384_itemcode1;',
'   END IF;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>'P37_DOCNUMBR1,P37_ITEMCODE1'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47352912028662325)
,p_name=>'change on batchnum'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P384_BATCHNUM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47353448990662325)
,p_event_id=>wwv_flow_api.id(47352912028662325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P384_BATCHNUM IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P384_CLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P384_WARECODE',
'            AND b.itemcode =:P384_ITEMCODE',
'            and b.BATCHNUM =:P384_BATCHNUM',
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
,p_attribute_02=>'P384_WARECODE,P384_ITEMCODE,P384_BATCHNUM'
,p_attribute_03=>'P384_CLOSINGBALANCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47353865017662325)
,p_name=>'clear on itemcode'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P384_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47354388918662325)
,p_event_id=>wwv_flow_api.id(47353865017662325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P384_BATCHNUM,P384_DISCPCNT,P384_DISAMOUNT,P384_NETAMOUNT,P384_QUENTITY,P384_CLOSINGBALANCE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47354775746662325)
,p_name=>'change  on salmancode'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P384_SALMANID'
,p_condition_element=>'P384_SALMANID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47355216067662325)
,p_event_id=>wwv_flow_api.id(47354775746662325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P384_SALMANID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.SMANNAME',
'into :P384_SALMNNAME',
'    FROM nmsmnmas  w',
'   WHERE w.compcode = :compcode',
'     AND w.SMANCODE =:P384_SALMANID;',
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
,p_attribute_02=>'P384_SALMANID'
,p_attribute_03=>'P384_SALMNNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47355637725662325)
,p_name=>'clear  for docnum49'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(67380567731726445)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47356096351662325)
,p_event_id=>wwv_flow_api.id(47355637725662325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P384_DOCNUMBR49'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47356586612662326)
,p_name=>'click on delivery challan'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39004208458684803)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47357003863662326)
,p_event_id=>wwv_flow_api.id(47356586612662326)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$( "#P384_ERRMSG" ).dialog({',
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
 p_id=>wwv_flow_api.id(47357452164662326)
,p_name=>'click for delivery'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39004208458684803)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47357927311662326)
,p_event_id=>wwv_flow_api.id(47357452164662326)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'beforeInsert();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47358335359662326)
,p_name=>'change on orderno from sales offer'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P384_ORDERNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47358832230662326)
,p_event_id=>wwv_flow_api.id(47358335359662326)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P384_ORDERNO IS NOT NULL',
'   THEN',
'      SELECT DISTINCT S.COMPCODE, S.PARTYCDE,',
'             S.SMANCODE, S.COMMCODE, ',
'             S.CUSTMRID, S.COSTCODE,  S.BATCHNUM',
'        INTO :P384_COMPCODE, :P384_PARTYCODE,',
'             :P384_SALMANID, :P384_UNITOFMESURE,',
'             :P384_CUSTOMERID, :P384_COSTCODE, :P384_BATCHNUM',
'        FROM NMSLSOFR S',
'       WHERE S.DOCNUMBR = :P384_ORDERNO;',
'   END IF;',
'END;'))
,p_attribute_02=>'P384_ORDERNO'
,p_attribute_03=>'P384_COMPCODE,P384_PARTYCODE,P384_SALMANID,P384_UNITOFMESURE,P384_CUSTOMERID,P384_WARECODE,P384_COSTCODE,P384_BATCHNUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47359288585662326)
,p_name=>'change on javascript on tabular form'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P384_ORDERNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47359738023662327)
,p_event_id=>wwv_flow_api.id(47359288585662326)
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
 p_id=>wwv_flow_api.id(47360157699662327)
,p_name=>'New'
,p_event_sequence=>320
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(201440685264762266)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
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
 p_id=>wwv_flow_api.id(47360635880662327)
,p_event_id=>wwv_flow_api.id(47360157699662327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P384_CUSADDRESS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.model.getValue( this.data.selectedRecords[0], "SALERATE")'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47361023713662327)
,p_name=>'change on P384_IDENTIFY'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P384_IDENTIFY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47361521025662327)
,p_event_id=>wwv_flow_api.id(47361023713662327)
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
'and r.CUSTMOBL=:P384_IDENTIFY ;',
'if :P384_IDENTIFY IS NOT NULL THEN',
'SELECT r.CUSTMRID,r.CUSTNAME D,r.CUSTADR1,r.CUSTADR2,r.CUSTPHON,r.CUSTMOBL,r.PARTYCDE,s.CUSTMAIL,s.BIRTHDATE,s.ANNIVERSARY_DATE,t.DELRTYPE,t.OCCUPATION',
'into :P384_CUSTOMERID,:P384_PRTYNAME,:P384_PARTYAD2,:P384_PARTYAD1,:P384_PHONENUM,:P384_MOBILENO,:P384_PARTYCDE,:P384_CUSTMAIL,:P384_BIRTHDATE,:P384_ANNIVERSARY_DATE,:P384_DELRTYPE,:P384_OCCUPATION',
'FROM  nmcusmas r,nmcusvlg s,nmmrkpty t',
'where r.compcode = :P384_COMPCODE_APPLICATION',
'and r.compcode = s.compcode',
'and r.CUSTMRID=s.CUSTMRID',
'and r.compcode = t.compcode',
'and r.CUSTMRID=t.CUSTMRID',
'and r.CUSTMOBL=:P384_IDENTIFY;',
'',
'/*select distinct s.WARECODE into :P384_WARECODE from nmsalrec s',
'where DOCNUMBR=:P384_DOCNUMBR1;*/',
'else',
':P384_CUSTOMERID:=NULL;',
':P384_PRTYNAME:=NULL;',
':P384_PARTYAD2:=NULL;',
':P384_PARTYAD1:=NULL;',
':P384_PHONENUM:=NULL;',
':P384_PARTYCDE:=NULL;',
':P384_CUSTMAIL:=NULL;',
':P384_BIRTHDATE:=NULL;',
':P384_ANNIVERSARY_DATE:=NULL;',
':P384_DELRTYPE:=NULL;',
'--:P384_IDENTIFY:=NULL;',
':P384_OCCUPATION:=NULL;',
':P384_MOBILENO:=NULL;',
'END IF;',
'/*SELECT r.CUSTMRID,r.CUSTNAME D,r.CUSTADR1,r.CUSTADR2,r.CUSTPHON,r.CUSTMOBL,r.PARTYCDE,s.CUSTMAIL,s.BIRTHDATE,s.ANNIVERSARY_DATE',
'into :P384_CUSTOMERID,:P384_PRTYNAME,:P384_PARTYAD2,:P384_PARTYAD1,:P384_PHONENUM,:P384_MOBILENO,:P384_PARTYCDE,:P384_CUSTMAIL,:P384_BIRTHDATE,:P384_ANNIVERSARY_DATE',
'FROM  nmcusmas r,nmcusvlg s',
'where r.compcode = :compcode',
'and r.compcode = s.compcode',
'and r.CUSTMRID=s.CUSTMRID',
'and r.CUSTMOBL=:P384_IDENTIFY;*/',
'',
'',
'',
'--END IF;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_attribute_02=>'P384_IDENTIFY,P384_COMPCODE_APPLICATION'
,p_attribute_03=>'P384_CUSTOMERID,P384_PRTYNAME,P384_PARTYAD2,P384_PARTYAD1,P384_PHONENUM,P384_MOBILENO,P384_PARTYCDE,P384_CUSTMAIL,P384_BIRTHDATE,P384_ANNIVERSARY_DATE,P384_DELRTYPE,P384_OCCUPATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47361921414662327)
,p_name=>'Change itemcode'
,p_event_sequence=>340
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(201440685264762266)
,p_triggering_element=>'ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47362440393662328)
,p_event_id=>wwv_flow_api.id(47361921414662327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select distinct LUOMCODE,(SELECT distinct initcap(NMCODDES) CODEDESC',
'  FROM nmcodmas',
' WHERE  compcode=:P384_COMPCODE_APPLICATION',
' and NMSOFCDE=p.ITEMMODL and NMHRDCDE=''PTY'' and MODLCODE=''NM'') ITEMDES1,ITEMTYPE,COMMGRUP,COMMGRUP COMMCODE',
'into :LUOMCODE,:ITEMDESC,:ITEMTYPE,:INTERESTED_MODEL,:COMMCODE',
'FROM nmitemas p',
'          WHERE compcode = :P384_COMPCODE_APPLICATION',
'            AND ITEMCODE = :ITEMCODE ;',
'            ',
'/*select distinct SALERATE,WGHTQNTY,CARAT,APPRQNTY',
'into :SALERATE,:WGHTQNTY,:CARAT,:APPRQNTY',
'from nmenudtl ',
'where BATCHDTE=(select max(BATCHDTE) from nmenudtl',
'where COMPCODE=:P384_COMPCODE_APPLICATION',
'and ITEMCODE=:ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:P384_COMPCODE_APPLICATION',
'and ITEMCODE=:ITEMCODE;',
'',
'SELECT DISTINCT BATCHNUM,CLBALQTY',
'into :BATCHNUM,:STOCK_QTY',
'           FROM (SELECT   w.batchnum,sum(nvl(w.APPRQNTY,0))-sum(nvl(w.TRNSQNTY,0)) CLBALQTY',
'                     FROM nmenudtl w',
'                    WHERE w.compcode = :P384_COMPCODE_APPLICATION',
'                      AND w.warecode = :P384_WARECODE',
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
,p_attribute_02=>'P384_COMPCODE_APPLICATION,P384_WARECODE,ITEMCODE'
,p_attribute_03=>'LUOMCODE,ITEMDESC,ITEMTYPE,INTERESTED_MODEL,COMMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47362817288662328)
,p_name=>'Discount percent'
,p_event_sequence=>360
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(201440685264762266)
,p_triggering_element=>'DISCPCNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47363380441662328)
,p_event_id=>wwv_flow_api.id(47362817288662328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':DISCAMNT:=(:SALERATE*:DISCPCNT)/100;',
':MSLCAMNT:=:SALERATE-(:SALERATE*:DISCPCNT)/100;',
':EXCHANGE_AMOUNT:=ABS(:PRV_TOTAL-(:SALERATE-(:SALERATE*:DISCPCNT)/100));',
'end;'))
,p_attribute_02=>'SALERATE,DISCPCNT,PRV_TOTAL'
,p_attribute_03=>'DISCAMNT,EXCHANGE_AMOUNT,MSLCAMNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47363739959662328)
,p_name=>'Discount Amount'
,p_event_sequence=>370
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(201440685264762266)
,p_triggering_element=>'DISCAMNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47364249975662328)
,p_event_id=>wwv_flow_api.id(47363739959662328)
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
 p_id=>wwv_flow_api.id(47364656572662328)
,p_name=>'Making Charge'
,p_event_sequence=>380
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(201440685264762266)
,p_triggering_element=>'MAKING_CHARGE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47365170870662328)
,p_event_id=>wwv_flow_api.id(47364656572662328)
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
 p_id=>wwv_flow_api.id(47365580530662328)
,p_name=>'Change vinnumer'
,p_event_sequence=>390
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(201440685264762266)
,p_triggering_element=>'VINNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47366037658662329)
,p_event_id=>wwv_flow_api.id(47365580530662328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_date date;',
'begin',
'select distinct round(decode(substr(ITEMCODE,1,1),b.CATEGORY,round((nvl(PRICE,0)/nvl(CONVART_FRMVALUE5,0))*WGHTQNTY,2),SALERATE)) SALERATE,WGHTQNTY,CARAT,APPRQNTY',
'into :SALERATE,:WGHTQNTY,:CARAT,:APPRQNTY',
'from nmenudtl a,nmmrkrte b',
'where decode(substr(ITEMCODE,1,1),b.CATEGORY,b.EFECTIVE_DATE,a.BATCHDTE) = decode(substr(ITEMCODE,1,1),b.CATEGORY,(select max(EFECTIVE_DATE) from nmmrkrte',
'where COMPCODE=:P384_COMPCODE_APPLICATION',
'and a.CARAT=UOM(+)',
'group by CATEGORY,UOM',
'having max(EFECTIVE_DATE)=max(EFECTIVE_DATE)),(select max(BATCHDTE) from nmenudtl',
'where a.COMPCODE=:P384_COMPCODE_APPLICATION',
'and VINNUMBR=decode(substr(:VINNUMBR,1,instr(:VINNUMBR,''-'',1)-1),(select distinct PARNTCDE from sycdedtl where compcode=a.compcode and CHILDCDE=a.itemcode1  and PARNTCDE=substr(:VINNUMBR,1,instr(:VINNUMBR,''-'',1)-1)),a.ITEMCODE1||''-''||a.STYLECODE,:VIN'
||'NUMBR)',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))) ',
'and a.COMPCODE=:P384_COMPCODE_APPLICATION',
'and VINNUMBR=decode(substr(:VINNUMBR,1,instr(:VINNUMBR,''-'',1)-1),(select distinct PARNTCDE from sycdedtl where compcode=a.compcode and CHILDCDE=a.itemcode1    and PARNTCDE=substr(:VINNUMBR,1,instr(:VINNUMBR,''-'',1)-1)),a.ITEMCODE1||''-''||a.STYLECODE,:V'
||'INNUMBR)',
'and substr(ITEMCODE,1,1)=b.CATEGORY(+)',
'and a.STYLECODE=substr(:VINNUMBR,instr(:VINNUMBR,''-'',1)+1)',
'and a.BOOKCODE is null',
'and a.FINSHGD_STATUS=''Y''',
'and (nvl(a.apprqnty,0)-nvl(a.trnsqnty,0))>0',
'and a.CARAT=b.UOM(+);',
'',
'SELECT DISTINCT BATCHNUM,CLBALQTY',
'into :BATCHNUM,:STOCK_QTY',
'           FROM (SELECT   w.batchnum,w.ITEMCODE1,sum(nvl(w.APPRQNTY,0))-sum(nvl(w.TRNSQNTY,0)) CLBALQTY',
'                     FROM nmenudtl w',
'                    WHERE w.compcode = :P384_COMPCODE_APPLICATION',
'                      AND w.warecode = :P384_WARECODE',
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
'               --  null;',
'             -- if    ',
'              /*   select distinct LUOMCODE,(SELECT distinct initcap(NMCODDES) CODEDESC',
'  FROM nmcodmas',
' WHERE  compcode=:P384_COMPCODE_APPLICATION',
' and NMSOFCDE=p.ITEMMODL and NMHRDCDE=''PTY'' and MODLCODE=''NM'') ITEMDES1,ITEMTYPE,COMMGRUP,COMMGRUP COMMCODE',
'into :LUOMCODE,:ITEMDESC,:ITEMTYPE,:INTERESTED_MODEL,:COMMCODE',
'FROM nmitemas p',
'          WHERE compcode = :P384_COMPCODE_APPLICATION',
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
,p_attribute_02=>'P384_COMPCODE_APPLICATION,P384_WARECODE,VINNUMBR'
,p_attribute_03=>'BATCHNUM,STOCK_QTY,SALERATE,WGHTQNTY,CARAT,APPRQNTY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47039516764358115)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(201440685264762266)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert into nmsalrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'if :VINNUMBR != :IDENTIFICATION_NO then',
'INSERT INTO NMSALREC',
'            (COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, SERLNUMB,',
'             PARTYCDE, SMANCODE, RAISEDBY, APPRVDBY, APPRDATE, REQDDATE,',
'             COMMCODE, ITEMCODE, ITEMTYPE, ITEMDESC, ITEMLONG, ITEMRATE,',
'             MARKPCNT, DISCPCNT, DISCAMNT, SPLDISPC, SPLDISNT, SALERATE,',
'             HUOMCODE, FACTRVAL, LUOMCODE, ORGNQNTY, APPRQNTY, TRNSQNTY,',
'             MSFCAMNT, CURRCODE, EXCGRATE, MSLCAMNT, REFNUMBR, REFNDATE,',
'             UPDOCTYP, UPSUBTYP, UPDOCNUM, UPDOCDTE, UPDOCSRL, REMARKSS,',
'             COSTCODE, WARECODE, POSTFLAG, PRNTFLAG, PRICFLAG, STATUSCD,',
'             OPRSTAMP, TIMSTAMP, BATCHNUM, TRANTYPE, EXPRDATE, BANKNAME,',
'             BANKBRCH, CHEQUENO, CHEQUEDT, VINNUMBR, COLORCDE, MRNUMBER,',
'             BILNUMBR, CUSTMRID, TERMSCOD, COSTRATE, SALERTEF, OTHECOST, ',
'             DELIVERD, SALRECFK, PRICREMK, PAMTMODE, VATPRSNT, VATAMONT,',
'             WGHTQNTY,INTERESTED_MODEL,CARAT,DIAMOND_PCS, ',
'             DIAMOND_WEIGHT, STONE_PCS, STONE_WEIGHT, MAKING_CHARGE, ',
'             ADVANCHED_AMOUNT, CASH_AMOUNT, CARD_AMOUNT, EXCHANGE_AMOUNT',
'            )',
'     VALUES (:COMPCODE, :P384_DOCTTYPE, :P384_SUBTTYPE, :P384_DOCNUMBR, TRUNC(SYSDATE), :SERLNUMB,',
'             :PARTYCDE, :SMANCODE, :APP_USER, :APP_USER, NULL, NULL,',
'             :COMMCODE, :ITEMCODE, :ITEMTYPE, :ITEMDESC, :ITEMDESC, :ITEMRATE,',
'             NULL, :DISCPCNT, :DISCAMNT,NULL, NULL, :SALERATE,',
'             :LUOMCODE, :FACTRVAL, :LUOMCODE, :APPRQNTY, :APPRQNTY, :APPRQNTY,',
'             :MSFCAMNT, :CURRCODE, :EXCGRATE, :MSLCAMNT, :REFNUMBR, :REFNDATE,',
'             :P384_DOCTTYPE, :P384_SUBTTYPE, :P384_DOCNUMBR1, :DOCTDATE, :UPDOCSRL, :REMARKSS,',
'             :COSTCODE, :WARECODE, :POSTFLAG, :PRNTFLAG, :PRICFLAG, ''NEW'',',
'             :OPRSTAMP, :TIMSTAMP, :BATCHNUM, :TRANTYPE, :EXPRDATE, :BANKNAME,',
'             :BANKBRCH, :CHEQUENO, :CHEQUEDT, :VINNUMBR, :COLORCDE, :MRNUMBER,',
'             :BILNUMBR, :CUSTMRID, :TERMSCOD, :COSTRATE, :SALERTEF, :OTHECOST, ',
'             :DELIVERD, :SALRECFK, :PRICREMK, :PAMTMODE, :P384_VATPRCNT, :VATAMONT,',
'               :WGHTQNTY,:INTERESTED_MODEL,:CARAT,:DIAMOND_PCS, ',
'             :DIAMOND_WEIGHT, :STONE_PCS, :STONE_WEIGHT, :MAKING_CHARGE, ',
'             :ADVANCHED_AMOUNT, :CASH_AMOUNT, :CARD_AMOUNT, :EXCHANGE_AMOUNT',
'            );   ',
'',
'update nmenudtl w',
'               set TRNSQNTY=:APPRQNTY',
'               WHERE compcode = :COMPCODE',
'               AND warecode = :WARECODE',
'               AND VINNUMBR = decode(substr(:VINNUMBR,1,instr(:VINNUMBR,''-'',1)-1),(select distinct PARNTCDE from sycdedtl where compcode=w.compcode and CHILDCDE=itemcode1  and PARNTCDE=substr(:VINNUMBR,1,instr(:VINNUMBR,''-'',1)-1)),ITEMCODE1||''-''||STY'
||'LECODE,:VINNUMBR)',
'               and STYLECODE=substr(:VINNUMBR,instr(:VINNUMBR,''-'',1)+1)',
'               and BOOKCODE is null',
'                 and FINSHGD_STATUS=''Y''; ',
'               /*update nmsalrec',
'               set STATUSCD=''CAN''',
'               where COMPCODE=:COMPCODE',
'               and ITEMCODE=:ITEMCODE',
'               and DOCNUMBR=:DOCNUMBR',
'               and WARECODE=:WARECODE;*/',
'               ',
'               ',
'                      ',
'                      ',
'    COMMIT; ',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47039640420358116)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(201440685264762266)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert into nmenudtl &nmsalrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :VINNUMBR != :IDENTIFICATION_NO then',
'for i in (SELECT   *',
'                     FROM nmenudtl w',
'                    WHERE w.compcode = :COMPCODE',
'                      AND w.warecode = :WARECODE',
'                      AND w.VINNUMBR = decode(substr(:IDENTIFICATION_NO,1,instr(:IDENTIFICATION_NO,''-'',1)-1),(select distinct PARNTCDE from sycdedtl where compcode=w.compcode and CHILDCDE=w.itemcode1  and PARNTCDE=substr(:IDENTIFICATION_NO,1,instr(:I'
||'DENTIFICATION_NO,''-'',1)-1)),w.ITEMCODE1||''-''||w.STYLECODE,:IDENTIFICATION_NO)',
'                     and w.STYLECODE=substr(:IDENTIFICATION_NO,instr(:IDENTIFICATION_NO,''-'',1)+1)',
'                 and w.BOOKCODE is null',
'                 and w.FINSHGD_STATUS=''Y'') loop',
'                 ',
'                 insert into nmenudtl(COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, SERLNUMB, ',
'                                      PARTYCDE, CUSTMRID, RAISEDBY, APPRVDBY, APPRDATE, REQDDATE, COMMCODE, ',
'                                      ITEMCODE, HUOMCODE, FACTRVAL, LUOMCODE, ITEMRATE, COSTRATE, SALERATE, ',
'                                      BATCHNUM, BOOKCODE, BOOKDATE, BOOKAPRV, BATCHDTE, BATCHEXP, WARECODE, ',
'                                      COSTCODE, ITEMSERL, VINNUMBR, COLORCDE, RCDOCTYP, RCSUBTYP, RCDOCNUM, ',
'                                      RCDOCSRL, DISCPCNT, DISCAMNT, SPLDISPC, SPLDISNT, ORGNQNTY, APPRQNTY, ',
'                                      TRNSQNTY, TRNSQTY2, MSFCAMNT, CURRCODE, EXCGRATE, MSLCAMNT, ADJAMTLC, ',
'                                      REFNUMBR, REFNDATE, UPDOCTYP, UPSUBTYP, UPDOCNUM, UPDOCDTE, UPDOCSRL, ',
'                                      DWDOCTYP, DWSUBTYP, DWDOCNUM, DWDOCDTE, DWDOCSRL, ACDOCTYP, ACSUBTYP, ',
'                                      ACDOCNUM, ACDOCDTE, ACDOCSRL, REMARKSS, OPRSTAMP, TIMSTAMP, INVNUMPK, ',
'                                      STATUSCD, ITEMDESC, ISSUDATE, RCDOCDTE, ISDOCTYP, ISSUBTYP, ISDOCNUM, ',
'                                      ISDOCSRL, ENUDTLPK, SMANCODE, TERMSCOD, VHCLKYNO, ENGINENO, BOM_NO, ',
'                                      CANCLE_DATE, INVNUMFK, SRVPKGFK, TOTALSRV, LIMITDAY, PAYMENT_MODE, ',
'                                      INSTALLMENT_PAY, DOWN_PAYMENT, NO_OF_INSTALLMENT, POSIBLE_INST_START_DATE, ',
'                                      COLLECT_PERSON, INTEREST_AMOUNT, LOAN_AMOUNT, MONTHLY_INSTALLMENT, ',
'                                      POSIBLE_INST_END_DATE, MODIFYDT, TRANS_TO_ADDRESS, NMZONEFK, SEIZE_LOCATION, ',
'                                      LC_DATE, SEIZEFLG, WGHTQNTY, WGTUOMCD, CARATWGT, CARAT, DIAMOND_PCS, ',
'                                      DIAMOND_WEIGHT, STONE_PCS, STONE_WEIGHT, ADVANCHED_AMOUNT, NET_WEIGHT, ',
'                                      ITEMCODE1, DESIGN_ID, STYLECODE, FINSHGD_STATUS, CURNTSTS)',
'               values(i.COMPCODE, i.DOCTTYPE, i.SUBTTYPE, :P384_DOCNUMBR, trunc(sysdate), i.SERLNUMB, ',
'                                      i.PARTYCDE, i.CUSTMRID, i.RAISEDBY, i.APPRVDBY, i.APPRDATE, i.REQDDATE, i.COMMCODE, ',
'                                      i.ITEMCODE, i.HUOMCODE, i.FACTRVAL, i.LUOMCODE, i.ITEMRATE, i.COSTRATE, i.SALERATE, ',
'                                      i.BATCHNUM, NULL, NULL, NULL, i.BATCHDTE, i.BATCHEXP, i.WARECODE, ',
'                                      i.COSTCODE, i.ITEMSERL, i.VINNUMBR, i.COLORCDE, i.RCDOCTYP, i.RCSUBTYP, i.RCDOCNUM, ',
'                                      i.RCDOCSRL, i.DISCPCNT, i.DISCAMNT, i.SPLDISPC, i.SPLDISNT, i.ORGNQNTY, i.APPRQNTY, ',
'                                      NULL, i.TRNSQTY2, i.MSFCAMNT, i.CURRCODE, i.EXCGRATE, i.MSLCAMNT, i.ADJAMTLC, ',
'                                      i.REFNUMBR, i.REFNDATE, NULL, NULL, NULL, NULL, i.UPDOCSRL, ',
'                                      i.DWDOCTYP, i.DWSUBTYP, i.DWDOCNUM, i.DWDOCDTE, i.DWDOCSRL, i.ACDOCTYP, i.ACSUBTYP, ',
'                                      i.ACDOCNUM, i.ACDOCDTE, i.ACDOCSRL, i.REMARKSS, i.OPRSTAMP, trunc(sysdate), i.INVNUMPK, ',
'                                      i.STATUSCD, i.ITEMDESC, i.ISSUDATE, i.RCDOCDTE, i.ISDOCTYP, i.ISSUBTYP, i.ISDOCNUM, ',
'                                      i.ISDOCSRL, i.ENUDTLPK, i.SMANCODE, i.TERMSCOD, i.VHCLKYNO, i.ENGINENO, i.BOM_NO, ',
'                                      i.CANCLE_DATE, i.INVNUMFK, i.SRVPKGFK, i.TOTALSRV, i.LIMITDAY, i.PAYMENT_MODE, ',
'                                      i.INSTALLMENT_PAY, i.DOWN_PAYMENT, i.NO_OF_INSTALLMENT, i.POSIBLE_INST_START_DATE, ',
'                                      i.COLLECT_PERSON, i.INTEREST_AMOUNT, i.LOAN_AMOUNT, i.MONTHLY_INSTALLMENT, ',
'                                      i.POSIBLE_INST_END_DATE, i.MODIFYDT, i.TRANS_TO_ADDRESS, i.NMZONEFK, i.SEIZE_LOCATION, ',
'                                      i.LC_DATE, i.SEIZEFLG, i.WGHTQNTY, i.WGTUOMCD, i.CARATWGT, i.CARAT, i.DIAMOND_PCS, ',
'                                      i.DIAMOND_WEIGHT, i.STONE_PCS, i.STONE_WEIGHT, i.ADVANCHED_AMOUNT, i.NET_WEIGHT, ',
'                                      i.ITEMCODE1, i.DESIGN_ID, i.STYLECODE, i.FINSHGD_STATUS, NULL);',
'                                      ',
'               update nmenudtl w',
'               set CURNTSTS=''X''',
'               WHERE compcode = :COMPCODE',
'               AND warecode = :WARECODE',
'               AND VINNUMBR = decode(substr(:IDENTIFICATION_NO,1,instr(:IDENTIFICATION_NO,''-'',1)-1),(select distinct PARNTCDE from sycdedtl where compcode=w.compcode and CHILDCDE=itemcode1  and PARNTCDE=substr(:IDENTIFICATION_NO,1,instr(:IDENTIFICATI'
||'ON_NO,''-'',1)-1)),ITEMCODE1||''-''||STYLECODE,:IDENTIFICATION_NO)',
'               and STYLECODE=substr(:IDENTIFICATION_NO,instr(:IDENTIFICATION_NO,''-'',1)+1)',
'               and BOOKCODE is null',
'                 and FINSHGD_STATUS=''Y''',
'                 and nvl(TRNSQNTY,0)>=1; ',
'                 ',
'end loop;                                       ',
' ',
'for j in (SELECT   *',
'                     FROM nmsalrec w',
'                    WHERE w.compcode = :COMPCODE',
'                      AND w.warecode = :WARECODE',
'                      AND w.VINNUMBR =:IDENTIFICATION_NO --decode(substr(:IDENTIFICATION_NO,1,instr(:IDENTIFICATION_NO,''-'',1)-1),(select distinct PARNTCDE from sycdedtl where compcode=w.compcode and CHILDCDE=w.itemcode1  and PARNTCDE=substr(:IDENTIFI'
||'CATION_NO,1,instr(:IDENTIFICATION_NO,''-'',1)-1)),w.ITEMCODE1||''-''||w.STYLECODE,:IDENTIFICATION_NO)',
'                    -- and w.STYLECODE=substr(:IDENTIFICATION_NO,instr(:IDENTIFICATION_NO,''-'',1)+1)',
'                     and w.DOCNUMBR=:DOCNUMBR) loop',
'                 ',
'                ',
'  INSERT INTO NMSALREC',
'            (COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, SERLNUMB,',
'             PARTYCDE, SMANCODE, RAISEDBY, APPRVDBY, APPRDATE, REQDDATE,',
'             COMMCODE, ITEMCODE, ITEMTYPE, ITEMDESC, ITEMLONG, ITEMRATE,',
'             MARKPCNT, DISCPCNT, DISCAMNT, SPLDISPC, SPLDISNT, SALERATE,',
'             HUOMCODE, FACTRVAL, LUOMCODE, ORGNQNTY, APPRQNTY, TRNSQNTY,',
'             MSFCAMNT, CURRCODE, EXCGRATE, MSLCAMNT, REFNUMBR, REFNDATE,',
'             UPDOCTYP, UPSUBTYP, UPDOCNUM, UPDOCDTE, UPDOCSRL, REMARKSS,',
'             COSTCODE, WARECODE, POSTFLAG, PRNTFLAG, PRICFLAG, STATUSCD,',
'             OPRSTAMP, TIMSTAMP, BATCHNUM, TRANTYPE, EXPRDATE, BANKNAME,',
'             BANKBRCH, CHEQUENO, CHEQUEDT, VINNUMBR, COLORCDE, MRNUMBER,',
'             BILNUMBR, CUSTMRID, TERMSCOD, COSTRATE, SALERTEF, OTHECOST, ',
'             DELIVERD, SALRECFK, PRICREMK, PAMTMODE, VATPRSNT, VATAMONT,',
'             WGHTQNTY,INTERESTED_MODEL,CARAT,DIAMOND_PCS, ',
'             DIAMOND_WEIGHT, STONE_PCS, STONE_WEIGHT, MAKING_CHARGE, ',
'             ADVANCHED_AMOUNT, CASH_AMOUNT, CARD_AMOUNT, EXCHANGE_AMOUNT',
'            )',
'     VALUES (j.COMPCODE, ''IR'', 1, j.DOCNUMBR, TRUNC(SYSDATE), j.SERLNUMB,',
'             j.PARTYCDE, j.SMANCODE, :APP_USER, :APP_USER, j.APPRDATE, j.REQDDATE,',
'             j.COMMCODE, j.ITEMCODE, j.ITEMTYPE, j.ITEMDESC, j.ITEMDESC, j.ITEMRATE,',
'             j.MARKPCNT, j.DISCPCNT, j.DISCAMNT,NULL, NULL, j.SALERATE,',
'             j.LUOMCODE, j.FACTRVAL, j.LUOMCODE, j.APPRQNTY, j.APPRQNTY, j.TRNSQNTY,',
'             j.MSFCAMNT, j.CURRCODE, j.EXCGRATE, j.MSLCAMNT, j.REFNUMBR, j.REFNDATE,',
'             :P384_DOCTTYPE, :P384_SUBTTYPE, :P384_DOCNUMBR1, j.DOCTDATE, j.UPDOCSRL, j.REMARKSS,',
'             j.COSTCODE, j.WARECODE, j.POSTFLAG, j.PRNTFLAG, j.PRICFLAG, ''NEW'',',
'             :APP_USER, TRUNC(SYSDATE), j.BATCHNUM, j.TRANTYPE, j.EXPRDATE, j.BANKNAME,',
'             j.BANKBRCH, j.CHEQUENO, j.CHEQUEDT, j.VINNUMBR, j.COLORCDE, j.MRNUMBER,',
'             j.BILNUMBR, j.CUSTMRID, j.TERMSCOD, j.COSTRATE, j.SALERTEF, j.OTHECOST, ',
'             j.DELIVERD, j.SALRECFK, j.PRICREMK, j.PAMTMODE, j.VATPRSNT, j.VATAMONT,',
'             j.WGHTQNTY, j.INTERESTED_MODEL,j.CARAT,j.DIAMOND_PCS, ',
'             j.DIAMOND_WEIGHT, j.STONE_PCS, j.STONE_WEIGHT, j.MAKING_CHARGE, ',
'             j.ADVANCHED_AMOUNT, j.CASH_AMOUNT, j.CARD_AMOUNT, j.EXCHANGE_AMOUNT',
'            ); ',
'                                      ',
'                                      ',
'                                                   ',
'                                      ',
'                 ',
'                 ',
'end loop;',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Insert Successfully........'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47330111833662316)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into actrndtl'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'Dpr_Nmpost_Sales',
'                                            (',
'                                        :P384_COMPCODE_APPLICATION, :P384_DOCTTYPE,',
'                                 :P384_SUBTTYPE,:P384_DOCNUMBR,:P384_DOCTDATE',
'                                            );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47333789967662317)
,p_process_sequence=>90
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Docnumber Generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
'docnumber_generation(:P384_COMPCODE_APPLICATION, :modlcode, :P384_DOCTTYPE,',
'                        :P384_SUBTTYPE, sysdate  ,:P384_WARECODE,',
'                        :modlcode, newno);',
'',
'',
' ',
':P384_DOCNUMBR:= newno;  ',
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
,p_process_when_button_id=>wwv_flow_api.id(47233804449662253)
,p_process_success_message=>'Successfully Insert <br>Invoice No. &P384_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47304967311662305)
,p_process_sequence=>120
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(201440685264762266)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre insert on nmsalrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'docnum varchar2(500);',
'begin',
'',
':COMPCODE:=:P384_COMPCODE_APPLICATION;',
':DOCTTYPE:=:P384_DOCTTYPE; ',
':SUBTTYPE:=:P384_SUBTTYPE; ',
':DOCNUMBR:=:P384_DOCNUMBR;',
':DOCTDATE:=:P384_DOCTDATE;  ',
':CUSTMRID:=:P384_CUSTOMERID; ',
':PARTYCDE:=:P384_PARTYCDE;',
':OPRSTAMP :=:APP_USER;',
':TIMSTAMP :=sysdate;',
':COSTCODE:=:P384_COSTCODE;',
':MSFCAMNT:=:MSLCAMNT;',
'--:LUOMCODE:=:COMMCODE;',
':WARECODE:=:P384_WARECODE;',
':STATUSCD:=''APR'';',
':UPDOCTYP:=:P384_S_PRDTYP;',
':UPSUBTYP:=:P384_S_PRSTYP;',
':UPDOCNUM:=:P384_ORDERNO;',
':SMANCODE:=:P384_SALMANID;',
':ORGNQNTY:=:APPRQNTY;',
'--:DISCPCNT:=:P384_DISCPCNT;',
':VATPRSNT:=:P384_VATPRCNT;',
':ADVANCHED_AMOUNT:=:P384_ADVANCHED_AMOUNT;',
':EXCHANGE_AMOUNT:=:P384_EXCHANGE_AMOUNT;',
':DISCAMNT:=((:SALERATE*:APPRQNTY)*nvl(:DISCPCNT,0))/100;',
':VATAMONT:=((:SALERATE*:APPRQNTY)*nvl(:VATPRSNT,0))/100;',
':MSLCAMNT:=(:SALERATE*:APPRQNTY)-((:SALERATE*:APPRQNTY)*nvl(:DISCPCNT,0)/100)+((:SALERATE*:APPRQNTY)*nvl(:VATPRSNT,0)/100);',
':MSFCAMNT:=(:SALERATE*:APPRQNTY)-((:SALERATE*:APPRQNTY)*nvl(:DISCPCNT,0)/100)+((:SALERATE*:APPRQNTY)*nvl(:VATPRSNT,0)/100);',
'--:P384_MSFCAMNT:=(nvl(:P384_SALPRICE,0)*nvl(:P384_QUENTITY,0))-nvl(:P384_DISCPCNT,0);',
':CASH_AMOUNT:=:P384_CASH_AMOUNT;',
':CARD_AMOUNT:=:P384_CARD_AMOUNT;',
':PAMTMODE:=:P384_SALESTYPE;',
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
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
