prompt --application/pages/page_10010_008
begin
--   Manifest
--     PAGE: 10010
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>10010011
,p_user_interface_id=>wwv_flow_api.id(100064779117690213)
,p_name=>'Landing Page Background Image'
,p_page_mode=>'MODAL'
,p_step_title=>'Landing Page Background Image'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img{',
'    width:200px;',
'    height:100px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20200908200956'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(111129454924713437)
,p_name=>'Report 1'
,p_template=>wwv_flow_api.id(99986191011690159)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--horizontal'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select SLNO,',
'       LDPGIMGNM AS LIST_TEXT,',
'       apex_util.prepare_url(''f?p=&APP_ID.:10010010:&APP_SESSION.::::P10010010_LDPGIMGNM:''||LDPGIMGNM) LINK,',
'       dbms_lob.getlength(LDPGIMAG) AS LIST_TITLE',
'  from SYLDPGBG',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(100008655810690165)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(111161656962896570)
,p_query_column_id=>1
,p_column_alias=>'SLNO'
,p_column_display_sequence=>4
,p_column_heading=>'Slno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(111162350209896577)
,p_query_column_id=>2
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>1
,p_column_heading=>'List Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(111162148299896575)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(111162210473896576)
,p_query_column_id=>4
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'List Title'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:SYLDPGBG:LDPGIMAG:SLNO::::::::'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(111161988866896574)
,p_plug_name=>'button'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(99961991426690149)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(111161911858896573)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(111161988866896574)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(100042305862690193)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(111161812865896572)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(111161911858896573)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(111161750183896571)
,p_event_id=>wwv_flow_api.id(111161812865896572)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.component_end;
end;
/
