prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_tab_set=>'%null%'
,p_name=>'Order Summary'
,p_step_title=>'Sample Database Application - Order Summary'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_step_template=>wwv_flow_api.id(47564929163858117)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140745'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4177697762236969313)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_02'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7570458831286686501)
,p_plug_name=>'Order Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(7550106942428250283)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7575855314374494948)
,p_plug_name=>'Order Summary'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1029425192036972129)
,p_plug_display_sequence=>50
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
 p_id=>wwv_flow_api.id(7570361032466421843)
,p_plug_name=>'Order Header'
,p_parent_plug_id=>wwv_flow_api.id(7575855314374494948)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'for x in (select c.cust_first_name, c.cust_last_name, cust_street_address1, cust_street_address2, cust_city, cust_state, cust_postal_code from demo_customers c, demo_orders o',
'where c.customer_id = o.customer_id and o.order_id = :P14_ORDER_ID)',
'loop',
'  htp.p(''<span style="font-size:16px;font-weight:bold;">ORDER #'' || apex_escape.html(:P14_ORDER_ID) || ''</span><br />'');',
'  htp.p(apex_escape.html(x.cust_first_name) || '' '' || apex_escape.html(x.cust_last_name) || ''<br />'');',
'  htp.p(apex_escape.html(x.cust_street_address1) || ''<br />'');',
'  if x.cust_street_address2 is not null then',
'      htp.p(apex_escape.html(x.cust_street_address2) || ''<br />'');',
'  end if;',
'  htp.p(apex_escape.html(x.cust_city) || '', '' || apex_escape.html(x.cust_state) || ''  '' || apex_escape.html(x.cust_postal_code) || ''<br /><br />'');',
'end loop;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7570376546243520414)
,p_name=>'Order Lines'
,p_parent_plug_id=>wwv_flow_api.id(7575855314374494948)
,p_template=>wwv_flow_api.id(6746829791447480427)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.ITEMDES1, oi.SALERATE, oi.WARECODE, (oi.SALERATE * oi.WARECODE) exteneded_price   ',
'from apex_order_items1 oi, nmitemas p',
'where oi.ITEMCODE = p.ITEMCODE and oi.order_id = :P14_ORDER_ID'))
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Report Total'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63473025864537611)
,p_query_column_id=>1
,p_column_alias=>'ITEMDES1'
,p_column_display_sequence=>2
,p_column_heading=>'Itemdes1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63473140705537614)
,p_query_column_id=>2
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>3
,p_column_heading=>'Salerate'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63473215119537614)
,p_query_column_id=>3
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>4
,p_column_heading=>'Warecode'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7570378747622533993)
,p_query_column_id=>4
,p_column_alias=>'EXTENEDED_PRICE'
,p_column_display_sequence=>1
,p_column_heading=>'Subtotal'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7575855922124506571)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(4177697762236969313)
,p_button_name=>'HOME'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Orders'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7570355842939405957)
,p_name=>'P14_ORDER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7570376546243520414)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.component_end;
end;
/
