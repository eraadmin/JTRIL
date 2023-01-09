prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Account Definition Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Account Definition Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20200930130331'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(23449225268520218)
,p_name=>'Search Results'
,p_template=>wwv_flow_api.id(1582249860200857855)
,p_display_sequence=>30
,p_icon_css_classes=>'MONIR'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COMPCODE,',
'       DOCTTYPE,',
'       SUBTTYPE,',
'       (SELECT DISTINCT NARATION',
'          FROM sydocmas',
'         WHERE     compcode = :COMPCODE',
'               AND TRANTYPE = a.DOCTTYPE',
'               AND SUBTTYPE = A.SUBTTYPE',
'               AND ROWNUM = ''1''',
'               AND TRUNC (SYSDATE) BETWEEN STRTPERD AND ENDPERD)',
'          Description,',
'       INTFDOCT,',
'       INTFSUBT,',
'       ACCTDOCT,',
'       ACCTSUBT,',
'       (SELECT DISTINCT NARATION',
'          FROM sydocmas',
'         WHERE     compcode = :COMPCODE',
'               AND TRANTYPE = a.ACCTDOCT',
'               AND SUBTTYPE = A.ACCTSUBT',
'               AND ROWNUM = ''1''',
'               AND TRUNC (SYSDATE) BETWEEN STRTPERD AND ENDPERD)',
'          ac_Description,',
'       REFDOCTY,',
'       REFSUBTY,',
'       DBACCTCD,',
'       DBCOSTCD,',
'       DECODE (DBPTYFLG,',
'               ''Y'', ''fa fa-check u-success-text'',',
'               ''fa fa-remove u-danger-text'')',
'          DBPTYFLG,',
'       CRACCTCD,',
'       CRCOSTCD,',
'       DECODE (CRPTYFLG,',
'               ''Y'', ''fa fa-check u-success-text'',',
'               ''fa fa-remove u-danger-text'')',
'          CRPTYFLG,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       DOCGENFL,',
'       CHRGTYPE,',
'       DECODE (STOCKFLG,',
'               ''Y'', ''fa fa-dot-circle-o u-success-text'',',
'               ''fa fa-circle-o u-danger-text'')',
'          STOCKFLG,',
'       DBOTHCDE,',
'       CROTHCDE,',
'       MODIFYDT,',
'       PARTY_CODE_REQUIRED',
'  FROM NMACTDEF a',
' WHERE COMPCODE = :COMPCODE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1582259508854857889)
,p_query_num_rows=>9
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23451697368520235)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23452078187520235)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Doc. Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23452413464520235)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Sub. Type'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28599050736036305)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23452807850520235)
,p_query_column_id=>5
,p_column_alias=>'INTFDOCT'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23453243070520237)
,p_query_column_id=>6
,p_column_alias=>'INTFSUBT'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23453610048520237)
,p_query_column_id=>7
,p_column_alias=>'ACCTDOCT'
,p_column_display_sequence=>8
,p_column_heading=>'A/C Doc. Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23454060202520237)
,p_query_column_id=>8
,p_column_alias=>'ACCTSUBT'
,p_column_display_sequence=>9
,p_column_heading=>'A/C Sub. Type'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28599137119036306)
,p_query_column_id=>9
,p_column_alias=>'AC_DESCRIPTION'
,p_column_display_sequence=>10
,p_column_heading=>'Account Transaction Details'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23454408161520237)
,p_query_column_id=>10
,p_column_alias=>'REFDOCTY'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23454869412520237)
,p_query_column_id=>11
,p_column_alias=>'REFSUBTY'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23455219218520239)
,p_query_column_id=>12
,p_column_alias=>'DBACCTCD'
,p_column_display_sequence=>14
,p_column_heading=>'Debit Accounts'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ACCTNAME, ACCTCODE ',
'  FROM sychrtac',
' WHERE COMPCODE = :COMPCODE',
'   --AND ACCTTYPE = 1',
'   --AND NVL (HEADFLAG, ''N'') = ''N''',
'   --AND NVL (APACTFLG, ''N'') = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23482975910426217)
,p_query_column_id=>13
,p_column_alias=>'DBCOSTCD'
,p_column_display_sequence=>15
,p_column_heading=>'Default Debit CostCenter'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COSTDESC, COSTCODE',
'  FROM syjobmas',
' WHERE compcode = :compcode'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23483050685426218)
,p_query_column_id=>14
,p_column_alias=>'DBPTYFLG'
,p_column_display_sequence=>24
,p_column_heading=>'Party at Debit'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span class="#DBPTYFLG#" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23483168472426219)
,p_query_column_id=>15
,p_column_alias=>'CRACCTCD'
,p_column_display_sequence=>16
,p_column_heading=>'Credit A/C Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ACCTNAME, ACCTCODE',
'  FROM sychrtac',
' WHERE COMPCODE = :COMPCODE',
'   --AND ACCTTYPE = 1',
'   --AND NVL (HEADFLAG, ''N'') = ''N''',
'   --AND NVL (APACTFLG, ''N'') = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23483297113426220)
,p_query_column_id=>16
,p_column_alias=>'CRCOSTCD'
,p_column_display_sequence=>17
,p_column_heading=>'Credit CostCenter'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COSTDESC, COSTCODE',
'  FROM syjobmas',
' WHERE compcode = :compcode'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23483371746426221)
,p_query_column_id=>17
,p_column_alias=>'CRPTYFLG'
,p_column_display_sequence=>25
,p_column_heading=>'Party at Credit'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span class="#CRPTYFLG#" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23483452590426222)
,p_query_column_id=>18
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23483569283426223)
,p_query_column_id=>19
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>19
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23483671164426224)
,p_query_column_id=>20
,p_column_alias=>'DOCGENFL'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23455622553520239)
,p_query_column_id=>21
,p_column_alias=>'CHRGTYPE'
,p_column_display_sequence=>18
,p_column_heading=>'Charge Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :COMPCODE',
'   AND modlcode = ''NM''',
'   AND nmhrdcde = ''TMC''',
'   AND nmrtdnon = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23483788236426225)
,p_query_column_id=>22
,p_column_alias=>'STOCKFLG'
,p_column_display_sequence=>26
,p_column_heading=>'Stock'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span class="#STOCKFLG#" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>'<span class="#STOCKFLG#" aria-hidden="true"></span>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23483828258426226)
,p_query_column_id=>23
,p_column_alias=>'DBOTHCDE'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23483964618426227)
,p_query_column_id=>24
,p_column_alias=>'CROTHCDE'
,p_column_display_sequence=>23
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23484081682426228)
,p_query_column_id=>25
,p_column_alias=>'MODIFYDT'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23484185248426229)
,p_query_column_id=>26
,p_column_alias=>'PARTY_CODE_REQUIRED'
,p_column_display_sequence=>29
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23449389021520218)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1927908352502839038)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>2
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_api.id(23449225268520218)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_06=>'Y'
,p_attribute_09=>'N'
,p_attribute_13=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(114684106832572304)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(114684274509572305)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(114684106832572304)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23449884242520221)
,p_name=>'P34_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23449389021520218)
,p_prompt=>'Search'
,p_source=>'DOCTTYPE, SUBTTYPE, ACCTDOCT, ACCTSUBT, DBACCTCD, DBCOSTCD, DBPTYFLG, CRACCTCD, CRCOSTCD, CRPTYFLG, CHRGTYPE, STOCKFLG, DBOTHCDE, CROTHCDE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_fc_show_label=>true
,p_fc_show_chart=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23450246280520225)
,p_name=>'P34_ACCTDOCT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23449389021520218)
,p_prompt=>'A/C Doc. Type'
,p_source=>'ACCTDOCT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT initcap(NARATION), TRANTYPE ',
' FROM sydocmas',
'WHERE compcode = :compcode'))
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_toggleable=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23450649042520226)
,p_name=>'P34_ACCTSUBT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23449389021520218)
,p_prompt=>'A/C Subtype'
,p_source=>'ACCTSUBT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<1;|1,1 - 2;1|2,2 - 3;2|3,>=3;3|'
,p_required_patch=>wwv_flow_api.id(15392507445824940)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_toggleable=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23451099832520226)
,p_name=>'P34_CHRGTYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23449389021520218)
,p_prompt=>'Charge Type'
,p_source=>'CHRGTYPE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP (nmcoddes), nmsofcde ',
' FROM nmcodmas',
'WHERE compcode = :compcode'))
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_toggleable=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(114684341583572306)
,p_name=>'close dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(114684274509572305)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(114684442257572307)
,p_event_id=>wwv_flow_api.id(114684341583572306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.component_end;
end;
/
