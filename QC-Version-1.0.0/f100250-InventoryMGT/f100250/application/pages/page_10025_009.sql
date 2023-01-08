prompt --application/pages/page_10025_009
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
 p_id=>1002500080
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Pre Stock Receive'
,p_alias=>'PRE-STOCK-RECEIVE'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC. Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
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
,p_last_upd_yyyymmddhh24miss=>'20230102115947'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77065024714595300)
,p_plug_name=>'button region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(162673078412509363)
,p_plug_name=>'Stock Receipt Purchase'
,p_region_name=>'nmmrstrn'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>1
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
'             ID,',
'            s.docnumbr',
'         || ''/''',
'         || s.doctdate',
'         || ''/''',
'         || s.docttype',
'         || ''/''',
'         || s.subttype',
'         || '' - ''',
'         || s.UPDOCNUM',
'             AS docdetail,',
'         s.docttype,',
'         s.subttype,',
'         COUNT (itemcode)',
'             Unit,',
'         APEX_ITEM.checkbox (1,',
'                             DOCNUMBR,',
'                             ''onchange="spCheckChange(this);"'',',
'                             :f_empno_list,',
'                             '','')',
'             checkbox,',
'         APEX_ITEM.checkbox2 (11, DOCNUMBR)',
'             delcheckbox,',
'         s.docnumbr',
'             AS docnumbr,',
'         s.doctdate',
'             AS doctdate,',
'         (SELECT INITCAP (s.RAISEDBY || ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = s.RAISEDBY)',
'             RAISEDBY,',
'         INITCAP (',
'             (SELECT s.WARECODE || '' - '' || WAREDESC',
'                FROM nmwhsmas',
'               WHERE WARECODE = s.WARECODE AND COMPCODE = s.compcode))',
'             raisedfrom,',
'         s.statuscd',
'             AS statuscd,',
'         SUM (s.ORGNQNTY)',
'             Request_qty,',
'         SUM (',
'             (SELECT SUM (b.TRNSQNTY)',
'               FROM nmstkrec b',
'              WHERE     b.compcode = s.compcode',
'                    AND b.UPDOCNUM = s.DOCNUMBR',
'                    AND b.ITEMCODE = s.ITEMCODE',
'                    AND b.DOCTTYPE = ''IS''',
'                    AND b.SUBTTYPE = 2))',
'             Issue_qty,',
'         /*',
'     SUM (',
'         (SELECT SUM (b.APPRQNTY)',
'           FROM nmstkrec b',
'          WHERE     b.compcode = s.compcode',
'                AND b.UPDOCNUM IN',
'                        (SELECT DISTINCT b.UPDOCNUM',
'                          FROM nmstkrec b',
'                         WHERE     b.compcode = s.compcode',
'                               AND b.ITEMCODE = s.ITEMCODE',
'                               AND b.UPDOCNUM = s.DOCNUMBR',
'                               AND b.DOCTTYPE = ''IS''',
'                               AND b.SUBTTYPE = 2)',
'                AND b.DOCTTYPE = ''IS''',
'                AND b.SUBTTYPE = 2))',
'         Receive_qty,',
'         */',
'         SUM (s.APPRQNTY)',
'             Receive_qty,',
'         s.WARECODE,',
'         s.COSTCODE,',
'         s.PARTYCDE,',
'         s.BATCHNUM,',
'         s.BATCHDTE,',
'         s.BATCHEXP,',
'         s.UPDOCNUM,',
'         TRUNC (UPDOCDTE)',
'             UPDOCDTE,',
'         APEX_UTIL.PREPARE_URL (',
'             P_URL   =>',
'                    ''f?p=''',
'                 || ''999901:''',
'                 || 9999010000',
'                 || '':''',
'                 || :app_session',
'                 || '':ADD:NO:''',
'                 || 9999010000',
'                 || '':P''',
'                 || 9999010000',
'                 || ''_PROGNAME,P''',
'                 || 9999010000',
'                 || ''_DOCNUMBR,P''',
'                 || 9999010000',
'                 || ''_DOCTTYPE,P''',
'                 || 9999010000',
'                 || ''_SUBTTYPE:''',
'                 || ''nmmatiss,''',
'                 || s.docnumbr',
'                 || '',''',
'                 || s.docttype',
'                 || '',''',
'                 || s.subttype',
'                 || '':'')',
'             PRINT',
'    FROM nmstkrec s',
'   WHERE     compcode = :compcode',
'         AND docttype = :docttype',
'         AND subttype = :subttype',
'         AND NVL (STATUSCD, ''NEW'') = :P1002500080_POSTSTATUS',
'         AND (costcode IN',
'                  (SELECT cabasecc',
'                     FROM sycstacc',
'                    WHERE compcode = :compcode AND grupcode = :APP_USER))',
'GROUP BY s.COMPCODE,',
'         s.RAISEDBY,',
'         s.postflag,',
'         s.WARECODE,',
'         s.DOCTTYPE,',
'         s.SUBTTYPE,',
'         s.DOCNUMBR,',
'         s.DOCTDATE,',
'         s.WARECODE,',
'         s.COSTCODE,',
'         s.PARTYCDE,',
'         s.BATCHNUM,',
'         s.BATCHDTE,',
'         s.BATCHEXP,',
'         s.statuscd,',
'         s.UPDOCNUM,',
'         UPDOCDTE',
'ORDER BY doctdate DESC, docnumbr DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1002500080_POSTSTATUS'
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
 p_id=>wwv_flow_api.id(162673423420509363)
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
,p_fixed_header_max_height=>320
,p_lazy_loading=>true
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:430:&SESSION.:MOD:&DEBUG.:430:P430_RCVNUMBR,P430_RCVDATE,P430_WARECODE,P430_COSTCODE,P430_SUPPLIERCDE,P430_BATCHNO,P430_BATCHDATE,P430_BTCHEXPDAT,P430_PODCDATE,P430_PODCNO:#DOCNUMBR#,#DOCTDATE#,#WARECODE#,#COSTCODE#,#PARTYCDE#,#BATCHNUM#'
||',#BATCHDTE#,#BATCHEXP#,#UPDOCDTE#,#UPDOCNUM##TRUNC(UPDOCDTE)#'
,p_detail_link_text=>'<center><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-page.png" class="apex-edit-page" alt=""></center>'
,p_detail_link_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_detail_link_cond=>'TRNMODE'
,p_detail_link_cond2=>'M'
,p_owner=>'RILADM'
,p_internal_uid=>162673423420509363
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41703457994459887)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41703899279459889)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Document Details'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41704239412459889)
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
 p_id=>wwv_flow_api.id(41704670332459889)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41705036608459890)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Transaction Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41705419735459901)
,p_db_column_name=>'STATUSCD'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41706200668459902)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41706640372459902)
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
 p_id=>wwv_flow_api.id(41707040441459903)
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
'and USERCODE=:APP_USER',
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
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41700259726459884)
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
 p_id=>wwv_flow_api.id(41700604611459885)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Raised By'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41701049234459885)
,p_db_column_name=>'RAISEDFROM'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Raised From'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41701493461459885)
,p_db_column_name=>'REQUEST_QTY'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Request Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41701807454459886)
,p_db_column_name=>'ISSUE_QTY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Issue Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41702251511459886)
,p_db_column_name=>'RECEIVE_QTY'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Receive Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41697846642459880)
,p_db_column_name=>'WARECODE'
,p_display_order=>29
,p_column_identifier=>'T'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41698238138459882)
,p_db_column_name=>'COSTCODE'
,p_display_order=>39
,p_column_identifier=>'U'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41698689176459883)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>49
,p_column_identifier=>'V'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41699064382459883)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>59
,p_column_identifier=>'W'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41699466117459884)
,p_db_column_name=>'BATCHDTE'
,p_display_order=>69
,p_column_identifier=>'X'
,p_column_label=>'Batchdte'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41699822743459884)
,p_db_column_name=>'BATCHEXP'
,p_display_order=>79
,p_column_identifier=>'Y'
,p_column_label=>'Batchexp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41702617239459886)
,p_db_column_name=>'UPDOCDTE'
,p_display_order=>89
,p_column_identifier=>'AA'
,p_column_label=>'Updocdte'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41703023614459887)
,p_db_column_name=>'UPDOCNUM'
,p_display_order=>99
,p_column_identifier=>'AB'
,p_column_label=>'Updocnum'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38951904119184027)
,p_db_column_name=>'PRINT'
,p_display_order=>109
,p_column_identifier=>'AC'
,p_column_label=>'Print'
,p_column_html_expression=>'<a href="#PRINT#"><span title="Print" class="fa fa-print" aria-hidden="true"></span></a>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(162678723112509367)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'838267'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCDETAIL:DOCTDATE:REQUEST_QTY:RECEIVE_QTY:RAISEDFROM:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41710457687459918)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(77065024714595300)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41707736390459908)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(162673078412509363)
,p_button_name=>'reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RIR::'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41708161943459913)
,p_name=>'P1002500080_POSTSTATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(162673078412509363)
,p_item_default=>'NEW'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Approve;APR,Non-Approve;NEW'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SYCODDES d,SYSOFCDE r from sycodmas where SYSOFCDE in',
'(select distinct PARTYTYP from sycompty)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''SY''',
'and SYHRDCDE=''CUS'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41708544262459915)
,p_name=>'P1002500080_TRANTYPE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(162673078412509363)
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41708963537459915)
,p_name=>'P1002500080_SUBTTYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(162673078412509363)
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41709351878459915)
,p_name=>'P1002500080_PRDOCTYP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(162673078412509363)
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
 p_id=>wwv_flow_api.id(41709705378459916)
,p_name=>'P1002500080_PRSUBTYP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(162673078412509363)
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41710885263459938)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(41710457687459918)
);
wwv_flow_api.component_end;
end;
/
