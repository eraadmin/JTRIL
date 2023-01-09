prompt --application/pages/page_00234
begin
--   Manifest
--     PAGE: 00234
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
 p_id=>234
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Warehouse Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Warehouse Master'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- inline code',
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
,p_last_updated_by=>'ASIF'
,p_last_upd_yyyymmddhh24miss=>'20221225133534'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37877888374751549)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(178909602934195279)
,p_plug_name=>'Warehouse Master'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
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
'"SHORTNAM", qcwhflag',
'from "#OWNER#"."NMWHSMAS" ',
'where COMPCODE = :COMPCODE',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(178909896382195289)
,p_name=>'Warehouse Master'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'100'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:235:&SESSION.::&DEBUG.::P235_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_view_enabled_yn=>'Y'
,p_owner=>'RILADM'
,p_internal_uid=>178909896382195289
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6034400665874989)
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
 p_id=>wwv_flow_api.id(6034797060874998)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6035172853874998)
,p_db_column_name=>'WARECODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Warehouse Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6035542320875000)
,p_db_column_name=>'WAREDESC'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Warehouse Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6035909640875000)
,p_db_column_name=>'WAREADD1'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Warehouse Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6036305559875001)
,p_db_column_name=>'ACCTCODE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'A/C Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6036772840875001)
,p_db_column_name=>'COSTCODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Cost Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6037176183875001)
,p_db_column_name=>'TCSTGRUP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Test Group'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6037594206875001)
,p_db_column_name=>'WAREFLAG'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Warehouse flag'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6037919503875001)
,p_db_column_name=>'USEBNFLG'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Usebnflg'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6038396016875003)
,p_db_column_name=>'WCSTGRUP'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Wcstgrup'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6038785493875003)
,p_db_column_name=>'PRNTCHID'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Prntchid'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6039180282875003)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6039505581875003)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6039910956875004)
,p_db_column_name=>'REGNCODE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Regncode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6040317601875004)
,p_db_column_name=>'CREDLIMT'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Credlimt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6040755887875004)
,p_db_column_name=>'ZONLCODE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Zonlcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6041106777875004)
,p_db_column_name=>'SRVCWFLG'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Srvcwflg'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6041542077875004)
,p_db_column_name=>'SWPRNTCD'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Swprntcd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6041942639875004)
,p_db_column_name=>'MAINSTOR'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Mainstor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6042364940875004)
,p_db_column_name=>'BRANDCDE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Brandcde'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6042774117875004)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6043146344875004)
,p_db_column_name=>'VESLFLAG'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Veslflag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6043569348875004)
,p_db_column_name=>'EMAILADD'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Emailadd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6043968923875009)
,p_db_column_name=>'PHONENBR'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Phonenbr'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6044319100875009)
,p_db_column_name=>'PORT_FLAG'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Port Flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6044707431875009)
,p_db_column_name=>'WHSZONFK'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Whszonfk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6045121085875009)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6045549841875009)
,p_db_column_name=>'WORKSOPCD'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Worksopcd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6045901768875009)
,p_db_column_name=>'SHORTNAM'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Shortnam'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30974802671917237)
,p_db_column_name=>'QCWHFLAG'
,p_display_order=>42
,p_column_identifier=>'AG'
,p_column_label=>'QC Warehouse'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(178925084991197864)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'60463'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:COMPCODE:WARECODE:WAREDESC:WAREADD1:ACCTCODE:COSTCODE:TCSTGRUP:WAREFLAG:USEBNFLG:WCSTGRUP:PRNTCHID:OPRSTAMP:TIMSTAMP:REGNCODE:CREDLIMT:ZONLCODE:SRVCWFLG:SWPRNTCD:MAINSTOR:BRANDCDE:MODIFYDT:VESLFLAG:EMAILADD:PHONENBR:PORT_FLAG:WHSZONFK:PARTYCDE:'
||'WORKSOPCD:SHORTNAM:QCWHFLAG'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6046715699875015)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(37877888374751549)
,p_button_name=>'CREATE'
,p_button_static_id=>'SAVE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:235:&SESSION.::&DEBUG.:235::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6047119443875021)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(37877888374751549)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6047560976875032)
,p_name=>'P234_RANDOMNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(178909602934195279)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_random number;',
'begin',
'select dbms_random.value(1,9) num into v_random from dual;',
'return v_random;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6047981981875081)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(178909602934195279)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6048484387875084)
,p_event_id=>wwv_flow_api.id(6047981981875081)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(178909602934195279)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6048836897875087)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6046715699875015)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6049249505875087)
,p_event_id=>wwv_flow_api.id(6048836897875087)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(178909602934195279)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6049688130875087)
,p_name=>'cancel dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6047119443875021)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6050161748875089)
,p_event_id=>wwv_flow_api.id(6049688130875087)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46317012632028204)
,p_name=>'Remove Cross Sign'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46317137485028205)
,p_event_id=>wwv_flow_api.id(46317012632028204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var button = parent.$(''.ui-dialog-titlebar-close''); //get the button',
'button.hide(); //hide the button'))
);
wwv_flow_api.component_end;
end;
/
