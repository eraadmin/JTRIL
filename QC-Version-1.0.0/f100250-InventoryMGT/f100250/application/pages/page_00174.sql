prompt --application/pages/page_00174
begin
--   Manifest
--     PAGE: 00174
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
 p_id=>174
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Project Milestone'
,p_page_mode=>'MODAL'
,p_step_title=>'Project Milestone'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124816'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(96518278185923461)
,p_plug_name=>'Hidden'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(96519482792923463)
,p_name=>'Milestone'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>20
,p_region_css_classes=>'flex_milestones'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY_1'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct m.DOCNUMBR ID,',
'    m.ITEMDESC  title,',
'    case when m.STATUSCD = ''APR'' then',
'            ''Black''',
'        when trunc(m.DOCTDATE) < trunc(current_date) then',
'            ''Red''',
'        when trunc(m.DOCTDATE) = trunc(current_date) then',
'            ''Yellow''',
'        else',
'            ''Green''',
'    end as color,',
'    NULL link,',
'    (select WAREDESC from nmwhsmas ',
'       where compcode=m.compcode',
'       and WARECODE=m.WARECODE) project,',
'       NULL description3,',
'    (select CUSTNAME from nmcusmas ',
'       where compcode=m.compcode',
'       and CUSTMRID=m.CUSTMRID) description,',
'    DOCTDATE milestone_date,',
'    STATUSCD milestone_status,',
'    DOCTDATE milestone_start_date,',
'    NULL milestone_owner,',
'    NULL ai_open',
'from nmsalrec m',
'where m.compcode=:compcode',
'    and m.DOCNUMBR = :P174_PROJECT_ID',
'order by DOCTDATE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47609590927858256)
,p_query_num_rows=>1
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
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
 p_id=>wwv_flow_api.id(96550333981926464)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(96550730761926464)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Title'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(96551086799926464)
,p_query_column_id=>3
,p_column_alias=>'COLOR'
,p_column_display_sequence=>4
,p_column_heading=>'Color'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(96551549070926464)
,p_query_column_id=>4
,p_column_alias=>'LINK'
,p_column_display_sequence=>5
,p_column_heading=>'Link'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(96519908132923463)
,p_query_column_id=>5
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(96551867166926466)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION3'
,p_column_display_sequence=>6
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(96779610509093769)
,p_query_column_id=>7
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>12
,p_column_heading=>'Description'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(96552715117926467)
,p_query_column_id=>8
,p_column_alias=>'MILESTONE_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(96553078318926469)
,p_query_column_id=>9
,p_column_alias=>'MILESTONE_STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'Status'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(96553501225926469)
,p_query_column_id=>10
,p_column_alias=>'MILESTONE_START_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Start Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(96553875216926469)
,p_query_column_id=>11
,p_column_alias=>'MILESTONE_OWNER'
,p_column_display_sequence=>10
,p_column_heading=>'Owner'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(96554275062926470)
,p_query_column_id=>12
,p_column_alias=>'AI_OPEN'
,p_column_display_sequence=>11
,p_column_heading=>'Ai Open'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(96544195556923472)
,p_button_sequence=>10
,p_button_name=>'EDIT_MILESTONE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Milestone'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:48:P48_ID,P48_PROJECT_ID,P200_ID:&P174_ID.,&P174_PROJECT_ID.,&P174_PROJECT_ID.'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(96544653317923472)
,p_button_sequence=>20
,p_button_name=>'view_project'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Project'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_ID:&P174_PROJECT_ID.'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(96518734193923463)
,p_name=>'P174_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(96518278185923461)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(96519074422923463)
,p_name=>'P174_PROJECT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(96518278185923461)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(96545135775923472)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.component_end;
end;
/
