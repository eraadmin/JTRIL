prompt --application/pages/page_00816
begin
--   Manifest
--     PAGE: 00816
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>816
,p_user_interface_id=>wwv_flow_api.id(100064779117690213)
,p_name=>'Seize Confirm new'
,p_page_mode=>'MODAL'
,p_step_title=>'Seize Confirm new'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20200927170836'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(89380330322989907)
,p_plug_name=>'Seize Confirm new'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(99985111042690159)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWIDX,',
'       A.COMPCODE,',
'       A.DOCTTYPE,',
'       A.SUBTTYPE,',
'       A.DOCNUMBR,',
'       A.DOCTDATE,',
'       A.SERLNUMB,',
'       A.ITEMCODE,',
'       a.MODLCODE ITEMMODL,',
'       A.HUOMCODE,',
'       A.LUOMCODE,',
'       A.ITEMRATE,',
'       A.WARECODE,',
'       A.COSTCODE,',
'       A.ITEMSERL,',
'       A.PARTYCDE,',
'       A.CUSTMRID,',
'       A.RAISEDBY,',
'       A.APPRVDBY,',
'       A.APPRDATE,',
'       A.REQDDATE,',
'       A.COMMCODE,',
'       A.FACTRVAL,',
'       A.COSTRATE,',
'       A.SALERATE,',
'       nvl(A.BATCHNUM,A.VINNUMBR)BATCHNUM,',
'       A.BOOKCODE,',
'       A.BOOKDATE,',
'       A.BOOKAPRV,',
'       A.BATCHDTE,',
'       A.BATCHEXP,',
'       A.VINNUMBR,',
'       A.COLORCDE,',
'       A.RCDOCTYP,',
'       A.RCSUBTYP,',
'       A.RCDOCNUM,',
'       A.RCDOCSRL,',
'       A.DISCPCNT,',
'       A.DISCAMNT,',
'       A.SPLDISPC,',
'       A.SPLDISNT,',
'       A.ORGNQNTY,',
'       A.APPRQNTY,',
'       A.TRNSQNTY,',
'       A.TRNSQTY2,',
'       A.MSFCAMNT,',
'       A.CURRCODE,',
'       A.EXCGRATE,',
'       A.MSLCAMNT,',
'       A.ADJAMTLC,',
'       A.REFNUMBR,',
'       A.REFNDATE,',
'       A.UPDOCTYP,',
'       A.UPSUBTYP,',
'       A.UPDOCNUM,',
'       A.UPDOCDTE,',
'       A.UPDOCSRL,',
'       A.DWDOCTYP,',
'       A.DWSUBTYP,',
'       A.DWDOCNUM,',
'       A.DWDOCDTE,',
'       A.DWDOCSRL,',
'       A.ACDOCTYP,',
'       A.ACSUBTYP,',
'       A.ACDOCNUM,',
'       A.ACDOCDTE,',
'       A.ACDOCSRL,',
'       A.REMARKSS,',
'       A.OPRSTAMP,',
'       A.TIMSTAMP,',
'       A.INVNUMPK,',
'       A.STATUSCD,',
'       A.ITEMDESC,',
'       A.ISSUDATE,',
'       A.RCDOCDTE,',
'       A.ISDOCTYP,',
'       A.ISSUBTYP,',
'       A.ISDOCNUM,',
'       A.ISDOCSRL,',
'       A.ENUDTLPK,',
'       A.SMANCODE,',
'       A.TERMSCOD,',
'       A.VHCLKYNO,',
'       A.ENGINENO,',
'       A.BOM_NO,',
'       A.CANCLE_DATE,',
'       A.INVNUMFK,',
'       A.SRVPKGFK,',
'       A.TOTALSRV,',
'       A.LIMITDAY,',
'       A.PAYMENT_MODE,',
'       A.INSTALLMENT_PAY,',
'       A.DOWN_PAYMENT,',
'       A.NO_OF_INSTALLMENT,',
'       A.POSIBLE_INST_START_DATE,',
'       A.COLLECT_PERSON,',
'       A.INTEREST_AMOUNT,',
'       A.LOAN_AMOUNT,',
'       A.MONTHLY_INSTALLMENT,',
'       A.POSIBLE_INST_END_DATE,',
'       A.MODIFYDT,',
'       A.TRANS_TO_ADDRESS,',
'       A.NMZONEFK,',
'       A.SEIZE_LOCATION,',
'       A.LC_DATE,',
'       DECODE (A.SEIZEFLG, ''Y'', ''Yes'', ''N'', ''No'') SEIZEFLG,',
'       A.REGISTNO,',
'       A.CURNTSTS,',
'       A.LCNUMBER,',
'       A.SEZZONFK,',
'       A.WGHTQNTY,',
'       A.WGTUOMCD,',
'       A.CARATWGT,',
'       A.CARAT,',
'       A.DIAMOND_PCS,',
'       A.DIAMOND_WEIGHT,',
'       A.STONE_PCS,',
'       A.STONE_WEIGHT,',
'       A.ADVANCHED_AMOUNT,',
'       A.NET_WEIGHT,',
'       A.ITEMCODE1,',
'       A.DESIGN_ID,',
'       A.STYLECODE,',
'       A.FINSHGD_STATUS,',
'       nvl(A.FIRSTWAR,''N'') FIRSTWAR,',
'       nvl(A.SECNDWAR, ''N'')SECNDWAR,',
'       nvl(A.THIRDWAR, ''N'')THIRDWAR,',
'      -- DECODE (A.SECNDWAR, ''Y'', ''Yes'', ''N'', ''No'') SECNDWAR,',
'      -- DECODE (A.THIRDWAR, ''Y'', ''Yes'', ''N'', ''No'') THIRDWAR,',
'       ''<input style="background-color: #85bbe7; color: black; font-weight: bold;" type="button" value="Upload">'' Attachment,',
'       ''<input style="background-color: #85bbe7; color: black; font-weight: bold;" type="button" value="Seize Confirm">'' SEIZE_CONFIRM,',
'     --  ''<button type="button" class="t-Button t-Button--icon t-Button--iconLeft"><span aria-hidden="true" class="t-Icon t-Icon--left fa fa-check-square-o"></span>Seize Confirm</button>'' SEIZE_CONFIRM,',
'       /*',
'       CASE WHEN (SELECT DISTINCT (P.SZTIME)',
'                    FROM NMSZPOLC P',
'                   WHERE P.ITEMMODL = (SELECT DISTINCT (N.MODLCODE)',
'                                         FROM NMITEMAS N',
'                                        WHERE N.ITEMCODE = A.ITEMCODE)) = ''1'' AND FLOOR (SYSDATE - TRUNC (A.TIMSTAMP-8)) >= A.FSTWARN_DAYS THEN ''<button type="button" class="t-Button t-Button--icon t-Button--iconLeft"><span aria-hidden="true" class="'
||'t-Icon t-Icon--left fa fa-check-square-o"></span>Seize Confirm</button>''',
'            WHEN (SELECT DISTINCT (P.SZTIME)',
'                    FROM NMSZPOLC P',
'                   WHERE P.ITEMMODL = (SELECT DISTINCT (N.MODLCODE)',
'                                         FROM NMITEMAS N',
'                                        WHERE N.ITEMCODE = A.ITEMCODE)) = ''2'' AND FLOOR (SYSDATE - TRUNC (A.TIMSTAMP)) >= A.SNDWARN_DAYS THEN ''<input type="button" class="sc" value="Seize Confirm">''',
'            WHEN (SELECT DISTINCT (P.SZTIME)',
'                    FROM NMSZPOLC P',
'                   WHERE P.ITEMMODL = (SELECT DISTINCT (N.MODLCODE)',
'                                         FROM NMITEMAS N',
'                                        WHERE N.ITEMCODE = A.ITEMCODE)) = ''3'' AND FLOOR (SYSDATE - TRUNC (A.TIMSTAMP)) >= A.TRDWRN_DAYS THEN ''<input type="button" class="sc" value="Seize Confirm">''',
'       ELSE ''''',
'       END SEIZE_CONFIRM,',
'      ',
'       (SELECT DISTINCT (DECODE (P.SZTIME, ''1'', ''<font style="color: green; font-weight: bold;">After First Warning</font>'', ''2'', ''<font style="color: blue; font-weight: bold;">After Second Warning</font>'', ''3'', ''<font style="color: red; font-weight:'
||' bold;">After Final Warning</font>'', ''<font style="color: black; font-weight: bold;">N/A</font>''))',
'          FROM NMSZPOLC P',
'         WHERE P.ITEMMODL = (SELECT DISTINCT (N.MODLCODE)',
'                               FROM NMITEMAS N',
'                              WHERE N.ITEMCODE = A.ITEMCODE)) SEIZE_TIME, */',
'       A.FIRSTSMS,',
'       A.SECNDSMS,',
'       A.THIRDSMS,',
'       A.FSTWARN_DAYS,',
'       A.SNDWARN_DAYS,',
'       A.TRDWRN_DAYS,',
'       A.ASMTFLAG,',
'       A.SEIZECON,',
'       A.STOCK_CONFIRM,',
'       ''<input style="color: blue; font-weight: bold;" type="button" class="printdtls" value="Print">'' PRINT,',
'       A.FSTWRNDTE,',
'       A.SNDWRNDTE,',
'       A.TRDWRNDTE',
' FROM (SELECT A.ROWID ROWIDX, A.COMPCODE, A.DOCTTYPE, A.SUBTTYPE, A.DOCNUMBR, A.DOCTDATE, A.SERLNUMB, A.PARTYCDE, A.CUSTMRID, A.RAISEDBY, A.APPRVDBY, A.APPRDATE,',
'       A.REQDDATE, A.COMMCODE, A.ITEMCODE, A.HUOMCODE, A.FACTRVAL, A.LUOMCODE, A.ITEMRATE, A.COSTRATE, A.SALERATE, A.BATCHNUM, A.BOOKCODE, A.BOOKDATE, A.BOOKAPRV, ',
'       A.BATCHDTE, A.BATCHEXP, A.WARECODE, A.COSTCODE, A.ITEMSERL, A.VINNUMBR, A.COLORCDE, A.RCDOCTYP, A.RCSUBTYP, A.RCDOCNUM, A.RCDOCSRL, A.DISCPCNT, A.DISCAMNT, ',
'       A.SPLDISPC, A.SPLDISNT, A.ORGNQNTY, A.APPRQNTY, A.TRNSQNTY, A.TRNSQTY2, A.MSFCAMNT, A.CURRCODE, A.EXCGRATE, A.MSLCAMNT, A.ADJAMTLC, A.REFNUMBR, A.REFNDATE, ',
'       A.UPDOCTYP, A.UPSUBTYP, A.UPDOCNUM, A.UPDOCDTE, A.UPDOCSRL, A.DWDOCTYP, A.DWSUBTYP, A.DWDOCNUM, A.DWDOCDTE, A.DWDOCSRL, A.ACDOCTYP, A.ACSUBTYP, A.ACDOCNUM, ',
'       A.ACDOCDTE, A.ACDOCSRL, A.REMARKSS, A.OPRSTAMP, A.TIMSTAMP, A.INVNUMPK, A.STATUSCD, A.ITEMDESC, A.ISSUDATE, A.RCDOCDTE, A.ISDOCTYP, A.ISSUBTYP, ',
'       A.ISDOCNUM, A.ISDOCSRL, A.ENUDTLPK, A.SMANCODE, A.TERMSCOD, A.VHCLKYNO, A.ENGINENO, A.BOM_NO, A.CANCLE_DATE, A.INVNUMFK, A.SRVPKGFK, A.TOTALSRV, ',
'       A.LIMITDAY, A.PAYMENT_MODE, A.INSTALLMENT_PAY, A.DOWN_PAYMENT, A.NO_OF_INSTALLMENT, A.POSIBLE_INST_START_DATE, A.COLLECT_PERSON, A.INTEREST_AMOUNT,',
'       A.LOAN_AMOUNT, A.MONTHLY_INSTALLMENT, A.POSIBLE_INST_END_DATE, A.MODIFYDT, A.TRANS_TO_ADDRESS, A.NMZONEFK, A.SEIZE_LOCATION, A.LC_DATE, A.SEIZEFLG, ',
'       A.REGISTNO, A.CURNTSTS, A.LCNUMBER, A.SEZZONFK, A.WGHTQNTY, A.WGTUOMCD, A.CARATWGT, A.CARAT, A.DIAMOND_PCS, A.DIAMOND_WEIGHT, A.STONE_PCS, A.STONE_WEIGHT, ',
'       A.ADVANCHED_AMOUNT, A.NET_WEIGHT, A.ITEMCODE1, A.DESIGN_ID, A.STYLECODE, A.FINSHGD_STATUS, A.FIRSTWAR, A.SECNDWAR, A.THIRDWAR, A.FIRSTSMS, A.SECNDSMS, ',
'       A.THIRDSMS, A.FSTWARN_DAYS, A.SNDWARN_DAYS, A.TRDWRN_DAYS, A.ASMTFLAG, A.SEIZECON, A.FSTWRNDTE, A.SNDWRNDTE, A.TRDWRNDTE, A.STOCK_CONFIRM, A.SEIZEDTE, ',
'       A.SRCWRECD, A.RELZFLG,',
'      (SELECT MODLCODE FROM NMITEMAS WHERE COMPCODE = A.COMPCODE AND COMPCODE = :COMPCODE AND ITEMCODE = A.ITEMCODE) MODLCODE',
' FROM SZSTKREC A',
'     where A.DOCTTYPE = ''RC''',
'  AND A.SUBTTYPE = 1 ',
'  AND NVL (A.FIRSTWAR, ''N'') = ''Y''',
'  --AND NVL (A.SECNDWAR, ''N'') = ''N''',
'  AND NVL (A.SECNDWAR, ''N'') = ''Y''',
'  and nvl(a.seizecon,''N'')=''N''',
'  --and a.compcode=:compcode',
'      ) A--, NMSZPOLC B',
''))
,p_query_owner=>'ORBRGS_CVL'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(89380188677989907)
,p_name=>'Seize Confirm new'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MUKUL'
,p_internal_uid=>79246384031336784
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89379780757989882)
,p_db_column_name=>'ROWIDX'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rowidx'
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
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89379561091989862)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89379157172989860)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89378722825989860)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89378370073989859)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89377904917989857)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89377560919989857)
,p_db_column_name=>'SERLNUMB'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Serlnumb'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89377100756989857)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89376681896989856)
,p_db_column_name=>'ITEMMODL'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Itemmodl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89376358864989856)
,p_db_column_name=>'HUOMCODE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Huomcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89375909746989856)
,p_db_column_name=>'LUOMCODE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Luomcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89375548215989856)
,p_db_column_name=>'ITEMRATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Itemrate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89375109616989856)
,p_db_column_name=>'WARECODE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89374710586989854)
,p_db_column_name=>'COSTCODE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89374365424989854)
,p_db_column_name=>'ITEMSERL'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Itemserl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89373926330989854)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89373552581989854)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Custmrid'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89373147333989852)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89372762946989852)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Apprvdby'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89372273464989852)
,p_db_column_name=>'APPRDATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Apprdate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89371938036989852)
,p_db_column_name=>'REQDDATE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Reqddate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89371514776989851)
,p_db_column_name=>'COMMCODE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Commcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89371143013989851)
,p_db_column_name=>'FACTRVAL'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Factrval'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89370693373989851)
,p_db_column_name=>'COSTRATE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Costrate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89370330376989851)
,p_db_column_name=>'SALERATE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Salerate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89369887399989851)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89369545585989849)
,p_db_column_name=>'BOOKCODE'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Bookcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89369113983989849)
,p_db_column_name=>'BOOKDATE'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Bookdate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89368697769989849)
,p_db_column_name=>'BOOKAPRV'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Bookaprv'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89368364480989845)
,p_db_column_name=>'BATCHDTE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Batchdte'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89367950217989845)
,p_db_column_name=>'BATCHEXP'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Batchexp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89367474764989843)
,p_db_column_name=>'VINNUMBR'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Vinnumbr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89367101479989843)
,p_db_column_name=>'COLORCDE'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Colorcde'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89366698599989843)
,p_db_column_name=>'RCDOCTYP'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Rcdoctyp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89366356642989841)
,p_db_column_name=>'RCSUBTYP'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Rcsubtyp'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89365970921989841)
,p_db_column_name=>'RCDOCNUM'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Rcdocnum'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89365540863989841)
,p_db_column_name=>'RCDOCSRL'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Rcdocsrl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89365162875989840)
,p_db_column_name=>'DISCPCNT'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Discpcnt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89364690086989840)
,p_db_column_name=>'DISCAMNT'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Discamnt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89364324367989840)
,p_db_column_name=>'SPLDISPC'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Spldispc'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89363918715989840)
,p_db_column_name=>'SPLDISNT'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Spldisnt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89363523137989840)
,p_db_column_name=>'ORGNQNTY'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Orgnqnty'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89363081953989838)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Apprqnty'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89362727324989838)
,p_db_column_name=>'TRNSQNTY'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Trnsqnty'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89362300100989838)
,p_db_column_name=>'TRNSQTY2'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Trnsqty2'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89361919863989838)
,p_db_column_name=>'MSFCAMNT'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Msfcamnt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89361508995989838)
,p_db_column_name=>'CURRCODE'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89361116778989837)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89360698661989837)
,p_db_column_name=>'MSLCAMNT'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Mslcamnt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89360304173989837)
,p_db_column_name=>'ADJAMTLC'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Adjamtlc'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89359938601989837)
,p_db_column_name=>'REFNUMBR'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Refnumbr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89359559489989835)
,p_db_column_name=>'REFNDATE'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Refndate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89359094485989835)
,p_db_column_name=>'UPDOCTYP'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Updoctyp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89358712766989835)
,p_db_column_name=>'UPSUBTYP'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Upsubtyp'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89358290944989835)
,p_db_column_name=>'UPDOCNUM'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Updocnum'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89357892578989834)
,p_db_column_name=>'UPDOCDTE'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Updocdte'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89357523569989834)
,p_db_column_name=>'UPDOCSRL'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Updocsrl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89357114105989834)
,p_db_column_name=>'DWDOCTYP'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Dwdoctyp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89356764965989834)
,p_db_column_name=>'DWSUBTYP'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Dwsubtyp'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89356360027989824)
,p_db_column_name=>'DWDOCNUM'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Dwdocnum'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89355899844989823)
,p_db_column_name=>'DWDOCDTE'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Dwdocdte'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89355482628989823)
,p_db_column_name=>'DWDOCSRL'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Dwdocsrl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89355147348989820)
,p_db_column_name=>'ACDOCTYP'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Acdoctyp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89354701581989818)
,p_db_column_name=>'ACSUBTYP'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Acsubtyp'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89354372304989816)
,p_db_column_name=>'ACDOCNUM'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Acdocnum'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89353900399989816)
,p_db_column_name=>'ACDOCDTE'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Acdocdte'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89353526163989816)
,p_db_column_name=>'ACDOCSRL'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Acdocsrl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89353131353989809)
,p_db_column_name=>'REMARKSS'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Remarkss'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89352741932989807)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89352299030989806)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89351905749989799)
,p_db_column_name=>'INVNUMPK'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'Invnumpk'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89351534414989799)
,p_db_column_name=>'STATUSCD'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89351123727989798)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'Itemdesc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89350690234989796)
,p_db_column_name=>'ISSUDATE'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'Issudate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89350293298989795)
,p_db_column_name=>'RCDOCDTE'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'Rcdocdte'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89349930409989795)
,p_db_column_name=>'ISDOCTYP'
,p_display_order=>76
,p_column_identifier=>'BX'
,p_column_label=>'Isdoctyp'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89349544667989793)
,p_db_column_name=>'ISSUBTYP'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Issubtyp'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89349169099989793)
,p_db_column_name=>'ISDOCNUM'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'Isdocnum'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89348733396989791)
,p_db_column_name=>'ISDOCSRL'
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'Isdocsrl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89348342645989791)
,p_db_column_name=>'ENUDTLPK'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Enudtlpk'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
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
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89347878495989791)
,p_db_column_name=>'SMANCODE'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89347540963989790)
,p_db_column_name=>'TERMSCOD'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Termscod'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89347139088989790)
,p_db_column_name=>'VHCLKYNO'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Vhclkyno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89346714271989790)
,p_db_column_name=>'ENGINENO'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'Engineno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89346288819989790)
,p_db_column_name=>'BOM_NO'
,p_display_order=>85
,p_column_identifier=>'CG'
,p_column_label=>'Bom No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89345888202989788)
,p_db_column_name=>'CANCLE_DATE'
,p_display_order=>86
,p_column_identifier=>'CH'
,p_column_label=>'Cancle Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89345569290989788)
,p_db_column_name=>'INVNUMFK'
,p_display_order=>87
,p_column_identifier=>'CI'
,p_column_label=>'Invnumfk'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89345087334989788)
,p_db_column_name=>'SRVPKGFK'
,p_display_order=>88
,p_column_identifier=>'CJ'
,p_column_label=>'Srvpkgfk'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89344720371989788)
,p_db_column_name=>'TOTALSRV'
,p_display_order=>89
,p_column_identifier=>'CK'
,p_column_label=>'Totalsrv'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89344347963989787)
,p_db_column_name=>'LIMITDAY'
,p_display_order=>90
,p_column_identifier=>'CL'
,p_column_label=>'Limitday'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89343896787989785)
,p_db_column_name=>'PAYMENT_MODE'
,p_display_order=>91
,p_column_identifier=>'CM'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89343542233989785)
,p_db_column_name=>'INSTALLMENT_PAY'
,p_display_order=>92
,p_column_identifier=>'CN'
,p_column_label=>'Installment Pay'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89343134365989785)
,p_db_column_name=>'DOWN_PAYMENT'
,p_display_order=>93
,p_column_identifier=>'CO'
,p_column_label=>'Down Payment'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89342720110989784)
,p_db_column_name=>'NO_OF_INSTALLMENT'
,p_display_order=>94
,p_column_identifier=>'CP'
,p_column_label=>'No Of Installment'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89342293632989784)
,p_db_column_name=>'POSIBLE_INST_START_DATE'
,p_display_order=>95
,p_column_identifier=>'CQ'
,p_column_label=>'Posible Inst Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89341971544989784)
,p_db_column_name=>'COLLECT_PERSON'
,p_display_order=>96
,p_column_identifier=>'CR'
,p_column_label=>'Collect Person'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89341479345989784)
,p_db_column_name=>'INTEREST_AMOUNT'
,p_display_order=>97
,p_column_identifier=>'CS'
,p_column_label=>'Interest Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89341131390989782)
,p_db_column_name=>'LOAN_AMOUNT'
,p_display_order=>98
,p_column_identifier=>'CT'
,p_column_label=>'Loan Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89340681346989782)
,p_db_column_name=>'MONTHLY_INSTALLMENT'
,p_display_order=>99
,p_column_identifier=>'CU'
,p_column_label=>'Monthly Installment'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89340346209989782)
,p_db_column_name=>'POSIBLE_INST_END_DATE'
,p_display_order=>100
,p_column_identifier=>'CV'
,p_column_label=>'Posible Inst End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89339933425989782)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>101
,p_column_identifier=>'CW'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89339487738989781)
,p_db_column_name=>'TRANS_TO_ADDRESS'
,p_display_order=>102
,p_column_identifier=>'CX'
,p_column_label=>'Trans To Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89339163032989781)
,p_db_column_name=>'NMZONEFK'
,p_display_order=>103
,p_column_identifier=>'CY'
,p_column_label=>'Nmzonefk'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89338695006989781)
,p_db_column_name=>'SEIZE_LOCATION'
,p_display_order=>104
,p_column_identifier=>'CZ'
,p_column_label=>'Seize Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89338299042989781)
,p_db_column_name=>'LC_DATE'
,p_display_order=>105
,p_column_identifier=>'DA'
,p_column_label=>'Lc Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89337917187989779)
,p_db_column_name=>'SEIZEFLG'
,p_display_order=>106
,p_column_identifier=>'DB'
,p_column_label=>'Seizeflg'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89337598372989776)
,p_db_column_name=>'REGISTNO'
,p_display_order=>107
,p_column_identifier=>'DC'
,p_column_label=>'Registno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89337173427989773)
,p_db_column_name=>'CURNTSTS'
,p_display_order=>108
,p_column_identifier=>'DD'
,p_column_label=>'Curntsts'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89336837607989771)
,p_db_column_name=>'LCNUMBER'
,p_display_order=>109
,p_column_identifier=>'DE'
,p_column_label=>'Lcnumber'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89336390867989771)
,p_db_column_name=>'SEZZONFK'
,p_display_order=>110
,p_column_identifier=>'DF'
,p_column_label=>'Sezzonfk'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89336039699989770)
,p_db_column_name=>'WGHTQNTY'
,p_display_order=>111
,p_column_identifier=>'DG'
,p_column_label=>'Wghtqnty'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89335604635989770)
,p_db_column_name=>'WGTUOMCD'
,p_display_order=>112
,p_column_identifier=>'DH'
,p_column_label=>'Wgtuomcd'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89335195287989768)
,p_db_column_name=>'CARATWGT'
,p_display_order=>113
,p_column_identifier=>'DI'
,p_column_label=>'Caratwgt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89334798067989768)
,p_db_column_name=>'CARAT'
,p_display_order=>114
,p_column_identifier=>'DJ'
,p_column_label=>'Carat'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89334435895989768)
,p_db_column_name=>'DIAMOND_PCS'
,p_display_order=>115
,p_column_identifier=>'DK'
,p_column_label=>'Diamond Pcs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89334072389989766)
,p_db_column_name=>'DIAMOND_WEIGHT'
,p_display_order=>116
,p_column_identifier=>'DL'
,p_column_label=>'Diamond Weight'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89333606928989766)
,p_db_column_name=>'STONE_PCS'
,p_display_order=>117
,p_column_identifier=>'DM'
,p_column_label=>'Stone Pcs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89333196464989766)
,p_db_column_name=>'STONE_WEIGHT'
,p_display_order=>118
,p_column_identifier=>'DN'
,p_column_label=>'Stone Weight'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89332852316989765)
,p_db_column_name=>'ADVANCHED_AMOUNT'
,p_display_order=>119
,p_column_identifier=>'DO'
,p_column_label=>'Advanched Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89332437447989765)
,p_db_column_name=>'NET_WEIGHT'
,p_display_order=>120
,p_column_identifier=>'DP'
,p_column_label=>'Net Weight'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89332062172989765)
,p_db_column_name=>'ITEMCODE1'
,p_display_order=>121
,p_column_identifier=>'DQ'
,p_column_label=>'Itemcode1'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89331584539989763)
,p_db_column_name=>'DESIGN_ID'
,p_display_order=>122
,p_column_identifier=>'DR'
,p_column_label=>'Design Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89331226087989759)
,p_db_column_name=>'STYLECODE'
,p_display_order=>123
,p_column_identifier=>'DS'
,p_column_label=>'Stylecode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89330849361989757)
,p_db_column_name=>'FINSHGD_STATUS'
,p_display_order=>124
,p_column_identifier=>'DT'
,p_column_label=>'Finshgd Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89330408149989756)
,p_db_column_name=>'FIRSTWAR'
,p_display_order=>125
,p_column_identifier=>'DU'
,p_column_label=>'Firstwar'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89330065758989756)
,p_db_column_name=>'SECNDWAR'
,p_display_order=>126
,p_column_identifier=>'DV'
,p_column_label=>'Secndwar'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89329594657989754)
,p_db_column_name=>'THIRDWAR'
,p_display_order=>127
,p_column_identifier=>'DW'
,p_column_label=>'Thirdwar'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89329197202989748)
,p_db_column_name=>'ATTACHMENT'
,p_display_order=>128
,p_column_identifier=>'DX'
,p_column_label=>'Attachment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89328853499989748)
,p_db_column_name=>'SEIZE_CONFIRM'
,p_display_order=>129
,p_column_identifier=>'DY'
,p_column_label=>'Seize Confirm'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89328387285989732)
,p_db_column_name=>'FIRSTSMS'
,p_display_order=>130
,p_column_identifier=>'DZ'
,p_column_label=>'Firstsms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89328037170989727)
,p_db_column_name=>'SECNDSMS'
,p_display_order=>131
,p_column_identifier=>'EA'
,p_column_label=>'Secndsms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89327594320989726)
,p_db_column_name=>'THIRDSMS'
,p_display_order=>132
,p_column_identifier=>'EB'
,p_column_label=>'Thirdsms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89327225970989724)
,p_db_column_name=>'FSTWARN_DAYS'
,p_display_order=>133
,p_column_identifier=>'EC'
,p_column_label=>'Fstwarn Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89326780964989724)
,p_db_column_name=>'SNDWARN_DAYS'
,p_display_order=>134
,p_column_identifier=>'ED'
,p_column_label=>'Sndwarn Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89326417984989723)
,p_db_column_name=>'TRDWRN_DAYS'
,p_display_order=>135
,p_column_identifier=>'EE'
,p_column_label=>'Trdwrn Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89325975686989723)
,p_db_column_name=>'ASMTFLAG'
,p_display_order=>136
,p_column_identifier=>'EF'
,p_column_label=>'Asmtflag'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89325665712989723)
,p_db_column_name=>'SEIZECON'
,p_display_order=>137
,p_column_identifier=>'EG'
,p_column_label=>'Seizecon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89325239984989721)
,p_db_column_name=>'STOCK_CONFIRM'
,p_display_order=>138
,p_column_identifier=>'EH'
,p_column_label=>'Stock Confirm'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89324821596989721)
,p_db_column_name=>'PRINT'
,p_display_order=>139
,p_column_identifier=>'EI'
,p_column_label=>'Print'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89324465973989721)
,p_db_column_name=>'FSTWRNDTE'
,p_display_order=>140
,p_column_identifier=>'EJ'
,p_column_label=>'Fstwrndte'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89323987869989720)
,p_db_column_name=>'SNDWRNDTE'
,p_display_order=>141
,p_column_identifier=>'EK'
,p_column_label=>'Sndwrndte'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89323640467989720)
,p_db_column_name=>'TRDWRNDTE'
,p_display_order=>142
,p_column_identifier=>'EL'
,p_column_label=>'Trdwrndte'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.component_end;
end;
/
