prompt --application/pages/page_00032
begin
--   Manifest
--     PAGE: 00032
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
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Service Package Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Service Package Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20200406170137'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20380565076431229)
,p_plug_name=>'Package Detail'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMPCODE,',
'       DOCTTYPE,',
'       SUBTTYPE,',
'       DOCNUMBR,',
'       DOCTDATE,',
'       SERLNUMB,',
'       SRVPKGPK,',
'       VHCLCODE,',
'       PKGTITLE,',
'       RAISEDBY,',
'       APPRVDBY,',
'       APPRDATE,',
'       EFFCTDTE,',
'       RESCHDTLE,',
'       REAMOUNT,',
'       TIMSTAMP,',
'       PKGMILAG,',
'       SVCTYPFK,',
'       FRESVFLG,',
'       FSTFRETY,',
'       FSTFREDY,',
'       SNDFRETY,',
'       SNDFREDY,',
'       TRDFRETY,',
'       TRDFREDY,',
'       REMINDER,',
'       DISMARKS,',
'       PARTYFLG,',
'       MODIFYDT',
'  from NMSRVPKG ',
' where COMPCODE = :COMPCODE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(19976701056734632)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DHSADM'
,p_internal_uid=>19976701056734632
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19976832484734633)
,p_db_column_name=>'COMPCODE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19976937393734634)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19977017848734635)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19977128526734636)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19977292479734637)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19977342328734638)
,p_db_column_name=>'SERLNUMB'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Serlnumb'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19977439249734639)
,p_db_column_name=>'SRVPKGPK'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Srvpkgpk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19977593770734640)
,p_db_column_name=>'VHCLCODE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Vehicle Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19977690576734641)
,p_db_column_name=>'PKGTITLE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Service Job Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19977729674734642)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19977886074734643)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Apprvdby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19977971525734644)
,p_db_column_name=>'APPRDATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Apprdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19978010760734645)
,p_db_column_name=>'EFFCTDTE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Effect.  Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19978133400734646)
,p_db_column_name=>'RESCHDTLE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Re-schedule (Month)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19978211431734647)
,p_db_column_name=>'REAMOUNT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19978312546734648)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19978492714734649)
,p_db_column_name=>'PKGMILAG'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Mileage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19978519320734650)
,p_db_column_name=>'SVCTYPFK'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Service Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(14717586533212876)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20394998988551401)
,p_db_column_name=>'FRESVFLG'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Srv. Flag'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20395046886551402)
,p_db_column_name=>'FSTFRETY'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'1st  Remtype'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20395107760551403)
,p_db_column_name=>'FSTFREDY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'1st Remdays'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20395262743551404)
,p_db_column_name=>'SNDFRETY'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'2nd Remtype'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20395324648551405)
,p_db_column_name=>'SNDFREDY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'2nd Remdays'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20395466877551406)
,p_db_column_name=>'TRDFRETY'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'3rd Remtype'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20395578464551407)
,p_db_column_name=>'TRDFREDY'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'3rd Remdays'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20395681760551408)
,p_db_column_name=>'REMINDER'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Reminder'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20395737545551409)
,p_db_column_name=>'DISMARKS'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Dismarks'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20395870305551410)
,p_db_column_name=>'PARTYFLG'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Party  Flag'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20395971903551411)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(20418852145554892)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'204189'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PKGTITLE:SVCTYPFK:VHCLCODE:EFFCTDTE:RESCHDTLE:PKGMILAG:FRESVFLG:PARTYFLG:FSTFRETY:FSTFREDY:SNDFRETY:SNDFREDY:TRDFRETY:TRDFREDY:REAMOUNT'
);
wwv_flow_api.component_end;
end;
/
