prompt --application/pages/page_10025_002
begin
--   Manifest
--     PAGE: 10025
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
 p_id=>1002500010
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Pending Receive  for Inspection'
,p_alias=>'PENDING-RECEIVE-FOR-INSPECTION'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_page_comment=>'without wizard page no 106'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20230105114325'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(430451339308683636)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(34655500770921673)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(519229183998640179)
,p_plug_name=>'Pending Purchase Requisition'
,p_region_name=>'nmissreq'
,p_parent_plug_id=>wwv_flow_api.id(430451339308683636)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--slimPadding'
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
'         (SELECT INITCAP (s.RAISEDBY || '' - '' || username)',
'            FROM syusrmas',
'           WHERE usercode = s.RAISEDBY)',
'            RAISEDBY,',
'         INITCAP ( (SELECT s.WARECODE || '' - '' || WAREDESC',
'                      FROM nmwhsmas',
'                     WHERE WARECODE = s.WARECODE AND COMPCODE = s.compcode))',
'            raisedfrom,',
'         s.statuscd AS statuscd,',
'         SUM (s.APPRQNTY) Request_qty,',
'         SUM (',
'            (SELECT SUM (b.APPRQNTY)',
'               FROM nmstkrec b',
'              WHERE     b.compcode = s.compcode',
'                    AND b.UPDOCNUM = s.DOCNUMBR',
'                    AND b.ITEMCODE = s.ITEMCODE))',
'            Receive_qty,',
'         SUM (',
'            (SELECT SUM (b.TRNSQNTY)',
'               FROM nmprocur b',
'              WHERE     b.compcode = s.compcode',
'                    AND b.UPDOCNUM = s.DOCNUMBR',
'                    AND b.ITEMCODE = s.ITEMCODE',
'                    AND b.UPDOCTYP = :P1002500010_PRDOCTYP',
'                    AND b.UPSUBTYP = :P1002500010_PRSUBTYP))',
'            Issue_qty,',
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
'               || ''nmlpoprt,''',
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
'         s.costcode,',
'         s.PARTYCDE,',
'         s.CURRCODE,',
'         s.EXCGRATE,',
'         s.REFNUMBR INDENT_NO,',
'         ''Receive'' LINK',
'    FROM nmprocur s',
'   WHERE     compcode = :COMPCODE',
'         AND docttype = :P1002500010_PRDOCTYP',
'         AND subttype in (1,2,3) --= :P1002500010_PRSUBTYP',
'         AND POSTFLAG = ''Y''',
'         AND statuscd = ''APR''',
'         AND (NVL (apprqnty, 0) - NVL (trnsqnty, 0)) > 0',
'         AND (costcode IN',
'                 (SELECT cabasecc',
'                    FROM sycstacc',
'                   WHERE     compcode = NVL ( :COMPCODE, :P1002500010_COMPCODE)',
'                         AND grupcode = :APP_USER))',
'GROUP BY s.COMPCODE,',
'         s.RAISEDBY,',
'         s.WARECODE,',
'         s.costcode,',
'         s.DOCTTYPE,',
'         s.SUBTTYPE,',
'         s.DOCNUMBR,',
'         s.DOCTDATE,',
'         s.statuscd,',
'         s.PARTYCDE,',
'         s.CURRCODE,',
'         s.EXCGRATE,',
'         s.REFNUMBR',
'-- group by COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE,statuscd',
'ORDER BY doctdate DESC, docnumbr DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1002500010_PRDOCTYP,P1002500010_PRSUBTYP'
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
 p_id=>wwv_flow_api.id(519229587255640180)
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>460
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'RILADM'
,p_internal_uid=>519229587255640180
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34787576977979762)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34787953003979762)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Document Details'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34788340863979763)
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
 p_id=>wwv_flow_api.id(34788747924979763)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34789115395979763)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34789569917979764)
,p_db_column_name=>'STATUSCD'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34789982619979764)
,p_db_column_name=>'PRINT_COLUMN'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Print'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34790304330979764)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34790799650979765)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34791186975979765)
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
 p_id=>wwv_flow_api.id(34785170038979760)
,p_db_column_name=>'UNIT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Unit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34785570920979760)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Raised By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34785993004979761)
,p_db_column_name=>'RAISEDFROM'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Warehouse'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34786319779979761)
,p_db_column_name=>'REQUEST_QTY'
,p_display_order=>26
,p_column_identifier=>'Q'
,p_column_label=>'PO Qty.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34787190108979762)
,p_db_column_name=>'RECEIVE_QTY'
,p_display_order=>36
,p_column_identifier=>'S'
,p_column_label=>'Receive Qty.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34786702668979761)
,p_db_column_name=>'ISSUE_QTY'
,p_display_order=>46
,p_column_identifier=>'R'
,p_column_label=>'Issue Qty.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34784370455979759)
,p_db_column_name=>'WARECODE'
,p_display_order=>56
,p_column_identifier=>'V'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34791513867979766)
,p_db_column_name=>'COSTCODE'
,p_display_order=>66
,p_column_identifier=>'Z'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34791990344979766)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>76
,p_column_identifier=>'AA'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34784749014979760)
,p_db_column_name=>'LINK'
,p_display_order=>96
,p_column_identifier=>'X'
,p_column_label=>'Action'
,p_column_link=>'f?p=&APP_ID.:1002500020:&SESSION.::&DEBUG.:RP,1002500020:P1002500020_PODCNO,P1002500020_PODCDATE,P1002500020_WARECODE,P1002500020_COSTCODE,P1002500020_SUPPLIERCDE,P1002500020_CURRENCY,P1002500020_EXCHANGERATE:#DOCNUMBR#,#DOCTDATE#,#WARECODE#,#COSTCOD'
||'E#,#PARTYCDE#,#CURRCODE#,#EXCGRATE#'
,p_column_linktext=>'#LINK#'
,p_column_link_attr=>'class="t-Button t-Button--hot"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34792389008979766)
,p_db_column_name=>'CURRCODE'
,p_display_order=>106
,p_column_identifier=>'AB'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34792796730979767)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>116
,p_column_identifier=>'AC'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42894397023354308)
,p_db_column_name=>'INDENT_NO'
,p_display_order=>126
,p_column_identifier=>'AD'
,p_column_label=>'Indent No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(519234869171640185)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'208067'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK:DOCDETAIL:REQUEST_QTY:RECEIVE_QTY:RAISEDBY:RAISEDFROM:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34783346716979753)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(430451339308683636)
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
 p_id=>wwv_flow_api.id(34783714898979754)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(430451339308683636)
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
 p_id=>wwv_flow_api.id(34793482442979784)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(519229183998640179)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RIR::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34802532815979789)
,p_branch_name=>'Go To Page 422'
,p_branch_action=>'f?p=&APP_ID.:&P1002500010_NEXTPAGE.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34793883836979785)
,p_name=>'P1002500010_PROGNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(519229183998640179)
,p_use_cache_before_default=>'NO'
,p_item_default=>':PROGNAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34794243485979785)
,p_name=>'P1002500010_TRANTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(519229183998640179)
,p_item_default=>'&DOCTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34794641230979785)
,p_name=>'P1002500010_SUBTTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(519229183998640179)
,p_item_default=>'&SUBTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34795089592979785)
,p_name=>'P1002500010_PRDOCTYP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(519229183998640179)
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
 p_id=>wwv_flow_api.id(34795499235979786)
,p_name=>'P1002500010_PRSUBTYP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(519229183998640179)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_api.id(34795839831979786)
,p_name=>'P1002500010_NARATION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(519229183998640179)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34796299560979786)
,p_name=>'P1002500010_REQUEST'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(519229183998640179)
,p_item_default=>':REQUEST'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34796614890979786)
,p_name=>'P1002500010_DELDOCNUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(519229183998640179)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34797021292979786)
,p_name=>'P1002500010_RANDOMNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(519229183998640179)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34797485147979787)
,p_name=>'P1002500010_NEXTPAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(519229183998640179)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34799680225979788)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34783346716979753)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34800183895979788)
,p_event_id=>wwv_flow_api.id(34799680225979788)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel?'
,p_attribute_03=>'warning'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34800610834979789)
,p_event_id=>wwv_flow_api.id(34799680225979788)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;',
'',
'if apex_collection.collection_exists(''OTHER_COST'') then',
'   apex_collection.delete_collection(p_collection_name => ''OTHER_COST'');',
'end if;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34801119144979789)
,p_event_id=>wwv_flow_api.id(34799680225979788)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38950828650184016)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'truncate collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;',
'',
'if apex_collection.collection_exists(''OTHER_COST'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''OTHER_COST'');',
'end if;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34797887870979787)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P2',
'  INTO :P1002500010_NEXTPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
