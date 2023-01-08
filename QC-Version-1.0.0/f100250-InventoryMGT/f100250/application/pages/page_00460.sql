prompt --application/pages/page_00460
begin
--   Manifest
--     PAGE: 00460
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
 p_id=>460
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Audit Inventory'
,p_page_mode=>'MODAL'
,p_step_title=>'Audit Inventory'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201103153029'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69952273174226637)
,p_plug_name=>'Inventory List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT',
'         DOCNUMBR || ''/'' || DOCTDATE || ''/'' || DOCTTYPE || ''/'' || SUBTTYPE',
'            AS DOC_DETAIL,',
'         DOCTDATE,',
'         DOCNUMBR,',
'         --BATCHNUM,',
'         --CLBLQTY,',
'         --APPRQNTY,',
'         NVL (SUM (S.INVTRQTY), 0) INVTRQTY_SUM,',
'         NVL (SUM (S.EXCESQTY), 0) EXCESQTY_SUM,',
'         NVL (SUM (S.SHORTQTY), 0) SHORTQTY_SUM,',
'         STATUSCD,',
'         PERIODCD,',
'         INITCAP ( (SELECT S.WARECODE || '' - '' || WAREDESC',
'                      FROM NMWHSMAS',
'                     WHERE WARECODE = S.WARECODE AND COMPCODE = S.COMPCODE))',
'            Warehouse,',
'         (SELECT INITCAP (S.RAISEDBY || '' - '' || USERNAME)',
'            FROM SYUSRMAS',
'           WHERE USERCODE = S.RAISEDBY)',
'            RAISEDBY,',
'         COUNT (ITEMCODE) UNIT,',
'         WARECODE,',
'         COSTCODE,',
'         COMPCODE,',
'         ''Edit'' Link ',
'    FROM NMSTKINV S',
'   WHERE     COMPCODE = :COMPCODE',
'         AND DOCTTYPE = :P460_DOCTTYPE',
'         AND SUBTTYPE = :P460_SUBTTYPE',
'         --AND STATUSCD = ''APR''',
'GROUP BY COMPCODE,',
'         RAISEDBY,',
'         WARECODE,',
'         DOCTTYPE,',
'         SUBTTYPE,',
'         DOCNUMBR,',
'         DOCTDATE,',
'         STATUSCD,',
'         PERIODCD,',
'         COSTCODE',
'ORDER BY DOCTDATE DESC, DOCNUMBR DESC'))
,p_plug_source_type=>'NATIVE_IR'
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
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69952355447226638)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NADIA'
,p_internal_uid=>69952355447226638
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69952737303226642)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Transaction Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69952824499226643)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Transaction No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69953036902226645)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Raised By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72009637254809510)
,p_db_column_name=>'STATUSCD'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72010596563809519)
,p_db_column_name=>'PERIODCD'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Periodcd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73110982509331748)
,p_db_column_name=>'DOC_DETAIL'
,p_display_order=>320
,p_column_identifier=>'AG'
,p_column_label=>'Document Details'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73111045161331749)
,p_db_column_name=>'INVTRQTY_SUM'
,p_display_order=>330
,p_column_identifier=>'AH'
,p_column_label=>'Inventory Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73111103458331750)
,p_db_column_name=>'EXCESQTY_SUM'
,p_display_order=>340
,p_column_identifier=>'AI'
,p_column_label=>'Excess Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74572740918030301)
,p_db_column_name=>'SHORTQTY_SUM'
,p_display_order=>350
,p_column_identifier=>'AJ'
,p_column_label=>'Short Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74572886823030302)
,p_db_column_name=>'WAREHOUSE'
,p_display_order=>360
,p_column_identifier=>'AK'
,p_column_label=>'Warehouse'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74572942749030303)
,p_db_column_name=>'UNIT'
,p_display_order=>370
,p_column_identifier=>'AL'
,p_column_label=>'Total Product'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74573064466030304)
,p_db_column_name=>'LINK'
,p_display_order=>380
,p_column_identifier=>'AM'
,p_column_label=>'Modify'
,p_column_link=>'f?p=&APP_ID.:461:&SESSION.::&DEBUG.:RP:P461_DOCNUMBR,P461_DOCTDATE,P461_RAISEDBY,P461_WARECODE,P461_WAREDESC,P461_COSTCODE,P461_COMPCODE,P461_PERIODCD:#DOCNUMBR#,#DOCTDATE#,#RAISEDBY#,#WARECODE#,#WAREHOUSE#,#COSTCODE#,#COMPCODE#,#PERIODCD#'
,p_column_linktext=>'#LINK#'
,p_column_link_attr=>'class="t-Button t-Button--hot"'
,p_column_type=>'STRING'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'TRNMODE'
,p_display_condition2=>'M'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74573909926030313)
,p_db_column_name=>'WARECODE'
,p_display_order=>390
,p_column_identifier=>'AN'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36431895508111020)
,p_db_column_name=>'COSTCODE'
,p_display_order=>400
,p_column_identifier=>'AO'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74722435488397322)
,p_db_column_name=>'COMPCODE'
,p_display_order=>410
,p_column_identifier=>'AP'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(72023777739814896)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'720238'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK:DOC_DETAIL:DOCTDATE:UNIT:INVTRQTY_SUM:EXCESQTY_SUM:SHORTQTY_SUM:WAREHOUSE:RAISEDBY:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72010966543809523)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72011038762809524)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(72010966543809523)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72010770156809521)
,p_name=>'P460_DOCTTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(69952273174226637)
,p_source=>'DOCTTYPE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72010826511809522)
,p_name=>'P460_SUBTTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(69952273174226637)
,p_source=>'SUBTTYPE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(72011180973809525)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(72011038762809524)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72011245877809526)
,p_event_id=>wwv_flow_api.id(72011180973809525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
