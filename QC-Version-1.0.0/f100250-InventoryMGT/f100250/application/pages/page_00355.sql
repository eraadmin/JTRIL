prompt --application/pages/page_00355
begin
--   Manifest
--     PAGE: 00355
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
 p_id=>355
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Customer Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Customer Report'
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
,p_last_upd_yyyymmddhh24miss=>'20180327184802'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40430026141494917)
,p_plug_name=>'today No of  Customer'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>30
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
'         (select wm_concat(distinct ITEMCODE) from nmcusvlg_detail where compcode=a.compcode and itemcode=a.ITEMCODE)  ITEMNAME,',
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
'         NMPRDTYP,',
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
'    FROM NMCUSVLG A ',
'    where TRUNC (DOCTDATE) between decode(:P355_FROM_DATE,null,TRUNC(SYSDATE),:P355_FROM_DATE) and decode(:P355_TO_DATE,null,TRUNC(SYSDATE),:P355_TO_DATE)  ',
'ORDER BY  DOCTDATE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P355_APPROVE_FLAG,P355_FROM_DATE,P355_TO_DATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P355_ID'
,p_plug_display_when_cond2=>'3'
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
 p_id=>wwv_flow_api.id(40430417638494921)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GADMIN'
,p_internal_uid=>5092327600730519
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40430518629494922)
,p_db_column_name=>'EXTERIOR_COLOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Exterior color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40430674228494923)
,p_db_column_name=>'FUEL_TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fuel type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40430740848494924)
,p_db_column_name=>'TEST_DRIVE_FLAG'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Test drive flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40430865241494925)
,p_db_column_name=>'TEST_DRIVE_MODEL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Test drive model'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40430926593494926)
,p_db_column_name=>'TEST_DRIVE_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Test drive date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40431039063494927)
,p_db_column_name=>'TEST_BOOKING_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Test booking date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40431169105494928)
,p_db_column_name=>'CUSTOMER_TEST_REMARKS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Remarks'
,p_column_html_expression=>'<span style="width:60px;">#CUSTOMER_TEST_REMARKS#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40431225149494929)
,p_db_column_name=>'CUSTOMER_REMARKS_SALES'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Customer Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40431331714494930)
,p_db_column_name=>'SALESMAN_REMARKS_SALES'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Salesman Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40431460399494931)
,p_db_column_name=>'NEXT_APOINTMENT_ON'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Next apointment on'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40431490493494932)
,p_db_column_name=>'SALES_POTENTIAL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Sales potential'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40431626005494933)
,p_db_column_name=>'REFERED_BY_SALES'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Refered by sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40431786000494934)
,p_db_column_name=>'VERIFIED_FLAG_SALES'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Verified flag sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40431859921494935)
,p_db_column_name=>'VERIFIED_BY_SALES'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Verified by sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40431938381494936)
,p_db_column_name=>'MOD'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'#'
,p_column_link=>'f?p=&APP_ID.:292:&SESSION.::&DEBUG.::P292_DOCNUMBR:#DOCNUMBR#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40432055331494937)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40432158859494938)
,p_db_column_name=>'WHSZONFK'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Whszonfk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40432221135494939)
,p_db_column_name=>'CONFIRMC'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Confirmc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40432351145494940)
,p_db_column_name=>'NMPRDTYP'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Nmprdtyp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40432469257494941)
,p_db_column_name=>'SRCOFENQ'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Sourceof<br>Enquire'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40432573550494942)
,p_db_column_name=>'PURCHASE_TYPE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40432605298494943)
,p_db_column_name=>'ETBCUSTM'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'ETB '
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40432768320494944)
,p_db_column_name=>'CMPETION'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Competion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40432859141494945)
,p_db_column_name=>'PIPLNSTS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Pipeline Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40432928965494946)
,p_db_column_name=>'COMPCODE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40433071063494947)
,p_db_column_name=>'PROFILEE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Profile'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40433141963494948)
,p_db_column_name=>'CUSTMR_NAME'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40433250807494949)
,p_db_column_name=>'ITEMNAME'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40433325890494950)
,p_db_column_name=>'CUTOMER_CARD'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cutomer Card'
,p_column_link=>'f?p=&APP_ID.:163:&SESSION.::&DEBUG.::P163_CUSTOMERNAME,P163_CUSTADDRESS,P163_MOBILE,P163_EMAIL:#CUSTMR_NAME#,#ADDRESS#,#PHONE#,#CUSTMAIL#'
,p_column_linktext=>'#CUTOMER_CARD#'
,p_column_link_attr=>'Customer Card'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40433454439494951)
,p_db_column_name=>'FEEDBACK1'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Feedback	 I am satisfied with the collection and availability of the products'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40433496630494952)
,p_db_column_name=>'FEEDBACK2'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'I find the store representatives cooperative'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40454587447545703)
,p_db_column_name=>'FEEDBACK3'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'I am happy with the store ambiance (Cleanliness, Smell , Sitting arrangement)'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40454667202545704)
,p_db_column_name=>'FEEDBACK4'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'I will refer Gitanjali to my friends and family in the future'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40454772263545705)
,p_db_column_name=>'FEEDBACK5'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'I found the item i was looking for'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40454794514545706)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40454898440545707)
,p_db_column_name=>'CUSTMR_STATUS'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40455088605545708)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40455115842545709)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40455236223545710)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>390
,p_column_identifier=>'AM'
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
 p_id=>wwv_flow_api.id(40455324931545711)
,p_db_column_name=>'SMANCODE'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40455486418545712)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40455502803545713)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Customer  Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40455621184545714)
,p_db_column_name=>'ADDRESS'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40455787987545715)
,p_db_column_name=>'PHONE'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Mobile No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40455809210545716)
,p_db_column_name=>'USGSEGMT'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Usage Segment'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40455933622545717)
,p_db_column_name=>'TEFAXNUM'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Tefaxnum'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40456000472545718)
,p_db_column_name=>'CUSTMAIL'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Custmail'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40456170913545719)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40456206296545720)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40456352339545721)
,p_db_column_name=>'PARTYCD1'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Partycd1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40456422333545722)
,p_db_column_name=>'CURRENT_BRAND'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Current brand'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40456490394545723)
,p_db_column_name=>'PURCHASED_FROM'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Purchased from'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40456639596545724)
,p_db_column_name=>'PURCHASE_DATE'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Purchase date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40456690451545725)
,p_db_column_name=>'AVERAGE_MILEAGE'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Average mileage'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40456804102545726)
,p_db_column_name=>'CONTACT_MODE'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Contact mode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40456909895545727)
,p_db_column_name=>'INTERESTED_BRAND'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Interested Brand'
,p_report_label=>'Interested Style'
,p_sync_form_label=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40457009246545728)
,p_db_column_name=>'INTERESTED_MODEL'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Interested Model'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40457099797545729)
,p_db_column_name=>'INTERIOR_COLOR'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Interior color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(40479027021546814)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'51410'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EXTERIOR_COLOR:FUEL_TYPE:TEST_DRIVE_FLAG:TEST_DRIVE_MODEL:TEST_DRIVE_DATE:TEST_BOOKING_DATE:CUSTOMER_TEST_REMARKS:CUSTOMER_REMARKS_SALES:SALESMAN_REMARKS_SALES:NEXT_APOINTMENT_ON:SALES_POTENTIAL:REFERED_BY_SALES:VERIFIED_FLAG_SALES:VERIFIED_BY_SALES:'
||'MOD:ITEMCODE:WHSZONFK:CONFIRMC:NMPRDTYP:SRCOFENQ:PURCHASE_TYPE:ETBCUSTM:CMPETION:PIPLNSTS:COMPCODE:PROFILEE:CUSTMR_NAME:ITEMNAME:CUTOMER_CARD:FEEDBACK1:FEEDBACK2:FEEDBACK3:FEEDBACK4:FEEDBACK5:DOCTDATE:CUSTMR_STATUS:DOCTTYPE:SUBTTYPE:DOCNUMBR:SMANCODE'
||':RAISEDBY:CUSTMRID:ADDRESS:PHONE:USGSEGMT:TEFAXNUM:CUSTMAIL:OPRSTAMP:TIMSTAMP:PARTYCD1:CURRENT_BRAND:PURCHASED_FROM:PURCHASE_DATE:AVERAGE_MILEAGE:CONTACT_MODE:INTERESTED_BRAND:INTERESTED_MODEL:INTERIOR_COLOR'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40482117699634303)
,p_plug_name=>'No of hot Customer'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>20
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
'         (select wm_concat(distinct ITEMCODE) from nmcusvlg_detail where compcode=a.compcode and itemcode=a.ITEMCODE)  ITEMNAME,',
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
'         NMPRDTYP,',
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
'    FROM NMCUSVLG A ',
'    where PURCHASE_TYPE = ''H''',
'    AND TRUNC (DOCTDATE) between decode(:P355_FROM_DATE,null,TRUNC(SYSDATE),:P355_FROM_DATE) and decode(:P355_TO_DATE,null,TRUNC(SYSDATE),:P355_TO_DATE)  ',
'ORDER BY  DOCTDATE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P355_APPROVE_FLAG,P355_FROM_DATE,P355_TO_DATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P355_ID'
,p_plug_display_when_cond2=>'2'
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
 p_id=>wwv_flow_api.id(40482535602634307)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GADMIN'
,p_internal_uid=>5144445564869905
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40482666566634308)
,p_db_column_name=>'EXTERIOR_COLOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Exterior color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40482718252634309)
,p_db_column_name=>'CUSTMR_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40482840657634310)
,p_db_column_name=>'ITEMNAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40482891421634311)
,p_db_column_name=>'CUTOMER_CARD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cutomer Card'
,p_column_link=>'f?p=&APP_ID.:163:&SESSION.::&DEBUG.::P163_CUSTOMERNAME,P163_CUSTADDRESS,P163_MOBILE,P163_EMAIL:#CUSTMR_NAME#,#ADDRESS#,#PHONE#,#CUSTMAIL#'
,p_column_linktext=>'#CUTOMER_CARD#'
,p_column_link_attr=>'Customer Card'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40482994375634312)
,p_db_column_name=>'FEEDBACK1'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Feedback	 I am satisfied with the collection and availability of the products'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40483176922634313)
,p_db_column_name=>'FEEDBACK2'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'I find the store representatives cooperative'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
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
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40483232509634314)
,p_db_column_name=>'FEEDBACK3'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'I am happy with the store ambiance (Cleanliness, Smell , Sitting arrangement)'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40483358538634315)
,p_db_column_name=>'FEEDBACK4'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'I will refer Gitanjali to my friends and family in the future'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40483476231634316)
,p_db_column_name=>'FEEDBACK5'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'I found the item i was looking for'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40483547772634317)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40483623620634318)
,p_db_column_name=>'CUSTMR_STATUS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40483725962634319)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40483828643634320)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40483960725634321)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>140
,p_column_identifier=>'N'
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
 p_id=>wwv_flow_api.id(40484028476634322)
,p_db_column_name=>'SMANCODE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40484096803634323)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40484227828634324)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Customer  Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40484374449634325)
,p_db_column_name=>'ADDRESS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40484438031634326)
,p_db_column_name=>'PHONE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Mobile No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40484579487634327)
,p_db_column_name=>'USGSEGMT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Usage Segment'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40484618002634328)
,p_db_column_name=>'TEFAXNUM'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Tefaxnum'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40484769764634329)
,p_db_column_name=>'CUSTMAIL'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Custmail'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40484812987634330)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40484893939634331)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40485019645634332)
,p_db_column_name=>'PARTYCD1'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Partycd1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40485142791634333)
,p_db_column_name=>'CURRENT_BRAND'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Current brand'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40485245906634334)
,p_db_column_name=>'PURCHASED_FROM'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Purchased from'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40485365515634335)
,p_db_column_name=>'FUEL_TYPE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Fuel type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40485431104634336)
,p_db_column_name=>'PURCHASE_DATE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Purchase date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40485551366634337)
,p_db_column_name=>'AVERAGE_MILEAGE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Average mileage'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40485659329634338)
,p_db_column_name=>'CONTACT_MODE'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Contact mode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40485692524634339)
,p_db_column_name=>'INTERESTED_BRAND'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Interested Brand'
,p_report_label=>'Interested Style'
,p_sync_form_label=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40485882598634340)
,p_db_column_name=>'INTERESTED_MODEL'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Interested Model'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40485936270634341)
,p_db_column_name=>'INTERIOR_COLOR'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Interior color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40486055263634342)
,p_db_column_name=>'TEST_DRIVE_FLAG'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Test drive flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40486121036634343)
,p_db_column_name=>'TEST_DRIVE_MODEL'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Test drive model'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40486275922634344)
,p_db_column_name=>'TEST_DRIVE_DATE'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Test drive date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40486376440634345)
,p_db_column_name=>'TEST_BOOKING_DATE'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Test booking date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40486436834634346)
,p_db_column_name=>'CUSTOMER_TEST_REMARKS'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Remarks'
,p_column_html_expression=>'<span style="width:60px;">#CUSTOMER_TEST_REMARKS#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40486552818634347)
,p_db_column_name=>'CUSTOMER_REMARKS_SALES'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Customer Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40486657542634348)
,p_db_column_name=>'SALESMAN_REMARKS_SALES'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Salesman Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40486713419634349)
,p_db_column_name=>'NEXT_APOINTMENT_ON'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Next apointment on'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40486885117634350)
,p_db_column_name=>'SALES_POTENTIAL'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Sales potential'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40486919606634351)
,p_db_column_name=>'REFERED_BY_SALES'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Refered by sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40487031738634352)
,p_db_column_name=>'VERIFIED_FLAG_SALES'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Verified flag sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40487114428634303)
,p_db_column_name=>'VERIFIED_BY_SALES'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Verified by sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40487285639634304)
,p_db_column_name=>'MOD'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'#'
,p_column_link=>'f?p=&APP_ID.:292:&SESSION.::&DEBUG.::P292_DOCNUMBR:#DOCNUMBR#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40487342806634305)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40487481093634306)
,p_db_column_name=>'WHSZONFK'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Whszonfk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40487511836634307)
,p_db_column_name=>'CONFIRMC'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Confirmc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40487666532634308)
,p_db_column_name=>'NMPRDTYP'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Nmprdtyp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40487749916634309)
,p_db_column_name=>'SRCOFENQ'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Sourceof<br>Enquire'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40487849055634310)
,p_db_column_name=>'PURCHASE_TYPE'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40487969298634311)
,p_db_column_name=>'ETBCUSTM'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'ETB '
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40487999390634312)
,p_db_column_name=>'CMPETION'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Competion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40488128795634313)
,p_db_column_name=>'PIPLNSTS'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Pipeline Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40488288521634314)
,p_db_column_name=>'COMPCODE'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40488389004634315)
,p_db_column_name=>'PROFILEE'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Profile'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(40531149096645256)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'51931'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EXTERIOR_COLOR:CUSTMR_NAME:ITEMNAME:CUTOMER_CARD:FEEDBACK1:FEEDBACK2:FEEDBACK3:FEEDBACK4:FEEDBACK5:DOCTDATE:CUSTMR_STATUS:DOCTTYPE:SUBTTYPE:DOCNUMBR:SMANCODE:RAISEDBY:CUSTMRID:ADDRESS:PHONE:USGSEGMT:TEFAXNUM:CUSTMAIL:OPRSTAMP:TIMSTAMP:PARTYCD1:CURREN'
||'T_BRAND:PURCHASED_FROM:FUEL_TYPE:PURCHASE_DATE:AVERAGE_MILEAGE:CONTACT_MODE:INTERESTED_BRAND:INTERESTED_MODEL:INTERIOR_COLOR:TEST_DRIVE_FLAG:TEST_DRIVE_MODEL:TEST_DRIVE_DATE:TEST_BOOKING_DATE:CUSTOMER_TEST_REMARKS:CUSTOMER_REMARKS_SALES:SALESMAN_REMA'
||'RKS_SALES:NEXT_APOINTMENT_ON:SALES_POTENTIAL:REFERED_BY_SALES:VERIFIED_FLAG_SALES:VERIFIED_BY_SALES:MOD:ITEMCODE:WHSZONFK:CONFIRMC:NMPRDTYP:SRCOFENQ:PURCHASE_TYPE:ETBCUSTM:CMPETION:PIPLNSTS:COMPCODE:PROFILEE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40488501450634317)
,p_plug_name=>'today New Customer'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>40
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
'         (select wm_concat(distinct ITEMCODE) from nmcusvlg_detail where compcode=a.compcode and itemcode=a.ITEMCODE)  ITEMNAME,',
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
'    FROM NMCUSVLG A ',
'    where TRUNC (DOCTDATE) between decode(:P355_FROM_DATE,null,TRUNC(SYSDATE),:P355_FROM_DATE) and decode(:P355_TO_DATE,null,TRUNC(SYSDATE),:P355_TO_DATE)  ',
'    group by a.COMPCODE,',
'         a.DOCTTYPE,',
'         a.SUBTTYPE,',
'         a.DOCNUMBR,',
'         a.DOCTDATE ,',
'         a.SMANCODE,',
'         a.RAISEDBY,',
'         a.ITEMCODE,',
'         a.CUSTMRID,a.FEEDBACK1, a.FEEDBACK2, a.FEEDBACK3, a.FEEDBACK4,a.FEEDBACK5,USGSEGMT,TEFAXNUM,',
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
'         a.INTERESTED_BRAND,a.INTERESTED_MODEL,A.SRCOFENQ,A.PURCHASE_TYPE,A.PROFILEE,A.PIPLNSTS',
'    having count(CUSTMRID)  <2',
'ORDER BY  DOCTDATE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P355_APPROVE_FLAG,P355_FROM_DATE,P355_TO_DATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P355_ID'
,p_plug_display_when_cond2=>'4'
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
 p_id=>wwv_flow_api.id(40488932375634321)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GADMIN'
,p_internal_uid=>5150842337869919
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40489185302634323)
,p_db_column_name=>'CUSTMR_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40489238300634324)
,p_db_column_name=>'ITEMNAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40489333900634325)
,p_db_column_name=>'CUTOMER_CARD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cutomer Card'
,p_column_link=>'f?p=&APP_ID.:163:&SESSION.::&DEBUG.::P163_CUSTOMERNAME,P163_CUSTADDRESS,P163_MOBILE,P163_EMAIL:#CUSTMR_NAME#,#ADDRESS#,#PHONE#,#CUSTMAIL#'
,p_column_linktext=>'#CUTOMER_CARD#'
,p_column_link_attr=>'Customer Card'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40489432404634326)
,p_db_column_name=>'FEEDBACK1'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Feedback	 I am satisfied with the collection and availability of the products'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40489546061634327)
,p_db_column_name=>'FEEDBACK2'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'I find the store representatives cooperative'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40489614946634328)
,p_db_column_name=>'FEEDBACK3'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'I am happy with the store ambiance (Cleanliness, Smell , Sitting arrangement)'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40489752311634329)
,p_db_column_name=>'FEEDBACK4'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'I will refer Gitanjali to my friends and family in the future'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40489844008634330)
,p_db_column_name=>'FEEDBACK5'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'I found the item i was looking for'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40489959153634331)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40490013099634332)
,p_db_column_name=>'CUSTMR_STATUS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40490134199634333)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40490263043634334)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40490348563634335)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>140
,p_column_identifier=>'N'
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
 p_id=>wwv_flow_api.id(40490401125634336)
,p_db_column_name=>'SMANCODE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40490495542634337)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40490591879634338)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Customer  Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40490747975634339)
,p_db_column_name=>'ADDRESS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40490889218634340)
,p_db_column_name=>'PHONE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Mobile No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40490978215634341)
,p_db_column_name=>'USGSEGMT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Usage Segment'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40491022366634342)
,p_db_column_name=>'TEFAXNUM'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Tefaxnum'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40491134448634343)
,p_db_column_name=>'CUSTMAIL'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Custmail'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40491203971634344)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40491329403634345)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40491476092634346)
,p_db_column_name=>'PARTYCD1'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Partycd1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40491510081634347)
,p_db_column_name=>'CURRENT_BRAND'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Current brand'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40491595425634348)
,p_db_column_name=>'PURCHASED_FROM'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Purchased from'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40491807698634350)
,p_db_column_name=>'PURCHASE_DATE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Purchase date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40491989914634351)
,p_db_column_name=>'AVERAGE_MILEAGE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Average mileage'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40492038309634352)
,p_db_column_name=>'CONTACT_MODE'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Contact mode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40536002450686203)
,p_db_column_name=>'INTERESTED_BRAND'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Interested Brand'
,p_report_label=>'Interested Style'
,p_sync_form_label=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40536189070686204)
,p_db_column_name=>'INTERESTED_MODEL'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Interested Model'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40537536596686218)
,p_db_column_name=>'MOD'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'#'
,p_column_link=>'f?p=&APP_ID.:292:&SESSION.::&DEBUG.::P292_DOCNUMBR:#DOCNUMBR#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40537606037686219)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40538062353686223)
,p_db_column_name=>'SRCOFENQ'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Sourceof<br>Enquire'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40538169746686224)
,p_db_column_name=>'PURCHASE_TYPE'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40538477026686227)
,p_db_column_name=>'PIPLNSTS'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Pipeline Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40538582296686228)
,p_db_column_name=>'COMPCODE'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40538598213686229)
,p_db_column_name=>'PROFILEE'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Profile'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
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
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(40584714673752351)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'52467'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUSTMR_NAME:ITEMNAME:CUTOMER_CARD:FEEDBACK1:FEEDBACK2:FEEDBACK3:FEEDBACK4:FEEDBACK5:DOCTDATE:CUSTMR_STATUS:DOCTTYPE:SUBTTYPE:DOCNUMBR:SMANCODE:RAISEDBY:CUSTMRID:ADDRESS:PHONE:USGSEGMT:TEFAXNUM:CUSTMAIL:OPRSTAMP:TIMSTAMP:PARTYCD1:CURRENT_BRAND:PURCHAS'
||'ED_FROM:PURCHASE_DATE:AVERAGE_MILEAGE:CONTACT_MODE:INTERESTED_BRAND:INTERESTED_MODEL:MOD:ITEMCODE:SRCOFENQ:PURCHASE_TYPE:PIPLNSTS:COMPCODE:PROFILEE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40538748459686230)
,p_plug_name=>'today Old Customer'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>50
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
'         (select wm_concat(distinct ITEMCODE) from nmcusvlg_detail where compcode=a.compcode and itemcode=a.ITEMCODE)  ITEMNAME,',
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
'    FROM NMCUSVLG A ',
'    where TRUNC (DOCTDATE) between decode(:P355_FROM_DATE,null,TRUNC(SYSDATE),:P355_FROM_DATE) and decode(:P355_TO_DATE,null,TRUNC(SYSDATE),:P355_TO_DATE)  ',
'    group by a.COMPCODE,',
'         a.DOCTTYPE,',
'         a.SUBTTYPE,',
'         a.DOCNUMBR,',
'         a.DOCTDATE ,',
'         a.SMANCODE,',
'         a.RAISEDBY,',
'         a.ITEMCODE,',
'         a.CUSTMRID,a.FEEDBACK1, a.FEEDBACK2, a.FEEDBACK3, a.FEEDBACK4,a.FEEDBACK5,USGSEGMT,TEFAXNUM,',
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
'         a.INTERESTED_BRAND,a.INTERESTED_MODEL,A.SRCOFENQ,A.PURCHASE_TYPE,A.PROFILEE,A.PIPLNSTS',
'    having count(CUSTMRID)  >=2',
'ORDER BY  DOCTDATE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P355_APPROVE_FLAG,P355_FROM_DATE,P355_TO_DATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P355_ID'
,p_plug_display_when_cond2=>'5'
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
 p_id=>wwv_flow_api.id(40538867521686231)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GADMIN'
,p_internal_uid=>5200777483921829
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40538961288686232)
,p_db_column_name=>'CUSTMR_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40539009429686233)
,p_db_column_name=>'ITEMNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40539119895686234)
,p_db_column_name=>'CUTOMER_CARD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cutomer Card'
,p_column_link=>'f?p=&APP_ID.:163:&SESSION.::&DEBUG.::P163_CUSTOMERNAME,P163_CUSTADDRESS,P163_MOBILE,P163_EMAIL:#CUSTMR_NAME#,#ADDRESS#,#PHONE#,#CUSTMAIL#'
,p_column_linktext=>'#CUTOMER_CARD#'
,p_column_link_attr=>'Customer Card'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40539251365686235)
,p_db_column_name=>'FEEDBACK1'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Feedback	 I am satisfied with the collection and availability of the products'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40539310657686236)
,p_db_column_name=>'FEEDBACK2'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'I find the store representatives cooperative'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40539398345686237)
,p_db_column_name=>'FEEDBACK3'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'I am happy with the store ambiance (Cleanliness, Smell , Sitting arrangement)'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40539584969686238)
,p_db_column_name=>'FEEDBACK4'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'I will refer Gitanjali to my friends and family in the future'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40539617152686239)
,p_db_column_name=>'FEEDBACK5'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'I found the item i was looking for'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40539693304686240)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40539844349686241)
,p_db_column_name=>'CUSTMR_STATUS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40539911429686242)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40540053406686243)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40540173989686244)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>130
,p_column_identifier=>'M'
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
 p_id=>wwv_flow_api.id(40540286602686245)
,p_db_column_name=>'SMANCODE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40540358194686246)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40540449760686247)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Customer  Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40540512842686248)
,p_db_column_name=>'ADDRESS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40540653284686249)
,p_db_column_name=>'PHONE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Mobile No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40540742652686250)
,p_db_column_name=>'USGSEGMT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Usage Segment'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40540796436686251)
,p_db_column_name=>'TEFAXNUM'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Tefaxnum'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40540890290686252)
,p_db_column_name=>'CUSTMAIL'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Custmail'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40566274249748903)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40566295584748904)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40566465094748905)
,p_db_column_name=>'PARTYCD1'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Partycd1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40566541750748906)
,p_db_column_name=>'CURRENT_BRAND'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Current brand'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40566643993748907)
,p_db_column_name=>'PURCHASED_FROM'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Purchased from'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40566720940748908)
,p_db_column_name=>'PURCHASE_DATE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Purchase date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40566844863748909)
,p_db_column_name=>'AVERAGE_MILEAGE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Average mileage'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40566928463748910)
,p_db_column_name=>'CONTACT_MODE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Contact mode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40567066301748911)
,p_db_column_name=>'INTERESTED_BRAND'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Interested Brand'
,p_report_label=>'Interested Style'
,p_sync_form_label=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40567135999748912)
,p_db_column_name=>'INTERESTED_MODEL'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Interested Model'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40567256937748913)
,p_db_column_name=>'MOD'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'#'
,p_column_link=>'f?p=&APP_ID.:292:&SESSION.::&DEBUG.::P292_DOCNUMBR:#DOCNUMBR#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40567314482748914)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40567409729748915)
,p_db_column_name=>'SRCOFENQ'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Sourceof<br>Enquire'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40567494541748916)
,p_db_column_name=>'PURCHASE_TYPE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40567611822748917)
,p_db_column_name=>'PIPLNSTS'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Pipeline Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40567755553748918)
,p_db_column_name=>'COMPCODE'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40567827383748919)
,p_db_column_name=>'PROFILEE'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Profile'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(40585563465752351)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'52475'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUSTMR_NAME:ITEMNAME:CUTOMER_CARD:FEEDBACK1:FEEDBACK2:FEEDBACK3:FEEDBACK4:FEEDBACK5:DOCTDATE:CUSTMR_STATUS:DOCTTYPE:SUBTTYPE:DOCNUMBR:SMANCODE:RAISEDBY:CUSTMRID:ADDRESS:PHONE:USGSEGMT:TEFAXNUM:CUSTMAIL:OPRSTAMP:TIMSTAMP:PARTYCD1:CURRENT_BRAND:PURCHAS'
||'ED_FROM:PURCHASE_DATE:AVERAGE_MILEAGE:CONTACT_MODE:INTERESTED_BRAND:INTERESTED_MODEL:MOD:ITEMCODE:SRCOFENQ:PURCHASE_TYPE:PIPLNSTS:COMPCODE:PROFILEE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44047247867361938)
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
 p_id=>wwv_flow_api.id(113053527844083604)
,p_plug_name=>'No of lead'
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
'         (select wm_concat(distinct ITEMCODE) from nmcusvlg_detail where compcode=a.compcode and itemcode=a.ITEMCODE)  ITEMNAME,',
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
'         NMPRDTYP,',
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
'    FROM NMCUSVLG A --,VW_SMAN_PRODUCT v                                             ',
' /*  WHERE nvl(APP_FLG,''N'') = :P355_APPROVE_FLAG --''N''',
'     --and nvl(CONFIRMC,''N'') = ''N''',
'     and (a.SMANCODE IN (select S.SMANCODE',
'                          from nmsmnmas s',
'                          where S.COMPCODE = :compcode',
'                           and S.SMANCODE = :APP_USER)',
'    )*/',
'   --  and to_date(a.DOCTDATE,''dd-mon-yyyy'') between to_date(V.STARTDATE,''dd-mon-yyyy'') and nvl(to_date(V.ENDDATE,''dd-mon-yyyy''),trunc(sysdate))',
'     --and V.PRODUCT_TYPE = nvl(A.NMPRDTYP,V.PRODUCT_TYPE)',
'  --   and a.compcode = v.compcode',
'ORDER BY  DOCTDATE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P355_APPROVE_FLAG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P355_ID'
,p_plug_display_when_cond2=>'1'
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
 p_id=>wwv_flow_api.id(49083683853321404)
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
,p_internal_uid=>13745593815557002
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40133711525149912)
,p_db_column_name=>'COMPCODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40134139420149912)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40134498900149912)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40134919536149912)
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
 p_id=>wwv_flow_api.id(40135378383149912)
,p_db_column_name=>'SMANCODE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40135785141149912)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40136122114149912)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Customer  Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40136570680149912)
,p_db_column_name=>'ADDRESS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40136904686149913)
,p_db_column_name=>'PHONE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Mobile No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40137356984149913)
,p_db_column_name=>'USGSEGMT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Usage Segment'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40137719210149913)
,p_db_column_name=>'TEFAXNUM'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tefaxnum'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40138129431149913)
,p_db_column_name=>'CUSTMAIL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Custmail'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40138582828149913)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40138912961149913)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40139386338149913)
,p_db_column_name=>'PARTYCD1'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Partycd1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40139751762149913)
,p_db_column_name=>'CURRENT_BRAND'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Current brand'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40140150782149913)
,p_db_column_name=>'PURCHASED_FROM'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Purchased from'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40140584503149913)
,p_db_column_name=>'PURCHASE_DATE'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Purchase date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40140983547149913)
,p_db_column_name=>'AVERAGE_MILEAGE'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Average mileage'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40141366490149914)
,p_db_column_name=>'CONTACT_MODE'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'Contact mode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40141748584149914)
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
 p_id=>wwv_flow_api.id(40142129586149914)
,p_db_column_name=>'INTERESTED_MODEL'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Interested Model'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40142533061149914)
,p_db_column_name=>'INTERIOR_COLOR'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Interior color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40142986309149914)
,p_db_column_name=>'EXTERIOR_COLOR'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Exterior color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40143331089149914)
,p_db_column_name=>'FUEL_TYPE'
,p_display_order=>270
,p_column_identifier=>'AB'
,p_column_label=>'Fuel type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40143714368149914)
,p_db_column_name=>'TEST_DRIVE_FLAG'
,p_display_order=>280
,p_column_identifier=>'AC'
,p_column_label=>'Test drive flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40144175357149914)
,p_db_column_name=>'TEST_DRIVE_MODEL'
,p_display_order=>290
,p_column_identifier=>'AD'
,p_column_label=>'Test drive model'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
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
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40144588710149914)
,p_db_column_name=>'TEST_DRIVE_DATE'
,p_display_order=>300
,p_column_identifier=>'AE'
,p_column_label=>'Test drive date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40144974983149914)
,p_db_column_name=>'TEST_BOOKING_DATE'
,p_display_order=>310
,p_column_identifier=>'AF'
,p_column_label=>'Test booking date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40145320381149915)
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
 p_id=>wwv_flow_api.id(40145708672149915)
,p_db_column_name=>'CUSTOMER_REMARKS_SALES'
,p_display_order=>330
,p_column_identifier=>'AH'
,p_column_label=>'Customer Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40146112922149915)
,p_db_column_name=>'SALESMAN_REMARKS_SALES'
,p_display_order=>340
,p_column_identifier=>'AI'
,p_column_label=>'Salesman Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40146516891149915)
,p_db_column_name=>'NEXT_APOINTMENT_ON'
,p_display_order=>350
,p_column_identifier=>'AJ'
,p_column_label=>'Next apointment on'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40146961355149915)
,p_db_column_name=>'SALES_POTENTIAL'
,p_display_order=>360
,p_column_identifier=>'AK'
,p_column_label=>'Sales potential'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40147371010149915)
,p_db_column_name=>'REFERED_BY_SALES'
,p_display_order=>370
,p_column_identifier=>'AL'
,p_column_label=>'Refered by sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40147706976149915)
,p_db_column_name=>'VERIFIED_FLAG_SALES'
,p_display_order=>380
,p_column_identifier=>'AM'
,p_column_label=>'Verified flag sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40148160498149915)
,p_db_column_name=>'VERIFIED_BY_SALES'
,p_display_order=>390
,p_column_identifier=>'AN'
,p_column_label=>'Verified by sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40151387123149916)
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
 p_id=>wwv_flow_api.id(40151725858149916)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>410
,p_column_identifier=>'AP'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40152155224149916)
,p_db_column_name=>'WHSZONFK'
,p_display_order=>420
,p_column_identifier=>'AQ'
,p_column_label=>'Whszonfk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40152492671149916)
,p_db_column_name=>'CONFIRMC'
,p_display_order=>430
,p_column_identifier=>'AR'
,p_column_label=>'Confirmc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40148528948149915)
,p_db_column_name=>'NMPRDTYP'
,p_display_order=>440
,p_column_identifier=>'AT'
,p_column_label=>'Nmprdtyp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40148927513149915)
,p_db_column_name=>'SRCOFENQ'
,p_display_order=>450
,p_column_identifier=>'AU'
,p_column_label=>'Sourceof<br>Enquire'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40149290824149915)
,p_db_column_name=>'PURCHASE_TYPE'
,p_display_order=>460
,p_column_identifier=>'AV'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40149768596149916)
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
 p_id=>wwv_flow_api.id(40150159498149916)
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
 p_id=>wwv_flow_api.id(40150512887149916)
,p_db_column_name=>'PIPLNSTS'
,p_display_order=>500
,p_column_identifier=>'AZ'
,p_column_label=>'Pipeline Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40150948100149916)
,p_db_column_name=>'PROFILEE'
,p_display_order=>510
,p_column_identifier=>'BA'
,p_column_label=>'Profile'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40155747063149917)
,p_db_column_name=>'CUSTMR_NAME'
,p_display_order=>520
,p_column_identifier=>'BB'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40156137684149917)
,p_db_column_name=>'ITEMNAME'
,p_display_order=>521
,p_column_identifier=>'BC'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40156579496149917)
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
 p_id=>wwv_flow_api.id(40152953494149917)
,p_db_column_name=>'FEEDBACK1'
,p_display_order=>532
,p_column_identifier=>'BE'
,p_column_label=>'Feedback	 I am satisfied with the collection and availability of the products'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40153385026149917)
,p_db_column_name=>'FEEDBACK2'
,p_display_order=>542
,p_column_identifier=>'BF'
,p_column_label=>'I find the store representatives cooperative'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40153747772149917)
,p_db_column_name=>'FEEDBACK3'
,p_display_order=>552
,p_column_identifier=>'BG'
,p_column_label=>'I am happy with the store ambiance (Cleanliness, Smell , Sitting arrangement)'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40154143015149917)
,p_db_column_name=>'FEEDBACK4'
,p_display_order=>562
,p_column_identifier=>'BH'
,p_column_label=>'I will refer Gitanjali to my friends and family in the future'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40154522737149917)
,p_db_column_name=>'FEEDBACK5'
,p_display_order=>572
,p_column_identifier=>'BI'
,p_column_label=>'I found the item i was looking for'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40154907727149917)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>582
,p_column_identifier=>'BJ'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40155347137149917)
,p_db_column_name=>'CUSTMR_STATUS'
,p_display_order=>592
,p_column_identifier=>'BK'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(49150854441330403)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'48188'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MOD:DOCNUMBR:CUSTMR_NAME:ADDRESS:PHONE:ITEMNAME:CUSTOMER_REMARKS_SALES:SALESMAN_REMARKS_SALES:FEEDBACK1:FEEDBACK2:FEEDBACK3:FEEDBACK4:FEEDBACK5:CUSTMR_STATUS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(113069755688083617)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background:gray;"'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(135234293767513757)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40430352097494920)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(40430026141494917)
,p_button_name=>'CREATE_1_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:292:&SESSION.::&DEBUG.:292::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40482402132634306)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(40482117699634303)
,p_button_name=>'CREATE_1_1_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:292:&SESSION.::&DEBUG.:292::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39803520222738551)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(44047247867361938)
,p_button_name=>'Search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40157753552149919)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(44047247867361938)
,p_button_name=>'CANCLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_redirect_url=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>11
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40160730762149920)
,p_button_sequence=>61
,p_button_plug_id=>wwv_flow_api.id(135234293767513757)
,p_button_name=>'Upload_excel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload'
,p_button_position=>'CHANGE'
,p_button_execute_validations=>'N'
,p_button_condition=>'P355_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40161136868149920)
,p_button_sequence=>71
,p_button_plug_id=>wwv_flow_api.id(135234293767513757)
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
 p_id=>wwv_flow_api.id(40157291594149919)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(113053527844083604)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:292:&SESSION.::&DEBUG.:292::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39803376419738549)
,p_name=>'P355_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(44047247867361938)
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39803413673738550)
,p_name=>'P355_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(44047247867361938)
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
 p_id=>wwv_flow_api.id(40158156941149919)
,p_name=>'P355_APPROVE_FLAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(113053527844083604)
,p_item_default=>'N'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Approved;Y,Not Appproved;N'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>4
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40158580946149919)
,p_name=>'P355_RANDOMNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(113053527844083604)
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
 p_id=>wwv_flow_api.id(40159218963149919)
,p_name=>'P355_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(113069755688083617)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40159646207149919)
,p_name=>'P355_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(113069755688083617)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40160008027149919)
,p_name=>'P355_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(113069755688083617)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40161523924149920)
,p_name=>'P355_FILEPATH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(135234293767513757)
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
 p_id=>wwv_flow_api.id(40161979401149920)
,p_name=>'P355_FILE'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(135234293767513757)
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
 p_id=>wwv_flow_api.id(40162385705149920)
,p_name=>'P355_SHEET'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(135234293767513757)
,p_prompt=>'Sheet'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>' select distinct sheet_name, sheet_nr from (select * from table( as_read_xlsx.read( (select blob_content from XLSX_FILES where id = :P355_FILESIZE)) ));'
,p_lov_cascade_parent_items=>'P355_FILESIZE'
,p_ajax_items_to_submit=>'P355_FILESIZE'
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
 p_id=>wwv_flow_api.id(40162781008149920)
,p_name=>'P355_FILESIZE'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(135234293767513757)
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
 p_id=>wwv_flow_api.id(40163183819149920)
,p_name=>'P355_FILE_ID'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_api.id(135234293767513757)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40163529805149920)
,p_name=>'P355_ID'
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_api.id(44047247867361938)
,p_item_default=>':REQUEST'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40430111307494918)
,p_name=>'P355_APPROVE_FLAG_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(40430026141494917)
,p_item_default=>'N'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Approved;Y,Not Appproved;N'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>4
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40430209474494919)
,p_name=>'P355_RANDOMNO_1_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(40430026141494917)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40482278531634304)
,p_name=>'P355_APPROVE_FLAG_1_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(40482117699634303)
,p_item_default=>'N'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Approved;Y,Not Appproved;N'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>4
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40482319899634305)
,p_name=>'P355_RANDOMNO_1_1_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(40482117699634303)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40164782664149924)
,p_name=>'frezze report'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40165235930149924)
,p_event_id=>wwv_flow_api.id(40164782664149924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.AF.PLUGIN.JQ.IRFREEZECOLS'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(113053527844083604)
,p_attribute_01=>'2'
,p_attribute_02=>'500px'
,p_attribute_03=>'true'
,p_attribute_04=>'irFreezeCols_HOVER'
,p_attribute_05=>'500'
,p_attribute_06=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40165623709149924)
,p_name=>'refresh'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40166187350149925)
,p_event_id=>wwv_flow_api.id(40165623709149924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(113053527844083604)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40166516721149925)
,p_name=>'get_filename'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P355_FILE'
,p_bind_type=>'bind'
,p_bind_event_type=>'dblclick'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40167025847149925)
,p_event_id=>wwv_flow_api.id(40166516721149925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:apex.submit(2);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40167474319149925)
,p_name=>'New'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40167974859149925)
,p_event_id=>wwv_flow_api.id(40167474319149925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''apexir_TOOLBAR'').innerHTML = document.getElementById(''apexir_TOOLBAR'').innerHTML + ''<label for="P355_APPROVE_FLAG" class="uOptional"></label></td><td  align="left" valign="middle"><input type="hidden" name="p_arg_names" value'
||'="11759631789729827" /><input type="text" id="P355_APPROVE_FLAG" name="p_t01" class="text_field" style="margin:5px" value="" size="30" maxlength="4000"  />'';'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40163943054149920)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of XLSX_FILES'
,p_attribute_02=>'XLSX_FILES'
,p_attribute_03=>'P355_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P355_FILESIZE'
,p_attribute_11=>'I'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40164344655149920)
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
'                                               WHERE id = :P355_FILESIZE))));',
'',
'   SELECT MIN (sheet_name)',
'     INTO v_sheet_name',
'     FROM (SELECT *',
'             FROM TABLE (as_read_xlsx.read ( (SELECT blob_content',
'                                                FROM XLSX_FILES',
'                                               WHERE id = :P355_FILESIZE))))',
'    WHERE sheet_nr = :P355_SHEET;',
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
'                                                 WHERE id = :P355_FILESIZE),',
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
,p_process_when_button_id=>wwv_flow_api.id(40161136868149920)
);
wwv_flow_api.component_end;
end;
/
