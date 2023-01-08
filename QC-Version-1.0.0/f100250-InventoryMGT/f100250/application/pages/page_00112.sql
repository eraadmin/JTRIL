prompt --application/pages/page_00112
begin
--   Manifest
--     PAGE: 00112
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
 p_id=>112
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Sales'
,p_alias=>'NMSLSINS'
,p_step_title=>'Sales'
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
,p_last_upd_yyyymmddhh24miss=>'20161129124815'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(43370939997129613)
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
' WHERE (   INSTR (UPPER ("ITEMCODE"), UPPER (NVL (:p112_search, "ITEMCODE"))) >',
'                                                                             0',
'        OR INSTR (UPPER ("ITEMDESC"), UPPER (NVL (:p112_search, "ITEMDESC"))) >',
'                                                                             0',
'        OR INSTR (UPPER ("VINNUMBR"), UPPER (NVL (:p112_search, "VINNUMBR"))) >',
'                                                                             0',
'        OR INSTR (UPPER ("BATCHNUM"), UPPER (NVL (:p112_search, "BATCHNUM"))) >',
'                                                                             0',
'        OR INSTR (UPPER ("DOCNUMBR"), UPPER (NVL (:p112_search, "DOCNUMBR"))) >',
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
,p_query_num_rows_item=>'P112_ROWS'
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
 p_id=>wwv_flow_api.id(43371338057129613)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_column_heading=>'ROWID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43371700387129614)
,p_query_column_id=>2
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>2
,p_column_heading=>'ITEM CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43372146282129614)
,p_query_column_id=>3
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>3
,p_column_heading=>'ITEM DESC.'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43372540791129616)
,p_query_column_id=>4
,p_column_alias=>'VINNUMBR'
,p_column_display_sequence=>4
,p_column_heading=>'VIN NUMBER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43372927753129616)
,p_query_column_id=>5
,p_column_alias=>'BOOKING NO'
,p_column_display_sequence=>5
,p_column_heading=>'BOOKING NO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43373350708129616)
,p_query_column_id=>6
,p_column_alias=>'BOOKING DATE'
,p_column_display_sequence=>6
,p_column_heading=>'BOOKING DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43373726612129616)
,p_query_column_id=>7
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>23
,p_column_heading=>'Partycde'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43374090141129616)
,p_query_column_id=>8
,p_column_alias=>'CUSTMRID'
,p_column_display_sequence=>24
,p_column_heading=>'Custmrid'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43374562136129616)
,p_query_column_id=>9
,p_column_alias=>'UNIT'
,p_column_display_sequence=>10
,p_column_heading=>'UNIT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43374959978129616)
,p_query_column_id=>10
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>13
,p_column_heading=>'SALERATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43375334666129617)
,p_query_column_id=>11
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>14
,p_column_heading=>'BATCH NUMBER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43375757272129620)
,p_query_column_id=>12
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>15
,p_column_heading=>'DOCTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43376109201129620)
,p_query_column_id=>13
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>16
,p_column_heading=>'SUBTTYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43376451028129620)
,p_query_column_id=>14
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>17
,p_column_heading=>'DOCNUMBR'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43376808293129622)
,p_query_column_id=>15
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>11
,p_column_heading=>'DOCTDATE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43377181875129622)
,p_query_column_id=>16
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>12
,p_column_heading=>'Raisedby'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43377640534129622)
,p_query_column_id=>17
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>20
,p_column_heading=>'Apprvdby'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43378044028129622)
,p_query_column_id=>18
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>22
,p_column_heading=>'Apprdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43378390505129623)
,p_query_column_id=>19
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>21
,p_column_heading=>'Smancode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43378833286129623)
,p_query_column_id=>20
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>18
,p_column_heading=>'Qty'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43379220158129623)
,p_query_column_id=>21
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>25
,p_column_heading=>'Currcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43379571138129623)
,p_query_column_id=>22
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>32
,p_column_heading=>'Excgrate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43380018927129623)
,p_query_column_id=>23
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>26
,p_column_heading=>'Warecode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43380416774129623)
,p_query_column_id=>24
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>27
,p_column_heading=>'Costcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43380845811129625)
,p_query_column_id=>25
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>29
,p_column_heading=>'Commcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43381247061129625)
,p_query_column_id=>26
,p_column_alias=>'COLORCDE'
,p_column_display_sequence=>30
,p_column_heading=>'Colorcde'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43381660971129625)
,p_query_column_id=>27
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>33
,p_column_heading=>'Msfcamnt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43382024387129625)
,p_query_column_id=>28
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>34
,p_column_heading=>'Mslcamnt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43382427981129627)
,p_query_column_id=>29
,p_column_alias=>'BOOKAPRV'
,p_column_display_sequence=>35
,p_column_heading=>'Bookaprv'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43382780024129627)
,p_query_column_id=>30
,p_column_alias=>'Cancel Booking'
,p_column_display_sequence=>38
,p_column_heading=>'Cancel Booking'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.::P116_ROWID:#ROWID#'
,p_column_linktext=>'#Cancel Booking#'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43383224814129627)
,p_query_column_id=>31
,p_column_alias=>'ENGINENO'
,p_column_display_sequence=>36
,p_column_heading=>'Engineno'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43383644406129627)
,p_query_column_id=>32
,p_column_alias=>'VHCLKYNO'
,p_column_display_sequence=>39
,p_column_heading=>'Vhclkyno'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43384002720129627)
,p_query_column_id=>33
,p_column_alias=>'ITEM_COLOR'
,p_column_display_sequence=>8
,p_column_heading=>'COLOR'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43384406670129628)
,p_query_column_id=>34
,p_column_alias=>'BRAND'
,p_column_display_sequence=>31
,p_column_heading=>'Brand'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43384813236129630)
,p_query_column_id=>35
,p_column_alias=>'SALESMAN_NAME'
,p_column_display_sequence=>9
,p_column_heading=>'Salesman'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43385204220129630)
,p_query_column_id=>36
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'Customer Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43385604996129630)
,p_query_column_id=>37
,p_column_alias=>'WAREHOUSE_NAME'
,p_column_display_sequence=>28
,p_column_heading=>'Warehouse Name'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43385974101129630)
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
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43386427344129630)
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
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43386806160129630)
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
 p_id=>wwv_flow_api.id(43367734570129608)
,p_plug_name=>'Item Search & List Select'
,p_parent_plug_id=>wwv_flow_api.id(43386806160129630)
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
 p_id=>wwv_flow_api.id(43368093175129608)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_api.id(43367734570129608)
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
 p_id=>wwv_flow_api.id(43370070058129611)
,p_plug_name=>'Select Item List'
,p_parent_plug_id=>wwv_flow_api.id(43367734570129608)
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
 p_id=>wwv_flow_api.id(43388381654129631)
,p_plug_name=>'Installment sale for invoice'
,p_parent_plug_id=>wwv_flow_api.id(43386806160129630)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct a.ROWID rwid,a.ACDOCDTE, a.ACDOCNUM, a.ACDOCSRL, a.ACDOCTYP, a.ACSUBTYP, ',
'                                            a.APPRDATE, a.APPRQNTY, a.APPRVDBY, a.BANKBRCH, a.BANKNAME,',
'                                            a.BATCHNUM, a.BILNUMBR, a.BROKER_MOBILE, a.BROKER_NAME, a.BROKER_NID, ',
'                                            a.CHEQUEDT, a.CHEQUENO, a.COLLECT_PERSON, a.COLORCDE, a.COMMCODE, a.COMPCODE,',
'                                            a.COSTCODE, a.COSTRATE, a.CURRCODE, a.CUSTMRID, a.DEA_AGN_CODE, a.DELCCODE, ',
'                                            a.DELIVERD, a.DELWCODE, a.DISCAMNT, a.DISCPCNT, a.DOCNUMBR, a.DOCTDATE, a.DOCTTYPE, ',
'                                            a.DOWN_PAYMENT,a.EXCGRATE, a.EXPRDATE, a.FACTRVAL, a.FEESRVNO, a.HUOMCODE, ',
'                                            a.INSTALLMENT_PAY, a.INTEREST_AMOUNT, a.ITEMCODE, a.ITEMDESC, a.ITEMLONG, ',
'                                            a.ITEMRATE, a.ITEMTYPE, a.LIMITDAY, a.LOAN_AMOUNT, a.LUOMCODE, a.MARKPCNT, ',
'                                            a.MCSERIAL, a.MODIFYDT, a.MONTHLY_INSTALLMENT, a.MRNUMBER, a.MSFCAMNT,',
'                                             a.MSLCAMNT, a.NMFILENO, a.NMVTS, NMZONEFK, a.NO_OF_INSTALLMENT, a.OPRSTAMP,',
'                                              a.ORGNQNTY,  a.PAMTMODE, a.PARTYCDE, a.POSIBLE_INST_END_DATE, a.POSIBLE_INST_START_DATE, ',
'                                              a.RAISEDBY, a.REFNDATE, a.REFNUMBR, a.REMARKSS, a.REQDDATE, a.SALERATE, a.SALERTEF,',
'                                               a.SALES_TYPE, a.SALRECFK, a.SERLNUMB, a.SMANCODE, a.SPLDISNT, a.SPLDISPC, a.SRVPKGFK, ',
'                                               a.STATUSCD, a.SUBTTYPE, a.TIMSTAMP,a.TRANTYPE, a.TRNSQNTY, a.TRNSQTY2, a.UPDOCDTE,',
'                                                a.UPDOCNUM, a.UPDOCSRL, a.UPDOCTYP, a.UPSUBTYP, a.VATAMONT, a.VATPRSNT, a.VINNUMBR, a.WARECODE, a.WRPERIOD,',
'       (SELECT Nmcoddes',
'          FROM Nmcodmas',
'         WHERE     Compcode = :Compcode',
'               AND Nmhrdcde = ''CLR''',
'               AND Nmsofcde = a.Colorcde)',
'          Item_color,',
'''<input type="button" id="button" name="Normal_Sale" value="Edit Sale" onClick="" style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158) 100%) r'
||'epeat scroll 0% 0%; border-radius: 21px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-decoration: none; text-s'
||'hadow: 0px -1px 0px rgb(40, 57, 102);" />''',
'                    "Installment Sale",',
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
'                    warehouse_name',
'  FROM nmsalrec a',
' WHERE   a.UPDOCNUM  in(select distinct S.UPDOCNUM from nmenudtl a,nmsalrec s',
'       where a.Compcode = s.Compcode',
' and a.Docnumbr = s.UPDOCNUM)',
' AND EXISTS',
'              (SELECT Itemcode',
'                 FROM Nmitemas I',
'                WHERE I.Compcode = :Compcode)',
'                order by DOCTDATE desc',
' --      AND Bookcode IS NULL',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P112_SELECT_LIST'
,p_plug_display_when_cond2=>'I'
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
 p_id=>wwv_flow_api.id(43388810681129631)
,p_name=>'Report 1'
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
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>6233943555449137
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43390080230129633)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Document No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43391318214129633)
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
 p_id=>wwv_flow_api.id(43391742880129633)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Item Name'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#ITEMDESC#</span>'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMDESC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43393304836129634)
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
 p_id=>wwv_flow_api.id(92131805992844390)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Customer Id'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92132475358844390)
,p_db_column_name=>'COSTCODE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92134606667844393)
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
 p_id=>wwv_flow_api.id(92135987451844395)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92139070207002580)
,p_db_column_name=>'Installment Sale'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Installment Sale'
,p_column_link=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.:149:P149_COMPCODE,P149_DOCNUMBR,P149_DOCTDATE,P149_ITEMCODE,P149_ITEMDESC,P149_CUSTMRID,P149_CUSTOMER_NAME,P149_PARTYCDE,P149_WARECODE,P149_COSTCODE,P149_COMMCODE,P149_SALERATE,P149_VINNUMBR,P149_UPDOCTYP,P149_UPSU'
||'BTYP,P149_UPDOCNUM,P149_UPDOCDTE,P149_LUOMCODE,P149_APPRQNTY,P149_MSLCAMNT,P149_SO_DO_WO,P149_PRESENT_ADDRESS,P149_BOOKING_NO,P149_BOOKING_DATE,P149_SALESPERSON,P149_SUBTTYPE,P149_SALESTYPE,P149_BROKER_NAME,P149_BROKER_NID,P149_BROKER_MOBILE,P149_COL'
||'ORCDE,P149_DISCPCNT,P149_ZONE:#COMPCODE#,#DOCNUMBR#,#DOCTDATE#,#ITEMCODE#,#ITEMDESC#,#CUSTMRID#,#CUSTOMER_NAME#,#PARTYCDE#,#WARECODE#,#COSTCODE#,#COMMCODE#,#SALERATE#,#VINNUMBR#,#DOCTTYPE#,#SUBTTYPE#,#DOCNUMBR#,#DOCTDATE#,#LUOMCODE#,#APPRQNTY#,#MSLCA'
||'MNT#,#FATHERS_NAME#,#ADDRESS#,#UPDOCNUM#,#UPDOCDTE#,#SMANCODE#,#SUBTTYPE#,#SALES_TYPE#,#BROKER_NAME#,#BROKER_MOBILE#,#BROKER_NID#,#COLORCDE#,#DISCPCNT#,#NMZONEFK#'
,p_column_linktext=>'#Installment Sale#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92278803428137478)
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
 p_id=>wwv_flow_api.id(92279554463137481)
,p_db_column_name=>'VINNUMBR'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Chassis No.'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#VINNUMBR#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92280193049137481)
,p_db_column_name=>'ITEM_COLOR'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Item Color'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92280941883137483)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92281574949137483)
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
 p_id=>wwv_flow_api.id(92282277888137483)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(92283009076137483)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Date'
,p_column_html_expression=>'<span style="width:100px; display:block; white-space:normal;">#DOCTDATE#</span>'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92283767012137483)
,p_db_column_name=>'LUOMCODE'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Luomcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92284390677137484)
,p_db_column_name=>'COMMCODE'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Commcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92285121021137484)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Customer Name'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#CUSTOMER_NAME#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92285787070137484)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92336998644109311)
,p_db_column_name=>'MSLCAMNT'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93211713090617382)
,p_db_column_name=>'COMPCODE'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93727584510889620)
,p_db_column_name=>'BRAND'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93728340698889620)
,p_db_column_name=>'SALESMAN_NAME'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Salesman Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93729043124889620)
,p_db_column_name=>'FATHERS_NAME'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Fathers Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93729747015889621)
,p_db_column_name=>'ADDRESS'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93730402757889621)
,p_db_column_name=>'WAREHOUSE_NAME'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Warehouse Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93972718766073103)
,p_db_column_name=>'ACDOCDTE'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Acdocdte'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93973375116073104)
,p_db_column_name=>'ACDOCNUM'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Acdocnum'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93974113005073106)
,p_db_column_name=>'ACDOCSRL'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Acdocsrl'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93974776537073106)
,p_db_column_name=>'ACDOCTYP'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Acdoctyp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93975517476073107)
,p_db_column_name=>'ACSUBTYP'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Acsubtyp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93976197868073107)
,p_db_column_name=>'APPRDATE'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Apprdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93976948886073107)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Apprvdby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93977662036073110)
,p_db_column_name=>'BANKBRCH'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Bankbrch'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93978319441073112)
,p_db_column_name=>'BANKNAME'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Bankname'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93979012484073114)
,p_db_column_name=>'BILNUMBR'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Bilnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93979637060073114)
,p_db_column_name=>'BROKER_MOBILE'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Broker Mobile'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93980339447073115)
,p_db_column_name=>'BROKER_NAME'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Broker Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93980971914073117)
,p_db_column_name=>'BROKER_NID'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Broker Nid'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93981741535073118)
,p_db_column_name=>'CHEQUEDT'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Chequedt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93982459981073120)
,p_db_column_name=>'CHEQUENO'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Chequeno'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93983093617073120)
,p_db_column_name=>'COLLECT_PERSON'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Collect Person'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93983788265073121)
,p_db_column_name=>'COLORCDE'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Colorcde'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93984544537073121)
,p_db_column_name=>'COSTRATE'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Costrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93985243260073123)
,p_db_column_name=>'CURRCODE'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93985954399073125)
,p_db_column_name=>'DEA_AGN_CODE'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Dea Agn Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93986617344073125)
,p_db_column_name=>'DELCCODE'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Delccode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93987346825073125)
,p_db_column_name=>'DELIVERD'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Deliverd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93987998860073126)
,p_db_column_name=>'DELWCODE'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Delwcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93988717121073126)
,p_db_column_name=>'DISCAMNT'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'Discamnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93989460765073126)
,p_db_column_name=>'DISCPCNT'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'Discpcnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93990094819073128)
,p_db_column_name=>'DOWN_PAYMENT'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'Down Payment'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93990811402073129)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93991485382073129)
,p_db_column_name=>'EXPRDATE'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'Exprdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93992285766073131)
,p_db_column_name=>'FACTRVAL'
,p_display_order=>76
,p_column_identifier=>'BX'
,p_column_label=>'Factrval'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93993066134073131)
,p_db_column_name=>'FEESRVNO'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Feesrvno'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93993670346073132)
,p_db_column_name=>'HUOMCODE'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'Huomcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93994387054073132)
,p_db_column_name=>'INSTALLMENT_PAY'
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'Installment Pay'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93995121427073134)
,p_db_column_name=>'INTEREST_AMOUNT'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Interest Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93995791100073137)
,p_db_column_name=>'ITEMLONG'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Itemlong'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93996519745073137)
,p_db_column_name=>'ITEMRATE'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Itemrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93997233241073137)
,p_db_column_name=>'ITEMTYPE'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Itemtype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93997891953073139)
,p_db_column_name=>'LIMITDAY'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'Limitday'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93998626082073139)
,p_db_column_name=>'LOAN_AMOUNT'
,p_display_order=>85
,p_column_identifier=>'CG'
,p_column_label=>'Loan Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93999357731073139)
,p_db_column_name=>'MARKPCNT'
,p_display_order=>86
,p_column_identifier=>'CH'
,p_column_label=>'Markpcnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94000038233073140)
,p_db_column_name=>'MCSERIAL'
,p_display_order=>87
,p_column_identifier=>'CI'
,p_column_label=>'Mcserial'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94000758376073140)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>88
,p_column_identifier=>'CJ'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94001459032073140)
,p_db_column_name=>'MONTHLY_INSTALLMENT'
,p_display_order=>89
,p_column_identifier=>'CK'
,p_column_label=>'Monthly Installment'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94002091038073142)
,p_db_column_name=>'MRNUMBER'
,p_display_order=>90
,p_column_identifier=>'CL'
,p_column_label=>'Mrnumber'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94002861540073142)
,p_db_column_name=>'MSFCAMNT'
,p_display_order=>91
,p_column_identifier=>'CM'
,p_column_label=>'Msfcamnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94003546479073142)
,p_db_column_name=>'NMFILENO'
,p_display_order=>92
,p_column_identifier=>'CN'
,p_column_label=>'Nmfileno'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94004248154073143)
,p_db_column_name=>'NMVTS'
,p_display_order=>93
,p_column_identifier=>'CO'
,p_column_label=>'Nmvts'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94004869306073143)
,p_db_column_name=>'NMZONEFK'
,p_display_order=>94
,p_column_identifier=>'CP'
,p_column_label=>'Nmzonefk'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94005601392073143)
,p_db_column_name=>'NO_OF_INSTALLMENT'
,p_display_order=>95
,p_column_identifier=>'CQ'
,p_column_label=>'No Of Installment'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94006274064073145)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>96
,p_column_identifier=>'CR'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94007053945073145)
,p_db_column_name=>'ORGNQNTY'
,p_display_order=>97
,p_column_identifier=>'CS'
,p_column_label=>'Orgnqnty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94007694204073145)
,p_db_column_name=>'PAMTMODE'
,p_display_order=>98
,p_column_identifier=>'CT'
,p_column_label=>'Pamtmode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94008378644073146)
,p_db_column_name=>'POSIBLE_INST_END_DATE'
,p_display_order=>99
,p_column_identifier=>'CU'
,p_column_label=>'Posible Inst End Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94009097602073148)
,p_db_column_name=>'POSIBLE_INST_START_DATE'
,p_display_order=>100
,p_column_identifier=>'CV'
,p_column_label=>'Posible Inst Start Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94009866870073148)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>101
,p_column_identifier=>'CW'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94010487761073148)
,p_db_column_name=>'REFNDATE'
,p_display_order=>102
,p_column_identifier=>'CX'
,p_column_label=>'Refndate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94011214886073148)
,p_db_column_name=>'REFNUMBR'
,p_display_order=>103
,p_column_identifier=>'CY'
,p_column_label=>'Refnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94011883431073149)
,p_db_column_name=>'REMARKSS'
,p_display_order=>104
,p_column_identifier=>'CZ'
,p_column_label=>'Remarkss'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94012640918073149)
,p_db_column_name=>'REQDDATE'
,p_display_order=>105
,p_column_identifier=>'DA'
,p_column_label=>'Reqddate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94013276162073149)
,p_db_column_name=>'SALERTEF'
,p_display_order=>106
,p_column_identifier=>'DB'
,p_column_label=>'Salertef'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94013988881073151)
,p_db_column_name=>'SALES_TYPE'
,p_display_order=>107
,p_column_identifier=>'DC'
,p_column_label=>'Sales Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94014687120073151)
,p_db_column_name=>'SALRECFK'
,p_display_order=>108
,p_column_identifier=>'DD'
,p_column_label=>'Salrecfk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94015449993073151)
,p_db_column_name=>'SERLNUMB'
,p_display_order=>109
,p_column_identifier=>'DE'
,p_column_label=>'Serlnumb'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94016156778073153)
,p_db_column_name=>'SMANCODE'
,p_display_order=>110
,p_column_identifier=>'DF'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94016795912073153)
,p_db_column_name=>'SPLDISNT'
,p_display_order=>111
,p_column_identifier=>'DG'
,p_column_label=>'Spldisnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94017556106073153)
,p_db_column_name=>'SPLDISPC'
,p_display_order=>112
,p_column_identifier=>'DH'
,p_column_label=>'Spldispc'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94018244865073153)
,p_db_column_name=>'SRVPKGFK'
,p_display_order=>113
,p_column_identifier=>'DI'
,p_column_label=>'Srvpkgfk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94018924937073154)
,p_db_column_name=>'STATUSCD'
,p_display_order=>114
,p_column_identifier=>'DJ'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94019568110073154)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>115
,p_column_identifier=>'DK'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94020291701073154)
,p_db_column_name=>'TRANTYPE'
,p_display_order=>116
,p_column_identifier=>'DL'
,p_column_label=>'Trantype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94021048045073156)
,p_db_column_name=>'TRNSQNTY'
,p_display_order=>117
,p_column_identifier=>'DM'
,p_column_label=>'Trnsqnty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94021735531073156)
,p_db_column_name=>'TRNSQTY2'
,p_display_order=>118
,p_column_identifier=>'DN'
,p_column_label=>'Trnsqty2'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94022434844073157)
,p_db_column_name=>'UPDOCDTE'
,p_display_order=>119
,p_column_identifier=>'DO'
,p_column_label=>'Updocdte'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94023090237073157)
,p_db_column_name=>'UPDOCNUM'
,p_display_order=>120
,p_column_identifier=>'DP'
,p_column_label=>'Updocnum'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94023800203073157)
,p_db_column_name=>'UPDOCSRL'
,p_display_order=>121
,p_column_identifier=>'DQ'
,p_column_label=>'Updocsrl'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94024509837073157)
,p_db_column_name=>'UPDOCTYP'
,p_display_order=>122
,p_column_identifier=>'DR'
,p_column_label=>'Updoctyp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94025183772073159)
,p_db_column_name=>'UPSUBTYP'
,p_display_order=>123
,p_column_identifier=>'DS'
,p_column_label=>'Upsubtyp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94025886328073159)
,p_db_column_name=>'VATAMONT'
,p_display_order=>124
,p_column_identifier=>'DT'
,p_column_label=>'Vatamont'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94026615680073159)
,p_db_column_name=>'VATPRSNT'
,p_display_order=>125
,p_column_identifier=>'DU'
,p_column_label=>'Vatprsnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94027332467073160)
,p_db_column_name=>'WRPERIOD'
,p_display_order=>126
,p_column_identifier=>'DV'
,p_column_label=>'Wrperiod'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(43394952517129634)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'62401'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'Installment Sale:DOCNUMBR:DOCTDATE:CUSTMRID:CUSTOMER_NAME:ITEMCODE:ITEMDESC:BATCHNUM:VINNUMBR:SALERATE:APPRQNTY:SALESMAN_NAME:WAREHOUSE_NAME:ACDOCDTE:ACDOCNUM:ACDOCSRL:ACDOCTYP:ACSUBTYP:APPRDATE:APPRVDBY:BANKBRCH:BANKNAME:BILNUMBR:BROKER_MOBILE:BROKE'
||'R_NAME:BROKER_NID:CHEQUEDT:CHEQUENO:COLLECT_PERSON:COLORCDE:COSTRATE:CURRCODE:DEA_AGN_CODE:DELCCODE:DELIVERD:DELWCODE:DISCAMNT:DISCPCNT:DOWN_PAYMENT:EXCGRATE:EXPRDATE:FACTRVAL:FEESRVNO:HUOMCODE:INSTALLMENT_PAY:INTEREST_AMOUNT:ITEMLONG:ITEMRATE:ITEMTY'
||'PE:LIMITDAY:LOAN_AMOUNT:MARKPCNT:MCSERIAL:MODIFYDT:MONTHLY_INSTALLMENT:MRNUMBER:MSFCAMNT:NMFILENO:NMVTS:NMZONEFK:NO_OF_INSTALLMENT:OPRSTAMP:ORGNQNTY:PAMTMODE:POSIBLE_INST_END_DATE:POSIBLE_INST_START_DATE:RAISEDBY:REFNDATE:REFNUMBR:REMARKSS:REQDDATE:S'
||'ALERTEF:SALES_TYPE:SALRECFK:SERLNUMB:SMANCODE:SPLDISNT:SPLDISPC:SRVPKGFK:STATUSCD:TIMSTAMP:TRANTYPE:TRNSQNTY:TRNSQTY2:UPDOCDTE:UPDOCNUM:UPDOCSRL:UPDOCTYP:UPSUBTYP:VATAMONT:VATPRSNT:WRPERIOD'
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
 p_id=>wwv_flow_api.id(83341775365237185)
,p_plug_name=>'Booked Item List'
,p_parent_plug_id=>wwv_flow_api.id(43386806160129630)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'                     AND custmrid= a.custmrid) customer_name,',
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
' WHERE (   INSTR (UPPER ("ITEMCODE"), UPPER (NVL (:p112_search, "ITEMCODE"))) >',
'                                                                             0',
'        OR INSTR (UPPER ("ITEMDESC"), UPPER (NVL (:p112_search, "ITEMDESC"))) >',
'                                                                             0',
'        OR INSTR (UPPER ("VINNUMBR"), UPPER (NVL (:p112_search, "VINNUMBR"))) >',
'                                                                             0',
'        OR INSTR (UPPER ("BATCHNUM"), UPPER (NVL (:p112_search, "BATCHNUM"))) >',
'                                                                             0',
'        OR INSTR (UPPER ("DOCNUMBR"), UPPER (NVL (:p112_search, "DOCNUMBR"))) >',
'                                                                             0',
'       )'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(83341965997237187)
,p_name=>'Booked Item List'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'10'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>46187098871556693
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83342173838237203)
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
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
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
 p_id=>wwv_flow_api.id(83342665743237209)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83343061498237209)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Itemdesc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83343403245237209)
,p_db_column_name=>'VINNUMBR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Vinnumbr'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83343798450237209)
,p_db_column_name=>'BOOKING NO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Booking No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83344199046237209)
,p_db_column_name=>'BOOKING DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Booking Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83344647009237209)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83345021227237209)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Custmrid'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83345383727237209)
,p_db_column_name=>'UNIT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83345817004237209)
,p_db_column_name=>'SALERATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salerate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83346171970237209)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83346583615237209)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83346969216237210)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83347441440237210)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83347847182237210)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83348228103237210)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83348572347237210)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Apprvdby'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83349066237237210)
,p_db_column_name=>'APPRDATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Apprdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83349456401237210)
,p_db_column_name=>'SMANCODE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83349846169237210)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Apprqnty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83350203478237210)
,p_db_column_name=>'CURRCODE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83350603947237212)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83351015135237212)
,p_db_column_name=>'WARECODE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83351382864237212)
,p_db_column_name=>'COSTCODE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83351815939237212)
,p_db_column_name=>'COMMCODE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Commcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83352257053237212)
,p_db_column_name=>'COLORCDE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Colorcde'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83352611046237212)
,p_db_column_name=>'MSFCAMNT'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Msfcamnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83353029526237212)
,p_db_column_name=>'MSLCAMNT'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Mslcamnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83353417029237212)
,p_db_column_name=>'BOOKAPRV'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Bookaprv'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83353785310237212)
,p_db_column_name=>'Cancel Booking'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Cancel Booking'
,p_column_link=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.::P116_ROWID:#ROWID#'
,p_column_linktext=>'#Cancel Booking#'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83354188414237212)
,p_db_column_name=>'ENGINENO'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Engine No.'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83354640196237212)
,p_db_column_name=>'VHCLKYNO'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Vehicle No.'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83355053502237212)
,p_db_column_name=>'ITEM_COLOR'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Item Color'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83355407332237213)
,p_db_column_name=>'BRAND'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83355853472237213)
,p_db_column_name=>'SALESMAN_NAME'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Salesman Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83356199720237213)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83356584140237213)
,p_db_column_name=>'WAREHOUSE_NAME'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Warehouse Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83357008957237213)
,p_db_column_name=>'CREATE SALES'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Create Sales'
,p_column_link=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.:114:P114_ITEMCODE,P114_BATCHNUM,P114_SALERATE,P114_RAISEDBY,P114_APPRVDBY,P114_APPRDATE,P114_BOOKING_NO,P114_BOOKING_DATE,P114_SMANCODE,P114_SALESMAN_NAME,P114_ITEMDESC,P114_LUOMCODE,P114_HUOMCODE,P114_CUSTMRID,P11'
||'4_CUSTOMER_NAME,P114_PARTYCDE,P114_CURRCODE,P114_APPRQNTY,P114_WARECODE,P114_COSTCODE,P114_WAREHOUSE_NAME,P114_VINNUMBR,P114_COLORCDE,P114_COLOR,P114_EXCGRATE,P114_MSFCAMNT,P114_MSLCAMNT,P114_enudtl_DOCNUMBR,P114_COMMCODE,P114_BRAND,P114_ENUDTL_SUBTY'
||'PE:#ITEMCODE#,#BATCHNUM#,#SALERATE#,#RAISEDBY#,#APPRVDBY#,#APPRDATE#,#BOOKING NO#,#BOOKING DATE#,#SMANCODE#,#SALESMAN_NAME#,#ITEMDESC#,#UNIT#,#UNIT#,#CUSTMRID#,#CUSTOMER_NAME#,#PARTYCDE#,#CURRCODE#,#APPRQNTY#,#WARECODE#,#COSTCODE#,#WAREHOUSE_NAME#,#V'
||'INNUMBR#,#COLORCDE#,#ITEM_COLOR#,#EXCGRATE#,#MSFCAMNT#,#MSLCAMNT#,#DOCNUMBR#,#COMMCODE#,#BRAND#,#SUBTTYPE#'
,p_column_linktext=>'#CREATE SALES#'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83357443120237213)
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
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(83357798107238115)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'462030'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'CUSTMRID:CUSTOMER_NAME:BOOKING NO:BOOKING DATE:ITEMCODE:ITEMDESC:ENGINENO:VHCLKYNO:BATCHNUM:Cancel Booking:CREATE SALES:CREATE INSTALLMENT SALES:VINNUMBR:SALERATE:APPRQNTY:SALESMAN_NAME:WAREHOUSE_NAME:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(83393391762296648)
,p_plug_name=>'Item List(NOT BOOKING)'
,p_parent_plug_id=>wwv_flow_api.id(43386806160129630)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>75
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
'       ''Sale This Item'' "Normal_Sale",',
'       ''Sale This Item'' "Installment Sale",',
'       a.COMMCODE,',
'       (SELECT PRTYNAME',
'          FROM sycompty',
'         WHERE compcode = :compcode AND custmrid = a.custmrid)',
'          customer_name,',
'       a.CUSTMRID,',
'       a.PARTYCDE,',
'       a.COSTCODE,',
'       a.WARECODE,',
'       a.Compcode',
'  FROM Nmenudtl a',
' WHERE   a.Docnumbr not in(select distinct S.UPDOCNUM from nmenudtl a,nmsalrec s',
'       where a.Compcode = s.Compcode',
' and a.Docnumbr = s.UPDOCNUM)',
' AND EXISTS',
'              (SELECT Itemcode',
'                 FROM Nmitemas I',
'                WHERE I.Compcode = :Compcode)',
'       AND Bookcode IS NULL'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(83393507462296648)
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
,p_internal_uid=>46238640336616154
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83394185009296648)
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
 p_id=>wwv_flow_api.id(83394616277296648)
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
 p_id=>wwv_flow_api.id(83394997941296650)
,p_db_column_name=>'VINNUMBR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Vinnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83395444655296650)
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
 p_id=>wwv_flow_api.id(83395786144296651)
,p_db_column_name=>'SALERATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Salerate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83396177732296651)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83396653196296651)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83397043210296651)
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
 p_id=>wwv_flow_api.id(83397413143296651)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83397839091296651)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Apprqnty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83398222458296653)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(83399369549296653)
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
 p_id=>wwv_flow_api.id(83399844636296653)
,p_db_column_name=>'COMMCODE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Commcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92036410623270814)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92037042587270834)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Custmrid'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92150519607569774)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92204355947941670)
,p_db_column_name=>'COSTCODE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92205031369941699)
,p_db_column_name=>'WARECODE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92228804406167066)
,p_db_column_name=>'LUOMCODE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Luomcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92256146446292431)
,p_db_column_name=>'RWID'
,p_display_order=>23
,p_column_identifier=>'W'
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
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(92446812129436725)
,p_db_column_name=>'Normal_Sale'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Normal Sale'
,p_column_html_expression=>'<span style="width:150px; display:block; white-space:normal;">#Normal_Sale#</span>'
,p_column_link=>'f?p=&APP_ID.:147:&SESSION.::&DEBUG.:147:P147_ITEMCODE,P147_ITEMDESC,P147_CUSTMRID,P147_CUSTOMER_NAME,P147_PARTYCDE,P147_WARECODE,P147_COSTCODE,P147_COMMCODE,P147_SALERATE,P147_VINNUMBR,P147_UPDOCTYP,P147_UPSUBTYP,P147_UPDOCNUM,P147_UPDOCDTE:#ITEMCODE'
||'#,#ITEMDESC#,#CUSTMRID#,#CUSTOMER_NAME#,#PARTYCDE#,#WARECODE#,#COSTCODE#,#COMMCODE#,#SALERATE#,#VINNUMBR#,#DOCTTYPE#,#SUBTTYPE#,#DOCNUMBR#,#DOCTDATE#'
,p_column_linktext=>'#Normal_Sale#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93210189924614421)
,p_db_column_name=>'COMPCODE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(83400228336296890)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'462454'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Normal_Sale:CUSTMRID:CUSTOMER_NAME:ITEMCODE:ITEMDESC:DOCNUMBR:DOCTDATE:VINNUMBR:SALERATE:APPRQNTY:COMPCODE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43399862229129636)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7533132934253244474)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43400232648129636)
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
 p_id=>wwv_flow_api.id(65116576161628677)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>150
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P112_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P112_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43368503798129611)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(43368093175129608)
,p_button_name=>'P112_GO'
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
 p_id=>wwv_flow_api.id(43368953276129611)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(43368093175129608)
,p_button_name=>'P112_RESET'
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
 p_id=>wwv_flow_api.id(43396242384129634)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(43388381654129631)
,p_button_name=>'P112_REPORTNAME'
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
 p_id=>wwv_flow_api.id(43395393115129634)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(43388381654129631)
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
 p_id=>wwv_flow_api.id(43395808633129634)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(43388381654129631)
,p_button_name=>'ASD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Asd'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43412961320129639)
,p_branch_action=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43369300589129611)
,p_name=>'P112_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(43368093175129608)
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
 p_id=>wwv_flow_api.id(43369699395129611)
,p_name=>'P112_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(43368093175129608)
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
 p_id=>wwv_flow_api.id(43370562755129613)
,p_name=>'P112_SELECT_LIST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(43370070058129611)
,p_item_default=>'I'
,p_prompt=>'Select List'
,p_display_as=>'NATIVE_HIDDEN'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43396632934129634)
,p_name=>'P112_ITEMCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(43388381654129631)
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
 p_id=>wwv_flow_api.id(43396973283129634)
,p_name=>'P112_DOCNUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(43388381654129631)
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
 p_id=>wwv_flow_api.id(43397438215129634)
,p_name=>'P112_PROGNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(43388381654129631)
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
 p_id=>wwv_flow_api.id(43397806623129634)
,p_name=>'P112_XURLTEST'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(43388381654129631)
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
 p_id=>wwv_flow_api.id(43398232370129636)
,p_name=>'P112_XURL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(43388381654129631)
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
 p_id=>wwv_flow_api.id(43398630717129636)
,p_name=>'P112_DELVERDOCNUM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(43388381654129631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deliver Docnum'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DOCNUMBR ',
'from apex_order_items1 ',
'where ORDER_ID=:P112_DOCNUMBER;'))
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
 p_id=>wwv_flow_api.id(43398992930129636)
,p_name=>'P112_GATPASSDOCNUM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(43388381654129631)
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
 p_id=>wwv_flow_api.id(43399464460129636)
,p_name=>'P112_S_H_REGION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(43388381654129631)
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
 p_id=>wwv_flow_api.id(65116925884628700)
,p_name=>'P112_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(65116576161628677)
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
 p_id=>wwv_flow_api.id(65117362203628716)
,p_name=>'P112_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(65116576161628677)
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
 p_id=>wwv_flow_api.id(65117633313628716)
,p_name=>'P112_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(65116576161628677)
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
 p_id=>wwv_flow_api.id(43407750855129638)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'99'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(43408139827129638)
,p_computation_sequence=>10
,p_computation_item=>'P65_PROGNAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P65_PROGNAME.'
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43408393080129638)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GO,P112_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43408845351129638)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P112_SEARCH,P112_ROWS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64879890061366160)
);
wwv_flow_api.component_end;
end;
/
