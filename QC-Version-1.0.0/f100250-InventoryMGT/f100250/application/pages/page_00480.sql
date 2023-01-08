prompt --application/pages/page_00480
begin
--   Manifest
--     PAGE: 00480
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
 p_id=>480
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Finished Good Received'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201103191448'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(55915466555518395)
,p_plug_name=>'Finished Good Received'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56209705526920329)
,p_plug_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(55915466555518395)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT --LPAD (serlnumb, 6, ''0''),',
'       partycde,',
'       --reqddate,',
'       --commcode,',
'       itemcode,',
'       NVL (itemtype, ''N'') itemtype,',
'       itemdesc,',
'       --itemlong,',
'       (itemrate - NVL (discamnt, 0)) itemrate,',
'       --discpcnt,',
'       --discamnt,',
'       --spldispc,',
'       --spldisnt,',
'       salerate,',
'       costrate,',
'       huomcode,',
'       --factrval,',
'       luomcode,',
'       apprqnty - NVL (trnsqnty, 0) apprqnty,',
'       ''NEW'' STATUSCD,',
'       msfcamnt,',
'       --currcode,',
'       --excgrate,',
'       mslcamnt,',
'       refnumbr,',
'       refndate,',
'       --docttype,',
'       --subttype,',
'       docnumbr,',
'       doctdate,',
'       serlnumb,',
'       remarkss,',
'       --bookcode,',
'       --bookdate,',
'       --bookaprv,',
'       vinnumbr,',
'       smancode,',
'       --termscod,',
'       colorcde,',
'       --docnumbr dwdocnum,',
'       --'' '' batchnum,',
'       --TRUNC (SYSDATE) batchexp,',
'       --TRUNC (SYSDATE) batchdte,',
'       --invnumpk,',
'       '''' engine_no',
'       --'''' updocnum,',
'       --updocdte',
'  FROM nmproinv',
' WHERE compcode = :COMPCODE',
'   AND docttype = :P480_DOCTTYPE',
'   AND subttype = :P480_SUBTTYPE',
'   AND docnumbr = :P480_DOCNUMBR',
'   AND TRUNC (doctdate) = :P480_DOCTDATE',
'   AND NVL (apprqnty, 0) - NVL (trnsqnty, 0) > 0',
'   AND costrate IS NOT NULL',
'UNION',
'SELECT --LPAD (g.serlnumb, 6, ''0''),',
'       g.partycde,',
'       --g.reqddate,',
'       --g.commcode,',
'       g.itemcode,',
'       NVL (g.itemtype, ''N'') itemtype,',
'       g.itemdesc,',
'       --g.itemlong,',
'       (g.itemrate - NVL (g.discamnt, 0)) itemrate,',
'       --g.discpcnt,',
'       --g.discamnt,',
'       --g.spldispc,',
'       --g.spldisnt,',
'       g.salerate,',
'       g.costrate,',
'       g.huomcode,',
'       --g.factrval,',
'       g.luomcode,',
'       g.apprqnty,',
'       ''NEW'' STATUSCD,',
'       g.msfcamnt,',
'       --g.currcode,',
'       --g.excgrate,',
'       g.mslcamnt,',
'       g.refnumbr,',
'       g.refndate,',
'       --g.docttype,',
'       --g.subttype,',
'       g.docnumbr,',
'       g.doctdate,',
'       g.serlnumb,',
'       g.remarkss,',
'       --g.bookcode,',
'       --g.bookdate,',
'       --g.bookaprv,',
'       g.vinnumbr,',
'       g.smancode,',
'       --g.termscod,',
'       g.colorcde,',
'       --g.dwdocnum,',
'       --g.batchnum,',
'       --g.batchexp,',
'       --g.batchdte,',
'       --g.invnumfk,',
'       engine_no',
'       --updocnum,',
'       --updocdte',
'  FROM nmstkrcg g',
' WHERE compcode = :COMPCODE',
'   AND g.docttype = :P480_DOCTTYPE',
'   AND g.subttype = :P480_SUBTTYPE',
'   AND g.docnumbr = :P480_DOCNUMBR',
'   AND TRUNC (g.doctdate) = :P480_DOCTDATE',
'   AND NVL (g.vinnumbr, 0) NOT IN',
'          (SELECT NVL (d.vinnumbr, 0)',
'             FROM nmenudtl d',
'            WHERE compcode = :COMPCODE',
'              AND updoctyp = :P480_DOCTTYPE',
'              AND upsubtyp = :P480_SUBTTYPE',
'              AND updocnum = :P480_DOCNUMBR)',
'   AND g.statuscd = ''APR''',
'   AND costrate IS NOT NULL;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P480_DOCTTYPE, P480_SUBTTYPE, P480_DOCNUMBR, P480_DOCTDATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
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
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lpad (serlnumb, 6, ''0''), partycde, reqddate, commcode, itemcode,',
'nvl (itemtype, ''N''), itemdesc, itemlong,',
'(itemrate - nvl (discamnt, 0)) itemrate, discpcnt, discamnt,',
'spldispc, spldisnt, salerate, costrate, huomcode, factrval,',
'luomcode, apprqnty - nvl (trnsqnty, 0), ''NEW'' STATUSCD, msfcamnt,',
'currcode, excgrate, mslcamnt, refnumbr, refndate, docttype,',
'subttype, docnumbr, doctdate, serlnumb, remarkss, bookcode,',
'bookdate, bookaprv, vinnumbr, smancode, termscod, colorcde,',
'docnumbr dwdocnum,'' '' batchnum,trunc(sysdate) batchexp,',
'trunc(sysdate) batchdte,invnumpk,'''' engine_no,'''' updocnum, updocdte',
'from nmproinv',
'where compcode = :COMPCODE',
'and docttype = :P480_DOCTTYPE',
'and subttype = :P480_SUBTTYPE',
'and docnumbr = :P480_DOCNUMBR',
'and trunc(doctdate) = :P480_DOCTDATE',
'and nvl (apprqnty, 0) - nvl (trnsqnty, 0) > 0',
'and costrate is not null',
'union',
'select lpad (g.serlnumb, 6, ''0''), g.partycde, g.reqddate, g.commcode,',
'g.itemcode, nvl (g.itemtype, ''N''), g.itemdesc, g.itemlong,',
'(g.itemrate - nvl (g.discamnt, 0)) itemrate, g.discpcnt, g.discamnt,',
'g.spldispc, g.spldisnt, g.salerate, g.costrate, g.huomcode, g.factrval,',
'g.luomcode, g.apprqnty, ''NEW'' STATUSCD, g.msfcamnt, g.currcode, g.excgrate,',
'g.mslcamnt, g.refnumbr, g.refndate, g.docttype, g.subttype, g.docnumbr,',
'g.doctdate, g.serlnumb, g.remarkss, g.bookcode, g.bookdate, g.bookaprv,',
'g.vinnumbr, g.smancode, g.termscod, g.colorcde, g.dwdocnum, g.batchnum,',
'g.batchexp, g.batchdte, g.invnumfk,engine_no,updocnum,updocdte',
'from nmstkrcg g',
'where compcode = :COMPCODE',
'and g.docttype = :P480_DOCTTYPE',
'and g.subttype = :P480_SUBTTYPE',
'and g.docnumbr = :P480_DOCNUMBR',
'and trunc (g.doctdate) = :P480_DOCTDATE',
'and nvl (g.vinnumbr, 0) not in (',
'select nvl (d.vinnumbr, 0)',
'from nmenudtl d',
'where compcode = :COMPCODE',
'and updoctyp = :P480_DOCTTYPE',
'and upsubtyp = :P480_SUBTTYPE',
'and updocnum = :P480_DOCNUMBR)',
'and g.statuscd = ''APR''',
'and costrate is not null;'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(56360623410360846)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'No Data Found!'
,p_no_data_found_message=>'No Data Found!'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'MONIR'
,p_internal_uid=>56360623410360846
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56664423728859237)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>50
,p_column_identifier=>'DS'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56664526657859238)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>60
,p_column_identifier=>'DT'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56664617402859239)
,p_db_column_name=>'SERLNUMB'
,p_display_order=>70
,p_column_identifier=>'DU'
,p_column_label=>'Serlnumb'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56664750964859240)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>80
,p_column_identifier=>'DV'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56665400488859247)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>150
,p_column_identifier=>'EC'
,p_column_label=>'Item Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56665513301859248)
,p_db_column_name=>'HUOMCODE'
,p_display_order=>160
,p_column_identifier=>'ED'
,p_column_label=>'Huomcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56665715682859250)
,p_db_column_name=>'LUOMCODE'
,p_display_order=>180
,p_column_identifier=>'EF'
,p_column_label=>'Luomcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56707990095329701)
,p_db_column_name=>'ITEMRATE'
,p_display_order=>190
,p_column_identifier=>'EG'
,p_column_label=>'Itemrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56708034367329702)
,p_db_column_name=>'COSTRATE'
,p_display_order=>200
,p_column_identifier=>'EH'
,p_column_label=>'Cost Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56708125579329703)
,p_db_column_name=>'SALERATE'
,p_display_order=>210
,p_column_identifier=>'EI'
,p_column_label=>'Sale Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56709120613329713)
,p_db_column_name=>'VINNUMBR'
,p_display_order=>310
,p_column_identifier=>'ES'
,p_column_label=>'Chassis No.'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56709245521329714)
,p_db_column_name=>'COLORCDE'
,p_display_order=>320
,p_column_identifier=>'ET'
,p_column_label=>'Colorcde'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56710514124329727)
,p_db_column_name=>'MSFCAMNT'
,p_display_order=>450
,p_column_identifier=>'FG'
,p_column_label=>'Msfcamnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56710869290329730)
,p_db_column_name=>'MSLCAMNT'
,p_display_order=>480
,p_column_identifier=>'FJ'
,p_column_label=>'Mslcamnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56711069424329732)
,p_db_column_name=>'REFNUMBR'
,p_display_order=>500
,p_column_identifier=>'FL'
,p_column_label=>'Refnumbr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56711111837329733)
,p_db_column_name=>'REFNDATE'
,p_display_order=>510
,p_column_identifier=>'FM'
,p_column_label=>'Refndate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56712722138329749)
,p_db_column_name=>'REMARKSS'
,p_display_order=>670
,p_column_identifier=>'GC'
,p_column_label=>'Remarkss'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56713288196329704)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>720
,p_column_identifier=>'GH'
,p_column_label=>'Item Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56714080938329712)
,p_db_column_name=>'SMANCODE'
,p_display_order=>800
,p_column_identifier=>'GP'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56790348734475001)
,p_db_column_name=>'ENGINE_NO'
,p_display_order=>870
,p_column_identifier=>'IC'
,p_column_label=>'Engine No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56790451964475002)
,p_db_column_name=>'STATUSCD'
,p_display_order=>880
,p_column_identifier=>'ID'
,p_column_label=>'Statu'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56790540106475003)
,p_db_column_name=>'ITEMTYPE'
,p_display_order=>890
,p_column_identifier=>'IE'
,p_column_label=>'Item Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56790613812475004)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>900
,p_column_identifier=>'IF'
,p_column_label=>'Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(56410720085369109)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'564108'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ITEMCODE:ITEMDESC:ITEMTYPE:COSTRATE:SALERATE:APPRQNTY:STATUSCD:VINNUMBR:ENGINE_NO:'
,p_sum_columns_on_break=>'APPRQNTY'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56430702855374643)
,p_plug_name=>'doc left'
,p_parent_plug_id=>wwv_flow_api.id(55915466555518395)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56430898606374644)
,p_plug_name=>'doc right'
,p_parent_plug_id=>wwv_flow_api.id(55915466555518395)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(55920002969518423)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(55920479302518423)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(55920002969518423)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(55922455271518428)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(55920002969518423)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Submit'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure to Submit?'',''PLACE_ORDER'');'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(56791668478475014)
,p_branch_name=>'Go To Page 479'
,p_branch_action=>'f?p=&APP_ID.:479:&SESSION.::&DEBUG.:RP,480::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55915868335518396)
,p_name=>'P480_DOCNUMBR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(56430702855374643)
,p_prompt=>'Receive No'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55917043802518420)
,p_name=>'P480_PARTYCDE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(56430702855374643)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55917459870518421)
,p_name=>'P480_RAISEDBY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(56430702855374643)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55917821395518421)
,p_name=>'P480_APPRVDBY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(56430702855374643)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56430322443374639)
,p_name=>'P480_TRNSDATE'
,p_is_required=>true
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(56430702855374643)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Transaction Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56430563207374641)
,p_name=>'P480_EXCGRATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(56430898606374644)
,p_prompt=>'Exchange Rate'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56430677659374642)
,p_name=>'P480_CURRCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(56430898606374644)
,p_prompt=>'Currency Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56662751277859220)
,p_name=>'P480_COSTCODE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(56430702855374643)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56662863749859221)
,p_name=>'P480_WARECODE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(56430702855374643)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56663346256859226)
,p_name=>'P480_DOCTTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(56430702855374643)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56663495567859227)
,p_name=>'P480_SUBTTYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(56430702855374643)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56663578300859228)
,p_name=>'P480_DOCTDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(56430702855374643)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56790739581475005)
,p_name=>'P480_REMARKS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(56430898606374644)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>500
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(55920556216518423)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(55920479302518423)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(55921309319518426)
,p_event_id=>wwv_flow_api.id(55920556216518423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56791138788475009)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(this.triggeringElement).find(''.a-IRR-noDataMsg'').length == 1'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56791345364475011)
,p_event_id=>wwv_flow_api.id(56791138788475009)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(55922455271518428)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56791453112475012)
,p_event_id=>wwv_flow_api.id(56791138788475009)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(55922455271518428)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(55923676749518432)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process form Finished Good Received'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'dpr_finished_good_rcv ( p_compcode    => :COMPCODE,',
'                        p_docttype    => :DOCTTYPE,',
'                        p_subttype    => :SUBTTYPE,',
'                        p_docnumbr    => :P480_DOCNUMBR,',
'                        p_doctdate    => :P480_TRNSDATE,',
'                        p_excgrate    => :P480_EXCGRATE,',
'                        p_raisedby    => :P480_RAISEDBY,',
'                        p_apprvdby    => :P480_APPRVDBY,',
'                        p_oprstamp    => :APP_USER,',
'                        p_costcode    => :P480_COSTCODE,',
'                        p_warecode    => :P480_WARECODE,',
'                        p_prdocnum    => :P480_DOCNUMBR,',
'                        p_prdoctyp    => :P480_DOCTTYPE,',
'                        p_prsubtyp    => :P480_SUBTTYPE,',
'                        p_prdocdte    => :P480_DOCTDATE,',
'                        p_remarkss    => :P480_REMARKS',
');',
'',
'',
'',
'',
'',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'&PROGDESC. Successful...'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(55924004864518434)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.component_end;
end;
/
