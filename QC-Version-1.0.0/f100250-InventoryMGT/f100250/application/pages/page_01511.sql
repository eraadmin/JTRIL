prompt --application/pages/page_01511
begin
--   Manifest
--     PAGE: 01511
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
 p_id=>1511
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Pending Production List'
,p_page_mode=>'MODAL'
,p_step_title=>'Pending Production List'
,p_autocomplete_on_off=>'OFF'
,p_dialog_chained=>'N'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170531152446'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65858572195300236)
,p_plug_name=>'Pending Production List'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.PARTYCDE,',
'       a.Itemcode,',
'       NVL ( (a.apprqnty - (q.TARGET_QTY + q.Inprogress_qty)), a.apprqnty)',
'          Remaining_Quantity,',
'       NVL (a.apprqnty, 0) Request_Quantity,',
'       NVL (q.TARGET_QTY, 0) Complete_quantity,',
'       NVL (q.Inprogress_qty, 0) Inprogress_Quantity,',
'       a.BATCHNUM,',
'       a.SLSOFRNO ,a.WARECODE',
'  FROM nmslsofr a,',
'       sycompty b,',
'       (SELECT TARGET_QTY,',
'               Inprogress_qty,',
'               SLSOFRNO_FK,',
'               TGT_FG_ITEMCODE,',
'               PROCESS_NO',
'          FROM (  SELECT NVL (SUM (p.TARGET_QTY), 0) TARGET_QTY,',
'                         0 Inprogress_qty,',
'                         p.SLSOFRNO_FK,',
'                         p.TGT_FG_ITEMCODE,',
'                         B.PROCESS_NO',
'                    FROM prbom_batch p, prbom b',
'                   WHERE     NVL (P.RAW_ITEM_CONSUMPTION_FLAG, 0) = 1',
'                         AND P.COMPCODE = :compcode',
'                         AND p.compcode = b.compcode',
'                         AND P.DOCNUMBR = b.UPDOCNUM',
'                GROUP BY p.SLSOFRNO_FK, p.TGT_FG_ITEMCODE, b.PROCESS_NO',
'                UNION ALL',
'                  SELECT 0 TARGET_QTY,',
'                         NVL (SUM (t.TARGET_QTY), 0) Inprogress_qty,',
'                         t.SLSOFRNO_FK,',
'                         t.TGT_FG_ITEMCODE,',
'                         E.PROCESS_NO',
'                    FROM prbom_batch t, prbom e',
'                   WHERE     NVL (t.RAW_ITEM_CONSUMPTION_FLAG, 0) = 0',
'                         AND t.COMPCODE = :compcode',
'                         AND t.compcode = e.compcode',
'                         AND t.DOCNUMBR = e.UPDOCNUM',
'                GROUP BY t.SLSOFRNO_FK, t.TGT_FG_ITEMCODE, e.PROCESS_NO)) q,',
'       (SELECT d.COMPCODE, D.WARECODE, c.PROCESS_NO',
'          FROM prdepartment d, prprocess c, PRPROCESSRGT g',
'         WHERE     D.COMPCODE = C.COMPCODE',
'               AND D.DEPT_NO = C.DEPT_NO',
'               And G.PROCESS_NO = C.PROCESS_NO',
'               AND D.COMPCODE = :compcode',
'               and G.USER_CODE = :APP_USER ) w',
' WHERE     a.statuscd = ''APR''',
'       AND q.SLSOFRNO_FK(+) = a.SLSOFRNO',
'       AND a.compcode = b.compcode',
'       AND a.partycde = b.partycde',
'       AND q.PROCESS_NO = w.PROCESS_NO(+)',
'       AND a.compcode = :compcode',
'       AND a.ITEMCODE = NVL (q.TGT_FG_ITEMCODE, a.ITEMCODE)',
'      -- AND NVL (a.apprqnty, 0) > NVL (q.TARGET_QTY, 0)',
'       '))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(37367392534335027)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Warecode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_api.id(65773516626129303)
,p_name=>'REMAINING_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAINING_QUANTITY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Remaining quantity'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(65773741325129305)
,p_name=>'Target'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:1512:&SESSION.::&DEBUG.:RP,1512:P1512_SALESOFFER_NEW,P1512_ITEMCODE_NEW,P1512_BATCH_NEW,P1512_WARECODE_FROM,P1512_COMPLETE_QTY,P1512_PROCESS_NO,P1512_TARGET_QTY,P1512_REMAIN_QTY:&SLSOFRNO.,&ITEMCODE.,&BATCHNUM.,&WARECODE.,&COMPLETE_QUANT'
||'ITY.,&PROCESS_NO.,&REQUEST_QUANTITY.,&REMAINING_QUANTITY.'
,p_link_text=>'Batch Create'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(65773852901129306)
,p_name=>'SLSOFRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SLSOFRNO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Referance'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(65861551985300269)
,p_name=>'PARTYCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARTYCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Buyer'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.PRTYNAME n, C.PARTYCDE',
'from sycompty c',
'where C.COMPCODE = :compcode;'))
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(65862111449300270)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.ITEMDES1 n, C.ITEMCODE',
'from nmitemas  c',
'where C.COMPCODE = :compcode;'))
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(65863365862300270)
,p_name=>'REQUEST_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST_QUANTITY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Order Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_03=>'center'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(65863894484300272)
,p_name=>'COMPLETE_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPLETE_QUANTITY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Complete'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_03=>'center'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(65864469189300281)
,p_name=>'INPROGRESS_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INPROGRESS_QUANTITY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'In-Progress'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_03=>'center'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(65865159335300283)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Style'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>150
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(65859096879300241)
,p_internal_uid=>28704229753619747
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
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
 p_id=>wwv_flow_api.id(65859550931300242)
,p_interactive_grid_id=>wwv_flow_api.id(65859096879300241)
,p_static_id=>'396072'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(65859647838300242)
,p_report_id=>wwv_flow_api.id(65859550931300242)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37798776932507619)
,p_view_id=>wwv_flow_api.id(65859647838300242)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(37367392534335027)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(65861952326300269)
,p_view_id=>wwv_flow_api.id(65859647838300242)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(65861551985300269)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>131
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(65862544378300270)
,p_view_id=>wwv_flow_api.id(65859647838300242)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(65862111449300270)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(65863721873300272)
,p_view_id=>wwv_flow_api.id(65859647838300242)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(65863365862300270)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(65864343624300281)
,p_view_id=>wwv_flow_api.id(65859647838300242)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(65863894484300272)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(65864871236300283)
,p_view_id=>wwv_flow_api.id(65859647838300242)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(65864469189300281)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(65865526110300283)
,p_view_id=>wwv_flow_api.id(65859647838300242)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(65865159335300283)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(65874804672407321)
,p_view_id=>wwv_flow_api.id(65859647838300242)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(65773516626129303)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>135
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(65894791275204071)
,p_view_id=>wwv_flow_api.id(65859647838300242)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(65773741325129305)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(65895312587204074)
,p_view_id=>wwv_flow_api.id(65859647838300242)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(65773852901129306)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.component_end;
end;
/
