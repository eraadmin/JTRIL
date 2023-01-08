prompt --application/pages/page_00431
begin
--   Manifest
--     PAGE: 00431
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
 p_id=>431
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Purchase Requisition Approval'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_reload_on_submit=>'A'
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
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20200427175815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161282608329450715)
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
'  SELECT a.compcode,',
'         docttype,',
'         subttype,',
'         a.docnumbr,',
'         a.docnumbr || ''/'' || doctdate || ''/'' || docttype || ''/'' || subttype',
'            AS docdetails,',
'         a.doctdate,',
'         b.selected,',
'         (SELECT INITCAP (a.RAISEDBY || ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = a.RAISEDBY)',
'            RAISEDBY,',
'         INITCAP ( (SELECT a.WARECODE || '' : '' || WAREDESC',
'                      FROM nmwhsmas',
'                     WHERE WARECODE = a.WARECODE AND COMPCODE = a.compcode))',
'            raisedfrom,',
'         --wm_concat (DISTINCT a.itemcode || ''-'' || a.itemdesc) AS itemdesc,',
'         LISTAGG (a.itemdesc, '', '') WITHIN GROUP (ORDER BY a.itemdesc) itemdesc,',
'         (SELECT INITCAP (a.RAISEDBY || ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = a.RAISEDBY)',
'            AS usercode,',
'         b.status,',
'         b.edit,',
'         SUM (MSLCAMNT),',
'         a.apprvlev,',
'         a.warecode,',
'         (SELECT COUNT (*)',
'            FROM nmreqapr',
'           WHERE     docnumbr = a.docnumbr',
'                 AND docttype = a.docttype',
'                 AND subttype = a.subttype',
'                 AND compcode = a.compcode',
'                 AND usercode = :app_user)',
'            no_of_item,',
'         (SELECT SUM (apprqnty)',
'            FROM nmreqapr',
'           WHERE     docnumbr = a.docnumbr',
'                 AND docttype = a.docttype',
'                 AND subttype = a.subttype',
'                 AND compcode = a.compcode',
'                 AND usercode = :app_user)',
'            approvedqty',
'    /*INITCAP (',
'               (SELECT WAREDESC',
'                  FROM nmwhsmas',
'                 WHERE WARECODE =',
'                          (SELECT DISTINCT LOCNCODE',
'                             FROM nmusrlev',
'                            WHERE     TRDOCTYP = a.docttype',
'                                  AND TRSUBTYP = a.subttype',
'                                  AND USERCODE = a.RAISEDBY)',
'                       AND COMPCODE = a.compcode))',
'               raisedfrom*/',
'    FROM nmreqapr a,',
'         (  SELECT p.compcode,',
'                   p.docnumbr,',
'                   CASE',
'                      WHEN p.statuscd = ''APR''',
'                      THEN',
'                         ''Approved''',
'                      WHEN p.apprvlev =',
'                              (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                                 FROM nmreqapr a',
'                                WHERE     a.apprvlev <= p.apprvlev',
'                                      AND a.statuscd = ''APR''',
'                                      AND ITEMCODE = p.ITEMCODE',
'                                      AND docnumbr = p.docnumbr)',
'                      THEN',
'                         ''Current''',
'                      ELSE',
'                         ''Waiting''',
'                   END',
'                      status,',
'                   CASE',
'                      WHEN p.apprvlev =',
'                              (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                                 FROM nmreqapr a',
'                                WHERE     a.apprvlev <= p.apprvlev',
'                                      AND a.statuscd = ''APR''',
'                                      AND ITEMCODE = p.ITEMCODE',
'                                      AND docnumbr = p.docnumbr)',
'                      THEN',
'                         APEX_ITEM.checkbox2 (1, p.docnumbr)',
'                      ELSE',
'                         NULL',
'                   END',
'                      selected,',
'                   CASE',
'                      WHEN p.apprvlev =',
'                              (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                                 FROM nmreqapr a',
'                                WHERE     a.apprvlev <= p.apprvlev',
'                                      AND a.statuscd = ''APR''',
'                                      AND ITEMCODE = p.ITEMCODE',
'                                      AND docnumbr = p.docnumbr)',
'                      THEN',
'                         ''<Font color= #4B66A7>Approved</Font>''',
'                      ELSE',
'                         ''<Font color=red>Show Details</Font>''',
'                   END',
'                      edit',
'              FROM nmreqapr p',
'             WHERE compcode = :compcode --  AND docnumbr = NVL (:p58_s_docnum, docnumbr)',
'                   AND docttype IN (''PR'', ''LP'') --NVL (:p58_s_doctyp, docttype)',
'                                                --  AND subttype = NVL (:p58_s_subtyp, subttype)',
'                                                --  AND costcode = NVL (:p58_s_jobcde, costcode)',
'                   AND usercode = :app_user AND statuscd = :P431_RADIO',
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
'   WHERE a.compcode = b.compcode AND a.docnumbr = b.docnumbr --  AND docnumbr = NVL (:p58_s_docnum, docnumbr)',
'         AND docttype IN (''PR'', ''LP'')          --NVL (:p58_s_doctyp, docttype)',
'                                      --  AND subttype = NVL (:p58_s_subtyp, subttype)',
'                                      --  AND costcode = NVL (:p58_s_jobcde, costcode)',
'         AND a.statuscd = :P431_RADIO AND usercode = :app_user',
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
'ORDER BY a.doctdate DESC, a.docnumbr'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P431_S_DOCNUM,P431_S_DOCTYP,P431_S_SUBTYP,P431_S_JOBCDE,P431_RADIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
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
'             AND usercode = :app_user) approvedqty,',
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
'                      ELSE ''Waiting''',
'                   END status,',
'                   CASE',
'                      WHEN p.apprvlev =',
'                             (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                                FROM nmreqapr a',
'                          '))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(161282954691450717)
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
,p_owner=>'MONIR'
,p_internal_uid=>161282954691450717
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34009918903803057)
,p_db_column_name=>'EDIT'
,p_display_order=>5
,p_column_identifier=>'CW'
,p_column_label=>'Edit'
,p_column_link=>'#'
,p_column_linktext=>'#EDIT#'
,p_column_link_attr=>'style="color: #4B66A7; cursor: auto; text-decoration: blink;"'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'EDIT'
,p_column_comment=>'28'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34013122484803064)
,p_db_column_name=>'DOCDETAILS'
,p_display_order=>6
,p_column_identifier=>'DF'
,p_column_label=>'Docnumber Details'
,p_column_link=>'f?p=&APP_ID.:432:&SESSION.::&DEBUG.::P432_DOCNUM,P432_STATUS:#DOCNUMBR#,#STATUS#'
,p_column_linktext=>'#DOCDETAILS#'
,p_column_link_attr=>'style="color: #4B66A7; cursor: auto; text-decoration: blink;"'
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
 p_id=>wwv_flow_api.id(34010334287803057)
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
 p_id=>wwv_flow_api.id(34009525649803056)
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
 p_id=>wwv_flow_api.id(34014356741803065)
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
 p_id=>wwv_flow_api.id(34011558572803059)
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
 p_id=>wwv_flow_api.id(34010740242803059)
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
 p_id=>wwv_flow_api.id(34011132503803059)
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
 p_id=>wwv_flow_api.id(34009142630803056)
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
 p_id=>wwv_flow_api.id(34012736967803064)
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
 p_id=>wwv_flow_api.id(34011916899803059)
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
 p_id=>wwv_flow_api.id(34012393321803062)
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
 p_id=>wwv_flow_api.id(34013558071803064)
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
,p_display_condition=>'P31_STATUS'
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
 p_id=>wwv_flow_api.id(34013902360803065)
,p_db_column_name=>'APPROVEDQTY'
,p_display_order=>110
,p_column_identifier=>'DH'
,p_column_label=>'Approvedqty'
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
 p_id=>wwv_flow_api.id(34007554300803048)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>120
,p_column_identifier=>'DJ'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34007948573803053)
,p_db_column_name=>'RAISEDFROM'
,p_display_order=>130
,p_column_identifier=>'DK'
,p_column_label=>'Raisedfrom'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34008354838803054)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>140
,p_column_identifier=>'DL'
,p_column_label=>'Itemdesc'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34008754023803054)
,p_db_column_name=>'SUM(MSLCAMNT)'
,p_display_order=>150
,p_column_identifier=>'DM'
,p_column_label=>'Sum(mslcamnt)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(161289036803450734)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'340147'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCDETAILS:ITEMDESC:APPROVEDQTY:RAISEDFROM:STATUS:EDIT:SELECTED:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161294348824450739)
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
 p_id=>wwv_flow_api.id(34015000275803067)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(161282608329450715)
,p_button_name=>'HIDE_SERCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Hide advanched Search'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34015433279803068)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(161282608329450715)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34015883561803068)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(161282608329450715)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34020112717803079)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(161294348824450739)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Search'
,p_button_position=>'TOP'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34016263601803070)
,p_name=>'P431_S_DOCTYP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(161282608329450715)
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
 p_id=>wwv_flow_api.id(34016654165803075)
,p_name=>'P431_S_SUBTYP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(161282608329450715)
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
 p_id=>wwv_flow_api.id(34017096919803076)
,p_name=>'P431_RADIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(161282608329450715)
,p_item_default=>'NEW'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'       CASE',
'          WHEN NMSOFCDE = ''NEW'' THEN ''Not Approved''',
'          WHEN NMSOFCDE = ''APR'' THEN ''Approved''',
'       END',
'          d,',
'       NMSOFCDE AS r',
'  FROM nmcodmas',
' WHERE     NMHRDCDE = ''ST''',
'       AND MODLCODE = ''NM''',
'       AND COMPCODE = :COMPCODE',
'       AND NMSOFCDE IN (''NEW'', ''APR'')'))
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34017451798803076)
,p_name=>'P431_DOCDESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(161282608329450715)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34017818175803078)
,p_name=>'P431_CHECKEDVALUE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(161282608329450715)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34018269645803078)
,p_name=>'P431_ROWCOUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(161282608329450715)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34018668619803078)
,p_name=>'P431_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(161282608329450715)
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
'               AND docnumbr = NVL (:p431_s_docnum, docnumbr)',
'               AND docttype = NVL (:p431_s_doctyp, docttype)',
'               AND subttype = NVL (:p431_s_subtyp, subttype)',
'               AND costcode = NVL (:p431_s_jobcde, costcode)',
'--and WARECODE=nvl(:P431_S_WHSCDE,WARECODE)',
'               AND usercode = :app_user',
'               AND statuscd = :p431_radio',
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
'     AND a.statuscd = :P431_RADIO',
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34019081555803079)
,p_name=>'P431_TRANTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(161282608329450715)
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34019445755803079)
,p_name=>'P431_SUBTTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(161282608329450715)
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34020503210803079)
,p_name=>'P431_S_DOCNUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(161294348824450739)
,p_prompt=>'Doc.No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT p.docnumbr||''__''||p.doctdate as Docdesc,p.docnumbr as Docnumber',
'           FROM acreqapr p',
'          WHERE p.compcode = :compcode ',
'       ORDER BY 1 DESC'))
,p_lov_cascade_parent_items=>'P431_S_DOCTYP,P431_S_SUBTYP,P431_CAMODESL'
,p_ajax_items_to_submit=>'P431_S_DOCTYP,P431_S_SUBTYP,P431_CAMODESL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P31_S_DOCTYP'')"'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
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
 p_id=>wwv_flow_api.id(34020905635803079)
,p_name=>'P431_S_INDTYP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(161294348824450739)
,p_prompt=>'Sub Desc.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34021328727803079)
,p_name=>'P431_S_JOBCDE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(161294348824450739)
,p_prompt=>'Cst. Cd.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P7_S_WHSCDE'')"'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34021786022803081)
,p_name=>'P431_S_JOBNAM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(161294348824450739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34022195132803081)
,p_name=>'P431_S_WHSCDE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(161294348824450739)
,p_prompt=>'Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT warecode||''----''||waredesc as waredesc,warecode as warecode',
'  FROM nmwhsmas',
' WHERE compcode = :compcode',
' order by 1 '))
,p_cSize=>30
,p_cMaxlength=>4000
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P6_ITEMCODE'')"'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34022538292803081)
,p_name=>'P431_S_WHSNAM'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(161294348824450739)
,p_prompt=>'Ware. Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34022959445803081)
,p_name=>'P431_ITEMCODE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(161294348824450739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34023305357803081)
,p_name=>'P431_ITEMDESC'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(161294348824450739)
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34023783498803081)
,p_name=>'P431_S_RAISED'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(161294348824450739)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Raised By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_tag_attributes=>'onkeypress="return tabE(this,event,''SERLNUMB'')"'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34024118385803084)
,p_name=>'P431_S_CTGCODE'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(161294348824450739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34024591620803084)
,p_name=>'P431_S_CATEGORY'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(161294348824450739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34024987671803084)
,p_name=>'P431_S_RAINAM'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(161294348824450739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34027970884803089)
,p_name=>'Hide search region'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34028498273803089)
,p_event_id=>wwv_flow_api.id(34027970884803089)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(161294348824450739)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34028852291803090)
,p_name=>'ooo'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(57971771995489059)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34029329572803090)
,p_event_id=>wwv_flow_api.id(34028852291803090)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(161294348824450739)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34029715663803090)
,p_name=>'hide show button'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60848174088574780)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34030229017803092)
,p_event_id=>wwv_flow_api.id(34029715663803090)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34030666339803092)
,p_name=>'show hide button'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60848174088574780)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34031143641803092)
,p_event_id=>wwv_flow_api.id(34030666339803092)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34031528126803092)
,p_name=>'hide advanched region'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(127283366878647703)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34032025100803092)
,p_event_id=>wwv_flow_api.id(34031528126803092)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(161294348824450739)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34032435415803092)
,p_name=>'hide hide_button'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60848174088574780)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34032928650803092)
,p_event_id=>wwv_flow_api.id(34032435415803092)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34033312596803093)
,p_name=>'show show_button'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(127283366878647703)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34033850843803093)
,p_event_id=>wwv_flow_api.id(34033312596803093)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34034219785803093)
,p_name=>'hide button on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34034753700803093)
,p_event_id=>wwv_flow_api.id(34034219785803093)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34035194104803093)
,p_name=>'show region'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60848174088574780)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34035611816803095)
,p_event_id=>wwv_flow_api.id(34035194104803093)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(161294348824450739)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34036066119803095)
,p_name=>'hide button'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(127283366878647703)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34036545388803095)
,p_event_id=>wwv_flow_api.id(34036066119803095)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34036995124803095)
,p_name=>'show button'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(127283366878647703)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34037403384803095)
,p_event_id=>wwv_flow_api.id(34036995124803095)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34037856141803095)
,p_name=>'all selected'
,p_event_sequence=>150
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34038379424803095)
,p_event_id=>wwv_flow_api.id(34037856141803095)
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
 p_id=>wwv_flow_api.id(34038784542803095)
,p_name=>'getting checkbox value'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(66291588158235542)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34039264369803096)
,p_event_id=>wwv_flow_api.id(34038784542803095)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var checkedValue = null; ',
'var inputElements = document.getElementsByTagName(''input'');',
'for(var i=0; inputElements[i]; ++i){',
'      if(inputElements[i].checked){',
'           checkedValue = inputElements[i-5].value;',
'            inputElements[i-3].value = ''Current'';',
'     window.document.getElementById(''P431_CHECKEDVALUE'').value = checkedValue;',
'      }',
'}'))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var checkedValue = null; ',
'var inputElements = document.getElementsByTagName(''input'');',
'for(var i=0; inputElements[i]; ++i){',
'      if(inputElements[i].checked){',
'           checkedValue = inputElements[i-5].value;',
'            inputElements[i-3].value = ''Current'';',
'     window.document.getElementById(''P31_CHECKEDVALUE'').value = checkedValue;',
'      }',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34039670945803096)
,p_name=>'alert on checkbox'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(66291588158235542)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34040172150803096)
,p_event_id=>wwv_flow_api.id(34039670945803096)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var counter = 0;',
'if (!(document.wwv_flow.f01==null)) //At least some rows exist',
'{  ',
'l_checkboxes=document.wwv_flow.f01;',
'for (i=0;i<l_checkboxes.length;i++)',
'{',
'if (l_checkboxes.checked==true)',
'{counter = counter + 1;}',
'}',
'alert (''You have checked: ''+counter+'' rows.'');',
'} ',
'if (counter == 0) ',
'{',
'alert("Would you please select one or more rows to update?");',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34041425372803096)
,p_name=>'Close Dialog'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34015433279803068)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34041928835803096)
,p_event_id=>wwv_flow_api.id(34041425372803096)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54538530602103838)
,p_name=>'closeX'
,p_event_sequence=>200
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54538675675103839)
,p_event_id=>wwv_flow_api.id(54538530602103838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'parent.$(''.ui-dialog-titlebar-close'').hide();'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34025354781803085)
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
'If :P431_PROGNM  is null and :P431_NO is null then',
'   :P431_PROGNM := :FX_PROG_NAME;',
'   :P431_NO := :FX_PAGE_NO;',
'End if;',
'',
'',
'  --:P431_OPRSTAMP := :app_user;',
'  --:P431_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P431_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P431_PROGNM;',
'   :FX_PAGE_NO := :P431_NO;',
'Elsif :FX_PROG_NAME <> :P431_PROGNM And :FX_PAGE_NO <> :P431_NO Then',
'   :FX_PROG_NAME := :P431_PROGNM;',
'   :FX_PAGE_NO := :P431_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34025707481803085)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update on nmreqapr'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_approval varchar2(10);',
'    v_cunt number;',
'    v_aprlvl number;',
'    v_qty number;',
'',
'BEGIN',
'',
'',
'FOR i in 1..APEX_APPLICATION.G_F01.count LOOP',
'    update nmreqapr',
'       set statuscd = ''APR'',',
'           MODIFYDT = SYSDATE       ',
'     where docnumbr = APEX_APPLICATION.G_F01(i)',
'       and USERCODE = :APP_USER;',
'       --and ITEMCODE = :ITEMCODE; ',
'       ',
'    SELECT max(APPRVLEV) ',
'      into v_aprlvl',
'      FROM nmreqapr a',
'     WHERE a.docnumbr = APEX_APPLICATION.G_F01(i);',
'    ',
'    SELECT distinct count(docnumbr) ',
'      into v_cunt',
'      FROM nmreqapr a',
'     WHERE a.AUTHTYPE = ''APR''',
'       AND a.USERCODE = :APP_USER',
'       AND a.docnumbr = APEX_APPLICATION.G_F01(i);',
'       --AND a.APPRVLEV = v_aprlvl;',
'/*   ',
'    SELECT APPRQNTY',
'      into v_qty',
'      FROM nmreqapr a',
'     WHERE a.AUTHTYPE = ''APR''',
'       AND a.USERCODE = :APP_USER',
'       AND a.docnumbr = APEX_APPLICATION.G_F01(i)',
'       AND a.APPRVLEV = v_aprlvl;',
'*/   ',
'    if v_cunt > 0 then',
'        update nmprocur',
'           set statuscd = ''APR''--,     --APPRQNTY = v_qty',
'         where docnumbr = APEX_APPLICATION.G_F01(i)',
'           and statuscd = ''NEW'';',
'           --and POSTFLAG = ''Y'';',
'           --and ITEMCODE = :ITEMCODE;',
'       ',
'    end if;',
'END LOOP;',
'',
'exception',
'    when no_data_found then',
'        null;',
'    when too_many_rows then',
'        null;',
'    when others then',
'        null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(34015883561803068)
,p_process_success_message=>'Update successfully ..............'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_rowno NUMBER;',
'BEGIN',
'   for i in 1..apex_application.g_f30.count',
'   loop',
'      v_rowno := apex_application.g_f30(i);',
':P13_TEST_VAL := apex_application.g_f30(v_rowno);',
'   end loop;',
'END;'))
);
wwv_flow_api.component_end;
end;
/
