prompt --application/pages/page_00058
begin
--   Manifest
--     PAGE: 00058
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
 p_id=>58
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Multiple Requisition Approval'
,p_alias=>'NMMULAPR'
,p_page_mode=>'MODAL'
,p_step_title=>'Multiple Requisition Approval'
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
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180830133944'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50933976421760152)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P58_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P58_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(66360045216385668)
,p_name=>'Requisition Type'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY_1'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Distinct Initcap(naration)||''  (''||s.trantype||''/''||subttype||'')'' as d  ,s.trantype as doctype,subttype  as r ,''(''||(select count(count(Distinct Docnumbr))from nmreqapr',
'where DOCTTYPE=s.trantype ',
'and SUBTTYPE=s.subttype',
'and COMPCODE=s.compcode',
'and USERCODE=:APP_USER',
'and STATUSCD=''NEW''',
'group by DOCNUMBR)||'')'' as docnum',
'From SYDOCMAS s',
'Where s.compcode = :compcode ',
'And s.trantype||s.subttype in (',
'   SELECT  distinct  TRDOCTYP||TRSUBTYP',
'          FROM nmusrlev v',
'        WHERE v.trdoctyp in (SELECT distinct TRDOCTYP',
'        FROM nmwrkflw w',
'       WHERE w.compcode = :compcode',
'         and APPRNEED=''Y''',
'         and TRDOCTYP is not null',
'         and TRSUBTYP is not null)',
'         ',
'          AND v.trsubtyp in (SELECT distinct TRSUBTYP',
'        FROM nmwrkflw w',
'       WHERE w.compcode = :compcode',
'         and APPRNEED=''Y''',
'         and TRDOCTYP is not null',
'         and TRSUBTYP is not null)',
'         ',
'        and v.COMPCODE = :compcode',
'        and v.USERCODE=:APP_USER',
')',
'order by doctype',
''))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66360530831385685)
,p_query_column_id=>1
,p_column_alias=>'D'
,p_column_display_sequence=>1
,p_column_heading=>'Transection Type'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::P58_S_DOCTYP,P58_S_SUBTYP:#DOCTYPE#,#R#'
,p_column_linktext=>'#D#'
,p_column_link_attr=>'style="color: #4B66A7; cursor: auto; text-decoration: blink;"'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66360237977385678)
,p_query_column_id=>2
,p_column_alias=>'DOCTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Doc. Type'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66360332658385683)
,p_query_column_id=>3
,p_column_alias=>'R'
,p_column_display_sequence=>2
,p_column_heading=>'Sub. Type'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66360438626385685)
,p_query_column_id=>4
,p_column_alias=>'DOCNUM'
,p_column_display_sequence=>4
,p_column_heading=>'Total '
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66360622691385685)
,p_plug_name=>'Multiple Requisition Approval'
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
'         b.selected, (SELECT INITCAP (a.RAISEDBY|| ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = a.RAISEDBY) RAISEDBY ,',
'           INITCAP (',
'            (SELECT a.WARECODE||'' : ''||WAREDESC',
'               FROM nmwhsmas',
'              WHERE WARECODE =a.WARECODE',
'                    AND COMPCODE = a.compcode))',
'            raisedfrom,wm_concat(distinct a.itemcode||''-''||a.itemdesc) AS itemdesc,',
'         (SELECT INITCAP (a.RAISEDBY|| ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = a.RAISEDBY) AS usercode, b.status, b.edit, SUM (MSLCAMNT), a.apprvlev, a.warecode,',
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
'             AND usercode = :app_user) approvedqty',
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
'                               WHERE a.apprvlev <= p.apprvlev',
'                                 AND a.statuscd = ''APR''',
'                                 AND ITEMCODE = p.ITEMCODE',
'                                 AND docnumbr = p.docnumbr)',
'                         THEN apex_item.checkbox2 (1,p.docnumbr',
'                             ) ',
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
'             --  AND docnumbr = NVL (:p58_s_docnum, docnumbr)',
'               AND docttype IN (''PR'',''LP'')--NVL (:p58_s_doctyp, docttype)',
'             --  AND subttype = NVL (:p58_s_subtyp, subttype)',
'             --  AND costcode = NVL (:p58_s_jobcde, costcode)',
'               AND usercode = :app_user',
'               AND statuscd = :P58_RADIO',
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
'     --  AND docnumbr = NVL (:p58_s_docnum, docnumbr)',
'               AND docttype IN (''PR'',''LP'')--NVL (:p58_s_doctyp, docttype)',
'             --  AND subttype = NVL (:p58_s_subtyp, subttype)',
'             --  AND costcode = NVL (:p58_s_jobcde, costcode)',
'     AND a.statuscd = :P58_RADIO',
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
' order by a.doctdate desc,a.docnumbr'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P58_S_DOCNUM,P58_S_DOCTYP,P58_S_SUBTYP,P58_S_JOBCDE,P58_RADIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(66360838027385691)
,p_name=>'Report 1'
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
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'MONIR'
,p_internal_uid=>11809424340608327
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(66361135017385710)
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
 p_id=>wwv_flow_api.id(66362019668385711)
,p_db_column_name=>'DOCDETAILS'
,p_display_order=>6
,p_column_identifier=>'DF'
,p_column_label=>'Document Details'
,p_column_link=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.::P60_DOCNUM,P60_STATUS,P60_WARECODE:#DOCNUMBR#,#STATUS#,#WARECODE#'
,p_column_linktext=>'#DOCDETAILS#'
,p_column_link_attr=>'style="color: #4B66A7; cursor: auto; text-decoration: blink;"'
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
,p_static_id=>'DOCDETAILS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(66361223072385710)
,p_db_column_name=>'COMPCODE'
,p_display_order=>7
,p_column_identifier=>'CX'
,p_column_label=>'Comp. Code'
,p_report_label=>'Company<br>Code'
,p_sync_form_label=>'N'
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
 p_id=>wwv_flow_api.id(66361042286385710)
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
 p_id=>wwv_flow_api.id(66362343797385713)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>9
,p_column_identifier=>'E'
,p_column_label=>'Document<br>No.'
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
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(66361526425385711)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>10
,p_column_identifier=>'DA'
,p_column_label=>'Doctdate'
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
 p_id=>wwv_flow_api.id(66361331173385710)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>11
,p_column_identifier=>'CY'
,p_column_label=>'Doc.<br>Type'
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
 p_id=>wwv_flow_api.id(66361445708385710)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>12
,p_column_identifier=>'CZ'
,p_column_label=>'Sub<br>Type'
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
 p_id=>wwv_flow_api.id(66360940269385703)
,p_db_column_name=>'USERCODE'
,p_display_order=>100
,p_column_identifier=>'CM'
,p_column_label=>'Raised By'
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
 p_id=>wwv_flow_api.id(66361919329385711)
,p_db_column_name=>'WARECODE'
,p_display_order=>101
,p_column_identifier=>'DE'
,p_column_label=>'Warecode'
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
 p_id=>wwv_flow_api.id(66361645627385711)
,p_db_column_name=>'NO_OF_ITEM'
,p_display_order=>106
,p_column_identifier=>'DB'
,p_column_label=>'No. Of Item'
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
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'NO_OF_ITEM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(66361825729385711)
,p_db_column_name=>'APPRVLEV'
,p_display_order=>108
,p_column_identifier=>'DD'
,p_column_label=>'Approved Level'
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
 p_id=>wwv_flow_api.id(66362132359385711)
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
,p_tz_dependent=>'N'
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
 p_id=>wwv_flow_api.id(66362236591385711)
,p_db_column_name=>'APPROVEDQTY'
,p_display_order=>110
,p_column_identifier=>'DH'
,p_column_label=>'Approved Qty.'
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
,p_static_id=>'APPROVEDQTY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45092672507031867)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>111
,p_column_identifier=>'DI'
,p_column_label=>'Raised By'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45093335557031877)
,p_db_column_name=>'RAISEDFROM'
,p_display_order=>112
,p_column_identifier=>'DJ'
,p_column_label=>'Raised From'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45093960771031883)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>113
,p_column_identifier=>'DK'
,p_column_label=>'Item Description'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49829440133097535)
,p_db_column_name=>'SUM(MSLCAMNT)'
,p_display_order=>114
,p_column_identifier=>'DL'
,p_column_label=>'Total Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(66362437073385713)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'118111'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCDETAILS:ITEMDESC:USERCODE:NO_OF_ITEM:APPROVEDQTY:SUM(MSLCAMNT):STATUS:APPRVLEV:RAISEDFROM:SELECTED:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66364444936385744)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(116895633698609520)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66363427799385727)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(66360622691385685)
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
 p_id=>wwv_flow_api.id(66362619474385714)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(66360622691385685)
,p_button_name=>'ADVAN_SRCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Show advanched Search'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66362818249385725)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(66360622691385685)
,p_button_name=>'HIDE_SERCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Hide advanched Search'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66363038798385727)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(66360622691385685)
,p_button_name=>'P58_CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66363230892385727)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(66360622691385685)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66364630062385744)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(66364444936385744)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Search'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50934174165760152)
,p_name=>'P58_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(50933976421760152)
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
 p_id=>wwv_flow_api.id(50934368035760154)
,p_name=>'P58_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50933976421760152)
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
 p_id=>wwv_flow_api.id(50934579792760154)
,p_name=>'P58_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(50933976421760152)
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
 p_id=>wwv_flow_api.id(66363625508385727)
,p_name=>'P58_RADIO'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_api.id(66360622691385685)
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
 p_id=>wwv_flow_api.id(66363827334385741)
,p_name=>'P58_CHECKEDVALUE'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_api.id(66360622691385685)
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
 p_id=>wwv_flow_api.id(66364021066385742)
,p_name=>'P58_ROWCOUNT'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(66360622691385685)
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
 p_id=>wwv_flow_api.id(66364238027385742)
,p_name=>'P58_STATUS'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(66360622691385685)
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
'               AND docnumbr = NVL (:p58_s_docnum, docnumbr)',
'               AND docttype = NVL (:p58_s_doctyp, docttype)',
'               AND subttype = NVL (:p58_s_subtyp, subttype)',
'               AND costcode = NVL (:p58_s_jobcde, costcode)',
'--and WARECODE=nvl(:P58_S_WHSCDE,WARECODE)',
'               AND usercode = :app_user',
'               AND statuscd = :p58_radio',
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
'     AND a.statuscd = :P58_RADIO',
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
 p_id=>wwv_flow_api.id(66364824432385744)
,p_name=>'P58_S_CTGCODE'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(66364444936385744)
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
 p_id=>wwv_flow_api.id(66365031622385746)
,p_name=>'P58_S_SUBTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(66360622691385685)
,p_prompt=>'Sub Type'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P31_S_WHSCDE'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66365228896385746)
,p_name=>'P58_S_DOCNUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(66364444936385744)
,p_prompt=>'Doc.No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT p.docnumbr||''__''||p.doctdate as Docdesc,p.docnumbr as Docnumber',
'           FROM acreqapr p',
'          WHERE p.compcode = :compcode ',
'       ORDER BY 1 DESC'))
,p_lov_cascade_parent_items=>'P58_S_DOCTYP,P58_S_SUBTYP,P58_CAMODESL'
,p_ajax_items_to_submit=>'P58_S_DOCTYP,P58_S_SUBTYP,P58_CAMODESL'
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
 p_id=>wwv_flow_api.id(66365441018385746)
,p_name=>'P58_ITEMDESC'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(66364444936385744)
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
 p_id=>wwv_flow_api.id(66365625684385746)
,p_name=>'P58_S_WHSCDE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(66364444936385744)
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
 p_id=>wwv_flow_api.id(66365815415385746)
,p_name=>'P58_ITEMCODE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(66364444936385744)
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
 p_id=>wwv_flow_api.id(66366033804385746)
,p_name=>'P58_S_CATEGORY'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(66364444936385744)
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
 p_id=>wwv_flow_api.id(66366241650385747)
,p_name=>'P58_S_INDTYP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(66364444936385744)
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
 p_id=>wwv_flow_api.id(66366435167385747)
,p_name=>'P58_S_WHSNAM'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(66364444936385744)
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
 p_id=>wwv_flow_api.id(66366624543385747)
,p_name=>'P58_S_JOBCDE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(66364444936385744)
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
 p_id=>wwv_flow_api.id(66366835677385747)
,p_name=>'P58_S_JOBNAM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(66364444936385744)
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
 p_id=>wwv_flow_api.id(66367014002385747)
,p_name=>'P58_S_RAISED'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(66364444936385744)
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
 p_id=>wwv_flow_api.id(66367229356385747)
,p_name=>'P58_S_RAINAM'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(66364444936385744)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66367414805385747)
,p_name=>'P58_S_DOCTYP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(66360622691385685)
,p_prompt=>'Req. Type'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P31_S_SUBTYP'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116890500019521518)
,p_name=>'P58_DOCDESC'
,p_item_sequence=>735
,p_item_plug_id=>wwv_flow_api.id(66360622691385685)
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
 p_id=>wwv_flow_api.id(121157860971385472)
,p_name=>'P58_TRANTYPE'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_api.id(66360622691385685)
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
 p_id=>wwv_flow_api.id(121158128956387776)
,p_name=>'P58_SUBTTYPE'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_api.id(66360622691385685)
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66375019324385775)
,p_name=>'dynamic on subtype'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_S_SUBTYP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66375331779385777)
,p_event_id=>wwv_flow_api.id(66375019324385775)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'Select Distinct Initcap(naration) as naration  ',
'into :P7_S_INDTYP',
'From SYDOCMAS ',
'Where compcode = :compcode ',
'And trantype = :P7_S_DOCTYP',
'And modlcode = :modlcode',
'AND subttype =:P7_S_SUBTYP;',
'end;',
''))
,p_attribute_02=>'P7_S_DOCTYP,P7_S_SUBTYP'
,p_attribute_03=>'P7_S_INDTYP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66370643045385771)
,p_name=>'dynamic on Docnumber'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_S_DOCNUM'
,p_condition_element=>'P58_S_DOCNUM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66370931295385771)
,p_event_id=>wwv_flow_api.id(66370643045385771)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT DISTINCT p.docnumbr, p.costcode, p.warecode,a.waredesc, b.costdesc',
'into :P58_S_DOCNUM,:P58_S_JOBCDE,:P58_S_WHSCDE,:P58_S_WHSNAM,:P58_S_JOBNAM',
'           FROM nmreqapr p,nmwhsmas a ,syjobmas b',
'          WHERE p.compcode = :compcode',
'          and a.compcode = b.compcode',
'          and p.costcode=b.costcode',
'          and a.costcode=b.costcode',
'            and P.DOCNUMBR not in (select P.DOCNUMBR',
'                                    from nmprocur p',
'                                    where P.STATUSCD = ''LPO'')',
'           and p.docttype=:P58_S_DOCTYP',
'           and p.subttype=:P58_S_SUBTYP',
'and P.DOCNUMBR=:P58_S_DOCNUM',
'       ORDER BY p.docnumbr;',
'EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'end;'))
,p_attribute_02=>'P58_S_DOCNUM,P58_S_DOCTYP,P58_S_SUBTYP,P58_S_JOBCDE,P58_S_WHSCDE,P58_S_WHSNAM,P58_S_JOBNAM'
,p_attribute_03=>'P58_S_DOCNUM,P58_S_JOBCDE,P58_S_WHSCDE,P58_S_WHSNAM,P58_S_JOBNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66367839914385755)
,p_name=>'Hide search region'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66368125158385763)
,p_event_id=>wwv_flow_api.id(66367839914385755)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(66364444936385744)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66368237635385767)
,p_name=>'ooo'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(58043414729639244)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66368545768385767)
,p_event_id=>wwv_flow_api.id(66368237635385767)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(66364444936385744)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66368627486385767)
,p_name=>'hide show button'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60919816822724965)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66368938859385767)
,p_event_id=>wwv_flow_api.id(66368627486385767)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66369042341385767)
,p_name=>'show hide button'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60919816822724965)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66369316081385769)
,p_event_id=>wwv_flow_api.id(66369042341385767)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(66362818249385725)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66369415077385769)
,p_name=>'hide advanched region'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(66362818249385725)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66369742209385769)
,p_event_id=>wwv_flow_api.id(66369415077385769)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(66364444936385744)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66369826510385769)
,p_name=>'hide hide_button'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60919816822724965)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66370134512385769)
,p_event_id=>wwv_flow_api.id(66369826510385769)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66370237036385769)
,p_name=>'show show_button'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(66362818249385725)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66370518385385771)
,p_event_id=>wwv_flow_api.id(66370237036385769)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(66362818249385725)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66371042674385771)
,p_name=>'hide button on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66371330378385771)
,p_event_id=>wwv_flow_api.id(66371042674385771)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(66362818249385725)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66371431074385771)
,p_name=>'show region'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60919816822724965)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66371744321385772)
,p_event_id=>wwv_flow_api.id(66371431074385771)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(66364444936385744)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66371832332385772)
,p_name=>'hide button'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(66362818249385725)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66372140127385774)
,p_event_id=>wwv_flow_api.id(66371832332385772)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(66362818249385725)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66372227796385774)
,p_name=>'show button'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(66362818249385725)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66372540313385774)
,p_event_id=>wwv_flow_api.id(66372227796385774)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66373433068385774)
,p_name=>'all selected'
,p_event_sequence=>150
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66373742810385775)
,p_event_id=>wwv_flow_api.id(66373433068385774)
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
 p_id=>wwv_flow_api.id(66373836465385775)
,p_name=>'getting checkbox value'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(66363230892385727)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66374120914385775)
,p_event_id=>wwv_flow_api.id(66373836465385775)
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
'     window.document.getElementById(''P58_CHECKEDVALUE'').value = checkedValue;',
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
 p_id=>wwv_flow_api.id(66374241791385775)
,p_name=>'alert on checkbox'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(66363230892385727)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66374513848385775)
,p_event_id=>wwv_flow_api.id(66374241791385775)
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
 p_id=>wwv_flow_api.id(66374621148385775)
,p_name=>'count row'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(66363230892385727)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66374929999385775)
,p_event_id=>wwv_flow_api.id(66374621148385775)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_cnt number(9);',
'BEGIN',
'v_cnt := 0;',
'FOR i in 1..htmldb_application.g_f30.count',
'LOOP',
'v_cnt := v_cnt + 1;',
'END LOOP;',
'return v_cnt;',
':P58_ROWCOUNT:=v_cnt;',
'end;'))
,p_attribute_02=>'P58_ROWCOUNT'
,p_attribute_03=>'P58_ROWCOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47439213993696318)
,p_name=>'New'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(66363038798385727)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47439298681696319)
,p_event_id=>wwv_flow_api.id(47439213993696318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50934781269761556)
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
'If :P58_PROGNM  is null and :P58_NO is null then',
'   :P58_PROGNM := :FX_PROG_NAME;',
'   :P58_NO := :FX_PAGE_NO;',
'End if;',
'',
'',
'  --:P58_OPRSTAMP := :app_user;',
'  --:P58_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P58_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P58_PROGNM;',
'   :FX_PAGE_NO := :P58_NO;',
'Elsif :FX_PROG_NAME <> :P58_PROGNM And :FX_PAGE_NO <> :P58_NO Then',
'   :FX_PROG_NAME := :P58_PROGNM;',
'   :FX_PAGE_NO := :P58_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66367628316385749)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update on nmreqapr'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'update nmprocur',
'set statuscd = ''APR''',
'where docnumbr=APEX_APPLICATION.G_F01(i)',
'and statuscd=''NEW'';',
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
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(66363230892385727)
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
