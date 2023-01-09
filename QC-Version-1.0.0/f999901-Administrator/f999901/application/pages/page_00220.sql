prompt --application/pages/page_00220
begin
--   Manifest
--     PAGE: 00220
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
 p_id=>220
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Workflow Defination'
,p_page_mode=>'MODAL'
,p_step_title=>'Workflow Defination'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'ui-dialog--stretch'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADITI'
,p_last_upd_yyyymmddhh24miss=>'20221220174856'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46319706071028231)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(194711103506465803)
,p_plug_name=>'Workflow Defination'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>5
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       TRDOCTYP,',
'--(select listagg(naration, '', '')  within group(order by naration) from sydocmas where COMPCODE=s.COMPCODE and TRANTYPE=s.TRDOCTYP and SUBTTYPE=s.TRSUBTYP) TRNARRATION,',
'(select WM_CONCAT(distinct naration)  from sydocmas where COMPCODE=s.COMPCODE and TRANTYPE=s.TRDOCTYP and SUBTTYPE=s.TRSUBTYP) TRNARRATION,',
'       TRSUBTYP,',
'       PRDOCTYP,',
'       PRSUBTYP,',
'  --(select listagg(naration)  within group (order by naration) from sydocmas where  COMPCODE=s.COMPCODE and TRANTYPE=s.PRDOCTYP and SUBTTYPE=s.PRSUBTYP) PRNARRATION,',
'       INPSTATS,',
'       OUTSTATS,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       STKUPFLG,',
'       SERVFLAG,',
'       APPRNEED,',
'       Decode(APPRNEED,''Y'',''fa fa-check u-success-text'',''N'',''fa fa-remove u-danger-text'',''fa fa-remove u-danger-text'') APRNED,',
'       MODIFYDT',
'  from NMWRKFLW s',
'where COMPCODE=:COMPCODE',
'order by TRDOCTYP'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(194711160167465803)
,p_name=>'Workflow Defination'
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
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RILADM'
,p_internal_uid=>194711160167465803
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23331440175743009)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.::P221_ROWID:#ROWID#'
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
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23331859841743010)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23332231108743010)
,p_db_column_name=>'TRDOCTYP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doc.Type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23332644887743010)
,p_db_column_name=>'TRSUBTYP'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Sub Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23333089446743012)
,p_db_column_name=>'PRDOCTYP'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Previous Doc.Type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23333431426743012)
,p_db_column_name=>'PRSUBTYP'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Previous Sub Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23333891782743012)
,p_db_column_name=>'INPSTATS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Inpstats'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23334217184743012)
,p_db_column_name=>'OUTSTATS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Outstats'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23334637720743014)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23335058037743014)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23335463076743014)
,p_db_column_name=>'STKUPFLG'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Stkupflg'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23335878506743014)
,p_db_column_name=>'SERVFLAG'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Servflag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23336258216743015)
,p_db_column_name=>'APPRNEED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Approval Need'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23336666391743015)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36402489021876402)
,p_db_column_name=>'APRNED'
,p_display_order=>26
,p_column_identifier=>'Q'
,p_column_label=>'Approval Need?'
,p_column_html_expression=>'<span class="#APRNED#" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36688744089203906)
,p_db_column_name=>'TRNARRATION'
,p_display_order=>36
,p_column_identifier=>'T'
,p_column_label=>'Transaction Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(194735425187485437)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'233378'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:TRDOCTYP:TRSUBTYP:TRNARRATION:PRDOCTYP:PRSUBTYP:APRNED:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23338622483743021)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(46319706071028231)
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
 p_id=>wwv_flow_api.id(23339055198743023)
,p_name=>'P220_RANDOMNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(194711103506465803)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27850926679969412)
,p_name=>'P220_COMPCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(194711103506465803)
,p_item_default=>':compcode'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(23339576184743037)
,p_computation_sequence=>1
,p_computation_item=>'P221_ROWID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(23339968168743037)
,p_computation_sequence=>1
,p_computation_item=>'P221_TRSUBTYP'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22013451196978802)
,p_name=>'Back to Home Page'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(23338622483743021)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22013574585978803)
,p_event_id=>wwv_flow_api.id(22013451196978802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46319597872028229)
,p_name=>'Remove Cross Sign'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46319658505028230)
,p_event_id=>wwv_flow_api.id(46319597872028229)
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
