prompt --application/pages/page_00218
begin
--   Manifest
--     PAGE: 00218
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
 p_id=>218
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Document Parameters'
,p_page_mode=>'MODAL'
,p_step_title=>'Document Parameters'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171226120928'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(133941269620763351)
,p_plug_name=>'Document Parameters'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ROWID", ',
'"COMPCODE",',
'"MODLCODE",',
'"TRANTYPE",',
'"SUBTTYPE",',
'"LOCNCODE",',
'"STRTPERD",',
'"ENDPERD",',
'"DOCPREFX",',
'"DOCNUMBR",',
'"DOCTNLEN",',
'"AUTOFLAG",',
'"NARATION",',
'"POSTFLAG",',
'"VALDFLAG",',
'"FREQFLAG",',
'"DFLTACCT",',
'"DFLTDBCR",',
'"DFLTDTYP",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"MODIFYDT",',
'"MNYRPRFX"',
'from "#OWNER#"."SYDOCMAS" ',
'where COMPCODE=:COMPCODE',
'order by MODLCODE,TRANTYPE',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(133941667778763352)
,p_name=>'Document Parameters'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:219:&SESSION.::&DEBUG.::P219_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>96786800653082858
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133941827629763354)
,p_db_column_name=>'ROWID'
,p_display_order=>1
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
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133942265226763355)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133942637528763355)
,p_db_column_name=>'MODLCODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Module Code '
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133943030254763355)
,p_db_column_name=>'TRANTYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Tran. Type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133943461989763355)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Sub. Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133943856242763355)
,p_db_column_name=>'LOCNCODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Loc. Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133944191880763355)
,p_db_column_name=>'STRTPERD'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Start Period'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133944639151763357)
,p_db_column_name=>'ENDPERD'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'End Period'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133945002600763357)
,p_db_column_name=>'DOCPREFX'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Docprefx'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133945416856763357)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Docnumbr'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133945831975763357)
,p_db_column_name=>'DOCTNLEN'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Doctnlen'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133946182581763357)
,p_db_column_name=>'AUTOFLAG'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Auto Flag'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133946592052763357)
,p_db_column_name=>'NARATION'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Naration'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133947025627763358)
,p_db_column_name=>'POSTFLAG'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Postflag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133947390513763358)
,p_db_column_name=>'VALDFLAG'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Valdflag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133947830612763358)
,p_db_column_name=>'FREQFLAG'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Freqflag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133948207479763360)
,p_db_column_name=>'DFLTACCT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Dfltacct'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133948660436763360)
,p_db_column_name=>'DFLTDBCR'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Dfltdbcr'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133949040078763360)
,p_db_column_name=>'DFLTDTYP'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Dfltdtyp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133949389998763363)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133949842470763363)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133950191390763363)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(133950595308763365)
,p_db_column_name=>'MNYRPRFX'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Mnyrprfx'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(133951546463763720)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'967967'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MODLCODE:NARATION:TRANTYPE:SUBTTYPE:LOCNCODE:STRTPERD:ENDPERD:AUTOFLAG:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(133951046069763365)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(133941269620763351)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:219:&SESSION.::&DEBUG.:219::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38173367375191239)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(133941269620763351)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::::#&P218_RANDOMNO.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56479914621110295)
,p_name=>'P218_RANDOMNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(133941269620763351)
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
wwv_flow_api.component_end;
end;
/