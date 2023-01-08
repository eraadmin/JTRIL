prompt --application/pages/page_00354
begin
--   Manifest
--     PAGE: 00354
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
 p_id=>354
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Dashboard for Management'
,p_step_title=>'Dashboard for Management'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'widget.on(''render'', function(sender,event){',
'	',
'	//	URL to the background Image',
'	var imageLink = ''http://siliconangle.com/files/2014/12/BlackWhite-Logo.jpg''',
'	',
'	//	Set the chart background as the image',
'	sender.queryResult.chart.plotBackgroundImage = imageLink;',
'		',
'})'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-BadgeList--circular .t-BadgeList-label {',
'    color: #1F68A7;',
'}',
'.t-Region h2.t-Region-title {',
'    color: rgb(255, 255, 255);',
'}',
'.t-Region-headerItems--title {',
'    text-align: center;',
'    padding: 0.0rem 0.0rem;',
'    background-color: #1F68A7;',
'}',
'.t-BadgeList--circular.t-BadgeList--large .t-BadgeList-item {',
'   ',
'    background-color: azure;',
'}',
'.t-BadgeList--circular.t-BadgeList--small .t-BadgeList-label {',
'    font-size: 11px;',
'    padding: 54px 1px 1px 1px;',
'}',
'.scrollbar{',
'width:500px;',
'height:400px;',
'background-color:lightgray;',
'overflow-y:scroll;',
'float:left;',
'line-height: 3px;',
'}',
'',
'.t-BadgeList--dash a.t-BadgeList-wrap {',
'    transition: box-shadow .2s;',
'    text-decoration: none;',
'    text-align: center;',
'    height:none;',
'    padding: .0px;',
'    padding: 0.0rem 0.0rem;',
'    color: #000FFF;',
'    top:-10;',
'     background-color: #008000;',
'}',
'',
'.t-BadgeList-value {',
'    position: relative;',
'    font-size: 2rem !important;',
'    font-weight:extra-bold;',
'    top:-5px;',
'    color:white;',
'}',
'.t-BadgeList-label{',
' top:-12px;   ',
'    color:white;',
'}',
''))
,p_step_template=>wwv_flow_api.id(47556057873858111)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180322112208'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40623531669093630)
,p_plug_name=>'Variance Trend'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width=550px;height=550px;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>140
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''ACTUAL'' code,M,amt+ROUND((AMT*50)/100) ACTUAL from( ',
'    select ''JAN'' M,5500 AMT,''BUDGTED'' CODE FROM DUAL',
'    UNION ALL',
'    select ''FEB'' M,6500 AMT,''BUDGTED'' CODE FROM DUAL',
'    UNION ALL',
'    select ''MAR'' M,6500 AMT,''BUDGTED'' CODE FROM DUAL',
'    UNION ALL',
'    select ''APR'' M,11000 AMT,''ACTUAL'' CODE FROM DUAL',
'    UNION ALL',
'    select ''MAY'' M,12500 AMT,''ACTUAL'' CODE FROM DUAL',
'    UNION ALL',
'    select ''JUN'' M,10500 AMT,''ACTUAL'' CODE FROM DUAL',
'UNION ALL',
'SELECT ''AUG'',15000,''ACTUAL'' FROM DUAL',
'UNION ALL',
'SELECT ''SEP'',25000,''ACTUAL'' FROM DUAL',
'UNION ALL',
'SELECT ''OCT'',35000,''ACTUAL'' FROM DUAL',
'UNION ALL',
'SELECT ''NOV'',45000,''ACTUAL'' FROM DUAL',
'UNION ALL',
'SELECT ''DEC'',50000,''ACTUAL'' FROM DUAL',
'',
'',
'    ) '))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(751008546395245)
,p_region_id=>wwv_flow_api.id(40623531669093630)
,p_chart_type=>'line'
,p_width=>'500'
,p_height=>'450'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(751335975395245)
,p_chart_id=>wwv_flow_api.id(751008546395245)
,p_seq=>10
,p_name=>'Series 1'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'line'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(751428927395245)
,p_chart_id=>wwv_flow_api.id(751008546395245)
,p_seq=>20
,p_name=>'ACTUAL'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'line'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(751177769395245)
,p_chart_id=>wwv_flow_api.id(751008546395245)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(751224538395245)
,p_chart_id=>wwv_flow_api.id(751008546395245)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40647904300327679)
,p_plug_name=>'Sales Trend'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width=550px;height=550px;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>150
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''ACTUAL'' code,M,amt+ROUND((AMT*50)/100) ACTUAL from( ',
'    select ''JAN'' M,5500 AMT,''BUDGTED'' CODE FROM DUAL',
'    UNION ALL',
'    select ''FEB'' M,6500 AMT,''BUDGTED'' CODE FROM DUAL',
'    UNION ALL',
'    select ''MAR'' M,6500 AMT,''BUDGTED'' CODE FROM DUAL',
'    UNION ALL',
'    select ''APR'' M,11000 AMT,''ACTUAL'' CODE FROM DUAL',
'    UNION ALL',
'    select ''MAY'' M,12500 AMT,''ACTUAL'' CODE FROM DUAL',
'    UNION ALL',
'    select ''JUN'' M,10500 AMT,''ACTUAL'' CODE FROM DUAL',
'UNION ALL',
'SELECT ''AUG'',15000,''ACTUAL'' FROM DUAL',
'UNION ALL',
'SELECT ''SEP'',25000,''ACTUAL'' FROM DUAL',
'UNION ALL',
'SELECT ''OCT'',35000,''ACTUAL'' FROM DUAL',
'UNION ALL',
'SELECT ''NOV'',45000,''ACTUAL'' FROM DUAL',
'UNION ALL',
'SELECT ''DEC'',50000,''ACTUAL'' FROM DUAL',
'',
'',
'    ) '))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(752331921395250)
,p_region_id=>wwv_flow_api.id(40647904300327679)
,p_chart_type=>'line'
,p_width=>'500'
,p_height=>'450'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(752687057395251)
,p_chart_id=>wwv_flow_api.id(752331921395250)
,p_seq=>10
,p_name=>'Series 1'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'line'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(752768090395251)
,p_chart_id=>wwv_flow_api.id(752331921395250)
,p_seq=>20
,p_name=>'ACTUAL'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'line'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(752489227395250)
,p_chart_id=>wwv_flow_api.id(752331921395250)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(752560450395250)
,p_chart_id=>wwv_flow_api.id(752331921395250)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41022104662825604)
,p_name=>' '
,p_template=>wwv_flow_api.id(60229823019866567)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null,''<font size="3" color="red">''||head||''</font>'' Customer_name,value from (',
'select ''No of customer'' Head,(select count(*) from sycompty where PARTYTYP=''CU'') value from dual',
'union all',
'select ''No of Sales of this month'' head,(select count(*) from nmsalrec where to_char(doctdate,''MMRR'')=to_char(sysdate,''mmrr'')) Overview from dual',
'union all',
'select ''No of Purchase of this month'' head,(select count(*) from nmstkrec where to_char(doctdate,''MMRR'')=to_char(sysdate,''mmrr'')) Overview from dual',
'union all',
'select ''Purchase Amount of this month'' head,(select sum(mslcamnt) from nmstkrec where to_char(doctdate,''MMRR'')=to_char(sysdate,''mmrr'')) Overview from dual',
')'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'COMPUTED_BUT_NOT_DISPLAYED'
,p_query_row_count_max=>10
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'9'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'9'
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39990530199895093)
,p_query_column_id=>1
,p_column_alias=>'NULL'
,p_column_display_sequence=>2
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39989778941895093)
,p_query_column_id=>2
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:41:P41_CUSTOMER_ID:#ID#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'100'
,p_column_comment=>'<span><font size=".1" color="blue">#CUSTOMER_NAME#</font></span>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39990128582895093)
,p_query_column_id=>3
,p_column_alias=>'VALUE'
,p_column_display_sequence=>3
,p_print_col_width=>'0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41412134159803651)
,p_plug_name=>'Budget vs Actual Bar'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>160
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT ''Q1'',HEADNAME,SUM(Q1_BUDGTED)Q1_BUDGTED,SUM(Q1_ACTUAL)Q1_ACTUAL,SUM(Q1_BUDGTED-Q1_ACTUAL)Q1_VARIANCE',
' FROM (',
' SELECT ',
' a.compcode, s.accttype,  a.PERIODNO,',
' sum(nvl(a.COLMONHA,0)+nvl(a.COLMONHB,0)+nvl(a.COLMONHC,0))Q1_BUDGTED,',
' sum(nvl(a.COLMONHD,0)+nvl(a.COLMONHE,0)+nvl(a.COLMONHF,0))Q2_BUDGTED,',
' sum(nvl(a.COLMONHG,0)+nvl(a.COLMONHH,0)+nvl(a.COLMONHI,0))Q3_BUDGTED,',
' sum(nvl(a.COLMONHJ,0)+nvl(a.COLMONHK,0)+nvl(a.COLMONHL,0))Q4_BUDGTED, ',
' a.headname,a.acctcode,s.acctname,',
'CASE  WHEN s.accttype = 3  THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''01''|| A.PERIODNO,''02''||a.periodno,''03''||a.periodno) AND DBCRCODE = ''C'' AND STATCODE = ''Y'')',
'WHEN accttype = 4   THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''01''|| A.PERIODNO,''02''||a.periodno,''03''||a.periodno) AND DBCRCODE = ''D'' AND STATCODE = ''Y'')',
'END Q1_Actual,',
'CASE  WHEN s.accttype = 3  THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''04''|| A.PERIODNO,''05''||a.periodno,''06''||a.periodno) AND DBCRCODE = ''C'' AND STATCODE = ''Y'')',
'WHEN accttype = 4   THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''04''|| A.PERIODNO,''05''||a.periodno,''06''||a.periodno) AND DBCRCODE = ''D'' AND STATCODE = ''Y'')',
'END Q2_Actual,',
'CASE  WHEN s.accttype = 3  THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''07''|| A.PERIODNO,''08''||a.periodno,''09''||a.periodno) AND DBCRCODE = ''C'' AND STATCODE = ''Y'')',
'WHEN accttype = 4   THEN',
'(SELECT nvl(SUM (JVLCAMNT),0) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''07''|| A.PERIODNO,''08''||a.periodno,''09''||a.periodno) AND DBCRCODE = ''D'' AND STATCODE = ''Y'')',
'END Q3_Actual,',
'CASE  WHEN s.accttype = 3  THEN',
'(SELECT nvl(SUM (JVLCAMNT),0) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''10''|| A.PERIODNO,''11''||a.periodno,''12''||a.periodno) AND DBCRCODE = ''C'' AND STATCODE = ''Y'')',
'WHEN accttype = 4   THEN',
'(SELECT nvl(SUM (JVLCAMNT),0) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''10''|| A.PERIODNO,''11''||a.periodno,''12''||a.periodno) AND DBCRCODE = ''D'' AND STATCODE = ''Y'')',
'END Q4_Actual',
'FROM accshbgt a, sychrtac s',
'WHERE     CSHINOUT = ''I''',
'AND s.acctcode = a.acctcode',
'AND s.compcode = a.compcode',
'GROUP BY a.compcode,a.headname, a.PERIODNO, a.acctcode,s.acctname, s.accttype',
'union all',
' SELECT ',
' a.compcode, s.accttype,  a.PERIODNO,',
' sum(nvl(a.COLMONHA,0)+nvl(a.COLMONHB,0)+nvl(a.COLMONHC,0))Q1,',
' sum(nvl(a.COLMONHD,0)+nvl(a.COLMONHE,0)+nvl(a.COLMONHF,0))Q2,',
' sum(nvl(a.COLMONHG,0)+nvl(a.COLMONHH,0)+nvl(a.COLMONHI,0))Q3,',
' sum(nvl(a.COLMONHJ,0)+nvl(a.COLMONHK,0)+nvl(a.COLMONHL,0))Q4, ',
' a.headname,a.acctcode,s.acctname,',
'CASE  WHEN s.accttype = 3  THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''01''|| A.PERIODNO,''02''||a.periodno,''03''||a.periodno) AND DBCRCODE = ''C'' AND STATCODE = ''Y'')',
'WHEN accttype = 4   THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''01''|| A.PERIODNO,''02''||a.periodno,''03''||a.periodno) AND DBCRCODE = ''D'' AND STATCODE = ''Y'')',
'END Q1_Actual,',
'CASE  WHEN s.accttype = 3  THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''04''|| A.PERIODNO,''05''||a.periodno,''06''||a.periodno) AND DBCRCODE = ''C'' AND STATCODE = ''Y'')',
'WHEN accttype = 4   THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''04''|| A.PERIODNO,''05''||a.periodno,''06''||a.periodno) AND DBCRCODE = ''D'' AND STATCODE = ''Y'')',
'END Q2_Actual,',
'CASE  WHEN s.accttype = 3  THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''07''|| A.PERIODNO,''08''||a.periodno,''09''||a.periodno) AND DBCRCODE = ''C'' AND STATCODE = ''Y'')',
'WHEN accttype = 4   THEN',
'(SELECT nvl(SUM (JVLCAMNT),0) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''07''|| A.PERIODNO,''08''||a.periodno,''09''||a.periodno) AND DBCRCODE = ''D'' AND STATCODE = ''Y'')',
'END Q3_Actual,',
'CASE  WHEN s.accttype = 3  THEN',
'(SELECT nvl(SUM (JVLCAMNT),0) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''10''|| A.PERIODNO,''11''||a.periodno,''12''||a.periodno) AND DBCRCODE = ''C'' AND STATCODE = ''Y'')',
'WHEN accttype = 4   THEN',
'(SELECT nvl(SUM (JVLCAMNT),0) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''10''|| A.PERIODNO,''11''||a.periodno,''12''||a.periodno) AND DBCRCODE = ''D'' AND STATCODE = ''Y'')',
'END Q4_Actual',
'FROM accshbgt a, sychrtac s',
'WHERE     CSHINOUT = ''U''',
'AND s.acctcode = a.acctcode',
'AND s.compcode = a.compcode',
'GROUP BY a.compcode, a.PERIODNO, a.acctcode,a.headname,s.acctname, s.accttype',
')',
'GROUP BY HEADNAME',
''))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(751962137395246)
,p_region_id=>wwv_flow_api.id(41412134159803651)
,p_chart_type=>'bar'
,p_width=>'400'
,p_height=>'350'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No data found.'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(752288480395250)
,p_chart_id=>wwv_flow_api.id(751962137395246)
,p_seq=>10
,p_name=>'Series 1'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(752023466395246)
,p_chart_id=>wwv_flow_api.id(751962137395246)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(752154714395246)
,p_chart_id=>wwv_flow_api.id(751962137395246)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50692041339586851)
,p_plug_name=>'Profit Trend'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:#E74C3C;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>170
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select null link,decode(dt.mm,''01'',DT.MON||''''||substr(:P354_FINANCIAL_YR,-2 )',
' ,''02'',DT.MON||''''||substr(:P354_FINANCIAL_YR,-2)',
' ,''03'',DT.MON||''''||substr(:P354_FINANCIAL_YR,-2)',
' ,''04'',DT.MON||''''||substr(:P354_FINANCIAL_YR,-2)',
' ,''05'',DT.MON||''''||substr(:P354_FINANCIAL_YR,-2)',
' ,''06'',DT.MON||''''||substr(:P354_FINANCIAL_YR,-2)',
' ,''07'',DT.MON||''''||substr(:P354_FINANCIAL_YR,3,2)',
' ,''08'',DT.MON||''''||substr(:P354_FINANCIAL_YR,3,2)',
' ,''09'',DT.MON||''''||substr(:P354_FINANCIAL_YR,3,2)',
' ,''10'',DT.MON||''''||substr(:P354_FINANCIAL_YR,3,2)',
' ,''11'',DT.MON||''''||substr(:P354_FINANCIAL_YR,3,2)',
' ,''12'',DT.MON||''''||substr(:P354_FINANCIAL_YR,3,2),null) MON,S.amount Sales FROM',
'    (SELECT  MON_YEAR,NVL (Amount, 0) amount',
'       FROM ( SELECT INCM.HEADNAME,INCM.MON_YEAR, round(abs(SUM(INCM.BLS)),2) Amount',
'FROM ',
'(SELECT XX.COMPCODE,XX.HEADNAME,XX.HEADNUMB, XX.REPTNOPK,YY.MON_YEAR,round(NVL(YY.BLS,0)) BLS',
'FROM ',
'(select a.COMPCODE,a.HEADNAME,a.HEADNUMB, a.REPTNOPK,b.ACCTCODE',
'from ACFINREP a, ACFINDTL b',
'where a.compcode = b.compcode',
'and a.REPTNOPK = b.REPTNOFK',
'and a.REPTNUMB = b.REPTNUMB',
'order by a.HEADNUMB) XX,',
'(select COMPCODE, acctcode,TO_CHAR(DOCTDATE,''MMRRRR'') MON_YEAR, sum(decode(dbcrcode,''D'',nvl(jvlcamnt,0))) DR, sum(decode(dbcrcode,''C'',nvl(jvlcamnt,0))) CR,',
'NVL(sum(decode(dbcrcode,''D'',nvl(jvlcamnt,0))),0)  - NVL(sum(decode(dbcrcode,''C'',nvl(jvlcamnt,0))),0) BLS',
'from actrndtl',
'where compcode = :compcode',
'--AND NVL(COSTCODE,''O'') = NVL(:P9,NVL(COSTCODE,''O''))',
'AND COSTCODE IN (select costcode from nmwhsmas  where compcode = :compcode and WAREFLAG = ''Y'' and nvl(BRANDCDE,''xxx'') = nvl(:P354_BRAND,nvl(BRANDCDE,''xxx'')))',
'--AND NVL(STATCODE,''N'') = NVL(:P26,NVL(STATCODE,''N''))',
'--and doctdate between nvl(TO_DATE(:P354_START_DATE,''DD-MON-RRRR''),doctdate) and nvl(TO_DATE(:P354_END_DATE,''DD-MON-RRRR''),doctdate)',
'and TO_CHAR(DOCTDATE,''DD-MM-RRRR'') between NVL (replace(''01-07-''||TO_CHAR(to_number(substr(:P354_FINANCIAL_YR,1,4),''9999''),''9999''),'' '',''''), doctdate)',
'                                and NVL (replace(''30-06-''||TO_CHAR(to_number(substr(:P354_FINANCIAL_YR,-4),''9999''),''9999''),'' '',''''), doctdate)',
'GROUP BY COMPCODE, acctcode,TO_CHAR(DOCTDATE,''MMRRRR'')',
'having TO_CHAR(DOCTDATE,''MMRRRR'')>=''07''||substr(:P354_FINANCIAL_YR,1,4)) YY',
'WHERE XX.COMPCODE = YY.COMPCODE(+)',
'AND XX.ACCTCODE = YY.ACCTCODE(+)',
'ORDER BY XX.REPTNOPK) INCM',
'where INCM.REPTNOPK = 1',
'GROUP BY INCM.COMPCODE,INCM.HEADNAME,INCM.HEADNUMB, INCM.REPTNOPK,INCM.MON_YEAR',
'having INCM.MON_YEAR>=''07''||substr(:P354_FINANCIAL_YR,1,4)',
')',
'     )S,(SELECT TO_CHAR(DT,''MM'')MM,INITCAP(TO_CHAR(DT,''MON''))MON,TO_CHAR(DT,''MMRRRR'')MON_YEAR,TO_CHAR(DT,''MONTH'')MONTH FROM',
'                    (SELECT ADD_MONTHS(P.FINYEARB,ROWNUM-1)DT FROM USER_TABLES T,',
'                    (SELECT YEARCODE, FINYEARB, FINYEARE FROM ACCOMPAR WHERE COMPCODE=:COMPCODE AND YCLOSFLG=''N'') P',
'                    WHERE ROWNUM <13))DT',
'                    WHERE S.MON_YEAR(+)=DT.MON_YEAR',
'                    order by dt.mm'))
,p_plug_source_type=>'PLUGIN_JQPLOT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'line'
,p_attribute_02=>'520'
,p_attribute_03=>'350'
,p_attribute_06=>'true'
,p_attribute_08=>'"#58D68D","#E74C3C","#A74C3C"'
,p_attribute_09=>'se'
,p_attribute_10=>'vertical'
,p_attribute_14=>'No data found.'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(98631887355098681)
,p_plug_name=>'Inventory'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>180
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(98631700200098679)
,p_plug_name=>'Finish Goods'
,p_parent_plug_id=>wwv_flow_api.id(98631887355098681)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_region_attributes=>'style="width:550px;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PRODUCT_CATEGORY,VALUE FROM (',
'select CATEGORY PRODUCT_CATEGORY,ROUND(SUM(NVL(COSTRATE,0)*NVL(CURRENT_STOCK,0)))VALUE from NMITEM_finish_STOCK',
'WHERE CATEGORY IS NOT NULL',
'GROUP BY CATEGORY',
')',
'WHERE VALUE > 0',
'order by value desc'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.D3.BARCHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'PRODUCT_CATEGORY'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'Goods'
,p_attribute_06=>'HORIZONTAL,SIDE-BY-SIDE'
,p_attribute_13=>'MODERN'
,p_attribute_15=>'FRIENDLY'
,p_attribute_16=>'10'
,p_attribute_17=>'10'
,p_attribute_21=>'BARS'
,p_attribute_24=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(98631770777098680)
,p_plug_name=>'Raw Material'
,p_parent_plug_id=>wwv_flow_api.id(98631887355098681)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_region_attributes=>'style="width:550px;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PRODUCT_CATEGORY,VALUE FROM (',
'select CATEGORY PRODUCT_CATEGORY,ROUND(SUM(NVL(COSTRATE,0)*NVL(CURRENT_STOCK,0)))VALUE from NMITEM_STOCK',
'WHERE CATEGORY IS NOT NULL',
'GROUP BY CATEGORY',
')',
'WHERE VALUE > 0'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.FLOT.PIE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'PRODUCT_CATEGORY'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'STANDARD'
,p_attribute_07=>'320'
,p_attribute_08=>'LABEL:VALUE'
,p_attribute_09=>'N'
,p_attribute_10=>'10'
,p_attribute_11=>'Other'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(100518903543758233)
,p_name=>'Weekly'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--small:t-BadgeList--cols t-BadgeList--3cols'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.value today,b.value monthly, p.value Yearly',
'from (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmenudtl',
'       where compcode=:compcode',
'       and  BOOKCODE  is NOT NULL',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) a,',
'        (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmenudtl',
'       where compcode=:compcode',
'       and  BOOKCODE  is NOT NULL',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))) b,',
'    ( SELECT ',
'                 COUNT (DOCNUMBR) VALUE',
'            from nmenudtl',
'       where compcode=:compcode',
'       and  BOOKCODE  is NOT NULL',
'        AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1 ) p',
'order by 1',
'',
''))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39992597928895094)
,p_query_column_id=>1
,p_column_alias=>'TODAY'
,p_column_display_sequence=>1
,p_column_heading=>'Today''s'
,p_use_as_row_header=>'N'
,p_column_css_style=>'style="color:red;"'
,p_column_link=>'f?p=&APP_ID.:165:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#TODAY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39993021295895095)
,p_query_column_id=>2
,p_column_alias=>'MONTHLY'
,p_column_display_sequence=>2
,p_column_heading=>'Monthly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:166:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#MONTHLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39993473422895095)
,p_query_column_id=>3
,p_column_alias=>'YEARLY'
,p_column_display_sequence=>3
,p_column_heading=>'Yearly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:167:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#YEARLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(100520515007758235)
,p_name=>'Yearly'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--small:t-BadgeList--cols t-BadgeList--3cols'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.value today,b.value monthly, p.value Yearly',
'from (SELECT ',
'                 COUNT (*) VALUE',
'             from installment_collection',
'       where compcode=:compcode',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) a,',
'        (SELECT ',
'                 COUNT (*) VALUE',
'             from installment_collection',
'       where compcode=:compcode',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))) b,',
'    ( SELECT ',
'                 COUNT (*) VALUE',
'            from installment_collection',
'       where compcode=:compcode',
'       ',
'        AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1 ) p',
'order by 1',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39994139765895095)
,p_query_column_id=>1
,p_column_alias=>'TODAY'
,p_column_display_sequence=>1
,p_column_heading=>'Today''s'
,p_use_as_row_header=>'N'
,p_column_css_style=>'style="color:red;"'
,p_column_link=>'f?p=&APP_ID.:171:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#TODAY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39994576816895095)
,p_query_column_id=>2
,p_column_alias=>'MONTHLY'
,p_column_display_sequence=>2
,p_column_heading=>'Monthly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:172:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#MONTHLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39994933285895095)
,p_query_column_id=>3
,p_column_alias=>'YEARLY'
,p_column_display_sequence=>3
,p_column_heading=>'Yearly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:173:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#YEARLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(100522057456758235)
,p_plug_name=>'Budget Main'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--noPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40075735495805057)
,p_plug_name=>'Budget vs Actual'
,p_parent_plug_id=>wwv_flow_api.id(100522057456758235)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P354_START_DATE||''&P12=''||:P354_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    height:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator tr:hover td{',
'    background-color:#4FF323;',
'        }',
'',
'.CSSTableGenerator td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'}',
'',
'.CSSTableGenerator tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator tr:first-child td{',
'    background:-o-linear-gradient(bottom, #white 5%, #white 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #white), color-stop(1, #white) );',
'    background:-moz-linear-gradient( center top, #white 5%, #white 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#white", endColorstr="#white");    background: -o-linear-gradient(top,#white,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P354_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P354_COMPADD.</font>',
'</div></br>'');*/',
'',
'        htp.p(''<div class="CSSTableGenerator" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:15px;line-height: 15px;">',
'                <td style="width: 100px;background-color:#4FF323;text-align:center">Head Name</td>',
'                  <td style="width: 10px;background-color:#c77893;text-align:center;border-right: none;"></td>',
'                  <td style="width: 10px;background-color:#c77893;text-align:center;border-left: none;border-right: none;">Q1</td>',
'                  <td style="width: 10px;background-color:#c77893;text-align:center;border-left: none;"></td>',
'                  <td style="width: 10px;background-color:#8b8bc1;text-align:center;border-right: none;"></td>',
'                  <td style="width: 10px;background-color:#8b8bc1;text-align:center;border-left: none;border-right: none;">Q2</td>',
'                  <td style="width: 10px;background-color:#8b8bc1;text-align:center;border-left: none;"></td>',
'                  <td style="width: 10px;background-color:#c5c528;text-align:center;border-right: none;"></td>',
'                  <td style="width: 10px;background-color:#c5c528;text-align:center;border-left: none;border-right: none;">Q3</td>',
'                  <td style="width: 10px;background-color:#c5c528;text-align:center;border-left: none;"></td>',
'                  <td style="width: 10px;background-color:#c5e1a5;text-align:center;border-right: none;"></td>',
'                  <td style="width: 10px;background-color:#c5e1a5;text-align:center;border-left: none;border-right: none;">Q4</td>',
'                  <td style="width: 10px;background-color:#c5e1a5;text-align:center;border-left: none;"></td>',
'                  </tr>',
'                  <tr style="max-height:15px;line-height: 15px;">',
'                       <td style="width: 10px;background-color:#4DEAC7;text-align:center"></td>',
'                        <td style="width: 10px;background-color:#4FF323;text-align:center">Budgted</td>',
'                        <td style="width: 10px;background-color:#4FF323;text-align:center">Actual</td>',
'                        <td style="width: 10px;background-color:#4FF323;text-align:center">Variance</td>',
'                        <td style="width: 10px;background-color:#4FF323;text-align:center">Budgted</td>',
'                        <td style="width: 10px;background-color:#4FF323;text-align:center">Actual</td>',
'                        <td style="width: 10px;background-color:#4FF323;text-align:center">Variance</td>',
'                        <td style="width: 10px;background-color:#4FF323;text-align:center">Budgted</td>',
'                        <td style="width: 10px;background-color:#4FF323;text-align:center">Actual</td>',
'                        <td style="width: 10px;background-color:#4FF323;text-align:center">Variance</td>',
'                        <td style="width: 10px;background-color:#4FF323;text-align:center">Budgted</td>',
'                        <td style="width: 10px;background-color:#4FF323;text-align:center">Actual</td>',
'                        <td style="width: 10px;background-color:#4FF323;text-align:center">Variance</td>',
'                  </tr>''); ',
'',
'For c1 in (',
' SELECT HEADNAME,SUM(Q1_BUDGTED)Q1_BUDGTED,SUM(Q1_ACTUAL)Q1_ACTUAL,SUM(Q1_BUDGTED-Q1_ACTUAL)Q1_VARIANCE,',
' SUM(Q2_BUDGTED)Q2_BUDGTED,SUM(Q2_ACTUAL)Q2_ACTUAL,SUM(Q2_BUDGTED-Q2_ACTUAL)Q2_VARIANCE,',
' SUM(Q3_BUDGTED)Q3_BUDGTED,SUM(Q3_ACTUAL)Q3_ACTUAL,SUM(Q3_BUDGTED-Q3_ACTUAL)Q3_VARIANCE,',
' SUM(Q4_BUDGTED)Q4_BUDGTED,SUM(Q4_ACTUAL)Q4_ACTUAL,SUM(Q4_BUDGTED-Q4_ACTUAL)Q4_VARIANCE',
' FROM (',
' SELECT ',
' a.compcode, s.accttype,  a.PERIODNO,',
' sum(nvl(a.COLMONHA,0)+nvl(a.COLMONHB,0)+nvl(a.COLMONHC,0))Q1_BUDGTED,',
' sum(nvl(a.COLMONHD,0)+nvl(a.COLMONHE,0)+nvl(a.COLMONHF,0))Q2_BUDGTED,',
' sum(nvl(a.COLMONHG,0)+nvl(a.COLMONHH,0)+nvl(a.COLMONHI,0))Q3_BUDGTED,',
' sum(nvl(a.COLMONHJ,0)+nvl(a.COLMONHK,0)+nvl(a.COLMONHL,0))Q4_BUDGTED, ',
' a.headname,a.acctcode,s.acctname,',
'CASE  WHEN s.accttype = 3  THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''01''|| A.PERIODNO,''02''||a.periodno,''03''||a.periodno) AND DBCRCODE = ''C'' AND STATCODE = ''Y'')',
'WHEN accttype = 4   THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''01''|| A.PERIODNO,''02''||a.periodno,''03''||a.periodno) AND DBCRCODE = ''D'' AND STATCODE = ''Y'')',
'END Q1_Actual,',
'CASE  WHEN s.accttype = 3  THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''04''|| A.PERIODNO,''05''||a.periodno,''06''||a.periodno) AND DBCRCODE = ''C'' AND STATCODE = ''Y'')',
'WHEN accttype = 4   THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''04''|| A.PERIODNO,''05''||a.periodno,''06''||a.periodno) AND DBCRCODE = ''D'' AND STATCODE = ''Y'')',
'END Q2_Actual,',
'CASE  WHEN s.accttype = 3  THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''07''|| A.PERIODNO,''08''||a.periodno,''09''||a.periodno) AND DBCRCODE = ''C'' AND STATCODE = ''Y'')',
'WHEN accttype = 4   THEN',
'(SELECT nvl(SUM (JVLCAMNT),0) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''07''|| A.PERIODNO,''08''||a.periodno,''09''||a.periodno) AND DBCRCODE = ''D'' AND STATCODE = ''Y'')',
'END Q3_Actual,',
'CASE  WHEN s.accttype = 3  THEN',
'(SELECT nvl(SUM (JVLCAMNT),0) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''10''|| A.PERIODNO,''11''||a.periodno,''12''||a.periodno) AND DBCRCODE = ''C'' AND STATCODE = ''Y'')',
'WHEN accttype = 4   THEN',
'(SELECT nvl(SUM (JVLCAMNT),0) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''10''|| A.PERIODNO,''11''||a.periodno,''12''||a.periodno) AND DBCRCODE = ''D'' AND STATCODE = ''Y'')',
'END Q4_Actual',
'FROM accshbgt a, sychrtac s',
'WHERE     CSHINOUT = ''I''',
'AND s.acctcode = a.acctcode',
'AND s.compcode = a.compcode',
'GROUP BY a.compcode,a.headname, a.PERIODNO, a.acctcode,s.acctname, s.accttype',
'union all',
' SELECT ',
' a.compcode, s.accttype,  a.PERIODNO,',
' sum(nvl(a.COLMONHA,0)+nvl(a.COLMONHB,0)+nvl(a.COLMONHC,0))Q1,',
' sum(nvl(a.COLMONHD,0)+nvl(a.COLMONHE,0)+nvl(a.COLMONHF,0))Q2,',
' sum(nvl(a.COLMONHG,0)+nvl(a.COLMONHH,0)+nvl(a.COLMONHI,0))Q3,',
' sum(nvl(a.COLMONHJ,0)+nvl(a.COLMONHK,0)+nvl(a.COLMONHL,0))Q4, ',
' a.headname,a.acctcode,s.acctname,',
'CASE  WHEN s.accttype = 3  THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''01''|| A.PERIODNO,''02''||a.periodno,''03''||a.periodno) AND DBCRCODE = ''C'' AND STATCODE = ''Y'')',
'WHEN accttype = 4   THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''01''|| A.PERIODNO,''02''||a.periodno,''03''||a.periodno) AND DBCRCODE = ''D'' AND STATCODE = ''Y'')',
'END Q1_Actual,',
'CASE  WHEN s.accttype = 3  THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''04''|| A.PERIODNO,''05''||a.periodno,''06''||a.periodno) AND DBCRCODE = ''C'' AND STATCODE = ''Y'')',
'WHEN accttype = 4   THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''04''|| A.PERIODNO,''05''||a.periodno,''06''||a.periodno) AND DBCRCODE = ''D'' AND STATCODE = ''Y'')',
'END Q2_Actual,',
'CASE  WHEN s.accttype = 3  THEN',
'(SELECT SUM (JVLCAMNT) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''07''|| A.PERIODNO,''08''||a.periodno,''09''||a.periodno) AND DBCRCODE = ''C'' AND STATCODE = ''Y'')',
'WHEN accttype = 4   THEN',
'(SELECT nvl(SUM (JVLCAMNT),0) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''07''|| A.PERIODNO,''08''||a.periodno,''09''||a.periodno) AND DBCRCODE = ''D'' AND STATCODE = ''Y'')',
'END Q3_Actual,',
'CASE  WHEN s.accttype = 3  THEN',
'(SELECT nvl(SUM (JVLCAMNT),0) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''10''|| A.PERIODNO,''11''||a.periodno,''12''||a.periodno) AND DBCRCODE = ''C'' AND STATCODE = ''Y'')',
'WHEN accttype = 4   THEN',
'(SELECT nvl(SUM (JVLCAMNT),0) FROM ACTRNDTL T  WHERE     ACCTCODE = A.ACCTCODE',
'AND TO_CHAR (DOCTDATE, ''MMRRRR'') in (''10''|| A.PERIODNO,''11''||a.periodno,''12''||a.periodno) AND DBCRCODE = ''D'' AND STATCODE = ''Y'')',
'END Q4_Actual',
'FROM accshbgt a, sychrtac s',
'WHERE     CSHINOUT = ''U''',
'AND s.acctcode = a.acctcode',
'AND s.compcode = a.compcode',
'GROUP BY a.compcode, a.PERIODNO, a.acctcode,a.headname,s.acctname, s.accttype',
')',
'GROUP BY HEADNAME',
' ',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'    <tr style="max-height:15px;line-height: 15px;">',
'    <td style="width: 100px;background-color:#4DEAC7;text-align:center">''||Initcap(c1.headname)||''</td>',
'    <td style="width: 10px;background-color:#c77893;text-align:center">''||to_char(c1.Q1_Budgted,''99,999,99,999.99'')||''</td>',
'    <td style="width: 10px;background-color:#c77893;text-align:center">''||to_char(c1.q1_actual,''99,999,99,999.99'')||''</td>',
'    <td style="width: 10px;background-color:#c77893;text-align:center">''||to_char(c1.q1_variance,''99,999,99,999.99'')||''</td>',
'    <td style="width: 10px;background-color:#8b8bc1;text-align:center">''||to_char(c1.Q2_Budgted,''99,999,99,999.99'')||''</td>',
'    <td style="width: 10px;background-color:#8b8bc1;text-align:center">''||to_char(c1.Q2_actual,''99,999,99,999.99'')||''</td>',
'    <td style="width: 10px;background-color:#8b8bc1;text-align:center">''||to_char(c1.Q2_variance,''99,999,99,999.99'')||''</td>',
'    <td style="width: 10px;background-color:#c5c528;text-align:center">''||to_char(c1.Q3_Budgted,''99,999,99,999.99'')||''</td>',
'    <td style="width: 10px;background-color:#c5c528;text-align:center">''||to_char(c1.q3_actual,''99,999,99,999.99'')||''</td>',
'    <td style="width: 10px;background-color:#c5c528;text-align:center">''||to_char(c1.q3_variance,''99,999,99,999.99'')||''</td>',
'    <td style="width: 10px;background-color:#c5e1a5;text-align:center">''||to_char(c1.Q4_Budgted,''99,999,99,999.99'')||''</td>',
'    <td style="width: 10px;background-color:#c5e1a5;text-align:center">''||to_char(c1.q4_actual,''99,999,99,999.99'')||''</td>',
'    <td style="width: 10px;background-color:#c5e1a5;text-align:center">''||to_char(c1.q4_variance,''99,999,99,999.99'')||''</td>',
'  </tr>',
'    '');',
'                 ',
'End Loop;',
' ',
'htp.p(''</table></div></br>'');',
'',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40181549846730701)
,p_plug_name=>'Budget Trend'
,p_parent_plug_id=>wwv_flow_api.id(100522057456758235)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:550px;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>150
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select 01 pricing_date,10500 closing_val,''BUDGTED'' stock_code FROM DUAL',
'    UNION ALL',
'    select 02 M,11500 AMT,''BUDGTED'' CODE FROM DUAL',
'    UNION ALL',
'    select 03 M,12500 AMT,''BUDGTED'' CODE FROM DUAL',
'    UNION ALL',
'    select 01 M,11000 AMT,''ACTUAL'' CODE FROM DUAL',
'    UNION ALL',
'    select 02 M,12500 AMT,''ACTUAL'' CODE FROM DUAL',
'    UNION ALL',
'    select 03 M,10500 AMT,''ACTUAL'' CODE FROM DUAL'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.FLOT.LINE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_02=>'CLOSING_VAL'
,p_attribute_03=>'Y'
,p_attribute_04=>'STOCK_CODE'
,p_attribute_06=>'CIRCLE'
,p_attribute_07=>'X:Y'
,p_attribute_08=>'Date'
,p_attribute_09=>'Price'
,p_attribute_10=>'SERIES:X:Y'
,p_attribute_13=>'SOLAR'
,p_attribute_16=>'PRICING_DATE'
,p_attribute_17=>'NUMBER'
,p_attribute_21=>'LINE'
,p_attribute_22=>'Y'
,p_attribute_24=>'L999G999G999D99'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(40185215288778781)
,p_name=>'Receivable'
,p_parent_plug_id=>wwv_flow_api.id(100522057456758235)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>70
,p_region_css_classes=>'m250'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width: 550; height=350;"'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'case',
'     when age1 > 180 then',
'''<font color="red">''|| label ||''</font>''',
'     when age1 > 90 then',
'     ''<font color="blue">''||label ||''</font>''',
'     else',
'label end customer_name,',
'case',
'     when age1 > 180 then',
'''<font color="red">''|| to_char(amount,''999,99,999.99'')||''</font>''',
'     when age1 > 90 then',
'     ''<font color="orange">''||to_char(amount,''999,99,999.99'')||''</font>''',
'     when age1 between 30 and 90 then',
'     ''<font color="teal">''||to_char(amount,''999,99,999.99'')||''</font>''',
'     else',
'''<font color="green">''||to_char(amount,''999,99,999.99'')||''</font>''',
'end total,',
'''f?p=105:home:&SESSION.::&DEBUG.'' id ',
'from ',
'(select ''>30 Days. No of Customer = 150'' label, 31 age1, 60 age2,115380  amount,   31 id from dual',
'union all',
'select ''>60 Days. No of Customer = 750'' label, 61 age1, 90 age2,210450  amount,   61 id from dual',
'union all',
'select ''>90 Days. No of Customer = 1050'' label, 91 age1, 180 age2,6153080  amount,   91 id from dual',
'union all',
'select ''>180 Days No of Customer = 1500'' label, 181 age1, 365 age2,10565380  amount,  41 id from dual',
')',
'',
'',
'/*',
'select ',
'case',
'     when age1 > 180 then',
'''<font color="red">''|| label ||''</font>''',
'     when age1 > 90 then',
'     ''<font color="blue">''||label ||''</font>''',
'     else',
'label end customer_name,',
'case',
'     when age1 > 180 then',
'''<font color="red">''|| to_char(amount,''999,99,999.99'')||''</font>''',
'     when age1 > 90 then',
'     ''<font color="orange">''||to_char(amount,''999,99,999.99'')||''</font>''',
'     when age1 between 30 and 90 then',
'     ''<font color="teal">''||to_char(amount,''999,99,999.99'')||''</font>''',
'     else',
'''<font color="green">''||to_char(amount,''999,99,999.99'')||''</font>''',
'end total,',
'''f?p=105:home:&SESSION.::&DEBUG.'' id ',
'from vw_accounts_overdue',
'union all',
'select '' '' "customer_name" ,NULL  "total" ,'' ''"id " from dual',
'connect by level <2',
'*/',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'COMPUTED_BUT_NOT_DISPLAYED'
,p_query_row_count_max=>10
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39997426729895097)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:41:P41_CUSTOMER_ID:#ID#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'100'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39997889758895097)
,p_query_column_id=>2
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39998252712895097)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_alignment=>'RIGHT'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(40187103776780656)
,p_name=>'Payable'
,p_parent_plug_id=>wwv_flow_api.id(100522057456758235)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>80
,p_region_css_classes=>'m250'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_region_attributes=>'style="width: 550; height=350;"'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'case',
'     when age1 > 180 then',
'''<font color="red">''|| label ||''</font>''',
'     when age1 > 90 then',
'     ''<font color="blue">''||label ||''</font>''',
'     else',
'label end customer_name,',
'case',
'     when age1 > 180 then',
'''<font color="red">''|| to_char(amount,''999,99,999.99'')||''</font>''',
'     when age1 > 90 then',
'     ''<font color="orange">''||to_char(amount,''999,99,999.99'')||''</font>''',
'     when age1 between 30 and 90 then',
'     ''<font color="teal">''||to_char(amount,''999,99,999.99'')||''</font>''',
'     else',
'''<font color="green">''||to_char(amount,''999,99,999.99'')||''</font>''',
'end total,',
'''f?p=105:home:&SESSION.::&DEBUG.'' id ',
'from ',
'(select ''>30 Days. No of Customer = 50'' label, 31 age1, 60 age2,1815380  amount,   31 id from dual',
'union all',
'select ''>60 Days. No of Customer = 150'' label, 61 age1, 90 age2,105000  amount,   61 id from dual',
'union all',
'select ''>90 Days. No of Customer = 30'' label, 91 age1, 180 age2,63080  amount,   91 id from dual',
'union all',
'select ''>180 Days No of Customer = 10'' label, 181 age1, 365 age2,10565380  amount,  41 id from dual',
')',
'',
'',
'/*',
'select ',
'case',
'     when age1 > 180 then',
'''<font color="red">''|| label ||''</font>''',
'     when age1 > 90 then',
'     ''<font color="blue">''||label ||''</font>''',
'     else',
'label end customer_name,',
'case',
'     when age1 > 180 then',
'''<font color="red">''|| to_char(amount,''999,99,99,999.99'')||''</font>''',
'     when age1 > 90 then',
'     ''<font color="orange">''||to_char(amount,''999,99,99,999.99'')||''</font>''',
'     when age1 between 30 and 90 then',
'     ''<font color="#2E6CE8">''||to_char(amount,''999,99,99,999.99'')||''</font>''',
'     else',
'''<font color="green">''||to_char(amount,''999,99,99,999.99'')||''</font>''',
'end total,',
'''f?p=105:home:&SESSION.::&DEBUG.'' id ',
'from VW_accounts_PAYMENTDUE',
'*/'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'COMPUTED_BUT_NOT_DISPLAYED'
,p_query_row_count_max=>10
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39999307486895098)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:41:P41_CUSTOMER_ID:#ID#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'100'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39999712203895098)
,p_query_column_id=>2
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40000094520895098)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_alignment=>'RIGHT'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(40189001966783183)
,p_name=>'Top 10 Receivable (BDT)'
,p_parent_plug_id=>wwv_flow_api.id(100522057456758235)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlightOff'
,p_region_attributes=>'style="width: 550; height=350;"'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.prtyname Customer_Name,nvl(sum(jvlcamnt),0)-',
'(select nvl(sum(jvlcamnt),0) from actrndtl B',
'where compcode = :compcode',
'--and  doctdate between nvl(:p11,doctdate) and nvl(:p12,doctdate)',
'and  nvl(jvlcamnt,0) != 0',
'and dbcrcode=''C''',
'and acctcode=b.acctcode',
'and subledcd=P.partycde',
'and docttype=(select DFRECDTY from accompar where trunc(doctdate) between FINYEARB and FINYEARe and compcode = :compcode))',
'order_total,partycde ID from actrndtl B,SYCOMPTY P',
'where b.compcode = :compcode',
'--and  doctdate between nvl(:p11,doctdate) and nvl(:p12,doctdate)',
'and  nvl(jvlcamnt,0) != 0',
'and dbcrcode=''D''',
'and b.subledcd=p.partycde',
'AND ACCTCODE IN (SELECT ACCTCODE FROM SYCHRTAC WHERE (DEFARFLG=''Y'' OR ARACTFLG=''Y'')) ',
'and docttype=(select DFINVDTY from accompar where trunc(sysdate) between FINYEARB and FINYEARe and compcode =:compcode)',
'group by phonenum,prtyname,b.compcode,b.subledcd,partycde',
'order by nvl(sum(jvlcamnt),0) desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'COMPUTED_BUT_NOT_DISPLAYED'
,p_query_row_count_max=>10
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40001199957895098)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:41:P41_CUSTOMER_ID:#ID#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'50'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40001684692895098)
,p_query_column_id=>2
,p_column_alias=>'ORDER_TOTAL'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'50'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40001994902895099)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_column_alignment=>'RIGHT'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(40190497265784543)
,p_name=>'Top 10 Payable (BDT)'
,p_parent_plug_id=>wwv_flow_api.id(100522057456758235)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>120
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlightOff'
,p_region_attributes=>'style="width: 550; height=350;"'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.prtyname Customer_Name,nvl(sum(jvlcamnt),0)-',
'(select nvl(sum(jvlcamnt),0) from actrndtl B',
'where compcode = ''100''',
'--and  doctdate between nvl(:p11,doctdate) and nvl(:p12,doctdate)',
'and  nvl(jvlcamnt,0) != 0',
'and dbcrcode=''D''',
'and acctcode=b.acctcode',
'and subledcd=P.partycde',
'and docttype=(select DFPMTDTY from accompar where doctdate between FINYEARB and FINYEARe and compcode =''100''))',
'order_total,partycde ID from actrndtl B,SYCOMPTY P',
'where b.compcode = ''100''',
'--and  doctdate between nvl(:p11,doctdate) and nvl(:p12,doctdate)',
'and  nvl(jvlcamnt,0) != 0',
'and dbcrcode=''C''',
'and b.subledcd=p.partycde',
'AND ACCTCODE IN (SELECT ACCTCODE FROM SYCHRTAC WHERE (DEFAPFLG=''Y'' OR APACTFLG=''Y'')) ',
'and docttype=(select DFBILDTY from accompar where doctdate between FINYEARB and FINYEARe and compcode =''100'')',
'group by phonenum,prtyname,b.compcode,b.subledcd,partycde',
'order by nvl(sum(jvlcamnt),0) desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'COMPUTED_BUT_NOT_DISPLAYED'
,p_query_row_count_max=>10
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40002721371895099)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:41:P41_CUSTOMER_ID:#ID#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'50'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40003150679895099)
,p_query_column_id=>2
,p_column_alias=>'ORDER_TOTAL'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'50'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40003496669895099)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_column_alignment=>'RIGHT'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40424354591330022)
,p_plug_name=>'Top 5 Expenses'
,p_parent_plug_id=>wwv_flow_api.id(100522057456758235)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>130
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P354_START_DATE||''&P12=''||:P354_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    height:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator tr:hover td{',
'    background-color:#4FF323;',
'        }',
'',
'.CSSTableGenerator td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#4FF323;',
'}',
'',
'.CSSTableGenerator tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator tr:first-child td{',
'    background:-o-linear-gradient(bottom, #white 5%, #white 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #f9f9fc), color-stop(1, #white) );',
'    background:-moz-linear-gradient( center top, #white 5%, #white 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#white", endColorstr="#white");    background: -o-linear-gradient(top,#white,003f7f);',
'',
'    background-color:#4FF323;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1847F5;',
'}',
'',
'.CSSTableGenerator tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P354_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P354_COMPADD.</font>',
'</div></br>'');*/',
'',
'        htp.p(''<div class="CSSTableGenerator" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:15px;line-height: 15px;">',
'                <td style="width: 60px;background-color:#4DEAC7;text-align:center">Particulars</td>',
'                <td style="width: 10px;background-color:#4FF323;text-align:center">Budgted</td>',
'                <td style="width: 10px;background-color:#4FF323;text-align:center">Actual</td>',
'                <td style="width: 10px;background-color:#63D0F9;text-align:center">Variance</td>',
'              </tr>''); ',
'',
'For c1 in (',
'SELECT S.ACCTNAME headname,0 budgted,SUM(T.JVLCAMNT)actual,0 variance FROM ACTRNDTL T,( ',
'select S.ACCTCODE,S.ACCTNAME,B.COMPCODE,B.DOCNUMBR,B.DOCTDATE,B.DOCTTYPE,B.SUBTTYPE,nvl(jvlcamnt,0) from actrndtl B,sychrtac s',
'where b.compcode = :compcode',
'--and  doctdate between nvl(:p11,doctdate) and nvl(:p12,doctdate)',
'and  nvl(jvlcamnt,0) != 0',
'and b.acctcode=s.acctcode',
'and b.compcode=s.compcode',
'and to_char(doctdate,''RRRR'')=TO_CHAR(SYSDATE,''RRRR'')',
'and dbcrcode=''C''',
'and (S.CASHBANK=''Y'' or S.DFCSHFLG=''Y'' or S.DFBNKFLG=''Y''))B,SYCHRTAC S',
'WHERE T.DOCNUMBR=B.DOCNUMBR',
'AND T.DOCTTYPE=B.DOCTTYPE',
'AND T.SUBTTYPE=B.SUBTTYPE',
'AND T.COMPCODE=B.COMPCODE',
'AND T.ACCTCODE=S.ACCTCODE',
'AND T.COMPCODE=S.COMPCODE',
'AND T.DBCRCODE=''D''',
'GROUP BY S.ACCTNAME',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'    <tr style="max-height:15px;line-height: 15px;">',
'    <td style="width: 10px;background-color:#4DEAC7;text-align:center">''||c1.headname||''</td>',
'    <td style="width: 10px;background-color:#CEE3F6;text-align:center">''||to_char(c1.budgted,''99,999,99,999.99'')||''</td>',
'    <td style="width: 10px;background-color:#CEE3F6;text-align:center">''||to_char(c1.actual,''99,999,99,999.99'')||''</td>',
'    <td style="width: 10px;background-color:#CEE3F6;text-align:center">''||to_char(c1.variance,''99,999,99,999.99'')||''</td>',
'  </tr>',
'    '');',
'                 ',
'End Loop;',
' ',
'htp.p(''</table></div></br>'');',
'',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40540064443460914)
,p_plug_name=>'Expense Chart'
,p_parent_plug_id=>wwv_flow_api.id(100522057456758235)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width=500px;height=250px;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>140
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null,S.ACCTNAME,SUM(T.JVLCAMNT)AMOUNT FROM ACTRNDTL T,( ',
'select S.ACCTCODE,S.ACCTNAME,B.COMPCODE,B.DOCNUMBR,B.DOCTDATE,B.DOCTTYPE,B.SUBTTYPE,nvl(jvlcamnt,0) from actrndtl B,sychrtac s',
'where b.compcode = :compcode',
'--and  doctdate between nvl(:p11,doctdate) and nvl(:p12,doctdate)',
'and  nvl(jvlcamnt,0) != 0',
'and b.acctcode=s.acctcode',
'and b.compcode=s.compcode',
'and to_char(doctdate,''RRRR'')=TO_CHAR(SYSDATE,''RRRR'')',
'and dbcrcode=''C''',
'and (S.CASHBANK=''Y'' or S.DFCSHFLG=''Y'' or S.DFBNKFLG=''Y''))B,SYCHRTAC S',
'WHERE T.DOCNUMBR=B.DOCNUMBR',
'AND T.DOCTTYPE=B.DOCTTYPE',
'AND T.SUBTTYPE=B.SUBTTYPE',
'AND T.COMPCODE=B.COMPCODE',
'AND T.ACCTCODE=S.ACCTCODE',
'AND T.COMPCODE=S.COMPCODE',
'AND T.DBCRCODE=''D''',
'GROUP BY S.ACCTNAME'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(751541396395246)
,p_region_id=>wwv_flow_api.id(40540064443460914)
,p_chart_type=>'bar'
,p_width=>'500'
,p_height=>'250'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No data found.'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(751868006395246)
,p_chart_id=>wwv_flow_api.id(751541396395246)
,p_seq=>10
,p_name=>'Series 1'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(751636646395246)
,p_chart_id=>wwv_flow_api.id(751541396395246)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(751730083395246)
,p_chart_id=>wwv_flow_api.id(751541396395246)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40652594895014627)
,p_plug_name=>'Profit Trend'
,p_parent_plug_id=>wwv_flow_api.id(100522057456758235)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:#E74C3C;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NULL,B.MON,B.SALES_BUDGET-B.EXPENSE_BUDGET PROFIT_TREND FROM (',
'SELECT TO_CHAR(DOCTDATE,''MM'')MM,TO_CHAR(DOCTDATE,''MON'')MONTH,TO_CHAR(T.DOCTDATE,''MMRRRR'')MM_YEAR,SUM(JVLCAMNT)SALES FROM ACTRNDTL T ',
'WHERE docttype||''/''||SUBTTYPE=(SELECT DFINVDTY||''/''||DFINVSTY FROM ACCOMPAR WHERE TRUNC(SYSDATE) BETWEEN FINYEARB AND FINYEARE) ',
'AND T.DBCRCODE=''C''',
'GROUP BY TO_CHAR(DOCTDATE,''MM''),TO_CHAR(DOCTDATE,''MON''),TO_CHAR(T.DOCTDATE,''MMRRRR'')',
')A,',
'(SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MM_YEAR,TO_CHAR(DT,''MON-RRRR'')MON_YEAR,',
'(SELECT SUM(SALES_BUDGET) FROM V_SALES_BUDGET WHERE MMRR=TO_CHAR(DT,''MMRRRR''))SALES_BUDGET,',
'(SELECT SUM(EXPENSE_BUDGET) FROM V_EXPENSE_BUDGET WHERE MMRR=TO_CHAR(DT,''MMRRRR''))EXPENSE_BUDGET',
' FROM (',
'SELECT TRUNC(ADD_MONTHS(FINYEARB,ROWNUM-1),''MM'')DT FROM (',
'SELECT FINYEARB,FINYEARE FROM ACCOMPAR',
'WHERE (to_char(finyearb,''RRRR'')=TO_CHAR(SYSDATE,''RRRR'')))',
'CONNECT BY LEVEL <= ROUND(MONTHS_BETWEEN(FINYEARE,FINYEARB))',
'))B',
'WHERE A.MM_YEAR=B.MM_YEAR',
'AND B.SALES_BUDGET-B.EXPENSE_BUDGET>0',
'ORDER BY B.MM'))
,p_plug_source_type=>'PLUGIN_JQPLOT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'line'
,p_attribute_02=>'550'
,p_attribute_03=>'350'
,p_attribute_06=>'true'
,p_attribute_08=>'"#58D68D","#E74C3C","#A74C3C"'
,p_attribute_09=>'se'
,p_attribute_10=>'vertical'
,p_attribute_14=>'No data found.'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40654990082074268)
,p_plug_name=>'Turnover'
,p_parent_plug_id=>wwv_flow_api.id(100522057456758235)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NULL,B.MON,A.SALES FROM (',
'SELECT TO_CHAR(DOCTDATE,''MM'')MM,TO_CHAR(DOCTDATE,''MON'')MONTH,TO_CHAR(T.DOCTDATE,''MMRRRR'')MM_YEAR,SUM(JVLCAMNT)SALES FROM ACTRNDTL T ',
'WHERE docttype||''/''||SUBTTYPE=(SELECT DFINVDTY||''/''||DFINVSTY FROM ACCOMPAR WHERE TRUNC(SYSDATE) BETWEEN FINYEARB AND FINYEARE) ',
'AND T.DBCRCODE=''C''',
'GROUP BY TO_CHAR(DOCTDATE,''MM''),TO_CHAR(DOCTDATE,''MON''),TO_CHAR(T.DOCTDATE,''MMRRRR'')',
')A,',
'(SELECT TO_CHAR(DT,''MM'')MM,TO_CHAR(DT,''MON'')MON,TO_CHAR(DT,''MMRRRR'')MM_YEAR,TO_CHAR(DT,''MON-RRRR'')MON_YEAR,',
'(SELECT SUM(SALES_BUDGET) FROM V_SALES_BUDGET WHERE MMRR=TO_CHAR(DT,''MMRRRR''))SALES_BUDGET',
' FROM (',
'SELECT TRUNC(ADD_MONTHS(FINYEARB,ROWNUM-1),''MM'')DT FROM (',
'SELECT FINYEARB,FINYEARE FROM ACCOMPAR',
'WHERE (to_char(finyearb,''RRRR'')=TO_CHAR(SYSDATE,''RRRR'')))',
'CONNECT BY LEVEL <= ROUND(MONTHS_BETWEEN(FINYEARE,FINYEARB))',
'))B',
'WHERE A.MM_YEAR=B.MM_YEAR',
'AND B.SALES_BUDGET > 0',
'ORDER BY B.MM'))
,p_plug_source_type=>'PLUGIN_JQPLOT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'line'
,p_attribute_02=>'550'
,p_attribute_03=>'350'
,p_attribute_06=>'true'
,p_attribute_09=>'se'
,p_attribute_10=>'vertical'
,p_attribute_14=>'No data found.'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40730850838870320)
,p_plug_name=>'Business Trend as on  &P1_TODAY.'
,p_parent_plug_id=>wwv_flow_api.id(100522057456758235)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_region_attributes=>'style=" background-color: azure;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Cash In Hand''label,''BDT''||to_char(10000000,''999,999,99,999.99'')value,apex_util.prepare_url(''f?p=''||:APP_ID||'':44:''||:APP_SESSION||'':::44,RIR:'') url from dual',
'union all',
'SELECT ''Bank Balance'',''BDT''||to_char(20045000,''999,999,99,999.99''),apex_util.prepare_url(''f?p=''||:APP_ID||'':44:''||:APP_SESSION||'':::44,RIR:'') url from dual',
'union all',
'SELECT  ''Receivable''label,''BDT''||to_char(SUM (NVL (sal.sale, 0) - NVL (rcp.jvlcamnt, 0)),''999,999,99,999.99'') value,',
'     apex_util.prepare_url(''f?p=''||:APP_ID||'':44:''||:APP_SESSION||'':::44,RIR:'')url',
'       FROM ( ',
'       SELECT refdocno, refdocdt,',
'                      SUBLEDCD,',
'                      SUM (jvlcamnt) AS jvlcamnt',
'                 FROM actrndtl',
'                WHERE     docttype =  (SELECT DFRECDTY  FROM accompar WHERE TRUNC (SYSDATE) BETWEEN FINYEARB AND FINYEARE)',
'                      AND dbcrcode = ''C''',
'                      AND statcode = ''Y''',
'                      AND refdocno IS NOT NULL',
'             --     AND refdocdt BETWEEN NVL (to_date(:P_START_DATE,''dd/mm/rrrr''), refdocdt) AND NVL (to_date(:P_END_DATE,''dd/mm/rrrr''),refdocdt)',
'             GROUP BY refdocno, refdocdt, SUBLEDCD',
'             ) rcp,',
'            (SELECT s.docnumbr,',
'                      s.doctdate,',
'                      s.docttype,',
'                      s.subttype,',
'                      p.partycde partycde,',
'                      p.prtyname AS prtyname,',
'                      SUM (s.JVLCAMNT) AS sale',
'                 FROM actrndtl s,    (SELECT DFINVDTY docttype   FROM accompar  WHERE TRUNC (SYSDATE) BETWEEN FINYEARB AND FINYEARE) a, sycompty p',
'                WHERE     s.subledcd = p.partycde',
'                      AND s.dbcrcode = ''D''',
'                      AND a.docttype = S.docttype',
'              GROUP BY s.docnumbr, s.doctdate,s.docttype, s.subttype,p.partycde,p.prtyname',
'                )SAL',
'            WHERE     rcp.refdocno(+) = sal.docnumbr',
'            AND rcp.SUBLEDCD(+) = sal.partycde',
'            AND NVL (sal.sale, 0) - NVL (rcp.jvlcamnt, 0) > 0',
'union all',
'SELECT ''Payable'',''BDT''||to_char(1505000,''999,999,99,999.99''),apex_util.prepare_url(''f?p=''||:APP_ID||'':44:''||:APP_SESSION||'':::44,RIR:'') url from dual',
'/*',
'SELECT  ''Payable'',''BDT''||to_char(SUM (sal.sale - NVL (rcp.jvlcamnt, 0)),''99,999,999.99'') amount,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':44:''||:APP_SESSION||'':::44,RIR:'') ',
'    from(',
'     SELECT refdocno,',
'                      refdocdt,',
'                      SUBLEDCD,',
'                      SUM (jvlcamnt) AS jvlcamnt',
'                 FROM actrndtl',
'                WHERE     docttype =',
'                             (SELECT DFPMTDTY  FROM accompar',
'                               WHERE TRUNC (SYSDATE) BETWEEN FINYEARB AND FINYEARE)',
'                      AND dbcrcode = ''D''',
'                      AND statcode = ''Y''',
'                      AND refdocno IS NOT NULL',
'             GROUP BY refdocno, refdocdt, SUBLEDCD) rcp,',
'            (SELECT s.docnumbr,',
'                      s.doctdate,',
'                      s.docttype,',
'                      s.subttype,',
'                      p.partycde partycde,',
'                      p.prtyname AS prtyname,',
'                      SUM (s.JVLCAMNT) AS sale',
'                 FROM actrndtl s,(SELECT DFBILDTY docttype   FROM accompar WHERE TRUNC (SYSDATE) BETWEEN FINYEARB AND FINYEARE) a, sycompty p',
'                WHERE     s.subledcd = p.partycde',
'                      AND s.dbcrcode = ''C''',
'                      AND a.docttype = S.docttype',
'             GROUP BY s.docnumbr,   s.doctdate,  s.docttype, s.subttype, p.partycde, p.prtyname',
'                      ) sal',
'      WHERE     rcp.refdocno(+) = sal.docnumbr',
'            AND rcp.SUBLEDCD(+) = sal.partycde',
'            AND NVL (sal.sale, 0) - NVL (rcp.jvlcamnt, 0) > 0',
'            */',
'union all',
'SELECT ''Other Income'',''BDT''||to_char(245000,''999,999,99,999.99''),apex_util.prepare_url(''f?p=''||:APP_ID||'':44:''||:APP_SESSION||'':::44,RIR:'') url from dual',
'union all',
'SELECT ''Other Expense'',''BDT''||to_char(565000,''999,999,99,999.99''),apex_util.prepare_url(''f?p=''||:APP_ID||'':44:''||:APP_SESSION||'':::44,RIR:'') url from dual',
'union all',
'SELECT ''Loan'',''BDT''||to_char(9500000,''999,999,99,999.99''),apex_util.prepare_url(''f?p=''||:APP_ID||'':44:''||:APP_SESSION||'':::44,RIR:'') url from dual',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'0'
,p_attribute_07=>'BOX'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(98631478308098677)
,p_plug_name=>'Area Wise Sales'
,p_parent_plug_id=>wwv_flow_api.id(100522057456758235)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'select null,area,amount from dashboard_area_wise_sales'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.D3.BARCHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'AREA'
,p_attribute_02=>'AMOUNT'
,p_attribute_05=>'Area Wise Sales'
,p_attribute_06=>'VERTICAL,SIDE-BY-SIDE'
,p_attribute_13=>'MODERN'
,p_attribute_15=>'FRIENDLY'
,p_attribute_16=>'10'
,p_attribute_17=>'10'
,p_attribute_21=>'BARS'
,p_attribute_24=>'Y'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101372166981345096)
,p_plug_name=>'Budget Information'
,p_parent_plug_id=>wwv_flow_api.id(100522057456758235)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:550px;height:300px;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P354_START_DATE||''&P12=''||:P354_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    height:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGenerator tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator tr:hover td{',
'    background-color:white;',
'    color:red;',
'        }',
'',
'.CSSTableGenerator td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#4FF323;',
'}',
'',
'.CSSTableGenerator tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator tr:first-child td{',
'    background:-o-linear-gradient(bottom, #white 5%, #F9F9B0 100%);    ',
'     background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05,#1f68a7), color-stop(1, #1f68a7) );',
'    background:-moz-linear-gradient( center top, #000080 5%, #000080 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#000080", endColorstr="#F9F9B0");    background: -o-linear-gradient(top,#white,#3c1e1e);',
'    background-color:#3c1e1e;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1847F5;',
'}',
'',
'.CSSTableGenerator tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'--<a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P354_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P354_COMPADD.</font>',
'</div></br>'');*/',
'',
'        htp.p(''<div class="CSSTableGenerator" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:15px;line-height: 15px;color:black;background-color:white;">',
'                <td style="width: 60px;background-color:#4DEAC7;text-align:center">Head Name</td>',
'                <td style="width: 10px;background-color:#000080;text-align:center">Q1</td>',
'                <td style="width: 10px;background-color:#000080;text-align:center">Q2</td>',
'                <td style="width: 10px;background-color:#000080;text-align:center">Q3</td>',
'                <td style="width: 10px;background-color:#000080;text-align:center">Q4</td>',
'              </tr>''); ',
'',
'For c1 in (',
'select headname,Q1,Q2,Q3,Q4 from (',
'select 1 sl,INITCAP(B.HEADNAME) HEADNAME,SUM(COLMONHA) + SUM(COLMONHB) + SUM(COLMONHC)Q1,SUM(COLMONHD)+ SUM(COLMONHE) + SUM(COLMONHF)Q2,',
'SUM(COLMONHG) + SUM(COLMONHH) + SUM(COLMONHI) Q3, SUM(COLMONHJ) + SUM(COLMONHK) + SUM(COLMONHL) Q4 ',
'from accshbgt b,SYCHRTAC S',
'                  WHERE B.COMPCODE=S.COMPCODE',
'                  AND B.ACCTCODE=S.ACCTCODE',
'                      and B.CSHINOUT=''I''',
' AND B.PERIODNO=to_char(sysdate,''RRRR'')',
'                  GROUP BY B.HEADNAME',
'union all',
'select 2 sl,INITCAP(B.HEADNAME) HEADNAME,SUM(COLMONHA) + SUM(COLMONHB) + SUM(COLMONHC)Q1,SUM(COLMONHD)+ SUM(COLMONHE) + SUM(COLMONHF)Q2,',
'SUM(COLMONHG) + SUM(COLMONHH) + SUM(COLMONHI) Q3, SUM(COLMONHJ) + SUM(COLMONHK) + SUM(COLMONHL) Q4 ',
'from accshbgt b,SYCHRTAC S',
'                  WHERE B.COMPCODE=S.COMPCODE',
'                  AND B.ACCTCODE=S.ACCTCODE',
'                      and B.CSHINOUT=''U''',
' AND B.PERIODNO=to_char(sysdate,''RRRR'')',
'                  GROUP BY B.HEADNAME',
'union all',
'select 3 sl,''Projected Net Profit'' Headname,sum(Q1)Q2,sum(Q2)Q2,sum(q3)q3,sum(q4)q4 from ',
'(',
'select INITCAP(B.HEADNAME) HEADNAME,SUM(COLMONHA) + SUM(COLMONHB) + SUM(COLMONHC)Q1,SUM(COLMONHD)+ SUM(COLMONHE) + SUM(COLMONHF)Q2,',
'SUM(COLMONHG) + SUM(COLMONHH) + SUM(COLMONHI) Q3, SUM(COLMONHJ) + SUM(COLMONHK) + SUM(COLMONHL) Q4 ',
'from accshbgt b,SYCHRTAC S',
'                  WHERE B.COMPCODE=S.COMPCODE',
'                  AND B.ACCTCODE=S.ACCTCODE',
'                  and B.CSHINOUT=''I''',
' AND B.PERIODNO=to_char(sysdate,''RRRR'')    GROUP BY B.HEADNAME',
'union all',
'select INITCAP(B.HEADNAME) HEADNAME,',
'(-1*SUM(COLMONHA)) + (-1*SUM(COLMONHB))+ (-1*SUM(COLMONHC))Q1, ',
'(-1*SUM(COLMONHD))+(-1*SUM(COLMONHE))+(-1*SUM(COLMONHF)) Q2, ',
'(-1*SUM(COLMONHG))+(-1*SUM(COLMONHH))+(-1*SUM(COLMONHI))Q3, ',
'(-1*SUM(COLMONHJ))+(-1*SUM(COLMONHK))+(-1*SUM(COLMONHL)) Q4 ',
'from accshbgt b,SYCHRTAC S',
'                  WHERE B.COMPCODE=S.COMPCODE',
'                  AND B.ACCTCODE=S.ACCTCODE',
'                  and B.CSHINOUT=''U''',
' AND B.PERIODNO=to_char(sysdate,''RRRR'')',
'                  GROUP BY B.HEADNAME',
'))',
'order by sl                  ',
')',
'                  ',
' Loop',
'--v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'    <tr style="max-height:15px;line-height: 15px;">',
'    <td style="width: 10px;background-color:#4DEAC7;text-align:center">''||c1.headname||''</td>',
'    <td style="width: 10px;background-color:#CEE3F6;text-align:center">''||to_char(c1.Q1,''99,999,99,999.99'')||''</td>',
'    <td style="width: 10px;background-color:#CEE3F6;text-align:center">''||to_char(c1.Q2,''99,999,99,999.99'')||''</td>',
'    <td style="width: 10px;background-color:#CEE3F6;text-align:center">''||to_char(c1.Q3,''99,999,99,999.99'')||''</td>',
'    <td style="width: 10px;background-color:#CEE3F6;text-align:center">''||to_char(c1.Q4,''99,999,99,999.99'')||''</td>',
'  </tr>',
'    '');',
'                 ',
'End Loop;',
' ',
'htp.p(''</table></div></br>'');',
'',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(100524914097758238)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background:gray;"'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P354_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P354_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(100527698013758238)
,p_name=>'Daily'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--small:t-BadgeList--cols'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.value Receivable,b.value Payable, p.value Receipts,c.value Payment',
'from (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmslsofr',
'       where compcode=:P101_COMP_NAME',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) a,',
'        (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmslsofr',
'       where compcode=:P101_COMP_NAME',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))) b,',
'    ( SELECT ',
'                 COUNT (DOCNUMBR) VALUE',
'            from nmslsofr',
'       where compcode=:P101_COMP_NAME',
'       ',
'        AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1 ) p,',
'                        (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmslsofr',
'       where compcode=:P101_COMP_NAME',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) c',
'order by 1',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40010771336895102)
,p_query_column_id=>1
,p_column_alias=>'RECEIVABLE'
,p_column_display_sequence=>1
,p_column_heading=>'Receivable'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_PROGNAME:nmrcable'
,p_column_linktext=>'#RECEIVABLE#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40011155305895102)
,p_query_column_id=>2
,p_column_alias=>'PAYABLE'
,p_column_display_sequence=>2
,p_column_heading=>'Payable'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_PROGNAME:nmpyable'
,p_column_linktext=>'#PAYABLE#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40011564183895102)
,p_query_column_id=>3
,p_column_alias=>'RECEIPTS'
,p_column_display_sequence=>3
,p_column_heading=>'Receipts'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40011943679895102)
,p_query_column_id=>4
,p_column_alias=>'PAYMENT'
,p_column_display_sequence=>4
,p_column_heading=>'Payment'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(100529664661758239)
,p_name=>'Monthly'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--small:t-BadgeList--cols t-BadgeList--3cols'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.value Sales,b.value Purchase, p.value other_expenses',
'from (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmsalrec',
'       where compcode=:compcode',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) a,',
'        (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmsalrec',
'       where compcode=:compcode',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))) b,',
'    ( SELECT ',
'                 COUNT (DOCNUMBR) VALUE',
'            from nmsalrec',
'       where compcode=:compcode',
'       ',
'        AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1 ) p',
'order by 1',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40012659916895102)
,p_query_column_id=>1
,p_column_alias=>'SALES'
,p_column_display_sequence=>1
,p_column_heading=>'Sales'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_PROGNAME:nmslssum'
,p_column_linktext=>'#SALES#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40013034039895102)
,p_query_column_id=>2
,p_column_alias=>'PURCHASE'
,p_column_display_sequence=>2
,p_column_heading=>'Purchase'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_PROGNAME:nmmonpur'
,p_column_linktext=>'#PURCHASE#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40013423381895102)
,p_query_column_id=>3
,p_column_alias=>'OTHER_EXPENSES'
,p_column_display_sequence=>3
,p_column_heading=>'Other Expenses'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39998670402895098)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(40185215288778781)
,p_button_name=>'RECEIVABLE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Details'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_PROGNAME:nmrcable'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40000497214895098)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(40187103776780656)
,p_button_name=>'Payable'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Details'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_PROGNAME:nmpyable'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39996451510895097)
,p_name=>'354_P_QUARTER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(40075735495805057)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Quarter One'', 1 FROM DUAL',
'UNION ALL',
'SELECT ''Quarter Two'', 2 FROM DUAL',
'UNION ALL',
'SELECT ''Quarter Three'', 3 FROM DUAL',
'union all',
'SELECT ''Quarter Four'', 4 FROM DUAL'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40006552215895100)
,p_name=>'P354_TODAY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(101372166981345096)
,p_format_mask=>'DD-MON-RRRR'
,p_source=>'SELECT SYSDATE FROM DUAL;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40007204065895101)
,p_name=>'P354_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(100524914097758238)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40007591323895101)
,p_name=>'P354_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(100524914097758238)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40007990292895101)
,p_name=>'P354_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(100524914097758238)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40008487262895101)
,p_name=>'P354_USER_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(100524914097758238)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40008806153895101)
,p_name=>'P354_USER_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(100524914097758238)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40009237431895101)
,p_name=>'P354_MSG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(100524914097758238)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40009673232895101)
,p_name=>'P354_COMPNAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(100524914097758238)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40009993604895101)
,p_name=>'P354_COMPADD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(100524914097758238)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40014285348895102)
,p_name=>'RefreshQuarterRegion'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(40075735495805057)
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40014708834895103)
,p_event_id=>wwv_flow_api.id(40014285348895102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P_QUARTER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40013814403895102)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   vnmsession   NUMBER                   := :SESSION;',
'   v_pageid     NUMBER;',
'   v_link       VARCHAR2 (100);',
'   v1           VARCHAR2 (100);',
'   v_progtype   symenmas.progtype%TYPE;',
'BEGIN',
'',
'   SELECT cacmpnam,',
'          INITCAP (   caaddrs1',
'                   || caaddrs2',
'                   || '' ''',
'                   || caaddrs3',
'                   || '',  ''',
'                   || caaddrs4',
'                   || ''.''',
'                  )',
'     INTO :p354_compname,',
'          :p354_compadd',
'     FROM syparmas',
'    WHERE cacmpcde = :compcode;',
'',
'   --dpr_random_quotes (:p354_msg);',
'',
'   --DELETE FROM stglobtm    WHERE UPPER (colmc2) = UPPER (:app_user);',
'',
'   SELECT username, username, :app_user',
'     INTO :p354_user_name, :fx_username, :p354_user_id',
'     FROM syusrmas',
'    WHERE usercode = :APP_USER;',
'',
'',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      :p354_compname := ''Please Select Your Company'';',
'      when too_many_rows then',
'null;',
'when others then',
'null;',
'',
'END;',
'',
'--begin',
'--DPR_GENERATE_DASHBOARD(:COMPCODE,to_date(:P354_START_DATE,''DD-MON-RRRR''),to_date(:P354_END_DATE,''DD-MON-RRRR''));',
'--END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
