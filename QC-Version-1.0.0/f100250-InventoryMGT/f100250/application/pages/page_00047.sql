prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Sales Invoice'
,p_page_mode=>'MODAL'
,p_step_title=>'Sales Invoice'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
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
'</script> ',
'',
''))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px !important;',
'}',
'#tabs .bg {',
'    height: 8px ! important;',
'    }',
'.t-Region h2.t-Region-title {',
'    color: rgb(255, 255, 255);',
'}',
'.t-Region-headerItems--title {',
'    text-align: center;',
'    padding: 0.0rem 0.0rem;',
'    background-color: #1F68A7;',
'}',
'.t-Form-inputContainer, .t-Form-inputContainer.col, .t-Form-labelContainer, .t-Form-labelContainer.col {',
'    padding: 0.2rem;',
'}',
'.t-Form-label {',
'    padding: .0rem 0;',
'    line-height: 1.0rem;',
'    display: inline-block;',
'    -webkit-hyphens: auto;',
'    -moz-hyphens: auto;',
'    -ms-hyphens: auto;',
'    hyphens: auto;',
'    font-size: 1.2rem;',
'    margin-top: 0px;',
'}'))
,p_dialog_chained=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180206182206'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61874224462479137)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61877036108479164)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61878633452479173)
,p_plug_name=>'Order and Booking Details'
,p_parent_plug_id=>wwv_flow_api.id(61877036108479164)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P47_TRANTYPE'
,p_plug_display_when_cond2=>'SI2'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61880029440479176)
,p_plug_name=>'Customer Information'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
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
 p_id=>wwv_flow_api.id(61881829547479176)
,p_plug_name=>'Sales Information'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61883823803479178)
,p_plug_name=>'Sales Details'
,p_parent_plug_id=>wwv_flow_api.id(61881829547479176)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:50%;float:right;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_api.id(61886242668479181)
,p_plug_name=>'Item Details'
,p_parent_plug_id=>wwv_flow_api.id(61881829547479176)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:50%;float:left;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>130
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(61898525513559585)
,p_name=>'Sales Invoice'
,p_parent_plug_id=>wwv_flow_api.id(61881829547479176)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'.report-standard td.data { background-color: #2084BA; padding: 0px 0px; border-bottom: 0px solid #7c7d7d; }'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"COMPCODE",',
'"DOCTTYPE",',
'"SUBTTYPE",',
'"DOCNUMBR",',
'"DOCTDATE",',
'"SERLNUMB",',
'"PARTYCDE",',
'"SMANCODE",',
'"RAISEDBY",',
'"APPRVDBY",',
'"APPRDATE",',
'"REQDDATE",',
'"COMMCODE",',
'"ITEMCODE",',
'"ITEMTYPE",',
'"ITEMDESC",',
'"ITEMLONG",',
'"ITEMRATE",',
'"MARKPCNT",',
'"DISCPCNT",',
'"DISCAMNT",',
'"SPLDISPC",',
'"SPLDISNT",',
'"SALERATE",',
'"HUOMCODE",',
'"FACTRVAL",',
'"LUOMCODE",',
'"ORGNQNTY",',
'"APPRQNTY",',
'"TRNSQNTY",',
'"MSFCAMNT",',
'"CURRCODE",',
'"EXCGRATE",',
'"MSLCAMNT",',
'"REFNUMBR",',
'"REFNDATE",',
'"UPDOCTYP",',
'"UPSUBTYP",',
'"UPDOCNUM",',
'"UPDOCDTE",',
'"UPDOCSRL",',
'"DWDOCTYP",',
'"DWSUBTYP",',
'"DWDOCNUM",',
'"DWDOCDTE",',
'"DWDOCSRL",',
'"ACDOCTYP",',
'"ACSUBTYP",',
'"ACDOCNUM",',
'"ACDOCDTE",',
'"ACDOCSRL",',
'"REMARKSS",',
'"COSTCODE",',
'"WARECODE",',
'"POSTFLAG",',
'"PRNTFLAG",',
'"PRICFLAG",',
'"STATUSCD",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"PROCFLAG",',
'"TRNSQTY2",',
'"BATCHNUM",',
'"MCSERIAL",',
'"WRPERIOD",',
'"TRANTYPE",',
'"DELCCODE",',
'"DELWCODE",',
'"EXPRDATE",',
'"BANKNAME",',
'"BANKBRCH",',
'"CHEQUENO",',
'"CHEQUEDT",',
'"VINNUMBR",',
'"COLORCDE",',
'"MRNUMBER",',
'"BILNUMBR",',
'"CUSTMRID",',
'"TERMSCOD",',
'"COSTRATE",',
'"SALERTEF",',
'"OTHECOST",',
'"DELIVERD",',
'"SALRECFK",',
'"PRICREMK",',
'"PAMTMODE",',
'"OTHRAMNT",',
'"VATPRSNT",',
'"VATAMONT",',
'"TOTDISPT",',
'"TOTDISAM"',
'from "#OWNER#"."NMSALREC"',
''))
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_num_rows=>10
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
 p_id=>wwv_flow_api.id(61919623818559793)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61898824221559588)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61898936670559590)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>3
,p_column_heading=>'Compcode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61899039032559590)
,p_query_column_id=>4
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Docttype'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61899135524559590)
,p_query_column_id=>5
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Subttype'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61899237853559590)
,p_query_column_id=>6
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>6
,p_column_heading=>'Docnumbr'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61899314592559590)
,p_query_column_id=>7
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>7
,p_column_heading=>'Doctdate'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61899434726559590)
,p_query_column_id=>8
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>8
,p_column_heading=>'Serlnumb'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61899535379559590)
,p_query_column_id=>9
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>9
,p_column_heading=>'Partycde'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61899633513559590)
,p_query_column_id=>10
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>10
,p_column_heading=>'Smancode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'SMANCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61899730105559590)
,p_query_column_id=>11
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>11
,p_column_heading=>'Raisedby'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'RAISEDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61899840997559590)
,p_query_column_id=>12
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>12
,p_column_heading=>'Apprvdby'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'APPRVDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61899942252559590)
,p_query_column_id=>13
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>13
,p_column_heading=>'Apprdate'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'APPRDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61900035494559590)
,p_query_column_id=>14
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>14
,p_column_heading=>'Reqddate'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'REQDDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61900119367559590)
,p_query_column_id=>15
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>15
,p_column_heading=>'Commcode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'COMMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61900218290559592)
,p_query_column_id=>16
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>16
,p_column_heading=>'Itemcode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>30
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'ITEMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61900328301559592)
,p_query_column_id=>17
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>17
,p_column_heading=>'Itemtype'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'ITEMTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61900436957559592)
,p_query_column_id=>18
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>18
,p_column_heading=>'Itemdesc'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>30
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'ITEMDESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61900546442559592)
,p_query_column_id=>19
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>20
,p_column_heading=>'Itemlong'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'ITEMLONG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61900617182559592)
,p_query_column_id=>20
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>21
,p_column_heading=>'Itemrate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>15
,p_column_width=>8
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'ITEMRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61900729764559592)
,p_query_column_id=>21
,p_column_alias=>'MARKPCNT'
,p_column_display_sequence=>31
,p_column_heading=>'Markpcnt'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'MARKPCNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61900816242559592)
,p_query_column_id=>22
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>28
,p_column_heading=>'Discount<br>(%)'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DISCPCNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61900939602559592)
,p_query_column_id=>23
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>29
,p_column_heading=>'Discount<br>Amount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DISCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61901024239559592)
,p_query_column_id=>24
,p_column_alias=>'SPLDISPC'
,p_column_display_sequence=>32
,p_column_heading=>'Spldispc'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'SPLDISPC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61901140092559592)
,p_query_column_id=>25
,p_column_alias=>'SPLDISNT'
,p_column_display_sequence=>33
,p_column_heading=>'Spldisnt'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'SPLDISNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61901217505559592)
,p_query_column_id=>26
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>23
,p_column_heading=>'Salerate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>15
,p_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'SALERATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61901320232559592)
,p_query_column_id=>27
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>34
,p_column_heading=>'Huomcode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'HUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61901429369559592)
,p_query_column_id=>28
,p_column_alias=>'FACTRVAL'
,p_column_display_sequence=>22
,p_column_heading=>'Sale(%)'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'FACTRVAL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61901542919559592)
,p_query_column_id=>29
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>24
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_column_width=>5
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'LUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61901640702559592)
,p_query_column_id=>30
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>25
,p_column_heading=>'Orgnqnty'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'ORGNQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61901724604559592)
,p_query_column_id=>31
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>27
,p_column_heading=>'Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'APPRQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61901835133559592)
,p_query_column_id=>32
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>26
,p_column_heading=>'Trnsqnty'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'TRNSQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61901915918559592)
,p_query_column_id=>33
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>30
,p_column_heading=>'Total<br>Amount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'MSFCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61902026605559592)
,p_query_column_id=>34
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>35
,p_column_heading=>'Currcode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'CURRCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61902116495559592)
,p_query_column_id=>35
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>36
,p_column_heading=>'Excgrate'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'EXCGRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61902239746559592)
,p_query_column_id=>36
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>37
,p_column_heading=>'Mslcamnt'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'MSLCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61902315095559592)
,p_query_column_id=>37
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>38
,p_column_heading=>'Refnumbr'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>15
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'REFNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61902442336559592)
,p_query_column_id=>38
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>39
,p_column_heading=>'Refndate'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'REFNDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61902539489559592)
,p_query_column_id=>39
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>40
,p_column_heading=>'Updoctyp'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'UPDOCTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61902641906559592)
,p_query_column_id=>40
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>41
,p_column_heading=>'Upsubtyp'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'UPSUBTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61902739509559592)
,p_query_column_id=>41
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>42
,p_column_heading=>'Updocnum'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'UPDOCNUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61902835600559592)
,p_query_column_id=>42
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>43
,p_column_heading=>'Updocdte'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'UPDOCDTE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61902922205559592)
,p_query_column_id=>43
,p_column_alias=>'UPDOCSRL'
,p_column_display_sequence=>44
,p_column_heading=>'Updocsrl'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'UPDOCSRL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61903033655559592)
,p_query_column_id=>44
,p_column_alias=>'DWDOCTYP'
,p_column_display_sequence=>45
,p_column_heading=>'Dwdoctyp'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DWDOCTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61903115350559592)
,p_query_column_id=>45
,p_column_alias=>'DWSUBTYP'
,p_column_display_sequence=>46
,p_column_heading=>'Dwsubtyp'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DWSUBTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61903216766559592)
,p_query_column_id=>46
,p_column_alias=>'DWDOCNUM'
,p_column_display_sequence=>47
,p_column_heading=>'Dwdocnum'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DWDOCNUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61903342339559592)
,p_query_column_id=>47
,p_column_alias=>'DWDOCDTE'
,p_column_display_sequence=>48
,p_column_heading=>'Dwdocdte'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DWDOCDTE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61903429398559592)
,p_query_column_id=>48
,p_column_alias=>'DWDOCSRL'
,p_column_display_sequence=>49
,p_column_heading=>'Dwdocsrl'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DWDOCSRL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61903525321559593)
,p_query_column_id=>49
,p_column_alias=>'ACDOCTYP'
,p_column_display_sequence=>50
,p_column_heading=>'Acdoctyp'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'ACDOCTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61903636972559593)
,p_query_column_id=>50
,p_column_alias=>'ACSUBTYP'
,p_column_display_sequence=>51
,p_column_heading=>'Acsubtyp'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'ACSUBTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61903736790559593)
,p_query_column_id=>51
,p_column_alias=>'ACDOCNUM'
,p_column_display_sequence=>52
,p_column_heading=>'Acdocnum'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'ACDOCNUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61903831755559593)
,p_query_column_id=>52
,p_column_alias=>'ACDOCDTE'
,p_column_display_sequence=>53
,p_column_heading=>'Acdocdte'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'ACDOCDTE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61903940942559593)
,p_query_column_id=>53
,p_column_alias=>'ACDOCSRL'
,p_column_display_sequence=>54
,p_column_heading=>'Acdocsrl'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'ACDOCSRL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61904034966559593)
,p_query_column_id=>54
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>55
,p_column_heading=>'Remarkss'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'REMARKSS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61904125896559593)
,p_query_column_id=>55
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>56
,p_column_heading=>'Costcode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'COSTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61904215142559593)
,p_query_column_id=>56
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>57
,p_column_heading=>'Warecode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61904337379559593)
,p_query_column_id=>57
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>58
,p_column_heading=>'Postflag'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'POSTFLAG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61904434998559593)
,p_query_column_id=>58
,p_column_alias=>'PRNTFLAG'
,p_column_display_sequence=>59
,p_column_heading=>'Prntflag'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'PRNTFLAG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61904535650559593)
,p_query_column_id=>59
,p_column_alias=>'PRICFLAG'
,p_column_display_sequence=>60
,p_column_heading=>'Pricflag'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'PRICFLAG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61904624357559593)
,p_query_column_id=>60
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>61
,p_column_heading=>'Statuscd'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'STATUSCD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61904743307559593)
,p_query_column_id=>61
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>62
,p_column_heading=>'Oprstamp'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61904814775559593)
,p_query_column_id=>62
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>63
,p_column_heading=>'Timstamp'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'TIMSTAMP'
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
 p_id=>wwv_flow_api.id(61904932280559593)
,p_query_column_id=>63
,p_column_alias=>'PROCFLAG'
,p_column_display_sequence=>64
,p_column_heading=>'Procflag'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'PROCFLAG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61905043091559593)
,p_query_column_id=>64
,p_column_alias=>'TRNSQTY2'
,p_column_display_sequence=>65
,p_column_heading=>'Trnsqty2'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'TRNSQTY2'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61905122401559593)
,p_query_column_id=>65
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>19
,p_column_heading=>'Batchnum'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'BATCHNUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61905224120559593)
,p_query_column_id=>66
,p_column_alias=>'MCSERIAL'
,p_column_display_sequence=>66
,p_column_heading=>'Mcserial'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'MCSERIAL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61905336076559593)
,p_query_column_id=>67
,p_column_alias=>'WRPERIOD'
,p_column_display_sequence=>67
,p_column_heading=>'Wrperiod'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'WRPERIOD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61905424545559593)
,p_query_column_id=>68
,p_column_alias=>'TRANTYPE'
,p_column_display_sequence=>68
,p_column_heading=>'Trantype'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'TRANTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61905523678559593)
,p_query_column_id=>69
,p_column_alias=>'DELCCODE'
,p_column_display_sequence=>69
,p_column_heading=>'Delccode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DELCCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61905637188559593)
,p_query_column_id=>70
,p_column_alias=>'DELWCODE'
,p_column_display_sequence=>70
,p_column_heading=>'Delwcode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DELWCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61905740738559593)
,p_query_column_id=>71
,p_column_alias=>'EXPRDATE'
,p_column_display_sequence=>71
,p_column_heading=>'Exprdate'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'EXPRDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61905833986559593)
,p_query_column_id=>72
,p_column_alias=>'BANKNAME'
,p_column_display_sequence=>72
,p_column_heading=>'Bankname'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'BANKNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61905938535559593)
,p_query_column_id=>73
,p_column_alias=>'BANKBRCH'
,p_column_display_sequence=>73
,p_column_heading=>'Bankbrch'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'BANKBRCH'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61906020560559593)
,p_query_column_id=>74
,p_column_alias=>'CHEQUENO'
,p_column_display_sequence=>74
,p_column_heading=>'Chequeno'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'CHEQUENO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61906136196559593)
,p_query_column_id=>75
,p_column_alias=>'CHEQUEDT'
,p_column_display_sequence=>75
,p_column_heading=>'Chequedt'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'CHEQUEDT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61906243467559593)
,p_query_column_id=>76
,p_column_alias=>'VINNUMBR'
,p_column_display_sequence=>76
,p_column_heading=>'Vinnumbr'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'VINNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61906334490559593)
,p_query_column_id=>77
,p_column_alias=>'COLORCDE'
,p_column_display_sequence=>77
,p_column_heading=>'Colorcde'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'COLORCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61906427766559593)
,p_query_column_id=>78
,p_column_alias=>'MRNUMBER'
,p_column_display_sequence=>78
,p_column_heading=>'Mrnumber'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>15
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'MRNUMBER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61906523318559593)
,p_query_column_id=>79
,p_column_alias=>'BILNUMBR'
,p_column_display_sequence=>79
,p_column_heading=>'Bilnumbr'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>15
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'BILNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61906616652559593)
,p_query_column_id=>80
,p_column_alias=>'CUSTMRID'
,p_column_display_sequence=>80
,p_column_heading=>'Custmrid'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'CUSTMRID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61906729434559593)
,p_query_column_id=>81
,p_column_alias=>'TERMSCOD'
,p_column_display_sequence=>81
,p_column_heading=>'Termscod'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'TERMSCOD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61906816113559593)
,p_query_column_id=>82
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>82
,p_column_heading=>'Costrate'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'COSTRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61906923548559593)
,p_query_column_id=>83
,p_column_alias=>'SALERTEF'
,p_column_display_sequence=>83
,p_column_heading=>'Salertef'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'SALERTEF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61907020585559593)
,p_query_column_id=>84
,p_column_alias=>'OTHECOST'
,p_column_display_sequence=>84
,p_column_heading=>'Othecost'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'OTHECOST'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61907121049559593)
,p_query_column_id=>85
,p_column_alias=>'DELIVERD'
,p_column_display_sequence=>85
,p_column_heading=>'Deliverd'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'DELIVERD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61907215577559593)
,p_query_column_id=>86
,p_column_alias=>'SALRECFK'
,p_column_display_sequence=>86
,p_column_heading=>'Salrecfk'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'SALRECFK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61907337417559593)
,p_query_column_id=>87
,p_column_alias=>'PRICREMK'
,p_column_display_sequence=>87
,p_column_heading=>'Pricremk'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'PRICREMK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61907419325559593)
,p_query_column_id=>88
,p_column_alias=>'PAMTMODE'
,p_column_display_sequence=>88
,p_column_heading=>'Pamtmode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'PAMTMODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61907528421559593)
,p_query_column_id=>89
,p_column_alias=>'OTHRAMNT'
,p_column_display_sequence=>89
,p_column_heading=>'Othramnt'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'OTHRAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61907617951559593)
,p_query_column_id=>90
,p_column_alias=>'VATPRSNT'
,p_column_display_sequence=>90
,p_column_heading=>'Vatprsnt'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'VATPRSNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61907720524559593)
,p_query_column_id=>91
,p_column_alias=>'VATAMONT'
,p_column_display_sequence=>91
,p_column_heading=>'Vatamont'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'VATAMONT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61907836528559595)
,p_query_column_id=>92
,p_column_alias=>'TOTDISPT'
,p_column_display_sequence=>92
,p_column_heading=>'Totdispt'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'TOTDISPT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61907927734559595)
,p_query_column_id=>93
,p_column_alias=>'TOTDISAM'
,p_column_display_sequence=>93
,p_column_heading=>'Totdisam'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSALREC'
,p_ref_column_name=>'TOTDISAM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61882014313479176)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>35
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61887825496479182)
,p_plug_name=>'installment'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY_3'
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
 p_id=>wwv_flow_api.id(123093062485143469)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>140
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61908127511559779)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(123093062485143469)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P47_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61877218084479165)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(123093062485143469)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P47_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61877620532479170)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(123093062485143469)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P47_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61883621604479178)
,p_button_sequence=>1070
,p_button_plug_id=>wwv_flow_api.id(61882014313479176)
,p_button_name=>'P47_SHOWHIDE'
,p_button_static_id=>'P47_SHOWHIDE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Showhide'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_post_element_text=>'<button id=''button''>Click</button>'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61884430224479178)
,p_button_sequence=>1340
,p_button_plug_id=>wwv_flow_api.id(61883823803479178)
,p_button_name=>'P47_ADDINSTALL'
,p_button_static_id=>'P47_ADDINSTALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Install'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61908339062559779)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(61898525513559585)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61908019404559779)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(61898525513559585)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61908214230559779)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(61898525513559585)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61877418243479170)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(61877036108479164)
,p_button_name=>'CREATE_ANOTHER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Another'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(61897214277479215)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:47::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(61661624060073204)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(61919717324559793)
,p_branch_action=>'f?p=&APP_ID.:47:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(61897416761479218)
,p_branch_action=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:47::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(61661815880080292)
,p_branch_sequence=>11
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61874422950479146)
,p_name=>'P47_ROWID'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(61874224462479137)
,p_prompt=>'Rowid'
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
 p_id=>wwv_flow_api.id(61874626737479156)
,p_name=>'P47_ITEMCODE1'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(61874224462479137)
,p_prompt=>'Itemcode1'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61874838152479156)
,p_name=>'P47_DOCNUMBR1'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(61874224462479137)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61875018772479157)
,p_name=>'P47_REGION'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(61874224462479137)
,p_prompt=>'Region'
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
 p_id=>wwv_flow_api.id(61875229787479159)
,p_name=>'P47_COMPCODE'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(61874224462479137)
,p_prompt=>'Compcode'
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
 p_id=>wwv_flow_api.id(61875431078479159)
,p_name=>'P47_OPRSTAMP'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(61874224462479137)
,p_prompt=>'Oprstamp'
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
 p_id=>wwv_flow_api.id(61875635330479159)
,p_name=>'P47_TIMSTAMP'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(61874224462479137)
,p_prompt=>'Timstamp'
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
 p_id=>wwv_flow_api.id(61875821269479159)
,p_name=>'P47_DOCTTYPE'
,p_item_sequence=>22
,p_item_plug_id=>wwv_flow_api.id(61877036108479164)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>7
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61876043895479159)
,p_name=>'P47_SUBTTYPE'
,p_item_sequence=>23
,p_item_plug_id=>wwv_flow_api.id(61877036108479164)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61876218132479159)
,p_name=>'P47_SERLNUMB'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_api.id(61874224462479137)
,p_prompt=>'Serlnumb'
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
 p_id=>wwv_flow_api.id(61876425020479161)
,p_name=>'P47_STATUSCD'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_api.id(61874224462479137)
,p_prompt=>'Statuscd'
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
 p_id=>wwv_flow_api.id(61876631790479161)
,p_name=>'P47_ITEMLONG_1'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(61874224462479137)
,p_prompt=>'Itemlong 1'
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
 p_id=>wwv_flow_api.id(61876838405479161)
,p_name=>'P47_MSFCAMNT'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(61874224462479137)
,p_prompt=>'Msfcamnt'
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
 p_id=>wwv_flow_api.id(61877841057479171)
,p_name=>'P47_DOCTDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(61877036108479164)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Invoice Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61878038666479171)
,p_name=>'P47_TRANTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(61877036108479164)
,p_prompt=>'Trantype'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NARATION d,TRANTYPE||SUBTTYPE r from sydocmas',
'where TRANTYPE =''SI''',
' AND COMPCODE = :COMPCODE',
' AND MODLCODE = ''NM''',
' AND SUBTTYPE in(1,2)',
' order by 2'))
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100%;"'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61878218361479171)
,p_name=>'P47_SALESTYPE'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(61877036108479164)
,p_prompt=>'Pay Mode'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  NMCODDES d ,NMSOFCDE r from nmcodmas',
'where NMHRDCDE = ''PAY''',
' AND COMPCODE =  :compcode',
' AND MODLCODE = ''NM'''))
,p_cSize=>50
,p_cMaxlength=>100
,p_cHeight=>1
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61878440152479171)
,p_name=>'P47_DOCNUMBR'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(61877036108479164)
,p_prompt=>'Invoice No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61878820131479175)
,p_name=>'P47_ORDERNO'
,p_item_sequence=>47
,p_item_plug_id=>wwv_flow_api.id(61877036108479164)
,p_prompt=>'Order No :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT s.docnumbr||''-''||s.partycde||''-''||s.doctdate d,s.docnumbr r',
'           FROM nmslsofr s,',
'                (SELECT   compcode, updoctyp, upsubtyp, updocnum, itemcode,',
'                          SUM (apprqnty) apprqnty',
'                     FROM nmsalrec',
'                 GROUP BY compcode, updoctyp, upsubtyp, updocnum, itemcode) sls',
'          WHERE s.compcode = :compcode ',
'            AND s.docttype = :P47_REQREFTYPE',
'            AND s.subttype = :P47_REQSUBTYPE',
'            AND s.doctdate <= :P47_ORDERDATE',
'            AND s.compcode = sls.compcode(+)',
'            AND s.docnumbr = sls.updocnum(+)',
'            AND s.itemcode = sls.itemcode(+)',
'            AND s.apprqnty > NVL (sls.apprqnty, 0)',
'       ORDER BY 2 DESC'))
,p_lov_cascade_parent_items=>'P47_REQREFTYPE,P47_REQSUBTYPE,P47_ORDERDATE'
,p_ajax_items_to_submit=>'P47_REQREFTYPE,P47_REQSUBTYPE,P47_ORDERDATE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_item_comment=>'onkeypress="return tabE(this,event,''P7_S_DOCNUM'')"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61879016186479175)
,p_name=>'P47_BOOKINGNO'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(61878633452479173)
,p_prompt=>'Booking No :'
,p_display_as=>'NATIVE_TEXT_FIELD'
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
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61879238632479175)
,p_name=>'P47_ORDERDATE'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(61878633452479173)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Order Date :'
,p_display_as=>'NATIVE_TEXT_FIELD'
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
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61879435018479175)
,p_name=>'P47_BOOKINGDT'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(61878633452479173)
,p_prompt=>'Booking Date :'
,p_display_as=>'NATIVE_TEXT_FIELD'
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
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61879632778479175)
,p_name=>'P47_REQREFTYPE'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(61878633452479173)
,p_prompt=>'Reqreftype'
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
 p_id=>wwv_flow_api.id(61879819255479175)
,p_name=>'P47_REQSUBTYPE'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_api.id(61878633452479173)
,p_prompt=>'Reqsubtype'
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
 p_id=>wwv_flow_api.id(61880236891479176)
,p_name=>'P47_PARTYCODE'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(61880029440479176)
,p_prompt=>'Party Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61880424124479176)
,p_name=>'P47_AREACODE'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(61880029440479176)
,p_prompt=>'Area'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61880641567479176)
,p_name=>'P47_CUSADDRESS'
,p_item_sequence=>1045
,p_item_plug_id=>wwv_flow_api.id(61882014313479176)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>2
,p_grid_label_column_span=>2
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61880820702479176)
,p_name=>'P47_ZONE'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(61880029440479176)
,p_prompt=>'Zone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61881017411479176)
,p_name=>'P47_FILENO'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(61880029440479176)
,p_prompt=>'File No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61881222042479176)
,p_name=>'P47_LASTPURCHASEDATE'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(61880029440479176)
,p_prompt=>'Last Purchase Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61881425131479176)
,p_name=>'P47_LASTPRODUCT'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(61880029440479176)
,p_prompt=>'Last Product'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61881640166479176)
,p_name=>'P47_LASTPURAMOUNT'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(61880029440479176)
,p_prompt=>'Last Pur.  Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61882227732479178)
,p_name=>'P47_CUSTOMERNAME'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(61882014313479176)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61882433184479178)
,p_name=>'P47_COSTCENTERNAME'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_api.id(61877036108479164)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61882630271479178)
,p_name=>'P47_COSTCODE'
,p_item_sequence=>42
,p_item_plug_id=>wwv_flow_api.id(61877036108479164)
,p_prompt=>'Sales Center'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   w.costcode||''-''||s.costdesc d, w.costcode r',
'    FROM nmwhsmas w, syjobmas s',
'   WHERE w.compcode = :compcode',
'     AND w.compcode = s.compcode',
'     AND w.costcode = s.costcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER)',
'ORDER BY warecode;'))
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61882828882479178)
,p_name=>'P47_CUSTOMTYPE'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(61882014313479176)
,p_prompt=>'Customer Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct NMCODDES d,NMSOFCDE r from nmcodmas where NMSOFCDE in',
'(select distinct CUSTTYPE from nmcusmas)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''NM''',
'and NMHRDCDE=''CTY'';'))
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100%;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SYCODDES d,SYSOFCDE r from sycodmas where SYSOFCDE in',
'(select distinct PARTYTYP from sycompty)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''SY''',
'and SYHRDCDE=''CUS'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61883021593479178)
,p_name=>'P47_CUSTOMERID'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(61882014313479176)
,p_prompt=>'Party Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct c.custmrid||''-''||custname d,c.custmrid r',
'  FROM nmcusmas c, nmitmreg r',
' WHERE c.custmrid = r.custmrid(+) AND c.compcode = r.compcode',
'       AND c.compcode = :compcode',
'       and c.CUSTTYPE=:P47_CUSTOMTYPE;'))
,p_lov_cascade_parent_items=>'P47_CUSTOMTYPE'
,p_ajax_items_to_submit=>'P47_CUSTOMTYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_colspan=>5
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61883226935479178)
,p_name=>'P47_SALMANID'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_api.id(61882014313479176)
,p_prompt=>'Salesman'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT  s.smanname,s.smancode',
'           FROM syjobmas j, nmwhsmas w, nmsmnmas s',
'          WHERE j.compcode = :compcode',
'            AND w.costcode = j.costcode',
'            AND w.compcode = j.compcode',
'            AND w.compcode = s.compcode',
'            AND w.regncode = s.smantype',
'            AND w.srvcwflg = ''N''',
'            AND s.smantype <> ''RE''',
'            AND w.warecode = s.suprcode',
'            AND w.costcode = :P47_COSTCODE'))
,p_lov_cascade_parent_items=>'P47_COSTCODE'
,p_ajax_items_to_submit=>'P47_COSTCODE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_api.id(61883441711479178)
,p_name=>'P47_WARECODE'
,p_item_sequence=>1220
,p_item_plug_id=>wwv_flow_api.id(61882014313479176)
,p_prompt=>'Ware Code'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61884036602479178)
,p_name=>'P47_INSTALLNO'
,p_item_sequence=>1260
,p_item_plug_id=>wwv_flow_api.id(61883823803479178)
,p_prompt=>'No. of Install.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
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
 p_id=>wwv_flow_api.id(61884221488479178)
,p_name=>'P47_INSTLLAMOUNT'
,p_item_sequence=>1310
,p_item_plug_id=>wwv_flow_api.id(61883823803479178)
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
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
 p_id=>wwv_flow_api.id(61884634243479178)
,p_name=>'P47_PERINSTALL'
,p_item_sequence=>1430
,p_item_plug_id=>wwv_flow_api.id(61883823803479178)
,p_prompt=>'Perinstall'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61884841181479179)
,p_name=>'P47_AMOUNT'
,p_item_sequence=>1290
,p_item_plug_id=>wwv_flow_api.id(61883823803479178)
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61885032058479179)
,p_name=>'P47_CLOSINGBALANCE'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_api.id(61883823803479178)
,p_prompt=>'stock Qty.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_grid_column=>4
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61885237546479179)
,p_name=>'P47_QUENTITY'
,p_item_sequence=>1280
,p_item_plug_id=>wwv_flow_api.id(61883823803479178)
,p_prompt=>'Quantity'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61885443129479179)
,p_name=>'P47_SALPRICE'
,p_item_sequence=>1230
,p_item_plug_id=>wwv_flow_api.id(61883823803479178)
,p_prompt=>'Sales Price'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61885628919479179)
,p_name=>'P47_DISAMOUNT'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(61883823803479178)
,p_prompt=>'Dis Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_api.id(61885820938479179)
,p_name=>'P47_NETAMOUNT'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_api.id(61883823803479178)
,p_prompt=>'Net Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61886035309479179)
,p_name=>'P47_DISCPCNT'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_api.id(61883823803479178)
,p_prompt=>'Dis. %'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_api.id(61886414084479181)
,p_name=>'P47_ISSUMTHD'
,p_item_sequence=>1470
,p_item_plug_id=>wwv_flow_api.id(61886242668479181)
,p_prompt=>'Issumthd'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61886631007479181)
,p_name=>'P47_ITEMDESC'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_api.id(61886242668479181)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61886826613479181)
,p_name=>'P47_BRAND'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_api.id(61886242668479181)
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61887042799479181)
,p_name=>'P47_MODAL'
,p_item_sequence=>1250
,p_item_plug_id=>wwv_flow_api.id(61886242668479181)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61887225058479182)
,p_name=>'P47_UNITOFMESURE'
,p_item_sequence=>1260
,p_item_plug_id=>wwv_flow_api.id(61886242668479181)
,p_prompt=>'Unit Of Mesurement'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61887421695479182)
,p_name=>'P47_ITEMCODE'
,p_item_sequence=>1180
,p_item_plug_id=>wwv_flow_api.id(61886242668479181)
,p_item_default=>':P47_TESTITEM'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Item Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode||''-''||itemdes2 d,a.itemcode r',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P47_WARECODE',
'           -- AND b.itemcode LIKE ''%'' || :3 || ''%''',
'            AND NVL (b.clbalqty, 0) > 0'))
,p_lov_cascade_parent_items=>'P47_WARECODE'
,p_ajax_items_to_submit=>'P47_WARECODE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_api.id(61887632452479182)
,p_name=>'P47_BATCHNUM'
,p_item_sequence=>1210
,p_item_plug_id=>wwv_flow_api.id(61886242668479181)
,p_prompt=>'Batch No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT DISTINCT batchnum d,  batchnum r',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmwhimas w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P47_ITEMCODE',
'                      AND w.warecode = :P47_WARECODE',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                   HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC)'))
,p_lov_cascade_parent_items=>'P47_ITEMCODE,P47_WARECODE'
,p_ajax_items_to_submit=>'P47_ITEMCODE,P47_WARECODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_api.id(61888030997479184)
,p_name=>'P47_INSTALLAMOUNT'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(61887825496479182)
,p_prompt=>'Amount'
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
 p_id=>wwv_flow_api.id(61890515056479207)
,p_name=>'P47_SALMANTYPE'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_api.id(61874224462479137)
,p_prompt=>'Type'
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
 p_id=>wwv_flow_api.id(122367533997438975)
,p_name=>'P47_S_PRDTYP'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(61877036108479164)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>7
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(122367829824438978)
,p_name=>'P47_S_PRSTYP'
,p_item_sequence=>27
,p_item_plug_id=>wwv_flow_api.id(61877036108479164)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(122368173780438978)
,p_name=>'P47_DOCDESC'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_api.id(61877036108479164)
,p_prompt=>'Tran type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(122423360904603154)
,p_name=>'P47_REFDOCDES'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(61877036108479164)
,p_prompt=>'Prev. Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123066024349032214)
,p_name=>'P47_MIONUM'
,p_item_sequence=>1025
,p_item_plug_id=>wwv_flow_api.id(61882014313479176)
,p_prompt=>'M.I.O'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>5
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123066639731041001)
,p_name=>'P47_MIONME'
,p_item_sequence=>1026
,p_item_plug_id=>wwv_flow_api.id(61882014313479176)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123082603133095475)
,p_name=>'P47_CRDLIMT'
,p_item_sequence=>1047
,p_item_plug_id=>wwv_flow_api.id(61882014313479176)
,p_prompt=>'Credit Limit.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123082918344095477)
,p_name=>'P47_CRDAMNT'
,p_item_sequence=>1048
,p_item_plug_id=>wwv_flow_api.id(61882014313479176)
,p_prompt=>'Credit Amnt.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123084866566133316)
,p_name=>'P47_TERM'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(61882014313479176)
,p_prompt=>'Term'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61909118144559780)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'COMPCODE not null'
,p_validation_sequence=>20
,p_validation=>'COMPCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'COMPCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61909318662559780)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'DOCTTYPE not null'
,p_validation_sequence=>30
,p_validation=>'DOCTTYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'DOCTTYPE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61909541457559780)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'SUBTTYPE not null'
,p_validation_sequence=>40
,p_validation=>'SUBTTYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'SUBTTYPE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61909719606559780)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'SUBTTYPE must be numeric'
,p_validation_sequence=>40
,p_validation=>'SUBTTYPE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'SUBTTYPE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61909926585559783)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'DOCNUMBR not null'
,p_validation_sequence=>50
,p_validation=>'DOCNUMBR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'DOCNUMBR'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61910117042559785)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'DOCTDATE not null'
,p_validation_sequence=>60
,p_validation=>'DOCTDATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'DOCTDATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61910322716559785)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'DOCTDATE must be a valid date'
,p_validation_sequence=>60
,p_validation=>'DOCTDATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'DOCTDATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61910543663559785)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'SERLNUMB not null'
,p_validation_sequence=>70
,p_validation=>'SERLNUMB'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'SERLNUMB'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61910723995559785)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'PARTYCDE not null'
,p_validation_sequence=>80
,p_validation=>'PARTYCDE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'PARTYCDE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61910940732559785)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'APPRDATE must be a valid date'
,p_validation_sequence=>120
,p_validation=>'APPRDATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'APPRDATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61911120415559785)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'REQDDATE must be a valid date'
,p_validation_sequence=>130
,p_validation=>'REQDDATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'REQDDATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61911314863559785)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'COMMCODE not null'
,p_validation_sequence=>140
,p_validation=>'COMMCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'COMMCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61911527781559785)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'ITEMCODE not null'
,p_validation_sequence=>150
,p_validation=>'ITEMCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'ITEMCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61911729999559787)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'ITEMRATE must be numeric'
,p_validation_sequence=>190
,p_validation=>'ITEMRATE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'ITEMRATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61911942474559787)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'MARKPCNT must be numeric'
,p_validation_sequence=>200
,p_validation=>'MARKPCNT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'MARKPCNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61912121283559787)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'DISCPCNT must be numeric'
,p_validation_sequence=>210
,p_validation=>'DISCPCNT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'DISCPCNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61912314201559787)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'DISCAMNT must be numeric'
,p_validation_sequence=>220
,p_validation=>'DISCAMNT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'DISCAMNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61912523707559787)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'SPLDISPC must be numeric'
,p_validation_sequence=>230
,p_validation=>'SPLDISPC'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'SPLDISPC'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61912744594559787)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'SPLDISNT must be numeric'
,p_validation_sequence=>240
,p_validation=>'SPLDISNT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'SPLDISNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61912915805559787)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'SALERATE must be numeric'
,p_validation_sequence=>250
,p_validation=>'SALERATE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'SALERATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61913120125559788)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'FACTRVAL must be numeric'
,p_validation_sequence=>270
,p_validation=>'FACTRVAL'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'FACTRVAL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61913336818559788)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'ORGNQNTY must be numeric'
,p_validation_sequence=>290
,p_validation=>'ORGNQNTY'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'ORGNQNTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61913534063559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'APPRQNTY must be numeric'
,p_validation_sequence=>300
,p_validation=>'APPRQNTY'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'APPRQNTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61913739729559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'TRNSQNTY must be numeric'
,p_validation_sequence=>310
,p_validation=>'TRNSQNTY'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'TRNSQNTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61913919516559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'MSFCAMNT must be numeric'
,p_validation_sequence=>320
,p_validation=>'MSFCAMNT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'MSFCAMNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61914140300559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'EXCGRATE must be numeric'
,p_validation_sequence=>340
,p_validation=>'EXCGRATE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'EXCGRATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61914313822559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'MSLCAMNT must be numeric'
,p_validation_sequence=>350
,p_validation=>'MSLCAMNT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'MSLCAMNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61914524506559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'REFNDATE must be a valid date'
,p_validation_sequence=>370
,p_validation=>'REFNDATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'REFNDATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61914733381559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'UPSUBTYP must be numeric'
,p_validation_sequence=>390
,p_validation=>'UPSUBTYP'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'UPSUBTYP'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61914943429559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'UPDOCDTE must be a valid date'
,p_validation_sequence=>410
,p_validation=>'UPDOCDTE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'UPDOCDTE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61915128927559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'DWSUBTYP must be numeric'
,p_validation_sequence=>440
,p_validation=>'DWSUBTYP'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'DWSUBTYP'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61915323540559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'DWDOCDTE must be a valid date'
,p_validation_sequence=>460
,p_validation=>'DWDOCDTE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'DWDOCDTE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61915514441559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'ACSUBTYP must be numeric'
,p_validation_sequence=>490
,p_validation=>'ACSUBTYP'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'ACSUBTYP'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61915716347559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'ACDOCDTE must be a valid date'
,p_validation_sequence=>510
,p_validation=>'ACDOCDTE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'ACDOCDTE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61915920502559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'OPRSTAMP not null'
,p_validation_sequence=>600
,p_validation=>'OPRSTAMP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'OPRSTAMP'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61916122113559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'TIMSTAMP not null'
,p_validation_sequence=>610
,p_validation=>'TIMSTAMP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'TIMSTAMP'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61916330815559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'TIMSTAMP must be a valid date'
,p_validation_sequence=>610
,p_validation=>'TIMSTAMP'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'TIMSTAMP'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61916546098559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'TRNSQTY2 must be numeric'
,p_validation_sequence=>630
,p_validation=>'TRNSQTY2'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'TRNSQTY2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61916744236559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'WRPERIOD must be numeric'
,p_validation_sequence=>660
,p_validation=>'WRPERIOD'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'WRPERIOD'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61916946311559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'EXPRDATE must be a valid date'
,p_validation_sequence=>700
,p_validation=>'EXPRDATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'EXPRDATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61917127809559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'CHEQUEDT must be a valid date'
,p_validation_sequence=>740
,p_validation=>'CHEQUEDT'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'CHEQUEDT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61917338003559790)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'TERMSCOD must be numeric'
,p_validation_sequence=>800
,p_validation=>'TERMSCOD'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'TERMSCOD'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61917534220559791)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'COSTRATE must be numeric'
,p_validation_sequence=>810
,p_validation=>'COSTRATE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'COSTRATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61917713903559791)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'SALERTEF must be numeric'
,p_validation_sequence=>820
,p_validation=>'SALERTEF'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'SALERTEF'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61917919790559791)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'OTHECOST must be numeric'
,p_validation_sequence=>830
,p_validation=>'OTHECOST'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'OTHECOST'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61918143719559791)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'SALRECFK must be numeric'
,p_validation_sequence=>850
,p_validation=>'SALRECFK'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'SALRECFK'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61918329641559791)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'OTHRAMNT must be numeric'
,p_validation_sequence=>880
,p_validation=>'OTHRAMNT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'OTHRAMNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61918515301559791)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'VATPRSNT must be numeric'
,p_validation_sequence=>890
,p_validation=>'VATPRSNT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'VATPRSNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61918724009559791)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'VATAMONT must be numeric'
,p_validation_sequence=>900
,p_validation=>'VATAMONT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'VATAMONT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61918936350559791)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'TOTDISPT must be numeric'
,p_validation_sequence=>910
,p_validation=>'TOTDISPT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'TOTDISPT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61919145108559791)
,p_tabular_form_region_id=>wwv_flow_api.id(61898525513559585)
,p_validation_name=>'TOTDISAM must be numeric'
,p_validation_sequence=>920
,p_validation=>'TOTDISAM'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(61908127511559779)
,p_associated_column=>'TOTDISAM'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61894932954479214)
,p_name=>'change on customer id'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_CUSTOMERID'
,p_condition_element=>'P47_CUSTOMERID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61895244071479214)
,p_event_id=>wwv_flow_api.id(61894932954479214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P47_CUSTOMERID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT distinct c.CUSTADR1,r.AREACODE,r.ZONLCODE,r.partycde,CUSTNAME',
'into :P47_CUSADDRESS,:P47_AREACODE,:P47_ZONE,:P47_PARTYCODE,:P47_CUSTOMERNAME',
'  FROM nmcusmas c, sycompty r',
' WHERE c.PARTYCDE = r.PARTYCDE(+) AND c.compcode = r.compcode',
'       AND c.compcode = :compcode',
'and c.CUSTMRID=:P47_CUSTOMERID;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;'))
,p_attribute_02=>'P47_CUSTOMERID'
,p_attribute_03=>'P47_CUSADDRESS,P47_AREACODE,P47_ZONE,P47_PARTYCODE,P47_CUSTOMERNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61891531367479210)
,p_name=>'change on costcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_COSTCODE'
,p_condition_element=>'P47_COSTCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61891823109479210)
,p_event_id=>wwv_flow_api.id(61891531367479210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P47_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.warecode',
'into :P47_WARECODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P47_COSTCODE)',
'     AND costcode = :P47_COSTCODE',
'ORDER BY warecode;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P47_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct COSTDESC ',
'into :P47_COSTCENTERNAME',
'from syjobmas',
'where compcode = :compcode',
'AND costcode = :P47_COSTCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P47_COSTCODE IS NOT NULL and :P47_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT distinct SMANCODE',
'into :P47_SALMANID',
'        FROM nmsalrec',
'       WHERE docnumbr = :p47_docnumbr1',
'         AND DOCTDATE = :P47_DOCTDATE',
'         AND COSTCODE = :P47_COSTCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P47_COSTCODE,P47_DOCNUMBR1,P47_DOCTDATE'
,p_attribute_03=>'P47_WARECODE,P47_COSTCENTERNAME,P47_SALMANID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61894531080479212)
,p_name=>'change on itemcode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_ITEMCODE'
,p_condition_element=>'P47_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61894843079479212)
,p_event_id=>wwv_flow_api.id(61894531080479212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P47_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P47_UNITOFMESURE,:P47_ITEMDESC,:P47_BRAND,:P47_MODAL,:P47_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P47_ITEMCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P47_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P47_SALPRICE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P47_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P47_ITEMCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P47_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P47_CLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P47_WARECODE',
'            AND b.itemcode =:P47_ITEMCODE',
'            AND NVL (b.clbalqty, 0) > 0',
'       GROUP BY a.itemcode, INITCAP (itemdes2), a.compcode;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P47_ITEMCODE1 IS NOT NULL and :P47_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) ',
'into :P47_QUENTITY',
'       from    nmsalrec s,(SELECT   SUM (d.trnsqnty) trnsqnty, d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE',
'                     FROM nmdevrec d',
'                     group by d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE) e',
'                     WHERE s.docnumbr = :p47_docnumbr1 AND s.itemcode = :p47_itemcode1',
'     AND S.ITEMCODE=e.ITEMCODE',
'AND S.DOCNUMBR=e.UPDOCNUM',
'AND NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) > 0;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P47_ITEMCODE,P47_WARECODE,P47_ITEMCODE1,P47_DOCNUMBR1'
,p_attribute_03=>'P47_UNITOFMESURE,P47_ITEMDESC,P47_BRAND,P47_MODAL,P47_SALPRICE,P47_ISSUMTHD,P47_CLOSINGBALANCE,P47_QUENTITY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61891914711479210)
,p_name=>'change on trantype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_TRANTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61892229060479212)
,p_event_id=>wwv_flow_api.id(61891914711479210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select distinct PRDOCTYP,PRSUBTYP ',
'into :P47_REQREFTYPE,:P47_REQSUBTYPE',
'from nmwrkflw',
'where TRDOCTYP||TRSUBTYP=:P47_TRANTYPE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'',
'END;'))
,p_attribute_02=>'P47_TRANTYPE'
,p_attribute_03=>'P47_REQREFTYPE,P47_REQSUBTYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61895339979479214)
,p_name=>'showhide region'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(61883621604479178)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61895632151479214)
,p_event_id=>wwv_flow_api.id(61895339979479214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(61880029440479176)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var button = document.getElementById(''P47_SHOWHIDE''); // Assumes element with id=''button''',
'',
'button.onclick = function() {',
'    var div = document.getElementById(''R6886903507960120'');',
'    if (div.style.display !== ''none'') {',
'        div.style.display = ''none'';',
'    }',
'    else {',
'        div.style.display = ''block'';',
'    }',
'};'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61896531985479215)
,p_name=>'installment amount'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(61884430224479178)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61897026221479215)
,p_event_id=>wwv_flow_api.id(61896531985479215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P47_PERINSTALL:=(:P47_INSTLLAMOUNT/:P47_INSTALLNO);',
'end;'))
,p_attribute_02=>'P47_INSTLLAMOUNT,P47_INSTALLNO'
,p_attribute_03=>'P47_PERINSTALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61896823755479215)
,p_event_id=>wwv_flow_api.id(61896531985479215)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var tt = window.document.getElementById(''P47_INSTALLNO'').value;',
' for(i=0;i<tt;i++)',
'{',
'var pp = ''f02_000''.concat(i+1);',
'javascript:apex.widget.tabular.addRow();',
'window.document.getElementById(pp).value = window.document.getElementById(''P47_PERINSTALL'').value;',
'',
'}'))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pp = f02_000.concat(i);',
'',
'.concat(f02_000.concat(i)).concat('')'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61892745929479212)
,p_name=>'on change amount'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_QUENTITY'
,p_condition_element=>'P47_QUENTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61893020982479212)
,p_event_id=>wwv_flow_api.id(61892745929479212)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61893222190479212)
,p_event_id=>wwv_flow_api.id(61892745929479212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/05 14:26 (Formatter Plus v4.8.8) */',
'BEGIN',
'   :p47_amount := :p47_salprice * :p47_quentity;',
'END;'))
,p_attribute_02=>'P47_SALPRICE,P47_QUENTITY'
,p_attribute_03=>'P47_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61893328496479212)
,p_name=>'on change discount percent'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_DISCPCNT'
,p_condition_element=>'P47_DISCPCNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61893622386479212)
,p_event_id=>wwv_flow_api.id(61893328496479212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P47_DISAMOUNT:=(:P47_AMOUNT*:P47_DISCPCNT)/100;',
'end;'))
,p_attribute_02=>'P47_AMOUNT,P47_DISCPCNT'
,p_attribute_03=>'P47_DISAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61893727045479212)
,p_name=>'on change amount and disamount'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_AMOUNT,P47_DISCPCNT'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.da.testCondition( this.triggeringElement.id, ''NOT_NULL'' )'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61894024007479212)
,p_event_id=>wwv_flow_api.id(61893727045479212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P47_NETAMOUNT:=nvl(:P47_AMOUNT,0)-nvl(:P47_DISAMOUNT,0);',
'end;'))
,p_attribute_02=>'P47_AMOUNT,P47_DISAMOUNT'
,p_attribute_03=>'P47_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61896120327479214)
,p_name=>'query on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61896441862479215)
,p_event_id=>wwv_flow_api.id(61896120327479214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/06 17:44 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF      :p47_itemcode1 IS NOT NULL',
'and :P47_DOCNUMBR1 is not null',
'   THEN',
'      SELECT s.compcode, s.docttype, s.subttype, s.DOCNUMBR,s.doctdate,',
'             s.serlnumb, s.partycde, s.itemcode, s.smancode,',
'             s.commcode, s.itemdesc, s.itemlong,',
'             s.discpcnt, s.discamnt, s.salerate, s.custmrid,',
'             s.costcode, s.warecode, s.batchnum,s.MSFCAMNT',
'        INTO :p47_compcode, :p47_docttype, :p47_subttype,:P47_DOCNUMBR, :p47_doctdate,',
'             :p47_serlnumb, :p47_partycode, :p47_itemcode, :p47_salmanid,',
'             :p47_unitofmesure, :p47_itemdesc, :p47_itemlong_1,',
'             :p47_discpcnt, :p47_disamount, :p47_salprice, :p47_customerid,',
'             :p47_costcode, :p47_warecode, :p47_batchnum,:P47_NETAMOUNT',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p47_docnumbr1 AND s.itemcode = :p47_itemcode1;',
'   END IF;',
'END;'))
,p_attribute_02=>'P47_DOCNUMBR1,P47_ITEMCODE1'
,p_attribute_03=>'P47_COMPCODE,P47_DOCTTYPE,P47_SUBTTYPE,P47_DOCNUMBR,P47_DOCTDATE,P47_SERLNUMB,P47_PARTYCODE,P47_ITEMCODE,P47_SALMANID,P47_UNITOFMESURE,P47_ITEMDESC,P47_ITEMLONG_1,P47_DISCPCNT,P47_DISAMOUNT,P47_SALPRICE,P47_CUSTOMERID,P47_COSTCODE,P47_WARECODE,P47_BA'
||'TCHNUM,P47_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61894145323479212)
,p_name=>'change  on warecode'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61894439849479212)
,p_event_id=>wwv_flow_api.id(61894145323479212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P47_WARECODE IS NOT NULL and :P47_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT a.itemcode',
'into :P47_ITEMCODE ',
'           FROM nmsalrec a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''APR''',
'            AND a.itemcode = b.itemcode',
'            and a.DOCNUMBR=:P47_DOCNUMBR1',
'           -- AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P47_WARECODE',
'           -- AND b.itemcode LIKE ''%'' || :3 || ''%''',
'            AND NVL (b.clbalqty, 0) > 0;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P47_DOCNUMBR1,P47_WARECODE'
,p_attribute_03=>'P47_ITEMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61892342973479212)
,p_name=>'change on batchnum'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61892614152479212)
,p_event_id=>wwv_flow_api.id(61892342973479212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P47_ITEMCODE IS NOT NULL and :P47_DOCNUMBR is not null',
'   THEN',
'      BEGIN',
' SELECT  batchnum d',
'into :P47_BATCHNUM',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmsalrec w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P47_ITEMCODE',
'                      AND w.warecode = :P47_WARECODE',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                 --  HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC);',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P47_ITEMCODE,P47_DOCNUMBR,P47_WARECODE'
,p_attribute_03=>'P47_BATCHNUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61895733392479214)
,p_name=>'change  on itemcode1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_ITEMCODE1'
,p_condition_element=>'P47_ITEMCODE1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61896014680479214)
,p_event_id=>wwv_flow_api.id(61895733392479214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P47_ITEMCODE1 IS NOT NULL and :P47_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
' SELECT s.PAMTMODE,s.DOCTTYPE||s.SUBTTYPE',
'        INTO :P47_SALESTYPE,:P47_TRANTYPE',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p47_docnumbr1 AND s.itemcode = :p47_itemcode1;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P47_DOCNUMBR1,P47_ITEMCODE1'
,p_attribute_03=>'P47_SALESTYPE,P47_TRANTYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61891117518479210)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into nmsalrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/03 12:50 (Formatter Plus v4.8.8) */',
'BEGIN',
'   INSERT INTO nmsalrec',
'               (compcode, docttype, subttype, docnumbr,',
'                doctdate, serlnumb, partycde, smancode,',
'                raisedby, apprvdby, apprdate, reqddate, commcode,',
'                itemcode, itemtype, itemdesc, itemlong,',
'                itemrate, markpcnt, discpcnt, discamnt, spldispc,',
'                spldisnt, salerate, huomcode, factrval, luomcode, orgnqnty,',
'                apprqnty, trnsqnty, msfcamnt, currcode, excgrate, mslcamnt,',
'                refnumbr, refndate, updoctyp, upsubtyp, updocnum, updocdte,',
'                updocsrl, dwdoctyp, dwsubtyp, dwdocnum, dwdocdte, dwdocsrl,',
'                acdoctyp, acsubtyp, acdocnum, acdocdte, acdocsrl, remarkss,',
'                costcode, warecode, postflag, prntflag, pricflag,',
'                statuscd, oprstamp, timstamp, procflag, trnsqty2,',
'                batchnum, mcserial, wrperiod, trantype, delccode, delwcode,',
'                exprdate, bankname, bankbrch, chequeno, chequedt, vinnumbr,',
'                colorcde, mrnumber, bilnumbr, custmrid, termscod, costrate,',
'                salertef, othecost, deliverd, salrecfk, pricremk, pamtmode,',
'                othramnt, vatprsnt, vatamont, totdispt, totdisam',
'               )',
'        VALUES (:COMPCODE, ''SI'', :p47_subttype, :p47_docnumbr,',
'                :P47_DOCTDATE, :p47_serlnumb, :P47_PARTYCODE, :P47_SALMANID,',
'                ''RILADM'', ''RILADM'', NULL, NULL, :P47_UNITOFMESURE,',
'                :P47_ITEMCODE, ''S'', :P47_ITEMDESC, :P47_ITEMDESC,',
'                NULL, NULL, :P47_DISCPCNT, :P47_DISAMOUNT, NULL,',
'                NULL, :P47_SALPRICE, NULL, NULL, NULL, :P47_QUENTITY,',
'                :P47_QUENTITY, :P47_QUENTITY, :P47_NETAMOUNT, NULL, NULL, NULL,',
'                NULL, NULL, NULL, NULL, NULL, NULL,',
'                NULL, NULL, NULL, NULL, NULL, NULL,',
'                NULL, NULL, NULL, NULL, NULL, NULL,',
'                :P47_COSTCODE, :P47_WARECODE, NULL, NULL, NULL,',
'                :P47_STATUSCD, :P47_OPRSTAMP, :P47_TIMSTAMP, NULL, NULL,',
'                :P47_BATCHNUM, NULL, NULL, NULL, NULL, NULL,',
'                NULL, NULL, NULL, NULL, NULL, NULL,',
'                NULL, NULL, NULL, :P47_CUSTOMERID, NULL, NULL,',
'                NULL, NULL, NULL, NULL, NULL, :P47_SALESTYPE,',
'                NULL, NULL, NULL, NULL, NULL',
'               );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(61877218084479165)
,p_process_success_message=>'Record generate successfully<br>Sales Invoice No. : &P47_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61919245812559791)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(61898525513559585)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMSALREC'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(61908127511559779)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61919431854559793)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(61898525513559585)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMSALREC'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61890916449479210)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'37'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(61528624941971194)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61891327348479210)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update into nmsalrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/06 18:56 (Formatter Plus v4.8.8) */',
'BEGIN',
'   UPDATE nmsalrec',
'      SET compcode = :compcode,',
'          docttype = ''SI'',',
'          subttype = :p47_subttype,',
'          docnumbr = :p47_docnumbr,',
'          doctdate = :p47_doctdate,',
'          serlnumb = :p47_serlnumb,',
'          partycde = :p47_partycode,',
'          smancode = :p47_salmanid,',
'          raisedby = ''RILADM'',',
'          apprvdby = ''RILADM'',',
'          apprdate = NULL,',
'          reqddate = NULL,',
'          commcode = :p47_unitofmesure,',
'          itemcode = :p47_itemcode,',
'          itemtype = ''S'',',
'          itemdesc = :p47_itemdesc,',
'          itemlong = :p47_itemdesc,',
'          itemrate = NULL,',
'          markpcnt = NULL,',
'          discpcnt = :p47_discpcnt,',
'          discamnt = :p47_disamount,',
'          spldispc = NULL,',
'          spldisnt = NULL,',
'          salerate = :p47_salprice,',
'          huomcode = NULL,',
'          factrval = NULL,',
'          luomcode = NULL,',
'          orgnqnty = :p47_quentity,',
'          apprqnty = :p47_quentity,',
'          trnsqnty = NULL,',
'          msfcamnt = :p47_netamount,',
'          currcode = NULL,',
'          excgrate = NULL,',
'          mslcamnt = NULL,',
'          refnumbr = NULL,',
'          refndate = NULL,',
'          updoctyp = NULL,',
'          upsubtyp = NULL,',
'          updocnum = NULL,',
'          updocdte = NULL,',
'          updocsrl = NULL,',
'          dwdoctyp = NULL,',
'          dwsubtyp = NULL,',
'          dwdocnum = NULL,',
'          dwdocdte = NULL,',
'          dwdocsrl = NULL,',
'          acdoctyp = NULL,',
'          acsubtyp = NULL,',
'          acdocnum = NULL,',
'          acdocdte = NULL,',
'          acdocsrl = NULL,',
'          remarkss = NULL,',
'          costcode = :p47_costcode,',
'          warecode = :p47_warecode,',
'          postflag = NULL,',
'          prntflag = NULL,',
'          pricflag = NULL,',
'          statuscd = :p47_statuscd,',
'          oprstamp = :APP_USER,',
'          timstamp = :p47_timstamp,',
'          procflag = NULL,',
'          trnsqty2 = NULL,',
'          batchnum = :p47_batchnum,',
'          mcserial = NULL,',
'          wrperiod = NULL,',
'          trantype = NULL,',
'          delccode = NULL,',
'          delwcode = NULL,',
'          exprdate = NULL,',
'          bankname = NULL,',
'          bankbrch = NULL,',
'          chequeno = NULL,',
'          chequedt = NULL,',
'          vinnumbr = NULL,',
'          colorcde = NULL,',
'          mrnumber = NULL,',
'          bilnumbr = NULL,',
'          custmrid = :p47_customerid,',
'          termscod = NULL,',
'          costrate = NULL,',
'          salertef = NULL,',
'          othecost = NULL,',
'          deliverd = NULL,',
'          salrecfk = NULL,',
'          pricremk = NULL,',
'          pamtmode = :p47_salestype,',
'          othramnt = NULL,',
'          vatprsnt = NULL,',
'          vatamont = NULL,',
'          totdispt = NULL,',
'          totdisam = NULL',
'    WHERE docnumbr = :p47_docnumbr',
'      AND doctdate = :p47_doctdate',
'      AND itemcode = :p47_itemcode;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(61908127511559779)
,p_process_success_message=>'Update Successfully................'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61890734339479209)
,p_process_sequence=>11
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre  insert on nmsalrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
':P47_COMPCODE:=:COMPCODE;',
':P47_OPRSTAMP:=:APP_USER;',
':P47_TIMSTAMP:=sysdate;',
':P47_DOCTTYPE:=substr(:P47_TRANTYPE,1,2);',
':P47_SUBTTYPE:=substr(:P47_TRANTYPE,3,1);',
':P47_SERLNUMB:=''000001'';',
':P47_STATUSCD:=''APR'';',
':P47_MSFCAMNT:=(nvl(:P47_SALPRICE,0)*nvl(:P47_QUENTITY,0))-nvl(:P47_DISCPCNT,0);',
'docnumber_generation(:compcode, :modlcode, :P47_DOCTTYPE,',
'                        :P47_SUBTTYPE, sysdate  ,null,',
'                        :modlcode, newno);',
' ',
':P47_DOCNUMBR:= newno;  ',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,''Others Problem'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(61877218084479165)
);
wwv_flow_api.component_end;
end;
/
