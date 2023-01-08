prompt --application/pages/page_00186
begin
--   Manifest
--     PAGE: 00186
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
 p_id=>186
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Purchase Requisition Approval'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript"> ',
'function tabE(obj,e,s)',
'{',
'  if(e.keyCode==13)',
'  {',
'    window.document.getElementById(s).focus();',
'    return false; ',
'  } ',
'} ',
'</script> '))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.Current{',
' /* empty -display as requested by the report template */',
'}',
'',
'.Waiting{',
' display: none;',
'}',
'',
'.formlayout td fieldset label {',
'color: green ',
'! important;',
'font-weight: bold',
'! important;',
'}',
'#tabs .bg {',
'    height: 8px ! important;',
'    }',
''))
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200625210032'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127342379731797860)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>110
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127347261241797866)
,p_plug_name=>'Purchase Requisition Approval'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_1'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   a.compcode, docttype, subttype, a.docnumbr,a.docnumbr|| ''/''|| doctdate|| ''/''|| docttype|| ''/''|| subttype AS docdetails,a.doctdate,',
'         b.selected,',
'         (SELECT INITCAP (a.USERCODE|| ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = a.USERCODE) AS usercode, b.status, b.edit, SUM (apprqnty), a.apprvlev, a.warecode,',
'(SELECT COUNT (*) ',
'            FROM nmreqapr',
'           WHERE docnumbr = a.docnumbr',
'             AND docttype = a.docttype',
'             AND subttype = a.subttype',
'             AND compcode = a.compcode',
'             AND usercode = :app_user) no_of_item,',
'         (SELECT SUM (apprqnty)',
'            FROM nmreqapr',
'           WHERE docnumbr = a.docnumbr',
'             AND docttype = a.docttype',
'             AND subttype = a.subttype',
'             AND compcode = a.compcode',
'             AND usercode = :app_user',
'             AND statuscd = :P186_RADIO) approvedqty,',
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
'                                    ||''nmmatiss,''',
'                                    ||a.docnumbr',
'                                    ||'',''',
'                                    ||a.docttype',
'                                    ||'',''',
'                                    ||a.subttype',
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
' /*INITCAP (',
'            (SELECT WAREDESC',
'               FROM nmwhsmas',
'              WHERE WARECODE =',
'                       (SELECT DISTINCT LOCNCODE',
'                          FROM nmusrlev',
'                         WHERE     TRDOCTYP = a.docttype',
'                               AND TRSUBTYP = a.subttype',
'                               AND USERCODE = a.RAISEDBY)',
'                    AND COMPCODE = a.compcode))',
'            raisedfrom*/',
'    FROM nmreqapr a,',
'         (SELECT   p.compcode, p.docnumbr,',
'                   CASE',
'                      WHEN p.statuscd = ''APR''',
'                         THEN ''Approved''',
'                      WHEN p.apprvlev =',
'                             (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                                FROM nmreqapr a',
'                               WHERE a.apprvlev <= p.apprvlev',
'                                 AND a.statuscd = ''APR''',
'                                 AND ITEMCODE = p.ITEMCODE',
'                                 AND docnumbr = p.docnumbr)',
'                         THEN ''Current''',
'          /*',
'                      WHEN p.apprvlev =',
'                             (SELECT NVL (MAX (a.apprvlev), 0)',
'                                FROM nmreqapr a',
'                               WHERE --a.apprvlev <= p.apprvlev',
'                                 --AND a.statuscd = ''APR''',
'                                 --AND ',
'                                 ITEMCODE = p.ITEMCODE',
'                                 AND docnumbr = p.docnumbr',
'                                 and USERCODE = :app_user)',
'                         THEN ''Current''',
'          */',
'                          WHEN 0 =',
'                             (SELECT count(*)',
'                                FROM nmreqapr a',
'                               WHERE --a.apprvlev <= p.apprvlev',
'                                 --AND a.statuscd = ''APR''',
'                                 --AND ',
'                                 ITEMCODE = p.ITEMCODE',
'                                 AND docnumbr = p.docnumbr',
'                                 and USERCODE <> :app_user)',
'                         THEN ''Current''',
'          ',
'                      ELSE ''Waiting''',
'                   END status,',
'                   CASE',
'                      WHEN p.apprvlev =',
'                             (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                                FROM nmreqapr a',
'                               WHERE a.apprvlev <= p.apprvlev',
'                                 AND a.statuscd = ''APR''',
'                                 AND ITEMCODE = p.ITEMCODE',
'                                 AND docnumbr = p.docnumbr)',
'                         THEN apex_item.checkbox2 (1,p.docnumbr) ',
'          /*',
'                      WHEN p.apprvlev =',
'                             (SELECT NVL (MAX (a.apprvlev), 0)',
'                                FROM nmreqapr a',
'                               WHERE ',
'                               --a.apprvlev <= p.apprvlev',
'                                 --AND a.statuscd = ''APR''',
'                                 --AND ',
'                                 ITEMCODE = p.ITEMCODE',
'                                 AND docnumbr = p.docnumbr',
'                                 and USERCODE = :app_user)',
'                         THEN apex_item.checkbox2 (1,p.docnumbr)',
'          */',
'          ',
'                      WHEN 0 =',
'                             (SELECT count(*)',
'                                FROM nmreqapr a',
'                               WHERE ',
'                               --a.apprvlev <= p.apprvlev',
'                                 --AND a.statuscd = ''APR''',
'                                 --AND ',
'                                 ITEMCODE = p.ITEMCODE',
'                                 AND docnumbr = p.docnumbr',
'                                 and USERCODE <> :app_user)',
'                         THEN apex_item.checkbox2 (1,p.docnumbr)',
'                      ELSE null',
'                   END selected,',
'                    CASE',
'                      WHEN p.apprvlev =',
'                             (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                                FROM nmreqapr a',
'                               WHERE a.apprvlev <= p.apprvlev',
'                                 AND a.statuscd = ''APR''',
'                                 AND ITEMCODE = p.ITEMCODE',
'                                 AND docnumbr = p.docnumbr)',
'                         THEN ''<Font color= #4B66A7>Approved</Font>''',
'                      ELSE ''<Font color=red>Show Details</Font>''',
'                   END edit',
'              FROM nmreqapr p',
'             WHERE compcode = :compcode',
'             --  AND docnumbr = NVL (:p186_s_docnum, docnumbr)',
'               AND docttype NOT IN (''PR'',''LP'')--NVL (:p186_s_doctyp, docttype)',
'             --  AND subttype = NVL (:p186_s_subtyp, subttype)',
'             --  AND costcode = NVL (:p186_s_jobcde, costcode)',
'               AND usercode = :app_user',
'               AND statuscd = :p186_radio',
'          GROUP BY p.compcode,',
'                   p.docnumbr,',
'                   p.docttype,',
'                   p.subttype,',
'                   p.doctdate,',
'                   p.usercode,',
'                   p.apprvlev,',
'                   p.warecode,',
'                   p.statuscd,',
'                   p.ITEMCODE',
'          ORDER BY p.docnumbr DESC, 2, p.apprvlev) b',
'   WHERE a.compcode = b.compcode',
'     AND a.docnumbr = b.docnumbr ',
'     --  AND docnumbr = NVL (:p186_s_docnum, docnumbr)',
'               AND docttype NOT IN (''PR'',''LP'')--NVL (:p186_s_doctyp, docttype)',
'             --  AND subttype = NVL (:p186_s_subtyp, subttype)',
'             --  AND costcode = NVL (:p186_s_jobcde, costcode)',
'     AND a.statuscd = :P186_RADIO',
'     AND usercode = :app_user',
'GROUP BY a.compcode,',
'         a.docttype,',
'         a.subttype,',
'         a.docnumbr,',
'         a.doctdate,',
'         a.usercode,',
'         b.status,',
'         b.edit,',
'         a.apprvlev,',
'         a.warecode,',
'         a.RAISEDBY,',
'         b.selected',
' order by a.doctdate desc, docnumbr DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P186_S_DOCNUM,P186_S_DOCTYP,P186_S_SUBTYP,P186_S_JOBCDE,P186_RADIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(127347607603797868)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'MONIR'
,p_internal_uid=>90192740478117374
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127348505368797879)
,p_db_column_name=>'EDIT'
,p_display_order=>5
,p_column_identifier=>'CW'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::P28_DOCNUMBER:#DOCNUMBR#'
,p_column_linktext=>'#EDIT#'
,p_column_link_attr=>'style="color: #4B66A7; cursor: auto; text-decoration: blink;"'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'EDIT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127352136058797883)
,p_db_column_name=>'DOCDETAILS'
,p_display_order=>6
,p_column_identifier=>'DF'
,p_column_label=>'Docnumber Details'
,p_column_link=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.::P300_DOCNUM,P300_STATUS:#DOCNUMBR#,#STATUS#'
,p_column_linktext=>'#DOCDETAILS#'
,p_column_link_attr=>'style="color: #4B66A7; cursor: pointer; text-decoration: blink;"'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'DOCDETAILS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127348911051797880)
,p_db_column_name=>'COMPCODE'
,p_display_order=>7
,p_column_identifier=>'CX'
,p_column_label=>'Comp. Code'
,p_report_label=>'Company<br>Code'
,p_sync_form_label=>'N'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'COMPCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127348130233797877)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'CS'
,p_column_label=>'Status'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127353320019797885)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>9
,p_column_identifier=>'E'
,p_column_label=>'Document<br>No.'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127350101902797880)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>10
,p_column_identifier=>'DA'
,p_column_label=>'Doctdate'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127349317140797880)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>11
,p_column_identifier=>'CY'
,p_column_label=>'Doc.<br>Type'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127349684033797880)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>12
,p_column_identifier=>'CZ'
,p_column_label=>'Sub<br>Type'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'SUBTTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127347668468797871)
,p_db_column_name=>'USERCODE'
,p_display_order=>100
,p_column_identifier=>'CM'
,p_column_label=>'Raised By'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'USERCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127351740725797882)
,p_db_column_name=>'WARECODE'
,p_display_order=>101
,p_column_identifier=>'DE'
,p_column_label=>'Warecode'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'WARECODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127350501675797882)
,p_db_column_name=>'NO_OF_ITEM'
,p_display_order=>106
,p_column_identifier=>'DB'
,p_column_label=>'Total<br>Request'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'NO_OF_ITEM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127350932527797882)
,p_db_column_name=>'SUM(APPRQNTY)'
,p_display_order=>107
,p_column_identifier=>'DC'
,p_column_label=>'Total Amount'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'SUM(APPRQNTY)'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127351325809797882)
,p_db_column_name=>'APPRVLEV'
,p_display_order=>108
,p_column_identifier=>'DD'
,p_column_label=>'Approved<br>Level'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'APPRVLEV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127352530401797883)
,p_db_column_name=>'SELECTED'
,p_display_order=>109
,p_column_identifier=>'DG'
,p_column_label=>'<input type="checkbox" id="selectunselectall">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'SELECTED'
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_condition=>'P186_STATUS'
,p_display_condition2=>':Waiting:Current'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<input type="checkbox" #selectunselectall# value="#ROWNUM#" name="f30" id="f30_#ROWNUM#"/>',
'<input type="checkbox" #selectunselectall# value="1" name="f30" id="f30_1"/>',
'if :P31_STATUS <> ''Waiting:Approved''',
'then return true;',
'else',
'return false;',
'end if;'))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127352898086797885)
,p_db_column_name=>'APPROVEDQTY'
,p_display_order=>110
,p_column_identifier=>'DH'
,p_column_label=>'Total Qty'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'APPROVEDQTY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69422247520358203)
,p_db_column_name=>'PRINT_COLUMN'
,p_display_order=>120
,p_column_identifier=>'DI'
,p_column_label=>'Print column'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(127353689715797885)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'901989'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCDETAILS:USERCODE:NO_OF_ITEM:APPROVEDQTY:STATUS:APPRVLEV:PRINT_COLUMN:SELECTED:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127359001736797890)
,p_plug_name=>'Search Region'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY_1'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127354186463797888)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(127347261241797866)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127354616714797888)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(127347261241797866)
,p_button_name=>'ADVAN_SRCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Show advanched Search'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127355009612797888)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(127347261241797866)
,p_button_name=>'HIDE_SERCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Hide advanched Search'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127342864811797861)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(127347261241797866)
,p_button_name=>'P186_CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127343235218797863)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(127347261241797866)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127359441903797890)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(127359001736797890)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Search'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127355437692797888)
,p_name=>'P186_S_DOCTYP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(127347261241797866)
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127355835885797888)
,p_name=>'P186_S_SUBTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(127347261241797866)
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127356229420797888)
,p_name=>'P186_RADIO'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_api.id(127347261241797866)
,p_item_default=>'NEW'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct case WHEN NMSOFCDE = ''NEW''',
'               THEN ''Not Approved''',
'WHEN NMSOFCDE = ''APR''',
'               THEN ''Approved''',
' END d , NMSOFCDE as r',
'from nmcodmas',
'where NMHRDCDE = ''ST''',
' AND MODLCODE = ''NM''',
' AND COMPCODE = :COMPCODE ',
'AND NMSOFCDE  in (''NEW'',''APR'')'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127356606250797890)
,p_name=>'P186_DOCDESC'
,p_item_sequence=>735
,p_item_plug_id=>wwv_flow_api.id(127347261241797866)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127357008308797890)
,p_name=>'P186_CHECKEDVALUE'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_api.id(127347261241797866)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127357437298797890)
,p_name=>'P186_ROWCOUNT'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(127347261241797866)
,p_prompt=>'Rowcount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127357862547797890)
,p_name=>'P186_STATUS'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(127347261241797866)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct  b.status',
'    FROM acreqapr a,',
'         (SELECT   p.compcode, p.docnumbr,',
'                   CASE',
'                      WHEN p.statuscd = ''APR''',
'                         THEN ''Approved''',
'                      WHEN p.apprvlev =',
'                             (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                                FROM acreqapr a',
'                               WHERE a.apprvlev <= p.apprvlev',
'                                 AND a.statuscd = ''APR''',
'                                 AND ACCTCODE= p.ACCTCODE',
'                                 AND docnumbr = p.docnumbr)',
'                         THEN ''Current''',
'                      ELSE ''Waiting''',
'                   END status',
'              FROM acreqapr p',
'             WHERE compcode = :compcode',
'               AND docnumbr = NVL (:p186_s_docnum, docnumbr)',
'               AND docttype = NVL (:p186_s_doctyp, docttype)',
'               AND subttype = NVL (:p186_s_subtyp, subttype)',
'               AND costcode = NVL (:p186_s_jobcde, costcode)',
'--and WARECODE=nvl(:P186_S_WHSCDE,WARECODE)',
'               AND usercode = :app_user',
'               AND statuscd = :p186_radio',
'          GROUP BY p.compcode,',
'                   p.docnumbr,',
'                   p.docttype,',
'                   p.subttype,',
'                   p.doctdate,',
'                   p.usercode,',
'                   p.apprvlev,',
'                   p.warecode,',
'                   p.statuscd,',
'                   p.ACCTCODE',
'          ORDER BY p.docnumbr DESC, 2, p.apprvlev) b',
'   WHERE a.compcode = b.compcode',
'     AND a.docnumbr = b.docnumbr',
'     AND a.statuscd = :P186_RADIO',
'     AND usercode = :app_user',
'GROUP BY a.compcode,',
'         a.docttype,',
'         a.subttype,',
'         a.docnumbr,',
'         a.doctdate,',
'         a.usercode,',
'         b.status,',
'         a.apprvlev,',
'         a.warecode,',
'         a.RAISEDBY'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127358210818797890)
,p_name=>'P186_TRANTYPE'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_api.id(127347261241797866)
,p_prompt=>'Trantype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127358589899797890)
,p_name=>'P186_SUBTTYPE'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_api.id(127347261241797866)
,p_prompt=>'Subttype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(127359844379797891)
,p_name=>'P186_S_DOCNUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(127359001736797890)
,p_prompt=>'Doc.No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT p.docnumbr||''__''||p.doctdate as Docdesc,p.docnumbr as Docnumber',
'           FROM acreqapr p',
'          WHERE p.compcode = :compcode ',
'       ORDER BY 1 DESC'))
,p_lov_cascade_parent_items=>'P186_S_DOCTYP,P186_S_SUBTYP,P186_CAMODESL'
,p_ajax_items_to_submit=>'P186_S_DOCTYP,P186_S_SUBTYP,P186_CAMODESL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P31_S_DOCTYP'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127360204247797891)
,p_name=>'P186_S_INDTYP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(127359001736797890)
,p_prompt=>'Sub Desc.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127360612432797891)
,p_name=>'P186_S_JOBCDE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(127359001736797890)
,p_prompt=>'Cst. Cd.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P7_S_WHSCDE'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127360995821797891)
,p_name=>'P186_S_JOBNAM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(127359001736797890)
,p_prompt=>'Cst. Cd. Name'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127361402230797891)
,p_name=>'P186_S_WHSCDE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(127359001736797890)
,p_prompt=>'Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT warecode||''----''||waredesc as waredesc,warecode as warecode',
'  FROM nmwhsmas',
' WHERE compcode = :compcode',
' order by 1 '))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P6_ITEMCODE'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127361864447797891)
,p_name=>'P186_S_WHSNAM'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(127359001736797890)
,p_prompt=>'Ware. Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127362175795797891)
,p_name=>'P186_ITEMCODE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(127359001736797890)
,p_prompt=>'Item Code'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P6_S_RAISED'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127362623484797891)
,p_name=>'P186_ITEMDESC'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(127359001736797890)
,p_prompt=>'Item Desc.'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P7_S_RAISED'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127363064717797891)
,p_name=>'P186_S_RAISED'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(127359001736797890)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Raised By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''SERLNUMB'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127363387722797891)
,p_name=>'P186_S_CTGCODE'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(127359001736797890)
,p_prompt=>'S ctgcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127363859743797893)
,p_name=>'P186_S_CATEGORY'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(127359001736797890)
,p_prompt=>'category'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127364170322797893)
,p_name=>'P186_S_RAINAM'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(127359001736797890)
,p_prompt=>'rainam'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(127367217281797893)
,p_name=>'Hide search region'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127367711677797893)
,p_event_id=>wwv_flow_api.id(127367217281797893)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(127359001736797890)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(127368155753797893)
,p_name=>'ooo'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(58043414729639244)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127368616024797897)
,p_event_id=>wwv_flow_api.id(127368155753797893)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(127359001736797890)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(127369033415797897)
,p_name=>'hide show button'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60919816822724965)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127369565093797897)
,p_event_id=>wwv_flow_api.id(127369033415797897)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(127369947850797897)
,p_name=>'show hide button'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60919816822724965)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127370397735797897)
,p_event_id=>wwv_flow_api.id(127369947850797897)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(127355009612797888)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(127370857042797897)
,p_name=>'hide advanched region'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(127355009612797888)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127371345174797897)
,p_event_id=>wwv_flow_api.id(127370857042797897)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(127359001736797890)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(127371725565797899)
,p_name=>'hide hide_button'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60919816822724965)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127372203084797899)
,p_event_id=>wwv_flow_api.id(127371725565797899)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(127372647061797899)
,p_name=>'show show_button'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(127355009612797888)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127373076827797899)
,p_event_id=>wwv_flow_api.id(127372647061797899)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(127355009612797888)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(127373471958797899)
,p_name=>'hide button on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127374036368797899)
,p_event_id=>wwv_flow_api.id(127373471958797899)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(127355009612797888)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(127374421718797899)
,p_name=>'show region'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60919816822724965)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127374934789797899)
,p_event_id=>wwv_flow_api.id(127374421718797899)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(127359001736797890)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(127375303796797899)
,p_name=>'hide button'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(127355009612797888)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127375788641797899)
,p_event_id=>wwv_flow_api.id(127375303796797899)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(127355009612797888)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(127376211707797899)
,p_name=>'show button'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(127355009612797888)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127376737416797899)
,p_event_id=>wwv_flow_api.id(127376211707797899)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(127377141609797899)
,p_name=>'all selected'
,p_event_sequence=>150
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127377581396797899)
,p_event_id=>wwv_flow_api.id(127377141609797899)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $( ''#selectunselectall'' ).is('':checked'') ) {',
'  $(''input[type=checkbox][name=f01]'').attr(''checked'',true);',
'}',
'else {',
'  $(''input[type=checkbox][name=f01]'').attr(''checked'',false);',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47440437170696330)
,p_name=>'Close Dialog'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(127342864811797861)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47440536512696331)
,p_event_id=>wwv_flow_api.id(47440437170696330)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11810458022185543)
,p_name=>'closeX'
,p_event_sequence=>200
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11810583459185544)
,p_event_id=>wwv_flow_api.id(11810458022185543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'parent.$(''.ui-dialog-titlebar-close'').hide();'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(127364567294797893)
,p_process_sequence=>20
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
'If :P186_PROGNM  is null and :P186_NO is null then',
'   :P186_PROGNM := :FX_PROG_NAME;',
'   :P186_NO := :FX_PAGE_NO;',
'End if;',
'',
'',
'  --:P186_OPRSTAMP := :app_user;',
'  --:P186_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P186_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P186_PROGNM;',
'   :FX_PAGE_NO := :P186_NO;',
'Elsif :FX_PROG_NAME <> :P186_PROGNM And :FX_PAGE_NO <> :P186_NO Then',
'   :FX_PROG_NAME := :P186_PROGNM;',
'   :FX_PAGE_NO := :P186_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(127364990777797893)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update on nmreqapr'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_approval varchar2(10);',
'    v_cunt number;',
'    v_aprlvl number;',
'BEGIN',
'    FOR i in 1..APEX_APPLICATION.G_F01.count LOOP',
'',
'        update nmreqapr',
'        set statuscd = ''APR'',',
'            MODIFYDT = SYSDATE',
'        where docnumbr=APEX_APPLICATION.G_F01(i)',
'        and USERCODE=:APP_USER; ',
'',
'        SELECT max(APPRVLEV) ',
'          into v_aprlvl',
'          FROM nmreqapr a',
'         WHERE a.docnumbr = APEX_APPLICATION.G_F01(i);',
'',
'        SELECT distinct count(docnumbr) ',
'          into v_cunt',
'          FROM nmreqapr a',
'         WHERE a.AUTHTYPE = ''APR''',
'           AND a.USERCODE=:APP_USER',
'           AND a.docnumbr=APEX_APPLICATION.G_F01(i);',
'           --AND a.APPRVLEV = v_aprlvl;',
'',
'        if v_cunt > 0 then',
'            update nmstkrec',
'            set statuscd = ''APR''',
'            where docnumbr=APEX_APPLICATION.G_F01(i)',
'            and statuscd=''NEW''',
'            and postflag = ''Y'';',
'        end if;',
'',
'    END LOOP;',
'exception',
'    when no_data_found then',
'    null;',
'    when too_many_rows then',
'    null;',
'    when others then',
'    null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(127343235218797863)
,p_process_success_message=>'Update successfully ..............'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_approval varchar2(10);',
'v_cunt number;',
'BEGIN',
'FOR i in 1..APEX_APPLICATION.G_F01.count LOOP',
'SELECT distinct count(docnumbr) into v_cunt',
'                                FROM nmreqapr a',
'                                 WHERE a.AUTHTYPE = ''APR''',
'                                 AND a.USERCODE=:APP_USER',
'                                 AND a.docnumbr=APEX_APPLICATION.G_F01(i);',
'update nmreqapr',
'set statuscd = ''APR'' ',
'where docnumbr=APEX_APPLICATION.G_F01(i)',
'and USERCODE=:APP_USER; ',
'',
'if v_cunt>0 then',
'update nmstkrec',
'set statuscd = ''APR''',
'where docnumbr=APEX_APPLICATION.G_F01(i)',
'and statuscd=''NEW'';',
'end if;',
'END LOOP;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
);
wwv_flow_api.component_end;
end;
/
