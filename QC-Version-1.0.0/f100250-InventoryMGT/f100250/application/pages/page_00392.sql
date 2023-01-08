prompt --application/pages/page_00392
begin
--   Manifest
--     PAGE: 00392
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
 p_id=>392
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Stock Summary Report For Excell'
,p_page_mode=>'MODAL'
,p_step_title=>'Stock Summary Report For Excell'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20190318123729'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48599073788407847)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48713768947187991)
,p_plug_name=>'Stock Summary Report For Excell'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  a.warecode || '' - '' || c.waredesc warecode, a.docnumbr,',
'                a. colorcde, a.itemcode, upper(b.itemdes1)  itemdes1,',
'               SUBSTR(vinnumbr, 1,INSTR(vinnumbr,''-'', 2,2)-1)||''-''||a.STYLECODE vinnumbr1,case when a.itemcode1 = d.CHILDCDE then d.PARNTCDE||''-''||a.STYLECODE else a.vinnumbr end  identification_no,a.engineno, NVL ( (nvl(a.orgnqnty,0)-nvl(a.trnsqnty,'
||'0)), a.apprqnty) orgnqnty,a.vinnumbr,a.DOCTDATE,',
'               round(NVL (a.salerate*a.excgrate, 0),0) itemrate,round(NVL (a.costrate*a.excgrate, 0),0) costrate, WGHTQNTY,b.DESIGNCD,(select CODEDESC from SYCDEDTL where CHILDCDE=a.COMMCODE) NAME, (select CODEDESC from SYCDEDTL where CHILDCDE=a.COMM'
||'CODE) NAME1,decode(substr(a.itemcode,1,1),''D'',''Diamond'',''G'',''Gold'',''Polki'') category, decode(substr(a.itemcode,1,1),''D'',''Diamond'',''G'',''Gold'',''Polki'') category1,',
'                a.DIAMOND_WEIGHT,a.STONE_WEIGHT,a.NET_WEIGHT',
'           FROM nmenudtl a, nmitemas b, nmwhsmas c, sycdedtl d',
'          WHERE a.compcode=:P392_COMPCODE',
'            and a.compcode = b.compcode',
'            and a.compcode = d.compcode',
'            AND a.compcode = c.compcode(+)',
'            AND a.itemcode1 = b.itemcode',
'            AND a.warecode = c.warecode(+)',
'            AND a.itemcode1 = d.CHILDCDE',
'           -- AND NVL (a.trnsqnty, 0) = 0',
'            AND a.docttype <>''BK''',
'            and b.ITEMMODL=nvl(:P392_SUBTTYPE,b.ITEMMODL)--NVL (,b.ITEMMODL)',
'    and a.FINSHGD_STATUS=''Y''',
' and (nvl(a.apprqnty,0)-nvl(a.trnsqnty,0))>0',
'            and substr(b.ITEMCODE,1,1)=NVL (substr(:P392_DOCTTYPE,1,1),substr(b.ITEMCODE,1,1))',
'         ---   and BOOKCODE  is null',
'          --  AND NVL (a.docnumbr, ''0'') = NVL (:P392_DOCNUMBR, NVL (a.docnumbr, ''0''))',
'       AND a.doctdate between NVL (to_date(:P392_DOCFDATE,''DD-MON-RRRR''),a.doctdate) and NVL (TO_DATE(:P392_DOCTDATE,''DD-MON-RRRR''),a.doctdate)',
'                              /* AND NVL (:p12, a.doctdate)*/',
'    ORDER BY  lpad(SUBSTR(itemcode, INSTR(itemcode,''-'', 1,1)+1,10),10,''0'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P392_COMPCODE,P392_DOCTTYPE,P392_SUBTTYPE,P392_DOCNUMBR,P392_DOCFDATE,P392_DOCTDATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(48713815835187991)
,p_name=>'Stock Summary Report For Excell'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:XLSX'
,p_enable_mail_download=>'N'
,p_owner=>'GADMIN'
,p_internal_uid=>13375725797423589
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48714242742187995)
,p_db_column_name=>'WARECODE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48714654133187996)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48714995018187996)
,p_db_column_name=>'COLORCDE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Colorcde'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48715471055187996)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Item Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48715843583187996)
,p_db_column_name=>'ITEMDES1'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48716289490187996)
,p_db_column_name=>'VINNUMBR1'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Vinnumbr1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48716601399187996)
,p_db_column_name=>'IDENTIFICATION_NO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Identification No.'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48717009205187996)
,p_db_column_name=>'ENGINENO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Engineno'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48717463090187996)
,p_db_column_name=>'ORGNQNTY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Qty.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48717876238187996)
,p_db_column_name=>'VINNUMBR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Vinnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48718271646187996)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48718622076187997)
,p_db_column_name=>'ITEMRATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Sale Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48719045688187997)
,p_db_column_name=>'COSTRATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Cost Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48719395136187997)
,p_db_column_name=>'WGHTQNTY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Gross Weight'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48719870052187997)
,p_db_column_name=>'DESIGNCD'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Designcd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48720273180187997)
,p_db_column_name=>'NAME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Product Type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48720684286187997)
,p_db_column_name=>'NAME1'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Name1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48721083246187997)
,p_db_column_name=>'CATEGORY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48721406582187997)
,p_db_column_name=>'CATEGORY1'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Category1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36129995731971148)
,p_db_column_name=>'DIAMOND_WEIGHT'
,p_display_order=>29
,p_column_identifier=>'T'
,p_column_label=>'Diamond Weight'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36130021586971149)
,p_db_column_name=>'STONE_WEIGHT'
,p_display_order=>39
,p_column_identifier=>'U'
,p_column_label=>'Stone Weight'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36130178269971150)
,p_db_column_name=>'NET_WEIGHT'
,p_display_order=>49
,p_column_identifier=>'V'
,p_column_label=>'Net Weight'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(48724583422263578)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'133865'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'ITEMDES1:IDENTIFICATION_NO:CATEGORY:NAME:ORGNQNTY:COSTRATE:ITEMRATE:WGHTQNTY::DIAMOND_WEIGHT:STONE_WEIGHT:NET_WEIGHT'
,p_sum_columns_on_break=>'ORGNQNTY:COSTRATE:ITEMRATE:WGHTQNTY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48725135547266403)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(48713768947187991)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:358:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48599145247407848)
,p_name=>'P392_DOCTTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(48599073788407847)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48599215069407849)
,p_name=>'P392_SUBTTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(48599073788407847)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48599298204407850)
,p_name=>'P392_DOCNUMBR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(48599073788407847)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48599478182407851)
,p_name=>'P392_DOCTDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(48599073788407847)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48599523475407852)
,p_name=>'P392_DOCFDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(48599073788407847)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48725471603266406)
,p_name=>'P392_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(48599073788407847)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
