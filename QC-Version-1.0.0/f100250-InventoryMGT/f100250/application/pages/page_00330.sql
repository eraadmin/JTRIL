prompt --application/pages/page_00330
begin
--   Manifest
--     PAGE: 00330
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
 p_id=>330
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Debit Note Entry Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Debit Note Entry Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_attributes=>'open:function(event,ui){parent.$(''.ui-button.ui-widget.ui-state-default.ui-corner-all.ui-button-icon-only.ui-dialog-titlebar-close'').hide();}'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180207172211'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128492426208751711)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(358733504179507204)
,p_plug_name=>'Debit Note Entry Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT Accountcd_list,',
'       DOCNUMBR||''/''||DOCTTYPE||''/''||SUBTTYPE||''/''||to_char(DOCTDATE,''dd/mm/rrrr'') DOCNUMBR,',
'       DOCTDATE,',
'       COSTCODE,',
'       SUBLEDCD,',
'       SUBTTYPE,',
'       DOCTTYPE,',
'       DOCNUMBR DOCNUMBR_1,',
'       wm_concat(NARATION) NARATION,',
'       sum(debit_amount) Debit,',
'       sum(credit_amount) Credit,',
'       min(TIMSTAMP) TIMSTAMP,',
'       ''Edit'' link,',
'       ''Print'' print,',
'       ''acvouchr'' progname',
'       from (',
'SELECT actcd_lst.Accountcd_list,',
'       acct_det.DOCNUMBR,',
'       acct_det.DOCTDATE,',
'       acct_det.COSTCODE,',
'       acct_det.SUBTTYPE,',
'       acct_det.DOCTTYPE,',
'       acct_det.SUBLEDCD,',
'       acct_det.NARATION,',
'       acct_det.debit_amount,',
'       acct_det.credit_amount,',
'       acct_det.TIMSTAMP',
'  FROM (SELECT a.ACCTCODE,',
'               DOCNUMBR,',
'               DOCTDATE,',
'               COSTCODE,',
'               SUBLEDCD,',
'               NARATION,',
'               SUBTTYPE,',
'               DOCTTYPE,',
'               0 debit_amount,',
'               JVFCAMNT credit_amount,',
'               a.COMPCODE,',
'               a.TIMSTAMP',
'          FROM actrndtl a',
'         WHERE   a.DOCNUMBR IS NOT NULL',
'               AND a.compcode = :compcode',
'               AND a.DOCTTYPE = :P330_TRANTYPE',
'               AND a.SUBTTYPE = :P330_SUBTTYPE',
'               AND a.DBCRCODE = ''C''',
'        UNION ALL',
'        SELECT a.ACCTCODE,',
'               DOCNUMBR,',
'               DOCTDATE,',
'               COSTCODE,',
'               SUBLEDCD,',
'               NARATION,',
'               SUBTTYPE,',
'               DOCTTYPE,',
'               JVFCAMNT debit_amount,',
'               0 credit_amount,',
'               a.COMPCODE,',
'               a.TIMSTAMP',
'          FROM actrndtl a',
'         WHERE     a.DOCNUMBR IS NOT NULL',
'               AND a.compcode = :compcode',
'               AND a.DOCTTYPE = :P330_TRANTYPE',
'               AND a.SUBTTYPE = :P330_SUBTTYPE',
'               AND a.DBCRCODE = ''D'') acct_det,',
'       (    SELECT SUBSTR (SYS_CONNECT_BY_PATH (ACCTCODE_ls, ''; ''), 2)',
'                      Accountcd_list,',
'                   DOCNUMBR,',
'                   DOCTTYPE,',
'                   SUBTTYPE,',
'                   COMPCODE,',
'                   ACCTCODE',
'              FROM (SELECT case A.DBCRCODE when ''D'' then ''Debit'' when ''C'' then ''Credit'' end||'':''||C.ACCTNAME || ''-'' || a.ACCTCODE ACCTCODE_ls,',
'                           a.DOCNUMBR,',
'                           a.DOCTTYPE,',
'                           a.SUBTTYPE,',
'                           a.COMPCODE,',
'                            a.ACCTCODE,',
'                           COUNT (*) OVER (PARTITION BY DOCNUMBR) cnt,',
'                           ROW_NUMBER ()',
'                              OVER (PARTITION BY DOCNUMBR ORDER BY DOCNUMBR)',
'                              seq',
'                      FROM actrndtl a, sychrtac c',
'                     WHERE     a.compcode = c.COMPCODE',
'                           AND a.DOCNUMBR IS NOT NULL',
'                           AND A.ACCTCODE = C.ACCTCODE',
'                           AND a.compcode = :compcode',
'                           AND a.DOCTTYPE = :P330_TRANTYPE',
'                           AND a.SUBTTYPE = :P330_SUBTTYPE)',
'             WHERE seq = cnt',
'        START WITH seq = 1',
'        CONNECT BY PRIOR seq + 1 = seq AND PRIOR DOCNUMBR = DOCNUMBR) actcd_lst',
' WHERE     actcd_lst.docnumbr = acct_det.docnumbr',
'       AND actcd_lst.DOCTTYPE = acct_det.DOCTTYPE',
'       AND actcd_lst.SUBTTYPE = acct_det.SUBTTYPE',
'       AND actcd_lst.COMPCODE = acct_det.COMPCODE',
'    order by acct_det.TIMSTAMP desc)',
' group by Accountcd_list,',
'       DOCNUMBR,',
'       DOCTDATE,',
'       COSTCODE,',
'       SUBLEDCD,',
'       SUBTTYPE,',
'       DOCTTYPE',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(204770385277063673)
,p_name=>'ACCOUNTCD_LIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCOUNTCD_LIST'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Account Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>3999
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
 p_id=>wwv_flow_api.id(204770712940063676)
,p_name=>'DEBIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEBIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Debit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_api.id(204770762968063677)
,p_name=>'CREDIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREDIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Credit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_api.id(204771388535063683)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
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
 p_id=>wwv_flow_api.id(204771430992063684)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
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
 p_id=>wwv_flow_api.id(208156619761166897)
,p_name=>'NARATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NARATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Narration'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(208336802098339369)
,p_name=>'PRINT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRINT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP:P49_PROGNAME,P49_DOCTTYPE,P49_SUBTTYPE,P49_DOCNUMBR,P49_DOCTDATE:&PROGNAME.,&DOCTTYPE.,&SUBTTYPE.,&DOCNUMBR_1.,&DOCTDATE.'
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
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(208336850042339370)
,p_name=>'PROGNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROGNAME'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(208337038024339372)
,p_name=>'DOCNUMBR_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR_1'
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
 p_id=>wwv_flow_api.id(209285360441486670)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Timstamp'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
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
 p_id=>wwv_flow_api.id(278533718023993838)
,p_name=>'LINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:331:&SESSION.::&DEBUG.:RP:P331_DOCNUMBR,P331_TRNTYP,P331_SUBTYP:&DOCNUMBR_1.,&DOCTTYPE.,&SUBTTYPE.'
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
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(358736982150507232)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Doc Details'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>85
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
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(358737569416507235)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(358740040486507237)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Cost Center'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT j.costdesc S,j.costcode',
'  FROM syjobmas j',
' WHERE compcode = :COMPCODE',
' and j.COSTCODE in (select CABASECC  from sycstacc',
'where Upper(GRUPCODE) = UPPER(:APP_USER))'))
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
 p_id=>wwv_flow_api.id(358740639643507237)
,p_name=>'SUBLEDCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBLEDCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Customer'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prtyname CUSTNAME,partycde',
'    FROM sycompty',
'   WHERE compcode = :COMPCODE ',
'   AND NVL (partysts, 1) != 8',
'   ORDER BY 1'))
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
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(358733997833507214)
,p_internal_uid=>323395907795742812
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>600
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(358734393597507217)
,p_interactive_grid_id=>wwv_flow_api.id(358733997833507214)
,p_static_id=>'395789'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(358734473839507218)
,p_report_id=>wwv_flow_api.id(358734393597507217)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(205399973272914257)
,p_view_id=>wwv_flow_api.id(358734473839507218)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(204770385277063673)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(205426429490921721)
,p_view_id=>wwv_flow_api.id(358734473839507218)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(204770712940063676)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(205426954857921723)
,p_view_id=>wwv_flow_api.id(358734473839507218)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(204770762968063677)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(205466424594086942)
,p_view_id=>wwv_flow_api.id(358734473839507218)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(204771388535063683)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(205467136660086950)
,p_view_id=>wwv_flow_api.id(358734473839507218)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(204771430992063684)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(208308836767998088)
,p_view_id=>wwv_flow_api.id(358734473839507218)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(208156619761166897)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>250
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(208354933350617442)
,p_view_id=>wwv_flow_api.id(358734473839507218)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(208336802098339369)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>8
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(208355651754617444)
,p_view_id=>wwv_flow_api.id(358734473839507218)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(208336850042339370)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(208366435073760805)
,p_view_id=>wwv_flow_api.id(358734473839507218)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(208337038024339372)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209299398927707696)
,p_view_id=>wwv_flow_api.id(358734473839507218)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(209285360441486670)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(281478648974243680)
,p_view_id=>wwv_flow_api.id(358734473839507218)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(278533718023993838)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>54
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(358737423990507235)
,p_view_id=>wwv_flow_api.id(358734473839507218)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(358736982150507232)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(358738029142507235)
,p_view_id=>wwv_flow_api.id(358734473839507218)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(358737569416507235)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(358740424908507237)
,p_view_id=>wwv_flow_api.id(358734473839507218)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(358740040486507237)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>224
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'DESC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(358741034590507237)
,p_view_id=>wwv_flow_api.id(358734473839507218)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(358740639643507237)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37724386075535370)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(128492426208751711)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:315:&SESSION.::&DEBUG.:RP:P315_TRNTYP,P315_SUBTYP,P315_TRTRNTYP,P315_TRSUBTYP,P315_NARATION_1:&P330_TRANTYPE.,&P330_SUBTTYPE.,&P330_PRDOCTYP.,&P330_PRSUBTYP.,&P330_NARATION.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37724777616535370)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(128492426208751711)
,p_button_name=>'CANCLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:999:&SESSION.::&DEBUG.:RP,314::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37732061107535372)
,p_name=>'P330_PROGNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(358733504179507204)
,p_item_default=>'acvouchr'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37732436255535372)
,p_name=>'P330_TRANTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(358733504179507204)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37732840670535372)
,p_name=>'P330_SUBTTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(358733504179507204)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37733263053535372)
,p_name=>'P330_PRDOCTYP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(358733504179507204)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37733689121535372)
,p_name=>'P330_PRSUBTYP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(358733504179507204)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37734017593535372)
,p_name=>'P330_NARATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(358733504179507204)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37734402372535372)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(358733504179507204)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Journal Entry Report - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
