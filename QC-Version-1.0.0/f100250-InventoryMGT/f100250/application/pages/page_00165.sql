prompt --application/pages/page_00165
begin
--   Manifest
--     PAGE: 00165
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
 p_id=>165
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Booking Daily Information'
,p_page_mode=>'MODAL'
,p_step_title=>'Booking Daily Information'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140737'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95459656757810313)
,p_plug_name=>'Booking Daily Information'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APPRDATE, APPRQNTY, APPRVDBY, BATCHDTE, BATCHNUM,',
' BOM_NO, BOOKAPRV, BOOKCODE, BOOKDATE, CANCLE_DATE, ',
' COLLECT_PERSON, COLORCDE, COMMCODE, COMPCODE, ',
' COSTCODE, COSTRATE, CURRCODE, CUSTMRID, DISCAMNT,',
'  DISCPCNT, DOCNUMBR, DOCTDATE, DOCTTYPE, DOWN_PAYMENT, ',
'  ENGINENO, ENUDTLPK,HUOMCODE, INSTALLMENT_PAY, INTEREST_AMOUNT, ',
'  INVNUMFK, INVNUMPK,ITEMCODE, ITEMDESC, ITEMRATE, ITEMSERL, ',
'  LIMITDAY, LOAN_AMOUNT, LUOMCODE, MODIFYDT, MONTHLY_INSTALLMENT, ',
'  MSFCAMNT, MSLCAMNT, NO_OF_INSTALLMENT, OPRSTAMP, ORGNQNTY,',
'  PARTYCDE, PAYMENT_MODE, POSIBLE_INST_END_DATE, POSIBLE_INST_START_DATE,',
'   RAISEDBY, REFNDATE, REFNUMBR, REMARKSS, REQDDATE, SALERATE, ',
'   SERLNUMB, SMANCODE, SPLDISNT, SPLDISPC, SRVPKGFK, ',
'    TOTALSRV, TRNSQNTY, TRNSQTY2, UPDOCDTE, UPDOCNUM, UPDOCSRL, ',
'    UPDOCTYP, UPSUBTYP, VHCLKYNO, VINNUMBR, WARECODE,',
'(select NMCODDES from nmcodmas ',
'       where compcode=a.compcode',
'       and NMHRDCDE=''CLR''',
'       and NMSOFCDE=a.COLORCDE)COLORCDE_NAME,',
'      (select CUSTNAME from nmcusmas ',
'       where compcode=a.compcode',
'       and CUSTMRID=a.CUSTMRID ) CUSTMRID_NAME,',
'       (select SMANNAME from nmsmnmas ',
'       where compcode=a.compcode',
'       and SMANCODE=a.SMANCODE) SMANCODE_NAME,',
'       (select WAREDESC from nmwhsmas ',
'       where compcode=a.compcode',
'       and WARECODE=a.WARECODE ) WARECODE_NAME',
'            FROM nmenudtl a',
'           WHERE compcode=:compcode',
'           and  BOOKCODE  is NOT NULL',
'           AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(95460013003810314)
,p_name=>' Buyer Daily Information'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>58305145878129820
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95467747603810321)
,p_db_column_name=>'APPRDATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Apprdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95476518512810324)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Apprqnty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95482915120810327)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95483290045810327)
,p_db_column_name=>'COLORCDE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Colorcde'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95483688159810327)
,p_db_column_name=>'COMMCODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Commcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95484147396810327)
,p_db_column_name=>'COMPCODE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95484559682810327)
,p_db_column_name=>'COSTCODE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95484912210810327)
,p_db_column_name=>'COSTRATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Costrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95485366845810327)
,p_db_column_name=>'CURRCODE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95485758710810328)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Custmrid'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95486077574810328)
,p_db_column_name=>'DISCAMNT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Discamnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95486566021810328)
,p_db_column_name=>'DISCPCNT'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Discpcnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95486935997810328)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95487341724810328)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95487766484810328)
,p_db_column_name=>'DOWN_PAYMENT'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Down Payment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95488081968810328)
,p_db_column_name=>'HUOMCODE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Huomcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95460156473810316)
,p_db_column_name=>'INSTALLMENT_PAY'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Installment Pay'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95460480998810317)
,p_db_column_name=>'INTEREST_AMOUNT'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Interest Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95460933377810317)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95461341483810317)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Itemdesc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95461679063810317)
,p_db_column_name=>'ITEMRATE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Itemrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95462164630810317)
,p_db_column_name=>'LOAN_AMOUNT'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Loan Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95462563485810317)
,p_db_column_name=>'LUOMCODE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Luomcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95462905362810319)
,p_db_column_name=>'MONTHLY_INSTALLMENT'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Monthly Installment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95463290499810319)
,p_db_column_name=>'MSFCAMNT'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Msfcamnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95463672829810319)
,p_db_column_name=>'MSLCAMNT'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Mslcamnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95464152947810319)
,p_db_column_name=>'NO_OF_INSTALLMENT'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'No Of Installment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95464491145810319)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95464877059810319)
,p_db_column_name=>'ORGNQNTY'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Orgnqnty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95465317418810321)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95465711404810321)
,p_db_column_name=>'POSIBLE_INST_END_DATE'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Posible Inst End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95466136929810321)
,p_db_column_name=>'POSIBLE_INST_START_DATE'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Posible Inst Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95466494863810321)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95466927765810321)
,p_db_column_name=>'REFNDATE'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Refndate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95467307266810321)
,p_db_column_name=>'REFNUMBR'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Refnumbr'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95468162333810321)
,p_db_column_name=>'REMARKSS'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Remarkss'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95468546869810321)
,p_db_column_name=>'REQDDATE'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Reqddate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95468955264810321)
,p_db_column_name=>'SALERATE'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Salerate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95469324990810322)
,p_db_column_name=>'SMANCODE'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95469687212810322)
,p_db_column_name=>'TRNSQNTY'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Trnsqnty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95470071000810322)
,p_db_column_name=>'UPDOCDTE'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Updocdte'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95470485443810322)
,p_db_column_name=>'UPDOCNUM'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Updocnum'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95470904257810322)
,p_db_column_name=>'UPDOCSRL'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Updocsrl'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95471299992810322)
,p_db_column_name=>'UPDOCTYP'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Updoctyp'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95471737309810322)
,p_db_column_name=>'WARECODE'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95472112660810322)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Apprvdby'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95472535152810322)
,p_db_column_name=>'BATCHDTE'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Batchdte'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95472945810810322)
,p_db_column_name=>'BOM_NO'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Bom No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95473317342810322)
,p_db_column_name=>'BOOKAPRV'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'Bookaprv'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95473757439810322)
,p_db_column_name=>'BOOKCODE'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'Bookcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95474152395810322)
,p_db_column_name=>'BOOKDATE'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'Bookdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95474468284810324)
,p_db_column_name=>'CANCLE_DATE'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'Cancle Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95474868409810324)
,p_db_column_name=>'COLLECT_PERSON'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'Collect Person'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95475285622810324)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>76
,p_column_identifier=>'BX'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95475752149810324)
,p_db_column_name=>'ENGINENO'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Engineno'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95476093158810324)
,p_db_column_name=>'ENUDTLPK'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'Enudtlpk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95476956499810324)
,p_db_column_name=>'INVNUMFK'
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'Invnumfk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95477310624810324)
,p_db_column_name=>'INVNUMPK'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Invnumpk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95477759145810324)
,p_db_column_name=>'ITEMSERL'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Itemserl'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95478144924810324)
,p_db_column_name=>'LIMITDAY'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Limitday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95478516250810324)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95478878458810324)
,p_db_column_name=>'PAYMENT_MODE'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95479345327810325)
,p_db_column_name=>'SERLNUMB'
,p_display_order=>85
,p_column_identifier=>'CG'
,p_column_label=>'Serlnumb'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95479692646810325)
,p_db_column_name=>'SPLDISNT'
,p_display_order=>86
,p_column_identifier=>'CH'
,p_column_label=>'Spldisnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95480131529810325)
,p_db_column_name=>'SPLDISPC'
,p_display_order=>87
,p_column_identifier=>'CI'
,p_column_label=>'Spldispc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95480555101810325)
,p_db_column_name=>'SRVPKGFK'
,p_display_order=>88
,p_column_identifier=>'CJ'
,p_column_label=>'Srvpkgfk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95480957398810325)
,p_db_column_name=>'TOTALSRV'
,p_display_order=>89
,p_column_identifier=>'CK'
,p_column_label=>'Totalsrv'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95481356348810325)
,p_db_column_name=>'TRNSQTY2'
,p_display_order=>90
,p_column_identifier=>'CL'
,p_column_label=>'Trnsqty2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95481683105810325)
,p_db_column_name=>'UPSUBTYP'
,p_display_order=>91
,p_column_identifier=>'CM'
,p_column_label=>'Upsubtyp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95482090609810325)
,p_db_column_name=>'VHCLKYNO'
,p_display_order=>92
,p_column_identifier=>'CN'
,p_column_label=>'Vhclkyno'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95482540852810325)
,p_db_column_name=>'VINNUMBR'
,p_display_order=>93
,p_column_identifier=>'CO'
,p_column_label=>'Vinnumbr'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95874569330181881)
,p_db_column_name=>'COLORCDE_NAME'
,p_display_order=>94
,p_column_identifier=>'CP'
,p_column_label=>'Colorcde Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95875290760181881)
,p_db_column_name=>'CUSTMRID_NAME'
,p_display_order=>95
,p_column_identifier=>'CQ'
,p_column_label=>'Custmrid Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95875973263181882)
,p_db_column_name=>'SMANCODE_NAME'
,p_display_order=>96
,p_column_identifier=>'CR'
,p_column_label=>'Smancode Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95876733409181882)
,p_db_column_name=>'WARECODE_NAME'
,p_display_order=>97
,p_column_identifier=>'CS'
,p_column_label=>'Warecode Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(95488502959810328)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'583337'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCNUMBR:DOCTDATE:BOOKCODE:BOOKDATE:CUSTMRID_NAME:SMANCODE_NAME:WARECODE_NAME:ITEMCODE:ITEMDESC:COLORCDE_NAME:SALERATE:DOWN_PAYMENT:LOAN_AMOUNT:NO_OF_INSTALLMENT:MONTHLY_INSTALLMENT:INSTALLMENT_PAY:INTEREST_AMOUNT:MSLCAMNT:'
);
wwv_flow_api.component_end;
end;
/
