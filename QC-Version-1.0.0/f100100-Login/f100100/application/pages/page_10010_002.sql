prompt --application/pages/page_10010_002
begin
--   Manifest
--     PAGE: 10010
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>10010004
,p_user_interface_id=>wwv_flow_api.id(100064779117690213)
,p_name=>'New User Request List'
,p_page_mode=>'MODAL'
,p_step_title=>'New User Request List'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Report-colHead{',
'--border: 1px solid blue !important;',
'transition: background-color 0.2s ease 0s;',
'padding: 2px;',
'font-size: 11px !important;',
'font-weight: bold !important;',
'text-align: center;',
'}',
'',
'.t-Report-cell{',
'padding: 2px;',
'font-size: 11px !important;',
'font-weight: NORMAL !important;',
'--border: 1px solid blue;',
'}'))
,p_step_template=>wwv_flow_api.id(115022350790909979)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_height=>'400'
,p_dialog_width=>'1000'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SYUSRMAS_INSERT (',
'   P_USERCODE  => :USERCODE,',
'   P_USERNAME  => :USERNAME,',
'   P_USERPAWD  => :USERPAWD,',
'   P_PASWDATE  => 01/01/2023,',
'   P_VALDFLAG  => ''A'',',
'   P_STATDATE  => 09/16/2080,',
'   P_DIVNCODE  => :DIVNCODE,',
'   P_EMPLCODE  => :EMPLCODE,',
'   P_EMPLYDOB  => :EMPLYDOB,',
'   P_USERTYPE  => ''L'',',
'   P_GRUPCODE  => NULL,',
'   P_LASTLOGN  => NULL,',
'   P_LOGINCNT  => NULL,',
'   P_INVLDCNT  => NULL,',
'   P_STARTIME  => ''0000'',',
'   P_STOPTIME  => ''2359'',',
'   P_TELNUMBR  => :TELNUMBR,',
'   P_ADDRESS1   => :ADDRESS1,',
'   P_ADDRESS2   => :ADDRESS2,',
'   P_ADDRESS3   => :ADDRESS3,',
'   P_EMAILID1   => :EMAILID1,',
'   P_EMAILID2   => :EMAILID2,',
'   P_STRTSUSP   => NULL,',
'   P_STOPSUSP   => NULL,',
'   P_LIVELOGN   => NULL,',
'   P_MAXMLOGN   => 999999999,',
'   P_OPRSTAMP   => :APP_USER,',
'   P_TIMSTAMP   => SYSDATE,',
'   P_ISGROUP    => ''N'',',
'   P_USERSIGN   => NULL,',
'   P_CHGFLG     => ''N'',',
'   P_MIGFLG     => ''N'',',
'   P_APPFLG     => ''N'',',
'   P_MODIFYDT   => NULL,',
'   P_DFLTWRCD   => NULL,',
'   P_BRAND_CODE => NULL,',
'   P_SHORTNAM   => NULL,',
'   P_DEFAULT_PAGE => NULL,',
'   P_OPERFLAG   => NULL);',
'',
'END;'))
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20200305183745'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(112279847569533972)
,p_plug_name=>'Button_Region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(112308607887584834)
,p_name=>'Report 1'
,p_template=>wwv_flow_api.id(99986191011690159)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USERCODE,',
'       USERNAME,',
'       USERPAWD,',
'       VALDFLAG,',
'       DIVNCODE,',
'       EMPLCODE,',
'       EMPLYDOB,',
'       USERTYPE,',
'       TELNUMBR,',
'       ADDRESS1,',
'       ADDRESS2,',
'       ADDRESS3,',
'       EMAILID1,',
'       EMAILID2,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       MODIFYDT,',
'       OPERFLAG',
'  from USRSGNUP'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(100011823152690167)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112308236659584821)
,p_query_column_id=>1
,p_column_alias=>'USERCODE'
,p_column_display_sequence=>1
,p_column_heading=>'Usercode'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112307864093584818)
,p_query_column_id=>2
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>2
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112307393819584818)
,p_query_column_id=>3
,p_column_alias=>'USERPAWD'
,p_column_display_sequence=>3
,p_column_heading=>'Userpawd'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112307019077584818)
,p_query_column_id=>4
,p_column_alias=>'VALDFLAG'
,p_column_display_sequence=>4
,p_column_heading=>'Valdflag'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112306622508584815)
,p_query_column_id=>5
,p_column_alias=>'DIVNCODE'
,p_column_display_sequence=>5
,p_column_heading=>'Divncode'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112306196324584815)
,p_query_column_id=>6
,p_column_alias=>'EMPLCODE'
,p_column_display_sequence=>6
,p_column_heading=>'Emplcode'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112305791697584813)
,p_query_column_id=>7
,p_column_alias=>'EMPLYDOB'
,p_column_display_sequence=>7
,p_column_heading=>'Emplydob'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112305394867584813)
,p_query_column_id=>8
,p_column_alias=>'USERTYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Usertype'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112305030832584813)
,p_query_column_id=>9
,p_column_alias=>'TELNUMBR'
,p_column_display_sequence=>9
,p_column_heading=>'Telnumbr'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112304611567584813)
,p_query_column_id=>10
,p_column_alias=>'ADDRESS1'
,p_column_display_sequence=>10
,p_column_heading=>'Address1'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112304218170584813)
,p_query_column_id=>11
,p_column_alias=>'ADDRESS2'
,p_column_display_sequence=>11
,p_column_heading=>'Address2'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112303818518584813)
,p_query_column_id=>12
,p_column_alias=>'ADDRESS3'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112303427078584812)
,p_query_column_id=>13
,p_column_alias=>'EMAILID1'
,p_column_display_sequence=>13
,p_column_heading=>'Emailid1'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112302988019584812)
,p_query_column_id=>14
,p_column_alias=>'EMAILID2'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112302583316584812)
,p_query_column_id=>15
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>15
,p_column_heading=>'Oprstamp'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112302242158584812)
,p_query_column_id=>16
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>16
,p_column_heading=>'Timstamp'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112301855287584812)
,p_query_column_id=>17
,p_column_alias=>'MODIFYDT'
,p_column_display_sequence=>17
,p_column_heading=>'Modifydt'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(112301411415584812)
,p_query_column_id=>18
,p_column_alias=>'OPERFLAG'
,p_column_display_sequence=>18
,p_column_heading=>'Operflag'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(113287429049503446)
,p_plug_name=>'grid'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(99985111042690159)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'USERCODE,',
'       USERNAME,',
'       USERPAWD,',
'       VALDFLAG,',
'       DIVNCODE,',
'       EMPLCODE,',
'       EMPLYDOB,',
'       USERTYPE,',
'       TELNUMBR,',
'       ADDRESS1,',
'       ADDRESS2,',
'       ADDRESS3,',
'       EMAILID1,',
'       EMAILID2,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       MODIFYDT,',
'       OPERFLAG',
'  from USRSGNUP',
'  where   VALDFLAG=''N'' ',
'  and USERTYPE !=''T''',
'   AND USERCODE NOT IN (SELECT USERCODE FROM SYUSRMAS WHERE USERCODE= USRSGNUP.USERCODE)'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(112279922561533973)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(112280159876533975)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(112280257785533976)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(112280284320533977)
,p_name=>'OPERFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Operflag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(112280426214533978)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Modifydt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
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
 p_id=>wwv_flow_api.id(112280551923533979)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Timstamp'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
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
 p_id=>wwv_flow_api.id(112280614973533980)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Oprstamp'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_api.id(112280767730533981)
,p_name=>'EMAILID2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAILID2'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Emailid2'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
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
 p_id=>wwv_flow_api.id(112280860787533982)
,p_name=>'EMAILID1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAILID1'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Emailid1'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
 p_id=>wwv_flow_api.id(112280921732533983)
,p_name=>'ADDRESS3'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADDRESS3'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Address3'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
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
 p_id=>wwv_flow_api.id(112281031131533984)
,p_name=>'ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADDRESS2'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Address2'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
 p_id=>wwv_flow_api.id(112281138480533985)
,p_name=>'ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADDRESS1'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Address1'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_api.id(112281231127533986)
,p_name=>'TELNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TELNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Phone Number'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
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
 p_id=>wwv_flow_api.id(112281294823533987)
,p_name=>'USERTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USERTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'User Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(113231022590274185)
,p_lov_display_extra=>false
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(112281383380533988)
,p_name=>'EMPLYDOB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLYDOB'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Date of Birth'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
 p_id=>wwv_flow_api.id(112281511835533989)
,p_name=>'EMPLCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Employee Code'
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
 p_id=>wwv_flow_api.id(112281600453533990)
,p_name=>'DIVNCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIVNCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Division Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
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
 p_id=>wwv_flow_api.id(113286893566503441)
,p_name=>'VALDFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALDFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Approve'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;Y,No;N,Delete;D'
,p_lov_display_extra=>false
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(113286990286503442)
,p_name=>'USERPAWD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USERPAWD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'User Password'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>20
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
 p_id=>wwv_flow_api.id(113287151020503443)
,p_name=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USERNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'User Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
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
 p_id=>wwv_flow_api.id(113287233547503444)
,p_name=>'USERCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USERCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'User Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(113287368901503445)
,p_internal_uid=>55339203807823246
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
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
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
 p_id=>wwv_flow_api.id(112275772528533451)
,p_interactive_grid_id=>wwv_flow_api.id(113287368901503445)
,p_static_id=>'167259'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(112275627209533449)
,p_report_id=>wwv_flow_api.id(112275772528533451)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112029769113498621)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(112279922561533973)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112229401622507285)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(112280257785533976)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112266592811533418)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(112280284320533977)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112267162262533418)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(112280426214533978)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112267652121533420)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(112280551923533979)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112268147483533421)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(112280614973533980)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112268581864533421)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(112280767730533981)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112269079895533423)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(112280860787533982)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112269618420533423)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(112280921732533983)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112270077181533426)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(112281031131533984)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112270638541533426)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(112281138480533985)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112271155852533429)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(112281231127533986)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112271619478533431)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(112281294823533987)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112272110569533432)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(112281383380533988)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112272663507533432)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(112281511835533989)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112273143996533434)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(112281600453533990)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112273665916533435)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(113286893566503441)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112274112962533435)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(113286990286503442)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112274657192533440)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(113287151020503443)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(112275130550533446)
,p_view_id=>wwv_flow_api.id(112275627209533449)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(113287233547503444)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(112279708347533971)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(112279847569533972)
,p_button_name=>'Save'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(100042305862690193)
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(111610314836336679)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(113287429049503446)
,p_triggering_element=>'USERTYPE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'USERTYPE'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'T,S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(111610076691336677)
,p_event_id=>wwv_flow_api.id(111610314836336679)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'VALDFLAG'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(111610239957336678)
,p_event_id=>wwv_flow_api.id(111610314836336679)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'VALDFLAG'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(112280033624533974)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(113287429049503446)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'New - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(112279708347533971)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(111610470242336680)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(113287429049503446)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'iNSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   vErrFlag   VARCHAR2 (1);',
'   vErrMsg    VARCHAR2 (1000);',
'BEGIN',
'   IF :VALDFLAG = ''Y''',
'   THEN',
'   ',
'      ',
'         /*SYUSRMAS_INSERT (P_USERCODE       => :USERCODE,',
'                          P_USERNAME       => :USERNAME,',
'                          P_USERPAWD       => :USERPAWD,',
'                          P_PASWDATE       => null,',
'                          P_VALDFLAG       => ''A'',',
'                          P_STATDATE       => null,',
'                          P_DIVNCODE       => :DIVNCODE,',
'                          P_EMPLCODE       => :EMPLCODE,',
'                          P_EMPLYDOB       => :EMPLYDOB,',
'                          P_USERTYPE       => ''L'',',
'                          P_GRUPCODE       => NULL,',
'                          P_LASTLOGN       => NULL,',
'                          P_LOGINCNT       => NULL,',
'                          P_INVLDCNT       => NULL,',
'                          P_STARTIME       => ''0000'',',
'                          P_STOPTIME       => ''2359'',',
'                          P_TELNUMBR       => :TELNUMBR,',
'                          P_ADDRESS1       => :ADDRESS1,',
'                          P_ADDRESS2       => :ADDRESS2,',
'                          P_ADDRESS3       => :ADDRESS3,',
'                          P_EMAILID1       => :EMAILID1,',
'                          P_EMAILID2       => :EMAILID2,',
'                          P_STRTSUSP       => NULL,',
'                          P_STOPSUSP       => NULL,',
'                          P_LIVELOGN       => NULL,',
'                          P_MAXMLOGN       => 999999999,',
'                          P_OPRSTAMP       => :APP_USER,',
'                          P_TIMSTAMP       => null,',
'                          P_ISGROUP        => ''N'',',
'                          P_USERSIGN       => NULL,',
'                          P_CHGFLG         => ''N'',',
'                          P_MIGFLG         => ''N'',',
'                          P_APPFLG         => ''N'',',
'                          P_MODIFYDT       => NULL,',
'                          P_DFLTWRCD       => NULL,',
'                          P_BRAND_CODE     => NULL,',
'                          P_SHORTNAM       => NULL,',
'                          P_DEFAULT_PAGE   => NULL,',
'                          P_OPERFLAG       => NULL,',
'                          P_ERR_FLAG       => vErrFlag,',
'                          P_ERR_MSG        => vErrMsg);',
'      EXCEPTION',
'         WHEN OTHERS',
'         THEN',
'            RAISE_APPLICATION_ERROR (',
'               -20157,',
'               ''ERROR - Procedure Calling Problem. '' || SQLERRM);',
'      END;',
'      */',
'      INSERT INTO    syusrmas (USERCODE,',
'                               USERNAME,',
'                               USERPAWD,',
'                               PASWDATE,',
'                               VALDFLAG,',
'                               STATDATE,',
'                               DIVNCODE,',
'                               EMPLCODE,',
'                               EMPLYDOB,',
'                               USERTYPE,',
'                               GRUPCODE,',
'                               LASTLOGN,',
'                               LOGINCNT,',
'                               INVLDCNT,',
'                               STARTIME,',
'                               STOPTIME,',
'                               TELNUMBR,',
'                               ADDRESS1,',
'                               ADDRESS2,',
'                               ADDRESS3,',
'                               EMAILID1,',
'                               EMAILID2,',
'                               STRTSUSP,',
'                               STOPSUSP,',
'                               LIVELOGN,',
'                               MAXMLOGN,',
'                               OPRSTAMP,',
'                               TIMSTAMP,',
'                               ISGROUP,',
'                               USERSIGN,',
'                               CHGFLG,',
'                               MIGFLG,',
'                               APPFLG,',
'                               MODIFYDT,',
'                               DFLTWRCD,',
'                               BRAND_CODE,',
'                               SHORTNAM,',
'                               DEFAULT_PAGE,',
'                               OPERFLAG)',
'              VALUES (:USERCODE,',
'                      :USERNAME,',
'                      :USERPAWD,',
'                      ''31-DEC-2023'',',
'                      ''A'',',
'                      ''31-DEC-2023'',',
'                      :DIVNCODE,',
'                      :EMPLCODE,',
'                      :EMPLYDOB,',
'                      ''L'',',
'                      NULL,',
'                      NULL,',
'                      NULL,',
'                      NULL,',
'                      ''0000'',',
'                      ''2359'',',
'                      :TELNUMBR,',
'                      :ADDRESS1,',
'                      :ADDRESS2,',
'                      :ADDRESS3,',
'                      :EMAILID1,',
'                      :EMAILID2,',
'                      NULL,',
'                      NULL,',
'                      NULL,',
'                      99999,',
'                      :APP_USER,',
'                      SYSDATE,',
'                      NULL,',
'                      NULL,',
'                      NULL,',
'                      NULL,',
'                      NULL,',
'                      NULL,',
'                      NULL,',
'                      NULL,',
'                      NULL,',
'                      NULL,',
'                      NULL);',
'ELSIF',
' :VALDFLAG = ''D''',
'   THEN',
'    DELETE FROM USRSGNUP',
'	WHERE VALDFLAG=''D'';',
'ELSE',
'NULL;',
'END IF;',
'      IF vErrFlag = ''Y''',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20159, vErrMsg);',
'      END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(112279708347533971)
,p_process_success_message=>'New User Successfully Approved.'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 3/4/2020 5:59:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   vErrFlag   VARCHAR2 (1);',
'   vErrMsg    VARCHAR2 (1000);',
'BEGIN',
'   BEGIN',
'      SYUSRMAS_INSERT (P_USERCODE       => :USERCODE,',
'                       P_USERNAME       => :USERNAME,',
'                       P_USERPAWD       => :USERPAWD,',
'                       P_PASWDATE       => 01 / 01 / 2023,',
'                       P_VALDFLAG       => ''A'',',
'                       P_STATDATE       => 09 / 16 / 2080,',
'                       P_DIVNCODE       => :DIVNCODE,',
'                       P_EMPLCODE       => :EMPLCODE,',
'                       P_EMPLYDOB       => :EMPLYDOB,',
'                       P_USERTYPE       => ''L'',',
'                       P_GRUPCODE       => NULL,',
'                       P_LASTLOGN       => NULL,',
'                       P_LOGINCNT       => NULL,',
'                       P_INVLDCNT       => NULL,',
'                       P_STARTIME       => ''0000'',',
'                       P_STOPTIME       => ''2359'',',
'                       P_TELNUMBR       => :TELNUMBR,',
'                       P_ADDRESS1       => :ADDRESS1,',
'                       P_ADDRESS2       => :ADDRESS2,',
'                       P_ADDRESS3       => :ADDRESS3,',
'                       P_EMAILID1       => :EMAILID1,',
'                       P_EMAILID2       => :EMAILID2,',
'                       P_STRTSUSP       => NULL,',
'                       P_STOPSUSP       => NULL,',
'                       P_LIVELOGN       => NULL,',
'                       P_MAXMLOGN       => 999999999,',
'                       P_OPRSTAMP       => :APP_USER,',
'                       P_TIMSTAMP       => SYSDATE,',
'                       P_ISGROUP        => ''N'',',
'                       P_USERSIGN       => NULL,',
'                       P_CHGFLG         => ''N'',',
'                       P_MIGFLG         => ''N'',',
'                       P_APPFLG         => ''N'',',
'                       P_MODIFYDT       => NULL,',
'                       P_DFLTWRCD       => NULL,',
'                       P_BRAND_CODE     => NULL,',
'                       P_SHORTNAM       => NULL,',
'                       P_DEFAULT_PAGE   => NULL,',
'                       P_OPERFLAG       => NULL,',
'                       P_ERR_FLAG       => vErrFlag,',
'                       P_ERR_MSG        => vErrMsg);',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         RAISE_APPLICATION_ERROR (',
'            -20157,',
'            ''ERROR - Procedure Calling Problem. '' || SQLERRM);',
'   END;',
'',
'   IF vErrFlag = ''Y''',
'   THEN',
'      RAISE_APPLICATION_ERROR (-20159, vErrMsg);',
'   END IF;',
'END;'))
);
wwv_flow_api.component_end;
end;
/
