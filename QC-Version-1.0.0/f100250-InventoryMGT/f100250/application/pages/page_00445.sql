prompt --application/pages/page_00445
begin
--   Manifest
--     PAGE: 00445
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
 p_id=>445
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Stock Reconciliation'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_page_comment=>'without wizard page no 76'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20200916191849'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54230554220726512)
,p_plug_name=>'Process'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106480893207491131)
,p_plug_name=>'Doc Info'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(195258737897447674)
,p_plug_name=>'Warehouse Data'
,p_region_name=>'nmissreq'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
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
' WHERE ITEMCODE = NVL ( :P445_ITEMCODE, itemcode)',
'   AND BATCHNUM = NVL ( :P445_BATCHNUM, batchnum)',
'   AND COMPCODE = :COMPCODE',
'   AND WARECODE = NVL ( :P445_WARECODE, warecode)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P445_WARECODE,P445_ITEMCODE,P445_BATCHNUM'
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
 p_id=>wwv_flow_api.id(195259141154447675)
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
,p_internal_uid=>195259141154447675
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54229749134726504)
,p_db_column_name=>'SL'
,p_display_order=>20
,p_column_identifier=>'BC'
,p_column_label=>'Srl.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54204327836532120)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>30
,p_column_identifier=>'G'
,p_column_label=>'Item Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54229606781726503)
,p_db_column_name=>'ITEMDSC'
,p_display_order=>40
,p_column_identifier=>'BB'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54198762795532100)
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
 p_id=>wwv_flow_api.id(53340974120043327)
,p_db_column_name=>'COMPCODE'
,p_display_order=>60
,p_column_identifier=>'AB'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53341068446043328)
,p_db_column_name=>'OPBALDTE'
,p_display_order=>70
,p_column_identifier=>'AC'
,p_column_label=>'Open Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53341188215043329)
,p_db_column_name=>'OPBALQTY'
,p_display_order=>80
,p_column_identifier=>'AD'
,p_column_label=>'Open Bal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53341278227043330)
,p_db_column_name=>'OPBALRTE'
,p_display_order=>90
,p_column_identifier=>'AE'
,p_column_label=>'Opbalrte'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53341322466043331)
,p_db_column_name=>'OPBALVAL'
,p_display_order=>100
,p_column_identifier=>'AF'
,p_column_label=>'Opbalval'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53341486529043332)
,p_db_column_name=>'TOTALRCP'
,p_display_order=>110
,p_column_identifier=>'AG'
,p_column_label=>'Total Receip'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53341583283043333)
,p_db_column_name=>'TOTALISS'
,p_display_order=>120
,p_column_identifier=>'AH'
,p_column_label=>'Total Issue'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53341603024043334)
,p_db_column_name=>'CLBALDTE'
,p_display_order=>130
,p_column_identifier=>'AI'
,p_column_label=>'Clbaldte'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53341771458043335)
,p_db_column_name=>'CLBALQTY'
,p_display_order=>140
,p_column_identifier=>'AJ'
,p_column_label=>'Close Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53341893035043336)
,p_db_column_name=>'CLBALRTE'
,p_display_order=>150
,p_column_identifier=>'AK'
,p_column_label=>'Clbalrte'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53341927805043337)
,p_db_column_name=>'CLBALVAL'
,p_display_order=>160
,p_column_identifier=>'AL'
,p_column_label=>'Clbalval'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53342049156043338)
,p_db_column_name=>'BINLOCTN'
,p_display_order=>170
,p_column_identifier=>'AM'
,p_column_label=>'Binloctn'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53342129815043339)
,p_db_column_name=>'LASISSDT'
,p_display_order=>180
,p_column_identifier=>'AN'
,p_column_label=>'Lasissdt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53342255101043340)
,p_db_column_name=>'LASRCPDT'
,p_display_order=>190
,p_column_identifier=>'AO'
,p_column_label=>'Lasrcpdt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53342394062043341)
,p_db_column_name=>'BCARDQTY'
,p_display_order=>200
,p_column_identifier=>'AP'
,p_column_label=>'Bcardqty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53342475066043342)
,p_db_column_name=>'PHYSCQTY'
,p_display_order=>210
,p_column_identifier=>'AQ'
,p_column_label=>'Physcqty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53342504052043343)
,p_db_column_name=>'VERFRATE'
,p_display_order=>220
,p_column_identifier=>'AR'
,p_column_label=>'Verfrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53342826040043346)
,p_db_column_name=>'COSTRATE'
,p_display_order=>230
,p_column_identifier=>'AU'
,p_column_label=>'Costrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53342955947043347)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>240
,p_column_identifier=>'AV'
,p_column_label=>'Batch No.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53342713287043345)
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
 p_id=>wwv_flow_api.id(53343083507043348)
,p_db_column_name=>'LAST_SALERATE'
,p_display_order=>260
,p_column_identifier=>'AW'
,p_column_label=>'Last Salerate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53343102833043349)
,p_db_column_name=>'LAST_MODIFYDTE'
,p_display_order=>270
,p_column_identifier=>'AX'
,p_column_label=>'Last Modifydte'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53343283095043350)
,p_db_column_name=>'DEFECTQT'
,p_display_order=>280
,p_column_identifier=>'AY'
,p_column_label=>'Defectqt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54229443683726501)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>290
,p_column_identifier=>'AZ'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54229535806726502)
,p_db_column_name=>'LAST_COSTRATE'
,p_display_order=>300
,p_column_identifier=>'BA'
,p_column_label=>'Last Costrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53342606940043344)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>310
,p_column_identifier=>'AS'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54536669426103819)
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
 p_id=>wwv_flow_api.id(195264423070447680)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'542071'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SL:ITEMCODE:ITEMDSC:WARECODE:OPBALDTE:OPBALQTY:TOTALRCP:TOTALISS:CLBALQTY:BATCHNUM:TIMSTAMP:LINK'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(53340596315043323)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(54230554220726512)
,p_button_name=>'Search'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54231355117726520)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(54230554220726512)
,p_button_name=>'Process'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Stock Process'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54197385437532040)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(195258737897447674)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53340416070043322)
,p_name=>'P445_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(106480893207491131)
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
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54229864989726505)
,p_name=>'P445_COSTCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(106480893207491131)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54229951881726506)
,p_name=>'P445_ITEMCODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(106480893207491131)
,p_prompt=>'Item Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ITEM LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode||'' - ''||itemdes2 d, a.itemcode r ',
' FROM nmitemas a',
'WHERE compcode = :compcode ',
'  AND statuscd = ''ACT''',
'ORDER BY itemcode'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54230025083726507)
,p_name=>'P445_BATCHNUM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(106480893207491131)
,p_prompt=>'Batch No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT (batchnum) d, batchnum r',
'  FROM nmstkmas',
' WHERE compcode = :compcode',
'   AND itemcode = NVL ( :P445_ITEMCODE, itemcode)',
'   AND warecode = NVL ( :P445_WARECODE, warecode)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_lov_cascade_parent_items=>'P445_WARECODE'
,p_ajax_items_to_submit=>'P445_ITEMCODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT (batchnum)',
'    FROM nmstkmas',
'   WHERE     compcode = :compcode',
'         AND itemcode = NVL ( :P445_ITEMCODE, itemcode)',
'         AND warecode = NVL ( :P445_WARECODE, warecode)',
'ORDER BY 1'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54230133498726508)
,p_name=>'P445_DOCDT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(106480893207491131)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54230403886726511)
,p_name=>'P445_COSTDSC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(106480893207491131)
,p_prompt=>'Cost Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="true"'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54233349269726540)
,p_name=>'P445_SPINNER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(54230554220726512)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'u-VisuallyHidden'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>'for show spinner'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54213048307532171)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(54197385437532040)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54213987524532173)
,p_event_id=>wwv_flow_api.id(54213048307532171)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54214392945532173)
,p_name=>'closeX'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54214805378532173)
,p_event_id=>wwv_flow_api.id(54214392945532173)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'parent.$(''.ui-dialog-titlebar-close'').hide();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(53340615954043324)
,p_name=>'refresh Warehouse data'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(53340596315043323)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(53340770469043325)
,p_event_id=>wwv_flow_api.id(53340615954043324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(195258737897447674)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54230214496726509)
,p_name=>'set costdesc'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P445_WARECODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54230394009726510)
,p_event_id=>wwv_flow_api.id(54230214496726509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT costcode',
'  INTO :P445_COSTCODE',
'  FROM nmwhsmas',
' WHERE compcode = :COMPCODE',
' AND warecode = :P445_WARECODE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    NULL;',
'END;    ',
'',
'BEGIN',
' SELECT COSTCODE||''-''||COSTDESC',
'  INTO :P445_COSTDSC',
'  FROM syjobmas',
' WHERE compcode = :COMPCODE',
'   AND COSTCODE = :P445_COSTCODE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    NULL;',
'END;   '))
,p_attribute_02=>'P445_WARECODE,P445_COSTCODE'
,p_attribute_03=>'P445_COSTCODE,P445_COSTDSC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54537530703103828)
,p_name=>'Refresh on Dialog Closed'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(195258737897447674)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54537685641103829)
,p_event_id=>wwv_flow_api.id(54537530703103828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(195258737897447674)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54537783795103830)
,p_name=>'call process'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(54231355117726520)
,p_condition_element=>'P445_WARECODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54537815721103831)
,p_event_id=>wwv_flow_api.id(54537783795103830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    dpr_stock_ledger(:COMPCODE,:P445_WARECODE,:P445_BATCHNUM,:P445_ITEMCODE);',
'END;    '))
,p_attribute_02=>'P445_WARECODE,P445_ITEMCODE,P445_BATCHNUM'
,p_attribute_03=>'P445_SPINNER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54538047732103833)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Items'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(54197385437532040)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54538133117103834)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(54197385437532040)
);
wwv_flow_api.component_end;
end;
/
