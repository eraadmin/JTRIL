prompt --application/pages/page_00443
begin
--   Manifest
--     PAGE: 00443
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
 p_id=>443
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Product Information'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
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
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20221225115630'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117056750341943378)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(53292964414742481)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117056792304943378)
,p_plug_name=>'Document Information'
,p_parent_plug_id=>wwv_flow_api.id(117056750341943378)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(164084864864829212)
,p_plug_name=>'Previous Request'
,p_region_name=>'PREV_DATA'
,p_parent_plug_id=>wwv_flow_api.id(117056750341943378)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47585534000858182)
,p_plug_display_sequence=>200
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(164085032426829213)
,p_name=>'Previous Request'
,p_parent_plug_id=>wwv_flow_api.id(164084864864829212)
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
'  FROM nmstkrec',
' WHERE DOCNUMBR = :P443_DOCNUMBR',
'   AND DOCTTYPE = :DOCTTYPE',
'   AND SUBTTYPE = :SUBTTYPE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P443_DOCNUMBR'
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
 p_id=>wwv_flow_api.id(52842823207747431)
,p_query_column_id=>1
,p_column_alias=>'SL'
,p_column_display_sequence=>1
,p_column_heading=>'Sl#'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52843245697747431)
,p_query_column_id=>2
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52843634967747431)
,p_query_column_id=>3
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>3
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52844086510747431)
,p_query_column_id=>4
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Huomcode'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52844405661747431)
,p_query_column_id=>5
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>5
,p_column_heading=>'Itemrate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52842415804747428)
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
 p_id=>wwv_flow_api.id(166175060031206853)
,p_plug_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(117056750341943378)
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
 p_id=>wwv_flow_api.id(51545313988684728)
,p_plug_name=>'Product Information'
,p_region_name=>'prod_info'
,p_parent_plug_id=>wwv_flow_api.id(166175060031206853)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>200
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SL,',
'       seq_id SERLNUMB,',
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
'       c014 APPRQNTY,',
'       c015 TRNSQNTY,',
'       c016 MSLCAMNT,',
'       c017 BATCHNUM,',
'       c018 BATCH_QTY,',
'       c019 SCPCNT,',
'       c020 DISCAMNT,',
'       c021 SPLDISPC,',
'       c022 SPLDISNT,',
'       c023 ISSQTY,',
'       c024 STOCK,',
'       c025 ITEMRATE',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>'purrequest'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51545590829684730)
,p_name=>'POSTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSTFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>440
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51545657025684731)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
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
 p_id=>wwv_flow_api.id(51545717167684732)
,p_name=>'SL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51546061105684735)
,p_name=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Comm. Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
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
 p_id=>wwv_flow_api.id(51546189002684736)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<strong ><font color="red">Product Code</font></strong>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(12629584776026103)
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
 p_id=>wwv_flow_api.id(51546237316684737)
,p_name=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Type'
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51546392142684738)
,p_name=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
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
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_column_comment=>'onfocus="setitemcode();"'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51546403059684739)
,p_name=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALERATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sale Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
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
 p_id=>wwv_flow_api.id(51546527731684740)
,p_name=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Huomcode'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>360
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
 p_id=>wwv_flow_api.id(51546624997684741)
,p_name=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Unit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
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
 p_id=>wwv_flow_api.id(51546787044684742)
,p_name=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGNQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<strong ><font color="red">Request Qty.</font></strong>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>320
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
,p_column_comment=>'onfocus="total();saletotal();"'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51546888824684743)
,p_name=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cost Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>350
,p_value_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(51546950852684744)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>160
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51547045123684745)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>170
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(53031490339841108)
,p_name=>'SCPCNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCPCNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Scpcnt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>370
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
 p_id=>wwv_flow_api.id(53031587738841109)
,p_name=>'DISCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCAMNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Discamnt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>380
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
 p_id=>wwv_flow_api.id(53031664959841110)
,p_name=>'SPLDISPC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLDISPC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Spldispc'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>390
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
 p_id=>wwv_flow_api.id(53031752816841111)
,p_name=>'SPLDISNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLDISNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Spldisnt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>400
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
 p_id=>wwv_flow_api.id(53031994655841113)
,p_name=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Apprqnty'
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
 p_id=>wwv_flow_api.id(53032040721841114)
,p_name=>'TRNSQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRNSQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Trnsqnty'
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
 p_id=>wwv_flow_api.id(53032432018841118)
,p_name=>'MSLCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSLCAMNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Mslcamnt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>410
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
 p_id=>wwv_flow_api.id(53033361084841127)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<font color="red">Batch No.</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.batchnum||'' - ''||a.clbalqty d, a.batchnum r ',
'from nmwhimas a',
'where a.compcode = :P443_COMPCODE --:COMPCODE',
'and a.warecode = :P443_WARECODE',
'and a.itemcode = :itemcode',
'and a.clbalqty > 0'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'P443_WARECODE,ITEMCODE'
,p_ajax_items_to_submit=>'P443_COMPCODE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM syparmas',
' WHERE cacmpcde = :compcode',
'   AND nvl(invmthd,''N'') = ''N'';'))
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.batchnum||'' - ''||a.clbalqty d,a.batchnum r ',
'from nmwhimas a,nmbtrate b',
'where a.compcode = :P443_COMPCODE --:COMPCODE',
'and a.itemcode=b.itemcode',
'and a.batchnum=b.batchnum',
'and a.compcode=b.compcode',
'and a.warecode= :P443_WARECODE',
'and a.itemcode= :itemcode',
'and a.clbalqty>0'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(53033727100841131)
,p_name=>'ISSQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<font color="red">Issue Qty.</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
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
 p_id=>wwv_flow_api.id(53033810301841132)
,p_name=>'BATCH_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH_QTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stock Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_03=>'right'
,p_is_required=>false
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
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM syparmas',
' WHERE cacmpcde = :compcode',
'   AND nvl(invmthd,''N'') = ''N'';'))
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT CLBALQTY d,  CLBALQTY r',
'           FROM (SELECT   b.batchnum,sum(w.CLBALQTY) CLBALQTY',
'                     FROM nmbtrate b, nmwhimas w',
'                    WHERE b.compcode = :P443_COMPCODE --:COMPCODE',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND w.warecode = :P443_WARECODE',
'                      AND b.itemcode = :ITEMCODE',
'                      and w.batchnum = :BATCHNUM',
'                     ',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                   HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC)'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(53034285431841136)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>290
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
 p_id=>wwv_flow_api.id(53034328181841137)
,p_name=>'STOCK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STOCK'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stock'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
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
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM syparmas',
' WHERE cacmpcde = :compcode',
'   AND nvl(invmthd,''N'') <> ''N'';'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(53034473146841138)
,p_name=>'LUOMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Luomdesc'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>420
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
 p_id=>wwv_flow_api.id(58115516516112239)
,p_name=>'ITEMRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>430
,p_value_alignment=>'RIGHT'
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
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(51545461707684729)
,p_internal_uid=>51545461707684729
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {  ',
'  config.initActions = function( actions ) {',
'    actions.remove("single-row-view");',
'  };  ',
'  return config;  ',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(53036899376841353)
,p_interactive_grid_id=>wwv_flow_api.id(51545461707684729)
,p_static_id=>'395978'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(53036932986841353)
,p_report_id=>wwv_flow_api.id(53036899376841353)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
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
 p_id=>wwv_flow_api.id(21985891492088)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(53034285431841136)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>201.0000061035156
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22567284492091)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(53034328181841137)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(41713934537621)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(53034473146841138)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53037461074841354)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(51545590829684730)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53037958387841357)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(51545657025684731)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53038445597841359)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(51545717167684732)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53038950220841360)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(51546061105684735)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53039450656841364)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(51546189002684736)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>185.6
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53039935027841364)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(51546237316684737)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53040491877841365)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(51546392142684738)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>275.4
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53040951727841367)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(51546403059684739)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53041416664841368)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(51546527731684740)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53041953953841368)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(51546624997684741)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53042407344841370)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(51546787044684742)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53042967350841371)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(51546888824684743)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53043492772841373)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(51546950852684744)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53050219937841393)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(53031490339841108)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53050743681841395)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(53031587738841109)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53051289979841395)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(53031664959841110)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53051789573841396)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(53031752816841111)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53052709901841400)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(53031994655841113)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53053236918841400)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(53032040721841114)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53055287995841404)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(53032432018841118)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53059794628841420)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(53033361084841127)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>161.8
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53061753509841425)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(53033727100841131)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(53062290593841425)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(53033810301841132)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111.4
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59952722615434410)
,p_view_id=>wwv_flow_api.id(53036932986841353)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(58115516516112239)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52834068506747409)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(117056750341943378)
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
 p_id=>wwv_flow_api.id(100912099311509208)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(164084864864829212)
,p_button_name=>'Close'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:closeModal(''PREV_DATA'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52845165942747432)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(166175060031206853)
,p_button_name=>'USR_Template'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Template Selection'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:void(0)'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52845576713747434)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(166175060031206853)
,p_button_name=>'COPY_PREV'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copy From Previous'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:openModal(''PREV_DATA'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52841356136747423)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(164084864864829212)
,p_button_name=>'Add_coll'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add to Issue'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52834430362747409)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(117056750341943378)
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
 p_id=>wwv_flow_api.id(52834844290747409)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(117056750341943378)
,p_button_name=>'PREVIOUS'
,p_button_static_id=>'BACK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(52867564245747479)
,p_branch_name=>'copy'
,p_branch_action=>'javascript:openModal(''PREV_DATA'');'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(52845576713747434)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(52867152692747479)
,p_branch_name=>'Go To Page 444'
,p_branch_action=>'f?p=&APP_ID.:&P443_NEXTPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(52834430362747409)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(52866796079747479)
,p_branch_name=>'Go To Page 442'
,p_branch_action=>'f?p=&APP_ID.:&P443_PREVPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(52834844290747409)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52838606307747418)
,p_name=>'P443_WARENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(117056792304943378)
,p_prompt=>'Source Warehouse/Business Unit'
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
 p_id=>wwv_flow_api.id(52839063266747418)
,p_name=>'P443_SRCWARENAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(117056792304943378)
,p_prompt=>'Destination Warehouse/Business Unit'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52839450275747420)
,p_name=>'P443_APRPERSON'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(117056792304943378)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52839856775747420)
,p_name=>'P443_APRPERSNM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(117056792304943378)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P443_APRPERSON'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52840222488747420)
,p_name=>'P443_NEXTPAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(117056792304943378)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52840606472747421)
,p_name=>'P443_PREVPAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(117056792304943378)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52841746197747425)
,p_name=>'P443_DOCNUMBR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(164084864864829212)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Issue No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT docnumbr || ''-'' || doctdate D, docnumbr R',
'  FROM (  SELECT DISTINCT docnumbr, doctdate',
'            FROM nmstkrec',
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
 p_id=>wwv_flow_api.id(52846379059747435)
,p_name=>'P443_COMPCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(166175060031206853)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53033965701841133)
,p_name=>'P443_WARECODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(117056792304943378)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53034049291841134)
,p_name=>'P443_SRCWARECODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(117056792304943378)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53339063013043308)
,p_name=>'P443_BATCH_METHOD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(117056792304943378)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(52854113681747462)
,p_tabular_form_region_id=>wwv_flow_api.id(51545313988684728)
,p_validation_name=>'ITEMCODE not null'
,p_validation_sequence=>10
,p_validation=>'ITEMCODE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(52834430362747409)
,p_associated_column=>'ITEMCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(53001114164801062)
,p_tabular_form_region_id=>wwv_flow_api.id(51545313988684728)
,p_validation_name=>'issqty not null'
,p_validation_sequence=>20
,p_validation=>'ISSQTY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have valid value.'
,p_when_button_pressed=>wwv_flow_api.id(52834430362747409)
,p_associated_column=>'ISSQTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(53001560502801064)
,p_tabular_form_region_id=>wwv_flow_api.id(51545313988684728)
,p_validation_name=>'issqty numeric'
,p_validation_sequence=>30
,p_validation=>'ISSQTY'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must have valid value.'
,p_when_button_pressed=>wwv_flow_api.id(52834430362747409)
,p_associated_column=>'ISSQTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(53002328771801064)
,p_tabular_form_region_id=>wwv_flow_api.id(51545313988684728)
,p_validation_name=>'Issue Qty not less than batch qty'
,p_validation_sequence=>40
,p_validation=>'to_number(nvl(:BATCH_QTY,0)) >= to_number(:ISSQTY)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Issue Qty. must be less than Batch Qty.!'
,p_validation_condition=>'P443_BATCH_METHOD'
,p_validation_condition2=>'N'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(52834430362747409)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ISSQTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(53338348423043301)
,p_tabular_form_region_id=>wwv_flow_api.id(51545313988684728)
,p_validation_name=>'Issue Qty not less than stock'
,p_validation_sequence=>70
,p_validation=>'to_number(nvl(:STOCK,0)) >= to_number(:ISSQTY)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Issue Qty. must be less than Stock.!'
,p_validation_condition=>'P443_BATCH_METHOD'
,p_validation_condition2=>'N'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(52834430362747409)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ISSQTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52859235356747471)
,p_name=>'set item desc'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(51545313988684728)
,p_triggering_element=>'ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52859772083747473)
,p_event_id=>wwv_flow_api.id(52859235356747471)
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
'      INTO :ITEMDESC, :LUOMCODE, :HUOMCODE, :LUOMDESC, :COSTRATE, :SALERATE, :ITEMTYPE, :COMMCODE',
'      FROM NMITEMAS',
'     WHERE compcode = :P443_COMPCODE',
'       AND ITEMCODE = :ITEMCODE',
'       AND STATUSCD = ''ACT'';',
'exception ',
'    when others then ',
'null;',
'end;'))
,p_attribute_02=>'P443_COMPCODE,ITEMCODE'
,p_attribute_03=>'ITEMDESC,LUOMCODE,HUOMCODE,LUOMDESC,COSTRATE,SALERATE,ITEMTYPE,COMMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(53338504205043303)
,p_name=>'set stock'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(51545313988684728)
,p_triggering_element=>'ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM syparmas',
' WHERE cacmpcde = :compcode',
'   AND nvl(invmthd,''N'') <> ''N'';'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(53338720301043305)
,p_event_id=>wwv_flow_api.id(53338504205043303)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT sum(clbalqty)',
'  INTO :STOCK',
'  FROM nmwhimas',
' WHERE compcode = :compcode ',
'   AND warecode = :P443_WARECODE',
'   --AND batchnum = :batchnum',
'   AND itemcode = :itemcode;',
'   --group by warecode, itemcode;',
'exception ',
'    when others then ',
'    null;   ',
'end;'))
,p_attribute_02=>'P443_WARECODE,ITEMCODE'
,p_attribute_03=>'STOCK'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52861960137747475)
,p_name=>'Close Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(52834068506747409)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52862435498747476)
,p_event_id=>wwv_flow_api.id(52861960137747475)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52862977240747476)
,p_event_id=>wwv_flow_api.id(52861960137747475)
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
'end if;   '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52863453346747476)
,p_event_id=>wwv_flow_api.id(52861960137747475)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52863874740747476)
,p_name=>'Refresh'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P443_DOCNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52864306570747476)
,p_event_id=>wwv_flow_api.id(52863874740747476)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(164085032426829213)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(53338867446043306)
,p_name=>'get batch method'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(53338951683043307)
,p_event_id=>wwv_flow_api.id(53338867446043306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P443_BATCH_METHOD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT nvl(invmthd,''N'')',
'     FROM syparmas',
'    WHERE cacmpcde = :compcode'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(58115364846112237)
,p_name=>'set costrate'
,p_event_sequence=>70
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(51545313988684728)
,p_triggering_element=>'BATCHNUM'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'BATCHNUM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(58115456643112238)
,p_event_id=>wwv_flow_api.id(58115364846112237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_itemrate   NUMBER;',
'   v_costrate   NUMBER;',
'   v_salerate   NUMBER;',
'BEGIN   ',
'    BEGIN',
'       SELECT salerate--, itemrate, costrate, ',
'         INTO v_salerate --v_itemrate, v_costrate, ',
'         FROM nmbtrate',
'        WHERE compcode = :P443_COMPCODE',
'          AND warecode = :P443_WARECODE',
'          AND itemcode = :itemcode',
'          AND batchnum = :batchnum;',
'    EXCEPTION',
'       WHEN OTHERS',
'       THEN',
'          v_itemrate := '''';',
'          v_costrate := '''';',
'          v_salerate := '''';',
'    END;',
'',
'--:ITEMRATE := v_itemrate;',
'--:COSTRATE := v_costrate;',
':SALERATE := v_salerate;',
'END;',
'',
'begin',
'  select a.clbalqty',
'    INTO :BATCH_QTY',
'    from nmwhimas a',
'   where a.compcode = :P443_COMPCODE ',
'    and a.warecode = :P443_WARECODE',
'    and a.itemcode = :itemcode',
'    and a.batchnum = :BATCHNUM',
'    and a.clbalqty > 0;',
'',
'/*',
'    SELECT CLBALQTY',
'      INTO :BATCH_QTY',
'           FROM (SELECT   b.batchnum, sum(w.CLBALQTY) CLBALQTY',
'                     FROM nmbtrate b, nmwhimas w',
'                    WHERE b.compcode = :P443_COMPCODE',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND w.warecode = :P443_WARECODE',
'                      AND b.itemcode = :ITEMCODE',
'                      and w.batchnum = :BATCHNUM',
'                     ',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                   HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC);',
'                 */',
'exception',
'    when others then null;',
'end; '))
,p_attribute_02=>'P443_COMPCODE,P443_WARECODE,ITEMCODE,BATCHNUM'
,p_attribute_03=>'SALERATE,BATCH_QTY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52857265071747470)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Previous Page Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT c002 warecode,',
'          c002 ||''-''|| c003 warename, ',
'          c004 srcwarecode,',
'          c004 ||''-''|| c005 srcwarename,',
'          c006 APRPERSON,',
'          c006 ||''-''|| c007 APRPERSNM ',
'     INTO :P443_WARECODE, :P443_WARENAME, :P443_SRCWARECODE, :P443_SRCWARENAME, :P443_APRPERSON, :P415_APRPERSNM',
'     FROM apex_collections',
'    WHERE collection_name = ''DOC_INFO'';',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      raise_application_error (-20001, SQLCODE || '' '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52855215274747464)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(51545313988684728)
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
'        p_c014            => :APPRQNTY,',
'        p_c015            => :TRNSQNTY,',
'        p_c016            => :MSLCAMNT,',
'        p_c017            => :BATCHNUM,',
'        p_c018            => :BATCH_QTY,',
'        p_c019            => :SCPCNT,',
'        p_c020            => :DISCAMNT,',
'        p_c021            => :SPLDISPC,',
'        p_c022            => :SPLDISNT,',
'        p_c023            => :ISSQTY,',
'        p_c024            => :STOCK,',
'        p_c025            => :ITEMRATE',
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
'        p_c014            => :APPRQNTY,',
'        p_c015            => :TRNSQNTY,',
'        p_c016            => :MSLCAMNT,',
'        p_c017            => :BATCHNUM,',
'        p_c018            => :BATCH_QTY,',
'        p_c019            => :SCPCNT,',
'        p_c020            => :DISCAMNT,',
'        p_c021            => :SPLDISPC,',
'        p_c022            => :SPLDISNT,',
'        p_c023            => :ISSQTY,',
'        p_c024            => :STOCK,',
'        p_c025            => :ITEMRATE',
'        );',
'        commit;',
'',
'    when ''D'' then',
'    ',
'        APEX_COLLECTION.DELETE_MEMBER (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq             => :SL);',
'        commit;',
'    end case;',
'    /*',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (',
'    p_collection_name =>  ''ORDER_ITEMS'');',
'    */',
'exception ',
'    when others then',
'    raise_application_error(-20001, ''DML for collection ''||sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(52834430362747409)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52856436811747467)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove duplicate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
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
'        p_collection_name =>  ''ORDER_ITEMS'');',
'',
'    end;',
'end if;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(52834430362747409)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52858097811747470)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Request Qty validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'    begin',
'        for i in',
'        (   SELECT seq_id SL,',
'                   c011 ORGNQNTY',
'              FROM apex_collections',
'             WHERE collection_name = ''ORDER_ITEMS''',
'             ORDER BY sl)',
'        loop',
'            if to_number(i.ORGNQNTY) is null ',
'               --or to_number(i.ORGNQNTY) = 0',
'               or to_number(i.ORGNQNTY) < 1 then',
'                raise_application_error(-20001, ''Request Qty. must have valid value!'');',
'            end if;',
'        end loop;',
'',
'    end;',
'end if;    '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Request Qty. must have valid value!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(52834430362747409)
,p_required_patch=>wwv_flow_api.id(981178456698168123)
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
 p_id=>wwv_flow_api.id(52855696902747465)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(51545313988684728)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'upd collection'
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
'        p_c014            => :APPRQNTY,',
'        p_c015            => :TRNSQNTY,',
'        p_c016            => :MSLCAMNT,',
'        p_c017            => :BATCHNUM,',
'        p_c018            => :BATCH_QTY,',
'        p_c019            => :SCPCNT,',
'        p_c020            => :DISCAMNT,',
'        p_c021            => :SPLDISPC,',
'        p_c022            => :SPLDISNT,',
'        p_c023            => :ISSQTY,',
'        p_c024            => :STOCK,',
'        p_c025            => :ITEMRATE',
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
'        p_c014            => :APPRQNTY,',
'        p_c015            => :TRNSQNTY,',
'        p_c016            => :MSLCAMNT,',
'        p_c017            => :BATCHNUM,',
'        p_c018            => :BATCH_QTY,',
'        p_c019            => :SCPCNT,',
'        p_c020            => :DISCAMNT,',
'        p_c021            => :SPLDISPC,',
'        p_c022            => :SPLDISNT,',
'        p_c023            => :ISSQTY,',
'        p_c024            => :STOCK,',
'        p_c025            => :ITEMRATE   ',
'        );',
'        commit;',
'',
'    when ''D'' then',
'    ',
'        APEX_COLLECTION.DELETE_MEMBER (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq             => :SL);',
'        commit;',
'    end case;',
'',
'exception ',
'    when others then',
'    raise_application_error(-20001, ''DML for collection ''||sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(52841356136747423)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52856810280747467)
,p_process_sequence=>60
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
'    v_sl varchar2(100);',
'    v_itemcode nmstkrec.itemcode%type;',
'    v_itemdesc nmstkrec.itemdesc%type;',
'    v_luomcode nmstkrec.luomcode%type;',
'    v_huomcode nmstkrec.huomcode%type;',
'    --v_luomdesc nmstkrec.luomdesc%type;',
'    v_itemtype nmstkrec.itemtype%type;',
'    --v_itemrate nmstkrec.itemrate%type;',
'    v_costrate nmstkrec.costrate%type;',
'    v_salerate nmstkrec.salerate%type;',
'    v_commcode nmstkrec.commcode%type;',
'',
'Begin',
'',
'    FOR i in 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'      begin',
'         SELECT        i sl,',
'                       itemcode,',
'                       itemdesc,',
'                       luomcode,',
'                       huomcode,',
'                       --luomdesc,',
'                       itemtype,',
'                       costrate,',
'                       salerate,',
'                       commcode',
'                  INTO v_sl, v_itemcode, v_itemdesc, v_luomcode, v_huomcode,  v_itemtype, v_costrate, v_salerate, v_commcode      --v_luomdesc, v_itemrate,              ',
'                  FROM nmstkrec',
'                 WHERE docnumbr = :P443_DOCNUMBR',
'                   AND itemcode = APEX_APPLICATION.G_F01(i);',
'                   /*',
'                   AND itemcode in ( select c002',
'                                           FROM apex_collections',
'                                          WHERE collection_name = ''ORDER_ITEMS'');',
'                                       */',
'        end;',
' ',
' APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_c001            => v_sl,',
'        p_c002            => v_itemcode,',
'        p_c003            => v_itemdesc,',
'        p_c004            => v_luomcode,        ',
'        p_c005            => v_huomcode,',
'        --p_c006            => i.LUOMDESC,',
'        p_c007            => v_itemtype,',
'        p_c008            => v_costrate,',
'        p_c009            => v_salerate,',
'        p_c010            => v_commcode,',
'        p_c013            => ''N''',
'        );    ',
'        ',
'        commit;  ',
'        ',
'      end loop;    ',
'/*      ',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (',
'    p_collection_name =>  ''ORDER_ITEMS'');      ',
'    */',
'End;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(52841356136747423)
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'       apex_collection.create_collection (''ORDER_ITEMS'');  ',
'end if;  ',
' ',
'Begin',
'    for i in (  SELECT ROWNUM sl,',
'                       itemcode,',
'                       itemdesc,',
'                       luomcode,',
'                       huomcode,',
'                       --luomdesc,',
'                       itemtype,',
'                       costrate,',
'                       salerate,',
'                       commcode',
'                  FROM nmstkrec',
'                 WHERE docnumbr = :P414_DOCNUMBR',
'                   AND itemcode NOT IN ( SELECT c002',
'                                           FROM apex_collections',
'                                          WHERE collection_name = ''ORDER_ITEMS'')',
'    ) loop  ',
'        ',
'        APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_c001            => i.SL,',
'        p_c002            => i.ITEMCODE,',
'        p_c003            => i.ITEMDESC,',
'        p_c004            => i.LUOMCODE,        ',
'        p_c005            => i.HUOMCODE,',
'        --p_c006            => i.LUOMDESC,',
'        p_c007            => i.ITEMTYPE,',
'        p_c008            => i.COSTRATE,',
'        p_c009            => i.SALERATE,',
'        p_c010            => i.COMMCODE,',
'        P_c013            => ''N''',
'        );',
'        commit;  ',
'        ',
'      end loop;                              ',
'End;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52858405959747470)
,p_process_sequence=>70
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
'  ',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (',
'    p_collection_name =>  ''ORDER_ITEMS'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(52841356136747423)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(53002655191801064)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(51545313988684728)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'upd collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    case :APEX$ROW_STATUS',
'    when ''U'' then',
'    ',
'    begin',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''ORDER_ITEMS'',',
'            p_seq => :SL,',
'            p_attr_number => 42,',
'            p_attr_value => :BATCHNUM);  ',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''ORDER_ITEMS'',',
'            p_seq => :SL,',
'            p_attr_number => 48,',
'            p_attr_value => :BATCH_QTY);     ',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''ORDER_ITEMS'',',
'            p_seq => :SL,',
'            p_attr_number => 47,',
'            p_attr_value => :ISSQTY);             ',
'',
'            commit;',
'    exception ',
'        when others then',
'        raise_application_error(-20001, ''upd collection ''||sqlcode||'' ''||sqlerrm);',
'    end;',
'',
'    when ''D'' then',
'    ',
'        APEX_COLLECTION.DELETE_MEMBER (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq             => :SL);',
'        commit;',
'    end case;',
'    ',
'exception ',
'    when others then',
'    raise_application_error(-20001, ''DML for collection ''||sqlcode||'' ''||sqlerrm);',
'end;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(52834430362747409)
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52858866842747471)
,p_process_sequence=>80
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
'       raise_application_error(-20001, ''No Item Selected for Requisition!'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(52834430362747409)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52857684748747470)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P1, WIZ_P3',
'  INTO :P443_PREVPAGE, :P443_NEXTPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001, ''NEXT AND PREV PAGE ''||SQLCODE||'' ''||SQLERRM);',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
