prompt --application/pages/page_00383
begin
--   Manifest
--     PAGE: 00383
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
 p_id=>383
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Product Exchange Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Product Exchange Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
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
''))
,p_dialog_width=>'100%'
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
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180827173334'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(143327566174812376)
,p_plug_name=>'Direct Sales Invoice'
,p_region_name=>'nmprocur'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
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
's.docttype,s.subttype,count(itemcode) Unit,',
'               apex_item.checkbox (1,',
'                           DOCNUMBR,',
'                           ''onchange="spCheckChange(this);"'',',
'                           :f_empno_list,',
'                           '',''',
'                          ) checkbox,',
'                apex_item.checkbox2(11, DOCNUMBR) delcheckbox,',
'                s.docnumbr AS docnumbr, s.doctdate AS doctdate,s.WARECODE,',
'                wm_concat(s.itemcode) AS itemcode, wm_concat(distinct s.itemdesc) AS itemdesc,',
'                 (SELECT INITCAP (s.SMANCODE|| ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = s.SMANCODE) RAISEDBY ,',
'           INITCAP (',
'            (SELECT s.WARECODE||'' : ''||WAREDESC',
'               FROM nmwhsmas',
'              WHERE WARECODE =s.WARECODE',
'                    AND COMPCODE = s.compcode))',
'            raisedfrom,',
'            decode(s.DOCNUMBR,null,null,''Customer Card'') cutomer_card,',
'            wm_concat(distinct b.PRTYNAME) CUSTMR_NAME, wm_concat(distinct b.PARTYAD1) ADDRESS, wm_concat(distinct b.PEMAILID) CUSTMAIL, wm_concat(distinct b.MOBILENO) PHONE,',
'                s.statuscd AS statuscd,sum(s.APPRQNTY) sale_qty,sum((select sum(b.APPRQNTY) from nmslsofr b where b.compcode=s.compcode and b.DOCNUMBR=s.UPDOCNUM and b.ITEMCODE=s.ITEMCODE and b.DOCTTYPE=''SO'' and b.SUBTTYPE=2)) offer_qty,',
'                sum((select  sum(b.APPRQNTY)  from nmdevrec  b where   b.compcode=s.compcode   and b.UPDOCNUM IN (select distinct b.UPDOCNUM from nmsalrec b where b.compcode=s.compcode and b.ITEMCODE=s.ITEMCODE and b.UPDOCNUM=s.DOCNUMBR  and b.DOCTTY'
||'PE=''SI'' and b.SUBTTYPE=2) and b.DOCTTYPE=''SI'' and b.SUBTTYPE=2 )) Delivery_qty,',
'                ''<div  style="padding-left: 10px;font-weight:bold;"><a href="''||apex_util.prepare_url ( ''f?p=&APP_ID.:''',
'                                    ||49',
'                                    ||'':''',
'                                    || :app_session',
'                                    || '':ADD:NO:''',
'                                    ||49',
'                                    ||'':P''',
'                                    ||49',
'                                    ||''_PROGNAME,P''',
'                                    ||49',
'                                    ||''_DOCNUMBR,P''',
'                                    ||49',
'                                    ||''_DOCTTYPE,P''',
'                                    ||49',
'                                    ||''_SUBTTYPE:''',
'                                    ||''nminvgtn,''',
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
'    transition: all 150ms ease;" type="button">Print</button><i class="iR"></i></span></a></div>'' print_column',
'           FROM nmsalrec s,sycompty b',
'           WHERE s.compcode = :compcode ',
'           and s.compcode=b.compcode',
'           and s.CUSTMRID=b.CUSTMRID',
'            AND s.docttype = ''SI''',
'            AND subttype IN(1,2)',
'             AND s.statuscd <> ''CAN''',
'            AND (costcode IN (SELECT cabasecc',
'                                FROM sycstacc',
'                               WHERE compcode = :compcode  AND grupcode = :APP_USER))',
'                                group by s.COMPCODE,s.SMANCODE,s.postflag, s.WARECODE,s.DOCTTYPE, s.SUBTTYPE, s.DOCNUMBR,s.UPDOCNUM, s.DOCTDATE,s.statuscd',
'  -- group by COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE,statuscd',
'       ORDER BY doctdate DESC--, docnumbr DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P383_TRANTYPE,P383_SUBTTYPE'
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
 p_id=>wwv_flow_api.id(143327999197812379)
,p_name=>'test'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:303:&SESSION.:MOD:&DEBUG.::P303_DOCNUMBR1,P303_DOCTDATE,P303_DOCTTYPE,P303_SUBTTYPE,P303_IDENTIFY,P303_DOCNUMBR,P303_ITEMCODE1:#DOCNUMBR#,#DOCTDATE#,#DOCTTYPE#,#SUBTTYPE#,#PHONE#,#DOCNUMBR#,#ITEMCODE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_detail_link_auth_scheme=>wwv_flow_api.id(60489002166243136)
,p_owner=>'RILADM'
,p_internal_uid=>107989909160047977
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47097227653376464)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47097496248376474)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Document Details'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47097941094376486)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Delete'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_display_condition=>'DEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47098359864376502)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47098735555376511)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47099098079376521)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47099504274376534)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Item Description'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47099930372376543)
,p_db_column_name=>'STATUSCD'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47100326834376554)
,p_db_column_name=>'PRINT_COLUMN'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Print'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47100744717376568)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47101065466376580)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47101481605376593)
,p_db_column_name=>'DELCHECKBOX'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Delete'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P383_REQUEST'
,p_display_condition2=>'DEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47092980918376351)
,p_db_column_name=>'UNIT'
,p_display_order=>23
,p_column_identifier=>'O'
,p_column_label=>'Unit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47093299266376363)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>33
,p_column_identifier=>'P'
,p_column_label=>'Raised By'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47093635875376374)
,p_db_column_name=>'RAISEDFROM'
,p_display_order=>43
,p_column_identifier=>'Q'
,p_column_label=>'Raised From'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47093994742376384)
,p_db_column_name=>'SALE_QTY'
,p_display_order=>53
,p_column_identifier=>'R'
,p_column_label=>'Sale Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47094486939376395)
,p_db_column_name=>'OFFER_QTY'
,p_display_order=>63
,p_column_identifier=>'S'
,p_column_label=>'Offer Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47094855204376404)
,p_db_column_name=>'DELIVERY_QTY'
,p_display_order=>73
,p_column_identifier=>'T'
,p_column_label=>'Delivery Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47095262143376415)
,p_db_column_name=>'CUTOMER_CARD'
,p_display_order=>83
,p_column_identifier=>'U'
,p_column_label=>'Sales Return'
,p_column_link=>'f?p=&APP_ID.:384:&SESSION.::&DEBUG.:RP:P384_DOCNUMBR1,P384_DOCTDATE,P384_DOCTTYPE,P384_SUBTTYPE,P384_IDENTIFY,P384_WARECODE:#DOCNUMBR#,#DOCTDATE#,#DOCTTYPE#,#SUBTTYPE#,#PHONE#,#WARECODE#'
,p_column_linktext=>'Product Exchange'
,p_column_link_attr=>'Product Exchange'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47095606031376424)
,p_db_column_name=>'CUSTMR_NAME'
,p_display_order=>93
,p_column_identifier=>'V'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47096015645376435)
,p_db_column_name=>'ADDRESS'
,p_display_order=>103
,p_column_identifier=>'W'
,p_column_label=>'Address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47096418298376445)
,p_db_column_name=>'CUSTMAIL'
,p_display_order=>113
,p_column_identifier=>'X'
,p_column_label=>'Mail'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47096811618376454)
,p_db_column_name=>'PHONE'
,p_display_order=>123
,p_column_identifier=>'Y'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47101865863376602)
,p_db_column_name=>'WARECODE'
,p_display_order=>133
,p_column_identifier=>'Z'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(143333321705812399)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'117641'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCDETAIL:DOCTDATE:CUSTMR_NAME:ADDRESS:CUSTMAIL:PHONE:ITEMDESC:SALE_QTY:OFFER_QTY:DELIVERY_QTY:RAISEDBY:RAISEDFROM:CUTOMER_CARD:PRINT_COLUMN:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(148788121134567834)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(148788988286567834)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P383_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P383_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(148790594179567835)
,p_name=>'sdsaddsad'
,p_region_name=>'MON'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT    s.docnumbr',
'                || ''/''',
'                || s.doctdate',
'                || ''/''',
'                || s.docttype',
'                || ''/''',
'                || s.subttype',
'                || ''/''',
'                || s.serlnumb ID,',
'                   s.docnumbr',
'                || ''/''',
'                || s.doctdate',
'                || ''/''',
'                || s.docttype',
'                || ''/''',
'                || s.subttype AS docdetail,',
'                s.docnumbr AS docnumbr, s.doctdate AS doctdate,',
'                s.custmrid || '':'' || p.prtyname AS partycde,',
'                (SELECT usercode || '':'' || username',
'                   FROM syusrmas u',
'                  WHERE usercode = s.raisedby',
'                    AND u.divncode = :compcode) AS raised_by,',
'                s.itemcode AS itemcode, s.itemdesc AS itemdesc,',
'                s.salerate AS rate,NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) Quantity,',
'                nvl(s.saleRATE,0) * (NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0)) Amount,',
'                s.warecode || '':'' || w.waredesc AS warecode,',
'                s.statuscd AS statuscd',
'           FROM nmsalrec s, nmwhsmas w, nmitemas i, sycompty p,',
'                ',
'                (SELECT   NVL (s.trnsqnty, 0) - NVL (d.apprqnty, 0) trnsqnty,d.apprqnty',
'                     FROM nmdevrec d,nmsalrec s,nmwhsmas w',
'                    WHERE d.updoctyp = ''SI''',
'                    and d.upsubtyp=1',
'                    and d.compcode=:compcode',
'                      AND d.compcode = s.compcode',
'                      AND d.itemcode = s.itemcode',
'                      AND d.updocnum = s.DOCNUMBR',
'                      and d.UPDOCDTE = s.doctdate',
'                      AND d.COSTCODE = s.COSTCODE',
'                      and d.STATUSCD =''APR''',
'                    AND NVL (s.trnsqnty, 0) - NVL (d.apprqnty, 0) > 0   ',
'                     AND d.doctdate =nvl(:p11 ,d.doctdate)                   ',
'                      AND w.warecode IN (SELECT warecode',
'                                 FROM sycstacc',
'                                WHERE grupcode = :app_user)',
'                 GROUP BY d.updocnum, d.updoctyp, d.upsubtyp, d.itemcode,d.UPDOCDTE,s.trnsqnty,d.apprqnty) e',
'           where s.DOCTTYPE=''SI''',
'and s.COMPCODE=:COMPCODE',
'AND S.COMPCODE=P.COMPCODE',
'AND S.PARTYCDE=P.PARTYCDE',
'and s.compcode=w.compcode',
'and s.itemcode=i.itemcode',
'and s.warecode=w.warecode',
'AND s.doctdate =nvl(:p11 ,s.doctdate)',
'AND NVL (s.trnsqnty, 0) - NVL (e.apprqnty, 0) > 0 ',
'and w.warecode in (select warecode from sycstacc where grupcode=:APP_USER) ',
'order by DOCTDATE desc'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47087447584376288)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47087853134376289)
,p_query_column_id=>2
,p_column_alias=>'DOCDETAIL'
,p_column_display_sequence=>2
,p_column_heading=>'DOCDETAIL'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47088221668376289)
,p_query_column_id=>3
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>3
,p_column_heading=>'DOCNUMBR'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47088633508376290)
,p_query_column_id=>4
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>4
,p_column_heading=>'DOCTDATE'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47089003141376290)
,p_query_column_id=>5
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>5
,p_column_heading=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47089392329376290)
,p_query_column_id=>6
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>6
,p_column_heading=>'RAISED_BY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47089885042376290)
,p_query_column_id=>7
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>7
,p_column_heading=>'ITEMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47090234728376290)
,p_query_column_id=>8
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>8
,p_column_heading=>'ITEMDESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47090654397376292)
,p_query_column_id=>9
,p_column_alias=>'RATE'
,p_column_display_sequence=>9
,p_column_heading=>'RATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47091024980376292)
,p_query_column_id=>10
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>10
,p_column_heading=>'QUANTITY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47091402849376292)
,p_query_column_id=>11
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>11
,p_column_heading=>'AMOUNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47091839747376292)
,p_query_column_id=>12
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>12
,p_column_heading=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47092284167376292)
,p_query_column_id=>13
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>13
,p_column_heading=>'STATUSCD'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(148796201594567837)
,p_plug_name=>'Sales Return'
,p_region_name=>'nmprocur'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>5
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
's.docttype,s.subttype,count(itemcode) Unit,',
'               apex_item.checkbox (1,',
'                           DOCNUMBR,',
'                           ''onchange="spCheckChange(this);"'',',
'                           :f_empno_list,',
'                           '',''',
'                          ) checkbox,',
'                apex_item.checkbox2(11, DOCNUMBR) delcheckbox,',
'                s.docnumbr AS docnumbr, s.doctdate AS doctdate,',
'                wm_concat(s.itemcode) AS itemcode, wm_concat(s.itemdesc) AS itemdesc,',
'                s.statuscd AS statuscd,',
'                ''<div  style="padding-left: 10px;font-weight:bold;"><a href="''||apex_util.prepare_url ( ''f?p=&APP_ID.:''',
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
'                                    ||''nminvmny,''',
'                                    ||s.docnumbr',
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
'    transition: all 150ms ease;" type="button">Print</button><i class="iR"></i></span></a></div>'' print_column',
'           FROM nmstkrec s',
'           WHERE compcode = :compcode ',
'            AND docttype = :P383_TRANTYPE',
'            AND subttype = :P383_SUBTTYPE',
'           -- AND postflag = :P383_POSTSTATUS',
'            AND (costcode IN (SELECT cabasecc',
'                                FROM sycstacc',
'                               WHERE compcode = :compcode  AND grupcode = :APP_USER))',
'                               group by COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE,statuscd',
'       ORDER BY doctdate DESC--, docnumbr DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P383_TRANTYPE,P383_SUBTTYPE'
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
 p_id=>wwv_flow_api.id(148796615366567837)
,p_name=>'test'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:176:&SESSION.::&DEBUG.::P176_DOCNUMBR,P176_DOCTTYPE,P176_SUBTTYPE,P176_DOCTDATE,P176_PODCNO,P176_S_PRDTYP,P176_S_PRSTYP,P176_SUPPLIERCDE,P176_COSTCODE,P176_WARECODE:#DOCNUMBR#,#DOCTTYPE#,#SUBTTYPE#,#DOCTDATE#,#UPDOCNUM#,#UPDOCTYP#,#UPSUB'
||'TYP#,#PARTYCDE#,#COSTCODE#,#WARECODE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_detail_link_condition_type=>'FUNCTION_BODY'
,p_detail_link_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(5);',
'begin',
'select distinct MODSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y'' and :P191_POSTSTATUS=''N'' then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_detail_link_cond2=>'PLSQL'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>113458525328803435
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47106158986376632)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47106574800376632)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Docdetail'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47106951068376632)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Delete'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_display_condition=>'DEL'
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
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47107360489376633)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47107690929376633)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47108109912376634)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47108563719376634)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Item Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47108946811376634)
,p_db_column_name=>'STATUSCD'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47109317604376634)
,p_db_column_name=>'PRINT_COLUMN'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Print'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47109692804376634)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47110174963376634)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47110500535376635)
,p_db_column_name=>'DELCHECKBOX'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Delete'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(5);',
'begin',
'select distinct DELSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y'' and :P383_POSTSTATUS=''N'' then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47110907217376635)
,p_db_column_name=>'UNIT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Unit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(148801820372567838)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'117732'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCDETAIL:DOCNUMBR:DOCTDATE:UNIT:ITEMCODE:ITEMDESC:PRINT_COLUMN:DELCHECKBOX:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(148805131238567840)
,p_plug_name=>'item region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47116739727376670)
,p_button_sequence=>.2
,p_button_name=>'ASD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Asd'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47116454933376670)
,p_button_sequence=>100
,p_button_name=>'P383_REPORTNAME'
,p_button_static_id=>'P89_REPORTNAME'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reportname'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47111771828376635)
,p_button_sequence=>1
,p_button_plug_id=>wwv_flow_api.id(148796201594567837)
,p_button_name=>'P383_ADD'
,p_button_static_id=>'P177_ADD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:176:&SESSION.:ADD:&DEBUG.:176:P176_DOCTTYPE,P176_SUBTTYPE,P176_DOCDESC,P176_S_PRDTYP,P176_S_PRSTYP:&P383_TRANTYPE.,&P383_SUBTTYPE.,&P383_NARATION.,&P383_PRDOCTYP.,&P383_PRSUBTYP.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(5);',
'begin',
'select distinct ADDSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y''then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47102624213376626)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(143327566174812376)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:999:&SESSION.:A:&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47112133227376636)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(148796201594567837)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:999:&SESSION.:A:&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47103035593376626)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(143327566174812376)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure Delete the docnumber &P383_DELDOCNUMBER. Really?'', ''DELETE'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(5);',
'begin',
'select distinct DELSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y'' and :P383_POSTSTATUS=''N'' then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47112503610376636)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(148796201594567837)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure Delete the docnumber &P383_DELDOCNUMBER. Really?'', ''DELETE'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(5);',
'begin',
'select distinct DELSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y'' and :P383_POSTSTATUS=''N'' then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47103412474376628)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(143327566174812376)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:176:&SESSION.::&DEBUG.:176:P176_DOCTTYPE,P176_SUBTTYPE,P176_DOCDESC,P176_S_PRDTYP,P176_S_PRSTYP:&P383_TRANTYPE.,&P383_SUBTTYPE.,&P383_NARATION.,&P383_PRDOCTYP.,&P383_PRSUBTYP.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47085923801376285)
,p_name=>'P383_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(148788988286567834)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47086338106376286)
,p_name=>'P383_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(148788988286567834)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47086783619376286)
,p_name=>'P383_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(148788988286567834)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47103792483376628)
,p_name=>'P383_POSTSTATUS_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(143327566174812376)
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
 p_id=>wwv_flow_api.id(47104240010376629)
,p_name=>'P383_TRANTYPE_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(143327566174812376)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47104660779376629)
,p_name=>'P383_SUBTTYPE_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(143327566174812376)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47105000381376631)
,p_name=>'P383_REQUEST_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(143327566174812376)
,p_item_default=>':REQUEST'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Test'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47105482060376631)
,p_name=>'P383_DELDOCNUMBER_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(143327566174812376)
,p_prompt=>'Delete docnumber'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47112944460376636)
,p_name=>'P383_POSTSTATUS'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(148796201594567837)
,p_item_default=>'N'
,p_prompt=>'<strong>Post Status</strong>'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SYCODDES d,SYSOFCDE r from sycodmas where SYSOFCDE in',
'(select distinct PARTYTYP from sycompty)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''SY''',
'and SYHRDCDE=''CUS'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47113351047376636)
,p_name=>'P383_TRANTYPE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(148796201594567837)
,p_prompt=>'Trantype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47113692519376636)
,p_name=>'P383_SUBTTYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(148796201594567837)
,p_prompt=>'Subttype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47114159795376636)
,p_name=>'P383_REQUEST'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(148796201594567837)
,p_item_default=>':REQUEST'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Test'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47114559747376636)
,p_name=>'P383_DELDOCNUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(148796201594567837)
,p_prompt=>'Delete docnumber'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47115239799376637)
,p_name=>'P383_PRDOCTYP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(148805131238567840)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47115669940376637)
,p_name=>'P383_PRSUBTYP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(148805131238567840)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47116076072376637)
,p_name=>'P383_NARATION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(148805131238567840)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47117123046376671)
,p_name=>'P383_ITEMCODE'
,p_item_sequence=>20
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Itemcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47117563444376671)
,p_name=>'P383_DOCNUMBER'
,p_item_sequence=>30
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_use_cache_before_default=>'NO'
,p_item_default=>'&F_EMPNO_LIST.'
,p_prompt=>'Docnumber'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47117924552376671)
,p_name=>'P383_PROGNAME'
,p_item_sequence=>40
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_use_cache_before_default=>'NO'
,p_item_default=>'&PROGNAME.'
,p_prompt=>'Progname'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47118305804376672)
,p_name=>'P383_XURLTEST'
,p_item_sequence=>50
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Xurltest'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47118750346376673)
,p_name=>'P383_XURL'
,p_item_sequence=>60
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Xurl'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47119145340376673)
,p_name=>'P383_DELVERDOCNUM'
,p_item_sequence=>70
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deliver Docnum'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DOCNUMBR ',
'from apex_order_items1 ',
'where ORDER_ID=:P383_DOCNUMBER;'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47119557219376673)
,p_name=>'P383_GATPASSDOCNUM'
,p_item_sequence=>80
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Gat pass docnum'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47119899436376673)
,p_name=>'P383_S_H_REGION'
,p_item_sequence=>90
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_item_default=>'0'
,p_prompt=>'S H Region'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(47120416476376674)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'89'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(47120823836376674)
,p_computation_sequence=>10
,p_computation_item=>'P65_PROGNAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P65_PROGNAME.'
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47122763810376686)
,p_name=>'Delete Multiple Docnumber'
,p_event_sequence=>250
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f11"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47123253711376687)
,p_event_id=>wwv_flow_api.id(47122763810376686)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P383_DELDOCNUMBER'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var deldoc=  $(''#nmprocur input[name="f11"]:checked'').map(function(){',
'                  return $(this).val()',
'              }).get().join('':'')',
'',
'$(''#P383_DELDOCNUMBER'').val(deldoc)'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47121101575376674)
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
'If :P383_PROGNM  is null and :P383_NO is null then',
'   :P383_PROGNM := :FX_PROG_NAME;',
'   :P383_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P383_PROGNM,',
'                                      p_parentnm =>:P383_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P383_OPRSTAMP := :app_user;',
'  --:P383_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P383_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P383_PROGNM;',
'   :FX_PAGE_NO := :P383_NO;',
'Elsif :FX_PROG_NAME <> :P383_PROGNM And :FX_PAGE_NO <> :P383_NO Then',
'   :FX_PROG_NAME := :P383_PROGNM;',
'   :FX_PAGE_NO := :P383_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47121576572376676)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'assign value in docnumber from checkbox'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2015/01/14 13:19 (Formatter Plus v4.8.8) */',
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
'   FOR i IN 1 .. apex_application.g_f01.COUNT',
'   LOOP',
'      sale := apex_application.g_f01 (i);',
'',
'      IF sale IS NOT NULL',
'      THEN',
'         l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Can not be pass docnumber''',
'            || sale',
'            || ''>''',
'            || apex_application.g_f17.COUNT;',
'      END IF;',
'',
'      apex_collection.add_member (p_collection_name      => ''SALES'',',
'                                  p_c001                 => sale);',
'',
'   END LOOP;',
'',
'   BEGIN',
'      l_order_id := demo_order_items_seq.NEXTVAL;',
'      l_seq := demo_order_items_seq.CURRVAL;',
'',
'      FOR x IN (SELECT c001',
'                  FROM apex_collections',
'                 WHERE collection_name = ''SALES'')',
'      LOOP',
'         INSERT INTO apex_order_items1',
'                     (order_item_id, order_id, docnumbr',
'                     )',
'              VALUES (l_order_id, NULL, x.c001',
'                     )',
'           RETURNING order_item_id',
'                INTO l_order_id;',
'',
'         l_order_id := demo_order_items_seq.NEXTVAL;',
'      END LOOP;',
'',
'      COMMIT;',
'',
'      BEGIN',
'         FOR i IN l_seq .. l_order_id',
'         LOOP',
'            UPDATE apex_order_items1',
'               SET order_id = l_order_id - 1',
'             WHERE order_item_id = l_seq;',
':P383_DOCNUMBER:=l_order_id - 1;',
'            l_seq := l_seq + 1;',
'',
'         END LOOP;',
'',
'      END;',
'',
'      apex_collection.truncate_collection (p_collection_name => ''SALES'');',
'   EXCEPTION',
'      WHEN NO_DATA_FOUND',
'      THEN',
'         NULL;',
'      WHEN TOO_MANY_ROWS',
'      THEN',
'         NULL;',
'      WHEN OTHERS',
'      THEN',
'         NULL;',
'   END;',
'',
'   -- RETURN LTRIM (l_error, ''</br>'');',
'   :docnumbr := sale;',
'  -- :p383_docnumber := sale;',
'',
'   BEGIN',
'      IF :p65_progname = ''nminvmny''',
'      THEN',
'         v_url :=',
'               ''http://''',
'            || :p383_xurl',
'            || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\Orbrgs_Web\nm\bin\''',
'            || :p65_progname',
'            || ''&'';',
'         v_url := v_url || ''P13='' || sale;',
'         :xurltest := v_url;',
'      END IF;',
'',
'      IF :p65_progname = ''nmdlchln''',
'      THEN',
'         SELECT DISTINCT docnumbr',
'                    INTO v_devdoc',
'                    FROM nmdevrec',
'                   WHERE updocnum = sale',
'                     AND docttype = ''DC''',
'                     AND subttype = 1',
'                     AND compcode = :compcode;',
'',
'         :p383_delverdocnum := v_devdoc;',
'         v_url :=',
'               ''http://''',
'            || :p383_xurl',
'            || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\Orbrgs_Web\nm\bin\''',
'            || :p65_progname',
'            || ''&'';',
'         v_url := v_url || ''P13='' || v_devdoc;',
'         :xurltest := v_url;',
'      END IF;',
'',
'      IF :p65_progname = ''nmgatpas''',
'      THEN',
'         SELECT DISTINCT docnumbr',
'                    INTO v_gatdoc',
'                    FROM nmdevrec',
'                   WHERE updocnum = sale',
'                     AND docttype = ''GP''',
'                     AND subttype = 1',
'                     AND compcode = :compcode;',
'',
'         :p383_gatpassdocnum := v_gatdoc;',
'         v_url :=',
'               ''http://''',
'            || :p383_xurl',
'            || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\Orbrgs_Web\nm\bin\''',
'            || :p65_progname',
'            || ''&'';',
'         v_url := v_url || ''P13='' || v_gatdoc;',
'         :xurltest := v_url;',
'      END IF;',
'',
'      IF :p65_progname = ''nmslmony''',
'      THEN',
'         v_url :=',
'               ''http://''',
'            || :p383_xurl',
'            || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\Orbrgs_Web\nm\bin\''',
'            || :p65_progname',
'            || ''&'';',
'         -- v_url := v_url || ''P13='' || sale;',
'         v_url := v_url || ''P0='' || 100 || ''&P13='' || sale;',
'         :xurltest := v_url;',
'      END IF;',
'   END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47122323588376686)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Docnumber on Delete button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  l_deldoc  apex_application_global.vc_arr2 := apex_util.string_to_table(:P383_DELDOCNUMBER);',
'begin',
'   for i in 1 .. l_deldoc.count',
'   loop',
'      delete from nmprocur  where docnumbr   = l_deldoc(i) ',
'      and COMPCODE=:COMPCODE ',
'      and DOCTTYPE=:P383_TRANTYPE ',
'      and SUBTTYPE=:P383_SUBTTYPE',
'      and POSTFLAG=:P383_POSTSTATUS;',
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
 p_id=>wwv_flow_api.id(47121973797376686)
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
