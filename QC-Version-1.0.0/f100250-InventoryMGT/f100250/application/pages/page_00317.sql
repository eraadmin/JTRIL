prompt --application/pages/page_00317
begin
--   Manifest
--     PAGE: 00317
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
 p_id=>317
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Customer Card Generate'
,p_page_mode=>'MODAL'
,p_step_title=>'Customer Card Generate'
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
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171126144514'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(51710417154268346)
,p_name=>'Customer Card Generate'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--colorize:t-Cards--displayIcons:t-Cards--5cols:t-Cards--featured'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT --a.ROWID,',
'         distinct',
'        ''Modify'' MOD,',
'         a.COMPCODE,',
'         a.DOCTTYPE,',
'         a.SUBTTYPE,',
'         a.DOCNUMBR,',
'         to_char(a.DOCTDATE,''dd/mm/rrrr'') DOCTDATE,',
'         a.SMANCODE,',
'         a.RAISEDBY,',
'         a.ITEMCODE,',
'         a.CUSTMRID,',
'         (select wm_concat(distinct ITEMCODE) from nmcusvlg_detail where compcode=a.compcode and itemcode=a.ITEMCODE)  "CARD_TEXT",',
'         (SELECT PRTYNAME',
'            FROM nmmrkpty',
'           WHERE CUSTMRID = A.CUSTMRID)',
'            "CARD_TITLE",',
'         (SELECT PARTYAD1',
'            FROM nmmrkpty',
'           WHERE CUSTMRID = a.CUSTMRID)',
'            "CARD_SUBTEXT1",',
'         (SELECT MOBILENO',
'            FROM nmmrkpty',
'           WHERE CUSTMRID = a.CUSTMRID)',
'            "CARD_SUBTEXT",',
'         (SELECT NMCODDES',
'            FROM nmcodmas b',
'           WHERE     a.compcode = :COMPCODE',
'                 AND b.NMSOFCDE = a.USGSEGMT',
'                 AND b.NMHRDCDE = ''AMT''',
'                 AND b.MODLCODE = ''NM'')',
'         USGSEGMT,',
'         TEFAXNUM,',
'         CUSTMAIL "CARD_SUBTEXT2",',
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
'   WHERE a.DOCNUMBR=:P317_ID',
'and (a.SMANCODE IN (select S.SMANCODE',
'                          from nmsmnmas s',
'                          where S.COMPCODE = :compcode',
'                           and S.SMANCODE = :APP_USER)',
'    )',
'ORDER BY a.TIMSTAMP DESC'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47601390621858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51711075472268502)
,p_query_column_id=>1
,p_column_alias=>'MOD'
,p_column_display_sequence=>1
,p_column_heading=>'Mod'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51711441428268755)
,p_query_column_id=>2
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Compcode'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51711786250268755)
,p_query_column_id=>3
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Docttype'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51712154612268756)
,p_query_column_id=>4
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Subttype'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51712607795268756)
,p_query_column_id=>5
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>5
,p_column_heading=>'Docnumbr'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51713000927268756)
,p_query_column_id=>6
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>6
,p_column_heading=>'Doctdate'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51713387559268758)
,p_query_column_id=>7
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>7
,p_column_heading=>'Smancode'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51713734992268758)
,p_query_column_id=>8
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>8
,p_column_heading=>'Raisedby'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51714203984268758)
,p_query_column_id=>9
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>9
,p_column_heading=>'Itemcode'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51714586073268758)
,p_query_column_id=>10
,p_column_alias=>'CUSTMRID'
,p_column_display_sequence=>10
,p_column_heading=>'Custmrid'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52058648238582707)
,p_query_column_id=>11
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>48
,p_column_heading=>'Card Text'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51796185376314727)
,p_query_column_id=>12
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>47
,p_column_heading=>'Card Title'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52111619088166250)
,p_query_column_id=>13
,p_column_alias=>'CARD_SUBTEXT1'
,p_column_display_sequence=>50
,p_column_heading=>'Card Subtext1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52059045570582713)
,p_query_column_id=>14
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>49
,p_column_heading=>'Card Subtext'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51716591382268830)
,p_query_column_id=>15
,p_column_alias=>'USGSEGMT'
,p_column_display_sequence=>11
,p_column_heading=>'Usgsegmt'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51716973868268901)
,p_query_column_id=>16
,p_column_alias=>'TEFAXNUM'
,p_column_display_sequence=>12
,p_column_heading=>'Tefaxnum'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52141320291178415)
,p_query_column_id=>17
,p_column_alias=>'CARD_SUBTEXT2'
,p_column_display_sequence=>51
,p_column_heading=>'Card Subtext2'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51717690032268956)
,p_query_column_id=>18
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>13
,p_column_heading=>'Oprstamp'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51718034640268956)
,p_query_column_id=>19
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>14
,p_column_heading=>'Timstamp'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51718463912268957)
,p_query_column_id=>20
,p_column_alias=>'PARTYCD1'
,p_column_display_sequence=>15
,p_column_heading=>'Partycd1'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51718880734268957)
,p_query_column_id=>21
,p_column_alias=>'CURRENT_BRAND'
,p_column_display_sequence=>16
,p_column_heading=>'Current Brand'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51719290168268957)
,p_query_column_id=>22
,p_column_alias=>'PURCHASED_FROM'
,p_column_display_sequence=>17
,p_column_heading=>'Purchased From'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51719700870268959)
,p_query_column_id=>23
,p_column_alias=>'PURCHASE_DATE'
,p_column_display_sequence=>18
,p_column_heading=>'Purchase Date'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51720030590268959)
,p_query_column_id=>24
,p_column_alias=>'AVERAGE_MILEAGE'
,p_column_display_sequence=>19
,p_column_heading=>'Average Mileage'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51720485403268959)
,p_query_column_id=>25
,p_column_alias=>'CONTACT_MODE'
,p_column_display_sequence=>20
,p_column_heading=>'Contact Mode'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51720823324268961)
,p_query_column_id=>26
,p_column_alias=>'INTERESTED_BRAND'
,p_column_display_sequence=>21
,p_column_heading=>'Interested Brand'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51721315119268961)
,p_query_column_id=>27
,p_column_alias=>'INTERESTED_MODEL'
,p_column_display_sequence=>22
,p_column_heading=>'Interested Model'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51721690332268961)
,p_query_column_id=>28
,p_column_alias=>'INTERIOR_COLOR'
,p_column_display_sequence=>23
,p_column_heading=>'Interior Color'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51722102148268961)
,p_query_column_id=>29
,p_column_alias=>'EXTERIOR_COLOR'
,p_column_display_sequence=>24
,p_column_heading=>'Exterior Color'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51722417179268961)
,p_query_column_id=>30
,p_column_alias=>'FUEL_TYPE'
,p_column_display_sequence=>25
,p_column_heading=>'Fuel Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51722818906268961)
,p_query_column_id=>31
,p_column_alias=>'TEST_DRIVE_FLAG'
,p_column_display_sequence=>26
,p_column_heading=>'Test Drive Flag'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51723238960268961)
,p_query_column_id=>32
,p_column_alias=>'TEST_DRIVE_MODEL'
,p_column_display_sequence=>27
,p_column_heading=>'Test Drive Model'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51723665567268961)
,p_query_column_id=>33
,p_column_alias=>'TEST_DRIVE_DATE'
,p_column_display_sequence=>28
,p_column_heading=>'Test Drive Date'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51724096840268962)
,p_query_column_id=>34
,p_column_alias=>'TEST_BOOKING_DATE'
,p_column_display_sequence=>29
,p_column_heading=>'Test Booking Date'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51724504985268962)
,p_query_column_id=>35
,p_column_alias=>'CUSTOMER_TEST_REMARKS'
,p_column_display_sequence=>30
,p_column_heading=>'Customer Test Remarks'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51724874210268962)
,p_query_column_id=>36
,p_column_alias=>'CUSTOMER_REMARKS_SALES'
,p_column_display_sequence=>31
,p_column_heading=>'Customer Remarks Sales'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51725244052268962)
,p_query_column_id=>37
,p_column_alias=>'SALESMAN_REMARKS_SALES'
,p_column_display_sequence=>32
,p_column_heading=>'Salesman Remarks Sales'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51725672875268962)
,p_query_column_id=>38
,p_column_alias=>'NEXT_APOINTMENT_ON'
,p_column_display_sequence=>33
,p_column_heading=>'Next Apointment On'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51726041026268962)
,p_query_column_id=>39
,p_column_alias=>'SALES_POTENTIAL'
,p_column_display_sequence=>34
,p_column_heading=>'Sales Potential'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51726491712268962)
,p_query_column_id=>40
,p_column_alias=>'REFERED_BY_SALES'
,p_column_display_sequence=>35
,p_column_heading=>'Refered By Sales'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51726839140268962)
,p_query_column_id=>41
,p_column_alias=>'VERIFIED_FLAG_SALES'
,p_column_display_sequence=>36
,p_column_heading=>'Verified Flag Sales'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51727246983268962)
,p_query_column_id=>42
,p_column_alias=>'VERIFIED_BY_SALES'
,p_column_display_sequence=>37
,p_column_heading=>'Verified By Sales'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51727684407268962)
,p_query_column_id=>43
,p_column_alias=>'WHSZONFK'
,p_column_display_sequence=>38
,p_column_heading=>'Whszonfk'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51728107698268962)
,p_query_column_id=>44
,p_column_alias=>'CONFIRMC'
,p_column_display_sequence=>39
,p_column_heading=>'Confirmc'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51728451605268962)
,p_query_column_id=>45
,p_column_alias=>'NMPRDTYP'
,p_column_display_sequence=>40
,p_column_heading=>'Nmprdtyp'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51729311765268962)
,p_query_column_id=>46
,p_column_alias=>'SRCOFENQ'
,p_column_display_sequence=>41
,p_column_heading=>'Srcofenq'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51729709811268964)
,p_query_column_id=>47
,p_column_alias=>'PURCHASE_TYPE'
,p_column_display_sequence=>42
,p_column_heading=>'Purchase Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51730039223268964)
,p_query_column_id=>48
,p_column_alias=>'ETBCUSTM'
,p_column_display_sequence=>43
,p_column_heading=>'Etbcustm'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51730447341268964)
,p_query_column_id=>49
,p_column_alias=>'CMPETION'
,p_column_display_sequence=>44
,p_column_heading=>'Cmpetion'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51731212994268964)
,p_query_column_id=>50
,p_column_alias=>'PROFILEE'
,p_column_display_sequence=>45
,p_column_heading=>'Profilee'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51731541287268964)
,p_query_column_id=>51
,p_column_alias=>'PIPLNSTS'
,p_column_display_sequence=>46
,p_column_heading=>'Piplnsts'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51763018415283598)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(123116220718391854)
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
 p_id=>wwv_flow_api.id(192138728539113533)
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
 p_id=>wwv_flow_api.id(214303266618543673)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51541914772016092)
,p_button_sequence=>61
,p_button_plug_id=>wwv_flow_api.id(214303266618543673)
,p_button_name=>'Upload_excel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload'
,p_button_position=>'CHANGE'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51542299844016094)
,p_button_sequence=>71
,p_button_plug_id=>wwv_flow_api.id(214303266618543673)
,p_button_name=>'Process'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Process'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51538874805016064)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(51763018415283598)
,p_button_name=>'CANCLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:280:&SESSION.::&DEBUG.:RP,280::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51539248125016066)
,p_name=>'P317_APPROVE_FLAG'
,p_item_sequence=>10
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_item_default=>'N'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Approved;Y,Not Appproved;N'
,p_cSize=>30
,p_cHeight=>1
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
 p_id=>wwv_flow_api.id(51539696451016078)
,p_name=>'P317_RANDOMNO'
,p_item_sequence=>20
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
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
 p_id=>wwv_flow_api.id(51540416487016083)
,p_name=>'P317_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(192138728539113533)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51540794041016086)
,p_name=>'P317_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(192138728539113533)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51541198504016086)
,p_name=>'P317_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(192138728539113533)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51542699915016095)
,p_name=>'P317_FILEPATH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(214303266618543673)
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
 p_id=>wwv_flow_api.id(51543114977016097)
,p_name=>'P317_FILE'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(214303266618543673)
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
 p_id=>wwv_flow_api.id(51543443118016097)
,p_name=>'P317_SHEET'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(214303266618543673)
,p_prompt=>'Sheet'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>' select distinct sheet_name, sheet_nr from (select * from table( as_read_xlsx.read( (select blob_content from XLSX_FILES where id = :P317_FILESIZE)) ));'
,p_lov_cascade_parent_items=>'P317_FILESIZE'
,p_ajax_items_to_submit=>'P317_FILESIZE'
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
 p_id=>wwv_flow_api.id(51543904469016097)
,p_name=>'P317_FILESIZE'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(214303266618543673)
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
 p_id=>wwv_flow_api.id(51544261845016097)
,p_name=>'P317_FILE_ID'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_api.id(214303266618543673)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51544645991016099)
,p_name=>'P317_ID'
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_api.id(214303266618543673)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51545745950016150)
,p_name=>'frezze report'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51546237762016167)
,p_event_id=>wwv_flow_api.id(51545745950016150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.AF.PLUGIN.JQ.IRFREEZECOLS'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'2'
,p_attribute_02=>'500px'
,p_attribute_03=>'true'
,p_attribute_04=>'irFreezeCols_HOVER'
,p_attribute_05=>'500'
,p_attribute_06=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51546662354016172)
,p_name=>'refresh'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51547169027016172)
,p_event_id=>wwv_flow_api.id(51546662354016172)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51547615236016172)
,p_name=>'get_filename'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_FILE'
,p_bind_type=>'bind'
,p_bind_event_type=>'dblclick'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51548079342016173)
,p_event_id=>wwv_flow_api.id(51547615236016172)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:apex.submit(2);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51548491230016173)
,p_name=>'New'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51548946388016173)
,p_event_id=>wwv_flow_api.id(51548491230016173)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''apexir_TOOLBAR'').innerHTML = document.getElementById(''apexir_TOOLBAR'').innerHTML + ''<label for="P317_APPROVE_FLAG" class="uOptional"></label></td><td  align="left" valign="middle"><input type="hidden" name="p_arg_names" value'
||'="11759631789729827" /><input type="text" id="P317_APPROVE_FLAG" name="p_t01" class="text_field" style="margin:5px" value="" size="30" maxlength="4000"  />'';'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51545064475016139)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of XLSX_FILES'
,p_attribute_02=>'XLSX_FILES'
,p_attribute_03=>'P317_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P317_FILESIZE'
,p_attribute_11=>'I'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51545336174016144)
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
'                                               WHERE id = :P317_FILESIZE))));',
'',
'   SELECT MIN (sheet_name)',
'     INTO v_sheet_name',
'     FROM (SELECT *',
'             FROM TABLE (as_read_xlsx.read ( (SELECT blob_content',
'                                                FROM XLSX_FILES',
'                                               WHERE id = :P317_FILESIZE))))',
'    WHERE sheet_nr = :P317_SHEET;',
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
'                                                 WHERE id = :P317_FILESIZE),',
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
,p_process_when_button_id=>wwv_flow_api.id(51542299844016094)
);
wwv_flow_api.component_end;
end;
/
