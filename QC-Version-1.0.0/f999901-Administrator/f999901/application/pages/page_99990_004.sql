prompt --application/pages/page_99990_004
begin
--   Manifest
--     PAGE: 99990
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
 p_id=>99990104
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Template Design View'
,p_page_mode=>'MODAL'
,p_step_title=>'Template Design View'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-GV-table .a-GV-cell {',
'    border-color: blue;',
'	    color: green;',
'}',
'',
'.a-GV-table td, .a-GV-table th {',
'    overflow: hidden;',
'    white-space: nowrap;',
'    text-overflow: ellipsis;',
'    /*background-color: cornsilk;*/',
'    font-family: arial narrow;',
'    border: 1px solid red;',
'}',
'',
'.a-GV-hdr {',
'    background-color: #eed6f5;',
'}',
'',
'',
'.apex-item-select, .apex-item-text{',
'    color: green;',
'    background-color: lightgrey;',
'    border-color: red;',
'	    display: inline-block;',
'    font-size: 1.2rem;',
'    vertical-align: top;',
'    line-height: 1.6rem;',
'    padding: .3rem;',
'    border: .1rem solid blue;',
'    border-radius: .4rem;',
'    max-width: 100%;',
'    transition: background-color .1s ease,border .1s ease;',
'	    height: 2.4rem;',
'}',
''))
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'800'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_last_updated_by=>'RAZU'
,p_last_upd_yyyymmddhh24miss=>'20220426145026'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10637153379986896)
,p_plug_name=>'Template Data View'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TMPLT_ID, CAGRPCDE, CACMPCDE, PARTYFLG, PAG_BODY_BGCLR, PAG_BODY_BGCLRR, PAG_BODY_BGCLRL,',
'PAG_BODY_GRDNT_DIR, DATE_FRMT_MASK, CURRENCY_FRMT_MASK, RGN_RGN1_BGCLR, RGN_RGN1_HEIGHT, ',
'RGN_RGN2_BGCLR, RGN_RGN2_HEIGHT, RGN_RGN3_BGCLR, RGN_RGN3_HEIGHT, RGN_RGN4_BGCLR, RGN_RGN4_HEIGHT,',
'RGN_RGN5_BGCLR, RGN_RGN5_HEIGHT, RGN_RGN6_BGCLR, RGN_RGN6_HEIGHT, RPT_CLS_BGCLR, RPT_CLS_HDRBGCLR, ',
'RPT_CLS_HDRFNTCLR, RPT_CLS_HDRFNTSIZE, RPT_CLS_HDRFNTFMLY, RPT_CLS_FNTCLR, RPT_CLS_FNTSIZE, ',
'RPT_CLS_FNFMLY, RPT_CLS_BRDRCLR, RPT_IRR_BGCLR, RPT_IRR_HDRBGCLR, RPT_IRR_HDRFNTCLR,',
'RPT_IRR_HDRFNTSIZE, RPT_IRR_HDRFNTFMLY, RPT_IRR_FNTCLR, RPT_IRR_FNTSIZE, RPT_IRR_FNFMLY, ',
'RPT_IRR_BRDRCLR, RPT_IGR_BGCLR, RPT_IGR_HDRBGCLR, RPT_IGR_HDRFNTCLR, RPT_IGR_HDRFNTSIZE, ',
'RPT_IGR_HDRFNTFMLY, RPT_IGR_FNTCLR, RPT_IGR_FNTSIZE, RPT_IGR_FNFMLY, RPT_IGR_BRDRCLR, ',
'ITEM_CNTR_FNTCLR, ITEM_CNTR_FNTSIZE, ITEM_CNTR_FNTWT, ITEM_CNTR_FNTFMLY, ITEM_CNTR_HIGHT, ',
'ITEM_CNTR_BGCLR, ITEM_CNTR_BRDRCLR, ITEM_CNTR_BRDRRDS, ITEM_LABL_FNTCLR, ITEM_LABL_FNTSIZE, ',
'ITEM_LABL_FNTWT, ITEM_LABL_FNTFMLY, BTN_NEXT_LBL, BTN_NEXT_LBL_FNTWT, BTN_NEXT_FNFMLY, ',
'BTN_NEXT_WIDTH, BTN_NEXT_HIGHT, BTN_NEXT_ICON, BTN_NEXT_CLR, BTN_NEXT_BGCLRL, BTN_NEXT_BGCLRR, ',
'BTN_NEXT_GRDNT_DIR, BTN_NEXT_BRDRCLR, BTN_NEXT_BRDRRDS, BTN_CNCL_LBL, BTN_CNCL_LBL_FNTWT, ',
'BTN_CNCL_WIDTH, BTN_CNCL_HIGHT, BTN_CNCL_ICON, BTN_CNCL_CLR, BTN_CNCL_BGCLRL, BTN_CNCL_BGCLRR,',
'BTN_CNCL_BRDRCLR, BTN_CNCL_GRDNT_DIR, BTN_CNCL_BRDRRDS, BTN_CNCL_FNFMLY, BTN_SAVE_LBL,',
'BTN_SAVE_LBL_FNTWT, BTN_SAVE_WIDTH, BTN_SAVE_HIGHT, BTN_SAVE_ICON, BTN_SAVE_CLR, BTN_SAVE_BGCLRL,',
'BTN_SAVE_BGCLRR, BTN_SAVE_GRDNT_DIR, BTN_SAVE_BRDRCLR, BTN_SAVE_BRDRRDS, BTN_SAVE_FNFMLY,',
'BTN_BACK_LBL, BTN_BACK_LBL_FNTWT, BTN_BACK_WIDTH, BTN_BACK_HIGHT, BTN_BACK_ICON, BTN_BACK_CLR,',
'BTN_BACK_BGCLRL, BTN_BACK_BGCLRR, BTN_BACK_GRDNT_DIR, BTN_BACK_BRDRCLR, BTN_BACK_BRDRRDS, ',
'BTN_BACK_FNFMLY, BTN_SBMT_LBL, BTN_SBMT_LBL_FNTWT, BTN_SBMT_WIDTH, BTN_SBMT_HIGHT, BTN_SBMT_ICON,',
'BTN_SBMT_CLR, BTN_SBMT_BGCLRL, BTN_SBMT_BGCLRR, BTN_SBMT_GRDNT_DIR, BTN_SBMT_BRDRCLR,',
'BTN_SBMT_BRDRRDS, BTN_SBMT_FNFMLY, BTN_DELT_LBL, BTN_DELT_LBL_FNTWT, BTN_DELT_WIDTH, BTN_DELT_HIGHT,',
'BTN_DELT_ICON, BTN_DELT_CLR, BTN_DELT_BGCLRL, BTN_DELT_BGCLRR, BTN_DELT_GRDNT_DIR, BTN_DELT_BRDRCLR, ',
'BTN_DELT_BRDRRDS, BTN_DELT_FNFMLY, BTN_PRNT_LBL, BTN_PRNT_LBL_FNTWT, BTN_PRNT_WIDTH, BTN_PRNT_HIGHT,',
'BTN_PRNT_ICON, BTN_PRNT_CLR, BTN_PRNT_BGCLRL, BTN_PRNT_BGCLRR, BTN_PRNT_GRDNT_DIR, BTN_PRNT_BRDRCLR,',
'BTN_PRNT_BRDRRDS, BTN_PRNT_FNFMLY, BTN_RFRS_LBL, BTN_RFRS_LBL_FNTWT, BTN_RFRS_WIDTH, BTN_RFRS_HIGHT, ',
'BTN_RFRS_ICON, BTN_RFRS_CLR, BTN_RFRS_BGCLRL, BTN_RFRS_BGCLRR, BTN_RFRS_GRDNT_DIR, BTN_RFRS_BRDRCLR, ',
'BTN_RFRS_BRDRRDS, BTN_RFRS_FNFMLY, PAGE_ALRT_BGCLR, PAGE_ALRT_FNTCLR, PAGE_ALRT_FNTSIZE, ',
'PAGE_ALRT_FNTFMLY, PAGE_ALRT_BRDRCLR, PAGE_ALRT_BRDRRDS, OPRSTAMP, TIMSTAMP, MODIFIED_BY, MODIFIED_DATE',
'  from SYPGTMPLT',
'  WHERE CACMPCDE=:COMPCODE',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(10637502843986896)
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
,p_detail_link=>'f?p=&APP_ID.:99990105:&SESSION.::&DEBUG.:RP:P99990105_TMPLT_ID:\#TMPLT_ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'MUKUL'
,p_internal_uid=>10637502843986896
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10637654989986900)
,p_db_column_name=>'TMPLT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Tmplt Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10638043131986904)
,p_db_column_name=>'CAGRPCDE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cagrpcde'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10638416672986904)
,p_db_column_name=>'CACMPCDE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Cacmpcde'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10638846084986904)
,p_db_column_name=>'PARTYFLG'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Partyflg'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10639263837986906)
,p_db_column_name=>'PAG_BODY_BGCLR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Pag Body Bgclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10639622236986906)
,p_db_column_name=>'DATE_FRMT_MASK'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Date Frmt Mask'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10640081752986909)
,p_db_column_name=>'CURRENCY_FRMT_MASK'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Currency Frmt Mask'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10640405809986909)
,p_db_column_name=>'RGN_RGN1_BGCLR'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Rgn Rgn1 Bgclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10640839388986909)
,p_db_column_name=>'RGN_RGN1_HEIGHT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Rgn Rgn1 Height'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10641284280986909)
,p_db_column_name=>'RGN_RGN2_BGCLR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Rgn Rgn2 Bgclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10641631324986909)
,p_db_column_name=>'RGN_RGN2_HEIGHT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Rgn Rgn2 Height'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10642069332986909)
,p_db_column_name=>'RGN_RGN3_BGCLR'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Rgn Rgn3 Bgclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10642406938986910)
,p_db_column_name=>'RGN_RGN3_HEIGHT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Rgn Rgn3 Height'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10642846457986910)
,p_db_column_name=>'RGN_RGN4_BGCLR'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Rgn Rgn4 Bgclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10643266673986910)
,p_db_column_name=>'RGN_RGN4_HEIGHT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Rgn Rgn4 Height'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10643502712986912)
,p_db_column_name=>'RGN_RGN5_BGCLR'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Rgn Rgn5 Bgclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10643909853986912)
,p_db_column_name=>'RGN_RGN5_HEIGHT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Rgn Rgn5 Height'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10644370021986912)
,p_db_column_name=>'RGN_RGN6_BGCLR'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Rgn Rgn6 Bgclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10644797597986914)
,p_db_column_name=>'RGN_RGN6_HEIGHT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Rgn Rgn6 Height'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10645116244986914)
,p_db_column_name=>'RPT_CLS_BGCLR'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Rpt Cls Bgclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10645503640986914)
,p_db_column_name=>'RPT_CLS_FNTCLR'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Rpt Cls Fntclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10645981215986914)
,p_db_column_name=>'RPT_CLS_FNTSIZE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Rpt Cls Fntsize'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10646309082986914)
,p_db_column_name=>'RPT_CLS_FNFMLY'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Rpt Cls Fnfmly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10646747383986914)
,p_db_column_name=>'RPT_CLS_BRDRCLR'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Rpt Cls Brdrclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10647146708986915)
,p_db_column_name=>'RPT_IRR_BGCLR'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Rpt Irr Bgclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10647574717986915)
,p_db_column_name=>'RPT_IRR_FNTCLR'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Rpt Irr Fntclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10647933199986915)
,p_db_column_name=>'RPT_IRR_FNTSIZE'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Rpt Irr Fntsize'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10648316754986915)
,p_db_column_name=>'RPT_IRR_FNFMLY'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Rpt Irr Fnfmly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10648770045986915)
,p_db_column_name=>'RPT_IRR_BRDRCLR'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Rpt Irr Brdrclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10649168622986915)
,p_db_column_name=>'RPT_IGR_BGCLR'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Rpt Igr Bgclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10649553485986917)
,p_db_column_name=>'RPT_IGR_FNTCLR'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Rpt Igr Fntclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10649986772986917)
,p_db_column_name=>'RPT_IGR_FNTSIZE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Rpt Igr Fntsize'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10650351876986917)
,p_db_column_name=>'RPT_IGR_FNFMLY'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Rpt Igr Fnfmly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10650743076986918)
,p_db_column_name=>'RPT_IGR_BRDRCLR'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Rpt Igr Brdrclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10651187057986918)
,p_db_column_name=>'ITEM_CNTR_FNTCLR'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Item Cntr Fntclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10651514280986918)
,p_db_column_name=>'ITEM_CNTR_FNTSIZE'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Item Cntr Fntsize'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10651973819986918)
,p_db_column_name=>'ITEM_CNTR_FNTWT'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Item Cntr Fntwt'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10652397969986918)
,p_db_column_name=>'ITEM_CNTR_FNTFMLY'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Item Cntr Fntfmly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10652721440986918)
,p_db_column_name=>'ITEM_CNTR_HIGHT'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Item Cntr Hight'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10653162410986918)
,p_db_column_name=>'ITEM_CNTR_BGCLR'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Item Cntr Bgclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10653517285986918)
,p_db_column_name=>'ITEM_LABL_FNTCLR'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Item Labl Fntclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10653961650986918)
,p_db_column_name=>'ITEM_LABL_FNTSIZE'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Item Labl Fntsize'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10654352148986918)
,p_db_column_name=>'ITEM_LABL_FNTWT'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Item Labl Fntwt'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10654784339986918)
,p_db_column_name=>'ITEM_LABL_FNTFMLY'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Item Labl Fntfmly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10655195552986918)
,p_db_column_name=>'BTN_NEXT_LBL'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Btn Next Lbl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10655571263986918)
,p_db_column_name=>'BTN_NEXT_FNFMLY'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Btn Next Fnfmly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10655927053986918)
,p_db_column_name=>'BTN_NEXT_WIDTH'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Btn Next Width'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10656309998986920)
,p_db_column_name=>'BTN_NEXT_HIGHT'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Btn Next Hight'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10656768375986920)
,p_db_column_name=>'BTN_NEXT_ICON'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Btn Next Icon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10657111931986920)
,p_db_column_name=>'BTN_NEXT_CLR'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Btn Next Clr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10657584914986920)
,p_db_column_name=>'BTN_NEXT_BGCLRL'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Btn Next Bgclrl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10657907366986920)
,p_db_column_name=>'BTN_NEXT_BGCLRR'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Btn Next Bgclrr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10658324124986920)
,p_db_column_name=>'BTN_NEXT_BRDRCLR'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Btn Next Brdrclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10658799012986920)
,p_db_column_name=>'BTN_NEXT_BRDRRDS'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Btn Next Brdrrds'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10659117960986920)
,p_db_column_name=>'BTN_CNCL_LBL'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Btn Cncl Lbl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10659540106986920)
,p_db_column_name=>'BTN_CNCL_WIDTH'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Btn Cncl Width'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10659944517986920)
,p_db_column_name=>'BTN_CNCL_HIGHT'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Btn Cncl Hight'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10660331504986920)
,p_db_column_name=>'BTN_CNCL_ICON'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Btn Cncl Icon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10660713383986920)
,p_db_column_name=>'BTN_CNCL_CLR'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Btn Cncl Clr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10661162988986920)
,p_db_column_name=>'BTN_CNCL_BGCLRL'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Btn Cncl Bgclrl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10661503648986926)
,p_db_column_name=>'BTN_CNCL_BGCLRR'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Btn Cncl Bgclrr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10661954597986926)
,p_db_column_name=>'BTN_CNCL_BRDRCLR'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Btn Cncl Brdrclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10662364980986928)
,p_db_column_name=>'BTN_CNCL_BRDRRDS'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Btn Cncl Brdrrds'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10662756156986928)
,p_db_column_name=>'BTN_CNCL_FNFMLY'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Btn Cncl Fnfmly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10663178819986928)
,p_db_column_name=>'BTN_SAVE_LBL'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Btn Save Lbl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10663577420986928)
,p_db_column_name=>'BTN_SAVE_WIDTH'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Btn Save Width'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10663947027986929)
,p_db_column_name=>'BTN_SAVE_HIGHT'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Btn Save Hight'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10664385722986929)
,p_db_column_name=>'BTN_SAVE_ICON'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Btn Save Icon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10664792785986929)
,p_db_column_name=>'BTN_SAVE_CLR'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Btn Save Clr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10665140237986929)
,p_db_column_name=>'BTN_SAVE_BGCLRL'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Btn Save Bgclrl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10665537658986929)
,p_db_column_name=>'BTN_SAVE_BGCLRR'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'Btn Save Bgclrr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10665923737986929)
,p_db_column_name=>'BTN_SAVE_BRDRCLR'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'Btn Save Brdrclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10666305546986929)
,p_db_column_name=>'BTN_SAVE_BRDRRDS'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'Btn Save Brdrrds'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10666710038986931)
,p_db_column_name=>'BTN_SAVE_FNFMLY'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'Btn Save Fnfmly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10667186339986931)
,p_db_column_name=>'BTN_BACK_LBL'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'Btn Back Lbl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10667597120986931)
,p_db_column_name=>'BTN_BACK_WIDTH'
,p_display_order=>76
,p_column_identifier=>'BX'
,p_column_label=>'Btn Back Width'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10667979220986931)
,p_db_column_name=>'BTN_BACK_HIGHT'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Btn Back Hight'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10668351671986931)
,p_db_column_name=>'BTN_BACK_ICON'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'Btn Back Icon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10668725024986931)
,p_db_column_name=>'BTN_BACK_CLR'
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'Btn Back Clr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10669195641986931)
,p_db_column_name=>'BTN_BACK_BGCLRL'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Btn Back Bgclrl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10669550436986932)
,p_db_column_name=>'BTN_BACK_BGCLRR'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Btn Back Bgclrr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10669900083986932)
,p_db_column_name=>'BTN_BACK_BRDRCLR'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Btn Back Brdrclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10670392589986932)
,p_db_column_name=>'BTN_BACK_BRDRRDS'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Btn Back Brdrrds'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10670759593986932)
,p_db_column_name=>'BTN_BACK_FNFMLY'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'Btn Back Fnfmly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10671155609986932)
,p_db_column_name=>'BTN_SBMT_LBL'
,p_display_order=>85
,p_column_identifier=>'CG'
,p_column_label=>'Btn Sbmt Lbl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10671559366986932)
,p_db_column_name=>'BTN_SBMT_WIDTH'
,p_display_order=>86
,p_column_identifier=>'CH'
,p_column_label=>'Btn Sbmt Width'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10671923586986939)
,p_db_column_name=>'BTN_SBMT_HIGHT'
,p_display_order=>87
,p_column_identifier=>'CI'
,p_column_label=>'Btn Sbmt Hight'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10672329086986939)
,p_db_column_name=>'BTN_SBMT_ICON'
,p_display_order=>88
,p_column_identifier=>'CJ'
,p_column_label=>'Btn Sbmt Icon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10672742727986939)
,p_db_column_name=>'BTN_SBMT_CLR'
,p_display_order=>89
,p_column_identifier=>'CK'
,p_column_label=>'Btn Sbmt Clr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10673154671986940)
,p_db_column_name=>'BTN_SBMT_BGCLRL'
,p_display_order=>90
,p_column_identifier=>'CL'
,p_column_label=>'Btn Sbmt Bgclrl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10673518083986940)
,p_db_column_name=>'BTN_SBMT_BGCLRR'
,p_display_order=>91
,p_column_identifier=>'CM'
,p_column_label=>'Btn Sbmt Bgclrr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10673908284986940)
,p_db_column_name=>'BTN_SBMT_BRDRCLR'
,p_display_order=>92
,p_column_identifier=>'CN'
,p_column_label=>'Btn Sbmt Brdrclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10674332316986942)
,p_db_column_name=>'BTN_SBMT_BRDRRDS'
,p_display_order=>93
,p_column_identifier=>'CO'
,p_column_label=>'Btn Sbmt Brdrrds'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10674712917986942)
,p_db_column_name=>'BTN_SBMT_FNFMLY'
,p_display_order=>94
,p_column_identifier=>'CP'
,p_column_label=>'Btn Sbmt Fnfmly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10675135197986942)
,p_db_column_name=>'BTN_DELT_LBL'
,p_display_order=>95
,p_column_identifier=>'CQ'
,p_column_label=>'Btn Delt Lbl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10675561694986943)
,p_db_column_name=>'BTN_DELT_WIDTH'
,p_display_order=>96
,p_column_identifier=>'CR'
,p_column_label=>'Btn Delt Width'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10675934685986943)
,p_db_column_name=>'BTN_DELT_HIGHT'
,p_display_order=>97
,p_column_identifier=>'CS'
,p_column_label=>'Btn Delt Hight'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10676375118986943)
,p_db_column_name=>'BTN_DELT_ICON'
,p_display_order=>98
,p_column_identifier=>'CT'
,p_column_label=>'Btn Delt Icon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10676731164986943)
,p_db_column_name=>'BTN_DELT_CLR'
,p_display_order=>99
,p_column_identifier=>'CU'
,p_column_label=>'Btn Delt Clr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10677133814986943)
,p_db_column_name=>'BTN_DELT_BGCLRL'
,p_display_order=>100
,p_column_identifier=>'CV'
,p_column_label=>'Btn Delt Bgclrl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10677581119986943)
,p_db_column_name=>'BTN_DELT_BGCLRR'
,p_display_order=>101
,p_column_identifier=>'CW'
,p_column_label=>'Btn Delt Bgclrr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10677945402986943)
,p_db_column_name=>'BTN_DELT_BRDRCLR'
,p_display_order=>102
,p_column_identifier=>'CX'
,p_column_label=>'Btn Delt Brdrclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10678323921986943)
,p_db_column_name=>'BTN_DELT_BRDRRDS'
,p_display_order=>103
,p_column_identifier=>'CY'
,p_column_label=>'Btn Delt Brdrrds'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10678768207986943)
,p_db_column_name=>'BTN_DELT_FNFMLY'
,p_display_order=>104
,p_column_identifier=>'CZ'
,p_column_label=>'Btn Delt Fnfmly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10679169878986946)
,p_db_column_name=>'BTN_PRNT_LBL'
,p_display_order=>105
,p_column_identifier=>'DA'
,p_column_label=>'Btn Prnt Lbl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10679522567986946)
,p_db_column_name=>'BTN_PRNT_WIDTH'
,p_display_order=>106
,p_column_identifier=>'DB'
,p_column_label=>'Btn Prnt Width'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10679921418986946)
,p_db_column_name=>'BTN_PRNT_HIGHT'
,p_display_order=>107
,p_column_identifier=>'DC'
,p_column_label=>'Btn Prnt Hight'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10680331896986946)
,p_db_column_name=>'BTN_PRNT_ICON'
,p_display_order=>108
,p_column_identifier=>'DD'
,p_column_label=>'Btn Prnt Icon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10680756496986948)
,p_db_column_name=>'BTN_PRNT_CLR'
,p_display_order=>109
,p_column_identifier=>'DE'
,p_column_label=>'Btn Prnt Clr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10681148952986948)
,p_db_column_name=>'BTN_PRNT_BGCLRL'
,p_display_order=>110
,p_column_identifier=>'DF'
,p_column_label=>'Btn Prnt Bgclrl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10681573929986948)
,p_db_column_name=>'BTN_PRNT_BGCLRR'
,p_display_order=>111
,p_column_identifier=>'DG'
,p_column_label=>'Btn Prnt Bgclrr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10681918221986948)
,p_db_column_name=>'BTN_PRNT_BRDRCLR'
,p_display_order=>112
,p_column_identifier=>'DH'
,p_column_label=>'Btn Prnt Brdrclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10682320740986948)
,p_db_column_name=>'BTN_PRNT_BRDRRDS'
,p_display_order=>113
,p_column_identifier=>'DI'
,p_column_label=>'Btn Prnt Brdrrds'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10682736571986948)
,p_db_column_name=>'BTN_PRNT_FNFMLY'
,p_display_order=>114
,p_column_identifier=>'DJ'
,p_column_label=>'Btn Prnt Fnfmly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10683173700986950)
,p_db_column_name=>'BTN_RFRS_LBL'
,p_display_order=>115
,p_column_identifier=>'DK'
,p_column_label=>'Btn Rfrs Lbl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10683531445986950)
,p_db_column_name=>'BTN_RFRS_WIDTH'
,p_display_order=>116
,p_column_identifier=>'DL'
,p_column_label=>'Btn Rfrs Width'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10683928900986950)
,p_db_column_name=>'BTN_RFRS_HIGHT'
,p_display_order=>117
,p_column_identifier=>'DM'
,p_column_label=>'Btn Rfrs Hight'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10684303347986950)
,p_db_column_name=>'BTN_RFRS_ICON'
,p_display_order=>118
,p_column_identifier=>'DN'
,p_column_label=>'Btn Rfrs Icon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10684741725986950)
,p_db_column_name=>'BTN_RFRS_CLR'
,p_display_order=>119
,p_column_identifier=>'DO'
,p_column_label=>'Btn Rfrs Clr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10685100244986950)
,p_db_column_name=>'BTN_RFRS_BGCLRL'
,p_display_order=>120
,p_column_identifier=>'DP'
,p_column_label=>'Btn Rfrs Bgclrl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10685576694986950)
,p_db_column_name=>'BTN_RFRS_BGCLRR'
,p_display_order=>121
,p_column_identifier=>'DQ'
,p_column_label=>'Btn Rfrs Bgclrr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10685923581986950)
,p_db_column_name=>'BTN_RFRS_BRDRCLR'
,p_display_order=>122
,p_column_identifier=>'DR'
,p_column_label=>'Btn Rfrs Brdrclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10686313552986951)
,p_db_column_name=>'BTN_RFRS_BRDRRDS'
,p_display_order=>123
,p_column_identifier=>'DS'
,p_column_label=>'Btn Rfrs Brdrrds'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10686711343986951)
,p_db_column_name=>'BTN_RFRS_FNFMLY'
,p_display_order=>124
,p_column_identifier=>'DT'
,p_column_label=>'Btn Rfrs Fnfmly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10687121618986951)
,p_db_column_name=>'PAGE_ALRT_BGCLR'
,p_display_order=>125
,p_column_identifier=>'DU'
,p_column_label=>'Page Alrt Bgclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10687506137986951)
,p_db_column_name=>'PAGE_ALRT_FNTCLR'
,p_display_order=>126
,p_column_identifier=>'DV'
,p_column_label=>'Page Alrt Fntclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10687978729986951)
,p_db_column_name=>'PAGE_ALRT_FNTSIZE'
,p_display_order=>127
,p_column_identifier=>'DW'
,p_column_label=>'Page Alrt Fntsize'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10688348749986951)
,p_db_column_name=>'PAGE_ALRT_FNTFMLY'
,p_display_order=>128
,p_column_identifier=>'DX'
,p_column_label=>'Page Alrt Fntfmly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10688707231986954)
,p_db_column_name=>'PAGE_ALRT_BRDRCLR'
,p_display_order=>129
,p_column_identifier=>'DY'
,p_column_label=>'Page Alrt Brdrclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10689170317986957)
,p_db_column_name=>'PAGE_ALRT_BRDRRDS'
,p_display_order=>130
,p_column_identifier=>'DZ'
,p_column_label=>'Page Alrt Brdrrds'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10689528518986959)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>131
,p_column_identifier=>'EA'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10689910893986959)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>132
,p_column_identifier=>'EB'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10690318337986968)
,p_db_column_name=>'MODIFIED_BY'
,p_display_order=>133
,p_column_identifier=>'EC'
,p_column_label=>'Modified By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10690742628986968)
,p_db_column_name=>'MODIFIED_DATE'
,p_display_order=>134
,p_column_identifier=>'ED'
,p_column_label=>'Modified Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11445566075823004)
,p_db_column_name=>'PAG_BODY_BGCLRR'
,p_display_order=>144
,p_column_identifier=>'EE'
,p_column_label=>'Pag Body Bgclrr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11445674159823005)
,p_db_column_name=>'PAG_BODY_BGCLRL'
,p_display_order=>154
,p_column_identifier=>'EF'
,p_column_label=>'Pag Body Bgclrl'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11445721929823006)
,p_db_column_name=>'ITEM_CNTR_BRDRCLR'
,p_display_order=>164
,p_column_identifier=>'EG'
,p_column_label=>'Item Cntr Brdrclr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11445895326823007)
,p_db_column_name=>'ITEM_CNTR_BRDRRDS'
,p_display_order=>174
,p_column_identifier=>'EH'
,p_column_label=>'Item Cntr Brdrrds'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16055928156875933)
,p_db_column_name=>'PAG_BODY_GRDNT_DIR'
,p_display_order=>184
,p_column_identifier=>'EI'
,p_column_label=>'Pag Body Grdnt Dir'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16056039872875934)
,p_db_column_name=>'RPT_CLS_HDRBGCLR'
,p_display_order=>194
,p_column_identifier=>'EJ'
,p_column_label=>'Rpt Cls Hdrbgclr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16056188604875935)
,p_db_column_name=>'RPT_CLS_HDRFNTCLR'
,p_display_order=>204
,p_column_identifier=>'EK'
,p_column_label=>'Rpt Cls Hdrfntclr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16056213500875936)
,p_db_column_name=>'RPT_CLS_HDRFNTSIZE'
,p_display_order=>214
,p_column_identifier=>'EL'
,p_column_label=>'Rpt Cls Hdrfntsize'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16056341593875937)
,p_db_column_name=>'RPT_CLS_HDRFNTFMLY'
,p_display_order=>224
,p_column_identifier=>'EM'
,p_column_label=>'Rpt Cls Hdrfntfmly'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16056459851875938)
,p_db_column_name=>'RPT_IRR_HDRBGCLR'
,p_display_order=>234
,p_column_identifier=>'EN'
,p_column_label=>'Rpt Irr Hdrbgclr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16056581971875939)
,p_db_column_name=>'RPT_IRR_HDRFNTCLR'
,p_display_order=>244
,p_column_identifier=>'EO'
,p_column_label=>'Rpt Irr Hdrfntclr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16056688905875940)
,p_db_column_name=>'RPT_IRR_HDRFNTSIZE'
,p_display_order=>254
,p_column_identifier=>'EP'
,p_column_label=>'Rpt Irr Hdrfntsize'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16056769110875941)
,p_db_column_name=>'RPT_IRR_HDRFNTFMLY'
,p_display_order=>264
,p_column_identifier=>'EQ'
,p_column_label=>'Rpt Irr Hdrfntfmly'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16056881520875942)
,p_db_column_name=>'RPT_IGR_HDRBGCLR'
,p_display_order=>274
,p_column_identifier=>'ER'
,p_column_label=>'Rpt Igr Hdrbgclr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16056922184875943)
,p_db_column_name=>'RPT_IGR_HDRFNTCLR'
,p_display_order=>284
,p_column_identifier=>'ES'
,p_column_label=>'Rpt Igr Hdrfntclr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16057017501875944)
,p_db_column_name=>'RPT_IGR_HDRFNTSIZE'
,p_display_order=>294
,p_column_identifier=>'ET'
,p_column_label=>'Rpt Igr Hdrfntsize'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16057120982875945)
,p_db_column_name=>'RPT_IGR_HDRFNTFMLY'
,p_display_order=>304
,p_column_identifier=>'EU'
,p_column_label=>'Rpt Igr Hdrfntfmly'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16057261299875946)
,p_db_column_name=>'BTN_NEXT_LBL_FNTWT'
,p_display_order=>314
,p_column_identifier=>'EV'
,p_column_label=>'Btn Next Lbl Fntwt'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16057353223875947)
,p_db_column_name=>'BTN_NEXT_GRDNT_DIR'
,p_display_order=>324
,p_column_identifier=>'EW'
,p_column_label=>'Btn Next Grdnt Dir'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16057427962875948)
,p_db_column_name=>'BTN_CNCL_LBL_FNTWT'
,p_display_order=>334
,p_column_identifier=>'EX'
,p_column_label=>'Btn Cncl Lbl Fntwt'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16057512341875949)
,p_db_column_name=>'BTN_CNCL_GRDNT_DIR'
,p_display_order=>344
,p_column_identifier=>'EY'
,p_column_label=>'Btn Cncl Grdnt Dir'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16057673357875950)
,p_db_column_name=>'BTN_SAVE_LBL_FNTWT'
,p_display_order=>354
,p_column_identifier=>'EZ'
,p_column_label=>'Btn Save Lbl Fntwt'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16164081450017001)
,p_db_column_name=>'BTN_SAVE_GRDNT_DIR'
,p_display_order=>364
,p_column_identifier=>'FA'
,p_column_label=>'Btn Save Grdnt Dir'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16164165075017002)
,p_db_column_name=>'BTN_BACK_LBL_FNTWT'
,p_display_order=>374
,p_column_identifier=>'FB'
,p_column_label=>'Btn Back Lbl Fntwt'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16164272463017003)
,p_db_column_name=>'BTN_BACK_GRDNT_DIR'
,p_display_order=>384
,p_column_identifier=>'FC'
,p_column_label=>'Btn Back Grdnt Dir'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16164394433017004)
,p_db_column_name=>'BTN_SBMT_LBL_FNTWT'
,p_display_order=>394
,p_column_identifier=>'FD'
,p_column_label=>'Btn Sbmt Lbl Fntwt'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16164414503017005)
,p_db_column_name=>'BTN_SBMT_GRDNT_DIR'
,p_display_order=>404
,p_column_identifier=>'FE'
,p_column_label=>'Btn Sbmt Grdnt Dir'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16164584701017006)
,p_db_column_name=>'BTN_DELT_LBL_FNTWT'
,p_display_order=>414
,p_column_identifier=>'FF'
,p_column_label=>'Btn Delt Lbl Fntwt'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16164661827017007)
,p_db_column_name=>'BTN_DELT_GRDNT_DIR'
,p_display_order=>424
,p_column_identifier=>'FG'
,p_column_label=>'Btn Delt Grdnt Dir'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16164773825017008)
,p_db_column_name=>'BTN_PRNT_LBL_FNTWT'
,p_display_order=>434
,p_column_identifier=>'FH'
,p_column_label=>'Btn Prnt Lbl Fntwt'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16164811112017009)
,p_db_column_name=>'BTN_PRNT_GRDNT_DIR'
,p_display_order=>444
,p_column_identifier=>'FI'
,p_column_label=>'Btn Prnt Grdnt Dir'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16164998870017010)
,p_db_column_name=>'BTN_RFRS_LBL_FNTWT'
,p_display_order=>454
,p_column_identifier=>'FJ'
,p_column_label=>'Btn Rfrs Lbl Fntwt'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16165027547017011)
,p_db_column_name=>'BTN_RFRS_GRDNT_DIR'
,p_display_order=>464
,p_column_identifier=>'FK'
,p_column_label=>'Btn Rfrs Grdnt Dir'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(10691980198987532)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'106920'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TMPLT_ID:CAGRPCDE:CACMPCDE:PARTYFLG:PAG_BODY_BGCLR:PAG_BODY_BGCLRR:PAG_BODY_BGCLRL:DATE_FRMT_MASK:CURRENCY_FRMT_MASK:RGN_RGN1_BGCLR:RGN_RGN1_HEIGHT:RGN_RGN2_BGCLR:RGN_RGN2_HEIGHT:RGN_RGN3_BGCLR:RGN_RGN3_HEIGHT:RGN_RGN4_BGCLR:RGN_RGN4_HEIGHT:RGN_RGN5_'
||'BGCLR:RGN_RGN5_HEIGHT:RGN_RGN6_BGCLR:RGN_RGN6_HEIGHT:RPT_CLS_BGCLR:RPT_CLS_FNTCLR:RPT_CLS_FNTSIZE:RPT_CLS_FNFMLY:RPT_CLS_BRDRCLR:RPT_IRR_BGCLR:RPT_IRR_FNTCLR:RPT_IRR_FNTSIZE:RPT_IRR_FNFMLY:RPT_IRR_BRDRCLR:RPT_IGR_BGCLR:RPT_IGR_FNTCLR:RPT_IGR_FNTSIZE:'
||'RPT_IGR_FNFMLY:RPT_IGR_BRDRCLR:ITEM_CNTR_FNTCLR:ITEM_CNTR_FNTSIZE:ITEM_CNTR_FNTWT:ITEM_CNTR_FNTFMLY:ITEM_CNTR_HIGHT:ITEM_CNTR_BGCLR:ITEM_LABL_FNTCLR:ITEM_LABL_FNTSIZE:ITEM_LABL_FNTWT:ITEM_LABL_FNTFMLY:BTN_NEXT_LBL:BTN_NEXT_FNFMLY:BTN_NEXT_WIDTH:BTN_N'
||'EXT_HIGHT:BTN_NEXT_ICON:BTN_NEXT_CLR:BTN_NEXT_BGCLRL:BTN_NEXT_BGCLRR:BTN_NEXT_BRDRCLR:BTN_NEXT_BRDRRDS:BTN_CNCL_LBL:BTN_CNCL_WIDTH:BTN_CNCL_HIGHT:BTN_CNCL_ICON:BTN_CNCL_CLR:BTN_CNCL_BGCLRL:BTN_CNCL_BGCLRR:BTN_CNCL_BRDRCLR:BTN_CNCL_BRDRRDS:BTN_CNCL_FN'
||'FMLY:BTN_SAVE_LBL:BTN_SAVE_WIDTH:BTN_SAVE_HIGHT:BTN_SAVE_ICON:BTN_SAVE_CLR:BTN_SAVE_BGCLRL:BTN_SAVE_BGCLRR:BTN_SAVE_BRDRCLR:BTN_SAVE_BRDRRDS:BTN_SAVE_FNFMLY:BTN_BACK_LBL:BTN_BACK_WIDTH:BTN_BACK_HIGHT:BTN_BACK_ICON:BTN_BACK_CLR:BTN_BACK_BGCLRL:BTN_BAC'
||'K_BGCLRR:BTN_BACK_BRDRCLR:BTN_BACK_BRDRRDS:BTN_BACK_FNFMLY:BTN_SBMT_LBL:BTN_SBMT_WIDTH:BTN_SBMT_HIGHT:BTN_SBMT_ICON:BTN_SBMT_CLR:BTN_SBMT_BGCLRL:BTN_SBMT_BGCLRR:BTN_SBMT_BRDRCLR:BTN_SBMT_BRDRRDS:BTN_SBMT_FNFMLY:BTN_DELT_LBL:BTN_DELT_WIDTH:BTN_DELT_HI'
||'GHT:BTN_DELT_ICON:BTN_DELT_CLR:BTN_DELT_BGCLRL:BTN_DELT_BGCLRR:BTN_DELT_BRDRCLR:BTN_DELT_BRDRRDS:BTN_DELT_FNFMLY:BTN_PRNT_LBL:BTN_PRNT_WIDTH:BTN_PRNT_HIGHT:BTN_PRNT_ICON:BTN_PRNT_CLR:BTN_PRNT_BGCLRL:BTN_PRNT_BGCLRR:BTN_PRNT_BRDRCLR:BTN_PRNT_BRDRRDS:B'
||'TN_PRNT_FNFMLY:BTN_RFRS_LBL:BTN_RFRS_WIDTH:BTN_RFRS_HIGHT:BTN_RFRS_ICON:BTN_RFRS_CLR:BTN_RFRS_BGCLRL:BTN_RFRS_BGCLRR:BTN_RFRS_BRDRCLR:BTN_RFRS_BRDRRDS:BTN_RFRS_FNFMLY:PAGE_ALRT_BGCLR:PAGE_ALRT_FNTCLR:PAGE_ALRT_FNTSIZE:PAGE_ALRT_FNTFMLY:PAGE_ALRT_BRDR'
||'CLR:PAGE_ALRT_BRDRRDS:OPRSTAMP:TIMSTAMP:MODIFIED_BY:MODIFIED_DATE:ITEM_CNTR_BRDRCLR:ITEM_CNTR_BRDRRDS::PAG_BODY_GRDNT_DIR:RPT_CLS_HDRBGCLR:RPT_CLS_HDRFNTCLR:RPT_CLS_HDRFNTSIZE:RPT_CLS_HDRFNTFMLY:RPT_IRR_HDRBGCLR:RPT_IRR_HDRFNTCLR:RPT_IRR_HDRFNTSIZE:R'
||'PT_IRR_HDRFNTFMLY:RPT_IGR_HDRBGCLR:RPT_IGR_HDRFNTCLR:RPT_IGR_HDRFNTSIZE:RPT_IGR_HDRFNTFMLY:BTN_NEXT_LBL_FNTWT:BTN_NEXT_GRDNT_DIR:BTN_CNCL_LBL_FNTWT:BTN_CNCL_GRDNT_DIR:BTN_SAVE_LBL_FNTWT:BTN_SAVE_GRDNT_DIR:BTN_BACK_LBL_FNTWT:BTN_BACK_GRDNT_DIR:BTN_SBM'
||'T_LBL_FNTWT:BTN_SBMT_GRDNT_DIR:BTN_DELT_LBL_FNTWT:BTN_DELT_GRDNT_DIR:BTN_PRNT_LBL_FNTWT:BTN_PRNT_GRDNT_DIR:BTN_RFRS_LBL_FNTWT:BTN_RFRS_GRDNT_DIR'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14266305093754446)
,p_name=>'Column Wise Show'
,p_template=>wwv_flow_api.id(1582245671854857847)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TMPLT_ID, CAGRPCDE, CACMPCDE, PARTYFLG, PAG_BODY_BGCLR, PAG_BODY_BGCLRR, PAG_BODY_BGCLRL, PAG_BODY_GRDNT_DIR, DATE_FRMT_MASK, CURRENCY_FRMT_MASK, RGN_RGN1_BGCLR, RGN_RGN1_HEIGHT, RGN_RGN2_BGCLR, RGN_RGN2_HEIGHT, RGN_RGN3_BGCLR, RGN_RGN3_HEIGHT'
||', RGN_RGN4_BGCLR, RGN_RGN4_HEIGHT, RGN_RGN5_BGCLR, RGN_RGN5_HEIGHT, RGN_RGN6_BGCLR, RGN_RGN6_HEIGHT, RPT_CLS_BGCLR, RPT_CLS_HDRBGCLR, RPT_CLS_HDRFNTCLR, RPT_CLS_HDRFNTSIZE, RPT_CLS_HDRFNTFMLY, RPT_CLS_FNTCLR, RPT_CLS_FNTSIZE, RPT_CLS_FNFMLY, RPT_CLS_'
||'BRDRCLR, RPT_IRR_BGCLR, RPT_IRR_HDRBGCLR, RPT_IRR_HDRFNTCLR, RPT_IRR_HDRFNTSIZE, RPT_IRR_HDRFNTFMLY, RPT_IRR_FNTCLR, RPT_IRR_FNTSIZE, RPT_IRR_FNFMLY, RPT_IRR_BRDRCLR, RPT_IGR_BGCLR, RPT_IGR_HDRBGCLR, RPT_IGR_HDRFNTCLR, RPT_IGR_HDRFNTSIZE, RPT_IGR_HDR'
||'FNTFMLY, RPT_IGR_FNTCLR, RPT_IGR_FNTSIZE, RPT_IGR_FNFMLY, RPT_IGR_BRDRCLR, ITEM_CNTR_FNTCLR, ITEM_CNTR_FNTSIZE, ITEM_CNTR_FNTWT, ITEM_CNTR_FNTFMLY, ITEM_CNTR_HIGHT, ITEM_CNTR_BGCLR, ITEM_CNTR_BRDRCLR, ITEM_CNTR_BRDRRDS, ITEM_LABL_FNTCLR, ITEM_LABL_FN'
||'TSIZE, ITEM_LABL_FNTWT, ITEM_LABL_FNTFMLY, BTN_NEXT_LBL, BTN_NEXT_LBL_FNTWT, BTN_NEXT_FNFMLY, BTN_NEXT_WIDTH, BTN_NEXT_HIGHT, BTN_NEXT_ICON, BTN_NEXT_CLR, BTN_NEXT_BGCLRL, BTN_NEXT_BGCLRR, BTN_NEXT_GRDNT_DIR, BTN_NEXT_BRDRCLR, BTN_NEXT_BRDRRDS, BTN_C'
||'NCL_LBL, BTN_CNCL_LBL_FNTWT, BTN_CNCL_WIDTH, BTN_CNCL_HIGHT, BTN_CNCL_ICON, BTN_CNCL_CLR, BTN_CNCL_BGCLRL, BTN_CNCL_BGCLRR, BTN_CNCL_BRDRCLR, BTN_CNCL_GRDNT_DIR, BTN_CNCL_BRDRRDS, BTN_CNCL_FNFMLY, BTN_SAVE_LBL, BTN_SAVE_LBL_FNTWT, BTN_SAVE_WIDTH, BTN'
||'_SAVE_HIGHT, BTN_SAVE_ICON, BTN_SAVE_CLR, BTN_SAVE_BGCLRL, BTN_SAVE_BGCLRR, BTN_SAVE_GRDNT_DIR, BTN_SAVE_BRDRCLR, BTN_SAVE_BRDRRDS, BTN_SAVE_FNFMLY, BTN_BACK_LBL, BTN_BACK_LBL_FNTWT, BTN_BACK_WIDTH, BTN_BACK_HIGHT, BTN_BACK_ICON, BTN_BACK_CLR, BTN_BA'
||'CK_BGCLRL, BTN_BACK_BGCLRR, BTN_BACK_GRDNT_DIR, BTN_BACK_BRDRCLR, BTN_BACK_BRDRRDS, BTN_BACK_FNFMLY, BTN_SBMT_LBL, BTN_SBMT_LBL_FNTWT, BTN_SBMT_WIDTH, BTN_SBMT_HIGHT, BTN_SBMT_ICON, BTN_SBMT_CLR, BTN_SBMT_BGCLRL, BTN_SBMT_BGCLRR, BTN_SBMT_GRDNT_DIR, '
||'BTN_SBMT_BRDRCLR, BTN_SBMT_BRDRRDS, BTN_SBMT_FNFMLY, BTN_DELT_LBL, BTN_DELT_LBL_FNTWT, BTN_DELT_WIDTH, BTN_DELT_HIGHT, BTN_DELT_ICON, BTN_DELT_CLR, BTN_DELT_BGCLRL, BTN_DELT_BGCLRR, BTN_DELT_GRDNT_DIR, BTN_DELT_BRDRCLR, BTN_DELT_BRDRRDS, BTN_DELT_FNF'
||'MLY, BTN_PRNT_LBL, BTN_PRNT_LBL_FNTWT, BTN_PRNT_WIDTH, BTN_PRNT_HIGHT, BTN_PRNT_ICON, BTN_PRNT_CLR, BTN_PRNT_BGCLRL, BTN_PRNT_BGCLRR, BTN_PRNT_GRDNT_DIR, BTN_PRNT_BRDRCLR, BTN_PRNT_BRDRRDS, BTN_PRNT_FNFMLY, BTN_RFRS_LBL, BTN_RFRS_LBL_FNTWT, BTN_RFRS_'
||'WIDTH, BTN_RFRS_HIGHT, BTN_RFRS_ICON, BTN_RFRS_CLR, BTN_RFRS_BGCLRL, BTN_RFRS_BGCLRR, BTN_RFRS_GRDNT_DIR, BTN_RFRS_BRDRCLR, BTN_RFRS_BRDRRDS, BTN_RFRS_FNFMLY, PAGE_ALRT_BGCLR, PAGE_ALRT_FNTCLR, PAGE_ALRT_FNTSIZE, PAGE_ALRT_FNTFMLY, PAGE_ALRT_BRDRCLR,'
||' PAGE_ALRT_BRDRRDS, OPRSTAMP, TIMSTAMP, MODIFIED_BY, MODIFIED_DATE',
'  from SYPGTMPLT_NEW'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1582261448571857894)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14415451582773038)
,p_query_column_id=>1
,p_column_alias=>'TMPLT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Tmplt Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14415506378773039)
,p_query_column_id=>2
,p_column_alias=>'CAGRPCDE'
,p_column_display_sequence=>2
,p_column_heading=>'Cagrpcde'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14415624772773040)
,p_query_column_id=>3
,p_column_alias=>'CACMPCDE'
,p_column_display_sequence=>3
,p_column_heading=>'Cacmpcde'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14415710028773041)
,p_query_column_id=>4
,p_column_alias=>'PARTYFLG'
,p_column_display_sequence=>4
,p_column_heading=>'Partyflg'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14415850374773042)
,p_query_column_id=>5
,p_column_alias=>'PAG_BODY_BGCLR'
,p_column_display_sequence=>5
,p_column_heading=>'Pag Body Bgclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14415969115773043)
,p_query_column_id=>6
,p_column_alias=>'PAG_BODY_BGCLRR'
,p_column_display_sequence=>6
,p_column_heading=>'Pag Body Bgclrr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14416032868773044)
,p_query_column_id=>7
,p_column_alias=>'PAG_BODY_BGCLRL'
,p_column_display_sequence=>7
,p_column_heading=>'Pag Body Bgclrl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16053015779875904)
,p_query_column_id=>8
,p_column_alias=>'PAG_BODY_GRDNT_DIR'
,p_column_display_sequence=>139
,p_column_heading=>'Pag Body Grdnt Dir'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14416146102773045)
,p_query_column_id=>9
,p_column_alias=>'DATE_FRMT_MASK'
,p_column_display_sequence=>8
,p_column_heading=>'Date Frmt Mask'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14416209500773046)
,p_query_column_id=>10
,p_column_alias=>'CURRENCY_FRMT_MASK'
,p_column_display_sequence=>9
,p_column_heading=>'Currency Frmt Mask'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14416302045773047)
,p_query_column_id=>11
,p_column_alias=>'RGN_RGN1_BGCLR'
,p_column_display_sequence=>10
,p_column_heading=>'Rgn Rgn1 Bgclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14416407860773048)
,p_query_column_id=>12
,p_column_alias=>'RGN_RGN1_HEIGHT'
,p_column_display_sequence=>11
,p_column_heading=>'Rgn Rgn1 Height'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14416523031773049)
,p_query_column_id=>13
,p_column_alias=>'RGN_RGN2_BGCLR'
,p_column_display_sequence=>12
,p_column_heading=>'Rgn Rgn2 Bgclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14416663236773050)
,p_query_column_id=>14
,p_column_alias=>'RGN_RGN2_HEIGHT'
,p_column_display_sequence=>13
,p_column_heading=>'Rgn Rgn2 Height'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14459142268780501)
,p_query_column_id=>15
,p_column_alias=>'RGN_RGN3_BGCLR'
,p_column_display_sequence=>14
,p_column_heading=>'Rgn Rgn3 Bgclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14459248232780502)
,p_query_column_id=>16
,p_column_alias=>'RGN_RGN3_HEIGHT'
,p_column_display_sequence=>15
,p_column_heading=>'Rgn Rgn3 Height'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14459310838780503)
,p_query_column_id=>17
,p_column_alias=>'RGN_RGN4_BGCLR'
,p_column_display_sequence=>16
,p_column_heading=>'Rgn Rgn4 Bgclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14459457633780504)
,p_query_column_id=>18
,p_column_alias=>'RGN_RGN4_HEIGHT'
,p_column_display_sequence=>17
,p_column_heading=>'Rgn Rgn4 Height'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14459540696780505)
,p_query_column_id=>19
,p_column_alias=>'RGN_RGN5_BGCLR'
,p_column_display_sequence=>18
,p_column_heading=>'Rgn Rgn5 Bgclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14459609364780506)
,p_query_column_id=>20
,p_column_alias=>'RGN_RGN5_HEIGHT'
,p_column_display_sequence=>19
,p_column_heading=>'Rgn Rgn5 Height'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14459740463780507)
,p_query_column_id=>21
,p_column_alias=>'RGN_RGN6_BGCLR'
,p_column_display_sequence=>20
,p_column_heading=>'Rgn Rgn6 Bgclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14459836548780508)
,p_query_column_id=>22
,p_column_alias=>'RGN_RGN6_HEIGHT'
,p_column_display_sequence=>21
,p_column_heading=>'Rgn Rgn6 Height'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14459914525780509)
,p_query_column_id=>23
,p_column_alias=>'RPT_CLS_BGCLR'
,p_column_display_sequence=>22
,p_column_heading=>'Rpt Cls Bgclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16053154952875905)
,p_query_column_id=>24
,p_column_alias=>'RPT_CLS_HDRBGCLR'
,p_column_display_sequence=>140
,p_column_heading=>'Rpt Cls Hdrbgclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16053296403875906)
,p_query_column_id=>25
,p_column_alias=>'RPT_CLS_HDRFNTCLR'
,p_column_display_sequence=>141
,p_column_heading=>'Rpt Cls Hdrfntclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16053353875875907)
,p_query_column_id=>26
,p_column_alias=>'RPT_CLS_HDRFNTSIZE'
,p_column_display_sequence=>142
,p_column_heading=>'Rpt Cls Hdrfntsize'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16053407902875908)
,p_query_column_id=>27
,p_column_alias=>'RPT_CLS_HDRFNTFMLY'
,p_column_display_sequence=>143
,p_column_heading=>'Rpt Cls Hdrfntfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14460071745780510)
,p_query_column_id=>28
,p_column_alias=>'RPT_CLS_FNTCLR'
,p_column_display_sequence=>23
,p_column_heading=>'Rpt Cls Fntclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14460115299780511)
,p_query_column_id=>29
,p_column_alias=>'RPT_CLS_FNTSIZE'
,p_column_display_sequence=>24
,p_column_heading=>'Rpt Cls Fntsize'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14460248826780512)
,p_query_column_id=>30
,p_column_alias=>'RPT_CLS_FNFMLY'
,p_column_display_sequence=>25
,p_column_heading=>'Rpt Cls Fnfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14460370725780513)
,p_query_column_id=>31
,p_column_alias=>'RPT_CLS_BRDRCLR'
,p_column_display_sequence=>26
,p_column_heading=>'Rpt Cls Brdrclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14460494076780514)
,p_query_column_id=>32
,p_column_alias=>'RPT_IRR_BGCLR'
,p_column_display_sequence=>27
,p_column_heading=>'Rpt Irr Bgclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16053574558875909)
,p_query_column_id=>33
,p_column_alias=>'RPT_IRR_HDRBGCLR'
,p_column_display_sequence=>144
,p_column_heading=>'Rpt Irr Hdrbgclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16053615227875910)
,p_query_column_id=>34
,p_column_alias=>'RPT_IRR_HDRFNTCLR'
,p_column_display_sequence=>145
,p_column_heading=>'Rpt Irr Hdrfntclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16053713244875911)
,p_query_column_id=>35
,p_column_alias=>'RPT_IRR_HDRFNTSIZE'
,p_column_display_sequence=>146
,p_column_heading=>'Rpt Irr Hdrfntsize'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16053867093875912)
,p_query_column_id=>36
,p_column_alias=>'RPT_IRR_HDRFNTFMLY'
,p_column_display_sequence=>147
,p_column_heading=>'Rpt Irr Hdrfntfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14460536096780515)
,p_query_column_id=>37
,p_column_alias=>'RPT_IRR_FNTCLR'
,p_column_display_sequence=>28
,p_column_heading=>'Rpt Irr Fntclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14460655754780516)
,p_query_column_id=>38
,p_column_alias=>'RPT_IRR_FNTSIZE'
,p_column_display_sequence=>29
,p_column_heading=>'Rpt Irr Fntsize'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14460715863780517)
,p_query_column_id=>39
,p_column_alias=>'RPT_IRR_FNFMLY'
,p_column_display_sequence=>30
,p_column_heading=>'Rpt Irr Fnfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14460814753780518)
,p_query_column_id=>40
,p_column_alias=>'RPT_IRR_BRDRCLR'
,p_column_display_sequence=>31
,p_column_heading=>'Rpt Irr Brdrclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14460959234780519)
,p_query_column_id=>41
,p_column_alias=>'RPT_IGR_BGCLR'
,p_column_display_sequence=>32
,p_column_heading=>'Rpt Igr Bgclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16053991144875913)
,p_query_column_id=>42
,p_column_alias=>'RPT_IGR_HDRBGCLR'
,p_column_display_sequence=>148
,p_column_heading=>'Rpt Igr Hdrbgclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16054006751875914)
,p_query_column_id=>43
,p_column_alias=>'RPT_IGR_HDRFNTCLR'
,p_column_display_sequence=>149
,p_column_heading=>'Rpt Igr Hdrfntclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16054177827875915)
,p_query_column_id=>44
,p_column_alias=>'RPT_IGR_HDRFNTSIZE'
,p_column_display_sequence=>150
,p_column_heading=>'Rpt Igr Hdrfntsize'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16054277541875916)
,p_query_column_id=>45
,p_column_alias=>'RPT_IGR_HDRFNTFMLY'
,p_column_display_sequence=>151
,p_column_heading=>'Rpt Igr Hdrfntfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14461075602780520)
,p_query_column_id=>46
,p_column_alias=>'RPT_IGR_FNTCLR'
,p_column_display_sequence=>33
,p_column_heading=>'Rpt Igr Fntclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14461114510780521)
,p_query_column_id=>47
,p_column_alias=>'RPT_IGR_FNTSIZE'
,p_column_display_sequence=>34
,p_column_heading=>'Rpt Igr Fntsize'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14461208065780522)
,p_query_column_id=>48
,p_column_alias=>'RPT_IGR_FNFMLY'
,p_column_display_sequence=>35
,p_column_heading=>'Rpt Igr Fnfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14461398195780523)
,p_query_column_id=>49
,p_column_alias=>'RPT_IGR_BRDRCLR'
,p_column_display_sequence=>36
,p_column_heading=>'Rpt Igr Brdrclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14461424340780524)
,p_query_column_id=>50
,p_column_alias=>'ITEM_CNTR_FNTCLR'
,p_column_display_sequence=>37
,p_column_heading=>'Item Cntr Fntclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14461592423780525)
,p_query_column_id=>51
,p_column_alias=>'ITEM_CNTR_FNTSIZE'
,p_column_display_sequence=>38
,p_column_heading=>'Item Cntr Fntsize'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14461631857780526)
,p_query_column_id=>52
,p_column_alias=>'ITEM_CNTR_FNTWT'
,p_column_display_sequence=>39
,p_column_heading=>'Item Cntr Fntwt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14461734983780527)
,p_query_column_id=>53
,p_column_alias=>'ITEM_CNTR_FNTFMLY'
,p_column_display_sequence=>40
,p_column_heading=>'Item Cntr Fntfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14461829844780528)
,p_query_column_id=>54
,p_column_alias=>'ITEM_CNTR_HIGHT'
,p_column_display_sequence=>41
,p_column_heading=>'Item Cntr Hight'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14461917355780529)
,p_query_column_id=>55
,p_column_alias=>'ITEM_CNTR_BGCLR'
,p_column_display_sequence=>42
,p_column_heading=>'Item Cntr Bgclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14462071437780530)
,p_query_column_id=>56
,p_column_alias=>'ITEM_CNTR_BRDRCLR'
,p_column_display_sequence=>43
,p_column_heading=>'Item Cntr Brdrclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14462197864780531)
,p_query_column_id=>57
,p_column_alias=>'ITEM_CNTR_BRDRRDS'
,p_column_display_sequence=>44
,p_column_heading=>'Item Cntr Brdrrds'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14462256780780532)
,p_query_column_id=>58
,p_column_alias=>'ITEM_LABL_FNTCLR'
,p_column_display_sequence=>45
,p_column_heading=>'Item Labl Fntclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14462384554780533)
,p_query_column_id=>59
,p_column_alias=>'ITEM_LABL_FNTSIZE'
,p_column_display_sequence=>46
,p_column_heading=>'Item Labl Fntsize'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14462402037780534)
,p_query_column_id=>60
,p_column_alias=>'ITEM_LABL_FNTWT'
,p_column_display_sequence=>47
,p_column_heading=>'Item Labl Fntwt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14462500574780535)
,p_query_column_id=>61
,p_column_alias=>'ITEM_LABL_FNTFMLY'
,p_column_display_sequence=>48
,p_column_heading=>'Item Labl Fntfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14462659505780536)
,p_query_column_id=>62
,p_column_alias=>'BTN_NEXT_LBL'
,p_column_display_sequence=>49
,p_column_heading=>'Btn Next Lbl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16054322345875917)
,p_query_column_id=>63
,p_column_alias=>'BTN_NEXT_LBL_FNTWT'
,p_column_display_sequence=>152
,p_column_heading=>'Btn Next Lbl Fntwt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14462772799780537)
,p_query_column_id=>64
,p_column_alias=>'BTN_NEXT_FNFMLY'
,p_column_display_sequence=>50
,p_column_heading=>'Btn Next Fnfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14462859356780538)
,p_query_column_id=>65
,p_column_alias=>'BTN_NEXT_WIDTH'
,p_column_display_sequence=>51
,p_column_heading=>'Btn Next Width'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14462992881780539)
,p_query_column_id=>66
,p_column_alias=>'BTN_NEXT_HIGHT'
,p_column_display_sequence=>52
,p_column_heading=>'Btn Next Hight'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14463072799780540)
,p_query_column_id=>67
,p_column_alias=>'BTN_NEXT_ICON'
,p_column_display_sequence=>53
,p_column_heading=>'Btn Next Icon'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14463181855780541)
,p_query_column_id=>68
,p_column_alias=>'BTN_NEXT_CLR'
,p_column_display_sequence=>54
,p_column_heading=>'Btn Next Clr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14463233445780542)
,p_query_column_id=>69
,p_column_alias=>'BTN_NEXT_BGCLRL'
,p_column_display_sequence=>55
,p_column_heading=>'Btn Next Bgclrl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14463340856780543)
,p_query_column_id=>70
,p_column_alias=>'BTN_NEXT_BGCLRR'
,p_column_display_sequence=>56
,p_column_heading=>'Btn Next Bgclrr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16054435819875918)
,p_query_column_id=>71
,p_column_alias=>'BTN_NEXT_GRDNT_DIR'
,p_column_display_sequence=>153
,p_column_heading=>'Btn Next Grdnt Dir'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14463472535780544)
,p_query_column_id=>72
,p_column_alias=>'BTN_NEXT_BRDRCLR'
,p_column_display_sequence=>57
,p_column_heading=>'Btn Next Brdrclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14463537236780545)
,p_query_column_id=>73
,p_column_alias=>'BTN_NEXT_BRDRRDS'
,p_column_display_sequence=>58
,p_column_heading=>'Btn Next Brdrrds'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14463619154780546)
,p_query_column_id=>74
,p_column_alias=>'BTN_CNCL_LBL'
,p_column_display_sequence=>59
,p_column_heading=>'Btn Cncl Lbl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16054508598875919)
,p_query_column_id=>75
,p_column_alias=>'BTN_CNCL_LBL_FNTWT'
,p_column_display_sequence=>154
,p_column_heading=>'Btn Cncl Lbl Fntwt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14463780540780547)
,p_query_column_id=>76
,p_column_alias=>'BTN_CNCL_WIDTH'
,p_column_display_sequence=>60
,p_column_heading=>'Btn Cncl Width'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14463875741780548)
,p_query_column_id=>77
,p_column_alias=>'BTN_CNCL_HIGHT'
,p_column_display_sequence=>61
,p_column_heading=>'Btn Cncl Hight'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14463945056780549)
,p_query_column_id=>78
,p_column_alias=>'BTN_CNCL_ICON'
,p_column_display_sequence=>62
,p_column_heading=>'Btn Cncl Icon'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14464096076780550)
,p_query_column_id=>79
,p_column_alias=>'BTN_CNCL_CLR'
,p_column_display_sequence=>63
,p_column_heading=>'Btn Cncl Clr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14464167064780501)
,p_query_column_id=>80
,p_column_alias=>'BTN_CNCL_BGCLRL'
,p_column_display_sequence=>64
,p_column_heading=>'Btn Cncl Bgclrl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14464289148780502)
,p_query_column_id=>81
,p_column_alias=>'BTN_CNCL_BGCLRR'
,p_column_display_sequence=>65
,p_column_heading=>'Btn Cncl Bgclrr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14464390653780503)
,p_query_column_id=>82
,p_column_alias=>'BTN_CNCL_BRDRCLR'
,p_column_display_sequence=>66
,p_column_heading=>'Btn Cncl Brdrclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16054672849875920)
,p_query_column_id=>83
,p_column_alias=>'BTN_CNCL_GRDNT_DIR'
,p_column_display_sequence=>155
,p_column_heading=>'Btn Cncl Grdnt Dir'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14464412894780504)
,p_query_column_id=>84
,p_column_alias=>'BTN_CNCL_BRDRRDS'
,p_column_display_sequence=>67
,p_column_heading=>'Btn Cncl Brdrrds'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14464515972780505)
,p_query_column_id=>85
,p_column_alias=>'BTN_CNCL_FNFMLY'
,p_column_display_sequence=>68
,p_column_heading=>'Btn Cncl Fnfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14464669846780506)
,p_query_column_id=>86
,p_column_alias=>'BTN_SAVE_LBL'
,p_column_display_sequence=>69
,p_column_heading=>'Btn Save Lbl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16054749951875921)
,p_query_column_id=>87
,p_column_alias=>'BTN_SAVE_LBL_FNTWT'
,p_column_display_sequence=>156
,p_column_heading=>'Btn Save Lbl Fntwt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14464716209780507)
,p_query_column_id=>88
,p_column_alias=>'BTN_SAVE_WIDTH'
,p_column_display_sequence=>70
,p_column_heading=>'Btn Save Width'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14464892143780508)
,p_query_column_id=>89
,p_column_alias=>'BTN_SAVE_HIGHT'
,p_column_display_sequence=>71
,p_column_heading=>'Btn Save Hight'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14464954856780509)
,p_query_column_id=>90
,p_column_alias=>'BTN_SAVE_ICON'
,p_column_display_sequence=>72
,p_column_heading=>'Btn Save Icon'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14465022476780510)
,p_query_column_id=>91
,p_column_alias=>'BTN_SAVE_CLR'
,p_column_display_sequence=>73
,p_column_heading=>'Btn Save Clr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14465182508780511)
,p_query_column_id=>92
,p_column_alias=>'BTN_SAVE_BGCLRL'
,p_column_display_sequence=>74
,p_column_heading=>'Btn Save Bgclrl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14465237236780512)
,p_query_column_id=>93
,p_column_alias=>'BTN_SAVE_BGCLRR'
,p_column_display_sequence=>75
,p_column_heading=>'Btn Save Bgclrr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16054879061875922)
,p_query_column_id=>94
,p_column_alias=>'BTN_SAVE_GRDNT_DIR'
,p_column_display_sequence=>157
,p_column_heading=>'Btn Save Grdnt Dir'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14465319305780513)
,p_query_column_id=>95
,p_column_alias=>'BTN_SAVE_BRDRCLR'
,p_column_display_sequence=>76
,p_column_heading=>'Btn Save Brdrclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14465403305780514)
,p_query_column_id=>96
,p_column_alias=>'BTN_SAVE_BRDRRDS'
,p_column_display_sequence=>77
,p_column_heading=>'Btn Save Brdrrds'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14465591499780515)
,p_query_column_id=>97
,p_column_alias=>'BTN_SAVE_FNFMLY'
,p_column_display_sequence=>78
,p_column_heading=>'Btn Save Fnfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14465684741780516)
,p_query_column_id=>98
,p_column_alias=>'BTN_BACK_LBL'
,p_column_display_sequence=>79
,p_column_heading=>'Btn Back Lbl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16054972045875923)
,p_query_column_id=>99
,p_column_alias=>'BTN_BACK_LBL_FNTWT'
,p_column_display_sequence=>158
,p_column_heading=>'Btn Back Lbl Fntwt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14465788519780517)
,p_query_column_id=>100
,p_column_alias=>'BTN_BACK_WIDTH'
,p_column_display_sequence=>80
,p_column_heading=>'Btn Back Width'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14465848128780518)
,p_query_column_id=>101
,p_column_alias=>'BTN_BACK_HIGHT'
,p_column_display_sequence=>81
,p_column_heading=>'Btn Back Hight'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14465915563780519)
,p_query_column_id=>102
,p_column_alias=>'BTN_BACK_ICON'
,p_column_display_sequence=>82
,p_column_heading=>'Btn Back Icon'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14466066720780520)
,p_query_column_id=>103
,p_column_alias=>'BTN_BACK_CLR'
,p_column_display_sequence=>83
,p_column_heading=>'Btn Back Clr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14466172237780521)
,p_query_column_id=>104
,p_column_alias=>'BTN_BACK_BGCLRL'
,p_column_display_sequence=>84
,p_column_heading=>'Btn Back Bgclrl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14466248556780522)
,p_query_column_id=>105
,p_column_alias=>'BTN_BACK_BGCLRR'
,p_column_display_sequence=>85
,p_column_heading=>'Btn Back Bgclrr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16055070397875924)
,p_query_column_id=>106
,p_column_alias=>'BTN_BACK_GRDNT_DIR'
,p_column_display_sequence=>159
,p_column_heading=>'Btn Back Grdnt Dir'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14466356321780523)
,p_query_column_id=>107
,p_column_alias=>'BTN_BACK_BRDRCLR'
,p_column_display_sequence=>86
,p_column_heading=>'Btn Back Brdrclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14466444834780524)
,p_query_column_id=>108
,p_column_alias=>'BTN_BACK_BRDRRDS'
,p_column_display_sequence=>87
,p_column_heading=>'Btn Back Brdrrds'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14466520482780525)
,p_query_column_id=>109
,p_column_alias=>'BTN_BACK_FNFMLY'
,p_column_display_sequence=>88
,p_column_heading=>'Btn Back Fnfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14466615940780526)
,p_query_column_id=>110
,p_column_alias=>'BTN_SBMT_LBL'
,p_column_display_sequence=>89
,p_column_heading=>'Btn Sbmt Lbl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16055120051875925)
,p_query_column_id=>111
,p_column_alias=>'BTN_SBMT_LBL_FNTWT'
,p_column_display_sequence=>160
,p_column_heading=>'Btn Sbmt Lbl Fntwt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14466797903780527)
,p_query_column_id=>112
,p_column_alias=>'BTN_SBMT_WIDTH'
,p_column_display_sequence=>90
,p_column_heading=>'Btn Sbmt Width'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14466847026780528)
,p_query_column_id=>113
,p_column_alias=>'BTN_SBMT_HIGHT'
,p_column_display_sequence=>91
,p_column_heading=>'Btn Sbmt Hight'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14466959431780529)
,p_query_column_id=>114
,p_column_alias=>'BTN_SBMT_ICON'
,p_column_display_sequence=>92
,p_column_heading=>'Btn Sbmt Icon'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14467018677780530)
,p_query_column_id=>115
,p_column_alias=>'BTN_SBMT_CLR'
,p_column_display_sequence=>93
,p_column_heading=>'Btn Sbmt Clr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14467166569780531)
,p_query_column_id=>116
,p_column_alias=>'BTN_SBMT_BGCLRL'
,p_column_display_sequence=>94
,p_column_heading=>'Btn Sbmt Bgclrl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14467244263780532)
,p_query_column_id=>117
,p_column_alias=>'BTN_SBMT_BGCLRR'
,p_column_display_sequence=>95
,p_column_heading=>'Btn Sbmt Bgclrr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16055221043875926)
,p_query_column_id=>118
,p_column_alias=>'BTN_SBMT_GRDNT_DIR'
,p_column_display_sequence=>161
,p_column_heading=>'Btn Sbmt Grdnt Dir'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14467325203780533)
,p_query_column_id=>119
,p_column_alias=>'BTN_SBMT_BRDRCLR'
,p_column_display_sequence=>96
,p_column_heading=>'Btn Sbmt Brdrclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14467434895780534)
,p_query_column_id=>120
,p_column_alias=>'BTN_SBMT_BRDRRDS'
,p_column_display_sequence=>97
,p_column_heading=>'Btn Sbmt Brdrrds'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14467528774780535)
,p_query_column_id=>121
,p_column_alias=>'BTN_SBMT_FNFMLY'
,p_column_display_sequence=>98
,p_column_heading=>'Btn Sbmt Fnfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14467652787780536)
,p_query_column_id=>122
,p_column_alias=>'BTN_DELT_LBL'
,p_column_display_sequence=>99
,p_column_heading=>'Btn Delt Lbl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16055383430875927)
,p_query_column_id=>123
,p_column_alias=>'BTN_DELT_LBL_FNTWT'
,p_column_display_sequence=>162
,p_column_heading=>'Btn Delt Lbl Fntwt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14467703665780537)
,p_query_column_id=>124
,p_column_alias=>'BTN_DELT_WIDTH'
,p_column_display_sequence=>100
,p_column_heading=>'Btn Delt Width'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14467828418780538)
,p_query_column_id=>125
,p_column_alias=>'BTN_DELT_HIGHT'
,p_column_display_sequence=>101
,p_column_heading=>'Btn Delt Hight'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14467915492780539)
,p_query_column_id=>126
,p_column_alias=>'BTN_DELT_ICON'
,p_column_display_sequence=>102
,p_column_heading=>'Btn Delt Icon'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14468016259780540)
,p_query_column_id=>127
,p_column_alias=>'BTN_DELT_CLR'
,p_column_display_sequence=>103
,p_column_heading=>'Btn Delt Clr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14468164621780541)
,p_query_column_id=>128
,p_column_alias=>'BTN_DELT_BGCLRL'
,p_column_display_sequence=>104
,p_column_heading=>'Btn Delt Bgclrl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14468281036780542)
,p_query_column_id=>129
,p_column_alias=>'BTN_DELT_BGCLRR'
,p_column_display_sequence=>105
,p_column_heading=>'Btn Delt Bgclrr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16055496621875928)
,p_query_column_id=>130
,p_column_alias=>'BTN_DELT_GRDNT_DIR'
,p_column_display_sequence=>163
,p_column_heading=>'Btn Delt Grdnt Dir'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14468389349780543)
,p_query_column_id=>131
,p_column_alias=>'BTN_DELT_BRDRCLR'
,p_column_display_sequence=>106
,p_column_heading=>'Btn Delt Brdrclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14468483701780544)
,p_query_column_id=>132
,p_column_alias=>'BTN_DELT_BRDRRDS'
,p_column_display_sequence=>107
,p_column_heading=>'Btn Delt Brdrrds'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14468516509780545)
,p_query_column_id=>133
,p_column_alias=>'BTN_DELT_FNFMLY'
,p_column_display_sequence=>108
,p_column_heading=>'Btn Delt Fnfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14468636342780546)
,p_query_column_id=>134
,p_column_alias=>'BTN_PRNT_LBL'
,p_column_display_sequence=>109
,p_column_heading=>'Btn Prnt Lbl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16055574855875929)
,p_query_column_id=>135
,p_column_alias=>'BTN_PRNT_LBL_FNTWT'
,p_column_display_sequence=>164
,p_column_heading=>'Btn Prnt Lbl Fntwt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14468769664780547)
,p_query_column_id=>136
,p_column_alias=>'BTN_PRNT_WIDTH'
,p_column_display_sequence=>110
,p_column_heading=>'Btn Prnt Width'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14468880146780548)
,p_query_column_id=>137
,p_column_alias=>'BTN_PRNT_HIGHT'
,p_column_display_sequence=>111
,p_column_heading=>'Btn Prnt Hight'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14468946893780549)
,p_query_column_id=>138
,p_column_alias=>'BTN_PRNT_ICON'
,p_column_display_sequence=>112
,p_column_heading=>'Btn Prnt Icon'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14469092284780550)
,p_query_column_id=>139
,p_column_alias=>'BTN_PRNT_CLR'
,p_column_display_sequence=>113
,p_column_heading=>'Btn Prnt Clr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14469122970780501)
,p_query_column_id=>140
,p_column_alias=>'BTN_PRNT_BGCLRL'
,p_column_display_sequence=>114
,p_column_heading=>'Btn Prnt Bgclrl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14469231937780502)
,p_query_column_id=>141
,p_column_alias=>'BTN_PRNT_BGCLRR'
,p_column_display_sequence=>115
,p_column_heading=>'Btn Prnt Bgclrr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16055615331875930)
,p_query_column_id=>142
,p_column_alias=>'BTN_PRNT_GRDNT_DIR'
,p_column_display_sequence=>165
,p_column_heading=>'Btn Prnt Grdnt Dir'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14469310509780503)
,p_query_column_id=>143
,p_column_alias=>'BTN_PRNT_BRDRCLR'
,p_column_display_sequence=>116
,p_column_heading=>'Btn Prnt Brdrclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14469412560780504)
,p_query_column_id=>144
,p_column_alias=>'BTN_PRNT_BRDRRDS'
,p_column_display_sequence=>117
,p_column_heading=>'Btn Prnt Brdrrds'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14469576276780505)
,p_query_column_id=>145
,p_column_alias=>'BTN_PRNT_FNFMLY'
,p_column_display_sequence=>118
,p_column_heading=>'Btn Prnt Fnfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14469674715780506)
,p_query_column_id=>146
,p_column_alias=>'BTN_RFRS_LBL'
,p_column_display_sequence=>119
,p_column_heading=>'Btn Rfrs Lbl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16055722484875931)
,p_query_column_id=>147
,p_column_alias=>'BTN_RFRS_LBL_FNTWT'
,p_column_display_sequence=>166
,p_column_heading=>'Btn Rfrs Lbl Fntwt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14469759046780507)
,p_query_column_id=>148
,p_column_alias=>'BTN_RFRS_WIDTH'
,p_column_display_sequence=>120
,p_column_heading=>'Btn Rfrs Width'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14469886139780508)
,p_query_column_id=>149
,p_column_alias=>'BTN_RFRS_HIGHT'
,p_column_display_sequence=>121
,p_column_heading=>'Btn Rfrs Hight'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14469998998780509)
,p_query_column_id=>150
,p_column_alias=>'BTN_RFRS_ICON'
,p_column_display_sequence=>122
,p_column_heading=>'Btn Rfrs Icon'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14470055392780510)
,p_query_column_id=>151
,p_column_alias=>'BTN_RFRS_CLR'
,p_column_display_sequence=>123
,p_column_heading=>'Btn Rfrs Clr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14470180399780511)
,p_query_column_id=>152
,p_column_alias=>'BTN_RFRS_BGCLRL'
,p_column_display_sequence=>124
,p_column_heading=>'Btn Rfrs Bgclrl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14470268893780512)
,p_query_column_id=>153
,p_column_alias=>'BTN_RFRS_BGCLRR'
,p_column_display_sequence=>125
,p_column_heading=>'Btn Rfrs Bgclrr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16055842373875932)
,p_query_column_id=>154
,p_column_alias=>'BTN_RFRS_GRDNT_DIR'
,p_column_display_sequence=>167
,p_column_heading=>'Btn Rfrs Grdnt Dir'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14470336167780513)
,p_query_column_id=>155
,p_column_alias=>'BTN_RFRS_BRDRCLR'
,p_column_display_sequence=>126
,p_column_heading=>'Btn Rfrs Brdrclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14470424176780514)
,p_query_column_id=>156
,p_column_alias=>'BTN_RFRS_BRDRRDS'
,p_column_display_sequence=>127
,p_column_heading=>'Btn Rfrs Brdrrds'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14470597124780515)
,p_query_column_id=>157
,p_column_alias=>'BTN_RFRS_FNFMLY'
,p_column_display_sequence=>128
,p_column_heading=>'Btn Rfrs Fnfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14470646001780516)
,p_query_column_id=>158
,p_column_alias=>'PAGE_ALRT_BGCLR'
,p_column_display_sequence=>129
,p_column_heading=>'Page Alrt Bgclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14470757847780517)
,p_query_column_id=>159
,p_column_alias=>'PAGE_ALRT_FNTCLR'
,p_column_display_sequence=>130
,p_column_heading=>'Page Alrt Fntclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14470844778780518)
,p_query_column_id=>160
,p_column_alias=>'PAGE_ALRT_FNTSIZE'
,p_column_display_sequence=>131
,p_column_heading=>'Page Alrt Fntsize'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14470928207780519)
,p_query_column_id=>161
,p_column_alias=>'PAGE_ALRT_FNTFMLY'
,p_column_display_sequence=>132
,p_column_heading=>'Page Alrt Fntfmly'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14471089917780520)
,p_query_column_id=>162
,p_column_alias=>'PAGE_ALRT_BRDRCLR'
,p_column_display_sequence=>133
,p_column_heading=>'Page Alrt Brdrclr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14471118392780521)
,p_query_column_id=>163
,p_column_alias=>'PAGE_ALRT_BRDRRDS'
,p_column_display_sequence=>134
,p_column_heading=>'Page Alrt Brdrrds'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14471255600780522)
,p_query_column_id=>164
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>135
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14471365131780523)
,p_query_column_id=>165
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>136
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14471411171780524)
,p_query_column_id=>166
,p_column_alias=>'MODIFIED_BY'
,p_column_display_sequence=>137
,p_column_heading=>'Modified By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14471519977780525)
,p_query_column_id=>167
,p_column_alias=>'MODIFIED_DATE'
,p_column_display_sequence=>138
,p_column_heading=>'Modified Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14266419985754447)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14266305093754446)
,p_button_name=>'Demo_1'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Demo Page >>'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=100235:17:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14266551063754448)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14266305093754446)
,p_button_name=>'CREATE_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:99990105:&SESSION.::&DEBUG.:99990105'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10691292411986970)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(10637153379986896)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'CANCEL'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10004036934926236)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(10637153379986896)
,p_button_name=>'Demo'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Demo Page >>'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=100420:17:&SESSION.::&DEBUG.:RP::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(58588136539285139)
,p_name=>'CLOSE'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(10691292411986970)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(58588204526285140)
,p_event_id=>wwv_flow_api.id(58588136539285139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.component_end;
end;
/
