prompt --application/pages/page_00093
begin
--   Manifest
--     PAGE: 00093
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
 p_id=>93
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Pre Audit  Details'
,p_step_title=>'Pre Audit  Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140751'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68921391267712871)
,p_name=>'Fund Requisition Details Status'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   p.docnumbr,(Select  NMSOFCDE||''-''||NMCODDES  ',
'From nmcodmas',
'where    NMSOFCDE=p.NMSOFCDE',
'And   NMHRDCDE=p.NMHRDCDE',
'And    MODLCODE=''NM'') as fund, TO_CHAR (p.doctdate, ''dd/mm/rrrr'') doctdate,',
'         p.docttype, p.usercode, p.apprvlev,',
'         CASE',
'            WHEN p.statuscd = ''APR''',
'               THEN ''Approved''',
'            WHEN p.apprvlev =',
'                   (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                      FROM acreqapr a',
'                     WHERE a.apprvlev <= p.apprvlev',
'                       AND a.statuscd = ''APR''',
'                       AND NMSOFCDE = p.NMSOFCDE',
'                       AND docnumbr = p.docnumbr)',
'               THEN ''Current''',
'            ELSE ''Waiting''',
'         END status,',
'         subttype',
'    FROM acreqapr p',
'   WHERE compcode = :compcode',
'     and NMSOFCDE=:P93_ITEMCODE',
'     and DOCNUMBR in(',
'select distinct REFDCNUM from ACAUDITV3',
'where REFDCNUM=:P93_DOCNUM)',
'ORDER BY p.docnumbr, p.docttype, subttype, p.apprvlev'))
,p_display_when_condition=>'P93_DOCTYPE'
,p_display_when_cond2=>'J1'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P93_DOCNUM,P93_ITEMCODE'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68921599679712893)
,p_query_column_id=>1
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>1
,p_column_heading=>'Doc. No.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68921683006712898)
,p_query_column_id=>2
,p_column_alias=>'FUND'
,p_column_display_sequence=>3
,p_column_heading=>'Fund of request'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68921794232712898)
,p_query_column_id=>3
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>2
,p_column_heading=>'Doc. Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68921894463712898)
,p_query_column_id=>4
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Docttype'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68921972020712898)
,p_query_column_id=>5
,p_column_alias=>'USERCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Usercode'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68922072426712898)
,p_query_column_id=>6
,p_column_alias=>'APPRVLEV'
,p_column_display_sequence=>5
,p_column_heading=>'Approved Level'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68922170332712898)
,p_query_column_id=>7
,p_column_alias=>'STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'Status'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68922267179712898)
,p_query_column_id=>8
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Subttype'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68922384787712901)
,p_name=>'Purchase Order'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>8
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width:100%;float:left;"'
,p_display_point=>'BODY_1'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
' p.COMPCODE,',
' p.DOCTTYPE,',
' p.SUBTTYPE,',
' p.DOCNUMBR,',
' p.DOCTDATE,',
' p.RAISEDBY,',
' p.APPRVDBY,',
' p.APPRDATE,',
' (select p.COSTCODE||'':''||n.COSTDESC from syjobmas n',
' where p.COSTCODE=n.COSTCODE ',
' and p.COMPCODE=n.COMPCODE) COSTDESC,',
' p.STATUSCD,',
'sum(p.APPRQNTY),',
'count(*)no_of_item from NMPROCUR p,',
'(',
'select ',
' a.COMPCODE,',
' a.DOCTTYPE,',
' a.SUBTTYPE,',
' a.DOCNUMBR,',
' a.DOCTDATE,',
' a.RAISEDBY,',
' (Select USERNAME ',
'                From syusrmas',
'                Where USERCODE=a.RAISEDBY) as Raised_by,',
' a.APPRVDBY,',
' a.APPRDATE,',
' a.COSTCODE,',
' a.STATUSCD,',
'count(*)no_of_item',
'from NMPROCUR a,syjobmas s',
'where DOCNUMBR=:P93_DOCNUM',
'and a.COMPCODE=s.COMPCODE',
'and a.COSTCODE=s.COSTCODE',
'group by a.COMPCODE,',
' a.DOCTTYPE,',
' a.SUBTTYPE,',
' a.DOCNUMBR,',
' a.DOCTDATE,',
' a.RAISEDBY,',
' a.APPRVDBY,',
' a.APPRDATE,',
' a.COSTCODE,',
' a.STATUSCD',
') a',
'where p.compcode=a.compcode',
'and p.DOCNUMBR=:P93_DOCNUM',
'and p.docnumbr=a.docnumbr',
'--and upper(b.status)<>''APPROVED''',
'--and USERCODE=:APP_USER',
'group by p.COMPCODE,',
' p.DOCTTYPE,',
' p.SUBTTYPE,',
' p.DOCNUMBR,',
' p.DOCTDATE,',
' p.RAISEDBY,',
' p.APPRVDBY,',
' p.APPRDATE,',
' p.COSTCODE,',
' p.STATUSCD'))
,p_display_when_condition=>'P93_DOCTYPE'
,p_display_when_cond2=>'LP'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P93_DOCNUM'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68922581441712903)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Compcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68922699812712903)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Docttype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68922795222712903)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Subttype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68922883329712906)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>5
,p_column_heading=>'P.O.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68922985303712906)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>6
,p_column_heading=>'Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68923076715712906)
,p_query_column_id=>6
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>7
,p_column_heading=>'Raised By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68923177495712906)
,p_query_column_id=>7
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>8
,p_column_heading=>'Apprvdby'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68923279187712906)
,p_query_column_id=>8
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>9
,p_column_heading=>'Apprdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68923371876712906)
,p_query_column_id=>9
,p_column_alias=>'COSTDESC'
,p_column_display_sequence=>12
,p_column_heading=>'Cost Center'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68923487827712906)
,p_query_column_id=>10
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>1
,p_column_heading=>'STATUSCD'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68923585104712906)
,p_query_column_id=>11
,p_column_alias=>'SUM(P.APPRQNTY)'
,p_column_display_sequence=>10
,p_column_heading=>'Total Qty.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68923691647712906)
,p_query_column_id=>12
,p_column_alias=>'NO_OF_ITEM'
,p_column_display_sequence=>11
,p_column_heading=>'No. Of Item'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68923778146712906)
,p_name=>'Fund Requisition'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width:100%;float:left;"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
' p.COMPCODE,',
' p.DOCTTYPE,',
' p.SUBTTYPE,',
' p.DOCNUMBR,',
' p.DOCTDATE,',
' (select p.COSTCODE||'':''||n.COSTDESC from syjobmas n',
' where p.COSTCODE=n.COSTCODE ',
' and p.COMPCODE=n.COMPCODE) COSTDESC,',
'count(*)no_of_item from ACFNDREQ p,',
'(',
'select ',
' a.COMPCODE,',
' a.DOCTTYPE,',
' a.SUBTTYPE,',
' a.DOCNUMBR,',
' a.DOCTDATE,',
' a.COSTCODE,',
'count(*)no_of_item',
'from ACFNDREQ a,syjobmas s',
'where DOCNUMBR=:P93_DOCNUM',
'and a.COMPCODE=s.COMPCODE',
'and a.COSTCODE=s.COSTCODE',
'group by a.COMPCODE,',
' a.DOCTTYPE,',
' a.SUBTTYPE,',
' a.DOCNUMBR,',
' a.DOCTDATE,',
' a.COSTCODE',
') a',
'where p.compcode=a.compcode',
'and p.DOCNUMBR=:P93_DOCNUM',
'and p.docnumbr=a.docnumbr',
'--and upper(b.status)<>''APPROVED''',
'--and USERCODE=:APP_USER',
'group by p.COMPCODE,',
' p.DOCTTYPE,',
' p.SUBTTYPE,',
' p.DOCNUMBR,',
' p.DOCTDATE,',
' p.COSTCODE',
''))
,p_display_when_condition=>'P93_DOCTYPE'
,p_display_when_cond2=>'J1'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P93_DOCNUM'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68923999057712906)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_column_heading=>'COMPCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68924078194712906)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>2
,p_column_heading=>'DOCTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68924180377712906)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'SUBTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68924289321712906)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>4
,p_column_heading=>'Fund No.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68924395010712906)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68924471295712906)
,p_query_column_id=>6
,p_column_alias=>'COSTDESC'
,p_column_display_sequence=>6
,p_column_heading=>'Cost Center'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68924574077712906)
,p_query_column_id=>7
,p_column_alias=>'NO_OF_ITEM'
,p_column_display_sequence=>7
,p_column_heading=>'No. of Item'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68924670521712906)
,p_name=>'Itemwise Approved Information'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'       SELECT   p.docnumbr, itemcode, TO_CHAR (p.doctdate, ''dd/mm/rrrr'') doctdate,',
'         p.docttype, p.usercode, p.apprvlev,',
'         CASE',
'            WHEN p.statuscd = ''APR''',
'               THEN ''Approved''',
'            WHEN p.apprvlev =',
'                   (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                      FROM nmreqapr a',
'                     WHERE a.apprvlev <= p.apprvlev',
'                       AND a.statuscd = ''APR''',
'                       AND itemcode = p.itemcode',
'                       AND docnumbr = p.docnumbr)',
'               THEN ''Current''',
'            ELSE ''Waiting''',
'         END status,',
'         subttype',
'    FROM nmreqapr p',
'   WHERE compcode = :compcode',
'     AND itemcode =:P93_ITEMCODE',
'     AND p.docnumbr =:P93_DOCNUM',
'ORDER BY p.docnumbr, p.docttype, subttype, p.apprvlev'))
,p_display_when_condition=>'P93_DOCTYPE'
,p_display_when_cond2=>'LP'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P93_DOCNUM,P93_ITEMCODE'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68924892044712907)
,p_query_column_id=>1
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>1
,p_column_heading=>'Doc. No.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68924978506712907)
,p_query_column_id=>2
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>3
,p_column_heading=>'Item Code'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68925092229712907)
,p_query_column_id=>3
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>2
,p_column_heading=>'Doc. date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68925182881712907)
,p_query_column_id=>4
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Docttype'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68925290494712907)
,p_query_column_id=>5
,p_column_alias=>'USERCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Usercode'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68925381086712907)
,p_query_column_id=>6
,p_column_alias=>'APPRVLEV'
,p_column_display_sequence=>5
,p_column_heading=>'Approve Level'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68925469927712907)
,p_query_column_id=>7
,p_column_alias=>'STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'Status'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68925592931712907)
,p_query_column_id=>8
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Subtype'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68925679585712907)
,p_name=>'Purchase Order Information'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>9
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width:100%;float:right;"'
,p_display_point=>'BODY_1'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
' a.COMPCODE,',
' a.DOCTTYPE,',
' a.SUBTTYPE,',
' a.DOCNUMBR,',
' a.DOCTDATE,',
' a.SERLNUMB,',
' a.PARTYCDE,',
' a.SMANCODE,',
' a.RAISEDBY,',
' (Select USERNAME ',
'                From syusrmas',
'                Where USERCODE=a.RAISEDBY) as Raised_by,',
' (Select USERNAME ',
'                From syusrmas',
'                Where USERCODE=a.APPRVDBY) as Approvedby,',
' a.APPRVDBY,',
' a.APPRDATE,',
' a.REQDDATE,',
' a.COMMCODE,',
' a.ITEMCODE,',
' (Select ITEMDES1  ',
'			From nmitemas',
'            Where  ITEMCODE=a.ITEMCODE) as Itemname,',
' a.ITEMTYPE,',
' a.ITEMDESC,',
' a.ITEMLONG,',
' a.ITEMRATE,',
' a.LUOMCODE,',
' a.ORGNQNTY,',
' a.APPRQNTY,',
' a.TRNSQNTY,',
' a.REFNUMBR,',
' a.REFNDATE,',
' a.UPDOCTYP,',
' a.UPSUBTYP,',
' a.UPDOCNUM,',
' a.UPDOCDTE,',
' a.REMARKSS,',
' a.COSTCODE||'':''||s.COSTDESC as costname,',
' a.WARECODE,',
' a.STATUSCD,',
' a.MSFCAMNT,',
' a.MSLCAMNT,',
'case when DOCNUMBR=:P93_DOCNUM then',
'''Approval Status''',
'else null',
'end Status',
'from NMPROCUR a,syjobmas s',
'where DOCNUMBR=:P93_DOCNUM',
'and a.COMPCODE=s.COMPCODE',
'and a.COSTCODE=s.COSTCODE',
'and DOCNUMBR =:P93_DOCNUM',
'and SUBTTYPE=:P93_SUBTYPE',
'and DOCTTYPE=:P93_DOCTYPE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P93_DOCNUM,P93_SUBTYPE,P93_DOCTYPE'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68926175469712909)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_column_heading=>'COMPCODE'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68926269389712909)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>2
,p_column_heading=>'DOCTTYPE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68926384170712909)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'SUBTTYPE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68926472533712909)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>4
,p_column_heading=>'PO. No.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68926577297712909)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'PO. Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68926681577712909)
,p_query_column_id=>6
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>9
,p_column_heading=>'SERLNUMB'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68926777623712909)
,p_query_column_id=>7
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>12
,p_column_heading=>'PARTYCDE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68926884960712909)
,p_query_column_id=>8
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>13
,p_column_heading=>'SMANCODE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68926973383712909)
,p_query_column_id=>9
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>10
,p_column_heading=>'Raised By'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68925892173712909)
,p_query_column_id=>10
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>24
,p_column_heading=>'Raised By'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68925967796712909)
,p_query_column_id=>11
,p_column_alias=>'APPROVEDBY'
,p_column_display_sequence=>25
,p_column_heading=>'Approved By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68926088924712909)
,p_query_column_id=>12
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>11
,p_column_heading=>'Approved By'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68927076388712909)
,p_query_column_id=>13
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>16
,p_column_heading=>'Approved Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68927170183712909)
,p_query_column_id=>14
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>17
,p_column_heading=>'REQDDATE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68927273454712912)
,p_query_column_id=>15
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>18
,p_column_heading=>'COMMCODE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68927394369712912)
,p_query_column_id=>16
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>7
,p_column_heading=>'Item Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68927475653712912)
,p_query_column_id=>17
,p_column_alias=>'ITEMNAME'
,p_column_display_sequence=>8
,p_column_heading=>'Item Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68927584378712912)
,p_query_column_id=>18
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>21
,p_column_heading=>'ITEMTYPE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68927692083712912)
,p_query_column_id=>19
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>14
,p_column_heading=>'Item Name'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68927791805712912)
,p_query_column_id=>20
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>22
,p_column_heading=>'ITEMLONG'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68927898858712912)
,p_query_column_id=>21
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>23
,p_column_heading=>'Amount'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68927994979712912)
,p_query_column_id=>22
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>26
,p_column_heading=>'LUOMCODE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68928088919712912)
,p_query_column_id=>23
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>27
,p_column_heading=>'ORGNQNTY'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68928188576712912)
,p_query_column_id=>24
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>15
,p_column_heading=>'Approved Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68928276945712912)
,p_query_column_id=>25
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>28
,p_column_heading=>'TRNSQNTY'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68928391136712912)
,p_query_column_id=>26
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>29
,p_column_heading=>'REFNUMBR'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68928472161712912)
,p_query_column_id=>27
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>30
,p_column_heading=>'REFNDATE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68928597203712912)
,p_query_column_id=>28
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>31
,p_column_heading=>'UPDOCTYP'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68928679011712912)
,p_query_column_id=>29
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>32
,p_column_heading=>'UPSUBTYP'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68928775868712912)
,p_query_column_id=>30
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>33
,p_column_heading=>'UPDOCNUM'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68928868449712912)
,p_query_column_id=>31
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>34
,p_column_heading=>'UPDOCDTE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68928967134712912)
,p_query_column_id=>32
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>35
,p_column_heading=>'REMARKSS'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68929076738712912)
,p_query_column_id=>33
,p_column_alias=>'COSTNAME'
,p_column_display_sequence=>6
,p_column_heading=>'Cost Center'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68929175587712912)
,p_query_column_id=>34
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>36
,p_column_heading=>'WARECODE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68929289438712914)
,p_query_column_id=>35
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>37
,p_column_heading=>'STATUSCD'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68929372996712914)
,p_query_column_id=>36
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>19
,p_column_heading=>'Amount'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68929493396712914)
,p_query_column_id=>37
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>20
,p_column_heading=>'Mslcamnt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68929584932712914)
,p_query_column_id=>38
,p_column_alias=>'STATUS'
,p_column_display_sequence=>38
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_ITEMCODE:#ITEMCODE#'
,p_column_linktext=>'#STATUS#'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68931072525712942)
,p_name=>'Purchase Requisition Information'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
' a.COMPCODE,',
' a.DOCTTYPE,',
' a.SUBTTYPE,',
' a.DOCNUMBR,',
' a.DOCTDATE,',
' a.SERLNUMB,',
' a.PARTYCDE,',
' a.SMANCODE,',
' a.RAISEDBY,',
' (Select USERNAME ',
'                From syusrmas',
'                Where USERCODE=a.RAISEDBY) as Raised_by,',
' (Select USERNAME ',
'                From syusrmas',
'                Where USERCODE=a.APPRVDBY) as Approvedby,',
' a.APPRVDBY,',
' a.APPRDATE,',
' a.REQDDATE,',
' a.COMMCODE,',
' a.ITEMCODE,',
' (Select ITEMDES1  ',
'			From nmitemas',
'            Where  ITEMCODE=a.ITEMCODE) as Itemname,',
' a.ITEMTYPE,',
' a.ITEMDESC,',
' a.ITEMLONG,',
' a.ITEMRATE,',
' a.LUOMCODE,',
' a.ORGNQNTY,',
' a.APPRQNTY,',
' a.TRNSQNTY,',
' a.REFNUMBR,',
' a.REFNDATE,',
' a.UPDOCTYP,',
' a.UPSUBTYP,',
' a.UPDOCNUM,',
' a.UPDOCDTE,',
' a.REMARKSS,',
' a.COSTCODE||'':''||s.COSTDESC as costname,',
' a.WARECODE,',
' a.STATUSCD',
'from NMPROCUR a,syjobmas s',
'where DOCNUMBR in (select distinct UPDOCNUM from nmprocur',
'where DOCNUMBR=:P93_DOCNUM)and a.COMPCODE=s.COMPCODE',
'and a.COSTCODE=s.COSTCODE',
''))
,p_display_when_condition=>'P93_DOCTYPE'
,p_display_when_cond2=>'LP'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P93_DOCNUM,P93_DOCTYPE,P93_SUBTYPE'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68931281399712943)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_column_heading=>'COMPCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68931397874712943)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>2
,p_column_heading=>'DOCTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68931486393712943)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'SUBTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68931588201712943)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>4
,p_column_heading=>'Requisition No.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68931690861712943)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68931798900712943)
,p_query_column_id=>6
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>18
,p_column_heading=>'SERLNUMB'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68931898550712943)
,p_query_column_id=>7
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>17
,p_column_heading=>'PARTYCDE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68931975829712943)
,p_query_column_id=>8
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>19
,p_column_heading=>'SMANCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68932099309712945)
,p_query_column_id=>9
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>12
,p_column_heading=>'Raised by'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68932179728712945)
,p_query_column_id=>10
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>14
,p_column_heading=>'Raised By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68932279257712945)
,p_query_column_id=>11
,p_column_alias=>'APPROVEDBY'
,p_column_display_sequence=>15
,p_column_heading=>'Approved By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68932394905712945)
,p_query_column_id=>12
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>13
,p_column_heading=>'Approved by'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68932478685712945)
,p_query_column_id=>13
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>11
,p_column_heading=>'Approved Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68932598292712945)
,p_query_column_id=>14
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>21
,p_column_heading=>'REQDDATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68932687577712945)
,p_query_column_id=>15
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>22
,p_column_heading=>'COMMCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68932770045712945)
,p_query_column_id=>16
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>6
,p_column_heading=>'Item Code'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68932871979712945)
,p_query_column_id=>17
,p_column_alias=>'ITEMNAME'
,p_column_display_sequence=>9
,p_column_heading=>'Item Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68932990532712945)
,p_query_column_id=>18
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>23
,p_column_heading=>'ITEMTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68933095839712945)
,p_query_column_id=>19
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>7
,p_column_heading=>'Item Name'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68933193415712945)
,p_query_column_id=>20
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>16
,p_column_heading=>'ITEMLONG'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68933267246712948)
,p_query_column_id=>21
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>24
,p_column_heading=>'ITEMRATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68933369014712948)
,p_query_column_id=>22
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>25
,p_column_heading=>'LUOMCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68933498320712948)
,p_query_column_id=>23
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>20
,p_column_heading=>'ORGNQNTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68933567608712948)
,p_query_column_id=>24
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>10
,p_column_heading=>'Approved Qty.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68933693914712948)
,p_query_column_id=>25
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>26
,p_column_heading=>'TRNSQNTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68933776115712948)
,p_query_column_id=>26
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>27
,p_column_heading=>'Ref. No.'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68933889432712948)
,p_query_column_id=>27
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>28
,p_column_heading=>'REFNDATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68933967172712948)
,p_query_column_id=>28
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>29
,p_column_heading=>'UPDOCTYP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68934069288712948)
,p_query_column_id=>29
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>30
,p_column_heading=>'UPSUBTYP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68934170955712948)
,p_query_column_id=>30
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>31
,p_column_heading=>'UPDOCNUM'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68934270138712948)
,p_query_column_id=>31
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>32
,p_column_heading=>'UPDOCDTE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68934398866712948)
,p_query_column_id=>32
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>34
,p_column_heading=>'REMARKSS'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68934486469712948)
,p_query_column_id=>33
,p_column_alias=>'COSTNAME'
,p_column_display_sequence=>8
,p_column_heading=>'Cost Center'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68934576761712948)
,p_query_column_id=>34
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>33
,p_column_heading=>'WARECODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68934693845712948)
,p_query_column_id=>35
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>35
,p_column_heading=>'STATUSCD'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68934979704712948)
,p_name=>'Material Requisition Information'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.COMPCODE,a. DOCTTYPE,a. SUBTTYPE,a. DOCNUMBR,a. DOCTDATE,a. SERLNUMB,a. PARTYCDE,a. ',
'RAISEDBY,a. APPRVDBY,a. APPRDATE,a. REQDDATE,a. COMMCODE,a. ITEMCODE,a. ITEMTYPE,a. MCSERIAL,a. ',
'CMSERIAL,a. ITEMDESC,a. ITEMLONG,a. ITEMRATE,a. DISCPCNT,a. DISCAMNT,a. SPLDISPC,a. SPLDISNT,a.',
' SALERATE,a. HUOMCODE,a. FACTRVAL,a. LUOMCODE,a. ORGNQNTY,a. APPRQNTY,a. TRNSQNTY,a. TRNSQTY2,a.',
'  MSFCAMNT,a. CURRCODE,a. EXCGRATE,a. MSLCAMNT,a. ADJAMTLC,a. REFNUMBR,a. REFNDATE,a. UPDOCTYP,a.',
'   UPSUBTYP,a. UPDOCNUM,a. UPDOCDTE,a. UPDOCSRL,a. DWDOCTYP,a. DWSUBTYP,a. DWDOCNUM,a. DWDOCDTE,a.',
'   DWDOCSRL,a. ACDOCTYP,a. ACSUBTYP,a. ACDOCNUM,a. ACDOCDTE,a. ACDOCSRL,a. REMARKSS,a. COSTCODE,a. ',
'   WARECODE,a. POSTFLAG,a. PRNTFLAG,a. PRICFLAG,a. PRINTCNT,a. BALNFLAG,a. RATVFLAG,a. STATUSCD,a. ',
'   TCSTPCNT,a. DIVNCODE,a. TECHNICN,a. ENGINEER,a. AMENDSRL,a. MATLTYPE,a. BOQREFER,a. MFRGDATE,a. ',
'   MFRGTIME,a. PARNTITM,a. INDTFLAG,a. OPRSTAMP,a. TIMSTAMP,a.BATCHNUM,a. BATCHEXP,a. BATCHDTE,a. ',
'   NORMRATE,a. SRVCTRCN,a. DGNITMFK,a. STKRCFK1,a. COSTRATE,a. AVRGRATE,a. SERIALST,a. SERIALEN,a. ',
'   APPRVLEV,a. AUTHTYPE,a. USERCODE,a. SMANCODE ,',
'   a.COSTCODE||'':''||s.COSTDESC as costname,',
'   (Select ITEMDES1  ',
'			From nmitemas',
'            Where  ITEMCODE=a.ITEMCODE) as Itemname,',
'            (Select USERNAME ',
'                From syusrmas',
'                Where USERCODE=a.RAISEDBY) as Raised_by,',
' (Select USERNAME ',
'                From syusrmas',
'                Where USERCODE=a.APPRVDBY) as Approvedby',
'from nmreqapr a,syjobmas s',
'where UPDOCNUM in(',
'select distinct DOCNUMBR from nmprocur',
'where DOCNUMBR in(',
'select distinct UPDOCNUM from nmprocur',
'where DOCNUMBR=:P93_DOCNUM))',
'and a.COSTCODE=s.COSTCODE'))
,p_display_when_condition=>'P93_DOCTYPE'
,p_display_when_cond2=>'LP'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P93_DOCNUM'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68935174632712949)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_column_heading=>'COMPCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68935297243712949)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>2
,p_column_heading=>'DOCTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68935371429712949)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'SUBTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68935493738712949)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>4
,p_column_heading=>'Requisition No.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68935590799712949)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68935676083712949)
,p_query_column_id=>6
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>6
,p_column_heading=>'SERLNUMB'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68935786774712949)
,p_query_column_id=>7
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>7
,p_column_heading=>'PARTYCDE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68935873715712949)
,p_query_column_id=>8
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>8
,p_column_heading=>'Raised By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68935967660712949)
,p_query_column_id=>9
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>9
,p_column_heading=>'Approved By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68936079280712949)
,p_query_column_id=>10
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>16
,p_column_heading=>'Approved By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68936171833712949)
,p_query_column_id=>11
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>10
,p_column_heading=>'REQDDATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68936295663712949)
,p_query_column_id=>12
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>11
,p_column_heading=>'COMMCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68936376992712951)
,p_query_column_id=>13
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>12
,p_column_heading=>'Item Code'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68936490443712951)
,p_query_column_id=>14
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>19
,p_column_heading=>'ITEMTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68936589233712951)
,p_query_column_id=>15
,p_column_alias=>'MCSERIAL'
,p_column_display_sequence=>20
,p_column_heading=>'MCSERIAL'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68936690259712951)
,p_query_column_id=>16
,p_column_alias=>'CMSERIAL'
,p_column_display_sequence=>21
,p_column_heading=>'CMSERIAL'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68936790308712951)
,p_query_column_id=>17
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>22
,p_column_heading=>'Item Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68936867578712951)
,p_query_column_id=>18
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>23
,p_column_heading=>'ITEMLONG'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68936973165712951)
,p_query_column_id=>19
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>24
,p_column_heading=>'ITEMRATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68937072128712951)
,p_query_column_id=>20
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>25
,p_column_heading=>'DISCPCNT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68937188999712951)
,p_query_column_id=>21
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>26
,p_column_heading=>'DISCAMNT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68937297306712951)
,p_query_column_id=>22
,p_column_alias=>'SPLDISPC'
,p_column_display_sequence=>27
,p_column_heading=>'SPLDISPC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68937399819712951)
,p_query_column_id=>23
,p_column_alias=>'SPLDISNT'
,p_column_display_sequence=>28
,p_column_heading=>'SPLDISNT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68937489416712951)
,p_query_column_id=>24
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>29
,p_column_heading=>'SALERATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68937589290712951)
,p_query_column_id=>25
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>30
,p_column_heading=>'HUOMCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68937697559712951)
,p_query_column_id=>26
,p_column_alias=>'FACTRVAL'
,p_column_display_sequence=>31
,p_column_heading=>'FACTRVAL'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68937790828712951)
,p_query_column_id=>27
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>32
,p_column_heading=>'LUOMCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68937873598712951)
,p_query_column_id=>28
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>33
,p_column_heading=>'ORGNQNTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68937989177712951)
,p_query_column_id=>29
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>15
,p_column_heading=>'Approved Qty.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68938071261712951)
,p_query_column_id=>30
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>34
,p_column_heading=>'TRNSQNTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68938179224712951)
,p_query_column_id=>31
,p_column_alias=>'TRNSQTY2'
,p_column_display_sequence=>35
,p_column_heading=>'TRNSQTY2'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68938275907712951)
,p_query_column_id=>32
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>36
,p_column_heading=>'MSFCAMNT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68938391979712951)
,p_query_column_id=>33
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>37
,p_column_heading=>'CURRCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68938494852712951)
,p_query_column_id=>34
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>38
,p_column_heading=>'EXCGRATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68938586580712951)
,p_query_column_id=>35
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>39
,p_column_heading=>'MSLCAMNT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68938682446712951)
,p_query_column_id=>36
,p_column_alias=>'ADJAMTLC'
,p_column_display_sequence=>40
,p_column_heading=>'ADJAMTLC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68938782589712951)
,p_query_column_id=>37
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>41
,p_column_heading=>'REFNUMBR'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68938893879712951)
,p_query_column_id=>38
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>42
,p_column_heading=>'REFNDATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68938985473712951)
,p_query_column_id=>39
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>43
,p_column_heading=>'UPDOCTYP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68939091003712951)
,p_query_column_id=>40
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>44
,p_column_heading=>'UPSUBTYP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68939178282712951)
,p_query_column_id=>41
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>45
,p_column_heading=>'UPDOCNUM'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68939296869712951)
,p_query_column_id=>42
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>46
,p_column_heading=>'UPDOCDTE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68939378999712951)
,p_query_column_id=>43
,p_column_alias=>'UPDOCSRL'
,p_column_display_sequence=>47
,p_column_heading=>'UPDOCSRL'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68939467607712953)
,p_query_column_id=>44
,p_column_alias=>'DWDOCTYP'
,p_column_display_sequence=>48
,p_column_heading=>'DWDOCTYP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68939597423712953)
,p_query_column_id=>45
,p_column_alias=>'DWSUBTYP'
,p_column_display_sequence=>49
,p_column_heading=>'DWSUBTYP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68939669420712953)
,p_query_column_id=>46
,p_column_alias=>'DWDOCNUM'
,p_column_display_sequence=>50
,p_column_heading=>'DWDOCNUM'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68939783331712953)
,p_query_column_id=>47
,p_column_alias=>'DWDOCDTE'
,p_column_display_sequence=>51
,p_column_heading=>'DWDOCDTE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68939872619712953)
,p_query_column_id=>48
,p_column_alias=>'DWDOCSRL'
,p_column_display_sequence=>52
,p_column_heading=>'DWDOCSRL'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68939969597712953)
,p_query_column_id=>49
,p_column_alias=>'ACDOCTYP'
,p_column_display_sequence=>53
,p_column_heading=>'ACDOCTYP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68940085250712953)
,p_query_column_id=>50
,p_column_alias=>'ACSUBTYP'
,p_column_display_sequence=>54
,p_column_heading=>'ACSUBTYP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68940177822712953)
,p_query_column_id=>51
,p_column_alias=>'ACDOCNUM'
,p_column_display_sequence=>55
,p_column_heading=>'ACDOCNUM'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68940276102712953)
,p_query_column_id=>52
,p_column_alias=>'ACDOCDTE'
,p_column_display_sequence=>56
,p_column_heading=>'ACDOCDTE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68940387582712953)
,p_query_column_id=>53
,p_column_alias=>'ACDOCSRL'
,p_column_display_sequence=>57
,p_column_heading=>'ACDOCSRL'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68940467238712953)
,p_query_column_id=>54
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>58
,p_column_heading=>'REMARKSS'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68940569103712953)
,p_query_column_id=>55
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>59
,p_column_heading=>'Cost Code'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68940679952712953)
,p_query_column_id=>56
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>60
,p_column_heading=>'WARECODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68940774413712953)
,p_query_column_id=>57
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>61
,p_column_heading=>'POSTFLAG'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68940884550712953)
,p_query_column_id=>58
,p_column_alias=>'PRNTFLAG'
,p_column_display_sequence=>62
,p_column_heading=>'PRNTFLAG'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68940971523712953)
,p_query_column_id=>59
,p_column_alias=>'PRICFLAG'
,p_column_display_sequence=>63
,p_column_heading=>'PRICFLAG'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68941099276712953)
,p_query_column_id=>60
,p_column_alias=>'PRINTCNT'
,p_column_display_sequence=>64
,p_column_heading=>'PRINTCNT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68941185136712953)
,p_query_column_id=>61
,p_column_alias=>'BALNFLAG'
,p_column_display_sequence=>65
,p_column_heading=>'BALNFLAG'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68941278449712953)
,p_query_column_id=>62
,p_column_alias=>'RATVFLAG'
,p_column_display_sequence=>66
,p_column_heading=>'RATVFLAG'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68941384842712953)
,p_query_column_id=>63
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>67
,p_column_heading=>'STATUSCD'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68941496237712953)
,p_query_column_id=>64
,p_column_alias=>'TCSTPCNT'
,p_column_display_sequence=>68
,p_column_heading=>'TCSTPCNT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68941587160712953)
,p_query_column_id=>65
,p_column_alias=>'DIVNCODE'
,p_column_display_sequence=>69
,p_column_heading=>'DIVNCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68941668416712953)
,p_query_column_id=>66
,p_column_alias=>'TECHNICN'
,p_column_display_sequence=>70
,p_column_heading=>'TECHNICN'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68941768149712953)
,p_query_column_id=>67
,p_column_alias=>'ENGINEER'
,p_column_display_sequence=>71
,p_column_heading=>'ENGINEER'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68941874205712953)
,p_query_column_id=>68
,p_column_alias=>'AMENDSRL'
,p_column_display_sequence=>72
,p_column_heading=>'AMENDSRL'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68941978330712953)
,p_query_column_id=>69
,p_column_alias=>'MATLTYPE'
,p_column_display_sequence=>73
,p_column_heading=>'MATLTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68942071617712953)
,p_query_column_id=>70
,p_column_alias=>'BOQREFER'
,p_column_display_sequence=>74
,p_column_heading=>'BOQREFER'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68942189197712953)
,p_query_column_id=>71
,p_column_alias=>'MFRGDATE'
,p_column_display_sequence=>75
,p_column_heading=>'MFRGDATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68942297737712953)
,p_query_column_id=>72
,p_column_alias=>'MFRGTIME'
,p_column_display_sequence=>76
,p_column_heading=>'MFRGTIME'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68942374767712953)
,p_query_column_id=>73
,p_column_alias=>'PARNTITM'
,p_column_display_sequence=>77
,p_column_heading=>'PARNTITM'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68942499236712953)
,p_query_column_id=>74
,p_column_alias=>'INDTFLAG'
,p_column_display_sequence=>78
,p_column_heading=>'INDTFLAG'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68942591094712953)
,p_query_column_id=>75
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>79
,p_column_heading=>'OPRSTAMP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68942685808712953)
,p_query_column_id=>76
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>80
,p_column_heading=>'TIMSTAMP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68942773931712953)
,p_query_column_id=>77
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>81
,p_column_heading=>'BATCHNUM'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68942885289712954)
,p_query_column_id=>78
,p_column_alias=>'BATCHEXP'
,p_column_display_sequence=>82
,p_column_heading=>'BATCHEXP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68942978116712954)
,p_query_column_id=>79
,p_column_alias=>'BATCHDTE'
,p_column_display_sequence=>83
,p_column_heading=>'BATCHDTE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68943094061712954)
,p_query_column_id=>80
,p_column_alias=>'NORMRATE'
,p_column_display_sequence=>84
,p_column_heading=>'NORMRATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68943182010712954)
,p_query_column_id=>81
,p_column_alias=>'SRVCTRCN'
,p_column_display_sequence=>85
,p_column_heading=>'SRVCTRCN'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68943278665712954)
,p_query_column_id=>82
,p_column_alias=>'DGNITMFK'
,p_column_display_sequence=>86
,p_column_heading=>'DGNITMFK'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68943397053712954)
,p_query_column_id=>83
,p_column_alias=>'STKRCFK1'
,p_column_display_sequence=>87
,p_column_heading=>'STKRCFK1'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68943481539712954)
,p_query_column_id=>84
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>88
,p_column_heading=>'COSTRATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68943581729712954)
,p_query_column_id=>85
,p_column_alias=>'AVRGRATE'
,p_column_display_sequence=>89
,p_column_heading=>'AVRGRATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68943695268712954)
,p_query_column_id=>86
,p_column_alias=>'SERIALST'
,p_column_display_sequence=>90
,p_column_heading=>'SERIALST'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68943794961712954)
,p_query_column_id=>87
,p_column_alias=>'SERIALEN'
,p_column_display_sequence=>91
,p_column_heading=>'SERIALEN'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68943874281712956)
,p_query_column_id=>88
,p_column_alias=>'APPRVLEV'
,p_column_display_sequence=>92
,p_column_heading=>'APPRVLEV'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68943995186712956)
,p_query_column_id=>89
,p_column_alias=>'AUTHTYPE'
,p_column_display_sequence=>93
,p_column_heading=>'AUTHTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68944092074712956)
,p_query_column_id=>90
,p_column_alias=>'USERCODE'
,p_column_display_sequence=>94
,p_column_heading=>'USERCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68944178295712956)
,p_query_column_id=>91
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>95
,p_column_heading=>'SMANCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68944281686712956)
,p_query_column_id=>92
,p_column_alias=>'COSTNAME'
,p_column_display_sequence=>14
,p_column_heading=>'Costname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68944386768712956)
,p_query_column_id=>93
,p_column_alias=>'ITEMNAME'
,p_column_display_sequence=>13
,p_column_heading=>'Itemname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68944482574712956)
,p_query_column_id=>94
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>18
,p_column_heading=>'Raised By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68944597256712956)
,p_query_column_id=>95
,p_column_alias=>'APPROVEDBY'
,p_column_display_sequence=>17
,p_column_heading=>'Approvedby'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68944688206712956)
,p_name=>'Fund Requisition Details'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width:100%;float:right;"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.COMPCODE,a. DOCTTYPE,a. SUBTTYPE,a. DOCNUMBR,a. DOCTDATE,a. SERLNUMB,a. DOCDUEDT,a. ACCTCODE,a. ',
'COSTCODE,a. SUBLEDCD,a. TRANCODE,a. NARATION,a. DBCRCODE,a. CURRCODE,a. EXCGRATE,a. JVFCAMNT,a. JVLCAMNT,a.',
' ORGAMTFC,a. ORGAMTLC,a. ADJAMTFC,a. ADJAMTLC,a. ORGBAKFC,a. ORGBAKLC,a. ADJBAKFC,a. ADJBAKLC,a. REFDOCNO,a.',
'  REFDOCDT,a. REFDOCTY,a. REFDCSTY,a. REFDCNUM,a. REFRDATE,a. INTDOCTY,a. INTDCSTY,a. INTDOCNO,a. INTDOCDT,a.',
'   CTRLMCRO,a. STATCODE,a. POSTDATE,a. POSTUSER,a. PURGFLAG,a. TRANSERL,a. ALLCFREZ,a. CHEQUENO,a. CHEQUEDT,a.',
'    BANKNAME,a. BANKBRCH,a. BANKCODE,a. EMPLACCT,a. OPRSTAMP,a. TIMSTAMP,a. REFSERNO,a. ITEMCODE,a. STOKQNTY,a.',
'     MSLCAMNT,a. REFRBANK,a. DEPOSTDT,a. REFBNKNM,a. CHRGTYPE,a. NMHRDCDE,a. NMSOFCDE,a. SUBMTSTS ,',
'     (Select USERNAME  ',
'                From syusrmas',
'                Where USERCODE=a. OPRSTAMP) as Raisedby,',
'      (Select  NMCODDES  ',
'From nmcodmas',
'where    NMSOFCDE=a.NMSOFCDE',
'And   NMHRDCDE=a.NMHRDCDE',
'And    MODLCODE=''NM'') as fund',
',(Select Distinct APPRQNTY  ',
'		From acreqapr',
'		where    DOCNUMBR=a.DOCNUMBR',
'		And    NMSOFCDE=a.NMSOFCDE',
'		And   NMHRDCDE=''FRE''',
'                and COMPCODE=a.COMPCODE) as Approvedamount,',
'case when DOCNUMBR=:P93_DOCNUM then',
'''Approval Status''',
'else null',
'end Status',
'',
'from ACFNDREQ a',
'where DOCNUMBR=:P93_DOCNUM'))
,p_display_when_condition=>'P93_DOCTYPE'
,p_display_when_cond2=>'J1'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P93_DOCNUM'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68944868968712956)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_column_heading=>'COMPCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68944987104712956)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>5
,p_column_heading=>'DOCTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68945098862712957)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>6
,p_column_heading=>'SUBTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68945174816712957)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>2
,p_column_heading=>'Requisition No.'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68945272745712957)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>3
,p_column_heading=>'Date'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68945373299712957)
,p_query_column_id=>6
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>11
,p_column_heading=>'SERLNUMB'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68945469620712957)
,p_query_column_id=>7
,p_column_alias=>'DOCDUEDT'
,p_column_display_sequence=>12
,p_column_heading=>'DOCDUEDT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68945567859712957)
,p_query_column_id=>8
,p_column_alias=>'ACCTCODE'
,p_column_display_sequence=>13
,p_column_heading=>'ACCTCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68945670084712957)
,p_query_column_id=>9
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>15
,p_column_heading=>'Cost Center'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68945784108712957)
,p_query_column_id=>10
,p_column_alias=>'SUBLEDCD'
,p_column_display_sequence=>16
,p_column_heading=>'SUBLEDCD'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68945894354712957)
,p_query_column_id=>11
,p_column_alias=>'TRANCODE'
,p_column_display_sequence=>17
,p_column_heading=>'TRANCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68945978317712957)
,p_query_column_id=>12
,p_column_alias=>'NARATION'
,p_column_display_sequence=>9
,p_column_heading=>'Naration'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68946080922712957)
,p_query_column_id=>13
,p_column_alias=>'DBCRCODE'
,p_column_display_sequence=>18
,p_column_heading=>'DBCRCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68946180941712957)
,p_query_column_id=>14
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>19
,p_column_heading=>'CURRCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68946289588712957)
,p_query_column_id=>15
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>20
,p_column_heading=>'EXCGRATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68946378133712957)
,p_query_column_id=>16
,p_column_alias=>'JVFCAMNT'
,p_column_display_sequence=>7
,p_column_heading=>'Request Amount'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68946487079712957)
,p_query_column_id=>17
,p_column_alias=>'JVLCAMNT'
,p_column_display_sequence=>21
,p_column_heading=>'JVLCAMNT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68946569219712957)
,p_query_column_id=>18
,p_column_alias=>'ORGAMTFC'
,p_column_display_sequence=>14
,p_column_heading=>'ORGAMTFC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68946669647712957)
,p_query_column_id=>19
,p_column_alias=>'ORGAMTLC'
,p_column_display_sequence=>22
,p_column_heading=>'ORGAMTLC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68946778983712957)
,p_query_column_id=>20
,p_column_alias=>'ADJAMTFC'
,p_column_display_sequence=>23
,p_column_heading=>'ADJAMTFC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68946893804712957)
,p_query_column_id=>21
,p_column_alias=>'ADJAMTLC'
,p_column_display_sequence=>24
,p_column_heading=>'ADJAMTLC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68946977480712957)
,p_query_column_id=>22
,p_column_alias=>'ORGBAKFC'
,p_column_display_sequence=>25
,p_column_heading=>'ORGBAKFC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68947089580712957)
,p_query_column_id=>23
,p_column_alias=>'ORGBAKLC'
,p_column_display_sequence=>26
,p_column_heading=>'ORGBAKLC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68947199378712957)
,p_query_column_id=>24
,p_column_alias=>'ADJBAKFC'
,p_column_display_sequence=>27
,p_column_heading=>'ADJBAKFC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68947275676712957)
,p_query_column_id=>25
,p_column_alias=>'ADJBAKLC'
,p_column_display_sequence=>28
,p_column_heading=>'ADJBAKLC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68947369214712957)
,p_query_column_id=>26
,p_column_alias=>'REFDOCNO'
,p_column_display_sequence=>29
,p_column_heading=>'REFDOCNO'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68947496501712957)
,p_query_column_id=>27
,p_column_alias=>'REFDOCDT'
,p_column_display_sequence=>30
,p_column_heading=>'REFDOCDT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68947594706712957)
,p_query_column_id=>28
,p_column_alias=>'REFDOCTY'
,p_column_display_sequence=>31
,p_column_heading=>'REFDOCTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68947688458712957)
,p_query_column_id=>29
,p_column_alias=>'REFDCSTY'
,p_column_display_sequence=>33
,p_column_heading=>'REFDCSTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68947797706712957)
,p_query_column_id=>30
,p_column_alias=>'REFDCNUM'
,p_column_display_sequence=>34
,p_column_heading=>'REFDCNUM'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68947877440712957)
,p_query_column_id=>31
,p_column_alias=>'REFRDATE'
,p_column_display_sequence=>32
,p_column_heading=>'REFRDATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68947970378712957)
,p_query_column_id=>32
,p_column_alias=>'INTDOCTY'
,p_column_display_sequence=>35
,p_column_heading=>'INTDOCTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68948091218712957)
,p_query_column_id=>33
,p_column_alias=>'INTDCSTY'
,p_column_display_sequence=>36
,p_column_heading=>'INTDCSTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68948180270712957)
,p_query_column_id=>34
,p_column_alias=>'INTDOCNO'
,p_column_display_sequence=>37
,p_column_heading=>'INTDOCNO'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68948288985712957)
,p_query_column_id=>35
,p_column_alias=>'INTDOCDT'
,p_column_display_sequence=>38
,p_column_heading=>'INTDOCDT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68948390341712957)
,p_query_column_id=>36
,p_column_alias=>'CTRLMCRO'
,p_column_display_sequence=>40
,p_column_heading=>'CTRLMCRO'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68948488007712957)
,p_query_column_id=>37
,p_column_alias=>'STATCODE'
,p_column_display_sequence=>41
,p_column_heading=>'STATCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68948591978712957)
,p_query_column_id=>38
,p_column_alias=>'POSTDATE'
,p_column_display_sequence=>39
,p_column_heading=>'POSTDATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68948698069712957)
,p_query_column_id=>39
,p_column_alias=>'POSTUSER'
,p_column_display_sequence=>43
,p_column_heading=>'POSTUSER'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68948773422712957)
,p_query_column_id=>40
,p_column_alias=>'PURGFLAG'
,p_column_display_sequence=>44
,p_column_heading=>'PURGFLAG'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68948867869712959)
,p_query_column_id=>41
,p_column_alias=>'TRANSERL'
,p_column_display_sequence=>45
,p_column_heading=>'TRANSERL'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68948996500712959)
,p_query_column_id=>42
,p_column_alias=>'ALLCFREZ'
,p_column_display_sequence=>46
,p_column_heading=>'ALLCFREZ'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68949071124712959)
,p_query_column_id=>43
,p_column_alias=>'CHEQUENO'
,p_column_display_sequence=>47
,p_column_heading=>'CHEQUENO'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68949172813712959)
,p_query_column_id=>44
,p_column_alias=>'CHEQUEDT'
,p_column_display_sequence=>48
,p_column_heading=>'CHEQUEDT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68949290328712959)
,p_query_column_id=>45
,p_column_alias=>'BANKNAME'
,p_column_display_sequence=>49
,p_column_heading=>'BANKNAME'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68949379701712959)
,p_query_column_id=>46
,p_column_alias=>'BANKBRCH'
,p_column_display_sequence=>50
,p_column_heading=>'BANKBRCH'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68949477141712959)
,p_query_column_id=>47
,p_column_alias=>'BANKCODE'
,p_column_display_sequence=>51
,p_column_heading=>'BANKCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68949579204712959)
,p_query_column_id=>48
,p_column_alias=>'EMPLACCT'
,p_column_display_sequence=>42
,p_column_heading=>'EMPLACCT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68949693428712959)
,p_query_column_id=>49
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>52
,p_column_heading=>'OPRSTAMP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68949793447712959)
,p_query_column_id=>50
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>53
,p_column_heading=>'TIMSTAMP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68949888193712959)
,p_query_column_id=>51
,p_column_alias=>'REFSERNO'
,p_column_display_sequence=>54
,p_column_heading=>'REFSERNO'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68949975625712960)
,p_query_column_id=>52
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>55
,p_column_heading=>'ITEMCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68950099158712960)
,p_query_column_id=>53
,p_column_alias=>'STOKQNTY'
,p_column_display_sequence=>56
,p_column_heading=>'STOKQNTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68950193901712960)
,p_query_column_id=>54
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>57
,p_column_heading=>'MSLCAMNT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68950294896712960)
,p_query_column_id=>55
,p_column_alias=>'REFRBANK'
,p_column_display_sequence=>58
,p_column_heading=>'REFRBANK'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68950372646712960)
,p_query_column_id=>56
,p_column_alias=>'DEPOSTDT'
,p_column_display_sequence=>59
,p_column_heading=>'DEPOSTDT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68950498418712960)
,p_query_column_id=>57
,p_column_alias=>'REFBNKNM'
,p_column_display_sequence=>60
,p_column_heading=>'REFBNKNM'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68950597587712960)
,p_query_column_id=>58
,p_column_alias=>'CHRGTYPE'
,p_column_display_sequence=>61
,p_column_heading=>'CHRGTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68950689344712960)
,p_query_column_id=>59
,p_column_alias=>'NMHRDCDE'
,p_column_display_sequence=>62
,p_column_heading=>'NMHRDCDE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68950798318712960)
,p_query_column_id=>60
,p_column_alias=>'NMSOFCDE'
,p_column_display_sequence=>63
,p_column_heading=>'NMSOFCDE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68950893758712960)
,p_query_column_id=>61
,p_column_alias=>'SUBMTSTS'
,p_column_display_sequence=>64
,p_column_heading=>'SUBMTSTS'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68950980742712960)
,p_query_column_id=>62
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>10
,p_column_heading=>'Raised By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68951074200712960)
,p_query_column_id=>63
,p_column_alias=>'FUND'
,p_column_display_sequence=>4
,p_column_heading=>'Fund For'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68951168129712960)
,p_query_column_id=>64
,p_column_alias=>'APPROVEDAMOUNT'
,p_column_display_sequence=>8
,p_column_heading=>'Approved Amount'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68951273560712960)
,p_query_column_id=>65
,p_column_alias=>'STATUS'
,p_column_display_sequence=>65
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_ITEMCODE:#NMSOFCDE#'
,p_column_linktext=>'#STATUS#'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68929676927712914)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(68925679585712907)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68934786996712948)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(68931072525712942)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68951379702712960)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(68944688206712956)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68929893328712923)
,p_name=>'P93_DOCNUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68925679585712907)
,p_prompt=>'Docnum'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68930075389712938)
,p_name=>'P93_DOCTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(68925679585712907)
,p_prompt=>'Doctype'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68930298312712940)
,p_name=>'P93_SUBTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(68925679585712907)
,p_prompt=>'Subtype'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68930477896712940)
,p_name=>'P93_UPDOCNUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(68925679585712907)
,p_prompt=>'Updocnum'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68930683319712940)
,p_name=>'P93_UPSUBTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(68925679585712907)
,p_prompt=>'Upsubtype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68930889208712942)
,p_name=>'P93_ITEMCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(68925679585712907)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.component_end;
end;
/
