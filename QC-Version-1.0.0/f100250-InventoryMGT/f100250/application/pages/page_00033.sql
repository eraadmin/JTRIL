prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_tab_set=>'TS1'
,p_name=>'Stock'
,p_alias=>'ADMIN'
,p_step_title=>'Sample Database Application - Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140736'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60869315644356605)
,p_plug_name=>'Stock'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DOCNUMBR||''/''||DOCTDATE||''/''||DOCTTYPE||''/''||SUBTTYPE as docdetails,',
'NMSTKREC.DOCNUMBR as DOCNUMBR,',
'    NMSTKREC.DOCTDATE as DOCTDATE,',
'    NMSTKREC.ITEMCODE as ITEMCODE,',
'    NMSTKREC.PARTYCDE as PARTYCDE,',
'    NMSTKREC.RAISEDBY as RAISEDBY,',
'    NMSTKREC.ITEMDESC as ITEMDESC,',
'    NMSTKREC.ITEMRATE as ITEMRATE,',
'    NMSTKREC.ORGNQNTY as ORGNQNTY,',
'    NMSTKREC.APPRQNTY as APPRQNTY,',
'    NMSTKREC.TRNSQNTY as TRNSQNTY,',
'    NMSTKREC.REFNUMBR as REFNUMBR,',
'    NMSTKREC.UPDOCNUM as UPDOCNUM,',
'    NMSTKREC.UPDOCDTE as UPDOCDTE,',
'    NMSTKREC.REMARKSS as REMARKSS ',
' from NMSTKREC NMSTKREC',
'where COMPCODE=:COMPCODE'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(60869429642356605)
,p_name=>'Stock'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'RILADM'
,p_internal_uid=>6318015955579241
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60869639864356608)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Docnumbr'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60869726208356608)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Doctdate'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60869817635356608)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Itemcode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60869934814356608)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Partycde'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTYCDE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60870023821356608)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Raisedby'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RAISEDBY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60870139297356608)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Itemdesc'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMDESC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60870222732356608)
,p_db_column_name=>'ITEMRATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Itemrate'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMRATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60870321124356609)
,p_db_column_name=>'ORGNQNTY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Orgnqnty'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORGNQNTY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60870429545356609)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Apprqnty'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'APPRQNTY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60870524024356609)
,p_db_column_name=>'TRNSQNTY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Trnsqnty'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TRNSQNTY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60870620360356609)
,p_db_column_name=>'REFNUMBR'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Refnumbr'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REFNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60870732483356609)
,p_db_column_name=>'UPDOCNUM'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updocnum'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UPDOCNUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60870821768356609)
,p_db_column_name=>'UPDOCDTE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Updocdte'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'UPDOCDTE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60870938728356609)
,p_db_column_name=>'REMARKSS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Remarkss'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKSS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60871538903367506)
,p_db_column_name=>'DOCDETAILS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Docdetails'
,p_column_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::P41_DOCNUMBR,P41_ITEMCODE:#DOCNUMBR#,#ITEMCODE#'
,p_column_linktext=>'#DOCDETAILS#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DOCDETAILS'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(60871017722357224)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'63197'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCDETAILS:ITEMCODE:ITEMDESC:ITEMRATE:ORGNQNTY:APPRQNTY:TRNSQNTY:PARTYCDE:RAISEDBY:REMARKSS:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66497416975060210)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(60869315644356605)
,p_button_name=>'DELIVERY_CHALLAN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delivery Challan'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.component_end;
end;
/