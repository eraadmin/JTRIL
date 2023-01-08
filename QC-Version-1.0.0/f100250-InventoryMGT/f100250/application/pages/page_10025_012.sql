prompt --application/pages/page_10025_012
begin
--   Manifest
--     PAGE: 10025
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
 p_id=>1002500414
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Material Requisition (Department)'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function callPost() {',
'    var model = apex.region("prod_info").call("getViews","grid").model;',
'    model.forEach(function(igrow) {',
'        igrow[model.setValue(igrow,"POSTFLAG","Y")];',
'   });  ',
'}',
'',
'function callunPost() {',
'    var model = apex.region("prod_info").call("getViews","grid").model;',
'    model.forEach(function(igrow) {',
'        igrow[model.setValue(igrow,"POSTFLAG","N")];',
'   });  ',
'}',
'',
'function togglePost(){',
'    $(".postUnpost").text($(".postUnpost").text() == ''Submit All'' ? ''Submit None'' : ''Submit All''); //Label Toggle',
'    $(".postUnpost").text($(".postUnpost").text() == ''Submit All'' ? callunPost() : callPost() ); ',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".allow-integer").bind("keypress", function (e) {',
'          var keyCode = e.which ? e.which : e.keyCode               ',
'          if (!(keyCode >= 48 && keyCode <= 57)) {',
'            return false;',
'          }else{',
'          }',
'      });'))
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201103192140'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105480872298420801)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(41540688182999803)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105480914261420801)
,p_plug_name=>'Document Information'
,p_parent_plug_id=>wwv_flow_api.id(105480872298420801)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(152508986821306635)
,p_plug_name=>'Previous Request'
,p_region_name=>'PREV_DATA'
,p_parent_plug_id=>wwv_flow_api.id(105480872298420801)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47585534000858182)
,p_plug_display_sequence=>200
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(152509154383306636)
,p_name=>'Previous Request'
,p_parent_plug_id=>wwv_flow_api.id(152508986821306635)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM sl,',
'       itemcode,',
'       itemdesc,',
'       luomcode,',
'       itemrate,',
'       APEX_ITEM.CHECKBOX(1,itemcode,''CHECKED'') "select"',
'  FROM nmstkrec',
' WHERE DOCNUMBR = :P1002500414_DOCNUMBR',
'   AND DOCTTYPE = :DOCTTYPE',
'   AND SUBTTYPE = :SUBTTYPE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1002500414_DOCNUMBR'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>1500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41275720606224864)
,p_query_column_id=>1
,p_column_alias=>'SL'
,p_column_display_sequence=>1
,p_column_heading=>'Sl'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41276189899224865)
,p_query_column_id=>2
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41276586878224865)
,p_query_column_id=>3
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>3
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40095931690753917)
,p_query_column_id=>4
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41277318528224865)
,p_query_column_id=>5
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>5
,p_column_heading=>'Item Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41277794384224865)
,p_query_column_id=>6
,p_column_alias=>'select'
,p_column_display_sequence=>6
,p_column_heading=>'<input type="checkbox" checked onclick="javascript:$f_CheckAll(this, this.checked, $(''[name=f01]''));">'
,p_column_format=>'PCT_GRAPH:::'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(154599181987684276)
,p_plug_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(105480872298420801)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>'style="background-color:&BACKGROUND_COLOR.;"'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250603329778076225)
,p_plug_name=>'Product Information'
,p_region_name=>'prod_info'
,p_parent_plug_id=>wwv_flow_api.id(154599181987684276)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>190
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SL,',
'       seq_id SERLNUMB,',
'       --nvl(c001, seq_id) SERLNUMB,',
'       c002 ITEMCODE,',
'       c003 ITEMDESC,',
'       c004 LUOMCODE,        ',
'       c005 HUOMCODE,',
'       c006 LUOMDESC,',
'       c007 ITEMTYPE,',
'       c008 COSTRATE,',
'       c009 SALERATE,',
'       c010 COMMCODE,',
'       c011 ORGNQNTY,',
'       c012 REMARKS,',
'       c013 POSTFLAG',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>'purrequest'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(78626570758009238)
,p_name=>'POSTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSTFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Submit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(78628493681009257)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(105684334813918157)
,p_name=>'SL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(105684465933918158)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(105795972767035592)
,p_name=>'LUOMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'LUOMDESC'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154328340094564383)
,p_name=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Comm. Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154328421447564384)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<strong ><font color="red">Product Code</font></strong>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(60656568685373232)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'-Select-'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT DISTINCT a.itemcode || '' - '' || itemdes1 d, a.itemcode r',
'   FROM nmitemas a',
'  WHERE compcode = :COMPCODE',
'    AND statuscd = ''ACT''',
'  --AND nvl(finishgd,''N'')= ''N''',
'    AND EXISTS  (SELECT 1',
'                   FROM nmwrkftr',
'                  WHERE compcode = :COMPCODE',
'                    AND trdoctyp = :DOCTTYPE',
'                    AND trsubtyp = :SUBTTYPE',
'                    AND catgrycd = a.category)',
'ORDER BY itemcode;'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154328492151564385)
,p_name=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154328606816564386)
,p_name=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_column_comment=>'onfocus="setitemcode();"'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154329321543564393)
,p_name=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALERATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sale Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_column_comment=>'onfocus="setitemcode();"'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154329392930564394)
,p_name=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Huomcode'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154329628583564396)
,p_name=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Unit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154329680965564397)
,p_name=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGNQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<strong ><font color="red">Request Qty.</font></strong>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-integer'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_column_comment=>'onfocus="total();saletotal();"'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154598684202684271)
,p_name=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154598961101684273)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154599018329684274)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(154327020816564370)
,p_internal_uid=>154327020816564370
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_api.id(60507628718248520)
,p_update_authorization_scheme=>wwv_flow_api.id(60508673871256279)
,p_delete_authorization_scheme=>wwv_flow_api.id(60489002166243136)
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {  ',
'  config.initActions = function( actions ) {',
'    actions.remove("single-row-view");',
'  };  ',
'  return config;  ',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(154620240519684568)
,p_interactive_grid_id=>wwv_flow_api.id(154327020816564370)
,p_static_id=>'396137'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(154620342715684570)
,p_report_id=>wwv_flow_api.id(154620240519684568)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(41261122272256170)
,p_view_id=>wwv_flow_api.id(154620342715684570)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(78628493681009257)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73817976917073202)
,p_view_id=>wwv_flow_api.id(154620342715684570)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(105684465933918158)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>174
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(78652896575795442)
,p_view_id=>wwv_flow_api.id(154620342715684570)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(78626570758009238)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(105704163617270742)
,p_view_id=>wwv_flow_api.id(154620342715684570)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(105684334813918157)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(105909344447072780)
,p_view_id=>wwv_flow_api.id(154620342715684570)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(105795972767035592)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154626753821684592)
,p_view_id=>wwv_flow_api.id(154620342715684570)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(154328340094564383)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154627192330684593)
,p_view_id=>wwv_flow_api.id(154620342715684570)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(154328421447564384)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>189
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154627767066684593)
,p_view_id=>wwv_flow_api.id(154620342715684570)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(154328492151564385)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154628232929684595)
,p_view_id=>wwv_flow_api.id(154620342715684570)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(154328606816564386)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>288
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154631736064684615)
,p_view_id=>wwv_flow_api.id(154620342715684570)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(154329321543564393)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154632236979684617)
,p_view_id=>wwv_flow_api.id(154620342715684570)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(154329392930564394)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154633271643684618)
,p_view_id=>wwv_flow_api.id(154620342715684570)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(154329628583564396)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154633770479684620)
,p_view_id=>wwv_flow_api.id(154620342715684570)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(154329680965564397)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154645744457684654)
,p_view_id=>wwv_flow_api.id(154620342715684570)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(154598684202684271)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>77
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(154648797778686085)
,p_view_id=>wwv_flow_api.id(154620342715684570)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(154598961101684273)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>30
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41258165007224834)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(105480872298420801)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41274261432224864)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(152508986821306635)
,p_button_name=>'Close'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:closeModal(''PREV_DATA'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41259691399224834)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(154599181987684276)
,p_button_name=>'USR_Template'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Template Selection'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:void(0)'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41260067669224834)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(154599181987684276)
,p_button_name=>'COPY_PREV'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copy From Previous'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:openModal(''PREV_DATA'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40096127214753919)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(154599181987684276)
,p_button_name=>'Post'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit All'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'postUnpost'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41274691897224864)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(152508986821306635)
,p_button_name=>'Add_coll'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Add to Request'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41258566541224834)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(105480872298420801)
,p_button_name=>'NEXT'
,p_button_static_id=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41258974877224834)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(105480872298420801)
,p_button_name=>'PREVIOUS'
,p_button_static_id=>'BACK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(41290247908224884)
,p_branch_name=>'Go To Page 413'
,p_branch_action=>'f?p=&APP_ID.:&P1002500414_PREVPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(41258974877224834)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(41290680953224884)
,p_branch_name=>'Go To Page 415'
,p_branch_action=>'f?p=&APP_ID.:&P1002500414_NEXTPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(41258566541224834)
,p_branch_sequence=>30
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41261216692224835)
,p_name=>'P1002500414_SL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(154599181987684276)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41261624981224835)
,p_name=>'P1002500414_COMPCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(154599181987684276)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41271651933224862)
,p_name=>'P1002500414_WARENAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(105480914261420801)
,p_prompt=>'Business Unit'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41272035690224862)
,p_name=>'P1002500414_SRCWARENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(105480914261420801)
,p_prompt=>'Source Warehouse'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41272469528224862)
,p_name=>'P1002500414_APRPERSON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(105480914261420801)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41272869777224862)
,p_name=>'P1002500414_APRPERSNM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(105480914261420801)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P1002500414_APRPERSON'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41273192208224862)
,p_name=>'P1002500414_NEXTPAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(105480914261420801)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41273536887224862)
,p_name=>'P1002500414_PREVPAGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(105480914261420801)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41275094122224864)
,p_name=>'P1002500414_DOCNUMBR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(152508986821306635)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Requisition No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT docnumbr || ''-'' || doctdate D, docnumbr R',
'  FROM (  SELECT DISTINCT docnumbr, doctdate',
'            FROM nmstkrec',
'           WHERE docttype = :docttype ',
'             AND subttype = :subttype',
'        ORDER BY doctdate DESC)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(41269410767224859)
,p_tabular_form_region_id=>wwv_flow_api.id(250603329778076225)
,p_validation_name=>'ITEMCODE not null'
,p_validation_sequence=>70
,p_validation=>'ITEMCODE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(41258566541224834)
,p_associated_column=>'ITEMCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(41269880931224860)
,p_tabular_form_region_id=>wwv_flow_api.id(250603329778076225)
,p_validation_name=>'ORGNQNTY'
,p_validation_sequence=>90
,p_validation=>'ORGNQNTY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(41258566541224834)
,p_associated_column=>'ORGNQNTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(41270220598224860)
,p_tabular_form_region_id=>wwv_flow_api.id(250603329778076225)
,p_validation_name=>'request qty numeric'
,p_validation_sequence=>120
,p_validation=>'ORGNQNTY'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(41258566541224834)
,p_associated_column=>'ORGNQNTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41281383981224870)
,p_name=>'set item desc'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(250603329778076225)
,p_triggering_element=>'ITEMCODE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41281859392224875)
,p_event_id=>wwv_flow_api.id(41281383981224870)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    SELECT ITEMDES1,',
'           nvl(LUOMCODE,HUOMCODE),',
'           nvl(HUOMCODE,LUOMCODE),',
'           nvl(LUOMCODE,HUOMCODE),',
'           COSTRATE,',
'           SALERATE,',
'           ITEMTYPE,',
'           COMMGRUP',
'      INTO :ITEMDESC, :LUOMCODE, :HUOMCODE, :LUOMDESC, :COSTRATE, :SALERATE, :ITEMTYPE, :COMMCODE',
'      FROM NMITEMAS',
'     WHERE compcode = :P1002500414_COMPCODE',
'       AND ITEMCODE = :ITEMCODE',
'       AND STATUSCD = ''ACT'';',
'exception ',
'    when others then ',
'null;',
'end;'))
,p_attribute_02=>'P1002500414_COMPCODE,ITEMCODE'
,p_attribute_03=>'ITEMDESC,LUOMCODE,HUOMCODE,LUOMDESC,COSTRATE,SALERATE,ITEMTYPE,COMMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41282316653224876)
,p_event_id=>wwv_flow_api.id(41281383981224870)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ORGNQNTY'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41282714551224878)
,p_name=>'Close Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41258165007224834)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41283232648224878)
,p_event_id=>wwv_flow_api.id(41282714551224878)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41283749154224878)
,p_event_id=>wwv_flow_api.id(41282714551224878)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if; ',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;   '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41284253487224879)
,p_event_id=>wwv_flow_api.id(41282714551224878)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41284600146224879)
,p_name=>'Refresh'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1002500414_DOCNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41285162523224879)
,p_event_id=>wwv_flow_api.id(41284600146224879)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(152509154383306636)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41285585048224881)
,p_name=>'add to collection'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41274691897224864)
,p_condition_element=>'P1002500414_DOCNUMBR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41286029544224881)
,p_event_id=>wwv_flow_api.id(41285585048224881)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'       apex_collection.create_or_truncate_collection (''ORDER_ITEMS'');  ',
'end if;  ',
' ',
'Begin',
'    for i in (  SELECT ROWNUM sl,',
'                       itemcode,',
'                       itemdesc,',
'                       luomcode,',
'                       huomcode,',
'                       --luomdesc,',
'                       itemtype,',
'                       costrate,',
'                       salerate,',
'                       commcode',
'                  FROM nmstkrec',
'                 WHERE docnumbr = :P1002500414_DOCNUMBR',
'    ) loop  ',
'        ',
'        APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_c001            => i.SL,',
'        p_c002            => i.ITEMCODE,',
'        p_c003            => i.ITEMDESC,',
'        p_c004            => i.LUOMCODE,        ',
'        p_c005            => i.HUOMCODE,',
'        --p_c006            => i.LUOMDESC,',
'        p_c007            => i.ITEMTYPE,',
'        p_c008            => i.COSTRATE,',
'        p_c009            => i.SALERATE,',
'        p_c010            => i.COMMCODE',
'        );',
'        commit;  ',
'        ',
'      end loop;                              ',
'End;',
'',
'',
'     '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41286585557224881)
,p_event_id=>wwv_flow_api.id(41285585048224881)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(250603329778076225)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41287063262224881)
,p_event_id=>wwv_flow_api.id(41285585048224881)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:closeModal(''PREV_DATA'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41289242990224882)
,p_name=>'hide unpost all button'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40096214100753920)
,p_name=>'postUnpost All'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40096127214753919)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40096371015753921)
,p_event_id=>wwv_flow_api.id(40096214100753920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'togglePost();'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41279317872224868)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Previous Page Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT c002 ||''-''|| c003 warename, ',
'          c004 ||''-''|| c005 srcwarename,',
'          c006 APRPERSON,',
'          c006 ||''-''|| c007 APRPERSNM ',
'     INTO :P1002500414_WARENAME, :P1002500414_SRCWARENAME, :P1002500414_APRPERSON, :P415_APRPERSNM',
'     FROM apex_collections',
'    WHERE collection_name = ''DOC_INFO'';',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      raise_application_error (-20001, SQLCODE || '' '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41270566242224860)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(250603329778076225)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DML for collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'       apex_collection.create_or_truncate_collection (''ORDER_ITEMS'');  ',
'end if;           ',
'     ',
'begin',
'    case :APEX$ROW_STATUS',
'    when ''C'' then',
'    ',
'        APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_c001            => :SL,',
'        p_c002            => :ITEMCODE,',
'        p_c003            => :ITEMDESC,',
'        p_c004            => :LUOMCODE,        ',
'        p_c005            => :HUOMCODE,',
'        p_c006            => :LUOMDESC,',
'        p_c007            => :ITEMTYPE,',
'        p_c008            => :COSTRATE,',
'        p_c009            => :SALERATE,',
'        p_c010            => :COMMCODE,',
'        p_c011            => :ORGNQNTY,',
'        p_c012            => :REMARKS,',
'        p_c013            => :POSTFLAG',
'        );',
'        commit;',
'',
'    when ''U'' then',
'',
'        APEX_COLLECTION.UPDATE_MEMBER (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq             => :SL,',
'        p_c001            => :SERLNUMB,',
'        p_c002            => :ITEMCODE,',
'        p_c003            => :ITEMDESC,',
'        p_c004            => :LUOMCODE,        ',
'        p_c005            => :HUOMCODE,',
'        p_c006            => :LUOMDESC,',
'        p_c007            => :ITEMTYPE,',
'        p_c008            => :COSTRATE,',
'        p_c009            => :SALERATE,',
'        p_c010            => :COMMCODE,',
'        p_c011            => :ORGNQNTY,',
'        p_c012            => :REMARKS,',
'        p_c013            => :POSTFLAG   ',
'        );',
'        commit;',
'',
'    when ''D'' then',
'    ',
'        APEX_COLLECTION.DELETE_MEMBER (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq             => :SL);',
'        commit;',
'        ',
'        APEX_COLLECTION.RESEQUENCE_COLLECTION (',
'        p_collection_name =>  ''ORDER_ITEMS''); ',
'        commit;',
'        ',
'    end case;',
'',
'exception ',
'    when others then',
'    raise_application_error(-20001, ''DML for collection ''||sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41278534093224865)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove duplicate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'    begin',
'      for r_rec in (',
'        select seq_id, rn from',
'         (select seq_id, row_number() over (partition by c002 order by seq_id) rn',
'          from apex_collections',
'          where collection_name = ''ORDER_ITEMS''',
'        ) where rn != 1',
'      ) loop',
'            APEX_COLLECTION.DELETE_MEMBER',
'              (p_collection_name =>  ''ORDER_ITEMS'',',
'               p_seq             =>  r_rec.seq_id);',
'        end loop;',
'',
'        APEX_COLLECTION.RESEQUENCE_COLLECTION (',
'        p_collection_name =>  ''ORDER_ITEMS'');',
'',
'    end;',
'end if;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41280145444224870)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Request Qty validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'    begin',
'        for i in',
'        (   SELECT seq_id SL,',
'                   c011 ORGNQNTY',
'              FROM apex_collections',
'             WHERE collection_name = ''ORDER_ITEMS''',
'             ORDER BY sl)',
'        loop',
'            if to_number(i.ORGNQNTY) is null ',
'               --or to_number(i.ORGNQNTY) = 0',
'               or to_number(i.ORGNQNTY) < 1 then',
'                raise_application_error(-20001, ''Request Qty. must have valid value!'');',
'            end if;',
'        end loop;',
'',
'    end;',
'end if;    '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Request Qty. must have valid value!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(41258566541224834)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41278932108224865)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'copy from prev'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'       apex_collection.create_or_truncate_collection (''ORDER_ITEMS'');  ',
'end if;  ',
'',
'declare',
'',
'    v_sl varchar2(100);',
'    v_itemcode nmstkrec.itemcode%type;',
'    v_itemdesc nmstkrec.itemdesc%type;',
'    v_luomcode nmstkrec.luomcode%type;',
'    v_huomcode nmstkrec.huomcode%type;',
'    --v_luomdesc nmstkrec.luomdesc%type;',
'    v_itemtype nmstkrec.itemtype%type;',
'    --v_itemrate nmstkrec.itemrate%type;',
'    v_costrate nmstkrec.costrate%type;',
'    v_salerate nmstkrec.salerate%type;',
'    v_commcode nmstkrec.commcode%type;',
'',
'Begin',
'',
'    FOR i in 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'      begin',
'         SELECT        i sl,',
'                       itemcode,',
'                       itemdesc,',
'                       luomcode,',
'                       huomcode,',
'                       --luomdesc,',
'                       itemtype,',
'                       costrate,',
'                       salerate,',
'                       commcode',
'                  INTO v_sl, v_itemcode, v_itemdesc, v_luomcode, v_huomcode,  v_itemtype, v_costrate, v_salerate, v_commcode      --v_luomdesc, v_itemrate,              ',
'                  FROM nmstkrec',
'                 WHERE docnumbr = :P1002500414_DOCNUMBR',
'                   AND itemcode = APEX_APPLICATION.G_F01(i);',
'                   /*',
'                   AND itemcode in ( select c002',
'                                           FROM apex_collections',
'                                          WHERE collection_name = ''ORDER_ITEMS'');',
'                                       */',
'        end;',
' ',
' APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_c001            => v_sl,',
'        p_c002            => v_itemcode,',
'        p_c003            => v_itemdesc,',
'        p_c004            => v_luomcode,        ',
'        p_c005            => v_huomcode,',
'        --p_c006            => i.LUOMDESC,',
'        p_c007            => v_itemtype,',
'        p_c008            => v_costrate,',
'        p_c009            => v_salerate,',
'        p_c010            => v_commcode,',
'        p_c013            => ''N''',
'        );    ',
'        ',
'        commit;  ',
'        ',
'      end loop;    ',
'/*      ',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (',
'    p_collection_name =>  ''ORDER_ITEMS'');      ',
'    */',
'End;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(41274691897224864)
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'       apex_collection.create_collection (''ORDER_ITEMS'');  ',
'end if;  ',
' ',
'Begin',
'    for i in (  SELECT ROWNUM sl,',
'                       itemcode,',
'                       itemdesc,',
'                       luomcode,',
'                       huomcode,',
'                       --luomdesc,',
'                       itemtype,',
'                       costrate,',
'                       salerate,',
'                       commcode',
'                  FROM nmstkrec',
'                 WHERE docnumbr = :P414_DOCNUMBR',
'                   AND itemcode NOT IN ( SELECT c002',
'                                           FROM apex_collections',
'                                          WHERE collection_name = ''ORDER_ITEMS'')',
'    ) loop  ',
'        ',
'        APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_c001            => i.SL,',
'        p_c002            => i.ITEMCODE,',
'        p_c003            => i.ITEMDESC,',
'        p_c004            => i.LUOMCODE,        ',
'        p_c005            => i.HUOMCODE,',
'        --p_c006            => i.LUOMDESC,',
'        p_c007            => i.ITEMTYPE,',
'        p_c008            => i.COSTRATE,',
'        p_c009            => i.SALERATE,',
'        p_c010            => i.COMMCODE,',
'        P_c013            => ''N''',
'        );',
'        commit;  ',
'        ',
'      end loop;                              ',
'End;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41280502249224870)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove  duplicate from prev'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  for r_rec in (',
'    select seq_id, rn from',
'     (select seq_id, row_number() over (partition by c002 order by seq_id) rn',
'      from apex_collections',
'      where collection_name = ''ORDER_ITEMS''',
'    ) where rn != 1',
'  ) loop',
'        APEX_COLLECTION.DELETE_MEMBER',
'          (p_collection_name =>  ''ORDER_ITEMS'',',
'           p_seq             =>  r_rec.seq_id);',
'    end loop;',
'  ',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (',
'    p_collection_name =>  ''ORDER_ITEMS'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(41274691897224864)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41280950690224870)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'item selection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number := 0;',
'begin    ',
'    select count(*)',
'    into v_count',
'    from apex_collections',
'    where collection_name = ''ORDER_ITEMS'';',
'',
'    if v_count < 1 then',
'       raise_application_error(-20001, ''No Item Selected for Requisition!'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(41258566541224834)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41279759559224870)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P1, WIZ_P3',
'  INTO :P1002500414_PREVPAGE, :P1002500414_NEXTPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001, ''NEXT AND PREV PAGE ''||SQLCODE||'' ''||SQLERRM);',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
