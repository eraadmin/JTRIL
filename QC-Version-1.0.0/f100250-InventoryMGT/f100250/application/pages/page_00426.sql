prompt --application/pages/page_00426
begin
--   Manifest
--     PAGE: 00426
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
 p_id=>426
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Pending Receive Request'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog {',
'	background: linear-gradient(lightyellow, lightgreen);',
'}'))
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_page_comment=>'without wizard page no 408'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20230103154730'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76948952780723289)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(24685888503784642)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(165726797470679832)
,p_plug_name=>'Pending Purchase Requisition'
,p_region_name=>'nmissreq'
,p_parent_plug_id=>wwv_flow_api.id(76948952780723289)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT',
'            s.docnumbr',
'         || ''/''',
'         || s.doctdate',
'         || ''/''',
'         || s.docttype',
'         || ''/''',
'         || s.subttype',
'            ID,',
'            s.docnumbr',
'         || ''/''',
'         || s.doctdate',
'         || ''/''',
'         || s.docttype',
'         || ''/''',
'         || s.subttype',
'         || '' - ''',
'         || s.updocnum',
'            AS docdetail,',
'         s.docttype,',
'         s.subttype,',
'         COUNT (itemcode) Unit,',
'         APEX_ITEM.checkbox (1,',
'                             DOCNUMBR,',
'                             ''onchange="spCheckChange(this);"'',',
'                             :f_empno_list,',
'                             '','')',
'            checkbox,',
'         APEX_ITEM.checkbox2 (11, DOCNUMBR) delcheckbox,',
'         s.docnumbr AS docnumbr,',
'         s.doctdate AS doctdate,',
'         --LISTAGG(s.itemcode, '', '') WITHIN GROUP (ORDER BY s.itemcode) itemcode,',
'         --LISTAGG(s.itemdesc, '', '') WITHIN GROUP (ORDER BY s.itemdesc) itemdesc,',
'         --wm_concat(s.itemcode) AS itemcode,',
'         --wm_concat(distinct s.itemcode||''-''||s.itemdesc) AS itemdesc,',
'         (SELECT INITCAP (s.RAISEDBY || ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = s.RAISEDBY)',
'            RAISEDBY,',
'         INITCAP ( (SELECT s.WARECODE || '' - '' || WAREDESC',
'                      FROM nmwhsmas',
'                     WHERE WARECODE = s.WARECODE AND COMPCODE = s.compcode))',
'            raisedfrom,',
'         s.statuscd AS statuscd,',
'         SUM (s.APPRQNTY) Issue_qty,',
'         SUM (s.TRNSQNTY) Receive_qty,',
'         SUM (',
'            (SELECT SUM (b.APPRQNTY)',
'               FROM nmstkrec b',
'              WHERE     b.compcode = s.compcode',
'                    AND b.DOCNUMBR = s.UPDOCNUM',
'                    AND b.ITEMCODE = s.ITEMCODE',
'                    AND b.DOCTTYPE = s.UPDOCTYP',
'                    AND b.SUBTTYPE = s.UPSUBTYP))',
'            Request_qty,',
'         SUM (',
'            (SELECT SUM (b.DEFECTQT)',
'               FROM nmstkrec b',
'              WHERE     b.compcode = s.compcode',
'                    AND b.UPDOCNUM = s.DOCNUMBR',
'                    AND b.ITEMCODE = s.ITEMCODE',
'                    AND b.UPDOCTYP = s.DOCTTYPE',
'                    AND b.UPSUBTYP = s.SUBTTYPE))',
'            defect_qty,',
'            --sum((select  sum(b.APPRQNTY)  from nmstkrec  b where   b.compcode=s.compcode   and b.UPDOCNUM IN (select distinct b.UPDOCNUM from nmstkrec b where b.compcode=s.compcode and b.ITEMCODE=s.ITEMCODE and b.UPDOCNUM=s.DOCNUMBR  and b.DOCTTYPE'
||'=''IS'' and b.SUBTTYPE=2) and b.DOCTTYPE=''IS'' and b.SUBTTYPE=2 )) Receive_qty,',
'            ''<div  style="padding-left: 10px;font-weight:bold;"><a href="''',
'         || APEX_UTIL.prepare_url (',
'                  ''f?p=&APP_ID.:''',
'               || 49',
'               || '':''',
'               || :app_session',
'               || '':ADD:NO:''',
'               || 49',
'               || '':P''',
'               || 49',
'               || ''_PROGNAME,P''',
'               || 49',
'               || ''_DOCNUMBR,P''',
'               || 49',
'               || ''_DOCTTYPE,P''',
'               || 49',
'               || ''_SUBTTYPE:''',
'               || ''nmmrstrn,''',
'               || s.docnumbr',
'               || '',''',
'               || s.docttype',
'               || '',''',
'               || s.subttype',
'               || '':'')',
'         || ''" class="uButton uAltButton iconButton plus"><span><button id="printbut" style="display: block;',
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
'    transition: all 150ms ease;" type="button">Print</button><i class="iR"></i></span></a></div>''',
'            print_column,',
'         s.WARECODE,',
'         s.SRCWRECD,',
'         TRUNC (s.REFNDATE) REFNDATE,',
'         NVL (s.refnumbr, ''R'') refnumbr,',
'         s.currcode,',
'         s.excgrate,',
'         TRUNC (s.reqddate) reqddate,',
'         s.partycde,',
'         s.costcode,',
'         s.BILLPARTY,',
'         --s.BATCHNUM,',
'         --s.BATCHDTE,',
'         ''RCV'' LINK',
'    FROM nmstkrec s',
'   WHERE     compcode = NVL ( :COMPCODE, :P426_COMPCODE)',
'         AND docttype = :P426_PRDOCTYP',
'         AND subttype = :P426_PRSUBTYP',
'         AND statuscd = ''APR''',
'         --AND postflag = ''Y''',
'         AND (NVL (apprqnty, 0) - NVL (trnsqnty, 0)) > 0',
'         /*',
'         AND (costcode IN',
'                 (SELECT cabasecc',
'                    FROM sycstacc',
'                   WHERE     compcode = NVL ( :COMPCODE, :P426_COMPCODE)',
'                         AND grupcode = :APP_USER))',
'         */',
'GROUP BY s.COMPCODE,',
'         s.RAISEDBY,',
'         s.postflag,',
'         s.WARECODE,',
'         s.DOCTTYPE,',
'         s.SUBTTYPE,',
'         s.DOCNUMBR,',
'         s.DOCTDATE,',
'         s.statuscd,',
'         s.SRCWRECD,',
'         TRUNC (s.REFNDATE),',
'         refnumbr,',
'         s.currcode,',
'         s.excgrate,',
'         TRUNC (s.reqddate),',
'         s.partycde,',
'         s.costcode,',
'         s.BILLPARTY,',
'         s.updocnum                                  -- s.BATCHNUM, s.BATCHDTE',
'ORDER BY doctdate DESC, docnumbr DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P426_PRDOCTYP,P426_PRSUBTYP'
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
 p_id=>wwv_flow_api.id(165727200727679833)
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
,p_internal_uid=>165727200727679833
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24670926728764285)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24671387753764287)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Document Details'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24671765327764289)
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
 p_id=>wwv_flow_api.id(24672135389764289)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24672580308764290)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24673702885764292)
,p_db_column_name=>'STATUSCD'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24674182142764293)
,p_db_column_name=>'PRINT_COLUMN'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Print'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24674539346764295)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24674980280764296)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24675360409764298)
,p_db_column_name=>'DELCHECKBOX'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Delete'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(5);',
'begin',
'/*',
'select distinct DELSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER;',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y''  then',
'return true;',
'else',
'return false;',
'end if;',
'*/',
'return true;',
'end;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24668595405764273)
,p_db_column_name=>'UNIT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Unit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24668965645764273)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Raised By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24669316478764273)
,p_db_column_name=>'RAISEDFROM'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Rcv. From'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24669797377764284)
,p_db_column_name=>'REQUEST_QTY'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Request Qty.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24670122258764284)
,p_db_column_name=>'ISSUE_QTY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Issue Qty.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24670568424764285)
,p_db_column_name=>'RECEIVE_QTY'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Receive Qty.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24666537255764260)
,p_db_column_name=>'SRCWRECD'
,p_display_order=>29
,p_column_identifier=>'U'
,p_column_label=>'Srcwrecd'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24666977970764268)
,p_db_column_name=>'WARECODE'
,p_display_order=>39
,p_column_identifier=>'V'
,p_column_label=>'warecode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24667787358764271)
,p_db_column_name=>'REFNDATE'
,p_display_order=>59
,p_column_identifier=>'Y'
,p_column_label=>'Refndate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24837676216047744)
,p_db_column_name=>'REFNUMBR'
,p_display_order=>99
,p_column_identifier=>'Z'
,p_column_label=>'Refnumbr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24837789799047745)
,p_db_column_name=>'CURRCODE'
,p_display_order=>109
,p_column_identifier=>'AA'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24837897887047746)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>119
,p_column_identifier=>'AB'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24837982236047747)
,p_db_column_name=>'REQDDATE'
,p_display_order=>129
,p_column_identifier=>'AC'
,p_column_label=>'Reqddate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24838063125047748)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>139
,p_column_identifier=>'AD'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24838155546047749)
,p_db_column_name=>'COSTCODE'
,p_display_order=>149
,p_column_identifier=>'AE'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24838268155047750)
,p_db_column_name=>'BILLPARTY'
,p_display_order=>159
,p_column_identifier=>'AF'
,p_column_label=>'Billparty'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24667324263764270)
,p_db_column_name=>'LINK'
,p_display_order=>189
,p_column_identifier=>'X'
,p_column_label=>'Link'
,p_column_link=>'f?p=&APP_ID.:427:&SESSION.::&DEBUG.:RP:P427_PODCNO,P427_PODCDATE,P427_REFNUMBR,P427_REFNDATE,P427_CURRENCY,P427_EXCHANGERATE,P427_SUPPLIERCDE,P427_COSTCODE,P427_WARECODE,P427_SRCWRECD:#DOCNUMBR#,#DOCTDATE#,R,#REFNDATE#,#CURRCODE#,#EXCGRATE#,#PARTYCDE'
||'#,#COSTCODE#,#WARECODE#,#SRCWRECD##BATCHNUM#,#BATCHDTE#'
,p_column_linktext=>'#LINK#'
,p_column_link_attr=>'class="t-Button t-Button--hot"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51544777921684722)
,p_db_column_name=>'DEFECT_QTY'
,p_display_order=>199
,p_column_identifier=>'AG'
,p_column_label=>'Damage Qty.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(165732482643679838)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'246757'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK:DOCDETAIL:REQUEST_QTY:ISSUE_QTY:RECEIVE_QTY:DEFECT_QTY:RAISEDBY:RAISEDFROM:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24665413016764232)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(76948952780723289)
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
 p_id=>wwv_flow_api.id(24665809057764239)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(76948952780723289)
,p_button_name=>'NEXT'
,p_button_static_id=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35365862943135418)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(165726797470679832)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RIR::'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24683904967764364)
,p_branch_name=>'Go To Page 427'
,p_branch_action=>'f?p=&APP_ID.:427:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(24665809057764239)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24676137288764315)
,p_name=>'P426_PROGNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(165726797470679832)
,p_use_cache_before_default=>'NO'
,p_item_default=>':PROGNAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24676417614764326)
,p_name=>'P426_TRANTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(165726797470679832)
,p_item_default=>'&DOCTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24676845165764326)
,p_name=>'P426_SUBTTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(165726797470679832)
,p_item_default=>'&SUBTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24677208301764328)
,p_name=>'P426_PRDOCTYP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(165726797470679832)
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
 p_id=>wwv_flow_api.id(24677653241764328)
,p_name=>'P426_PRSUBTYP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(165726797470679832)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prsubtyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype '))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24678080668764329)
,p_name=>'P426_NARATION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(165726797470679832)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24678415335764329)
,p_name=>'P426_REQUEST'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(165726797470679832)
,p_item_default=>':REQUEST'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24678812403764329)
,p_name=>'P426_DELDOCNUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(165726797470679832)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24679294757764331)
,p_name=>'P426_RANDOMNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(165726797470679832)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_random number;',
'begin',
'select dbms_random.value(1,9) num into v_random from dual;',
'return v_random;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24679604286764332)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(24665413016764232)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24680110855764337)
,p_event_id=>wwv_flow_api.id(24679604286764332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sute to Cancel!.'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24681108563764345)
,p_event_id=>wwv_flow_api.id(24679604286764332)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if; ',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;   '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24680655069764345)
,p_event_id=>wwv_flow_api.id(24679604286764332)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38950797650184015)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'truncate collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;   ',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;        ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
