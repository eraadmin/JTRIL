prompt --application/pages/page_10023_012
begin
--   Manifest
--     PAGE: 10023
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>10023513
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Interactive Posting (Bills-Payments)'
,p_page_mode=>'MODAL'
,p_step_title=>'Interactive Posting (Bills-Payments)'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_dialog_attributes=>'open:function(event,ui){parent.$(''.ui-button.ui-widget.ui-state-default.ui-corner-all.ui-button-icon-only.ui-dialog-titlebar-close'').hide();}'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20190919141245'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3397803865950061)
,p_plug_name=>'CTRL'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(160805407067825085)
,p_plug_name=>'Interactive Posting (Bills-Payments)'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select D.DOCTDATE, D.DOCNUMBR, wm_concat(D.NARATION) naration, sum(D.JVFCAMNT) amount, D.OPRSTAMP,'''' Chk_post,min(TIMSTAMP) TIMSTAMP',
'from actrndtl d ',
'where D.COMPCODE = :compcode',
'--and D.DOCTTYPE = :P10023513_TRANTYPE',
'AND D.DOCTTYPE||'' - ''||D.SUBTTYPE = :P381_TRANTYPE',
'and D.SUBTTYPE = :P10023513_SUBTTYPE',
'and D.DBCRCODE = ''D''',
'and nvl(STATCODE,''N'') = ''N''',
'group by D.DOCTDATE, D.DOCNUMBR,D.OPRSTAMP',
'--order by TIMSTAMP desc'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P10023513_TRANTYPE,P10023513_SUBTTYPE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(160805632820825087)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
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
 p_id=>wwv_flow_api.id(160805743354825088)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Voucher No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>8
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(160805897160825089)
,p_name=>'NARATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NARATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Naration'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_width=>200
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
 p_id=>wwv_flow_api.id(160805997805825090)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_03=>'center'
,p_item_width=>20
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
 p_id=>wwv_flow_api.id(160806019915825091)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Raised By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>20
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
 p_id=>wwv_flow_api.id(160806448894825095)
,p_name=>'CHK_POST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHK_POST'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Post'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;Y,No;N'
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(160806678721825097)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(160806722997825098)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(160807079154825101)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Timstamp'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(160805562578825086)
,p_internal_uid=>216812515079548464
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>200
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(161396880317683321)
,p_interactive_grid_id=>wwv_flow_api.id(160805562578825086)
,p_static_id=>'401604'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(161396950990683321)
,p_report_id=>wwv_flow_api.id(161396880317683321)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(161397481518683331)
,p_view_id=>wwv_flow_api.id(161396950990683321)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(160805632820825087)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(161397819258683399)
,p_view_id=>wwv_flow_api.id(161396950990683321)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(160805743354825088)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(161398319215683405)
,p_view_id=>wwv_flow_api.id(161396950990683321)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(160805897160825089)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>500
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(161398815954683407)
,p_view_id=>wwv_flow_api.id(161396950990683321)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(160805997805825090)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(161399319585683409)
,p_view_id=>wwv_flow_api.id(161396950990683321)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(160806019915825091)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(161483700032819170)
,p_view_id=>wwv_flow_api.id(161396950990683321)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(160806448894825095)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(161578540449640932)
,p_view_id=>wwv_flow_api.id(161396950990683321)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(160806678721825097)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>10
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(161593880037997210)
,p_view_id=>wwv_flow_api.id(161396950990683321)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(160807079154825101)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>10
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(561067149832904973)
,p_plug_name=>'Interactive Posting details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT Accountcd_list,',
'            DOCNUMBR',
'         || ''/''',
'         || DOCTTYPE',
'         || ''/''',
'         || SUBTTYPE',
'         || ''/''',
'         || TO_CHAR (DOCTDATE, ''dd/mm/rrrr'')',
'            DOCNUMBR,',
'         DOCNUMBR DOCNUMBR_1,',
'         COSTCODE,',
'         SUBLEDCD,',
'         SUBTTYPE,',
'         DOCTTYPE,',
'         NARATION, --wm_concat(NARATION) NARATION,',
'         DOCTDATE,',
'         debit_amount Debit, --SUM (debit_amount) Debit,',
'         credit_amount Credit, --SUM (credit_amount) Credit,',
'         TIMSTAMP',
'    FROM (SELECT actcd_lst.Accountcd_list,',
'                 acct_det.DOCNUMBR,',
'                 acct_det.DOCTDATE,',
'                 acct_det.COSTCODE,',
'                 acct_det.SUBTTYPE,',
'                 acct_det.DOCTTYPE,',
'                 acct_det.SUBLEDCD,',
'                 acct_det.NARATION,',
'                 acct_det.debit_amount,',
'                 acct_det.credit_amount,',
'                 acct_det.TIMSTAMP',
'            FROM (SELECT a.ACCTCODE,',
'                         DOCNUMBR,',
'                         DOCTDATE,',
'                         COSTCODE,',
'                         SUBLEDCD,',
'                         NARATION,',
'                         SUBTTYPE,',
'                         DOCTTYPE,',
'                         0 debit_amount,',
'                         JVFCAMNT credit_amount,',
'                         a.COMPCODE,',
'                         a.TIMSTAMP',
'                    FROM actrndtl a',
'                   WHERE     a.DOCNUMBR IS NOT NULL',
'                         AND a.compcode = :compcode',
'                         AND a.DOCTTYPE = :P10023513_TRANTYPE',
'                         AND a.SUBTTYPE = :P10023513_SUBTTYPE',
'                         AND a.DBCRCODE = ''C''',
'                  UNION ALL',
'                  SELECT a.ACCTCODE,',
'                         DOCNUMBR,',
'                         DOCTDATE,',
'                         COSTCODE,',
'                         SUBLEDCD,',
'                         NARATION,',
'                         SUBTTYPE,',
'                         DOCTTYPE,',
'                         JVFCAMNT debit_amount,',
'                         0 credit_amount,',
'                         a.COMPCODE,',
'                         a.TIMSTAMP',
'                    FROM actrndtl a',
'                   WHERE     a.DOCNUMBR IS NOT NULL',
'                         AND a.compcode = :compcode',
'                         AND a.DOCTTYPE = :P10023513_TRANTYPE',
'                         AND a.SUBTTYPE = :P10023513_SUBTTYPE',
'                         AND a.DBCRCODE = ''D'') acct_det,',
'                 (    SELECT SUBSTR (SYS_CONNECT_BY_PATH (ACCTCODE_ls, ''; ''), 2)',
'                                Accountcd_list,',
'                             DOCNUMBR,',
'                             DOCTTYPE,',
'                             SUBTTYPE,',
'                             COMPCODE,',
'                             ACCTCODE',
'                        FROM (  SELECT CASE A.DBCRCODE',
'                                          WHEN ''D'' THEN ''Debit''',
'                                          WHEN ''C'' THEN ''Credit''',
'                                       END',
'                                       || '':''',
'                                       || C.ACCTNAME',
'                                       || ''-''',
'                                       || a.ACCTCODE',
'                                          ACCTCODE_ls,',
'                                       a.DOCNUMBR,',
'                                       a.DOCTTYPE,',
'                                       a.SUBTTYPE,',
'                                       a.COMPCODE,',
'                                       a.ACCTCODE,',
'                                       a.TIMSTAMP,',
'                                       COUNT (*) OVER (PARTITION BY DOCNUMBR) cnt,',
'                                       ROW_NUMBER ()',
'                                       OVER (PARTITION BY DOCNUMBR ORDER BY DOCNUMBR)',
'                                          seq',
'                                  FROM actrndtl a, sychrtac c',
'                                 WHERE     a.compcode = c.COMPCODE',
'                                       AND a.DOCNUMBR IS NOT NULL',
'                                       AND A.ACCTCODE = C.ACCTCODE',
'                                       AND a.compcode = :compcode',
'                                       AND a.DOCTTYPE = :P10023513_TRANTYPE',
'                                       AND a.SUBTTYPE = :P10023513_SUBTTYPE)',
'                       WHERE seq = cnt',
'                  START WITH seq = 1',
'                  CONNECT BY PRIOR seq + 1 = seq AND PRIOR DOCNUMBR = DOCNUMBR) actcd_lst',
'           WHERE     actcd_lst.docnumbr = acct_det.docnumbr',
'                 AND actcd_lst.DOCTTYPE = acct_det.DOCTTYPE',
'                 AND actcd_lst.SUBTTYPE = acct_det.SUBTTYPE',
'                 AND actcd_lst.COMPCODE = acct_det.COMPCODE',
'                 ORDER BY acct_det.TIMSTAMP DESC)',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(160805407067825085)
,p_ajax_items_to_submit=>'P10023513_TRANTYPE,P10023513_SUBTTYPE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(160806569348825096)
,p_name=>'DOCNUMBR_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR_1'
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
,p_parent_column_id=>wwv_flow_api.id(160805743354825088)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(244977232568493645)
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
,p_max_length=>500
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
 p_id=>wwv_flow_api.id(245159461746666138)
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
 p_id=>wwv_flow_api.id(407104030930461442)
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
 p_id=>wwv_flow_api.id(407104358593461445)
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
 p_id=>wwv_flow_api.id(407104408621461446)
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
 p_id=>wwv_flow_api.id(407105034188461452)
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
 p_id=>wwv_flow_api.id(407105076645461453)
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
 p_id=>wwv_flow_api.id(561070627803905001)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Document Details'
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
 p_id=>wwv_flow_api.id(561071215069905004)
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
 p_id=>wwv_flow_api.id(561073686139905006)
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
 p_id=>wwv_flow_api.id(561074285296905006)
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
 p_id=>wwv_flow_api.id(561067643486904983)
,p_internal_uid=>617074595987628361
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
,p_show_toolbar=>false
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(561068039250904986)
,p_interactive_grid_id=>wwv_flow_api.id(561067643486904983)
,p_static_id=>'401605'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(561068119492904987)
,p_report_id=>wwv_flow_api.id(561068039250904986)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(161576231383629144)
,p_view_id=>wwv_flow_api.id(561068119492904987)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(160806569348825096)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(245120703397904634)
,p_view_id=>wwv_flow_api.id(561068119492904987)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(244977232568493645)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(245198611063879984)
,p_view_id=>wwv_flow_api.id(561068119492904987)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(245159461746666138)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(407733618926312026)
,p_view_id=>wwv_flow_api.id(561068119492904987)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(407104030930461442)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>351
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(407760075144319490)
,p_view_id=>wwv_flow_api.id(561068119492904987)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(407104358593461445)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(407760600511319492)
,p_view_id=>wwv_flow_api.id(561068119492904987)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(407104408621461446)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(407800070247484711)
,p_view_id=>wwv_flow_api.id(561068119492904987)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(407105034188461452)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(407800782313484719)
,p_view_id=>wwv_flow_api.id(561068119492904987)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(407105076645461453)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(561071069643905004)
,p_view_id=>wwv_flow_api.id(561068119492904987)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(561070627803905001)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>177
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(561071674795905004)
,p_view_id=>wwv_flow_api.id(561068119492904987)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(561071215069905004)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(561074070561905006)
,p_view_id=>wwv_flow_api.id(561068119492904987)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(561073686139905006)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>224
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(561074680243905006)
,p_view_id=>wwv_flow_api.id(561068119492904987)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(561074285296905006)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2718495922763512)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(160805407067825085)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2718900598763514)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(160805407067825085)
,p_button_name=>'CANCLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:999:&SESSION.::&DEBUG.:RP,296::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2725348436763531)
,p_name=>'P10023513_TRANTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3397803865950061)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2725770627763531)
,p_name=>'P10023513_SUBTTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3397803865950061)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2726179018763531)
,p_name=>'P10023513_PRDOCTYP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3397803865950061)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2726551118763531)
,p_name=>'P10023513_PRSUBTYP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3397803865950061)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2726978828763532)
,p_name=>'P10023513_NARATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3397803865950061)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3397889486950062)
,p_name=>'P10023513_TRN_MODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3397803865950061)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2719319727763514)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(160805407067825085)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :CHK_POST = ''Y'' then',
' update actrndtl',
' set STATCODE = ''Y''',
' where docnumbr = :DOCNUMBR',
'  and docttype = :P10023513_TRANTYPE',
'  and subttype = :P10023513_SUBTTYPE;',
'  commit;',
' end if;',
' exception',
' when no_data_found then',
'  null;',
' when too_many_rows then',
'  null;',
' when others then',
'  null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
