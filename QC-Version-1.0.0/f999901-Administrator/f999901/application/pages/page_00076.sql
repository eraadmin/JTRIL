prompt --application/pages/page_00076
begin
--   Manifest
--     PAGE: 00076
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
 p_id=>76
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Document Parameters'
,p_page_mode=>'MODAL'
,p_step_title=>'Document Parameters'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'ui-dialog--stretch'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200528180232'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56692303593743108)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58228373124975378)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       (  SELECT INITCAP (MODLNAME)  || '' - '' || MODLCODE FROM SYMODULE WHERE MODLCODE = D.MODLCODE) MODLCODE,',
'       TRANTYPE|| '' - '' || NARATION TRANTYPE,',
'       SUBTTYPE,',
'       LOCNCODE,',
'       STRTPERD,',
'       ENDPERD,',
'       DOCPREFX,',
'       DOCNUMBR,',
'       DOCTNLEN,',
'       AUTOFLAG,',
'       NARATION,',
'       POSTFLAG,',
'       VALDFLAG,',
'       DECODE (FREQFLAG,''A'',''Annualy'',''M'',''Monthly'',''P'',''Perpetual'') FREQFLAG,',
'       DFLTACCT,',
'       DFLTDBCR,',
'       DFLTDTYP,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       TEST_FIELD,',
'       MNYRFRMT,',
'       MNYRPRFX,',
'       MODIFYDT',
'  from SYDOCMAS D',
' where COMPCODE = :COMPCODE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(58228703181975379)
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
,p_detail_link=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:RP:P77_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_detail_link_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_detail_link_cond=>'TRNMODE'
,p_detail_link_cond2=>'M'
,p_owner=>'ADMIN'
,p_internal_uid=>58228703181975379
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58228842106975379)
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
 p_id=>wwv_flow_api.id(58229217493975381)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58229629538975381)
,p_db_column_name=>'MODLCODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Module Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58230069186975381)
,p_db_column_name=>'TRANTYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58230488347975381)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Sub Tran. Type'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58230865666975382)
,p_db_column_name=>'LOCNCODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Location'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58231229621975382)
,p_db_column_name=>'STRTPERD'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Start Period'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58231627632975382)
,p_db_column_name=>'ENDPERD'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'End Period'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58232011165975382)
,p_db_column_name=>'DOCPREFX'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Document No. Prefix'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58232452323975384)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Document No. Seq.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58232849030975384)
,p_db_column_name=>'DOCTNLEN'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Document No. Lengh'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58233242368975384)
,p_db_column_name=>'AUTOFLAG'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Autoflag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58233666521975384)
,p_db_column_name=>'NARATION'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Naration'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58234092457975385)
,p_db_column_name=>'POSTFLAG'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Postflag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58234498651975385)
,p_db_column_name=>'VALDFLAG'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Valdflag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58234892243975385)
,p_db_column_name=>'FREQFLAG'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Frequency'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58235248402975385)
,p_db_column_name=>'DFLTACCT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Default Account'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58235694524975385)
,p_db_column_name=>'DFLTDBCR'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Dfltdbcr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58236095384975387)
,p_db_column_name=>'DFLTDTYP'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Dfltdtyp'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58236499411975387)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58236841206975387)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58237226676975387)
,p_db_column_name=>'TEST_FIELD'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Test Field'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58237651242975389)
,p_db_column_name=>'MNYRFRMT'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Mnyrfrmt'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58238062520975389)
,p_db_column_name=>'MNYRPRFX'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Mnyrprfx'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58238451396975389)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(58252484176999932)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'582525'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MODLCODE:TRANTYPE:SUBTTYPE:LOCNCODE:STRTPERD:ENDPERD:FREQFLAG:DOCPREFX:DOCNUMBR:DOCTNLEN:DFLTACCT:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(58239877982975390)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(56692303593743108)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(58238815170975389)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(58228373124975378)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(58239367125975390)
,p_event_id=>wwv_flow_api.id(58238815170975389)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(58228373124975378)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56692422412743109)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(58239877982975390)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56692550990743110)
,p_event_id=>wwv_flow_api.id(56692422412743109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
