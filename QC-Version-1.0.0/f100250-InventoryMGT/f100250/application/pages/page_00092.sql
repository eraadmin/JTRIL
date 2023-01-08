prompt --application/pages/page_00092
begin
--   Manifest
--     PAGE: 00092
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
 p_id=>92
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'fund/puchase requisition  Details'
,p_step_title=>'fund/puchase requisition  Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140814'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68860879053514011)
,p_name=>'Purchase requisition Information'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>9
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width:100%;float:left;"'
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
'case when DOCNUMBR=:P92_DOCNUM then',
'''Approval Status''',
'else null',
'end Status',
'from NMPROCUR a,syjobmas s',
'where DOCNUMBR=:P92_DOCNUM',
'and a.COMPCODE=s.COMPCODE',
'and a.COSTCODE=s.COSTCODE',
''))
,p_display_when_condition=>'P92_DOCNUM'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P92_DOCNUM'
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
 p_id=>wwv_flow_api.id(68861070329514011)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_column_heading=>'COMPCODE'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68861183363514015)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>2
,p_column_heading=>'DOCTTYPE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68861281901514015)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'SUBTTYPE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68861377649514015)
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
 p_id=>wwv_flow_api.id(68861481910514015)
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
 p_id=>wwv_flow_api.id(68861584597514015)
,p_query_column_id=>6
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>9
,p_column_heading=>'SERLNUMB'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68861674958514015)
,p_query_column_id=>7
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>12
,p_column_heading=>'PARTYCDE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68861773136514015)
,p_query_column_id=>8
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>13
,p_column_heading=>'SMANCODE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68861893162514015)
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
 p_id=>wwv_flow_api.id(68861975253514015)
,p_query_column_id=>10
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>24
,p_column_heading=>'Raised By'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68862078802514015)
,p_query_column_id=>11
,p_column_alias=>'APPROVEDBY'
,p_column_display_sequence=>25
,p_column_heading=>'Approved By'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68862168254514015)
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
 p_id=>wwv_flow_api.id(68862289387514015)
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
 p_id=>wwv_flow_api.id(68862394091514015)
,p_query_column_id=>14
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>17
,p_column_heading=>'REQDDATE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68862488699514015)
,p_query_column_id=>15
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>18
,p_column_heading=>'COMMCODE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68862590083514015)
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
 p_id=>wwv_flow_api.id(68862690126514015)
,p_query_column_id=>17
,p_column_alias=>'ITEMNAME'
,p_column_display_sequence=>8
,p_column_heading=>'Item Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68862773561514015)
,p_query_column_id=>18
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>21
,p_column_heading=>'ITEMTYPE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68862890558514015)
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
 p_id=>wwv_flow_api.id(68862976032514015)
,p_query_column_id=>20
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>22
,p_column_heading=>'ITEMLONG'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68863091800514015)
,p_query_column_id=>21
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>23
,p_column_heading=>'Amount'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68863170161514015)
,p_query_column_id=>22
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>26
,p_column_heading=>'LUOMCODE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68863282572514015)
,p_query_column_id=>23
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>27
,p_column_heading=>'ORGNQNTY'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68863380944514015)
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
 p_id=>wwv_flow_api.id(68863485162514015)
,p_query_column_id=>25
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>28
,p_column_heading=>'TRNSQNTY'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68863569142514016)
,p_query_column_id=>26
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>29
,p_column_heading=>'REFNUMBR'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68863681055514016)
,p_query_column_id=>27
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>30
,p_column_heading=>'REFNDATE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68863772357514016)
,p_query_column_id=>28
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>31
,p_column_heading=>'UPDOCTYP'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68863868713514016)
,p_query_column_id=>29
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>32
,p_column_heading=>'UPSUBTYP'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68863999798514016)
,p_query_column_id=>30
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>33
,p_column_heading=>'UPDOCNUM'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68864072578514016)
,p_query_column_id=>31
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>34
,p_column_heading=>'UPDOCDTE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68864191136514016)
,p_query_column_id=>32
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>35
,p_column_heading=>'REMARKSS'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68864293932514016)
,p_query_column_id=>33
,p_column_alias=>'COSTNAME'
,p_column_display_sequence=>6
,p_column_heading=>'Cost Center'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68864370502514016)
,p_query_column_id=>34
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>36
,p_column_heading=>'WARECODE'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68864487524514016)
,p_query_column_id=>35
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>37
,p_column_heading=>'STATUSCD'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68864596530514016)
,p_query_column_id=>36
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>19
,p_column_heading=>'Amount'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68864699626514016)
,p_query_column_id=>37
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>20
,p_column_heading=>'Mslcamnt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68864792512514016)
,p_query_column_id=>38
,p_column_alias=>'STATUS'
,p_column_display_sequence=>38
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::P30_ITEMCODE:#ITEMCODE#'
,p_column_linktext=>'#STATUS#'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68866270309514018)
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
'case when DOCNUMBR=:P92_DOCNUM then',
'''Approval Status''',
'else null',
'end Status',
'',
'from ACFNDREQ a',
'where DOCNUMBR=:P92_DOCNUM'))
,p_display_when_condition=>'P92_DOCTYPE'
,p_display_when_cond2=>'J1'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P92_DOCNUM'
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
 p_id=>wwv_flow_api.id(68866482596514018)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_column_heading=>'COMPCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68866570612514018)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>5
,p_column_heading=>'DOCTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68866695580514018)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>6
,p_column_heading=>'SUBTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68866783689514018)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>2
,p_column_heading=>'Requisition No.'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68866895149514018)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>3
,p_column_heading=>'Date'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68866983354514018)
,p_query_column_id=>6
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>11
,p_column_heading=>'SERLNUMB'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68867076270514019)
,p_query_column_id=>7
,p_column_alias=>'DOCDUEDT'
,p_column_display_sequence=>12
,p_column_heading=>'DOCDUEDT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68867170104514019)
,p_query_column_id=>8
,p_column_alias=>'ACCTCODE'
,p_column_display_sequence=>13
,p_column_heading=>'ACCTCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68867276776514019)
,p_query_column_id=>9
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>15
,p_column_heading=>'Cost Center'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68867380356514019)
,p_query_column_id=>10
,p_column_alias=>'SUBLEDCD'
,p_column_display_sequence=>16
,p_column_heading=>'SUBLEDCD'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68867498100514019)
,p_query_column_id=>11
,p_column_alias=>'TRANCODE'
,p_column_display_sequence=>17
,p_column_heading=>'TRANCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68867578950514019)
,p_query_column_id=>12
,p_column_alias=>'NARATION'
,p_column_display_sequence=>9
,p_column_heading=>'Naration'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68867675703514019)
,p_query_column_id=>13
,p_column_alias=>'DBCRCODE'
,p_column_display_sequence=>18
,p_column_heading=>'DBCRCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68867797116514019)
,p_query_column_id=>14
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>19
,p_column_heading=>'CURRCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68867872773514019)
,p_query_column_id=>15
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>20
,p_column_heading=>'EXCGRATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68867986582514019)
,p_query_column_id=>16
,p_column_alias=>'JVFCAMNT'
,p_column_display_sequence=>7
,p_column_heading=>'Request Amount'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68868090500514019)
,p_query_column_id=>17
,p_column_alias=>'JVLCAMNT'
,p_column_display_sequence=>21
,p_column_heading=>'JVLCAMNT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68868175957514019)
,p_query_column_id=>18
,p_column_alias=>'ORGAMTFC'
,p_column_display_sequence=>14
,p_column_heading=>'ORGAMTFC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68868273637514019)
,p_query_column_id=>19
,p_column_alias=>'ORGAMTLC'
,p_column_display_sequence=>22
,p_column_heading=>'ORGAMTLC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68868375626514019)
,p_query_column_id=>20
,p_column_alias=>'ADJAMTFC'
,p_column_display_sequence=>23
,p_column_heading=>'ADJAMTFC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68868476692514019)
,p_query_column_id=>21
,p_column_alias=>'ADJAMTLC'
,p_column_display_sequence=>24
,p_column_heading=>'ADJAMTLC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68868595206514019)
,p_query_column_id=>22
,p_column_alias=>'ORGBAKFC'
,p_column_display_sequence=>25
,p_column_heading=>'ORGBAKFC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68868681579514019)
,p_query_column_id=>23
,p_column_alias=>'ORGBAKLC'
,p_column_display_sequence=>26
,p_column_heading=>'ORGBAKLC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68868794718514019)
,p_query_column_id=>24
,p_column_alias=>'ADJBAKFC'
,p_column_display_sequence=>27
,p_column_heading=>'ADJBAKFC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68868867598514019)
,p_query_column_id=>25
,p_column_alias=>'ADJBAKLC'
,p_column_display_sequence=>28
,p_column_heading=>'ADJBAKLC'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68868999497514019)
,p_query_column_id=>26
,p_column_alias=>'REFDOCNO'
,p_column_display_sequence=>29
,p_column_heading=>'REFDOCNO'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68869094515514019)
,p_query_column_id=>27
,p_column_alias=>'REFDOCDT'
,p_column_display_sequence=>30
,p_column_heading=>'REFDOCDT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68869191238514019)
,p_query_column_id=>28
,p_column_alias=>'REFDOCTY'
,p_column_display_sequence=>31
,p_column_heading=>'REFDOCTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68869293003514019)
,p_query_column_id=>29
,p_column_alias=>'REFDCSTY'
,p_column_display_sequence=>33
,p_column_heading=>'REFDCSTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68869388627514019)
,p_query_column_id=>30
,p_column_alias=>'REFDCNUM'
,p_column_display_sequence=>34
,p_column_heading=>'REFDCNUM'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68869495621514019)
,p_query_column_id=>31
,p_column_alias=>'REFRDATE'
,p_column_display_sequence=>32
,p_column_heading=>'REFRDATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68869589451514019)
,p_query_column_id=>32
,p_column_alias=>'INTDOCTY'
,p_column_display_sequence=>35
,p_column_heading=>'INTDOCTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68869687136514019)
,p_query_column_id=>33
,p_column_alias=>'INTDCSTY'
,p_column_display_sequence=>36
,p_column_heading=>'INTDCSTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68869767637514019)
,p_query_column_id=>34
,p_column_alias=>'INTDOCNO'
,p_column_display_sequence=>37
,p_column_heading=>'INTDOCNO'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68869880005514019)
,p_query_column_id=>35
,p_column_alias=>'INTDOCDT'
,p_column_display_sequence=>38
,p_column_heading=>'INTDOCDT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68869990435514019)
,p_query_column_id=>36
,p_column_alias=>'CTRLMCRO'
,p_column_display_sequence=>40
,p_column_heading=>'CTRLMCRO'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68870092137514019)
,p_query_column_id=>37
,p_column_alias=>'STATCODE'
,p_column_display_sequence=>41
,p_column_heading=>'STATCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68870192946514019)
,p_query_column_id=>38
,p_column_alias=>'POSTDATE'
,p_column_display_sequence=>39
,p_column_heading=>'POSTDATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68870293725514019)
,p_query_column_id=>39
,p_column_alias=>'POSTUSER'
,p_column_display_sequence=>43
,p_column_heading=>'POSTUSER'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68870369616514019)
,p_query_column_id=>40
,p_column_alias=>'PURGFLAG'
,p_column_display_sequence=>44
,p_column_heading=>'PURGFLAG'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68870496537514019)
,p_query_column_id=>41
,p_column_alias=>'TRANSERL'
,p_column_display_sequence=>45
,p_column_heading=>'TRANSERL'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68870577667514019)
,p_query_column_id=>42
,p_column_alias=>'ALLCFREZ'
,p_column_display_sequence=>46
,p_column_heading=>'ALLCFREZ'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68870691624514019)
,p_query_column_id=>43
,p_column_alias=>'CHEQUENO'
,p_column_display_sequence=>47
,p_column_heading=>'CHEQUENO'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68870770874514019)
,p_query_column_id=>44
,p_column_alias=>'CHEQUEDT'
,p_column_display_sequence=>48
,p_column_heading=>'CHEQUEDT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68870877055514019)
,p_query_column_id=>45
,p_column_alias=>'BANKNAME'
,p_column_display_sequence=>49
,p_column_heading=>'BANKNAME'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68870984137514019)
,p_query_column_id=>46
,p_column_alias=>'BANKBRCH'
,p_column_display_sequence=>50
,p_column_heading=>'BANKBRCH'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68871092192514019)
,p_query_column_id=>47
,p_column_alias=>'BANKCODE'
,p_column_display_sequence=>51
,p_column_heading=>'BANKCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68871184912514019)
,p_query_column_id=>48
,p_column_alias=>'EMPLACCT'
,p_column_display_sequence=>42
,p_column_heading=>'EMPLACCT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68871274778514019)
,p_query_column_id=>49
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>52
,p_column_heading=>'OPRSTAMP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68871378673514019)
,p_query_column_id=>50
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>53
,p_column_heading=>'TIMSTAMP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68871475466514019)
,p_query_column_id=>51
,p_column_alias=>'REFSERNO'
,p_column_display_sequence=>54
,p_column_heading=>'REFSERNO'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68871571292514019)
,p_query_column_id=>52
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>55
,p_column_heading=>'ITEMCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68871687585514019)
,p_query_column_id=>53
,p_column_alias=>'STOKQNTY'
,p_column_display_sequence=>56
,p_column_heading=>'STOKQNTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68871773198514019)
,p_query_column_id=>54
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>57
,p_column_heading=>'MSLCAMNT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68871869408514021)
,p_query_column_id=>55
,p_column_alias=>'REFRBANK'
,p_column_display_sequence=>58
,p_column_heading=>'REFRBANK'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68871973989514022)
,p_query_column_id=>56
,p_column_alias=>'DEPOSTDT'
,p_column_display_sequence=>59
,p_column_heading=>'DEPOSTDT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68872068620514022)
,p_query_column_id=>57
,p_column_alias=>'REFBNKNM'
,p_column_display_sequence=>60
,p_column_heading=>'REFBNKNM'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68872187474514022)
,p_query_column_id=>58
,p_column_alias=>'CHRGTYPE'
,p_column_display_sequence=>61
,p_column_heading=>'CHRGTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68872267391514022)
,p_query_column_id=>59
,p_column_alias=>'NMHRDCDE'
,p_column_display_sequence=>62
,p_column_heading=>'NMHRDCDE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68872368970514022)
,p_query_column_id=>60
,p_column_alias=>'NMSOFCDE'
,p_column_display_sequence=>63
,p_column_heading=>'NMSOFCDE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68872474854514022)
,p_query_column_id=>61
,p_column_alias=>'SUBMTSTS'
,p_column_display_sequence=>64
,p_column_heading=>'SUBMTSTS'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68872570189514022)
,p_query_column_id=>62
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>10
,p_column_heading=>'Raised By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68872691154514022)
,p_query_column_id=>63
,p_column_alias=>'FUND'
,p_column_display_sequence=>4
,p_column_heading=>'Fund For'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68872783451514022)
,p_query_column_id=>64
,p_column_alias=>'APPROVEDAMOUNT'
,p_column_display_sequence=>8
,p_column_heading=>'Approved Amount'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68872869079514022)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68873194299514022)
,p_name=>'Fund Requisition Details Status'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select distinct     initcap((Select NMCODDES  ',
'        From nmcodmas',
'        Where NMHRDCDE=''AT''',
'        And     CompCode=:CompCode',
'        And    MODLCODE=''NM''',
'        And     NMSOFCDE= a.AUTHTYPE)||''-''||s.USERNAME||''(''||(Select NVL(NMCODDES,'''')  ',
'                                From nmcodmas',
'                                Where compcode=:compcode',
'                                And     MODLCODE=''NM''',
'                                And     NMHRDCDE=''DEG''',
'                                And     NMSOFCDE=(',
'                                Select  PYDEPCDE',
'                                From syempmas',
'                                Where    PYCOMCDE=:compcode',
'                                And        PYEMPCDE=:APP_USER))||'')'') vDes,a.APPRDATE,',
'                                a.REMARKSS,a.APPRQNTY',
'                From syusrmas s,acreqapr a',
'                Where a.USERCODE=s.USERCODE',
'                and a.CompCode=:CompCode',
'        and DOCNUMBR=:P92_UPDOCNUM',
'         and ACCTCODE=:P92_ACCOUNTCODE',
'         and SERLNUMB=:P92_SERLNO',
'        and REFNUMBR is null'))
,p_display_when_condition=>'P92_DOCNUM'
,p_display_condition_type=>'ITEM_IS_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P92_DOCNUM,P92_ACCOUNTCODE,P92_SERLNO'
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
 p_id=>wwv_flow_api.id(68873479566514022)
,p_query_column_id=>1
,p_column_alias=>'VDES'
,p_column_display_sequence=>1
,p_column_heading=>'Approved by'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68873581364514022)
,p_query_column_id=>2
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>2
,p_column_heading=>'Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68873688618514022)
,p_query_column_id=>3
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>3
,p_column_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68873368743514022)
,p_query_column_id=>4
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>4
,p_column_heading=>'Approved Amount'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68874595902514024)
,p_name=>'Purchase Requisition Approval Authority'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>10
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
'            From nmitemas',
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
'from NMREQAPR a,syjobmas s',
'where DOCNUMBR in (select distinct REFNUMBR from nmprocur',
'where DOCNUMBR=:P92_DOCNUM)and a.COMPCODE=s.COMPCODE',
'and a.COSTCODE=s.COSTCODE;'))
,p_display_when_condition=>'P92_DOCNUM'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P92_DOCNUM,P92_DOCTYPE,P92_SUBTYPE'
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
 p_id=>wwv_flow_api.id(68874769480514024)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_column_heading=>'COMPCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68874877632514024)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>2
,p_column_heading=>'DOCTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68874978893514024)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'SUBTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68875092291514024)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>4
,p_column_heading=>'Requisition No.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68875186581514024)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68875280119514024)
,p_query_column_id=>6
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>18
,p_column_heading=>'SERLNUMB'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68875374185514024)
,p_query_column_id=>7
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>17
,p_column_heading=>'PARTYCDE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68875480572514024)
,p_query_column_id=>8
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>19
,p_column_heading=>'SMANCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68875590549514024)
,p_query_column_id=>9
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>12
,p_column_heading=>'Raised by'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68875697242514024)
,p_query_column_id=>10
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>14
,p_column_heading=>'Raised By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68875777405514024)
,p_query_column_id=>11
,p_column_alias=>'APPROVEDBY'
,p_column_display_sequence=>15
,p_column_heading=>'Approved By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68875871458514025)
,p_query_column_id=>12
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>13
,p_column_heading=>'Approved by'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68875980579514025)
,p_query_column_id=>13
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>11
,p_column_heading=>'Approved Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68876084258514025)
,p_query_column_id=>14
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>21
,p_column_heading=>'REQDDATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68876191916514025)
,p_query_column_id=>15
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>22
,p_column_heading=>'COMMCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68876292061514025)
,p_query_column_id=>16
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>6
,p_column_heading=>'Item Code'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68876397129514025)
,p_query_column_id=>17
,p_column_alias=>'ITEMNAME'
,p_column_display_sequence=>9
,p_column_heading=>'Item Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68876479438514025)
,p_query_column_id=>18
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>23
,p_column_heading=>'ITEMTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68876598159514025)
,p_query_column_id=>19
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>7
,p_column_heading=>'Item Name'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68876683418514025)
,p_query_column_id=>20
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>16
,p_column_heading=>'ITEMLONG'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68876768927514025)
,p_query_column_id=>21
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>24
,p_column_heading=>'ITEMRATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68876892726514025)
,p_query_column_id=>22
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>25
,p_column_heading=>'LUOMCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68876993456514025)
,p_query_column_id=>23
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>20
,p_column_heading=>'ORGNQNTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68877095225514025)
,p_query_column_id=>24
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>10
,p_column_heading=>'Approved Qty.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68877167840514025)
,p_query_column_id=>25
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>26
,p_column_heading=>'TRNSQNTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68877283021514025)
,p_query_column_id=>26
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>27
,p_column_heading=>'Ref. No.'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68877378375514025)
,p_query_column_id=>27
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>28
,p_column_heading=>'REFNDATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68877473080514025)
,p_query_column_id=>28
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>29
,p_column_heading=>'UPDOCTYP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68877569485514025)
,p_query_column_id=>29
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>30
,p_column_heading=>'UPSUBTYP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68877684534514025)
,p_query_column_id=>30
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>31
,p_column_heading=>'UPDOCNUM'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68877778740514025)
,p_query_column_id=>31
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>32
,p_column_heading=>'UPDOCDTE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68877893279514025)
,p_query_column_id=>32
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>34
,p_column_heading=>'REMARKSS'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68877970502514025)
,p_query_column_id=>33
,p_column_alias=>'COSTNAME'
,p_column_display_sequence=>8
,p_column_heading=>'Cost Center'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68878067466514025)
,p_query_column_id=>34
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>33
,p_column_heading=>'WARECODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68878179388514025)
,p_query_column_id=>35
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>35
,p_column_heading=>'STATUSCD'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68878484968514025)
,p_name=>'Material Requisition Approval Authority'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>60
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
'            From nmitemas',
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
'from NMREQAPR a,syjobmas s',
'where DOCNUMBR in (select distinct UPDOCNUM from nmprocur',
'where DOCNUMBR=:P92_DOCNUM)and a.COMPCODE=s.COMPCODE',
'and a.COSTCODE=s.COSTCODE;'))
,p_display_when_condition=>'P92_DOCNUM'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P92_DOCNUM'
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
 p_id=>wwv_flow_api.id(68878667586514025)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>5
,p_column_heading=>'COMPCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68878794081514025)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>6
,p_column_heading=>'DOCTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68878895039514025)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>7
,p_column_heading=>'SUBTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68878986843514025)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>8
,p_column_heading=>'Requisition No.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68879076687514025)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>9
,p_column_heading=>'Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68879199450514025)
,p_query_column_id=>6
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>10
,p_column_heading=>'SERLNUMB'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68879274840514025)
,p_query_column_id=>7
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>12
,p_column_heading=>'PARTYCDE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68879386899514025)
,p_query_column_id=>8
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>35
,p_column_heading=>'SMANCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68879488635514025)
,p_query_column_id=>9
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>13
,p_column_heading=>'Raised By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68879597702514025)
,p_query_column_id=>10
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>4
,p_column_heading=>'Raised By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68879678247514025)
,p_query_column_id=>11
,p_column_alias=>'APPROVEDBY'
,p_column_display_sequence=>3
,p_column_heading=>'Approvedby'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68879793507514025)
,p_query_column_id=>12
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>14
,p_column_heading=>'Approved By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68879882199514025)
,p_query_column_id=>13
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>18
,p_column_heading=>'Approved By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68879974726514025)
,p_query_column_id=>14
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>15
,p_column_heading=>'REQDDATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68880067666514025)
,p_query_column_id=>15
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>16
,p_column_heading=>'COMMCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68880174031514025)
,p_query_column_id=>16
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>17
,p_column_heading=>'Item Code'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68880270661514027)
,p_query_column_id=>17
,p_column_alias=>'ITEMNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Itemname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68880380161514027)
,p_query_column_id=>18
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>19
,p_column_heading=>'ITEMTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68880488450514027)
,p_query_column_id=>19
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>20
,p_column_heading=>'Item Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68880571497514027)
,p_query_column_id=>20
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>21
,p_column_heading=>'ITEMLONG'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68880682083514027)
,p_query_column_id=>21
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>22
,p_column_heading=>'ITEMRATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68880792960514027)
,p_query_column_id=>22
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>23
,p_column_heading=>'LUOMCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68880892651514027)
,p_query_column_id=>23
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>24
,p_column_heading=>'ORGNQNTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68880981706514027)
,p_query_column_id=>24
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>11
,p_column_heading=>'Approved Qty.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68881087422514027)
,p_query_column_id=>25
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>25
,p_column_heading=>'TRNSQNTY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68881171599514027)
,p_query_column_id=>26
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>26
,p_column_heading=>'REFNUMBR'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68881278743514027)
,p_query_column_id=>27
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>27
,p_column_heading=>'REFNDATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68881396051514027)
,p_query_column_id=>28
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>28
,p_column_heading=>'UPDOCTYP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68881492532514027)
,p_query_column_id=>29
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>29
,p_column_heading=>'UPSUBTYP'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68881573202514027)
,p_query_column_id=>30
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>30
,p_column_heading=>'UPDOCNUM'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68881683447514027)
,p_query_column_id=>31
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>31
,p_column_heading=>'UPDOCDTE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68881771429514027)
,p_query_column_id=>32
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>32
,p_column_heading=>'REMARKSS'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68881869482514027)
,p_query_column_id=>33
,p_column_alias=>'COSTNAME'
,p_column_display_sequence=>2
,p_column_heading=>'Costname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68881980133514027)
,p_query_column_id=>34
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>33
,p_column_heading=>'WARECODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68882069676514027)
,p_query_column_id=>35
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>34
,p_column_heading=>'STATUSCD'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68882196575514027)
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
'where DOCNUMBR=:P92_DOCNUM',
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
'and p.DOCNUMBR=:P92_DOCNUM',
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
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P92_DOCNUM'
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
 p_id=>wwv_flow_api.id(68882373688514027)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Compcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68882498705514027)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Docttype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68882590231514027)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Subttype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68882695409514027)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>5
,p_column_heading=>'P.O.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68882791721514027)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>6
,p_column_heading=>'Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68882876941514027)
,p_query_column_id=>6
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>7
,p_column_heading=>'Raised By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68882986907514027)
,p_query_column_id=>7
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>8
,p_column_heading=>'Apprvdby'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68883078431514027)
,p_query_column_id=>8
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>9
,p_column_heading=>'Apprdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68883188963514027)
,p_query_column_id=>9
,p_column_alias=>'COSTDESC'
,p_column_display_sequence=>12
,p_column_heading=>'Cost Center'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68883287961514027)
,p_query_column_id=>10
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>1
,p_column_heading=>'STATUSCD'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68883385193514027)
,p_query_column_id=>11
,p_column_alias=>'SUM(P.APPRQNTY)'
,p_column_display_sequence=>10
,p_column_heading=>'Total Qty.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68883497245514027)
,p_query_column_id=>12
,p_column_alias=>'NO_OF_ITEM'
,p_column_display_sequence=>11
,p_column_heading=>'No. Of Item'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68883590518514027)
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
'     AND itemcode =:P92_ITEMCODE',
'     AND p.docnumbr =:P92_DOCNUM',
'ORDER BY p.docnumbr, p.docttype, subttype, p.apprvlev'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P92_DOCNUM,P92_ITEMCODE'
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
 p_id=>wwv_flow_api.id(68883788396514027)
,p_query_column_id=>1
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>1
,p_column_heading=>'Doc. No.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68883868591514027)
,p_query_column_id=>2
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>3
,p_column_heading=>'Item Code'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68883996855514027)
,p_query_column_id=>3
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>2
,p_column_heading=>'Doc. date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68884087599514027)
,p_query_column_id=>4
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Docttype'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68884198905514027)
,p_query_column_id=>5
,p_column_alias=>'USERCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Usercode'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68884294368514027)
,p_query_column_id=>6
,p_column_alias=>'APPRVLEV'
,p_column_display_sequence=>5
,p_column_heading=>'Approve Level'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68884399707514027)
,p_query_column_id=>7
,p_column_alias=>'STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'Status'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68884468606514027)
,p_query_column_id=>8
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Subtype'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68884573450514027)
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
'where DOCNUMBR=:P92_DOCNUM',
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
'and p.DOCNUMBR=:P92_DOCNUM',
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
,p_display_when_condition=>'P92_DOCTYPE'
,p_display_when_cond2=>'J1'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P92_DOCNUM'
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
 p_id=>wwv_flow_api.id(68884793167514027)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_column_heading=>'COMPCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68884893243514027)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>2
,p_column_heading=>'DOCTTYPE'
,p_hidden_column=>'Y'
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
 p_id=>wwv_flow_api.id(68884992186514027)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'SUBTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68885070986514027)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>4
,p_column_heading=>'Fund No.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68885178970514027)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68885289145514027)
,p_query_column_id=>6
,p_column_alias=>'COSTDESC'
,p_column_display_sequence=>6
,p_column_heading=>'Cost Center'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68885393408514029)
,p_query_column_id=>7
,p_column_alias=>'NO_OF_ITEM'
,p_column_display_sequence=>7
,p_column_heading=>'No. of Item'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68889791127516924)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>90
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align:right; height:20px; top: 10px;left: 50%;font-size:14px;color:#6633FF; font-weight:bold;"><br>User: &P1_USER_ID.<Br>&P1_USER_NAME.<Br></font>',
'</div>',
'',
'<div style="text-align:center; height:20px; position:absolute;position: absolute; top: 10px;left: 50%; margin-left: -160px;font-size:16px;color:#336633; font-weight:bold;">&P1_COMPNAME.<br><font size=''2'' color=''#336633''>&P1_COMPADD.</font>',
'',
'<div>',
'',
'<html>',
'<head>',
'<script type="text/javascript">',
'function startTime()',
'{',
'var today=new Date();',
'var h=today.getHours();',
'var m=today.getMinutes();',
'var s=today.getSeconds();',
'var don="AM"',
'// add a zero in front of numbers<10',
'm=checkTime(m);',
's=checkTime(s);',
'',
'if (h>=12){ don="PM" }',
'if (h>12) { h-=12 }',
'if (h==0) { h=12 }',
'',
'document.getElementById(''txt'').innerHTML=h+":"+m+":"+s+" "+don;',
't=setTimeout(''startTime()'',500);',
'}',
'',
'function checkTime(i)',
'{',
'if (i<10)',
'  {',
'  i="0" + i;',
'  }',
'return i;',
'}',
'</script>',
'</head>',
'',
'<body onload="startTime()">',
'<div id="txt"></div>',
'</body>',
'</html>',
'',
'</div>',
'',
'</div>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68889996668518487)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P92_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P92_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68864895005514016)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(68860879053514011)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68878281581514025)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(68874595902514024)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68872997354514022)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(68866270309514018)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68873772820514022)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(68873194299514022)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CREATE2'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68865095522514018)
,p_name=>'P92_ITEMCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(68860879053514011)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68865290881514018)
,p_name=>'P92_DOCTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(68860879053514011)
,p_prompt=>'Doctype'
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
 p_id=>wwv_flow_api.id(68865491980514018)
,p_name=>'P92_SUBTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(68860879053514011)
,p_prompt=>'Subtype'
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
 p_id=>wwv_flow_api.id(68865678821514018)
,p_name=>'P92_UPDOCNUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(68860879053514011)
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
 p_id=>wwv_flow_api.id(68865873792514018)
,p_name=>'P92_UPSUBTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(68860879053514011)
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
 p_id=>wwv_flow_api.id(68866086768514018)
,p_name=>'P92_DOCNUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68860879053514011)
,p_prompt=>'Docnum'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68873970907514022)
,p_name=>'P92_ACCOUNTCODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(68873194299514022)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68874183823514022)
,p_name=>'P92_SERLNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(68873194299514022)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68874386149514022)
,p_name=>'P92_FUNDETAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(68873194299514022)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'         ''REQUISITION NO: ''||docnumbr||'' ,DATE: ''||',
'        doctdate||'' ,RAISED BY: ''||',
'         (SELECT INITCAP (usercode || ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = a.usercode)',
'            AS usercode FROM acreqapr a WHERE     compcode = :compcode',
'                       and DOCNUMBR=:P92_UPDOCNUM',
'                       and REFNUMBR is null',
'                   GROUP BY a.compcode,',
'         a.docttype,',
'         a.subttype,',
'         a.docnumbr,',
'         a.doctdate,',
'         a.usercode,',
'         a.apprvlev,',
'         a.warecode,',
'         a.RAISEDBY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>100
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="color: rgb(66, 104, 185);font-weight:bold;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68890187487518487)
,p_name=>'P92_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(68889996668518487)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68890376549518487)
,p_name=>'P92_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68889996668518487)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68890596118518487)
,p_name=>'P92_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(68889996668518487)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68885490076514029)
,p_name=>'raised by for fund requisition'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68885782192514029)
,p_event_id=>wwv_flow_api.id(68885490076514029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'    vDes    Varchar2(200);',
'    vCount  Number;',
'    vAuth    VarChar2(100);',
'Begin',
'     Select Count(*) Into vCount',
'                                From nmcodmas',
'                                Where compcode=:compcode',
'                                And     MODLCODE=''NM''',
'                                And     NMHRDCDE=''DEG''',
'                                And     NMSOFCDE=(',
'                                Select  PYDEPCDE',
'                                From syempmas',
'                                Where    compcode=:compcode',
'                                And        PYEMPCDE=:APP_USER',
'                                );',
'    If vCount>0 Then',
'                                   Select NVL(NMCODDES,'''')   Into vDes',
'                                From nmcodmas',
'                                Where compcode=:compcode',
'                                And     MODLCODE=''NM''',
'                                And     NMHRDCDE=''DEG''',
'                                And     NMSOFCDE=(',
'                                Select  PYDEPCDE',
'                                From syempmas',
'                                Where    compcode=:compcode',
'                                And        PYEMPCDE=:APP_USER',
'                                );',
'    Else',
'        vDes:='''';',
'    End If;',
'    ',
'    Select NMCODDES  Into vAuth ',
'        From nmcodmas',
'        Where NMHRDCDE=''AT''',
'        And     CompCode=:CompCode',
'        And    MODLCODE=''NM''',
'        And     NMSOFCDE=(select distinct AUTHTYPE from acreqapr',
'        where CompCode=:CompCode',
'        and APPRVDBY=:APP_USER',
'        and DOCNUMBR=:P92_DOCNUM);',
'                         ',
'',
'',
'    ',
'                Select vAuth||''-''||USERNAME||''(''||vDes||'')'' into :P92_UPSUBTYPE',
'                From syusrmas',
'                Where USERCODE=:APP_USER;',
'                ',
'                Exception',
'    When No_Data_Found Then',
'         null;',
'    When Too_Many_Rows Then',
'         null;',
'    When Others Then',
'         null;         ',
'End;',
'',
'',
'',
'    ',
'',
'   ',
''))
,p_attribute_02=>'P92_DOCNUM'
,p_attribute_03=>'P92_UPSUBTYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68889587664515966)
,p_process_sequence=>10
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
'If :P87_PROGNM  is null and :P87_NO is null then',
'   :P87_PROGNM := :FX_PROG_NAME;',
'   :P87_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P87_PROGNM,',
'                                      p_parentnm =>:P87_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P87_OPRSTAMP := :app_user;',
'  --:P87_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P87_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P87_PROGNM;',
'   :FX_PAGE_NO := :P87_NO;',
'Elsif :FX_PROG_NAME <> :P87_PROGNM And :FX_PAGE_NO <> :P87_NO Then',
'   :FX_PROG_NAME := :P87_PROGNM;',
'   :FX_PAGE_NO := :P87_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
