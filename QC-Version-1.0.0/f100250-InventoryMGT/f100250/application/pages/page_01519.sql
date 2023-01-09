prompt --application/pages/page_01519
begin
--   Manifest
--     PAGE: 01519
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
 p_id=>1519
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Pending Production Batch List'
,p_page_mode=>'MODAL'
,p_step_title=>'Pending Production Batch List'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-BadgeList-wrap{',
'    font-size: 0rem;',
'    line-height: 0rem;',
'}',
'.t-Region {',
'    margin-bottom: -31px;',
'}'))
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170529115939'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(100486832075725190)
,p_plug_name=>'Pending'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.PARTYCDE,',
'       a.Itemcode,',
'       NVL ( (a.apprqnty - (q.TARGET_QTY + q.Inprogress_qty)), a.apprqnty)',
'          Remaining_Quantity,',
'       NVL (a.apprqnty, 0) Request_Quantity,',
'       NVL (q.TARGET_QTY, 0) Complete_quantity,',
'       NVL (q.Inprogress_qty, 0) Inprogress_Quantity,',
'       a.BATCHNUM,',
'       a.SLSOFRNO,',
'       a.DOCNUMBR,',
'       a.DOCTTYPE,',
'       SUBTTYPE ',
'  FROM nmslsofr a,',
'       sycompty b,',
'       (SELECT TARGET_QTY,',
'               Inprogress_qty,',
'               SLSOFRNO_FK,',
'               TGT_FG_ITEMCODE',
'          FROM (  SELECT NVL (SUM (p.TARGET_QTY), 0) TARGET_QTY,',
'                         0 Inprogress_qty,',
'                         p.SLSOFRNO_FK,',
'                         p.TGT_FG_ITEMCODE',
'                    FROM prbom_batch p',
'                   WHERE     NVL (P.RAW_ITEM_CONSUMPTION_FLAG, 0) = 1',
'                         AND P.COMPCODE = :compcode',
'                GROUP BY p.SLSOFRNO_FK, p.TGT_FG_ITEMCODE',
'                UNION ALL',
'                  SELECT 0 TARGET_QTY,',
'                         NVL (SUM (t.TARGET_QTY), 0) Inprogress_qty,',
'                         t.SLSOFRNO_FK,',
'                         t.TGT_FG_ITEMCODE',
'                    FROM prbom_batch t',
'                   WHERE     NVL (t.RAW_ITEM_CONSUMPTION_FLAG, 0) = 0',
'                         AND t.COMPCODE = :compcode',
'                GROUP BY t.SLSOFRNO_FK, t.TGT_FG_ITEMCODE)) q,',
'       (SELECT d.COMPCODE, D.WARECODE, c.PROCESS_NO',
'          FROM prdepartment d, prprocess c, PRPROCESSRGT g',
'         WHERE     D.COMPCODE = C.COMPCODE',
'               AND D.DEPT_NO = C.DEPT_NO',
'               And G.PROCESS_NO = C.PROCESS_NO',
'               AND D.COMPCODE = :compcode',
'               and G.USER_CODE = :APP_USER ) w',
' WHERE     a.statuscd = ''APR''',
'--  and a.SLSOFRNO=10029',
'       AND q.SLSOFRNO_FK(+) = a.SLSOFRNO',
'       AND a.compcode = b.compcode',
'       AND a.partycde = b.partycde',
'     --  AND q.PROCESS_NO = w.PROCESS_NO(+)',
'       AND a.compcode = :compcode',
'       AND a.DOCTTYPE=''MQ''',
'       AND a.ITEMCODE = NVL (q.TGT_FG_ITEMCODE, a.ITEMCODE)',
'       AND NVL ( (a.apprqnty - (q.TARGET_QTY + q.Inprogress_qty)), a.apprqnty)>0'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1519_LIST'
,p_plug_display_when_cond2=>'P'
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
 p_id=>wwv_flow_api.id(72648153850184195)
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
,p_owner=>'RILADM'
,p_internal_uid=>35493286724503701
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72648247074184196)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72648277849184197)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72648446780184198)
,p_db_column_name=>'REMAINING_QUANTITY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Remaining quantity'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72648496496184199)
,p_db_column_name=>'REQUEST_QUANTITY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Request quantity'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72648580571184200)
,p_db_column_name=>'COMPLETE_QUANTITY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Complete quantity'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72648724226184201)
,p_db_column_name=>'INPROGRESS_QUANTITY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Inprogress quantity'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72648781358184202)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72648938858184203)
,p_db_column_name=>'SLSOFRNO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Slsofrno'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72649014345184204)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Docnumbr'
,p_column_link=>'f?p=&APP_ID.:1521:&SESSION.::&DEBUG.:RP,1521:P1521_SALESOFFER_NEW,P1521_FITEMCD,P1521_BATCH_NEW,P1521_COMPLETE_QTY,P1521_TARGET_QTY,P1521_REMAIN_QTY,P1521_PARTYCD,P1521_PROCESS_NO:#SLSOFRNO#,#ITEMCODE#,#BATCHNUM#,#COMPLETE_QUANTITY#,#REQUEST_QUANTITY'
||'#,#REMAINING_QUANTITY#,#PARTYCDE#,#INPROGRESS_QUANTITY#'
,p_column_linktext=>'#DOCNUMBR#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72649084564184205)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72649208254184206)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(72662604457185272)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'355078'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCNUMBR:ITEMCODE:REQUEST_QUANTITY:INPROGRESS_QUANTITY:COMPLETE_QUANTITY:REMAINING_QUANTITY:'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(116791522572040117)
,p_name=>'badge list'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>1
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h100:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--small:t-BadgeList--fixed'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c.pending pending,d.progress "in-progress",e.Complete Complete',
'from (  SELECT  count( DOCNUMBR) pending',
'  FROM nmslsofr a,',
'       sycompty b,',
'       (SELECT TARGET_QTY,',
'               Inprogress_qty,',
'               SLSOFRNO_FK,',
'               TGT_FG_ITEMCODE',
'          FROM (  SELECT NVL (SUM (p.TARGET_QTY), 0) TARGET_QTY,',
'                         0 Inprogress_qty,',
'                         p.SLSOFRNO_FK,',
'                         p.TGT_FG_ITEMCODE',
'                    FROM prbom_batch p',
'                   WHERE     NVL (P.RAW_ITEM_CONSUMPTION_FLAG, 0) = 1',
'                         AND P.COMPCODE = :compcode',
'                GROUP BY p.SLSOFRNO_FK, p.TGT_FG_ITEMCODE',
'                UNION ALL',
'                  SELECT 0 TARGET_QTY,',
'                         NVL (SUM (t.TARGET_QTY), 0) Inprogress_qty,',
'                         t.SLSOFRNO_FK,',
'                         t.TGT_FG_ITEMCODE',
'                    FROM prbom_batch t',
'                   WHERE     NVL (t.RAW_ITEM_CONSUMPTION_FLAG, 0) = 0',
'                         AND t.COMPCODE = :compcode',
'                GROUP BY t.SLSOFRNO_FK, t.TGT_FG_ITEMCODE)) q,',
'       (SELECT d.COMPCODE, D.WARECODE, c.PROCESS_NO',
'          FROM prdepartment d, prprocess c, PRPROCESSRGT g',
'         WHERE     D.COMPCODE = C.COMPCODE',
'               AND D.DEPT_NO = C.DEPT_NO',
'               And G.PROCESS_NO = C.PROCESS_NO',
'               AND D.COMPCODE = :compcode',
'               and G.USER_CODE = :APP_USER ) w',
' WHERE     a.statuscd = ''APR''',
'       AND q.SLSOFRNO_FK(+) = a.SLSOFRNO',
'       AND a.compcode = b.compcode',
'       AND a.partycde = b.partycde',
'       AND a.compcode = :compcode',
'       AND a.ITEMCODE = NVL (q.TGT_FG_ITEMCODE, a.ITEMCODE)',
'       AND NVL ( (a.apprqnty - (q.TARGET_QTY + q.Inprogress_qty)), a.apprqnty)>0 ) c,',
'       (SELECT count(*) progress',
'  FROM nmslsofr a,',
'       sycompty b,',
'       (SELECT TARGET_QTY,',
'               Inprogress_qty,',
'               SLSOFRNO_FK,',
'               TGT_FG_ITEMCODE',
'          FROM (  SELECT NVL (SUM (p.TARGET_QTY), 0) TARGET_QTY,',
'                         0 Inprogress_qty,',
'                         p.SLSOFRNO_FK,',
'                         p.TGT_FG_ITEMCODE',
'                    FROM prbom_batch p',
'                   WHERE     NVL (P.RAW_ITEM_CONSUMPTION_FLAG, 0) = 1',
'                         AND P.COMPCODE = :compcode',
'                GROUP BY p.SLSOFRNO_FK, p.TGT_FG_ITEMCODE',
'                UNION ALL',
'                  SELECT 0 TARGET_QTY,',
'                         NVL (SUM (t.TARGET_QTY), 0) Inprogress_qty,',
'                         t.SLSOFRNO_FK,',
'                         t.TGT_FG_ITEMCODE',
'                    FROM prbom_batch t',
'                   WHERE     NVL (t.RAW_ITEM_CONSUMPTION_FLAG, 0) = 0',
'                         AND t.COMPCODE = :compcode',
'                GROUP BY t.SLSOFRNO_FK, t.TGT_FG_ITEMCODE)) q,',
'       (SELECT d.COMPCODE, D.WARECODE, c.PROCESS_NO',
'          FROM prdepartment d, prprocess c, PRPROCESSRGT g',
'         WHERE     D.COMPCODE = C.COMPCODE',
'               AND D.DEPT_NO = C.DEPT_NO',
'               And G.PROCESS_NO = C.PROCESS_NO',
'               AND D.COMPCODE = :compcode',
'               and G.USER_CODE = :APP_USER ) w',
' WHERE     a.statuscd = ''APR''',
'       AND q.SLSOFRNO_FK(+) = a.SLSOFRNO',
'       AND a.compcode = b.compcode',
'       AND a.partycde = b.partycde',
'       AND a.compcode = :compcode',
'       AND a.ITEMCODE = NVL (q.TGT_FG_ITEMCODE, a.ITEMCODE)',
'       AND NVL ( q.Inprogress_qty,0)>0 ) d,',
'( SELECT  count( DOCNUMBR) Complete',
'  FROM nmslsofr a,',
'       sycompty b,',
'       (SELECT TARGET_QTY,',
'               Inprogress_qty,',
'               SLSOFRNO_FK,',
'               TGT_FG_ITEMCODE',
'          FROM (  SELECT NVL (SUM (p.TARGET_QTY), 0) TARGET_QTY,',
'                         0 Inprogress_qty,',
'                         p.SLSOFRNO_FK,',
'                         p.TGT_FG_ITEMCODE',
'                    FROM prbom_batch p',
'                   WHERE     NVL (P.RAW_ITEM_CONSUMPTION_FLAG, 0) = 1',
'                         AND P.COMPCODE = :compcode',
'                GROUP BY p.SLSOFRNO_FK, p.TGT_FG_ITEMCODE',
'                UNION ALL',
'                  SELECT 0 TARGET_QTY,',
'                         NVL (SUM (t.TARGET_QTY), 0) Inprogress_qty,',
'                         t.SLSOFRNO_FK,',
'                         t.TGT_FG_ITEMCODE',
'                    FROM prbom_batch t',
'                   WHERE     NVL (t.RAW_ITEM_CONSUMPTION_FLAG, 0) = 0',
'                         AND t.COMPCODE = :compcode',
'                GROUP BY t.SLSOFRNO_FK, t.TGT_FG_ITEMCODE)) q,',
'       (SELECT d.COMPCODE, D.WARECODE, c.PROCESS_NO',
'          FROM prdepartment d, prprocess c, PRPROCESSRGT g',
'         WHERE     D.COMPCODE = C.COMPCODE',
'               AND D.DEPT_NO = C.DEPT_NO',
'               And G.PROCESS_NO = C.PROCESS_NO',
'               AND D.COMPCODE = :compcode',
'               and G.USER_CODE = :APP_USER ) w',
' WHERE     a.statuscd = ''APR''',
'       AND q.SLSOFRNO_FK(+) = a.SLSOFRNO',
'       AND a.compcode = b.compcode',
'       AND a.partycde = b.partycde',
'       AND a.compcode = :compcode',
'       AND a.ITEMCODE = NVL (q.TGT_FG_ITEMCODE, a.ITEMCODE)',
'       AND NVL ( (a.apprqnty - (q.TARGET_QTY + q.Inprogress_qty)), a.apprqnty)=0) e',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
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
 p_id=>wwv_flow_api.id(72649304596184207)
,p_query_column_id=>1
,p_column_alias=>'PENDING'
,p_column_display_sequence=>1
,p_column_heading=>'Pending'
,p_column_link=>'f?p=&APP_ID.:1519:&SESSION.::&DEBUG.:RP:P1519_LIST:P'
,p_column_linktext=>'#PENDING#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72649401942184208)
,p_query_column_id=>2
,p_column_alias=>'in-progress'
,p_column_display_sequence=>2
,p_column_heading=>'In-progress'
,p_column_link=>'f?p=&APP_ID.:1519:&SESSION.::&DEBUG.:RP:P1519_LIST:NP'
,p_column_linktext=>'#in-progress#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72649507095184209)
,p_query_column_id=>3
,p_column_alias=>'COMPLETE'
,p_column_display_sequence=>3
,p_column_heading=>'Complete'
,p_column_link=>'f?p=&APP_ID.:1519:&SESSION.::&DEBUG.:RP:P1519_LIST:C'
,p_column_linktext=>'#COMPLETE#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(135999375240540334)
,p_plug_name=>'IN-PROGRESS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.PARTYCDE,',
'       a.Itemcode,',
'       NVL ( (a.apprqnty - (q.TARGET_QTY + q.Inprogress_qty)), a.apprqnty)',
'          Remaining_Quantity,',
'       NVL (a.apprqnty, 0) Request_Quantity,',
'       NVL (q.TARGET_QTY, 0) Complete_quantity,',
'       NVL (q.Inprogress_qty, 0) Inprogress_Quantity,',
'       a.BATCHNUM,',
'       a.SLSOFRNO,',
'       a.DOCNUMBR,',
'       a.DOCTTYPE,',
'       SUBTTYPE ',
'  FROM nmslsofr a,',
'       sycompty b,',
'       (SELECT TARGET_QTY,',
'               Inprogress_qty,',
'               SLSOFRNO_FK,',
'               TGT_FG_ITEMCODE',
'          FROM (  SELECT NVL (SUM (p.TARGET_QTY), 0) TARGET_QTY,',
'                         0 Inprogress_qty,',
'                         p.SLSOFRNO_FK,',
'                         p.TGT_FG_ITEMCODE',
'                    FROM prbom_batch p',
'                   WHERE     NVL (P.RAW_ITEM_CONSUMPTION_FLAG, 0) = 1',
'                         AND P.COMPCODE = :compcode',
'                GROUP BY p.SLSOFRNO_FK, p.TGT_FG_ITEMCODE',
'                UNION ALL',
'                  SELECT 0 TARGET_QTY,',
'                         NVL (SUM (t.TARGET_QTY), 0) Inprogress_qty,',
'                         t.SLSOFRNO_FK,',
'                         t.TGT_FG_ITEMCODE',
'                    FROM prbom_batch t',
'                   WHERE     NVL (t.RAW_ITEM_CONSUMPTION_FLAG, 0) = 0',
'                         AND t.COMPCODE = :compcode',
'                GROUP BY t.SLSOFRNO_FK, t.TGT_FG_ITEMCODE)) q,',
'       (SELECT d.COMPCODE, D.WARECODE, c.PROCESS_NO',
'          FROM prdepartment d, prprocess c, PRPROCESSRGT g',
'         WHERE     D.COMPCODE = C.COMPCODE',
'               AND D.DEPT_NO = C.DEPT_NO',
'               And G.PROCESS_NO = C.PROCESS_NO',
'               AND D.COMPCODE = :compcode',
'               and G.USER_CODE = :APP_USER ) w',
' WHERE     a.statuscd = ''APR''',
'--  and a.SLSOFRNO=10029',
'       AND q.SLSOFRNO_FK(+) = a.SLSOFRNO',
'       AND a.compcode = b.compcode',
'       AND a.partycde = b.partycde',
'     --  AND q.PROCESS_NO = w.PROCESS_NO(+)',
'       AND a.compcode = :compcode',
'       AND a.ITEMCODE = NVL (q.TGT_FG_ITEMCODE, a.ITEMCODE)',
'       AND NVL ( q.Inprogress_qty,0)>0 '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1519_LIST'
,p_plug_display_when_cond2=>'NP'
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
 p_id=>wwv_flow_api.id(108160697014999339)
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
,p_owner=>'RILADM'
,p_internal_uid=>71005829889318845
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72667696678495644)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72668159803495646)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72668561951495646)
,p_db_column_name=>'REMAINING_QUANTITY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Remaining quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72668925031495646)
,p_db_column_name=>'REQUEST_QUANTITY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Request quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72669332319495646)
,p_db_column_name=>'COMPLETE_QUANTITY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Complete quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72669729827495646)
,p_db_column_name=>'INPROGRESS_QUANTITY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Inprogress quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72670091074495646)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72670541886495646)
,p_db_column_name=>'SLSOFRNO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Slsofrno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72670903153495646)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72671319640495646)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72671752338495647)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(108175147622000416)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'355172'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCNUMBR:ITEMCODE:REQUEST_QUANTITY:INPROGRESS_QUANTITY:COMPLETE_QUANTITY:REMAINING_QUANTITY:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(171517460143358456)
,p_plug_name=>'Complete'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.PARTYCDE,',
'       a.Itemcode,',
'       NVL ( (a.apprqnty - (q.TARGET_QTY + q.Inprogress_qty)), a.apprqnty)',
'          Remaining_Quantity,',
'       NVL (a.apprqnty, 0) Request_Quantity,',
'       NVL (q.TARGET_QTY, 0) Complete_quantity,',
'       NVL (q.Inprogress_qty, 0) Inprogress_Quantity,',
'       a.BATCHNUM,',
'       a.SLSOFRNO,',
'       a.DOCNUMBR,',
'       a.DOCTTYPE,',
'       SUBTTYPE ',
'  FROM nmslsofr a,',
'       sycompty b,',
'       (SELECT TARGET_QTY,',
'               Inprogress_qty,',
'               SLSOFRNO_FK,',
'               TGT_FG_ITEMCODE',
'          FROM (  SELECT NVL (SUM (p.TARGET_QTY), 0) TARGET_QTY,',
'                         0 Inprogress_qty,',
'                         p.SLSOFRNO_FK,',
'                         p.TGT_FG_ITEMCODE',
'                    FROM prbom_batch p',
'                   WHERE     NVL (P.RAW_ITEM_CONSUMPTION_FLAG, 0) = 1',
'                         AND P.COMPCODE = :compcode',
'                GROUP BY p.SLSOFRNO_FK, p.TGT_FG_ITEMCODE',
'                UNION ALL',
'                  SELECT 0 TARGET_QTY,',
'                         NVL (SUM (t.TARGET_QTY), 0) Inprogress_qty,',
'                         t.SLSOFRNO_FK,',
'                         t.TGT_FG_ITEMCODE',
'                    FROM prbom_batch t',
'                   WHERE     NVL (t.RAW_ITEM_CONSUMPTION_FLAG, 0) = 0',
'                         AND t.COMPCODE = :compcode',
'                GROUP BY t.SLSOFRNO_FK, t.TGT_FG_ITEMCODE)) q,',
'       (SELECT d.COMPCODE, D.WARECODE, c.PROCESS_NO',
'          FROM prdepartment d, prprocess c, PRPROCESSRGT g',
'         WHERE     D.COMPCODE = C.COMPCODE',
'               AND D.DEPT_NO = C.DEPT_NO',
'               And G.PROCESS_NO = C.PROCESS_NO',
'               AND D.COMPCODE = :compcode',
'               and G.USER_CODE = :APP_USER ) w',
' WHERE     a.statuscd = ''APR''',
'--  and a.SLSOFRNO=10029',
'       AND q.SLSOFRNO_FK(+) = a.SLSOFRNO',
'       AND a.compcode = b.compcode',
'       AND a.partycde = b.partycde',
'     --  AND q.PROCESS_NO = w.PROCESS_NO(+)',
'       AND a.compcode = :compcode',
'       AND a.ITEMCODE = NVL (q.TGT_FG_ITEMCODE, a.ITEMCODE)',
'       AND NVL ( (a.apprqnty - (q.TARGET_QTY + q.Inprogress_qty)), a.apprqnty)=0'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1519_LIST'
,p_plug_display_when_cond2=>'C'
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
 p_id=>wwv_flow_api.id(143678781917817461)
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
,p_owner=>'RILADM'
,p_internal_uid=>106523914792136967
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72673241805498625)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72673599560498628)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72674011167498628)
,p_db_column_name=>'REMAINING_QUANTITY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Remaining quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72674445761498630)
,p_db_column_name=>'REQUEST_QUANTITY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Request quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72674805223498630)
,p_db_column_name=>'COMPLETE_QUANTITY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Complete quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72675263388498630)
,p_db_column_name=>'INPROGRESS_QUANTITY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Inprogress quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72675585143498631)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72676039965498631)
,p_db_column_name=>'SLSOFRNO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Slsofrno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72676450266498631)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72676826621498631)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72677170605498631)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(143693232524818538)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'355227'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCNUMBR:ITEMCODE:REQUEST_QUANTITY:INPROGRESS_QUANTITY:COMPLETE_QUANTITY:REMAINING_QUANTITY:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72672476502495650)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(135999375240540334)
,p_button_name=>'CREATE'
,p_button_static_id=>'hiddenCreate'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:1520:&SESSION.::&DEBUG.:1520::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'plus insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72678007063498635)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(171517460143358456)
,p_button_name=>'CREATE'
,p_button_static_id=>'hiddenCreate'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:1520:&SESSION.::&DEBUG.:1520::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'plus insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71968524186871229)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(100486832075725190)
,p_button_name=>'CREATE'
,p_button_static_id=>'hiddenCreate'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1520:&SESSION.::&DEBUG.:1520::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'plus insetButton'
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
 p_id=>wwv_flow_api.id(72649624900184210)
,p_name=>'P1519_LIST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(116791522572040117)
,p_item_default=>'P'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
null;
wwv_flow_api.component_end;
end;
/
