prompt --application/pages/page_00454
begin
--   Manifest
--     PAGE: 00454
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
 p_id=>454
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Stock Reconcilation'
,p_page_mode=>'MODAL'
,p_step_title=>'Stock Reconcilation'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_page_comment=>'without wizard page no 76'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201103152431'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61822344701470535)
,p_plug_name=>'Wizard'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_api.id(67745909791967350)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61822459072470536)
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
 p_id=>wwv_flow_api.id(61822582452470537)
,p_plug_name=>'spcRGN'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(174201991710454588)
,p_plug_name=>'Doc Info'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_region_attributes=>'style="margin-top:100px;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(262979836400411131)
,p_plug_name=>'Warehouse Data'
,p_region_name=>'nmissreq'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
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
' WHERE ITEMCODE = NVL ( :P454_ITEMCODE, itemcode)',
'   AND BATCHNUM = NVL ( :P454_BATCHNUM, batchnum)',
'   AND COMPCODE = :COMPCODE',
'   AND WARECODE = NVL ( :P454_WARECODE, warecode)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P454_WARECODE,P454_ITEMCODE,P454_BATCHNUM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_api.id(262980239657411132)
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
,p_internal_uid=>262980239657411132
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67737484355963478)
,p_db_column_name=>'SL'
,p_display_order=>20
,p_column_identifier=>'BC'
,p_column_label=>'Srl.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67735894205963476)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>30
,p_column_identifier=>'G'
,p_column_label=>'Item Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67737060715963478)
,p_db_column_name=>'ITEMDSC'
,p_display_order=>40
,p_column_identifier=>'BB'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67735416370963476)
,p_db_column_name=>'WARECODE'
,p_display_order=>50
,p_column_identifier=>'V'
,p_column_label=>'Ware Code'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(12737846874143744)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67725849042963467)
,p_db_column_name=>'COMPCODE'
,p_display_order=>60
,p_column_identifier=>'AB'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67726270020963467)
,p_db_column_name=>'OPBALDTE'
,p_display_order=>70
,p_column_identifier=>'AC'
,p_column_label=>'Open Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67726629193963467)
,p_db_column_name=>'OPBALQTY'
,p_display_order=>80
,p_column_identifier=>'AD'
,p_column_label=>'Open Bal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67727095588963467)
,p_db_column_name=>'OPBALRTE'
,p_display_order=>90
,p_column_identifier=>'AE'
,p_column_label=>'Opbalrte'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67727438432963468)
,p_db_column_name=>'OPBALVAL'
,p_display_order=>100
,p_column_identifier=>'AF'
,p_column_label=>'Opbalval'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67727831050963468)
,p_db_column_name=>'TOTALRCP'
,p_display_order=>110
,p_column_identifier=>'AG'
,p_column_label=>'Total Receip'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67728202943963468)
,p_db_column_name=>'TOTALISS'
,p_display_order=>120
,p_column_identifier=>'AH'
,p_column_label=>'Total Issue'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67728688407963470)
,p_db_column_name=>'CLBALDTE'
,p_display_order=>130
,p_column_identifier=>'AI'
,p_column_label=>'Clbaldte'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67729092055963470)
,p_db_column_name=>'CLBALQTY'
,p_display_order=>140
,p_column_identifier=>'AJ'
,p_column_label=>'Close Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67729462486963470)
,p_db_column_name=>'CLBALRTE'
,p_display_order=>150
,p_column_identifier=>'AK'
,p_column_label=>'Clbalrte'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67729852374963470)
,p_db_column_name=>'CLBALVAL'
,p_display_order=>160
,p_column_identifier=>'AL'
,p_column_label=>'Clbalval'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67730226913963471)
,p_db_column_name=>'BINLOCTN'
,p_display_order=>170
,p_column_identifier=>'AM'
,p_column_label=>'Binloctn'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67730664727963471)
,p_db_column_name=>'LASISSDT'
,p_display_order=>180
,p_column_identifier=>'AN'
,p_column_label=>'Lasissdt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67731007755963471)
,p_db_column_name=>'LASRCPDT'
,p_display_order=>190
,p_column_identifier=>'AO'
,p_column_label=>'Lasrcpdt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67731432650963471)
,p_db_column_name=>'BCARDQTY'
,p_display_order=>200
,p_column_identifier=>'AP'
,p_column_label=>'Bcardqty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67731867643963473)
,p_db_column_name=>'PHYSCQTY'
,p_display_order=>210
,p_column_identifier=>'AQ'
,p_column_label=>'Physcqty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67732295698963473)
,p_db_column_name=>'VERFRATE'
,p_display_order=>220
,p_column_identifier=>'AR'
,p_column_label=>'Verfrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67733477587963475)
,p_db_column_name=>'COSTRATE'
,p_display_order=>230
,p_column_identifier=>'AU'
,p_column_label=>'Costrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67733864449963475)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>240
,p_column_identifier=>'AV'
,p_column_label=>'Batch No.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67733026632963473)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>250
,p_column_identifier=>'AT'
,p_column_label=>'Date Time'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy hh:mi:ss AM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67734246590963475)
,p_db_column_name=>'LAST_SALERATE'
,p_display_order=>260
,p_column_identifier=>'AW'
,p_column_label=>'Last Salerate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67734672082963475)
,p_db_column_name=>'LAST_MODIFYDTE'
,p_display_order=>270
,p_column_identifier=>'AX'
,p_column_label=>'Last Modifydte'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67735066060963476)
,p_db_column_name=>'DEFECTQT'
,p_display_order=>280
,p_column_identifier=>'AY'
,p_column_label=>'Defectqt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67736215338963476)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>290
,p_column_identifier=>'AZ'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67736619794963478)
,p_db_column_name=>'LAST_COSTRATE'
,p_display_order=>300
,p_column_identifier=>'BA'
,p_column_label=>'Last Costrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67732657513963473)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>310
,p_column_identifier=>'AS'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67737880223963479)
,p_db_column_name=>'LINK'
,p_display_order=>320
,p_column_identifier=>'BD'
,p_column_label=>'Details'
,p_column_link=>'f?p=&APP_ID.:446:&SESSION.::&DEBUG.:RP,446:P446_WARECODE,P446_ITEMCODE,P446_BATCHNUM:#WARECODE#,#ITEMCODE#,#BATCHNUM#'
,p_column_linktext=>'#LINK#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--tiny"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(262985521573411137)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'677382'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SL:ITEMCODE:ITEMDSC:WARECODE:OPBALDTE:OPBALQTY:TOTALRCP:TOTALISS:CLBALQTY:BATCHNUM:TIMSTAMP:LINK'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61822644046470538)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(61822459072470536)
,p_button_name=>'NEXT'
,p_button_static_id=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-arrow-right-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67738694733963481)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(61822459072470536)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(61822906107470541)
,p_branch_name=>'go to next'
,p_branch_action=>'f?p=&APP_ID.:455:&SESSION.::&DEBUG.:RP,455:P455_BATCHNUM,P455_COSTCODE,P455_DOCDT,P455_ITEMCODE,P455_WARECODE,P455_COSTDSC:&P454_BATCHNUM.,&P454_COSTCODE.,&P454_DOCDT.,&P454_ITEMCODE.,&P454_WARECODE.,&P454_COSTDSC.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(61822644046470538)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67723158944963460)
,p_name=>'P454_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(174201991710454588)
,p_prompt=>'Ware Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST (USERWISE)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'     AND warecode IN (SELECT warecode',
'                        FROM sycstacc',
'                       WHERE compcode = :compcode ',
'                         AND grupcode = :APP_USER)',
'ORDER BY warecode'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67723574867963462)
,p_name=>'P454_ITEMCODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(174201991710454588)
,p_prompt=>'Item Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode||''-''||itemdes2 d, a.itemcode r ',
' FROM nmitemas a, nmwhimas b',
'WHERE a.compcode = :compcode',
'  AND  a.itemcode = b.itemcode ',
'  AND a.statuscd = ''ACT''',
'  and b.BATCHNUM like nvl(:p454_batchnum,''%'')',
'ORDER BY a.itemcode'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_lov_cascade_parent_items=>'P454_BATCHNUM'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67723997810963462)
,p_name=>'P454_BATCHNUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(174201991710454588)
,p_prompt=>'Batch No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT (batchnum) d, batchnum r',
'  FROM nmstkmas',
' WHERE compcode = :compcode',
'   AND itemcode = NVL ( :P454_ITEMCODE, itemcode)',
'   AND warecode = NVL ( :P454_WARECODE, warecode)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_lov_cascade_parent_items=>'P454_WARECODE'
,p_ajax_items_to_submit=>'P454_ITEMCODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT (batchnum)',
'    FROM nmstkmas',
'   WHERE     compcode = :compcode',
'         AND itemcode = NVL ( :P454_ITEMCODE, itemcode)',
'         AND warecode = NVL ( :P454_WARECODE, warecode)',
'ORDER BY 1'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67724354526963464)
,p_name=>'P454_COSTCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(174201991710454588)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67724766067963464)
,p_name=>'P454_COSTDSC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(174201991710454588)
,p_prompt=>'Cost Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="true"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67725182969963464)
,p_name=>'P454_DOCDT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(174201991710454588)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1900:2200'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67739836405963481)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(67738694733963481)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67740379576963482)
,p_event_id=>wwv_flow_api.id(67739836405963481)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67740736431963482)
,p_name=>'closeX'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67741288128963482)
,p_event_id=>wwv_flow_api.id(67740736431963482)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'parent.$(''.ui-dialog-titlebar-close'').hide();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67742596440963484)
,p_name=>'set costdesc'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P454_WARECODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67743049828963484)
,p_event_id=>wwv_flow_api.id(67742596440963484)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT costcode',
'  INTO :P454_COSTCODE',
'  FROM nmwhsmas',
' WHERE compcode = :COMPCODE',
' AND warecode = :P454_WARECODE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    NULL;',
'END;    ',
'',
'BEGIN',
' SELECT COSTCODE||''-''||COSTDESC',
'  INTO :P454_COSTDSC',
'  FROM syjobmas',
' WHERE compcode = :COMPCODE',
'   AND COSTCODE = :P454_COSTCODE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    NULL;',
'END;   '))
,p_attribute_02=>'P454_WARECODE,P454_COSTCODE'
,p_attribute_03=>'P454_COSTCODE,P454_COSTDSC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75894255364669809)
,p_name=>'clear'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75894356310669810)
,p_event_id=>wwv_flow_api.id(75894255364669809)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P454_WARECODE,P454_BATCHNUM,P454_ITEMCODE,P454_DOCDT,P454_COSTCODE'
);
wwv_flow_api.component_end;
end;
/
