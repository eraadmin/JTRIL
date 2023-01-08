prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_tab_set=>'TS1'
,p_name=>'Sales Information'
,p_step_title=>'Sales Information'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61676820366214432)
,p_plug_name=>'Region_SalesReport'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.DOCNUMBR||''/''||DOCTDATE||''/''||DOCTTYPE||''/''||SUBTTYPE||''/''||SERLNUMB id,',
's.DOCNUMBR||''/''||DOCTDATE||''/''||DOCTTYPE||''/''||SUBTTYPE as DOCDETAIl,',
's.DOCNUMBR  as DOCNUMBR,',
'    s.DOCTDATE as DOCTDATE,',
'    s.CUSTMRID||'':''||P.PRTYNAME as PARTYCDE,    ',
'    (select usercode||'':''||username from syusrmas u where usercode=s.RAISEDBY and u.DIVNCODE=:compcode) as RAISED_BY,',
'    s.ITEMCODE as ITEMCODE,',
'    s.ITEMDESC as ITEMDESC,',
'    s.saleRATE as RATE,nvl(s.apprqnty,0)Quantity,nvl(s.saleRATE,0) * nvl(s.apprqnty,0)Amount,',
'    s.WARECODE||'':''||w.waredesc as WARECODE,',
'    s.STATUSCD as STATUSCD ',
' from NMSALREC s,nmwhsmas w,nmitemas i,SYCOMPTY P',
'where s.DOCTTYPE=''SI''',
'and s.COMPCODE=:COMPCODE',
'AND S.COMPCODE=P.COMPCODE',
'AND S.PARTYCDE=P.PARTYCDE',
'and s.compcode=w.compcode',
'and s.itemcode=i.itemcode',
'and s.warecode=w.warecode',
'and w.warecode in (select warecode from sycstacc where grupcode=:APP_USER) ',
'order by DOCTDATE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>30
,p_prn_height=>8.5
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
,p_prn_header_font_color=>'#ffffff'
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
 p_id=>wwv_flow_api.id(61676943358214432)
,p_name=>'Region_SalesReport'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_sort_asc_image=>'arrow_up_gray_light.gif'
,p_sort_asc_image_attr=>' width="13" height="12" '
,p_sort_desc_image=>'arrow_down_gray_light.gif'
,p_sort_desc_image_attr=>' width="13" height="12" '
,p_base_pk1=>'id'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>7125529671437068
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61677115424214472)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61677240709214478)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Invoice Details'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DOCDETAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61677332998214478)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Invoice No'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61677437703214478)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Invoice Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61677522699214478)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Customer'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'PARTYCDE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61677642202214480)
,p_db_column_name=>'RAISED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Raised By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RAISED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61677736563214480)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Itemcode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61677822386214480)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Itemdesc'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMDESC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61678036518214480)
,p_db_column_name=>'WARECODE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Warecode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WARECODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61678124733214480)
,p_db_column_name=>'STATUSCD'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Statuscd'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUSCD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61679022538239863)
,p_db_column_name=>'RATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Rate'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'RATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61679146385239866)
,p_db_column_name=>'QUANTITY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Quantity'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'QUANTITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61679230995239866)
,p_db_column_name=>'AMOUNT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Amount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(61678214924214641)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'71269'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:DOCDETAIL:DOCNUMBR:DOCTDATE:PARTYCDE:RAISED_BY:ITEMCODE:ITEMDESC:STATUSCD:RATE:QUANTITY:AMOUNT'
);
wwv_flow_api.component_end;
end;
/
