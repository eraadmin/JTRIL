prompt --application/pages/page_00452
begin
--   Manifest
--     PAGE: 00452
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
 p_id=>452
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Audit Inventory - Product'
,p_page_mode=>'MODAL'
,p_step_title=>'Audit Inventory - Product'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20200701192003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64823507570864044)
,p_plug_name=>'Product List'
,p_region_name=>'IG_EDIT_ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID     SL,',
'       c001       COMPCODE,',
'       c002       DOCTTYPE,',
'       c003       SUBTTYPE,',
'       c004       DOCTDATE,',
'       c005       DOCNUMBR,',
'       c006       SERLNUMB,',
'       c007       RAISEDBY,',
'       c008       WARECODE,',
'       c009       COSTCODE,',
'       c010       ITEMCODE,',
'       c011       ITEMDESC,',
'       c012       ITEMCLAS,',
'       c013       COSTRATE,',
'       c014       SALERATE,',
'       c015       CLBLAMNT,',
'       c016       BATCHNUM,',
'       c017       CLBLQTY,',
'       c018       INVTRQTY,',
'       c019       EXCESQTY,',
'       c020       APPRQNTY,',
'       c021       SHORTQTY,',
'       c022       STATUSCD,',
'       c023       OPRSTAMP,',
'       c024       TIMSTAMP,',
'       c025       MODIFYDT,',
'       c026       LUOMCODE,',
'       c027       REMARKSS,',
'       c028       ADJQNTY,',
'       c029       VINNUMBR,',
'       c030       RACKNO,',
'       c031       PERIODCD,',
'       c032       BINCDQTY,',
'       c033       EXCESAMT,',
'       c034       SHORTAMT',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''PHYSICAL_INVENTORY'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(64823949894864048)
,p_name=>'SL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sl'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(64824018725864049)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Compcode'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
 p_id=>wwv_flow_api.id(64824106115864050)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Docttype'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_api.id(66258676519293601)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Subttype'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_api.id(66258771052293602)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Doctdate'
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66258812058293603)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Docnumbr'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
 p_id=>wwv_flow_api.id(66258938064293604)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Serlnumb'
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
 p_id=>wwv_flow_api.id(66259041853293605)
,p_name=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAISEDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Raisedby'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
 p_id=>wwv_flow_api.id(66259175493293606)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Warecode'
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66259215314293607)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Costcode'
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
 p_id=>wwv_flow_api.id(66259369947293608)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<strong ><font color="red">Product Code</font></strong>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'400'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(70032010587950909)
,p_lov_display_extra=>false
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
 p_id=>wwv_flow_api.id(66259448981293609)
,p_name=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
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
 p_id=>wwv_flow_api.id(66259528770293610)
,p_name=>'ITEMCLAS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCLAS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Itemclas'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
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
 p_id=>wwv_flow_api.id(66259673893293611)
,p_name=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cost Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66259796883293612)
,p_name=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALERATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sale Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66259806779293613)
,p_name=>'CLBLAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLBLAMNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cost Amt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66259915122293614)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'<strong ><font color="red">Batch No.</font></strong>'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.BATCHNUM as D, B.BATCHNUM as R',
'  FROM AUDIT_STOCK B, VWNMITEM I                                           --,',
' WHERE     B.COMPCODE = :P452_COMPCODE',
'       AND B.COMPCODE = I.COMPCODE',
'       AND B.ITEMCODE = I.ITEMCODE',
'       AND B.ITEMCODE = :ITEMCODE',
'       AND B.WARECODE = :P452_WARECODE',
'       AND PERIODCD = :P452_PERIODCD'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'ITEMCODE'
,p_ajax_items_to_submit=>'P452_COMPCODE,P452_WARECODE,P452_PERIODCD'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66260026444293615)
,p_name=>'CLBLQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLBLQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stock Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66260117235293616)
,p_name=>'INVTRQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVTRQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<strong ><font color="red">Inventory Qty</font></strong>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-integer'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66260206547293617)
,p_name=>'EXCESQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCESQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Excess Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66260326376293618)
,p_name=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Apprqnty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66260422281293619)
,p_name=>'SHORTQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHORTQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Short Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66260537142293620)
,p_name=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUSCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Statuscd'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
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
 p_id=>wwv_flow_api.id(66260659594293621)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Oprstamp'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
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
 p_id=>wwv_flow_api.id(66260729625293622)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Timstamp'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
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
 p_id=>wwv_flow_api.id(66260814637293623)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Modifydt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
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
 p_id=>wwv_flow_api.id(66260959160293624)
,p_name=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Unit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>290
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
 p_id=>wwv_flow_api.id(66261043305293625)
,p_name=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarkss'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>300
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
 p_id=>wwv_flow_api.id(66261167581293626)
,p_name=>'ADJQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADJQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Adjqnty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>310
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
 p_id=>wwv_flow_api.id(66261286570293627)
,p_name=>'VINNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VINNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bin Card  No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>320
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
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT VINNUMBR,DOCNUMBR',
'FROM NMSTKINV',
'WHERE COMPCODE = :P452_COMPCODE',
'AND DOCTTYPE = :P452_DOCTTYPE',
'AND SUBTTYPE = :P452_SUBTTYPE',
'ORDER BY 1'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66261397516293628)
,p_name=>'RACKNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RACKNO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Rack No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>330
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
 p_id=>wwv_flow_api.id(66261499747293629)
,p_name=>'PERIODCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERIODCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Periodcd'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>340
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
 p_id=>wwv_flow_api.id(66261505412293630)
,p_name=>'BINCDQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BINCDQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bincdqty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>350
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
 p_id=>wwv_flow_api.id(66262064915293635)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(66262109493293636)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(69949489139226609)
,p_name=>'EXCESAMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCESAMT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Excess Amt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>360
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(69949515595226610)
,p_name=>'SHORTAMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHORTAMT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Short Amt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>370
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(64823867999864047)
,p_internal_uid=>64823867999864047
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
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
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(66264521901294562)
,p_interactive_grid_id=>wwv_flow_api.id(64823867999864047)
,p_static_id=>'395989'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(66264659581294562)
,p_report_id=>wwv_flow_api.id(66264521901294562)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66265186306294565)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(64823949894864048)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>58
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66265516057294568)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(64824018725864049)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66266083302294571)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(64824106115864050)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66266508197294575)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(66258676519293601)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66267041076294578)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(66258771052293602)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66267569739294581)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(66258812058293603)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66268000172294584)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(66258938064293604)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66268593603294587)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(66259041853293605)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66269026733294590)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(66259175493293606)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66269530995294592)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(66259215314293607)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66270055618294595)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(66259369947293608)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66270568625294598)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(66259448981293609)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>175
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66271097201294601)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(66259528770293610)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66271535952294604)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(66259673893293611)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66272022342294607)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(66259796883293612)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66272574345294609)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(66259806779293613)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66273068484294612)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(66259915122293614)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66273554119294615)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(66260026444293615)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66274062820294618)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(66260117235293616)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66274528457294621)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(66260206547293617)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66275056543294625)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(66260326376293618)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66275533544294626)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(66260422281293619)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>85
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66276093453294629)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(66260537142293620)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66276581711294632)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(66260659594293621)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66277080117294635)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(66260729625293622)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66277573561294639)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(66260814637293623)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66278072001294642)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(66260959160293624)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>49
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66278572230294645)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(66261043305293625)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66279071317294646)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(66261167581293626)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66279571459294650)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(66261286570293627)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66280095640294653)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(66261397516293628)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66280553055294656)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(66261499747293629)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66281050234294659)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(66261505412293630)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(66299863529333921)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(66262064915293635)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(70008172479758781)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(69949489139226609)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(70008629677758785)
,p_view_id=>wwv_flow_api.id(66264659581294562)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(69949515595226610)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(196582193200824813)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(66220155285901010)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66251100633193798)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(196582193200824813)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66251503598193800)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(196582193200824813)
,p_button_name=>'NEXT'
,p_button_static_id=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&BTN_NEXT_LBL.'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'&BTN_NEXT_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66261732428293632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(196582193200824813)
,p_button_name=>'BACK'
,p_button_static_id=>'BACK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'&BTN_BACK_LBL.'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'&BTN_BACK_ICON.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(66261618634293631)
,p_branch_name=>'Go To 453'
,p_branch_action=>'f?p=&APP_ID.:453:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(66251503598193800)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(66262325026293638)
,p_branch_name=>'Go To 451'
,p_branch_action=>'f?p=&APP_ID.:451:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(66261732428293632)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64823215831864041)
,p_name=>'P452_DOCTDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(196582193200824813)
,p_source=>'P451_DOCTDATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64823389044864042)
,p_name=>'P452_DOCTTYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(196582193200824813)
,p_item_default=>'DOCTTYPE'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64823486190864043)
,p_name=>'P452_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(196582193200824813)
,p_item_default=>'COMPCODE'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67172872783734850)
,p_name=>'P452_SUBTTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(196582193200824813)
,p_item_default=>'SUBTTYPE'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69949864860226613)
,p_name=>'P452_WARECODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(196582193200824813)
,p_use_cache_before_default=>'NO'
,p_source=>'P451_WARECODE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69950590017226620)
,p_name=>'P452_PERIODCD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(196582193200824813)
,p_use_cache_before_default=>'NO'
,p_source=>'P451_PERIODCD'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66261887586293633)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(66251100633193798)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66261969700293634)
,p_event_id=>wwv_flow_api.id(66261887586293633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66262702124293642)
,p_name=>'Item Details'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(64823507570864044)
,p_triggering_element=>'ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69950230074226617)
,p_event_id=>wwv_flow_api.id(66262702124293642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ITEMDESC,ITEMCLAS,LUOMCODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT (INITCAP (I.ITEMDES1))                 ITEMDES1,',
'                I.ITEMCLAS,',
'                I.LUOMCODE',
'  FROM AUDIT_STOCK B, VWNMITEM I ',
' WHERE     B.COMPCODE = :P452_COMPCODE',
'       AND B.COMPCODE = I.COMPCODE',
'       AND B.ITEMCODE = I.ITEMCODE',
'       AND B.ITEMCODE = :ITEMCODE',
'       AND B.WARECODE = :P451_WARECODE',
'       AND PERIODCD = :P451_PERIODCD'))
,p_attribute_07=>'ITEMCODE,P452_COMPCODE,P451_WARECODE,P451_PERIODCD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69949676063226611)
,p_name=>'Excess & Short Calculation'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(64823507570864044)
,p_triggering_element=>'INVTRQTY'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69949795470226612)
,p_event_id=>wwv_flow_api.id(69949676063226611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :INVTRQTY IS NULL',
'   THEN',
'      :EXCESQTY := NULL;',
'      :EXCESAMT := NULL;',
'      :SHORTQTY := NULL;',
'      :SHORTAMT := NULL;',
'      :REMARKSS := ''1'';',
'   END IF;',
'',
'   IF NVL (:INVTRQTY, 0) >= 0',
'   THEN',
'      IF NVL (:INVTRQTY, 0) > NVL (:CLBLQTY, 0)',
'      THEN',
'         :EXCESQTY := NVL (:INVTRQTY, 0) - :CLBLQTY;',
'         :EXCESAMT := NVL (:EXCESQTY, 0) * NVL (:COSTRATE, 0);',
'         :SHORTQTY := NULL;',
'         :SHORTAMT := NULL;',
'         :REMARKSS := ''2'';',
'      ELSIF NVL (:INVTRQTY, 0) < NVL (:CLBLQTY, 0)',
'      THEN',
'         :SHORTQTY := :CLBLQTY - NVL (:INVTRQTY, 0);',
'         :SHORTAMT := NVL (:SHORTQTY, 0) * NVL (:COSTRATE, 0);',
'         :EXCESQTY := NULL;',
'         :EXCESAMT := NULL;',
'         :REMARKSS := ''3'';',
'      ELSIF NVL (:INVTRQTY, 0) = NVL (:CLBLQTY, 0)',
'      THEN',
'         :EXCESQTY := 0;',
'         :EXCESAMT := 0;',
'         :SHORTQTY := 0;',
'         :SHORTAMT := 0;',
'         :REMARKSS := ''4'';',
'      ELSE',
'         :EXCESQTY := NULL;',
'         :EXCESAMT := NULL;',
'         :SHORTQTY := NULL;',
'         :SHORTAMT := NULL;',
'         :REMARKSS := ''5'';',
'      END IF;',
'   END IF;',
'',
'   :EXCESQTY := ABS (:EXCESQTY);',
'   :EXCESAMT := ABS (:EXCESAMT);',
'   :SHORTQTY := ABS (:SHORTQTY);',
'   :SHORTAMT := ABS (:SHORTAMT);',
'END;'))
,p_attribute_02=>'INVTRQTY,CLBLQTY,COSTRATE,EXCESQTY,SHORTQTY'
,p_attribute_03=>'EXCESQTY,EXCESAMT,SHORTQTY,SHORTAMT,REMARKSS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69949982083226614)
,p_name=>'Edit IG In single Click'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69950060581226615)
,p_event_id=>wwv_flow_api.id(69949982083226614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(64823507570864044)
,p_attribute_01=>'apex.region("IG_EDIT_ID").widget().interactiveGrid("getActions").set("edit", true);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69950396402226618)
,p_name=>'Item Details Rate'
,p_event_sequence=>50
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(64823507570864044)
,p_triggering_element=>'ITEMCODE,BATCHNUM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69950665219226621)
,p_event_id=>wwv_flow_api.id(69950396402226618)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'VINNUMBR,RACKNO,INVTRQTY,EXCESQTY,EXCESAMT,SHORTQTY,SHORTAMT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66262840153293643)
,p_event_id=>wwv_flow_api.id(69950396402226618)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'CLBLQTY,COSTRATE,SALERATE,CLBLAMNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  B.CLBALQTY,',
'                DFN_ITEMBATCH_COSTRATE (B.COMPCODE,',
'                                        B.ITEMCODE,',
'                                        B.BATCHNUM,',
'                                        TRUNC (SYSDATE),',
'                                        ''C'',',
'                                        ''N'',',
'                                        B.WARECODE)    COSTRATE,',
'                DFN_ITEMBATCH_RATE (B.COMPCODE,',
'                                    B.ITEMCODE,',
'                                    B.BATCHNUM,',
'                                    TRUNC (SYSDATE),',
'                                    ''S'',',
'                                    ''N'')        SALERATE,',
'                (  DFN_ITEMBATCH_COSTRATE (B.COMPCODE,',
'                                           B.ITEMCODE,',
'                                           B.BATCHNUM,',
'                                           TRUNC (SYSDATE),',
'                                           ''C'',',
'                                           ''N'',',
'                                           B.WARECODE)',
'                 * B.CLBALQTY)                         CLBLAMNT',
'  FROM AUDIT_STOCK B, VWNMITEM I                                           --,',
' WHERE     B.COMPCODE = :P452_COMPCODE',
'       AND B.COMPCODE = I.COMPCODE',
'       AND B.ITEMCODE = I.ITEMCODE',
'       AND B.ITEMCODE = :ITEMCODE',
'       AND B.WARECODE = :P452_WARECODE',
'       AND B.BATCHNUM = :BATCHNUM',
'       AND PERIODCD = :P452_PERIODCD'))
,p_attribute_07=>'ITEMCODE,BATCHNUM,P452_COMPCODE,P452_WARECODE,P452_PERIODCD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT (INITCAP (I.ITEMDES1))                 ITEMDES1,',
'                B.BATCHNUM,',
'                I.ITEMCLAS,',
'                I.LUOMCODE,',
'                B.CLBALQTY,',
'                DFN_ITEMBATCH_COSTRATE (B.COMPCODE,',
'                                        B.ITEMCODE,',
'                                        B.BATCHNUM,',
'                                        TRUNC (SYSDATE),',
'                                        ''C'',',
'                                        ''N'',',
'                                        B.WARECODE)    COSTRATE,',
'                DFN_ITEMBATCH_RATE (B.COMPCODE,',
'                                    B.ITEMCODE,',
'                                    B.BATCHNUM,',
'                                    TRUNC (SYSDATE),',
'                                    ''S'',',
'                                    ''N'')        SALERATE,',
'                (  DFN_ITEMBATCH_COSTRATE (B.COMPCODE,',
'                                           B.ITEMCODE,',
'                                           B.BATCHNUM,',
'                                           TRUNC (SYSDATE),',
'                                           ''C'',',
'                                           ''N'',',
'                                           B.WARECODE)',
'                 * B.CLBALQTY)                         CLBLAMNT',
'  FROM AUDIT_STOCK B, VWNMITEM I                                           --,',
' WHERE     B.COMPCODE = :P452_COMPCODE',
'       AND B.COMPCODE = I.COMPCODE',
'       AND B.ITEMCODE = I.ITEMCODE',
'       AND B.ITEMCODE = :ITEMCODE',
'       AND B.WARECODE = :P451_WARECODE',
'       --AND B.BATCHNUM = ''b01''',
'       AND PERIODCD = :P451_PERIODCD'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69950766351226622)
,p_event_id=>wwv_flow_api.id(69950396402226618)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'VINNUMBR'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64823720643864046)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Data Load'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF NOT apex_collection.collection_exists (''PHYSICAL_INVENTORY'') = TRUE',
'    THEN',
'        BEGIN',
'            APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY (',
'                p_collection_name   => ''PHYSICAL_INVENTORY'',',
'                p_query             =>',
'                    ''SELECT COMPCODE,',
'       DOCTTYPE,',
'       SUBTTYPE,',
'       DOCTDATE,',
'       DOCNUMBR,',
'       SERLNUMB,',
'       RAISEDBY,',
'       WARECODE,',
'       COSTCODE,',
'       ITEMCODE,',
'       ITEMDESC,',
'       ITEMCLAS,',
'       COSTRATE,',
'       SALERATE,',
'       CLBLAMNT,',
'       BATCHNUM,',
'       CLBLQTY,',
'       INVTRQTY,',
'       EXCESQTY,',
'       APPRQNTY,',
'       SHORTQTY,',
'       STATUSCD,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       MODIFYDT,',
'       LUOMCODE,',
'       REMARKSS,',
'       ADJQNTY,',
'       VINNUMBR,',
'       RACKNO,',
'       PERIODCD,',
'       BINCDQTY,',
'       NULL EXCESAMT,',
'       NULL SHORTAMT    ',
'  FROM NMSTKINV',
'  WHERE COMPCODE = '''''' || :COMPCODE || ''''''',
'    AND DOCTTYPE = '''''' || :P452_DOCTTYPE || ''''''',
'    AND SUBTTYPE = '''''' || :P452_SUBTTYPE || ''''''',
'    AND DOCTDATE = '''''' || :P452_DOCTDATE || ''''''',
'    AND STATUSCD = ''''NEW'''''');',
'        END;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69950807264226623)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(64823507570864044)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DML in Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 07-Jun-20 6:41:43 PM (QP5 v5.227.12220.39754) */',
'BEGIN',
'   IF NOT apex_collection.collection_exists (''PHYSICAL_INVENTORY'') = TRUE',
'   THEN',
'      apex_collection.create_or_truncate_collection (''PHYSICAL_INVENTORY'');',
'   END IF;',
'',
'',
'   BEGIN',
'      CASE :APEX$ROW_STATUS',
'         WHEN ''C''',
'         THEN',
'            APEX_COLLECTION.ADD_MEMBER (',
'               p_collection_name   => ''PHYSICAL_INVENTORY'',',
'               p_c001              => :COMPCODE,',
'               p_c002              => :DOCTTYPE,',
'               p_c003              => :SUBTTYPE,',
'               p_c004              => :DOCTDATE,',
'               p_c005              => :DOCNUMBR,',
'               p_c006              => :SERLNUMB,',
'               p_c007              => :RAISEDBY,',
'               p_c008              => :WARECODE,',
'               p_c009              => :COSTCODE,',
'               p_c010              => :ITEMCODE,',
'               p_c011              => :ITEMDESC,',
'               p_c012              => :ITEMCLAS,',
'               p_c013              => :COSTRATE,',
'               p_c014              => :SALERATE,',
'               p_c015              => :CLBLAMNT,',
'               p_c016              => :BATCHNUM, ',
'               p_c017              => :CLBLQTY,',
'               p_c018              => :INVTRQTY,',
'               p_c019              => :EXCESQTY,',
'               p_c020              => :APPRQNTY,',
'               p_c021              => :SHORTQTY,',
'               p_c022              => :STATUSCD,',
'               p_c023              => :OPRSTAMP,',
'               p_c024              => :TIMSTAMP,',
'               p_c025              => :MODIFYDT,',
'               p_c026              => :LUOMCODE,',
'               p_c027              => :REMARKSS,',
'               p_c028              => :ADJQNTY,',
'               p_c029              => :VINNUMBR,',
'               p_c030              => :RACKNO,',
'               p_c031              => :PERIODCD,',
'               p_c032              => :BINCDQTY,',
'               p_c033              => :EXCESAMT,',
'               p_c034              => :SHORTAMT,',
'               p_c035              => :SL);',
'',
'            COMMIT;',
'         WHEN ''U''',
'         THEN',
'            APEX_COLLECTION.UPDATE_MEMBER (',
'               p_collection_name   => ''PHYSICAL_INVENTORY'',',
'               p_seq               => :SL,',
'               p_c001              => :COMPCODE,',
'               p_c002              => :DOCTTYPE,',
'               p_c003              => :SUBTTYPE,',
'               p_c004              => :DOCTDATE,',
'               p_c005              => :DOCNUMBR,',
'               p_c006              => :SERLNUMB,',
'               p_c007              => :RAISEDBY,',
'               p_c008              => :WARECODE,',
'               p_c009              => :COSTCODE,',
'               p_c010              => :ITEMCODE,',
'               p_c011              => :ITEMDESC,',
'               p_c012              => :ITEMCLAS,',
'               p_c013              => :COSTRATE,',
'               p_c014              => :SALERATE,',
'               p_c015              => :CLBLAMNT,',
'               p_c016              => :BATCHNUM,',
'               p_c017              => :CLBLQTY,',
'               p_c018              => :INVTRQTY,',
'               p_c019              => :EXCESQTY,',
'               p_c020              => :APPRQNTY,',
'               p_c021              => :SHORTQTY,',
'               p_c022              => :STATUSCD,',
'               p_c023              => :OPRSTAMP,',
'               p_c024              => :TIMSTAMP,',
'               p_c025              => :MODIFYDT,',
'               p_c026              => :LUOMCODE,',
'               p_c027              => :REMARKSS,',
'               p_c028              => :ADJQNTY,',
'               p_c029              => :VINNUMBR,',
'               p_c030              => :RACKNO,',
'               p_c031              => :PERIODCD,',
'               p_c032              => :BINCDQTY,',
'               p_c033              => :EXCESAMT,',
'               p_c034              => :SHORTAMT,',
'               p_c035              => :SL);',
'',
'',
'',
'            COMMIT;',
'         WHEN ''D''',
'         THEN',
'            APEX_COLLECTION.DELETE_MEMBER (',
'               p_collection_name   => ''PHYSICAL_INVENTORY'',',
'               p_seq               => :SL);',
'',
'            COMMIT;',
'      END CASE;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20001,',
'                                  ''DML Problem in Collection - '' || SQLERRM);',
'   END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(66251503598193800)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69951548550226630)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Null Checking'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 08-Jun-20 6:56:49 PM (QP5 v5.227.12220.39754) */',
'BEGIN',
'   IF apex_collection.collection_exists (''PHYSICAL_INVENTORY'') = TRUE',
'   THEN',
'      FOR i IN (  SELECT seq_id SL,',
'                         c010 ITEMCODE,',
'                         c016 BATCHNUM,',
'                         TO_NUMBER (c018) INVTRQTY',
'                    FROM apex_collections',
'                   WHERE collection_name = ''PHYSICAL_INVENTORY''',
'                ORDER BY sl)',
'      LOOP',
'       /*  IF i.ITEMCODE IS NULL',
'         THEN',
'            RAISE_APPLICATION_ERROR (-20001, ''Item Code must have a value. '');',
'         END IF; */',
'',
'         IF i.BATCHNUM IS NULL',
'         THEN',
'            RAISE_APPLICATION_ERROR (-20001, ''Batch No. must have a value. '');',
'         END IF;',
'',
'         IF i.INVTRQTY IS NULL',
'         THEN',
'            RAISE_APPLICATION_ERROR (',
'               -20001,',
'               ''Inventory Qty. must have a valid value. '');',
'         END IF;',
'      END LOOP;',
'   END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(66251503598193800)
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
 p_id=>wwv_flow_api.id(69952108920226636)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_count   NUMBER := 0;',
'BEGIN',
'   SELECT COUNT (*)',
'     INTO v_count',
'     FROM apex_collections',
'    WHERE collection_name = ''PHYSICAL_INVENTORY'';',
'',
'   IF v_count < 1',
'   THEN',
'      RAISE_APPLICATION_ERROR (-20001, ''No Item Selected for Inventory.'');',
'   END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(66251503598193800)
);
null;
wwv_flow_api.component_end;
end;
/
