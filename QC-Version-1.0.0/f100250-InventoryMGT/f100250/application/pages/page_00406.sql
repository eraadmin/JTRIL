prompt --application/pages/page_00406
begin
--   Manifest
--     PAGE: 00406
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
 p_id=>406
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Issue Return'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'',
''))
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
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201215210308'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(100912599976509213)
,p_plug_name=>'Product Information'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>100
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(206735889088339324)
,p_plug_name=>'Issue Return'
,p_parent_plug_id=>wwv_flow_api.id(100912599976509213)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ROWID,',
'SERLNUMB,',
'COMPCODE,',
'DOCTTYPE,',
'SUBTTYPE,',
'DOCNUMBR,',
'DOCTDATE,',
'PARTYCDE,',
'RAISEDBY,',
'APPRVDBY,',
'APPRDATE,',
'REQDDATE,',
'COMMCODE,',
'case when COMMCODE is not null then',
'(select distinct NMCODDES from nmcodmas where compcode=a.compcode and NMSOFCDE=a.COMMCODE and NMHRDCDE=''MOD'')',
'when COMMCODE is   null then',
'NULL',
'end "COMMCODE_DESC",',
'ITEMCODE,',
'ITEMTYPE,',
'ITEMDESC,',
'ITEMLONG,',
'ITEMRATE,',
'DISCPCNT,',
'DISCAMNT,',
'SPLDISPC,',
'SPLDISNT,',
'SALERATE,',
'HUOMCODE,',
'FACTRVAL,',
'LUOMCODE,',
'case when LUOMCODE is not null then',
'(select distinct IUOMDESC from nmuommas  where compcode=a.compcode and IUOMCODE=a.LUOMCODE)',
'when LUOMCODE is   null then',
'NULL',
'end "LUOMCODE_DESC",',
'ORGNQNTY,',
'ORGNQNTY as DIS_ORGNQNTY,',
'APPRQNTY,',
'TRNSQNTY,',
'--APPRQNTY - NVL(TRNSQNTY,0) RCVQTY,',
'null RCVQTY,',
'(APPRQNTY-nvl(TRNSQNTY,0))* nvl(COSTRATE,ITEMRATE) *  nvl(EXCGRATE,1) MSFCAMNT,',
'CURRCODE,',
'EXCGRATE,',
'(APPRQNTY-nvl(TRNSQNTY,0))* nvl(COSTRATE,ITEMRATE) MSLCAMNT,',
'REFNUMBR,',
'REFNDATE,',
'UPDOCTYP,',
'UPSUBTYP,',
'UPDOCNUM,',
'UPDOCDTE,',
'UPDOCSRL,',
'REMARKSS,',
'COSTCODE,',
'WARECODE,',
'POSTFLAG,',
'PRNTFLAG,',
'PRICFLAG,',
'STATUSCD,',
'OPRSTAMP,',
'TIMSTAMP,',
'COLORCDE,',
'case when COLORCDE is not null then',
'(select distinct NMCODDES from nmcodmas where compcode=a.compcode and NMSOFCDE=a.COLORCDE and NMHRDCDE=''STY'')',
'when COLORCDE is null then',
'NULL',
'end "COLORCDE_DESC",',
'COSTRATE,',
'SRCWRECD,',
'BATCHNUM',
'from nmstkrec A',
'Where compcode = :COMPCODE',
'and DOCNUMBR = :P406_PRVDNO',
'and trunc(DOCTDATE) = :P406_PRVDDT',
'and DOCTTYPE = :P406_S_PRDTYP',
'and SUBTTYPE = :P406_S_PRSTYP',
'and WARECODE = :P406_WARECODE',
'and (nvl(apprqnty,0) - nvl(trnsqnty,0)) > 0',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P406_PRVDNO,P406_PRVDDT,P406_S_PRDTYP,P406_S_PRSTYP,P406_WARECODE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(12784304656119898)
,p_name=>'COMMCODE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMCODE_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>560
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(12784435518119899)
,p_name=>'LUOMCODE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>570
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
 p_id=>wwv_flow_api.id(12784468025119900)
,p_name=>'DIS_ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIS_ORGNQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>580
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
 p_id=>wwv_flow_api.id(12784725027119902)
,p_name=>'RCVQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RCVQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<font color="red">Return Qty.</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>620
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-integer'
,p_is_required=>false
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(12784791128119903)
,p_name=>'COLORCDE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLORCDE_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>590
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(12785207994119907)
,p_name=>'SRCWRECD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SRCWRECD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>600
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
 p_id=>wwv_flow_api.id(26907321918561047)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Batch No.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>610
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(206736076558339326)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(206736198153339327)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Srl.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_api.id(206736319371339328)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(206736438849339329)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P406_DOCTTYPE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(206736502352339330)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P406_SUBTTYPE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(206736561610339331)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(206736737765339332)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P406_DOCTDATE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(206736838491339333)
,p_name=>'PARTYCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARTYCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(206736890486339334)
,p_name=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAISEDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(206736999625339335)
,p_name=>'APPRVDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRVDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(206737157274339336)
,p_name=>'APPRDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(206737170259339337)
,p_name=>'REQDDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQDDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(206737299168339338)
,p_name=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
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
 p_id=>wwv_flow_api.id(206737440183339339)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_05=>'NONE'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(206737479555339340)
,p_name=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
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
 p_id=>wwv_flow_api.id(206737603672339341)
,p_name=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>200
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
 p_id=>wwv_flow_api.id(206737683994339342)
,p_name=>'ITEMLONG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMLONG'
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
 p_id=>wwv_flow_api.id(206737816546339343)
,p_name=>'ITEMRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Item Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
,p_default_type=>'STATIC'
,p_default_expression=>'100'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(207542586149761394)
,p_name=>'DISCPCNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCPCNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
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
 p_id=>wwv_flow_api.id(207542756477761395)
,p_name=>'DISCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
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
 p_id=>wwv_flow_api.id(207542787609761396)
,p_name=>'SPLDISPC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLDISPC'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
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
 p_id=>wwv_flow_api.id(207542863353761397)
,p_name=>'SPLDISNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLDISNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
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
 p_id=>wwv_flow_api.id(207543024098761398)
,p_name=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALERATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
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
 p_id=>wwv_flow_api.id(207543144791761399)
,p_name=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HUOMCODE'
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
 p_id=>wwv_flow_api.id(207543186475761400)
,p_name=>'FACTRVAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FACTRVAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
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
 p_id=>wwv_flow_api.id(207543276240761401)
,p_name=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Unit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LUOMCODE d,LUOMCODE r from nmitemas',
'where compcode=:P406_COMPCODE_APPLICATION',
'and ITEMCODE=:ITEMCODE'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'P104_COMPCODE_APPLICATION,ITEMCODE'
,p_ajax_items_to_submit=>'ITEMCODE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'SQL_QUERY'
,p_default_expression=>'select LUOMCODE  from nmitemas'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(207543359370761402)
,p_name=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGNQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Orginal Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>310
,p_value_alignment=>'RIGHT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'100'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(207543533594761403)
,p_name=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Receive Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>320
,p_value_alignment=>'RIGHT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_api.id(207543602211761404)
,p_name=>'TRNSQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRNSQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Returned Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>330
,p_value_alignment=>'RIGHT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_item_attributes=>'onchange="setcostcode();"'
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
 p_id=>wwv_flow_api.id(207543739587761405)
,p_name=>'MSFCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSFCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FC Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>340
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(207543770986761406)
,p_name=>'CURRCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>360
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'BDT'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(207543898484761407)
,p_name=>'EXCGRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCGRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>370
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'1'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(207543988482761408)
,p_name=>'MSLCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSLCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'LC Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>350
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(207544121623761409)
,p_name=>'REFNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>380
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
 p_id=>wwv_flow_api.id(207544166974761410)
,p_name=>'REFNDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFNDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>390
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
 p_id=>wwv_flow_api.id(207544325473761411)
,p_name=>'UPDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCTYP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>400
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
 p_id=>wwv_flow_api.id(207544412291761412)
,p_name=>'UPSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPSUBTYP'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>410
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
 p_id=>wwv_flow_api.id(207544553963761413)
,p_name=>'UPDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>420
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
 p_id=>wwv_flow_api.id(207544612158761414)
,p_name=>'UPDOCDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCDTE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>430
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
 p_id=>wwv_flow_api.id(207544682950761415)
,p_name=>'UPDOCSRL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCSRL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>440
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
 p_id=>wwv_flow_api.id(207544852950761416)
,p_name=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>450
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>180
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
 p_id=>wwv_flow_api.id(207544958162761417)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>460
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
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
,p_duplicate_value=>false
,p_include_in_export=>false
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(207545026201761418)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Warecode'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>470
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
,p_default_type=>'ITEM'
,p_default_expression=>'P406_SRWHSCDE'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(207545151418761419)
,p_name=>'POSTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSTFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>480
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
 p_id=>wwv_flow_api.id(207545190334761420)
,p_name=>'PRNTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRNTFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>490
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
 p_id=>wwv_flow_api.id(207545349574761421)
,p_name=>'PRICFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>500
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
 p_id=>wwv_flow_api.id(207545364012761422)
,p_name=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUSCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>510
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'NEW'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(207545496448761423)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>520
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':APP_USER'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(207545567729761424)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>530
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'SYSDATE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(207545831807761426)
,p_name=>'COLORCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLORCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>540
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
 p_id=>wwv_flow_api.id(207545924989761427)
,p_name=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cost Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>550
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(207546116603761429)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(207546248524761430)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(207547358825761441)
,p_name=>'ND_BATCH_QTY'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Batch Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT CLBALQTY d,  CLBALQTY r',
'           FROM (SELECT   b.batchnum,sum(w.CLBALQTY) CLBALQTY',
'                     FROM nmbtrate b, nmwhimas w',
'                    WHERE b.compcode = :P406_COMPCODE_APPLICATION',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND w.warecode = :P406_SRWHSCDE',
'                      AND b.itemcode = :ITEMCODE',
'                      and w.batchnum=:BATCHNUM',
'                     ',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                   HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC)'))
,p_lov_display_extra=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(206735959276339325)
,p_internal_uid=>222252103473005367
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
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(207548201242761500)
,p_interactive_grid_id=>wwv_flow_api.id(206735959276339325)
,p_static_id=>'395926'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(207548330452761500)
,p_report_id=>wwv_flow_api.id(207548201242761500)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13052399021077378)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>44
,p_column_id=>wwv_flow_api.id(12784304656119898)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13052885192077384)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(12784435518119899)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>154
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13053408026077386)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>53
,p_column_id=>wwv_flow_api.id(12784468025119900)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13054432505077389)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>55
,p_column_id=>wwv_flow_api.id(12784725027119902)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13054894116077391)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>57
,p_column_id=>wwv_flow_api.id(12784791128119903)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27405365161739009)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(26907321918561047)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97.6
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35821678483151036)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>59
,p_column_id=>wwv_flow_api.id(12785207994119907)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207548769534761505)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(206736076558339326)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207549268100761507)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(206736198153339327)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>10
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207549845123761508)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(206736319371339328)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207550266186761510)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(206736438849339329)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207550808593761510)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(206736502352339330)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207551262284761511)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(206736561610339331)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207551732520761513)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(206736737765339332)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207552235585761514)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(206736838491339333)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207552720492761514)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(206736890486339334)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207553200471761516)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(206736999625339335)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207553695416761517)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(206737157274339336)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207554223131761519)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(206737170259339337)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207554664955761519)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(206737299168339338)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207555217141761521)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(206737440183339339)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>158
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207555735901761522)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(206737479555339340)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207556240373761524)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(206737603672339341)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>249
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207556722319761524)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(206737683994339342)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207557205723761525)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(206737816546339343)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207557716408761527)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(207542586149761394)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207558220104761528)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(207542756477761395)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207558660463761530)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(207542787609761396)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207559232311761531)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(207542863353761397)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207559720164761531)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(207543024098761398)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207560165739761533)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(207543144791761399)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207560755091761535)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(207543186475761400)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207561175540761536)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(207543276240761401)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>63
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207561756571761536)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(207543359370761402)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207562180013761538)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(207543533594761403)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102.8
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207562703779761539)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(207543602211761404)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98.6
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207563193617761541)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>56
,p_column_id=>wwv_flow_api.id(207543739587761405)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207563707843761542)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(207543770986761406)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207564221125761544)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(207543898484761407)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207564746710761544)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>57
,p_column_id=>wwv_flow_api.id(207543988482761408)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89.8
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207565216637761546)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(207544121623761409)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207565688544761547)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(207544166974761410)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207566254870761549)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(207544325473761411)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207566742226761552)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(207544412291761412)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207567230019761553)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(207544553963761413)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207567742708761555)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(207544612158761414)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207568213366761556)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>40
,p_column_id=>wwv_flow_api.id(207544682950761415)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207568662787761556)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>58
,p_column_id=>wwv_flow_api.id(207544852950761416)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207569209305761558)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>50
,p_column_id=>wwv_flow_api.id(207544958162761417)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207569700569761560)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>43
,p_column_id=>wwv_flow_api.id(207545026201761418)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>5
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207570229449761561)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>45
,p_column_id=>wwv_flow_api.id(207545151418761419)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207570737114761561)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>46
,p_column_id=>wwv_flow_api.id(207545190334761420)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207571246377761563)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>47
,p_column_id=>wwv_flow_api.id(207545349574761421)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207571739014761564)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>48
,p_column_id=>wwv_flow_api.id(207545364012761422)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207572220000761566)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>49
,p_column_id=>wwv_flow_api.id(207545496448761423)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207572736692761567)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>50
,p_column_id=>wwv_flow_api.id(207545567729761424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207573703236761569)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>52
,p_column_id=>wwv_flow_api.id(207545831807761426)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207574173721761570)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(207545924989761427)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84.4
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207575759393763093)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(207546116603761429)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>10
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(207729259772806949)
,p_view_id=>wwv_flow_api.id(207548330452761500)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(207547358825761441)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(288781755629050925)
,p_plug_name=>'doc info left'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(288796885536050944)
,p_plug_name=>'doc info right'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(288833276731050974)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>190
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11120575959150315)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(288833276731050974)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:402:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11120181929150314)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(288833276731050974)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Submit'
,p_button_position=>'CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11155937466150352)
,p_branch_name=>'Go To Page 402'
,p_branch_action=>'f?p=&APP_ID.:402:&SESSION.::&DEBUG.:RP,402::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11068534300150240)
,p_name=>'P406_COMPCODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(288781755629050925)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11072093764150241)
,p_name=>'P406_ROWID'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(288781755629050925)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11072528803150242)
,p_name=>'P406_DOCTTYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(288781755629050925)
,p_use_cache_before_default=>'NO'
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11073318874150242)
,p_name=>'P406_SUBTTYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(288781755629050925)
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11074523946150243)
,p_name=>'P406_S_PRDTYP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(288781755629050925)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prdoctyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11075317491150243)
,p_name=>'P406_S_PRSTYP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(288781755629050925)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prsubtyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11078861784150245)
,p_name=>'P406_DOCNUMBR'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(288781755629050925)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11079714135150245)
,p_name=>'P406_DOCTDATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(288781755629050925)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Tran Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>4000
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_CUSTOMERID'')"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'&P406_PRVDDT.'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11080129826150246)
,p_name=>'P406_PRVDNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(288781755629050925)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Issue No.'
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
 p_id=>wwv_flow_api.id(11080496984150246)
,p_name=>'P406_PRVDDT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(288781755629050925)
,p_prompt=>'Issue Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(11080941267150246)
,p_name=>'P406_REFNUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(288781755629050925)
,p_prompt=>'Ext. Ref. No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11081266053150247)
,p_name=>'P406_REFNDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(288781755629050925)
,p_prompt=>'Ext. Ref. Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11084392098150248)
,p_name=>'P406_SRWHSCDE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(288796885536050944)
,p_prompt=>'Source Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'ORDER BY warecode'))
,p_cSize=>100
,p_cMaxlength=>4000
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT  INITCAP (b.waredesc)||'' (''||a.warecode||'' )'' D,a.warecode R',
'    FROM NMWHIMAS a, NMWHSMAS b, SYCSTACC c',
'   WHERE     a.compcode = :P406_COMPCODE_APPLICATION',
'         AND a.compcode = b.compcode',
'         AND c.compcode = b.compcode',
'         AND a.warecode = b.warecode',
'         AND c.warecode = a.warecode',
'         AND c.cabasecc = b.costcode',
'         AND c.grupcode = :APP_USER',
'       --  AND NVL (SRVCWFLG, ''N'') = ''N''',
'ORDER BY  a.warecode'))
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
 p_id=>wwv_flow_api.id(11092365081150254)
,p_name=>'P406_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(288796885536050944)
,p_prompt=>'Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'ORDER BY warecode'))
,p_cSize=>100
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(11118026965150311)
,p_tabular_form_region_id=>wwv_flow_api.id(206735889088339324)
,p_validation_name=>'Issue Qty not null'
,p_validation_sequence=>110
,p_validation=>'RCVQTY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#LABEL# must have valid value'
,p_associated_column=>'RCVQTY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12785323995119908)
,p_tabular_form_region_id=>wwv_flow_api.id(206735889088339324)
,p_validation_name=>'Return Qty less than Issue Qty'
,p_validation_sequence=>130
,p_validation=>'to_number(NVL(:RCVQTY,0)) <= (:APPRQNTY - NVL(:TRNSQNTY,0))'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#LABEL# must be less then Available Qty.'
,p_associated_column=>'RCVQTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(55401854354215424)
,p_validation_name=>'future date not allow'
,p_validation_sequence=>150
,p_validation=>':P406_DOCTDATE <= trunc(sysdate)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#LABEL# Future Date not Allow!'
,p_associated_item=>wwv_flow_api.id(11079714135150245)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11126020102150332)
,p_name=>'change on costcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P406_COSTCODE'
,p_condition_element=>'P406_COSTCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11126475854150333)
,p_event_id=>wwv_flow_api.id(11126020102150332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P406_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.warecode',
'into :P406_WARECODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P406_COSTCODE)',
'     AND costcode = :P406_COSTCODE',
'ORDER BY warecode;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P406_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct COSTDESC ',
'into :P406_COSTCENTERNAME',
'from syjobmas',
'where compcode = :compcode',
'AND costcode = :P406_COSTCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P406_COSTCODE IS NOT NULL and :P406_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT distinct SMANCODE',
'into :P406_SALMANID',
'        FROM nmsalrec',
'       WHERE docnumbr = :p406_docnumbr1',
'         AND DOCTDATE = :P406_DOCTDATE',
'         AND COSTCODE = :P406_COSTCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P406_COSTCODE,P406_DOCTDATE'
,p_attribute_03=>'P406_WARECODE,P406_COSTCENTERNAME,P406_SALMANID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11127767857150334)
,p_name=>'change on trantype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P406_TRANTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11128348730150334)
,p_event_id=>wwv_flow_api.id(11127767857150334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select distinct TRANTYPE,SUBTTYPE ',
'into :P406_DOCTTYPE,:P406_SUBTTYPE',
'from SYDOCMAS ',
'where COMPCODE = :COMPCODE ',
'AND TRANTYPE=''IS''',
'AND SUBTTYPE=:P406_TRANTYPE',
'AND SYSDATE BETWEEN STRTPERD AND ENDPERD ',
'AND MODLCODE = :MODLCODE ;',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'',
'END;',
'',
'BEGIN',
'  Select PRDOCTYP,PRSUBTYP',
'into :P406_PRDTYP,:P406_PRSTYP',
'        from   NMWRKFLW',
'        where  COMPCODE = :COMPCODE ',
'        and    TRDOCTYP = :P406_DOCTTYPE',
'        and    TRSUBTYP = :P406_SUBTTYPE;',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'',
'END;',
'BEGIN',
'SELECT INITCAP (naration)',
'into :P406_PRVREF',
'  FROM sydocmas',
' WHERE compcode = :compcode ',
'   AND trantype = :P406_PRDTYP',
'   AND subttype = :P406_PRSTYP',
'   AND :P406_DOCTDATE BETWEEN strtperd AND endperd',
'   AND modlcode = :modlcode ;',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'',
'END;',
'  ',
'',
''))
,p_attribute_02=>'P406_TRANTYPE,P406_DOCTDATE,P406_PRDTYP,P406_PRSTYP,P406_DOCTTYPE,P406_SUBTTYPE'
,p_attribute_03=>'P406_DOCTTYPE,P406_SUBTTYPE,P406_PRDTYP,P406_PRSTYP,P406_PRVREF'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11151420883150349)
,p_name=>'change on P406_PRVDNO'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P406_PRVDNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11151874150150349)
,p_event_id=>wwv_flow_api.id(11151420883150349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'If :P406_PRVDNO is not null then',
'  Begin',
'       Select distinct DOCTDATE',
'       into   :P406_PRVDDT',
'       from   NMSTKREC',
'       where  COMPCODE = :P406_COMPCODE_APPLICATION ',
'       and    DOCTTYPE = ''IS'' --:P406_S_PRDTYP',
'       and    SUBTTYPE = 2 --:P406_S_PRSTYP',
'       and    DOCNUMBR = :P406_PRVDNO;',
'   Exception',
'       When No_Data_Found then',
'           null;',
'       When Too_Many_Rows then',
'           null;',
'   End;',
'end if;',
'END;',
'',
'begin',
'If :P81_PRVDNO  is not null then',
'  Begin',
'       Select distinct costcode,refndate,SRCWRECD  -- refnumbr,',
'       into   :P406_SRCCOSTCD,:P406_REFNDATE,:P406_SRWHSCDE --:P406_REFNUMBR,',
'       from   NMSTKREC',
'       where  COMPCODE = :P406_COMPCODE_APPLICATION ',
'       and    DOCTTYPE = ''IS'' --:P406_S_PRDTYP',
'       and    SUBTTYPE = 2 --:P406_S_PRSTYP',
'       and    DOCNUMBR = :P406_PRVDNO',
'       and    DOCTDATE = to_date(:P406_PRVDDT,''dd-mon-yyyy''); --:P406_PRVDDT;',
'   Exception',
'       When No_Data_Found then',
'            null;',
'     When Too_Many_Rows then',
'          null;',
'   End;',
'Begin',
'  If :P406_SRCCOSTCD is not null then ',
'   Begin',
'       Select Initcap(COSTDESC)',
'       into   :P406_SRCCOSTDS',
'       from   SYJOBMAS',
'       where  COMPCODE = :P406_COMPCODE_APPLICATION ',
'       and    COSTCODE = :P406_SRCCOSTCD ;',
'       ',
'       Select warecode,waredesc',
'        into   :P406_DSWHSCDE,:P406_DSWHSNME',
'        from   nmwhsmas',
'        where  compcode = :P406_COMPCODE_APPLICATION ',
'        and    costcode = :P406_SRCCOSTCD;',
'   Exception',
'        When No_Data_Found then ',
'            Null;',
'      When Too_many_Rows then ',
'          Null;',
'   End;    ',
'  End if;',
'End; ',
'  ',
'End If;  ',
'end;'))
,p_attribute_02=>'P406_PRVDNO'
,p_attribute_03=>'P406_PRVDDT,P406_REFNDATE,P406_SRWHSCDE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11154884866150351)
,p_name=>'change on destination warehouse'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P406_DSWHSCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11155373864150351)
,p_event_id=>wwv_flow_api.id(11154884866150351)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_result number;',
'l_no number;',
'begin',
'',
'   	Select waredesc,costcode,WARECODE',
'   	into   :P406_DSWHSNME,:P406_SRCCOSTCD,:P406_D_WARECODE',
'   	from   nmwhsmas',
'   	where  compcode = :P406_COMPCODE_APPLICATION ',
'   	and    warecode = :P406_DSWHSCDE;',
'   Exception',
'   	When No_Data_Found then',
'   	     apex_application.g_print_success_message:=''Invalid Warehouse code...Select valid values from the list'';',
'',
'     When Too_Many_Rows then',
'         apex_application.g_print_success_message:=''More records found in Table...Contact System Administrator'';',
'',
'   End; ',
' ',
'Begin',
'  If :P406_SRCCOSTCD is not null then',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P406_SRCSTNME',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :P406_COMPCODE_APPLICATION ',
'	   and    COSTCODE = :P406_SRCCOSTCD;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
'  End if;',
'End;',
''))
,p_attribute_02=>'P406_SRCCOSTCD,P406_DSWHSCDE'
,p_attribute_03=>'P406_DSWHSNME,P406_SRCCOSTCD,P406_SRCSTNME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12784930640119904)
,p_name=>'refresh Issue Return'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P406_PRVDNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12784989207119905)
,p_event_id=>wwv_flow_api.id(12784930640119904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(206735889088339324)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(100913290471509220)
,p_name=>'set amount'
,p_event_sequence=>420
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(206735889088339324)
,p_triggering_element=>'RCVQTY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(100913327760509221)
,p_event_id=>wwv_flow_api.id(100913290471509220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':MSFCAMNT := nvl(:COSTRATE,:ITEMRATE) * :RCVQTY * nvl(:EXCGRATE,1);',
':MSLCAMNT := nvl(:COSTRATE,:ITEMRATE) * :RCVQTY;'))
,p_attribute_02=>'COSTRATE,ITEMRATE,RCVQTY,EXCGRATE'
,p_attribute_03=>'MSFCAMNT,MSLCAMNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11118725509150312)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(206735889088339324)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert nmstkrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    INSERT INTO NMSTKREC ',
'                (COMPCODE      ,DOCTTYPE  ,SUBTTYPE  ,DOCNUMBR  ,DOCTDATE,',
'                 SERLNUMB      ,PARTYCDE  ,RAISEDBY  ,APPRVDBY  ,APPRDATE,',
'                 REQDDATE      ,COMMCODE  ,ITEMCODE  ,ITEMTYPE  ,MCSERIAL,',
'                 ITEMDESC      ,ITEMLONG  ,ITEMRATE  ,DISCPCNT  ,DISCAMNT,',
'                 SPLDISPC      ,SPLDISNT  ,SALERATE  ,HUOMCODE  ,FACTRVAL,',
'                 LUOMCODE      ,ORGNQNTY  ,APPRQNTY  ,MSFCAMNT  ,CURRCODE,',
'                 EXCGRATE      ,MSLCAMNT  ,REFNUMBR  ,REFNDATE  ,UPDOCTYP,',
'                 UPSUBTYP      ,UPDOCNUM  ,UPDOCDTE  ,UPDOCSRL  ,REMARKSS,',
'                 COSTCODE      ,WARECODE  ,STATUSCD  ,OPRSTAMP, TIMSTAMP,',
'                 BATCHNUM      ,NORMRATE ,COSTRATE, SRCWRECD)',
' ',
'         VALUES (:P406_COMPCODE, :P406_DOCTTYPE, :P406_SUBTTYPE, :P406_DOCNUMBR,:P406_DOCTDATE,',
'                 :SERLNUMB    ,:PARTYCDE,:RAISEDBY,:APPRVDBY   ,:APPRDATE,',
'                 :REQDDATE    ,:COMMCODE,:ITEMCODE,:ITEMTYPE    ,:MCSERIAL,',
'                 :ITEMDESC    ,:ITEMLONG,nvl(:ITEMRATE,:COSTRATE), :DISCPCNT    ,:DISCAMNT,',
'                 :SPLDISPC    ,:SPLDISNT,:SALERATE,:HUOMCODE    ,:FACTRVAL,',
'                 :LUOMCODE    ,:RCVQTY, :RCVQTY,:MSFCAMNT, :CURRCODE, ',
'                 :EXCGRATE    ,:MSLCAMNT,:REFNUMBR,:REFNDATE    , :P406_S_PRDTYP, ',
'                 :P406_S_PRSTYP    ,:P406_PRVDNO,:P406_PRVDDT,',
'                 :SERLNUMB    ,:REMARKSS,',
'                 :COSTCODE,   :WARECODE, :STATUSCD, :APP_USER, SYSDATE,',
'                 :BATCHNUM    ,:ITEMRATE,nvl(:COSTRATE,:ITEMRATE), :SRCWRECD);',
'',
'    UPDATE nmstkrec',
'       SET trnsqnty = nvl(trnsqnty,0) + :RCVQTY,',
'           DWDOCTYP = :P406_DOCTTYPE,',
'           DWSUBTYP = :P406_SUBTTYPE,',
'           DWDOCNUM = :P406_DOCNUMBR,',
'           DWDOCDTE = :P406_DOCTDATE,',
'           DWDOCSRL = :SERLNUMB',
'     WHERE COMPCODE = :P406_COMPCODE',
'       AND docnumbr = :P406_PRVDNO ',
'       AND trunc(DOCTDATE) = :P406_PRVDDT',
'       AND WARECODE = :P406_WARECODE',
'       AND DOCTTYPE = :P406_S_PRDTYP ',
'       AND SUBTTYPE = :P406_S_PRSTYP',
'       AND ITEMCODE = :ITEMCODE;  ',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'--raise_application_error(-20001,''Others Problem'');',
'raise_application_error(-20001,sqlcode||sqlerrm);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
'docnumber_generation(:P406_COMPCODE_APPLICATION, ''NM'', ''IR'',',
'                     1, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''),null,',
'                     ''NM'', newno);',
'                     ',
'if docnum is not null then                        ',
' --:COSTCODE:=:P406_SRCSTCDE;',
' --:WARECODE:=:P406_SRWHSCDE;',
' --:DOCNUMBR:=docnum;',
':P406_DOCNUMBR:=newno;',
'end if;',
'',
'if newno is not null then',
'INSERT INTO NMSTKREC ',
'                (COMPCODE      ,DOCTTYPE  ,SUBTTYPE  ,DOCNUMBR  ,DOCTDATE                      ,',
'                 SERLNUMB      ,PARTYCDE  ,RAISEDBY  ,APPRVDBY  ,APPRDATE                      ,',
'                 REQDDATE      ,COMMCODE  ,ITEMCODE  ,ITEMTYPE  ,MCSERIAL                      ,',
'                 ITEMDESC      ,ITEMLONG  ,ITEMRATE  ,DISCPCNT  ,DISCAMNT                      ,',
'                 SPLDISPC      ,SPLDISNT  ,SALERATE  ,HUOMCODE  ,FACTRVAL                      ,',
'                 LUOMCODE      ,ORGNQNTY  ,APPRQNTY  ,MSFCAMNT  ,CURRCODE                      ,',
'                 EXCGRATE      ,MSLCAMNT  ,REFNUMBR  ,REFNDATE  ,UPDOCTYP                      ,',
'                 UPSUBTYP      ,UPDOCNUM  ,UPDOCDTE  ,UPDOCSRL  ,REMARKSS                      ,',
'                 COSTCODE      ,WARECODE  ,STATUSCD  ,OPRSTAMP                        ,',
'                 BATCHNUM      ,NORMRATE ,COSTRATE   ,TRNSQNTY ,SRCWRECD)',
'    ',
'    VALUES(:P406_COMPCODE_APPLICATION, ''IR'', 1, NEWNO,:P406_DOCTDATE,',
'                 :SERLNUMB     ,:PARTYCDE,:RAISEDBY,:APPRVDBY    ,:APPRDATE                ,',
'                 :REQDDATE    ,:COMMCODE,:ITEMCODE,:ITEMTYPE    ,:MCSERIAL                ,',
'                 :ITEMDESC    ,:ITEMLONG,:ITEMRATE,:DISCPCNT    ,:DISCAMNT                ,',
'                 :SPLDISPC    ,:SPLDISNT,:SALERATE,:HUOMCODE    ,:FACTRVAL                ,',
'                 :LUOMCODE    ,:ORGNQNTY,:APPRQNTY,:MSFCAMNT    ,:CURRCODE, ',
'                 :EXCGRATE    ,:MSLCAMNT,:REFNUMBR,:REFNDATE    ,:DOCTTYPE   , ',
'                 :SUBTTYPE    ,:P406_DOCNUMBR,:DOCTDATE,:SERLNUMB    ,:REMARKSS                ,',
'                 :P406_SRCCOSTCD,:P406_DSWHSCDE,''APR'' ,:APP_USER           ,',
'                 :BATCHNUM    ,:ITEMRATE,:COSTRATE,:RCVQTY,:P406_SRWHSCDE);',
'end if;                 ',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,''Others Problem'');',
'',
'end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11123815166150326)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12785093478119906)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process for doc generation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(20);',
'btcnum varchar2(20):=''SYS00000'';',
'begin',
'',
'docnumber_generation(:P406_COMPCODE, ''NM'', ''IR'',',
'                     1, :P406_DOCTDATE, :P406_WARECODE,',
'                     ''NM'', docnum);                    ',
'                     ',
':P406_DOCNUMBR := docnum; ',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows founds'');',
'when others then',
'raise_application_error(-20001,''Others Problem'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Record generate successfully..... &P406_DOCNUMBR.'
);
wwv_flow_api.component_end;
end;
/
