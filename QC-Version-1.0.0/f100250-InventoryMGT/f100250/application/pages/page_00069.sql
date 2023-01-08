prompt --application/pages/page_00069
begin
--   Manifest
--     PAGE: 00069
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
 p_id=>69
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_tab_set=>'TS1'
,p_name=>'Sales  Application'
,p_step_title=>'Sales  Application'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_step_template=>wwv_flow_api.id(47564929163858117)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is the Home Page of the sales application which is developed by "ERA INFOTECH LTD".  It is intended to be a sales dashboard of sorts - displaying some metrics which are derived in real-time from the database.',
'<p>',
'The <strong>My Quota</strong> region is a Flash chart type called  Dial Chart.  It is dynamically rendered based on a SQL Statement each time the page is viewed.  <strong>My Top Orders</strong> displays the top five orders for the currently signed in'
||' user, based on order total.  The <strong>Tasks</strong> region is an example of using a List to provide easy navigation to common tasks.'))
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50901977305846905)
,p_plug_name=>'Sales for this Month'
,p_region_css_classes=>'m250'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(MSLCAMNT) total,sum(o.MSLCAMNT) high, ',
'1000000 max, ',
'0 low ',
'from nmsalrec o',
'where trunc(doctdate) >= trunc(sysdate)'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_header=>'<div style="width: 350px; margin: 24px auto 0 auto;">'
,p_plug_footer=>'</div>'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(749434710395243)
,p_region_id=>wwv_flow_api.id(50901977305846905)
,p_chart_type=>'dial'
,p_width=>'300'
,p_height=>'180'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
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
,p_no_data_found_message=>'No sales found for current month.'
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
 p_id=>wwv_flow_api.id(749530606395243)
,p_chart_id=>wwv_flow_api.id(749434710395243)
,p_seq=>10
,p_name=>'Series 1'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'"1"'
,p_items_max_value=>'"2"'
,p_items_label_column_name=>'"2"'
,p_color=>'#FFA500'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_gauge_plot_area_color=>'#FF6347'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50902799490846905)
,p_plug_name=>'Top sales by Date'
,p_region_css_classes=>'m250'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(o.doctdate,''Month DD, RRRR'') order_day,',
'       SUM(o.MSFCAMNT) sales,  ''f?p=&APP_ID.:4:''||:app_session||'':::RIR,4:IREQ_ORDER_DATE:''||trunc(doctdate) the_link',
'from nmsalrec o',
'where DOCTTYPE=''SI''',
'and SUBTTYPE=1',
'group by to_char(o.doctdate,''Month DD, RRRR''),trunc(doctdate)',
'order by 2 desc'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.CSS_BAR_CHART'
,p_attribute_01=>'VALUE_ABSOLUTE'
,p_attribute_10=>'5'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50903369445846907)
,p_plug_name=>'Tags'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag, tag_count',
'from demo_tags_sum',
'where tag_count > 0',
'order by 2 desc, 1'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TAG_CLOUD'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'f?p=&APP_ID.:30:&APP_SESSION.:::30:P30_SEARCH,P30_OPTIONS:#TAG#,T'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50903591779846910)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.prn(''<p class="searchNote">'');',
'sys.htp.prn(apex_lang.message(''SEARCH_TERM_BLURB''));',
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(50903973609846910)
,p_name=>'Top Customers'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>30
,p_region_css_classes=>'m250'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--3cols:t-Cards--featured'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.CUSTNAME ',
'|| '' - ''|| count(a.DOCNUMBR) ||'' Order(s)'' customer_name ',
', SUM(a.MSFCAMNT) order_total,  b.PARTYCDE id',
'FROM nmsalrec a, nmcusmas b',
'WHERE a.PARTYCDE = b.PARTYCDE',
'GROUP BY b.PARTYCDE, b.CUSTNAME',
'ORDER BY NVL(SUM(a.MSFCAMNT),0) DESC;'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47601390621858234)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>5
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50904192728846910)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:P8_CUSTOMER_ID:#ID#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50904297150846910)
,p_query_column_id=>2
,p_column_alias=>'ORDER_TOTAL'
,p_column_display_sequence=>2
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50904393233846910)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_column_alignment=>'RIGHT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(50904899335846910)
,p_name=>'Top Products'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>40
,p_region_css_classes=>'m250'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--3cols:t-Cards--featured'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select p.ITEMDESC||'' - ''||SUM(p.TRNSQNTY)||'' x ''||nvl(to_char(p.SALERATE,''L999G99''),0)||'''' product,',
'       SUM(p.TRNSQNTY * oi.SALERATE) sales,  p.ITEMCODE',
'from nmitemas  oi',
',    nmsalrec p',
'where oi.ITEMCODE = p.ITEMCODE',
'group by p.ITEMCODE, p.ITEMDESC, p.SALERATE',
'order by 3 ;'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47601390621858234)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>5
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50905096637846910)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9:P9_ITEMCODE:#PRODUCT_ID#'
,p_column_linktext=>'#PRODUCT#'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50905181544846910)
,p_query_column_id=>2
,p_column_alias=>'SALES'
,p_column_display_sequence=>2
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50905287385846910)
,p_query_column_id=>3
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>3
,p_column_heading=>'Itemcode'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50902386552846905)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(50901977305846905)
,p_button_name=>'VIEW_MONTH_ORDERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Sales for this Month'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RIR,10:P11:&P69_THIS_MONTH.'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50904680131846910)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(50903973609846910)
,p_button_name=>'VIEW_CUSTOMERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Customers'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50905591368846910)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(50904899335846910)
,p_button_name=>'VIEW_PRODUCTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Products'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50903193303846907)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(50902799490846905)
,p_button_name=>'VIEW_ORDERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Orders'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50904468804846910)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(50903973609846910)
,p_button_name=>'ADD_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Customer'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7:P7_BRANCH:1'
,p_button_css_classes=>'plus insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50905376074846910)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(50904899335846910)
,p_button_name=>'ADD_PRODUCT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Product'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6:P6_BRANCH:1'
,p_button_css_classes=>'plus insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50902978049846905)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(50902799490846905)
,p_button_name=>'ADD_ORDER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Enter New Order'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_BRANCH:1'
,p_button_css_classes=>'plus insetButton'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(50906070129846911)
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:1,30:P30_SEARCH:&P69_SEARCH.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 13-APR-2012 07:39 by MIKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50902567137846905)
,p_name=>'P69_THIS_MONTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(50901977305846905)
,p_prompt=>'This Month'
,p_source=>'select to_char(to_date(to_char(sysdate ,''rrMM'')||''01'',''RRMMDD''),''DS'') from dual'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50903769231846910)
,p_name=>'P69_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50903591779846910)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_css_classes=>'searchField fullWidth'
,p_field_alignment=>'CENTER-TOP'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(50905884466846911)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.component_end;
end;
/
