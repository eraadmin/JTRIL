prompt --application/pages/page_99990_017
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
 p_id=>99990117
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Product Security : Item Assign to Group'
,p_alias=>'PRODUCT-SECURITY-ITEM-ASSIGN-TO-GROUP1'
,p_page_mode=>'MODAL'
,p_step_title=>'Product Security : Item Assign to Group'
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
'}'))
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220616085042'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(83600164710816336)
,p_plug_name=>'wizard progress'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:margin-top-lg:margin-bottom-lg'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(1582253198556857860)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_api.id(34445990889603605)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1582271165273857916)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35358629600948802)
,p_plug_name=>'Item list'
,p_parent_plug_id=>wwv_flow_api.id(83600164710816336)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'NMGRPITM'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'COMPCODE=:COMPCODE',
'AND GRPECODE=:P99990117_GROUPCODE'))
,p_include_rowid_column=>true
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P99990117_GROUPCODE'
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
 p_id=>wwv_flow_api.id(35358811513948804)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'400'
,p_is_required=>true
,p_max_length=>40
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode||''-''||itemdes2 d, a.itemcode r',
' FROM nmitemas a',
'WHERE compcode = :compcode ',
'  AND statuscd = ''ACT''',
'ORDER BY itemcode'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'<-- Select Product -->'
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
 p_id=>wwv_flow_api.id(35358951713948805)
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
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Active;A,Inactive;i'
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
 p_id=>wwv_flow_api.id(35359061303948806)
,p_name=>'GRPECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRPECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Grpecode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':P99990117_GROUPCODE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(35359115061948807)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Compcode'
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':P99990117_COMPCODE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(35359226149948808)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Oprstamp'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':APP_USER'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(35359334411948809)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Timstamp'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'SYSDATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(35359433341948810)
,p_name=>'BRANDCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRANDCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Brandcde'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_api.id(35359519783948811)
,p_name=>'MODLCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODLCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Modlcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>false
,p_max_length=>30
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT NMCODDES as d, NMSOFCDE as r',
'    FROM NMCODMAS',
'   WHERE     COMPCODE = :COMPCODE',
'         AND MODLCODE = ''NM''',
'         AND NMHRDCDE = ''MOD''',
'ORDER BY NMSOFCDE'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'<-- Select Model -->'
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
 p_id=>wwv_flow_api.id(35359630261948812)
,p_name=>'STARTDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STARTDTE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Startdte'
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
 p_id=>wwv_flow_api.id(35359702886948813)
,p_name=>'ENDDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENDDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Enddate'
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
 p_id=>wwv_flow_api.id(35359834114948814)
,p_name=>'USRIDGRP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USRIDGRP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Usridgrp'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'350'
,p_is_required=>false
,p_max_length=>50
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT USERNAME||''-''||USERCODE AS DIS, USERCODE AS RET ',
'FROM SYUSRMAS ',
'WHERE DIVNCODE=:COMPCODE',
'ORDER BY 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'<-- Select User -- >'
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
 p_id=>wwv_flow_api.id(35359991967948815)
,p_name=>'MINDISPCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MINDISPCT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mindispct'
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
 p_id=>wwv_flow_api.id(35360045979948816)
,p_name=>'MINDISAMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MINDISAMT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mindisamt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
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
 p_id=>wwv_flow_api.id(35360104147948817)
,p_name=>'MAXDISPCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAXDISPCT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Maxdispct'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
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
 p_id=>wwv_flow_api.id(35360239250948818)
,p_name=>'MAXDISAMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAXDISAMT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Maxdisamt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
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
 p_id=>wwv_flow_api.id(35360315195948819)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Modifydt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
 p_id=>wwv_flow_api.id(35360422962948820)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(35360526213948821)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(35360657913948822)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(35358713652948803)
,p_internal_uid=>35358713652948803
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
 p_id=>wwv_flow_api.id(35478992392782089)
,p_interactive_grid_id=>wwv_flow_api.id(35358713652948803)
,p_static_id=>'354790'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(35479128106782089)
,p_report_id=>wwv_flow_api.id(35478992392782089)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35479600378782091)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(35358811513948804)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>160
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35480535428782093)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(35358951713948805)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35481408061782097)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(35359061303948806)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35482369184782099)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(35359115061948807)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35483260756782102)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(35359226149948808)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35484111526782105)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(35359334411948809)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35485077665782109)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(35359433341948810)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35485981510782112)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(35359519783948811)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35486876431782114)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(35359630261948812)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35487783520782118)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(35359702886948813)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35488631200782120)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(35359834114948814)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35489591108782123)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(35359991967948815)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35490476899782126)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(35360045979948816)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35491309149782128)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(35360104147948817)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35492243006782132)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(35360239250948818)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35493156655782135)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(35360315195948819)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35493962516782137)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(35360422962948820)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35495739925783055)
,p_view_id=>wwv_flow_api.id(35479128106782089)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(35360526213948821)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>41
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67728132681551921)
,p_plug_name=>'Control Items'
,p_parent_plug_id=>wwv_flow_api.id(83600164710816336)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:margin-top-sm'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34851141699936492)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(83600164710816336)
,p_button_name=>'Previous'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Previous'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:99990116:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35362669475948842)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(83600164710816336)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34851589806936492)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(83600164710816336)
,p_button_name=>'NEXT'
,p_button_static_id=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:99990118:&SESSION.::&DEBUG.::P99990118_GROUPCOD:&P99990117_GROUPCODE.'
,p_icon_css_classes=>'fa-arrow-right-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34852200685936493)
,p_name=>'P99990117_GROUPNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(67728132681551921)
,p_prompt=>'Group Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="true"'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34908274904950905)
,p_name=>'P99990117_GROUPCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(67728132681551921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35360959416948825)
,p_name=>'P99990117_COMPCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(67728132681551921)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34879682510936517)
,p_name=>'SET DBCR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990117_DOCTTYPE,P99990117_SUBTTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34880107958936518)
,p_event_id=>wwv_flow_api.id(34879682510936517)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990117_DBCRCD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DFLTDBCR ',
'from sydocmas',
'where COMPCODE= :COMPCODE',
'and MODLCODE = ''AC''',
'and TRANTYPE = :P99990117_DOCTTYPE',
'and SUBTTYPE = :P99990117_SUBTTYPE'))
,p_attribute_07=>'P99990117_DOCTTYPE,P99990117_SUBTTYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34881410996936519)
,p_name=>'set subledger'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990117_SUBLEDGER'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34881965704936520)
,p_event_id=>wwv_flow_api.id(34881410996936519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990117_SUBLEDCD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   s.partycde',
'    FROM sycompty s',
'   WHERE s.compcode = :P99990117_COMPCODE ',
'    and s.partytyp in (''VE'',''CU'',''CV'')',
'    AND  s.prtyname||'' (''||s.partycde||'')'' = :P99990117_SUBLEDGER'))
,p_attribute_07=>'P99990117_SUBLEDGER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34882362711936520)
,p_name=>'set doctype, subtype'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990117_TRANTYPE'
,p_condition_element=>'P99990117_TRANTYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34882873672936520)
,p_event_id=>wwv_flow_api.id(34882362711936520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990117_DOCTTYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   trantype',
'    FROM sydocmas d',
'   WHERE compcode = :COMPCODE',
'     AND modlcode = ''AC''',
'     AND TRANTYPE = ''B2''',
'     AND trantype||''-''||subttype=:P99990117_TRANTYPE;'))
,p_attribute_07=>'P99990117_TRANTYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34883340089936521)
,p_event_id=>wwv_flow_api.id(34882362711936520)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990117_SUBTTYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  subttype',
'    FROM sydocmas d',
'   WHERE compcode = :COMPCODE',
'     AND modlcode = ''AC''',
'     AND TRANTYPE = ''B2''',
'     AND trantype||''-''||subttype=:P99990117_TRANTYPE;'))
,p_attribute_07=>'P99990117_TRANTYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34883824294936521)
,p_event_id=>wwv_flow_api.id(34882362711936520)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990117_SUBTTYPE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(35362733273948843)
,p_name=>'close'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(35362669475948842)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35362853944948844)
,p_event_id=>wwv_flow_api.id(35362733273948843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(35965611490439205)
,p_name=>'Refresh'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990117_GROUPCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35965711917439206)
,p_event_id=>wwv_flow_api.id(35965611490439205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(35358629600948802)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35360784471948823)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(35358629600948802)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Item list - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
