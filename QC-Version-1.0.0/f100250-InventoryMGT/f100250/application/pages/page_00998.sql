prompt --application/pages/page_00998
begin
--   Manifest
--     PAGE: 00998
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
 p_id=>998
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Management Dashboard'
,p_step_title=>'Management Dashboard'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P1_GROUPID',
'{',
'width:1%;',
'}'))
,p_step_template=>wwv_flow_api.id(47564929163858117)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_deep_linking=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is the Home Page of the Sales.  It is intended to be a sales dashboard of sorts - displaying some metrics which are derived in real-time from the database.',
'<p>',
'The <strong>My Quota</strong> region is a Flash chart type called  Dial Chart.  It is dynamically rendered based on a SQL Statement each time the page is viewed.  <strong>My Top Orders</strong> displays the top five orders for the currently signed in'
||' user, based on order total.  The <strong>Tasks</strong> region is an example of using a List to provide easy navigation to common tasks.'))
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140745'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97375911612039153)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>3
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.prn(''<p class="searchNote">'');',
'sys.htp.prn(apex_lang.message(''''));',
'sys.htp.prn(''</p>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<div class="sCustomSearch">'
,p_plug_footer=>'</div>'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97376693539039158)
,p_plug_name=>'Stock Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>240
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97377498319039161)
,p_plug_name=>'Frequently Used Product'
,p_parent_plug_id=>wwv_flow_api.id(97376693539039158)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>5
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.itemcode,s.itemname,sum(CLBALQTY)Stock_Quantity,nvl(sum(monthly_used),0)Monthly_Used',
'from vwitem_stock s,',
'(',
'SELECT ITEMCODE,',
'SUM(QUANTITY)MONTHLY_USED FROM ( ',
'select itemcode,itemname,to_char(doctdate,''MMRRRR'')MONTHLY_USES,sum(apprqnty)Quantity from vwitem_stock_issue',
'WHERE to_char(doctdate,''RRRR'')=TO_CHAR(SYSDATE,''RRRR'')',
'group by itemcode,itemname,to_char(doctdate,''MMRRRR''))a',
'GROUP BY ITEMCODE,ITEMNAME',
')u',
'where s.itemcode=u.itemcode(+)',
'group by s.itemcode,s.itemname',
'order by monthly_used desc'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(752874084395251)
,p_region_id=>wwv_flow_api.id(97377498319039161)
,p_chart_type=>'bar'
,p_title=>'Frequently Used Product'
,p_width=>'550'
,p_height=>'350'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
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
,p_legend_position=>'bottom'
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
 p_id=>wwv_flow_api.id(753161585395251)
,p_chart_id=>wwv_flow_api.id(752874084395251)
,p_seq=>5
,p_name=>'Stock Used'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(752945606395251)
,p_chart_id=>wwv_flow_api.id(752874084395251)
,p_axis=>'x'
,p_is_rendered=>'on'
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
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(753045216395251)
,p_chart_id=>wwv_flow_api.id(752874084395251)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97378724906039167)
,p_plug_name=>'Stock Value'
,p_parent_plug_id=>wwv_flow_api.id(97376693539039158)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:700px; height:450px"'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select itemcode,itemname,sum(value)Amount from vwitem_stock',
'group by itemcode,itemname',
'order by amount desc'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(755915986395256)
,p_region_id=>wwv_flow_api.id(97378724906039167)
,p_chart_type=>'bar'
,p_title=>'Stock Value'
,p_width=>'1000'
,p_height=>'500'
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
 p_id=>wwv_flow_api.id(756289569395256)
,p_chart_id=>wwv_flow_api.id(755915986395256)
,p_seq=>10
,p_name=>'Series 1'
,p_max_row_count=>30
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
 p_id=>wwv_flow_api.id(756035711395256)
,p_chart_id=>wwv_flow_api.id(755915986395256)
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
 p_id=>wwv_flow_api.id(756106358395256)
,p_chart_id=>wwv_flow_api.id(755915986395256)
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
 p_id=>wwv_flow_api.id(97379891116039170)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97383487073039175)
,p_plug_name=>'hide'
,p_parent_plug_id=>wwv_flow_api.id(97379891116039170)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>250
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(97384337146039175)
,p_name=>'Stock Overview'
,p_parent_plug_id=>wwv_flow_api.id(97379891116039170)
,p_template=>wwv_flow_api.id(60229823019866567)
,p_display_sequence=>210
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 410px; margin: 5px auto 0 auto;"'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum||''. ''||message customer_name,'' '' amount,page_id id from vwdashboard',
'where UPPER(boardname)=''STOCK''',
'and TRUNC(TRANDATE)=TRUNC(SYSDATE)',
'union all',
'select '' '' "customer_name" ,NULL  "amount" ,'' ''"id " from dual',
'connect by level <2',
'',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606387019858234)
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
 p_id=>wwv_flow_api.id(97384722092039175)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:41:P41_CUSTOMER_ID:#ID#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'100'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97385070635039176)
,p_query_column_id=>2
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>3
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97385491085039178)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_alignment=>'RIGHT'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(97385890300039178)
,p_name=>'Sales Overview'
,p_parent_plug_id=>wwv_flow_api.id(97379891116039170)
,p_template=>wwv_flow_api.id(60229823019866567)
,p_display_sequence=>200
,p_region_css_classes=>'m250'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 410px; margin: 5px auto 0 auto;"'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum||''. ''||message customer_name,'' '' amount,page_id id,pageurl purl from vwdashboard',
'where UPPER(boardname)=''SALES''',
'and TRUNC(TRANDATE)=TRUNC(SYSDATE)',
'order by GROUPID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606387019858234)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(97386279024039178)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'#PURL#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'100'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97386727415039178)
,p_query_column_id=>2
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>3
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97387089624039178)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_alignment=>'RIGHT'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97387560137039178)
,p_query_column_id=>4
,p_column_alias=>'PURL'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(97387927477039178)
,p_name=>'Customer Growth'
,p_parent_plug_id=>wwv_flow_api.id(97379891116039170)
,p_template=>wwv_flow_api.id(60229823019866567)
,p_display_sequence=>190
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 410px; margin: 5px auto 0 auto;"'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum||''. ''||message customer_name,'' '' amount,page_id id,pageurl purl,GROUPID   from vwdashboard',
'where boardname=''CUSTOMER''',
'and TRUNC(TRANDATE)=TRUNC(SYSDATE)',
'order by GROUPID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606387019858234)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
,p_prn_page_header_font_color=>'#1546D9'
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
 p_id=>wwv_flow_api.id(97388279659039180)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P1_GROUPID'',#PURL#);apex.submit();'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_column_link_attr=>'class="show_modal"'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'100'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:$s(''P1_GROUPID'',#PURL#);',
'class="show_modal" ',
'',
'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::P1_GROUPID:#PURL# ',
'',
'javascript:$s(''P1_GROUPID'',#PURL#);$(''#P1_GROUPID'').focus();'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97388726911039180)
,p_query_column_id=>2
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>3
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97389126670039180)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_alignment=>'RIGHT'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97389535551039180)
,p_query_column_id=>4
,p_column_alias=>'PURL'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97389908455039180)
,p_query_column_id=>5
,p_column_alias=>'GROUPID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(97390345147039180)
,p_name=>'Reports'
,p_parent_plug_id=>wwv_flow_api.id(97379891116039170)
,p_template=>wwv_flow_api.id(60229823019866567)
,p_display_sequence=>220
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 420px; margin: 5px auto 0 auto;"'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum||''. ''||message customer_name,PROGNAME amount,',
'''http://10.11.201.70:7001/reports/rwservlet?report=d:\orbrgs_web\nm\bin\''||progname url',
' from dashboard_group',
'where UPPER(boardname)=''REPORTS''',
'order by GROUPID'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606387019858234)
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
 p_id=>wwv_flow_api.id(97390743467039180)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'#URL#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'100'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97391128171039180)
,p_query_column_id=>2
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97391483828039180)
,p_query_column_id=>3
,p_column_alias=>'URL'
,p_column_display_sequence=>3
,p_print_col_width=>'0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97391886132039180)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>' style="width:100%;"'
,p_plug_template=>wwv_flow_api.id(60229823019866567)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(97392592617039181)
,p_name=>'Payable'
,p_parent_plug_id=>wwv_flow_api.id(97391886132039180)
,p_template=>wwv_flow_api.id(60229823019866567)
,p_display_sequence=>115
,p_region_css_classes=>'m250'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
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
'''<font color="red">''|| to_char(amount,''999,99,99,999.99'')||''</font>''',
'     when age1 > 90 then',
'     ''<font color="orange">''||to_char(amount,''999,99,99,999.99'')||''</font>''',
'     when age1 between 30 and 90 then',
'     ''<font color="#2E6CE8">''||to_char(amount,''999,99,99,999.99'')||''</font>''',
'     else',
'''<font color="green">''||to_char(amount,''999,99,99,999.99'')||''</font>''',
'end total,',
'''f?p=&APP_ID.:home:&SESSION.::&DEBUG.'' id ',
'from VW_accounts_PAYMENTDUE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597818077858193)
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
 p_id=>wwv_flow_api.id(97392998827039181)
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
 p_id=>wwv_flow_api.id(97393380204039183)
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
 p_id=>wwv_flow_api.id(97393815739039183)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_alignment=>'RIGHT'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(97394651033039183)
,p_name=>'Top 10 Payable (BDT)'
,p_parent_plug_id=>wwv_flow_api.id(97391886132039180)
,p_template=>wwv_flow_api.id(60229823019866567)
,p_display_sequence=>120
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
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
,p_query_row_template=>wwv_flow_api.id(47597818077858193)
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
 p_id=>wwv_flow_api.id(97395043460039183)
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
 p_id=>wwv_flow_api.id(97395390999039183)
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
 p_id=>wwv_flow_api.id(97395782908039183)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_column_alignment=>'RIGHT'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(97396235798039183)
,p_name=>'Top 10 Receivable (BDT)'
,p_parent_plug_id=>wwv_flow_api.id(97391886132039180)
,p_template=>wwv_flow_api.id(60229823019866567)
,p_display_sequence=>119
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 550; height=350;"'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.prtyname Customer_Name,nvl(sum(jvlcamnt),0)-',
'(select nvl(sum(jvlcamnt),0) from actrndtl B',
'where compcode = ''100''',
'--and  doctdate between nvl(:p11,doctdate) and nvl(:p12,doctdate)',
'and  nvl(jvlcamnt,0) != 0',
'and dbcrcode=''C''',
'and acctcode=b.acctcode',
'and subledcd=P.partycde',
'and docttype=(select DFRECDTY from accompar where doctdate between FINYEARB and FINYEARe and compcode = ''100''))',
'order_total,partycde ID from actrndtl B,SYCOMPTY P',
'where b.compcode = ''100''',
'--and  doctdate between nvl(:p11,doctdate) and nvl(:p12,doctdate)',
'and  nvl(jvlcamnt,0) != 0',
'and dbcrcode=''D''',
'and b.subledcd=p.partycde',
'AND ACCTCODE IN (SELECT ACCTCODE FROM SYCHRTAC WHERE (DEFARFLG=''Y'' OR ARACTFLG=''Y'')) ',
'and docttype=(select DFINVDTY from accompar where doctdate between FINYEARB and FINYEARe and compcode =''100'')',
'group by phonenum,prtyname,b.compcode,b.subledcd,partycde',
'order by nvl(sum(jvlcamnt),0) desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597818077858193)
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
 p_id=>wwv_flow_api.id(97396604653039183)
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
 p_id=>wwv_flow_api.id(97397066399039183)
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
 p_id=>wwv_flow_api.id(97397400803039184)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_column_alignment=>'RIGHT'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(97397840984039184)
,p_name=>'Receivable'
,p_parent_plug_id=>wwv_flow_api.id(97391886132039180)
,p_template=>wwv_flow_api.id(60229823019866567)
,p_display_sequence=>110
,p_region_css_classes=>'m250'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
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
'''f?p=&APP_ID.:home:&SESSION.::&DEBUG.'' id ',
'from vw_accounts_overdue',
'union all',
'select '' '' "customer_name" ,NULL  "total" ,'' ''"id " from dual',
'connect by level <2',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597818077858193)
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
 p_id=>wwv_flow_api.id(97398170158039184)
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
 p_id=>wwv_flow_api.id(97398587569039184)
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
 p_id=>wwv_flow_api.id(97398975553039184)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_alignment=>'RIGHT'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97399856390039184)
,p_plug_name=>'Sales Vs Purchase (Monthly)'
,p_parent_plug_id=>wwv_flow_api.id(97391886132039180)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>15
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.MM_YEAR,A.MON_YEAR,NVL(B.FCAMNT,0)"Purchase" FROM (',
'SELECT TO_CHAR(DT,''MMRRRR'')MM_YEAR,TO_CHAR(DT,''MON-RRRR'')MON_YEAR FROM (',
'SELECT ADD_MONTHS(TO_DATE(''0101''||TO_CHAR(sysdate,''RRRR''),''DDMMRRRR''),ROWNUM-1)DT FROM DUAL',
'CONNECT BY LEVEL <=12)',
')A,',
'(select TO_CHAR(DOCTDATE,''MMRRRR'')MM_YEAR,NVL(SUM(MSFCAMNT),0)FCAMNT,NVL(SUM(MSLCAMNT),0)LCAMNT from nmstkrec',
'WHERE to_char(doctdate,''RRRR'')=to_char(to_date(sysdate,''dd/mm/rr''),''RRRR'')',
'and docttype=''RC'' AND subttype=1',
'GROUP BY TO_CHAR(DOCTDATE,''MMRRRR'')',
')B',
'WHERE A.MM_YEAR=B.MM_YEAR(+)  ',
'order by to_number(mm_year)'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(755434442395256)
,p_region_id=>wwv_flow_api.id(97399856390039184)
,p_chart_type=>'bar'
,p_title=>'Sales Vs Purchase (Monthly)'
,p_width=>'600'
,p_height=>'400'
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
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
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
 p_id=>wwv_flow_api.id(755782334395256)
,p_chart_id=>wwv_flow_api.id(755434442395256)
,p_seq=>10
,p_name=>'Monthly Sales'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'triangleUp'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(755804811395256)
,p_chart_id=>wwv_flow_api.id(755434442395256)
,p_seq=>20
,p_name=>'monthly purchase'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'triangleUp'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(755582598395256)
,p_chart_id=>wwv_flow_api.id(755434442395256)
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
 p_id=>wwv_flow_api.id(755646803395256)
,p_chart_id=>wwv_flow_api.id(755434442395256)
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
 p_id=>wwv_flow_api.id(97401432132039186)
,p_plug_name=>'Monthly Purchase'
,p_parent_plug_id=>wwv_flow_api.id(97391886132039180)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.MM_YEAR,A.MON_YEAR,case when to_char(sysdate,''mmrrrr'')> a.mm_year and fcamnt>0   then B.FCAMNT',
'                                 when a.mm_year<= to_char(sysdate,''mmrrrr'') then nvl(FCAMNT,0) else fcamnt end "Purchase" FROM (',
'SELECT TO_CHAR(DT,''MMRRRR'')MM_YEAR,TO_CHAR(DT,''MON-RRRR'')MON_YEAR FROM (',
'SELECT TRUNC(ADD_MONTHS(FINYEARB,ROWNUM-1),''MM'')DT FROM (',
'SELECT FINYEARB,FINYEARE FROM ACCOMPAR',
'WHERE (yclosflg=''N'' or to_char(finyearb,''RRRR'')=TO_CHAR(SYSDATE,''RRRR''))',
')',
'CONNECT BY LEVEL <= ROUND(MONTHS_BETWEEN(FINYEARE,FINYEARB))',
'))A,',
'(select TO_CHAR(DOCTDATE,''MMRRRR'')MM_YEAR,NVL(SUM(MSFCAMNT),0)FCAMNT,NVL(SUM(MSLCAMNT),0)LCAMNT from nmstkrec',
'WHERE docttype=''RC'' AND subttype=1',
'GROUP BY TO_CHAR(DOCTDATE,''MMRRRR'')',
')B',
'WHERE A.MM_YEAR=B.MM_YEAR(+)  ',
'ORDER BY TO_DATE(''01''||MM_YEAR,''DDMMRRRR'') '))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(755045497395254)
,p_region_id=>wwv_flow_api.id(97401432132039186)
,p_chart_type=>'combo'
,p_title=>'Monthly Purchase'
,p_width=>'600'
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
,p_tooltip_rendered=>'N'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>false
,p_show_label=>false
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
 p_id=>wwv_flow_api.id(755315300395256)
,p_chart_id=>wwv_flow_api.id(755045497395254)
,p_seq=>10
,p_name=>'Purchase Series'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'line'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(755101369395254)
,p_chart_id=>wwv_flow_api.id(755045497395254)
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
 p_id=>wwv_flow_api.id(755236156395256)
,p_chart_id=>wwv_flow_api.id(755045497395254)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97402967760039187)
,p_plug_name=>'Quarterly Sales VS Purchase'
,p_parent_plug_id=>wwv_flow_api.id(97391886132039180)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.Q LINK,A.Q,NVL(B.AMOUNT,0)"Purchase" FROM (',
'SELECT ''1st Q ''||to_char(SYSDATE,''RRRR'')||'': JAN-MAR'' Q FROM DUAL',
'UNION ALL',
'SELECT ''2nd Q ''||to_char(SYSDATE,''RRRR'')||'': APR-JUN'' Q FROM DUAL',
'UNION ALL',
'SELECT ''3rd Q ''||to_char(SYSDATE,''RRRR'')||'': JUL-SEP'' Q FROM DUAL',
'UNION ALL',
'SELECT ''4th Q ''||to_char(SYSDATE,''RRRR'')||'': OCT-DEC'' Q FROM DUAL',
')A,',
'(SELECT QTR,Q,NVL(LCAMNT,0)AMOUNT FROM (',
'select 1 SL,''1st Q''||to_char(doctdate,''RRRR'')QTR,''1st Q ''||to_char(doctdate,''RRRR'')||'': JAN-MAR'' Q,NVL(SUM(MSFCAMNT),0)FCAMNT,NVL(SUM(MSLCAMNT),0)LCAMNT from NMSTKREC ',
'WHERE TO_CHAR(doctdate,''MM'') BETWEEN ''01'' AND ''03'' ',
'AND to_char(doctdate,''RRRR'')=to_char(SYSDATE,''RRRR'')',
'AND DOCTTYPE=''RC'' AND SUBTTYPE=1',
'group by to_char(doctdate,''RRRR'') ',
'UNION ALL ',
'select 3 SL,''2nd Q''||to_char(doctdate,''RRRR'')QTR,''2nd Q ''||to_char(doctdate,''RRRR'')||'': APR-JUN'' Q,NVL(SUM(MSFCAMNT),0)FCAMNT,NVL(SUM(MSLCAMNT),0)LCAMNT from NMSTKREC ',
'WHERE TO_CHAR(doctdate,''MM'') BETWEEN ''04'' AND ''06'' ',
'AND to_char(doctdate,''RRRR'')=to_char(SYSDATE,''RRRR'')',
'AND DOCTTYPE=''RC'' AND SUBTTYPE=1',
'group by to_char(doctdate,''RRRR'') ',
'UNION ALL ',
'select 5 SL,''3rd Q''||to_char(doctdate,''RRRR'')QTR,''3rd Q ''||to_char(doctdate,''RRRR'')||'': JUL-SEP'' Q,NVL(SUM(MSFCAMNT),0)FCAMNT,NVL(SUM(MSLCAMNT),0)LCAMNT from NMSTKREC ',
'WHERE TO_CHAR(doctdate,''MM'') BETWEEN ''07'' AND ''09'' ',
'AND to_char(doctdate,''RRRR'')=to_char(SYSDATE,''RRRR'')',
'AND DOCTTYPE=''RC'' AND SUBTTYPE=1',
'group by to_char(doctdate,''RRRR'') ',
'UNION ALL ',
'select 7 SL,''4th Q''||to_char(doctdate,''RRRR'')QTR,''4th Q ''||to_char(doctdate,''RRRR'')||'': OCT-DEC'' Q,NVL(SUM(MSFCAMNT),0)FCAMNT,NVL(SUM(MSLCAMNT),0)LCAMNT from NMSTKREC ',
'WHERE TO_CHAR(doctdate,''MM'') BETWEEN ''10'' AND ''12''',
'AND DOCTTYPE=''RC'' AND SUBTTYPE=1',
'AND to_char(doctdate,''RRRR'')=to_char(SYSDATE,''RRRR'')',
'group by to_char(doctdate,''RRRR'') ',
')',
'ORDER BY SL',
')B',
'WHERE A.Q=B.Q(+)',
''))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(754563873395254)
,p_region_id=>wwv_flow_api.id(97402967760039187)
,p_chart_type=>'bar'
,p_title=>'Sales VS Purchase(Quarterly)'
,p_width=>'600'
,p_height=>'400'
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
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
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
 p_id=>wwv_flow_api.id(754805435395254)
,p_chart_id=>wwv_flow_api.id(754563873395254)
,p_seq=>10
,p_name=>'Q Sales'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(754985662395254)
,p_chart_id=>wwv_flow_api.id(754563873395254)
,p_seq=>20
,p_name=>'Q Purchase'
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
 p_id=>wwv_flow_api.id(754613814395254)
,p_chart_id=>wwv_flow_api.id(754563873395254)
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
 p_id=>wwv_flow_api.id(754733965395254)
,p_chart_id=>wwv_flow_api.id(754563873395254)
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
 p_id=>wwv_flow_api.id(97404640728039187)
,p_plug_name=>' Monthly Sales'
,p_parent_plug_id=>wwv_flow_api.id(97391886132039180)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>5
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.MM_YEAR,A.MON_YEAR,B.FCAMNT "Sales" FROM (',
'SELECT TO_CHAR(DT,''MMRRRR'')MM_YEAR,TO_CHAR(DT,''MON-RRRR'')MON_YEAR FROM (',
'SELECT TRUNC(ADD_MONTHS(FINYEARB,ROWNUM-1),''MM'')DT FROM (',
'SELECT FINYEARB,FINYEARE FROM ACCOMPAR',
'WHERE (yclosflg=''N'' or to_char(finyearb,''RRRR'')=TO_CHAR(SYSDATE,''RRRR''))',
')',
'CONNECT BY LEVEL <= ROUND(MONTHS_BETWEEN(FINYEARE,FINYEARB))',
'))A,',
'(select TO_CHAR(DOCTDATE,''MMRRRR'')MM_YEAR,NVL(SUM(MSFCAMNT),0)FCAMNT,NVL(SUM(MSLCAMNT),0)LCAMNT from nmsalrec',
'GROUP BY TO_CHAR(DOCTDATE,''MMRRRR''))B',
'WHERE A.MM_YEAR=B.MM_YEAR(+)  ',
'ORDER BY TO_DATE(''01''||MM_YEAR,''DDMMRRRR'')'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(754108919395254)
,p_region_id=>wwv_flow_api.id(97404640728039187)
,p_chart_type=>'combo'
,p_title=>'Monthly Sales'
,p_width=>'600'
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
,p_tooltip_rendered=>'N'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>false
,p_show_label=>false
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
 p_id=>wwv_flow_api.id(754426038395254)
,p_chart_id=>wwv_flow_api.id(754108919395254)
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
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(754215595395254)
,p_chart_id=>wwv_flow_api.id(754108919395254)
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
 p_id=>wwv_flow_api.id(754335040395254)
,p_chart_id=>wwv_flow_api.id(754108919395254)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97406198200039190)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>70
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align:right; height:20px; top: 10px;left: 50%;font-size:12px;color:white; font-weight:bold;"><br>User: &P998_USER_ID.<Br>&P998_USER_NAME.<Br><a  href="apex_authentication.logout?p_app_id=100101&p_session_id=12726700067347" ><font >Lo'
||'gout</font></a><br><a href="f?p=&APP_ID.:82:&SESSION."><font >Change Password</font></a></font></font>',
'</div>',
'',
'<div style="text-align:center; height:20px; position:absolute;position: absolute; top: 10px;left: 50%; margin-left: -160px;font-size:16px;color:''#336633''; font-weight:bold;">&P998_COMPNAME.<br><font size=''2'' color=''#336633''>&P998_COMPADD.</font>',
'</div>',
''))
,p_plug_query_row_template=>wwv_flow_api.id(10462821864170409311)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align:right; height:20px; top: 10px;left: 50%;font-size:14px;color:white; font-weight:bold;"><br>User: &P1_USER_ID.<Br>&P1_USER_NAME.<Br><a  href="apex_authentication.logout?p_app_id=102&p_session_id=12726700067347"><font>Logout</fon'
||'t></a></font></font>',
'</div>',
'<div>',
'<html>',
'<head>',
'<script type="text/javascript">',
'function startTime()',
'{',
'var today=new Date();',
'var h=today.getHours();',
'var m=today.getMinutes();',
'var s=today.getSeconds();',
'var don="AM"',
'// add a zero in front of numbers<10',
'm=checkTime(m);',
's=checkTime(s);',
'',
'if (h>=12){ don="PM" }',
'if (h>12) { h-=12 }',
'if (h==0) { h=12 }',
'',
'document.getElementById(''txt'').innerHTML=h+":"+m+":"+s+" "+don;',
't=setTimeout(''startTime()'',500);',
'}',
'',
'function checkTime(i)',
'{',
'if (i<10)',
'  {',
'  i="0" + i;',
'  }',
'return i;',
'}',
'</script>',
'</head>',
'<body onload="startTime()">',
'<div id="txt"></div>',
'</body>',
'</html>',
'</div>'))
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
 p_id=>wwv_flow_api.id(97406621265039192)
,p_plug_name=>'RegioinTargetWeeklySales'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>220
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97407001717039192)
,p_plug_name=>'Weekly Sales'
,p_parent_plug_id=>wwv_flow_api.id(97406621265039192)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:650px; height:450px"'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>150
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.MM_YEAR,A.MM_YEAR "Week",sum(nvl(B.FCAMNT,0)) "Sales" FROM ',
'(SELECT DISTINCT TO_CHAR(TRUNC(DT),''WW'') MM_YEAR FROM ',
'(SELECT TO_DATE(''01012014'',''DDMMRRRR'')-1 + rownum DT FROM DUAL CONNECT BY LEVEL <= 365',
')',
'ORDER BY TO_NUMBER(TO_CHAR(TRUNC(DT),''WW'')))A,',
'(select TO_CHAR(TRUNC(DOCTDATE),''WW'') MM_YEAR,NVL(SUM(MSFCAMNT),0)FCAMNT,NVL(SUM(MSLCAMNT),0)LCAMNT from nmsalrec',
'GROUP BY TRUNC(DOCTDATE))B',
'WHERE A.MM_YEAR=B.MM_YEAR(+)',
'group by a.mm_year  ',
'order by to_number(mm_year)'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(753756409395251)
,p_region_id=>wwv_flow_api.id(97407001717039192)
,p_chart_type=>'combo'
,p_width=>'650'
,p_height=>'450'
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
,p_tooltip_rendered=>'N'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>false
,p_show_label=>false
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
 p_id=>wwv_flow_api.id(754040895395254)
,p_chart_id=>wwv_flow_api.id(753756409395251)
,p_seq=>10
,p_name=>'Series 1'
,p_max_row_count=>60
,p_location=>'REGION_SOURCE'
,p_series_type=>'line'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(753888346395251)
,p_chart_id=>wwv_flow_api.id(753756409395251)
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
 p_id=>wwv_flow_api.id(753956009395251)
,p_chart_id=>wwv_flow_api.id(753756409395251)
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
 p_id=>wwv_flow_api.id(97408201423039192)
,p_plug_name=>'Target Vs Achivement'
,p_parent_plug_id=>wwv_flow_api.id(97406621265039192)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:650px; height:450px"'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>145
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.MM_YEAR,a.mon_year,b.total_amount amount from vwacfnyr a,(',
' SELECT   S.smancode, INITCAP (S.smanname) smanname, TO_CHAR (doctdate, ''MMRRRR'') mm,',
'   T.TRGTAMNT TARGET,NVL(SUM(COMMSION),0)COMMISION,',
'    SUM (apprqnty) saleqnty, ',
'    SUM (msfcamnt) total_amount',
'             FROM vwnmsals S,NMSMNTRG T',
'             WHERE S.COMPCODE=T.COMPCODE(+)',
'             AND S.SMANCODE=T.SMANCODE(+)',
'             AND TO_CHAR (S.doctdate, ''MMRRRR'')=TO_CHAR(T.TRGTDATE(+),''MMRRRR'')',
'          GROUP BY S.smancode, S.smanname, t.TRGTAMNT, TO_CHAR (doctdate, ''MMRRRR''),TO_CHAR (doctdate, ''MON'')',
'          ) b',
'where a.mm_year=b.mm(+)  ',
'order by a.mm_year     '))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(753279057395251)
,p_region_id=>wwv_flow_api.id(97408201423039192)
,p_chart_type=>'combo'
,p_title=>'Target Vs Achivement'
,p_width=>'650'
,p_height=>'450'
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
,p_tooltip_rendered=>'N'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>false
,p_show_label=>false
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
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
 p_id=>wwv_flow_api.id(753566647395251)
,p_chart_id=>wwv_flow_api.id(753279057395251)
,p_seq=>10
,p_name=>'Series 1'
,p_max_row_count=>60
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(753637273395251)
,p_chart_id=>wwv_flow_api.id(753279057395251)
,p_seq=>20
,p_name=>'ACTUAL SALE'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'line'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(753340281395251)
,p_chart_id=>wwv_flow_api.id(753279057395251)
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
 p_id=>wwv_flow_api.id(753427782395251)
,p_chart_id=>wwv_flow_api.id(753279057395251)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97409840252039194)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(97408201423039192)
,p_button_name=>'P998_TARGET'
,p_button_static_id=>'P1_TARGET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Show Details'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97380353764039170)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_api.id(97379891116039170)
,p_button_name=>'P998_BACKBUTTON'
,p_button_static_id=>'P1_BACKBUTTON'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back To Home'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:998:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97413025014039198)
,p_button_sequence=>10
,p_button_name=>'VIEW_MONTH_ORDERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View target details'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RIR,4:IRGTE_ORDER_DATE:&P998_THIS_MONTH.'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97410656702039198)
,p_button_sequence=>20
,p_button_name=>'VIEW_CUSTOMERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Customers'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97410990767039198)
,p_button_sequence=>40
,p_button_name=>'VIEW_PRODUCTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Products'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97411410642039198)
,p_button_sequence=>60
,p_button_name=>'VIEW_ORDERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Orders'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97411860063039198)
,p_button_sequence=>80
,p_button_name=>'VIEW_MONTH_BUDGET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Budget for this Month'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RIR,4:IRGTE_ORDER_DATE:&P998_THIS_MONTH.'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97410170246039194)
,p_button_sequence=>90
,p_button_name=>'VIEW_RECEIVABLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Receivable'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:37::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97412225482039198)
,p_button_sequence=>90
,p_button_name=>'VIEW_RECEIVABLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Receivable'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:37::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97412642149039198)
,p_button_sequence=>90
,p_button_name=>'VIEW_Payable'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Payable'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:41::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97377138018039159)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(97376693539039158)
,p_button_name=>'VIEW_DETAILS_STOCK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Details'
,p_button_position=>'RIGHT_OF_TITLE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97399410109039184)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(97397840984039184)
,p_button_name=>'RECEIVABLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Details'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97394175962039183)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(97392592617039181)
,p_button_name=>'Payable'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Details'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97405854579039189)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(97404640728039187)
,p_button_name=>'VIEW_DETAILS_MNTHSALE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Details'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97402568087039187)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(97401432132039186)
,p_button_name=>'VIEW_DETAILS_MNTHPUR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Details'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(97430150733039219)
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:1,30:P30_SEARCH:&P1_SEARCH.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
,p_branch_comment=>'Created 13-APR-2012 07:39 by MIKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97376341846039155)
,p_name=>'P998_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(97375911612039153)
,p_prompt=>'Search customers, orders and product data'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_css_classes=>'searchField fullWidth'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97380763100039170)
,p_name=>'P998_START_DATE'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(97379891116039170)
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT to_char(FINYEARB,''dd/mm/rrrr'') FROM ACCOMPAR',
'WHERE (yclosflg=''N'' or to_char(finyearb,''RRRR'')=TO_CHAR(SYSDATE,''RRRR''))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_rowspan=>3
,p_grid_column=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97381107774039170)
,p_name=>'P998_END_DATE'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(97379891116039170)
,p_prompt=>'End Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT to_char(FINYEARE,''dd/mm/rrrr'') FROM ACCOMPAR',
'WHERE (yclosflg=''N'' or to_char(finyearb,''RRRR'')=TO_CHAR(SYSDATE,''RRRR''))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97381554843039170)
,p_name=>'P998_APPOINTDATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(97379891116039170)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_privname varchar2(500);',
'v_appcunt  varchar2(500);',
'BEGIN',
'',
'select distinct PRIVNAME',
'into v_privname',
'from syprivlg',
'where USERCODE=:APP_USER',
'and COMPCODE=''100''',
'and PRIVCODE=''002''',
'and GRANTCDE=''Y'';',
'',
'Select distinct ''(''||(select count(count(Distinct Docnumbr))from nmreqapr',
'where  COMPCODE=s.compcode',
'and USERCODE=:APP_USER',
'and STATUSCD=''NEW''',
'group by DOCNUMBR)||'')'' as docnum',
'into v_appcunt',
'From SYDOCMAS s',
'Where s.compcode = ''100''',
';',
'return(v_appcunt||'' ''||v_privname);',
'   ',
'exception',
'when others then null; ',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_css_classes=>'searchField fullWidth'
,p_tag_attributes=>'style="width: 100%; color: #6633FF; font-weight: bold; font-size: 120%; margin-right: -188%;float:right;"'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97381944326039172)
,p_name=>'P998_XURLTEST'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(97379891116039170)
,p_prompt=>'Xurltest'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97382304016039172)
,p_name=>'P998_XURL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(97379891116039170)
,p_prompt=>'Xurl'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97382694749039172)
,p_name=>'P998_PROGNAME'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(97379891116039170)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Progname'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97383074041039172)
,p_name=>'P998_XURLTEST_BUTTON'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(97379891116039170)
,p_prompt=>'Xurltest Button'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97383882134039175)
,p_name=>'P998_GROUPID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(97383487073039175)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>1
,p_cMaxlength=>4000
,p_cHeight=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pageurl from vwdashboard',
'where boardname=''CUSTOMER''',
'and pageurl=:P998_XURL'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97392333060039181)
,p_name=>'P998_THIS_MONTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(97391886132039180)
,p_prompt=>'This Month'
,p_source=>'select to_char(to_date(to_char(sysdate ,''YYMM'')||''01'',''YYMMDD''),''DS'') from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97413432899039198)
,p_name=>'P998_COMPNAME'
,p_item_sequence=>30
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Compname'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97413777525039198)
,p_name=>'P998_COMPADD'
,p_item_sequence=>40
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Compadd'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97414177409039198)
,p_name=>'P998_VALDFLAG'
,p_item_sequence=>50
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Valdflag'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97414648868039198)
,p_name=>'P998_USER_NAME'
,p_item_sequence=>60
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'User Name'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97415003706039198)
,p_name=>'P998_USER_ID'
,p_item_sequence=>70
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'User Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97415462744039198)
,p_name=>'P998_PROGID'
,p_item_sequence=>80
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Progid'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97415839135039200)
,p_name=>'P998_MSG'
,p_item_sequence=>90
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Msg'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97416259002039200)
,p_name=>'P998_BUDGET_THIS_MONTH'
,p_item_sequence=>100
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'This Month'
,p_source=>'select to_char(to_date(to_char(sysdate ,''YYMM'')||''01'',''YYMMDD''),''DS'') from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(97416668941039200)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97426393884039215)
,p_name=>'Stock ledger card report generate'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(62577910087248739)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97426929856039215)
,p_event_id=>wwv_flow_api.id(97426393884039215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_PROGNAME,P4_BOARDNAME,P4_HIDECNCBTN:nmstklgr,4,1'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'92'
,p_attribute_09=>'95'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97423682591039215)
,p_name=>'Receivable Report genterate'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(62562823798817422)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97424183651039215)
,p_event_id=>wwv_flow_api.id(97423682591039215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_PROGNAME,P4_BOARDNAME,P4_HIDECNCBTN:nmrcable,1,1'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'92'
,p_attribute_09=>'95'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97424586630039215)
,p_name=>'Payable Report Generate'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(62563219454821571)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97425091272039215)
,p_event_id=>wwv_flow_api.id(97424586630039215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_PROGNAME,P4_BOARDNAME,P4_HIDECNCBTN:nmpyable,2,1'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'92'
,p_attribute_09=>'95'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97417775714039206)
,p_name=>'Monthly Sales generate'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(62577514804240624)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97418283653039211)
,p_event_id=>wwv_flow_api.id(97417775714039206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_PROGNAME,P4_BOARDNAME,P4_HIDECNCBTN:nmslssum,4,1'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'92'
,p_attribute_09=>'95'
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97418704937039214)
,p_name=>'purchase'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(62577700737246103)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97419224933039214)
,p_event_id=>wwv_flow_api.id(97418704937039214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_PROGNAME,P4_BOARDNAME,P4_HIDECNCBTN:nmmonpur,4,1'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'92'
,p_attribute_09=>'95'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97419643655039214)
,p_name=>'Sales and target v achievement'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40535296054280508)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97420162421039214)
,p_event_id=>wwv_flow_api.id(97419643655039214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_PROGNAME,P4_BOARDNAME,P4_HIDECNCBTN:nmtrgach,4,1'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'92'
,p_attribute_09=>'95'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97420475058039214)
,p_name=>'modal window'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P998_GROUPID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'document.getElementById("P998_GROUPID").value != '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97421035746039214)
,p_event_id=>wwv_flow_api.id(97420475058039214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P998_XURLTEST'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:&P998_GROUPID.:&SESSION.::&DEBUG.::'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'92'
,p_attribute_09=>'95'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97421489033039214)
,p_event_id=>wwv_flow_api.id(97420475058039214)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P998_GROUPID'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97421929391039214)
,p_name=>'Call new tab page from report link'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.show_modal'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>' $v(''P998_XURLTEST'') !== '' '''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97422444599039214)
,p_event_id=>wwv_flow_api.id(97421929391039214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open(''http://10.11.201.70:8082/apex/&P998_XURLTEST.'', ''_blank'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97427365334039215)
,p_name=>'hostname set in P6_XURL'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.button-alt1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97427833443039215)
,p_event_id=>wwv_flow_api.id(97427365334039215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P998_XURL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'location.hostname;'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97429164250039219)
,p_name=>'hostname set in global item'
,p_event_sequence=>100
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.button-alt1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97429639261039219)
,p_event_id=>wwv_flow_api.id(97429164250039219)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':XURL:=:P998_XURLTEST_BUTTON;',
'end;'))
,p_attribute_02=>'P998_XURLTEST_BUTTON'
,p_attribute_03=>'XURL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97428239532039215)
,p_name=>'url genetate in P998_XURLTEST_BUTTON'
,p_event_sequence=>110
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.button-alt1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97428749623039219)
,p_event_id=>wwv_flow_api.id(97428239532039215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P998_XURLTEST_BUTTON'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2015/01/21 12:15 (Formatter Plus v4.8.8) */',
'DECLARE',
'   l_error      VARCHAR2 (4000);',
'   sale         VARCHAR2 (4000);',
'   item         VARCHAR2 (4000);',
'   v_url        VARCHAR2 (500);',
'   v_devdoc     VARCHAR2 (500);',
'   v_gatdoc     VARCHAR2 (500);',
'   l_order_id   VARCHAR2 (50);',
'   l_seq        NUMBER;',
'BEGIN',
' ',
'      v_url :=',
'            ''http://''',
'         || :p998_xurl',
'         || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=''',
';',
'    --  v_url := v_url || ''P13='' || :F_EMPNO_LIST;',
'return v_url;',
' ',
'',
'  ',
'END;'))
,p_attribute_07=>'P998_XURL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97422817389039214)
,p_name=>'value assign into item'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P998_GROUPID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97423309171039215)
,p_event_id=>wwv_flow_api.id(97422817389039214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P998_XURL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pageurl purl   from vwdashboard',
'where boardname=''CUSTOMER''',
'and pageurl=:P998_GROUPID'))
,p_attribute_07=>'P998_GROUPID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97425557550039215)
,p_name=>'clear group id'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97425977312039215)
,p_event_id=>wwv_flow_api.id(97425557550039215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P998_GROUPID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(97416993830039204)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2015/01/19 15:44 (Formatter Plus v4.8.8) */',
'   --system',
'',
'',
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
'     INTO :p998_compname,',
'          :p998_compadd',
'     FROM syparmas',
'    WHERE cacmpcde = ''100'';',
'',
'   dpr_random_quotes (:p998_msg);',
'',
'   DELETE FROM stglobtm',
'         WHERE UPPER (colmc2) = UPPER (:app_user);',
'',
'   SELECT username, username, :app_user',
'     INTO :p998_user_name, :fx_username, :p998_user_id',
'     FROM syusrmas',
'    WHERE usercode = :APP_USER;',
'',
'   FOR c1 IN (SELECT DISTINCT a.compcode, a.usercode, a.parentnm, a.progname,',
'                              a.menuleaf',
'                         FROM syrights a',
'                        WHERE a.compcode = ''100''',
'                          AND a.usercode = :app_user',
'              UNION',
'              SELECT DISTINCT :compcode compcode, :app_user usercode,',
'                              a.parentnm, a.progname, a.menuleaf',
'                         FROM syrights a',
'                        WHERE compcode = ''100''',
'                              AND a.usercode = :app_user',
'              UNION',
'              SELECT :compcode compcode, :app_user usercode, ''ROOTP'',',
'                     ''ROOT'' progname, ''M'' menuleaf',
'                FROM DUAL',
'               WHERE :compcode IS NOT NULL)',
'   LOOP',
'      v_link := NULL;',
'',
'      IF c1.menuleaf = ''L''',
'      THEN',
'         BEGIN',
'            SELECT pageid, progtype',
'              INTO v_pageid, v_progtype',
'              FROM symenmas b',
'             WHERE progname = c1.progname;',
'         EXCEPTION',
'            WHEN NO_DATA_FOUND',
'            THEN',
'               v_pageid := NULL;',
'               v_progtype := ''F'';',
'         END;',
'',
'         IF v_pageid IS NOT NULL AND v_progtype IN (''R'', ''F'')',
'         THEN',
'            v_link :=',
'                  ''javascript:change_page(''''''',
'               || c1.progname',
'               || '''''',''',
'               || v_pageid',
'               || '',''''''',
'               || c1.parentnm',
'               || '''''',''''''',
'               || v_progtype',
'               || '''''')'';',
'         END IF;',
'      ELSE',
'         v_progtype := ''F'';',
'      END IF;',
'',
'      INSERT INTO stglobtm',
'                  (colmc1, colmc2, colmc3, colmc4,',
'                   colmc5, colmc7',
'                  )',
'           VALUES (c1.compcode, c1.usercode, c1.parentnm, c1.progname,',
'                   c1.menuleaf, v_link',
'                  );',
'   END LOOP;',
'',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      :p998_compname := ''Please Select Your Company'';',
'',
'END;',
'',
'',
'begin',
'DPR_GENERATE_DASHBOARD(''100'',to_date(:P998_START_DATE,''dd/mm/rrrr''),to_date(:P998_END_DATE,''dd/mm/rrrr''));',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(97417399858039206)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LOAD URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_APPID NUMBER:=v(''APP_ID'');',
'V_APPSES NUMBER:=v(''APP_SESSION'');',
'V_APAGEID VARCHAR2(10);',
'BEGIN',
'SELECT PAGEURL',
'INTO V_APAGEID',
'FROM DASHBOARD_GROUP',
'WHERE GROUPID=NVL(:P998_GROUPID,1);',
'',
':P998_XURLTEST := ''f?p=''||V_APPID||'':''||V_APAGEID||'':''||V_APPSES;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
