prompt --application/pages/page_00461
begin
--   Manifest
--     PAGE: 00461
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
 p_id=>461
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Audit Inventry Modification'
,p_page_mode=>'MODAL'
,p_step_title=>'Audit Inventry Modification'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20200701195053'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74573317435030307)
,p_plug_name=>'Inventory'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74574271254030316)
,p_plug_name=>'Inventoty 01'
,p_parent_plug_id=>wwv_flow_api.id(74573317435030307)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74574388123030317)
,p_plug_name=>'Inventoty 02'
,p_parent_plug_id=>wwv_flow_api.id(74573317435030307)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74574655815030320)
,p_plug_name=>'Edit List'
,p_region_name=>'IG_EDIT_ID'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID,',
'       COMPCODE,',
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
'       BINCDQTY',
'  FROM NMSTKINV',
' WHERE     COMPCODE = :COMPCODE',
'       AND DOCTTYPE = :P461_DOCTTYPE',
'       AND SUBTTYPE = :P461_SUBTTYPE',
'       AND DOCTDATE = :P461_DOCTDATE',
'       AND DOCNUMBR = :P461_DOCNUMBR'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(74575068351030324)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Compcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(74575128255030325)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Docttype'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(74575266641030326)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Subttype'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(74575342556030327)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Doctdate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_api.id(74575453761030328)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Docnumbr'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(74575549902030329)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'SL'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_api.id(74575633212030330)
,p_name=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAISEDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Raisedby'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_api.id(74575729997030331)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Warecode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_api.id(74575809675030332)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Costcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_api.id(74575964439030333)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<strong ><font color="red">Product Code</font></strong>'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'400'
,p_is_required=>false
,p_max_length=>200
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT INITCAP (I.ITEMDES1) , B.ITEMCODE ',
'    FROM AUDIT_STOCK B,',
'         VWNMITEM   I,',
'         NMWHSMAS   W,',
'         NMBTRATE   R',
'   WHERE     B.COMPCODE = :P461_COMPCODE',
'         AND B.COMPCODE = I.COMPCODE',
'         AND B.COMPCODE = W.COMPCODE',
'         AND B.ITEMCODE = I.ITEMCODE',
'         AND B.WARECODE = W.WARECODE',
'         AND B.COMPCODE = R.COMPCODE',
'         AND B.ITEMCODE = R.ITEMCODE',
'         AND B.WARECODE = R.WARECODE',
'         AND B.BATCHNUM = R.BATCHNUM',
'         AND TRUNC (BATCHDTE) =',
'             (  SELECT MAX (TRUNC (BATCHDTE))     BATCHDTE',
'                  FROM NMBTRATE',
'                 WHERE     COMPCODE = R.COMPCODE',
'                       AND ITEMCODE = R.ITEMCODE',
'                       AND BATCHNUM = R.BATCHNUM',
'                       AND WARECODE = R.WARECODE',
'              GROUP BY COMPCODE,',
'                       ITEMCODE,',
'                       WARECODE,',
'                       BATCHNUM)',
'         AND B.WARECODE = :P461_WARECODE',
'         AND B.PERIODCD = :P461_PERIODCD',
'         GROUP BY B.BATCHNUM, B.ITEMCODE, I.ITEMDES1',
'ORDER BY 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'COMPCODE'
,p_ajax_items_to_submit=>'P461_WARECODE,P461_PERIODCD,P461_COMPCODE'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(74576050226030334)
,p_name=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(74576143862030335)
,p_name=>'ITEMCLAS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCLAS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Itemclas'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
 p_id=>wwv_flow_api.id(74576286217030336)
,p_name=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cost Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
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
 p_id=>wwv_flow_api.id(74576301800030337)
,p_name=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALERATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Salerate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
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
 p_id=>wwv_flow_api.id(74576493720030338)
,p_name=>'CLBLAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLBLAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cost Amt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
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
 p_id=>wwv_flow_api.id(74576581503030339)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Batch No.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.BATCHNUM as D, B.BATCHNUM as R',
'  FROM AUDIT_STOCK B, VWNMITEM I                                           --,',
' WHERE     B.COMPCODE = :P461_COMPCODE',
'       AND B.COMPCODE = I.COMPCODE',
'       AND B.ITEMCODE = I.ITEMCODE',
'       AND B.ITEMCODE = :ITEMCODE',
'       AND B.WARECODE = :P461_WARECODE',
'       AND PERIODCD = :P461_PERIODCD'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'ITEMCODE'
,p_ajax_items_to_submit=>'P461_COMPCODE,P461_WARECODE,P461_PERIODCD'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(74576603234030340)
,p_name=>'CLBLQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLBLQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stock Qty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>190
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
 p_id=>wwv_flow_api.id(74576765632030341)
,p_name=>'INVTRQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVTRQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Inventory Qty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
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
 p_id=>wwv_flow_api.id(74576896405030342)
,p_name=>'EXCESQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCESQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Excess Qty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
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
 p_id=>wwv_flow_api.id(74576939751030343)
,p_name=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Apprqnty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>220
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
 p_id=>wwv_flow_api.id(74577019342030344)
,p_name=>'SHORTQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHORTQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Short Qty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>230
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
 p_id=>wwv_flow_api.id(74577152422030345)
,p_name=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUSCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Statuscd'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(74577229248030346)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Oprstamp'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
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
 p_id=>wwv_flow_api.id(74577364301030347)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Timstamp'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
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
 p_id=>wwv_flow_api.id(74577497889030348)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Modifydt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
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
 p_id=>wwv_flow_api.id(74577571340030349)
,p_name=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_api.id(74577664485030350)
,p_name=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarkss'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
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
 p_id=>wwv_flow_api.id(74720311559397301)
,p_name=>'ADJQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADJQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Adjqnty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>300
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
 p_id=>wwv_flow_api.id(74720496934397302)
,p_name=>'VINNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VINNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bin Card  No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>150
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
 p_id=>wwv_flow_api.id(74720583383397303)
,p_name=>'RACKNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RACKNO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Rack No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>320
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(74720674860397304)
,p_name=>'PERIODCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERIODCD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Periodcd'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>330
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
 p_id=>wwv_flow_api.id(74720728661397305)
,p_name=>'BINCDQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BINCDQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Bincdqty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>340
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
 p_id=>wwv_flow_api.id(74720841644397306)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(74720977164397307)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(74722285950397320)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>350
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(74574796354030321)
,p_internal_uid=>74574796354030321
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
 p_id=>wwv_flow_api.id(74726578131397575)
,p_interactive_grid_id=>wwv_flow_api.id(74574796354030321)
,p_static_id=>'396002'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(74726695168397575)
,p_report_id=>wwv_flow_api.id(74726578131397575)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74727197873397581)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(74575068351030324)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74727659557397584)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(74575128255030325)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74728131416397587)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(74575266641030326)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74728626894397590)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(74575342556030327)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74729149655397593)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(74575453761030328)
,p_is_visible=>false
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
 p_id=>wwv_flow_api.id(74729662975397595)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(74575549902030329)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74730199140397598)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(74575633212030330)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74730664460397601)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(74575729997030331)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74731040715397604)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(74575809675030332)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74731535091397607)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(74575964439030333)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74732067164397609)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(74576050226030334)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74732530989397612)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(74576143862030335)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74733027314397615)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(74576286217030336)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74733503342397618)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(74576301800030337)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74734003923397620)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(74576493720030338)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74734551155397623)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(74576581503030339)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74735043902397626)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(74576603234030340)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74735520491397629)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(74576765632030341)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74736040512397632)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(74576896405030342)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74736589921397634)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(74576939751030343)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74737042388397637)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(74577019342030344)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74737577521397640)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(74577152422030345)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74738064274397643)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(74577229248030346)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74738574034397645)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(74577364301030347)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74739001096397648)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(74577497889030348)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74739519852397656)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(74577571340030349)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74740030927397659)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(74577664485030350)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74740573555397660)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(74720311559397301)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74741079647397664)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(74720496934397302)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74741538313397667)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(74720583383397303)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74742051044397670)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(74720674860397304)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74742550772397673)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(74720728661397305)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(74744705867404551)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(74720841644397306)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(78185229191021650)
,p_view_id=>wwv_flow_api.id(74726695168397575)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(74722285950397320)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(146707226197064251)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74574597728030319)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(146707226197064251)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'&BTN_SAVE_LBL.'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74696591447254729)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(146707226197064251)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74574402216030318)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(146707226197064251)
,p_button_name=>'BACK'
,p_button_static_id=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'&BTN_BACK_LBL.'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:460:&SESSION.::&DEBUG.:RP,461::'
,p_icon_css_classes=>'&BTN_BACK_ICON.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(84254467538817629)
,p_branch_name=>'Go To 460'
,p_branch_action=>'f?p=&APP_ID.:460:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(74574597728030319)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36431690490111018)
,p_name=>'P461_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74574271254030316)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36431721678111019)
,p_name=>'P461_COSTCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(74574388123030317)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74573427520030308)
,p_name=>'P461_DOCNUMBR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(74574271254030316)
,p_prompt=>'Transaction No. '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74573513985030309)
,p_name=>'P461_DOCTDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74574271254030316)
,p_prompt=>'Doctdate'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74573663028030310)
,p_name=>'P461_WARECODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(74574388123030317)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74573785115030311)
,p_name=>'P461_WAREDESC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(74574388123030317)
,p_prompt=>'Waredesc'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74573888006030312)
,p_name=>'P461_RAISEDBY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(74574388123030317)
,p_prompt=>'Raisedby'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74574852426030322)
,p_name=>'P461_DOCTTYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(74574271254030316)
,p_item_default=>'DOCTTYPE'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74574970873030323)
,p_name=>'P461_SUBTTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(74574271254030316)
,p_item_default=>'SUBTTYPE'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74722353176397321)
,p_name=>'P461_PERIODCD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(74574271254030316)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(84254124757817626)
,p_tabular_form_region_id=>wwv_flow_api.id(74574655815030320)
,p_validation_name=>'INVTRQTY'
,p_validation_sequence=>10
,p_validation=>'INVTRQTY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'INVTRQTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(84254292107817627)
,p_tabular_form_region_id=>wwv_flow_api.id(74574655815030320)
,p_validation_name=>'BATCHNUM'
,p_validation_sequence=>20
,p_validation=>'BATCHNUM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'BATCHNUM'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(84254396639817628)
,p_tabular_form_region_id=>wwv_flow_api.id(74574655815030320)
,p_validation_name=>'ITEMCODE'
,p_validation_sequence=>30
,p_validation=>'ITEMCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'ITEMCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74574033588030314)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(74696591447254729)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74574134820030315)
,p_event_id=>wwv_flow_api.id(74574033588030314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74721285293397310)
,p_name=>'Edit IG In single Click'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74721307462397311)
,p_event_id=>wwv_flow_api.id(74721285293397310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("IG_EDIT_ID").widget().interactiveGrid("getActions").set("edit", true);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(84253591553817620)
,p_name=>'Excess & Short Calculation'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(74574655815030320)
,p_triggering_element=>'INVTRQTY'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(84253697251817621)
,p_event_id=>wwv_flow_api.id(84253591553817620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :INVTRQTY IS NULL',
'   THEN',
'      :EXCESQTY := NULL;',
'      --:EXCESAMT := NULL;',
'      :SHORTQTY := NULL;',
'      --:SHORTAMT := NULL;',
'      :REMARKSS := ''1'';',
'   END IF;',
'',
'   IF NVL (:INVTRQTY, 0) >= 0',
'   THEN',
'      IF NVL (:INVTRQTY, 0) > NVL (:CLBLQTY, 0)',
'      THEN',
'         :EXCESQTY := NVL (:INVTRQTY, 0) - :CLBLQTY;',
'         --:EXCESAMT := NVL (:EXCESQTY, 0) * NVL (:COSTRATE, 0);',
'         :SHORTQTY := NULL;',
'         --:SHORTAMT := NULL;',
'         :REMARKSS := ''2'';',
'      ELSIF NVL (:INVTRQTY, 0) < NVL (:CLBLQTY, 0)',
'      THEN',
'         :SHORTQTY := :CLBLQTY - NVL (:INVTRQTY, 0);',
'         --:SHORTAMT := NVL (:SHORTQTY, 0) * NVL (:COSTRATE, 0);',
'         :EXCESQTY := NULL;',
'         --:EXCESAMT := NULL;',
'         :REMARKSS := ''3'';',
'      ELSIF NVL (:INVTRQTY, 0) = NVL (:CLBLQTY, 0)',
'      THEN',
'         :EXCESQTY := 0;',
'         --:EXCESAMT := 0;',
'         :SHORTQTY := 0;',
'         --:SHORTAMT := 0;',
'         :REMARKSS := ''4'';',
'      ELSE',
'         :EXCESQTY := NULL;',
'         --:EXCESAMT := NULL;',
'         :SHORTQTY := NULL;',
'         --:SHORTAMT := NULL;',
'         :REMARKSS := ''5'';',
'      END IF;',
'   END IF;',
'',
'   :EXCESQTY := ABS (:EXCESQTY);',
'   --:EXCESAMT := ABS (:EXCESAMT);',
'   :SHORTQTY := ABS (:SHORTQTY);',
'   --:SHORTAMT := ABS (:SHORTAMT);',
'END;'))
,p_attribute_02=>'INVTRQTY,CLBLQTY,COSTRATE,EXCESQTY,SHORTQTY'
,p_attribute_03=>'EXCESQTY,SHORTQTY,REMARKSS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(84253788285817622)
,p_name=>'Item Details'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(74574655815030320)
,p_triggering_element=>'ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(84253896093817623)
,p_event_id=>wwv_flow_api.id(84253788285817622)
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
' WHERE     B.COMPCODE = :P461_COMPCODE',
'       AND B.COMPCODE = I.COMPCODE',
'       AND B.ITEMCODE = I.ITEMCODE',
'       AND B.ITEMCODE = :ITEMCODE',
'       AND B.WARECODE = :P461_WARECODE',
'       AND PERIODCD = :P461_PERIODCD'))
,p_attribute_07=>'ITEMCODE,P461_COMPCODE,P461_WARECODE,P461_PERIODCD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(84253978234817624)
,p_name=>'Item Details Rate'
,p_event_sequence=>50
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(74574655815030320)
,p_triggering_element=>'ITEMCODE,BATCHNUM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(84254083637817625)
,p_event_id=>wwv_flow_api.id(84253978234817624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
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
' WHERE     B.COMPCODE = :P461_COMPCODE',
'       AND B.COMPCODE = I.COMPCODE',
'       AND B.ITEMCODE = I.ITEMCODE',
'       AND B.ITEMCODE = :ITEMCODE',
'       AND B.WARECODE = :P461_WARECODE',
'       AND B.BATCHNUM = :BATCHNUM',
'       AND PERIODCD = :P461_PERIODCD'))
,p_attribute_07=>'P461_COMPCODE,P461_WARECODE,P461_PERIODCD,ITEMCODE,BATCHNUM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74721079059397308)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(74574655815030320)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Edit List - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   vSerialNew   NUMBER := 0;',
'BEGIN',
'   CASE :APEX$ROW_STATUS',
'      WHEN ''C''',
'      THEN',
'      BEGIN',
'          SELECT MAX(SERLNUMB) INTO vSerialNew',
'          FROM NMSTKINV',
'          WHERE COMPCODE = :P461_COMPCODE',
'          --AND ITEMCODE = :ITEMCODE',
'          AND DOCNUMBR = :P461_DOCNUMBR',
'          --AND BATCHNUM = :BATCHNUM',
'          AND PERIODCD = :P461_PERIODCD;',
'      EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'           RAISE_APPLICATION_ERROR (-20001,''Maximum Serial No Finding Problem When Insert Inventory Record. '' );',
'      END;',
'      ',
'      ',
'      BEGIN',
'        INSERT INTO NMSTKINV ',
'         (COMPCODE,',
'          DOCTTYPE,',
'          SUBTTYPE,',
'          DOCTDATE,',
'          DOCNUMBR,',
'          SERLNUMB,',
'          RAISEDBY,',
'          WARECODE,',
'          COSTCODE,',
'          ITEMCODE,',
'          ITEMDESC,',
'          ITEMCLAS,',
'          COSTRATE,',
'          SALERATE,',
'          CLBLAMNT,',
'          BATCHNUM,',
'          CLBLQTY,',
'          INVTRQTY,',
'          EXCESQTY,',
'          APPRQNTY,',
'          SHORTQTY,',
'          STATUSCD,',
'          OPRSTAMP,',
'          TIMSTAMP,',
'          MODIFYDT,',
'          LUOMCODE,',
'          REMARKSS,',
'          ADJQNTY,',
'          VINNUMBR,',
'          RACKNO,',
'          PERIODCD)',
'        VALUES ',
'         (:P461_COMPCODE,',
'         :P461_DOCTTYPE,',
'         :P461_SUBTTYPE,',
'         :P461_DOCTDATE,',
'         :P461_DOCNUMBR,',
'         vSerialNew + 1,',
'         :APP_USER,',
'         :P461_WARECODE,',
'         :P461_COSTCODE,',
'         :ITEMCODE,',
'         :ITEMDESC,',
'         :ITEMCLAS,',
'         :COSTRATE,',
'         :SALERATE,',
'         :CLBLAMNT,',
'         :BATCHNUM,',
'         :CLBLQTY,',
'         :INVTRQTY,',
'         :EXCESQTY,',
'         :APPRQNTY,',
'         :SHORTQTY,',
'         ''APR'',',
'         :APP_USER,',
'         SYSDATE,',
'         NULL,',
'         :LUOMCODE,',
'         :REMARKSS,',
'         :ADJQNTY,',
'         :VINNUMBR,',
'         :RACKNO,',
'         :P461_PERIODCD);',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               RAISE_APPLICATION_ERROR (',
'                  -20003,',
'                  ''Unable to Insert Inventory Record. '' || SQLERRM);',
'         END;',
'      WHEN ''U''',
'      THEN',
'         BEGIN',
'            UPDATE NMSTKINV',
'            SET INVTRQTY = :INVTRQTY,',
'                EXCESQTY = :EXCESQTY,',
'                SHORTQTY = :SHORTQTY,',
'                VINNUMBR = :VINNUMBR,',
'                RACKNO   = :RACKNO,',
'                MODIFYDT = SYSDATE',
'             WHERE COMPCODE = :P461_COMPCODE',
'                   AND DOCTTYPE = :P461_DOCTTYPE',
'                   AND SUBTTYPE = :P461_SUBTTYPE',
'                   AND DOCNUMBR = :P461_DOCNUMBR',
'                   AND DOCTDATE = :P461_DOCTDATE',
'                   AND WARECODE = :P461_WARECODE',
'                   AND ITEMCODE = :ITEMCODE',
'                   AND BATCHNUM = :BATCHNUM',
'                   AND PERIODCD = :P461_PERIODCD',
'                   AND SERLNUMB = :SERLNUMB;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               RAISE_APPLICATION_ERROR (-20004,''Unable to Update Inventory Record. '' );',
'         END;',
'      WHEN ''D''',
'      THEN',
'         BEGIN',
'            DELETE NMSTKINV',
'             WHERE COMPCODE = :P461_COMPCODE',
'                   AND DOCTTYPE = :P461_DOCTTYPE',
'                   AND SUBTTYPE = :P461_SUBTTYPE',
'                   AND DOCNUMBR = :P461_DOCNUMBR',
'                   AND DOCTDATE = :P461_DOCTDATE',
'                   AND WARECODE = :P461_WARECODE',
'                   AND ITEMCODE = :ITEMCODE',
'                   AND BATCHNUM = :BATCHNUM',
'                   AND PERIODCD = :P461_PERIODCD',
'                   AND SERLNUMB = :SERLNUMB;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               RAISE_APPLICATION_ERROR (-20005, ''Unable to Delete Inventory Record. '');',
'         END;',
'   END CASE;',
'   EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'           RAISE_APPLICATION_ERROR (-20006, ''DML Process Problem'' || SQLERRM);',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(74574597728030319)
,p_process_success_message=>'Doc No. &P461_DOCNUMBR. Updated.'
);
wwv_flow_api.component_end;
end;
/
