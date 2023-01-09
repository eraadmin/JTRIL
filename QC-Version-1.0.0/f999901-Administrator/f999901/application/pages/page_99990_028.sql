prompt --application/pages/page_99990_028
begin
--   Manifest
--     PAGE: 99990
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
 p_id=>9999010102
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Cost Center Access Entry'
,p_alias=>'COST-CENTER-ACCESS-ENTRY'
,p_page_mode=>'MODAL'
,p_step_title=>'Cost Center Access Entry'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'    ',
'function GetValues1(){',
'ckbox = document.getElementsByName("f01");',
'count=0;',
'for(var i=0;i<ckbox.length;i++){',
' element = ckbox[i];',
'  if(element.checked){',
'   count++;',
'  }',
'}',
'    ',
'} ',
'',
'</script>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'GetValues1();'))
,p_javascript_code_onload=>'GetValues1();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ig_cost button[data-action="selection-add-row"], div[data-action="edit"] {',
'    display: none !important;',
'}',
'',
'#CR thead tr th:nth-child(1),',
'    #CR tbody tr td:nth-child(1) {',
'        display: none;',
'    }',
'',
'/* td[headers="COSTCODE2"]',
'{',
'   display:none;',
'}',
'',
'th[headers="COSTCODE"]',
'{',
'   display:none;',
'} */',
'',
''))
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'SAIMA1'
,p_last_upd_yyyymmddhh24miss=>'20230103162826'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(259755325913470155)
,p_plug_name=>'User'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(259756990584470172)
,p_plug_name=>'Cost Center Access'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(327156585777573390)
,p_plug_name=>'Cost Center Access Grid'
,p_region_name=>'ig_cost'
,p_parent_plug_id=>wwv_flow_api.id(259756990584470172)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       GRUPCODE,',
'       CABASECC,',
'       WARECODE,',
'       dfn_warename(warecode,compcode) WAREHOUSE,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       MODIFYDT',
'  from SYCSTACC',
' where COMPCODE = :P9999010102_COMPCODE',
'   and GRUPCODE = :P9999010102_USERCODE'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P9999010102_COMPCODE,P9999010102_USERCODE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40992484623194207)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40992586882194208)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(327156829844573392)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(327156917044573393)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(327157002648573394)
,p_name=>'GRUPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRUPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(327157139721573395)
,p_name=>'CABASECC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CABASECC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Cost Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>false
,p_max_length=>10
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(57331622931070728)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'-Select-'
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
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT costcode||'' - ''||costdesc d, costcode r',
'    FROM SYJOBMAS s',
'   WHERE compcode = :COMPCODE',
'     AND NVL (Validity, ''N'') = ''N''',
'ORDER BY LENGTH (costcode), costcode'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(328197688730537346)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Warehouse'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>true
,p_max_length=>4
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || INITCAP (waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :P9999010102_COMPCODE',
'     AND costcode = :CABASECC',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'     /*',
'     AND warecode IN',
'                 (SELECT warecode',
'                   FROM sycstacc',
'                  WHERE compcode = :P9999010102_COMPCODE',
'                    AND grupcode = :app_user)',
'     AND warecode NOT IN',
'                 (SELECT warecode',
'                   FROM sycstacc',
'                  WHERE compcode = :P9999010102_COMPCODE',
'                    AND grupcode = :P9999010102_USERCODE)',
'                    */',
'ORDER BY warecode'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'CABASECC'
,p_ajax_items_to_submit=>'P9999010102_COMPCODE,P9999010102_USERCODE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(328197767277537347)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(328197888200537348)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(328198026400537349)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(327156657722573391)
,p_internal_uid=>327156657722573391
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>true
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>380
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(328203581707541634)
,p_interactive_grid_id=>wwv_flow_api.id(327156657722573391)
,p_static_id=>'401529'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(328203685241541635)
,p_report_id=>wwv_flow_api.id(328203581707541634)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(41046950583509418)
,p_view_id=>wwv_flow_api.id(328203685241541635)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(40992484623194207)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(328204162702541637)
,p_view_id=>wwv_flow_api.id(328203685241541635)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(327156829844573392)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(328204644202541641)
,p_view_id=>wwv_flow_api.id(328203685241541635)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(327156917044573393)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(328205232015541643)
,p_view_id=>wwv_flow_api.id(328203685241541635)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(327157002648573394)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(328205696121541645)
,p_view_id=>wwv_flow_api.id(328203685241541635)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(327157139721573395)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(328206173310541648)
,p_view_id=>wwv_flow_api.id(328203685241541635)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(328197688730537346)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(328206671341541651)
,p_view_id=>wwv_flow_api.id(328203685241541635)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(328197767277537347)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(328207213152541652)
,p_view_id=>wwv_flow_api.id(328203685241541635)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(328197888200537348)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(328207716266541654)
,p_view_id=>wwv_flow_api.id(328203685241541635)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(328198026400537349)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(264140615248584947)
,p_name=>'Available Cost Center'
,p_region_name=>'CR'
,p_template=>wwv_flow_api.id(1582248828871857852)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM sl,',
'       APEX_ITEM.DISPLAY_AND_SAVE (7,  a.COSTCODE) COSTCODE,',
'       a.COSTDESC COSTCODE2,',
'       APEX_ITEM.DISPLAY_AND_SAVE (8,  b.WARECODE) WARECODE,',
'        b.waredesc WARECODE2,',
'       (SELECT ZONLCODE',
'          FROM nmwhsmas c',
'         WHERE COMPCODE = :P9999010102_COMPCODE AND c.costcode = a.costcode AND c.warecode = b.warecode AND NVL (b.SRVCWFLG, ''Y'') = ''N'') ZONLCODE,',
'        APEX_ITEM.CHECKBOX (1, p_value => ROW_NUMBER() OVER (ORDER BY :sl DESC), p_attributes => ''onchange="GetValues1();"'') "select"',
'  FROM syjobmas a, nmwhsmas b',
' WHERE a.compcode = :P9999010102_COMPCODE',
'   AND a.compcode = b.COMPCODE',
'   AND a.costcode = b.costcode',
'   AND NVL (a.validity, ''N'') = ''Y''',
'   AND NVL (srvcwflg, ''N'') = ''N''',
'   AND a.costcode NOT IN (SELECT c003',
'                          FROM apex_collections',
'                         WHERE collection_name = ''ORDER_ITEMS'')',
'    order by sl'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P9999010102_COMPCODE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1582259508854857889)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<h4 style="text-align:center;color:red;font-weight:bold;">There is no available cost center for this user.</h4>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT ROWNUM sl,',
'               a.COSTCODE,',
'               (SELECT WARECODE FROM nmwhsmas b WHERE b.costcode = a.costcode AND nvl(b.SRVCWFLG,''Y'') = ''N'') WARECODE,',
'               (SELECT ZONLCODE FROM nmwhsmas b WHERE b.costcode = a.costcode AND nvl(b.SRVCWFLG,''Y'') = ''N'') ZONLCODE,',
'               APEX_ITEM.CHECKBOX(1,a.COSTCODE,''CHECKED'') "select"',
'          FROM syjobmas a',
'         WHERE compcode = :COMPCODE',
'           AND NVL (validity, ''N'') = ''Y''',
'           AND costcode NOT IN (SELECT c003',
'                                  FROM apex_collections',
'                                 WHERE collection_name = ''ORDER_ITEMS'')'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30891413833348212)
,p_query_column_id=>1
,p_column_alias=>'SL'
,p_column_display_sequence=>10
,p_column_heading=>'Sl'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30891898569348213)
,p_query_column_id=>2
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>20
,p_column_heading=>'Costcode'
,p_column_format=>'PCT_GRAPH:::'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30892233633348213)
,p_query_column_id=>3
,p_column_alias=>'COSTCODE2'
,p_column_display_sequence=>30
,p_column_heading=>'Cost Description'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30892686201348213)
,p_query_column_id=>4
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>40
,p_column_heading=>'Warecode'
,p_column_format=>'PCT_GRAPH:::'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30893045822348213)
,p_query_column_id=>5
,p_column_alias=>'WARECODE2'
,p_column_display_sequence=>50
,p_column_heading=>'Warehouse'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30893477442348214)
,p_query_column_id=>6
,p_column_alias=>'ZONLCODE'
,p_column_display_sequence=>60
,p_column_heading=>'Zone'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30893871562348214)
,p_query_column_id=>7
,p_column_alias=>'select'
,p_column_display_sequence=>80
,p_column_heading=>'Select <br><input type="checkbox" onclick="javascript:$f_CheckAll(this, this.checked, $(''[name=f01]''));" onchange="GetValues1();">'
,p_column_format=>'PCT_GRAPH:::'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(341831603028295968)
,p_plug_name=>'Available Cost '
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(1582248828871857852)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM sl,',
'       a.COSTCODE,',
'       b.WARECODE,',
'       (SELECT ZONLCODE',
'          FROM nmwhsmas c',
'         WHERE COMPCODE = :P9999010102_COMPCODE AND c.costcode = a.costcode AND c.warecode = b.warecode AND NVL (b.SRVCWFLG, ''Y'') = ''N'') ZONLCODE,',
'       APEX_ITEM.CHECKBOX (1, a.COSTCODE, p_attributes => ''onchange="GetValues1();"'') "select"',
'  FROM syjobmas a, nmwhsmas b',
' WHERE a.compcode = :P9999010102_COMPCODE',
'   AND a.compcode = b.COMPCODE',
'   AND a.costcode = b.costcode',
'   AND NVL (a.validity, ''N'') = ''Y''',
'   AND NVL (srvcwflg, ''N'') = ''N''',
'   AND a.costcode NOT IN (SELECT c003',
'                          FROM apex_collections',
'                         WHERE collection_name = ''ORDER_ITEMS'')',
'',
'--APEX_ITEM.CHECKBOX (1, p_value => ROW_NUMBER() OVER (ORDER BY ITEMCODE DESC), p_attributes => ''onchange="GetValues1();"'') "select"'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P9999010102_COMPCODE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Available Cost '
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT ROWNUM sl,',
'               a.COSTCODE,',
'               (SELECT WARECODE FROM nmwhsmas b WHERE b.costcode = a.costcode AND nvl(b.SRVCWFLG,''Y'') = ''N'') WARECODE,',
'               (SELECT ZONLCODE FROM nmwhsmas b WHERE b.costcode = a.costcode AND nvl(b.SRVCWFLG,''Y'') = ''N'') ZONLCODE,',
'               APEX_ITEM.CHECKBOX(1,a.COSTCODE,''CHECKED'') "select"',
'          FROM syjobmas a',
'         WHERE compcode = :COMPCODE',
'           AND NVL (validity, ''N'') = ''Y''',
'           AND costcode NOT IN (SELECT c003',
'                                  FROM apex_collections',
'                                 WHERE collection_name = ''ORDER_ITEMS'')'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(341833241611295984)
,p_name=>'SL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sl'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(341833330930295985)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_PCT_GRAPH'
,p_heading=>'Costcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(341833437438295986)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_PCT_GRAPH'
,p_heading=>'Warecode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(341833528695295987)
,p_name=>'ZONLCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ZONLCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Zonlcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(341833570248295988)
,p_name=>'select'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'select'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_PCT_GRAPH'
,p_heading=>'Select'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(343609364489713646)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(343609442428713647)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(341833119463295983)
,p_internal_uid=>341833119463295983
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(343587292065662679)
,p_interactive_grid_id=>wwv_flow_api.id(341833119463295983)
,p_static_id=>'1405802'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(343587502635662683)
,p_report_id=>wwv_flow_api.id(343587292065662679)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(343587967329662688)
,p_view_id=>wwv_flow_api.id(343587502635662683)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(341833241611295984)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(343588845178662694)
,p_view_id=>wwv_flow_api.id(343587502635662683)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(341833330930295985)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(343589756870662696)
,p_view_id=>wwv_flow_api.id(343587502635662683)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(341833437438295986)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(343590602826662700)
,p_view_id=>wwv_flow_api.id(343587502635662683)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(341833528695295987)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(343591541756662704)
,p_view_id=>wwv_flow_api.id(343587502635662683)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(341833570248295988)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(343615435379714261)
,p_view_id=>wwv_flow_api.id(343587502635662683)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(343609364489713646)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30898892865348232)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(341831603028295968)
,p_button_name=>'BACK_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30899294938348232)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(341831603028295968)
,p_button_name=>'APPLY_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Add All'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30894207637348215)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(264140615248584947)
,p_button_name=>'BACK'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30901455452348235)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(259756990584470172)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30894657087348216)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(264140615248584947)
,p_button_name=>'APPLY'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Add All'
,p_button_position=>'CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40992250565194205)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(259756990584470172)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Submit'
,p_button_position=>'CREATE'
,p_button_condition=>'TRNMODE'
,p_button_condition2=>'A'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40992714032194210)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(259756990584470172)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Delete'
,p_button_position=>'CREATE'
,p_button_condition=>'TRNMODE'
,p_button_condition2=>'M'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40992348729194206)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(259756990584470172)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_button_condition=>'TRNMODE'
,p_button_condition2=>'M'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30901835173348235)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(259756990584470172)
,p_button_name=>'ACCESS_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Access All'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30902287701348236)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(259756990584470172)
,p_button_name=>'REMOVE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Remove All'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_api.id(69907654439180345)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(40992110928194204)
,p_branch_name=>'Go to success page'
,p_branch_action=>'f?p=&SUCCESS_APP.:&SUCCESS_PAGE.:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30899901890348233)
,p_name=>'P9999010102_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(259755325913470155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30900305236348234)
,p_name=>'P9999010102_USERCODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(259755325913470155)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT usercode||'' - ''||username d, usercode r',
'    FROM (SELECT b.usercode, b.username',
'            FROM syusrmas b',
'           WHERE b.DIVNCODE = :COMPCODE',
'          UNION',
'          SELECT DISTINCT A.USERCODE,',
'                          (SELECT username',
'                             FROM syusrmas',
'                            WHERE usercode = A.USERCODE) username',
'            FROM syrights a',
'           WHERE A.COMPCODE = :COMPCODE)',
'ORDER BY usercode ASC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30900795135348235)
,p_name=>'P9999010102_COMPCODE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(259755325913470155)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'GROUPWISE COMPANY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cacmpcde||'' - ''||cacmpnam d, cacmpcde r',
'  FROM SYPARMAS',
' WHERE cagrpcde = ''001'' ',
'   AND CACMPCDE = :COMPCODE'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30909221700348245)
,p_name=>'cancel dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(30901455452348235)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30909778068348245)
,p_event_id=>wwv_flow_api.id(30909221700348245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30910229961348246)
,p_event_id=>wwv_flow_api.id(30909221700348245)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30910769127348246)
,p_event_id=>wwv_flow_api.id(30909221700348245)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30911119966348246)
,p_name=>'refresh grid'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999010102_USERCODE,P9999010102_COMPCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30911669351348246)
,p_event_id=>wwv_flow_api.id(30911119966348246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF apex_collection.collection_exists(''ORDER_ITEMS'') THEN',
'   apex_collection.delete_collection(''ORDER_ITEMS'');',
'   commit;',
'END IF;',
' ',
'begin',
'    APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B (',
'        p_collection_name =>''ORDER_ITEMS'', ',
'                  p_query => ''  SELECT COMPCODE,',
'                                       GRUPCODE,',
'                                       CABASECC,',
'                                       WARECODE',
'                                  FROM SYCSTACC',
'                                 WHERE GRUPCODE = ''''''||:P9999010102_USERCODE||''''''',
'                                   AND COMPCODE = ''''''||:P9999010102_COMPCODE||''''''',
'                            '');',
'end;'))
,p_attribute_02=>'P9999010102_USERCODE,P9999010102_COMPCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30912101678348247)
,p_event_id=>wwv_flow_api.id(30911119966348246)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(327156585777573390)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30912506422348247)
,p_name=>'remove all'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(30902287701348236)
,p_condition_element=>'P9999010102_USERCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30913008455348247)
,p_event_id=>wwv_flow_api.id(30912506422348247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Remove All &PROGDESE.?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30913566130348247)
,p_event_id=>wwv_flow_api.id(30912506422348247)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    DELETE FROM SYCSTACC',
'     WHERE COMPCODE = :P9999010102_COMPCODE',
'       AND GRUPCODE = :P9999010102_USERCODE;',
'exception ',
'    when others then',
'    raise_application_error(-20001,sqlcode||''-''||sqlerrm);',
'end;'))
,p_attribute_02=>'P9999010102_COMPCODE,P9999010102_USERCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30914094854348247)
,p_event_id=>wwv_flow_api.id(30912506422348247)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(327156585777573390)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30914569623348248)
,p_event_id=>wwv_flow_api.id(30912506422348247)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Remove Successfull.....'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30914912997348248)
,p_name=>'Access All'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(30901835173348235)
,p_condition_element=>'P9999010102_USERCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30915417112348248)
,p_event_id=>wwv_flow_api.id(30914912997348248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF apex_collection.collection_exists(''ORDER_ITEMS'') THEN',
'   apex_collection.delete_collection(''ORDER_ITEMS'');',
'   commit;',
'END IF;',
' ',
'begin',
'    APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B (',
'        p_collection_name =>''ORDER_ITEMS'', ',
'                  p_query => ''  SELECT COMPCODE,',
'                                       GRUPCODE,',
'                                       CABASECC,',
'                                       WARECODE',
'                                  FROM SYCSTACC',
'                                 WHERE GRUPCODE = ''''''||:P9999010102_USERCODE||''''''',
'                                   AND COMPCODE = ''''''||:P9999010102_COMPCODE||''''''',
'                            '');',
'end;'))
,p_attribute_02=>'P9999010102_USERCODE,P9999010102_COMPCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30915984355348248)
,p_event_id=>wwv_flow_api.id(30914912997348248)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(264140615248584947)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30916430665348249)
,p_event_id=>wwv_flow_api.id(30914912997348248)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(264140615248584947)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30916850405348249)
,p_name=>'close region'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(30894207637348215)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30917301459348249)
,p_event_id=>wwv_flow_api.id(30916850405348249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(264140615248584947)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30946831023675606)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(327156585777573390)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE_INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':COMPCODE := :P9999010102_COMPCODE;',
':GRUPCODE := :P9999010102_USERCODE;',
':OPRSTAMP := :APP_USER;',
'',
'declare',
'    v_sycstacc number;',
'begin',
'    select count(GRUPCODE) into v_sycstacc',
'        from sycstacc ',
'        where COMPCODE = :P9999010102_COMPCODE',
'        and CABASECC = :CABASECC',
'        and GRUPCODE = :P9999010102_USERCODE',
'        and WARECODE = :WARECODE',
'        and OPRSTAMP = :app_user;',
'    ',
'    if v_sycstacc > 0 then',
'        raise_application_error(-20001, ''Data is already exists. Duplicate data found.'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(40992250565194205)
,p_process_when=>'SUBMIT, SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40992682815194209)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(327156585777573390)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Cost Center Access Grid - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30908851898348244)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'access all insert SYCSTACC'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 20/Jan/22 1:23:25 PM (QP5 v5.287) */',
'DECLARE',
'   v_COSTCODE   VARCHAR2 (100);',
'   v_WARECODE   VARCHAR2 (100);',
'   v_sycstacc number;',
'BEGIN',
'   FOR i IN 1 .. APEX_APPLICATION.G_F01.COUNT',
'   LOOP',
'      SELECT a.COSTCODE, b.WARECODE',
'        INTO v_COSTCODE, v_WARECODE',
'        FROM syjobmas a, nmwhsmas b',
'       WHERE     a.compcode = :COMPCODE',
'             AND a.compcode = b.COMPCODE',
'             AND a.costcode = b.costcode',
'             AND NVL (a.validity, ''N'') = ''Y''',
'             AND NVL (srvcwflg, ''N'') = ''N''',
'             AND a.costcode NOT IN (SELECT c003',
'                                      FROM apex_collections',
'                                     WHERE collection_name = ''ORDER_ITEMS'')',
'             AND a.COSTCODE = APEX_APPLICATION.G_F07 (i)',
'             AND b.WARECODE = APEX_APPLICATION.G_F08 (i);',
'',
'    select count(GRUPCODE) into v_sycstacc',
'        from sycstacc ',
'        where COMPCODE = :P9999010102_COMPCODE',
'        and CABASECC = :CABASECC',
'        and GRUPCODE = :P9999010102_USERCODE',
'        and WARECODE = :WARECODE',
'        and OPRSTAMP = :app_user;',
'',
'      BEGIN',
'      if v_sycstacc = 0 then',
'    ',
'         DPR_INSERT_SYCSTACC (P_COMPCODE   => :P9999010102_COMPCODE,',
'                              P_GRUPCODE   => :P9999010102_USERCODE,',
'                              P_CABASECC   => v_COSTCODE,',
'                              P_WARECODE   => v_WARECODE,',
'                              P_OPRSTAMP   => :app_user);',
'        ',
'',
'',
'        else',
'            raise_application_error(-20001, ''Multiple Costcode Found'');',
'        end if;',
'      END;',
'      --end if;',
'   END LOOP;',
'   EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                raise_application_error(-20001, ''No costcode found'');',
'            -- WHEN TOO_MANY_ROWS THEN',
'            --     raise_application_error(-20001, ''Multiple Costcode Found'');',
'            WHEN OTHERS THEN',
'                raise_application_error(-20001, ''Unable to add costcode'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30894657087348216)
);
wwv_flow_api.component_end;
end;
/
