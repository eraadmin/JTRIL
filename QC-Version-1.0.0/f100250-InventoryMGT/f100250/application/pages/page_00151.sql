prompt --application/pages/page_00151
begin
--   Manifest
--     PAGE: 00151
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
 p_id=>151
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Installment Sales '
,p_alias=>'NMSLSDTL'
,p_step_title=>'Installment Sales '
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(47564929163858117)
,p_page_template_options=>'#DEFAULT#'
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
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124816'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(93287697255407854)
,p_name=>'Booked Item List (Available for Sales)'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_1'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'  FROM (SELECT   ROWID, itemcode, itemdesc, vinnumbr, bookcode "BOOKING NO",',
'                 bookdate "BOOKING DATE", partycde, custmrid, luomcode unit,',
'                 salerate, batchnum, docttype, subttype, docnumbr, doctdate,',
'                 raisedby, apprvdby, apprdate, smancode, apprqnty, currcode,',
'                 excgrate, warecode, costcode, commcode, colorcde, msfcamnt,',
'                 mslcamnt, bookaprv, ''Cancel Booking'' "Cancel Booking",',
'                 engineno,VHCLKYNO,',
'                 (SELECT nmcoddes',
'                    FROM nmcodmas',
'                   WHERE compcode = :compcode',
'                     AND nmhrdcde = ''CLR''',
'                     AND nmsofcde = a.colorcde) item_color,',
'                 (SELECT nmcoddes',
'                    FROM nmcodmas',
'                   WHERE compcode = :compcode',
'                     AND nmhrdcde = ''COM''',
'                     AND nmsofcde = a.commcode) brand,',
'                 (SELECT smanname',
'                    FROM nmsmnmas',
'                   WHERE compcode = :compcode',
'                     AND smancode = a.smancode) salesman_name,',
'                 (SELECT PRTYNAME',
'                    FROM sycompty',
'                   WHERE compcode = :compcode',
'                     AND PARTYCDE= a.custmrid) customer_name,',
'                 (SELECT waredesc',
'                    FROM nmwhsmas',
'                   WHERE compcode = :compcode',
'                     AND warecode = a.warecode) warehouse_name,',
'                 ''CREATE SALES'' "CREATE SALES",''CREATE INSTALLMENT SALES'' "CREATE INSTALLMENT SALES"',
'            FROM nmenudtl a',
'           WHERE compcode = :compcode',
'             AND EXISTS (SELECT itemcode',
'                           FROM nmitemas i',
'                          WHERE i.compcode = :compcode)',
'             AND bookcode IS NOT NULL',
'            /* AND a.docnumbr NOT IN (SELECT NVL (s.updocnum, ''X'')',
'                                      FROM nmsalrec s',
'                                     WHERE s.compcode = :compcode)',
'*/',
'             AND a.vinnumbr NOT IN (',
'                       SELECT NVL (s.vinnumbr, ''X'')',
'                         FROM nmsalrec s',
'                        WHERE s.compcode = :compcode',
'                              AND s.docnumbr = a.docnumbr)',
'             AND bookaprv = ''Y''',
'        ORDER BY bookdate DESC, itemcode, bookcode)',
' WHERE (   INSTR (UPPER ("ITEMCODE"), UPPER (NVL (:p151_search, "ITEMCODE"))) >',
'                                                                             0',
'        OR INSTR (UPPER ("ITEMDESC"), UPPER (NVL (:p151_search, "ITEMDESC"))) >',
'                                                                             0',
'        OR INSTR (UPPER ("VINNUMBR"), UPPER (NVL (:p151_search, "VINNUMBR"))) >',
'                                                                             0',
'        OR INSTR (UPPER ("BATCHNUM"), UPPER (NVL (:p151_search, "BATCHNUM"))) >',
'                                                                             0',
'        OR INSTR (UPPER ("DOCNUMBR"), UPPER (NVL (:p151_search, "DOCNUMBR"))) >',
'                                                                             0',
'       )'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_item=>'P151_ROWS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download this Item List as CSV'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93288134167407861)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_column_heading=>'ROWID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93288521478407864)
,p_query_column_id=>2
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>2
,p_column_heading=>'ITEM CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93288927533407864)
,p_query_column_id=>3
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>3
,p_column_heading=>'ITEM DESC.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93289318593407864)
,p_query_column_id=>4
,p_column_alias=>'VINNUMBR'
,p_column_display_sequence=>4
,p_column_heading=>'VIN NUMBER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93289715119407868)
,p_query_column_id=>5
,p_column_alias=>'BOOKING NO'
,p_column_display_sequence=>5
,p_column_heading=>'BOOKING NO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93290106399407868)
,p_query_column_id=>6
,p_column_alias=>'BOOKING DATE'
,p_column_display_sequence=>6
,p_column_heading=>'BOOKING DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93290477837407868)
,p_query_column_id=>7
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>23
,p_column_heading=>'Partycde'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93290875354407868)
,p_query_column_id=>8
,p_column_alias=>'CUSTMRID'
,p_column_display_sequence=>24
,p_column_heading=>'Custmrid'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93291309876407870)
,p_query_column_id=>9
,p_column_alias=>'UNIT'
,p_column_display_sequence=>10
,p_column_heading=>'UNIT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93291688300407870)
,p_query_column_id=>10
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>13
,p_column_heading=>'SALERATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93292154513407870)
,p_query_column_id=>11
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>14
,p_column_heading=>'BATCH NUMBER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93292512004407870)
,p_query_column_id=>12
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>15
,p_column_heading=>'DOCTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93292953053407870)
,p_query_column_id=>13
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>16
,p_column_heading=>'SUBTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93293294918407870)
,p_query_column_id=>14
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>17
,p_column_heading=>'DOCNUMBR'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93293669699407870)
,p_query_column_id=>15
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>11
,p_column_heading=>'DOCTDATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93294069000407870)
,p_query_column_id=>16
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>12
,p_column_heading=>'Raisedby'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93294530443407871)
,p_query_column_id=>17
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>20
,p_column_heading=>'Apprvdby'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93294877922407871)
,p_query_column_id=>18
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>22
,p_column_heading=>'Apprdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93295347789407871)
,p_query_column_id=>19
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>21
,p_column_heading=>'Smancode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93295706699407871)
,p_query_column_id=>20
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>18
,p_column_heading=>'Qty'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93296166734407871)
,p_query_column_id=>21
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>25
,p_column_heading=>'Currcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93296534860407871)
,p_query_column_id=>22
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>32
,p_column_heading=>'Excgrate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93296952947407871)
,p_query_column_id=>23
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>26
,p_column_heading=>'Warecode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93297327005407871)
,p_query_column_id=>24
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>27
,p_column_heading=>'Costcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93297754424407873)
,p_query_column_id=>25
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>29
,p_column_heading=>'Commcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93298104464407873)
,p_query_column_id=>26
,p_column_alias=>'COLORCDE'
,p_column_display_sequence=>30
,p_column_heading=>'Colorcde'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93298534218407873)
,p_query_column_id=>27
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>33
,p_column_heading=>'Msfcamnt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93298944324407873)
,p_query_column_id=>28
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>34
,p_column_heading=>'Mslcamnt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93299311328407873)
,p_query_column_id=>29
,p_column_alias=>'BOOKAPRV'
,p_column_display_sequence=>35
,p_column_heading=>'Bookaprv'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93299698493407873)
,p_query_column_id=>30
,p_column_alias=>'Cancel Booking'
,p_column_display_sequence=>38
,p_column_heading=>'Cancel Booking'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.::P116_ROWID:#ROWID#'
,p_column_linktext=>'#Cancel Booking#'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93300166918407873)
,p_query_column_id=>31
,p_column_alias=>'ENGINENO'
,p_column_display_sequence=>36
,p_column_heading=>'Engineno'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93300476797407873)
,p_query_column_id=>32
,p_column_alias=>'VHCLKYNO'
,p_column_display_sequence=>39
,p_column_heading=>'Vhclkyno'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93300869248407873)
,p_query_column_id=>33
,p_column_alias=>'ITEM_COLOR'
,p_column_display_sequence=>8
,p_column_heading=>'COLOR'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93301343975407873)
,p_query_column_id=>34
,p_column_alias=>'BRAND'
,p_column_display_sequence=>31
,p_column_heading=>'Brand'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93301764795407873)
,p_query_column_id=>35
,p_column_alias=>'SALESMAN_NAME'
,p_column_display_sequence=>9
,p_column_heading=>'Salesman'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93302124187407873)
,p_query_column_id=>36
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'Customer Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93302514145407875)
,p_query_column_id=>37
,p_column_alias=>'WAREHOUSE_NAME'
,p_column_display_sequence=>28
,p_column_heading=>'Warehouse Name'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93302823752407875)
,p_query_column_id=>38
,p_column_alias=>'CREATE SALES'
,p_column_display_sequence=>19
,p_column_heading=>'Create Sales'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.:114:P114_ITEMCODE,P114_BATCHNUM,P114_SALERATE,P114_RAISEDBY,P114_APPRVDBY,P114_APPRDATE,P114_BOOKING_NO,P114_BOOKING_DATE,P114_SMANCODE,P114_SALESMAN_NAME,P114_ITEMDESC,P114_LUOMCODE,P114_HUOMCODE,P114_CUSTMRID,P11'
||'4_CUSTOMER_NAME,P114_PARTYCDE,P114_CURRCODE,P114_APPRQNTY,P114_WARECODE,P114_COSTCODE,P114_WAREHOUSE_NAME,P114_VINNUMBR,P114_COLORCDE,P114_COLOR,P114_EXCGRATE,P114_MSFCAMNT,P114_MSLCAMNT,P114_enudtl_DOCNUMBR,P114_COMMCODE,P114_BRAND,P114_ENUDTL_SUBTY'
||'PE:#ITEMCODE#,#BATCHNUM#,#SALERATE#,#RAISEDBY#,#APPRVDBY#,#APPRDATE#,#BOOKING NO#,#BOOKING DATE#,#SMANCODE#,#SALESMAN_NAME#,#ITEMDESC#,#UNIT#,#UNIT#,#CUSTMRID#,#CUSTOMER_NAME#,#PARTYCDE#,#CURRCODE#,#APPRQNTY#,#WARECODE#,#COSTCODE#,#WAREHOUSE_NAME#,#V'
||'INNUMBR#,#COLORCDE#,#ITEM_COLOR#,#EXCGRATE#,#MSFCAMNT#,#MSLCAMNT#,#DOCNUMBR#,#COMMCODE#,#BRAND#,#SUBTTYPE#'
,p_column_linktext=>'#CREATE SALES#'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(93303229473407875)
,p_query_column_id=>39
,p_column_alias=>'CREATE INSTALLMENT SALES'
,p_column_display_sequence=>37
,p_column_heading=>'Create Installment Sales'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.:115:P115_ITEMCODE,P115_BATCHNUM,P115_SALERATE,P115_RAISEDBY,P115_APPRVDBY,P115_APPRDATE,P115_BOOKING_NO,P115_BOOKING_DATE,P115_SMANCODE,P115_SALESMAN_NAME,P115_ITEMDESC,P115_LUOMCODE,P115_HUOMCODE,P115_CUSTMRID,P11'
||'5_CUSTOMER_NAME,P115_PARTYCDE,P115_CURRCODE,P115_APPRQNTY,P115_WARECODE,P115_COSTCODE,P115_WAREHOUSE_NAME,P115_VINNUMBR,P115_COLORCDE,P115_COLOR,P115_EXCGRATE,P115_MSFCAMNT,P115_MSLCAMNT,P115_enudtl_DOCNUMBR,P115_COMMCODE,P115_BRAND,P115_ENUDTL_SUBTY'
||'PE:#ITEMCODE#,#BATCHNUM#,#SALERATE#, #RAISEDBY#,#APPRVDBY#,#APPRDATE#,#BOOKING NO#,#BOOKING DATE#,#SMANCODE#,#SALESMAN_NAME#,#ITEMDESC#, #UNIT#,#UNIT#,#CUSTMRID#,#CUSTOMER_NAME#,#PARTYCDE#,#CURRCODE#,#APPRQNTY#,#WARECODE#,#COSTCODE#, #WAREHOUSE_NAME#'
||',#VINNUMBR#,#COLORCDE#,#ITEM_COLOR#,#EXCGRATE#,#MSFCAMNT#,#MSLCAMNT#,#DOCNUMBR#, #COMMCODE#,#BRAND#,#SUBTTYPE#'
,p_column_linktext=>'#CREATE INSTALLMENT SALES#'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93303613914407875)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>140
,p_plug_display_point=>'BODY_1'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93303997607407875)
,p_plug_name=>'Item Search & List Select'
,p_parent_plug_id=>wwv_flow_api.id(93303613914407875)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93304416796407876)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_api.id(93303997607407875)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93306386821407887)
,p_plug_name=>'Select Item List'
,p_parent_plug_id=>wwv_flow_api.id(93303997607407875)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>140
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93307206630407887)
,p_plug_name=>'Installment sale for invoice'
,p_parent_plug_id=>wwv_flow_api.id(93303613914407875)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct a.ROWID rwid,',
'       a.Itemcode,',
'       a.Itemdesc,',
'       a.Vinnumbr,',
'       (SELECT Nmcoddes',
'          FROM Nmcodmas',
'         WHERE     Compcode = :Compcode',
'               AND Nmhrdcde = ''CLR''',
'               AND Nmsofcde = a.Colorcde)',
'          Item_color,',
'       a.Salerate,',
'       a.Batchnum,',
'       a.Docttype,',
'       a.Subttype,',
'       a.Docnumbr,',
'       a.APPRQNTY,',
'       a.Doctdate,',
'       a.Luomcode,',
'       ''Sell This Item'' "Installment Sale",',
'       a.COMMCODE,',
'       (SELECT PRTYNAME',
'          FROM sycompty',
'         WHERE compcode = :compcode AND custmrid = a.custmrid)',
'          customer_name,',
'       a.CUSTMRID,',
'       a.PARTYCDE,',
'       a.COSTCODE,',
'       a.WARECODE,',
'       a.mslcamnt,',
'       a.Compcode',
'  FROM nmsalrec a',
' WHERE   a.UPDOCNUM  in(select distinct S.UPDOCNUM from nmenudtl a,nmsalrec s',
'       where a.Compcode = s.Compcode',
' and a.Docnumbr = s.UPDOCNUM)',
' AND EXISTS',
'              (SELECT Itemcode',
'                 FROM Nmitemas I',
'                WHERE I.Compcode = :Compcode)',
'                order by DOCTDATE desc',
' --      AND Bookcode IS NULL'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_api.id(93307569960407889)
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
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>56152702834727395
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93313706838407898)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Docnumbr'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93314163327407898)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Itemcode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93314522219407898)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Itemdesc'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMDESC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93314867302407898)
,p_db_column_name=>'WARECODE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Warecode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'WARECODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93315300831407900)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Custmrid'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93315716039407900)
,p_db_column_name=>'COSTCODE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93316160280407900)
,p_db_column_name=>'SALERATE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Salerate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93307765647407892)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93308078406407896)
,p_db_column_name=>'Installment Sale'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Installment Sale'
,p_column_link=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.:149:P149_COMPCODE,P149_ITEMCODE,P149_ITEMDESC,P149_CUSTMRID,P149_CUSTOMER_NAME,P149_PARTYCDE,P149_WARECODE,P149_COSTCODE,P149_COMMCODE,P149_SALERATE,P149_VINNUMBR,P149_UPDOCTYP,P149_UPSUBTYP,P149_UPDOCNUM,P149_UPDO'
||'CDTE,P149_LUOMCODE,P149_APPRQNTY,P149_MSLCAMNT:#COMPCODE#,#ITEMCODE#,#ITEMDESC#,#CUSTMRID#,#CUSTOMER_NAME#,#PARTYCDE#,#WARECODE#,#COSTCODE#,#COMMCODE#,#SALERATE#,#VINNUMBR#,#DOCTTYPE#,#SUBTTYPE#,#DOCNUMBR#,#DOCTDATE#,#LUOMCODE#,#APPRQNTY#,#MSLCAMNT#'
,p_column_linktext=>'#Installment Sale#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93308553598407896)
,p_db_column_name=>'RWID'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Rwid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93308878722407896)
,p_db_column_name=>'VINNUMBR'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Vinnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93309296863407896)
,p_db_column_name=>'ITEM_COLOR'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Item Color'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93309704556407896)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93310118057407898)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93310545737407898)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Apprqnty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93310962405407898)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93311292145407898)
,p_db_column_name=>'LUOMCODE'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Luomcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93311726290407898)
,p_db_column_name=>'COMMCODE'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Commcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93312147416407898)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93312484387407898)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93312912773407898)
,p_db_column_name=>'MSLCAMNT'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Mslcamnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93313341477407898)
,p_db_column_name=>'COMPCODE'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(93316477707407900)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'561617'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'Installment Sale:CUSTMRID:CUSTOMER_NAME:ITEMCODE:ITEMDESC:DOCNUMBR:DOCTDATE:BATCHNUM:VINNUMBR:SALERATE:APPRQNTY:COMPCODE'
,p_sort_column_1=>'DOCTDATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'DOCNUMBR'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93321378065407907)
,p_plug_name=>'Booked Item List'
,p_parent_plug_id=>wwv_flow_api.id(93303613914407875)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'  FROM (  SELECT ROWID, itemcode,itemdesc,vinnumbr,bookcode,',
'                        bookdate,partycde, custmrid,luomcode unit,salerate,',
'                        batchnum, docttype,subttype, docnumbr, doctdate,',
'                        raisedby, apprvdby, apprdate, smancode, apprqnty,',
'                        currcode, excgrate, warecode, costcode, commcode,',
'                        colorcde, msfcamnt, mslcamnt, bookaprv, engineno,ENUDTLPK,',
'                 VHCLKYNO,',
'                 (SELECT nmcoddes',
'                    FROM nmcodmas',
'                   WHERE     compcode = :compcode',
'                         AND nmhrdcde = ''CLR''',
'                         AND nmsofcde = a.colorcde)',
'                    item_color,',
'                 (SELECT nmcoddes',
'                    FROM nmcodmas',
'                   WHERE     compcode = :compcode',
'                         AND nmhrdcde = ''COM''',
'                         AND nmsofcde = a.commcode)',
'                    brand,',
'                 (SELECT smanname',
'                    FROM nmsmnmas',
'                   WHERE compcode = :compcode AND smancode = a.smancode)',
'                    salesman_name,',
'                 (SELECT PRTYNAME',
'                    FROM sycompty',
'                   WHERE compcode = :compcode AND custmrid = a.custmrid)',
'                    customer_name,',
'                    (SELECT FATHERS_NAME',
'                    FROM sycompty',
'                   WHERE compcode = :compcode AND custmrid = a.custmrid)',
'                   FATHERS_NAME,',
'                   (SELECT PRESENT_ADDRESS1||'' ''||PRESENT_ADDRESS2||'' ''||PRESENT_ADDRESS3 ADDRESS',
'                    FROM sycompty',
'                   WHERE compcode = :compcode AND custmrid = a.custmrid)',
'                   ADDRESS,',
'                 (SELECT waredesc',
'                    FROM nmwhsmas',
'                   WHERE compcode = :compcode AND warecode = a.warecode)',
'                    warehouse_name,',
'                 ''<input type="button" id="button" name="Normal_Sale" value="Create Sale" onClick="" style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71'
||', 110, 158) 100%) repeat scroll 0% 0%; border-radius: 21px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-decor'
||'ation: none; text-shadow: 0px -1px 0px rgb(40, 57, 102);" />''',
'                    "CREATE SALES",',
'                 ''<input type="button" id="button" name="Normal_Sale" value="Cancel Booking" onClick="" style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb'
||'(71, 110, 158) 100%) repeat scroll 0% 0%; border-radius: 21px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-de'
||'coration: none; text-shadow: 0px -1px 0px rgb(40, 57, 102);" />''',
'                    "Cancel Booking",',
'                 ''CREATE INSTALLMENT SALES'' "CREATE INSTALLMENT SALES"',
'            FROM nmenudtl a',
'           WHERE     compcode = :compcode',
'                 AND EXISTS',
'                        (SELECT itemcode',
'                           FROM nmitemas i',
'                          WHERE i.compcode = :compcode)',
'                 AND bookcode IS NOT NULL',
'                 AND (a.bookcode NOT IN (SELECT NVL (r.updocnum, ''123'')',
'                                           FROM nmsalrec r',
'                                          WHERE r.compcode = :compcode)',
'                      OR a.refnumbr NOT IN (SELECT NVL (r.updocnum, ''123'')',
'                                              FROM nmsalrec r',
'                                             WHERE r.compcode = :compcode))',
'        ORDER BY bookdate DESC, itemcode, bookcode)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P151_SELECT_LIST'
,p_plug_display_when_cond2=>'Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
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
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(93321837809407907)
,p_name=>'Booked Item List'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'10'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>56166970683727413
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93321932935407907)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93327543849407910)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Itemcode'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#ITEMCODE#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93327954516407910)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Itemdesc'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#ITEMDESC#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93328304600407910)
,p_db_column_name=>'VINNUMBR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Vinnumbr'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#VINNUMBR#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93329548989407910)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93329925745407910)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Custmrid'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93330275529407910)
,p_db_column_name=>'UNIT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93330707175407910)
,p_db_column_name=>'SALERATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salerate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93331106717407910)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93331526211407912)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93331943041407912)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93332270990407912)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93332682543407912)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93333128474407917)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93333498392407918)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Apprvdby'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93333942852407918)
,p_db_column_name=>'APPRDATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Apprdate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93334337366407920)
,p_db_column_name=>'SMANCODE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93334736844407920)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Apprqnty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93335079936407920)
,p_db_column_name=>'CURRCODE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93335528522407920)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93335913800407920)
,p_db_column_name=>'WARECODE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93336297580407920)
,p_db_column_name=>'COSTCODE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93336667986407920)
,p_db_column_name=>'COMMCODE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Commcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93337089476407920)
,p_db_column_name=>'COLORCDE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Colorcde'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93322268252407909)
,p_db_column_name=>'MSFCAMNT'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Msfcamnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93322726211407909)
,p_db_column_name=>'MSLCAMNT'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Mslcamnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93323106972407909)
,p_db_column_name=>'BOOKAPRV'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Bookaprv'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93323494125407909)
,p_db_column_name=>'Cancel Booking'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Cancel Booking'
,p_column_link=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.::P116_ROWID:#ROWID#'
,p_column_linktext=>'#Cancel Booking#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93323953917407909)
,p_db_column_name=>'ENGINENO'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Engine No.'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#ENGINENO#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93324363977407909)
,p_db_column_name=>'VHCLKYNO'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Vehicle No.'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#VHCLKYNO#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93324669774407909)
,p_db_column_name=>'ITEM_COLOR'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Item Color'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93325084077407909)
,p_db_column_name=>'BRAND'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93325521620407909)
,p_db_column_name=>'SALESMAN_NAME'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Salesman Name'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#SALESMAN_NAME#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93325962882407909)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Customer Name'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#CUSTOMER_NAME#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93326319823407909)
,p_db_column_name=>'WAREHOUSE_NAME'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Warehouse Name'
,p_column_html_expression=>'<span style="width:200px; display:block; white-space:normal;">#WAREHOUSE_NAME#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93326691917407909)
,p_db_column_name=>'CREATE SALES'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Create Sales'
,p_column_link=>'f?p=&APP_ID.:147:&SESSION.::&DEBUG.:147:P147_ITEMCODE,P147_ITEMDESC,P147_CUSTMRID,P147_CUSTOMER_NAME,P147_PARTYCDE,P147_WARECODE,P147_COSTCODE,P147_BRAND,P147_SALERATE,P147_VINNUMBR,P147_UPDOCTYP,P147_UPSUBTYP,P147_UPDOCNUM,P147_UPDOCDTE,P147_SO_DO_W'
||'O,P147_PRESENT_ADDRESS,P147_APPRQNTY,P147_BOOKING_NO,P147_BOOKING_DATE,P147_LUOMCODE,P147_SALESPERSON,P147_SALRECFK:#ITEMCODE#,#ITEMDESC#,#CUSTMRID#,#CUSTOMER_NAME#,#PARTYCDE#,#WARECODE#,#COSTCODE#,#COMMCODE#,#SALERATE#,#VINNUMBR#,#DOCTTYPE#,#SUBTTYP'
||'E#,#DOCNUMBR#,#DOCTDATE#,#FATHERS_NAME#,#ADDRESS#,#APPRQNTY#,#BOOKCODE#,#BOOKDATE#,#UNIT#,#SMANCODE#,#ENUDTLPK#'
,p_column_linktext=>'#CREATE SALES#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_column_comment=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.:114:P114_ITEMCODE,P114_BATCHNUM,P114_SALERATE,P114_RAISEDBY,P114_APPRVDBY,P114_APPRDATE,P114_BOOKING_NO,P114_BOOKING_DATE,P114_SMANCODE,P114_SALESMAN_NAME,P114_ITEMDESC,P114_LUOMCODE,P114_HUOMCODE,P114_CUSTMRID,P11'
||'4_CUSTOMER_NAME,P114_PARTYCDE,P114_CURRCODE,P114_APPRQNTY,P114_WARECODE,P114_COSTCODE,P114_WAREHOUSE_NAME,P114_VINNUMBR,P114_COLORCDE,P114_COLOR,P114_EXCGRATE,P114_MSFCAMNT,P114_MSLCAMNT,P114_enudtl_DOCNUMBR,P114_COMMCODE,P114_BRAND,P114_ENUDTL_SUBTY'
||'PE:#ITEMCODE#,#BATCHNUM#,#SALERATE#,#RAISEDBY#,#APPRVDBY#,#APPRDATE#,#BOOKING NO#,#BOOKING DATE#,#SMANCODE#,#SALESMAN_NAME#,#ITEMDESC#,#UNIT#,#UNIT#,#CUSTMRID#,#CUSTOMER_NAME#,#PARTYCDE#,#CURRCODE#,#APPRQNTY#,#WARECODE#,#COSTCODE#,#WAREHOUSE_NAME#,#V'
||'INNUMBR#,#COLORCDE#,#ITEM_COLOR#,#EXCGRATE#,#MSFCAMNT#,#MSLCAMNT#,#DOCNUMBR#,#COMMCODE#,#BRAND#,#SUBTTYPE#'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93327157870407910)
,p_db_column_name=>'CREATE INSTALLMENT SALES'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Create Installment Sales'
,p_column_link=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.:115:P115_ITEMCODE,P115_BATCHNUM,P115_SALERATE,P115_RAISEDBY,P115_APPRVDBY,P115_APPRDATE,P115_BOOKING_NO,P115_BOOKING_DATE,P115_SMANCODE,P115_SALESMAN_NAME,P115_ITEMDESC,P115_LUOMCODE,P115_HUOMCODE,P115_CUSTMRID,P11'
||'5_CUSTOMER_NAME,P115_PARTYCDE,P115_CURRCODE,P115_APPRQNTY,P115_WARECODE,P115_COSTCODE,P115_WAREHOUSE_NAME,P115_VINNUMBR,P115_COLORCDE,P115_COLOR,P115_EXCGRATE,P115_MSFCAMNT,P115_MSLCAMNT,P115_enudtl_DOCNUMBR,P115_COMMCODE,P115_BRAND,P115_ENUDTL_SUBTY'
||'PE:#ITEMCODE#,#BATCHNUM#,#SALERATE#, #RAISEDBY#,#APPRVDBY#,#APPRDATE#,#BOOKING NO#,#BOOKING DATE#,#SMANCODE#,#SALESMAN_NAME#,#ITEMDESC#, #UNIT#,#UNIT#,#CUSTMRID#,#CUSTOMER_NAME#,#PARTYCDE#,#CURRCODE#,#APPRQNTY#,#WARECODE#,#COSTCODE#, #WAREHOUSE_NAME#'
||',#VINNUMBR#,#COLORCDE#,#ITEM_COLOR#,#EXCGRATE#,#MSFCAMNT#,#MSLCAMNT#,#DOCNUMBR#, #COMMCODE#,#BRAND#,#SUBTTYPE#'
,p_column_linktext=>'#CREATE INSTALLMENT SALES#'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93458412331212251)
,p_db_column_name=>'BOOKCODE'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Bookcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93459150724212254)
,p_db_column_name=>'BOOKDATE'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Bookdate'
,p_column_html_expression=>'<span style="width:100px; display:block; white-space:normal;">#BOOKDATE#</span>'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93641762605022862)
,p_db_column_name=>'FATHERS_NAME'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Fathers Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93642459418022865)
,p_db_column_name=>'ADDRESS'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93900814613523423)
,p_db_column_name=>'ENUDTLPK'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Enudtlpk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(93337500158407920)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'561827'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'CREATE SALES:Cancel Booking:CUSTMRID:CUSTOMER_NAME:ITEMCODE:ITEMDESC:ENGINENO:VHCLKYNO:BATCHNUM:VINNUMBR:SALERATE:APPRQNTY:SALESMAN_NAME:WAREHOUSE_NAME:BOOKCODE:BOOKDATE:FATHERS_NAME:ADDRESS:ENUDTLPK'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93338014105407920)
,p_plug_name=>'Item List(NOT BOOKING)'
,p_parent_plug_id=>wwv_flow_api.id(93303613914407875)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>75
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'  FROM (  SELECT ROWID, itemcode,itemdesc,vinnumbr,bookcode,',
'                        bookdate,partycde, custmrid,luomcode unit,salerate,',
'                        batchnum, docttype,subttype, docnumbr, doctdate,',
'                        raisedby, apprvdby, apprdate, smancode, apprqnty,',
'                        currcode, excgrate, warecode, costcode, commcode,',
'                        colorcde, msfcamnt, mslcamnt, bookaprv, engineno,ENUDTLPK,',
'                 VHCLKYNO,',
'                 (SELECT nmcoddes',
'                    FROM nmcodmas',
'                   WHERE     compcode = :compcode',
'                         AND nmhrdcde = ''CLR''',
'                         AND nmsofcde = a.colorcde)',
'                    item_color,',
'                 (SELECT nmcoddes',
'                    FROM nmcodmas',
'                   WHERE     compcode = :compcode',
'                         AND nmhrdcde = ''COM''',
'                         AND nmsofcde = a.commcode)',
'                    brand,',
'                 (SELECT smanname',
'                    FROM nmsmnmas',
'                   WHERE compcode = :compcode AND smancode = a.smancode)',
'                    salesman_name,',
'                 (SELECT PRTYNAME',
'                    FROM sycompty',
'                   WHERE compcode = :compcode AND custmrid = a.custmrid)',
'                    customer_name,',
'                    (SELECT FATHERS_NAME',
'                    FROM sycompty',
'                   WHERE compcode = :compcode AND custmrid = a.custmrid)',
'                   FATHERS_NAME,',
'                   (SELECT PRESENT_ADDRESS1||'' ''||PRESENT_ADDRESS2||'' ''||PRESENT_ADDRESS3 ADDRESS',
'                    FROM sycompty',
'                   WHERE compcode = :compcode AND custmrid = a.custmrid)',
'                   ADDRESS,',
'                 (SELECT waredesc',
'                    FROM nmwhsmas',
'                   WHERE compcode = :compcode AND warecode = a.warecode)',
'                    warehouse_name,',
'''<input type="button" id="button" name="Normal_Sale" value="Create Sale" onClick="" style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158) 100%)'
||' repeat scroll 0% 0%; border-radius: 21px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-decoration: none; text'
||'-shadow: 0px -1px 0px rgb(40, 57, 102);" />''',
'          "Normal_Sale",',
'       ''Sale This Item'' "Installment Sale"',
'            FROM nmenudtl a',
'           WHERE     compcode = :compcode',
'                 AND EXISTS',
'                        (SELECT itemcode',
'                           FROM nmitemas i',
'                          WHERE i.compcode = :compcode)',
'                 AND bookcode IS  NULL',
'                 /* AND a.docnumbr NOT IN (SELECT NVL (s.updocnum, ''X'')',
'                                           FROM nmsalrec s',
'                                          WHERE s.compcode = :compcode)',
'     */',
'                 AND a.vinnumbr NOT IN',
'                        (SELECT NVL (s.vinnumbr, ''X'')',
'                           FROM nmsalrec s',
'                          WHERE s.compcode = :compcode',
'                                AND s.docnumbr = a.docnumbr)',
'                 AND bookaprv = ''Y''',
'        ORDER BY doctdate DESC, itemcode, docnumbr)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P151_SELECT_LIST'
,p_plug_display_when_cond2=>'N'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(93338410448407920)
,p_name=>'Item List'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>56183543322727426
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93338480059407921)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Itemcode'
,p_column_html_expression=>'<span style="width:100px; display:block; white-space:normal;">#ITEMCODE#</span> '
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93338902033407921)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Itemdesc'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#ITEMDESC#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93339317853407921)
,p_db_column_name=>'VINNUMBR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Chassis No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93339701142407921)
,p_db_column_name=>'ITEM_COLOR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Item Color'
,p_column_html_expression=>'<span style="width:80px; display:block; white-space:normal;">#ITEM_COLOR#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93340072819407921)
,p_db_column_name=>'SALERATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Sale Rate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93340475899407921)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Batch No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93340898720407921)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93341312756407921)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93341761288407921)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Document No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93342085253407921)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Appr. Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93342475349407921)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93342962885407921)
,p_db_column_name=>'Installment Sale'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Installment Sale'
,p_column_link=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.:115:P115_ITEMCODE,P115_BATCHNUM,P115_SALERATE,P115_ITEMDESC,P115_LUOMCODE,P115_HUOMCODE,P115_CUSTMRID,P115_CUSTOMER_NAME,P115_PARTYCDE,P115_CURRCODE,P115_APPRQNTY,P115_WARECODE,P115_COSTCODE,P115_WAREHOUSE_NAME,P11'
||'5_VINNUMBR,P115_COLORCDE,P115_COLOR,P115_EXCGRATE,P115_MSFCAMNT,P115_MSLCAMNT,P115_enudtl_DOCNUMBR,P115_COMMCODE,P115_BRAND,P115_ENUDTL_SUBTYPE:#ITEMCODE#,#BATCHNUM#,#SALERATE#,#ITEMDESC#,#UNIT#,#UNIT#,#CUSTMRID#,#CUSTOMER_NAME#,#PARTYCDE#,#CURRCODE#'
||',#APPRQNTY#,#WARECODE#,#COSTCODE#,#WAREHOUSE_NAME#,#VINNUMBR#,#COLORCDE#,#ITEM_COLOR#,#EXCGRATE#,#MSFCAMNT#,#MSLCAMNT#,#DOCNUMBR#,#COMMCODE#,#BRAND#,#SUBTTYPE#'
,p_column_linktext=>'#Installment Sale#'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93343326793407923)
,p_db_column_name=>'COMMCODE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Commcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93343744757407923)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93344076107407923)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Customer Id'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93344477938407923)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93344912441407928)
,p_db_column_name=>'COSTCODE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93345274079407928)
,p_db_column_name=>'WARECODE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93346540461407928)
,p_db_column_name=>'Normal_Sale'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Normal Sale'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#Normal_Sale#</span>'
,p_column_link=>'f?p=&APP_ID.:147:&SESSION.::&DEBUG.:147:P147_ITEMCODE,P147_ITEMDESC,P147_CUSTMRID,P147_CUSTOMER_NAME,P147_PARTYCDE,P147_WARECODE,P147_COSTCODE,P147_BRAND,P147_SALERATE,P147_VINNUMBR,P147_UPDOCTYP,P147_UPSUBTYP,P147_UPDOCNUM,P147_UPDOCDTE,P147_SO_DO_W'
||'O,P147_PRESENT_ADDRESS,P147_APPRQNTY,P147_BOOKING_NO,P147_BOOKING_DATE,P147_LUOMCODE,P147_SALESPERSON,P147_SALRECFK:#ITEMCODE#,#ITEMDESC#,#CUSTMRID#,#CUSTOMER_NAME#,#PARTYCDE#,#WARECODE#,#COSTCODE#,#COMMCODE#,#SALERATE#,#VINNUMBR#,#DOCTTYPE#,#SUBTTYP'
||'E#,#DOCNUMBR#,#DOCTDATE#,#FATHERS_NAME#,#ADDRESS#,#APPRQNTY#,#BOOKCODE#,#BOOKDATE#,#UNIT#,#SMANCODE#,#ENUDTLPK#'
,p_column_linktext=>'#Normal_Sale#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93481203214319912)
,p_db_column_name=>'ROWID'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93481895196319917)
,p_db_column_name=>'BOOKCODE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Bookcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93482649862319917)
,p_db_column_name=>'BOOKDATE'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Bookdate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93483615484319917)
,p_db_column_name=>'UNIT'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93484294171319917)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93485027064319917)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Apprvdby'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93485706538319918)
,p_db_column_name=>'APPRDATE'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Apprdate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93486729517319918)
,p_db_column_name=>'SMANCODE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
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
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93487414574319918)
,p_db_column_name=>'CURRCODE'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93488113187319918)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93489086089319920)
,p_db_column_name=>'COLORCDE'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Colorcde'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93489813423319943)
,p_db_column_name=>'MSFCAMNT'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Msfcamnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93490506943319945)
,p_db_column_name=>'MSLCAMNT'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93491490498319945)
,p_db_column_name=>'BOOKAPRV'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Bookaprv'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93492175734319948)
,p_db_column_name=>'ENGINENO'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Engine No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93492919587319948)
,p_db_column_name=>'VHCLKYNO'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Vehicle No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93493612290319948)
,p_db_column_name=>'BRAND'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93494595004319948)
,p_db_column_name=>'SALESMAN_NAME'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Sales Person'
,p_column_html_expression=>'<span style="width:200px; display:block; white-space:normal;">#SALESMAN_NAME#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93495299173319948)
,p_db_column_name=>'WAREHOUSE_NAME'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Cost Center'
,p_column_html_expression=>'<span style="width:200px; display:block; white-space:normal;">#WAREHOUSE_NAME#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93929706154692027)
,p_db_column_name=>'ENUDTLPK'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Enudtlpk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93967671552732262)
,p_db_column_name=>'FATHERS_NAME'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Fathers Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93968397953732262)
,p_db_column_name=>'ADDRESS'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(93347295552407928)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'561925'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'Normal_Sale:DOCNUMBR:DOCTDATE:CUSTMRID:CUSTOMER_NAME:ITEMCODE:ITEMDESC:BRAND:SALESMAN_NAME:WAREHOUSE_NAME:VHCLKYNO:VINNUMBR:ENGINENO:SALERATE:APPRQNTY:MSLCAMNT:ENUDTLPK:FATHERS_NAME:ADDRESS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93348185392407931)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>80
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
,p_plug_read_only_when_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93348594935407931)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>150
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P151_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P151_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(93304859721407876)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(93304416796407876)
,p_button_name=>'P151_GO'
,p_button_static_id=>'P99_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Go'
,p_button_alignment=>'LEFT'
,p_request_source=>'GO'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(93305197193407881)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(93304416796407876)
,p_button_name=>'P151_RESET'
,p_button_static_id=>'P99_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Reset'
,p_button_alignment=>'LEFT'
,p_request_source=>'RESET'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(93316978963407901)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(93307206630407887)
,p_button_name=>'P151_REPORTNAME'
,p_button_static_id=>'P99_REPORTNAME'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reportname'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(93317438529407903)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(93307206630407887)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Sales'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:111::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(93317786168407903)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(93307206630407887)
,p_button_name=>'ASD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Asd'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(93352231270407951)
,p_branch_action=>'f?p=&APP_ID.:151:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93305641798407881)
,p_name=>'P151_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(93304416796407876)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93306035718407884)
,p_name=>'P151_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(93304416796407876)
,p_item_default=>'15'
,p_prompt=>'Display'
,p_source=>'18'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P99_Report Row Per Page'
,p_lov=>'.'||wwv_flow_api.id(43413234183129642)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93306814050407887)
,p_name=>'P151_SELECT_LIST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(93306386821407887)
,p_item_default=>'Y'
,p_prompt=>'Select List'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Booked Item List'',''Y'' from dual',
'union ',
'select ''Available Item List(Not Booked)'',''N'' from dual',
'',
''))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93318218071407903)
,p_name=>'P151_ITEMCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(93307206630407887)
,p_prompt=>'Itemcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93318593154407903)
,p_name=>'P151_DOCNUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(93307206630407887)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&F_EMPNO_LIST.'
,p_prompt=>'Docnumber'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93318973922407904)
,p_name=>'P151_PROGNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(93307206630407887)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&PROGNAME.'
,p_prompt=>'Progname'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93319437645407904)
,p_name=>'P151_XURLTEST'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(93307206630407887)
,p_prompt=>'Xurltest'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93319856587407904)
,p_name=>'P151_XURL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(93307206630407887)
,p_prompt=>'Xurl'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93320180530407907)
,p_name=>'P151_DELVERDOCNUM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(93307206630407887)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deliver Docnum'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DOCNUMBR ',
'from apex_order_items1 ',
'where ORDER_ID=:P151_DOCNUMBER;'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93320641848407907)
,p_name=>'P151_GATPASSDOCNUM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(93307206630407887)
,p_prompt=>'Gat pass docnum'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93321052548407907)
,p_name=>'P151_S_H_REGION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(93307206630407887)
,p_item_default=>'0'
,p_prompt=>'S H Region'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93349061954407931)
,p_name=>'P151_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(93348594935407931)
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
 p_id=>wwv_flow_api.id(93349398699407931)
,p_name=>'P151_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(93348594935407931)
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
 p_id=>wwv_flow_api.id(93349843271407931)
,p_name=>'P151_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(93348594935407931)
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
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(93350571088407946)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'99'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(93351034769407949)
,p_computation_sequence=>10
,p_computation_item=>'P65_PROGNAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P65_PROGNAME.'
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(93351274738407949)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GO,P151_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(93351677070407951)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P151_SEARCH,P151_ROWS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64879890061366160)
);
wwv_flow_api.component_end;
end;
/
