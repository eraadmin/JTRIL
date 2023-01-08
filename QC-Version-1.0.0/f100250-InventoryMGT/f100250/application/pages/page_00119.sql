prompt --application/pages/page_00119
begin
--   Manifest
--     PAGE: 00119
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
 p_id=>119
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Item List for Booking'
,p_alias=>'NMSELTYP'
,p_page_mode=>'MODAL'
,p_step_title=>'Item List for Booking'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.borderless-region .bl-body{',
'float:none;',
'margin-left:auto;',
'margin-right:auto;',
'text-align: center;',
'background-image:none !important;',
'background-color:#ffffff;',
'}',
'',
'.apexir_TOOLBAR_OPEN {',
'float:none;',
'margin-left:440px;',
'margin-top:20px;',
'}',
'#apexir_DATA_PANEL {',
'text-align: center;',
'margin-left:80px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20191009205011'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44003724578102684)
,p_plug_name=>'Available Item List for Booking'
,p_region_name=>'Available_Book'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.Itemcode,apex_item.checkbox2(11, DOCNUMBR) mulcheckbox, (SELECT distinct initcap(NMCODDES) CODEDESC',
'  FROM nmcodmas',
' WHERE  compcode=:COMPCODE',
' and NMSOFCDE=b.ITEMMODL and NMHRDCDE=''PTY'' and MODLCODE=''NM'') Itemdesc,SUBSTR(vinnumbr, 1,INSTR(vinnumbr,''-'', 2,2)-1)||''-''||p.STYLECODE Vinnumbr,vinnumbr Vinnumbr1, (SELECT CODEDESC',
'  FROM sycdedtl',
' WHERE  compcode=:COMPCODE',
' and CHILDCDE=COMMCODE) product_type,',
'       (SELECT Nmcoddes',
'          FROM Nmcodmas',
'         WHERE Compcode = :Compcode AND Nmhrdcde = ''CLR'' AND Nmsofcde = p.Colorcde)',
'          Item_color, to_char(round(NVL (p.salerate*p.excgrate, 0)),''999,99,99,990'') Salerate, Batchnum, Docttype, Subttype, Docnumbr,APPRQNTY, Doctdate,p.Luomcode Unit,''Book This Item'' "Booking"',
'  FROM Nmenudtl p,nmitemas b',
' WHERE     p.Compcode = :Compcode',
' and p.ITEMCODE1=b.ITEMCODE',
'       AND EXISTS',
'              (SELECT Itemcode',
'                 FROM Nmitemas I',
'                WHERE I.Compcode = :Compcode)',
'       and p.BOOKCODE is null',
'       AND p.CURNTSTS IS NULL',
'and p.FINSHGD_STATUS=''Y''',
'and (nvl(p.apprqnty,0)-nvl(p.trnsqnty,0))>0',
'       order by p.timstamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P119_SELECT_LIST'
,p_plug_display_when_cond2=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(44004153897102691)
,p_name=>'Item List for Booking'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'VINNUMBR'
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
,p_download_filename=>'Available Item List for Booking'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>6849286771422197
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44004228714102692)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Item Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44004608176102694)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Item Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMDESC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44005051422102694)
,p_db_column_name=>'VINNUMBR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Identification No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_static_id=>'VINNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44005420790102694)
,p_db_column_name=>'ITEM_COLOR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Item Color'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'ITEM_COLOR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44006630324102695)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>6
,p_column_identifier=>'G'
,p_column_label=>'Batch#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'BATCHNUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44007017373102695)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>7
,p_column_identifier=>'H'
,p_column_label=>'Docttype'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44007388931102697)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>8
,p_column_identifier=>'I'
,p_column_label=>'Subttype'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SUBTTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44007827918102697)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>9
,p_column_identifier=>'J'
,p_column_label=>'Receive No'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44009376561102698)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>10
,p_column_identifier=>'N'
,p_column_label=>'Received Qty'
,p_report_label=>'Qty'
,p_sync_form_label=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'CENTER'
,p_static_id=>'APPRQNTY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44005806215102695)
,p_db_column_name=>'UNIT'
,p_display_order=>11
,p_column_identifier=>'E'
,p_column_label=>'Unit'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'UNIT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44008202171102697)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>12
,p_column_identifier=>'K'
,p_column_label=>'Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44008631099102697)
,p_db_column_name=>'Booking'
,p_display_order=>13
,p_column_identifier=>'L'
,p_column_label=>'Booking'
,p_column_link=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:120:P120_ITEMCODE,P120_VINNUMBR,P120_DOCNUMBR,P120_DOCTTYPE,P120_DOCTDATE,P120_SUBTTYPE:#ITEMCODE#,#VINNUMBR1#,#DOCNUMBR#,#DOCTTYPE#,#DOCTDATE#,#SUBTTYPE#'
,p_column_linktext=>'#Booking#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'Booking'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40570590685748947)
,p_db_column_name=>'PRODUCT_TYPE'
,p_display_order=>24
,p_column_identifier=>'O'
,p_column_label=>'Product type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44823971289976630)
,p_db_column_name=>'SALERATE'
,p_display_order=>34
,p_column_identifier=>'P'
,p_column_label=>'Sale Rate'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44825469436976645)
,p_db_column_name=>'VINNUMBR1'
,p_display_order=>44
,p_column_identifier=>'Q'
,p_column_label=>'Vinnumbr1'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47744090437283503)
,p_db_column_name=>'MULCHECKBOX'
,p_display_order=>54
,p_column_identifier=>'R'
,p_column_label=>'Multiple<br>Booking Check'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(44009780691102698)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'68550'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'VINNUMBR:ITEMDESC:PRODUCT_TYPE:SALERATE:BATCHNUM:DOCNUMBR:APPRQNTY:UNIT:Booking::MULCHECKBOX'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44010342052102698)
,p_plug_name=>'Booked Item List(Not Approved)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, Itemcode,(select itemcode||''-''||DESIGNCD from nmitemas where compcode=a.compcode and itemcode=a.itemcode ) Itemdesc, (SELECT CODEDESC',
'  FROM sycdedtl',
' WHERE  compcode=:COMPCODE',
' and CHILDCDE=COMMCODE) product_type,itemcode1,Vinnumbr, Bookcode "BOOKING_NO", Bookdate "BOOKING_DATE",',
'       Partycde, (select distinct CUSTMOBL from nmcusmas where Custmrid=a.Custmrid ) cusmobile,Custmrid, Luomcode Unit, Salerate, Batchnum, Docttype, Subttype, Docnumbr,',
'       Doctdate, Raisedby, Apprvdby, Apprdate, Smancode, Apprqnty, Currcode, Excgrate, Warecode,',
'       Costcode, Commcode, Colorcde, Msfcamnt, Mslcamnt, Bookaprv,',
'       ''Cancel Booking'' "Cancel", Engineno,''Approve Now''"Approve",''Sales Invoice'' "Sales_Invoice",NULL EDIT,',
'       (SELECT Nmcoddes',
'          FROM Nmcodmas',
'         WHERE Compcode = :Compcode AND Nmhrdcde = ''CLR'' AND Nmsofcde = A.Colorcde)',
'          Item_color, (SELECT Nmcoddes',
'                         FROM Nmcodmas',
'                        WHERE Compcode = :Compcode AND Nmhrdcde = ''COM'' AND Nmsofcde = A.Commcode)',
'                         Brand, (SELECT Smanname',
'                                   FROM Nmsmnmas',
'                                  WHERE Compcode = :Compcode AND Smancode = A.Smancode)',
'                                   Salesman_name,',
'       (SELECT Custname',
'          FROM Nmcusmas',
'         WHERE Compcode = :Compcode AND Custmrid = A.Custmrid)',
'          Customer_name, (SELECT Waredesc',
'                            FROM Nmwhsmas',
'                           WHERE Compcode = :Compcode AND Warecode = A.Warecode)',
'                            Warehouse_name,''<div  style="padding-left: 10px;font-weight:bold;"><a href="''||apex_util.prepare_url ( ''f?p=&APP_ID.:''',
'                                    ||51',
'                                    ||'':''',
'                                    || :app_session',
'                                    || '':ADD:NO:''',
'                                    ||51',
'                                    ||'':P''',
'                                    ||51',
'                                    ||''_PROGNAME,P''',
'                                    ||51',
'                                    ||''_DOCNUMBR,P''',
'                                    ||51',
'                                    ||''_DOCTTYPE,P''',
'                                    ||51',
'                                    ||''_SUBTTYPE:''',
'                                    ||''nmbokgtn,''',
'                                    ||BOOKCODE',
'                                    ||'',''',
'                                    || docttype',
'                                    ||'',''',
'                                    || subttype',
'                                    ||'':''',
'                                   )',
'          || ''" class="uButton uAltButton iconButton plus"><span><button id="printbut" style="display: block;',
'    font-size: 1.0em;',
'    font-weight: bold;',
'    text-transform: Initcap;',
'    padding: 3px 13px;',
'    margin: 1px auto;',
'    color: #ccc;',
'    background-color: #555;',
'    background: -webkit-linear-gradient(#888, #555);',
'    background: linear-gradient(#888, #555);',
'    border: 0 none;',
'    border-radius: 3px;',
'    text-shadow: 0 -1px 0 #000;',
'    box-shadow: 0 1px 0 #666, 0 0px 0 #444, 0 6px 6px rgba(0,0,0,0.6);',
'    cursor: pointer;',
'    -webkit-transition: all 150ms ease;',
'    transition: all 150ms ease;" type="button">Print</button><i class="iR"></i></span></a></div>'' print_column',
'  FROM Nmenudtl A',
' WHERE     Compcode = :Compcode',
'       AND EXISTS',
'              (SELECT Itemcode',
'                 FROM Nmitemas I',
'                WHERE I.Compcode = :Compcode)',
'       AND Bookcode IS NOT NULL',
'                   AND a.Bookcode NOT IN (SELECT NVL (s.updocnum, ''X'')',
'                                      FROM nmsalrec s',
'                                     WHERE s.compcode = :compcode)',
'             AND a.vinnumbr NOT IN (',
'                       SELECT NVL (s.vinnumbr, ''X'')',
'                         FROM nmsalrec s',
'                        WHERE s.compcode = :compcode',
'                              AND s.docnumbr = a.docnumbr)',
'       AND NVL (Bookaprv, ''N'') = ''Y''',
'ORDER BY Bookdate DESC, Itemcode, Bookcode'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P119_SELECT_LIST'
,p_plug_display_when_cond2=>'N'
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
 p_id=>wwv_flow_api.id(52580249919352191)
,p_max_row_count=>'1000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>84926632988753535
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52580324484352192)
,p_db_column_name=>'ROWID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
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
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52580461522352193)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52580598121352194)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Itemdesc'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52580622400352195)
,p_db_column_name=>'VINNUMBR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Vinnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52580987020352198)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52581050528352199)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Custmrid'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52581175128352200)
,p_db_column_name=>'UNIT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52581217989352201)
,p_db_column_name=>'SALERATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Salerate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52581403689352202)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52581486474352203)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52581547958352204)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52581660187352205)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52581717855352206)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52837962975009357)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52838067033009358)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Apprvdby'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52838143619009359)
,p_db_column_name=>'APPRDATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Apprdate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52838308476009360)
,p_db_column_name=>'SMANCODE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52838410613009361)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Apprqnty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52838462465009362)
,p_db_column_name=>'CURRCODE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52838594680009363)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52838691037009364)
,p_db_column_name=>'WARECODE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52838804796009365)
,p_db_column_name=>'COSTCODE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52838885146009366)
,p_db_column_name=>'COMMCODE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Commcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52838934050009367)
,p_db_column_name=>'COLORCDE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Colorcde'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52839048846009368)
,p_db_column_name=>'MSFCAMNT'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Msfcamnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52839123635009369)
,p_db_column_name=>'MSLCAMNT'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Mslcamnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52839308416009370)
,p_db_column_name=>'BOOKAPRV'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Bookaprv'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52839368627009371)
,p_db_column_name=>'Cancel'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Cancel'
,p_column_link=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.:RP:P116_ROWID:#ROWID#'
,p_column_linktext=>'#Cancel#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52839465829009372)
,p_db_column_name=>'ENGINENO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Engineno'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52839605156009373)
,p_db_column_name=>'Approve'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Approve'
,p_column_link=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:RP,86:P86_ROWID:#ROWID#'
,p_column_linktext=>'#Approve#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52839646260009374)
,p_db_column_name=>'ITEM_COLOR'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Item color'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52839765671009375)
,p_db_column_name=>'BRAND'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52839861197009376)
,p_db_column_name=>'SALESMAN_NAME'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Salesman name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52839951315009377)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Customer name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52840038304009378)
,p_db_column_name=>'WAREHOUSE_NAME'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Warehouse name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40570857148748949)
,p_db_column_name=>'PRODUCT_TYPE'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Product type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40571103490748952)
,p_db_column_name=>'Sales_Invoice'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Sales invoice'
,p_column_link=>'f?p=&APP_ID.:356:&SESSION.::&DEBUG.:RP:P356_DOCNUMBR1,P356_DOCTDATE,P356_IDENTIFY,P356_ITEMCODE1,P356_VINNUMBR:#BOOKING_NO#,#BOOKING_DATE#,#CUSTMRID#,#ITEMCODE1#,#VINNUMBR#'
,p_column_linktext=>'Sales Invoice'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41039623044735804)
,p_db_column_name=>'BOOKING_NO'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Booking no'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41039706387735805)
,p_db_column_name=>'BOOKING_DATE'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Booking date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41475414699533511)
,p_db_column_name=>'ITEMCODE1'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Itemcode1'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44822153261976612)
,p_db_column_name=>'PRINT_COLUMN'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Print column'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47746955370283531)
,p_db_column_name=>'EDIT'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:388:&SESSION.::&DEBUG.:RP:P388_DOCNUMBR1,P388_IDENTIFY:#BOOKING_NO#,#CUSMOBILE#'
,p_column_linktext=>'Edit'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47747086337283532)
,p_db_column_name=>'CUSMOBILE'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Cusmobile'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(52866014855010361)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'852124'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:BOOKING_NO:BOOKING_DATE:ITEMDESC:PRODUCT_TYPE:CUSTMRID:BRAND:SALESMAN_NAME:CUSTOMER_NAME:WAREHOUSE_NAME:Cancel:Sales_Invoice:PRINT_COLUMN::CUSMOBILE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44025544628102706)
,p_plug_name=>'Select Item List'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44201287620647782)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P119_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P119_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44202818459649110)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>70
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align:right; height:20px; top: 10px;left: 50%;font-size:14px;color:#6633FF; font-weight:bold;"><br>User: &P1_USER_ID.<Br>&P1_USER_NAME.<Br></font>',
'</div>',
'',
'<div style="text-align:center; height:20px; position:absolute;position: absolute; top: 10px;left: 50%; margin-left: -160px;font-size:16px;color:#336633; font-weight:bold;">&P1_COMPNAME.<br><font size=''2'' color=''#336633''>&P1_COMPADD.</font>',
'',
'<div>',
'',
'<html>',
'<head>',
'<script type="text/javascript">',
'function startTime()',
'{',
'var today=new Date();',
'var h=today.getHours();',
'var m=today.getMinutes();',
'var s=today.getSeconds();',
'var don="AM"',
'// add a zero in front of numbers<10',
'm=checkTime(m);',
's=checkTime(s);',
'',
'if (h>=12){ don="PM" }',
'if (h>12) { h-=12 }',
'if (h==0) { h=12 }',
'',
'document.getElementById(''txt'').innerHTML=h+":"+m+":"+s+" "+don;',
't=setTimeout(''startTime()'',500);',
'}',
'',
'function checkTime(i)',
'{',
'if (i<10)',
'  {',
'  i="0" + i;',
'  }',
'return i;',
'}',
'</script>',
'</head>',
'',
'<body onload="startTime()">',
'<div id="txt"></div>',
'</body>',
'</html>',
'',
'</div>',
'',
'</div>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131469671674303820)
,p_plug_name=>'Direct Sales Invoice'
,p_region_name=>'nmproc'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT   s.docnumbr',
'                || ''/''',
'                || s.doctdate',
'                || ''/''',
'                || s.docttype',
'                || ''/''',
'                || s.subttype ID,',
'                   s.docnumbr',
'                || ''/''',
'                || s.doctdate',
'                || ''/''',
'                || s.docttype',
'                || ''/''',
'                || s.subttype AS docdetail,',
's.docttype,s.subttype,count(itemcode) Unit,',
'               apex_item.checkbox (1,',
'                           DOCNUMBR,',
'                           ''onchange="spCheckChange(this);"'',',
'                           :f_empno_list,',
'                           '',''',
'                          ) checkbox,',
'                apex_item.checkbox2(11, DOCNUMBR) delcheckbox,',
'                s.docnumbr AS docnumbr, s.doctdate AS doctdate,',
'                wm_concat(s.itemcode) AS itemcode, wm_concat(distinct s.itemdesc) AS itemdesc,',
'                 (SELECT INITCAP (s.SMANCODE|| ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = s.SMANCODE) RAISEDBY ,',
'           INITCAP (',
'            (SELECT s.WARECODE||'' : ''||WAREDESC',
'               FROM nmwhsmas',
'              WHERE WARECODE =s.WARECODE',
'                    AND COMPCODE = s.compcode))',
'            raisedfrom,',
'            decode(s.DOCNUMBR,null,null,''Customer Card'') cutomer_card,',
'            wm_concat(distinct b.PRTYNAME) CUSTMR_NAME, wm_concat(distinct b.PARTYAD1) ADDRESS, wm_concat(distinct b.PEMAILID) CUSTMAIL, wm_concat(distinct b.MOBILENO) PHONE,',
'                s.statuscd AS statuscd,sum(s.APPRQNTY) sale_qty,sum((select sum(b.APPRQNTY) from nmslsofr b where b.compcode=s.compcode and b.DOCNUMBR=s.UPDOCNUM and b.ITEMCODE=s.ITEMCODE and b.DOCTTYPE=''SO'' and b.SUBTTYPE=2)) offer_qty,',
'                sum((select  sum(b.APPRQNTY)  from nmdevrec  b where   b.compcode=s.compcode   and b.UPDOCNUM IN (select distinct b.UPDOCNUM from nmsalrec b where b.compcode=s.compcode and b.ITEMCODE=s.ITEMCODE and b.UPDOCNUM=s.DOCNUMBR  and b.DOCTTY'
||'PE=''SI'' and b.SUBTTYPE=2) and b.DOCTTYPE=''SI'' and b.SUBTTYPE=2 )) Delivery_qty,',
'                ''<div  style="padding-left: 10px;font-weight:bold;"><a href="''||apex_util.prepare_url ( ''f?p=&APP_ID.:''',
'                                    ||49',
'                                    ||'':''',
'                                    || :app_session',
'                                    || '':ADD:NO:''',
'                                    ||49',
'                                    ||'':P''',
'                                    ||49',
'                                    ||''_PROGNAME,P''',
'                                    ||49',
'                                    ||''_DOCNUMBR,P''',
'                                    ||49',
'                                    ||''_DOCTTYPE,P''',
'                                    ||49',
'                                    ||''_SUBTTYPE:''',
'                                    ||''nminvgtn,''',
'                                    ||s.docnumbr',
'                                    ||'',''',
'                                    || s.docttype',
'                                    ||'',''',
'                                    || s.subttype',
'                                    ||'':''',
'                                   )',
'          || ''" class="uButton uAltButton iconButton plus"><span><button id="printbut" style="display: block;',
'    font-size: 1.0em;',
'    font-weight: bold;',
'    text-transform: Initcap;',
'    padding: 3px 13px;',
'    margin: 1px auto;',
'    color: #ccc;',
'    background-color: #555;',
'    background: -webkit-linear-gradient(#888, #555);',
'    background: linear-gradient(#888, #555);',
'    border: 0 none;',
'    border-radius: 3px;',
'    text-shadow: 0 -1px 0 #000;',
'    box-shadow: 0 1px 0 #666, 0 0px 0 #444, 0 6px 6px rgba(0,0,0,0.6);',
'    cursor: pointer;',
'    -webkit-transition: all 150ms ease;',
'    transition: all 150ms ease;" type="button">Print</button><i class="iR"></i></span></a></div>'' print_column',
'           FROM nmsalrec s,sycompty b',
'           WHERE s.compcode = :compcode ',
'           and s.compcode=b.compcode',
'           and s.CUSTMRID=b.CUSTMRID',
'            AND s.docttype = ''SI''',
'            AND subttype = 2',
'            AND (costcode IN (SELECT cabasecc',
'                                FROM sycstacc',
'                               WHERE compcode = :compcode  AND grupcode = :APP_USER))',
'                                group by s.COMPCODE,s.SMANCODE,s.postflag, s.WARECODE,s.DOCTTYPE, s.SUBTTYPE, s.DOCNUMBR,s.UPDOCNUM, s.DOCTDATE,s.statuscd',
'  -- group by COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE,statuscd',
'       ORDER BY doctdate DESC--, docnumbr DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P119_TRANTYPE,P119_SUBTTYPE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P119_SELECT_LIST'
,p_plug_display_when_cond2=>'0'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
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
 p_id=>wwv_flow_api.id(131470104697303823)
,p_name=>'test'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:303:&SESSION.:MOD:&DEBUG.::P303_DOCNUMBR1,P303_DOCTDATE,P303_DOCTTYPE,P303_SUBTTYPE,P303_IDENTIFY,P303_DOCNUMBR,P303_ITEMCODE1:#DOCNUMBR#,#DOCTDATE#,#DOCTTYPE#,#SUBTTYPE#,#PHONE#,#DOCNUMBR#,#ITEMCODE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_owner=>'RILADM'
,p_internal_uid=>96132014659539421
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41211630286373841)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41212075409373843)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Document Details'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41212469781373846)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Delete'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_display_condition=>'DEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41212792762373848)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41213243529373851)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41213637745373854)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41214009773373857)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Item Description'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41214296628373859)
,p_db_column_name=>'STATUSCD'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41214778105373862)
,p_db_column_name=>'PRINT_COLUMN'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Print'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41215159706373865)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41215549468373867)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41215964268373869)
,p_db_column_name=>'DELCHECKBOX'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Delete'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P119_REQUEST'
,p_display_condition2=>'DEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41207235621373810)
,p_db_column_name=>'UNIT'
,p_display_order=>23
,p_column_identifier=>'O'
,p_column_label=>'Unit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41207687718373813)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>33
,p_column_identifier=>'P'
,p_column_label=>'Raised By'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41208020179373815)
,p_db_column_name=>'RAISEDFROM'
,p_display_order=>43
,p_column_identifier=>'Q'
,p_column_label=>'Raised From'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41208460161373818)
,p_db_column_name=>'SALE_QTY'
,p_display_order=>53
,p_column_identifier=>'R'
,p_column_label=>'Sale Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41208882356373821)
,p_db_column_name=>'OFFER_QTY'
,p_display_order=>63
,p_column_identifier=>'S'
,p_column_label=>'Offer Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41209252160373823)
,p_db_column_name=>'DELIVERY_QTY'
,p_display_order=>73
,p_column_identifier=>'T'
,p_column_label=>'Delivery Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41209661471373827)
,p_db_column_name=>'CUTOMER_CARD'
,p_display_order=>83
,p_column_identifier=>'U'
,p_column_label=>'Customer Card'
,p_column_link=>'f?p=&APP_ID.:163:&SESSION.::&DEBUG.:RP:P163_CUSTOMERNAME,P163_CUSTADDRESS,P163_MOBILE,P163_EMAIL:#CUSTMR_NAME#,#ADDRESS#,#PHONE#,#CUSTMAIL#'
,p_column_linktext=>'Customer Card'
,p_column_link_attr=>'Customer Card'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41210030734373830)
,p_db_column_name=>'CUSTMR_NAME'
,p_display_order=>93
,p_column_identifier=>'V'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41210456572373832)
,p_db_column_name=>'ADDRESS'
,p_display_order=>103
,p_column_identifier=>'W'
,p_column_label=>'Address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41210838577373835)
,p_db_column_name=>'CUSTMAIL'
,p_display_order=>113
,p_column_identifier=>'X'
,p_column_label=>'Mail'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41211220702373838)
,p_db_column_name=>'PHONE'
,p_display_order=>123
,p_column_identifier=>'Y'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(131475427205303843)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'58782'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCDETAIL:DOCTDATE:CUSTMR_NAME:ADDRESS:CUSTMAIL:PHONE:ITEMDESC:SALE_QTY:OFFER_QTY:DELIVERY_QTY:RAISEDBY:RAISEDFROM:CUTOMER_CARD:PRINT_COLUMN:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52580213491352190)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(44025544628102706)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64693151646594568)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(44025544628102706)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'New'
,p_button_redirect_url=>'http://202.40.190.14:8081/jasperserver/flow.html?_flowId=viewReportFlow&reportUnit=/reports/samples/nminvgtn1&output=pdf&j_username=joeuser&j_password=joeuser'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47744203631283504)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(44003724578102684)
,p_button_name=>'Multiple_Booking'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Multiple Booking'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:388:&SESSION.::&DEBUG.::P388_MULTIPLEDOC:&P119_MULDOCNUMBER.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44025881136102706)
,p_name=>'P119_SELECT_LIST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(44025544628102706)
,p_item_default=>'Y'
,p_prompt=>'Select List'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Available Item List for Booking;Y,Booked Item List(Not Approved);N,Sales Booking Report;0'
,p_begin_on_new_line=>'N'
,p_colspan=>9
,p_grid_column=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44201618478647793)
,p_name=>'P119_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(44201287620647782)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44201989884647839)
,p_name=>'P119_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(44201287620647782)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44202388552647851)
,p_name=>'P119_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(44201287620647782)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47743048712256844)
,p_name=>'P119_MULDOCNUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(44003724578102684)
,p_prompt=>'Multiple docnumber'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47042002020358140)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(52580213491352190)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47042151631358141)
,p_event_id=>wwv_flow_api.id(47042002020358140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47743273614264888)
,p_name=>'Multiple Docnumber'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f11"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47743669556264890)
,p_event_id=>wwv_flow_api.id(47743273614264888)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P119_DELDOCNUMBER'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var deldoc=  $(''#Available_Book input[name="f11"]:checked'').map(function(){',
'                  return $(this).val()',
'              }).get().join('':'')',
'',
'//$(''#P119_MULDOCNUMBER'').val(deldoc)',
'apex.item( "P119_MULDOCNUMBER" ).setValue(deldoc)'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10641367095434589)
,p_name=>'closeX'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10641471419434590)
,p_event_id=>wwv_flow_api.id(10641367095434589)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'parent.$(''.ui-dialog-titlebar-close'').hide();'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44203101936651272)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- code update by Md. Zahidul Islam--',
'begin',
'select PROGNAME into :FX_PROG_NAME from SYMENMAS where PAGEID=:APP_PAGE_ID;',
'',
':FX_PAGE_NO:=:APP_PAGE_ID;',
'exception',
'',
'when no_data_found then',
' --apex_application.g_print_success_message :=''Error..No page found'';',
' htp.init();',
' owa_util.redirect_url(''f?p=''||:APP_ID||'':1:''||:APP_SESSION, true);',
' --apex_application.g_print_success_message :=''Error..No page found'';',
'when too_many_rows then',
' raise_application_error(-20003,''Too Many Page ID found in database'');',
'end;',
'--- code updated--',
'',
'',
'If :P87_PROGNM  is null and :P87_NO is null then',
'   :P87_PROGNM := :FX_PROG_NAME;',
'   :P87_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P87_PROGNM,',
'                                      p_parentnm =>:P87_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P87_OPRSTAMP := :app_user;',
'  --:P87_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P87_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P87_PROGNM;',
'   :FX_PAGE_NO := :P87_NO;',
'Elsif :FX_PROG_NAME <> :P87_PROGNM And :FX_PAGE_NO <> :P87_NO Then',
'   :FX_PROG_NAME := :P87_PROGNM;',
'   :FX_PAGE_NO := :P87_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
