prompt --application/pages/page_00368
begin
--   Manifest
--     PAGE: 00368
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
 p_id=>368
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Journal Entry Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Journal Entry Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181108155846'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(281119233671400847)
,p_plug_name=>'Journal Entry Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DOCNUMBR||''/''||DOCTTYPE||''/''||SUBTTYPE||''/''||to_char(DOCTDATE,''dd/mm/rrrr'') DOCNUMBR,',
'wm_concat(ACCTCODE||'' -''||ACCTNAME) Accountcd_list,',
'sum(debit_amount) Debit,',
'sum(credit_amount) Credit,',
'COSTCODE,',
'WM_CONCAT(SUBLEDCD) SUBLEDCD,',
'DOCTTYPE,',
'SUBTTYPE,',
'DOCNUMBR DOCNUMBR_1,',
'wm_concat(NARATION) NARATION,',
'min(TIMSTAMP) TIMSTAMP,',
'SUBLEDCD link,',
'''Print'' print,',
'''acvouchr'' progname',
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
'               AND a.DOCTTYPE = :P368_TRANTYPE',
'               AND a.SUBTTYPE = :P368_SUBTTYPE',
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
'               AND a.DOCTTYPE = :P368_TRANTYPE',
'               AND a.SUBTTYPE = :P368_SUBTTYPE',
'               AND a.compcode = c.COMPCODE',
'               AND A.ACCTCODE = C.ACCTCODE',
'               AND a.DBCRCODE = ''D'')',
' group by DOCNUMBR,',
' DOCTTYPE,',
' SUBTTYPE,',
' DOCTDATE,',
' COSTCODE,',
' SUBLEDCD',
' ',
' ',
' ',
'/*SELECT Accountcd_list,',
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
'               AND a.DOCTTYPE = :P368_TRANTYPE',
'               AND a.SUBTTYPE = :P368_SUBTTYPE',
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
'               AND a.DOCTTYPE = :P368_TRANTYPE',
'               AND a.SUBTTYPE = :P368_SUBTTYPE',
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
'                           --AND NVL (c.HEADFLAG, ''Y'') = ''N''',
'                           AND a.DOCNUMBR IS NOT NULL',
'                           AND A.ACCTCODE = C.ACCTCODE',
'                           AND a.compcode = :compcode',
'                           AND a.DOCTTYPE = :P368_TRANTYPE',
'                           AND a.SUBTTYPE = :P368_SUBTTYPE)',
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
'       DOCTTYPE*/',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44816922641970333)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(44817053396970334)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
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
 p_id=>wwv_flow_api.id(127156114768957316)
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
 p_id=>wwv_flow_api.id(127156442431957319)
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
 p_id=>wwv_flow_api.id(127156492459957320)
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
 p_id=>wwv_flow_api.id(130542349253060540)
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
 p_id=>wwv_flow_api.id(130722531590233012)
,p_name=>'PRINT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRINT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Print'
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
 p_id=>wwv_flow_api.id(130722579534233013)
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
 p_id=>wwv_flow_api.id(130722767516233015)
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
 p_id=>wwv_flow_api.id(131671089933380313)
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
 p_id=>wwv_flow_api.id(200919447515887481)
,p_name=>'LINK'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:371:&SESSION.::&DEBUG.:RP:P371_DOCNUMBR_1,P371_SUBTYP,P371_TRNTYP:&DOCNUMBR_1.,&SUBTTYPE.,&DOCTTYPE.'
,p_link_text=>'Edit'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(281122711642400875)
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
 p_id=>wwv_flow_api.id(281125769978400880)
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
 p_id=>wwv_flow_api.id(281126369135400880)
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
 p_id=>wwv_flow_api.id(281119727325400857)
,p_internal_uid=>245781637287636455
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
 p_id=>wwv_flow_api.id(281120123089400860)
,p_interactive_grid_id=>wwv_flow_api.id(281119727325400857)
,p_static_id=>'395855'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(281120203331400861)
,p_report_id=>wwv_flow_api.id(281120123089400860)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45152247497409850)
,p_view_id=>wwv_flow_api.id(281120203331400861)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(44816922641970333)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45152826598409852)
,p_view_id=>wwv_flow_api.id(281120203331400861)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(44817053396970334)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127785702764807900)
,p_view_id=>wwv_flow_api.id(281120203331400861)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(127156114768957316)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>370
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127812158982815364)
,p_view_id=>wwv_flow_api.id(281120203331400861)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(127156442431957319)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127812684349815366)
,p_view_id=>wwv_flow_api.id(281120203331400861)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(127156492459957320)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(130694566259891731)
,p_view_id=>wwv_flow_api.id(281120203331400861)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(130542349253060540)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>502
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(130740662842511085)
,p_view_id=>wwv_flow_api.id(281120203331400861)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(130722531590233012)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>341
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(130741381246511087)
,p_view_id=>wwv_flow_api.id(281120203331400861)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(130722579534233013)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(130752164565654448)
,p_view_id=>wwv_flow_api.id(281120203331400861)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(130722767516233015)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(131685128419601339)
,p_view_id=>wwv_flow_api.id(281120203331400861)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(131671089933380313)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(203864378466137323)
,p_view_id=>wwv_flow_api.id(281120203331400861)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(200919447515887481)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>54
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(281123153482400878)
,p_view_id=>wwv_flow_api.id(281120203331400861)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(281122711642400875)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>170
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(281126154400400880)
,p_view_id=>wwv_flow_api.id(281120203331400861)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(281125769978400880)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>224
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(281126764082400880)
,p_view_id=>wwv_flow_api.id(281120203331400861)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(281126369135400880)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>170
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44815555052970319)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(281119233671400847)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:369:&SESSION.::&DEBUG.:RP:P369_TRNTYP,P369_SUBTYP,P369_TRTRNTYP,P369_TRSUBTYP,P369_NARATION_1:&P368_TRANTYPE.,&P368_SUBTTYPE.,&P368_PRDOCTYP.,&P368_PRSUBTYP.,&P368_NARATION.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44913378945865713)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(281119233671400847)
,p_button_name=>'CANCLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:999:&SESSION.::&DEBUG.:RP,296::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44913705718865713)
,p_name=>'P368_TRANTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(281119233671400847)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44914138890865713)
,p_name=>'P368_PROGNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(281119233671400847)
,p_item_default=>'acvouchr'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44914544531865714)
,p_name=>'P368_SUBTTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(281119233671400847)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44914917874865714)
,p_name=>'P368_PRDOCTYP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(281119233671400847)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44915326297865714)
,p_name=>'P368_PRSUBTYP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(281119233671400847)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44915707492865714)
,p_name=>'P368_NARATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(281119233671400847)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44916129097865714)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(281119233671400847)
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
