prompt --application/pages/page_00238
begin
--   Manifest
--     PAGE: 00238
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
 p_id=>238
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Transaction Flow Defination'
,p_page_mode=>'MODAL'
,p_step_title=>'Transaction Flow Defination'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171012112245'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(135601456254406500)
,p_name=>'Transaction Flow Defination'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       TRDOCTYP,',
'       TRSUBTYP,',
'       PRDOCTYP,',
'       PRSUBTYP,',
'       INPSTATS,',
'       OUTSTATS,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       STKUPFLG,',
'       SERVFLAG,',
'       APPRNEED,',
'       MODIFYDT',
'  from NMWRKFLW'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135601830278406502)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=#APP_ID#:221:#APP_SESSION#::::P221_ROWID,P221_TRSUBTYP:#ROWID#,#TRSUBTYP#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135602206952406503)
,p_query_column_id=>2
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Compcode'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135602586175406503)
,p_query_column_id=>3
,p_column_alias=>'TRDOCTYP'
,p_column_display_sequence=>3
,p_column_heading=>'Trdoctyp'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135602989413406503)
,p_query_column_id=>4
,p_column_alias=>'TRSUBTYP'
,p_column_display_sequence=>4
,p_column_heading=>'Trsubtyp'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135603466729406503)
,p_query_column_id=>5
,p_column_alias=>'PRDOCTYP'
,p_column_display_sequence=>5
,p_column_heading=>'Prdoctyp'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135603851063406505)
,p_query_column_id=>6
,p_column_alias=>'PRSUBTYP'
,p_column_display_sequence=>6
,p_column_heading=>'Prsubtyp'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135604250400406505)
,p_query_column_id=>7
,p_column_alias=>'INPSTATS'
,p_column_display_sequence=>7
,p_column_heading=>'Inpstats'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135604630633406505)
,p_query_column_id=>8
,p_column_alias=>'OUTSTATS'
,p_column_display_sequence=>8
,p_column_heading=>'Outstats'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135605018148406505)
,p_query_column_id=>9
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>9
,p_column_heading=>'Oprstamp'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135605369082406505)
,p_query_column_id=>10
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>10
,p_column_heading=>'Timstamp'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135605783214406505)
,p_query_column_id=>11
,p_column_alias=>'STKUPFLG'
,p_column_display_sequence=>11
,p_column_heading=>'Stkupflg'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135606210940406505)
,p_query_column_id=>12
,p_column_alias=>'SERVFLAG'
,p_column_display_sequence=>12
,p_column_heading=>'Servflag'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135606657147406505)
,p_query_column_id=>13
,p_column_alias=>'APPRNEED'
,p_column_display_sequence=>13
,p_column_heading=>'Apprneed'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135606994765406505)
,p_query_column_id=>14
,p_column_alias=>'MODIFYDT'
,p_column_display_sequence=>14
,p_column_heading=>'Modifydt'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(135607457303406506)
,p_plug_name=>'Transaction Flow Defination'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>5
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       TRDOCTYP,',
'(select wm_concat(distinct NARATION) from sydocmas where COMPCODE=s.COMPCODE and TRANTYPE=s.TRDOCTYP and SUBTTYPE=s.TRSUBTYP) TRNARRATION,',
'       TRSUBTYP,',
'       PRDOCTYP,',
'       PRSUBTYP,',
'(select wm_concat(distinct NARATION) from sydocmas where  COMPCODE=s.COMPCODE and TRANTYPE=s.PRDOCTYP and SUBTTYPE=s.PRSUBTYP) PRNARRATION,',
'       INPSTATS,',
'       OUTSTATS,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       STKUPFLG,',
'       SERVFLAG,',
'       APPRNEED,',
'       MODIFYDT',
'  from NMWRKFLW s',
'where COMPCODE=:COMPCODE',
'order by TRDOCTYP'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(135607840190406506)
,p_name=>'Workflow Defination'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>98452973064726012
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135607954609406508)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_column_link=>'f?p=&APP_ID.:239:&SESSION.::&DEBUG.::P239_ROWID:#ROWID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135608281840406508)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135608742605406508)
,p_db_column_name=>'TRDOCTYP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Transaction DocType'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135609138751406508)
,p_db_column_name=>'TRSUBTYP'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Transaction SubType'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135609481168406510)
,p_db_column_name=>'PRDOCTYP'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Previous DocType'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135609869821406510)
,p_db_column_name=>'PRSUBTYP'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Previous SubType'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135610283736406510)
,p_db_column_name=>'INPSTATS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Inpstats'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135610713100406510)
,p_db_column_name=>'OUTSTATS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Outstats'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135611129135406510)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135611501546406510)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135611915638406510)
,p_db_column_name=>'STKUPFLG'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Stkupflg'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135612327083406510)
,p_db_column_name=>'SERVFLAG'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Servflag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135612719723406510)
,p_db_column_name=>'APPRNEED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Approval Need'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135613072025406510)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135613560983406510)
,p_db_column_name=>'TRNARRATION'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Transaction Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135613954444406511)
,p_db_column_name=>'PRNARRATION'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Previous Tran. Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(135614324489406511)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'984595'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:TRDOCTYP:TRSUBTYP:TRNARRATION:PRDOCTYP:PRSUBTYP:PRNARRATION:APPRNEED:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36783008909033266)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(135607457303406506)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135614845187406511)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(135607457303406506)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:239:&SESSION.::&DEBUG.:239::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(135615310490406522)
,p_computation_sequence=>1
,p_computation_item=>'P221_ROWID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(135615575275406525)
,p_computation_sequence=>1
,p_computation_item=>'P221_TRSUBTYP'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(135616829524406527)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(135601456254406500)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135617269396406527)
,p_event_id=>wwv_flow_api.id(135616829524406527)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(135601456254406500)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(135615929889406525)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(135614845187406511)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135616403788406527)
,p_event_id=>wwv_flow_api.id(135615929889406525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(135601456254406500)
);
wwv_flow_api.component_end;
end;
/
