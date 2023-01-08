prompt --application/pages/page_00407
begin
--   Manifest
--     PAGE: 00407
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
 p_id=>407
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Purchase Return Report'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_reload_on_submit=>'A'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'table.report-standard tr.normalRow td{',
'background-color: blue;',
'}',
'table.report-standard tr.altRow td{',
'background-color: red;',
'}',
'#tabs .bg {',
'    height: 8px ! important;',
'    }',
'.a-IRR-table td {',
'    padding: 1px 13px;',
'}'))
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201103152925'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(317025770036853001)
,p_plug_name=>'Warehouse Issue  Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY_1'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT   s.docnumbr',
'                || ''/''',
'                || s.doctdate',
'                || ''/''',
'                || s.docttype',
'                || ''/''',
'                || s.subttype ID,',
'                   s.docnumbr',
'                || ''/''',
'                || s.doctdate',
'                || ''/''',
'                || s.docttype',
'                || ''/''',
'                || s.subttype AS docdetail,',
'               s.docttype,s.subttype,count(itemcode) Unit,',
'               apex_item.checkbox (1,',
'                           DOCNUMBR,',
'                           ''onchange="spCheckChange(this);"'',',
'                           :f_empno_list,',
'                           '',''',
'                          ) checkbox,',
'                apex_item.checkbox2(11, DOCNUMBR) delcheckbox,',
'                s.docnumbr AS docnumbr, s.doctdate AS doctdate,',
'                --LISTAGG(s.itemcode, '', '') WITHIN GROUP (ORDER BY s.itemcode) itemcode,',
'                --LISTAGG(s.itemdesc, '', '') WITHIN GROUP (ORDER BY s.itemdesc) itemdesc,',
'                --wm_concat(s.itemcode) AS itemcode, ',
'                --wm_concat(distinct s.itemcode||''-''||s.itemdesc) AS itemdesc,',
'                 (SELECT INITCAP (s.RAISEDBY|| ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = s.RAISEDBY) RAISEDBY ,',
'           INITCAP (',
'            (SELECT s.WARECODE||'' - ''||WAREDESC',
'               FROM nmwhsmas',
'              WHERE WARECODE =s.WARECODE',
'                    AND COMPCODE = s.compcode))',
'            raisedfrom,',
'                s.statuscd AS statuscd,',
'                sum(s.APPRQNTY) Issue_qty,',
'                sum(s.TRNSQNTY) Return_qty,',
'                --sum((select sum(b.APPRQNTY) from nmprocur b where b.compcode=s.compcode and b.DOCNUMBR=s.UPDOCNUM and b.DWDOCTYP=''RC'' and b.DWSUBTYP=1 and b.ITEMCODE=s.ITEMCODE)) Receive_qty,                ',
'                --sum((select sum(b.APPRQNTY) from nmstkrec b where b.compcode=s.compcode and b.DWDOCNUM=s.DOCNUMBR and b.ITEMCODE=s.ITEMCODE and b.DWDOCTYP=''RC'' and b.DWSUBTYP=3)) Request_qty,',
'                ''<div  style="padding-left: 10px;font-weight:bold;"><a href="''||apex_util.prepare_url ( ''f?p=&APP_ID.:''',
'                                    ||76',
'                                    ||'':''',
'                                    || :app_session',
'                                    || '':ADD:NO:''',
'                                    ||76',
'                                    ||'':P''',
'                                    ||76',
'                                    ||''_PROGNAME,P''',
'                                    ||76',
'                                    ||''_DOCNUMBR,P''',
'                                    ||76',
'                                    ||''_DOCTTYPE,P''',
'                                    ||76',
'                                    ||''_SUBTTYPE:''',
'                                    ||''nmissch2,''',
'                                    ||s.docnumbr',
'                                    ||'',''',
'                                    || s.docttype',
'                                    ||'',''',
'                                    || s.subttype',
'                                    ||'':''',
'                                   )',
'          || ''" class="uButton uAltButton iconButton plus"><span><button id="printbut" style="display: block;',
'    font-size: 1.0em;',
'    font-weight: bold;',
'    text-transform: Initcap;',
'    padding: 3px 13px;',
'    margin: 1px auto;',
'    color: #ccc;',
'    background-color: #555;',
'    background: -webkit-linear-gradient(#888, #555);',
'    background: linear-gradient(#888, #555);',
'    border: 0 none;',
'    border-radius: 3px;',
'    text-shadow: 0 -1px 0 #000;',
'    box-shadow: 0 1px 0 #666, 0 0px 0 #444, 0 6px 6px rgba(0,0,0,0.6);',
'    cursor: pointer;',
'    -webkit-transition: all 150ms ease;',
'    transition: all 150ms ease;" type="button">Print</button><i class="iR"></i></span></a></div>'' print_column,',
'    s.WARECODE,',
'    s.SRCWRECD,',
'    s.REFNDATE,',
'    NVL (s.refnumbr, ''R'') refnumbr,',
'    s.currcode,',
'    s.excgrate,',
'    s.reqddate,',
'    s.partycde,',
'    s.costcode,',
'    s.BILLPARTY,',
'    s.BATCHNUM,',
'    s.BATCHDTE,',
'    s.UPDOCNUM,',
'    s.UPDOCDTE,',
'    ''RETURN'' LINK',
' FROM nmstkrec s',
'WHERE compcode = :COMPCODE',
'  AND docttype = :P407_PRDOCTYP ',
'  AND subttype in (1,2) -- :P407_PRSUBTYP',
'  and (nvl(apprqnty,0) - nvl(trnsqnty,0)) > 0',
'AND (costcode IN (SELECT cabasecc',
'                    FROM sycstacc',
'                   WHERE compcode = NVL(:COMPCODE,:P426_COMPCODE)',
'                     AND grupcode = :APP_USER',
'                 ))',
'group by s.COMPCODE,s.RAISEDBY,s.WARECODE,s.DOCTTYPE, s.SUBTTYPE, s.DOCNUMBR, s.DOCTDATE,s.statuscd, s.SRCWRECD,s.REFNDATE,',
'refnumbr, s.currcode, s.excgrate, s.reqddate, s.partycde, s.costcode, s.BILLPARTY, s.BATCHNUM, s.BATCHDTE, s.UPDOCNUM, s.UPDOCDTE',
'ORDER BY doctdate DESC, docnumbr DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P407_COMPCODE_APPLICATION,P407_PRDOCTYP,P407_PRSUBTYP'
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
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'/*DISTINCT   s.UPDOCNUM',
'                || ''/''',
'                || s.UPDOCDTE',
'                || ''/''',
'                || s.UPDOCTYP',
'                || ''/''',
'                || s.UPSUBTYP',
'                || ''/''',
'                || s.serlnumb ID,',
'                   s.UPDOCNUM',
'                || ''/''',
'                || s.UPDOCDTE',
'                || ''/''',
'                || s.UPDOCTYP',
'                || ''/''',
'                || s.UPSUBTYP AS docdetail,  ',
'                */              ',
'                S.UPDOCNUM ISSUE_NO, ',
'                S.DOCNUMBR RCV_NO,',
'                S.DOCTDATE ISSUE_DT,    ',
'                S.APPRQNTY IS_QTR,',
'                S.TRNSQNTY RC_QTY,',
'                0 RET_QTY,',
'                APPRQNTY - TRNSQNTY BAL         ',
'                ',
'--s.docttype,s.subttype',
'/*',
'(select WAREDESC from nmwhsmas where compcode=s.compcode and WARECODE=s.SRCWRECD) WARECODE_FROM,',
'(select WAREDESC from nmwhsmas where compcode=s.compcode and WARECODE=s.WARECODE) WARECODE_TO,',
' (select distinct BATCHNUM from nmstkrec where  COMPCODE=s.COMPCODE and DOCNUMBR=s.UPDOCNUM and DOCTTYPE=''MI'' and SUBTTYPE=2) STYLE_NO,',
'               apex_item.checkbox (1,',
'                           DOCNUMBR,',
'                           ''onchange="spCheckChange(this);"'',',
'                           :f_empno_list,',
'                           '',''',
'                          ) checkbox,',
'                apex_item.checkbox2(11, DOCNUMBR) delcheckbox,',
'                s.docnumbr AS docnumbr, s.doctdate AS doctdate,',
'                (SELECT usercode || '':'' || username',
'                   FROM syusrmas u',
'                  WHERE usercode = s.raisedby',
'                    AND u.divncode = :compcode) AS raised_by,',
'                s.itemcode AS itemcode, s.itemdesc AS itemdesc,',
'                s.statuscd AS statuscd,',
'                ''<div  style="padding-left: 10px;font-weight:bold;"><a ',
'',
'href="''||apex_util.prepare_url ( ''f?p=&APP_ID.:''',
'                                    ||49',
'                                    ||'':''',
'                                    || :app_session',
'                                    || '':ADD:NO:''',
'                                    ||49',
'                                    ||'':P''',
'                                    ||49',
'                                    ||''_PROGNAME,P''',
'                                    ||49',
'                                    ||''_DOCNUMBR:''',
'                                    ||''nmissch2,''',
'                                    ||s.UPDOCNUM',
'                                    ||'':''',
'                                   )',
'          || ''" class="uButton uAltButton iconButton plus"><span><button ',
'',
'id="printbut" style="display: block;',
'    font-size: 1.0em;',
'    font-weight: bold;',
'    text-transform: Initcap;',
'    padding: 3px 13px;',
'    margin: 1px auto;',
'    color: #ccc;',
'    background-color: #555;',
'    background: -webkit-linear-gradient(#888, #555);',
'    background: linear-gradient(#888, #555);',
'    border: 0 none;',
'    border-radius: 3px;',
'    text-shadow: 0 -1px 0 #000;',
'    box-shadow: 0 1px 0 #666, 0 0px 0 #444, 0 6px 6px rgba(0,0,0,0.6);',
'    cursor: pointer;',
'    -webkit-transition: all 150ms ease;',
'    transition: all 150ms ease;" type="button">Print</button><i ',
'',
'class="iR"></i></span></a></div>'' print_column,UPDOCNUM*/',
'           FROM nmstkrec  s',
'           WHERE compcode = :compcode ',
'            AND docttype = ''RC'' --:P402_TRANTYPE --:P402_PRDOCTYP',
'            AND subttype = 1 --:P402_SUBTTYPE --:P402_PRSUBTYP',
'            --AND UPDOCTYP = ''IS''',
'            AND (costcode IN (SELECT cabasecc',
'                                FROM sycstacc',
'                               WHERE compcode = :compcode  ',
'                                 AND grupcode = :APP_USER))',
'--GROUP BY   DOCNUMBR, DOCTDATE, UPDOCNUM                               ',
'       ORDER BY doctdate DESC--, docnumbr DESC'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(317026142072853003)
,p_name=>'test'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'100'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'RILADM'
,p_internal_uid=>332542286269519045
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13203113446584419)
,p_db_column_name=>'LINK'
,p_display_order=>10
,p_column_identifier=>'AQ'
,p_column_label=>'Action'
,p_column_link=>'f?p=&APP_ID.:409:&SESSION.::&DEBUG.:RP,409:P409_PRVDNO,P409_PRVDDT,P409_WARECODE,P409_SUPPLIERCDE,P409_UPDOCNUM,P409_UPDOCDTE,P409_REFNUM,P409_REFNDATE,P409_CURRCODE,P409_EXCGRATE:#DOCNUMBR#,#DOCTDATE#,#WARECODE#,#PARTYCDE#,#UPDOCNUM#,#UPDOCDTE#,#REF'
||'NUMBR#,#REFNDATE#,#CURRCODE#,#EXCGRATE#'
,p_column_linktext=>'#LINK#'
,p_column_link_attr=>'class="t-Button t-Button--hot"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13201491055584417)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>20
,p_column_identifier=>'AC'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13126415543835064)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>30
,p_column_identifier=>'AT'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26907541334561049)
,p_db_column_name=>'ID'
,p_display_order=>40
,p_column_identifier=>'AU'
,p_column_label=>'Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26907668548561050)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>50
,p_column_identifier=>'AV'
,p_column_label=>'Document Detail'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27559619554252501)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>60
,p_column_identifier=>'AW'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27559752403252502)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>70
,p_column_identifier=>'AX'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27559820874252503)
,p_db_column_name=>'UNIT'
,p_display_order=>80
,p_column_identifier=>'AY'
,p_column_label=>'Unit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27559902181252504)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>90
,p_column_identifier=>'AZ'
,p_column_label=>'Checkbox'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27560054516252505)
,p_db_column_name=>'DELCHECKBOX'
,p_display_order=>100
,p_column_identifier=>'BA'
,p_column_label=>'Delcheckbox'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27560322029252508)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>130
,p_column_identifier=>'BD'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27560438311252509)
,p_db_column_name=>'RAISEDFROM'
,p_display_order=>140
,p_column_identifier=>'BE'
,p_column_label=>'Warehouse'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27560574715252510)
,p_db_column_name=>'STATUSCD'
,p_display_order=>150
,p_column_identifier=>'BF'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27560634047252511)
,p_db_column_name=>'ISSUE_QTY'
,p_display_order=>190
,p_column_identifier=>'BG'
,p_column_label=>'Receive Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100913165421509219)
,p_db_column_name=>'RETURN_QTY'
,p_display_order=>200
,p_column_identifier=>'BY'
,p_column_label=>'Return Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27560968424252514)
,p_db_column_name=>'PRINT_COLUMN'
,p_display_order=>210
,p_column_identifier=>'BJ'
,p_column_label=>'Print Column'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27561020431252515)
,p_db_column_name=>'WARECODE'
,p_display_order=>220
,p_column_identifier=>'BK'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27561108119252516)
,p_db_column_name=>'SRCWRECD'
,p_display_order=>230
,p_column_identifier=>'BL'
,p_column_label=>'Srcwrecd'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27561293139252517)
,p_db_column_name=>'REFNDATE'
,p_display_order=>240
,p_column_identifier=>'BM'
,p_column_label=>'Refndate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27561370473252518)
,p_db_column_name=>'REFNUMBR'
,p_display_order=>250
,p_column_identifier=>'BN'
,p_column_label=>'Refnumbr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27561460475252519)
,p_db_column_name=>'CURRCODE'
,p_display_order=>260
,p_column_identifier=>'BO'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27561590601252520)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>270
,p_column_identifier=>'BP'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27561633426252521)
,p_db_column_name=>'REQDDATE'
,p_display_order=>280
,p_column_identifier=>'BQ'
,p_column_label=>'Reqddate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27561704103252522)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>290
,p_column_identifier=>'BR'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27561839381252523)
,p_db_column_name=>'COSTCODE'
,p_display_order=>300
,p_column_identifier=>'BS'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27561959145252524)
,p_db_column_name=>'BILLPARTY'
,p_display_order=>310
,p_column_identifier=>'BT'
,p_column_label=>'Billparty'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27562077310252525)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>320
,p_column_identifier=>'BU'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27562104819252526)
,p_db_column_name=>'BATCHDTE'
,p_display_order=>330
,p_column_identifier=>'BV'
,p_column_label=>'Batchdte'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47187159346642245)
,p_db_column_name=>'UPDOCNUM'
,p_display_order=>340
,p_column_identifier=>'BW'
,p_column_label=>'PO No.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100912828129509216)
,p_db_column_name=>'UPDOCDTE'
,p_display_order=>350
,p_column_identifier=>'BX'
,p_column_label=>'Updocdte'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(317031453298853006)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'287196'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK:DOCDETAIL:UPDOCNUM:ISSUE_QTY:RETURN_QTY:RAISEDFROM:PRINT_COLUMN:'
,p_sort_column_1=>'DOCTDATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'DOCNUMBR'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(317033937628853007)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13204272889584428)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(317025770036853001)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13204726201584428)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(317025770036853001)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure Delete the docnumber &P407_DELDOCNUMBER. Really?'', ''DELETE'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(5);',
'begin',
'/*',
'select distinct DELSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y'' then',
'return true;',
'else',
'return false;',
'end if;',
'*/',
'return true;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13203925241584426)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(317025770036853001)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:409:&SESSION.::&DEBUG.:409::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(5);',
'begin',
'/*',
'select ADDSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y'' then',
'return true;',
'else',
'return false;',
'end if;',
'*/',
'return true;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13126483265835065)
,p_name=>'P407_COMPCODE_APPLICATION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(317025770036853001)
,p_item_default=>':compcode'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13205094252584432)
,p_name=>'P407_POSTSTATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(317025770036853001)
,p_item_default=>'N'
,p_prompt=>'<strong>Post Status</strong>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'REDIRECT_SET_VALUE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SYCODDES d,SYSOFCDE r from sycodmas where SYSOFCDE in',
'(select distinct PARTYTYP from sycompty)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''SY''',
'and SYHRDCDE=''CUS'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13205537944584435)
,p_name=>'P407_TRANTYPE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(317025770036853001)
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13205894973584435)
,p_name=>'P407_SUBTTYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(317025770036853001)
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13206287924584435)
,p_name=>'P407_REQUEST'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(317025770036853001)
,p_item_default=>':REQUEST'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13206752547584435)
,p_name=>'P407_DELDOCNUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(317025770036853001)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13213225961584443)
,p_name=>'P407_PRDOCTYP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(317025770036853001)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prdoctyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13213638161584444)
,p_name=>'P407_PRSUBTYP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(317025770036853001)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prsubtyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13213990067584444)
,p_name=>'P407_NARATION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(317025770036853001)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13214505445584455)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'89'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13214952909584456)
,p_computation_sequence=>10
,p_computation_item=>'P65_PROGNAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P65_PROGNAME.'
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13217676409584461)
,p_name=>'set value on P407_XURL'
,p_event_sequence=>9
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13218150411584461)
,p_event_id=>wwv_flow_api.id(13217676409584461)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P407_XURL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'location.hostname;'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13218485005584461)
,p_name=>'set value on P407_XURLTEST'
,p_event_sequence=>19
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13218989316584461)
,p_event_id=>wwv_flow_api.id(13218485005584461)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P407_XURLTEST'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2015/01/21 12:15 (Formatter Plus v4.8.8) */',
'DECLARE',
'   l_error      VARCHAR2 (4000);',
'   sale         VARCHAR2 (4000);',
'   item         VARCHAR2 (4000);',
'   v_url        VARCHAR2 (500);',
'   v_devdoc     VARCHAR2 (500);',
'   v_gatdoc     VARCHAR2 (500);',
'   l_order_id   VARCHAR2 (50);',
'   l_seq        NUMBER;',
'BEGIN',
'   IF :PROGNAME = ''nmpurren''',
'   THEN',
'      v_url :=',
'            ''http://''',
'         || :p407_xurl',
'         || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\Orbrgs_Web\nm\bin\''',
'         || :PROGNAME',
'         || ''&'';',
'      v_url := v_url ||''P0=''||''100''|| ''&P13='' || :F_EMPNO_LIST;',
'return v_url;',
'   END IF;',
'END;'))
,p_attribute_07=>'P407_XURL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13219443283584461)
,p_name=>'assign url'
,p_event_sequence=>29
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13219914087584462)
,p_event_id=>wwv_flow_api.id(13219443283584461)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':XURLTEST:=:P407_XURLTEST;',
'end;'))
,p_attribute_02=>'P407_XURLTEST'
,p_attribute_03=>'XURLTEST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13220341741584462)
,p_name=>'call modal'
,p_event_sequence=>59
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13220810617584462)
,p_event_id=>wwv_flow_api.id(13220341741584462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:65:&APP_SESSION.:::65:::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'95'
,p_attribute_09=>'90'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13221245271584462)
,p_name=>'change row colour'
,p_event_sequence=>230
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f01"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13221695671584463)
,p_event_id=>wwv_flow_api.id(13221245271584462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'onclick=highLight(this);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13222134822584463)
,p_name=>'Delete Multiple Docnumber'
,p_event_sequence=>250
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f11"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13222599426584463)
,p_event_id=>wwv_flow_api.id(13222134822584463)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P407_DELDOCNUMBER'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var deldoc=  $(''#nmwhstrn input[name="f11"]:checked'').map(function(){',
'                  return $(this).val()',
'              }).get().join('':'')',
'',
'$(''#P407_DELDOCNUMBER'').val(deldoc)'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13222963962584463)
,p_name=>'print document'
,p_event_sequence=>260
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#printbut'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13223478973584463)
,p_event_id=>wwv_flow_api.id(13222963962584463)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' APEX_UTIL.DOWNLOAD_PRINT_DOCUMENT (',
' p_file_name => ''mydocument'',',
' p_content_disposition => ''attachment'',',
' p_application_id => :APP_ID,',
' p_report_query_name => ''multiple_requsition_entry'',',
' p_report_layout => ''multiple_requsition_entry'',',
' p_report_layout_type => ''xsl-fo'',',
' p_document_format => ''pdf'');',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13216823915584458)
,p_name=>'closeX'
,p_event_sequence=>270
,p_bind_type=>'live'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13217311293584460)
,p_event_id=>wwv_flow_api.id(13216823915584458)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'parent.$(''.ui-dialog-titlebar-close'').hide();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10868241715135243)
,p_name=>'Close Dialog'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13204272889584428)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10868358550135244)
,p_event_id=>wwv_flow_api.id(10868241715135243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13215226880584456)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- code update by Md. Zahidul Islam--',
'begin',
'select PROGNAME into :FX_PROG_NAME from SYMENMAS where PAGEID=:APP_PAGE_ID;',
'',
':FX_PAGE_NO:=:APP_PAGE_ID;',
'exception',
'',
'when no_data_found then',
' --apex_application.g_print_success_message :=''Error..No page found'';',
' htp.init();',
' owa_util.redirect_url(''f?p=''||:APP_ID||'':1:''||:APP_SESSION, true);',
' --apex_application.g_print_success_message :=''Error..No page found'';',
'when too_many_rows then',
' raise_application_error(-20003,''Too Many Page ID found in database'');',
'end;',
'--- code updated--',
'',
'',
'If :P407_PROGNM  is null and :P407_NO is null then',
'   :P407_PROGNM := :FX_PROG_NAME;',
'   :P407_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P407_PROGNM,',
'                                      p_parentnm =>:P407_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P407_OPRSTAMP := :app_user;',
'  --:P407_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P407_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P407_PROGNM;',
'   :FX_PAGE_NO := :P407_NO;',
'Elsif :FX_PROG_NAME <> :P407_PROGNM And :FX_PAGE_NO <> :P407_NO Then',
'   :FX_PROG_NAME := :P407_PROGNM;',
'   :FX_PAGE_NO := :P407_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13216420616584458)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Docnumber on Delete button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  l_deldoc  apex_application_global.vc_arr2 := apex_util.string_to_table(:P407_DELDOCNUMBER);',
'begin',
'   for i in 1 .. l_deldoc.count',
'   loop',
'      delete from nmprocur  where docnumbr   = l_deldoc(i);',
'   end loop;',
'  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Delete Successfully....'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26907465535561048)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13204272889584428)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13215986020584457)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create or Truncate SALES Collection For REPORT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection',
'  (p_collection_name => ''SALES'');'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
