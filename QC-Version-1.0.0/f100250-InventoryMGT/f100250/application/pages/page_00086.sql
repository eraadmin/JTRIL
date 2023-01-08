prompt --application/pages/page_00086
begin
--   Manifest
--     PAGE: 00086
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
 p_id=>86
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Material Issue Requisition'
,p_alias=>'MATERIAL-ISSUE-REQUISITION'
,p_page_mode=>'MODAL'
,p_step_title=>'Material Issue Requisition'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".allow-integer").bind("keypress", function (e) {',
'          var keyCode = e.which ? e.which : e.keyCode               ',
'          if (!(keyCode >= 48 && keyCode <= 57)) {',
'            return false;',
'          }else{',
'          }',
'      });'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'',
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
'}',
'*/'))
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function setitemcode()',
'{',
'var grid = apex.region("nmissreq").widget().interactiveGrid("getViews", "grid");  ',
'var m = grid.model;  ',
' ',
'var selectedRow = grid.view$.grid("getSelection") ;  ',
' ',
'selectedRow.forEach(function(o, index) {  ',
'    var id          = $(selectedRow[index][0]).data(''id'');  ',
'    var record      = m.getRecord(id);',
'    var srl         = id.substr(2, 4);',
'   // var itemcode=String(m.getValue(record,"ITEMCODE"));',
'    var itemcode    = String(m.getValue(record,"ITEMCODE"));',
'    ',
'  //  $s(''P86_REFNUMBR'',sal);',
'    //alert(id);',
'   // alert(itemcode.options[itemcode.selectedIndex].text);',
'  //  console.log(itemcode);',
'  ',
'',
'   // document.getElementById(''P86_TABULARITEMCODE'').value=itemcode.options[itemcode.selectedIndex].text;',
'  /*  document.getElementById(''P86_TABULARITEMCODE'').value=itemcode.toString();',
'     $(document).ready(function(){',
'  $(''#P86_TABULARITEMCODE'').trigger(''click'');',
'});*/',
'   // alert(srl); ',
'    m.setValue(record, "SERLNUMB", srl ); ',
' //   m.setValue(record, "ORGNQNTY", trnsqnty);',
'//    m.setValue(record, "APPRQNTY", trnsqnty);    ',
'    m.setValue(record, "ITEMDESC", document.getElementById(''P86_TABITEMDESC'').value);',
'    m.setValue(record, "LUOMCODE_DESC", document.getElementById(''P86_LUOMCODE_DESC'').value);',
'    m.setValue(record, "LUOMCODE", document.getElementById(''P86_TABITEMUNIT'').value);',
'    m.setValue(record, "COMMCODE", document.getElementById(''P86_TABCOMMGRUP'').value);',
'    m.setValue(record, "ITEMRATE", document.getElementById(''P86_TABITEMRATE'').value);',
'    m.setValue(record, "COMMCODE_DESC", document.getElementById(''P86_COMMCODE_DESC'').value);',
'',
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
'<script type="text/javascript">',
'function total()',
'{',
'var grid = apex.region("nmissreq").widget().interactiveGrid("getViews", "grid");  ',
'var m = grid.model;  ',
' ',
'var selectedRow = grid.view$.grid("getSelection") ;  ',
' ',
'selectedRow.forEach(function(o, index) {  ',
'    var id          = $(selectedRow[index][0]).data(''id'');  ',
'    var record      = m.getRecord(id);',
'    var discpcnt=Number(m.getValue(record,"DISCPCNT"));',
'    var salerate=Number(m.getValue(record,"SALERATE"));',
'    var orgnqnty=Number(m.getValue(record,"ORGNQNTY"));',
'   // alert(id);',
'    if (discpcnt != null) {',
'         m.setValue(record, "MSLCAMNT", (salerate*orgnqnty)-((salerate*orgnqnty)*discpcnt/100));',
'    }',
'    if (discpcnt == null) {',
'         m.setValue(record, "MSLCAMNT", (salerate*orgnqnty));',
'    }',
'   ',
' ',
'});',
'}',
'</script> ',
'<script type="text/javascript">',
'function saletotal1()',
'{',
'var grid = apex.region("nmissreq").widget().interactiveGrid("getViews", "grid");  ',
'var m = grid.model;  ',
' ',
'var selectedRow = grid.view$.grid("getSelection") ;  ',
'var sumSAL = 0;',
'var sal = 0;',
'var totalsum=0;',
'selectedRow.forEach(function(o, index) {  ',
'    var id          = $(selectedRow[index][0]).data(''id'');  ',
'    var record      = m.getRecord(id);',
'    var srl =id.substr(2, 4);',
'    var sal=Number(m.getValue(record,"SALERATE"));',
'    sumSAL = sumSAL + sal;',
'    ',
'});',
'    ',
'    document.getElementById(''P86_REFNUMBR'').value=sumSAL;',
'    totalsum=document.getElementById(''P86_REFNUMBR'').value;',
'}',
'</script> ',
''))
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20230103161040'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(125775716057154315)
,p_plug_name=>'Material Issue Requisition'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>90
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127607298501771641)
,p_plug_name=>'Multiple Item Requisition'
,p_region_name=>'prod_info'
,p_parent_plug_id=>wwv_flow_api.id(125775716057154315)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>100
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
'"RAISEDBY",',
'"APPRVDBY",',
'"APPRDATE",',
'"REQDDATE",',
'"COMMCODE",',
'case when COMMCODE is not null then',
'(select distinct NMCODDES from nmcodmas where compcode=a.compcode and NMSOFCDE=a.COMMCODE and NMHRDCDE=''MOD'')',
'when COMMCODE is   null then',
'NULL',
'end "COMMCODE_DESC",',
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
'case when LUOMCODE is not null then',
'(select distinct IUOMDESC from nmuommas  where compcode=a.compcode and IUOMCODE=a.LUOMCODE)',
'when LUOMCODE is   null then',
'NULL',
'end "LUOMCODE_DESC",',
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
'"BATCHNUM",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"COLORCDE",',
'"COSTRATE",',
'"SRCWRECD",',
'"MODIFYDT",',
'dpk_base_calc.dfn_current_stock(:P86_COMPCODE, :ITEMCODE) PRESENT_STOCK,',
'dpk_base_calc.dfn_stock_consumption(:P86_COMPCODE, :ITEMCODE, NULL, NULL, ADD_MONTHS(:P86_TRNDATE,-1), :P86_TRNDATE) CONSUMPTION',
'from "#OWNER#"."NMSTKREC" "A"',
'where compcode = :P86_COMPCODE',
'and DOCNUMBR = :P86_DOCNUMBR',
'and TRUNC(DOCTDATE) = :P86_DOCTDATE ',
'and DOCTTYPE = :DOCTTYPE',
'and SUBTTYPE = :SUBTTYPE',
'and WARECODE = :P86_WARECODE',
'and POSTFLAG = ''N''',
'AND APPRQNTY - NVL(TRNSQNTY,0) > 0',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P86_COMPCODE,P86_TRNDATE,P86_DOCNUMBR,P86_DOCTDATE,P86_WARECODE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(108787198974302059)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>670
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125627297075221510)
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
 p_id=>wwv_flow_api.id(125627375659221511)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125627468931221512)
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
 p_id=>wwv_flow_api.id(125627552928221513)
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
 p_id=>wwv_flow_api.id(125627696924221514)
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
 p_id=>wwv_flow_api.id(125627727732221515)
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
 p_id=>wwv_flow_api.id(125627868791221516)
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
 p_id=>wwv_flow_api.id(125628006178221517)
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
 p_id=>wwv_flow_api.id(125628052559221518)
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
 p_id=>wwv_flow_api.id(125628136433221519)
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
 p_id=>wwv_flow_api.id(125628249436221520)
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
 p_id=>wwv_flow_api.id(125628415407221521)
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
 p_id=>wwv_flow_api.id(125628503830221522)
,p_name=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Comm. Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125628534521221523)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Product Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_max_length=>40
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   DISTINCT a.itemcode||''-''||itemdes2 d, a.itemcode r',
'    FROM nmitemas a',
'   WHERE compcode = :compcode  ',
'     AND statuscd = ''ACT''',
'ORDER BY itemcode'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_column_comment=>'onchange="setitemcode();"'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125628684302221524)
,p_name=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_api.id(125628770313221525)
,p_name=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>200
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
,p_column_comment=>'onfocus="setitemcode();"'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125628834916221526)
,p_name=>'ITEMLONG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMLONG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125629008576221527)
,p_name=>'ITEMRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125629042858221528)
,p_name=>'DISCPCNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCPCNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Discount(%)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>360
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_api.id(125629186617221529)
,p_name=>'DISCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>440
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125629248485221530)
,p_name=>'SPLDISPC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLDISPC'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>460
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125629348774221531)
,p_name=>'SPLDISNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLDISNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>470
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125629523367221532)
,p_name=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALERATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sale Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>290
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_api.id(125629578387221533)
,p_name=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
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
 p_id=>wwv_flow_api.id(125629719868221534)
,p_name=>'FACTRVAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FACTRVAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>480
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125629815646221535)
,p_name=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Unit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
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
 p_id=>wwv_flow_api.id(125629836118221536)
,p_name=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGNQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Request Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>350
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-integer'
,p_is_required=>true
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
 p_id=>wwv_flow_api.id(125630007650221537)
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
 p_id=>wwv_flow_api.id(125772932161154288)
,p_name=>'TRNSQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRNSQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Issue Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>340
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_api.id(125773075639154289)
,p_name=>'MSFCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSFCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>450
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125773211093154290)
,p_name=>'CURRCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>490
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125773311560154291)
,p_name=>'EXCGRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCGRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>500
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125773393816154292)
,p_name=>'MSLCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSLCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>370
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
,p_column_comment=>'onfocus="total();"'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125773464542154293)
,p_name=>'REFNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>510
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125773598284154294)
,p_name=>'REFNDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFNDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>520
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125773657078154295)
,p_name=>'UPDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCTYP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>530
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125773751781154296)
,p_name=>'UPSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPSUBTYP'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>540
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125773882794154297)
,p_name=>'UPDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>550
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125773932836154298)
,p_name=>'UPDOCDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCDTE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>560
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125774094056154299)
,p_name=>'UPDOCSRL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCSRL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>570
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
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
 p_id=>wwv_flow_api.id(125774205887154300)
,p_name=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>380
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>180
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125774272523154301)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'costcode'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>420
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_api.id(125774345375154302)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'wareccode'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>390
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_api.id(125774459889154303)
,p_name=>'POSTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSTFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Submit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>410
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>false
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125774613610154304)
,p_name=>'PRNTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRNTFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>580
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125774679366154305)
,p_name=>'PRICFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>590
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125774769742154306)
,p_name=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUSCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>600
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125774890948154307)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>610
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125774967316154308)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>620
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125775038501154309)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>630
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125775182822154310)
,p_name=>'COLORCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLORCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>640
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125775274727154311)
,p_name=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>650
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125775360360154312)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125775460063154313)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125776018130154318)
,p_name=>'SRCWRECD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SRCWRECD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'srcwarecode'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>400
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(136971791435623500)
,p_name=>'COMMCODE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMCODE_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>660
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(136971868157623501)
,p_name=>'LUOMCODE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>430
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(182944219908794881)
,p_name=>'CONSUMPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONSUMPTION'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Consumption'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>690
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(210136701238775332)
,p_name=>'PRESENT_STOCK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESENT_STOCK'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Present Stock'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>700
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(125627165430221509)
,p_internal_uid=>125627165430221509
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_api.id(97402606545571086)
,p_update_authorization_scheme=>wwv_flow_api.id(97403651698578845)
,p_delete_authorization_scheme=>wwv_flow_api.id(97383979993565702)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
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
 p_id=>wwv_flow_api.id(125796175228155467)
,p_interactive_grid_id=>wwv_flow_api.id(125627165430221509)
,p_static_id=>'395490'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(125796230581155467)
,p_report_id=>wwv_flow_api.id(125796175228155467)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109604899560414302)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>56
,p_column_id=>wwv_flow_api.id(108787198974302059)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125796769994155467)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(125627297075221510)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125797252554155469)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(125627375659221511)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125797776811155470)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(125627468931221512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125798141627155519)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(125627552928221513)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125798641591155522)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(125627696924221514)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125799200561155525)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(125627727732221515)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125799695630155525)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(125627868791221516)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125800219813155527)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(125628006178221517)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125800716464155528)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(125628052559221518)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125801199203155530)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(125628136433221519)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125801702406155530)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(125628249436221520)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125802177857155531)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(125628415407221521)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125802655409155533)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>53
,p_column_id=>wwv_flow_api.id(125628503830221522)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125803162866155533)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(125628534521221523)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>206
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125803658241155534)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(125628684302221524)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125804157349155536)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(125628770313221525)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>295
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125804656808155536)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(125628834916221526)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125805202004155537)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(125629008576221527)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125805637134155539)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(125629042858221528)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125806137219155539)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(125629186617221529)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125806644247155541)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(125629248485221530)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125807201947155608)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(125629348774221531)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125807536170155609)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(125629523367221532)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125808089346155611)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(125629578387221533)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125808531646155612)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(125629719868221534)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125809077062155612)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(125629815646221535)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125809564177155614)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(125629836118221536)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125810033849155615)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(125630007650221537)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125810555596155615)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>43
,p_column_id=>wwv_flow_api.id(125772932161154288)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125811094417155617)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(125773075639154289)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125811566122155639)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(125773211093154290)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125812099587155642)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(125773311560154291)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125812572523155645)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>49
,p_column_id=>wwv_flow_api.id(125773393816154292)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125813057424155645)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(125773464542154293)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125813577347155647)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(125773598284154294)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125814068220155648)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>36
,p_column_id=>wwv_flow_api.id(125773657078154295)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125814537332155648)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(125773751781154296)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125815052188155650)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(125773882794154297)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125815527398155651)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(125773932836154298)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125816098424155653)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>40
,p_column_id=>wwv_flow_api.id(125774094056154299)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125816486419155706)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>45
,p_column_id=>wwv_flow_api.id(125774205887154300)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>236
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125816940538155711)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>44
,p_column_id=>wwv_flow_api.id(125774272523154301)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125817514496155712)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>46
,p_column_id=>wwv_flow_api.id(125774345375154302)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125817989071155759)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>56
,p_column_id=>wwv_flow_api.id(125774459889154303)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125818447054155762)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>45
,p_column_id=>wwv_flow_api.id(125774613610154304)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125818941253155764)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>46
,p_column_id=>wwv_flow_api.id(125774679366154305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125819487856155765)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>55
,p_column_id=>wwv_flow_api.id(125774769742154306)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125819875833155818)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>50
,p_column_id=>wwv_flow_api.id(125774890948154307)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125820257181155999)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>49
,p_column_id=>wwv_flow_api.id(125774967316154308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125820733079156030)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>50
,p_column_id=>wwv_flow_api.id(125775038501154309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125821163330156035)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(125775182822154310)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125821700474156037)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>52
,p_column_id=>wwv_flow_api.id(125775274727154311)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125824249119200786)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(125775360360154312)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125877470866578480)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>55
,p_column_id=>wwv_flow_api.id(125776018130154318)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(137292318463405206)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(136971791435623500)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(137292630961405219)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(136971868157623501)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(210080253857644534)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(182944219908794881)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(210142678478776798)
,p_view_id=>wwv_flow_api.id(125796230581155467)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(210136701238775332)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127587082138771569)
,p_plug_name=>'doc info left'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
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
 p_id=>wwv_flow_api.id(127600496969771627)
,p_plug_name=>'doc info right'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'BELOW'
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
 p_id=>wwv_flow_api.id(192081550915827669)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_api.id(38873885292671205)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(192081550915827669)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:87:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38836113293671169)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(125775716057154315)
,p_button_name=>'Post_All'
,p_button_static_id=>'btnPostAll'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit All'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-check-square-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38836536036671170)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(125775716057154315)
,p_button_name=>'Unpost_All'
,p_button_static_id=>'btnUnpostAll'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit None'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-square-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38874228066671205)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(192081550915827669)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Submit'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(38880897127671210)
,p_branch_name=>'Go To Page 87'
,p_branch_action=>'f?p=&APP_ID.:87:&SESSION.::&DEBUG.:RP,86::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38864808372671200)
,p_name=>'P86_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(127587082138771569)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38865272469671200)
,p_name=>'P86_TRNDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(127587082138771569)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Tran. Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_api.id(38865613299671201)
,p_name=>'P86_DOCNUMBR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(127587082138771569)
,p_prompt=>'Request No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38866011947671201)
,p_name=>'P86_DOCTDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(127587082138771569)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38866475271671201)
,p_name=>'P86_COSTCODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(127587082138771569)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38866883230671201)
,p_name=>'P86_COSTCENTERNAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(127587082138771569)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38867294846671201)
,p_name=>'P86_DOCTTYPE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(127587082138771569)
,p_use_cache_before_default=>'NO'
,p_item_default=>':docttype'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'MI'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38867606963671202)
,p_name=>'P86_SUBTTYPE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(127587082138771569)
,p_item_default=>':subttype'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38868013434671202)
,p_name=>'P86_DOCDESC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(127587082138771569)
,p_item_default=>'&DOCDESC.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38868491608671202)
,p_name=>'P86_PROGNAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(127587082138771569)
,p_source=>'nminvmny'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38868826445671202)
,p_name=>'P86_S_PRDTYP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(127587082138771569)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38869251871671202)
,p_name=>'P86_S_PRSTYP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(127587082138771569)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38869977179671203)
,p_name=>'P86_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(127600496969771627)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38870381753671203)
,p_name=>'P86_WAREHOUSE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(127600496969771627)
,p_prompt=>'Request From'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38870728446671203)
,p_name=>'P86_SRCWRECD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(127600496969771627)
,p_prompt=>'Request To'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'ORDER BY warecode'))
,p_cSize=>60
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38871162336671203)
,p_name=>'P86_SRCCOSTCD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(127600496969771627)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'SELECT costcode || ''-'' || INITCAP (costdesc) costdesc, costcode',
'  FROM syjobmas',
' WHERE compcode = :compcode ',
'   AND COSTCODE <> :P86_COSTCODE',
' ORDER BY costcode',
' */'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38871543571671204)
,p_name=>'P86_APRPERSON'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(127600496969771627)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38871910051671204)
,p_name=>'P86_APRPERSNM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(127600496969771627)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38872307524671204)
,p_name=>'P86_CUSTOMTYPE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(127600496969771627)
,p_item_default=>'COR'
,p_display_as=>'NATIVE_HIDDEN'
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
 p_id=>wwv_flow_api.id(38872793183671204)
,p_name=>'P86_CUSTOMERID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(127600496969771627)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38873145415671205)
,p_name=>'P86_CUSTOMERNAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(127600496969771627)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38862617074671198)
,p_tabular_form_region_id=>wwv_flow_api.id(127607298501771641)
,p_validation_name=>'Request Qty.'
,p_validation_sequence=>120
,p_validation=>'ORGNQNTY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'ORGNQNTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38874763227671206)
,p_validation_name=>'future date not allow'
,p_validation_sequence=>130
,p_validation=>':P86_TRNDATE <= trunc(sysdate)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#LABEL# Future Date not Allow!'
,p_associated_item=>wwv_flow_api.id(38865272469671200)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38876263713671208)
,p_name=>'change on source company code'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P86_SRCCOMPNM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38876730589671208)
,p_event_id=>wwv_flow_api.id(38876263713671208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P86_SRCCOMPNM IS NOT NULL',
'   THEN',
'      BEGIN',
' select distinct CACMPCDE||''-''||CACMPNAM ',
'into :P86_SRCCOMPDS',
'from syparmas  w',
'    where w.CACMPCDE=:P86_SRCCOMPNM;',
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
,p_attribute_02=>'P86_SRCCOMPNM'
,p_attribute_03=>'P86_SRCCOMPDS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38877188448671208)
,p_name=>'Set itemcode'
,p_event_sequence=>360
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(127607298501771641)
,p_triggering_element=>'ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38877625066671209)
,p_event_id=>wwv_flow_api.id(38877188448671208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    SELECT ITEMDES1,',
'           nvl(LUOMCODE,HUOMCODE),',
'           nvl(HUOMCODE,LUOMCODE),',
'           nvl(LUOMCODE,HUOMCODE),',
'           COSTRATE,',
'           SALERATE,',
'           ITEMTYPE,',
'           COMMGRUP',
'      INTO :ITEMDESC, :LUOMCODE, :HUOMCODE, :LUOMCODE_DESC, :ITEMRATE, :SALERATE, :ITEMTYPE, :COMMCODE',
'      FROM NMITEMAS',
'     WHERE compcode = nvl(:P86_COMPCODE,:compcode)',
'       AND ITEMCODE = :ITEMCODE',
'       AND STATUSCD = ''ACT'';',
'exception ',
'    when others then ',
'null;',
'end;'))
,p_attribute_02=>'P86_COMPCODE,ITEMCODE'
,p_attribute_03=>'ITEMDESC,LUOMCODE,HUOMCODE,LUOMCODE_DESC,ITEMRATE,SALERATE,ITEMTYPE,,COMMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38878071569671209)
,p_name=>'post all'
,p_event_sequence=>440
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(38836113293671169)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38878500487671209)
,p_event_id=>wwv_flow_api.id(38878071569671209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("prod_info").call("getViews","grid").model;',
'model.forEach(function(igrow) {',
'   igrow[model.setValue(igrow,"POSTFLAG","Y")];',
'});',
'',
'$("#btnPostAll").hide();',
'$("#btnUnpostAll").show();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38878987725671209)
,p_name=>'unpost all'
,p_event_sequence=>450
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(38836536036671170)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38879450906671210)
,p_event_id=>wwv_flow_api.id(38878987725671209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("prod_info").call("getViews","grid").model;',
'model.forEach(function(igrow) {',
'   igrow[model.setValue(igrow,"POSTFLAG","N")];',
'});',
'',
'$("#btnPostAll").show();',
'$("#btnUnpostAll").hide();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38879851997671210)
,p_name=>'hide unpost all button'
,p_event_sequence=>460
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38880359939671210)
,p_event_id=>wwv_flow_api.id(38879851997671210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(38836536036671170)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38863322620671199)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(127607298501771641)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Multiple Item Requisition - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(88779174847100498)
,p_process_success_message=>'Modification Successful for Document No. &P86_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38862924879671198)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(127607298501771641)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'post_update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :POSTFLAG = ''Y'' THEN',
'        BEGIN',
'           dpr_insert_approval (P_COMPCODE => :P86_COMPCODE,                                ',
'                                P_DOCTTYPE => :P86_DOCTTYPE,',
'                                P_SUBTTYPE => :P86_SUBTTYPE,',
'                                P_DOCNUMBR => :P86_DOCNUMBR,',
'                                P_WARECODE => :P86_WARECODE,',
'                                P_DOCTDATE => :DOCTDATE,',
'                                P_ITEMCODE => :ITEMCODE',
'                               );',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'            raise_application_error(-20001,''insert nmreqapr ''||sqlcode||'' ''||sqlerrm);',
'        END;     ',
'END IF; '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(88779174847100498)
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'declare',
'V_ERRM varchar2(100);',
'',
'begin',
'',
'IF :POSTFLAG = ''Y'' THEN',
'begin',
'',
'    DPR_INSERT_NMPROCUR1 ( :COMPCODE,',
'                           :DOCTTYPE,',
'                           :SUBTTYPE,',
'                           :P86_DOCNUMBR,',
'                           :P86_TRNDATE,',
'                           :SERLNUMB,',
'                           :PARTYCDE,',
'                           :RAISEDBY,',
'                           :APPRVDBY,',
'                           :APPRDATE,',
'                           :REQDDATE,',
'                           :COMMCODE,',
'                           :ITEMCODE,',
'                           :ITEMTYPE,',
'                           NULL,               --:mcserial,',
'                           NULL,               --:cmserial,',
'                           :ITEMDESC,',
'                           :ITEMLONG,',
'                           :ITEMRATE,',
'                           :DISCPCNT,',
'                           :DISCAMNT,',
'                           :SPLDISPC,',
'                           :SPLDISNT,',
'                           :SALERATE,',
'                           :HUOMCODE,',
'                           :FACTRVAL,',
'                           :LUOMCODE,',
'                           :ORGNQNTY,',
'                           :ORGNQNTY,',
'                           null, --:trnsqnty,',
'                           :MSFCAMNT,',
'                           :CURRCODE,',
'                           :EXCGRATE,',
'                           :MSLCAMNT,',
'                           NULL,               --:adjamtlc,',
'                           :REFNUMBR,',
'                           :REFNDATE,',
'                           :UPDOCTYP,',
'                           :UPSUBTYP,',
'                           :UPDOCNUM,',
'                           :UPDOCDTE,',
'                           :UPDOCSRL,',
'                           NULL, --:dwdoctyp,',
'                           NULL, --:dwsubtyp,',
'                           NULL, --:dwdocnum,',
'                           NULL, --:dwdocdte,',
'                           NULL, --:dwdocsrl,',
'                           NULL, --:acdoctyp,',
'                           NULL, --:acsubtyp,',
'                           NULL, --:acdocnum,',
'                           NULL, --:acdocdte,',
'                           NULL, --:acdocsrl,',
'                           :REMARKSS,',
'                           :COSTCODE,',
'                           :WARECODE,',
'                           :POSTFLAG,',
'                           :PRNTFLAG,',
'                           :PRICFLAG,',
'                           NULL,               --:printcnt,',
'                           NULL,               --:balnflag,',
'                           NULL,               --:ratvflag,',
'                           ''NEW'', --:STATUSCD,',
'                           NULL,               --:tcstpcnt,',
'                           NULL,               --:divncode,',
'                           NULL,               --:technicn,',
'                           NULL,               --:engineer,',
'                           NULL,               --:amendsrl,',
'                           NULL,               --:matltype,',
'                           NULL,               --:boqrefer,',
'                           NULL,               --:mfrgdate,',
'                           NULL,               --:mfrgtime,',
'                           NULL,               --:parntitm,',
'                           NULL,               --:indtflag,',
'                           :APP_USER,        -- :oprstamp,',
'                           :BATCHNUM,          --:batchnum,',
'                           NULL,               --:batchexp,',
'                           NULL,               --:batchdte,',
'                           NULL,               --:normrate,',
'                           NULL,               --:srvctrcn,',
'                           NULL,               --:dgnitmfk,',
'                           NULL,               --:stkrcfk1,',
'                           :COSTRATE,',
'                           NULL,               --:avrgrate,',
'                           NULL,               --:serialst,',
'                           NULL,         '))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38875851780671207)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38864143962671199)
,p_process_sequence=>90
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(127607298501771641)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update nmstkrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'case :APEX$ROW_STATUS',
'    when ''C'' then',
'        :COMPCODE := :P86_COMPCODE;',
'        :DOCTTYPE := :P86_DOCTTYPE;',
'        :SUBTTYPE := :P86_SUBTTYPE;',
'        :DOCNUMBR := :P86_DOCNUMBR;',
'        :DOCTDATE := :P86_DOCTDATE;',
'        ',
'        :COMMCODE := :COMMCODE;',
'        :WARECODE := :P86_WARECODE;',
'        :SRCWRECD := :P86_SRCWRECD;',
'        :COSTCODE := :P86_COSTCODE;',
'        :BATCHNUM := :P86_DOCNUMBR;',
'        :ITEMLONG := :ITEMDESC;',
'        --:REFNUMBR := :P86_REFNUMBR;',
'        --:REFNDATE := :P86_REFNDATE;',
'                 ',
'        :CURRCODE:=''BDT'';',
'        :EXCGRATE:=1;',
'        :PRICFLAG:=''N'';         ',
'        --:DISCAMNT:=((nvl(:SALERATE,0)*nvl(:ORGNQNTY,0))*nvl(:DISCPCNT,0)/100);',
'        --:MSLCAMNT:=(nvl(:SALERATE,0)*nvl(:ORGNQNTY,0))-((nvl(:SALERATE,0)*nvl(:ORGNQNTY,0))*nvl(:DISCPCNT,0)/100);',
'        --:MSFCAMNT:=(nvl(:SALERATE,0)*nvl(:ORGNQNTY,0))-((nvl(:SALERATE,0)*nvl(:ORGNQNTY,0))*nvl(:DISCPCNT,0)/100);',
'     ',
'        :APPRQNTY := :ORGNQNTY;',
'        :RAISEDBY:=:APP_USER;',
'        :OPRSTAMP := :APP_USER;  ',
'        :MODIFYDT := sysdate;  ',
'',
'        DECLARE',
'            v_sl number := 0;',
'        BEGIN        ',
'            SELECT MAX (NVL (SERLNUMB, 0)) + 1',
'              INTO v_sl',
'              FROM NMSTKREC',
'             WHERE DOCNUMBR = :P86_DOCNUMBR',
'               AND TRUNC (DOCTDATE) = :P86_DOCTDATE',
'               AND DOCTTYPE = :P86_DOCTTYPE',
'               AND SUBTTYPE = :P86_SUBTTYPE',
'               AND WARECODE = :P86_WARECODE;',
'        :SERLNUMB := v_sl;',
'        v_sl := v_sl + 1;',
'        END;',
'',
'        BEGIN',
'        PKG_APPROVAL.PRC_CHK_APPRNEED (:P86_COMPCODE,',
'                                       :P86_DOCTTYPE,',
'                                       :P86_SUBTTYPE,',
'                                       :STATUSCD);',
'        END;        ',
'',
'    when ''U'' then',
'        :APPRQNTY := :ORGNQNTY;',
'        :RAISEDBY := :APP_USER;        ',
'        :MODIFYDT := sysdate;',
'',
'    when ''D'' then',
'        null;',
'end case;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(38874228066671205)
);
wwv_flow_api.component_end;
end;
/
