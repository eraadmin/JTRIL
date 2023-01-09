prompt --application/pages/page_00054
begin
--   Manifest
--     PAGE: 00054
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
 p_id=>54
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Grade Wise Discount'
,p_page_mode=>'MODAL'
,p_step_title=>'Grade Wise Discount'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20200616150100'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47211819392150465)
,p_plug_name=>'Grade Wise Discount'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       GRADECODE,',
'      ( SELECT ',
'       NMCODDES',
'  FROM NMCODMAS',
'  WHERE COMPCODE = :COMPCODE',
'    AND NMHRDCDE = ''GRD''',
'    and NMSOFCDE=GRADEDIS_TEST.GRADECODE) Grade,',
'       GRADEDIC,',
'       STARTDATE,',
'       ENDTDATE,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       MODIFYDT,',
'       ITEMCODE',
'  from GRADEDIS_TEST'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(47212206776150465)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.:RP:P124_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>47212206776150465
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47212360407150465)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47212781226150467)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47213179160150467)
,p_db_column_name=>'GRADECODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Grade Code'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47215906951150468)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>13
,p_column_identifier=>'J'
,p_column_label=>'Item Code'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47213531426150467)
,p_db_column_name=>'GRADEDIC'
,p_display_order=>23
,p_column_identifier=>'D'
,p_column_label=>'Grade Discount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47213924484150467)
,p_db_column_name=>'STARTDATE'
,p_display_order=>33
,p_column_identifier=>'E'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47214324257150468)
,p_db_column_name=>'ENDTDATE'
,p_display_order=>43
,p_column_identifier=>'F'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47214788157150468)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>53
,p_column_identifier=>'G'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47215132582150468)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>63
,p_column_identifier=>'H'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47215502384150468)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>73
,p_column_identifier=>'I'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75896231694669829)
,p_db_column_name=>'GRADE'
,p_display_order=>83
,p_column_identifier=>'K'
,p_column_label=>'Grade'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(47218217429152515)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'472183'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GRADECODE:GRADE:ITEMCODE:STARTDATE:ENDTDATE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58587324620285131)
,p_plug_name=>'button'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(58587462973285132)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(58587324620285131)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'CANCEL'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47217342483150470)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(47211819392150465)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:61'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47216342342150470)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(47211819392150465)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47216852037150470)
,p_event_id=>wwv_flow_api.id(47216342342150470)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(47211819392150465)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(58587569243285133)
,p_name=>'close'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(58587462973285132)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(58587628496285134)
,p_event_id=>wwv_flow_api.id(58587569243285133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.component_end;
end;
/
