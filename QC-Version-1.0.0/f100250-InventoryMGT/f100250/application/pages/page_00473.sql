prompt --application/pages/page_00473
begin
--   Manifest
--     PAGE: 00473
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
 p_id=>473
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Campaign Stock Return'
,p_page_mode=>'MODAL'
,p_step_title=>'Campaign Stock Return'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
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
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20200623154629'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(145690359259223803)
,p_plug_name=>'Campaign Stock Return'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(145690162379223801)
,p_plug_name=>'nav Center'
,p_parent_plug_id=>wwv_flow_api.id(145690359259223803)
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
 p_id=>wwv_flow_api.id(145750065365879099)
,p_plug_name=>'nav Left'
,p_parent_plug_id=>wwv_flow_api.id(145690359259223803)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(146898164566582405)
,p_plug_name=>'Product Information'
,p_region_name=>'prod_info'
,p_parent_plug_id=>wwv_flow_api.id(145690359259223803)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(147186178680533136)
,p_plug_name=>'Product'
,p_region_name=>'prod_info'
,p_parent_plug_id=>wwv_flow_api.id(146898164566582405)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id sl,',
'       n001 APPRQNTY,',
'       n002 TRNSQNTY,',
'       n003 RETRNQTY,',
'       n004 STOCK,',
'       n005 REQ_QTY,',
'       d001 APPRDATE,',
'       d002 REQDDATE,',
'       d003 REFNDATE,',
'       d004 UPDOCDTE,',
'       d005 BATCHDTE,',
'       c001 SERLNUMB,',
'       c002 RAISEDBY,',
'       c003 APPRVDBY,',
'       c004 COMMCODE,',
'       c005 ITEMCODE,',
'       c006 ITEMTYPE,',
'       c007 ITEMDESC,',
'       c008 FACTRVAL,',
'       c009 HUOMCODE,',
'       c010 LUOMCODE,',
'       c011 ITEMRATE,',
'       c012 COSTRATE,',
'       c013 ORGNQNTY,',
'       c014 MSFCAMNT,',
'       c015 CURRCODE,',
'       c016 EXCGRATE,',
'       c017 REFNUMBR,',
'       c018 UPDOCTYP,',
'       c019 UPSUBTYP,',
'       c020 UPDOCNUM,',
'       c021 UPDOCSRL,',
'       c022 REMARKSS,',
'       c023 COSTCODE,',
'       c024 WARECODE,',
'       c025 STATUSCD,',
'       c026 ENGINEER,',
'       c027 BATCHNUM,',
'       c028 BATCHEXP,',
'       c029 SUB_COSTCODE,',
'       c030 REQITMPK,',
'       c031 SALERATE,',
'       c032 MSLCAMNT',
'  from apex_collections',
' where collection_name = ''ORDER_ITEMS'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(74717034357381534)
,p_name=>'TRNSQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRNSQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sales/ Issue Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-integer'
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
 p_id=>wwv_flow_api.id(74717145478381535)
,p_name=>'RETRNQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RETRNQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Returned Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(74717295384381536)
,p_name=>'APPRDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>330
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
 p_id=>wwv_flow_api.id(74717366698381537)
,p_name=>'REQDDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQDDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>340
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
 p_id=>wwv_flow_api.id(74717479998381538)
,p_name=>'REFNDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFNDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>350
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
 p_id=>wwv_flow_api.id(74717597667381539)
,p_name=>'BATCHDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHDTE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>360
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
 p_id=>wwv_flow_api.id(74717639568381540)
,p_name=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAISEDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>370
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
 p_id=>wwv_flow_api.id(74717711661381541)
,p_name=>'APPRVDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRVDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>380
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
 p_id=>wwv_flow_api.id(74717849848381542)
,p_name=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>390
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
 p_id=>wwv_flow_api.id(74717931161381543)
,p_name=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>400
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
 p_id=>wwv_flow_api.id(74718057406381544)
,p_name=>'FACTRVAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FACTRVAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>410
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
 p_id=>wwv_flow_api.id(74718184990381545)
,p_name=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>420
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
 p_id=>wwv_flow_api.id(74718287377381546)
,p_name=>'CURRCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>430
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
 p_id=>wwv_flow_api.id(74718361060381547)
,p_name=>'EXCGRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCGRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>440
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
 p_id=>wwv_flow_api.id(74718487268381548)
,p_name=>'REFNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>450
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
 p_id=>wwv_flow_api.id(74718508799381549)
,p_name=>'UPDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCTYP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>460
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
 p_id=>wwv_flow_api.id(74718666842381550)
,p_name=>'UPSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPSUBTYP'
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
 p_id=>wwv_flow_api.id(78095059566665601)
,p_name=>'UPDOCSRL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCSRL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>470
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
 p_id=>wwv_flow_api.id(78095113239665602)
,p_name=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>480
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
 p_id=>wwv_flow_api.id(78095247716665603)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>490
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
 p_id=>wwv_flow_api.id(78095394090665604)
,p_name=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUSCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>500
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
 p_id=>wwv_flow_api.id(78095483425665605)
,p_name=>'ENGINEER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENGINEER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>510
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
 p_id=>wwv_flow_api.id(78095538449665606)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Batch No.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
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
 p_id=>wwv_flow_api.id(78095636312665607)
,p_name=>'BATCHEXP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHEXP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>520
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
 p_id=>wwv_flow_api.id(78095726250665608)
,p_name=>'SUB_COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUB_COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>530
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
 p_id=>wwv_flow_api.id(78095857580665609)
,p_name=>'REQITMPK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQITMPK'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>540
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
 p_id=>wwv_flow_api.id(78097149236665622)
,p_name=>'STOCK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STOCK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stock'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_api.id(78097616613665627)
,p_name=>'REQ_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQ_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<font color="red">Return Qty</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-integer'
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
 p_id=>wwv_flow_api.id(147186949272533143)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sl#'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(148569414440221696)
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
,p_readonly_for_each_row=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(148569619314221698)
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
 p_id=>wwv_flow_api.id(148569674152221699)
,p_name=>'ITEMRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Order Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(148570026246221702)
,p_name=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALERATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sale Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(148570208954221704)
,p_name=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Unit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
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
 p_id=>wwv_flow_api.id(148570265369221705)
,p_name=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGNQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
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
 p_id=>wwv_flow_api.id(148570373727221706)
,p_name=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Request  Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-integer'
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(148570518633221707)
,p_name=>'MSFCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSFCAMNT'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(148570624922221708)
,p_name=>'MSLCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSLCAMNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(148570681201221709)
,p_name=>'UPDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
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
 p_id=>wwv_flow_api.id(148570821432221710)
,p_name=>'UPDOCDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCDTE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_api.id(148571116298221713)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
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
 p_id=>wwv_flow_api.id(148571377039221716)
,p_name=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>320
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
 p_id=>wwv_flow_api.id(148571709801221719)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(148571785657221720)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(148571974500221722)
,p_name=>'SL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sl'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-integer'
,p_is_required=>true
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
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(147186324761533137)
,p_internal_uid=>147186324761533137
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
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
,p_fixed_header_max_height=>440
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
 p_id=>wwv_flow_api.id(148575633784222432)
,p_interactive_grid_id=>wwv_flow_api.id(147186324761533137)
,p_static_id=>'396017'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(148575717079222432)
,p_report_id=>wwv_flow_api.id(148575633784222432)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
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
 p_id=>wwv_flow_api.id(6505535036520)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(74717034357381534)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(7078021036536)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(74717145478381535)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99.4
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(7661302036539)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(74717295384381536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(8267217036542)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>36
,p_column_id=>wwv_flow_api.id(74717366698381537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(8876484036545)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(74717479998381538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(9473395036548)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(74717597667381539)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10060051036552)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(74717639568381540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10667890036555)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>40
,p_column_id=>wwv_flow_api.id(74717711661381541)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11305792036558)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>41
,p_column_id=>wwv_flow_api.id(74717849848381542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11870333036559)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>42
,p_column_id=>wwv_flow_api.id(74717931161381543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(12525239036563)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>43
,p_column_id=>wwv_flow_api.id(74718057406381544)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13102823036566)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>44
,p_column_id=>wwv_flow_api.id(74718184990381545)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13731438036569)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>45
,p_column_id=>wwv_flow_api.id(74718287377381546)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14242997036572)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>46
,p_column_id=>wwv_flow_api.id(74718361060381547)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14885048036575)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>47
,p_column_id=>wwv_flow_api.id(74718487268381548)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15533971036578)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>48
,p_column_id=>wwv_flow_api.id(74718508799381549)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(16092039036581)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>49
,p_column_id=>wwv_flow_api.id(74718666842381550)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(16665789036584)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>50
,p_column_id=>wwv_flow_api.id(78095059566665601)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(17151362036586)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>51
,p_column_id=>wwv_flow_api.id(78095113239665602)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(17753359036589)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>52
,p_column_id=>wwv_flow_api.id(78095247716665603)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(18369067036592)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>53
,p_column_id=>wwv_flow_api.id(78095394090665604)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(18940869036595)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>54
,p_column_id=>wwv_flow_api.id(78095483425665605)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(19557945036598)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(78095538449665606)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(20173418036602)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>56
,p_column_id=>wwv_flow_api.id(78095636312665607)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(20822460036605)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>57
,p_column_id=>wwv_flow_api.id(78095726250665608)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21388163036608)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>58
,p_column_id=>wwv_flow_api.id(78095857580665609)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(83826791542271645)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(78097149236665622)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(84129252305989445)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(78097616613665627)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94.40000019073486
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(148578706148222451)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(147186949272533143)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(148580164532222460)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(148569414440221696)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>204
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(148581204133222465)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(148569619314221698)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>254
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(148581697254222468)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(148569674152221699)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(148583178464222477)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(148570026246221702)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(148584176336222482)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(148570208954221704)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(148584665277222485)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(148570265369221705)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(148585178816222488)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(148570373727221706)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(148585722573222491)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(148570518633221707)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(148586196615222495)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(148570624922221708)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(148586743354222498)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(148570681201221709)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(148587179156222501)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(148570821432221710)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(148588621266222509)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(148571116298221713)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(148590109860222518)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(148571377039221716)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(148591598184222526)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(148571709801221719)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(148594450420245230)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(148571974500221722)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(106110000000)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(78097149236665622)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(75704862119884896)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(148570373727221706)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(75705000479889968)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(74717034357381534)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(75705114691894237)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(74717145478381535)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(75705228967897615)
,p_view_id=>wwv_flow_api.id(148575717079222432)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(78097616613665627)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(147185932301533133)
,p_plug_name=>'nav right'
,p_parent_plug_id=>wwv_flow_api.id(145690359259223803)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75706178526884898)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(145690359259223803)
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
 p_id=>wwv_flow_api.id(75705385642884896)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(145690359259223803)
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
 p_id=>wwv_flow_api.id(75706533028884898)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(145690359259223803)
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
 p_id=>wwv_flow_api.id(75705731274884896)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(145690359259223803)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P473_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_api.id(70911620824438204)
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(75745820234884957)
,p_branch_name=>'Go To Page 472'
,p_branch_action=>'f?p=&APP_ID.:472:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74716926501381533)
,p_name=>'P473_REMARKS'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(147185932301533133)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75725714161884931)
,p_name=>'P473_ROWID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(145750065365879099)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75726172384884931)
,p_name=>'P473_COMPCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(145750065365879099)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75726576271884931)
,p_name=>'P473_WARECODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(145690162379223801)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75726981847884932)
,p_name=>'P473_DOCNUMBR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(145750065365879099)
,p_prompt=>'Ref. No. & Date'
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
 p_id=>wwv_flow_api.id(75727362826884932)
,p_name=>'P473_DOCTDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(145750065365879099)
,p_prompt=>'PO Date'
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
 p_id=>wwv_flow_api.id(78002263616045001)
,p_name=>'P473_WAREHOUSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(145690162379223801)
,p_prompt=>'Warehouse'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(78002378213045002)
,p_name=>'P473_TRNS_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(145750065365879099)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Transaction Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78002404864045003)
,p_name=>'P473_COSTCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(145690162379223801)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78002526482045004)
,p_name=>'P473_SHOWROOM'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(145690162379223801)
,p_prompt=>'Showroom'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(78002657287045005)
,p_name=>'P473_PRDOCTYP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(145750065365879099)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prdoctyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78002779204045006)
,p_name=>'P473_PRSUBTYP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(145750065365879099)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prsubtyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78096623467665617)
,p_name=>'P473_SMANNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(147185932301533133)
,p_prompt=>'Request By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(78096993412665620)
,p_name=>'P473_STATUSCD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(145750065365879099)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78097021140665621)
,p_name=>'P473_NEWDOCNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(145750065365879099)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(78097443205665625)
,p_tabular_form_region_id=>wwv_flow_api.id(147186178680533136)
,p_validation_name=>'RETRNQTY not null'
,p_validation_sequence=>10
,p_validation=>'REQ_QTY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'REQ_QTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(78097594634665626)
,p_tabular_form_region_id=>wwv_flow_api.id(147186178680533136)
,p_validation_name=>'RETRNQTY < available qty'
,p_validation_sequence=>20
,p_validation=>'nvl(:REQ_QTY,0) <= :APPRQNTY - nvl(:TRNSQNTY,0) - nvl(:RETRNQTY,0)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'REQ_QTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75744371781884954)
,p_name=>'create collection order items'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75744858943884956)
,p_event_id=>wwv_flow_api.id(75744371781884954)
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
'            p_collection_name =>''ORDER_ITEMS'' , ',
'            p_query => ''SELECT APPRQNTY,',
'                               TRNSQNTY,',
'                               RETRNQTY,',
'                               dfn_clbalqty (compcode,itemcode,warecode,batchnum) STOCK,',
'                               APPRQNTY - nvl(TRNSQNTY,0) - nvl(RETRNQTY,0) REQ_QTY,',
'                               APPRDATE,',
'                               REQDDATE,',
'                               REFNDATE,',
'                               UPDOCDTE,',
'                               BATCHDTE,',
'                               SERLNUMB,',
'                               RAISEDBY,',
'                               APPRVDBY,',
'                               COMMCODE,',
'                               ITEMCODE,',
'                               ITEMTYPE,',
'                               ITEMDESC,',
'                               FACTRVAL,',
'                               HUOMCODE,',
'                               LUOMCODE,',
'                               ITEMRATE,',
'                               COSTRATE,',
'                               ORGNQNTY,',
'                               MSFCAMNT,',
'                               CURRCODE,',
'                               EXCGRATE,',
'                               REFNUMBR,',
'                               UPDOCTYP,',
'                               UPSUBTYP,',
'                               UPDOCNUM,',
'                               UPDOCSRL,',
'                               REMARKSS,',
'                               COSTCODE,',
'                               WARECODE,',
'                               STATUSCD,',
'                               ENGINEER,',
'                               BATCHNUM,',
'                               BATCHEXP,',
'                               SUB_COSTCODE,',
'                               REQITMPK,',
'                               SALERATE,',
'                               MSLCAMNT',
'                          FROM NMSTKMOV',
'                         where COMPCODE = ''''''||:P473_COMPCODE||''''''',
'                           and COSTCODE IN (SELECT cabasecc',
'                                              FROM sycstacc',
'                                             WHERE compcode = ''''''||:P473_COMPCODE ||''''''',
'                                               AND grupcode = ''''''||:APP_USER||'''''')',
'                           AND DOCNUMBR = ''''''||:P473_DOCNUMBR||''''''',
'                           AND DOCTDATE = ''''''||:P473_DOCTDATE||''''''',
'                           AND DOCTTYPE = ''''''||:P473_PRDOCTYP||''''''',
'                           AND SUBTTYPE = ''''''||:P473_PRSUBTYP||''''''',
'                           AND WARECODE = ''''''||:P473_WARECODE||''''''',
'                           AND STATUSCD = ''''APR''''',
'                           AND APPRQNTY - NVL(TRNSQNTY,0) - NVL(RETRNQTY,0) > 0',
'                        '');',
'END;',
'END IF;'))
,p_attribute_02=>'P473_COMPCODE,P473_DOCNUMBR,P473_DOCTDATE,P473_PRDOCTYP,P473_PRSUBTYP,P473_WARECODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75745309305884956)
,p_event_id=>wwv_flow_api.id(75744371781884954)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(147186178680533136)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75742033207884953)
,p_name=>'delete collection on cancel'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(75705385642884896)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75742596255884953)
,p_event_id=>wwv_flow_api.id(75742033207884953)
,p_event_result=>'TRUE'
,p_action_sequence=>10
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
 p_id=>wwv_flow_api.id(75743066854884954)
,p_event_id=>wwv_flow_api.id(75742033207884953)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78097341758665624)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'validation for return qty'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'    begin',
'        for i in',
'        (   SELECT seq_id SL,',
'                   n001 APPRQNTY,',
'                   n002 TRNSQNTY,',
'                   n003 RETRNQTY,',
'                   n005 REQ_QTY',
'              FROM apex_collections',
'             WHERE collection_name = ''ORDER_ITEMS''',
'             ORDER BY sl)',
'        loop',
'            if i.REQ_QTY is null ',
'                or i.REQ_QTY = 0 ',
'                or i.REQ_QTY > i.APPRQNTY - nvl(i.TRNSQNTY,0) - nvl(i.RETRNQTY,0) then',
'                raise_application_error(-20001, ''Return Qty. must have valid value!'');',
'            end if;',
'        end loop;',
'    end;',
'end if;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75740728088884951)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update nmstkmov'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'for i in ( select seq_id sl,',
'                   n001 APPRQNTY,',
'                   n002 TRNSQNTY,',
'                   n003 RETRNQTY,',
'                   n004 STOCK,',
'                   n005 REQ_QTY,',
'                   d001 APPRDATE,',
'                   d002 REQDDATE,',
'                   d003 REFNDATE,',
'                   d004 UPDOCDTE,',
'                   d005 BATCHDTE,',
'                   c001 SERLNUMB,',
'                   c002 RAISEDBY,',
'                   c003 APPRVDBY,',
'                   c004 COMMCODE,',
'                   c005 ITEMCODE,',
'                   c006 ITEMTYPE,',
'                   c007 ITEMDESC,',
'                   c008 FACTRVAL,',
'                   c009 HUOMCODE,',
'                   c010 LUOMCODE,',
'                   c011 ITEMRATE,',
'                   c012 COSTRATE,',
'                   c013 ORGNQNTY,',
'                   c014 MSFCAMNT,',
'                   c015 CURRCODE,',
'                   c016 EXCGRATE,',
'                   c017 REFNUMBR,',
'                   c018 UPDOCTYP,',
'                   c019 UPSUBTYP,',
'                   c020 UPDOCNUM,',
'                   c021 UPDOCSRL,',
'                   c022 REMARKSS,',
'                   c023 COSTCODE,',
'                   c024 WARECODE,',
'                   c025 STATUSCD,',
'                   c026 ENGINEER,',
'                   c027 BATCHNUM,',
'                   c028 BATCHEXP,',
'                   c029 SUB_COSTCODE,',
'                   c030 REQITMPK,',
'                   c031 SALERATE,',
'                   c032 MSLCAMNT',
'              from apex_collections',
'             where collection_name = ''ORDER_ITEMS''',
'             order by seq_id)',
'loop',
'    dpr_insert_nmstkmov (  P_COMPCODE     =>   :P473_COMPCODE,',
'                           P_DOCTTYPE     =>   :DOCTTYPE,',
'                           P_SUBTTYPE     =>   :SUBTTYPE,',
'                           P_DOCNUMBR     =>   :P473_NEWDOCNO,',
'                           P_DOCTDATE     =>   :P473_TRNS_DATE,',
'                           P_SERLNUMB     =>   i.SERLNUMB,',
'                           P_PARTYCDE     =>   null,',
'                           P_RAISEDBY     =>   i.RAISEDBY,',
'                           P_APPRVDBY     =>   i.APPRVDBY,',
'                           P_APPRDATE     =>   i.APPRDATE,',
'                           P_REQDDATE     =>   i.REQDDATE,',
'                           P_COMMCODE     =>   i.COMMCODE,',
'                           P_ITEMCODE     =>   i.ITEMCODE,',
'                           P_ITEMTYPE     =>   i.ITEMTYPE,',
'                           P_ITEMDESC     =>   i.ITEMDESC,',
'                           P_DISCPCNT     =>   null,',
'                           P_DISCAMNT     =>   null,',
'                           P_FACTRVAL     =>   i.FACTRVAL,',
'                           P_HUOMCODE     =>   i.HUOMCODE,',
'                           P_LUOMCODE     =>   i.LUOMCODE,',
'                           P_ITEMRATE     =>   i.ITEMRATE,',
'                           P_COSTRATE     =>   i.COSTRATE,',
'                           P_SALERATE     =>   i.SALERATE,',
'                           P_ORGNQNTY     =>   i.REQ_QTY,',
'                           P_APPRQNTY     =>   i.REQ_QTY,',
'                           P_TRNSQNTY     =>   null,',
'                           P_RETRNQTY     =>   i.REQ_QTY,',
'                           P_MSFCAMNT     =>   null,',
'                           P_MSLCAMNT     =>   i.SALERATE*i.REQ_QTY,',
'                           P_CURRCODE     =>   i.CURRCODE,',
'                           P_EXCGRATE     =>   i.EXCGRATE,',
'                           P_REFNUMBR     =>   :P473_DOCNUMBR,',
'                           P_REFNDATE     =>   :P473_DOCTDATE,',
'                           P_UPDOCTYP     =>   :P473_PRDOCTYP,',
'                           P_UPSUBTYP     =>   :P473_PRSUBTYP,',
'                           P_UPDOCNUM     =>   :P473_DOCNUMBR,',
'                           P_UPDOCDTE     =>   :P473_DOCTDATE,',
'                           P_UPDOCSRL     =>   i.SERLNUMB,',
'                           P_DWDOCTYP     =>   null,',
'                           P_DWSUBTYP     =>   null,',
'                           P_DWDOCNUM     =>   null,',
'                           P_DWDOCDTE     =>   null,',
'                           P_DWDOCSRL     =>   null,',
'                           P_REMARKSS     =>   :P473_REMARKS,',
'                           P_COSTCODE     =>   i.COSTCODE,',
'                           P_WARECODE     =>   i.WARECODE,',
'                           P_STATUSCD     =>   :P473_STATUSCD,',
'                           P_TECHNICN     =>   null,',
'                           P_ENGINEER     =>   i.ENGINEER,',
'                           P_OPRSTAMP     =>   :app_user,',
'                           P_TIMSTAMP     =>   null,',
'                           P_BATCHNUM     =>   i.BATCHNUM,',
'                           P_BATCHEXP     =>   i.BATCHEXP,',
'                           P_BATCHDTE     =>   null,',
'                           P_COLORCDE     =>   null,',
'                           P_ENGINE_NO    =>   null,',
'                           P_SALEPERC     =>   null,',
'                           P_MODIFYDT     =>   null,',
'                           P_SUB_COSTCODE =>   i.SUB_COSTCODE,',
'                           P_REQITMPK     =>   i.REQITMPK',
'                        );',
'',
'    UPDATE NMSTKMOV',
'       SET RETRNQTY = nvl(i.REQ_QTY,0) + i.REQ_QTY',
'     WHERE COMPCODE = :P473_COMPCODE',
'       AND DOCNUMBR = :P473_DOCNUMBR',
'       AND TRUNC (DOCTDATE) = :P473_DOCTDATE',
'       AND DOCTTYPE = :P473_PRDOCTYP',
'       AND SUBTTYPE = :P473_PRSUBTYP',
'       AND WARECODE = :P473_WARECODE',
'       AND SERLNUMB = i.SERLNUMB;',
'       ',
'end loop;',
'',
'apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'',
'exception',
'    when others then',
'    raise_application_error(-20001, ''update nmstkmov''||'' ''||sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Transaction Successfull...&P473_NEWDOCNO.'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75725002582884929)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(147186178680533136)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'upd collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    case :APEX$ROW_STATUS    ',
'    when ''U'' then',
'        APEX_COLLECTION.UPDATE_MEMBER (',
'            p_collection_name  => ''ORDER_ITEMS'',',
'                        p_seq  => :SL, ',
'                        p_n001 => :APPRQNTY,',
'                        p_n002 => :TRNSQNTY,',
'                        p_n003 => :RETRNQTY,',
'                        p_n004 => :STOCK,',
'                        p_n005 => :REQ_QTY,',
'                        p_d001 => :APPRDATE,',
'                        p_d002 => :REQDDATE,',
'                        p_d003 => :REFNDATE,',
'                        p_d004 => :UPDOCDTE,',
'                        p_d005 => :BATCHDTE,',
'                        p_c001 => :SERLNUMB,',
'                        p_c002 => :RAISEDBY,',
'                        p_c003 => :APPRVDBY,',
'                        p_c004 => :COMMCODE,',
'                        p_c005 => :ITEMCODE,',
'                        p_c006 => :ITEMTYPE,',
'                        p_c007 => :ITEMDESC,',
'                        p_c008 => :FACTRVAL,',
'                        p_c009 => :HUOMCODE,',
'                        p_c010 => :LUOMCODE,',
'                        p_c011 => :ITEMRATE,',
'                        p_c012 => :COSTRATE,',
'                        p_c013 => :ORGNQNTY,',
'                        p_c014 => :MSFCAMNT,',
'                        p_c015 => :CURRCODE,',
'                        p_c016 => :EXCGRATE,',
'                        p_c017 => :REFNUMBR,',
'                        p_c018 => :UPDOCTYP,',
'                        p_c019 => :UPSUBTYP,',
'                        p_c020 => :UPDOCNUM,',
'                        p_c021 => :UPDOCSRL,',
'                        p_c022 => :REMARKSS,',
'                        p_c023 => :COSTCODE,',
'                        p_c024 => :WARECODE,',
'                        p_c025 => :STATUSCD,',
'                        p_c026 => :ENGINEER,',
'                        p_c027 => :BATCHNUM,',
'                        p_c028 => :BATCHEXP,',
'                        p_c029 => :SUB_COSTCODE,',
'                        p_c030 => :REQITMPK,',
'                        p_c031 => :SALERATE,',
'                        p_c032 => :MSLCAMNT',
'                    );           ',
'    when ''D'' then',
'        APEX_COLLECTION.DELETE_MEMBER (',
'            p_collection_name  => ''ORDER_ITEMS'',',
'                        p_seq  => :SL);           ',
'    end case;',
'commit;',
'exception ',
'    when others then',
'    raise_application_error(-20001, ''upd collection''||'' ''||sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78096712564665618)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'docnumber generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    newno varchar2(20);',
'    docnum varchar2(500);',
'begin',
'    docnumber_generation(:COMPCODE, ''NM'', :DOCTTYPE,',
'                         :SUBTTYPE, :P473_DOCTDATE, :P473_WARECODE,',
'                         ''NM'', newno); ',
'    :P473_NEWDOCNO:= newno; ',
'exception',
'    when no_data_found then',
'    raise_application_error(-20001,''No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''Too many rows found'');',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Transaction Successfull...&P473_NEWDOCNO.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(78096841271665619)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE-INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'PKG_APPROVAL.PRC_CHK_APPRNEED (:COMPCODE,',
'                               :DOCTTYPE,',
'                               :SUBTTYPE,',
'                               :P473_STATUSCD);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
