prompt --application/pages/page_00311
begin
--   Manifest
--     PAGE: 00311
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
 p_id=>311
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Purchase Order Enquiry'
,p_page_mode=>'MODAL'
,p_step_title=>'Purchase Order Enquiry'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px 0px !important;',
'}'))
,p_dialog_height=>'650'
,p_dialog_width=>'100%'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20191003110401'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(361213899747775244)
,p_plug_name=>'Search Option'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(296195502572080061)
,p_plug_name=>'button region'
,p_parent_plug_id=>wwv_flow_api.id(361213899747775244)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(362530988489182509)
,p_plug_name=>'Report Option'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_1'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43271216562977990)
,p_plug_name=>'Purchase Order Enquiry '
,p_parent_plug_id=>wwv_flow_api.id(362530988489182509)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT   a.docnumbr',
'                || ''/''',
'                || a.doctdate',
'                || ''/''',
'                || a.docttype',
'                || ''/''',
'                || a.subttype ID,',
'                   a.docnumbr',
'                || ''/''',
'                || a.doctdate',
'                || ''/''',
'                || a.docttype',
'                || ''/''',
'                || a.subttype AS docdetail,',
'a.docttype,a.subttype,count(a.itemcode) Unit,',
'               apex_item.checkbox (1,',
'                           a.DOCNUMBR,',
'                           ''onchange="spCheckChange(this);"'',',
'                           :f_empno_list,',
'                           '',''',
'                          ) checkbox,',
'                apex_item.checkbox2(11, a.DOCNUMBR) delcheckbox,',
'                a.docnumbr AS docnumbr, a.doctdate AS doctdate,',
'                wm_concat(distinct a.itemcode) AS itemcode, wm_concat(distinct a.itemcode||''-''||a.itemdesc) AS itemdesc,',
'                a.statuscd AS statuscd,sum(a.APPRQNTY) Request_qty,sum(q.APPRQNTY) Approve_qty,(select sum(s.APPRQNTY)  from nmstkrec  s where   s.compcode=a.compcode',
'           and s.ITEMCODE=a.ITEMCODE',
'           and s.UPDOCNUM =a.docnumbr) Receive_qty,',
'                 (SELECT INITCAP (a.RAISEDBY|| ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = a.RAISEDBY) RAISEDBY ,',
'           INITCAP (',
'            (SELECT a.WARECODE||'' : ''||WAREDESC',
'               FROM nmwhsmas',
'              WHERE WARECODE =a.WARECODE',
'                    AND COMPCODE = a.compcode))',
'            raisedfrom,a.postflag post_status,',
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
'                                    ||''nmpurres,''',
'                                    ||a.docnumbr',
'                                    ||'',''',
'                                    || a.docttype',
'                                    ||'',''',
'                                    || a.subttype',
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
'           FROM nmprocur a,nmreqapr q',
'           WHERE a.compcode = :compcode ',
'            and a.compcode=q.compcode(+)',
'           and A.ITEMCODE=q.ITEMCODE(+)',
'           and a.DOCNUMBR=q.DOCNUMBR(+)',
'          AND a.docttype =''LP''',
'            AND NVL (a.SUBTTYPE, 0) BETWEEN NVL (:P311_SUBTTYPE_F, NVL (a.SUBTTYPE,0)) AND NVL (:P311_SUBTTYPE_T, NVL (a.SUBTTYPE,0))',
'            AND NVL (a.DOCNUMBR, ''D'') BETWEEN NVL (:P311_DOCNUMBR_F, NVL (a.DOCNUMBR, ''D'')) AND NVL (:P311_DOCNUMBR_T, NVL (a.DOCNUMBR, ''D''))',
'            AND NVL (a.COSTCODE, ''S'') BETWEEN NVL (:P311_COSTCODE_F, NVL (a.COSTCODE, ''S'')) AND NVL (:P311_COSTCODE_T, NVL (a.COSTCODE, ''S''))',
'             AND NVL (a.ITEMCODE,  ''S'') BETWEEN NVL (:P311_ITEMCODE_F, NVL (a.ITEMCODE, ''S'')) AND NVL (:P311_ITEMCODE_T, NVL (a.ITEMCODE, ''S''))',
'              AND NVL (a.PARTYCDE,  ''S'') BETWEEN NVL (:P311_PARTYCODE_F, NVL (a.PARTYCDE, ''S'')) AND NVL (:P311_PARTYCODE_T, NVL (a.PARTYCDE, ''S''))',
'               AND a.DOCTDATE BETWEEN NVL (:P311_FROMDATE, a.DOCTDATE) AND NVL (:P311_TODATE, a.DOCTDATE)',
'        --    and a.OPRSTAMP=:APP_USER',
'           -- AND a.postflag = :P89_POSTSTATUS',
'            AND (a.costcode IN (SELECT cabasecc',
'                                FROM sycstacc',
'                               WHERE compcode = :compcode  AND grupcode = :APP_USER))',
'                               group by a.COMPCODE,a.RAISEDBY,a.postflag,a.itemcode, a.WARECODE,a.DOCTTYPE, a.SUBTTYPE, a.DOCNUMBR, a.DOCTDATE,a.statuscd',
'       ORDER BY a.doctdate DESC--, docnumbr DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P311_SUBTTYPE_F,P311_SUBTTYPE_T,P311_DOCNUMBR_F,P311_DOCNUMBR_T,P311_COSTCODE_F,P311_COSTCODE_T,P311_ITEMCODE_F,P311_ITEMCODE_T,P311_PARTYCODE_F,P311_PARTYCODE_T,P311_FROMDATE,P311_TODATE'
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
 p_id=>wwv_flow_api.id(43271768473977996)
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
,p_internal_uid=>75618151543379340
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43271848289977997)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43271931666977998)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Document Details'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43272059851977999)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43272155808978000)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43272227164978001)
,p_db_column_name=>'UNIT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Unit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43272413330978002)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Checkbox'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43272491919978003)
,p_db_column_name=>'DELCHECKBOX'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Delcheckbox'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43272584714978004)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43272710378978005)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43272784688978006)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43784989101693057)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Item Description'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43785025632693058)
,p_db_column_name=>'STATUSCD'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43785166131693059)
,p_db_column_name=>'REQUEST_QTY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Request Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43785302124693060)
,p_db_column_name=>'APPROVE_QTY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Approve Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43785367597693061)
,p_db_column_name=>'RECEIVE_QTY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Receive Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43785491559693062)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Raised By'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43785542739693063)
,p_db_column_name=>'RAISEDFROM'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Raised From'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43785700264693064)
,p_db_column_name=>'POST_STATUS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Post status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43785747499693065)
,p_db_column_name=>'PRINT_COLUMN'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Print column'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(43802894023698236)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'761493'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCDETAIL:DOCTDATE:ITEMDESC:REQUEST_QTY:APPROVE_QTY:RECEIVE_QTY:RAISEDBY:RAISEDFROM:PRINT_COLUMN:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43739354931585165)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_api.id(361213899747775244)
,p_button_name=>'P311_NEWBTN'
,p_button_static_id=>'P49_NEWBTN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Newbtn'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43745630481585173)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(296195502572080061)
,p_button_name=>'P311_CANCEL'
,p_button_static_id=>'P49_CANCEL'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=100000:1:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-caret-square-o-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43746116873585173)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(296195502572080061)
,p_button_name=>'P311_RUNREPORT'
,p_button_static_id=>'P311_RUNREPORT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43271239136977991)
,p_name=>'P311_DOCNUMBR_T'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_prompt=>'Requsition No. To'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT p.DOCNUMBR d,p.DOCNUMBR r',
'  FROM nmprocur p',
' WHERE p.COMPCODE = :COMPCODE AND P.DOCTTYPE = ''LP''',
' AND (p.costcode IN (SELECT cabasecc',
'                                FROM sycstacc',
'                               WHERE compcode = :compcode  AND grupcode = :APP_USER))'))
,p_cSize=>15
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,2'
,p_attribute_05=>'2,5,8,9,10'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT docnumbr||''-''||doctdate||''-''||custname d,docnumbr r',
'           FROM nmsalrec s, nmcusmas cu',
'          WHERE s.partycde = cu.partycde',
'       ORDER BY s.docnumbr DESC',
'',
':P37_DOCNUMBR'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43271346773977992)
,p_name=>'P311_COSTCODE_T'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_prompt=>'Cost Code To'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT w.COSTDESC D,p.COSTCODE R',
'  FROM nmprocur p,syjobmas w',
' WHERE p.COMPCODE = :COMPCODE',
' and p.COMPCODE=w.COMPCODE',
' and p.COSTCODE=w.COSTCODE',
'       AND NVL (DOCNUMBR, ''D'') BETWEEN NVL (:P311_DOCNUMBR_F, NVL (DOCNUMBR, ''D'')) AND NVL (:P311_DOCNUMBR_T, NVL (DOCNUMBR, ''D''))',
'       AND P.DOCTTYPE = ''LP'''))
,p_lov_cascade_parent_items=>'P311_DOCNUMBR_F,P311_DOCNUMBR_T'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>15
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,2'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43271436096977993)
,p_name=>'P311_SUBTTYPE_T'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_prompt=>'Subtype To'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT DISTINCT p.SUBTTYPE D, p.SUBTTYPE R',
'  FROM nmprocur p',
' WHERE p.COMPCODE = :COMPCODE',
'       AND NVL (DOCNUMBR, ''D'') BETWEEN NVL (:P311_DOCNUMBR_F, NVL (DOCNUMBR, ''D'')) AND NVL (:P311_DOCNUMBR_T, NVL (DOCNUMBR, ''D''))',
'       AND NVL (COSTCODE, ''S'') BETWEEN NVL (:P311_COSTCODE_F, NVL (COSTCODE, ''S'')) AND NVL (:P311_COSTCODE_T, NVL (COSTCODE, ''S''))',
'       AND P.DWDOCTYP = ''LP''',
'       order by 2'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P311_DOCNUMBR_F,P311_DOCNUMBR_T,P311_COSTCODE_F,P311_COSTCODE_T'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'style="width:85%;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43271548914977994)
,p_name=>'P311_PARTYCODE_F'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_prompt=>'Party Code From'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT s.PRTYNAME D,p.PARTYCDE R',
'  FROM nmprocur p, sycompty s',
' WHERE p.COMPCODE = :COMPCODE',
' and p.COMPCODE=s.COMPCODE',
' and p.PARTYCDE=s.PARTYCDE',
'AND NVL (DWDOCNUM, ''D'') BETWEEN NVL (:P311_DOCNUMBR_F, NVL (DWDOCNUM, ''D'')) AND NVL (:P311_DOCNUMBR_T, NVL (DWDOCNUM, ''D''))',
'       AND NVL (COSTCODE, ''S'') BETWEEN NVL (:P311_COSTCODE_F, NVL (COSTCODE, ''S'')) AND NVL (:P311_COSTCODE_T, NVL (COSTCODE, ''S''))',
'       AND NVL (DWSUBTYP, 0) BETWEEN NVL (:P311_SUBTTYPE_F, NVL (DWSUBTYP,0)) AND NVL (:P311_SUBTTYPE_T, NVL (DWSUBTYP,0))',
'       AND P.DWDOCTYP = ''LP'''))
,p_lov_cascade_parent_items=>'P311_DOCNUMBR_F,P311_DOCNUMBR_T,P311_COSTCODE_F,P311_COSTCODE_T,P311_SUBTTYPE_F,P311_SUBTTYPE_T'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>15
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,2'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43271644942977995)
,p_name=>'P311_PARTYCODE_T'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_prompt=>'Party Code To'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT s.PRTYNAME D,p.PARTYCDE R',
'  FROM nmprocur p, sycompty s',
' WHERE p.COMPCODE = :COMPCODE',
' and p.COMPCODE=s.COMPCODE',
' and p.PARTYCDE=s.PARTYCDE',
'AND NVL (DWDOCNUM, ''D'') BETWEEN NVL (:P311_DOCNUMBR_F, NVL (DWDOCNUM, ''D'')) AND NVL (:P311_DOCNUMBR_T, NVL (DWDOCNUM, ''D''))',
'       AND NVL (COSTCODE, ''S'') BETWEEN NVL (:P311_COSTCODE_F, NVL (COSTCODE, ''S'')) AND NVL (:P311_COSTCODE_T, NVL (COSTCODE, ''S''))',
'       AND NVL (DWSUBTYP, 0) BETWEEN NVL (:P311_SUBTTYPE_F, NVL (DWSUBTYP,0)) AND NVL (:P311_SUBTTYPE_T, NVL (DWSUBTYP,0))',
'       AND P.DWDOCTYP = ''LP'''))
,p_lov_cascade_parent_items=>'P311_DOCNUMBR_F,P311_DOCNUMBR_T,P311_COSTCODE_F,P311_COSTCODE_T,P311_SUBTTYPE_F,P311_SUBTTYPE_T'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>15
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,2'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43739729128585167)
,p_name=>'P311_BATCHNUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43740188435585168)
,p_name=>'P311_BASECURR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43740583819585170)
,p_name=>'P311_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'url varchar2(1000);',
'cod varchar2(100):=''A0001'';',
'begin',
'--:P311_BASECURR1:=:P311_BASECURR;',
'--cod := :P311_BASECURR;',
'--select 27 into :P311_BASECURR from dual;',
'select distinct s.REPTURLL||''/reports/rwservlet/getjobid2376?server=rep_adminserver_reaz_asinst_1''||',
'CHR (38)',
'|| ''desformat=PDF''',
'|| CHR (38)',
'|| ''destype=Cache''',
'|| CHR (38)',
'|| ''P5=''',
'|| cod ',
'|| CHR (38)',
'|| ''APP_USER=''',
'|| :app_user',
'|| CHR (38)',
'|| ''PROGRAM_CODE=''',
'|| :P307_PROGCODE',
'|| CHR (38)',
'|| ''SESSION_ID=''',
'|| :APP_SESSION',
'into ',
'url',
'     from syparmas s',
'     where CACMPCDE = :compcode;',
'return(url);',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43740947424585170)
,p_name=>'P311_PROGNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_prompt=>'Program Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.PROGDESC d ,a.PROGNAME r',
'from symenmas a',
'where PROGNAME=''prbtchrp'''))
,p_cHeight=>1
,p_tag_attributes=>'style = "width:92%;"'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43741386584585170)
,p_name=>'P311_XURLTEST'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43741749013585170)
,p_name=>'P311_XURL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43742172699585170)
,p_name=>'P311_DOCNUMBR_F'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_prompt=>'Requsition No. From'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT p.DOCNUMBR d,p.DOCNUMBR r',
'  FROM nmprocur p',
' WHERE p.COMPCODE = :COMPCODE AND P.DOCTTYPE = ''LP''',
' AND (p.costcode IN (SELECT cabasecc',
'                                FROM sycstacc',
'                               WHERE compcode = :compcode  AND grupcode = :APP_USER))'))
,p_cSize=>15
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,2'
,p_attribute_05=>'2,5,8,9,10'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT docnumbr||''-''||doctdate||''-''||custname d,docnumbr r',
'           FROM nmsalrec s, nmcusmas cu',
'          WHERE s.partycde = cu.partycde',
'       ORDER BY s.docnumbr DESC',
'',
':P37_DOCNUMBR'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43742563030585170)
,p_name=>'P311_COSTCODE_F'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_prompt=>'Cost Code From'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT w.COSTDESC D,p.COSTCODE R',
'  FROM nmprocur p,syjobmas w',
' WHERE p.COMPCODE = :COMPCODE',
' and p.COMPCODE=w.COMPCODE',
' and p.COSTCODE=w.COSTCODE',
'       AND NVL (DOCNUMBR, ''D'') BETWEEN NVL (:P311_DOCNUMBR_F, NVL (DOCNUMBR, ''D'')) AND NVL (:P311_DOCNUMBR_T, NVL (DOCNUMBR, ''D''))',
'       AND P.DOCTTYPE = ''LP'''))
,p_lov_cascade_parent_items=>'P311_DOCNUMBR_F,P311_DOCNUMBR_T'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>15
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,2'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43742981094585170)
,p_name=>'P311_ITEMCODE_F'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_prompt=>'Item Name From'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select a.ITEMCODE,a.ITEMDES1 "Item Name"',
'from nmitemas a',
'where a.compcode=:COMPCODE'))
,p_cSize=>15
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'2,1'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43743332539585172)
,p_name=>'P311_FROMDATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43743771838585172)
,p_name=>'P311_TODATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_prompt=>'To Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43744216063585172)
,p_name=>'P311_TEST'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43744594737585172)
,p_name=>'P311_DOCTTYPE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43744917105585172)
,p_name=>'P311_SUBTTYPE_F'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_prompt=>'Subtype From'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT DISTINCT p.SUBTTYPE D, p.SUBTTYPE R',
'  FROM nmprocur p',
' WHERE p.COMPCODE = :COMPCODE',
'       AND NVL (DOCNUMBR, ''D'') BETWEEN NVL (:P311_DOCNUMBR_F, NVL (DOCNUMBR, ''D'')) AND NVL (:P311_DOCNUMBR_T, NVL (DOCNUMBR, ''D''))',
'       AND NVL (COSTCODE, ''S'') BETWEEN NVL (:P311_COSTCODE_F, NVL (COSTCODE, ''S'')) AND NVL (:P311_COSTCODE_T, NVL (COSTCODE, ''S''))',
'       AND P.DWDOCTYP = ''LP''',
'       order by 2'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P311_DOCNUMBR_F,P311_DOCNUMBR_T,P311_COSTCODE_F,P311_COSTCODE_T'
,p_ajax_items_to_submit=>'P311_DOCNUMBR_F,P311_DOCNUMBR_T,P311_COSTCODE_F,P311_COSTCODE_T'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'style="width:85%;"'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
 p_id=>wwv_flow_api.id(43785885900693066)
,p_name=>'P311_ITEMCODE_T'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(361213899747775244)
,p_prompt=>'Item Name To'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select a.ITEMCODE,a.ITEMDES1 "Item Name"',
'from nmitemas a',
'where a.compcode=:COMPCODE'))
,p_cSize=>15
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'2,1'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43747616543585175)
,p_name=>'set value'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43746116873585173)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43748052063585176)
,p_event_id=>wwv_flow_api.id(43747616543585175)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P311_XURL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'location.hostname;'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43748356335585176)
,p_name=>'set value'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43746116873585173)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43748860934585176)
,p_event_id=>wwv_flow_api.id(43748356335585176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P311_XURLTEST'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(500);',
'begin',
'v_url:=''http://''||:P311_XURL||'':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\ORBRGS_WEB\Main\NM\BIN\''||:P311_PROGNAME||''.rdf&'';',
'v_url:=v_url||''&P0=''||:COMPCODE||''&P13=''||:P311_DOCNUMBR;',
'return v_url;',
'end;'))
,p_attribute_07=>'P311_XURL,P311_ITEMCODE_F,P311_DOCNUMBR_F,P311_PROGNAME,P311_OFRDOCNUMBR,P311_GATDOCNUMBR,P311_DEVDOCNUMBR'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43749304540585176)
,p_name=>'submit'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43746116873585173)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43749727275585176)
,p_event_id=>wwv_flow_api.id(43749304540585176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43750149759585176)
,p_name=>'value assign into document number'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43750708013585178)
,p_event_id=>wwv_flow_api.id(43750149759585176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P311_PROGNAME=''nmslsorp'' then',
':P311_OFRDOCNUMBR := :OFRDOCNUMBR;',
'elsif :P311_PROGNAME=''nminvmny'' then',
':P311_DOCNUMBR := :DOCNUMBR;',
'elsif :P311_PROGNAME=''nmdlchln'' then',
':P311_DEVDOCNUMBR := :DEVDOCNUMBR;',
'elsif :P311_PROGNAME=''nmgatpas'' then',
':P311_GATDOCNUMBR := :GATDOCNUMBR;',
'else ',
'null;',
'end if;',
'end;'))
,p_attribute_02=>'P311_PROGNAME'
,p_attribute_03=>'P311_DOCNUMBR_F,P311_OFRDOCNUMBR,P311_DEVDOCNUMBR,P311_GATDOCNUMBR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43751110388585178)
,p_name=>'show/hide field on DOCNUMBR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P311_DOCNUMBR_F'
,p_condition_element=>'P311_DOCNUMBR_F'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43751596338585178)
,p_event_id=>wwv_flow_api.id(43751110388585178)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P311_OFRDOCNUMBR,P311_DEVDOCNUMBR,P311_GATDOCNUMBR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43751930700585178)
,p_name=>'show/hide field on OFRDOCNUMBR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P311_OFRDOCNUMBR'
,p_condition_element=>'P311_OFRDOCNUMBR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43752504702585178)
,p_event_id=>wwv_flow_api.id(43751930700585178)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P311_DOCNUMBR_F,P311_DEVDOCNUMBR,P311_GATDOCNUMBR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43752895563585178)
,p_name=>'show/hide field on DEVDOCNUMBR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P311_DEVDOCNUMBR'
,p_condition_element=>'P311_DEVDOCNUMBR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43753331034585179)
,p_event_id=>wwv_flow_api.id(43752895563585178)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P311_DOCNUMBR_F,P311_OFRDOCNUMBR,P311_GATDOCNUMBR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43753810798585179)
,p_name=>'show/hide field on GATDOCNUMBR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P311_GATDOCNUMBR'
,p_condition_element=>'P311_GATDOCNUMBR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43754238999585179)
,p_event_id=>wwv_flow_api.id(43753810798585179)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P311_DOCNUMBR_F,P311_OFRDOCNUMBR,P311_DEVDOCNUMBR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43754702468585179)
,p_name=>'Refrash region'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P311_DOCNUMBR_F'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43755137875585179)
,p_event_id=>wwv_flow_api.id(43754702468585179)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(362530988489182509)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47439007385696316)
,p_name=>'New'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43745630481585173)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47439095267696317)
,p_event_id=>wwv_flow_api.id(47439007385696316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43747127500585175)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Goods Received Notes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_path varchar2(100);',
'V_comcde varchar2(5);',
'V_prgnme varchar2(500);',
'v_url varchar2(500);',
'v_ip varchar2(50);',
'begin',
'select REPTURLL ',
'into v_ip',
'from syparmas',
'where CACMPCDE=:COMPCODE;',
' v_url :=',
'         v_ip ',
'         || ''/reports/rwservlet?userid=orbrgs_rmg/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=''',
';',
'select WEBDRPTH ',
'into V_path',
'from sysyspth',
'where PATHCODE=substr(UPPER(:P311_PROGNAME),1,2);',
'',
'--:P100_XURLDYNMC',
':P311_XURLTEST :=v_url||V_path||:P311_PROGNAME||''.rdf''||''&p0=''||:COMPCODE||''&p13=''||:P311_DOCNUMBR||''&p5=''||:P311_DOCNUMBR||''&p1=''||:P311_DOCTTYPE||''&p3=''||:P311_SUBTTYPE;',
'',
'--raise_application_error(-20001,v_url);',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''nodata''||V_path);',
'when too_many_rows then',
'raise_application_error(-20001,''toomany''||v_url);',
'when others then',
'raise_application_error(-20001,''others''||v_url);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43746780688585175)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'assign url'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_path varchar2(100);',
'V_comcde varchar2(5);',
'V_prgnme varchar2(500);',
'v_url varchar2(500);',
'v_ip varchar2(50);',
'begin',
'select REPTURLL ',
'into v_ip',
'from syparmas',
'where CACMPCDE=:COMPCODE;',
' v_url :=',
'         v_ip ',
'         || ''/reports/rwservlet?userid=orbrgs_rmg/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=''',
';',
'select WEBDRPTH ',
'into V_path',
'from sysyspth',
'where PATHCODE=substr(UPPER(:P311_PROGNAME),1,2);',
'',
'--:P100_XURLDYNMC',
':P311_XURLTEST :=v_url||V_path||:P311_PROGNAME||''.rdf''||''&p0=''||:COMPCODE||''&p13=''||:P311_DOCNUMBR||''&p5=''||:P311_DOCNUMBR||''&p1=''||:P311_DOCTTYPE||''&p3=''||:P311_SUBTTYPE;',
'',
'--raise_application_error(-20001,v_url);',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''nodata''||V_path);',
'when too_many_rows then',
'raise_application_error(-20001,''toomany''||v_url);',
'when others then',
'raise_application_error(-20001,''others''||v_url);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
