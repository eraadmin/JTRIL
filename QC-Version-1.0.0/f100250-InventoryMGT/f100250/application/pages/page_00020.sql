prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Product Info'
,p_step_title=>'Sample Database Application - Product Info'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_step_template=>wwv_flow_api.id(47558889541858112)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140745'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7733238944449111512)
,p_name=>'Product Information'
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_2'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ITEMCODE,',
'ITEMDES1,',
'ITEMCLAS,',
'SALERATE',
'from nmitemas where ITEMCODE = :P20_PRODUCT_ID',
'order by 1'))
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_sort_null=>'F'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63468842706709361)
,p_query_column_id=>1
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>1
,p_column_heading=>'Itemcode'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63468937262709366)
,p_query_column_id=>2
,p_column_alias=>'ITEMDES1'
,p_column_display_sequence=>2
,p_column_heading=>'Itemdes1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63469028543709366)
,p_query_column_id=>3
,p_column_alias=>'ITEMCLAS'
,p_column_display_sequence=>3
,p_column_heading=>'Itemclas'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63469136742709366)
,p_query_column_id=>4
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>4
,p_column_heading=>'Salerate'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7743732221435612203)
,p_name=>'Product Image'
,p_template=>wwv_flow_api.id(6746829791447480427)
,p_display_sequence=>5
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_2'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode(nvl(dbms_lob.getlength(ITEMCODE),0),0,null,''<img src="''||apex_util.get_blob_file_src(''P6_PRODUCT_IMAGE'',ITEMCODE)||''" />'') image',
'from nmitemas',
'where ITEMCODE = :P20_PRODUCT_ID',
'order by 1;'))
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_headings_type=>'NO_HEADINGS'
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
 p_id=>wwv_flow_api.id(7409545424397647579)
,p_query_column_id=>1
,p_column_alias=>'IMAGE'
,p_column_display_sequence=>1
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7733253040088195389)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7733238944449111512)
,p_button_name=>'CLOSE'
,p_button_static_id=>'CLOSE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Close this Window'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:window.close();'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7733240551722113587)
,p_name=>'P20_PRODUCT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7733238944449111512)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
