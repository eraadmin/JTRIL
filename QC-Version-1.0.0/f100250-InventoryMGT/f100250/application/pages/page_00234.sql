prompt --application/pages/page_00234
begin
--   Manifest
--     PAGE: 00234
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
 p_id=>234
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Warehouse Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Warehouse Master'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px !important;',
'}',
'#tabs .bg {',
'    height: 8px ! important;',
'    }',
'.t-Region h2.t-Region-title {',
'    color: rgb(255, 255, 255);',
'}',
'.t-Region-headerItems--title {',
'    text-align: center;',
'    padding: 0.0rem 0.0rem;',
'    background-color: #1F68A7;',
'}',
'.t-Form-inputContainer, .t-Form-inputContainer.col, .t-Form-labelContainer, .t-Form-labelContainer.col {',
'    padding: 0.2rem;',
'}',
'.t-Form-label {',
'    padding: .0rem 0;',
'    line-height: 1.0rem;',
'    display: inline-block;',
'    -webkit-hyphens: auto;',
'    -moz-hyphens: auto;',
'    -ms-hyphens: auto;',
'    hyphens: auto;',
'    font-size: 1.2rem;',
'    margin-top: 0px;',
'}'))
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171226121406'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(135543214063876112)
,p_plug_name=>'Warehouse Master'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ROWID", ',
'"COMPCODE",',
'"WARECODE",',
'"WAREDESC",',
'"WAREADD1"||'',''||',
'"WAREADD2"||'',''||',
'"WAREADD3" WAREADD1 ,',
'"ACCTCODE",',
'"COSTCODE",',
'"TCSTGRUP",',
'"WAREFLAG",',
'"USEBNFLG",',
'"WCSTGRUP",',
'"PRNTCHID",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"REGNCODE",',
'"CREDLIMT",',
'"ZONLCODE",',
'"SRVCWFLG",',
'"SWPRNTCD",',
'"MAINSTOR",',
'"BRANDCDE",',
'"MODIFYDT",',
'"VESLFLAG",',
'"EMAILADD",',
'"PHONENBR",',
'"PORT_FLAG",',
'"WHSZONFK",',
'"PARTYCDE",',
'"WORKSOPCD",',
'"SHORTNAM"',
'from "#OWNER#"."NMWHSMAS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(135543507511876122)
,p_name=>'Warehouse Master'
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
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:235:&SESSION.::&DEBUG.::P235_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_icon_view_columns_per_row=>1
,p_detail_view_enabled_yn=>'Y'
,p_owner=>'RILADM'
,p_internal_uid=>98388640386195628
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135543613632876211)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
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
 p_id=>wwv_flow_api.id(135544052499876215)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135544328285876215)
,p_db_column_name=>'WARECODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ware Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135544696063876220)
,p_db_column_name=>'WAREDESC'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135545144026876220)
,p_db_column_name=>'WAREADD1'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Ware Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135546360174876220)
,p_db_column_name=>'ACCTCODE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'A/C Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135546693483876223)
,p_db_column_name=>'COSTCODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Cost Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135547144584876223)
,p_db_column_name=>'TCSTGRUP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Test Group'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135547538128876228)
,p_db_column_name=>'WAREFLAG'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Ware flag'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135547953897876228)
,p_db_column_name=>'USEBNFLG'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Usebnflg'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135548296749876228)
,p_db_column_name=>'WCSTGRUP'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Wcstgrup'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135548766988876228)
,p_db_column_name=>'PRNTCHID'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Prntchid'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135549111266876228)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135549537348876228)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135549960926876228)
,p_db_column_name=>'REGNCODE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Regncode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135550282775876229)
,p_db_column_name=>'CREDLIMT'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Credlimt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135550669596876229)
,p_db_column_name=>'ZONLCODE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Zonlcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135551136999876229)
,p_db_column_name=>'SRVCWFLG'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Srvcwflg'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135551520370876229)
,p_db_column_name=>'SWPRNTCD'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Swprntcd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135551901109876229)
,p_db_column_name=>'MAINSTOR'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Mainstor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135552281758876229)
,p_db_column_name=>'BRANDCDE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Brandcde'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135552692952876229)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135553115668876231)
,p_db_column_name=>'VESLFLAG'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Veslflag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135553559497876231)
,p_db_column_name=>'EMAILADD'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Emailadd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135553906278876231)
,p_db_column_name=>'PHONENBR'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Phonenbr'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135554331626876237)
,p_db_column_name=>'PORT_FLAG'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Port Flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135554701441876237)
,p_db_column_name=>'WHSZONFK'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Whszonfk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135555142813876237)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135555506343876239)
,p_db_column_name=>'WORKSOPCD'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Worksopcd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(135555925622876239)
,p_db_column_name=>'SHORTNAM'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Shortnam'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(135558696120878697)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'984039'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:COMPCODE:WARECODE:WAREDESC:WAREADD1:ACCTCODE:COSTCODE:TCSTGRUP:WAREFLAG:USEBNFLG:WCSTGRUP:PRNTCHID:OPRSTAMP:TIMSTAMP:REGNCODE:CREDLIMT:ZONLCODE:SRVCWFLG:SWPRNTCD:MAINSTOR:BRANDCDE:MODIFYDT:VESLFLAG:EMAILADD:PHONENBR:PORT_FLAG:WHSZONFK:PARTYCDE:'
||'WORKSOPCD:SHORTNAM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135557219118876247)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(135543214063876112)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:235:&SESSION.::&DEBUG.:235::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38223730854247328)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(135543214063876112)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::::#&P234_RANDOMNO.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56484293328150910)
,p_name=>'P234_RANDOMNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(135543214063876112)
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(135556279961876239)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(135543214063876112)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135556790103876242)
,p_event_id=>wwv_flow_api.id(135556279961876239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(135543214063876112)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(135557581142876247)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(135557219118876247)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135558109909876247)
,p_event_id=>wwv_flow_api.id(135557581142876247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(135543214063876112)
);
wwv_flow_api.component_end;
end;
/
