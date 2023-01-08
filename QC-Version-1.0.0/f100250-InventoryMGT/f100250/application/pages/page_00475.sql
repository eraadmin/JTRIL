prompt --application/pages/page_00475
begin
--   Manifest
--     PAGE: 00475
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
 p_id=>475
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Stock Adjustment'
,p_page_mode=>'MODAL'
,p_step_title=>'Stock Adjustment'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Report-colHead{',
'    font-size: 14px;',
'    /*line-height: 10px;',
'    color: black;',
'    transition: background-color .1s;*/',
'    color: black;',
'    font-weight:bold;',
'    border-right-width: 0;',
'    border: 1px solid grey;  ',
'	    padding: 3px;',
'	    BACKGROUND-COLOR: lightgrey;',
'    text-align: center;',
'    vertical-align: middle;--baseline;',
'}',
'',
'.t-Report-cell{',
'    font-size: 12px;',
'    /*line-height: 10px;*/',
'    border-right-width: 0;',
'    border: 1px solid grey;  ',
'	    padding: 3px;',
'	    --BACKGROUND-COLOR: lightgrey;',
'    transition: background-color .1s;',
'	    color: black;',
'    	--font-family: calibri;',
'}',
'',
'.t-Report-tableWrap{',
'    border: 1px solid black;',
'}'))
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_page_comment=>'without wizard page no 76'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20200916191849'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(75527113754811841)
,p_name=>'Stock Adjustment'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 6/11/2020 9:02:06 PM (QP5 v5.149.1003.31008) */',
'SELECT WARECODE,',
'       WARENAME,',
'       ITEMCODE,',
'       ITEM_NAME,',
'       BATCHNUM,',
'       CLOSING_BALANCE,',
'       CLBALQTY,',
'       APEX_ITEM.CHECKBOX (1, ITEMCODE) CONF',
'  FROM (SELECT i.warecode,',
'               (SELECT waredesc',
'                  FROM nmwhsmas',
'                 WHERE compcode = :compcode AND warecode = i.warecode)',
'                  Warename,',
'               i.itemcode,',
'               (SELECT DISTINCT a.itemcode || ''-'' || itemdes2',
'                  FROM nmitemas a',
'                 WHERE a.compcode = :compcode AND a.itemcode = w.itemcode)',
'                  item_name,',
'               i.batchnum,',
'               i.closing_balance,',
'               w.clbalqty',
'          FROM nmstock_ledger i,',
'               nmwhimas w,',
'               (  SELECT compcode,',
'                         warecode,',
'                         itemcode,',
'                         batchnum,',
'                         MAX (TRUNC (DOCTDATE)) doctdate',
'                    FROM NMSTOCK_LEDGER s',
'                   WHERE warecode IN',
'                            (SELECT warecode',
'                               FROM nmwhsmas A',
'                              WHERE     A.compcode = s.compcode',
'                                    AND A.SRVCWFLG = ''N''',
'                                    AND A.warecode = :P475_WARECODE --nvl(:crq2.s_whscde,warecode)',
'                                    AND A.Compcode = :COMPCODE --:crq1.cacmpcde',
'                                                              )',
'                GROUP BY compcode,',
'                         warecode,',
'                         itemcode,',
'                         batchnum) s',
'         WHERE     i.compcode = s.compcode',
'               AND i.itemcode = s.itemcode',
'               AND i.batchnum = s.batchnum',
'               AND i.warecode = s.warecode',
'               AND TRUNC (i.doctdate) = TRUNC (s.doctdate)',
'               AND i.compcode = w.compcode',
'               AND i.warecode = w.warecode',
'               AND i.itemcode = w.itemcode',
'               AND i.batchnum = w.batchnum',
'               AND w.warecode = :P475_WARECODE --nvl(:crq2.s_whscde,w.warecode)',
'               AND w.batchnum = :P475_BATCHNUM',
'               AND I.Compcode = :COMPCODE',
'               AND i.CLOSING_BALANCE <> w.clbalqty)'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75527316616811843)
,p_query_column_id=>1
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75528026196811850)
,p_query_column_id=>2
,p_column_alias=>'WARENAME'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75527487820811844)
,p_query_column_id=>3
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75893410176669801)
,p_query_column_id=>4
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Item Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75527532699811845)
,p_query_column_id=>5
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>5
,p_column_heading=>'Batch No'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75527683635811846)
,p_query_column_id=>6
,p_column_alias=>'CLOSING_BALANCE'
,p_column_display_sequence=>6
,p_column_heading=>'Calculated Closing Balance'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75527773907811847)
,p_query_column_id=>7
,p_column_alias=>'CLBALQTY'
,p_column_display_sequence=>7
,p_column_heading=>'Current Stock'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75527878260811848)
,p_query_column_id=>8
,p_column_alias=>'CONF'
,p_column_display_sequence=>8
,p_column_heading=>'Update'
,p_column_format=>'PCT_GRAPH:::'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137628351262790330)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(317758001977758990)
,p_plug_name=>'Doc Info'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(406535846667715533)
,p_plug_name=>'Warehouse Data'
,p_region_name=>'nmissreq'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select i.ROWID, i.warecode,i.itemcode,i.batchnum,i.closing_balance,w.clbalqty, '''' updt ',
'    from nmstock_ledger i,nmwhimas w,',
'                                   (SELECT compcode,warecode,itemcode,batchnum,MAX(TRUNC(DOCTDATE))doctdate ',
'                                   FROM NMSTOCK_LEDGER s',
'                                   where warecode in (select warecode ',
'                                                      from nmwhsmas A',
'                                                      where A.compcode=s.compcode ',
'                                                      and A.SRVCWFLG=''N''',
'                                                      and A.warecode=:P475_WARECODE--nvl(:crq2.s_whscde,warecode)',
'                                                      And A.Compcode=:COMPCODE--:crq1.cacmpcde',
'                                                      )',
'                                  group by compcode,warecode,itemcode,batchnum',
'                                  )s',
'  where i.compcode=s.compcode',
'  and i.itemcode=s.itemcode',
'    and i.batchnum=s.batchnum',
'    and i.warecode=s.warecode',
'    and trunc(i.doctdate)=trunc(s.doctdate)',
'    and i.compcode=w.compcode',
'    and i.warecode=w.warecode',
'    and i.itemcode=w.itemcode',
'    and i.batchnum=w.batchnum',
'    and w.warecode=:P475_WARECODE--nvl(:crq2.s_whscde,w.warecode)',
'    and w.batchnum= :P475_BATCHNUM',
'    And I.Compcode=:COMPCODE',
'    and i.CLOSING_BALANCE <> w.clbalqty;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P475_WARECODE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_output_show_link=>'Y'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(75526128820811831)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ware House'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
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
 p_id=>wwv_flow_api.id(75526246125811832)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
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
 p_id=>wwv_flow_api.id(75526302787811833)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Batch No.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(75526408918811834)
,p_name=>'CLOSING_BALANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLOSING_BALANCE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Opening Balance'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_api.id(75526546090811835)
,p_name=>'CLBALQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLBALQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Closing Balance'
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
 p_id=>wwv_flow_api.id(75526624525811836)
,p_name=>'UPDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Updt'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:YES;Y,NO;N'
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
 p_id=>wwv_flow_api.id(75526791732811837)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(75526841676811838)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(75526994273811839)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(75526058066811830)
,p_internal_uid=>75526058066811830
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
,p_show_toolbar=>true
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
 p_id=>wwv_flow_api.id(75850590535360625)
,p_interactive_grid_id=>wwv_flow_api.id(75526058066811830)
,p_static_id=>'396020'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(75850641910360625)
,p_report_id=>wwv_flow_api.id(75850590535360625)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(75851112100360626)
,p_view_id=>wwv_flow_api.id(75850641910360625)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(75526128820811831)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(75851620387360635)
,p_view_id=>wwv_flow_api.id(75850641910360625)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(75526246125811832)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(75852132783360639)
,p_view_id=>wwv_flow_api.id(75850641910360625)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(75526302787811833)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(75852611626360642)
,p_view_id=>wwv_flow_api.id(75850641910360625)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(75526408918811834)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(75853170928360643)
,p_view_id=>wwv_flow_api.id(75850641910360625)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(75526546090811835)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(75853678033360646)
,p_view_id=>wwv_flow_api.id(75850641910360625)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(75526624525811836)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(75857519436371817)
,p_view_id=>wwv_flow_api.id(75850641910360625)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(75526791732811837)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(75858057629371820)
,p_view_id=>wwv_flow_api.id(75850641910360625)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(75526841676811838)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75822813062319814)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(137628351262790330)
,p_button_name=>'Process'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75823281943319814)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(137628351262790330)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'BACK'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:455:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75806080716319792)
,p_name=>'P475_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(317758001977758990)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75806416320319793)
,p_name=>'P475_WARNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(317758001977758990)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT warecode||''-''||waredesc',
'  FROM nmwhsmas',
' WHERE compcode = :compcode ',
'   AND warecode = :P475_WARECODE;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Ware House'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75806821216319793)
,p_name=>'P475_BATCHNUM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(317758001977758990)
,p_prompt=>'Batch No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT (batchnum) d, batchnum r',
'  FROM nmstkmas',
' WHERE compcode = :compcode',
'   AND itemcode = NVL ( :P475_ITEMCODE, itemcode)',
'   AND warecode = NVL ( :P475_WARECODE, warecode)',
'ORDER BY 1'))
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT (batchnum)',
'    FROM nmstkmas',
'   WHERE     compcode = :compcode',
'         AND itemcode = NVL ( :P475_ITEMCODE, itemcode)',
'         AND warecode = NVL ( :P475_WARECODE, warecode)',
'ORDER BY 1'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75807264630319795)
,p_name=>'P475_ITEMCODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(317758001977758990)
,p_prompt=>'Item Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'ITEM LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode||'' - ''||itemdes2 d, a.itemcode r ',
' FROM nmitemas a',
'WHERE compcode = :compcode ',
'  AND statuscd = ''ACT''',
'ORDER BY itemcode'))
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_api.id(75807696919319795)
,p_name=>'P475_COSTCODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(317758001977758990)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75808071204319795)
,p_name=>'P475_COSTDSC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(317758001977758990)
,p_prompt=>'Cost Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly="true"'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75808473398319795)
,p_name=>'P475_DOCDT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(317758001977758990)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75824862432319818)
,p_name=>'closeX'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75825356142319818)
,p_event_id=>wwv_flow_api.id(75824862432319818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'parent.$(''.ui-dialog-titlebar-close'').hide();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75825702715319818)
,p_name=>'refresh Warehouse data'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(53340596315043323)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75826278065319820)
,p_event_id=>wwv_flow_api.id(75825702715319818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(406535846667715533)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75826612981319820)
,p_name=>'set costdesc'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P475_WARECODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75827126157319820)
,p_event_id=>wwv_flow_api.id(75826612981319820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT costcode',
'  INTO :P475_COSTCODE',
'  FROM nmwhsmas',
' WHERE compcode = :COMPCODE',
' AND warecode = :P475_WARECODE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    NULL;',
'END;    ',
'',
'BEGIN',
' SELECT COSTCODE||''-''||COSTDESC',
'  INTO :P475_COSTDSC',
'  FROM syjobmas',
' WHERE compcode = :COMPCODE',
'   AND COSTCODE = :P475_COSTCODE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    NULL;',
'END;   '))
,p_attribute_02=>'P475_WARECODE,P475_COSTCODE'
,p_attribute_03=>'P475_COSTCODE,P475_COSTDSC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75827523999319820)
,p_name=>'Refresh on Dialog Closed'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(406535846667715533)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75828092248319821)
,p_event_id=>wwv_flow_api.id(75827523999319820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(406535846667715533)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75823635976319817)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'stock adjust'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   V_WARECODE   VARCHAR2 (45);',
'   V_ITEMCODE   VARCHAR2 (45);',
'   V_BATCHNUM   VARCHAR2 (45);',
'   V_CLSNBLNC   VARCHAR2 (45);',
'   V_CLBALQTY   VARCHAR2 (45);',
'BEGIN',
'   FOR m IN 1 .. APEX_APPLICATION.G_F01.COUNT',
'   LOOP',
'      SELECT WARECODE,',
'             ITEMCODE,',
'             BATCHNUM,',
'             CLOSING_BALANCE,',
'             CLBALQTY',
'        INTO V_WARECODE,',
'             V_ITEMCODE,',
'             V_BATCHNUM,',
'             V_CLSNBLNC,',
'             V_CLBALQTY',
'        FROM (SELECT i.warecode,',
'                     i.itemcode,',
'                     i.batchnum,',
'                     i.closing_balance,',
'                     w.clbalqty',
'                FROM nmstock_ledger i,',
'                     nmwhimas w,',
'                     (  SELECT compcode,',
'                               warecode,',
'                               itemcode,',
'                               batchnum,',
'                               MAX (TRUNC (DOCTDATE)) doctdate',
'                          FROM NMSTOCK_LEDGER s',
'                         WHERE warecode IN',
'                                  (SELECT warecode',
'                                     FROM nmwhsmas A',
'                                    WHERE     A.compcode = s.compcode',
'                                          AND A.SRVCWFLG = ''N''',
'                                          AND A.warecode = :P475_WARECODE ',
'                                          AND A.Compcode = :COMPCODE ',
'                                                                    )',
'                      GROUP BY compcode,',
'                               warecode,',
'                               itemcode,',
'                               batchnum) s',
'               WHERE     i.compcode = s.compcode',
'                     AND i.itemcode = s.itemcode',
'                     AND i.batchnum = s.batchnum',
'                     AND i.warecode = s.warecode',
'                     AND TRUNC (i.doctdate) = TRUNC (s.doctdate)',
'                     AND i.compcode = w.compcode',
'                     AND i.warecode = w.warecode',
'                     AND i.itemcode = w.itemcode',
'                     AND i.batchnum = w.batchnum',
'                     AND w.warecode = :P475_WARECODE ',
'                     AND w.batchnum = :P475_BATCHNUM',
'                     AND I.Compcode = :COMPCODE',
'                     AND I.itemcode = APEX_APPLICATION.G_F01 (m)',
'                     AND i.CLOSING_BALANCE <> w.clbalqty);',
'',
'      BEGIN',
'      ',
'         UPDATE nmwhimas',
'            SET clbalqty = V_CLSNBLNC',
'          WHERE     warecode = :p475_warecode',
'                AND batchnum = :p475_batchnum',
'                AND compcode = :compcode',
'                AND itemcode = APEX_APPLICATION.G_F01 (m);',
'                ',
'               --raise_application_error(-200134, APEX_APPLICATION.G_F01 (m)); ',
'      END;',
'   END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75822813062319814)
,p_process_success_message=>'Stock Adjusted successfully..'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75824085424319818)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Items'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75823281943319814)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75824431270319818)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75823281943319814)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75527012359811840)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(406535846667715533)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Warehouse Data - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75527919792811849)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :UPDT=''Y'' then',
'     update nmwhimas ',
'            set clbalqty=:CLOSING_BALANCE',
'            where warecode=:p475_warecode',
'            and batchnum=:p475_batchnum',
'            and compcode=:compcode',
'            and itemcode=:ITEMCODE;',
'    end if;',
'exception',
'        when others then ',
'        raise_application_error (-20014, SQLERRM);',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Stock adjustment Successful..'
);
wwv_flow_api.component_end;
end;
/
