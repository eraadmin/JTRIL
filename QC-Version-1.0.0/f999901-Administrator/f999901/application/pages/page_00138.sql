prompt --application/pages/page_00138
begin
--   Manifest
--     PAGE: 00138
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
 p_id=>138
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Product Security: Group Create'
,p_alias=>'PRODUCT-SECURITY-GROUP-CREATE1'
,p_page_mode=>'MODAL'
,p_step_title=>'Product Security: Group Create'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                $(document).ready(function() { ',
'                $(function() { ',
'                    $(".textDate").datepicker({ ',
'                        dateFormat: ''dd-mm-yy'', ',
'                        beforeShowDay: my_check ',
'                    }); ',
'                }); ',
'            function my_check(in_date) { ',
'            var firstDay = new Date(in_date.getFullYear(), in_date.getMonth(), 1); ',
'            var saturday = 6 - firstDay.getDay() ',
'            var friday   = 5 - firstDay.getDay() ',
'            if (in_date.getDay() == 0 || in_date.getDate() == saturday ',
'                                      || in_date.getDate() == friday) { ',
'                return [false, "notav", ''Not Available'']; ',
'            } else { ',
'                return [true, "av", "available"]; ',
'            } ',
'                    ',
'  /*',
'                function my_check(in_date) { ',
'                    if (in_date.getDay() == 5) { ',
'                        return [false, "notav", ''Not Available'']; ',
'                    } else { ',
'                        return [true, "av", "available"]; ',
'                    }',
'                   ',
'                } ',
'                ',
'                https://www.geeksforgeeks.org/jquery-ui-beforeshowday/',
'   */             ',
'            }) ',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*=================classic report css =================*/',
'.t-Report-colHead{',
'    font-size: 12px;',
'    /*line-height: 10px;',
'    color: black;',
'    transition: background-color .1s;*/',
'    color: black;',
'    font-weight:bold;',
'    /* border-right-width: 0; */',
'    /* border: 1px solid grey;   */',
'	/* padding: 2px; */',
'	BACKGROUND-COLOR: #d1d1e0;',
'    text-align: center;',
'    vertical-align: middle;',
'}',
'',
'.t-Report-cell{',
'    font-size: 10px;',
'    /*line-height: 10px;*/',
'    /* border-right-width: 0; */',
'    /* border: 1px solid grey;   */',
'	/* padding: 2px; */',
'	    --BACKGROUND-COLOR: lightgrey;',
'    transition: background-color .1s;',
'	color: black;',
'}'))
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-WizardSteps-label {',
'    display: block;',
'    text-align: center;',
'    margin-top: 22px;',
'    padding: 4px 8px 0;',
'    line-height: 18px;',
'    font-size: 1.2rem;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'}',
'/*',
'.t-Wizard .t-Wizard-header {',
'    background-color: beige;',
'    border-color: #ededed;',
'    height: 55px;',
'}',
'*/',
'.t-Wizard .t-Wizard-body, .t-Wizard .t-Wizard-controls {',
'    padding: 5px 5px;',
'}',
'',
'.t-Wizard .t-Wizard-body, .t-Wizard .t-Wizard-controls {',
'    padding: 0px 5px;',
'}',
'',
'.t-Wizard {',
'    max-width: 100%;',
'    margin: 0px auto 1px;',
'    padding: 0px;',
'    border: 1px solid;',
'    box-shadow: rgba(0, 0, 0, 0.05) 0px 1px 2px;',
'    background-clip: padding-box;',
'}',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'.t-WizardSteps-label {',
'    display: block;',
'    text-align: center;',
'    margin-top: 22px;',
'    padding: 4px 8px 0;',
'    line-height: 18px;',
'    font-size: 1.2rem;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'}',
'',
'.t-Wizard .t-Wizard-header {',
'    background-color: lightgrey;',
'    border-color: #ededed;',
'    height: 55px;',
'}',
'',
'.t-Wizard .t-Wizard-body, .t-Wizard .t-Wizard-controls {',
'    padding: 5px 5px;',
'}',
'',
'.t-Wizard .t-Wizard-body, .t-Wizard .t-Wizard-controls {',
'    padding: 0px 5px;',
'}',
'',
'.t-Wizard {',
'    max-width: 100%;',
'    margin: 0px auto 1px;',
'    padding: 0px;',
'    border: 1px solid;',
'    box-shadow: rgba(0, 0, 0, 0.05) 0px 1px 2px;',
'    background-clip: padding-box;',
'}',
'',
'.ui-dialog .ui-dialog-titlebar-close {',
'    position: absolute;',
'    right: 12px;',
'    top: 2px;',
'    width: 24px;',
'    margin: 0;',
'    padding: 0;',
'    height: 24px;',
'    border-radius: 100%;',
'}',
'',
'',
'/*=================classic report css =================*/',
'.t-Report-colHead{',
'    font-size: 12px;',
'    /*line-height: 10px;',
'    color: black;',
'    transition: background-color .1s;*/',
'    color: black;',
'    font-weight:bold;',
'    border-right-width: 0;',
'    border: 1px solid grey;  ',
'	padding: 2px;',
'	BACKGROUND-COLOR: lightgrey;',
'    text-align: center;',
'    vertical-align: middle;',
'}',
'',
'.t-Report-cell{',
'    font-size: 10px;',
'    /*line-height: 10px;*/',
'    border-right-width: 0;',
'    border: 1px solid grey;  ',
'	padding: 2px;',
'	    --BACKGROUND-COLOR: lightgrey;',
'    transition: background-color .1s;',
'	color: black;',
'}',
'',
'',
'/*=============== region header small ===========*/',
'.ui-dialog .ui-dialog-titlebar {',
'    padding: 5px;',
'    position: relative;',
'    border: 0;',
'    font-weight: 700;',
'    color:darkblue;',
'    background-color: #F8F8F8;',
'    border-bottom: 1px solid #F0F0F0;',
'    border-bottom-right-radius: 0;',
'    border-bottom-left-radius: 0;',
'}',
'',
'',
'.t-AVPList-label, .t-AVPList-value {',
'    min-height: 2.6rem;',
'    display: flex;',
'    font-size: 1.4rem;',
'    line-height: 1.5rem;',
'    padding: 0.8rem 1.2rem;',
'    margin: 0;',
'    box-shadow: 0 0.1rem rgb(0 0 0 / 5%) inset;',
'    transition: background-color .1s;',
'}',
'',
'.t-Body-info .t-AVPList-label, .t-Region .t-AVPList-label {',
'    color: #262626;',
'    font-weight: 800;',
'    font-size:13px',
'}',
'.t-Body-info .t-AVPList-value, .t-Region .t-AVPList-value {',
'    color: darkblue;',
'    font-weight: 500;',
'    font-size:13px',
'}',
'',
'.t-Report-tableWrap{',
'    border: 1px solid black;',
'}',
'',
'',
'.t-Region-header {',
'    border-bottom-right-radius: 0!important;',
'    border-bottom-left-radius: 0!important;',
'    border-bottom: 1px solid rgba(0,0,0,.075);',
'    width: 100%;',
'    font-size: 1.3rem;',
'    font-weight: 500;',
'    line-height: 0.4rem;',
'    display: flex;',
'    align-items: center;',
'}',
'',
'.t-Region-headerItems--title {',
'    flex-grow: 1;',
'    text-align: center;',
'    padding: .8rem;',
'    display: block;',
'}',
'',
'',
'.t-Region {',
'    display: block;',
'    border: 1px solid rgba(0,0,0,.1);',
'    box-shadow: 0 2px 4px -2px rgb(0 0 0 / 8%);',
'    margin-bottom: 5px;',
'}',
'',
'/*=========POP UP LOV CSS ===============*/',
'.a-PopupLOV-results .a-IconList-item {',
'    color: inherit;',
'}',
'',
'.a-PopupLOV-results .a-IconList-item {',
'    border-radius: 0;',
'    padding: 4px 8px;',
'    font-size: 12px;',
'    line-height: 10px;',
'    border-bottom: 1px solid black;',
'}',
'.a-PopupLOV-results .a-IconList-item {',
'    float: none;',
'    width: 100%;',
'    margin: 0;',
'    cursor: var(--a-menu-cursor,pointer);',
'}',
'}'))
,p_last_updated_by=>'ADITI'
,p_last_upd_yyyymmddhh24miss=>'20221214201137'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(257579443325327722)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(257579726509327725)
,p_plug_name=>'Item list'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- select --ROWID,',
'--        ITEMCODE,',
'--        ACTIVE,',
'--        GRPECODE,',
'--        COMPCODE,',
'--        OPRSTAMP,',
'--        TIMSTAMP,',
'--        STARTDTE,',
'--        ENDDATE',
'-- FROM(',
'select ROWID,',
'       a.ITEMCODE,',
'       a.ACTIVE,',
'       a.GRPECODE,',
'       a.COMPCODE,',
'       a.OPRSTAMP,',
'       a.TIMSTAMP,',
'       a.STARTDTE,',
'       a.ENDDATE,',
'       (select b.ITEMDES2 from NMITEMAS b WHERE b.ITEMCODE = a.ITEMCODE  AND b.COMPCODE=:COMPCODE) ITEMDES2',
'  from NMGRPITM a',
' where COMPCODE=:COMPCODE',
'--  UNION ALL',
'--  SELECT --ROWID,',
'--        C002 ITEMCODE,',
'--        '''' ACTIVE,',
'--        C001 GRPECODE,',
'--        '''' COMPCODE,',
'--        '''' OPRSTAMP,',
'--        SYSDATE TIMSTAMP,',
'--        SYSDATE STARTDTE,',
'--        SYSDATE ENDDATE',
'--   FROM apex_collections',
'--  WHERE collection_name = ''GROUP_ITEMS'')',
'',
'-- select seq_id,',
'--        C001 ITEMCODE,',
'--        C002 ACTIVE,',
'--        C003 GRPECODE,',
'--        C004 COMPCODE,',
'--        C005 OPRSTAMP,',
'--        C006 TIMSTAMP,',
'--        C007 STARTDTE,',
'--        C008 ENDDATE,',
'--        (select ITEMDES2 from NMITEMAS WHERE ITEMCODE = C001  AND COMPCODE=:COMPCODE) ITEMDES2',
'--        FROM apex_collections',
'--        WHERE collection_name = ''GROUP_ITEMS'''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(304549961291565571)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Item list'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(131360009752591302)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(131361470452591316)
,p_name=>'ITEMDES2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDES2'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Product Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>2000
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
 p_id=>wwv_flow_api.id(257579899576327727)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode||''-''||itemdes2 d, a.itemcode r',
' FROM nmitemas a',
'WHERE compcode = :compcode ',
'  AND statuscd = ''ACT''',
'ORDER BY itemcode'))
,p_lov_display_extra=>true
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
 p_id=>wwv_flow_api.id(257580043588327728)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Active;A,Inactive;i'
,p_lov_display_extra=>false
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
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'A'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(257580183231327729)
,p_name=>'GRPECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRPECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_api.id(257583906647327767)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(257580225104327730)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_api.id(257583665552327764)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(257580331537327731)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':APP_USER'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(257580431993327732)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'SYSDATE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(257580696502327735)
,p_name=>'STARTDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STARTDTE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
 p_id=>wwv_flow_api.id(257580800758327736)
,p_name=>'ENDDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENDDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
 p_id=>wwv_flow_api.id(257582039109327748)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'TRNMODE'
,p_display_condition2=>'M'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(257582169368327749)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(257579885147327726)
,p_internal_uid=>257579885147327726
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>515
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(257670851637942716)
,p_interactive_grid_id=>wwv_flow_api.id(257579885147327726)
,p_static_id=>'1257398'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(257671073417942717)
,p_report_id=>wwv_flow_api.id(257670851637942716)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(131934196921955178)
,p_view_id=>wwv_flow_api.id(257671073417942717)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(257582169368327749)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(131980727443023673)
,p_view_id=>wwv_flow_api.id(257671073417942717)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(131360009752591302)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(133425428470443855)
,p_view_id=>wwv_flow_api.id(257671073417942717)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(131361470452591316)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(257671533780942724)
,p_view_id=>wwv_flow_api.id(257671073417942717)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(257579899576327727)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(257672476291942732)
,p_view_id=>wwv_flow_api.id(257671073417942717)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(257580043588327728)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(257673338015942736)
,p_view_id=>wwv_flow_api.id(257671073417942717)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(257580183231327729)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(257674257236942739)
,p_view_id=>wwv_flow_api.id(257671073417942717)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(257580225104327730)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(257675130203942742)
,p_view_id=>wwv_flow_api.id(257671073417942717)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(257580331537327731)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(257676058002942744)
,p_view_id=>wwv_flow_api.id(257671073417942717)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(257580431993327732)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(257678687259942755)
,p_view_id=>wwv_flow_api.id(257671073417942717)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(257580696502327735)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(257679598729942758)
,p_view_id=>wwv_flow_api.id(257671073417942717)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(257580800758327736)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(257697947867966542)
,p_view_id=>wwv_flow_api.id(257671073417942717)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(257582039109327748)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>20
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(259867328713573334)
,p_plug_name=>'Users'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i.ROWID, i.USRIDGRP, i.GRPECODE, ',
'    (select a.USERNAME from SYUSRMAS a where USERCODE= i.USRIDGRP) USERNAME',
'    from NMUSRITM i',
'    where i.COMPCODE = :COMPCODE',
'',
'-- select seq_id,',
'--        C001 USRIDGRP,',
'--        C002 GRPECODE,',
'--        C003 USERNAME',
'--        FROM apex_collections',
'--        WHERE collection_name = ''GROUP_USERS''',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(304549961291565571)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Users'
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(131360105556591303)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(131360209159591304)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'TRNMODE'
,p_display_condition2=>'M'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(131360386916591305)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(259867698083573338)
,p_name=>'GRPECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRPECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_api.id(257583906647327767)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(259868424067573345)
,p_name=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USERNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
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
 p_id=>wwv_flow_api.id(259868496219573346)
,p_name=>'USRIDGRP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USRIDGRP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'User Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_max_length=>50
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USERCODE',
'from SYUSRMAS where DIVNCODE = :compcode'))
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(259867479628573335)
,p_internal_uid=>259867479628573335
,p_is_editable=>true
,p_edit_operations=>'d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'ACTIONS_MENU'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>515
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(259936851035956319)
,p_interactive_grid_id=>wwv_flow_api.id(259867479628573335)
,p_static_id=>'1280058'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(259937047141956319)
,p_report_id=>wwv_flow_api.id(259936851035956319)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(2099494000001)
,p_view_id=>wwv_flow_api.id(259937047141956319)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(131360386916591305)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(131981601356023678)
,p_view_id=>wwv_flow_api.id(259937047141956319)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(131360105556591303)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(131988136754043812)
,p_view_id=>wwv_flow_api.id(259937047141956319)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(131360209159591304)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259939313844956325)
,p_view_id=>wwv_flow_api.id(259937047141956319)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(259867698083573338)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259956227184050435)
,p_view_id=>wwv_flow_api.id(259937047141956319)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(259868424067573345)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259959335771056612)
,p_view_id=>wwv_flow_api.id(259937047141956319)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(259868496219573346)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(290329004794995195)
,p_plug_name=>'Control Items'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(304549961291565571)
,p_plug_name=>'GROUP_VIEW'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>3
,p_plug_display_column=>1
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID,',
'       COMPCODE,',
'       MODLCODE,',
'       NMHRDCDE,',
'       NMSOFCDE,',
'       NMCODDES,',
'       NMAMOUNT,',
'       NMMANHRS,',
'       NMRTDNON,',
'       LOCTAXFL,',
'       PRTYFLAG,',
'       NMSOFTYP,',
'       SERIALNM,',
'       MODEL_PREFIX,',
'       PRCNTFLG,',
'       DFLTTYPE,',
'       PAYMNTMOD',
'  FROM nmcodmas',
' WHERE COMPCODE = :compcode AND NMHRDCDE = ''IGP'' AND MODLCODE = ''NM'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'GROUP_VIEW'
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(257583524812327763)
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
 p_id=>wwv_flow_api.id(257583665552327764)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Compcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
 p_id=>wwv_flow_api.id(257583783021327765)
,p_name=>'MODLCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODLCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Modlcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>2
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
 p_id=>wwv_flow_api.id(257583855366327766)
,p_name=>'NMHRDCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMHRDCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nmhrdcde'
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
 p_id=>wwv_flow_api.id(257583906647327767)
,p_name=>'NMSOFCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMSOFCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Role Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_api.id(257584059589327768)
,p_name=>'NMCODDES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMCODDES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Role Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_api.id(259162656591409619)
,p_name=>'NMAMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMAMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nmamount'
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
 p_id=>wwv_flow_api.id(259162755236409620)
,p_name=>'NMMANHRS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMMANHRS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nmmanhrs'
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
 p_id=>wwv_flow_api.id(259162837611409621)
,p_name=>'NMRTDNON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMRTDNON'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nmrtdnon'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_api.id(259162889360409622)
,p_name=>'LOCTAXFL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCTAXFL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Loctaxfl'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_api.id(259163082937409623)
,p_name=>'PRTYFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRTYFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Prtyflag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_api.id(259163150657409624)
,p_name=>'NMSOFTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMSOFTYP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nmsoftyp'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_api.id(259163260995409625)
,p_name=>'SERIALNM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERIALNM'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Serialnm'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
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
 p_id=>wwv_flow_api.id(259163308074409626)
,p_name=>'MODEL_PREFIX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODEL_PREFIX'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Model Prefix'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(259163455082409627)
,p_name=>'PRCNTFLG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRCNTFLG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Prcntflg'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_api.id(259163546594409628)
,p_name=>'DFLTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DFLTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dflttype'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>2
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
 p_id=>wwv_flow_api.id(259163618214409629)
,p_name=>'PAYMNTMOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMNTMOD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Paymntmod'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
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
 p_id=>wwv_flow_api.id(259869668113573357)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'TRNMODE'
,p_display_condition2=>'M'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(259869765366573358)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(257583432211327762)
,p_internal_uid=>257583432211327762
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'ACTIONS_MENU'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>520
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'',
'config.initActions = function(actions) {',
'',
'actions.remove("row-duplicate");',
'',
'};',
'',
'return config;',
'',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(259173661001410939)
,p_interactive_grid_id=>wwv_flow_api.id(257583432211327762)
,p_static_id=>'1272426'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(259173872741410940)
,p_report_id=>wwv_flow_api.id(259173661001410939)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259174350466410944)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(257583524812327763)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259175280926410948)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(257583665552327764)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259176167692410951)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(257583783021327765)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259177079824410955)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(257583855366327766)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259177907542410958)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(257583906647327767)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259178817425410961)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(257584059589327768)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259179691719410965)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(259162656591409619)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259180496612410970)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(259162755236409620)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259181417775410974)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(259162837611409621)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259182352417410977)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(259162889360409622)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259183226582410979)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(259163082937409623)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259184151354410983)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(259163150657409624)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259185058512410986)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(259163260995409625)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259185931689410989)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(259163308074409626)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259186793780410991)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(259163455082409627)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259187734891410994)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(259163546594409628)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(259188620108410997)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(259163618214409629)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(260019153226643672)
,p_view_id=>wwv_flow_api.id(259173872741410940)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(259869668113573357)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(131944608806955140)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(257579726509327725)
,p_button_name=>'Pick_Product'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Pick Product'
,p_button_position=>'ABOVE_BOX'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(131932012658955119)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(257579443325327722)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_SAVE_LBL.'
,p_button_position=>'NEXT'
,p_button_condition=>'TRNMODE'
,p_button_condition2=>'M'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(131931664966955119)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(257579443325327722)
,p_button_name=>'Cancel_1'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(131975526547955162)
,p_branch_name=>'go to same'
,p_branch_action=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.:134::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(131938428259955133)
,p_name=>'P138_COMPCODE'
,p_item_sequence=>10
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(131945014761955140)
,p_name=>'P138_NEW_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(257579726509327725)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(131972630671955161)
,p_name=>'hide show'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_GROUPTYP'
,p_condition_element=>'P138_GROUPTYP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131973605624955162)
,p_event_id=>wwv_flow_api.id(131972630671955161)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(304549961291565571)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131973186443955161)
,p_event_id=>wwv_flow_api.id(131972630671955161)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(304549961291565571)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(131967519485955159)
,p_name=>'Close'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(131931664966955119)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131968576963955160)
,p_event_id=>wwv_flow_api.id(131967519485955159)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF apex_collection.collection_exists (''GROUP_ITEMS'') = TRUE then',
'    APEX_COLLECTION.DELETE_COLLECTION (p_collection_name => ''GROUP_ITEMS'');',
'end if;',
'IF apex_collection.collection_exists (''GROUP_USERS'') = TRUE then',
'    APEX_COLLECTION.DELETE_COLLECTION (p_collection_name => ''GROUP_USERS'');',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131968042743955159)
,p_event_id=>wwv_flow_api.id(131967519485955159)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(131959306545955155)
,p_name=>'REFRESH'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_GROUP_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131959865728955156)
,p_event_id=>wwv_flow_api.id(131959306545955155)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(257579726509327725)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131960352572955156)
,p_event_id=>wwv_flow_api.id(131959306545955155)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_COMPCODE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(131960701798955156)
,p_name=>'New'
,p_event_sequence=>110
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(257579726509327725)
,p_triggering_element=>'ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131961764809955157)
,p_event_id=>wwv_flow_api.id(131960701798955156)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'GRPECODE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>':GRPECODE := :P138_GROUP_CODE;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131961272377955157)
,p_event_id=>wwv_flow_api.id(131960701798955156)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'GRPECODE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(131963089704955157)
,p_name=>'New'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_COMPCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131963558645955158)
,p_event_id=>wwv_flow_api.id(131963089704955157)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(257579726509327725)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(131974081148955162)
,p_name=>'Selected Role'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(304549961291565571)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131974523834955162)
,p_event_id=>wwv_flow_api.id(131974081148955162)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// var user',
'// model = this.data.model;',
'// if(this.data !=null){',
'//     if(this.data.selectedRecords[0]!=null){',
'//         user = model.getValue(this.data.selectedRecords[0]."NMSOFCDE")+" "+ model.getValue(this.data.selectedRecords[0],"NMCODDES");',
'',
'//     }',
'// }',
'// apex.item("P138_NEW").setValue(user);',
'',
'',
'var i, i_role,',
'',
'model = this.data.model;',
'',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'    ',
'    i_role = model.getValue( this.data.selectedRecords[i], "NMSOFCDE");',
'    ',
'}',
'',
'apex.item( "P138_NEW_1" ).setValue (i_role);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131975055679955162)
,p_event_id=>wwv_flow_api.id(131974081148955162)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_COMPCODE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(131957961323955153)
,p_name=>'New_3'
,p_event_sequence=>140
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(259867328713573334)
,p_triggering_element=>'USRIDGRP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131958950526955155)
,p_event_id=>wwv_flow_api.id(131957961323955153)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'select USERNAME into :USERNAME from SYUSRMAS where USERCODE = :USRIDGRP;'
,p_attribute_02=>'USRIDGRP'
,p_attribute_03=>'USERNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131958482704955153)
,p_event_id=>wwv_flow_api.id(131957961323955153)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'USERNAME'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(131964862756955158)
,p_name=>'New_5'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_bind_event_type=>'apexbeforepagesubmit'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131965394726955158)
,p_event_id=>wwv_flow_api.id(131964862756955158)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>'$v(''ENDDATE'')<$v(''STARTDATE'')'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(131361282265591314)
,p_name=>'Remove IG Buttons'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131361390814591315)
,p_event_id=>wwv_flow_api.id(131361282265591314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''[data-action="edit"]'').hide();',
'$(''[data-action="selection-add-row"]'').hide();',
'$(''[data-action="save"]'').hide();'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(131955549592955151)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GROUP ITEM COLLECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF NOT apex_collection.collection_exists (''GROUP_ITEMS'') = TRUE',
'   THEN',
'      BEGIN',
'         APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B (',
'            p_collection_name   => ''GROUP_ITEMS'',',
'            p_query             =>    ''select ',
'                                        ITEMCODE,',
'                                        ACTIVE,',
'                                        GRPECODE,',
'                                        COMPCODE,',
'                                        OPRSTAMP,',
'                                        TIMSTAMP,',
'                                        STARTDTE,',
'                                        ENDDATE',
'                                        ',
'                                    from NMGRPITM',
'                                 WHERE     COMPCODE = '''''' || :COMPCODE || ''''''',
'            '');',
'      END;',
'   END IF;',
'END;',
'',
'-- BEGIN',
'--    IF NOT apex_collection.collection_exists (''GROUP_USERS'') = TRUE',
'--    THEN',
'--       BEGIN',
'--          APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B (',
'--             p_collection_name   => ''GROUP_USERS'',',
'--             p_query             =>    ''select ',
'--                                         i.USRIDGRP,',
'--                                         i.GRPECODE,',
'--                                         (select a.USERNAME from SYUSRMAS a where USERCODE= i.USRIDGRP) USERNAME',
'--                                     from NMUSRITM i',
'--                                  WHERE     i.COMPCODE = '''''' || :COMPCODE || ''''''',
'--             '');',
'--       END;',
'--    END IF;',
'-- END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(131955933306955152)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GROUP USER COLLECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF NOT apex_collection.collection_exists (''GROUP_USERS'') = TRUE',
'   THEN',
'      BEGIN',
'         APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B (',
'            p_collection_name   => ''GROUP_USERS'',',
'            p_query             =>    ''select ',
'                                        i.USRIDGRP,',
'                                        i.GRPECODE,',
'                                        (select a.USERNAME from SYUSRMAS a where USERCODE= i.USRIDGRP) USERNAME',
'                                    from NMUSRITM i',
'                                 WHERE     i.COMPCODE = '''''' || :COMPCODE || ''''''',
'            '');',
'      END;',
'   END IF;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(131954492010955149)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(304549961291565571)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Role | Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_ITEMCODE number;',
'    v_USRIDGRP number;',
'    v_NMSOFCDE number;',
'begin',
'    select count(ITEMCODE) into v_ITEMCODE from NMGRPITM',
'    where COMPCODE = :COMPCODE and GRPECODE = :P138_NEW_1;',
'',
'    select count(USRIDGRP) into v_USRIDGRP from NMUSRITM',
'    where COMPCODE = :COMPCODE and GRPECODE = :P138_NEW_1;',
'',
'    select count(NMSOFCDE) into v_NMSOFCDE from nmcodmas ',
'    where compcode = :P138_COMPCODE and NMSOFCDE = :NMSOFCDE AND NMHRDCDE = ''IGP'' AND MODLCODE = ''NM'';',
'',
'    if :NMSOFCDE is not null then',
'        case :APEX$ROW_STATUS  ',
'        when ''U'' then ',
'            ',
'            if v_ITEMCODE = 0 and v_USRIDGRP = 0 then',
'                update nmcodmas set',
'                    NMSOFCDE = upper(:NMSOFCDE),',
'                    NMCODDES = :NMCODDES',
'                    where COMPCODE = :COMPCODE',
'                    and ROWID = :ROWID',
'                    and NMHRDCDE = ''IGP'' ',
'                    and MODLCODE = ''NM'';',
'            else ',
'                if length(:NMSOFCDE) < 3 then',
'                    raise_application_error(-20002, ''Role Code must be 3 characters.''); ',
'                else',
'                    if v_NMSOFCDE = 0 then',
'                        update nmcodmas set',
'                        NMCODDES = :NMCODDES',
'                        where COMPCODE = :COMPCODE',
'                        and ROWID = :ROWID',
'                        and NMHRDCDE = ''IGP'' ',
'                        and MODLCODE = ''NM'';',
'                    else',
'                        raise_application_error(-20002, ''PLease enter an unique role code.''); ',
'                    end if;',
'                end if;',
'            end if;',
'        end case;',
'    ',
'    end if;',
'    EXCEPTION ',
'        WHEN no_data_found THEN ',
'            raise_application_error(-20002, ''No data found in role''); ',
'        -- when others then',
'        --     raise_application_error(-20002, ''Unable to update Role'');',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(131932012658955119)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(131945430198955141)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(257579726509327725)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Modify Item List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin  ',
'    case :APEX$ROW_STATUS  ',
'        when ''U'' then ',
'            if TO_DATE(:STARTDTE,''DD-MM-YYYY'') > TO_DATE(:ENDDATE,''DD-MM-YYYY'') then',
'                raise_application_error(-20001, ''Start date must be less than end date.'');',
'            else',
'                update NMGRPITM set',
'                    STARTDTE = :STARTDTE,',
'                    ENDDATE = :ENDDATE',
'                    where COMPCODE = :COMPCODE',
'                    and ITEMCODE = :ITEMCODE',
'                    and GRPECODE = :P138_NEW_1;',
'            end if;',
'        when ''D'' then ',
'            delete from NMGRPITM where ITEMCODE = :ITEMCODE and COMPCODE = :COMPCODE and GRPECODE = :P138_NEW_1;',
'    end case;  ',
'',
'end;  '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(131932012658955119)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(131360553751591307)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(259867328713573334)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Modify User List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin  ',
'     case :APEX$ROW_STATUS  ',
'     when ''D'' then',
'    delete from NMUSRITM where USRIDGRP = :USRIDGRP and COMPCODE = :COMPCODE and GRPECODE = :P138_NEW_1;',
'end case;  ',
'end;  '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(131932012658955119)
);
wwv_flow_api.component_end;
end;
/
