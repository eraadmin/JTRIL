prompt --application/pages/page_00556
begin
--   Manifest
--     PAGE: 00556
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
 p_id=>556
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Product Information'
,p_alias=>'PRODUCT-INFORMATION4'
,p_page_mode=>'MODAL'
,p_step_title=>'Product Information'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function callPost() {',
'    var model = apex.region("prod_info").call("getViews","grid").model;',
'    model.forEach(function(igrow) {',
'        var meta = model.getRecordMetadata(model.getRecordId(igrow));',
'        if (!meta.deleted) {',
'            igrow[model.setValue(igrow,"POSTFLAG","Y")];',
'            }',
'    });',
'    }',
'',
'function callunPost() {',
'    var model = apex.region("prod_info").call("getViews","grid").model;',
'    model.forEach(function(igrow) {',
'        var meta = model.getRecordMetadata(model.getRecordId(igrow));',
'        if (!meta.deleted) {',
'            igrow[model.setValue(igrow,"POSTFLAG","N")];',
'            }',
'    });',
'    }',
'',
'function togglePost(){',
'    $(".postUnpost").text($(".postUnpost").text() == ''Submit All'' ? ''Submit None'' : ''Submit All''); //Label Toggle',
'    $(".postUnpost").text($(".postUnpost").text() == ''Submit All'' ? callunPost() : callPost() ); ',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".allow-integer").bind("keypress", function (e) {',
'          var keyCode = e.which ? e.which : e.keyCode               ',
'          if (!(keyCode >= 48 && keyCode <= 57)) {',
'            return false;',
'          }else{',
'          }',
'      });'))
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20230101184331'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250847543908188504)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(36971309856355294)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250847585871188504)
,p_plug_name=>'Document Information'
,p_parent_plug_id=>wwv_flow_api.id(250847543908188504)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(297875658431074338)
,p_plug_name=>'Previous Request'
,p_region_name=>'PREV_DATA'
,p_parent_plug_id=>wwv_flow_api.id(250847543908188504)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47585534000858182)
,p_plug_display_sequence=>200
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(297875825993074339)
,p_name=>'Previous Request'
,p_parent_plug_id=>wwv_flow_api.id(297875658431074338)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM sl,',
'       itemcode,',
'       itemdesc,',
'       huomcode,',
'       itemrate,',
'       APEX_ITEM.CHECKBOX(1,itemcode,''CHECKED'') "select"',
'  FROM nmprocur',
' WHERE docnumbr = :P556_DOCNUMBR'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P556_DOCNUMBR'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>1500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36981171627362198)
,p_query_column_id=>1
,p_column_alias=>'SL'
,p_column_display_sequence=>1
,p_column_heading=>'Sl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36981554851362199)
,p_query_column_id=>2
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36981999302362200)
,p_query_column_id=>3
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>3
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36982372933362200)
,p_query_column_id=>4
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36982724106362201)
,p_query_column_id=>5
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>5
,p_column_heading=>'Item Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36983196437362201)
,p_query_column_id=>6
,p_column_alias=>'select'
,p_column_display_sequence=>6
,p_column_heading=>'<input type="checkbox" checked onclick="javascript:$f_CheckAll(this, this.checked, $(''[name=f01]''));">'
,p_column_format=>'PCT_GRAPH:::'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(299965853597451979)
,p_plug_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(250847543908188504)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>'style="background-color:&BACKGROUND_COLOR.;"'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(395970001387843928)
,p_plug_name=>'Product Info'
,p_region_name=>'prod_info'
,p_parent_plug_id=>wwv_flow_api.id(299965853597451979)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>190
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SL,',
'       c001 SERLNUMB,',
'       --NVL(c001,''1'') SERLNUMB,',
'       c002 ITEMCODE,',
'       c003 ITEMDESC,',
'       c004 LUOMCODE,        ',
'       c005 HUOMCODE,',
'       c006 LUOMDESC,',
'       c007 ITEMTYPE,',
'       c008 COSTRATE,',
'       c009 SALERATE,',
'       c010 COMMCODE,',
'       c011 ORGNQNTY,',
'       c012 REMARKS,',
'       c013 POSTFLAG,',
'       c014 Last_recieve_qty,',
'       d001 Last_recieve_date,',
'       c015 Last_month_consumption,',
'       c016 present_stock',
'       ,d002 required_date',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>'purrequest'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37155122134924322)
,p_name=>'REQUIRED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUIRED_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'<font color="red">Required Date</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'STATIC'
,p_attribute_04=>'-365d'
,p_attribute_06=>'STATIC'
,p_attribute_07=>'+500d'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
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
 p_id=>wwv_flow_api.id(216895031375291502)
,p_name=>'LAST_RECIEVE_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_RECIEVE_QTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Recieve Qty'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly=readonly'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(216895155367291503)
,p_name=>'LAST_RECIEVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_RECIEVE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Last Recieve Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_item_attributes=>'readonly=readonly'
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
 p_id=>wwv_flow_api.id(216895177478291504)
,p_name=>'LAST_MONTH_CONSUMPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_MONTH_CONSUMPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Consumption'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly=readonly'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(216895293464291505)
,p_name=>'PRESENT_STOCK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESENT_STOCK'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Present Stock'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly=readonly'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(251051006423685860)
,p_name=>'SL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sl'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
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
,p_is_primary_key=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(251051137543685861)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(251051194793685862)
,p_name=>'POSTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSTFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Submit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>false
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(251162644376803295)
,p_name=>'LUOMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Unit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(299693916835332075)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sl#'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(299695011704332086)
,p_name=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Comm. Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(299695093057332087)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<font color="red">Product Code</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'500'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode||''-''||itemdes2 d, a.itemcode r',
' FROM nmitemas a',
'WHERE compcode = :compcode ',
'  AND statuscd = ''ACT''',
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
 p_id=>wwv_flow_api.id(299695163761332088)
,p_name=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(299695278426332089)
,p_name=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
,p_duplicate_value=>true
,p_include_in_export=>false
,p_column_comment=>'onfocus="setitemcode();"'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(299695993153332096)
,p_name=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALERATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sale Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_column_comment=>'onfocus="setitemcode();"'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(299696064540332097)
,p_name=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Huomcode'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(299696300193332099)
,p_name=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Suom.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(299696352575332100)
,p_name=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGNQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<font color="red">Request Qty.</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-integer'
,p_is_required=>true
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_column_comment=>'onfocus="total();saletotal();"'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(299965355812451974)
,p_name=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(582409908248642854)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(582409962951642855)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(299693692426332073)
,p_internal_uid=>299693692426332073
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
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
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {  ',
'  config.initActions = function( actions ) {',
'    actions.remove("single-row-view");',
'  };  ',
'  return config;  ',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(299986912129452271)
,p_interactive_grid_id=>wwv_flow_api.id(299693692426332073)
,p_static_id=>'115951'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(299987014325452273)
,p_report_id=>wwv_flow_api.id(299986912129452271)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40828918808026540)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(37155122134924322)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(219184648526840905)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(251051137543685861)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(219185253409840908)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(251051194793685862)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>63
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(219501481803903073)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(216895031375291502)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(219505919493954024)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(216895155367291503)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(219513107390994534)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(216895177478291504)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(219516426200030873)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(216895293464291505)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(251070835227038445)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(251051006423685860)
,p_is_visible=>false
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(251276016056840483)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(251162644376803295)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>52
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(299987867016452281)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(299693916835332075)
,p_is_visible=>false
,p_is_frozen=>true
,p_width=>73
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(299993425431452295)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(299695011704332086)
,p_is_visible=>false
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(299993863940452296)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(299695093057332087)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>198
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(299994438676452296)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(299695163761332088)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(299994904539452298)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(299695278426332089)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>146
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(299998407674452318)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(299695993153332096)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(299998908589452320)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(299696064540332097)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(299999943253452321)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(299696300193332099)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(300000442089452323)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(299696352575332100)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(300012416067452357)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(299965355812451974)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(582423315599892138)
,p_view_id=>wwv_flow_api.id(299987014325452273)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(582409908248642854)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36976608988362192)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(250847543908188504)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36979633803362195)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(297875658431074338)
,p_button_name=>'Close'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:closeModal(''PREV_DATA'');'
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
 p_id=>wwv_flow_api.id(36983842469362202)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(299965853597451979)
,p_button_name=>'UPLOAD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload Excel'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1002300400:&SESSION.::&DEBUG.:RP,1002300400:P1002300400_BACKPAGE:&APP_PAGE_ID.'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-upload'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36984246630362202)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(299965853597451979)
,p_button_name=>'USR_Template'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Template Selection'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:void(0)'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36984623253362202)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(299965853597451979)
,p_button_name=>'COPY_PREV'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copy From Previous'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:openModal(''PREV_DATA'');'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36985077180362202)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(299965853597451979)
,p_button_name=>'Post'
,p_button_static_id=>'postUnpost'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit All'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'postUnpost'
,p_icon_css_classes=>'fa-check-square-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36980036511362196)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(297875658431074338)
,p_button_name=>'Add_coll'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add to Request'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36977050238362193)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(250847543908188504)
,p_button_name=>'NEXT'
,p_button_static_id=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36977468364362193)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(250847543908188504)
,p_button_name=>'PREVIOUS'
,p_button_static_id=>'BACK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(37004438863362223)
,p_branch_name=>'Go To Page 415'
,p_branch_action=>'f?p=&APP_ID.:557:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(36977050238362193)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(37004011533362222)
,p_branch_name=>'Go To Page 413'
,p_branch_action=>'f?p=&APP_ID.:555:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(36977468364362193)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36978143864362193)
,p_name=>'P556_WARENAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(250847585871188504)
,p_prompt=>'Indent From'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'WAREHOUSE LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'ORDER BY warecode'))
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36978591079362194)
,p_name=>'P556_NEXTPAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(250847585871188504)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36978974217362194)
,p_name=>'P556_PREVPAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(250847585871188504)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36980447404362196)
,p_name=>'P556_DOCNUMBR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(297875658431074338)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Requisition No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT docnumbr || ''-'' || doctdate D, docnumbr R',
'  FROM (  SELECT DISTINCT docnumbr, doctdate',
'            FROM nmprocur',
'           WHERE docttype = :docttype ',
'             AND subttype = :subttype',
'        ORDER BY doctdate DESC)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>100
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36985436630362202)
,p_name=>'P556_SL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(299965853597451979)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36985897121362203)
,p_name=>'P556_COMPCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(299965853597451979)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(36998492045362219)
,p_name=>'set item desc'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(395970001387843928)
,p_triggering_element=>'ITEMCODE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36998908219362220)
,p_event_id=>wwv_flow_api.id(36998492045362219)
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
'           COMMGRUP,DPK_BASE_CALC.DFN_STOCK_LAST_RCV_QTY(P_COMPCODE=>compcode, P_ITEMCODE=>itemcode) LAST_RECEIVED_QTY,',
'           DPK_BASE_CALC.DFN_STOCK_LAST_RCV_DATE(P_COMPCODE=>COMPCODE, P_ITEMCODE=>itemcode) LAST_RECEIVED_DATE,',
'           DPK_BASE_CALC.DFN_STOCK_CONSUMPTION(p_compcode=>COMPCODE,  P_WARECODE => :P555_WARECODE, p_fromdate=> (SYSDATE-30), p_todate=>SYSDATE, p_itemcode=> itemcode),',
'           DPK_BASE_CALC.DFN_CURRENT_STOCK(P_COMPCODE => :COMPCODE, P_ITEMCODE => itemcode, P_WARECODE => :P555_WARECODE) ',
'        ',
'',
'      INTO :ITEMDESC, :LUOMCODE, :HUOMCODE, :LUOMDESC, :COSTRATE, :SALERATE, :ITEMTYPE, :COMMCODE, :LAST_RECIEVE_QTY,',
'      :LAST_RECIEVE_DATE, :LAST_MONTH_CONSUMPTION, :PRESENT_STOCK',
'      FROM NMITEMAS',
'     WHERE compcode = :P556_COMPCODE',
'       AND ITEMCODE = :ITEMCODE',
'       AND STATUSCD = ''ACT'';',
'exception ',
'    when others then ',
'null;',
'end;'))
,p_attribute_02=>'P556_COMPCODE,ITEMCODE'
,p_attribute_03=>'ITEMDESC,LUOMCODE,HUOMCODE,LUOMDESC,COSTRATE,SALERATE,ITEMTYPE,COMMCODE,LAST_RECIEVE_QTY,LAST_RECIEVE_DATE,LAST_MONTH_CONSUMPTION,PRESENT_STOCK'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36999468019362220)
,p_event_id=>wwv_flow_api.id(36998492045362219)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ORGNQNTY'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(36999847213362220)
,p_name=>'Close Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(36976608988362192)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37000386263362221)
,p_event_id=>wwv_flow_api.id(36999847213362220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37000804369362221)
,p_event_id=>wwv_flow_api.id(36999847213362220)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if; ',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;        ',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37001315895362221)
,p_event_id=>wwv_flow_api.id(36999847213362220)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37001783218362221)
,p_name=>'Refresh'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P556_DOCNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37002236048362222)
,p_event_id=>wwv_flow_api.id(37001783218362221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(297875825993074339)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37002653237362222)
,p_name=>'postUnpost All'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(36985077180362202)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37003159134362222)
,p_event_id=>wwv_flow_api.id(37002653237362222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'togglePost();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37003579662362222)
,p_name=>'hide unpost all button'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36995686583362217)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Previous Page Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT c004 ||''-''|| c005 warename',
'     INTO :P556_warename',
'     FROM apex_collections',
'    WHERE collection_name = ''DOC_INFO'';',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36995277250362217)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(395970001387843928)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DML for collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'       apex_collection.create_or_truncate_collection (''ORDER_ITEMS'');  ',
'end if;           ',
'     ',
'begin',
'    case :APEX$ROW_STATUS',
'    when ''C'' then',
'    ',
'        APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_c001            => :SL,',
'        p_c002            => :ITEMCODE,',
'        p_c003            => :ITEMDESC,',
'        p_c004            => :LUOMCODE,        ',
'        p_c005            => :HUOMCODE,',
'        p_c006            => :LUOMDESC,',
'        p_c007            => :ITEMTYPE,',
'        p_c008            => :COSTRATE,',
'        p_c009            => :SALERATE,',
'        p_c010            => :COMMCODE,',
'        p_c011            => :ORGNQNTY,',
'        p_c012            => :REMARKS,',
'        p_c013            => :POSTFLAG,',
'        p_c014  => :LAST_RECIEVE_QTY,',
'        p_d001  => :LAST_RECIEVE_DATE,',
'        p_c015  => :LAST_MONTH_CONSUMPTION,',
'        p_c016  => :PRESENT_STOCK,',
'        p_d002  => :REQUIRED_DATE',
'        );',
'        commit;',
'',
'    when ''U'' then',
'',
'        APEX_COLLECTION.UPDATE_MEMBER (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq             => :SL,',
'        p_c001            => :SERLNUMB,',
'        p_c002            => :ITEMCODE,',
'        p_c003            => :ITEMDESC,',
'        p_c004            => :LUOMCODE,        ',
'        p_c005            => :HUOMCODE,',
'        p_c006            => :LUOMDESC,',
'        p_c007            => :ITEMTYPE,',
'        p_c008            => :COSTRATE,',
'        p_c009            => :SALERATE,',
'        p_c010            => :COMMCODE,',
'        p_c011            => :ORGNQNTY,',
'        p_c012            => :REMARKS,',
'        p_c013            => :POSTFLAG,',
'         p_c014  => :LAST_RECIEVE_QTY,',
'        p_d001  => :LAST_RECIEVE_DATE,',
'        p_c015  => :LAST_MONTH_CONSUMPTION,',
'        p_c016  => :PRESENT_STOCK,',
'        p_d002  => :REQUIRED_DATE',
'        );',
'        commit;',
'',
'    when ''D'' then',
'    ',
'        APEX_COLLECTION.DELETE_MEMBER (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq             => :SL);',
'        commit;',
'        ',
'        APEX_COLLECTION.RESEQUENCE_COLLECTION (',
'        p_collection_name =>  ''ORDER_ITEMS''); ',
'        commit;',
'        ',
'    end case;',
'',
'exception ',
'    when others then',
'    raise_application_error(-20001, ''DML for collection ''||sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36996804141362218)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove duplicate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'',
'    begin',
'      for r_rec in (',
'        select seq_id, rn from',
'         (select seq_id, row_number() over (partition by c002 order by seq_id) rn',
'          from apex_collections',
'          where collection_name = ''ORDER_ITEMS''',
'        ) where rn != 1',
'      ) loop',
'            APEX_COLLECTION.DELETE_MEMBER',
'              (p_collection_name =>  ''ORDER_ITEMS'',',
'               p_seq             =>  r_rec.seq_id);',
'        end loop;',
'',
'        APEX_COLLECTION.RESEQUENCE_COLLECTION (',
'        p_collection_name =>  ''ORDER_ITEMS''); ',
'',
'    end;',
' ',
'end if;  ',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(36977050238362193)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36996483228362218)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validateion for collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'',
'    begin',
'',
'        for i in',
'        (   SELECT seq_id SL,',
'                     c011 ORGNQNTY',
'              FROM apex_collections',
'             WHERE collection_name = ''ORDER_ITEMS''',
'             ORDER BY sl)',
'        loop',
'',
'            if to_number(i.ORGNQNTY) is null ',
'            OR to_number(i.ORGNQNTY) < 1 then',
'               raise_application_error(-20001, ''Request Qty. must have valid value.!'');',
'            end if;',
'        end loop;',
'',
'    end;',
'    ',
'end if;        '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(36977050238362193)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36996098654362218)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'copy from prev'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'       apex_collection.create_or_truncate_collection (''ORDER_ITEMS'');  ',
'end if;  ',
'',
'declare',
'',
'v_sl varchar2(100);',
'v_itemcode nmprocur.itemcode%type;',
'v_itemdesc nmprocur.itemdesc%type;',
'v_luomcode nmprocur.luomcode%type;',
'v_huomcode nmprocur.huomcode%type;',
'v_luomdesc nmprocur.luomdesc%type;',
'v_itemtype nmprocur.itemtype%type;',
'v_itemrate nmprocur.itemrate%type;',
'v_costrate nmprocur.costrate%type;',
'v_salerate nmprocur.salerate%type;',
'v_commcode nmprocur.commcode%type;',
'v___reqdate nmprocur.reqddate%type;',
'v___last_rcv_qty number;',
'v___last_rcv_dt date;',
'v___last_mnth_cnsmp number;',
'v___cur_stock number;',
'',
'Begin',
'',
'    FOR i in 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'        ',
'                SELECT i sl,',
'                       itemcode,',
'                       itemdesc,',
'                       luomcode,',
'                       huomcode,',
'                       luomdesc,',
'                       itemtype,',
'                       itemrate,',
'                       costrate,',
'                       salerate,',
'                       commcode,',
'                       DPK_BASE_CALC.DFN_STOCK_LAST_RCV_QTY(P_COMPCODE=>compcode, P_ITEMCODE=>itemcode) LAST_RECEIVED_QTY,',
'                       DPK_BASE_CALC.DFN_STOCK_LAST_RCV_DATE(P_COMPCODE=>compcode, P_ITEMCODE=>itemcode) LAST_RECEIVED_DATE,',
'                       DPK_BASE_CALC.DFN_STOCK_CONSUMPTION(p_compcode=>compcode,  p_fromdate=> (SYSDATE-30), p_todate=>SYSDATE, p_itemcode=>itemcode),',
'                       DPK_BASE_CALC.DFN_CURRENT_STOCK(P_COMPCODE => compcode, P_ITEMCODE => itemcode/*, P_WARECODE => WARECODE*/)',
'                       ,reqddate',
'                  INTO v_sl, v_itemcode, v_itemdesc, v_luomcode, v_huomcode, v_luomdesc, v_itemtype, v_itemrate, v_costrate, v_salerate, v_commcode,v___last_rcv_qty,',
'                  v___last_rcv_dt,v___last_mnth_cnsmp,v___cur_stock,v___reqdate',
'                  FROM nmprocur',
'                 WHERE docnumbr = :P556_DOCNUMBR',
'                   AND itemcode = APEX_APPLICATION.G_F01(i);',
'                   /*',
'                   AND itemcode not in ( select c002',
'                                           FROM apex_collections',
'                                          WHERE collection_name = ''ORDER_ITEMS'');*/',
' ',
' ',
'        APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_c001            => v_sl,',
'        p_c002            => v_itemcode,',
'        p_c003            => v_ITEMDESC,',
'        p_c004            => v_LUOMCODE,        ',
'        p_c005            => v_HUOMCODE,',
'        p_c006            => v_LUOMDESC,',
'        p_c007            => v_ITEMTYPE,',
'        p_c008            => nvl(v_itemrate,v_COSTRATE),',
'        p_c009            => v_SALERATE,',
'        p_c010            => v_COMMCODE,',
'        p_c013            => ''N'',',
'        p_c014            => v___last_rcv_qty,',
'        p_d001            => v___last_rcv_dt,',
'        p_c015            => v___last_mnth_cnsmp,',
'        p_c016            => v___cur_stock',
'        ,p_d002     =>v___reqdate',
'        );',
'        ',
'        commit;  ',
'        ',
'      end loop;                              ',
'End;',
'',
'',
'     '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(36977050238362193)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36997686859362219)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove  duplicate from prev'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  for r_rec in (',
'    select seq_id, rn from',
'     (select seq_id, row_number() over (partition by c002 order by seq_id) rn',
'      from apex_collections',
'      where collection_name = ''ORDER_ITEMS''',
'    ) where rn != 1',
'  ) loop',
'        APEX_COLLECTION.DELETE_MEMBER',
'          (p_collection_name =>  ''ORDER_ITEMS'',',
'           p_seq             =>  r_rec.seq_id);',
'    end loop;',
'    ',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (',
'    p_collection_name =>  ''ORDER_ITEMS'');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(36980036511362196)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36998044053362219)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'item selection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number := 0;',
'begin    ',
'    select count(*)',
'    into v_count',
'    from apex_collections',
'    where collection_name = ''ORDER_ITEMS'';',
'',
'    if v_count < 1 then',
'       raise_application_error(-20001, ''No Item Selected for &PROGDESC.!'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(36977050238362193)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36997236183362218)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P1, WIZ_P3',
'  INTO :P556_PREVPAGE, :P556_NEXTPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
