prompt --application/pages/page_01512
begin
--   Manifest
--     PAGE: 01512
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
 p_id=>1512
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'&A_PROCESS_NAME.'
,p_page_mode=>'MODAL'
,p_step_title=>'&A_PROCESS_NAME.'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function changetargetqty()',
'{',
'var grid = apex.region("batchqty").widget().interactiveGrid("getViews", "grid");  ',
'var m = grid.model;  ',
'//alert(''123456'');  ',
'var selectedRow = grid.view$.grid("getSelection") ;    ',
'  ',
'selectedRow.forEach(function(o, index) {  ',
'    var id          = $(selectedRow[index][0]).data(''id'');  ',
'    var record      = m.getRecord(id);',
'    var docnumbr=m.getValue(record,"DOCNUMBR");',
'//document.getElementById(''P1512_UPDOCNUMBR'').value=docnumbr;',
'    $s(P1512_UPDOCNUMBR,docnumbr);',
'});  ',
'$(document).ready(function(){',
'  $(''#P1512_UPDOCNUMBR'').trigger(''click'');',
'});',
'    javascript:apex.submit();',
'}',
'</script>',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170608143911'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65775429003129322)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(141833823831980952)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(182899088607802824)
,p_plug_name=>'Raw Material Information'
,p_parent_plug_id=>wwv_flow_api.id(141833823831980952)
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT d.COMPCODE,',
'                d.BOMDTL_NO,',
'                d.BOM_NO,',
'                d.RAW_ITEMCODE,',
'                d.QTY,',
'                d.WASTAGE_ITEMCODE,',
'                d.WASTAGE_PERCENTAGE,',
'                d.WASTAGE_QTY,',
'                d.BOMDTLRAW_DESCR,',
'                d.OPRSTAMP,',
'                d.TIMSTAMP,',
'                d.RAW_PERCENT,',
'                d.POTCYQTY,',
'                d.STANDQTY,',
'                d.QAREFNO,',
'                d.CHK_RAWITEM,',
'                d.MODIFYDT,',
'                d.RETRNQTY,',
'                d.PRPOTACT,',
'                d.NMADJQTY,',
'                d.PRAPPQTY,',
'                d.POTACTCK,',
'                d.UPDOCNUM,',
'                d.CHKFLGPK,',
'                d.CHKPLGPHY,',
'                d.PRACTIVE,',
'                rcv.rcvqty',
'  FROM prbomdtl d,  (SELECT NVL (SUM (APPRQNTY), 0) rcvqty,itemcode,ORGNQNTY,BOM_NO',
'          FROM nmstkrec',
'         WHERE     COMPCODE = :compcode',
'               AND docttype = ''RC''',
'               AND SUBTTYPE = 4',
'               AND UPDOCNUM in',
'                      (SELECT DOCNUMBR',
'                         FROM nmstkrec',
'                        WHERE     COMPCODE = :compcode',
'                              AND docttype = ''MI''',
'                              AND subttype = 2)',
'              group by BOM_NO,itemcode,ORGNQNTY) rcv',
' WHERE d.compcode = :compcode',
'  AND rcv.itemcode(+) = d.RAW_ITEMCODE',
'  AND rcv.BOM_NO(+) = d.BOM_NO',
'  AND rcv.ORGNQNTY(+) = d.QTY'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(183038304340173302)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37367568862335029)
,p_name=>'RCVQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RCVQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rcvqty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>290
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
 p_id=>wwv_flow_api.id(182899243807802826)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
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
 p_id=>wwv_flow_api.id(182899374947802827)
,p_name=>'BOMDTL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOMDTL_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
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
 p_id=>wwv_flow_api.id(182899510315802828)
,p_name=>'BOM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOM_NO'
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
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_api.id(183038956889173309)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(182899600897802829)
,p_name=>'RAW_ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAW_ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Raw Material'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select P.ITEMDES1 p, P.ITEMCODE n',
'from nmitemas p',
'where P.COMPCODE = :compcode'))
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
 p_id=>wwv_flow_api.id(182899685930802830)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Request Qty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_api.id(182899768779802831)
,p_name=>'WASTAGE_ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WASTAGE_ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Wastage'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select P.ITEMDES1 p, P.ITEMCODE n',
'from nmitemas p',
'where P.COMPCODE = :compcode'))
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(182899825253802832)
,p_name=>'WASTAGE_PERCENTAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WASTAGE_PERCENTAGE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Wastage(%)'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(182899926705802833)
,p_name=>'WASTAGE_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WASTAGE_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Waste Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(182900037632802834)
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
 p_id=>wwv_flow_api.id(182900210514802835)
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
 p_id=>wwv_flow_api.id(182900271208802836)
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
 p_id=>wwv_flow_api.id(182900390920802837)
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
 p_id=>wwv_flow_api.id(182900490732802838)
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
 p_id=>wwv_flow_api.id(182900589322802839)
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
 p_id=>wwv_flow_api.id(182900627613802840)
,p_name=>'QAREFNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QAREFNO'
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
 p_id=>wwv_flow_api.id(182900742268802841)
,p_name=>'CHK_RAWITEM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHK_RAWITEM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
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
 p_id=>wwv_flow_api.id(182900872563802842)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_api.id(183037336643173293)
,p_name=>'RETRNQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RETRNQTY'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_api.id(183037470384173294)
,p_name=>'PRPOTACT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRPOTACT'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(183037523846173295)
,p_name=>'NMADJQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMADJQTY'
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
 p_id=>wwv_flow_api.id(183037620491173296)
,p_name=>'PRAPPQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRAPPQTY'
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
 p_id=>wwv_flow_api.id(183037762504173297)
,p_name=>'POTACTCK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POTACTCK'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(183037850005173298)
,p_name=>'UPDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
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
 p_id=>wwv_flow_api.id(183037957433173299)
,p_name=>'CHKFLGPK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHKFLGPK'
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
 p_id=>wwv_flow_api.id(183038031912173300)
,p_name=>'CHKPLGPHY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHKPLGPHY'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(183038154443173301)
,p_name=>'PRACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRACTIVE'
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
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(182899166693802825)
,p_internal_uid=>145744299568122331
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
,p_show_toolbar=>false
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
 p_id=>wwv_flow_api.id(183042951012173434)
,p_interactive_grid_id=>wwv_flow_api.id(182899166693802825)
,p_static_id=>'396074'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(183043025642173434)
,p_report_id=>wwv_flow_api.id(183042951012173434)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37805395879254370)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(37367568862335029)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183043525915173436)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(182899243807802826)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183044077708173437)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(182899374947802827)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183044522177173437)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(182899510315802828)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183045074302173439)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(182899600897802829)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>238
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183045520058173440)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(182899685930802830)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183046095845173440)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(182899768779802831)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>151
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183046617391173442)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(182899825253802832)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183047022562173443)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(182899926705802833)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>164
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183047564709173445)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(182900037632802834)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183048028333173445)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(182900210514802835)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183048576357173446)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(182900271208802836)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183049040698173448)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(182900390920802837)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183049595411173448)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(182900490732802838)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183050070136173450)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(182900589322802839)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183050602044173451)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(182900627613802840)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183051068041173453)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(182900742268802841)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183051558889173453)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(182900872563802842)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183052076781173454)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(183037336643173293)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183052563404173457)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(183037470384173294)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183053045112173457)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(183037523846173295)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183053533084173459)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(183037620491173296)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183054065906173460)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(183037762504173297)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183054531894173462)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(183037850005173298)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183055096465173462)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(183037957433173299)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183055588770173464)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(183038031912173300)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183056094003173465)
,p_view_id=>wwv_flow_api.id(183043025642173434)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(183038154443173301)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(187053018429477222)
,p_plug_name=>'Style & Process Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66613670557075944)
,p_plug_name=>'Batch Information'
,p_region_name=>'batchqty'
,p_parent_plug_id=>wwv_flow_api.id(187053018429477222)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding'
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
'       BATCH_NO,',
'       SL_NO,',
'       BATCH_START_DATE,',
'       BATCH_END_DATE,',
'       FG_ITEMCODE,',
'       TARGET_QTY,',
'       COMPLETE_QTY,',
'       REMAIN_QTY,',
'       RAW_ITEM_CONSUMPTION_FLAG,',
'       NO_OF_PRD,',
'       QA_REFERENCE,',
'       SLSOFRNO_FK,',
'       TGT_FG_ITEMCODE,',
'       WARECODE,',
'       STATUSCD,',
'       BATCH_COMPLETE_FLAG,',
'       MACHINE_HOUR,',
'       MACHINE_COST,',
'       OPRSTAMP,',
'       MODIFYDT,',
'       TIMSTAMP',
'  FROM prbom_batch b',
' WHERE     B.COMPCODE = :compcode',
'       AND B.TGT_FG_ITEMCODE = nvl(:P1512_ITEMCODE_NEW,b.TGT_FG_ITEMCODE)',
'       AND B.BATCH_NO = :P1512_BATCH_NEW',
'      -- AND nvl(B.WARECODE,''W'') = nvl(:P1512_WARECODE_FROM,nvl(B.WARECODE,''W''))',
'       AND B.SLSOFRNO_FK = nvl(:P1512_SALESOFFER_NEW,B.SLSOFRNO_FK)'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(67474002612691396)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(67474078066691397)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
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
 p_id=>wwv_flow_api.id(67474259033691398)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
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
 p_id=>wwv_flow_api.id(67474323209691399)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
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
 p_id=>wwv_flow_api.id(67474448387691400)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
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
 p_id=>wwv_flow_api.id(67474500823691401)
,p_name=>'BATCH_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Style'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_api.id(67474616323691402)
,p_name=>'SL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL_NO'
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
 p_id=>wwv_flow_api.id(67474724413691403)
,p_name=>'BATCH_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH_START_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Batch Start'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_item_attributes=>'onchange="changetargetqty();"'
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(67474787191691404)
,p_name=>'BATCH_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH_END_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
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
 p_id=>wwv_flow_api.id(67474962009691405)
,p_name=>'FG_ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FG_ITEMCODE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(67475046772691406)
,p_name=>'TARGET_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TARGET_QTY'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_api.id(67475071859691407)
,p_name=>'COMPLETE_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPLETE_QTY'
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
 p_id=>wwv_flow_api.id(67475212115691408)
,p_name=>'REMAIN_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAIN_QTY'
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
 p_id=>wwv_flow_api.id(67475305308691409)
,p_name=>'RAW_ITEM_CONSUMPTION_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAW_ITEM_CONSUMPTION_FLAG'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
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
 p_id=>wwv_flow_api.id(67475424441691410)
,p_name=>'NO_OF_PRD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_PRD'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_api.id(67475516527691411)
,p_name=>'QA_REFERENCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QA_REFERENCE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
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
 p_id=>wwv_flow_api.id(67475654116691412)
,p_name=>'SLSOFRNO_FK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SLSOFRNO_FK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Referance'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT docnumbr || ''/'' || docttype || ''/'' || subttype || ''/'' || a.doctdate d,a.SLSOFRNO s',
'  FROM nmslsofr a, sycompty b,(select nvl(sum(p.TARGET_QTY),0) TARGET_QTY,SLSOFRNO_FK,TGT_FG_ITEMCODE,RAW_ITEM_CONSUMPTION_FLAG',
'                                                   from prbom_batch p',
'                                                   group by SLSOFRNO_FK,TGT_FG_ITEMCODE,RAW_ITEM_CONSUMPTION_FLAG) q',
' WHERE     a.statuscd = ''APR''',
'       AND q.SLSOFRNO_FK (+) = a.SLSOFRNO',
'       AND a.compcode = b.compcode',
'       AND a.partycde = b.partycde',
'       AND a.ITEMCODE = nvl(q.TGT_FG_ITEMCODE,a.ITEMCODE)',
'       AND nvl(q.RAW_ITEM_CONSUMPTION_FLAG,0) = 0'))
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
 p_id=>wwv_flow_api.id(67475667716691413)
,p_name=>'TGT_FG_ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TGT_FG_ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select S.ITEMDES1 t, S.ITEMCODE c',
'       from nmitemas s',
'       where S.COMPCODE = :compcode'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(67475806402691414)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Request From'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select S.WAREDESC t, S.WARECODE c',
'       from nmwhsmas s',
'       where S.COMPCODE = :compcode'))
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
 p_id=>wwv_flow_api.id(67475899225691415)
,p_name=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUSCD'
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
 p_id=>wwv_flow_api.id(67476030860691416)
,p_name=>'BATCH_COMPLETE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH_COMPLETE_FLAG'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(67476099876691417)
,p_name=>'MACHINE_HOUR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_HOUR'
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
 p_id=>wwv_flow_api.id(67476229737691418)
,p_name=>'MACHINE_COST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_COST'
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
 p_id=>wwv_flow_api.id(67476283035691419)
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
 p_id=>wwv_flow_api.id(67476371517691420)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
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
 p_id=>wwv_flow_api.id(67476470189691421)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_api.id(69276418148166021)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(67473903502691395)
,p_internal_uid=>30319036377010901
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
,p_show_toolbar=>false
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
 p_id=>wwv_flow_api.id(67480462658701055)
,p_interactive_grid_id=>wwv_flow_api.id(67473903502691395)
,p_static_id=>'396075'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(67480469901701058)
,p_report_id=>wwv_flow_api.id(67480462658701055)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67481370211701066)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(67474002612691396)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67481912603701077)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(67474078066691397)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67482404859701079)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(67474259033691398)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67482949779701080)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(67474323209691399)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67483397431701082)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(67474448387691400)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67483956679701083)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(67474500823691401)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67484426195701085)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(67474616323691402)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67484883999701088)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(67474724413691403)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67485415568701089)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(67474787191691404)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67485897512701091)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(67474962009691405)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67486447640701093)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(67475046772691406)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67486939984701094)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(67475071859691407)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67487387966701096)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(67475212115691408)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67487873132701097)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(67475305308691409)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67488378201701100)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(67475424441691410)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67488927546701102)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(67475516527691411)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67489397574701111)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(67475654116691412)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67489862261701113)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(67475667716691413)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>168
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67490333244701114)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(67475806402691414)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67490776332701118)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(67475899225691415)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67491309243701119)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(67476030860691416)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67491768875701121)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(67476099876691417)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67492288826701122)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(67476229737691418)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67492823063701124)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(67476283035691419)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67493353609701125)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(67476371517691420)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(67493841498701127)
,p_view_id=>wwv_flow_api.id(67480469901701058)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(67476470189691421)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183038304340173302)
,p_plug_name=>'Process Information'
,p_parent_plug_id=>wwv_flow_api.id(187053018429477222)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
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
'  ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(66613670557075944)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(68426985886352496)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(183038427278173304)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(183038537218173305)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
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
 p_id=>wwv_flow_api.id(183038717484173306)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_api.id(183038799023173307)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
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
 p_id=>wwv_flow_api.id(183038906235173308)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_api.id(183038956889173309)
,p_name=>'BOM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOM_NO'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(183039045133173310)
,p_name=>'BOM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOM_NAME'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(183039172761173311)
,p_name=>'BOM_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOM_START_DATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_api.id(183039220236173312)
,p_name=>'BOM_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOM_END_DATE'
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
 p_id=>wwv_flow_api.id(183039342996173313)
,p_name=>'PROCESS_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESS_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Process'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select P.PROCESS_NAME n, P.PROCESS_NO o',
'from prprocess p',
'where P.COMPCODE = :compcode'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(183039449949173314)
,p_name=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
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
 p_id=>wwv_flow_api.id(183039614095173315)
,p_name=>'FG_ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FG_ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>410
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
 p_id=>wwv_flow_api.id(183039658627173316)
,p_name=>'TARGET_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TARGET_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Process Quantity'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(183039786378173317)
,p_name=>'PLANDTLNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANDTLNO'
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
 p_id=>wwv_flow_api.id(183039887658173318)
,p_name=>'PRD_ITEM_ALIAS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRD_ITEM_ALIAS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
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
 p_id=>wwv_flow_api.id(183039949548173319)
,p_name=>'RAW_ITEM_CONSUMPTION_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAW_ITEM_CONSUMPTION_FLAG'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>440
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
 p_id=>wwv_flow_api.id(183040090651173320)
,p_name=>'AVG_COUNT_FORMULA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AVG_COUNT_FORMULA'
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
 p_id=>wwv_flow_api.id(183040192315173321)
,p_name=>'AVG_COUNT_DIVISION_FACTOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AVG_COUNT_DIVISION_FACTOR'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
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
 p_id=>wwv_flow_api.id(183040317805173322)
,p_name=>'PARENT_BOM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARENT_BOM_NO'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_api.id(183040376075173323)
,p_name=>'OPERDTL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERDTL_NO'
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
 p_id=>wwv_flow_api.id(183040491146173324)
,p_name=>'NO_OF_PRD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_PRD'
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
 p_id=>wwv_flow_api.id(183040601882173325)
,p_name=>'REJ_TRN_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REJ_TRN_NO'
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
 p_id=>wwv_flow_api.id(183040676482173326)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(183040780619173327)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_api.id(183040884848173328)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>380
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
 p_id=>wwv_flow_api.id(183040953830173329)
,p_name=>'SL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>360
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
 p_id=>wwv_flow_api.id(183041041095173330)
,p_name=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUSCD'
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
 p_id=>wwv_flow_api.id(183041147301173331)
,p_name=>'SUBQUNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBQUNTY'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_api.id(183041292363173332)
,p_name=>'SUBPRTCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBPRTCD'
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
 p_id=>wwv_flow_api.id(183041372476173333)
,p_name=>'SUBCOSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBCOSCD'
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
 p_id=>wwv_flow_api.id(183041463681173334)
,p_name=>'SUBWARCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBWARCD'
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
 p_id=>wwv_flow_api.id(183041540874173335)
,p_name=>'SUBCTFLG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBCTFLG'
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
 p_id=>wwv_flow_api.id(183041694996173336)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
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
 p_id=>wwv_flow_api.id(183041791734173337)
,p_name=>'BATCHNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>400
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':P1512_BATCH'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(183041885965173338)
,p_name=>'QA_REFERENCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QA_REFERENCE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>340
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
 p_id=>wwv_flow_api.id(183042000266173339)
,p_name=>'SLSOFRNO_FK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SLSOFRNO_FK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>390
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
 p_id=>wwv_flow_api.id(183042098640173340)
,p_name=>'DESIGNFG_NO_FK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESIGNFG_NO_FK'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_api.id(183042195168173341)
,p_name=>'TGT_FG_ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TGT_FG_ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>350
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
 p_id=>wwv_flow_api.id(183042230516173342)
,p_name=>'UPDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>320
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_api.id(67474323209691399)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(183063906926226593)
,p_name=>'MACHINE_HOUR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_HOUR'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>420
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
 p_id=>wwv_flow_api.id(183063967788226594)
,p_name=>'MACHINE_COST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_COST'
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
 p_id=>wwv_flow_api.id(183064026112226595)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(183038391282173303)
,p_internal_uid=>145883524156492809
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
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
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>false
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(183069743747226736)
,p_interactive_grid_id=>wwv_flow_api.id(183038391282173303)
,p_static_id=>'396076'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(183069855347226736)
,p_report_id=>wwv_flow_api.id(183069743747226736)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183070358576226738)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(183038427278173304)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183070869196226740)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(183038537218173305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183071391765226740)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(183038717484173306)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183071864525226741)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(183038799023173307)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183072351689226743)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(183038906235173308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183072882471226744)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(183038956889173309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183073403783226744)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(183039045133173310)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183073836945226746)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(183039172761173311)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183074342092226747)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(183039220236173312)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183074870332226749)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(183039342996173313)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183075371914226749)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(183039449949173314)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183075824842226750)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(183039614095173315)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183076396237226752)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(183039658627173316)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>162
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183076846578226754)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(183039786378173317)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183077382712226754)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(183039887658173318)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183077900464226755)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(183039949548173319)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183078357381226757)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(183040090651173320)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183078895748226757)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(183040192315173321)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183079345034226758)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(183040317805173322)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183079897073226761)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(183040376075173323)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>447
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183080399042226763)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(183040491146173324)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183080899248226764)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(183040601882173325)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183081330362226764)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(183040676482173326)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183081821026226766)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(183040780619173327)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183082408030226768)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(183040884848173328)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183082894998226769)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(183040953830173329)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183083397533226769)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(183041041095173330)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183083871954226771)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(183041147301173331)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183084371580226772)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(183041292363173332)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183084905501226774)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(183041372476173333)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183085357787226775)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(183041463681173334)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183085872816226777)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(183041540874173335)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183086341286226779)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(183041694996173336)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183086907674226779)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(183041791734173337)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183087396337226780)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(183041885965173338)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183087820969226782)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(183042000266173339)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183088359499226783)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(183042098640173340)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183088901010226783)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(183042195168173341)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183089379570226785)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(183042230516173342)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183089845132226786)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(183063906926226593)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183090377075226788)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(183063967788226594)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(183106627655319142)
,p_view_id=>wwv_flow_api.id(183069855347226736)
,p_display_seq=>42
,p_column_id=>wwv_flow_api.id(183064026112226595)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(187050840132477201)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_api.id(187053018429477222)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(65775596847129324)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(65775429003129322)
,p_button_name=>'btn_src'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68001853650548915)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(65775429003129322)
,p_button_name=>'btn_send'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Req'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:1515:&SESSION.::&DEBUG.:RP:P1515_SALESOFFER_NEW,P1515_WARECODE_FORM,P1515_UPDOCNUMBR:&P1512_SALESOFFER_NEW.,&P1512_WARECODE_FROM.,&P1512_UPDOCNUMBR.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68001553584548912)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(65775429003129322)
,p_button_name=>'btn_rcv_rec'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'RM Receive'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68004687144548944)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_api.id(187050840132477201)
,p_button_name=>'btn_send_pro'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Execute'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37367069824335024)
,p_name=>'P1512_DOCNUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37367255685335026)
,p_name=>'P1512_COMPCODE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37367509303335028)
,p_name=>'P1512_DESIGN_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65970317610431265)
,p_name=>'P1512_SALESOFFER_NEW'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_prompt=>'Offer NO.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65970740196431267)
,p_name=>'P1512_BATCH_NEW'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65971131300431267)
,p_name=>'P1512_ITEMCODE_NEW'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65971526306431267)
,p_name=>'P1512_WARECODE_FROM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_prompt=>'Warehouse'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65971928870431267)
,p_name=>'P1512_WARECODE_TO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65972340506431267)
,p_name=>'P1512_PROCESS_NO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65972689653431267)
,p_name=>'P1512_UPDOCNUMBR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_prompt=>'Select Batch Docnumber'
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
 p_id=>wwv_flow_api.id(65973769538431267)
,p_name=>'P1512_COMPLETE_QTY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65974244477431267)
,p_name=>'P1512_INPROGRESS_QTY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65974577106431267)
,p_name=>'P1512_REMAIN_QTY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66613118136075938)
,p_name=>'P1512_TARGET_QTY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(67476925680691425)
,p_name=>'P1512_QUANTITY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68001428558548911)
,p_name=>'P1512_REQ_NO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69277407796166031)
,p_name=>'P1512_RCVDOC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(187050840132477201)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(69278453199166041)
,p_tabular_form_region_id=>wwv_flow_api.id(66613670557075944)
,p_validation_name=>'not-nul'
,p_validation_sequence=>10
,p_validation=>'BATCH_START_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'BATCH_START_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66012352345431288)
,p_name=>'get_value_new'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1512_SALESOFFER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66013350513431288)
,p_event_id=>wwv_flow_api.id(66012352345431288)
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
'     INTO :P1512_ITEMCODE_NEW,',
'          :P1512_REMAIN_QTY,',
'          :P1512_TARGET_QTY,',
'          :P1512_COMPLETE_QTY,',
'          :P1512_INPROGRESS_QTY,',
'          :P1512_BATCH_NEW,',
'          :P1512_PROCESS_NO',
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
'          AND a.SLSOFRNO = :P1512_SALESOFFER_NEW;',
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
,p_attribute_02=>'P1512_SALESOFFER'
,p_attribute_03=>'P1512_ITEMCODE_NEW,P1512_REMAIN_QTY,P1512_COMPLETE_QTY,P1512_INPROGRESS_QTY,P1512_PROCESS_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66012852976431288)
,p_event_id=>wwv_flow_api.id(66012352345431288)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   /*SELECT D.WARECODE',
'     INTO :P1512_WARECODE_FROM',
'     FROM prdepartment d, prprocess c',
'    WHERE     D.COMPCODE = C.COMPCODE',
'          AND D.DEPT_NO = C.DEPT_NO',
'          AND D.COMPCODE = :compcode',
'          AND C.PROCESS_NO = :P1512_PROCESS_NO;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      :P1512_WARECODE_FROM := ''P01'';',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      :P1512_WARECODE_FROM := ''P01'';',
'   WHEN OTHERS',
'   THEN',
'      :P1512_WARECODE_FROM := ''P01'';*/',
'      null;',
'END;'))
,p_attribute_02=>'P1512_PROCESS_NO'
,p_attribute_03=>'P1512_WARECODE_FROM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65775210626129320)
,p_name=>'New'
,p_event_sequence=>200
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65775285779129321)
,p_event_id=>wwv_flow_api.id(65775210626129320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''td[headers="Process name"]'').each(function() {',
'     $(this).closest(''tr'').find(''td'').css({"color":"red";"font-size":12});',
'});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66613425187075941)
,p_name=>'chexk_qty'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1512_TARGET_QTY_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66613562613075942)
,p_event_id=>wwv_flow_api.id(66613425187075941)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P1512_INPROGRESS_QTY = :P1512_TARGET_QTY AND :P1512_REMAIN_QTY > 0 then',
'  :P1512_TARGET_QTY_1 := 0;',
'  raise_application_error(-20003,''Already Full Production Started'');',
'end if;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69277943104166036)
,p_name=>'set_doc'
,p_event_sequence=>220
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(66613670557075944)
,p_triggering_element=>'DOCNUMBR'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'DOCNUMBR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69278053926166037)
,p_event_id=>wwv_flow_api.id(69277943104166036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1512_UPDOCNUMBR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69278552829166042)
,p_name=>'check_not_null'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(68001853650548915)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69278644076166043)
,p_event_id=>wwv_flow_api.id(69278552829166042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :BATCH_START_DATE is null then',
' raise_application_error(-200005,''Batch cannot be start yet'');',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(65844654077133714)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert_nmstkrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' vdoc varchar2(100);',
'begin ',
'/*dpr_insert_main_prbomdtl(:compcode,:P1512_SALESOFFER_NEW,:P1512_WARECODE_TO,:P1512_WARECODE_FORM,:APP_USER,vdoc);',
'',
'if sql%notfound then',
' raise_application_error(-20001,''Cannot insert data'');',
'end if;*/',
'null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(68001853650548915)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(65844719395133715)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'RESET'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CLEAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66613020969075937)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert_prbommm'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P1512_QUANTITY > 0 then',
'           BEGIN',
'            SELECT  c.PROCESS_NO',
'              INTO  :P1512_PROCESS_NO',
'              FROM prdepartment d, prprocess c, PRPROCESSRGT g',
'             WHERE     D.COMPCODE = C.COMPCODE',
'                   AND D.DEPT_NO = C.DEPT_NO',
'                   AND G.PROCESS_NO = C.PROCESS_NO',
'                   AND D.COMPCODE = :compcode',
'                   AND G.USER_CODE = :APP_USER;',
'         EXCEPTION',
'            WHEN NO_DATA_FOUND',
'            THEN',
'               :P1509_WARECODE_FROM := ''P01'';',
'            WHEN TOO_MANY_ROWS',
'            THEN',
'               :P1509_WARECODE_FROM := ''P01'';',
'            WHEN OTHERS',
'            THEN',
'               :P1509_WARECODE_FROM := ''P01'';',
'         END;',
'dpr_insert_prbom_batch (',
'   :compcode, ',
'   :P1512_ITEMCODE_NEW,',
'   :P1512_SALESOFFER_NEW,',
'   :APP_USER,',
'   :P1512_BATCH_NEW,',
'   :P1512_QUANTITY,',
'   :P1512_WARECODE_FROM,',
'   :P1512_UPDOCNUMBR);',
'   commit;',
' IF SQL%FOUND THEN',
'    raise_application_error(-20006,''Production raise successfully.......'');',
' END IF;',
'END IF;',
'  BEGIN',
'      SELECT NVL (SUM (TARGET_QTY), 0)',
'        INTO :P1512_QUANTITY',
'        FROM prbom_batch b',
'       WHERE B.COMPCODE = :compcode',
'             AND B.TGT_FG_ITEMCODE =',
'                    NVL (:P1512_ITEMCODE_NEW, b.TGT_FG_ITEMCODE)',
'             AND B.BATCH_NO = :P1512_BATCH_NEW',
'             AND B.WARECODE = NVL (:P1512_WARECODE_FROM, b.WARECODE)',
'             AND B.SLSOFRNO_FK = NVL (:P1512_SALESOFFER_NEW, B.SLSOFRNO_FK);',
'   END;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(68004687144548944)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68137035591443426)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Receive_insert_nmstkrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'dpr_insert_main_prbomdtl_rcv(:compcode,:P1512_SALESOFFER_NEW,:P1512_WARECODE_FROM,:APP_USER,:P1512_UPDOCNUMBR);',
'',
'if sql%notfound then',
' raise_application_error(-20002,''Cannot receive data into nmstkrec'');',
'end if;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(68001553584548912)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68427089439352497)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(183038304340173302)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Process Information - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69276526731166022)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(66613670557075944)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Batch Information - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69277096303166028)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(182899088607802824)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Raw Material Information - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69499049423740746)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Issue_nmstkrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'/*dpr_insert_prbomdtl_rcviss(:compcode,:P1512_SALESOFFER_NEW,:P1512_WARECODE_FROM,:APP_USER);',
'',
'if sql%notfound then',
' raise_application_error(-20003,''Cannot issue data in nmstkrec'');',
'end if;*/',
'null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(68001553584548912)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66613183001075939)
,p_process_sequence=>90
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert_production_before'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select DESIGN_NO into :P1512_DESIGN_NO from prdesign where TGT_FG_ITEMCODE=:P1512_ITEMCODE_NEW;',
'',
'end;',
'BEGIN',
'   IF :P1512_WARECODE_FROM IS NULL',
'   THEN',
'      BEGIN',
'         SELECT  c.PROCESS_NO',
'           INTO  :P1512_PROCESS_NO',
'           FROM prdepartment d, prprocess c, PRPROCESSRGT g',
'          WHERE     D.COMPCODE = C.COMPCODE',
'                AND D.DEPT_NO = C.DEPT_NO',
'                AND G.PROCESS_NO = C.PROCESS_NO',
'                AND D.COMPCODE = :compcode',
'                AND G.USER_CODE = :APP_USER;',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            :P1509_WARECODE_FROM := ''P01'';',
'         WHEN TOO_MANY_ROWS',
'         THEN',
'            :P1509_WARECODE_FROM := ''P01'';',
'         WHEN OTHERS',
'         THEN',
'            :P1509_WARECODE_FROM := ''P01'';',
'      END;',
'   END IF;',
'/*    begin',
'dpr_allrawmaterial(NULL,',
'                                              NULL,',
'                                              :COMPCODE ,',
'                                              ''BH'', ',
'                                              1 , ',
'                                              TRUNC(SYSDATE) , ',
'                                              :P1512_ITEMCODE_NEW , ',
'                                              :P1512_WARECODE_FROM ,',
'                                              :P1512_SALESOFFER_NEW ,',
'                                             :APP_USER,',
'                                             :P1512_BATCH_NEW,',
'                                             :P1512_DESIGN_NO);',
'                                              COMMIT;',
' end;*/',
'',
'  /* IF NVL (:P1512_INPROGRESS_QTY, 0) < NVL (:P1512_TARGET_QTY, 0)',
'      AND NVL (:P1512_REMAIN_QTY, 0) > 0',
'   THEN',
'   --:P1512_TEST:=:P1512_UPDOCNUMBR;',
'                                           ',
'                                            ',
'      dpr_insert_prbom_batch_FIRST (:compcode,',
'                                    :P1512_ITEMCODE_NEW,',
'                                    :P1512_SALESOFFER_NEW,',
'                                    :APP_USER,',
'                                    :P1512_BATCH_NEW,',
'                                    :P1512_REMAIN_QTY,',
'                                    :P1512_WARECODE_FROM,',
'                                    :P1512_DOCNUMBER);',
'      COMMIT;',
'',
'      IF SQL%FOUND',
'      THEN',
'         raise_application_error (-20006,',
'                                  ''Production raise successfully.......'');',
'      END IF;',
'   ELSIF :P1512_INPROGRESS_QTY = :P1512_TARGET_QTY AND :P1512_REMAIN_QTY > 0',
'   THEN',
'      :P1512_REMAIN_QTY := 0;',
'      raise_application_error (-20004, ''Already Full Production Started'');',
'   ELSIF :P1512_TARGET_QTY < :P1512_REMAIN_QTY',
'   THEN',
'      :P1512_REMAIN_QTY := 0;',
'      raise_application_error (',
'         -20002,',
'         ''Ramain Qty cannot be greater then target quantity...'');',
'   END IF;*/',
'',
'   /*BEGIN',
'      SELECT MAX (DOCNUMBR)',
'        INTO :P1512_UPDOCNUMBR',
'        FROM prbom_batch b',
'       WHERE B.COMPCODE = :compcode',
'             AND B.TGT_FG_ITEMCODE =',
'                    NVL (:P1512_ITEMCODE_NEW, b.TGT_FG_ITEMCODE)',
'             AND B.BATCH_NO = :P1512_BATCH_NEW',
'             AND NVL (B.WARECODE, ''W'') =',
'                    NVL (:P1512_WARECODE_FROM, NVL (B.WARECODE, ''W''))',
'             AND NVL (B.RAW_ITEM_CONSUMPTION_FLAG, 0) = 0',
'             AND B.SLSOFRNO_FK = NVL (:P1512_SALESOFFER_NEW, B.SLSOFRNO_FK);',
'   END;*/',
'',
'   BEGIN',
'      SELECT NVL (SUM (TARGET_QTY), 0)',
'        INTO :P1512_QUANTITY',
'        FROM prbom_batch b',
'       WHERE B.COMPCODE = :compcode',
'             AND B.TGT_FG_ITEMCODE =',
'                    NVL (:P1512_ITEMCODE_NEW, b.TGT_FG_ITEMCODE)',
'             AND B.BATCH_NO = :P1512_BATCH_NEW',
'             AND B.WARECODE = NVL (:P1512_WARECODE_FROM, b.WARECODE)',
'             AND B.SLSOFRNO_FK = NVL (:P1512_SALESOFFER_NEW, B.SLSOFRNO_FK)',
'             AND b.docnumbr = :P1512_UPDOCNUMBR;',
'   END;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67660091983048440)
,p_process_sequence=>100
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   CURSOR c_workseq',
'   IS',
'      SELECT NVL (MIN (R.WORKSEQ), 0)',
'        FROM PRDESIGNFG R, PRBOM B',
'       WHERE R.DESIGN_NO IN',
'                (SELECT D.DESIGN_NO',
'                   FROM PRDESIGN D',
'                  WHERE D.TGT_FG_ITEMCODE = :P1512_ITEMCODE_NEW',
'                        AND D.DESIGN_NO = R.DESIGN_NO)',
'             AND R.DESIGNFG_NO = B.DESIGNFG_NO_FK',
'             AND NVL (B.RAW_ITEM_CONSUMPTION_FLAG, 0) = 0',
'             AND R.COMPCODE = :COMPCODE',
'             AND B.BATCHNO = :P1512_BATCH_NEW',
'             AND R.COMPCODE = B.COMPCODE',
'             AND R.ITEMCODE = B.FG_ITEMCODE;',
'',
'',
'   CURSOR s_serial',
'   IS',
'      SELECT NVL (R.WORKSEQ, 0)',
'        FROM PRDESIGNFG R',
'       WHERE R.DESIGN_NO IN',
'                (SELECT D.DESIGN_NO',
'                   FROM PRDESIGN D',
'                  WHERE D.TGT_FG_ITEMCODE = :P1512_ITEMCODE_NEW',
'                        AND D.DESIGN_NO = R.DESIGN_NO)',
'             AND R.COMPCODE = :COMPCODE',
'             AND r.OPERDTL_NO IN',
'                    (SELECT D.OPERDTL_NO',
'                       FROM PROPERDTL d',
'                      WHERE D.COMPCODE = :COMPCODE',
'                            AND D.PROCESS_NO = :P1512_PROCESS_NO)',
'             AND R.COMPCODE = :COMPCODE;',
'',
'   MINSEQ   NUMBER;',
'   serial   NUMBER;',
'BEGIN',
'   OPEN c_workseq;',
'',
'   FETCH c_workseq INTO MINSEQ;',
'',
'   CLOSE c_workseq;',
'',
'   OPEN s_serial;',
'',
'   FETCH s_serial INTO serial;',
'',
'   CLOSE s_serial;',
'',
'   IF MINSEQ < serial AND MINSEQ > 0',
'   THEN',
'        RAISE_APPLICATION_ERROR (-20001,',
'                               ''First complete the previous process..'');',
'   END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Previous process not complete'
);
wwv_flow_api.component_end;
end;
/
