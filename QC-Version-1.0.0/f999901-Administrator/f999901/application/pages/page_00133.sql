prompt --application/pages/page_00133
begin
--   Manifest
--     PAGE: 00133
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
 p_id=>133
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Product Security : Group Create'
,p_alias=>'PRODUCT-SECURITY-GROUP-CREATE'
,p_page_mode=>'MODAL'
,p_step_title=>'Product Security : Group Create'
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
,p_last_upd_yyyymmddhh24miss=>'20221214201331'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109433422783699547)
,p_plug_name=>'Product Security'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109433517650699548)
,p_plug_name=>'Role'
,p_parent_plug_id=>wwv_flow_api.id(109433422783699547)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(158397918830040077)
,p_plug_name=>'Control Items'
,p_parent_plug_id=>wwv_flow_api.id(109433517650699548)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109433601623699549)
,p_plug_name=>'Product Assign'
,p_parent_plug_id=>wwv_flow_api.id(109433422783699547)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(125648458910372605)
,p_plug_name=>'Control Items'
,p_parent_plug_id=>wwv_flow_api.id(109433601623699549)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(125648236367372603)
,p_plug_name=>'User Assign'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(125648357360372604)
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
 p_id=>wwv_flow_api.id(125648640544372607)
,p_plug_name=>'Item list'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>20
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
'-- select --ROWID,',
'--        ITEMCODE,',
'--        ACTIVE,',
'--        GRPECODE,',
'--        COMPCODE,',
'--        OPRSTAMP,',
'--        TIMSTAMP,',
'--        STARTDTE,',
'--        ENDDATE',
'--   from NMGRPITM',
'--  where COMPCODE=:COMPCODE',
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
'select seq_id,',
'       C001 ITEMCODE,',
'       C002 ACTIVE,',
'       C003 GRPECODE,',
'       C004 COMPCODE,',
'       C005 OPRSTAMP,',
'       C006 TIMSTAMP,',
'       C007 STARTDTE,',
'       C008 ENDDATE,',
'       (select ITEMDES2 from NMITEMAS WHERE ITEMCODE = C001  AND COMPCODE=:COMPCODE) ITEMDES2',
'       FROM apex_collections',
'       WHERE collection_name = ''GROUP_ITEMS'''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(172618875326610453)
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
 p_id=>wwv_flow_api.id(125648813611372609)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Product'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(125648957623372610)
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
,p_lov_source=>'STATIC:Active;A,Inactive;I'
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
,p_default_type=>'STATIC'
,p_default_expression=>'A'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125649097266372611)
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
,p_parent_column_id=>wwv_flow_api.id(125652820682372649)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125649139139372612)
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
,p_parent_column_id=>wwv_flow_api.id(125652579587372646)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125649245572372613)
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
 p_id=>wwv_flow_api.id(125649346028372614)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(125649610537372617)
,p_name=>'STARTDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STARTDTE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(125649714793372618)
,p_name=>'ENDDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENDDATE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(125650953144372630)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125651083403372631)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(129146872387179004)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(129789732460430740)
,p_name=>'ITEMDES2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDES2'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Product Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
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
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(125648799182372608)
,p_internal_uid=>125648799182372608
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
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>425
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(125739765672987598)
,p_interactive_grid_id=>wwv_flow_api.id(125648799182372608)
,p_static_id=>'1257398'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(125739987452987599)
,p_report_id=>wwv_flow_api.id(125739765672987598)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3110957000060)
,p_view_id=>wwv_flow_api.id(125739987452987599)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(125651083403372631)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125740447815987606)
,p_view_id=>wwv_flow_api.id(125739987452987599)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(125648813611372609)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125741390326987614)
,p_view_id=>wwv_flow_api.id(125739987452987599)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(125648957623372610)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125742252050987618)
,p_view_id=>wwv_flow_api.id(125739987452987599)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(125649097266372611)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125743171271987621)
,p_view_id=>wwv_flow_api.id(125739987452987599)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(125649139139372612)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125744044238987624)
,p_view_id=>wwv_flow_api.id(125739987452987599)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(125649245572372613)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125744972037987626)
,p_view_id=>wwv_flow_api.id(125739987452987599)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(125649346028372614)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125747601294987637)
,p_view_id=>wwv_flow_api.id(125739987452987599)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(125649610537372617)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125748512764987640)
,p_view_id=>wwv_flow_api.id(125739987452987599)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(125649714793372618)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125766861903011424)
,p_view_id=>wwv_flow_api.id(125739987452987599)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(125650953144372630)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(129183189440473248)
,p_view_id=>wwv_flow_api.id(125739987452987599)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(129146872387179004)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(130982816940608481)
,p_view_id=>wwv_flow_api.id(125739987452987599)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(129789732460430740)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127936242748618216)
,p_plug_name=>'Users'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- select i.ROWID, i.USRIDGRP, i.GRPECODE, ',
'--     (select a.USERNAME from SYUSRMAS a where USERCODE= i.USRIDGRP) USERNAME',
'--     from NMUSRITM i',
'--     where i.COMPCODE = :COMPCODE',
'',
'select seq_id,',
'       C001 USRIDGRP,',
'       C002 GRPECODE,',
'       C003 USERNAME',
'       FROM apex_collections',
'       WHERE collection_name = ''GROUP_USERS''',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(172618875326610453)
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
 p_id=>wwv_flow_api.id(127936612118618220)
,p_name=>'GRPECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRPECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_api.id(125652820682372649)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(127937338102618227)
,p_name=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USERNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Username'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(127937410254618228)
,p_name=>'USRIDGRP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USRIDGRP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'User Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(129147366925179009)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(127936393663618217)
,p_internal_uid=>127936393663618217
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:ACTIONS_MENU'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>425
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(128005765071001201)
,p_interactive_grid_id=>wwv_flow_api.id(127936393663618217)
,p_static_id=>'1280058'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(128005961177001201)
,p_report_id=>wwv_flow_api.id(128005765071001201)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(128008227880001207)
,p_view_id=>wwv_flow_api.id(128005961177001201)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(127936612118618220)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(128025141219095317)
,p_view_id=>wwv_flow_api.id(128005961177001201)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(127937338102618227)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>230
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(128028249806101494)
,p_view_id=>wwv_flow_api.id(128005961177001201)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(127937410254618228)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
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
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(129720317205786953)
,p_view_id=>wwv_flow_api.id(128005961177001201)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(129147366925179009)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(172618875326610453)
,p_plug_name=>'GROUP_VIEW'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(125652438847372645)
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
 p_id=>wwv_flow_api.id(125652579587372646)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Compcode'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(125652697056372647)
,p_name=>'MODLCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODLCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Modlcode'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(125652769401372648)
,p_name=>'NMHRDCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMHRDCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nmhrdcde'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(125652820682372649)
,p_name=>'NMSOFCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMSOFCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Role Code'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(125652973624372650)
,p_name=>'NMCODDES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMCODDES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Role Description'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(127231570626454501)
,p_name=>'NMAMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMAMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nmamount'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(127231669271454502)
,p_name=>'NMMANHRS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMMANHRS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nmmanhrs'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(127231751646454503)
,p_name=>'NMRTDNON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMRTDNON'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nmrtdnon'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(127231803395454504)
,p_name=>'LOCTAXFL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCTAXFL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Loctaxfl'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(127231996972454505)
,p_name=>'PRTYFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRTYFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Prtyflag'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(127232064692454506)
,p_name=>'NMSOFTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMSOFTYP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nmsoftyp'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(127232175030454507)
,p_name=>'SERIALNM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERIALNM'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Serialnm'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(127232222109454508)
,p_name=>'MODEL_PREFIX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODEL_PREFIX'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Model Prefix'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(127232369117454509)
,p_name=>'PRCNTFLG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRCNTFLG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Prcntflg'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(127232460629454510)
,p_name=>'DFLTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DFLTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dflttype'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(127232532249454511)
,p_name=>'PAYMNTMOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMNTMOD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Paymntmod'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(127938582148618239)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(127938679401618240)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(125652346246372644)
,p_internal_uid=>125652346246372644
,p_is_editable=>true
,p_edit_operations=>'i'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:ACTIONS_MENU'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>455
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'',
'config.initActions = function(actions) {',
'',
'actions.remove("row-duplicate");',
'',
'',
'};',
'',
'return config;',
'',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(127242575036455821)
,p_interactive_grid_id=>wwv_flow_api.id(125652346246372644)
,p_static_id=>'1272426'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(127242786776455822)
,p_report_id=>wwv_flow_api.id(127242575036455821)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127243264501455826)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(125652438847372645)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127244194961455830)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(125652579587372646)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127245081727455833)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(125652697056372647)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127245993859455837)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(125652769401372648)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127246821577455840)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(125652820682372649)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127247731460455843)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(125652973624372650)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127248605754455847)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(127231570626454501)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127249410647455852)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(127231669271454502)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127250331810455856)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(127231751646454503)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127251266452455859)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(127231803395454504)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127252140617455861)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(127231996972454505)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127253065389455865)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(127232064692454506)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127253972547455868)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(127232175030454507)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127254845724455871)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(127232222109454508)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127255707815455873)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(127232369117454509)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127256648926455876)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(127232460629454510)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(127257534143455879)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(127232532249454511)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(128088067261688554)
,p_view_id=>wwv_flow_api.id(127242786776455822)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(127938582148618239)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(125651759137372638)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(125648357360372604)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_SBMT_LBL.'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'&BTN_SBMT_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(109433717317699550)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(125648357360372604)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127938430552618238)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(125648640544372607)
,p_button_name=>'Pick_Product'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Pick Product'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(129146982939179005)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(127936242748618216)
,p_button_name=>'Pick_User'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Pick User'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(129788987223430732)
,p_branch_name=>'new'
,p_branch_action=>'f?p=&APP_ID.:134:&SESSION.::&DEBUG.::P134_GROUP:&P133_NEW_1.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(127938430552618238)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(125558062095424740)
,p_branch_name=>'go to same'
,p_branch_action=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.:134::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(127939059863618244)
,p_branch_name=>'Pick Product'
,p_branch_action=>'f?p=&APP_ID.:134:&SESSION.::&DEBUG.::P134_GROUP:&P133_NEW_1.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(127938430552618238)
,p_branch_sequence=>40
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(129147038379179006)
,p_branch_name=>'Pick User'
,p_branch_action=>'f?p=&APP_ID.:137:&SESSION.::&DEBUG.::P137_GROUP:&P133_NEW_1.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(129146982939179005)
,p_branch_sequence=>50
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125648542151372606)
,p_name=>'P133_GROUP_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(125648458910372605)
,p_prompt=>'Group'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NMSOFCDE||'' - ''||NMCODDES, NMSOFCDE',
'  FROM nmcodmas',
' WHERE COMPCODE = :compcode AND NMHRDCDE = ''IGP'' AND MODLCODE = ''NM'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125651908947372640)
,p_name=>'P133_COMCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(125648458910372605)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127234683690454532)
,p_name=>'P133_NEW_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(125648640544372607)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127235473531454540)
,p_name=>'P133_SHUTTLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(125648236367372603)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.USERCODE',
'from SYUSRMAS m, NMUSRITM i',
'where m.USERCODE = i.USRIDGRP',
' and ',
'm.DIVNCODE = :COMPCODE',
'and i.GRPECODE = :P133_NEW_1',
'',
'-- select i.USRIDGRP',
'-- from NMUSRITM i',
'-- where i.COMPCODE = :COMPCODE',
'-- and i.GRPECODE = :P133_NEW_1'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.USERCODE||'' - ''||m.USERNAME ,m.USERCODE',
'from SYUSRMAS m--, NMUSRITM i',
'where --m.USERCODE <> i.USRIDGRP',
'--  and ',
'm.DIVNCODE = :COMPCODE',
'--and i.GRPECODE <> :P133_NEW_1'))
,p_lov_cascade_parent_items=>'P133_NEW_1'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127939445816618248)
,p_name=>'P133_COMPCODE'
,p_item_sequence=>50
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(127235526272454541)
,p_computation_sequence=>20
,p_computation_item=>'P133_SHUTTLE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- select m.USERCODE',
'-- from SYUSRMAS m, NMUSRITM i',
'-- where m.USERCODE = i.USRIDGRP',
'-- and m.DIVNCODE = :COMPCODE',
'-- and i.GRPECODE = :P133_NEW_1',
'',
'select i.USRIDGRP',
'from NMUSRITM i',
'where --m.USERCODE = i.USRIDGRP',
' --and ',
'--m.DIVNCODE = :COMPCODE and',
' i.GRPECODE = :P133_NEW_1'))
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(125555525598424732)
,p_name=>'hide show'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P133_GROUPTYP'
,p_condition_element=>'P133_GROUPTYP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125557598340424739)
,p_event_id=>wwv_flow_api.id(125555525598424732)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(172618875326610453)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125556529590424737)
,p_event_id=>wwv_flow_api.id(125555525598424732)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(172618875326610453)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(125648091516372601)
,p_name=>'Close'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(109433717317699550)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(129787774733430720)
,p_event_id=>wwv_flow_api.id(125648091516372601)
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
 p_id=>wwv_flow_api.id(125648162903372602)
,p_event_id=>wwv_flow_api.id(125648091516372601)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(125650445341372625)
,p_name=>'REFRESH'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P133_GROUP_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125650504019372626)
,p_event_id=>wwv_flow_api.id(125650445341372625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(125648640544372607)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125651476298372635)
,p_event_id=>wwv_flow_api.id(125650445341372625)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P133_COMPCODE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(125651522729372636)
,p_name=>'New'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P133_COMPCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125651679304372637)
,p_event_id=>wwv_flow_api.id(125651522729372636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(125648640544372607)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(125652029040372641)
,p_name=>'New'
,p_event_sequence=>110
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(125648640544372607)
,p_triggering_element=>'ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125652294835372643)
,p_event_id=>wwv_flow_api.id(125652029040372641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'GRPECODE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>':GRPECODE := :P133_GROUP_CODE;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125652126985372642)
,p_event_id=>wwv_flow_api.id(125652029040372641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'GRPECODE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(127234351264454529)
,p_name=>'Selected Role'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(172618875326610453)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127234443509454530)
,p_event_id=>wwv_flow_api.id(127234351264454529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i, i_role,',
'',
'model = this.data.model;',
'',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'    ',
'    i_role = model.getValue( this.data.selectedRecords[i], "NMSOFCDE");',
'    ',
'}',
'apex.item( "P133_NEW_1" ).setValue (i_role);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127234542268454531)
,p_event_id=>wwv_flow_api.id(127234351264454529)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P133_COMPCODE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(127938089717618234)
,p_name=>'New_3'
,p_event_sequence=>140
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(127936242748618216)
,p_triggering_element=>'USRIDGRP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127938165433618235)
,p_event_id=>wwv_flow_api.id(127938089717618234)
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
 p_id=>wwv_flow_api.id(127938223081618236)
,p_event_id=>wwv_flow_api.id(127938089717618234)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'USERNAME'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(129790755824430750)
,p_name=>'New_5'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_bind_event_type=>'apexbeforepagesubmit'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131359998786591301)
,p_event_id=>wwv_flow_api.id(129790755824430750)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>'$v(''ENDDATE'')<$v(''STARTDATE'')'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(131360832943591310)
,p_name=>'Remove IG Buttons'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131360953427591311)
,p_event_id=>wwv_flow_api.id(131360832943591310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''[data-action="edit"]'').hide();',
'$(''[data-action="selection-add-row"]'').hide();'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(129146756049179003)
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
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(129147942404179015)
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
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(127939167763618245)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(172618875326610453)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Role | Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_NMSOFCDE number;',
'begin',
'    select count(NMSOFCDE) into v_NMSOFCDE from nmcodmas where compcode = :P133_COMPCODE and NMSOFCDE = :NMSOFCDE AND NMHRDCDE = ''IGP'' AND MODLCODE = ''NM'';',
'    if :NMSOFCDE is not null then',
'        if length(:NMSOFCDE) < 3 then',
'            raise_application_error(-20002, ''Role Code must be 3 characters.''); ',
'        else',
'        --raise_application_error(-20002, v_NMSOFCDE||'' ''||:P133_COMPCODE); ',
'            if v_NMSOFCDE = 0 then',
'                 insert into nmcodmas (COMPCODE,',
'                                MODLCODE,',
'                                NMHRDCDE,',
'                                NMSOFCDE,',
'                                NMCODDES,',
'                                NMAMOUNT,',
'                                NMMANHRS,',
'                                NMRTDNON,',
'                                LOCTAXFL,',
'                                PRTYFLAG,',
'                                NMSOFTYP,',
'                                SERIALNM,',
'                                MODEL_PREFIX,',
'                                PRCNTFLG,',
'                                DFLTTYPE,',
'                                PAYMNTMOD) values ',
'                                (:P133_COMPCODE,',
'                                ''NM'',',
'                                ''IGP'',',
'                                upper(:NMSOFCDE),',
'                                :NMCODDES,',
'                                :NMAMOUNT,',
'                                :NMMANHRS,',
'                                :NMRTDNON,',
'                                :LOCTAXFL,',
'                                :PRTYFLAG,',
'                                :NMSOFTYP,',
'                                :SERIALNM,',
'                                :MODEL_PREFIX,',
'                                :PRCNTFLG,',
'                                :DFLTTYPE,',
'                                :PAYMNTMOD);',
'        else',
'            raise_application_error(-20001, ''PLease enter an unique role code.'');',
'        end if;',
'    end if;',
'    else',
'        raise_application_error(-20002, ''Please enter role''); ',
'    ',
'    end if;',
'    EXCEPTION ',
'        WHEN no_data_found THEN ',
'            raise_application_error(-20002, ''No data found in role''); ',
'        -- when others then',
'        --     raise_application_error(-20002, ''Unable to insert Role'');',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(125651759137372638)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(129790623856430749)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(125648640544372607)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New_2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin  ',
'     case :APEX$ROW_STATUS  ',
'     when ''U'' then ',
'    -- APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'    -- p_collection_name IN VARCHAR2,',
'    -- p_seq IN VARCHAR2,',
'    -- p_attr_number IN NUMBER,',
'    -- p_number_value  IN DATE);',
'    ',
'    if TO_DATE(:STARTDTE,''DD-MM-YYYY'') > TO_DATE(:ENDDATE,''DD-MM-YYYY'') then',
'            raise_application_error(-20001, ''Start date must be less than end date.'');',
'    else',
'',
'        APEX_COLLECTION.UPDATE_MEMBER (',
'        p_collection_name => ''GROUP_ITEMS'',',
'        p_seq => :SEQ_ID,',
'        p_C001 => :ITEMCODE,',
'        p_C002 => :ACTIVE,',
'        p_C003 => :GRPECODE,',
'        p_C004 => :COMPCODE,',
'        p_C005 => :OPRSTAMP,',
'        p_C006 => :TIMSTAMP,',
'        p_c007 => :STARTDTE,',
'        p_c008 => :ENDDATE);',
'',
'        update NMGRPITM set',
'                    STARTDTE = :STARTDTE,',
'                    ENDDATE = :ENDDATE',
'                    where COMPCODE = :COMPCODE',
'                    and ITEMCODE = :ITEMCODE',
'                    and GRPECODE = :P133_NEW_1;',
'        COMMIT;',
'    end if;',
'end case;  ',
'end;  '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(125651759137372638)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(127939640645618250)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Product | Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ITEMCODE number;',
'begin',
'    for i in (select --seq_id,',
'                C001 ITEMCODE,',
'                C002 ACTIVE,',
'                C003 GRPECODE,',
'                C004 COMPCODE,',
'                C005 OPRSTAMP,',
'                C006 TIMSTAMP,',
'                C007 STARTDTE,',
'                C008 ENDDATE',
'                FROM apex_collections',
'                WHERE collection_name = ''GROUP_ITEMS''',
'           )',
'    loop',
'        ',
'        select count(ITEMCODE) into V_ITEMCODE from NMGRPITM',
'        where   ITEMCODE = i.ITEMCODE ',
'        and COMPCODE = :COMPCODE',
'        and GRPECODE = i.GRPECODE;',
'',
'        if V_ITEMCODE = 0 then',
'            insert into NMGRPITM (COMPCODE, ',
'                                ITEMCODE, ',
'                                ACTIVE, ',
'                                GRPECODE, ',
'                                OPRSTAMP, ',
'                                TIMSTAMP, ',
'                                STARTDTE, ',
'                                ENDDATE) values ',
'                                (:P133_COMPCODE,',
'                                i.ITEMCODE,',
'                                ''A'',',
'                                i.GRPECODE,',
'                                :APP_USER,',
'                                SYSDATE,',
'                                i.STARTDTE,',
'                                i.ENDDATE);',
'        ',
'        end if;',
'    end loop;',
'    EXCEPTION ',
'        WHEN no_data_found THEN ',
'            raise_application_error(-20002, ''No data found in role''); ',
'        when others then',
'            raise_application_error(-20002, ''Unable to insert Role'');',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(125651759137372638)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(129787311343430716)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'User | Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_USRIDGRP number;',
'begin',
'    for i in (select --seq_id,',
'                C001 USRIDGRP,',
'                C002 GRPECODE,',
'                C003 USERNAME',
'                FROM apex_collections',
'                WHERE collection_name = ''GROUP_USERS''',
'           )',
'    loop',
'',
'    select count(USRIDGRP) into V_USRIDGRP from NMUSRITM',
'        where   USRIDGRP = i.USRIDGRP ',
'        and COMPCODE = :COMPCODE',
'        and GRPECODE = i.GRPECODE;',
'',
'        if V_USRIDGRP = 0 then',
'',
'            insert into NMUSRITM (COMPCODE, ',
'                                USRIDGRP,',
'                                GRPECODE, ',
'                                OPRSTAMP, ',
'                                TIMSTAMP) values ',
'                                (:P133_COMPCODE,',
'                                i.USRIDGRP,',
'                                i.GRPECODE,',
'                                :APP_USER,',
'                                SYSDATE);',
'    ',
'        end if;',
'    end loop;',
'    EXCEPTION ',
'        WHEN no_data_found THEN ',
'            raise_application_error(-20002, ''No data found in role''); ',
'        when others then',
'            raise_application_error(-20002, ''Unable to insert Role'');',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(125651759137372638)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(129787653891430719)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.DELETE_COLLECTION (p_collection_name => ''GROUP_ITEMS'');',
'APEX_COLLECTION.DELETE_COLLECTION (p_collection_name => ''GROUP_USERS'');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(125651759137372638)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(129788831490430731)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P133_NEW_1 is null then',
'    raise_application_error(-20001, ''Please Select a Role..'');',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(127938430552618238)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(129789315404430736)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P133_NEW_1 is null then',
'    raise_application_error(-20001, ''Please Select a Role..'');',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(129146982939179005)
);
wwv_flow_api.component_end;
end;
/
