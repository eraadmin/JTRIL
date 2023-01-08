prompt --application/pages/page_00455
begin
--   Manifest
--     PAGE: 00455
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
 p_id=>455
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Reconciliation Items'
,p_page_mode=>'MODAL'
,p_step_title=>'Reconciliation Items'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#STCKQTY:hover{',
'    color:blue;',
'    font-weight:800;',
'}',
'',
'.t-Button--noUI.t-Button--success {',
'    color: darkblue!important;',
'    font-weight: bold;',
'}',
'',
'',
'.t-Button--noUI.t-Button--success:hover {',
'    color: darkblue!important;',
'    font-weight: 800;',
'    transition:.3;',
'}',
'',
'#STCKVAL'))
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_page_comment=>'without wizard page no 76'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220126110848'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(308703386390963794)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(376453390096948401)
,p_plug_name=>'Wizard'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_api.id(123499516247276925)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(488833037105932454)
,p_plug_name=>'Doc Info'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(577610881795888997)
,p_plug_name=>'Warehouse Data'
,p_region_name=>'nmissreq'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM SL,',
'       COMPCODE,',
'       WARECODE,',
'       ITEMCODE,',
'       dfn_itname(ITEMCODE) ITEMDSC,',
'       OPBALDTE,',
'       OPBALQTY,',
'       OPBALRTE,',
'       OPBALVAL,',
'       TOTALRCP,',
'       TOTALISS,',
'       CLBALDTE,',
'       CLBALQTY,',
'       CLBALRTE,',
'       CLBALVAL,',
'       BINLOCTN,',
'       LASISSDT,',
'       LASRCPDT,',
'       BCARDQTY,',
'       PHYSCQTY,',
'       VERFRATE,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       COSTRATE,',
'       BATCHNUM,',
'       LAST_SALERATE,',
'       LAST_MODIFYDTE,',
'       DEFECTQT,',
'       MODIFYDT,',
'       LAST_COSTRATE,',
'       ''Details'' LINK',
'  FROM nmwhimas',
' WHERE ITEMCODE = NVL ( :P455_ITEMCODE, itemcode)',
'   AND BATCHNUM = NVL ( :P455_BATCHNUM, batchnum)',
'   AND COMPCODE = :COMPCODE',
'   AND WARECODE = NVL ( :P455_WARECODE, warecode)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P455_WARECODE,P455_ITEMCODE,P455_BATCHNUM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
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
 p_id=>wwv_flow_api.id(577611285052888998)
,p_name=>'test'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>400
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'RILADM'
,p_internal_uid=>577611285052888998
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123489414027276895)
,p_db_column_name=>'SL'
,p_display_order=>20
,p_column_identifier=>'BC'
,p_column_label=>'Srl.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123487841326276895)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>30
,p_column_identifier=>'G'
,p_column_label=>'Item Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123489010612276895)
,p_db_column_name=>'ITEMDSC'
,p_display_order=>40
,p_column_identifier=>'BB'
,p_column_label=>'Item Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123487424473276893)
,p_db_column_name=>'WARECODE'
,p_display_order=>50
,p_column_identifier=>'V'
,p_column_label=>'Ware  House '
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(123498940801276923)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123477837985276889)
,p_db_column_name=>'COMPCODE'
,p_display_order=>60
,p_column_identifier=>'AB'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123478205787276890)
,p_db_column_name=>'OPBALDTE'
,p_display_order=>70
,p_column_identifier=>'AC'
,p_column_label=>'Opening Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123478601109276890)
,p_db_column_name=>'OPBALQTY'
,p_display_order=>80
,p_column_identifier=>'AD'
,p_column_label=>'Opening Balance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123479035273276890)
,p_db_column_name=>'OPBALRTE'
,p_display_order=>90
,p_column_identifier=>'AE'
,p_column_label=>'Opbalrte'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123479420909276890)
,p_db_column_name=>'OPBALVAL'
,p_display_order=>100
,p_column_identifier=>'AF'
,p_column_label=>'Opbalval'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123479805026276890)
,p_db_column_name=>'TOTALRCP'
,p_display_order=>110
,p_column_identifier=>'AG'
,p_column_label=>'Total Received'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123480272127276890)
,p_db_column_name=>'TOTALISS'
,p_display_order=>120
,p_column_identifier=>'AH'
,p_column_label=>'Total Issue'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123480603571276890)
,p_db_column_name=>'CLBALDTE'
,p_display_order=>130
,p_column_identifier=>'AI'
,p_column_label=>'Clbaldte'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123481058192276892)
,p_db_column_name=>'CLBALQTY'
,p_display_order=>140
,p_column_identifier=>'AJ'
,p_column_label=>'Closing Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123481489566276892)
,p_db_column_name=>'CLBALRTE'
,p_display_order=>150
,p_column_identifier=>'AK'
,p_column_label=>'Clbalrte'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123481820266276892)
,p_db_column_name=>'CLBALVAL'
,p_display_order=>160
,p_column_identifier=>'AL'
,p_column_label=>'Clbalval'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123482217103276892)
,p_db_column_name=>'BINLOCTN'
,p_display_order=>170
,p_column_identifier=>'AM'
,p_column_label=>'Binloctn'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123482672483276892)
,p_db_column_name=>'LASISSDT'
,p_display_order=>180
,p_column_identifier=>'AN'
,p_column_label=>'Lasissdt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123483071557276892)
,p_db_column_name=>'LASRCPDT'
,p_display_order=>190
,p_column_identifier=>'AO'
,p_column_label=>'Lasrcpdt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123483492001276892)
,p_db_column_name=>'BCARDQTY'
,p_display_order=>200
,p_column_identifier=>'AP'
,p_column_label=>'Bcardqty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123483839580276892)
,p_db_column_name=>'PHYSCQTY'
,p_display_order=>210
,p_column_identifier=>'AQ'
,p_column_label=>'Physcqty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123484247317276892)
,p_db_column_name=>'VERFRATE'
,p_display_order=>220
,p_column_identifier=>'AR'
,p_column_label=>'Verfrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123485425469276893)
,p_db_column_name=>'COSTRATE'
,p_display_order=>230
,p_column_identifier=>'AU'
,p_column_label=>'Costrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123485868294276893)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>240
,p_column_identifier=>'AV'
,p_column_label=>'Batch No.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123485065628276892)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>250
,p_column_identifier=>'AT'
,p_column_label=>'Date Time'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123486256748276893)
,p_db_column_name=>'LAST_SALERATE'
,p_display_order=>260
,p_column_identifier=>'AW'
,p_column_label=>'Last Salerate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123486678559276893)
,p_db_column_name=>'LAST_MODIFYDTE'
,p_display_order=>270
,p_column_identifier=>'AX'
,p_column_label=>'Last Modifydte'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123487090529276893)
,p_db_column_name=>'DEFECTQT'
,p_display_order=>280
,p_column_identifier=>'AY'
,p_column_label=>'Defectqt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123488214684276895)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>290
,p_column_identifier=>'AZ'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123488675428276895)
,p_db_column_name=>'LAST_COSTRATE'
,p_display_order=>300
,p_column_identifier=>'BA'
,p_column_label=>'Last Costrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123484671942276892)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>310
,p_column_identifier=>'AS'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123489888602276896)
,p_db_column_name=>'LINK'
,p_display_order=>320
,p_column_identifier=>'BD'
,p_column_label=>'Details'
,p_column_link=>'f?p=&APP_ID.:456:&SESSION.::&DEBUG.:RP,456:P456_ITEMCODE,P456_BATCHNUM,P456_WARECODE,P456_WARECODE:#ITEMCODE#,#BATCHNUM#,#WARECODE#,&P455_WARECODE.'
,p_column_linktext=>'#LINK#'
,p_column_link_attr=>'class="t-Button t-Button--small t-Button--success"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(577616566968889003)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1234902'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SL:ITEMCODE:ITEMDSC:WARECODE:OPBALDTE:OPBALQTY:TOTALRCP:TOTALISS:CLBALQTY:BATCHNUM:TIMSTAMP:LINK'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(123472182183276876)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(308703386390963794)
,p_button_name=>'Stock_Adjustment'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Stock Adjustment'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:475:&SESSION.::&DEBUG.:RP,475:P475_WARECODE,P475_BATCHNUM:&P455_WARECODE.,&P455_BATCHNUM.'
,p_icon_css_classes=>'fa-arrow-right-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(123472523953276879)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(308703386390963794)
,p_button_name=>'ADJUST'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Adjust New'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:464:&SESSION.::&DEBUG.:RP,464:P464_BATCHNUM,P464_WARECODE:&P455_BATCHNUM.,&P455_WARECODE.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(123472990076276879)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(308703386390963794)
,p_button_name=>'Process'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Stock Process'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(123473335814276879)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(308703386390963794)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'BACK'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:454:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(123490672172276898)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(577610881795888997)
,p_button_name=>'Stock_Qty'
,p_button_static_id=>'STCKQTY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--noUI:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'&P455_STOCK_QTY.'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:465:&SESSION.::&DEBUG.:RP,465:P465_BATCHNUM,P465_WARECODE,P465_ITEMCODE,P465_WARENAME:&P455_BATCHNUM.,&P455_WARECODE.,&P455_ITEMCODE.,&P455_WARNAME.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(123491002595276898)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(577610881795888997)
,p_button_name=>'Stock_VALUE'
,p_button_static_id=>'STCKVAL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--noUI:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'&P455_VALUE.'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:465:&SESSION.::&DEBUG.:RP,465:P465_BATCHNUM,P465_WARECODE,P465_ITEMCODE,P465_WARENAME:&P455_BATCHNUM.,&P455_WARECODE.,&P455_ITEMCODE.,&P455_WARNAME.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123474384749276879)
,p_name=>'P455_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(488833037105932454)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123474749650276884)
,p_name=>'P455_WARNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(488833037105932454)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT warecode||''-''||waredesc',
'  FROM nmwhsmas',
' WHERE compcode = :compcode ',
'   AND warecode = :P455_WARECODE;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Ware House'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123475148044276884)
,p_name=>'P455_BATCHNUM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(488833037105932454)
,p_prompt=>'Batch No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT (batchnum) d, batchnum r',
'  FROM nmstkmas',
' WHERE compcode = :compcode',
'   AND itemcode = NVL ( :P455_ITEMCODE, itemcode)',
'   AND warecode = NVL ( :P455_WARECODE, warecode)',
'ORDER BY 1'))
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT (batchnum)',
'    FROM nmstkmas',
'   WHERE     compcode = :compcode',
'         AND itemcode = NVL ( :P455_ITEMCODE, itemcode)',
'         AND warecode = NVL ( :P455_WARECODE, warecode)',
'ORDER BY 1'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123475529399276884)
,p_name=>'P455_ITEMCODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(488833037105932454)
,p_prompt=>'Item Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'ITEM LIST1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode||'' - ''||itemdes2 d, a.itemcode r ',
' FROM nmitemas a',
'WHERE compcode = :compcode ',
'  AND statuscd = ''ACT''',
'ORDER BY itemcode'))
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123475950786276884)
,p_name=>'P455_COSTCODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(488833037105932454)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123476322475276884)
,p_name=>'P455_COSTDSC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(488833037105932454)
,p_prompt=>'Cost Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly="true"'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123476705278276884)
,p_name=>'P455_DOCDT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(488833037105932454)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123477191785276884)
,p_name=>'P455_STOCKCOUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(488833037105932454)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT count(*)',
'          FROM nmstock_ledger i,',
'               nmwhimas w,',
'               (  SELECT compcode,',
'                         warecode,',
'                         itemcode,',
'                         batchnum,',
'                         MAX (TRUNC (DOCTDATE)) doctdate',
'                    FROM NMSTOCK_LEDGER s',
'                   WHERE warecode IN',
'                            (SELECT warecode',
'                               FROM nmwhsmas A',
'                              WHERE     A.compcode = s.compcode',
'                                    AND A.SRVCWFLG = ''N''',
'                                    AND A.warecode = :P475_WARECODE --nvl(:crq2.s_whscde,warecode)',
'                                    AND A.Compcode = :COMPCODE --:crq1.cacmpcde',
'                                                              )',
'                GROUP BY compcode,',
'                         warecode,',
'                         itemcode,',
'                         batchnum) s',
'         WHERE     i.compcode = s.compcode',
'               AND i.itemcode = s.itemcode',
'               AND i.batchnum = s.batchnum',
'               AND i.warecode = s.warecode',
'               AND TRUNC (i.doctdate) = TRUNC (s.doctdate)',
'               AND i.compcode = w.compcode',
'               AND i.warecode = w.warecode',
'               AND i.itemcode = w.itemcode',
'               AND i.batchnum = w.batchnum',
'               AND w.warecode = :P475_WARECODE --nvl(:crq2.s_whscde,w.warecode)',
'               AND w.batchnum = :P475_BATCHNUM',
'               AND I.Compcode = :COMPCODE',
'               AND i.CLOSING_BALANCE <> w.clbalqty'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123491433738276898)
,p_name=>'P455_STOCK_QTY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(577610881795888997)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Total Stock : ''||round(sum(CLOSING_QUANTITY),2) stock_qty',
' from  VW_NMWHIMAS',
' where WARECODE=:P455_WARECODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123491877479276898)
,p_name=>'P455_VALUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(577610881795888997)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''TOTAL VALUE : ''|| ROUND(sum(closing_value)) TOTAL_VALUE from  VW_NMWHIMAS',
' where WARECODE=:P455_WARECODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(123493828282276900)
,p_name=>'closeX'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(123494370335276903)
,p_event_id=>wwv_flow_api.id(123493828282276900)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'parent.$(''.ui-dialog-titlebar-close'').hide();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(123494796513276906)
,p_name=>'refresh Warehouse data'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(176749545700259702)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(123495209776276909)
,p_event_id=>wwv_flow_api.id(123494796513276906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(577610881795888997)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(123495699868276909)
,p_name=>'set costdesc'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P455_WARECODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(123496135419276909)
,p_event_id=>wwv_flow_api.id(123495699868276909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT costcode',
'  INTO :P455_COSTCODE',
'  FROM nmwhsmas',
' WHERE compcode = :COMPCODE',
' AND warecode = :P455_WARECODE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    NULL;',
'END;    ',
'',
'BEGIN',
' SELECT COSTCODE||''-''||COSTDESC',
'  INTO :P455_COSTDSC',
'  FROM syjobmas',
' WHERE compcode = :COMPCODE',
'   AND COSTCODE = :P455_COSTCODE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    NULL;',
'END;   '))
,p_attribute_02=>'P455_WARECODE,P455_COSTCODE'
,p_attribute_03=>'P455_COSTCODE,P455_COSTDSC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(123496599653276909)
,p_name=>'Refresh on Dialog Closed'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(577610881795888997)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(123497081059276910)
,p_event_id=>wwv_flow_api.id(123496599653276909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(577610881795888997)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(123497430232276910)
,p_name=>'call process'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(123472990076276879)
,p_condition_element=>'P455_WARECODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(123497995148276914)
,p_event_id=>wwv_flow_api.id(123497430232276910)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    dpr_stock_ledger(:COMPCODE,:P455_WARECODE,:P455_BATCHNUM,:P455_ITEMCODE);',
'END;    '))
,p_attribute_02=>'P455_WARECODE,P455_ITEMCODE,P455_BATCHNUM'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(123492694922276900)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'stock process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --dpr_stock_ledger(:COMPCODE,:P455_WARECODE,:P455_BATCHNUM,:P455_ITEMCODE);',
'    dpr_stock_process_insert(:compcode,:P455_WARECODE,null,:P455_BATCHNUM);',
'    stock_ledger_daily_recon(:compcode);',
'END; '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(123472990076276879)
,p_process_success_message=>'Stock processed successfully..'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(123493017225276900)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Items'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(123473335814276879)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(123493400575276900)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(123473335814276879)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(123492246481276898)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New_Process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'DROP TABLE mig_stock_batch PURGE;',
'create table mig_stock_batch',
'as',
'select distinct COMPCODE, warecode,batchnum,itemcode,0 RECONCILE ',
'from nmstkrec where compcode=:COMPCODE and docttype not in (''MR'',''MI'')order by warecode,batchnum,itemcode;',
'',
'FOR REC IN (SELECT COMPCODE,warecode,batchnum,itemcode FROM MIG_STOCK_BATCH ',
'where warecode=:p_warecode AND COMPCODE=:compcode and itemcode= nvl(:p_itemcode,itemcode)',
'and batchnum= nvl(:p_batchnum,batchnum)',
'order by WARECODE,itemcode,batchnum) LOOP ',
'DELETE FROM NMSTKMAS',
'                      WHERE     COMPCODE = REC.COMPCODE',
'                            AND WARECODE = REC.WARECODE',
'                            AND ITEMCODE = REC.ITEMCODE',
'                            AND BATCHNUM = REC.BATCHNUM;',
'DELETE FROM NMSTOCK_LEDGER',
'                      WHERE     COMPCODE = REC.COMPCODE',
'                            AND WARECODE = REC.WARECODE',
'                            AND ITEMCODE = REC.ITEMCODE',
'                            AND BATCHNUM = REC.BATCHNUM;',
'                            COMMIT;',
'                            COMMIT;',
'dpr_mig_stock_ledger(REC.COMPCODE,REC.WARECODE,REC.ITEMCODE,REC.BATCHNUM);',
'COMMIT;',
'END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
