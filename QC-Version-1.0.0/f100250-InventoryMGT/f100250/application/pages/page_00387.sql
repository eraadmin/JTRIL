prompt --application/pages/page_00387
begin
--   Manifest
--     PAGE: 00387
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
 p_id=>387
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Sales Invoice From Lead Generate'
,p_page_mode=>'MODAL'
,p_step_title=>'Lead Generate Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$(''#cusvisit_toolbar'').css(''width'', ''65%'');',
'//$(''#cusvisit_toolbar'').append($(''#P280_APPROVE_FLAG_CONTAINER''));',
'//$(''#P280_APPROVE_FLAG_CONTAINER'').css(''margin-left'', ''-800px'');',
'//$(''#P280_APPROVE_FLAG_LABEL'').css(''display'', ''block'');',
'//$(''#P280_APPROVE_FLAG_LABEL'').css(''white-space'', ''nowrap'');'))
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180909120754'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51550404103354318)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62300937164349288)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(120556684080075984)
,p_plug_name=>'Customer Visit Log'
,p_region_name=>'cusvisit'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT --a.ROWID,',
'         distinct',
'        ''Modify'' MOD,',
'         a.COMPCODE,',
'         a.DOCTTYPE,',
'         a.SUBTTYPE,',
'         a.DOCNUMBR,',
'         a.DOCTDATE DOCTDATE,',
'         a.SMANCODE,',
'         a.RAISEDBY,',
'         a.ITEMCODE,',
'         a.CUSTMRID,a.FEEDBACK1, a.FEEDBACK2, a.FEEDBACK3, a.FEEDBACK4,a.FEEDBACK5,',
'        initcap((SELECT wm_concat(nmcoddes)  FROM nmcodmas WHERE modlcode = ''NM'' AND nmhrdcde = ''PTY'' and compcode=a.COMPCODE and nmsofcde in(select nmprdtyp from nmcusvlg_producttype where DOCNUMBR=a.DOCNUMBR) ))  ITEMNAME,',
'         (SELECT PRTYNAME',
'            FROM nmmrkpty',
'           WHERE CUSTMRID = A.CUSTMRID)',
'            CUSTMR_NAME,',
'             (SELECT  case when count(a.CUSTMRID) >1 then',
'             ''Premium''',
'            else ''Regular''',
'            end case',
'            FROM nmcusvlg s',
'           WHERE s.CUSTMRID = A.CUSTMRID',
'           group by a.CUSTMRID)',
'            CUSTMR_STATUS,',
'             (SELECT  case when count(s.CUSTMRID) >1 then',
'             count(s.CUSTMRID)',
'            else count(s.CUSTMRID)',
'            end case',
'            FROM nmcusvlg s',
'           WHERE s.CUSTMRID = A.CUSTMRID',
'              and TRUNC(s.DOCTDATE)=TRUNC(a.DOCTDATE)',
'           AND TRUNC(a.DOCTDATE) between decode(:P387_FROM_DATE,null,TRUNC(a.DOCTDATE),:P387_FROM_DATE) and decode(:P387_TO_DATE,null,TRUNC(a.DOCTDATE),:P387_TO_DATE) ',
'           group by a.CUSTMRID,TRUNC(a.DOCTDATE))',
'            CUSTMR_COUNT,',
'            (SELECT  case when count(a.CUSTMRID) >1 then',
'             count(a.CUSTMRID)',
'            else count(a.CUSTMRID)',
'            end case',
'            FROM nmcusvlg s',
'           WHERE s.CUSTMRID = A.CUSTMRID',
'           group by a.CUSTMRID)',
'            TOTAL_VISIT,',
'            (SELECT  case when count(a.CUSTMRID) >1 then',
'             ''Old''',
'            else ''New''',
'            end case',
'            FROM nmcusvlg s',
'           WHERE s.CUSTMRID = A.CUSTMRID',
'           group by a.CUSTMRID)',
'            CUSTMR_TYPE,',
'         (SELECT PARTYAD1',
'            FROM nmmrkpty',
'           WHERE CUSTMRID = a.CUSTMRID)',
'            Address,',
'         (SELECT MOBILENO',
'            FROM nmmrkpty',
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
'         a.NMPRDTYP, NULL "SAL_INVOICE",',
'decode(a.DOCNUMBR,null,null,''Customer Card'') cutomer_card,',
'         (select C.NMCODDES ',
'from nmcodmas c',
'where C.COMPCODE = A.COMPCODE',
'and C.NMHRDCDE = ''ENQ''',
'and C.NMSOFCDE = A.SRCOFENQ) SRCOFENQ,',
' (select  nmcoddes from nmcodmas a',
'where a.compcode=:COMPCODE',
'and a.NMHRDCDE=''MOS''',
'and a.MODLCODE=''NM''',
'and a.NMSOFCDE = A.PURCHASE_TYPE) PURCHASE_TYPE,',
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
'    FROM NMCUSVLG A --,nmcusvlg_producttype b--,VW_SMAN_PRODUCT v                                             ',
'   WHERE-- a.DOCNUMBR=b.DOCNUMBR',
'--   and ',
'    nvl(APP_FLG,''N'') = :P387_APPROVE_FLAG --''N''',
'     --and nvl(CONFIRMC,''N'') = ''N''',
'     and (a.SMANCODE IN (select S.SMANCODE',
'                          from nmprdhdi s',
'                          where S.COMPCODE = :compcode',
'                           and S.SMANCODE = DECODE(:APP_USER,S.REPORTNG,S.SMANCODE,:APP_USER))',
'    )',
'   AND TRUNC (DOCTDATE) between decode(:P387_FROM_DATE,null,TRUNC(DOCTDATE),:P387_FROM_DATE) and decode(:P387_TO_DATE,null,TRUNC(DOCTDATE),:P387_TO_DATE)  ',
'   --  and to_date(a.DOCTDATE,''dd-mon-yyyy'') between to_date(V.STARTDATE,''dd-mon-yyyy'') and nvl(to_date(V.ENDDATE,''dd-mon-yyyy''),trunc(sysdate))',
'     --and V.PRODUCT_TYPE = nvl(A.NMPRDTYP,V.PRODUCT_TYPE)',
'  --   and a.compcode = v.compcode',
'ORDER BY  DOCTDATE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P387_APPROVE_FLAG'
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
 p_id=>wwv_flow_api.id(56586840089313784)
,p_max_row_count=>'1000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SYSADM'
,p_internal_uid=>21248750051549382
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47638760733142301)
,p_db_column_name=>'COMPCODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47639147837142304)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47639548876142304)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47639926606142305)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Tracking No.'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47640339734142305)
,p_db_column_name=>'SMANCODE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47640759387142305)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47641165886142306)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Customer  Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47641589626142310)
,p_db_column_name=>'ADDRESS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47641897205142314)
,p_db_column_name=>'PHONE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Mobile No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47642334853142318)
,p_db_column_name=>'USGSEGMT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Usage Segment'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47642760456142322)
,p_db_column_name=>'TEFAXNUM'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tefaxnum'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47643119679142326)
,p_db_column_name=>'CUSTMAIL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Custmail'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47643523870142330)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47643946944142334)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47644309674142337)
,p_db_column_name=>'PARTYCD1'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Partycd1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47644754217142340)
,p_db_column_name=>'CURRENT_BRAND'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Current brand'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47645158548142344)
,p_db_column_name=>'PURCHASED_FROM'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Purchased from'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47645552968142348)
,p_db_column_name=>'PURCHASE_DATE'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Purchase date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47645938388142351)
,p_db_column_name=>'AVERAGE_MILEAGE'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Average mileage'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47646381108142356)
,p_db_column_name=>'CONTACT_MODE'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'Contact mode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47646717893142359)
,p_db_column_name=>'INTERESTED_BRAND'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'Interested Brand'
,p_report_label=>'Interested Style'
,p_sync_form_label=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47647020236142361)
,p_db_column_name=>'INTERESTED_MODEL'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Interested Model'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47647445524142366)
,p_db_column_name=>'INTERIOR_COLOR'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Interior color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47647803502142369)
,p_db_column_name=>'EXTERIOR_COLOR'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Exterior color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47648286223142372)
,p_db_column_name=>'FUEL_TYPE'
,p_display_order=>270
,p_column_identifier=>'AB'
,p_column_label=>'Fuel type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47648683698142376)
,p_db_column_name=>'TEST_DRIVE_FLAG'
,p_display_order=>280
,p_column_identifier=>'AC'
,p_column_label=>'Test drive flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47649019938142382)
,p_db_column_name=>'TEST_DRIVE_MODEL'
,p_display_order=>290
,p_column_identifier=>'AD'
,p_column_label=>'Test drive model'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47649475828142385)
,p_db_column_name=>'TEST_DRIVE_DATE'
,p_display_order=>300
,p_column_identifier=>'AE'
,p_column_label=>'Test drive date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47649865442142390)
,p_db_column_name=>'TEST_BOOKING_DATE'
,p_display_order=>310
,p_column_identifier=>'AF'
,p_column_label=>'Test booking date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47650204445142393)
,p_db_column_name=>'CUSTOMER_TEST_REMARKS'
,p_display_order=>320
,p_column_identifier=>'AG'
,p_column_label=>'Remarks'
,p_column_html_expression=>'<span style="width:60px;">#CUSTOMER_TEST_REMARKS#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47650630356142396)
,p_db_column_name=>'CUSTOMER_REMARKS_SALES'
,p_display_order=>330
,p_column_identifier=>'AH'
,p_column_label=>'Customer Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47651050164142399)
,p_db_column_name=>'SALESMAN_REMARKS_SALES'
,p_display_order=>340
,p_column_identifier=>'AI'
,p_column_label=>'Salesman Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47651471104142402)
,p_db_column_name=>'NEXT_APOINTMENT_ON'
,p_display_order=>350
,p_column_identifier=>'AJ'
,p_column_label=>'Next apointment on'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47651857332142406)
,p_db_column_name=>'SALES_POTENTIAL'
,p_display_order=>360
,p_column_identifier=>'AK'
,p_column_label=>'Sales potential'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47652265778142408)
,p_db_column_name=>'REFERED_BY_SALES'
,p_display_order=>370
,p_column_identifier=>'AL'
,p_column_label=>'Refered by sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47652597117142411)
,p_db_column_name=>'VERIFIED_FLAG_SALES'
,p_display_order=>380
,p_column_identifier=>'AM'
,p_column_label=>'Verified flag sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47653027176142414)
,p_db_column_name=>'VERIFIED_BY_SALES'
,p_display_order=>390
,p_column_identifier=>'AN'
,p_column_label=>'Verified by sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47656198816142442)
,p_db_column_name=>'MOD'
,p_display_order=>400
,p_column_identifier=>'AO'
,p_column_label=>'#'
,p_column_link=>'f?p=&APP_ID.:292:&SESSION.::&DEBUG.::P292_DOCNUMBR:#DOCNUMBR#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47656602183142446)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>410
,p_column_identifier=>'AP'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47657033371142449)
,p_db_column_name=>'WHSZONFK'
,p_display_order=>420
,p_column_identifier=>'AQ'
,p_column_label=>'Whszonfk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47657466691142452)
,p_db_column_name=>'CONFIRMC'
,p_display_order=>430
,p_column_identifier=>'AR'
,p_column_label=>'Confirmc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47653480297142417)
,p_db_column_name=>'NMPRDTYP'
,p_display_order=>440
,p_column_identifier=>'AT'
,p_column_label=>'Nmprdtyp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47653797182142420)
,p_db_column_name=>'SRCOFENQ'
,p_display_order=>450
,p_column_identifier=>'AU'
,p_column_label=>'Sourceof<br>Enquire'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47654289451142423)
,p_db_column_name=>'PURCHASE_TYPE'
,p_display_order=>460
,p_column_identifier=>'AV'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47654656536142427)
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
 p_id=>wwv_flow_api.id(47655026558142431)
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
 p_id=>wwv_flow_api.id(47655396560142435)
,p_db_column_name=>'PIPLNSTS'
,p_display_order=>500
,p_column_identifier=>'AZ'
,p_column_label=>'Pipeline Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47655809812142439)
,p_db_column_name=>'PROFILEE'
,p_display_order=>510
,p_column_identifier=>'BA'
,p_column_label=>'Profile'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47661741458142494)
,p_db_column_name=>'CUSTMR_NAME'
,p_display_order=>520
,p_column_identifier=>'BB'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47662093960142497)
,p_db_column_name=>'ITEMNAME'
,p_display_order=>521
,p_column_identifier=>'BC'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47662537576142501)
,p_db_column_name=>'CUTOMER_CARD'
,p_display_order=>522
,p_column_identifier=>'BD'
,p_column_label=>'Cutomer Card'
,p_column_link=>'f?p=&APP_ID.:163:&SESSION.::&DEBUG.::P163_CUSTOMERNAME,P163_CUSTADDRESS,P163_MOBILE,P163_EMAIL:#CUSTMR_NAME#,#ADDRESS#,#PHONE#,#CUSTMAIL#'
,p_column_linktext=>'#CUTOMER_CARD#'
,p_column_link_attr=>'Customer Card'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47657805125142456)
,p_db_column_name=>'FEEDBACK1'
,p_display_order=>532
,p_column_identifier=>'BE'
,p_column_label=>'Feedback	 I am satisfied with the collection and availability of the products'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47658201393142460)
,p_db_column_name=>'FEEDBACK2'
,p_display_order=>542
,p_column_identifier=>'BF'
,p_column_label=>'I find the store representatives cooperative'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47658573414142462)
,p_db_column_name=>'FEEDBACK3'
,p_display_order=>552
,p_column_identifier=>'BG'
,p_column_label=>'I am happy with the store ambiance (Cleanliness, Smell , Sitting arrangement)'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47658958967142468)
,p_db_column_name=>'FEEDBACK4'
,p_display_order=>562
,p_column_identifier=>'BH'
,p_column_label=>'I will refer AMISHE to my friends and family in the future'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47659341000142471)
,p_db_column_name=>'FEEDBACK5'
,p_display_order=>572
,p_column_identifier=>'BI'
,p_column_label=>'I found the item i was looking for'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47659746708142475)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>582
,p_column_identifier=>'BJ'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47660124729142480)
,p_db_column_name=>'CUSTMR_STATUS'
,p_display_order=>592
,p_column_identifier=>'BK'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47660926581142487)
,p_db_column_name=>'CUSTMR_COUNT'
,p_display_order=>602
,p_column_identifier=>'BL'
,p_column_label=>'Visit Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47661316572142490)
,p_db_column_name=>'CUSTMR_TYPE'
,p_display_order=>612
,p_column_identifier=>'BM'
,p_column_label=>'Custmr type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47660563331142484)
,p_db_column_name=>'TOTAL_VISIT'
,p_display_order=>622
,p_column_identifier=>'BN'
,p_column_label=>'Total visit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47442507652696351)
,p_db_column_name=>'SAL_INVOICE'
,p_display_order=>632
,p_column_identifier=>'BP'
,p_column_label=>'Sales invoice'
,p_column_link=>'f?p=&APP_ID.:385:&SESSION.::&DEBUG.:RP:P385_DOCDESC,P385_S_PRDTYP,P385_S_PRSTYP,P385_IDENTIFY,P385_DOCNUMBR1,P385_UPDOCDTE,P385_DOCTTYPE,P385_SUBTTYPE:&P387_NARATION.,#DOCTTYPE#,#SUBTTYPE#,#PHONE#,#DOCNUMBR#,#DOCTDATE#,&P387_TRANTYPE.,&P387_SUBTTYPE.'
,p_column_linktext=>'Sales Invoice'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(56654010677322783)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'123248'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MOD:DOCNUMBR:DOCTDATE:CUSTMR_NAME:ADDRESS:PHONE:ITEMNAME:TOTAL_VISIT::SAL_INVOICE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(120572911924075997)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background:gray;"'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(142737450003506137)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(228472104853096495)
,p_plug_name=>'item region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47636840131142291)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(62300937164349288)
,p_button_name=>'Search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47666341693142511)
,p_button_sequence=>61
,p_button_plug_id=>wwv_flow_api.id(142737450003506137)
,p_button_name=>'Upload_excel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload'
,p_button_position=>'CHANGE'
,p_button_execute_validations=>'N'
,p_button_condition=>'P387_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47666773600142512)
,p_button_sequence=>71
,p_button_plug_id=>wwv_flow_api.id(142737450003506137)
,p_button_name=>'Process'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Process'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47663340933142509)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(120556684080075984)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:385:&SESSION.::&DEBUG.:292::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47663738278142510)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(120556684080075984)
,p_button_name=>'CANCLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:999:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47637285562142291)
,p_name=>'P387_APPROVE_FLAG'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(62300937164349288)
,p_item_default=>'N'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Approved;Y,Not Appproved;N'
,p_grid_label_column_span=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'SUBMIT'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47637672124142291)
,p_name=>'P387_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(62300937164349288)
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47638071896142291)
,p_name=>'P387_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(62300937164349288)
,p_prompt=>'To Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47664170162142510)
,p_name=>'P387_RANDOMNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(120556684080075984)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_random number;',
'begin',
'select dbms_random.value(1,9) num into v_random from dual;',
'return v_random;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47664827446142510)
,p_name=>'P387_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(120572911924075997)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47665243341142511)
,p_name=>'P387_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(120572911924075997)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47665685895142511)
,p_name=>'P387_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(120572911924075997)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47667120221142513)
,p_name=>'P387_FILEPATH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(142737450003506137)
,p_prompt=>'Filepath'
,p_source=>':IMAGE_PREFIX'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47667491101142513)
,p_name=>'P387_FILE'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(142737450003506137)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;'
,p_source=>'BLOB_CONTENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cattributes_element=>'style = ''name=browse'''
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIME_TYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_04=>'CHARACTER_SET'
,p_attribute_05=>'LAST_UPDATED'
,p_attribute_06=>'N'
,p_attribute_12=>'NATIVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47667907255142513)
,p_name=>'P387_SHEET'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(142737450003506137)
,p_prompt=>'Sheet'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>' select distinct sheet_name, sheet_nr from (select * from table( as_read_xlsx.read( (select blob_content from XLSX_FILES where id = :P387_FILESIZE)) ));'
,p_lov_cascade_parent_items=>'P387_FILESIZE'
,p_ajax_items_to_submit=>'P387_FILESIZE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47668300907142513)
,p_name=>'P387_FILESIZE'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(142737450003506137)
,p_prompt=>'Filesize'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47668718141142514)
,p_name=>'P387_FILE_ID'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_api.id(142737450003506137)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47669131144142514)
,p_name=>'P387_ID'
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_api.id(142737450003506137)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47675314888174711)
,p_name=>'P387_PRDOCTYP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(228472104853096495)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47675737070174711)
,p_name=>'P387_PRSUBTYP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(228472104853096495)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47676106463174711)
,p_name=>'P387_NARATION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(228472104853096495)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47676680867178464)
,p_name=>'P387_TRANTYPE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(228472104853096495)
,p_prompt=>'Trantype'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47676983674181637)
,p_name=>'P387_SUBTTYPE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(228472104853096495)
,p_prompt=>'Sub-Type'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47670364733142520)
,p_name=>'frezze report'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47670889239142520)
,p_event_id=>wwv_flow_api.id(47670364733142520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.AF.PLUGIN.JQ.IRFREEZECOLS'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(120556684080075984)
,p_attribute_01=>'2'
,p_attribute_02=>'500px'
,p_attribute_03=>'true'
,p_attribute_04=>'irFreezeCols_HOVER'
,p_attribute_05=>'500'
,p_attribute_06=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47671215253142520)
,p_name=>'refresh'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47671776638142520)
,p_event_id=>wwv_flow_api.id(47671215253142520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(120556684080075984)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47672182121142520)
,p_name=>'get_filename'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P387_FILE'
,p_bind_type=>'bind'
,p_bind_event_type=>'dblclick'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47672664716142520)
,p_event_id=>wwv_flow_api.id(47672182121142520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:apex.submit(2);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47673010111142521)
,p_name=>'New'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47673504246142521)
,p_event_id=>wwv_flow_api.id(47673010111142521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''apexir_TOOLBAR'').innerHTML = document.getElementById(''apexir_TOOLBAR'').innerHTML + ''<label for="P387_APPROVE_FLAG" class="uOptional"></label></td><td  align="left" valign="middle"><input type="hidden" name="p_arg_names" value'
||'="11759631789729827" /><input type="text" id="P387_APPROVE_FLAG" name="p_t01" class="text_field" style="margin:5px" value="" size="30" maxlength="4000"  />'';'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47669507410142514)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of XLSX_FILES'
,p_attribute_02=>'XLSX_FILES'
,p_attribute_03=>'P387_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P387_FILESIZE'
,p_attribute_11=>'I'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47669960630142514)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert  into nmmrkinf from excel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_query        VARCHAR2 (4000);',
'   v_sheet_name   VARCHAR2 (100);',
'   v_sheet_nr     NUMBER;',
'   v_cnt          NUMBER;',
'BEGIN',
'   SELECT MIN (sheet_nr)',
'     INTO v_sheet_nr',
'     FROM (SELECT *',
'             FROM TABLE (as_read_xlsx.read ( (SELECT blob_content',
'                                                FROM XLSX_FILES',
'                                               WHERE id = :P387_FILESIZE))));',
'',
'   SELECT MIN (sheet_name)',
'     INTO v_sheet_name',
'     FROM (SELECT *',
'             FROM TABLE (as_read_xlsx.read ( (SELECT blob_content',
'                                                FROM XLSX_FILES',
'                                               WHERE id = :P387_FILESIZE))))',
'    WHERE sheet_nr = :P387_SHEET;',
'',
'',
'   v_cnt := 0;',
'',
'   FOR x',
'      IN (WITH xlsx',
'                  AS (SELECT ROW_NR,',
'                             COL_NR,',
'                             CASE CELL_TYPE',
'                                WHEN ''S''',
'                                THEN',
'                                   STRING_VAL',
'                                WHEN ''N''',
'                                THEN',
'                                   TO_CHAR (NUMBER_VAL)',
'                                WHEN ''D''',
'                                THEN',
'                                   TO_CHAR (DATE_VAL,',
'                                            ''YYYY-MM-DD HH24:MI:SS'')',
'                                ELSE',
'                                   FORMULA',
'                             END',
'                                CELL_VAL -- to make PIVOT works we have to have one data type for this column - in our case CHAR',
'                        FROM (SELECT *',
'                                FROM TABLE (as_read_xlsx.',
'                                             read (',
'                                               (SELECT blob_content',
'                                                  FROM XLSX_FILES',
'                                                 WHERE id = :P387_FILESIZE),',
'                                               v_sheet_name))))',
'          SELECT ad.*',
'            FROM xlsx PIVOT (MAX (CELL_VAL)',
'                      FOR COL_NR',
'                      IN  (1 AS WARECODE,',
'                          2 AS SMANCODE,',
'                          3 AS DOCTDATE,',
'                          4 AS NMPRDTYP,',
'                          5 AS CUSTNAME,',
'                          6 AS CUSTADR1,',
'                          7 AS CUSTADR2,',
'                          8 AS OCCUPATION,',
'                          9 AS CUSTMOBL,',
'                          10 AS WHSZONFK,',
'                          11 AS ETBCUSTM,',
'                          12 AS CMPETION,',
'                          13 AS PROFILEE,',
'                          14 AS USGSEGMT,',
'                          15 AS INTERESTED_BRAND,',
'                          16 AS INTERESTED_MODEL,',
'                          17 AS FUEL_TYPE,',
'                          18 AS CURRENT_BRAND,',
'                          19 AS PIPLNSTS,',
'                          20 AS SRCOFENQ,',
'                          21 AS PURCHASE_TYPE,',
'                          22 AS CONTACT_MODE,',
'                          23 AS PURCHASE_DATE)) ad',
'           WHERE row_nr > 1)',
'   LOOP',
'      INSERT INTO nmmrkinf (WARECODE,',
'                             SMANCODE,',
'                             DOCTDATE,',
'                             NMPRDTYP,',
'                             CUSTNAME,',
'                             CUSTADR1,',
'                             CUSTADR2,',
'                             OCCUPATION,',
'                             CUSTMOBL,',
'                             WHSZONFK,',
'                             ETBCUSTM,',
'                             CMPETION,',
'                             PROFILEE,',
'                             USGSEGMT,',
'                             INTERESTED_BRAND,',
'                             INTERESTED_MODEL,',
'                             FUEL_TYPE,',
'                             CURRENT_BRAND,',
'                             PIPLNSTS,',
'                             SRCOFENQ,',
'                             PURCHASE_TYPE,',
'                             CONTACT_MODE,',
'                             PURCHASE_DATE,',
'                             ITEMCODE,',
'                             COMPCODE,',
'                             CFRMCKFLG)',
'           VALUES (x.WARECODE,',
'                   x.SMANCODE,',
'                   to_date(x.DOCTDATE,''RRRR-MM-DD HH24:MI:SS''), --to_date(x.DOCTDATE,''RRRR-MM-DD''),',
'                   x.NMPRDTYP,',
'                   x.CUSTNAME,',
'                   x.CUSTADR1,',
'                   x.CUSTADR2,',
'                   x.OCCUPATION,',
'                   x.CUSTMOBL,',
'                   x.WHSZONFK,',
'                   x.ETBCUSTM,',
'                   x.CMPETION,',
'                   x.PROFILEE,',
'                   x.USGSEGMT,',
'                   x.INTERESTED_BRAND,',
'                   x.INTERESTED_MODEL,',
'                   x.FUEL_TYPE,',
'                   x.CURRENT_BRAND,',
'                   x.PIPLNSTS,',
'                   x.SRCOFENQ,',
'                   x.PURCHASE_TYPE,',
'                   x.CONTACT_MODE,',
'                   to_date(x.PURCHASE_DATE,''RRRR-MM-DD HH24:MI:SS''),',
'                   x.INTERESTED_MODEL,',
'                   :compcode,',
'                   ''N''); ',
'   END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(47666773600142512)
);
wwv_flow_api.component_end;
end;
/
