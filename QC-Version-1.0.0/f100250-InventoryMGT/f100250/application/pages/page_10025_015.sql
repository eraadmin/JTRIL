prompt --application/pages/page_10025_015
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
 p_id=>1002500419
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Confirmation'
,p_alias=>'CONFIRMATION1'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20230105151703'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(297430967461631486)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(35300461927441613)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(340138151553406405)
,p_plug_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(297430967461631486)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(344074851859090894)
,p_name=>'Multiple Item Issue'
,p_parent_plug_id=>wwv_flow_api.id(340138151553406405)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT --sl,',
'       SERLNUMB,',
'       COMPCODE,',
'       DOCTTYPE,',
'       SUBTTYPE,',
'       DOCNUMBR,',
'       DOCTDATE,',
'       PARTYCDE,',
'       RAISEDBY,',
'       APPRVDBY,',
'       APPRDATE,',
'       REQDDATE,',
'       COMMCODE,',
'       ITEMCODE,',
'       ITEMTYPE,',
'       ITEMDESC,',
'       ITEMLONG,',
'       ITEMRATE,',
'       SCPCNT,',
'       DISCAMNT,',
'       SPLDISPC,',
'       SPLDISNT,',
'       SALERATE,',
'       HUOMCODE,',
'       FACTRVAL,',
'       LUOMCODE,',
'       ORGNQNTY,',
'       APPRQNTY,',
'       TRNSQNTY,',
'       MSFCAMNT,',
'       CURRCODE,',
'       EXCGRATE,',
'       MSLCAMNT,',
'       REFNUMBR,',
'       REFNDATE,',
'       REMARKSS,',
'       COSTCODE,',
'       WARECODE,',
'       POSTFLAG,',
'       PRNTFLAG,',
'       REMAINING_QTY, --PRICFLAG,',
'       STATUSCD,',
'       BATCHNUM,',
'       COLORCDE,',
'       COSTRATE,',
'       BOM_NO,',
'       SRCWRECD,',
'       SUM(ISSQTY) ISSQTY,',
'       BATCH_QTY,',
'       STOCK',
'FROM (       ',
'SELECT seq_id sl,',
'       c001 SERLNUMB,',
'       c002 COMPCODE,',
'       c003 DOCTTYPE,',
'       c004 SUBTTYPE,',
'       c005 DOCNUMBR,',
'       c006 DOCTDATE,',
'       c007 PARTYCDE,',
'       c008 RAISEDBY,',
'       c009 APPRVDBY,',
'       c010 APPRDATE,',
'       c011 REQDDATE,',
'       c012 COMMCODE,',
'       c013 ITEMCODE,',
'       c014 ITEMTYPE,',
'       c015 ITEMDESC,',
'       c016 ITEMLONG,',
'       c017 ITEMRATE,',
'       c018 SCPCNT,',
'       c019 DISCAMNT,',
'       c020 SPLDISPC,',
'       c021 SPLDISNT,',
'       c022 SALERATE,',
'       c023 HUOMCODE,',
'       c024 FACTRVAL,',
'       c025 LUOMCODE,',
'       c026 ORGNQNTY,',
'       c027 APPRQNTY,',
'       c028 TRNSQNTY,',
'       c029 MSFCAMNT,',
'       c030 CURRCODE,',
'       c031 EXCGRATE,',
'       c032 MSLCAMNT,',
'       c033 REFNUMBR,',
'       c034 REFNDATE,',
'       c035 REMARKSS,',
'       c036 COSTCODE,',
'       c037 WARECODE,',
'       c038 POSTFLAG,',
'       c039 PRNTFLAG,',
'       c040 REMAINING_QTY, --PRICFLAG,',
'       c041 STATUSCD,',
'       c042 BATCHNUM,',
'       c043 COLORCDE,',
'       c044 COSTRATE,',
'       c045 BOM_NO,',
'       c046 SRCWRECD,',
'       c047 ISSQTY,',
'       c048 BATCH_QTY,',
'       c049 STOCK',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS_DTL''',
'   AND c047 > 0',
' --order by sl, c013',
')',
'GROUP BY SERLNUMB,',
'       COMPCODE,',
'       DOCTTYPE,',
'       SUBTTYPE,',
'       DOCNUMBR,',
'       DOCTDATE,',
'       PARTYCDE,',
'       RAISEDBY,',
'       APPRVDBY,',
'       APPRDATE,',
'       REQDDATE,',
'       COMMCODE,',
'       ITEMCODE,',
'       ITEMTYPE,',
'       ITEMDESC,',
'       ITEMLONG,',
'       ITEMRATE,',
'       SCPCNT,',
'       DISCAMNT,',
'       SPLDISPC,',
'       SPLDISNT,',
'       SALERATE,',
'       HUOMCODE,',
'       FACTRVAL,',
'       LUOMCODE,',
'       ORGNQNTY,',
'       APPRQNTY,',
'       TRNSQNTY,',
'       MSFCAMNT,',
'       CURRCODE,',
'       EXCGRATE,',
'       MSLCAMNT,',
'       REFNUMBR,',
'       REFNDATE,',
'       REMARKSS,',
'       COSTCODE,',
'       WARECODE,',
'       POSTFLAG,',
'       PRNTFLAG,',
'       REMAINING_QTY, --PRICFLAG,',
'       STATUSCD,',
'       BATCHNUM,',
'       COLORCDE,',
'       COSTRATE,',
'       BOM_NO,',
'       SRCWRECD,',
'       BATCH_QTY,',
'       STOCK',
'order by ITEMCODE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT --sl,',
'       SERLNUMB,',
'       COMPCODE,',
'       DOCTTYPE,',
'       SUBTTYPE,',
'       DOCNUMBR,',
'       DOCTDATE,',
'       PARTYCDE,',
'       RAISEDBY,',
'       APPRVDBY,',
'       APPRDATE,',
'       REQDDATE,',
'       COMMCODE,',
'       ITEMCODE,',
'       ITEMTYPE,',
'       ITEMDESC,',
'       ITEMLONG,',
'       ITEMRATE,',
'       SCPCNT,',
'       DISCAMNT,',
'       SPLDISPC,',
'       SPLDISNT,',
'       SALERATE,',
'       HUOMCODE,',
'       FACTRVAL,',
'       LUOMCODE,',
'       ORGNQNTY,',
'       APPRQNTY,',
'       TRNSQNTY,',
'       MSFCAMNT,',
'       CURRCODE,',
'       EXCGRATE,',
'       MSLCAMNT,',
'       REFNUMBR,',
'       REFNDATE,',
'       REMARKSS,',
'       COSTCODE,',
'       WARECODE,',
'       POSTFLAG,',
'       PRNTFLAG,',
'       PRICFLAG,',
'       STATUSCD,',
'       BATCHNUM,',
'       COLORCDE,',
'       COSTRATE,',
'       BOM_NO,',
'       SRCWRECD,',
'       SUM(ISSQTY) ISSQTY,',
'       BATCH_QTY,',
'       STOCK',
'FROM (       ',
'SELECT seq_id sl,',
'       c001 SERLNUMB,',
'       c002 COMPCODE,',
'       c003 DOCTTYPE,',
'       c004 SUBTTYPE,',
'       c005 DOCNUMBR,',
'       c006 DOCTDATE,',
'       c007 PARTYCDE,',
'       c008 RAISEDBY,',
'       c009 APPRVDBY,',
'       c010 APPRDATE,',
'       c011 REQDDATE,',
'       c012 COMMCODE,',
'       c013 ITEMCODE,',
'       c014 ITEMTYPE,',
'       c015 ITEMDESC,',
'       c016 ITEMLONG,',
'       c017 ITEMRATE,',
'       c018 SCPCNT,',
'       c019 DISCAMNT,',
'       c020 SPLDISPC,',
'       c021 SPLDISNT,',
'       c022 SALERATE,',
'       c023 HUOMCODE,',
'       c024 FACTRVAL,',
'       c025 LUOMCODE,',
'       c026 ORGNQNTY,',
'       c027 APPRQNTY,',
'       c028 TRNSQNTY,',
'       c029 MSFCAMNT,',
'       c030 CURRCODE,',
'       c031 EXCGRATE,',
'       c032 MSLCAMNT,',
'       c033 REFNUMBR,',
'       c034 REFNDATE,',
'       c035 REMARKSS,',
'       c036 COSTCODE,',
'       c037 WARECODE,',
'       c038 POSTFLAG,',
'       c039 PRNTFLAG,',
'       c040 PRICFLAG,',
'       c041 STATUSCD,',
'       c042 BATCHNUM,',
'       c043 COLORCDE,',
'       c044 COSTRATE,',
'       c045 BOM_NO,',
'       c046 SRCWRECD,',
'       c047 ISSQTY,',
'       c048 BATCH_QTY,',
'       c049 STOCK',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS_DTL''',
' --order by sl, c013',
')',
'GROUP BY SERLNUMB,',
'       COMPCODE,',
'       DOCTTYPE,',
'       SUBTTYPE,',
'       DOCNUMBR,',
'       DOCTDATE,',
'       PARTYCDE,',
'       RAISEDBY,',
'       APPRVDBY,',
'       APPRDATE,',
'       REQDDATE,',
'       COMMCODE,',
'       ITEMCODE,',
'       ITEMTYPE,',
'       ITEMDESC,',
'       ITEMLONG,',
'       ITEMRATE,',
'       SCPCNT,',
'       DISCAMNT,',
'       SPLDISPC,',
'       SPLDISNT,',
'       SALERATE,',
'       HUOMCODE,',
'       FACTRVAL,',
'       LUOMCODE,',
'       ORGNQNTY,',
'       APPRQNTY,',
'       TRNSQNTY,',
'       MSFCAMNT,',
'       CURRCODE,',
'       EXCGRATE,',
'       MSLCAMNT,',
'       REFNUMBR,',
'       REFNDATE,',
'       REMARKSS,',
'       COSTCODE,',
'       WARECODE,',
'       POSTFLAG,',
'       PRNTFLAG,',
'       PRICFLAG,',
'       STATUSCD,',
'       BATCHNUM,',
'       COLORCDE,',
'       COSTRATE,',
'       BOM_NO,',
'       SRCWRECD,',
'       BATCH_QTY,',
'       STOCK',
'order by ITEMCODE'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34747590245966026)
,p_query_column_id=>1
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34747952593966026)
,p_query_column_id=>2
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>112
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34748398969966027)
,p_query_column_id=>3
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>122
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34748730182966027)
,p_query_column_id=>4
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>132
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34749118023966027)
,p_query_column_id=>5
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>142
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34749521645966028)
,p_query_column_id=>6
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>152
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34749969175966028)
,p_query_column_id=>7
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>162
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34750370647966028)
,p_query_column_id=>8
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>172
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34750707408966028)
,p_query_column_id=>9
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>182
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34751194666966029)
,p_query_column_id=>10
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>192
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34751504422966029)
,p_query_column_id=>11
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>202
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34751969407966029)
,p_query_column_id=>12
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>102
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34752379068966029)
,p_query_column_id=>13
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>3
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34752704917966030)
,p_query_column_id=>14
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>82
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34753199222966030)
,p_query_column_id=>15
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>4
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34753514927966030)
,p_query_column_id=>16
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>212
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34753967887966031)
,p_query_column_id=>17
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>222
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34754340089966031)
,p_query_column_id=>18
,p_column_alias=>'SCPCNT'
,p_column_display_sequence=>232
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34754775325966031)
,p_query_column_id=>19
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>242
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34755171308966031)
,p_query_column_id=>20
,p_column_alias=>'SPLDISPC'
,p_column_display_sequence=>252
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34755599375966032)
,p_query_column_id=>21
,p_column_alias=>'SPLDISNT'
,p_column_display_sequence=>262
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34755949377966032)
,p_query_column_id=>22
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>92
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34756330382966032)
,p_query_column_id=>23
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>62
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34756790049966033)
,p_query_column_id=>24
,p_column_alias=>'FACTRVAL'
,p_column_display_sequence=>272
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34757166838966033)
,p_query_column_id=>25
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>5
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34757571541966033)
,p_query_column_id=>26
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>10
,p_column_heading=>'Request Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34757944136966033)
,p_query_column_id=>27
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34758380617966034)
,p_query_column_id=>28
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>12
,p_column_heading=>'Issued Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34758754123966034)
,p_query_column_id=>29
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>282
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34759103230966034)
,p_query_column_id=>30
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>292
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34759583015966034)
,p_query_column_id=>31
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>302
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34759966960966035)
,p_query_column_id=>32
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>312
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34766725250966040)
,p_query_column_id=>33
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>322
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34760343409966035)
,p_query_column_id=>34
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>332
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34760717695966035)
,p_query_column_id=>35
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>52
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34761172433966036)
,p_query_column_id=>36
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>342
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34761575805966036)
,p_query_column_id=>37
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>352
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34761909832966036)
,p_query_column_id=>38
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>362
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34762392275966036)
,p_query_column_id=>39
,p_column_alias=>'PRNTFLAG'
,p_column_display_sequence=>372
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38951222972184020)
,p_query_column_id=>40
,p_column_alias=>'REMAINING_QTY'
,p_column_display_sequence=>22
,p_column_heading=>'Remaining Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34763137154966037)
,p_query_column_id=>41
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>382
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34763576437966038)
,p_query_column_id=>42
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>6
,p_column_heading=>'Batch No.'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT 1',
'     FROM syparmas',
'    WHERE cacmpcde = :compcode',
'      and invmthd = ''N'';'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34763907641966038)
,p_query_column_id=>43
,p_column_alias=>'COLORCDE'
,p_column_display_sequence=>392
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34764310411966038)
,p_query_column_id=>44
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>72
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34764733862966038)
,p_query_column_id=>45
,p_column_alias=>'BOM_NO'
,p_column_display_sequence=>402
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34765187592966039)
,p_query_column_id=>46
,p_column_alias=>'SRCWRECD'
,p_column_display_sequence=>412
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34765596574966039)
,p_query_column_id=>47
,p_column_alias=>'ISSQTY'
,p_column_display_sequence=>42
,p_column_heading=>'Issue Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34765979039966039)
,p_query_column_id=>48
,p_column_alias=>'BATCH_QTY'
,p_column_display_sequence=>32
,p_column_heading=>'Stock Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT 1',
'     FROM syparmas',
'    WHERE cacmpcde = :compcode',
'      and invmthd = ''N'';'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34766390500966039)
,p_query_column_id=>49
,p_column_alias=>'STOCK'
,p_column_display_sequence=>9
,p_column_heading=>'Stock'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT 1',
'     FROM syparmas',
'    WHERE cacmpcde = :compcode',
'      and invmthd <> ''N'';'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(344071320274089585)
,p_plug_name=>'Document Information'
,p_parent_plug_id=>wwv_flow_api.id(297430967461631486)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34745766069966023)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(297430967461631486)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34746109144966023)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(297430967461631486)
,p_button_name=>'FINISH'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Finish'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure to Finish?'',''PLACE_ORDER'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34746530950966023)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(297430967461631486)
,p_button_name=>'PREVIOUS'
,p_button_static_id=>'BACK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34775867361966047)
,p_branch_name=>'Go To Page 49'
,p_branch_action=>'f?p=&SUCCESS_APP.:&SUCCESS_PAGE.:&SESSION.::&DEBUG.:RP,:P1_DOCNUMBR,P1_PROGNAME:&P1002500419_MRDOCNUMBR.,nmissch2&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'PLACE_ORDER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(35368049136135440)
,p_branch_name=>'Go To Page 49'
,p_branch_action=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49:P49_DOCNUMBR,P49_PROGNAME:&P1002500419_DOCNUMBR.,nmissch2&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'PLACE_ORDER'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34775447663966047)
,p_branch_name=>'Go To Page 418'
,p_branch_action=>'f?p=&APP_ID.:&P1002500419_PREVPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34746530950966023)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34767467674966040)
,p_name=>'P1002500419_DOCNUMBR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(344071320274089585)
,p_prompt=>'Request No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34767806554966041)
,p_name=>'P1002500419_DOCTDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(344071320274089585)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34768290511966041)
,p_name=>'P1002500419_WARECODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(344071320274089585)
,p_prompt=>'Req. From'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'ORDER BY warecode'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34768637991966041)
,p_name=>'P1002500419_SRCWRECD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(344071320274089585)
,p_prompt=>'Req. To'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'ORDER BY warecode'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34769045752966041)
,p_name=>'P1002500419_PREVPAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(344071320274089585)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34769413684966042)
,p_name=>'P1002500419_NEXTPAGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(344071320274089585)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34769889348966042)
,p_name=>'P1002500419_NEWDOCNUMBR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(344071320274089585)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34770276660966042)
,p_name=>'P1002500419_MRDOCNUMBR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(344071320274089585)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34770683865966042)
,p_name=>'P1002500419_STATUSCD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(344071320274089585)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34773474214966046)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34745766069966023)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34773962798966046)
,p_event_id=>wwv_flow_api.id(34773474214966046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34774488967966046)
,p_event_id=>wwv_flow_api.id(34773474214966046)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;',
'',
'if apex_collection.collection_exists(''BATCH_DISTRIBUTION'') then',
'   apex_collection.delete_collection(p_collection_name => ''BATCH_DISTRIBUTION'');',
'end if;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS_DTL'') then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS_DTL'');',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34774938401966047)
,p_event_id=>wwv_flow_api.id(34773474214966046)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34771069297966043)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Previous Page Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT c001 DOCNUMBR,',
'          c002 DOCTDATE',
'          --c006 WARECODE, ',
'          --c010 SRCWRECD',
'     INTO :P1002500419_DOCNUMBR, :P1002500419_DOCTDATE--, :P1002500419_WARECODE, :P1002500419_SRCWRECD',
'     FROM apex_collections',
'    WHERE collection_name = ''DOC_INFO'';',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      raise_application_error (-20001, SQLCODE || '' '' || SQLERRM);',
'END;',
'',
':P1002500419_WARECODE := :P417_WARECODE;',
':P1002500419_SRCWRECD := :P417_SRCWRECD;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34771833079966043)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Place Order'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_DOCNUMBR      varchar2(500);',
'    v_DOCTDATE     varchar2(500);',
'    v_PRVDDT      varchar2(500);',
'    v_REFNUM       varchar2(500);',
'    v_PREFNDATE     varchar2(500);',
'    v_WARECODE     varchar2(500);',
'    v_SRWHSNME     varchar2(500);',
'    v_SRCSTCDE     varchar2(500);',
'    v_SRCSTNME       varchar2(500);',
'    v_SRCWRECD      varchar2(500);',
'    v_DSWHSNME    varchar2(500);',
'    v_SRCCOSTCD   varchar2(500);',
'    v_SRCCOSTDS     varchar2(500);',
'    v_RAISEDBY     varchar2(500);',
'    v_RAISEDNAME    varchar2(500);',
'    v_S_PRDTYP     varchar2(500);',
'    v_S_PRSTYP      varchar2(500);',
'',
'begin     ',
'        ',
'begin',
'SELECT  ',
'            c001 DOCNUMBR,',
'            c002 DOCTDATE,',
'            c003 PRVDDT,',
'            c004 REFNUM,',
'            c005 REFNDATE,',
'            c006 WARECODE,',
'            c007 SRWHSNME,',
'            c008 SRCSTCDE,',
'            c009 SRCSTNME,',
'            c010 SRCWRECD,',
'            c011 DSWHSNME,',
'            c012 SRCCOSTCD,',
'            c013 SRCCOSTDS,',
'            c014 RAISEDBY,',
'            c015 RAISEDNAME,',
'            c016 S_PRDTYP,',
'            c017 S_PRSTYP',
'            ',
'     INTO   v_DOCNUMBR,',
'            v_DOCTDATE,',
'            v_PRVDDT,',
'            v_REFNUM,',
'            v_PREFNDATE,',
'            v_WARECODE,',
'            v_SRWHSNME,',
'            v_SRCSTCDE,',
'            v_SRCSTNME,',
'            v_SRCWRECD,',
'            v_DSWHSNME,',
'            v_SRCCOSTCD,',
'            v_SRCCOSTDS,',
'            v_RAISEDBY,',
'            v_RAISEDNAME,',
'            v_S_PRDTYP,',
'            v_S_PRSTYP',
'     FROM apex_collections',
'    WHERE collection_name = ''DOC_INFO'';',
'',
'exception',
'    when no_data_found then',
'    raise_application_error(-20001,''No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''Too many rows found'');',
'    when others then',
'    raise_application_error(-20001, ''Place Order|DOC_INFO ''||sqlcode||'' ''||sqlerrm);',
'end;',
'',
'--raise_application_error(-20001,v_DOCNUMBR||'' ''||v_PRVDDT||'' ''||v_S_PRDTYP||'' ''||v_S_PRSTYP||'' ''||v_DSWHSCDE);',
'',
'begin',
'    for i in',
'    (   SELECT seq_id sl,',
'               c001 SERLNUMB,',
'               c002 COMPCODE,',
'               c003 DOCTTYPE,',
'               c004 SUBTTYPE,',
'               c005 DOCNUMBR,',
'               c006 DOCTDATE,',
'               c007 PARTYCDE,',
'               c008 RAISEDBY,',
'               c009 APPRVDBY,',
'               c010 APPRDATE,',
'               c011 REQDDATE,',
'               c012 COMMCODE,',
'               c013 ITEMCODE,',
'               c014 ITEMTYPE,',
'               c015 ITEMDESC,',
'               c016 ITEMLONG,',
'               c017 ITEMRATE,',
'               c018 SCPCNT,',
'               c019 DISCAMNT,',
'               c020 SPLDISPC,',
'               c021 SPLDISNT,',
'               c022 SALERATE,',
'               c023 HUOMCODE,',
'               c024 FACTRVAL,',
'               c025 LUOMCODE,',
'               to_number(c026) ORGNQNTY,',
'               to_number(c027) APPRQNTY,',
'               c028 TRNSQNTY,',
'               c029 MSFCAMNT,',
'               c030 CURRCODE,',
'               c031 EXCGRATE,',
'               c032 MSLCAMNT,',
'               c033 REFNUMBR,',
'               c034 REFNDATE,',
'               c035 REMARKSS,',
'               c036 COSTCODE,',
'               c037 WARECODE,',
'               c038 POSTFLAG,',
'               c039 PRNTFLAG,',
'               c040 PRICFLAG,',
'               c041 STATUSCD,',
'               c042 BATCHNUM,',
'               c043 COLORCDE,',
'               c044 COSTRATE,',
'               c045 BOM_NO,',
'               c046 SRCWRECD,',
'               to_number(c047) ISSQTY,',
'               c048 BATCH_QTY,',
'               c049 STOCK',
'          FROM apex_collections',
'         WHERE collection_name = ''ORDER_ITEMS_DTL''',
'         order by sl)',
'loop',
'BEGIN',
'   dpr_batch_wise_issue (P_COMPCODE =>  :COMPCODE,',
'                         p_docttype =>  :DOCTTYPE,',
'                         p_subttype =>  :SUBTTYPE,',
'                         p_docnumbr =>  :P1002500419_NEWDOCNUMBR,',
'                         p_doctdate =>  v_DOCTDATE,',
'                         p_serlnumb =>  i.SL,',
'                         p_raisedby =>  :APP_USER,',
'                         p_reqddate =>  SYSDATE,',
'                         p_commcode =>  i.COMMCODE,',
'                         p_itemcode =>  i.ITEMCODE,',
'                         p_itemtype =>  i.ITEMTYPE,',
'                         p_itemdesc =>  i.ITEMDESC,             ',
'                         p_itemlong =>  i.ITEMDESC,',
'                         p_itemrate =>  i.ITEMRATE,',
'                         p_salerate =>  i.SALERATE,',
'                         p_huomcode =>  i.HUOMCODE,',
'                         p_luomcode =>  i.luomcode,',
'                         p_orgnqnty =>  to_number(i.ISSQTY),',
'                         p_apprqnty =>  to_number(i.ISSQTY),',
'                         p_msfcamnt =>  i.msfcamnt,',
'                         p_currcode =>  i.currcode,',
'                         p_excgrate =>  1,',
'                         p_mslcamnt =>  i.mslcamnt,',
'                         p_refndate =>  sysdate,',
'                         p_updoctyp =>  v_S_PRDTYP,',
'                         p_upsubtyp =>  v_S_PRSTYP,',
'                         p_updocnum =>  v_DOCNUMBR,',
'                         p_updocdte =>  v_DOCTDATE,',
'                         p_remarkss =>  i.REMARKSS,',
'                         p_costcode =>  :P417_SRCSTCDE,',
'                         p_warecode =>  :P417_SRCWRECD,',
'                         p_statuscd =>  :P1002500419_STATUSCD, --''NEW'',',
'                         p_oprstamp =>  :APP_USER,',
'                         p_batchnum =>  i.BATCHNUM,',
'                         p_costrate =>  i.costrate,',
'                         p_issqty   =>  to_number(i.ISSQTY),',
'                         p_srcwrecd =>  :P417_WARECODE,',
'                         p_sndpersn =>  NULL,',
'                         p_srccmpcd =>  NULL,',
'                         --p_saleperc => to_number(i.SPCLRATE),',
'                         --p_minsrate => to_number(i.MINSRATE),',
'                         p_TIMSTAMP => SYSDATE,',
'                         p_mrdocnumbr => :P1002500419_MRDOCNUMBR,',
'                         p_bom_no   =>  i.bom_no',
'                         );                    ',
'END;',
'',
'UPDATE nmstkrec',
'   SET TRNSQNTY = NVL (TRNSQNTY,0) + NVL ( to_number(i.ISSQTY), 0),',
'       DWDOCTYP = :DOCTTYPE,',
'       DWSUBTYP = :SUBTTYPE,',
'       DWDOCNUM = :P1002500419_NEWDOCNUMBR,',
'       DWDOCDTE = v_DOCTDATE,',
'       DWDOCSRL = i.SERLNUMB',
' WHERE COMPCODE = :COMPCODE',
'   AND DOCNUMBR = v_DOCNUMBR',
'   AND TRUNC(DOCTDATE) = v_PRVDDT',
'   AND WARECODE = :P417_WARECODE',
'   AND DOCTTYPE = v_S_PRDTYP ',
'   AND SUBTTYPE = v_S_PRSTYP',
'   AND ITEMCODE = i.ITEMCODE; ',
'   ',
'end loop;',
'    ',
'if apex_collection.collection_exists(''DOC_INFO'') then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;',
'',
'if apex_collection.collection_exists(''BATCH_DISTRIBUTION'') then',
'   apex_collection.delete_collection(p_collection_name => ''BATCH_DISTRIBUTION'');',
'end if;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS_DTL'') then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS_DTL'');',
'end if;',
'',
'exception',
'    when no_data_found then',
'    raise_application_error(-20001,''No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''Too many rows found'');',
'    when others then',
'    raise_application_error(-20001, ''Place Order ''||sqlcode||'' ''||sqlerrm);',
'end;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'&PROGDESC. generate successfully<br>Document No. : &P1002500419_MRDOCNUMBR. Issue NO. : &P1002500419_NEWDOCNUMBR.'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34772683767966045)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'check order item'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number := 0;',
'begin    ',
'    select count(*)',
'    into v_count',
'    from apex_collections',
'    where collection_name = ''ORDER_ITEMS_DTL'';',
'',
'    if v_count < 1 then',
'       raise_application_error(-20100, ''No Item(s) selected for Stock Issue!'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34771496369966043)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'docnumber generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
'',
'docnumber_generation(:COMPCODE, ''NM'', :DOCTTYPE,',
'                     :SUBTTYPE, :P1002500419_DOCTDATE, :P1002500419_SRCWRECD,',
'                     ''NM'', newno); ',
':P1002500419_NEWDOCNUMBR:= newno;  ',
'',
'docnumber_generation(:COMPCODE, ''NM'', ''MR'',',
'                     11, :P1002500419_DOCTDATE, :P1002500419_SRCWRECD,',
'                     ''NM'', docnum); ',
':P1002500419_MRDOCNUMBR:= docnum;  ',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found ''||SQLERRM);',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found ''||SQLERRM);',
'when others then',
'raise_application_error(-20001,''Docnumber Generation Others Problem! ''||SQLERRM);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34773003007966046)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE-INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'PKG_APPROVAL.PRC_CHK_APPRNEED (:COMPCODE,',
'                               :DOCTTYPE,',
'                               :SUBTTYPE,',
'                               :P1002500419_STATUSCD);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34772211646966045)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_invmthd char(1);',
'BEGIN',
'',
'BEGIN',
'   SELECT NVL (invmthd, ''N'')',
'     INTO v_invmthd',
'     FROM syparmas',
'    WHERE cacmpcde = :compcode;',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      v_invmthd := ''N'';',
'END;',
'',
'IF v_invmthd = ''N'' THEN',
'',
'    BEGIN',
'    SELECT WIZ_P1, WIZ_P3',
'      INTO :P1002500419_NEXTPAGE, :BATCH_PAGE --:P1002500419_PREVPAGE',
'      FROM symenmas',
'     WHERE PROGNAME = :PROGNAME;',
'    EXCEPTION ',
'       WHEN OTHERS THEN',
'       RAISE_APPLICATION_ERROR(-20001, ''NEXT AND PREV PAGE ''||SQLCODE||'' ''||SQLERRM);',
'    END;  ',
'',
'ELSE',
'    BEGIN',
'    SELECT WIZ_P1, WIZ_P5',
'      INTO :P1002500419_NEXTPAGE, :BATCH_PAGE --:P1002500419_PREVPAGE',
'      FROM symenmas',
'     WHERE PROGNAME = :PROGNAME;',
'    EXCEPTION ',
'       WHEN OTHERS THEN',
'       RAISE_APPLICATION_ERROR(-20001, ''NEXT AND PREV PAGE ''||SQLCODE||'' ''||SQLERRM);',
'    END;  ',
'END IF;',
':P1002500419_PREVPAGE := :BATCH_PAGE;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
