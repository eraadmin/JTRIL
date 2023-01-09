prompt --application/pages/page_10023_007
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
 p_id=>10023508
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Suppliar Bill Booking'
,p_page_mode=>'MODAL'
,p_step_title=>'Suppliar Bill Booking'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_dialog_attributes=>'open:function(event,ui){parent.$(''.ui-button.ui-widget.ui-state-default.ui-corner-all.ui-button-icon-only.ui-dialog-titlebar-close'').hide();}'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20190911094639'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(465071784004606388)
,p_plug_name=>'Suppliar Bill Booking'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DOCNUMBR||''/''||DOCTTYPE||''/''||SUBTTYPE||''/''||to_char(DOCTDATE,''dd/mm/rrrr'') DOCNUMBR,',
'wm_concat(ACCTCODE||'' -''||ACCTNAME) Accountcd_list,',
'sum(debit_amount) Debit,',
'sum(credit_amount) Credit,',
'COSTCODE,',
'wm_concat(SUBLEDCD) SUBLEDCD,',
'wm_concat(SUBLEDCD) SUBLEDCD_,',
'DOCTTYPE,',
'SUBTTYPE,',
'DOCNUMBR DOCNUMBR_1,',
'wm_concat(NARATION) NARATION,',
'min(TIMSTAMP) TIMSTAMP,',
'''Edit'' link',
'from',
'(SELECT a.ACCTCODE,',
'            C.ACCTNAME,',
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
'          FROM actrndtl a,sychrtac c',
'         WHERE   a.DOCNUMBR IS NOT NULL',
'               AND a.compcode = :compcode',
'               AND a.compcode = c.COMPCODE',
'               AND A.ACCTCODE = C.ACCTCODE',
'               AND a.DOCTTYPE = :P10023508_TRANTYPE',
'               AND a.SUBTTYPE = :P10023508_SUBTTYPE',
'               AND a.DBCRCODE = ''C''',
'        UNION ALL',
'        SELECT a.ACCTCODE,',
'               C.ACCTNAME,',
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
'          FROM actrndtl a,sychrtac c',
'         WHERE     a.DOCNUMBR IS NOT NULL',
'               AND a.compcode = :compcode',
'               AND a.DOCTTYPE = :P10023508_TRANTYPE',
'               AND a.SUBTTYPE = :P10023508_SUBTTYPE',
'               AND a.compcode = c.COMPCODE',
'               AND A.ACCTCODE = C.ACCTCODE',
'               AND a.DBCRCODE = ''D'')',
' group by DOCNUMBR,',
' DOCTTYPE,',
' SUBTTYPE,',
' DOCTDATE,',
' COSTCODE',
'',
'/* SELECT Accountcd_list,',
'            DOCNUMBR',
'         || ''/''',
'         || DOCTTYPE',
'         || ''/''',
'         || SUBTTYPE',
'         || ''/''',
'         || TO_CHAR (DOCTDATE, ''dd/mm/rrrr'')',
'            DOCNUMBR,',
'         COSTCODE,',
'         SUBLEDCD,',
'         SUBTTYPE,',
'         DOCTTYPE,',
'         wm_concat(NARATION) NARATION,',
'         DOCTDATE,',
'         SUM (debit_amount) Debit,',
'         SUM (credit_amount) Credit,',
'         min(TIMSTAMP) TIMSTAMP,',
'         DOCNUMBR DOCNUMBR_1,',
'         ''Edit'' link',
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
'                         AND a.DOCTTYPE = :P10023508_TRANTYPE',
'                         AND a.SUBTTYPE = :P10023508_SUBTTYPE',
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
'                         AND a.DOCTTYPE = :P10023508_TRANTYPE',
'                         AND a.SUBTTYPE = :P10023508_SUBTTYPE',
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
'                                       AND a.DOCTTYPE = :P10023508_TRANTYPE',
'                                       AND a.SUBTTYPE = :P10023508_SUBTTYPE)',
'                       WHERE seq = cnt',
'                  START WITH seq = 1',
'                  CONNECT BY PRIOR seq + 1 = seq AND PRIOR DOCNUMBR = DOCNUMBR) actcd_lst',
'           WHERE     actcd_lst.docnumbr = acct_det.docnumbr',
'                 AND actcd_lst.DOCTTYPE = acct_det.DOCTTYPE',
'                 AND actcd_lst.SUBTTYPE = acct_det.SUBTTYPE',
'                 AND actcd_lst.COMPCODE = acct_det.COMPCODE',
'                 ORDER BY acct_det.TIMSTAMP DESC)',
'GROUP BY Accountcd_list,',
'         DOCNUMBR,',
'         DOCTDATE,',
'         DOCTTYPE,',
'         SUBTTYPE,',
'         COSTCODE,',
'         SUBLEDCD*/',
'--order by TIMSTAMP desc'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(72253006742079166)
,p_name=>'SUBLEDCD_'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBLEDCD_'
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
 p_id=>wwv_flow_api.id(148981866740195060)
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
 p_id=>wwv_flow_api.id(149164095918367553)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Timstamp'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
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
 p_id=>wwv_flow_api.id(154114958087216581)
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(311108665102162857)
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
 p_id=>wwv_flow_api.id(311108992765162860)
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
 p_id=>wwv_flow_api.id(311109042793162861)
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
 p_id=>wwv_flow_api.id(311109668360162867)
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
 p_id=>wwv_flow_api.id(311109710817162868)
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
 p_id=>wwv_flow_api.id(384871997849093022)
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
,p_link_target=>'f?p=&APP_ID.:346:&SESSION.::&DEBUG.:RP:P346_DOCNUMBR,P346_TRNTYP,P346_SUBTYP:&DOCNUMBR_1.,&DOCTTYPE.,&SUBTTYPE.'
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
 p_id=>wwv_flow_api.id(465075261975606416)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Doc Details'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_height=>10
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
 p_id=>wwv_flow_api.id(465078320311606421)
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
 p_id=>wwv_flow_api.id(465078919468606421)
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
 p_id=>wwv_flow_api.id(465072277658606398)
,p_internal_uid=>521079230159329776
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
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
,p_show_icon_view=>true
,p_icon_view_use_custom=>false
,p_icon_view_icon_type=>'CSS_CLASSES'
,p_icon_view_icon_column=>'DOCNUMBR'
,p_icon_view_label_column=>'DOCNUMBR'
,p_show_detail_view=>true
,p_detail_view_for_each_row=>'&DOCNUMBR.'
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(465072673422606401)
,p_interactive_grid_id=>wwv_flow_api.id(465072277658606398)
,p_static_id=>'401593'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(465072753664606402)
,p_report_id=>wwv_flow_api.id(465072673422606401)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72259002264079778)
,p_view_id=>wwv_flow_api.id(465072753664606402)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(72253006742079166)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(149125337569606049)
,p_view_id=>wwv_flow_api.id(465072753664606402)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(148981866740195060)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(149203245235581399)
,p_view_id=>wwv_flow_api.id(465072753664606402)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(149164095918367553)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154635056517741560)
,p_view_id=>wwv_flow_api.id(465072753664606402)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(154114958087216581)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(311738253098013441)
,p_view_id=>wwv_flow_api.id(465072753664606402)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(311108665102162857)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>426
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(311764709316020905)
,p_view_id=>wwv_flow_api.id(465072753664606402)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(311108992765162860)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(311765234683020907)
,p_view_id=>wwv_flow_api.id(465072753664606402)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(311109042793162861)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(311804704419186126)
,p_view_id=>wwv_flow_api.id(465072753664606402)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(311109668360162867)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(311805416485186134)
,p_view_id=>wwv_flow_api.id(465072753664606402)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(311109710817162868)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(387816928799342864)
,p_view_id=>wwv_flow_api.id(465072753664606402)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(384871997849093022)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>54
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(465075703815606419)
,p_view_id=>wwv_flow_api.id(465072753664606402)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(465075261975606416)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>239
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(465078704733606421)
,p_view_id=>wwv_flow_api.id(465072753664606402)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(465078320311606421)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>224
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'DESC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(465079314415606421)
,p_view_id=>wwv_flow_api.id(465072753664606402)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(465078919468606421)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>306
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2589326963639986)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(465071784004606388)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:10023509:&SESSION.::&DEBUG.:RP:P10023509_TRANTYPE,P10023509_SUBTTYPE,P10023509_PRDOCTYP,P10023509_PRSUBTYP,P10023509_TRANTYPE:&P10023508_TRANTYPE.,&P10023508_SUBTTYPE.,&P10023508_PRDOCTYP.,&P10023508_PRSUBTYP.,&P10023508_NARATION.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2589641657639993)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(465071784004606388)
,p_button_name=>'CANCLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:10023501:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2589977043639997)
,p_name=>'P10023508_TRANTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(465071784004606388)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2590359122640004)
,p_name=>'P10023508_SUBTTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(465071784004606388)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2590756313640004)
,p_name=>'P10023508_PRDOCTYP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(465071784004606388)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2591160673640004)
,p_name=>'P10023508_PRSUBTYP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(465071784004606388)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2591573277640006)
,p_name=>'P10023508_NARATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(465071784004606388)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2592038116640007)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(465071784004606388)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Suppliar Bill Booking - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
