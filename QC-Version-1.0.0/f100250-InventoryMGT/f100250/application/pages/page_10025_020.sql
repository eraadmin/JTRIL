prompt --application/pages/page_10025_020
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
 p_id=>1002500425
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Stock Receive (Purchase) Department Wise'
,p_page_mode=>'MODAL'
,p_step_title=>'Stock Receive (Purchase) Department Wise'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201103192606'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(178342171902139749)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(49856637893248098)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73014887612893717)
,p_plug_name=>'Other Cost'
,p_parent_plug_id=>wwv_flow_api.id(178342171902139749)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'OTHERCOST_PAGE'
,p_plug_display_when_cond2=>'0'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(72762542439206810)
,p_name=>'Other Cost'
,p_parent_plug_id=>wwv_flow_api.id(73014887612893717)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id sl,',
'         c001 TEXTSERL,',
'         c002 TEXTCODE,',
'         c003 TEXTLINE,',
'         c004 TEXTAMNT,        ',
'         c005 REFDOCNO,',
'         c006 DOCTTYPE,',
'         c007 SUBTTYPE,',
'         c008 DOCNUMBR,',
'         c009 DOCTDATE',
' FROM apex_collections',
'WHERE collection_name = ''OTHER_COST'';'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49756912946418481)
,p_query_column_id=>1
,p_column_alias=>'SL'
,p_column_display_sequence=>1
,p_column_heading=>'Sl#'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49757332092418481)
,p_query_column_id=>2
,p_column_alias=>'TEXTSERL'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49757755312418481)
,p_query_column_id=>3
,p_column_alias=>'TEXTCODE'
,p_column_display_sequence=>3
,p_column_heading=>'Cost Head'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT nmcoddes, nmsofcde',
'    FROM nmcodmas',
'   WHERE compcode = ''999'' ',
'     AND modlcode = ''NM'' ',
'     AND nmhrdcde = ''TMC''',
'ORDER BY nmsofcde'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49758133816418487)
,p_query_column_id=>4
,p_column_alias=>'TEXTLINE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49758514654418487)
,p_query_column_id=>5
,p_column_alias=>'TEXTAMNT'
,p_column_display_sequence=>5
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49758953694418487)
,p_query_column_id=>6
,p_column_alias=>'REFDOCNO'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49759322209418489)
,p_query_column_id=>7
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49759771956418489)
,p_query_column_id=>8
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49760144716418489)
,p_query_column_id=>9
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49760434942418489)
,p_query_column_id=>10
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(221049355993914668)
,p_plug_name=>'Stock Receipt'
,p_parent_plug_id=>wwv_flow_api.id(178342171902139749)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--slimPadding'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(116283606579579915)
,p_name=>'Stock Receipt'
,p_parent_plug_id=>wwv_flow_api.id(221049355993914668)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id sl,',
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
'       c018 DISCPCNT,',
'       c019 DISCAMNT,',
'       c020 SPLDISPC,',
'       c021 SPLDISNT,',
'       c022 SALERATE,',
'       c023 HUOMCODE,',
'       c024 FACTRVAL,',
'       c025 LUOMCODE,',
'       c026 ORGNQNTY,',
'       c027 DIS_ORGNQNTY,',
'       c028 APPRQNTY,',
'       c029 TRNSQNTY,',
'       c030 POQTY,',
'       c031 RCVQTY,',
'       c032 MSFCAMNT,',
'       c033 CURRCODE,',
'       c034 EXCGRATE,',
'       c035 MSLCAMNT,',
'       c036 REFNUMBR,',
'       c037 REFNDATE,',
'       c038 UPDOCTYP,',
'       c039 UPSUBTYP,',
'       c040 UPDOCNUM,',
'       c041 UPDOCDTE,',
'       c042 UPDOCSRL,',
'       c043 REMARKSS,',
'       c044 COSTCODE,',
'       c045 WARECODE,',
'       c046 POSTFLAG,',
'       c047 PRNTFLAG,',
'       c048 PRICFLAG,',
'       c049 STATUSCD,',
'       c050 COSTRATE ',
'     FROM apex_collections',
'    WHERE collection_name = ''ORDER_ITEMS'';'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49761492544418492)
,p_query_column_id=>1
,p_column_alias=>'SL'
,p_column_display_sequence=>1
,p_column_heading=>'Sl#'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49761898217418492)
,p_query_column_id=>2
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49762289818418492)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49762625882418496)
,p_query_column_id=>4
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49763079189418498)
,p_query_column_id=>5
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49763444940418498)
,p_query_column_id=>6
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49763885717418500)
,p_query_column_id=>7
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49764279242418500)
,p_query_column_id=>8
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49764671961418500)
,p_query_column_id=>9
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49765075170418500)
,p_query_column_id=>10
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49765489439418501)
,p_query_column_id=>11
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49765866309418501)
,p_query_column_id=>12
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49766208811418501)
,p_query_column_id=>13
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49766658341418501)
,p_query_column_id=>14
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>14
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49767068579418501)
,p_query_column_id=>15
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>25
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49767497195418501)
,p_query_column_id=>16
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>15
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49767836218418501)
,p_query_column_id=>17
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>26
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49768296483418501)
,p_query_column_id=>18
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>17
,p_column_heading=>'Item Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49768624375418503)
,p_query_column_id=>19
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49769010062418503)
,p_query_column_id=>20
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49769405993418503)
,p_query_column_id=>21
,p_column_alias=>'SPLDISPC'
,p_column_display_sequence=>29
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49769865317418503)
,p_query_column_id=>22
,p_column_alias=>'SPLDISNT'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49770289425418503)
,p_query_column_id=>23
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>21
,p_column_heading=>'Sale Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49770645265418503)
,p_query_column_id=>24
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>31
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49771008301418503)
,p_query_column_id=>25
,p_column_alias=>'FACTRVAL'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49771426549418503)
,p_query_column_id=>26
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>16
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49771838246418503)
,p_query_column_id=>27
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>33
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49772293218418503)
,p_query_column_id=>28
,p_column_alias=>'DIS_ORGNQNTY'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49772693084418503)
,p_query_column_id=>29
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>35
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49773010155418504)
,p_query_column_id=>30
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>36
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49773459127418504)
,p_query_column_id=>31
,p_column_alias=>'POQTY'
,p_column_display_sequence=>18
,p_column_heading=>'PO Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49773879218418504)
,p_query_column_id=>32
,p_column_alias=>'RCVQTY'
,p_column_display_sequence=>19
,p_column_heading=>'Rcv. Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49774202344418504)
,p_query_column_id=>33
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>22
,p_column_heading=>'FC Amount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49774614845418504)
,p_query_column_id=>34
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>37
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49775084210418504)
,p_query_column_id=>35
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>38
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49775453771418504)
,p_query_column_id=>36
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>23
,p_column_heading=>'LC Amount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49775819796418504)
,p_query_column_id=>37
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>39
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49776234021418504)
,p_query_column_id=>38
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49776613319418504)
,p_query_column_id=>39
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>41
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49777048918418504)
,p_query_column_id=>40
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>42
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49777425382418504)
,p_query_column_id=>41
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>43
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49777861558418506)
,p_query_column_id=>42
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>44
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49778210214418506)
,p_query_column_id=>43
,p_column_alias=>'UPDOCSRL'
,p_column_display_sequence=>45
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49778642561418506)
,p_query_column_id=>44
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>24
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49779038405418506)
,p_query_column_id=>45
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>46
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49779494757418506)
,p_query_column_id=>46
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>47
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49779823055418506)
,p_query_column_id=>47
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>48
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49780264141418506)
,p_query_column_id=>48
,p_column_alias=>'PRNTFLAG'
,p_column_display_sequence=>49
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49780647179418506)
,p_query_column_id=>49
,p_column_alias=>'PRICFLAG'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49781021673418506)
,p_query_column_id=>50
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>51
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49781445057418506)
,p_query_column_id=>51
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>20
,p_column_heading=>'Cost Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(224982524714597848)
,p_plug_name=>'Document Information'
,p_parent_plug_id=>wwv_flow_api.id(178342171902139749)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49755142397418475)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(178342171902139749)
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
 p_id=>wwv_flow_api.id(49755508698418475)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(178342171902139749)
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
 p_id=>wwv_flow_api.id(49755931843418475)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(178342171902139749)
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
 p_id=>wwv_flow_api.id(49794486056418526)
,p_branch_name=>'Go To Page 1002500421'
,p_branch_action=>'f?p=&APP_ID.:&P1002500425_NEXTPAGE.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'PLACE_ORDER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(49794043407418523)
,p_branch_name=>'Go To Page 424'
,p_branch_action=>'f?p=&APP_ID.:&P1002500425_PREVPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(49755931843418475)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49782185186418509)
,p_name=>'P1002500425_PODCNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(224982524714597848)
,p_prompt=>'PR No.'
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
 p_id=>wwv_flow_api.id(49782588528418510)
,p_name=>'P1002500425_PODCDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(224982524714597848)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49782901191418512)
,p_name=>'P1002500425_DOCNUMBR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(224982524714597848)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49783330560418512)
,p_name=>'P1002500425_TRNDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(224982524714597848)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49783736959418514)
,p_name=>'P1002500425_WARECODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(224982524714597848)
,p_prompt=>'Warehouse'
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
,p_grid_column=>3
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
 p_id=>wwv_flow_api.id(49784130324418514)
,p_name=>'P1002500425_COSTCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(224982524714597848)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49784531206418514)
,p_name=>'P1002500425_SUPPLIERCDE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(224982524714597848)
,p_prompt=>'Supplier'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    a.partycde||'' - ''||a.prtyname, a.partycde',
'    FROM sycompty a',
'   WHERE a.compcode = :compcode '))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>8
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
 p_id=>wwv_flow_api.id(49784961224418514)
,p_name=>'P1002500425_BATCHNO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(224982524714597848)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49785383763418514)
,p_name=>'P1002500425_PREVPAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(224982524714597848)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49785733560418515)
,p_name=>'P1002500425_NEXTPAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(224982524714597848)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49786156868418515)
,p_name=>'P1002500425_TRANTYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(224982524714597848)
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49786580503418515)
,p_name=>'P1002500425_SUBTTYPE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(224982524714597848)
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49786941761418515)
,p_name=>'P1002500425_PRDOCTYP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(224982524714597848)
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
 p_id=>wwv_flow_api.id(49787366274418515)
,p_name=>'P1002500425_PRSUBTYP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(224982524714597848)
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49792084500418523)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(49755142397418475)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49792584437418523)
,p_event_id=>wwv_flow_api.id(49792084500418523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49793041291418523)
,p_event_id=>wwv_flow_api.id(49792084500418523)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;',
'',
'if apex_collection.collection_exists(''OTHER_COST'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''OTHER_COST'');',
'end if;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49793549112418523)
,p_event_id=>wwv_flow_api.id(49792084500418523)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49787778143418517)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Previous Page Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT c001 TRNDATE,',
'          c004 PODCNO,   ',
'          c005 PODCDATE,',
'          c013 SUPPLIERNAME,',
'          c008 WARECODE,',
'          c010 BATCHNO,',
'          c018 COSTCODE',
'     INTO :P1002500425_TRNDATE, :P1002500425_PODCNO, :P1002500425_PODCDATE, :P1002500425_SUPPLIERCDE, :P1002500425_WARECODE, :P1002500425_BATCHNO, :P1002500425_COSTCODE',
'     FROM apex_collections',
'    WHERE collection_name = ''DOC_INFO'';',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      raise_application_error (-20001, SQLCODE || '' '' || SQLERRM);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49788589557418518)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Place Order'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_TRNDATE      varchar2(500);',
'    v_RCVNUMBR     varchar2(500);',
'    v_RCVDATE      varchar2(500);',
'    v_PODCNO       varchar2(500);',
'    v_PODCDATE     varchar2(500);',
'    v_REFNUMBR     varchar2(500);',
'    v_REFNDATE     varchar2(500);',
'    v_WARECODE     varchar2(500);',
'    v_WHSNAM       varchar2(500);',
'    v_BATCHNO      varchar2(500);',
'    v_BATCHDATE    varchar2(500);',
'    v_BTCHEXPDAT   varchar2(500);',
'    v_SUPPLIERCDE  varchar2(500);',
'    v_SUPPLIERNAME varchar2(500);',
'    v_CURRENCY     varchar2(500);',
'    v_EXCHANGERATE varchar2(500);',
'    v_REQDDAT      varchar2(500);',
'	v_COSTCODE	   varchar2(500);',
'',
'begin',
'',
'begin',
'SELECT  c001 TRNDATE,  ',
'        c002 RCVNUMBR,',
'        c003 RCVDATE,',
'        c004 PODCNO,',
'        c005 PODCDATE,',
'        c006 REFNUMBR,',
'        c007 REFNDATE,',
'        c008 WARECODE,',
'        c009 WHSNAM,',
'        c010 BATCHNO,',
'        c011 BATCHDATE,',
'        c012 BTCHEXPDAT,',
'        c013 SUPPLIERCDE,',
'        c014 SUPPLIERNAME,',
'        c015 CURRENCY,',
'        c016 EXCHANGERATE,',
'        c017 REQDDAT,',
'		c018 COSTCODE		',
'',
'     INTO   v_TRNDATE,',
'            v_RCVNUMBR,',
'            v_RCVDATE,',
'            v_PODCNO,',
'            v_PODCDATE,',
'            v_REFNUMBR,',
'            v_REFNDATE,',
'            v_WARECODE,',
'            v_WHSNAM,',
'            v_BATCHNO,',
'            v_BATCHDATE,',
'            v_BTCHEXPDAT,',
'            v_SUPPLIERCDE,',
'            v_SUPPLIERNAME,',
'            v_CURRENCY,',
'            v_EXCHANGERATE,',
'            v_REQDDAT,',
'			v_COSTCODE',
'     FROM apex_collections',
'    WHERE collection_name = ''DOC_INFO'';',
'end;',
'',
'begin',
'    -- Loop through the ORDER collection and insert rows into the Order Line Item table',
'    for i in',
'    (   select seq_id sl,',
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
'               c018 DISCPCNT,',
'               c019 DISCAMNT,',
'               c020 SPLDISPC,',
'               c021 SPLDISNT,',
'               c022 SALERATE,',
'               c023 HUOMCODE,',
'               c024 FACTRVAL,',
'               c025 LUOMCODE,',
'               c026 ORGNQNTY,',
'               c027 DIS_ORGNQNTY,',
'               c028 APPRQNTY,',
'               c029 TRNSQNTY,',
'               c030 POQTY,',
'               c031 RCVQTY,',
'               c032 MSFCAMNT,',
'               c033 CURRCODE,',
'               c034 EXCGRATE,',
'               c035 MSLCAMNT,',
'               c036 REFNUMBR,',
'               c037 REFNDATE,',
'               c038 UPDOCTYP,',
'               c039 UPSUBTYP,',
'               c040 UPDOCNUM,',
'               c041 UPDOCDTE,',
'               c042 UPDOCSRL,',
'               c043 REMARKSS,',
'               c044 COSTCODE,',
'               c045 WARECODE,',
'               c046 POSTFLAG,',
'               c047 PRNTFLAG,',
'               c048 PRICFLAG,',
'               c049 STATUSCD,',
'               c050 COSTRATE ',
'         FROM apex_collections',
'        WHERE collection_name = ''ORDER_ITEMS''',
'     ORDER BY sl)',
'',
'loop',
'    dpr_insert_nmstkrec (',
'       P_COMPCODE        => :COMPCODE,',
'       P_DOCTTYPE        => :DOCTTYPE,',
'       P_SUBTTYPE        => :SUBTTYPE,',
'       P_DOCNUMBR        => :P1002500425_DOCNUMBR,',
'       P_DOCTDATE        => v_TRNDATE,',
'       P_SERLNUMB        => i.SL,',
'       P_PARTYCDE        => v_SUPPLIERCDE,',
'       P_RAISEDBY        => :APP_USER,',
'       P_APPRVDBY        => i.APPRVDBY,',
'       P_APPRDATE        => i.APPRDATE,',
'       P_REQDDATE        => v_REQDDAT,',
'       P_COMMCODE        => i.COMMCODE,',
'       P_ITEMCODE        => i.ITEMCODE,',
'       P_ITEMTYPE        => NVL(i.ITEMTYPE,''S''),',
'       P_MCSERIAL        => NULL,',
'       P_CMSERIAL        => NULL,',
'       P_ITEMDESC        => i.ITEMDESC,',
'       P_ITEMLONG        => i.ITEMDESC,',
'       P_ITEMRATE        => i.ITEMRATE,',
'       P_DISCPCNT        => i.DISCPCNT,',
'       P_DISCAMNT        => i.DISCAMNT,',
'       P_SPLDISPC        => i.SPLDISPC,',
'       P_SPLDISNT        => i.SPLDISNT,',
'       P_SALERATE        => i.SALERATE,',
'       P_HUOMCODE        => NVL(i.HUOMCODE,i.LUOMCODE),',
'       P_FACTRVAL        => i.FACTRVAL,',
'       P_LUOMCODE        => NVL(i.LUOMCODE,i.HUOMCODE),',
'       P_ORGNQNTY        => i.RCVQTY,',
'       P_APPRQNTY        => i.RCVQTY,',
'       P_TRNSQNTY        => NULL,',
'       P_TRNSQTY2        => NULL,',
'       P_MSFCAMNT        => i.MSFCAMNT,',
'       P_CURRCODE        => v_CURRENCY, --NVL (:CURRCODE, :P106_CURRENCY),',
'       P_EXCGRATE        => NVL(i.EXCGRATE,v_EXCHANGERATE), --NVL (:EXCGRATE, :P106_EXCHANGERATE),',
'       P_MSLCAMNT        => i.MSLCAMNT,',
'       P_ADJAMTLC        => i.MSLCAMNT,',
'       P_REFNUMBR        => v_REFNUMBR,',
'       P_REFNDATE        => v_REFNDATE,',
'       P_UPDOCTYP        => i.DOCTTYPE, --:P1002500425_S_PRDTYP,',
'       P_UPSUBTYP        => i.SUBTTYPE, --:P1002500425_S_PRSTYP,',
'       P_UPDOCNUM        => v_PODCNO,',
'       P_UPDOCDTE        => v_PODCDATE,',
'       P_UPDOCSRL        => i.SERLNUMB, --i.SL,',
'       P_DWDOCTYP        => NULL,',
'       P_DWSUBTYP        => NULL,',
'       P_DWDOCNUM        => NULL,',
'       P_DWDOCDTE        => NULL,',
'       P_DWDOCSRL        => NULL,',
'       P_ACDOCTYP        => NULL,',
'       P_ACSUBTYP        => NULL,',
'       P_ACDOCNUM        => NULL,',
'       P_ACDOCDTE        => NULL,',
'       P_ACDOCSRL        => NULL,',
'       P_REMARKSS        => i.REMARKSS,',
'       P_COSTCODE        => i.COSTCODE, --v_COSTCODE,',
'       P_WARECODE        => i.WARECODE, --v_WARECODE,',
'       P_POSTFLAG        => i.POSTFLAG,',
'       P_PRNTFLAG        => i.PRNTFLAG,',
'       P_PRICFLAG        => i.PRICFLAG,',
'       P_PRINTCNT        => NULL,',
'       P_BALNFLAG        => NULL,',
'       P_RATVFLAG        => NULL,',
'       P_STATUSCD        => i.STATUSCD,',
'       P_TCSTPCNT        => NULL,',
'       P_DIVNCODE        => NULL,',
'       P_TECHNICN        => NULL,',
'       P_ENGINEER        => NULL,',
'       P_AMENDSRL        => NULL,',
'       P_MATLTYPE        => NULL,',
'       P_BOQREFER        => NULL,',
'       P_MFRGDATE        => NULL,',
'       P_MFRGTIME        => NULL,',
'       P_PARNTITM        => NULL,',
'       P_INDTFLAG        => NULL,',
'       P_OPRSTAMP        => :APP_USER,',
'       P_TIMSTAMP        => SYSDATE,',
'       P_BATCHNUM        => :P1002500425_BATCHNO,',
'       P_BATCHEXP        => v_BTCHEXPDAT,',
'       P_BATCHDTE        => NVL(v_BATCHDATE,SYSDATE),',
'       P_NORMRATE        => NULL,',
'       P_SRVCTRCN        => NULL,',
'       P_DGNITMFK        => NULL,',
'       P_STKRCFK1        => NULL,',
'       P_COSTRATE        => i.COSTRATE,',
'       P_AVRGRATE        => NULL,',
'       P_SERIALST        => NULL,',
'       P_SERIALEN        => NULL,',
'       P_BOM_NO          => NULL,',
'       P_COLORCDE        => NULL,',
'       P_SRCWRECD        => NULL,',
'       P_SNDPERSN        => NULL,',
'       P_INVNUMFK        => NULL,',
'       P_SRCCMPCD        => i.COMPCODE,',
'       P_SPCLRATE        => NULL,',
'       P_LOSTSALE        => NULL,',
'       P_NEGITMFK        => NULL,',
'       P_COUNT           => NULL,',
'       P_ENGINE_NO       => NULL,',
'       P_SALEPERC        => NULL,',
'       P_BILLPARTY       => NULL,',
'       P_LSTPURRT        => NULL,',
'       P_LSTPURDT        => NULL,',
'       P_WGTUOMCD        => NULL,',
'       P_WGHTQNTY        => NULL,',
'       P_MODIFYDT        => NULL,',
'       P_DEFECTQT        => NULL,',
'       P_MINSRATE        => NULL,',
'       P_NEW_COSTRATE    => NULL,',
'       P_SRC_BATCHNUM    => NULL,',
'       P_REFITEM         => NULL',
'       );',
'                     ',
'    UPDATE nmprocur',
'       SET trnsqnty = nvl(trnsqnty,0) + i.RCVQTY, --:TRNSQNTY,',
'           DWDOCTYP = :DOCTTYPE,',
'           DWSUBTYP = :SUBTTYPE,',
'           DWDOCNUM = :P1002500425_DOCNUMBR,',
'           DWDOCDTE = v_TRNDATE,',
'           DWDOCSRL = i.sl,',
'           COSTRATE = i.COSTRATE,',
'           SALERATE = i.SALERATE,',
'           ITEMRATP = i.COSTRATE,',
'           ITRFDATE = v_TRNDATE',
'     WHERE docnumbr = :P1002500425_PODCNO ',
'	   AND trunc(DOCTDATE) = v_PODCDATE',
'   	   AND WARECODE = i.warecode',
'   	   AND DOCTTYPE = :P1002500425_PRDOCTYP ',
'   	   AND SUBTTYPE = :P1002500425_PRSUBTYP',
'       AND itemcode = i.ITEMCODE;      ',
'',
'    end loop;',
'       ',
'-- Truncate the collection after the order has been placed     ',
'if apex_collection.collection_exists(p_collection_name => ''DOC_INFO'') = true then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;  ',
'',
'if apex_collection.collection_exists(p_collection_name => ''ORDER_ITEMS'') = true then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;',
'',
'exception',
'    when no_data_found then',
'    raise_application_error(-20001,''No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''Too many rows found'');',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'end;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
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
 p_id=>wwv_flow_api.id(49788930983418520)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert nmtxtprt for other cost'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''OTHER_COST'') = TRUE then',
'begin',
'    for i in (  select seq_id sl,',
'                         c001 TEXTSERL,',
'                         c002 TEXTCODE,',
'                         c003 TEXTLINE,',
'                         c004 TEXTAMNT,        ',
'                         c005 REFDOCNO,',
'                         c006 DOCTTYPE,',
'                         c007 SUBTTYPE,',
'                         c008 DOCNUMBR,',
'                         c009 DOCTDATE',
'                 FROM apex_collections',
'                WHERE collection_name = ''OTHER_COST'')',
'    loop                ',
'        insert into nmtxtprt ',
'            (COMPCODE, SERLNUMB, TEXTSERL, TEXTCODE, ',
'             TEXTLINE, TEXTAMNT, DOCNUMBR, ',
'             DOCTTYPE, SUBTTYPE, REFDOCNO, REFDCDTE,',
'             DOCTDATE, COSTCODE, OPRSTAMP)',
'        values ',
'            (:COMPCODE, i.sl, i.sl, i.TEXTCODE, ',
'             i.TEXTLINE, i.TEXTAMNT, :P1002500425_DOCNUMBR, ',
'             :DOCTTYPE, :SUBTTYPE, :P1002500425_PODCNO, :P1002500425_PODCDATE,',
'             :P1002500425_TRNDATE, :P1002500425_COSTCODE, :APP_USER);',
'    end loop;',
'',
'-- Truncate the collection after the order has been placed ',
'if apex_collection.collection_exists(p_collection_name => ''OTHER_COST'') = true then',
'   apex_collection.truncate_collection(p_collection_name => ''OTHER_COST'');',
'end if; ',
'',
'exception',
'    when no_data_found then',
'    raise_application_error(-20001,''No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''Too many rows found'');',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'end;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49789767228418521)
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
'    where collection_name = ''ORDER_ITEMS'';',
'',
'    if v_count < 1 then',
'       raise_application_error(-20001, ''No Item Found for Receive!'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49788190557418517)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'docnumber generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'docnum varchar2(20);',
'btcnum varchar2(20):=''SYS00000'';',
'begin',
'',
'begin',
'docnumber_generation(:COMPCODE, ''NM'', :P1002500425_TRANTYPE,',
'                     :P1002500425_SUBTTYPE, :P1002500425_TRNDATE, :P1002500425_WARECODE, --to_date(:P1002500425_TRNDATE,''dd-mon-yyyy'') to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY'')',
'                     ''NM'', docnum);',
'                    ',
':P1002500425_DOCNUMBR := docnum; ',
'exception ',
'when others then',
'raise_application_error(-20001,''docnumber generate-doc ''||sqlcode||'' ''||sqlerrm); ',
'end;',
'',
'',
'if :P1002500425_BATCHNO is null then    ',
'begin',
'    docnumber_generation(:COMPCODE, ''NM'', ''BT'',',
'                         1, :P1002500425_TRNDATE, :P1002500425_WARECODE,',
'                         ''NM'', btcnum);  ',
'',
'                         ',
'    :P1002500425_BATCHNO := btcnum;',
'exception ',
'when others then',
'raise_application_error(-20001,''docnumber generate-batch ''||sqlcode||'' ''||sqlerrm);',
'end;',
'    ',
'end if;   ',
'',
'',
'',
'exception',
'    when no_data_found then',
'    raise_application_error(-20001,''No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''Too many rows found'');',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Record generate successfully<br>Requisition No. : &P1002500425_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49789383420418520)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :OTHERCOST_PAGE = 0 THEN',
'  BEGIN',
'    SELECT WIZ_P1, WIZ_P4',
'      INTO :P1002500425_NEXTPAGE, :P1002500425_PREVPAGE',
'      FROM symenmas',
'     WHERE PROGNAME = :PROGNAME;',
'       EXCEPTION ',
'       WHEN OTHERS THEN',
'       RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'  END;    ',
'ELSE',
'  BEGIN',
'    SELECT WIZ_P1, WIZ_P3',
'      INTO :P1002500425_NEXTPAGE, :P1002500425_PREVPAGE',
'      FROM symenmas',
'     WHERE PROGNAME = :PROGNAME;',
'       EXCEPTION ',
'       WHEN OTHERS THEN',
'       RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'  END; ',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
