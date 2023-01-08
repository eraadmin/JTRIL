prompt --application/pages/page_00429
begin
--   Manifest
--     PAGE: 00429
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
 p_id=>429
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Confirmation'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20221228155733'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109399873522501363)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(24685888503784642)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(152107057614276282)
,p_plug_name=>'Multiple Item Issue'
,p_parent_plug_id=>wwv_flow_api.id(109399873522501363)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(156043757919960771)
,p_name=>'Multiple Item Issue'
,p_parent_plug_id=>wwv_flow_api.id(152107057614276282)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'       c038 REMARKSS,',
'       c039 COSTCODE,',
'       c040 WARECODE,',
'       c041 POSTFLAG,',
'       c042 PRNTFLAG,',
'       c043 PRICFLAG,',
'       c044 STATUSCD,',
'       c045 COLORCDE,',
'       c046 COSTRATE,',
'       c047 SRCWRECD,',
'       c048 BATCHNUM,',
'       c049 DEFECTQT',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS''',
' order by sl'))
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
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24805627379797492)
,p_query_column_id=>1
,p_column_alias=>'SL'
,p_column_display_sequence=>1
,p_column_heading=>'Sl'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24806025875797492)
,p_query_column_id=>2
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24790439081797478)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24790870628797481)
,p_query_column_id=>4
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>21
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24791202899797481)
,p_query_column_id=>5
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24791638701797482)
,p_query_column_id=>6
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>23
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24792093297797482)
,p_query_column_id=>7
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>24
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24792433689797484)
,p_query_column_id=>8
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>25
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24792896312797484)
,p_query_column_id=>9
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>26
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24793260831797484)
,p_query_column_id=>10
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24793645446797484)
,p_query_column_id=>11
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24794005350797484)
,p_query_column_id=>12
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>29
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24809282894797495)
,p_query_column_id=>13
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>19
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24806446563797492)
,p_query_column_id=>14
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24808005452797495)
,p_query_column_id=>15
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24806889198797492)
,p_query_column_id=>16
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>3
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24794427842797485)
,p_query_column_id=>17
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24794890837797485)
,p_query_column_id=>18
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>5
,p_column_heading=>'Item Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25092644052712011)
,p_query_column_id=>19
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>48
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24795699396797485)
,p_query_column_id=>20
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>31
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24796017211797485)
,p_query_column_id=>21
,p_column_alias=>'SPLDISPC'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24796456910797485)
,p_query_column_id=>22
,p_column_alias=>'SPLDISNT'
,p_column_display_sequence=>33
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24808810111797495)
,p_query_column_id=>23
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>7
,p_column_heading=>'Sale Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24807601764797493)
,p_query_column_id=>24
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24796882940797487)
,p_query_column_id=>25
,p_column_alias=>'FACTRVAL'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24807207326797493)
,p_query_column_id=>26
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25093394137712018)
,p_query_column_id=>27
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25092707646712012)
,p_query_column_id=>28
,p_column_alias=>'DIS_ORGNQNTY'
,p_column_display_sequence=>49
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24797203832797487)
,p_query_column_id=>29
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24797615245797487)
,p_query_column_id=>30
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>35
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25092881323712013)
,p_query_column_id=>31
,p_column_alias=>'POQTY'
,p_column_display_sequence=>8
,p_column_heading=>'Issue Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25092911475712014)
,p_query_column_id=>32
,p_column_alias=>'RCVQTY'
,p_column_display_sequence=>12
,p_column_heading=>'Rvc. Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24798048089797487)
,p_query_column_id=>33
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>9
,p_column_heading=>'FC Amount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24798430090797487)
,p_query_column_id=>34
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>36
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24798808667797487)
,p_query_column_id=>35
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>37
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24799232783797487)
,p_query_column_id=>36
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>10
,p_column_heading=>'LC Amount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24799646915797487)
,p_query_column_id=>37
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>38
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24800022405797487)
,p_query_column_id=>38
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>39
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24800406502797487)
,p_query_column_id=>39
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>14
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24800868013797487)
,p_query_column_id=>40
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24801272745797487)
,p_query_column_id=>41
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>41
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24801609201797487)
,p_query_column_id=>42
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>42
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24802080355797487)
,p_query_column_id=>43
,p_column_alias=>'PRNTFLAG'
,p_column_display_sequence=>43
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24802418832797490)
,p_query_column_id=>44
,p_column_alias=>'PRICFLAG'
,p_column_display_sequence=>44
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24802834412797490)
,p_query_column_id=>45
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>45
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24803652234797490)
,p_query_column_id=>46
,p_column_alias=>'COLORCDE'
,p_column_display_sequence=>46
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24808456244797495)
,p_query_column_id=>47
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>6
,p_column_heading=>'Cost Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24804419433797490)
,p_query_column_id=>48
,p_column_alias=>'SRCWRECD'
,p_column_display_sequence=>47
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51544496371684719)
,p_query_column_id=>49
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>51
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51544367110684718)
,p_query_column_id=>50
,p_column_alias=>'DEFECTQT'
,p_column_display_sequence=>13
,p_column_heading=>'Damage Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(156040226334959462)
,p_plug_name=>'Document Information'
,p_parent_plug_id=>wwv_flow_api.id(109399873522501363)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24788288676797467)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(109399873522501363)
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
 p_id=>wwv_flow_api.id(24789058312797468)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(109399873522501363)
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
 p_id=>wwv_flow_api.id(24789498434797468)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(109399873522501363)
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
 p_id=>wwv_flow_api.id(24817637349797510)
,p_branch_name=>'Go To Page 49'
,p_branch_action=>'f?p=&SUCCESS_APP.:&SUCCESS_PAGE.:&SESSION.::&DEBUG.:RP,:P1_DOCNUMBR,P1_PROGNAME:&P429_NEWDOCNUMBR.,nmmrstrn&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'PLACE_ORDER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(35367433225135434)
,p_branch_name=>'Go To Page 49'
,p_branch_action=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49:P49_DOCNUMBR,P49_PROGNAME:&P429_NEWDOCNUMBR.,nmmrstrn&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'PLACE_ORDER'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24817203868797510)
,p_branch_name=>'Go To Page 428'
,p_branch_action=>'f?p=&APP_ID.:&P429_PREVPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(24789498434797468)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24810316131797495)
,p_name=>'P429_PODCNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(156040226334959462)
,p_prompt=>'Tran No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24811125003797500)
,p_name=>'P429_WHSNME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(156040226334959462)
,p_prompt=>'Rcv. From'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24811557797797500)
,p_name=>'P429_PREVPAGE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(156040226334959462)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24811953100797500)
,p_name=>'P429_NEXTPAGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(156040226334959462)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24812353568797500)
,p_name=>'P429_NEWDOCNUMBR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(156040226334959462)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25093025935712015)
,p_name=>'P429_PODCDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(156040226334959462)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25093115830712016)
,p_name=>'P429_BATCHNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(156040226334959462)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26664783919885847)
,p_name=>'P429_S_PRDTYP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(156040226334959462)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26664899662885848)
,p_name=>'P429_S_PRSTYP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(156040226334959462)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26664999621885849)
,p_name=>'P429_TRNDATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(156040226334959462)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26904417879561018)
,p_name=>'P429_WARECODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(156040226334959462)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38509629425647406)
,p_name=>'P429_BATCHDATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(156040226334959462)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38509736622647407)
,p_name=>'P429_BTCHEXPDAT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(156040226334959462)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38509919286647409)
,p_name=>'P429_SRCWRECD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(156040226334959462)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58114924621112233)
,p_name=>'P429_STATUSCD'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(156040226334959462)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24815212524797509)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(24788288676797467)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24815777475797509)
,p_event_id=>wwv_flow_api.id(24815212524797509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24816208795797509)
,p_event_id=>wwv_flow_api.id(24815212524797509)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if; ',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;   '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24816734987797510)
,p_event_id=>wwv_flow_api.id(24815212524797509)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24812720318797500)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Previous Page Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT c001 PODCNO,',
'          c002 PODCDATE,',
'          c011 WARECODE,',
'          c011 ||''-''|| c012 warename,',
'          c013 BATCHNO,',
'          c014 BATCHDATE,',
'		  c015 S_PRDTYP,',
'          c016 S_PRSTYP,',
'		  c017 TRNDATE,',
'          c018 BTCHEXPDAT,',
'          c019 SRCWRECD',
'     INTO :P429_PODCNO, :P429_PODCDATE, :P429_WARECODE, :P429_WHSNME, :P429_BATCHNO, :P429_BATCHDATE, :P429_S_PRDTYP, :P429_S_PRSTYP, :P429_TRNDATE, :P429_BTCHEXPDAT, :P429_SRCWRECD',
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
 p_id=>wwv_flow_api.id(24813572692797500)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Place Order'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'               c038 REMARKSS,',
'               c039 COSTCODE,',
'               c040 WARECODE,',
'               c041 POSTFLAG,',
'               c042 PRNTFLAG,',
'               c043 PRICFLAG,',
'               c044 STATUSCD,',
'               c045 SALEPERC, --COLORCDE,',
'               c046 COSTRATE,',
'               c047 SRCWRECD,',
'               c048 BATCHNUM,',
'               c049 DEFECTQT,',
'               c050 MINSRATE',
'          FROM apex_collections',
'         WHERE collection_name = ''ORDER_ITEMS''',
'         order by sl)',
'loop',
'',
'   INSERT INTO NMSTKREC (COMPCODE,',
'                         DOCTTYPE,',
'                         SUBTTYPE,',
'                         DOCNUMBR,',
'                         DOCTDATE,',
'                         SERLNUMB,',
'                         PARTYCDE,',
'                         RAISEDBY,',
'                         APPRVDBY,',
'                         APPRDATE,',
'                         REQDDATE,',
'                         COMMCODE,',
'                         ITEMCODE,',
'                         ITEMTYPE,',
'                         MCSERIAL,',
'                         ITEMDESC,',
'                         ITEMLONG,',
'                         ITEMRATE,',
'                         --DISCPCNT,',
'                         --DISCAMNT,',
'                         --SPLDISPC,',
'                         --SPLDISNT,',
'                         SALERATE,',
'                         HUOMCODE,',
'                         --FACTRVAL,',
'                         LUOMCODE,',
'                         ORGNQNTY,',
'                         APPRQNTY,',
'                         MSFCAMNT,',
'                         CURRCODE,',
'                         EXCGRATE,',
'                         MSLCAMNT,',
'                         REFNUMBR,',
'                         REFNDATE,',
'                         UPDOCTYP,',
'                         UPSUBTYP,',
'                         UPDOCNUM,',
'                         UPDOCDTE,',
'                         UPDOCSRL,',
'                         REMARKSS,',
'                         COSTCODE,',
'                         WARECODE,',
'                         STATUSCD,',
'                         OPRSTAMP,',
'                         BATCHNUM,',
'                         BATCHDTE,',
'                         BATCHEXP,',
'                         NORMRATE,',
'                         COSTRATE,',
'                         SRCWRECD,',
'                         DEFECTQT,',
'                         SALEPERC,',
'                         MINSRATE,',
'                         TIMSTAMP)',
'        VALUES (:COMPCODE,',
'                :DOCTTYPE,',
'                :SUBTTYPE,',
'                :P429_NEWDOCNUMBR,',
'                :P429_TRNDATE,',
'                i.sl,',
'                i.PARTYCDE,',
'                i.RAISEDBY,',
'                i.APPRVDBY,',
'                i.APPRDATE,',
'                i.REQDDATE,',
'                i.COMMCODE,',
'                i.ITEMCODE,',
'                i.ITEMTYPE,',
'                i.sl, --MCSERIAL,',
'                i.ITEMDESC,',
'                i.ITEMLONG,',
'                i.ITEMRATE,',
'                --i.DISCPCNT,',
'                --i.DISCAMNT,',
'                --i.SPLDISPC,',
'                --i.SPLDISNT,',
'                i.SALERATE,',
'                i.HUOMCODE,',
'                --i.FACTRVAL,',
'                i.LUOMCODE,',
'                i.RCVQTY,',
'                i.RCVQTY,',
'                i.MSFCAMNT,',
'                i.CURRCODE,',
'                i.EXCGRATE,',
'                i.MSLCAMNT,',
'                i.REFNUMBR,',
'                i.REFNDATE,',
'                :P429_S_PRDTYP,',
'                :P429_S_PRSTYP,',
'                :P429_PODCNO,',
'                :P429_TRNDATE,',
'                i.sl,',
'                i.REMARKSS,',
'                i.COSTCODE,',
'                i.SRCWRECD, --WARECODE, ',
'                :P429_STATUSCD, --i.STATUSCD,',
'                :APP_USER,',
'                :P429_BATCHNO, --i.BATCHNUM',
'                :P429_BATCHDATE,',
'                :P429_BTCHEXPDAT,',
'                i.ITEMRATE,',
'                i.COSTRATE,',
'                i.WARECODE, --SRCWRECD,',
'                i.DEFECTQT,',
'                i.SALEPERC,',
'                i.MINSRATE,',
'                sysdate);',
'   ',
'    UPDATE nmstkrec',
'       SET TRNSQNTY = NVL(trnsqnty,0) + i.RCVQTY + nvl(i.DEFECTQT,0),',
'           DWDOCTYP = :DOCTTYPE,',
'           DWSUBTYP = :SUBTTYPE,',
'           DWDOCNUM = :P429_NEWDOCNUMBR,',
'           DWDOCDTE = :P429_TRNDATE,',
'           DWDOCSRL = i.SERLNUMB',
'    WHERE docnumbr = :P429_PODCNO',
'      AND TRUNC(DOCTDATE) = :P429_PODCDATE',
'      AND WARECODE = :P429_WARECODE',
'      AND DOCTTYPE = :P429_S_PRDTYP ',
'      AND SUBTTYPE = :P429_S_PRSTYP',
'      AND ITEMCODE = i.ITEMCODE;       ',
'',
'end loop;',
'    ',
'-- Truncate the collection after the order has been placed ',
'if apex_collection.collection_exists(p_collection_name => ''DOC_INFO'') = true then',
'   apex_collection.truncate_collection(p_collection_name => ''DOC_INFO'');',
'end if;  ',
'',
'if apex_collection.collection_exists(p_collection_name => ''ORDER_ITEMS'') = true then',
'   apex_collection.truncate_collection(p_collection_name => ''ORDER_ITEMS'');',
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
 p_id=>wwv_flow_api.id(38511483539647424)
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
'       raise_application_error(-20001, ''No Item found for Receive!'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24813134267797500)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'docnumber generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'docnum varchar2(20);',
'btcnum varchar2(20):=''SYS00000'';',
'begin',
'--raise_application_error(-20001,:COMPCODE||'' ''||:DOCTTYPE ||'' ''||:SUBTTYPE||'' ''||:P429_TRNDATE||'' ''||:P429_SRCWRECD||:P429_WARECODE); ',
'begin',
'docnumber_generation(:COMPCODE, ''NM'', :DOCTTYPE,',
'                     :SUBTTYPE, :P429_TRNDATE, :P429_SRCWRECD, --:P429_WARECODE',
'                     ''NM'', docnum);',
'                    ',
':P429_NEWDOCNUMBR := docnum; ',
'exception ',
'when others then',
'raise_application_error(-20001,''docnumber generate-doc ''||sqlcode||'' ''||sqlerrm); ',
'end;',
'',
'if :P429_BATCHNO is null then    ',
'begin',
'    docnumber_generation(:COMPCODE, ''NM'', ''BT'',',
'                         1, :P429_TRNDATE, :P429_SRCWRECD, --null,',
'                         ''NM'', btcnum);  ',
'',
'                         ',
'    :P429_BATCHNO := btcnum;',
'exception ',
'when others then',
'raise_application_error(-20001,''docnumber generate-batch ''||sqlcode||'' ''||sqlerrm);',
'end;',
'    ',
'end if;   ',
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
,p_process_success_message=>'Record generate successfully<br>Requisition No. : &P429_NEWDOCNUMBR.'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'declare',
'    newno varchar2(20);',
'    docnum varchar2(500);',
'',
'begin',
'',
'docnumber_generation(:COMPCODE, ''NM'', :DOCTTYPE,',
'                     :SUBTTYPE, :P429_TRNDATE, null, --:P291_SRWHSCDE, --:P291_DSWHSCDE,',
'                     ''NM'', newno);',
' ',
':P429_NEWDOCNUMBR:= newno;  ',
'',
'',
'if :P429_BATCHNO is null then    ',
'begin',
'    docnumber_generation(:COMPCODE, ''NM'', ''BT'',',
'                         :SUBTTYPE, :P429_TRNDATE, null, --:P425_WARECODE,',
'                         ''NM'', btcnum);  ',
'',
'                         ',
'    :P429_BATCHNO := btcnum;',
'    end;',
'end if;',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,''Docnumber Generation Others Problem '');',
'',
'end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(58114822845112232)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE-INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'PKG_APPROVAL.PRC_CHK_APPRNEED (:COMPCODE,',
'                               :DOCTTYPE,',
'                               :SUBTTYPE,',
'                               :P429_STATUSCD);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24813912365797504)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P1, WIZ_P3',
'  INTO :P429_NEXTPAGE, :P429_PREVPAGE',
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
