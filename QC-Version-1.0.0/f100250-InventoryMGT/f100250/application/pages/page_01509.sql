prompt --application/pages/page_01509
begin
--   Manifest
--     PAGE: 01509
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
 p_id=>1509
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Raw Material Requisition'
,p_page_mode=>'MODAL'
,p_step_title=>'Raw Material Requisition'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'',
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid        = apex.region("Raw_Material_Info").widget().interactiveGrid("getViews","grid");  ',
'var model       = grid.model;  ',
'var selectedRow = grid.view$.grid("getSelection") ;  ',
'var id          = $(selectedRow[0][0]).data(''114'');  ',
'var record      = model.getRecord(id)  ',
'model.setValue(record,"SRCWARCDE",''P1509_WARECODE_TO'');'))
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170404154346'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(113021379622230186)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(154086644398052058)
,p_plug_name=>'Raw Material Information'
,p_region_name=>'Raw_Material_Info'
,p_parent_plug_id=>wwv_flow_api.id(113021379622230186)
,p_region_template_options=>'#DEFAULT#:i-h320:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d.COMPCODE,',
'       d.BOMDTL_NO,',
'       d.BOM_NO,',
'       d.RAW_ITEMCODE,',
'       d.QTY,',
'       d.WASTAGE_ITEMCODE,',
'       d.WASTAGE_PERCENTAGE,',
'       d.WASTAGE_QTY,',
'       d.BOMDTLRAW_DESCR,',
'       d.OPRSTAMP,',
'       d.TIMSTAMP,',
'       d.RAW_PERCENT,',
'       d.POTCYQTY,',
'       d.STANDQTY,',
'       d.QAREFNO,',
'       d.CHK_RAWITEM,',
'       d.MODIFYDT,',
'       d.RETRNQTY,',
'       d.PRPOTACT,',
'       d.NMADJQTY,',
'       d.PRAPPQTY,',
'       d.POTACTCK,',
'       d.UPDOCNUM,',
'       d.CHKFLGPK,',
'       d.CHKPLGPHY,',
'       d.PRACTIVE,',
'       d.chkflgreq,',
'       d.SRCWARCDE,',
'       nvl(d.req_qty,d.QTY) req_qty',
'  FROM prbomdtl d,',
'       (  SELECT NVL (SUM (C.APPRQNTY), 0) qty, c.ITEMCODE, c.BOM_NO',
'            FROM nmstkrec c',
'           WHERE     C.COMPCODE = :compcode',
'                 AND C.DOCTTYPE = ''MI''',
'                 AND C.SUBTTYPE = 2',
'        GROUP BY c.ITEMCODE, c.BOM_NO) r',
' WHERE     d.compcode = :compcode',
'       AND r.BOM_NO(+) = d.BOM_NO',
'       AND r.ITEMCODE(+) = d.RAW_ITEMCODE',
'       And nvl(d.CHKFLGREQ,''N'') = ''N'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(154225860130422536)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(63570603896914207)
,p_name=>'CHKFLGREQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHKFLGREQ'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'Send'
,p_attribute_04=>'N'
,p_attribute_05=>'Not Send'
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
 p_id=>wwv_flow_api.id(63570761985914208)
,p_name=>'SRCWARCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SRCWARCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Source'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
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
 p_id=>wwv_flow_api.id(63574231335914243)
,p_name=>'REQ_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQ_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(65772886902129297)
,p_name=>'Promote'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Promote'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>320
,p_value_alignment=>'LEFT'
,p_link_target=>'#'
,p_link_text=>'Promote'
,p_link_attributes=>'class="ig-link"'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154086799598052060)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154086930738052061)
,p_name=>'BOMDTL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOMDTL_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
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
 p_id=>wwv_flow_api.id(154087066106052062)
,p_name=>'BOM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOM_NO'
,p_data_type=>'NUMBER'
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
,p_parent_column_id=>wwv_flow_api.id(154226512679422543)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154087156688052063)
,p_name=>'RAW_ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAW_ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Raw itemcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_api.id(154087241721052064)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Request Qty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_api.id(154087324570052065)
,p_name=>'WASTAGE_ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WASTAGE_ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154087381044052066)
,p_name=>'WASTAGE_PERCENTAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WASTAGE_PERCENTAGE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154087482496052067)
,p_name=>'WASTAGE_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WASTAGE_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154087593423052068)
,p_name=>'BOMDTLRAW_DESCR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOMDTLRAW_DESCR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(154087766305052069)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154087826999052070)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154087946711052071)
,p_name=>'RAW_PERCENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAW_PERCENT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Raw(%)'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
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
 p_id=>wwv_flow_api.id(154088046523052072)
,p_name=>'POTCYQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POTCYQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154088145113052073)
,p_name=>'STANDQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STANDQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Formula Qty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
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
 p_id=>wwv_flow_api.id(154088183404052074)
,p_name=>'QAREFNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QAREFNO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(154088298059052075)
,p_name=>'CHK_RAWITEM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHK_RAWITEM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154088428354052076)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'DATE'
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154224892433422527)
,p_name=>'RETRNQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RETRNQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154225026174422528)
,p_name=>'PRPOTACT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRPOTACT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154225079636422529)
,p_name=>'NMADJQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMADJQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154225176281422530)
,p_name=>'PRAPPQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRAPPQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154225318294422531)
,p_name=>'POTACTCK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POTACTCK'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154225405795422532)
,p_name=>'UPDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(154225513223422533)
,p_name=>'CHKFLGPK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHKFLGPK'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154225587702422534)
,p_name=>'CHKPLGPHY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHKPLGPHY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154225710233422535)
,p_name=>'PRACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRACTIVE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154482529518946268)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154482623306946269)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(154086722484052059)
,p_internal_uid=>116931855358371565
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_api.id(60507628718248520)
,p_update_authorization_scheme=>wwv_flow_api.id(60508673871256279)
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
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_add_button_label=>'Add'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>false
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(154230506802422668)
,p_interactive_grid_id=>wwv_flow_api.id(154086722484052059)
,p_static_id=>'396066'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(154230581432422668)
,p_report_id=>wwv_flow_api.id(154230506802422668)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37176914719875628)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(63574231335914243)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37180276111823700)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(63570603896914207)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(65243893907992497)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(63570761985914208)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(65801873458700635)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(65772886902129297)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154231081705422670)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(154086799598052060)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154231633498422671)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(154086930738052061)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154232077967422671)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(154087066106052062)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154232630092422673)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(154087156688052063)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>189
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154233075848422674)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(154087241721052064)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154233651635422674)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(154087324570052065)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154234173181422676)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(154087381044052066)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154234578352422677)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(154087482496052067)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154235120499422679)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(154087593423052068)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154235584123422679)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(154087766305052069)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154236132147422680)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(154087826999052070)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154236596488422682)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(154087946711052071)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154237151201422682)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(154088046523052072)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154237625926422684)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(154088145113052073)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154238157834422685)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(154088183404052074)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154238623831422687)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(154088298059052075)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154239114679422687)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(154088428354052076)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154239632571422688)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(154224892433422527)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154240119194422691)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(154225026174422528)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154240600902422691)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(154225079636422529)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154241088874422693)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(154225176281422530)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154241621696422694)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(154225318294422531)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154242087684422696)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(154225405795422532)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154242652255422696)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(154225513223422533)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154243144560422698)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(154225587702422534)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154243649793422699)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(154225710233422535)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154630993820678200)
,p_view_id=>wwv_flow_api.id(154230581432422668)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(154482529518946268)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(154225860130422536)
,p_plug_name=>'Process Information'
,p_parent_plug_id=>wwv_flow_api.id(113021379622230186)
,p_region_template_options=>'#DEFAULT#:i-h320:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COMPCODE,',
'       DOCTTYPE,',
'       SUBTTYPE,',
'       DOCNUMBR,',
'       DOCTDATE,',
'       BOM_NO,',
'       BOM_NAME,',
'       BOM_START_DATE,',
'       BOM_END_DATE,',
'       PROCESS_NO,',
'       REMARKSS,',
'       FG_ITEMCODE,',
'       TARGET_QTY,',
'       PLANDTLNO,',
'       PRD_ITEM_ALIAS,',
'       RAW_ITEM_CONSUMPTION_FLAG,',
'       AVG_COUNT_FORMULA,',
'       AVG_COUNT_DIVISION_FACTOR,',
'       PARENT_BOM_NO,',
'       OPERDTL_NO,',
'       NO_OF_PRD,',
'       REJ_TRN_NO,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       WARECODE,',
'       SL_NO,',
'       STATUSCD,',
'       SUBQUNTY,',
'       SUBPRTCD,',
'       SUBCOSCD,',
'       SUBWARCD,',
'       SUBCTFLG,',
'       MODIFYDT,',
'       BATCHNO,',
'       QA_REFERENCE,',
'       SLSOFRNO_FK,',
'       DESIGNFG_NO_FK,',
'       TGT_FG_ITEMCODE,',
'       UPDOCNUM,',
'       MACHINE_HOUR,',
'       MACHINE_COST',
'  FROM prbom',
' WHERE compcode = :compcode',
'  and SLSOFRNO_FK = :P1509_SALESOFFER_NEW',
'  and BATCHNO = :P1509_BATCH_NEW',
'  and TGT_FG_ITEMCODE = nvl(:P1509_ITEMCODE_NEW,TGT_FG_ITEMCODE)',
'  and nvl(WARECODE,''W'') = nvl(:P1509_WARECODE,nvl(WARECODE,''W'')) ',
'  and nvl(RAW_ITEM_CONSUMPTION_FLAG,0)= 0',
'  AND nvl(PROCESS_NO,0) IN',
'              (SELECT nvl(p.PROCESS_NO,0)',
'                 FROM PRPROCESSRGT p',
'                WHERE p.compcode = :compcode AND p.USER_CODE = :APP_USER)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1509_BATCH_NEW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154225983068422538)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(154226093008422539)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154226273274422540)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
,p_data_type=>'NUMBER'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154226354813422541)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154226462025422542)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154226512679422543)
,p_name=>'BOM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOM_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
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
 p_id=>wwv_flow_api.id(154226600923422544)
,p_name=>'BOM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOM_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154226728551422545)
,p_name=>'BOM_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOM_START_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154226776026422546)
,p_name=>'BOM_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOM_END_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154226898786422547)
,p_name=>'PROCESS_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESS_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154227005739422548)
,p_name=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(154227169885422549)
,p_name=>'FG_ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FG_ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>450
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154227214417422550)
,p_name=>'TARGET_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TARGET_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Process qty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>460
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
 p_id=>wwv_flow_api.id(154227342168422551)
,p_name=>'PLANDTLNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANDTLNO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154227443448422552)
,p_name=>'PRD_ITEM_ALIAS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRD_ITEM_ALIAS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(154227505338422553)
,p_name=>'RAW_ITEM_CONSUMPTION_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAW_ITEM_CONSUMPTION_FLAG'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>490
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154227646441422554)
,p_name=>'AVG_COUNT_FORMULA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AVG_COUNT_FORMULA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(154227748105422555)
,p_name=>'AVG_COUNT_DIVISION_FACTOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AVG_COUNT_DIVISION_FACTOR'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154227873595422556)
,p_name=>'PARENT_BOM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARENT_BOM_NO'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154227931865422557)
,p_name=>'OPERDTL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERDTL_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Process'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>410
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
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
 p_id=>wwv_flow_api.id(154228046936422558)
,p_name=>'NO_OF_PRD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_PRD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154228157672422559)
,p_name=>'REJ_TRN_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REJ_TRN_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154228232272422560)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154228336409422561)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154228440638422562)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>420
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154228509620422563)
,p_name=>'SL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sl no'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>400
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'center'
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
 p_id=>wwv_flow_api.id(154228596885422564)
,p_name=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUSCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154228703091422565)
,p_name=>'SUBQUNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBQUNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154228848153422566)
,p_name=>'SUBPRTCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBPRTCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(154228928266422567)
,p_name=>'SUBCOSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBCOSCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>320
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154229019471422568)
,p_name=>'SUBWARCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBWARCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>330
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154229096664422569)
,p_name=>'SUBCTFLG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBCTFLG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>340
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154229250786422570)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>350
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154229347524422571)
,p_name=>'BATCHNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>440
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':P1509_BATCH'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154229441755422572)
,p_name=>'QA_REFERENCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QA_REFERENCE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>380
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(154229556056422573)
,p_name=>'SLSOFRNO_FK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SLSOFRNO_FK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>430
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154229654430422574)
,p_name=>'DESIGNFG_NO_FK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESIGNFG_NO_FK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>370
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154229750958422575)
,p_name=>'TGT_FG_ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TGT_FG_ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>390
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(154229786306422576)
,p_name=>'UPDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>360
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(154251462716475827)
,p_name=>'MACHINE_HOUR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_HOUR'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>470
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_static_id=>'test'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154251523578475828)
,p_name=>'MACHINE_COST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_COST'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>480
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154251581902475829)
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
 p_id=>wwv_flow_api.id(154251735223475830)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154251843762475831)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(154225947072422537)
,p_internal_uid=>117071079946742043
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_api.id(60507628718248520)
,p_update_authorization_scheme=>wwv_flow_api.id(60508673871256279)
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
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_add_button_label=>'Add'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>false
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(154257299537475970)
,p_interactive_grid_id=>wwv_flow_api.id(154225947072422537)
,p_static_id=>'396067'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(154257411137475970)
,p_report_id=>wwv_flow_api.id(154257299537475970)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154257914366475972)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(154225983068422538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154258424986475974)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(154226093008422539)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154258947555475974)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(154226273274422540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154259420315475975)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(154226354813422541)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154259907479475977)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(154226462025422542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154260438261475978)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(154226512679422543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154260959573475978)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(154226600923422544)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154261392735475980)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(154226728551422545)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154261897882475981)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(154226776026422546)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154262426122475983)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(154226898786422547)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154262927704475983)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(154227005739422548)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154263380632475984)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(154227169885422549)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154263952027475986)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(154227214417422550)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>339.0000534057617
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154264402368475988)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(154227342168422551)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154264938502475988)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(154227443448422552)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154265456254475989)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(154227505338422553)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154265913171475991)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(154227646441422554)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154266451538475991)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(154227748105422555)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154266900824475992)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(154227873595422556)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154267452863475995)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(154227931865422557)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154267954832475997)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(154228046936422558)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154268455038475998)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(154228157672422559)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154268886152475998)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(154228232272422560)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154269376816476000)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(154228336409422561)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154269963820476002)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(154228440638422562)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154270450788476003)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(154228509620422563)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154270953323476003)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(154228596885422564)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154271427744476005)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(154228703091422565)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154271927370476006)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(154228848153422566)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154272461291476008)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(154228928266422567)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154272913577476009)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(154229019471422568)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154273428606476011)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(154229096664422569)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154273897076476013)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(154229250786422570)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154274463464476013)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(154229347524422571)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154274952127476014)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(154229441755422572)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154275376759476016)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(154229556056422573)
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
 p_id=>wwv_flow_api.id(154275915289476017)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(154229654430422574)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154276456800476017)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(154229750958422575)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154276935360476019)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(154229786306422576)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154277400922476020)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(154251462716475827)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154277932865476022)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(154251523578475828)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154294183445568376)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>42
,p_column_id=>wwv_flow_api.id(154251581902475829)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154294685353568376)
,p_view_id=>wwv_flow_api.id(154257411137475970)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(154251735223475830)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(158240574219726456)
,p_plug_name=>'All Search'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(158238395922726435)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_api.id(158240574219726456)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(158239381971726445)
,p_plug_name=>'anothersrc'
,p_parent_plug_id=>wwv_flow_api.id(158240574219726456)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs'
,p_region_attributes=>'style="width:450px;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63179043774546173)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(158238395922726435)
,p_button_name=>'btn_src'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Execute'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63570771177914209)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(158238395922726435)
,p_button_name=>'btn_search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63178182789546172)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(158238395922726435)
,p_button_name=>'btn_send_req'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Req.'
,p_grid_new_row=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63178631170546172)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(158238395922726435)
,p_button_name=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Modify'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63179423636546173)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(158238395922726435)
,p_button_name=>'btn_clr'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(62779300764997542)
,p_name=>'P1509_UPDOCNUMBR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(158238395922726435)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63180646441546175)
,p_name=>'P1509_ITEMCODE_NEW'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(158238395922726435)
,p_prompt=>'Product'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="width:300px; background-color: #FDFCF0;"'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63180982798546175)
,p_name=>'P1509_WARECODE_FROM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(158238395922726435)
,p_prompt=>'Request From'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="width:300px; background-color: #FDFCF0;"'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63181395419546175)
,p_name=>'P1509_WARECODE_TO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(158238395922726435)
,p_prompt=>'Request To'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select S.WAREDESC||''-''||S.WARECODE w, S.WARECODE c ',
'from nmwhsmas s',
'where S.COMPCODE = :compcode'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Ware House for request'
,p_lov_null_value=>'null'
,p_cHeight=>1
,p_tag_attributes=>'style="width:300px; background-color: #FDFCF0;"'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63181768389546175)
,p_name=>'P1509_PROCESS_NO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(158238395922726435)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63182555582546175)
,p_name=>'P1509_TARGET_QTY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(158239381971726445)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Target Qty'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #FDFCF0;"'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63182950504546177)
,p_name=>'P1509_INPROGRESS_QTY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(158239381971726445)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'In-Progress Qty'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #FDFCF0;"'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63183330772546177)
,p_name=>'P1509_COMPLETE_QTY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(158239381971726445)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Complete Qty'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #FDFCF0;"'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63183756473546177)
,p_name=>'P1509_REMAIN_QTY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(158239381971726445)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Remain Qty'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="background-color: #FDFCF0;"'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63571738313914218)
,p_name=>'P1509_BATCH_NEW'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(158238395922726435)
,p_prompt=>'Style'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="width:300px; background-color: #FDFCF0;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63571781703914219)
,p_name=>'P1509_SALESOFFER_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(158238395922726435)
,p_prompt=>'Reference'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    docnumbr',
'       || ''-''',
'       || docttype',
'       || ''-''',
'       || subttype',
'       || ''-''',
'       || TO_CHAR (a.doctdate, ''dd/mm/rrrr'')',
'       || ''-''',
'       || a.SLSOFRNO',
'          r,',
'       a.SLSOFRNO f',
'  FROM nmslsofr a,',
'       (  SELECT NVL (SUM (p.TARGET_QTY), 0) TARGET_QTY,',
'                 SLSOFRNO_FK,',
'                 TGT_FG_ITEMCODE,',
'                 RAW_ITEM_CONSUMPTION_FLAG',
'            FROM prbom_batch p',
'        GROUP BY SLSOFRNO_FK, TGT_FG_ITEMCODE,RAW_ITEM_CONSUMPTION_FLAG) q',
' WHERE     a.statuscd = ''APR''',
'       AND A.COMPCODE = :COMPCODE',
'       AND q.SLSOFRNO_FK(+) = a.SLSOFRNO',
'       AND a.ITEMCODE = NVL (q.TGT_FG_ITEMCODE, a.ITEMCODE)',
'       and nvl(RAW_ITEM_CONSUMPTION_FLAG,0) = 0'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Reference'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_tag_attributes=>'style="width:300px; background-color: #FDFCF0;"     '
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63204135384546186)
,p_name=>'get_value_new'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1509_SALESOFFER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63204567689546194)
,p_event_id=>wwv_flow_api.id(63204135384546186)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT Itemcode,',
'          NVL ( (a.apprqnty - (q.TARGET_QTY + q.Inprogress_qty)), a.apprqnty)',
'             Remaining_Quantity,',
'          NVL (a.apprqnty, 0) Request_Quantity,',
'          NVL (q.TARGET_QTY, 0) Complete_quantity,',
'          NVL (q.Inprogress_qty, 0) Inprogress_Quantity,',
'          a.BATCHNUM,',
'          q.PROCESS_NO',
'     INTO :P1509_ITEMCODE_NEW,',
'          :P1509_REMAIN_QTY,',
'          :P1509_TARGET_QTY,',
'          :P1509_COMPLETE_QTY,',
'          :P1509_INPROGRESS_QTY,',
'          :P1509_BATCH_NEW,',
'          :P1509_PROCESS_NO',
'     FROM nmslsofr a,',
'          sycompty b,',
'          (SELECT TARGET_QTY,',
'                  Inprogress_qty,',
'                  SLSOFRNO_FK,',
'                  TGT_FG_ITEMCODE,',
'                  PROCESS_NO',
'             FROM (  SELECT NVL (SUM (p.TARGET_QTY), 0) TARGET_QTY,',
'                            0 Inprogress_qty,',
'                            p.SLSOFRNO_FK,',
'                            p.TGT_FG_ITEMCODE,',
'                            B.PROCESS_NO',
'                       FROM prbom_batch p, prbom b',
'                      WHERE     NVL (P.RAW_ITEM_CONSUMPTION_FLAG, 0) = 1',
'                            AND P.COMPCODE = :compcode',
'                            AND p.compcode = b.compcode',
'                            AND P.DOCNUMBR = b.UPDOCNUM',
'                   GROUP BY p.SLSOFRNO_FK, p.TGT_FG_ITEMCODE, b.PROCESS_NO',
'                   UNION ALL',
'                     SELECT 0 TARGET_QTY,',
'                            NVL (SUM (t.TARGET_QTY), 0) Inprogress_qty,',
'                            t.SLSOFRNO_FK,',
'                            t.TGT_FG_ITEMCODE,',
'                            E.PROCESS_NO',
'                       FROM prbom_batch t, prbom e',
'                      WHERE     NVL (t.RAW_ITEM_CONSUMPTION_FLAG, 0) = 0',
'                            AND t.COMPCODE = :compcode',
'                            AND t.compcode = e.compcode',
'                            AND t.DOCNUMBR = e.UPDOCNUM',
'                   GROUP BY t.SLSOFRNO_FK, t.TGT_FG_ITEMCODE, e.PROCESS_NO)) q',
'    WHERE     a.statuscd = ''APR''',
'          AND q.SLSOFRNO_FK(+) = a.SLSOFRNO',
'          AND a.compcode = b.compcode',
'          AND a.partycde = b.partycde',
'          AND a.compcode = :compcode',
'          AND a.ITEMCODE = NVL (q.TGT_FG_ITEMCODE, a.ITEMCODE)',
'          AND NVL (a.apprqnty, 0) > NVL (q.TARGET_QTY, 0)',
'          AND a.SLSOFRNO = :P1509_SALESOFFER_NEW;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      NULL;',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      NULL;',
'   WHEN OTHERS',
'   THEN',
'      NULL;',
'END;'))
,p_attribute_02=>'P1509_SALESOFFER'
,p_attribute_03=>'P1509_ITEMCODE_NEW,P1509_REMAIN_QTY,P1509_TARGET_QTY,P1509_COMPLETE_QTY,P1509_INPROGRESS_QTY,P1509_PROCESS_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63570048073914201)
,p_event_id=>wwv_flow_api.id(63204135384546186)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT D.WARECODE',
'     INTO :P1509_WARECODE_FROM',
'     FROM prdepartment d, prprocess c',
'    WHERE     D.COMPCODE = C.COMPCODE',
'          AND D.DEPT_NO = C.DEPT_NO',
'          AND D.COMPCODE = :compcode',
'          AND C.PROCESS_NO = :P1509_PROCESS_NO;',
'/*EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      :P1509_WARECODE_FROM := ''P01'';',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      :P1509_WARECODE_FROM := ''P01'';',
'   WHEN OTHERS',
'   THEN',
'      :P1509_WARECODE_FROM := ''P01'';*/',
'END;'))
,p_attribute_02=>'P1509_PROCESS_NO'
,p_attribute_03=>'P1509_WARECODE_FROM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63205016249546194)
,p_name=>'insert_data'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(63179043774546173)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63205520638546194)
,p_event_id=>wwv_flow_api.id(63205016249546194)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P1509_INPROGRESS_QTY < :P1509_TARGET_QTY AND :P1509_REMAIN_QTY > 0 then',
' dpr_insert_prbom_batch (',
'   :compcode, ',
'   :P1509_ITEMCODE_NEW,',
'   :P1509_SALESOFFER_NEW,',
'   :APP_USER,',
'   :P1509_BATCH,',
'   :P1509_REMAIN_QTY,',
'   :P1509_WARECODE_FROM,',
'   :P1509_UPDOCNUMBR);',
'',
' IF SQL%FOUND THEN',
'    raise_application_error(-20006,''Production raise successfully.......'');',
' END IF;',
'',
'ELSIF :P1509_INPROGRESS_QTY = :P1509_TARGET_QTY and :P1509_REMAIN_QTY > 0 THEN',
' :P1509_REMAIN_QTY := 0;',
' raise_application_error(-20004,''Already Full Production Started'');',
'ELSIF :P1509_TARGET_QTY < :P1509_REMAIN_QTY THEN',
' :P1509_REMAIN_QTY := 0;',
' raise_application_error(-20002,''Ramain Qty cannot be greater then target quantity...'');',
'END IF;',
'end;'))
,p_attribute_02=>'P1509_ITEMCODE_NEW,P1509_REMAIN_QTY,P1509_WARECODE_FROM'
,p_attribute_03=>'P1509_REMAIN_QTY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(62778137372997530)
,p_name=>'clear_page'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(63179423636546173)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(62778249882997531)
,p_event_id=>wwv_flow_api.id(62778137372997530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1509_TARGET_QTY,P1509_INPROGRESS_QTY,P1509_COMPLETE_QTY,P1509_ITEMCODE_NEW,P1509_REMAIN_QTY,P1509_WARECODE_FROM,P1509_WARECODE_TO,P1509_PROCESS_NO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63570362912914204)
,p_name=>'check_qty'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1509_REMAIN_QTY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63570367443914205)
,p_event_id=>wwv_flow_api.id(63570362912914204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P1509_INPROGRESS_QTY = :P1509_TARGET_QTY AND :P1509_REMAIN_QTY > 0 then',
'  :P1509_REMAIN_QTY := 0;',
'  raise_application_error(-20003,''Already Full Production Started'');',
'end if;',
'end;'))
,p_attribute_02=>'P1509_INPROGRESS_QTY,P1509_COMPLETE_QTY'
,p_attribute_03=>'P1509_REMAIN_QTY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63571990849914221)
,p_name=>'get_value_new'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1509_SALESOFFER_NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63572072977914222)
,p_event_id=>wwv_flow_api.id(63571990849914221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT Itemcode,',
'          NVL ( (a.apprqnty - (q.TARGET_QTY + q.Inprogress_qty)), a.apprqnty)',
'             Remaining_Quantity,',
'          NVL (a.apprqnty, 0) Request_Quantity,',
'          NVL (q.TARGET_QTY, 0) Complete_quantity,',
'          NVL (q.Inprogress_qty, 0) Inprogress_Quantity,',
'          a.BATCHNUM,',
'          q.PROCESS_NO',
'     INTO :P1509_ITEMCODE_NEW,',
'          :P1509_REMAIN_QTY,',
'          :P1509_TARGET_QTY,',
'          :P1509_COMPLETE_QTY,',
'          :P1509_INPROGRESS_QTY,',
'          :P1509_BATCH_NEW,',
'          :P1509_PROCESS_NO',
'     FROM nmslsofr a,',
'          sycompty b,',
'          (SELECT TARGET_QTY,',
'                  Inprogress_qty,',
'                  SLSOFRNO_FK,',
'                  TGT_FG_ITEMCODE,',
'                  PROCESS_NO',
'             FROM (  SELECT NVL (SUM (p.TARGET_QTY), 0) TARGET_QTY,',
'                            0 Inprogress_qty,',
'                            p.SLSOFRNO_FK,',
'                            p.TGT_FG_ITEMCODE,',
'                            B.PROCESS_NO',
'                       FROM prbom_batch p, prbom b',
'                      WHERE     NVL (P.RAW_ITEM_CONSUMPTION_FLAG, 0) = 1',
'                            AND P.COMPCODE = :compcode',
'                            AND p.compcode = b.compcode',
'                            AND P.DOCNUMBR = b.UPDOCNUM',
'                   GROUP BY p.SLSOFRNO_FK, p.TGT_FG_ITEMCODE, b.PROCESS_NO',
'                   UNION ALL',
'                     SELECT 0 TARGET_QTY,',
'                            NVL (SUM (t.TARGET_QTY), 0) Inprogress_qty,',
'                            t.SLSOFRNO_FK,',
'                            t.TGT_FG_ITEMCODE,',
'                            E.PROCESS_NO',
'                       FROM prbom_batch t, prbom e',
'                      WHERE     NVL (t.RAW_ITEM_CONSUMPTION_FLAG, 0) = 0',
'                            AND t.COMPCODE = :compcode',
'                            AND t.compcode = e.compcode',
'                            AND t.DOCNUMBR = e.UPDOCNUM',
'                   GROUP BY t.SLSOFRNO_FK, t.TGT_FG_ITEMCODE, e.PROCESS_NO)) q',
'    WHERE     a.statuscd = ''APR''',
'          AND q.SLSOFRNO_FK(+) = a.SLSOFRNO',
'          AND a.compcode = b.compcode',
'          AND a.partycde = b.partycde',
'          AND a.compcode = :compcode',
'          AND a.ITEMCODE = NVL (q.TGT_FG_ITEMCODE, a.ITEMCODE)',
'          AND NVL (a.apprqnty, 0) > NVL (q.TARGET_QTY, 0)',
'          AND a.SLSOFRNO = :P1509_SALESOFFER_NEW;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      NULL;',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      NULL;',
'   WHEN OTHERS',
'   THEN',
'      NULL;',
'END;'))
,p_attribute_02=>'P1509_SALESOFFER_NEW'
,p_attribute_03=>'P1509_ITEMCODE_NEW,P1509_REMAIN_QTY,P1509_TARGET_QTY,P1509_COMPLETE_QTY,P1509_INPROGRESS_QTY,P1509_BATCH_NEW,P1509_PROCESS_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63572231898914223)
,p_event_id=>wwv_flow_api.id(63571990849914221)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT D.WARECODE',
'     INTO :P1509_WARECODE_FROM',
'     FROM prdepartment d, prprocess c',
'    WHERE     D.COMPCODE = C.COMPCODE',
'          AND D.DEPT_NO = C.DEPT_NO',
'          AND D.COMPCODE = :compcode',
'          AND C.PROCESS_NO = :P1509_PROCESS_NO;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      :P1509_WARECODE_FROM := '''';',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      :P1509_WARECODE_FROM := '''';',
'   WHEN OTHERS',
'   THEN',
'      :P1509_WARECODE_FROM := '''';',
'END;'))
,p_attribute_02=>'P1509_PROCESS_NO'
,p_attribute_03=>'P1509_WARECODE_FROM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63572451630914225)
,p_name=>'Execute_page'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(63179043774546173)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63572469701914226)
,p_event_id=>wwv_flow_api.id(63572451630914225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63573996921914241)
,p_name=>'set_warecode'
,p_event_sequence=>170
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(154086644398052058)
,p_triggering_element=>'CHKFLGREQ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63574090197914242)
,p_event_id=>wwv_flow_api.id(63573996921914241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $te = $(this.triggeringElement);',
' ',
'//Get the ID of the row',
'var rowId = $te.closest(''tr'').data(''id'');',
' ',
'//Identify the particular interactive grid',
'var ig$ = apex.region("Raw_Material_Info").widget();',
' ',
'//Fetch the model for the interactive grid',
'var model = ig$.interactiveGrid("getViews","grid").model;',
' ',
'//Fetch the record for the particular rowId',
'var record = model.getRecord(rowId);',
' ',
'//Access the cell value via the column name',
'//var sal = model.getValue(record,"SAL");',
' ',
'//Set the values for the JOB and SAL cells',
'model.setValue(record,"SRCWARCDE",''W01'');  '))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63574341645914244)
,p_name=>'set_wrecde'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1509_WARECODE_TO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65772674573129295)
,p_event_id=>wwv_flow_api.id(63574341645914244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid        = apex.region("Raw_Material_Info").widget().interactiveGrid("getViews","grid");  ',
'var model       = grid.model;  ',
'var record = grid.getSelectedRecords()[0]; ',
'model.setValue(record,"SRCWARCDE",''W01''); '))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65773055189129298)
,p_name=>'When Promote Link Click'
,p_event_sequence=>190
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.ig-link'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65773148219129299)
,p_event_id=>wwv_flow_api.id(65773055189129298)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alert(''test'');',
'//Get the link element that was clicked',
'var $te = $(this.triggeringElement);',
' ',
'//Get the ID of the row',
'var rowId = $te.closest(''tr'').data(''id'');',
' ',
'//Identify the particular interactive grid',
'var ig$ = apex.region("emps").widget();',
' ',
'//Fetch the model for the interactive grid',
'var model = ig$.interactiveGrid("getViews","grid").model;',
' ',
'//Fetch the record for the particular rowId',
'var record = model.getRecord(rowId);',
' ',
'//Access the cell value via the column name',
'//var sal = model.getValue(record,"SAL");',
' ',
'//Set the values for the JOB and SAL cells',
'model.setValue(record,"SRCWARCDE",''W01'');'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63203672850546186)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(154225860130422536)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Process Information - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63177221921546169)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(154086644398052058)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Raw Material Information - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(62779374026997543)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert_nmstkrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_map         apex_application_global.vc_map;',
'   l_region_id   NUMBER;',
'   v_message     VARCHAR2 (1000);',
'   s_raw         VARCHAR2 (500);',
'   s_qty         NUMBER;',
'   s_bom         NUMBER;',
'BEGIN',
'   IF :APEX$ROW_SELECTOR = ''X''',
'   THEN',
'      SELECT t.region_id',
'        INTO l_region_id',
'        FROM APEX_050100.APEX_APPLICATION_PAGE_RPT t',
'       WHERE     t.application_id = :APP_ID',
'             AND t.page_id = :APP_PAGE_ID',
'             AND t.source_type = ''Tabular Form'';',
'',
'      l_map :=',
'         apex_050100.wwv_flow_tabular_form.',
'          get_row_values (p_tabular_form_region_id   => l_region_id,',
'                          p_row_num                  => :APEX$ROW_NUM);',
'',
'      BEGIN',
'         SELECT RAW_ITEMCODE, QTY, BOM_NO',
'           INTO s_raw, s_qty, s_bom',
'           FROM prbomdtl',
'          WHERE BOM_NO = l_map (''BOM_NO'');',
'      END;',
'',
'      IF :P1509_WARECODE_TO IS NOT NULL',
'      THEN',
'         dpr_insert_nmstkrec_raw (:compcode,',
'                                  :P1509_WARECODE_TO,',
'                                  s_raw,',
'                                  s_qty,',
'                                  :app_user,',
'                                  :P1509_BATCH,',
'                                  s_bom,',
'                                  v_message);',
'      END IF;',
'   END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63178182789546172)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(65792783259417685)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Warecode'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update prbomdtl',
'set SRCWARCDE = ''W01''',
'where compcode = :compcode',
'and bom_no = 114',
'and RAW_ITEMCODE = ''test'';'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63178182789546172)
);
wwv_flow_api.component_end;
end;
/
