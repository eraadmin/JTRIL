prompt --application/pages/page_00458
begin
--   Manifest
--     PAGE: 00458
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
 p_id=>458
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Cost Finalization (PO) Form'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//Total',
'// create a private scope where $ is set to apex.jQuery',
'(function($) {',
'    // This is the function that calculates over all the rows of the model and then',
'    // updates something else.',
'    // Change this to do whatever calculation is needed.',
'    // Call this whenever the model data changes.',
'    function update(model) {',
'        var salKey = model.getFieldKey("TEXTAMNT"), ',
'            total = 0;',
'',
'        //console.log(">> starting sum SAL column")',
'        model.forEach(function(record, index, id) {',
'            var sal = parseFloat(record[salKey]),  // record[salKey] should be a little faster than using model.getValue in a loop',
'                meta = model.getRecordMetadata(id);',
'',
'            if (!isNaN(sal) && !meta.deleted && !meta.agg) {',
'                total += sal;',
'            }',
'        });',
'        //console.log(">> setting sum SAL column to " + total)',
'        $s("P458_TOTAL", total);',
'    }',
'',
'    //',
'    // This is the general pattern for subscribing to model notifications',
'    //',
'',
'    // need to do this here rather than in Execute when Page Loads so that the handler',
'    // is setup BEFORE the IG is initialized otherwise miss the first model created event',
'    $(function() {',
'        // the model gets released and created at various times such as when the report changes',
'        // listen for model created events so that we can subscribe to model notifications',
'        $("#other_cost").on("interactivegridviewmodelcreate", function(event, ui) {',
'            var sid,',
'                model = ui.model;',
'',
'            // note this is only done for the grid veiw. It could be done for',
'            // other views if desired. The imporant thing to realize is that each',
'            // view has its own model',
'            if ( ui.viewId === "grid" ) {',
'                sid = model.subscribe( {',
'                    onChange: function(type, change) {',
'                        console.log(">> model changed ", type, change);',
'                        if ( type === "set" ) {',
'                            // don''t bother to recalculate if other columns change',
'                            if (change.field === "TEXTAMNT" ) {',
'                                update( model );',
'                            }',
'                        } else if (type !== "move" && type !== "metaChange") {',
'                            // any other change except for move and metaChange affect the calculation',
'                            update( model );',
'                        }',
'                    },',
'                    progressView: $("#P458_TOTAL") // this will cause a spinner on this field',
'                } );',
'                // if not lazy loaded there is no notification for initial data so update',
'                update( model ); ',
'                // just in case fetch all the data. Model notifications will',
'                // cause calls to update so nothing to do in the callback function.',
'                // can remove if data will always be less than 50 records',
'                model.fetchAll(function() {});',
'            }',
'        });',
'',
'    });',
'',
'})(apex.jQuery);',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".allow-integer").bind("keypress", function (e) {',
'          var keyCode = e.which ? e.which : e.keyCode               ',
'          if (!(keyCode >= 48 && keyCode <= 57)) {',
'            return false;',
'          }else{',
'          }',
'      });',
'',
'$(".allow-decimal").keypress(function (e) {',
'    if(e.which == 46){',
'        if($(this).val().indexOf(''.'') != -1) {',
'            return false;',
'        }',
'    }',
'',
'    if (e.which != 8 && e.which != 0 && e.which != 46 && (e.which < 48 || e.which > 57)) {',
'        return false;',
'    }',
'});'))
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_protection_level=>'C'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20221229113241'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69985605133338908)
,p_plug_name=>'CF PO'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69985408253338906)
,p_plug_name=>'nav Center'
,p_parent_plug_id=>wwv_flow_api.id(69985605133338908)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69985581543338907)
,p_plug_name=>'nav center2'
,p_parent_plug_id=>wwv_flow_api.id(69985605133338908)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70045311239994204)
,p_plug_name=>'nav Left'
,p_parent_plug_id=>wwv_flow_api.id(69985605133338908)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71193410440697510)
,p_plug_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(69985605133338908)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71481424554648241)
,p_plug_name=>'Product'
,p_region_name=>'prod_info'
,p_parent_plug_id=>wwv_flow_api.id(71193410440697510)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id sl,',
'         n001 COSTRATE,',
'         n002 COST_VALUE,',
'         n003 ITEMRATE,',
'         n004 MSFCAMNT,',
'         n005 MSLCAMNT,',
'         d001 DOCTDATE,',
'         d002 UPDOCDTE,',
'         d003 ITRFDATE,',
'         c001 COMPCODE,',
'         c002 DOCTTYPE,',
'         c003 SUBTTYPE,',
'         c004 DOCNUMBR,',
'         c005 SERLNUMB,',
'         c006 PARTYCDE,',
'         c007 ITEMCODE,',
'         c008 ITEMDESC,',
'         c009 DISCPCNT,',
'         c010 SALERATE,',
'         c011 DISCAMNT,',
'         c012 LUOMCODE,',
'         c013 ORGNQNTY,',
'         c014 APPRQNTY,',
'         c015 UPDOCNUM,',
'         c016 WARECODE,',
'         c017 ITEMRATP,',
'         c018 RATE_HIS',
'  from apex_collections',
' where collection_name = ''ORDER_ITEMS'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71481605188648243)
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
 p_id=>wwv_flow_api.id(71481799356648244)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
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
 p_id=>wwv_flow_api.id(71481807178648245)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
 p_id=>wwv_flow_api.id(71481989971648246)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
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
 p_id=>wwv_flow_api.id(71482098458648247)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_api.id(71482195146648248)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sl#'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71482256245648249)
,p_name=>'PARTYCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARTYCDE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(72864660314336801)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
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
 p_id=>wwv_flow_api.id(72864865188336803)
,p_name=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
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
 p_id=>wwv_flow_api.id(72864920026336804)
,p_name=>'ITEMRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Order Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(72865069653336805)
,p_name=>'DISCPCNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCPCNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Discount (%)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'1'
,p_attribute_02=>'99'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-decimal'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(72865124337336806)
,p_name=>'DISCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCAMNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Discamnt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(72865272120336807)
,p_name=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALERATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sale Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-decimal'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(72865454828336809)
,p_name=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Unit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(72865511243336810)
,p_name=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGNQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Order Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(72865619601336811)
,p_name=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
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
 p_id=>wwv_flow_api.id(72865764507336812)
,p_name=>'MSFCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSFCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'FC Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_api.id(72865870796336813)
,p_name=>'MSLCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSLCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'LC Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_api.id(72865927075336814)
,p_name=>'UPDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
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
 p_id=>wwv_flow_api.id(72866067306336815)
,p_name=>'UPDOCDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCDTE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
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
 p_id=>wwv_flow_api.id(72866362172336818)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
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
 p_id=>wwv_flow_api.id(72866425940336819)
,p_name=>'ITEMRATP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMRATP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Itemratp'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>310
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(72866560770336820)
,p_name=>'ITRFDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITRFDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Itrfdate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>320
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(72866622913336821)
,p_name=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<font color="red">Cost Rate</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>330
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-decimal'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(72866776129336822)
,p_name=>'COST_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST_VALUE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cost Value'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>340
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(72866858235336823)
,p_name=>'RATE_HIS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE_HIS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Price History'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>350
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:$s(''P458_ITEMCODE'',''&ITEMCODE.'');$s(''P458_ITEMDESC'',''&ITEMDESC.'');openModal(''RATE_HIS'');'
,p_link_text=>'SHOW HISTORY'
,p_link_attributes=>'class="u-bold t-Button t-Button--small t-Button--success t-Button--simple"'
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
 p_id=>wwv_flow_api.id(72866955675336824)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(72867031531336825)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(72867220374336827)
,p_name=>'SL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sl'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(71481570635648242)
,p_internal_uid=>71481570635648242
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>true
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
,p_fixed_header_max_height=>380
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.reportSettingsArea = false;',
'    // may want to disable the highlights feature. Comment out this code to make initial highlight settings',
'    apex.util.getNestedObject(config, "views.grid.features").highlight = false;',
'    return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(72870879658337537)
,p_interactive_grid_id=>wwv_flow_api.id(71481570635648242)
,p_static_id=>'395997'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(72870962953337537)
,p_report_id=>wwv_flow_api.id(72870879658337537)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72871490104337542)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(71481605188648243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72871936306337545)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(71481799356648244)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72872410651337548)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(71481807178648245)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72872937587337550)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(71481989971648246)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72873414589337553)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(71482098458648247)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72873952022337556)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(71482195146648248)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>45
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72874454659337559)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(71482256245648249)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72875410406337565)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(72864660314336801)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>190
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72876450007337570)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(72864865188336803)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>254
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72876943128337573)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(72864920026336804)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72877419182337576)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(72865069653336805)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72877990198337579)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(72865124337336806)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72878424338337582)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(72865272120336807)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
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
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72879422210337587)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(72865454828336809)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72879911151337590)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(72865511243336810)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72880424690337593)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(72865619601336811)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72880968447337596)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(72865764507336812)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72881442489337600)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(72865870796336813)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72881989228337603)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(72865927075336814)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72882425030337606)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(72866067306336815)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72883867140337614)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(72866362172336818)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72884333065337617)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(72866425940336819)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72884868679337620)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(72866560770336820)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72885355734337623)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(72866622913336821)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72885820892337625)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(72866776129336822)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72886393600337628)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(72866858235336823)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72886844058337631)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(72866955675336824)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(72889696294360335)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(72867220374336827)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(107994000001)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(72865764507336812)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(246354005073)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(72865870796336813)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(346026006848)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(72866776129336822)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(360566009342)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(72866622913336821)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(474842012720)
,p_view_id=>wwv_flow_api.id(72870962953337537)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(72864920026336804)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71481178175648238)
,p_plug_name=>'nav right'
,p_parent_plug_id=>wwv_flow_api.id(69985605133338908)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71195406363697530)
,p_plug_name=>'PRICE HISTORY'
,p_region_name=>'RATE_HIS'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47585534000858182)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(71195581569697531)
,p_name=>'Price Report'
,p_parent_plug_id=>wwv_flow_api.id(71195406363697530)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT a.docnumbr,',
'         a.doctdate,',
'         dfn_warename(a.warecode,compcode) warehouse,',
'         dfn_partyname(a.partycde,compcode) partyname,',
'         a.orgnqnty,',
'         a.itemrate         ',
'    FROM nmprocur a',
'   WHERE     a.compcode = :P458_COMPCODE',
'         AND a.docttype = ''LP''',
'         AND a.docnumbr <> :P458_DOCNUMBR',
'         AND a.itemcode = :P458_ITEMCODE',
'         AND ROWNUM <= 10',
'ORDER BY itemrate, doctdate DESC;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P458_COMPCODE, P458_DOCNUMBR, P458_ITEMCODE,P458_ITEMDESC'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71196452986697540)
,p_query_column_id=>1
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>1
,p_column_heading=>'PO No#'
,p_use_as_row_header=>'Y'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71196161005697537)
,p_query_column_id=>2
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>2
,p_column_heading=>'Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71479199955648218)
,p_query_column_id=>3
,p_column_alias=>'WAREHOUSE'
,p_column_display_sequence=>3
,p_column_heading=>'Warehouse'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71479299254648219)
,p_query_column_id=>4
,p_column_alias=>'PARTYNAME'
,p_column_display_sequence=>4
,p_column_heading=>'Supplier Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71196221101697538)
,p_query_column_id=>5
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>5
,p_column_heading=>'Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(71196370587697539)
,p_query_column_id=>6
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>6
,p_column_heading=>'Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94299335810549819)
,p_plug_name=>'Other Cost'
,p_region_name=>'OTHER_COST'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47585534000858182)
,p_plug_display_sequence=>60
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97570676915904204)
,p_plug_name=>'Total'
,p_parent_plug_id=>wwv_flow_api.id(94299335810549819)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105980988860918608)
,p_plug_name=>'Other'
,p_region_name=>'other_cost'
,p_parent_plug_id=>wwv_flow_api.id(94299335810549819)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   seq_id sl,',
'         c001 TEXTSERL,',
'         c002 TEXTCODE,',
'         c003 TEXTLINE,',
'         --c004 TEXTAMNT,        ',
'         c005 REFDOCNO,',
'         c006 DOCTTYPE,',
'         c007 SUBTTYPE,',
'         c008 DOCNUMBR,',
'         c009 DOCTDATE,',
'         c010 SERLNUMB,',
'         n001 TEXTAMNT',
' FROM apex_collections',
'WHERE collection_name = ''OTHER_COST'' '))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(94711026674693284)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Serlnumb'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
 p_id=>wwv_flow_api.id(94711117955693285)
,p_name=>'SL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sl'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(106023642161427160)
,p_name=>'TEXTSERL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEXTSERL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Srl.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(106023755423427161)
,p_name=>'TEXTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEXTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<font color="red">Cost Head</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT nmcoddes, nmsofcde',
'    FROM nmcodmas',
'   WHERE compcode = ''105'' ',
'     AND modlcode = ''NM'' ',
'     AND nmhrdcde = ''TMC''',
'ORDER BY nmsofcde'))
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
 p_id=>wwv_flow_api.id(106023910309427162)
,p_name=>'TEXTAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEXTAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<font color="red">Amount</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-decimal'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(106024254189427166)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>30
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(106024343930427167)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(106024789083427171)
,p_name=>'TEXTLINE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEXTLINE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(106025548721427179)
,p_name=>'REFDOCNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFDOCNO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':P458_PODCNO'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(106212946861729402)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(106213040075729403)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(106213179121729404)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(106213264054729405)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(106023539478427159)
,p_internal_uid=>106023539478427159
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
,p_enable_mail_download=>false
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>280
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.reportSettingsArea = false;',
'    // may want to disable the highlights feature. Comment out this code to make initial highlight settings',
'    apex.util.getNestedObject(config, "views.grid.features").highlight = false;',
'    return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(106029045714448277)
,p_interactive_grid_id=>wwv_flow_api.id(106023539478427159)
,p_static_id=>'395998'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(106029120254448278)
,p_report_id=>wwv_flow_api.id(106029045714448277)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(94727462802062203)
,p_view_id=>wwv_flow_api.id(106029120254448278)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(94711026674693284)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(94730326751091380)
,p_view_id=>wwv_flow_api.id(106029120254448278)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(94711117955693285)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106029706956448283)
,p_view_id=>wwv_flow_api.id(106029120254448278)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(106023642161427160)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>128
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106030171592448301)
,p_view_id=>wwv_flow_api.id(106029120254448278)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(106023755423427161)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>305
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106030641148448303)
,p_view_id=>wwv_flow_api.id(106029120254448278)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(106023910309427162)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>155.60000000000002
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106035270760733779)
,p_view_id=>wwv_flow_api.id(106029120254448278)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(106024254189427166)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106042507701875064)
,p_view_id=>wwv_flow_api.id(106029120254448278)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(106024789083427171)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>294
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106126274330860218)
,p_view_id=>wwv_flow_api.id(106029120254448278)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(106025548721427179)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106297324173510809)
,p_view_id=>wwv_flow_api.id(106029120254448278)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(106212946861729402)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106297839076510811)
,p_view_id=>wwv_flow_api.id(106029120254448278)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(106213040075729403)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106298396640510813)
,p_view_id=>wwv_flow_api.id(106029120254448278)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(106213179121729404)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106298893137510815)
,p_view_id=>wwv_flow_api.id(106029120254448278)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(106213264054729405)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70114162146994275)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(69985605133338908)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71478894120648215)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(71195406363697530)
,p_button_name=>'CLOSE'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:closeModal(''RATE_HIS'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70112959908994273)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(69985605133338908)
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
 p_id=>wwv_flow_api.id(71194586349697521)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(94299335810549819)
,p_button_name=>'CANCEL_OC'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:closeModal(''OTHER_COST'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70114581901994276)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(69985605133338908)
,p_button_name=>'CREATE'
,p_button_static_id=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Other Cost'
,p_button_position=>'CREATE'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71193825053697514)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(94299335810549819)
,p_button_name=>'APPLY_OC'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Apply'
,p_button_position=>'CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70113770233994275)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(69985605133338908)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P458_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_api.id(70911620824438204)
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71195036234697526)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(71193410440697510)
,p_button_name=>'OTHER_COST'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Other Cost'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:openModal(''OTHER_COST'');'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(70114895246994276)
,p_branch_name=>'Go To Page 457'
,p_branch_action=>'f?p=&APP_ID.:457:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(70114162146994275)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4098597783111642)
,p_name=>'P458_SUBTTYPE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(70045311239994204)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70045744099994204)
,p_name=>'P458_ROWID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(70045311239994204)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70046199916994209)
,p_name=>'P458_COMPCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(70045311239994204)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70047320810994210)
,p_name=>'P458_DOCNUMBR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(70045311239994204)
,p_prompt=>'Ref No. & Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70047748366994210)
,p_name=>'P458_DOCTDATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(70045311239994204)
,p_prompt=>'Ref Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70048520172994212)
,p_name=>'P458_PARTYCDE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(69985408253338906)
,p_prompt=>'Supplier Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70061369551994225)
,p_name=>'P458_UPDOCNUM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(69985408253338906)
,p_prompt=>'Requisition No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70061770906994225)
,p_name=>'P458_UPDOCDTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(69985408253338906)
,p_prompt=>'Requisition Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70067340951994229)
,p_name=>'P458_WARECODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(70045311239994204)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71196656984697542)
,p_name=>'P458_ITEMCODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(71195406363697530)
,p_prompt=>'Item Description'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_api.id(71479361412648220)
,p_name=>'P458_ITEMDESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(71195406363697530)
,p_prompt=>'Item Description'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71481286424648239)
,p_name=>'P458_FCAMT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(71481178175648238)
,p_prompt=>'FC Amount'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71481390154648240)
,p_name=>'P458_LCAMT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(71481178175648238)
,p_prompt=>'LC Amount'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78002897749045007)
,p_name=>'P458_CURRCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(69985581543338907)
,p_prompt=>'Currency'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78002938072045008)
,p_name=>'P458_EXCGRATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(69985581543338907)
,p_prompt=>'Exchange Rate'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(96460722412978350)
,p_name=>'P458_WAREHOUSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(70045311239994204)
,p_prompt=>'Warehouse'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97570429199904202)
,p_name=>'P458_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(97570676915904204)
,p_prompt=>'Total Amount'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>9
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_css_classes=>'u-textEnd'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(71479464299648221)
,p_tabular_form_region_id=>wwv_flow_api.id(71481424554648241)
,p_validation_name=>'cost rate not null'
,p_validation_sequence=>10
,p_validation=>'COSTRATE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(70114162146994275)
,p_associated_column=>'COSTRATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(99675026345031502)
,p_tabular_form_region_id=>wwv_flow_api.id(71481424554648241)
,p_validation_name=>'sale rate not null'
,p_validation_sequence=>20
,p_validation=>'SALERATE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(70114162146994275)
,p_associated_column=>'SALERATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(71479593096648222)
,p_tabular_form_region_id=>wwv_flow_api.id(71481424554648241)
,p_validation_name=>'greater than itemrate'
,p_validation_sequence=>30
,p_validation=>'to_number(:COSTRATE) >= to_number(:ITEMRATE)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#COLUMN_HEADER# must be greater than Order Rate.'
,p_when_button_pressed=>wwv_flow_api.id(70114162146994275)
,p_associated_column=>'COSTRATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(71479754531648224)
,p_tabular_form_region_id=>wwv_flow_api.id(71481424554648241)
,p_validation_name=>'greater than cost rate'
,p_validation_sequence=>40
,p_validation=>'to_number(nvl(:SALERATE,0)) >= to_number(:COSTRATE)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#COLUMN_HEADER# must be greater than Cost Rate.'
,p_when_button_pressed=>wwv_flow_api.id(70114162146994275)
,p_associated_column=>'SALERATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(71480304744648230)
,p_tabular_form_region_id=>wwv_flow_api.id(105980988860918608)
,p_validation_name=>'code not null'
,p_validation_sequence=>50
,p_validation=>'TEXTCODE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(71193825053697514)
,p_associated_column=>'TEXTCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(71480467983648231)
,p_tabular_form_region_id=>wwv_flow_api.id(105980988860918608)
,p_validation_name=>'amt not null'
,p_validation_sequence=>60
,p_validation=>'TEXTAMNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(71193825053697514)
,p_associated_column=>'TEXTAMNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(72867525559336830)
,p_name=>'create collection order items'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72867668781336831)
,p_event_id=>wwv_flow_api.id(72867525559336830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'IF apex_collection.collection_exists(''ORDER_ITEMS'') THEN',
'   apex_collection.delete_collection(''ORDER_ITEMS'');',
'   commit;',
'END IF;',
'*/',
'if not apex_collection.collection_exists(''ORDER_ITEMS'') THEN',
'',
'BEGIN',
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY2 (',
'            p_collection_name     => ''ORDER_ITEMS'' , ',
'            p_query               => ''SELECT   ITEMRATE COSTRATE,',
'                                               ITEMRATE * ORGNQNTY COST_VALUE,',
'                                               ITEMRATE,',
'                                               MSFCAMNT,',
'                                               MSLCAMNT,',
'                                               DOCTDATE,',
'                                               UPDOCDTE,',
'                                               ITRFDATE,',
'                                               NULL dt4,',
'                                               NULL dt5, ',
'                                               COMPCODE,',
'                                               DOCTTYPE,',
'                                               SUBTTYPE,',
'                                               DOCNUMBR,',
'                                               SERLNUMB,',
'                                               PARTYCDE,',
'                                               ITEMCODE,',
'                                               ITEMDESC,',
'                                               DISCPCNT,',
'                                               SALERATE,',
'                                               DISCAMNT,',
'                                               LUOMCODE,',
'                                               ORGNQNTY,',
'                                               APPRQNTY,',
'                                               UPDOCNUM,',
'                                               WARECODE,',
'                                               ITEMRATP,',
'                                               '''''''' RATE_HIS',
'                                          FROM NMPROCUR',
'                                         where COMPCODE = ''''''||:P458_COMPCODE||''''''',
'                                           AND DOCNUMBR = ''''''||:P458_DOCNUMBR||''''''',
'                                           AND TRUNC(DOCTDATE) = ''''''||:P458_DOCTDATE||''''''',
'                                           AND DOCTTYPE = ''''''||:DOCTTYPE||''''''',
'                                           AND SUBTTYPE = ''''''||:P458_SUBTTYPE||''''''',
'                                           AND WARECODE = ''''''||:P458_WARECODE||''''''',
'                                           AND COSTCODE IN (SELECT cabasecc',
'                                                              FROM sycstacc',
'                                                             WHERE compcode = ''''''||:P458_COMPCODE ||''''''',
'                                                               AND grupcode = ''''''||:APP_USER||'''''')',
'    ',
'                        '');',
'END;',
'END IF;'))
,p_attribute_02=>'P458_COMPCODE,P458_DOCNUMBR,P458_DOCTDATE,P458_SUBTTYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72868378930336838)
,p_event_id=>wwv_flow_api.id(72867525559336830)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(71481424554648241)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(72868999590336844)
,p_name=>'delete collection on cancel'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(70112959908994273)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72869095631336845)
,p_event_id=>wwv_flow_api.id(72868999590336844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''OTHER_COST'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''OTHER_COST'');',
'end if;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73817740813951615)
,p_event_id=>wwv_flow_api.id(72868999590336844)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(73903531400129005)
,p_name=>'set cost value'
,p_event_sequence=>90
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(71481424554648241)
,p_triggering_element=>'COSTRATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(73903650356129006)
,p_event_id=>wwv_flow_api.id(73903531400129005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':COST_VALUE := :ORGNQNTY * :COSTRATE;'
,p_attribute_02=>'ORGNQNTY,COSTRATE'
,p_attribute_03=>'COST_VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97570929495904207)
,p_name=>'Price Report region refresh'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P458_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97571095958904208)
,p_event_id=>wwv_flow_api.id(97570929495904207)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(71195581569697531)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71194925422697525)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(105980988860918608)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'create other cost collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists (p_collection_name => ''OTHER_COST'') then',
'    apex_collection.create_collection (p_collection_name => ''OTHER_COST'');',
'end if;',
'',
'begin',
'    case :APEX$ROW_STATUS',
'    when ''C'' then',
'    ',
'        APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''OTHER_COST'',',
'        p_c001            => :TEXTSERL,',
'        p_c002            => :TEXTCODE,',
'        p_c003            => :TEXTLINE,',
'        --p_c004            => :TEXTAMNT,        ',
'        p_c005            => :REFDOCNO,',
'        p_c006            => :DOCTTYPE,',
'        p_c007            => :P458_SUBTTYPE,',
'        p_c008            => :P458_DOCNUMBR,',
'        p_c009            => SYSDATE, --:DOCTDATE,',
'        p_c010            => :SERLNUMB,',
'        p_c011            => :COSTCODE,',
'        p_n001            => :TEXTAMNT',
'        );',
'        commit;',
'',
'    when ''U'' then',
'',
'        APEX_COLLECTION.UPDATE_MEMBER (',
'        p_collection_name => ''OTHER_COST'',',
'        p_seq             => :SL,',
'        p_c001            => :TEXTSERL,',
'        p_c002            => :TEXTCODE,',
'        p_c003            => :TEXTLINE,',
'        --p_c004            => :TEXTAMNT,        ',
'        p_c005            => :REFDOCNO,',
'        p_c006            => :DOCTTYPE,',
'        p_c007            => :P458_SUBTTYPE,',
'        p_c008            => :P458_DOCNUMBR,',
'        p_c009            => SYSDATE, --:DOCTDATE,',
'        p_c010            => :SERLNUMB,',
'        p_c011            => :COSTCODE,',
'        p_n001            => :TEXTAMNT',
'        );',
'        commit;',
'',
'    when ''D'' then',
'    ',
'        APEX_COLLECTION.DELETE_MEMBER (',
'        p_collection_name => ''OTHER_COST'',',
'        p_seq             => :SL);',
'        commit;',
'    end case;',
'    ',
'exception ',
'    when others then',
'    raise_application_error(-20001, sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(71193825053697514)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(97571340053904211)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove duplicate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''OTHER_COST'') = TRUE then',
'',
'    begin',
'      for r_rec in (',
'        select seq_id, rn from',
'         (select seq_id, row_number() over (partition by c002 order by seq_id) rn',
'          from apex_collections',
'          where collection_name = ''OTHER_COST''',
'        ) where rn != 1',
'      ) loop',
'            APEX_COLLECTION.DELETE_MEMBER',
'              (p_collection_name =>  ''OTHER_COST'',',
'               p_seq             =>  r_rec.seq_id);',
'        end loop;',
'',
'        APEX_COLLECTION.RESEQUENCE_COLLECTION (',
'        p_collection_name =>  ''OTHER_COST''); ',
'',
'    end;',
' ',
'end if;  ',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(71193825053697514)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72867151099336826)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(71481424554648241)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'upd collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    case :APEX$ROW_STATUS    ',
'    when ''U'' then',
'        APEX_COLLECTION.UPDATE_MEMBER (',
'            p_collection_name  => ''ORDER_ITEMS'',',
'                        p_seq  => :SL, ',
'                        p_n001 => :COSTRATE,',
'                        p_n002 => :COST_VALUE,',
'                        p_n003 => :ITEMRATE,',
'                        p_n004 => :MSFCAMNT,',
'                        p_n005 => :MSLCAMNT,',
'                        p_d001 => :DOCTDATE,',
'                        p_d002 => :UPDOCDTE,',
'                        p_d003 => :ITRFDATE,',
'                        p_c001 => :COMPCODE,',
'                        p_c002 => :DOCTTYPE,',
'                        p_c003 => :P458_SUBTTYPE,',
'                        p_c004 => :DOCNUMBR,',
'                        p_c005 => :SERLNUMB,',
'                        p_c006 => :PARTYCDE,',
'                        p_c007 => :ITEMCODE,',
'                        p_c008 => :ITEMDESC,',
'                        p_c009 => :DISCPCNT,',
'                        p_c010 => :SALERATE,',
'                        p_c011 => :DISCAMNT,',
'                        p_c012 => :LUOMCODE,',
'                        p_c013 => :ORGNQNTY,',
'                        p_c014 => :APPRQNTY,',
'                        p_c015 => :UPDOCNUM,',
'                        p_c016 => :WARECODE,',
'                        p_c017 => :ITEMRATP,',
'                        p_c018 => :RATE_HIS);           ',
'    end case;',
'commit;',
'exception ',
'    when others then',
'    raise_application_error(-20001, ''upd collection''||'' ''||sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(70114162146994275)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(99509521985095712)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Request Qty validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'    begin',
'        for i in',
'        (   SELECT seq_id SL,',
'                   n001 COSTRATE,',
'                   n003 ITEMRATE,',
'                   c010 SALERATE',
'              FROM apex_collections',
'             WHERE collection_name = ''ORDER_ITEMS''',
'             ORDER BY sl)',
'        loop',
'            if to_number(i.COSTRATE) is null',
'               or to_number(i.COSTRATE) < 1 ',
'               or to_number(i.SALERATE) is null',
'               or to_number(i.SALERATE) < 1 ',
'               --or to_number(i.COSTRATE) < to_number(i.ITEMRATE)',
'               or to_number(nvl(i.SALERATE,0)) < to_number(i.COSTRATE)',
'               then',
'                raise_application_error(-20001, ''Item Rate, Cost Rate and Sale Rate must have valid value!'');',
'            end if;',
'        end loop;',
'',
'    end;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Item Rate, Cost Rate and Sale Rate must have valid value!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(70114162146994275)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(72867424200336829)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update nmprocur'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'for i in ( select seq_id sl,',
'                 n001 COSTRATE,',
'                 n002 COST_VALUE,',
'                 n003 ITEMRATE,',
'                 n004 MSFCAMNT,',
'                 n005 MSLCAMNT,',
'                 d001 DOCTDATE,',
'                 d002 UPDOCDTE,',
'                 d003 ITRFDATE,',
'                 c001 COMPCODE,',
'                 c002 DOCTTYPE,',
'                 c003 SUBTTYPE,',
'                 c004 DOCNUMBR,',
'                 c005 SERLNUMB,',
'                 c006 PARTYCDE,',
'                 c007 ITEMCODE,',
'                 c008 ITEMDESC,',
'                 c009 DISCPCNT,',
'                 c010 SALERATE,',
'                 c011 DISCAMNT,',
'                 c012 LUOMCODE,',
'                 c013 ORGNQNTY,',
'                 c014 APPRQNTY,',
'                 c015 UPDOCNUM,',
'                 c016 WARECODE,',
'                 c017 ITEMRATP,',
'                 c018 RATE_HIS',
'              from apex_collections',
'             where collection_name = ''ORDER_ITEMS''',
'             order by seq_id)',
'loop',
'    UPDATE nmprocur',
'       SET COSTRATE = i.COSTRATE,',
'           ITEMRATP = i.COSTRATE,',
'           SALERATE = i.SALERATE,',
'           DISCPCNT = i.DISCPCNT,',
'           ITRFDATE = SYSDATE,',
'           MODIFYDT = SYSDATE',
'     WHERE COMPCODE = :P458_COMPCODE',
'       AND DOCNUMBR = :P458_DOCNUMBR',
'       AND TRUNC (DOCTDATE) = :P458_DOCTDATE',
'       AND DOCTTYPE = :DOCTTYPE',
'       AND SUBTTYPE = :P458_SUBTTYPE',
'       AND SERLNUMB = i.SERLNUMB;',
'end loop;',
'',
'apex_collection.delete_collection(''ORDER_ITEMS'');',
'commit;',
'',
'exception',
'    when others then',
'    raise_application_error(-20001, ''update nmprocur''||'' ''||sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(70114162146994275)
,p_process_success_message=>'Cost Finalization Successful...'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71480572879648232)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert nmtxtprt'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''OTHER_COST'') = TRUE then',
'begin',
'    for i in (  select   seq_id sl,',
'                         c001 TEXTSERL,',
'                         c002 TEXTCODE,',
'                         c003 TEXTLINE,',
'                         --c004 TEXTAMNT,        ',
'                         c005 REFDOCNO,',
'                         c006 DOCTTYPE,',
'                         c007 SUBTTYPE,',
'                         c008 DOCNUMBR,',
'                         c009 DOCTDATE,',
'                         c010 SERLNUMB,',
'                         n001 TEXTAMNT',
'                 FROM apex_collections',
'                WHERE collection_name = ''OTHER_COST'')',
'    loop                ',
'        insert into nmtxtprt ',
'            (COMPCODE, SERLNUMB, TEXTSERL, TEXTCODE, ',
'             TEXTLINE, TEXTAMNT, DOCNUMBR, ',
'             DOCTTYPE, SUBTTYPE, REFDOCNO, REFDCDTE,',
'             DOCTDATE, COSTCODE, OPRSTAMP)',
'        values ',
'            (:P458_COMPCODE, i.sl, i.sl, i.TEXTCODE, ',
'             i.TEXTLINE, i.TEXTAMNT, :P458_DOCNUMBR, ',
'             :DOCTTYPE, :SUBTTYPE, :P458_UPDOCNUM, :P458_DOCTDATE,',
'             trunc(SYSDATE), NULL, :APP_USER);',
'    end loop;',
'',
'-- Truncate the collection after the order has been placed ',
'   apex_collection.truncate_collection(p_collection_name => ''OTHER_COST'');',
'',
'',
'exception',
'    when no_data_found then',
'    raise_application_error(-20001,''No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''Too many rows found'');',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'end;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(70114162146994275)
);
wwv_flow_api.component_end;
end;
/
