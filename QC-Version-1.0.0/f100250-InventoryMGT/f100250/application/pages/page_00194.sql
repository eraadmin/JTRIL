prompt --application/pages/page_00194
begin
--   Manifest
--     PAGE: 00194
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
 p_id=>194
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Code Parameters'
,p_page_mode=>'MODAL'
,p_step_title=>'Code Parameters'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171226121138'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(133771198559331976)
,p_name=>'Code Parameters'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       MODLCODE,',
'       NMHRDCDE,',
'       NMSOFCDE,',
'       NMCODDES,',
'       PRTYFLAG,',
'       OPRSTAMP,',
'       TIMSTAMP',
'  from NMCODMAS',
'where COMPCODE=:COMPCODE'))
,p_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_api.id(133772205321331982)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=#APP_ID#:195:#APP_SESSION#:::RP:P195_ROWID:#ROWID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133772656678331982)
,p_query_column_id=>2
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Compcode'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133772991853331982)
,p_query_column_id=>3
,p_column_alias=>'MODLCODE'
,p_column_display_sequence=>3
,p_column_heading=>'Modlcode'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133773405003331984)
,p_query_column_id=>4
,p_column_alias=>'NMHRDCDE'
,p_column_display_sequence=>4
,p_column_heading=>'Hard Code'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133773846485331985)
,p_query_column_id=>5
,p_column_alias=>'NMSOFCDE'
,p_column_display_sequence=>5
,p_column_heading=>'Soft Code'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133774244154331985)
,p_query_column_id=>6
,p_column_alias=>'NMCODDES'
,p_column_display_sequence=>6
,p_column_heading=>'Code Description'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133774634929331985)
,p_query_column_id=>7
,p_column_alias=>'PRTYFLAG'
,p_column_display_sequence=>7
,p_column_heading=>'Prtyflag'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133775020893331985)
,p_query_column_id=>8
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>8
,p_column_heading=>'Oprstamp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133775407547331985)
,p_query_column_id=>9
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>9
,p_column_heading=>'Timstamp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(133849685398481405)
,p_plug_name=>'Code Parameters'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>5
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       MODLCODE,',
'       NMHRDCDE,',
'       NMSOFCDE,',
'       NMCODDES,',
'       PRTYFLAG,',
'       OPRSTAMP,',
'       TIMSTAMP',
'  from NMCODMAS',
'where COMPCODE=:COMPCODE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(133849770644481405)
,p_name=>'Code Parameters'
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
,p_internal_uid=>96694903518800911
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133850132191481423)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:195:&SESSION.::&DEBUG.::P195_ROWID:#ROWID#'
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
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133850422918481458)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133850777197481459)
,p_db_column_name=>'MODLCODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Modlcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133851252025481459)
,p_db_column_name=>'NMHRDCDE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Hardcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133851617510481459)
,p_db_column_name=>'NMSOFCDE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Softcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133852030188481461)
,p_db_column_name=>'NMCODDES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Code Description'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133852376156481461)
,p_db_column_name=>'PRTYFLAG'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Prtyflag'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133852823856481461)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133853181141481461)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(133853646665481954)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'966988'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:NMCODDES:NMHRDCDE:NMSOFCDE:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(133778562120331987)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(133849685398481405)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:195:&SESSION.::&DEBUG.:195::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39567279622079617)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(133849685398481405)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::::#&P194_RANDOMNO.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56482294442132069)
,p_name=>'P194_RANDOMNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(133849685398481405)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_random number;',
'begin',
'select dbms_random.value(1,9) num into v_random from dual;',
'return v_random;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Randomno'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(133778990793331987)
,p_computation_sequence=>1
,p_computation_item=>'P195_ROWID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
