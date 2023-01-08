prompt --application/pages/page_00469
begin
--   Manifest
--     PAGE: 00469
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
 p_id=>469
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Confirmation'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20221010225504'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(482202611702702022)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(524909795794476941)
,p_plug_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(482202611702702022)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(528846496100161430)
,p_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(524909795794476941)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select seq_id sl,',
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
'       c047 STATUSCD,',
'       c048 COSTRATE',
'     FROM apex_collections',
'    WHERE collection_name = ''ORDER_ITEMS''',
' ORDER BY sl',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161814810087832746)
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
 p_id=>wwv_flow_api.id(134139537902153624)
,p_query_column_id=>2
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>29
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134139687171153625)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134139709595153626)
,p_query_column_id=>4
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>31
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134139814749153627)
,p_query_column_id=>5
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134139963327153628)
,p_query_column_id=>6
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>33
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134140019962153629)
,p_query_column_id=>7
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161816758651832751)
,p_query_column_id=>8
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134140156587153630)
,p_query_column_id=>9
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>35
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134140209774153631)
,p_query_column_id=>10
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>36
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134140331188153632)
,p_query_column_id=>11
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>37
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134140440576153633)
,p_query_column_id=>12
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>38
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161817149036832751)
,p_query_column_id=>13
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>19
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161815156128832746)
,p_query_column_id=>14
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161815525660832750)
,p_query_column_id=>15
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161815918247832750)
,p_query_column_id=>16
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>3
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134140587090153634)
,p_query_column_id=>17
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>39
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161816363349832751)
,p_query_column_id=>18
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>5
,p_column_heading=>'Order Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161817587046832751)
,p_query_column_id=>19
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>7
,p_column_heading=>'Discount (%)'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161817971126832753)
,p_query_column_id=>20
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>8
,p_column_heading=>'Discount Amount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134140680525153635)
,p_query_column_id=>21
,p_column_alias=>'SPLDISPC'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134140785120153636)
,p_query_column_id=>22
,p_column_alias=>'SPLDISNT'
,p_column_display_sequence=>41
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161818336739832753)
,p_query_column_id=>23
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>10
,p_column_heading=>'Sale Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161818740676832753)
,p_query_column_id=>24
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>21
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134140856861153637)
,p_query_column_id=>25
,p_column_alias=>'FACTRVAL'
,p_column_display_sequence=>42
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161819137114832754)
,p_query_column_id=>26
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161819517159832754)
,p_query_column_id=>27
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134140922911153638)
,p_query_column_id=>28
,p_column_alias=>'DIS_ORGNQNTY'
,p_column_display_sequence=>43
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161819968404832754)
,p_query_column_id=>29
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161820334583832754)
,p_query_column_id=>30
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134141065071153639)
,p_query_column_id=>31
,p_column_alias=>'POQTY'
,p_column_display_sequence=>6
,p_column_heading=>'PO/Rcv. Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134141106584153640)
,p_query_column_id=>32
,p_column_alias=>'RCVQTY'
,p_column_display_sequence=>44
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161820764119832754)
,p_query_column_id=>33
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>11
,p_column_heading=>'FC Amount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161821164226832754)
,p_query_column_id=>34
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161821508788832756)
,p_query_column_id=>35
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>23
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161821910224832757)
,p_query_column_id=>36
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>12
,p_column_heading=>'LC Amount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161822399684832757)
,p_query_column_id=>37
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>24
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161822741985832757)
,p_query_column_id=>38
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>25
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134141258951153641)
,p_query_column_id=>39
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>45
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134141397605153642)
,p_query_column_id=>40
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>46
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134141480403153643)
,p_query_column_id=>41
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>47
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134141563964153644)
,p_query_column_id=>42
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>48
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134141673089153645)
,p_query_column_id=>43
,p_column_alias=>'UPDOCSRL'
,p_column_display_sequence=>49
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161825524382832760)
,p_query_column_id=>44
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>13
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161823183234832759)
,p_query_column_id=>45
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>26
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161823593323832759)
,p_query_column_id=>46
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161823952344832759)
,p_query_column_id=>47
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>14
,p_column_heading=>'Submit'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(7533453041907249696)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161824316450832760)
,p_query_column_id=>48
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161824723053832760)
,p_query_column_id=>49
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>9
,p_column_heading=>'Cost Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(528842964515160121)
,p_plug_name=>'doc info'
,p_parent_plug_id=>wwv_flow_api.id(482202611702702022)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(161813064929832739)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(482202611702702022)
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
 p_id=>wwv_flow_api.id(161813467530832740)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(482202611702702022)
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
 p_id=>wwv_flow_api.id(161813826220832740)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(482202611702702022)
,p_button_name=>'PREVIOUS'
,p_button_static_id=>'BACK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(161837803684832771)
,p_branch_name=>'Go To Page 466'
,p_branch_action=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49:P49_DOCNUMBR,P49_PROGNAME:&P469_RCDOC.,nmmrstrn&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'PLACE_ORDER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(161837497444832771)
,p_branch_name=>'Go To Page 467'
,p_branch_action=>'f?p=&APP_ID.:&P469_PREVPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(161813826220832740)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134141717383153646)
,p_name=>'P469_RCDOC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134141864748153647)
,p_name=>'P469_BATCHNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161826289901832760)
,p_name=>'P469_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_prompt=>'Business Unit'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'ORDER BY warecode'))
,p_cSize=>100
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
 p_id=>wwv_flow_api.id(161826611708832762)
,p_name=>'P469_SUPPLIERCDE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_prompt=>'Supplier'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PARTYLIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT a.partycde||'' - ''||a.prtyname D, a.partycde R',
'    FROM sycompty a',
'   WHERE a.compcode = :compcode '))
,p_cSize=>100
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(161827098235832762)
,p_name=>'P469_LPDOC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161827402470832764)
,p_name=>'P469_DOCNUMBR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161827859569832764)
,p_name=>'P469_DOCTDATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161828297210832764)
,p_name=>'P469_COSTCODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161828669497832764)
,p_name=>'P469_STATUSCD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161829003614832764)
,p_name=>'P469_PRDOCTYP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
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
 p_id=>wwv_flow_api.id(161829468079832764)
,p_name=>'P469_PRSUBTYP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
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
 p_id=>wwv_flow_api.id(161829880230832764)
,p_name=>'P469_TRNDATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161830240720832765)
,p_name=>'P469_POTYPE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161830632604832765)
,p_name=>'P469_POSTSTATUS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161831009218832765)
,p_name=>'P469_BILLPARTY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161831452794832765)
,p_name=>'P469_CURRENCY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161831827393832765)
,p_name=>'P469_EXCGRATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161832205873832765)
,p_name=>'P469_PREVPAGE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161832635483832765)
,p_name=>'P469_NEXTPAGE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(528842964515160121)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(161835456207832770)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(161813064929832739)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(161835901883832770)
,p_event_id=>wwv_flow_api.id(161835456207832770)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(161836423373832771)
,p_event_id=>wwv_flow_api.id(161835456207832770)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(161836931908832771)
,p_event_id=>wwv_flow_api.id(161835456207832770)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(161833035775832765)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Previous Page Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT c003 SUPPLIERCDE,',
'          c005 COSTCODE,',
'          c007 CURRENCY,',
'          c008 EXCGRATE,       ',
'          c009 POTYPE,',
'          c012 WARECODE,',
'		  c016 TRNDATE,',
'          c017 POSTSTATUS,',
'          c018 BILLPARTY',
'     INTO :P469_SUPPLIERCDE, :P469_COSTCODE, :P469_CURRENCY, :P469_EXCGRATE, :P469_POTYPE, :P469_WARECODE, :P469_TRNDATE, :P469_POSTSTATUS, :P469_BILLPARTY',
'     FROM apex_collections',
'    WHERE collection_name = ''DOC_INFO'';',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      raise_application_error (-20001, SQLCODE || '' '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(161834283660832768)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Place Order'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'               c047 STATUSCD,',
'               c048 COSTRATE',
'          FROM apex_collections',
'         WHERE collection_name = ''ORDER_ITEMS''',
'         ORDER BY sl)',
'loop',
'    INSERT INTO nmprocur (SERLNUMB,',
'                          ITEMCODE,',
'                          ITEMDESC,',
'                          LUOMCODE,',
'                          HUOMCODE,',
'                          LUOMDESC,',
'                          ITEMTYPE,',
'                          COSTRATE,',
'                          SALERATE,',
'                          COMMCODE,',
'                          ORGNQNTY,',
'                          APPRQNTY,',
'                          REMARKSS,',
'                          POSTFLAG,',
'                          ITEMRATE,',
'                          COMPCODE,',
'                          DOCTTYPE,',
'                          SUBTTYPE,',
'                          DOCTDATE,',
'                          PARTYCDE,',
'                          OPRSTAMP,',
'                          RAISEDBY,',
'                          REQDDATE,',
'                          ITEMLONG,',
'                          CURRCODE,',
'                          DISCAMNT,',
'                          MSLCAMNT,',
'                          MSFCAMNT,',
'                          EXCGRATE,',
'                          REFNDATE,',
'                          WARECODE,',
'                          COSTCODE,',
'                          STATUSCD,',
'                          PRICFLAG,',
'                          DOCNUMBR,',
'                          DWDOCTYP,',
'                          DWSUBTYP,',
'                          DWDOCNUM,',
'                          DWDOCDTE,',
'                          DWDOCSRL,',
'                          PROCTYPE,',
'                          BILLPARTY',
'                          )',
'',
'                  values (i.SL,',
'                          i.ITEMCODE, ',
'                          i.ITEMDESC, ',
'                          i.LUOMCODE,',
'                          i.HUOMCODE,',
'                          i.LUOMCODE,',
'                          i.ITEMTYPE,',
'                          i.COSTRATE,',
'                          i.SALERATE,',
'                          i.COMMCODE,',
'                          i.POQTY,',
'                          i.POQTY,                      ',
'                          i.REMARKSS,',
'                          i.POSTFLAG,',
'                          i.ITEMRATE,',
'                          :COMPCODE,',
'                          :P469_PRDOCTYP, --:DOCTTYPE,',
'                          :P469_PRSUBTYP, --:SUBTTYPE,                      ',
'                          :P469_TRNDATE,',
'                          :P469_SUPPLIERCDE,',
'                          :APP_USER,',
'                          :APP_USER,',
'                          sysdate,',
'                          i.ITEMDESC,',
'                          :P469_CURRENCY,',
'                          i.DISCAMNT,',
'                          i.MSLCAMNT,',
'                          i.MSFCAMNT,',
'                          :P469_EXCGRATE,',
'                          null,',
'                          :P469_WARECODE,',
'                          :P469_COSTCODE,',
'                          :P469_STATUSCD, --''NEW'',',
'                          ''N'',',
'                          :P469_LPDOC,',
'                          :DOCTTYPE,',
'                          :SUBTTYPE,',
'                          :P469_RCDOC,',
'                          :P469_TRNDATE,',
'                          i.SL,',
'                          :P469_POTYPE,',
'                          nvl(:P469_BILLPARTY,:P469_SUPPLIERCDE)',
'                         );',
'',
'     dpr_insert_nmstkrec (',
'           P_COMPCODE        => :COMPCODE,',
'           P_DOCTTYPE        => :DOCTTYPE,',
'           P_SUBTTYPE        => :SUBTTYPE,',
'           P_DOCNUMBR        => :P469_RCDOC,',
'           P_DOCTDATE        => :P469_TRNDATE,',
'           P_SERLNUMB        => i.SL,',
'           P_PARTYCDE        => :P469_SUPPLIERCDE,',
'           P_RAISEDBY        => :APP_USER,',
'           P_APPRVDBY        => i.APPRVDBY,',
'           P_APPRDATE        => i.APPRDATE,',
'           P_REQDDATE        => NULL, --v_REQDDAT,',
'           P_COMMCODE        => i.COMMCODE,',
'           P_ITEMCODE        => i.ITEMCODE,',
'           P_ITEMTYPE        => NVL(i.ITEMTYPE,''S''),',
'           P_MCSERIAL        => NULL,',
'           P_CMSERIAL        => NULL,',
'           P_ITEMDESC        => i.ITEMDESC,',
'           P_ITEMLONG        => i.ITEMDESC,',
'           P_ITEMRATE        => i.ITEMRATE,',
'           P_DISCPCNT        => i.DISCPCNT,',
'           P_DISCAMNT        => i.DISCAMNT,',
'           P_SPLDISPC        => i.SPLDISPC,',
'           P_SPLDISNT        => i.SPLDISNT,',
'           P_SALERATE        => i.SALERATE,',
'           P_HUOMCODE        => NVL(i.HUOMCODE,i.LUOMCODE),',
'           P_FACTRVAL        => i.FACTRVAL,',
'           P_LUOMCODE        => NVL(i.LUOMCODE,i.HUOMCODE),',
'           P_ORGNQNTY        => i.POQTY,',
'           P_APPRQNTY        => i.POQTY,',
'           P_TRNSQNTY        => NULL,',
'           P_TRNSQTY2        => NULL,',
'           P_MSFCAMNT        => i.MSFCAMNT,',
'           P_CURRCODE        => :P469_CURRENCY,',
'           P_EXCGRATE        => :P469_EXCGRATE, --NVL(i.EXCGRATE,v_EXCHANGERATE), --NVL (:EXCGRATE, :P106_EXCHANGERATE),',
'           P_MSLCAMNT        => i.MSLCAMNT,',
'           P_ADJAMTLC        => i.MSLCAMNT,',
'           P_REFNUMBR        => NULL, --v_REFNUMBR,',
'           P_REFNDATE        => NULL, --v_REFNDATE,',
'           P_UPDOCTYP        => :P469_PRDOCTYP,',
'           P_UPSUBTYP        => :P469_PRSUBTYP,',
'           P_UPDOCNUM        => :P469_LPDOC,',
'           P_UPDOCDTE        => :P469_TRNDATE,',
'           P_UPDOCSRL        => i.SL,',
'           P_DWDOCTYP        => NULL,',
'           P_DWSUBTYP        => NULL,',
'           P_DWDOCNUM        => NULL,',
'           P_DWDOCDTE        => NULL,',
'           P_DWDOCSRL        => NULL,',
'           P_ACDOCTYP        => NULL,',
'           P_ACSUBTYP        => NULL,',
'           P_ACDOCNUM        => NULL,',
'           P_ACDOCDTE        => NULL,',
'           P_ACDOCSRL        => NULL,',
'           P_REMARKSS        => i.REMARKSS,',
'           P_COSTCODE        => :P469_COSTCODE, --v_COSTCODE,',
'           P_WARECODE        => :P469_WARECODE, --v_WARECODE,',
'           P_POSTFLAG        => i.POSTFLAG,',
'           P_PRNTFLAG        => NULL, --i.PRNTFLAG,',
'           P_PRICFLAG        => NULL, --i.PRICFLAG,',
'           P_PRINTCNT        => NULL,',
'           P_BALNFLAG        => NULL,',
'           P_RATVFLAG        => NULL,',
'           P_STATUSCD        => :P469_STATUSCD,',
'           P_TCSTPCNT        => NULL,',
'           P_DIVNCODE        => NULL,',
'           P_TECHNICN        => NULL,',
'           P_ENGINEER        => NULL,',
'           P_AMENDSRL        => NULL,',
'           P_MATLTYPE        => NULL,',
'           P_BOQREFER        => NULL,',
'           P_MFRGDATE        => NULL,',
'           P_MFRGTIME        => NULL,',
'           P_PARNTITM        => NULL,',
'           P_INDTFLAG        => NULL,',
'           P_OPRSTAMP        => :APP_USER,',
'           P_TIMSTAMP        => SYSDATE,',
'           P_BATCHNUM        => :P469_BATCHNO,',
'           P_BATCHEXP        => NULL, --v_BTCHEXPDAT,',
'           P_BATCHDTE        => NULL, --NVL(v_BATCHDATE,SYSDATE),',
'           P_NORMRATE        => NULL,',
'           P_SRVCTRCN        => NULL,',
'           P_DGNITMFK        => NULL,',
'           P_STKRCFK1        => NULL,',
'           P_COSTRATE        => i.COSTRATE,',
'           P_AVRGRATE        => NULL,',
'           P_SERIALST        => NULL,',
'           P_SERIALEN        => NULL,',
'           P_BOM_NO          => NULL,',
'           P_COLORCDE        => NULL,',
'           P_SRCWRECD        => NULL,',
'           P_SNDPERSN        => NULL,',
'           P_INVNUMFK        => NULL,',
'           P_SRCCMPCD        => :compcode,',
'           P_SPCLRATE        => NULL,',
'           P_LOSTSALE        => NULL,',
'           P_NEGITMFK        => NULL,',
'           P_COUNT           => NULL,',
'           P_ENGINE_NO       => NULL,',
'           P_SALEPERC        => NULL,',
'           P_BILLPARTY       => NULL,',
'           P_LSTPURRT        => NULL,',
'           P_LSTPURDT        => NULL,',
'           P_WGTUOMCD        => NULL,',
'           P_WGHTQNTY        => NULL,',
'           P_MODIFYDT        => NULL,',
'           P_DEFECTQT        => NULL,',
'           P_MINSRATE        => NULL,',
'           P_NEW_COSTRATE    => NULL,',
'           P_SRC_BATCHNUM    => NULL,',
'           P_REFITEM         => NULL',
'           ); ',
'',
' end loop;',
'    ',
'-- Truncate the collection after the order has been placed ',
'if apex_collection.collection_exists(p_collection_name => ''DOC_INFO'') = true then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;  ',
'',
'if apex_collection.collection_exists(p_collection_name => ''ORDER_ITEMS'') = true then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;',
'',
'exception',
'',
'    when no_data_found then',
'    raise_application_error(-20001,''No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''Too many rows found'');',
'    when others then',
'    raise_application_error(-20001,''Place Order ''||sqlcode||'' ''||sqlerrm);',
'end;',
''))
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
 p_id=>wwv_flow_api.id(161835078914832770)
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
'       raise_application_error(-20001, ''No Item Selected for Requisition!'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(161833494051832767)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'docnumber generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    newno varchar2(20);',
'    docnum varchar2(500);',
'    btcnum varchar2(20):=''SYS00000'';',
'begin',
'',
'docnumber_generation(:COMPCODE, ''NM'', ''LP'',',
'                    :SUBTTYPE, :P469_TRNDATE,:P469_WARECODE,',
'                     ''NM'', newno); ',
':P469_LPDOC:= newno; ',
'',
'docnumber_generation(:COMPCODE, ''NM'', :DOCTTYPE,',
'                     :SUBTTYPE, :P469_TRNDATE,:P469_WARECODE,',
'                     ''NM'', docnum); ',
':P469_RCDOC:= docnum; ',
'',
'if :P469_BATCHNO is null then    ',
'begin',
'    docnumber_generation(:COMPCODE, ''NM'', ''BT'',',
'                         1, :P469_TRNDATE, :P469_WARECODE,',
'                         ''NM'', btcnum);  ',
'',
'                         ',
'    :P469_BATCHNO := btcnum;',
'exception ',
'when others then',
'raise_application_error(-20001,''docnumber generate-batch ''||sqlcode||'' ''||sqlerrm);',
'end;',
'    ',
'end if; ',
'exception',
'    when no_data_found then',
'    raise_application_error(-20001,''No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''Too many rows found'');',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Record generate successfully<br>Requisition No. : &P469_RCDOC.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(161833884365832767)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE-INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'PKG_APPROVAL.PRC_CHK_APPRNEED (:COMPCODE,',
'                               :DOCTTYPE,',
'                               :SUBTTYPE,',
'                               :P469_STATUSCD);',
'',
'EXCEPTION',
'    when no_data_found then',
'    raise_application_error(-20001,''No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''Too many rows found'');',
'    when others then',
'    raise_application_error(-20001,''PRE-INSERT ''||SQLCODE||'' ''|| SQLERRM);',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(161834652689832770)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P1, WIZ_P2',
'  INTO :P469_NEXTPAGE, :P469_PREVPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
