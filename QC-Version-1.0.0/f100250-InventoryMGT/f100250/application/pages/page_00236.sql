prompt --application/pages/page_00236
begin
--   Manifest
--     PAGE: 00236
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
 p_id=>236
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Customer Visit Log'
,p_alias=>'NMGENLED'
,p_page_mode=>'MODAL'
,p_step_title=>'Customer Visit Log'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171009114531'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101280411914989947)
,p_plug_name=>'Customer Visit Log'
,p_region_name=>'cusvisit'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT --a.ROWID,',
'        ''Modify'' MOD,',
'         a.COMPCODE,',
'         a.DOCTTYPE,',
'         a.SUBTTYPE,',
'         a.DOCNUMBR,',
'         to_char(a.DOCTDATE,''dd/mm/rrrr'') DOCTDATE,',
'         a.SMANCODE,',
'         a.RAISEDBY,',
'         a.ITEMCODE,',
'         (SELECT CUSTNAME',
'            FROM nmmrkcus',
'           WHERE CUSTMRID = A.CUSTMRID)',
'            CUSTMRID,',
'         (SELECT CUSTADR1',
'            FROM nmmrkcus',
'           WHERE CUSTMRID = a.CUSTMRID)',
'            Address,',
'         (SELECT CUSTMOBL',
'            FROM nmmrkcus',
'           WHERE CUSTMRID = a.CUSTMRID)',
'            Phone,',
'         (SELECT NMCODDES',
'            FROM nmcodmas b',
'           WHERE     a.compcode = :COMPCODE',
'                 AND b.NMSOFCDE = a.USGSEGMT',
'                 AND b.NMHRDCDE = ''AMT''',
'                 AND b.MODLCODE = ''NM'')',
'         USGSEGMT,',
'         TEFAXNUM,',
'         CUSTMAIL,',
'         a.OPRSTAMP,',
'         a.TIMSTAMP,',
'         PARTYCD1,',
'         CURRENT_BRAND,',
'         --CURRENT_MODEL,',
'         PURCHASED_FROM,',
'         PURCHASE_DATE,',
'         AVERAGE_MILEAGE,',
'         CONTACT_MODE,',
'         (SELECT DISTINCT NMCODDES',
'            FROM nmcodmas b',
'           WHERE     b.compcode = :COMPCODE',
'                 AND b.NMSOFCDE = a.INTERESTED_BRAND',
'                 AND b.NMHRDCDE = ''COM''',
'                 AND b.MODLCODE = ''NM'')',
'            INTERESTED_BRAND,',
'         (SELECT DISTINCT NMCODDES',
'            FROM nmcodmas b                                       --wm_concat(',
'           WHERE     b.compcode = :COMPCODE',
'                 AND b.NMSOFCDE = a.INTERESTED_MODEL',
'                 AND b.NMHRDCDE = ''MOD''',
'                 AND b.MODLCODE = ''NM'')',
'         INTERESTED_MODEL,',
'         INTERIOR_COLOR,',
'         EXTERIOR_COLOR,',
'         FUEL_TYPE,',
'         TEST_DRIVE_FLAG,',
'         TEST_DRIVE_MODEL,',
'         TEST_DRIVE_DATE,',
'         TEST_BOOKING_DATE,',
'         CUSTOMER_TEST_REMARKS,',
'         CUSTOMER_REMARKS_SALES,',
'         SALESMAN_REMARKS_SALES,',
'         NEXT_APOINTMENT_ON,',
'         SALES_POTENTIAL,',
'         REFERED_BY_SALES,',
'         VERIFIED_FLAG_SALES,',
'         VERIFIED_BY_SALES,',
'         a.WHSZONFK,',
'         CONFIRMC,',
'         NMPRDTYP,',
'         (select C.NMCODDES ',
'from nmcodmas c',
'where C.COMPCODE = A.COMPCODE',
'and C.NMHRDCDE = ''ENQ''',
'and C.NMSOFCDE = A.SRCOFENQ) SRCOFENQ,',
' (select  SYCODDES from sycodmas a',
'where a.compcode=:COMPCODE',
'and a.SYHRDCDE=''MOS''',
'and a.MODLCODE=''NM''',
'and a.SYSOFCDE = A.PURCHASE_TYPE) PURCHASE_TYPE,',
'         ETBCUSTM,',
'         CMPETION,',
'(select distinct S.NMCODDES d',
'from nmcodmas s',
'where S.COMPCODE = A.COMPCODE',
'and S.NMHRDCDE = ''STU''',
'and S.NMSOFCDE=A.PROFILEE)       PROFILEE,',
'(select C.NMCODDES d',
'from nmcodmas c',
'where C.COMPCODE = :compcode',
'and C.NMHRDCDE = ''PIP''',
'and C.NMSOFCDE=A.PIPLNSTS) PIPLNSTS',
'    FROM NMCUSVLG A ,VW_SMAN_PRODUCT v                                              --,VW_SMAN v',
'   WHERE nvl(APP_FLG,''N'') = ''N''',
'     and nvl(CONFIRMC,''N'') = ''N''',
'     and a.SMANCODE IN (select S.SMANCODE',
'                          from nmsmnmas s',
'                          where S.COMPCODE = :compcode',
'                           and S.USERNAME = :APP_USER)',
'     and a.SMANCODE like V.SMANCODE_TREE||''%''',
'     and to_date(a.DOCTDATE,''dd-mon-yyyy'') between to_date(V.STARTDATE,''dd-mon-yyyy'') and to_date(V.ENDDATE,''dd-mon-yyyy'')',
'     and V.PRODUCT_TYPE = nvl(A.NMPRDTYP,V.PRODUCT_TYPE)',
'     and a.compcode = v.compcode',
'ORDER BY a.TIMSTAMP DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_output_show_link=>'Y'
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
 p_id=>wwv_flow_api.id(37310567924227747)
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
,p_owner=>'SYSADM'
,p_internal_uid=>2175209131286608
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37310812887227749)
,p_db_column_name=>'COMPCODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37310917357227750)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37311007358227751)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37311089406227752)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Tracking No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83383493608834135)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>60
,p_column_identifier=>'AS'
,p_column_label=>'Tracking Date'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37311358228227754)
,p_db_column_name=>'SMANCODE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37311396108227755)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37311522022227756)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Transporter/Customer name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37311650255227757)
,p_db_column_name=>'ADDRESS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37311733373227758)
,p_db_column_name=>'PHONE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Mobile No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37311829569227759)
,p_db_column_name=>'USGSEGMT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Usage Segment'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37311946296227760)
,p_db_column_name=>'TEFAXNUM'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tefaxnum'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37311984311227761)
,p_db_column_name=>'CUSTMAIL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Custmail'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37312059604227762)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37312245126227763)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37312312190227764)
,p_db_column_name=>'PARTYCD1'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Partycd1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37312381997227765)
,p_db_column_name=>'CURRENT_BRAND'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Current brand'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37312651885227767)
,p_db_column_name=>'PURCHASED_FROM'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Purchased from'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37312735649227768)
,p_db_column_name=>'PURCHASE_DATE'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Purchase date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37312855747227769)
,p_db_column_name=>'AVERAGE_MILEAGE'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Average mileage'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37312863659227770)
,p_db_column_name=>'CONTACT_MODE'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'Contact mode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37313046890227771)
,p_db_column_name=>'INTERESTED_BRAND'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'Interested Brand'
,p_sync_form_label=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37313102991227772)
,p_db_column_name=>'INTERESTED_MODEL'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Interested Model'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37313203576227773)
,p_db_column_name=>'INTERIOR_COLOR'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Interior color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37313348806227774)
,p_db_column_name=>'EXTERIOR_COLOR'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Exterior color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37313420042227775)
,p_db_column_name=>'FUEL_TYPE'
,p_display_order=>270
,p_column_identifier=>'AB'
,p_column_label=>'Fuel type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37313539181227776)
,p_db_column_name=>'TEST_DRIVE_FLAG'
,p_display_order=>280
,p_column_identifier=>'AC'
,p_column_label=>'Test drive flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37313623161227777)
,p_db_column_name=>'TEST_DRIVE_MODEL'
,p_display_order=>290
,p_column_identifier=>'AD'
,p_column_label=>'Test drive model'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37313757434227778)
,p_db_column_name=>'TEST_DRIVE_DATE'
,p_display_order=>300
,p_column_identifier=>'AE'
,p_column_label=>'Test drive date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37313822889227779)
,p_db_column_name=>'TEST_BOOKING_DATE'
,p_display_order=>310
,p_column_identifier=>'AF'
,p_column_label=>'Test booking date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37313886034227780)
,p_db_column_name=>'CUSTOMER_TEST_REMARKS'
,p_display_order=>320
,p_column_identifier=>'AG'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37313972667227781)
,p_db_column_name=>'CUSTOMER_REMARKS_SALES'
,p_display_order=>330
,p_column_identifier=>'AH'
,p_column_label=>'Customer remarks sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37314123012227782)
,p_db_column_name=>'SALESMAN_REMARKS_SALES'
,p_display_order=>340
,p_column_identifier=>'AI'
,p_column_label=>'Salesman remarks sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37314245305227783)
,p_db_column_name=>'NEXT_APOINTMENT_ON'
,p_display_order=>350
,p_column_identifier=>'AJ'
,p_column_label=>'Next apointment on'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37314358135227784)
,p_db_column_name=>'SALES_POTENTIAL'
,p_display_order=>360
,p_column_identifier=>'AK'
,p_column_label=>'Sales potential'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37314401125227785)
,p_db_column_name=>'REFERED_BY_SALES'
,p_display_order=>370
,p_column_identifier=>'AL'
,p_column_label=>'Refered by sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37314480198227786)
,p_db_column_name=>'VERIFIED_FLAG_SALES'
,p_display_order=>380
,p_column_identifier=>'AM'
,p_column_label=>'Verified flag sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37314588887227787)
,p_db_column_name=>'VERIFIED_BY_SALES'
,p_display_order=>390
,p_column_identifier=>'AN'
,p_column_label=>'Verified by sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40168542585165080)
,p_db_column_name=>'MOD'
,p_display_order=>400
,p_column_identifier=>'AO'
,p_column_label=>'#'
,p_column_link=>'f?p=&APP_ID.:237:&SESSION.::&DEBUG.::P237_DOCNUMBR:#DOCNUMBR#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83382293089834123)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>410
,p_column_identifier=>'AP'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(88700749273840156)
,p_db_column_name=>'WHSZONFK'
,p_display_order=>420
,p_column_identifier=>'AQ'
,p_column_label=>'Whszonfk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(88942072840002279)
,p_db_column_name=>'CONFIRMC'
,p_display_order=>430
,p_column_identifier=>'AR'
,p_column_label=>'Confirmc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37845560498091905)
,p_db_column_name=>'NMPRDTYP'
,p_display_order=>440
,p_column_identifier=>'AT'
,p_column_label=>'Nmprdtyp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37846736908091917)
,p_db_column_name=>'SRCOFENQ'
,p_display_order=>450
,p_column_identifier=>'AU'
,p_column_label=>'Sourceof<br>Enquire'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37846861392091918)
,p_db_column_name=>'PURCHASE_TYPE'
,p_display_order=>460
,p_column_identifier=>'AV'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37846941655091919)
,p_db_column_name=>'ETBCUSTM'
,p_display_order=>470
,p_column_identifier=>'AW'
,p_column_label=>'ETB '
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37847028563091920)
,p_db_column_name=>'CMPETION'
,p_display_order=>480
,p_column_identifier=>'AX'
,p_column_label=>'Competion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37847195044091922)
,p_db_column_name=>'PIPLNSTS'
,p_display_order=>500
,p_column_identifier=>'AZ'
,p_column_label=>'Pipeline Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38149076240122141)
,p_db_column_name=>'PROFILEE'
,p_display_order=>510
,p_column_identifier=>'BA'
,p_column_label=>'Profilee'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(37377738512236746)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'22424'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MOD:DOCNUMBR:DOCTDATE:CUSTMRID:ADDRESS:PHONE:USGSEGMT:INTERESTED_BRAND:INTERESTED_MODEL:CUSTOMER_TEST_REMARKS::NMPRDTYP:SRCOFENQ:PURCHASE_TYPE:ETBCUSTM:CMPETION:PIPLNSTS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101296639758989960)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background:gray;"'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101296234482989960)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(101280411914989947)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:237:&SESSION.::&DEBUG.:237::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37233240930413962)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(101280411914989947)
,p_button_name=>'CANCLE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::::#&P236_RANDOMNO.'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38146391296122114)
,p_name=>'P236_RANDOMNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(101280411914989947)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_random number;',
'begin',
'select dbms_random.value(1,9) num into v_random from dual;',
'return v_random;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101297056648989961)
,p_name=>'P236_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(101296639758989960)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101297453280989961)
,p_name=>'P236_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(101296639758989960)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101297843825989961)
,p_name=>'P236_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(101296639758989960)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37277777512655153)
,p_name=>'frezze report'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37277890268655154)
,p_event_id=>wwv_flow_api.id(37277777512655153)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.AF.PLUGIN.JQ.IRFREEZECOLS'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(101280411914989947)
,p_attribute_01=>'2'
,p_attribute_02=>'500px'
,p_attribute_03=>'true'
,p_attribute_04=>'irFreezeCols_HOVER'
,p_attribute_05=>'500'
,p_attribute_06=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37314699401227788)
,p_name=>'refresh'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37314799684227789)
,p_event_id=>wwv_flow_api.id(37314699401227788)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(101280411914989947)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40233060473912642)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(37233240930413962)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40233222965912643)
,p_event_id=>wwv_flow_api.id(40233060473912642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url_id varchar2(10);',
'begin',
'v_url_id:=:PROGNAME;',
' if v_url_id=:PROGNAME then',
'  htp.init();',
' owa_util.redirect_url(''f?p=''||:APP_ID||'':1:''||:APP_SESSION, true);',
'--apex_util.prepare_url(''f?p=&APP_ID.:1:&SESSION.::::#&PROGNAME.'');',
' else',
'  htp.init();',
'   owa_util.redirect_url(''f?p=''||:APP_ID||'':1:''||:APP_SESSION, true);',
'-- apex_util.prepare_url(''f?p=&APP_ID.:1:&SESSION.::::#1'');',
' end if;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.component_end;
end;
/
