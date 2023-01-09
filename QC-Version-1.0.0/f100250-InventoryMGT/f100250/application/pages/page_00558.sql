prompt --application/pages/page_00558
begin
--   Manifest
--     PAGE: 00558
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
 p_id=>558
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Indent List'
,p_alias=>'PURCHASE-REQUISITION-REPORT'
,p_page_mode=>'MODAL'
,p_step_title=>'Indent List'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_protection_level=>'C'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20230101191700'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(338227067509279276)
,p_plug_name=>'Purchase Requisition Entry'
,p_region_name=>'nmprocur'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>5
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT',
'            a.docnumbr',
'         || ''/''',
'         || a.doctdate',
'         || ''/''',
'         || a.docttype',
'         || ''/''',
'         || a.subttype',
'            ID,',
'            a.docnumbr',
'         || ''/''',
'         || a.doctdate',
'         || ''/''',
'         || a.docttype',
'         || ''/''',
'         || a.subttype',
'            AS docdetail,',
'         a.docttype,',
'         a.subttype,',
'         COUNT (a.itemcode) Unit,',
'         APEX_ITEM.checkbox (1,',
'                             a.DOCNUMBR,',
'                             ''onchange="spCheckChange(this);"'',',
'                             :f_empno_list,',
'                             '','')',
'            checkbox,',
'         APEX_ITEM.checkbox2 (11, a.DOCNUMBR) delcheckbox,',
'         a.docnumbr AS docnumbr,',
'         a.doctdate AS doctdate,',
'         --LISTAGG(a.itemcode, '', '') WITHIN GROUP (ORDER BY a.itemcode) itemcode,',
'         --LISTAGG(a.itemdesc, '', '') WITHIN GROUP (ORDER BY a.itemdesc) itemdesc,',
'         --wm_concat (DISTINCT a.itemcode) AS itemcode,',
'         --wm_concat (DISTINCT a.itemcode || ''-'' || a.itemdesc) AS itemdesc,',
'         a.statuscd AS statuscd,',
'         SUM (a.APPRQNTY) Request_qty,',
'         SUM (q.APPRQNTY) Approve_qty,',
'       /*  (SELECT SUM (s.APPRQNTY)',
'            FROM nmstkrec s',
'           WHERE s.compcode = a.compcode AND s.ITEMCODE = a.ITEMCODE',
'                 AND s.UPDOCNUM IN',
'                        (SELECT DISTINCT wm_concat (b.DOCNUMBR)',
'                           FROM nmprocur b',
'                          WHERE     b.compcode = a.compcode',
'                                AND b.UPDOCNUM = a.DOCNUMBR',
'                                AND b.ITEMCODE =  a.itemcode',
'                                AND b.DOCTTYPE = ''LP''',
'                                AND b.SUBTTYPE = 1))*/',
'         SUM (s.APPRQNTY)   Receive_qty,',
'         (SELECT INITCAP (a.RAISEDBY || ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = a.RAISEDBY)',
'            RAISEDBY,',
'         INITCAP ( (SELECT a.WARECODE || '' - '' || WAREDESC',
'                      FROM nmwhsmas',
'                     WHERE WARECODE = a.WARECODE AND COMPCODE = a.compcode))',
'            raisedfrom,',
'         a.postflag post_status,',
'         APEX_UTIL.PREPARE_URL(P_URL => ''f?p=''                                            ',
'               ||:APP_ID',
'               ||'':''',
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
'               || 490',
'               || ''_DOCTTYPE,P''',
'               || 49',
'               || ''_SUBTTYPE:''',
'               || ''nmpurren,''',
'               || a.docnumbr',
'               || '',''',
'               || a.docttype',
'               || '',''',
'               || a.subttype',
'               || '':'') PRINT,       ',
'    a.WARECODE,',
'    a.REFNUMBR,',
'    a.REFNDATE',
'    FROM nmprocur a, nmreqapr q, nmstkrec s',
'   WHERE     a.compcode = :compcode',
'         AND a.compcode = q.compcode(+)',
'         AND A.ITEMCODE = q.ITEMCODE(+)',
'         AND a.DOCNUMBR = q.DOCNUMBR(+)',
'         AND a.compcode = s.compcode(+)',
'         AND a.ITEMCODE = s.ITEMCODE(+)',
'         AND a.DOCNUMBR=s.UPDOCNUM(+)',
'         AND a.docttype = :P558_TRANTYPE',
'         AND a.subttype = :P558_SUBTTYPE',
'         AND a.statuscd = :P558_STATUS --DECODE (:P181_POSTSTATUS, ''M'', ''APR'', a.statuscd)',
'         --AND a.postflag in (''N''/*,''Y''*/)',
'         AND a.postflag IN',
'                CASE WHEN :TRNMODE = ''M'' THEN ''N''',
'                   WHEN :TRNMODE = ''E''  THEN',
'                      CASE WHEN a.statuscd = ''APR'' THEN ''Y''',
'                           ELSE a.postflag',
'                        END',
'                END',
'         --    and a.OPRSTAMP=:APP_USER',
'         --AND A.DOCNUMBR NOT IN (SELECT DOCNUMBR FROM nmprocur WHERE POSTFLAG = ''Y'' )',
'         AND (a.costcode IN',
'                 (SELECT cabasecc',
'                    FROM sycstacc',
'                   WHERE compcode = :compcode AND grupcode = :APP_USER))',
'                 --  and a.DOCNUMBR=''PR103365''',
'GROUP BY a.COMPCODE,',
'         a.RAISEDBY,',
'         a.postflag,',
'         a.WARECODE,',
'         a.DOCTTYPE,',
'         a.SUBTTYPE,',
'         a.DOCNUMBR,',
'         a.DOCTDATE,',
'         a.statuscd,',
'         a.REFNUMBR,',
'         a.REFNDATE',
'ORDER BY a.doctdate DESC, docnumbr DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P558_POSTSTATUS,P558_TRANTYPE,P558_SUBTTYPE,P558_STATUS'
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
'''<div  style="padding-left: 10px;font-weight:bold;"><a href="''',
'         || APEX_UTIL.',
'             prepare_url (',
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
'               || ''nmpurres,''',
'               || a.docnumbr',
'               || '',''',
'               || a.docttype',
'               || '',''',
'               || a.subttype',
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
'            print_column,'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(338227157464279276)
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
,p_fixed_header_max_height=>480
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:560:&SESSION.::&DEBUG.:RP,560:P560_DOCTDATE1,P560_DOCTTYPE,P560_SUBTTYPE,P560_DOCNUMBR,P560_WARECODE,P560_REFNUMBR,P560_REFNDATE,P560_DOCTDATE,P560_DOCNUMBR1:#DOCTDATE#,#DOCTTYPE#,#SUBTTYPE#,#DOCNUMBR#,#WARECODE#,#REFNUMBR#,#REFNDATE#,#D'
||'OCTDATE#,#DOCNUMBR##ITEMCODE#'
,p_detail_link_text=>'<center><span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span></center>'
,p_detail_link_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_detail_link_cond=>'TRNMODE'
,p_detail_link_cond2=>'M'
,p_detail_link_auth_scheme=>wwv_flow_api.id(107806952186760770)
,p_owner=>'RILADM'
,p_internal_uid=>338227157464279276
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37038618011371928)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37039098223371931)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Document Details'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37039438950371931)
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
 p_id=>wwv_flow_api.id(37039878510371931)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37040250935371932)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Request Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37040624131371932)
,p_db_column_name=>'STATUSCD'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37041033873371932)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37041459159371932)
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
 p_id=>wwv_flow_api.id(37041847636371933)
,p_db_column_name=>'DELCHECKBOX'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Delete'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(5);',
'begin',
'/*',
'select DELSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y'' and :P558_POSTSTATUS=''N'' then',
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
 p_id=>wwv_flow_api.id(37042243368371934)
,p_db_column_name=>'UNIT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Unit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37035448150371922)
,p_db_column_name=>'REQUEST_QTY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Request Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37035853050371925)
,p_db_column_name=>'APPROVE_QTY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Approve Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37036276133371925)
,p_db_column_name=>'RECEIVE_QTY'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Receive Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37036659135371925)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Request By'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37037037659371927)
,p_db_column_name=>'RAISEDFROM'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Warehouse'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37037418482371927)
,p_db_column_name=>'POST_STATUS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Post Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37035095175371920)
,p_db_column_name=>'WARECODE'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37037885334371927)
,p_db_column_name=>'REFNUMBR'
,p_display_order=>40
,p_column_identifier=>'V'
,p_column_label=>'Refnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37038266246371927)
,p_db_column_name=>'REFNDATE'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>'Refndate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37042671469371935)
,p_db_column_name=>'PRINT'
,p_display_order=>60
,p_column_identifier=>'X'
,p_column_label=>'Print'
,p_column_html_expression=>'<a href="#PRINT#"><span title="Print" class="fa fa-print" aria-hidden="true"></span></a>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(338231451099280841)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'798932'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCDETAIL:DOCTDATE:REQUEST_QTY:APPROVE_QTY:RECEIVE_QTY:RAISEDBY:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(357873945581645953)
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
 p_id=>wwv_flow_api.id(37043355392371940)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(338227067509279276)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.:RESET:&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37043789193371940)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(338227067509279276)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37044194319371940)
,p_name=>'P558_POSTSTATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(338227067509279276)
,p_item_default=>'NEW'
,p_display_as=>'NATIVE_HIDDEN'
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
 p_id=>wwv_flow_api.id(37044514672371940)
,p_name=>'P558_TRANTYPE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(338227067509279276)
,p_item_default=>'&DOCTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37044990696371941)
,p_name=>'P558_SUBTTYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(338227067509279276)
,p_item_default=>'&SUBTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37045379487371941)
,p_name=>'P558_REQUEST'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(338227067509279276)
,p_item_default=>':REQUEST'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37046074699371941)
,p_name=>'P558_PRDOCTYP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(357873945581645953)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37046454078371942)
,p_name=>'P558_PRSUBTYP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(357873945581645953)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37046859431371942)
,p_name=>'P558_NARATION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(357873945581645953)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37153684174924307)
,p_name=>'P558_STATUS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(338227067509279276)
,p_item_default=>'NEW'
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Not Approved;NEW,Approved;APR'
,p_read_only_when=>'TRNMODE'
,p_read_only_when2=>'M'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(37047326723371942)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'89'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(37047721992371942)
,p_computation_sequence=>10
,p_computation_item=>'P65_PROGNAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P65_PROGNAME.'
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37049202997371944)
,p_name=>'Close Dialog'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(37043789193371940)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37049783013371945)
,p_event_id=>wwv_flow_api.id(37049202997371944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37050255768371945)
,p_event_id=>wwv_flow_api.id(37049202997371944)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37050655109371945)
,p_name=>'refresh on dialog close'
,p_event_sequence=>280
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(338227067509279276)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37051161252371945)
,p_event_id=>wwv_flow_api.id(37050655109371945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(338227067509279276)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37153790608924308)
,p_name=>'New'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P558_STATUS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37153888556924309)
,p_event_id=>wwv_flow_api.id(37153790608924308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(338227067509279276)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37048873095371944)
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
'If :P558_PROGNM  is null and :P558_NO is null then',
'   :P558_PROGNM := :FX_PROG_NAME;',
'   :P558_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P558_PROGNM,',
'                                      p_parentnm =>:P558_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P558_OPRSTAMP := :app_user;',
'  --:P558_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P558_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P558_PROGNM;',
'   :FX_PAGE_NO := :P558_NO;',
'Elsif :FX_PROG_NAME <> :P558_PROGNM And :FX_PAGE_NO <> :P558_NO Then',
'   :FX_PROG_NAME := :P558_PROGNM;',
'   :FX_PAGE_NO := :P558_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37048421764371944)
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37048071842371943)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':DOCTTYPE := :DOCTTYPE;',
':SUBTTYPE := :SUBTTYPE;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
