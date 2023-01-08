prompt --application/pages/page_00098
begin
--   Manifest
--     PAGE: 00098
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
 p_id=>98
,p_user_interface_id=>wwv_flow_api.id(100064779117690213)
,p_name=>'User Rights Master Entry'
,p_alias=>'USER-RIGHTS-MASTER-ENTRY'
,p_page_mode=>'MODAL'
,p_step_title=>'User Rights Master Entry'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'var l$Tree;',
'',
'function addFeedback(pMsg){',
'  if($.browser.ie){',
'    $("#P192_FEEDBACK").val(pMsg + "\n\r" + $("#P192_FEEDBACK").val());',
'  }else{',
'    $("#P192_FEEDBACK").val(pMsg + "\n" + $("#P192_FEEDBACK").val());',
'  }',
'};',
'function searchTree(pWhat,pHow){',
'  $.tree.reference(l$Tree).search(pWhat,pHow);',
'  addFeedback("Searching the tree for " + pWhat + " yields nodes:");',
'  $(".search").each(function(){',
'    addFeedback("Matched node: " + $(this).parent().attr(''id'') + $(this).text());',
'  });',
'};',
'',
'function treeOnload(){',
'l$Tree = $("#emptree div.tree");',
'$.extend($.expr['':''], {',
'    ciContains: function(elem, i, match) {',
'        return $(elem).text().toUpperCase().indexOf(match[3].toUpperCase()) >= 0;',
'    }',
'});',
'',
'$.tree.reference(l$Tree).settings.data.async = false;',
'$.tree.reference(l$Tree).settings.callback.onselect = function(NODE, TREE_OBJ){',
'  addFeedback("Selected node: " + $(NODE).attr(''id'') + $("a:first", NODE).text());',
'  $("#P192_PROGNAME").val($(NODE).attr(''id''));',
'  $("#report_rights").trigger("apexrefresh");',
'};',
'$.tree.reference(l$Tree).settings.callback.onopen= function(NODE, TREE_OBJ) { ',
'  addFeedback("Opened node: " + $(NODE).attr(''id'') + $("a:first", NODE).text());',
'  $("#P192_PROGNAME").val($(NODE).attr(''id''));',
'};',
'$.tree.reference(l$Tree).settings.callback.onclose= function(NODE, TREE_OBJ) { ',
'  addFeedback("Closed node: " + $(NODE).attr(''id'') + $("a:first", NODE).text());',
'  $("#P192_PROGNAME").val($(NODE).attr(''id''));',
'};',
'};',
'',
'function resetAndOpenToLevel ( pTree, pMaxLevel ) {',
'   apex.jQuery.tree.reference(pTree).close_all();',
'',
'   $("ul", pTree).each(function ( index ) {',
'      if ( $(this).parents("ul").length <= pMaxLevel ) {',
'         apex.jQuery.tree.reference(pTree).open_branch(this);',
'      };',
'   });',
'};',
'*/'))
,p_javascript_code_onload=>'treeOnload();'
,p_step_template=>wwv_flow_api.id(115022350790909979)
,p_page_template_options=>'ui-dialog--stretch'
,p_dialog_chained=>'N'
,p_last_updated_by=>'ASIF'
,p_last_upd_yyyymmddhh24miss=>'20221213203328'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(333563160619657886)
,p_plug_name=>'Assigned Menu'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h480:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>45
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'u-bold'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     CASE',
'              WHEN CONNECT_BY_ISLEAF = 1',
'                 THEN 0',
'              WHEN LEVEL = 1',
'                 THEN 1',
'              ELSE -1',
'           END AS status,',
'           LEVEL, b.progdesc AS title,',
'           CASE',
'              WHEN b.menuleaf = ''M''',
'                 THEN ''fa-angle-down''',
'              ELSE ''fa-angle-right'' --''#WORKSPACE_IMAGES#bug.gif''',
'              ',
'           END AS icon,',
'           a.progname AS VALUE, NULL AS tooltip, ',
'           null as LINK --a.lnk AS LINK',
'      FROM (SELECT compcode, usercode, parentnm, progname, menuleaf',
'            /*(SELECT pageid',
'                         FROM symenmas',
'                        WHERE progname = s.progname',
'                        and pageid is not null',
'                        and compcode= :P98_C0MPCODE) pagid,',
'                      ''javascript:$s(''''''|| ''P98_PROGNAME''|| '''''',''''''|| s.progname|| '''''')'' lnk*/',
'              FROM syrights s',
'             WHERE UPPER (usercode) = UPPER (:P98_USERNAME)',
'and compcode=:compcode) a,',
'           symentre b',
'     WHERE a.parentnm = b.parentnm',
'       AND a.progname = b.progname',
'       AND UPPER (a.usercode) = UPPER (:P98_USERNAME)',
'START WITH a.parentnm = ''ROOT''',
'CONNECT BY PRIOR a.progname = a.parentnm',
'  ORDER SIBLINGS BY b.menuslno,b.LEVLCODE'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'S'
,p_attribute_04=>'N'
,p_attribute_06=>'assignrigntstree'
,p_attribute_08=>'fa'
,p_attribute_10=>'TITLE'
,p_attribute_11=>'LEVEL'
,p_attribute_12=>'ICON'
,p_attribute_15=>'STATUS'
,p_attribute_20=>'VALUE'
,p_attribute_23=>'LEVEL'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     CASE',
'              WHEN CONNECT_BY_ISLEAF = 1',
'                 THEN 0',
'              WHEN LEVEL = 1',
'                 THEN 1',
'              ELSE -1',
'           END AS status,',
'           LEVEL, b.progdesc AS title,',
'           CASE',
'              WHEN b.menuleaf = ''M''',
'                 THEN ''fa-angle-down''',
'              ELSE ''#WORKSPACE_IMAGES#bug.gif''',
'           END AS icon,',
'           a.progname AS VALUE, NULL AS tooltip, a.lnk AS LINK',
'      FROM (SELECT compcode, usercode, parentnm, progname, menuleaf,(SELECT pageid',
'                         FROM symenmas',
'                        WHERE progname = s.progname',
'                        and pageid is not null',
'                        and compcode=:compcode) pagid,',
'                      ''javascript:change_page(''''''',
'                   || s.progname',
'                   || '''''',''',
'                   || (SELECT pageid',
'                         FROM symenmas',
'                        WHERE progname = s.progname',
'                        )',
'                   || '',''''''',
'                   || s.parentnm',
'                   || '''''')'' lnk',
'              FROM syrights s',
'             WHERE UPPER (usercode) = UPPER (:app_user)',
'and compcode=:compcode) a,',
'           symentre b',
'     WHERE a.parentnm = b.parentnm',
'       AND a.progname = b.progname',
'       AND UPPER (a.usercode) = UPPER (:app_user)',
'START WITH a.parentnm = ''ROOT''',
'CONNECT BY PRIOR a.progname = a.parentnm',
'  ORDER SIBLINGS BY b.menuslno,b.LEVLCODE',
'',
'',
'CalendarHolder'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(406834757417118653)
,p_plug_name=>'Rights Details'
,p_region_name=>'rights_new'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>35
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id SL,',
'       c001, c002, c003, c004, c005, c006, c007, c008, c009,',
'       c010 ADDSTATS,',
'       c011 MODSTATS,',
'       c012 DELSTATS,',
'       c013 ENQSTATS',
'  from apex_collections ',
' where collection_name = ''ORDER''  ',
'   and c002 = nvl(:P98_USERNAME,c002)',
'   and c009 <> ''M'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P98_USERNAME'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(333559337894657848)
,p_name=>'C001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C001'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'C001'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(333559467130657849)
,p_name=>'C002'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C002'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'C002'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(333559564742657850)
,p_name=>'C003'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C003'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'C003'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(333559659870657851)
,p_name=>'C004'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C004'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'C004'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(333559764542657852)
,p_name=>'C005'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C005'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Program Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(333559835730657853)
,p_name=>'C006'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C006'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'C006'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(333559893005657854)
,p_name=>'C007'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C007'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'C007'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(333560040321657855)
,p_name=>'C008'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C008'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'C008'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(333560095962657856)
,p_name=>'C009'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C009'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'C009'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(333560611840657861)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(333560738061657862)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(333561265251657867)
,p_name=>'SL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sl'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
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
 p_id=>wwv_flow_api.id(333561802758657873)
,p_name=>'ADDSTATS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADDSTATS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Add Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(333561899934657874)
,p_name=>'MODSTATS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODSTATS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Modify Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(333561999970657875)
,p_name=>'DELSTATS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELSTATS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Delete Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(333562144315657876)
,p_name=>'ENQSTATS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENQSTATS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Enquiry Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(333559285882657847)
,p_internal_uid=>333559285882657847
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
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>400
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(333595632146048274)
,p_interactive_grid_id=>wwv_flow_api.id(333559285882657847)
,p_static_id=>'401523'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(333595736855048276)
,p_report_id=>wwv_flow_api.id(333595632146048274)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(333596192165048280)
,p_view_id=>wwv_flow_api.id(333595736855048276)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(333559337894657848)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(333596748290048302)
,p_view_id=>wwv_flow_api.id(333595736855048276)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(333559467130657849)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(333597222111048305)
,p_view_id=>wwv_flow_api.id(333595736855048276)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(333559564742657850)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(333597756312048308)
,p_view_id=>wwv_flow_api.id(333595736855048276)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(333559659870657851)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(333598204557048312)
,p_view_id=>wwv_flow_api.id(333595736855048276)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(333559764542657852)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>194.4
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(333598706708048315)
,p_view_id=>wwv_flow_api.id(333595736855048276)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(333559835730657853)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(333599284088048318)
,p_view_id=>wwv_flow_api.id(333595736855048276)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(333559893005657854)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(333599717960048321)
,p_view_id=>wwv_flow_api.id(333595736855048276)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(333560040321657855)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(333600189946048324)
,p_view_id=>wwv_flow_api.id(333595736855048276)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(333560095962657856)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(333602674637048338)
,p_view_id=>wwv_flow_api.id(333595736855048276)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(333560611840657861)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(333615119984137632)
,p_view_id=>wwv_flow_api.id(333595736855048276)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(333561265251657867)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(333631670293295715)
,p_view_id=>wwv_flow_api.id(333595736855048276)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(333561802758657873)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(333632090503295719)
,p_view_id=>wwv_flow_api.id(333595736855048276)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(333561899934657874)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(333632608917295722)
,p_view_id=>wwv_flow_api.id(333595736855048276)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(333561999970657875)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(333633175577295724)
,p_view_id=>wwv_flow_api.id(333595736855048276)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(333562144315657876)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(446486338007033476)
,p_plug_name=>'User'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>5
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(446487728337067015)
,p_plug_name=>'button Container'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(99961991426690149)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(477190177406376327)
,p_plug_name=>'AvailabLe Menu'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h480:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>25
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'u-bold'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CASE',
'                     WHEN CONNECT_BY_ISLEAF = 1 THEN 0',
'                     WHEN LEVEL = 1 THEN 1',
'                     ELSE -1',
'                  END',
'                     AS status,',
'                  LEVEL,',
'                  progdesc AS title,',
'                  CASE',
'                     WHEN menuleaf = ''M'' THEN ''fa-angle-down''',
'                     ELSE ''fa-angle-right''       --''#WORKSPACE_IMAGES#bug.gif''',
'                  END',
'                     AS icon,',
'                  progname AS VALUE,',
'                  NULL AS tooltip,',
'                  lnk AS LINK',
'             FROM (SELECT distinct levlcode,',
'                          modlcode,',
'                          menuslno,',
'                          progdesc,',
'                          progname,',
'                          menuleaf,',
'                          parentnm,',
'                             ''javascript:$s(''''''',
'                          || ''P98_PROGNAME''',
'                          || '''''',''''''',
'                          || progname',
'                          || '''''')''',
'                             lnk',
'                     FROM symentre',
'                   WHERE progname NOT IN',
'                             (SELECT progname',
'                                FROM syrights',
'                               WHERE compcode = :P98_C0MPCODE ',
'                              AND USERCODE = :P98_USERNAME',
'                              AND MENULEAF = ''L''))',
'       START WITH PARENTNM = ''ROOT''',
'       CONNECT BY PRIOR progname = parentnm',
'ORDER SIBLINGS BY menuslno, levlcode;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'S'
,p_attribute_03=>'P98_PROGNAME'
,p_attribute_04=>'N'
,p_attribute_06=>'emptree'
,p_attribute_08=>'fa'
,p_attribute_10=>'TITLE'
,p_attribute_11=>'LEVEL'
,p_attribute_15=>'STATUS'
,p_attribute_20=>'VALUE'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'LINK'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     CASE',
'              WHEN CONNECT_BY_ISLEAF = 1',
'                 THEN 0',
'              WHEN LEVEL = 1',
'                 THEN 1',
'              ELSE -1',
'           END AS status,',
'           LEVEL, b.progdesc AS title,',
'           CASE',
'              WHEN b.menuleaf = ''M''',
'                 THEN ''fa-angle-down''',
'              ELSE ''fa-angle-right'' --''#WORKSPACE_IMAGES#bug.gif''',
'              ',
'           END AS icon,',
'           a.progname AS VALUE, NULL AS tooltip, a.lnk AS LINK',
'      FROM (SELECT compcode, usercode, parentnm, progname, menuleaf,(SELECT pageid',
'                         FROM symenmas',
'                        WHERE progname = s.progname',
'                        and pageid is not null',
'                        and compcode=:P98_C0MPCODE) pagid,',
'                      ''javascript:$s(''''''',
'                   || ''P98_PROGNAME''',
'                   || '''''',''''''',
'                   || s.progname',
'                   || '''''')'' lnk',
'              FROM syrights s',
'             WHERE UPPER (usercode) = UPPER (:P98_USERNAME)',
'and compcode=:compcode) a,',
'           symentre b',
'     WHERE a.parentnm = b.parentnm',
'       AND a.progname = b.progname',
'       AND UPPER (a.usercode) = UPPER (:P98_USERNAME)',
'START WITH a.parentnm = ''ROOT''',
'CONNECT BY PRIOR a.progname = a.parentnm',
'  ORDER SIBLINGS BY b.menuslno,b.LEVLCODE'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(136308741326465998)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(446486338007033476)
,p_button_name=>'Apply'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(100042353897690193)
,p_button_image_alt=>'Apply'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(136311051180466000)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(446487728337067015)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(100042305862690193)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(136299825251465990)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(333563160619657886)
,p_button_name=>'CONTRACT_ALL_RIGHT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(100041537009690190)
,p_button_image_alt=>'Collapse All'
,p_button_position=>'COPY'
,p_button_redirect_url=>'javascript:apex.widget.tree.collapse_all(''assignrigntstree'');'
,p_icon_css_classes=>'fa-minus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(136312192233466000)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(477190177406376327)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(100041537009690190)
,p_button_image_alt=>'Collapse'
,p_button_position=>'COPY'
,p_button_redirect_url=>'javascript:apex.widget.tree.collapse_all(''emptree'');'
,p_icon_css_classes=>'fa-minus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(136312571769466001)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(477190177406376327)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(100041537009690190)
,p_button_image_alt=>'Expand All'
,p_button_position=>'COPY'
,p_button_redirect_url=>'javascript:apex.widget.tree.expand_all(''emptree'');'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(136300208481465991)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(333563160619657886)
,p_button_name=>'EXPAND_ALL_RIGHT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(100041537009690190)
,p_button_image_alt=>'Expand All'
,p_button_position=>'COPY'
,p_button_redirect_url=>'javascript:apex.widget.tree.expand_all(''assignrigntstree'');'
,p_icon_css_classes=>'fa-plus'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(136311464276466000)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(446487728337067015)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(100042305862690193)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136309164592465999)
,p_name=>'P98_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(446486338007033476)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136309501255465999)
,p_name=>'P98_USERNAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(446486338007033476)
,p_prompt=>'User Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>60
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(100041297904690187)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USERCODE||'' - ''||USERNAME as display_value, USERCODE as return_value ',
'  from SYUSRMAS',
' order by 1'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136309921205465999)
,p_name=>'P98_C0MPCODE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(446486338007033476)
,p_prompt=>'Company Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cSize=>60
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(100041297904690187)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136310314539465999)
,p_name=>'P98_PROGNAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(446486338007033476)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(136314152691466003)
,p_name=>'cancel dialog'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(136311051180466000)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136314660686466003)
,p_event_id=>wwv_flow_api.id(136314152691466003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136315140178466003)
,p_event_id=>wwv_flow_api.id(136314152691466003)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER'') then',
'   apex_collection.delete_collection(''ORDER'');',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136315639086466003)
,p_event_id=>wwv_flow_api.id(136314152691466003)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(136316090633466003)
,p_name=>'add to collection'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P98_PROGNAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136316584078466004)
,p_event_id=>wwv_flow_api.id(136316090633466003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   FOR x IN (SELECT parentnm,progname,progdesc,modlcode,levlcode,menuslno,menuleaf',
'            FROM (SELECT parentnm,progname,progdesc,modlcode,levlcode,menuslno,menuleaf',
'                    FROM symentre',
'                   WHERE progname = ''ROOT'')',
'          UNION ALL',
'          SELECT parentnm,progname,progdesc,modlcode,levlcode,menuslno,menuleaf',
'            FROM symentre',
'           WHERE     progname = :p98_progname',
'                 AND progname NOT IN (SELECT c004',
'                                        FROM apex_collections',
'                                       WHERE collection_name = ''ORDER'')',
'          UNION ALL',
'          SELECT parentnm,progname,progdesc,modlcode,levlcode,menuslno,menuleaf',
'            FROM symentre',
'           WHERE progname = (SELECT parentnm',
'                               FROM symentre',
'                              WHERE progname = :p98_progname)',
'          UNION ALL',
'          SELECT parentnm,progname,progdesc,modlcode,levlcode,menuslno,menuleaf',
'            FROM symentre',
'           WHERE progname = (SELECT parentnm',
'                               FROM symentre',
'                              WHERE progname = :p98_progname)',
'          UNION ALL',
'          SELECT parentnm,progname,progdesc,modlcode,levlcode,menuslno,menuleaf',
'            FROM symentre',
'           WHERE progname =',
'                    (SELECT DISTINCT parentnm',
'                       FROM symentre',
'                      WHERE progname = (SELECT parentnm',
'                                          FROM symentre',
'                                         WHERE progname = :p98_progname))',
'          UNION ALL',
'          SELECT parentnm,progname,progdesc,modlcode,levlcode,menuslno,menuleaf',
'            FROM symentre',
'           WHERE progname =',
'                    (SELECT DISTINCT parentnm',
'                       FROM symentre',
'                      WHERE progname =',
'                               (SELECT DISTINCT parentnm',
'                                  FROM symentre',
'                                 WHERE progname =',
'                                          (SELECT parentnm',
'                                             FROM symentre',
'                                            WHERE progname = :P98_PROGNAME))))',
'   LOOP',
'      apex_collection.add_member (p_collection_name   => ''ORDER'',',
'                                  p_c001              => :P98_C0MPCODE,',
'                                  p_c002              => :P98_USERNAME,',
'                                  p_c003              => x.parentnm,',
'                                  p_c004              => x.progname,',
'                                  p_c005              => x.PROGDESC,',
'                                  p_c006              => x.MODLCODE,',
'                                  p_c007              => x.LEVLCODE,',
'                                  p_c008              => x.MENUSLNO,',
'                                  p_c009              => x.MENULEAF,',
'                                  p_c010              => ''N'',',
'                                  p_c011              => ''N'',',
'                                  p_c012              => ''N'',',
'                                  p_c013              => ''Y'');',
'   END LOOP;',
'END;'))
,p_attribute_02=>'P98_USERNAME,P98_C0MPCODE,P98_PROGNAME'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136317054440466004)
,p_event_id=>wwv_flow_api.id(136316090633466003)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(406834757417118653)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(136308000190465998)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(406834757417118653)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Rights_New - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    case :APEX$ROW_STATUS',
'    ',
'    when ''U'' then',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER'',',
'        p_seq => :SL,',
'        p_attr_number => 10,',
'        p_attr_value => :ADDSTATS);     ',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER'',',
'        p_seq => :SL,',
'        p_attr_number => 11,',
'        p_attr_value => :MODSTATS); ',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER'',',
'        p_seq => :SL,',
'        p_attr_number => 12,',
'        p_attr_value => :DELSTATS); ',
'        ',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER'',',
'        p_seq => :SL,',
'        p_attr_number => 13,',
'        p_attr_value => :ENQSTATS);         ',
'        ',
'        commit;',
'',
'    when ''D'' then    ',
'        APEX_COLLECTION.DELETE_MEMBER (',
'        p_collection_name => ''ORDER'',',
'        p_seq             => :SL);',
'        commit;',
'    end case;',
'',
'exception ',
'    when others then',
'    raise_application_error(-20001, sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(195654811699526895)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(136313378904466001)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into syrights on submit button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_count number := 0;',
'begin',
'select count(*)  ',
' into l_count ',
' from syrights',
'where COMPCODE = :P98_C0MPCODE ',
'  and USERCODE = :P98_USERNAME;',
'',
'if l_count = 0 then',
'',
'for x in (select distinct c001,c002, c003, c004,c005,c006,c007,c008,c009,c010,c011,c012,c013 ',
'            from apex_collections ',
'           where collection_name = ''ORDER''  ',
'             and c001 = :P98_C0MPCODE',
'             and c002 = :P98_USERNAME',
'order by c006',
')',
'loop',
'insert into syrights (COMPCODE, USERCODE, PARENTNM, PROGNAME, PROGDESC, MODLCODE, LEVLCODE, MENUSLNO, MENULEAF,',
'                      ADDSTATS, MODSTATS, DELSTATS, ENQSTATS,OPRSTAMP, TIMSTAMP)',
'values(x.c001, :P98_USERNAME, x.c003, x.c004, x.c005, x.c006, x.c007, x.c008, x.c009, x.c010, x.c011, x.c012, x.c013,:APP_USER, SYSDATE);',
'end loop;',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(136311464276466000)
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Insert Successfully............',
''))
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct nvl(temps.PROGNAME, new.c004) c004,',
'new.c001, new.c002, new.c003, new.c005, ',
'new.c006, new.c007, new.c008, new.c009,  ',
'nvl(temps.ADDSTATS, new.c010) c010, nvl(temps.MODSTATS, new.c011) c011, nvl(temps.DELSTATS, new.c012) c012,',
'nvl(temps.ENQSTATS, new.c013) c013',
'from apex_collections new',
'full outer join',
'( select *',
'from orbrgs.syrights1',
') temps',
'on (new.c004 = temps.PROGNAME and ',
'new.collection_name = ''ORDER'')'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(136313746679466002)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'merge into syrights'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_count number := 0;',
'begin',
'',
'merge into syrights emp',
'using (select distinct c001,c002,c003,c004,c005,c006,c007,c008,c009,c010,c011,c012,c013 ',
'         from apex_collections ',
'        where collection_name = ''ORDER''',
'          and c002 = nvl(:P98_USERNAME,c002)',
'          and c004 NOT IN ( SELECT progname',
'                             FROM syrights',
'                            WHERE compcode = :P98_C0MPCODE ',
'                              AND USERCODE = :P98_USERNAME)) x ',
'           on (emp.PROGNAME = x.c004 ',
'          and COMPCODE = x.c001 ',
'          and USERCODE = x.c002 )',
'          ',
'when matched then',
'update set  ADDSTATS = x.c010, ',
'            MODSTATS = x.c011, ',
'            DELSTATS = x.c012, ',
'            ENQSTATS = x.c013',
' where emp.PROGNAME = x.c004',
'   and emp.COMPCODE = x.c001 ',
'--delete  where PROGNAME != x.c004',
'',
'when not matched then',
'insert (COMPCODE, USERCODE, PARENTNM, PROGNAME, PROGDESC, MODLCODE, LEVLCODE, MENUSLNO, MENULEAF,',
'        ADDSTATS, MODSTATS, DELSTATS, ENQSTATS,OPRSTAMP, TIMSTAMP)',
'values (x.c001,:P98_USERNAME, x.c003, x.c004,x.c005,x.c006,x.c007,x.c008,x.c009,x.c010,x.c011,x.c012,x.c013,:APP_USER,SYSDATE);',
'--end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(136311464276466000)
,p_process_success_message=>'Insert Successfully.....'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(136312981432466001)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create or Truncate ORDER Collection'
,p_process_sql_clob=>'apex_collection.create_or_truncate_collection (p_collection_name => ''ORDER'');'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
