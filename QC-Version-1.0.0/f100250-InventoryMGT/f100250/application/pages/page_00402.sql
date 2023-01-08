prompt --application/pages/page_00402
begin
--   Manifest
--     PAGE: 00402
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
 p_id=>402
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Issue Return Report'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_reload_on_submit=>'A'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function calculateTotal3(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P10_DOCNUMBER'').value=',
'    html_GetElement(''f14_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P10_DOCNUMBER'').trigger(''click'');',
'});',
'}',
'</script>',
'',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(function(){',
'   clicked_empno = $("#P10_PROGNAME").val();',
'   $(''a[href$="P10_PROGNAME:''+clicked_empno+''"]'').parent().parent().children().addClass(''highlight-employee'') ;',
'});'))
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
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_item_val VARCHAR2 (100):= apex_application.g_x01;',
'  v_checked_flag VARCHAR2 (1) := apex_application.g_x02;',
'BEGIN',
'  IF v_checked_flag = ''Y'' THEN',
'    -- Add to the list',
'    IF :f_empno_list IS NULL THEN',
'      :f_empno_list := '','' || v_item_val || '','';',
'    ELSE',
'      :f_empno_list := :f_empno_list || v_item_val|| '','' ;',
'    END IF;',
'  ELSE',
'    -- Remove from the list',
'    :f_empno_list := REPLACE (:f_empno_list, '','' || v_item_val || '','', '','');',
'    ',
'  END IF;',
' ',
'  -- Just for testing',
'  HTP.p (:f_empno_list);',
'END;'))
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201215205432'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(288309156020602583)
,p_plug_name=>'Warehouse Issue Report'
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
'                sum((select sum(b.APPRQNTY) from nmstkrec b where b.compcode=s.compcode and b.UPDOCNUM=s.DOCNUMBR and b.ITEMCODE=s.ITEMCODE and b.UPDOCTYP=''RC'' and b.UPSUBTYP=3)) Receive_qty,                ',
'                sum((select sum(b.APPRQNTY) from nmstkrec b where b.compcode=s.compcode and b.DWDOCNUM=s.DOCNUMBR and b.ITEMCODE=s.ITEMCODE and b.DWDOCTYP=''RC'' and b.DWSUBTYP=3)) Request_qty,',
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
'    ''RETURN'' LINK',
' FROM nmstkrec s',
'WHERE compcode = :COMPCODE',
'  AND docttype = :P402_PRDOCTYP ',
'  AND subttype = :P402_PRSUBTYP',
'  and (nvl(apprqnty,0) - nvl(trnsqnty,0)) > 0',
'  AND (costcode IN (SELECT cabasecc',
'                      FROM sycstacc',
'                     WHERE compcode = NVL(:COMPCODE,:P426_COMPCODE)',
'                       AND grupcode = :APP_USER',
'                 ))',
'group by s.COMPCODE,s.RAISEDBY,s.postflag,s.WARECODE,s.DOCTTYPE, s.SUBTTYPE, s.DOCNUMBR, s.DOCTDATE,s.statuscd, s.SRCWRECD,s.REFNDATE,',
'refnumbr, s.currcode, s.excgrate, s.reqddate, s.partycde, s.costcode, s.BILLPARTY, s.BATCHNUM, s.BATCHDTE, s.UPDOCNUM',
'ORDER BY doctdate DESC, docnumbr DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P402_PRDOCTYP,P402_PRSUBTYP'
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
 p_id=>wwv_flow_api.id(288309528056602585)
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
,p_internal_uid=>303825672253268627
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13596199571914862)
,p_db_column_name=>'LINK'
,p_display_order=>10
,p_column_identifier=>'BH'
,p_column_label=>'Action'
,p_column_link=>'f?p=&APP_ID.:406:&SESSION.::&DEBUG.:RP,406:P406_PRVDNO,P406_PRVDDT,P406_REFNUM,P406_REFNDATE,P406_WARECODE,P406_SRWHSCDE:#DOCNUMBR#,#DOCTDATE#,#REFNUMBR#,#REFNDATE#,#WARECODE#,#SRCWRECD##ISSUNO#'
,p_column_linktext=>'#LINK#'
,p_column_link_attr=>'class="t-Button t-Button--hot"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12783004386119885)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>20
,p_column_identifier=>'AC'
,p_column_label=>'Docnumber Details'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13129572134835096)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>30
,p_column_identifier=>'AR'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26904582274561019)
,p_db_column_name=>'ID'
,p_display_order=>60
,p_column_identifier=>'BJ'
,p_column_label=>'Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26904629849561020)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>70
,p_column_identifier=>'BK'
,p_column_label=>'Document Detail'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26904719385561021)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>80
,p_column_identifier=>'BL'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26904876274561022)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>90
,p_column_identifier=>'BM'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26904942763561023)
,p_db_column_name=>'UNIT'
,p_display_order=>100
,p_column_identifier=>'BN'
,p_column_label=>'Unit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26905006758561024)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>110
,p_column_identifier=>'BO'
,p_column_label=>'Checkbox'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26905127053561025)
,p_db_column_name=>'DELCHECKBOX'
,p_display_order=>120
,p_column_identifier=>'BP'
,p_column_label=>'Delcheckbox'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26905206614561026)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>130
,p_column_identifier=>'BQ'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26905316571561027)
,p_db_column_name=>'RAISEDFROM'
,p_display_order=>140
,p_column_identifier=>'BR'
,p_column_label=>'Warehouse'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26905462328561028)
,p_db_column_name=>'STATUSCD'
,p_display_order=>150
,p_column_identifier=>'BS'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26905741894561031)
,p_db_column_name=>'REQUEST_QTY'
,p_display_order=>160
,p_column_identifier=>'BV'
,p_column_label=>'Approve Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26905577105561029)
,p_db_column_name=>'ISSUE_QTY'
,p_display_order=>170
,p_column_identifier=>'BT'
,p_column_label=>'Receive Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26905636206561030)
,p_db_column_name=>'RECEIVE_QTY'
,p_display_order=>180
,p_column_identifier=>'BU'
,p_column_label=>'Return Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26905858491561032)
,p_db_column_name=>'PRINT_COLUMN'
,p_display_order=>190
,p_column_identifier=>'BW'
,p_column_label=>'Print Column'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26905998800561033)
,p_db_column_name=>'WARECODE'
,p_display_order=>200
,p_column_identifier=>'BX'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26906027685561034)
,p_db_column_name=>'SRCWRECD'
,p_display_order=>210
,p_column_identifier=>'BY'
,p_column_label=>'Srcwrecd'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26906163377561035)
,p_db_column_name=>'REFNDATE'
,p_display_order=>220
,p_column_identifier=>'BZ'
,p_column_label=>'Refndate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26906200731561036)
,p_db_column_name=>'REFNUMBR'
,p_display_order=>230
,p_column_identifier=>'CA'
,p_column_label=>'Refnumbr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26906357020561037)
,p_db_column_name=>'CURRCODE'
,p_display_order=>240
,p_column_identifier=>'CB'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26906465441561038)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>250
,p_column_identifier=>'CC'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26906543754561039)
,p_db_column_name=>'REQDDATE'
,p_display_order=>260
,p_column_identifier=>'CD'
,p_column_label=>'Reqddate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26906679637561040)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>270
,p_column_identifier=>'CE'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26906769824561041)
,p_db_column_name=>'COSTCODE'
,p_display_order=>280
,p_column_identifier=>'CF'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26906826222561042)
,p_db_column_name=>'BILLPARTY'
,p_display_order=>290
,p_column_identifier=>'CG'
,p_column_label=>'Billparty'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26906930582561043)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>300
,p_column_identifier=>'CH'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26907096242561044)
,p_db_column_name=>'BATCHDTE'
,p_display_order=>310
,p_column_identifier=>'CI'
,p_column_label=>'Batchdte'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47187264265642246)
,p_db_column_name=>'UPDOCNUM'
,p_display_order=>320
,p_column_identifier=>'CJ'
,p_column_label=>'Issue No.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(288314839282602588)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'265249'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK:DOCDETAIL:UPDOCNUM:ISSUE_QTY:RECEIVE_QTY:RAISEDFROM:'
,p_sort_column_1=>'DOCTDATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'DOCNUMBR'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(288317323612602589)
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
 p_id=>wwv_flow_api.id(11009238244665839)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(288309156020602583)
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
 p_id=>wwv_flow_api.id(11009621773665841)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(288309156020602583)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure Delete the docnumber &P402_DELDOCNUMBER. Really?'', ''DELETE'');'
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
 p_id=>wwv_flow_api.id(11009996534665841)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(288309156020602583)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:296:&SESSION.::&DEBUG.:296:P296_DOCTTYPE,P296_SUBTTYPE,P296_DOCDESC,P296_S_PRDTYP,P296_S_PRSTYP:&P402_TRANTYPE.,&P402_SUBTTYPE.,&P402_NARATION.,&P402_PRDOCTYP.,&P402_PRSUBTYP.'
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
 p_id=>wwv_flow_api.id(11010450127665844)
,p_name=>'P402_POSTSTATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(288309156020602583)
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
 p_id=>wwv_flow_api.id(11010851472665851)
,p_name=>'P402_TRANTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(288309156020602583)
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11011169117665851)
,p_name=>'P402_SUBTTYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(288309156020602583)
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11011607961665852)
,p_name=>'P402_REQUEST'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(288309156020602583)
,p_item_default=>':REQUEST'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11011975014665852)
,p_name=>'P402_DELDOCNUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(288309156020602583)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11018384233665861)
,p_name=>'P402_PRDOCTYP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(288309156020602583)
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
 p_id=>wwv_flow_api.id(11018815413665862)
,p_name=>'P402_PRSUBTYP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(288309156020602583)
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
 p_id=>wwv_flow_api.id(11019157502665862)
,p_name=>'P402_NARATION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(288309156020602583)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(11019751265665874)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'89'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(11020113911665874)
,p_computation_sequence=>10
,p_computation_item=>'P65_PROGNAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P65_PROGNAME.'
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11027385080665882)
,p_name=>'Delete Multiple Docnumber'
,p_event_sequence=>250
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f11"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11027905896665882)
,p_event_id=>wwv_flow_api.id(11027385080665882)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P402_DELDOCNUMBER'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var deldoc=  $(''#nmwhstrn input[name="f11"]:checked'').map(function(){',
'                  return $(this).val()',
'              }).get().join('':'')',
'',
'$(''#P402_DELDOCNUMBER'').val(deldoc)'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11808185127185520)
,p_name=>'Close Dialog'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(11009238244665839)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11808294349185521)
,p_event_id=>wwv_flow_api.id(11808185127185520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11020446025665875)
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
'If :P402_PROGNM  is null and :P402_NO is null then',
'   :P402_PROGNM := :FX_PROG_NAME;',
'   :P402_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P402_PROGNM,',
'                                      p_parentnm =>:P402_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P402_OPRSTAMP := :app_user;',
'  --:P402_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P402_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P402_PROGNM;',
'   :FX_PAGE_NO := :P402_NO;',
'Elsif :FX_PROG_NAME <> :P402_PROGNM And :FX_PAGE_NO <> :P402_NO Then',
'   :FX_PROG_NAME := :P402_PROGNM;',
'   :FX_PAGE_NO := :P402_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26907221547561046)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11009238244665839)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11021167924665876)
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
