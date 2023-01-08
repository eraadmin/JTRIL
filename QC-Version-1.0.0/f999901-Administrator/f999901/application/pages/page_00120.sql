prompt --application/pages/page_00120
begin
--   Manifest
--     PAGE: 00120
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
 p_id=>120
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Sub Cost Center List'
,p_page_mode=>'MODAL'
,p_step_title=>'Sub Cost Center List'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20200615212629'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(83909367352492168)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       COSTCODE,',
'       COSTDESC || '' ('' ||COSTCODE || '')'' COSTDESC,',
'       COSTFLAG,',
'       DECODE(STATSFLG, ''A'', ''Active'', ''I'', ''Inactive'') STATSFLG,',
'       NUMUNITS,',
'       CONTAMNT,',
'       HANDOVER,',
'       PARNTJOB,',
'       LOCNCODE,',
'       DECODE(VALIDITY, ''Y'', ''Yes'', ''N'', ''No'') VALIDITY,',
'       BOQREFFL,',
'       COSTTYPE,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       PYBRNZON,',
'       PYOPENDT,',
'       COSTDIST,',
'       SYADDDTL,',
'       PARTYCDE,',
'       ACTIVE,',
'       PARENTWCODE,',
'       BRANDCDE,',
'       (  SELECT INITCAP (WAREDESC)',
'            FROM NMWHSMAS',
'           WHERE COMPCODE = :COMPCODE',
'             --AND WAREFLAG = ''Y''',
'             AND WARECODE = S.PARENTWCODE) PARENT_WAREHOUSE,',
'       (  SELECT NMCODDES',
'            FROM NMCODMAS',
'           WHERE COMPCODE = :COMPCODE AND NMHRDCDE = ''COM'' AND MODLCODE = ''NM'' AND NMSOFCDE = S.BRANDCDE) BRAND',
'  from SYJOBMAS_SUB S',
' where COMPCODE = :COMPCODE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(83909751631492168)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>342
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:121:&SESSION.::&DEBUG.:RP:P121_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_detail_link_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_detail_link_cond=>'TRNMODE'
,p_detail_link_cond2=>'M'
,p_owner=>'NADIA'
,p_internal_uid=>83909751631492168
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83909861705492168)
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
 p_id=>wwv_flow_api.id(83910259957492170)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83910602700492170)
,p_db_column_name=>'COSTCODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83911438891492170)
,p_db_column_name=>'COSTFLAG'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Costflag'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83911881621492170)
,p_db_column_name=>'STATSFLG'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83912290377492171)
,p_db_column_name=>'NUMUNITS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Budget Unit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83912662071492171)
,p_db_column_name=>'CONTAMNT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Budget Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83913042725492171)
,p_db_column_name=>'HANDOVER'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Handover'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83913418062492171)
,p_db_column_name=>'PARNTJOB'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Parntjob'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83913878760492173)
,p_db_column_name=>'LOCNCODE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Locncode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83914231815492173)
,p_db_column_name=>'VALIDITY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Validity'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83914638032492173)
,p_db_column_name=>'BOQREFFL'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Boqreffl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83915084723492173)
,p_db_column_name=>'COSTTYPE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Costtype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83915466525492175)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83915873968492175)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83916200106492175)
,p_db_column_name=>'PYBRNZON'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Pybrnzon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83916658302492175)
,p_db_column_name=>'PYOPENDT'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Pyopendt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83917035443492175)
,p_db_column_name=>'COSTDIST'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Costdist'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83917420820492176)
,p_db_column_name=>'SYADDDTL'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Syadddtl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83917867860492176)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83918287597492176)
,p_db_column_name=>'ACTIVE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Active'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83918613038492176)
,p_db_column_name=>'PARENTWCODE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Parentwcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83919016563492178)
,p_db_column_name=>'BRANDCDE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84252239523817607)
,p_db_column_name=>'COSTDESC'
,p_display_order=>34
,p_column_identifier=>'Z'
,p_column_label=>'Cost Center'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84252334396817608)
,p_db_column_name=>'PARENT_WAREHOUSE'
,p_display_order=>44
,p_column_identifier=>'AA'
,p_column_label=>'Parent Warehouse'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84252446842817609)
,p_db_column_name=>'BRAND'
,p_display_order=>54
,p_column_identifier=>'AB'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(83982353023559537)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'839824'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COSTDESC:PARENT_WAREHOUSE:BRAND:NUMUNITS:CONTAMNT:STATSFLG:VALIDITY:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(256232041782677771)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(84219241952690373)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(256232041782677771)
,p_button_name=>'REFRESH'
,p_button_static_id=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_RFRS_LBL.'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:RP,390::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'&BTN_RFRS_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(84218817022690373)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(256232041782677771)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(83919424085492178)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(83909367352492168)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(83919960338492178)
,p_event_id=>wwv_flow_api.id(83919424085492178)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(83909367352492168)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(84001349591601347)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(84218817022690373)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(84001437158601348)
,p_event_id=>wwv_flow_api.id(84001349591601347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
