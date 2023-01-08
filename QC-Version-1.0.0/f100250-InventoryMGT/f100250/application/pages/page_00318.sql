prompt --application/pages/page_00318
begin
--   Manifest
--     PAGE: 00318
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
 p_id=>318
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Lead Generate OLD 292'
,p_page_mode=>'MODAL'
,p_step_title=>'Lead Generate OLD 292'
,p_allow_duplicate_submissions=>'N'
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
'</script> '))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function getCustomerCode(pThis)',
'{',
'',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'   ',
'html_GetElement(''f02_''+vRow).value = document.getElementById(''P292_COMPCODE'').value;',
'html_GetElement(''f03_''+vRow).value = document.getElementById(''P292_CUSTOMER_CODE'').value;',
'',
'}',
'',
'',
'        ',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#R3405872052950649',
'',
'{',
'    float:right;',
'    display:block;',
'    width:35% !important;  ',
'    margin-top:-25px;',
'    padding:0px 0px; ',
'}',
'',
'#R3436862711303705',
'{',
'    float:left;',
'    display:block;',
'    width:100% !important;  ',
'',
'}',
'',
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
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'<style> input {width:33px} </style>'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180814105104'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(232001251057456698)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250024995860668646)
,p_plug_name=>'Customer Visits & Inquiries Entry'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250030609834668652)
,p_plug_name=>'Customers Inquiry Main Container'
,p_parent_plug_id=>wwv_flow_api.id(250024995860668646)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>25
,p_plug_display_point=>'SUB_REGIONS'
,p_translate_title=>'N'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250030978968668654)
,p_plug_name=>'Customers Info'
,p_parent_plug_id=>wwv_flow_api.id(250030609834668652)
,p_region_template_options=>'#DEFAULT#:i-h280:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>35
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(123601968924183538)
,p_plug_name=>'Customer Information'
,p_parent_plug_id=>wwv_flow_api.id(250030978968668654)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h280:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(188678126800864886)
,p_plug_name=>'Customer info'
,p_parent_plug_id=>wwv_flow_api.id(123601968924183538)
,p_region_template_options=>'#DEFAULT#:i-h280:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<span style="font-size:0.9em"><u>Customers Information</u></span></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250036203412668657)
,p_plug_name=>' Visit Info'
,p_parent_plug_id=>wwv_flow_api.id(123601968924183538)
,p_region_template_options=>'#DEFAULT#:i-h280:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<span style="font-size:0.9em"><u>Visit Info</u></span></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>'<span style="font-size:1.2em"><u>Contact Info</u></span></br>'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250046629719668672)
,p_plug_name=>'Customer''s Current Vehicle Info'
,p_parent_plug_id=>wwv_flow_api.id(250030978968668654)
,p_region_template_options=>'#DEFAULT#:i-h280:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_plug_header=>'<span style="font-size:0.9em"><u>Customer''s Current Vehicle Info</u></span></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250038982519668660)
,p_plug_name=>'Customer Interests & Queries'
,p_parent_plug_id=>wwv_flow_api.id(250030609834668652)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>96
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250048986765668674)
,p_plug_name=>'Test Drive & Sales Info'
,p_parent_plug_id=>wwv_flow_api.id(250030609834668652)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>95
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250039456287668660)
,p_plug_name=>'Customer''s Interest'
,p_parent_plug_id=>wwv_flow_api.id(250048986765668674)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h150:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>36
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(123601255189183531)
,p_plug_name=>'Classification'
,p_parent_plug_id=>wwv_flow_api.id(250039456287668660)
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<span style="font-size:0.9em"><u>Classification</u></span>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(250041801349668661)
,p_name=>'Customers Queries'
,p_parent_plug_id=>wwv_flow_api.id(250039456287668660)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_report_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"COMPCODE",',
'"CUSTOMER_ID",',
'"CUSTOMERS_ENQUIRES",',
'"DOCNUMBR",',
'"DOCTTYPE",',
'"SUBTTYPE"',
'from "#OWNER#"."CUSTOMERS_ENQUIRES"',
'where compcode=:COMPCODE',
'AND CUSTOMER_ID=:P318_CUSTMRID',
''))
,p_display_condition_type=>'NEVER'
,p_lazy_loading=>false
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_comment=>unistr('<div style=\201Doverflow: auto; max-height: 250px; %;\201C></div>')
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47162561371981349)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'CUSTOMERS_ENQUIRES'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47162952833981349)
,p_query_column_id=>2
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'CUSTOMERS_ENQUIRES'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47163358904981349)
,p_query_column_id=>3
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'CUSTOMERS_ENQUIRES'
,p_ref_column_name=>'CUSTOMER_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47163728176981350)
,p_query_column_id=>4
,p_column_alias=>'CUSTOMERS_ENQUIRES'
,p_column_display_sequence=>5
,p_column_heading=>'Customer Enquires'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_column_width=>120
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'CUSTOMERS_ENQUIRES'
,p_ref_column_name=>'CUSTOMERS_ENQUIRES'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47164144281981350)
,p_query_column_id=>5
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>6
,p_column_heading=>'Docnumbr'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'CUSTOMERS_ENQUIRES'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47164566612981350)
,p_query_column_id=>6
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Docttype'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'CUSTOMERS_ENQUIRES'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47164969628981350)
,p_query_column_id=>7
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Subttype'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'CUSTOMERS_ENQUIRES'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47165382376981350)
,p_query_column_id=>8
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250049441393668674)
,p_plug_name=>'Test Drive'
,p_parent_plug_id=>wwv_flow_api.id(250039456287668660)
,p_region_template_options=>'#DEFAULT#:i-h320:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>75
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_plug_header=>'<span style="font-size:0.9em"><u>Test Drive Info</u></span></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(271332254579031811)
,p_plug_name=>' Customers Interest'
,p_parent_plug_id=>wwv_flow_api.id(250039456287668660)
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<span style="font-size:0.9em"><u>Customer''s Interest</u></span>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250051783558668674)
,p_plug_name=>'Sales Info'
,p_parent_plug_id=>wwv_flow_api.id(250048986765668674)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h125:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>85
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<span style="font-size:0.9em"><u>Sales Info</u></span></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250031364799668654)
,p_plug_name=>'general info'
,p_parent_plug_id=>wwv_flow_api.id(250024995860668646)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--leftLabels'
,p_region_attributes=>'display-none=yes'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>35
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
,p_plug_comment=>'<span style="font-size:0.9em"><u>Customers Information</u></span></br>'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(275453553623164619)
,p_plug_name=>'test'
,p_parent_plug_id=>wwv_flow_api.id(250024995860668646)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>12
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(275459000066428359)
,p_plug_name=>'sal'
,p_parent_plug_id=>wwv_flow_api.id(250024995860668646)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>45
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47165781342981350)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(250041801349668661)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47183138445981356)
,p_button_sequence=>20
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47134550478981330)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(232001251057456698)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:280:&SESSION.::&DEBUG.:RP,280::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47134941481981330)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(232001251057456698)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P318_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47135403674981330)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(232001251057456698)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P318_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47135806094981330)
,p_button_sequence=>75
,p_button_plug_id=>wwv_flow_api.id(232001251057456698)
,p_button_name=>'CLEAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:318:&SESSION.::&DEBUG.:RP,237::'
,p_button_condition=>'P318_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47136215728981331)
,p_button_sequence=>65
,p_button_plug_id=>wwv_flow_api.id(232001251057456698)
,p_button_name=>'CREATE_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Customer'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:90::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(47203567828981366)
,p_branch_name=>'Go To Page 237'
,p_branch_action=>'f?p=&APP_ID.:318:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47136818906981331)
,p_name=>'P318_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(250024995860668646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47137229612981331)
,p_name=>'P318_COMPCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(250024995860668646)
,p_use_cache_before_default=>'NO'
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47137683022981331)
,p_name=>'P318_DOCTTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(250024995860668646)
,p_use_cache_before_default=>'NO'
,p_item_default=>'CS'
,p_source=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47138104011981333)
,p_name=>'P318_SUBTTYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(250024995860668646)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_source=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47138476796981333)
,p_name=>'P318_DOCNUMBR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(250024995860668646)
,p_use_cache_before_default=>'NO'
,p_source=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47138854540981334)
,p_name=>'P318_RAISEDBY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(250024995860668646)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47139298827981334)
,p_name=>'P318_OPRSTAMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(250024995860668646)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47139690956981334)
,p_name=>'P318_TIMSTAMP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(250024995860668646)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47140107234981334)
,p_name=>'P318_PARTYCD1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(250024995860668646)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47141621364981336)
,p_name=>'P318_DELRTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(188678126800864886)
,p_prompt=>'<font color="red">&COLM4.</font>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.NMCODDES d,C.NMSOFCDE r',
'FROM nmcodmas C',
'WHERE C.NMHRDCDE = ''CTY''',
'AND C.MODLCODE = ''NM''',
'and c.COMPCODE = :COMPCODE ',
'AND C.NMSOFCDE IN (''IND'',''COR'')'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47142035454981336)
,p_name=>'P318_OCCUPATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(188678126800864886)
,p_prompt=>'Occupation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Bussiness;BUSSINESS,Private Jobs;PRIVATE JOBS,Govt. Jobs;GOVT. JOBS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47142451816981336)
,p_name=>'P318_PRTYNAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(188678126800864886)
,p_prompt=>'<font color="red">Customer Name</font>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47142830193981336)
,p_name=>'P318_PHONENUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(188678126800864886)
,p_prompt=>'Office Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47143250600981336)
,p_name=>'P318_MOBILENO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(188678126800864886)
,p_prompt=>'Mobile No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47143653042981336)
,p_name=>'P318_IDENTIFY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(188678126800864886)
,p_prompt=>'National Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47144069079981338)
,p_name=>'P318_WHSZONFK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(188678126800864886)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47144428297981338)
,p_name=>'P318_PARTYCDE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(188678126800864886)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_partycode varchar2(20);',
'begin',
'Select        upper(''CU'')|| lpad(to_char(max(to_number(substr(PARTYCD1,3,5)))+1),4,0) a ',
'into v_partycode',
'      from             NMcusvlg;',
'     -- where upper(partytyp)=upper(''CU'');',
'      return v_partycode;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'PARTYCD1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47144826176981339)
,p_name=>'P318_PARTYAD2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(188678126800864886)
,p_prompt=>'Permanent Address'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>300
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47145244348981339)
,p_name=>'P318_PARTYAD1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(188678126800864886)
,p_prompt=>'Present Address'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47145991391981341)
,p_name=>'P318_WARECODE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(250036203412668657)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_warecode varchar2(10);',
'begin',
'SELECT DISTINCT  c.WARECODE into v_warecode',
'    FROM nmwhsmas j, sycstacc c',
'   WHERE     j.compcode = :compcode',
'         AND j.compcode = c.compcode',
'         AND j.WARECODE = c.WARECODE',
'         AND c.grupcode = :APP_USER',
'         AND nvl(J.MAINSTOR,''N'') = ''Y''',
'         AND j.WARECODE not like (''D%'');',
'         return v_warecode;',
'         exception',
'         when no_data_found then',
'         v_warecode:=null;',
'         when too_many_rows then',
'         v_warecode:=null;',
'         when others then',
'         v_warecode:=null;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<font color="red">&COLM5.</font>'
,p_source=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT waredesc D,WARECODE',
'FROM',
'( SELECT DISTINCT INITCAP (J.WAREDESC)||'' (''||c.WARECODE||'')'' waredesc, c.WARECODE, 1 ROWN',
'    FROM nmwhsmas j, sycstacc c',
'   WHERE     j.compcode = :compcode',
'         AND j.compcode = c.compcode',
'         AND j.WARECODE = c.WARECODE',
'         AND c.grupcode = :APP_USER',
'         AND nvl(J.MAINSTOR,''N'') = ''Y''',
' UNION ALL',
'  SELECT DISTINCT INITCAP (J.WAREDESC)||'' (''||c.WARECODE||'')'' waredesc, c.WARECODE, 2 ROWN',
'    FROM nmwhsmas j, sycstacc c',
'   WHERE     j.compcode = :compcode',
'         AND j.compcode = c.compcode',
'         AND j.WARECODE = c.WARECODE',
'         AND c.grupcode = :APP_USER',
'         AND nvl(J.MAINSTOR,''N'') = ''N''',
'         AND j.WARECODE not like (''D%'')',
'ORDER BY ROWN)'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
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
 p_id=>wwv_flow_api.id(47146317933981341)
,p_name=>'P318_CUSTMRID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(250036203412668657)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_customer varchar2(20);',
'begin',
'if :P318_DOCNUMBR is  null then',
'select TO_CHAR (sysdate, ''rrrrmmdd'')|| LPAD (seq_custmrid.NEXTVAL, 5, 0) a',
'into v_customer',
'from dual;',
'return v_customer;',
'else',
'return null;',
'end if;',
'',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'CUSTMRID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47146788409981341)
,p_name=>'P318_SMANCODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(250036203412668657)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_smnmas varchar2(10);',
'begin',
'SELECT DISTINCT      J.SMANCODE into v_smnmas',
'  FROM nmsmnmas j,',
'       (SELECT c.NMCODDES, S.USERCODE, c.COMPCODE',
'          FROM syusrmas s, SYEMPMAS e, NMCODMAS c',
'         WHERE     e.PYEMPCDE = s.USERCODE',
'               AND e.PYCOMCDE = s.DIVNCODE',
'               AND c.COMPCODE = S.DIVNCODE',
'               AND NMHRDCDE = ''DEG''',
'               AND NMSOFCDE = PYDEPCDE) q',
' WHERE     j.compcode = :compcode',
'       AND J.SMANCODE = q.usercode(+)',
'       AND J.COMPCODE = q.COMPCODE(+)',
'       AND J.COSTCODE IN',
'              (SELECT S.COSTCODE',
'                 FROM NMWHSMAS S',
'                WHERE S.COMPCODE = :COMPCODE',
'                      AND S.WARECODE = :P318_WARECODE)',
'      AND   SMANCODE=:APP_USER;',
'      ',
'      return v_smnmas;',
'      exception',
'         when no_data_found then',
'         v_smnmas:=null;',
'         when too_many_rows then',
'         v_smnmas:=null;',
'         when others then',
'         v_smnmas:=null;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<font color="red">&COLM6.</font>'
,p_source=>'SMANCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'          INITCAP (J.SMANNAME)',
'       || ''-''',
'       || j.SMANCODE',
'       || ''-''',
'       || NVL (INITCAP (q.NMCODDES), ''N/A'')',
'          salesman,',
'       J.SMANCODE',
'  FROM nmsmnmas j,',
'       (SELECT c.NMCODDES, S.USERCODE, c.COMPCODE',
'          FROM syusrmas s, SYEMPMAS e, NMCODMAS c',
'         WHERE     e.PYEMPCDE = s.USERCODE',
'               AND e.PYCOMCDE = s.DIVNCODE',
'               AND c.COMPCODE = S.DIVNCODE',
'               AND NMHRDCDE = ''DEG''',
'               AND NMSOFCDE = PYDEPCDE) q',
' WHERE     j.compcode = :compcode',
'       AND J.SMANCODE = q.usercode(+)',
'       AND J.COMPCODE = q.COMPCODE(+)',
'       AND J.COSTCODE IN',
'              (SELECT S.COSTCODE',
'                 FROM NMWHSMAS S',
'                WHERE S.COMPCODE = :COMPCODE',
'                      AND S.WARECODE = :P318_WARECODE)  --,:P318_WRECDE))'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P318_WARECODE'
,p_ajax_items_to_submit=>'P318_WARECODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT smanname sales_person, smancode',
'  FROM nmsmnmas',
' WHERE compcode = :compcode '))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47147162099981341)
,p_name=>'P318_SMNNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(250036203412668657)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47147534774981342)
,p_name=>'P318_WHRNAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(250036203412668657)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47147929721981342)
,p_name=>'P318_DOCTDATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(250036203412668657)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Visit Date'
,p_source=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>255
,p_tag_attributes=>'readonly="readonly"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47148403789981342)
,p_name=>'P318_NMPRDTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(250036203412668657)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">&COLM7.</font>'
,p_source=>'NMPRDTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''PTY''',
' and compcode=:COMPCODE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'COMPCODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>10
,p_cMaxlength=>80
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47148810507981342)
,p_name=>'P318_VISITYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(250036203412668657)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Source of Enq.'
,p_source=>'SRCOFENQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.NMCODDES d, C.NMSOFCDE',
'from nmcodmas c',
'where C.COMPCODE = :compcode',
'and C.NMHRDCDE = ''ENQ'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47149197428981342)
,p_name=>'P318_CONTACT_MODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(250036203412668657)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contact Mode'
,p_source=>'CONTACT_MODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STATIC2:Walk In;WI,eMail;EM,Reference;RF,Outdoor Sales Call;OS,Over Phone;OP,Visit;VS,SMS;SM,Corporate Presentation;CP,',
'Showroom Appointment;SA,Test Drive;TD,Internet;IN,Others;OT'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47149524165981342)
,p_name=>'P318_WRECDE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(250036203412668657)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47149969925981342)
,p_name=>'P318_PTYP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(250036203412668657)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mode'
,p_source=>'PURCHASE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  NMCODDES,NMSOFCDE from nmcodmas a',
'where a.compcode=:COMPCODE',
'and a.NMHRDCDE=''MOS''',
'and a.MODLCODE=''NM''',
''))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NMCODDES AS D, NMSOFCDE AS R',
'  FROM NMCODMAS',
' WHERE NMHRDCDE = ''PTY'''))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47150335002981342)
,p_name=>'P318_SALES_POTENTIAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(250036203412668657)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sales Potential'
,p_source=>'SALES_POTENTIAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1;1,2;2,3;3,4;4,5;5'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style=''width: 100%;'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47150773317981344)
,p_name=>'P318_POSBUYDTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(250036203412668657)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Possible<br>Pur. Date.'
,p_source=>'POSBUYDTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47151131273981344)
,p_name=>'P318_CATEGORR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(250036203412668657)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category'
,p_source=>'CATEGORR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''CTG''',
' and compcode=:COMPCODE'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47151520486981344)
,p_name=>'P318_USGSEGMT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(250036203412668657)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Usage Segment'
,p_source=>'USGSEGMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nmcoddes,nmsofcde',
'from nmcodmas',
'where compcode=:compcode',
'and modlcode=''NM''',
'and nmhrdcde = ''AMT'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47152006124981344)
,p_name=>'P318_WHSZONFK_1'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(250036203412668657)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red"> Zone</font>'
,p_source=>'WHSZONFK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.AREA_NAME_TREE_TYPE,s.WHSZONPK',
'from VW_NMWHZNMAS s',
'where S.COMPCODE = :compcode',
'and s.WHSZONPK in (select I.WHSZONFK',
'                               from nmprdhdi i ',
'                               where I.SMANCODE = :P318_SMANCODE --nvl(:P318_SMANCODE,i.SMANCODE)',
'                                and to_date(:P318_DOCTDATE,''dd-mon-yyyy'') between to_date(I.STARTDATE,''dd-mon-yyyy'') and to_date(I.ENDDATE,''dd-mon-yyyy''))'))
,p_lov_cascade_parent_items=>'P318_SMANCODE,P318_DOCTDATE'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_cattributes_element=>'style=''width:100%;'''
,p_tag_attributes=>'style=''width:100%;'''
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47152678717981344)
,p_name=>'P318_CURRENT_BRAND'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(250046629719668672)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Brand & Model'
,p_source=>'CURRENT_BRAND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes d,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''COM'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47153040033981344)
,p_name=>'P318_CURRENT_MODEL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(250046629719668672)
,p_use_cache_before_default=>'NO'
,p_prompt=>' '
,p_source=>'CURRENT_MODEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select modelnam d,modlcode',
'from vwnmitem',
'where compcode = :compcode ',
'and nvl(commgrup,''0'')=nvl(:P318_CURRENT_BRAND,nvl(commgrup,''0''))',
'order by 1'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47153506060981344)
,p_name=>'P318_PURCHASED_FROM'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(250046629719668672)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Purchased From'
,p_source=>'PURCHASED_FROM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>512
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47153889747981344)
,p_name=>'P318_PURCHASE_DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(250046629719668672)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date'
,p_source=>'PURCHASE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47154310456981344)
,p_name=>'P318_VHMADEIN'
,p_item_sequence=>181
,p_item_plug_id=>wwv_flow_api.id(250046629719668672)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Made By'
,p_source=>'VHMADEIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47154716055981344)
,p_name=>'P318_VHCLYEAR'
,p_item_sequence=>182
,p_item_plug_id=>wwv_flow_api.id(250046629719668672)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Year'
,p_source=>'VHCLYEAR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47155041039981344)
,p_name=>'P318_AVERAGE_MILEAGE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(250046629719668672)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mileage'
,p_source=>'AVERAGE_MILEAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47155473173981345)
,p_name=>'P318_ALTRNTVE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(250046629719668672)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Alternative'
,p_source=>'ALTRNTVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47155897093981345)
,p_name=>'P318_SRSOFUND'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(250046629719668672)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Source of fund'
,p_source=>'SRSOFUND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47156255987981345)
,p_name=>'P318_FUNDSTAT'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(250046629719668672)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fund Status'
,p_source=>'FUNDSTAT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47156646671981345)
,p_name=>'P318_ETBCUSTM'
,p_is_required=>true
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(250046629719668672)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">ETB (Eicher<br>Truck Bus)</font>'
,p_source=>'ETBCUSTM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_tag_attributes=>'title="Customer total usable cars..." '
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47157047335981345)
,p_name=>'P318_CMPETION'
,p_is_required=>true
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(250046629719668672)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Compe<br>tion</font>'
,p_source=>'CMPETION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>200
,p_tag_attributes=>'title="Customer total usable cars of this brand..."style=''width:200px;'''
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47157516499981345)
,p_name=>'P318_PROFILEE'
,p_is_required=>true
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(250046629719668672)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Profile</font>'
,p_source=>'PROFILEE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select S.NMCODDES d,S.NMSOFCDE',
'from nmcodmas s',
'where S.COMPCODE = :compcode',
'and S.NMHRDCDE = ''STU''',
'and (:P318_ETBCUSTM +:P318_CMPETION) between s.SERIALNM and s.NMAMOUNT;'))
,p_lov_cascade_parent_items=>'P318_ETBCUSTM,P318_CMPETION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'style=''width: 500px;'' title="Customer total usable cars..." #0372F0;font-weight:bold;margin-top:0%;background-color:'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47157878999981345)
,p_name=>'P318_PIPLNSTS'
,p_is_required=>true
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(250046629719668672)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Pipline<br>Status</font>'
,p_source=>'PIPLNSTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.NMCODDES d, C.NMSOFCDE',
'from nmcodmas c',
'where C.COMPCODE = :compcode',
'and C.NMHRDCDE = ''PIP'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style=''width:200px;'''
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47158235853981345)
,p_name=>'P318_AREA'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(250046629719668672)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   areadesc "Area Name",areacode "Area Cocde"',
'    FROM nmwhznms z',
'   WHERE z.compcode = :compcode AND locatype = ''UPZ'' AND areadesc IS NOT NULL',
'ORDER BY 1'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47159821959981347)
,p_name=>'P318_WEB_SITE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(123601255189183531)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Web site'
,p_source=>'WEB_SITE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47160292174981347)
,p_name=>'P318_TAGS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(123601255189183531)
,p_use_cache_before_default=>'NO'
,p_source=>'TAGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47160617715981347)
,p_name=>'P318_CATEGORY_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(123601255189183531)
,p_use_cache_before_default=>'NO'
,p_source=>'CATEGORY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47161046604981347)
,p_name=>'P318_LINKEDIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(123601255189183531)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Linkedin'
,p_source=>'LINKEDIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47161418568981347)
,p_name=>'P318_FACEBOOK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(123601255189183531)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Facebook'
,p_source=>'FACEBOOK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47161905137981349)
,p_name=>'P318_TWITTER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(123601255189183531)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Twitter'
,p_source=>'TWITTER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47167703829981350)
,p_name=>'P318_TEST_DRIVE_FLAG'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(250049441393668674)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Test Drive Flag'
,p_source=>'TEST_DRIVE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="width:90%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47168082367981350)
,p_name=>'P318_TEST_DRIVE_MODEL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(250049441393668674)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Test Drive Model'
,p_source=>'TEST_DRIVE_MODEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''MOD'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47168509531981350)
,p_name=>'P318_TEST_DRIVE_DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(250049441393668674)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Test Drive Date'
,p_source=>'TEST_DRIVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>25
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47168840761981352)
,p_name=>'P318_TEST_BOOKING_DATE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(250049441393668674)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Test Booking Date'
,p_source=>'TEST_BOOKING_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>25
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47169306326981352)
,p_name=>'P318_CUSTOMER_TEST_REMARKS'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(250049441393668674)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Remarks'
,p_source=>'CUSTOMER_TEST_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>27
,p_cMaxlength=>512
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47170001983981352)
,p_name=>'P318_ITEMCODE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(271332254579031811)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">&COLM3.</font>'
,p_source=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT c.ITEMDES1 d,C.ITEMCODE',
'from VWNMITEM c',
'where C.COMPCODE = :compcode',
'--and c.finishgd = ''Y'' ',
'--and nvl(c.commgrup,''0'')=:P318_INTERESTED_BRAND',
'--and nvl(C.MODLCODE,''C'') = :P318_INTERESTED_MODEL',
'/*and nvl(c.commgrup,''0'')=nvl(:P318_INTERESTED_BRAND,nvl(c.commgrup,''0''))',
'and nvl(C.MODLCODE,''C'') = nvl(:INTERESTED_MODEL,nvl(C.MODLCODE,''C''))*/'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style=''width: 500px;;'''
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47170351483981352)
,p_name=>'P318_INTERESTED_MODEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(271332254579031811)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&COLM2.'
,p_source=>'INTERESTED_MODEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''STY''',
' and compcode=:COMPCODE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P318_INTERESTED_MODEL'
,p_ajax_items_to_submit=>'P318_INTERESTED_MODEL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47170760645981352)
,p_name=>'P318_INTERESTED_BRAND'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(271332254579031811)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&COLM1.'
,p_source=>'INTERESTED_BRAND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''MOD''  and MODLCODE = ''NM'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
 p_id=>wwv_flow_api.id(47171119209981352)
,p_name=>'P318_INTERIOR_COLOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(271332254579031811)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interior Color'
,p_source=>'INTERIOR_COLOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''CLR'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47171593824981352)
,p_name=>'P318_EXTERIOR_COLOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(271332254579031811)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Exterior Color'
,p_source=>'EXTERIOR_COLOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''CLR'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47171983153981352)
,p_name=>'P318_FUEL_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(271332254579031811)
,p_use_cache_before_default=>'NO'
,p_item_default=>'DS'
,p_prompt=>'Fuel Type'
,p_source=>'FUEL_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Petrol;PT,Mobil;MB,Gasoline;GL,Diesel;DS,Kerosene;KS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="width:100%;"'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47172651992981353)
,p_name=>'P318_CUSTOMER_REMARKS_SALES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(250051783558668674)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Remarks'
,p_source=>'CUSTOMER_REMARKS_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>512
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47173095849981353)
,p_name=>'P318_SALESMAN_REMARKS_SALES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(250051783558668674)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salesman Remarks'
,p_source=>'SALESMAN_REMARKS_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>27
,p_cMaxlength=>512
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47173507496981353)
,p_name=>'P318_REFERED_BY_SALES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(250051783558668674)
,p_use_cache_before_default=>'NO'
,p_source=>'REFERED_BY_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47173906411981353)
,p_name=>'P318_NEXT_APOINTMENT_ON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(250051783558668674)
,p_use_cache_before_default=>'NO'
,p_source=>'NEXT_APOINTMENT_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47174230296981353)
,p_name=>'P318_VERIFIED_FLAG_SALES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(250051783558668674)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_FLAG_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47174710969981353)
,p_name=>'P318_VERIFIED_BY_SALES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(250051783558668674)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47175414291981355)
,p_name=>'P318_CUSTOMER_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(250031364799668654)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47175772349981355)
,p_name=>'P318_DESIGNATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(250031364799668654)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47176154303981355)
,p_name=>'P318_PRESENT_ADDR'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(250031364799668654)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47176594165981355)
,p_name=>'P318_CONTACT_PERSON'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(250031364799668654)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47177015570981355)
,p_name=>'P318_HOME_PHONE'
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_api.id(250031364799668654)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47177400034981355)
,p_name=>'P318_MOBILE_NO'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_api.id(250031364799668654)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47177794151981355)
,p_name=>'P318_OFFICE_PHONE'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_api.id(250031364799668654)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47178196999981355)
,p_name=>'P318_TEFAXNUM'
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_api.id(250031364799668654)
,p_use_cache_before_default=>'NO'
,p_source=>'TEFAXNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47178584554981355)
,p_name=>'P318_CUSTMAIL'
,p_item_sequence=>91
,p_item_plug_id=>wwv_flow_api.id(250031364799668654)
,p_use_cache_before_default=>'NO'
,p_source=>'CUSTMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47178926520981355)
,p_name=>'P318_CUST_COMPANY'
,p_item_sequence=>101
,p_item_plug_id=>wwv_flow_api.id(250031364799668654)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47179353936981355)
,p_name=>'P318_INDUSTRY_TYPE'
,p_item_sequence=>111
,p_item_plug_id=>wwv_flow_api.id(250031364799668654)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47179755819981355)
,p_name=>'P318_CITY_NAME'
,p_item_sequence=>121
,p_item_plug_id=>wwv_flow_api.id(250031364799668654)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47180141335981356)
,p_name=>'P318_CITY_CODE'
,p_item_sequence=>131
,p_item_plug_id=>wwv_flow_api.id(250031364799668654)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47180889170981356)
,p_name=>'P318_TRACNO'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(275453553623164619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47181268884981356)
,p_name=>'P318_MOBILNO_1'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(275453553623164619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47181657444981356)
,p_name=>'P318_MOBILNO'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(275453553623164619)
,p_prompt=>'Mobile No'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT CUSTMOBL||''/''||CUSTMOBL Mobile,CUSTMOBL',
'  FROM nmmrkcus',
' WHERE compcode = :compcode',
'  and CUSTMOBL is not null',
'  union all',
'  ( SELECT  CUSTMOBL Mobile,CUSTMOBL',
'  FROM nmcusmas',
' WHERE compcode = :compcode',
'  and CUSTMOBL is not null',
'  minus',
'  SELECT  CUSTMOBL Mobile,CUSTMOBL',
'  FROM nmmrkcus',
' WHERE compcode = :compcode',
'  and CUSTMOBL is not null)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P237_CUSTMID'')"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_api.id(47182025302981356)
,p_name=>'P318_NATIONLID'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(275453553623164619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47182437498981356)
,p_name=>'P318_CUSTMID'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(275453553623164619)
,p_prompt=>'Customer ID'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT custmrid,Custname,Custadr1 , custadr2,IDENTIFY,custphon,CUSTMOBL,Custmail ',
'  FROM nmmrkcus',
' WHERE compcode = :compcode',
'  union all',
'  ( SELECT custmrid,Custname,Custadr1 , custadr2,IDENTIFY,custphon,CUSTMOBL,Custmail ',
'  FROM nmcusmas',
' WHERE compcode = :compcode',
'  minus',
'SELECT custmrid,Custname,Custadr1 , custadr2,IDENTIFY,custphon,CUSTMOBL,Custmail ',
'  FROM nmmrkcus',
' WHERE compcode = :compcode)'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'2,1'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47183671556981356)
,p_validation_name=>'P318_SMANCODE'
,p_validation_sequence=>10
,p_validation=>'P318_SMANCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(47135403674981330)
,p_associated_item=>wwv_flow_api.id(47146788409981341)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47187206226981358)
,p_name=>'show hide test drive info'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P318_TEST_DRIVE_FLAG'
,p_condition_element=>'P318_TEST_DRIVE_FLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47187664170981358)
,p_event_id=>wwv_flow_api.id(47187206226981358)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P318_TEST_DRIVE_MODEL,P318_TEST_DRIVE_DATE,P318_TEST_BOOKING_DATE,P318_CUSTOMER_TEST_REMARKS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47188126917981358)
,p_event_id=>wwv_flow_api.id(47187206226981358)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P318_TEST_DRIVE_MODEL,P318_TEST_DRIVE_DATE,P318_TEST_BOOKING_DATE,P318_CUSTOMER_TEST_REMARKS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47188593001981358)
,p_name=>'fetch area and city '
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P318_AREA'
,p_condition_element=>'P318_AREA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47189027572981358)
,p_event_id=>wwv_flow_api.id(47188593001981358)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'/*',
'   BEGIN',
'      SELECT areadesc',
'        INTO :P318_CITY_NAME',
'        FROM nmwhznms z',
'       WHERE z.compcode = :COMPCODE',
'         AND locatype = ''UPZ''',
'         AND areacode = :P318_AREA',
'         AND areadesc IS NOT NULL;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         raise_application_error (-20001, SQLERRM);',
'   END;',
'*/',
'   BEGIN',
'      SELECT areacode, areadesc',
'        INTO :P318_CITY_CODE, :P318_CITY_NAME',
'        FROM nmwhznms z',
'       WHERE z.compcode = :compcode',
'         AND z.areacode =',
'                     (SELECT zonlcode',
'                        FROM nmwhznms a',
'                       WHERE a.compcode = :COMPCODE ',
'                         AND a.areacode = :P318_AREA)',
'         AND z.locatype = ''ZLA''',
'         AND areadesc IS NOT NULL;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         raise_application_error (-20002, SQLERRM);',
'   END;',
'END;'))
,p_attribute_02=>'P318_AREA'
,p_attribute_03=>'P318_CITY_CODE,P318_CITY_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47189421122981358)
,p_name=>'check_exists'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P318_MOBILNO_COPY'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47189973862981359)
,p_event_id=>wwv_flow_api.id(47189421122981358)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' vc number;',
'begin',
'',
':P318_NEW := :P318_MOBILNO_COPY;',
'/*',
' SELECT count(*)',
' into vc',
'      FROM nmmrkcus',
'    WHERE compcode = :COMPCODE AND CUSTMOBL = :P318_MOBILNO;',
'   if vc=0 then',
'    raise_application_error(-20001,''This customer not exists...'');',
'   else',
'        BEGIN',
'           SELECT CUSTMRID,',
'                  CUSTNAME,',
'                  CUSTADR1,',
'                  CONTPERS,',
'                  CUSTPHON,',
'                  CUSTMOBL,',
'                  TEFAXNUM,',
'                  CUSTMAIL,',
'                  PARTYCDE',
'             INTO :P318_CUSTMRID,',
'                  :P318_CUSTOMER_CODE,',
'                  :P318_PRESENT_ADDR,',
'                  :P318_CONTACT_PERSON,',
'                  :P318_HOME_PHONE,',
'                  :P318_OFFICE_PHONE,',
'                  :P318_TEFAXNUM,',
'                  :P318_CUSTMAIL,',
'                  :P318_PARTYCDE',
'             FROM nmmrkcus',
'            WHERE compcode = :COMPCODE AND CUSTMOBL = :P318_MOBILNO;',
'',
'          select distinct smancode ',
'           into :P318_SMANCODE',
'           from nmsmnmas ',
'           where username=:APP_USER',
'             and SMANTYPE = ''CO'';	',
'',
'            begin',
'             SELECT PRTYNAME,',
'                  DELRTYPE,',
'                  IDENTIFY,',
'                  MOBILENO,',
'                  PARTYAD2,',
'                  PARTYAD1,',
'                  WHSZONFK,',
'                  OCCUPATION,',
'                  phonenum',
'             INTO :P318_PRTYNAME,',
'                  :P318_DELRTYPE,',
'                  :P318_IDENTIFY,',
'                  :P318_MOBILENO,',
'                  :P318_PARTYAD2,',
'                  :P318_PARTYAD1,',
'                  :P318_WHSZONFK,',
'                  :P318_OCCUPATION,',
'                  :P318_phonenum',
'             FROM nmmrkpty',
'            WHERE compcode = :COMPCODE AND PARTYCDE = :P318_PARTYCDE;',
'',
'          end;',
'        END;',
'   end if;',
'*/',
'end;'))
,p_attribute_02=>'P318_MOBILNO_COPY'
,p_attribute_03=>'P318_WEB_SITE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>'P237_OCCUPATION,P237_WHSZONFK_1,P237_PARTYAD1,P237_PARTYAD2,P237_MOBILENO,P237_IDENTIFY,P237_DELRTYPE,P237_PRTYNAME,P237_SMANCODE,P237_PARTYCDE,P237_CUSTMAIL,P237_TEFAXNUM,P237_OFFICE_PHONE,P237_HOME_PHONE,P237_CONTACT_PERSON,P237_PRESENT_ADDR,P237_C'
||'USTOMER_CODE,P237_CUSTMRID'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47190366080981359)
,p_name=>'salesman assign on page load when doc number is null'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47190817814981359)
,p_event_id=>wwv_flow_api.id(47190366080981359)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_smncde varchar2(20);',
'begin',
'if :P318_DOCNUMBR is null then',
'select distinct SMANCODE into :P318_SMANCODE from nmsmnmas',
'where COMPCODE=:COMPCODE',
'and  USERNAME=:APP_USER;',
'end if;',
'end;'))
,p_attribute_02=>'P318_DOCNUMBR'
,p_attribute_03=>'P318_SMANCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47191402416981359)
,p_event_id=>wwv_flow_api.id(47190366080981359)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P318_DOCNUMBR is null then',
'select distinct SMANNAME into :P318_SMNNAME from nmsmnmas',
'where SMANCODE=:P318_SMANCODE;',
'end if;',
'end;'))
,p_attribute_02=>'P318_SMANCODE'
,p_attribute_03=>'P318_SMNNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47191790245981359)
,p_name=>'Change mobile No.'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P318_MOBILNO_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47192261395981359)
,p_event_id=>wwv_flow_api.id(47191790245981359)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' vc number;',
'begin',
'begin',
'    SELECT count(*)',
'     into vc',
'      FROM nmmrkcus',
'    WHERE compcode = :COMPCODE AND CUSTMOBL = :P318_MOBILNO_1;',
'  exception',
'  when no_data_found then',
'    raise_application_error(-20001,sqlerrm);',
' end;',
'   if vc=0 then',
'    raise_application_error(-20001,''This customer not exists...'');',
'   else',
'        BEGIN',
'           SELECT CUSTMRID,',
'                  CUSTNAME,',
'                  CUSTADR1,',
'                  CONTPERS,',
'                  CUSTPHON,',
'                  CUSTMOBL,',
'                  TEFAXNUM,',
'                  CUSTMAIL,',
'                  PARTYCDE',
'             INTO :P318_CUSTMRID,',
'                  :P318_CUSTOMER_CODE,',
'                  :P318_PRESENT_ADDR,',
'                  :P318_CONTACT_PERSON,',
'                  :P318_HOME_PHONE,',
'                  :P318_OFFICE_PHONE,',
'                  :P318_TEFAXNUM,',
'                  :P318_CUSTMAIL,',
'                  :P318_PARTYCDE',
'             FROM nmmrkcus',
'            WHERE compcode = :COMPCODE AND CUSTMOBL = :P318_MOBILNO_1;',
'',
'          select distinct smancode ',
'           into :P318_SMANCODE',
'           from nmsmnmas ',
'           where username=:APP_USER',
'             and SMANTYPE = ''CO'';	',
'',
'            begin',
'             SELECT PRTYNAME,',
'                  DELRTYPE,',
'                  IDENTIFY,',
'                  MOBILENO,',
'                  PARTYAD2,',
'                  PARTYAD1,',
'                  WHSZONFK,',
'                  OCCUPATION,',
'                  phonenum',
'             INTO :P318_PRTYNAME,',
'                  :P318_DELRTYPE,',
'                  :P318_IDENTIFY,',
'                  :P318_MOBILENO,',
'                  :P318_PARTYAD2,',
'                  :P318_PARTYAD1,',
'                  :P318_WHSZONFK,',
'                  :P318_OCCUPATION,',
'                  :P318_phonenum',
'             FROM nmmrkpty',
'            WHERE compcode = :COMPCODE AND PARTYCDE = :P318_PARTYCDE;',
'',
'          end;',
'        END;',
'   end if;',
' exception',
' when no_data_found then',
'      raise_application_error(-20001,sqlerrm);',
'end;'))
,p_attribute_02=>'P318_MOBILNO_1'
,p_attribute_03=>'P318_CUSTMRID,P318_CUSTOMER_CODE,P318_PRESENT_ADDR,P318_CONTACT_PERSON,P318_HOME_PHONE,P318_OFFICE_PHONE,P318_TEFAXNUM,P318_CUSTMAIL,P318_PARTYCDE,P318_PRTYNAME,P318_DELRTYPE,P318_IDENTIFY,P318_MOBILENO,P318_PARTYAD2,P318_PARTYAD1,P318_WHSZONFK_1,P31'
||'8_OCCUPATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47192693124981361)
,p_name=>'Change National Id '
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P318_NATIONLID'
,p_condition_element=>'P318_NATIONLID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47193192290981361)
,p_event_id=>wwv_flow_api.id(47192693124981361)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT CUSTMRID',
'  INTO :P318_CUSTMRID',
'  FROM nmmrkcus',
' WHERE compcode = :COMPCODE',
'AND IDENTIFY= :P318_NATIONLID;',
'end;'))
,p_attribute_02=>'P318_NATIONLID'
,p_attribute_03=>'P318_CUSTMRID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47193575102981361)
,p_name=>'Change Customer ID'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P318_CUSTMID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47194103707981361)
,p_event_id=>wwv_flow_api.id(47193575102981361)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if :P318_CUSTMID is not null then',
'SELECT Custname,',
'       Custadr1 || '','' || custadr2 Address,',
'      CONTPERS,',
'PARTYCDE,',
'       custphon Phone,',
'       CUSTMOBL Mobile,',
'       Custmail Email,',
'      TEFAXNUM,',
'      PARTYCDE',
'  INTO  :P318_CUSTOMER_CODE,:P318_PRESENT_ADDR, :P318_CONTACT_PERSON,:P137_PARTYCD1,',
'        :P318_HOME_PHONE, :P318_MOBILE_NO, :P318_CUSTMAIL,:P318_TEFAXNUM,:P318_PARTYCDE',
'  FROM nmmrkcus',
' WHERE compcode = :COMPCODE AND custmrid = :P318_CUSTMID;',
' end if;',
'if :P318_PARTYCDE is not null then',
'  begin',
'     SELECT PRTYNAME,',
'          DELRTYPE,',
'          IDENTIFY,',
'          MOBILENO,',
'          PARTYAD2,',
'          PARTYAD1,',
'          WHSZONFK,',
'          OCCUPATION,',
'          phonenum',
'     INTO :P318_PRTYNAME,',
'          :P318_DELRTYPE,',
'          :P318_IDENTIFY,',
'          :P318_MOBILENO,',
'          :P318_PARTYAD2,',
'          :P318_PARTYAD1,',
'          :P318_WHSZONFK,',
'          :P318_OCCUPATION,',
'          :P318_phonenum',
'     FROM nmmrkpty',
'    WHERE compcode = :COMPCODE AND PARTYCDE = :P318_PARTYCDE;',
'   end;',
'end if;',
'EXCEPTION',
' WHEN no_data_found',
'   THEN',
'      raise_application_error (-20001, SQLERRM||'' ''||:P318_CUSTMID);',
' WHEN too_many_rows',
'   THEN',
'      raise_application_error (-20001, SQLERRM||'' ''||:P318_CUSTMID);',
'   WHEN OTHERS',
'   THEN',
'      raise_application_error (-20001, SQLERRM);',
'END;'))
,p_attribute_02=>'P318_CUSTMID,P318_PARTYCDE'
,p_attribute_03=>'P318_CUSTOMER_CODE,P318_PRESENT_ADDR,P318_CONTACT_PERSON,P137_PARTYCD1,P318_HOME_PHONE,P318_MOBILE_NO,P318_CUSTMAIL,P318_TEFAXNUM,P318_PARTYCDE,P318_PRTYNAME,P318_DELRTYPE,P318_IDENTIFY,P318_MOBILENO,P318_PARTYAD2,P318_PARTYAD1,P318_WHSZONFK,P318_OCC'
||'UPATION,P318_PHONENUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47194435232981363)
,p_name=>'Change smanname'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P318_SMANCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47194981651981363)
,p_event_id=>wwv_flow_api.id(47194435232981363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  SELECT DISTINCT INITCAP (J.SMANNAME) ',
'   into :P318_SMNNAME',
'    FROM nmsmnmas j',
'   WHERE j.compcode = :compcode',
'     and J.SMANCODE = :P318_SMANCODE;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_attribute_02=>'P318_SMANCODE'
,p_attribute_03=>'P318_SMNNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47195358659981363)
,p_name=>'add rows javascript'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47195839948981363)
,p_event_id=>wwv_flow_api.id(47195358659981363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $mydiv = $("#f14_0011");',
'    if ($mydiv.length){',
'/*alert(''test'');*/',
'}',
'else',
'{',
'for (i = 0; i <=4; i++)',
'{',
'javascript:addRow();',
'};',
'};',
'/*document.getElementById(''ITEMDESC'').readOnly = true;*/',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47196245497981363)
,p_name=>'Change Tracking No'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P318_TRACNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47196781230981363)
,p_event_id=>wwv_flow_api.id(47196245497981363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'      SELECT distinct s.CUSTMRID,',
'          s.CUSTNAME,',
'          s.CUSTADR1,',
'          s.CONTPERS,',
'          s.CUSTPHON,',
'          s.CUSTMOBL,',
'          s.TEFAXNUM,',
'          s.CUSTMAIL,',
'          s.PARTYCDE',
'     INTO :P318_CUSTMRID,',
'          :P318_CUSTOMER_CODE,',
'          :P318_PRESENT_ADDR,',
'          :P318_CONTACT_PERSON,',
'          :P318_HOME_PHONE,',
'          :P318_OFFICE_PHONE,',
'          :P318_TEFAXNUM,',
'          :P318_CUSTMAIL,',
'          :P318_PARTYCDE',
'      FROM nmmrkcus s,nmcusvlg g',
'    WHERE s.compcode = :COMPCODE --AND CUSTMOBL = :P318_MOBILNO',
'     and S.CUSTMRID = G.CUSTMRID',
'     and G.DOCNUMBR = :P318_TRACNO;',
'     ',
'  select distinct smancode ',
'   into :P318_SMANCODE',
'   from nmsmnmas ',
'   where username=:APP_USER',
'     and SMANTYPE = ''CO'';',
'-- RAISE_APPLIIA',
' begin',
'     SELECT distinct PRTYNAME,',
'          DELRTYPE,',
'          IDENTIFY,',
'          MOBILENO,',
'          PARTYAD2,',
'          PARTYAD1,',
'          WHSZONFK,',
'          OCCUPATION,',
'          phonenum',
'     INTO :P318_PRTYNAME,',
'          :P318_DELRTYPE,',
'          :P318_IDENTIFY,',
'          :P318_MOBILENO,',
'          :P318_PARTYAD2,',
'          :P318_PARTYAD1,',
'          :P318_WHSZONFK,',
'          :P318_OCCUPATION,',
'          :P318_phonenum',
'     FROM nmmrkpty',
'    WHERE compcode = :COMPCODE AND PARTYCDE = :P318_PARTYCDE;',
'   exception',
'    when too_many_rows then',
'     null;',
'    when no_data_found then',
'     null;',
'    when others then',
'     null;',
'  end;',
'  exception',
'    when too_many_rows then',
'     null;',
'    when no_data_found then',
'     null;',
'    when others then',
'     null;',
'END;'))
,p_attribute_02=>'P318_TRACNO'
,p_attribute_03=>'P318_CUSTMRID,P318_CUSTOMER_CODE,P318_PRESENT_ADDR,P318_CONTACT_PERSON,P318_HOME_PHONE,P318_OFFICE_PHONE,P318_TEFAXNUM,P318_CUSTMAIL,P318_PRTYNAME,P318_DELRTYPE,P318_IDENTIFY,P318_MOBILENO,P318_PARTYAD2,P318_PARTYAD1,P318_WHSZONFK_1,P318_OCCUPATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47197130820981363)
,p_name=>'change_partycde'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P318_PARTYCDE'
,p_condition_element=>'P318_PARTYCDE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47197670855981363)
,p_event_id=>wwv_flow_api.id(47197130820981363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' SELECT PRTYNAME,',
'      DELRTYPE,',
'      IDENTIFY,',
'      MOBILENO,',
'      PARTYAD2,',
'      PARTYAD1,',
'      WHSZONFK',
' INTO :P318_PRTYNAME,',
'      :P318_DELRTYPE,',
'      :P318_IDENTIFY,',
'      :P318_MOBILENO,',
'      :P318_PARTYAD2,',
'      :P318_PARTYAD1,',
'      :P318_WHSZONFK',
' FROM nmmrkpty',
'WHERE compcode = :COMPCODE AND PARTYCDE = :P318_PARTYCDE;',
'end;'))
,p_attribute_02=>'P318_PARTYCDE'
,p_attribute_03=>'P318_PRTYNAME,P318_DELRTYPE,P318_IDENTIFY,P318_MOBILENO,P318_PARTYAD2,P318_PARTYAD1,P318_WHSZONFK_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47198028071981363)
,p_name=>'set_val'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47198580297981363)
,p_event_id=>wwv_flow_api.id(47198028071981363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    SELECT j.WARECODE',
'     into :P318_WRECDE',
'     FROM nmwhsmas j, sycstacc c',
'     WHERE     j.compcode = :compcode',
'       AND j.compcode = c.compcode',
'       AND j.WARECODE = c.WARECODE',
'       AND c.grupcode = :APP_USER',
'       AND NVL (J.MAINSTOR, ''N'') = ''Y'';',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47199008803981363)
,p_name=>'Change_Mobile'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P318_MOBILNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47199445194981363)
,p_event_id=>wwv_flow_api.id(47199008803981363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' vc number;',
'begin',
'if :P318_MOBILNO is not null then',
' SELECT count(*)',
' into vc',
'      FROM nmmrkcus',
'    WHERE compcode = :COMPCODE AND CUSTMOBL = :P318_MOBILNO;',
'   if vc=0 then',
'    raise_application_error(-20001,''This customer not exists...'');',
'   else',
'        BEGIN',
'           SELECT CUSTMRID,',
'                  CUSTNAME,',
'                  CUSTADR1,',
'                  CONTPERS,',
'                  CUSTPHON,',
'                  CUSTMOBL,',
'                  TEFAXNUM,',
'                  CUSTMAIL,',
'                  PARTYCDE',
'             INTO :P318_CUSTMRID,',
'                  :P318_CUSTOMER_CODE,',
'                  :P318_PRESENT_ADDR,',
'                  :P318_CONTACT_PERSON,',
'                  :P318_HOME_PHONE,',
'                  :P318_OFFICE_PHONE,',
'                  :P318_TEFAXNUM,',
'                  :P318_CUSTMAIL,',
'                  :P318_PARTYCDE',
'             FROM nmmrkcus',
'            WHERE compcode = :COMPCODE AND CUSTMOBL = :P318_MOBILNO;',
'',
'          select distinct smancode ',
'           into :P318_SMANCODE',
'           from nmsmnmas ',
'           where username=:APP_USER',
'             and SMANTYPE = ''CO'';	',
'',
'           begin',
'             SELECT PRTYNAME,',
'                  DELRTYPE,',
'                  IDENTIFY,',
'                  MOBILENO,',
'                  PARTYAD2,',
'                  PARTYAD1,',
'                  WHSZONFK,',
'                  OCCUPATION,',
'                  phonenum',
'             INTO :P318_PRTYNAME,',
'                  :P318_DELRTYPE,',
'                  :P318_IDENTIFY,',
'                  :P318_MOBILENO,',
'                  :P318_PARTYAD2,',
'                  :P318_PARTYAD1,',
'                  :P318_WHSZONFK,',
'                  :P318_OCCUPATION,',
'                  :P318_phonenum',
'             FROM nmmrkpty',
'            WHERE compcode = :COMPCODE AND PARTYCDE = :P318_PARTYCDE;',
'',
'          end;',
'        END;',
'   end if;',
'end if;',
'end;'))
,p_attribute_02=>'P318_MOBILNO'
,p_attribute_03=>'P318_CUSTMRID,P318_CUSTOMER_CODE,P318_PRESENT_ADDR,P318_CONTACT_PERSON,P318_HOME_PHONE,P318_OFFICE_PHONE,P318_TEFAXNUM,P318_CUSTMAIL,P318_PARTYCDE,P318_PRTYNAME,P318_DELRTYPE,P318_IDENTIFY,P318_MOBILENO,P318_PARTYAD2,P318_PARTYAD1,P318_WHSZONFK_1,P31'
||'8_OCCUPATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47199904344981363)
,p_name=>'Change_Mobile_1'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P318_MOBILNO_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47200367490981364)
,p_event_id=>wwv_flow_api.id(47199904344981363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' vc number;',
'begin',
' SELECT count(*)',
' into vc',
'      FROM nmmrkcus',
'    WHERE compcode = :COMPCODE AND CUSTMOBL = :P318_MOBILNO_2;',
'   if vc=0 then',
'    raise_application_error(-20001,''This customer not exists...'');',
'   else',
'        BEGIN',
'           SELECT CUSTMRID,',
'                  CUSTNAME,',
'                  CUSTADR1,',
'                  CONTPERS,',
'                  CUSTPHON,',
'                  CUSTMOBL,',
'                  TEFAXNUM,',
'                  CUSTMAIL,',
'                  PARTYCDE',
'             INTO :P318_CUSTMRID,',
'                  :P318_CUSTOMER_CODE,',
'                  :P318_PRESENT_ADDR,',
'                  :P318_CONTACT_PERSON,',
'                  :P318_HOME_PHONE,',
'                  :P318_OFFICE_PHONE,',
'                  :P318_TEFAXNUM,',
'                  :P318_CUSTMAIL,',
'                  :P318_PARTYCDE',
'             FROM nmmrkcus',
'            WHERE compcode = :COMPCODE AND CUSTMOBL = :P318_MOBILNO_2;',
'',
'          select distinct smancode ',
'           into :P318_SMANCODE',
'           from nmsmnmas ',
'           where username=:APP_USER',
'             and SMANTYPE = ''CO'';	',
'',
'           begin',
'             SELECT PRTYNAME,',
'                  DELRTYPE,',
'                  IDENTIFY,',
'                  MOBILENO,',
'                  PARTYAD2,',
'                  PARTYAD1,',
'                  WHSZONFK,',
'                  OCCUPATION,',
'                  phonenum',
'             INTO :P318_PRTYNAME,',
'                  :P318_DELRTYPE,',
'                  :P318_IDENTIFY,',
'                  :P318_MOBILENO,',
'                  :P318_PARTYAD2,',
'                  :P318_PARTYAD1,',
'                  :P318_WHSZONFK,',
'                  :P318_OCCUPATION,',
'                  :P318_phonenum',
'             FROM nmmrkpty',
'            WHERE compcode = :COMPCODE AND PARTYCDE = :P318_PARTYCDE;',
'',
'          end;',
'        END;',
'   end if;',
'end;'))
,p_attribute_02=>'P318_MOBILNO_2'
,p_attribute_03=>'P318_CUSTMRID,P318_CUSTOMER_CODE,P318_PRESENT_ADDR,P318_CONTACT_PERSON,P318_HOME_PHONE,P318_OFFICE_PHONE,P318_TEFAXNUM,P318_CUSTMAIL,P318_PARTYCDE,P318_PRTYNAME,P318_DELRTYPE,P318_IDENTIFY,P318_MOBILENO,P318_PARTYAD2,P318_PARTYAD1,P318_WHSZONFK_1,P31'
||'8_OCCUPATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47202602055981364)
,p_name=>'change custmrid'
,p_event_sequence=>170
,p_bind_type=>'one'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47203029652981364)
,p_event_id=>wwv_flow_api.id(47202602055981364)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P318_PARTYAD1:=''123'';',
'',
'END;'))
,p_attribute_02=>'P318_CUSTMRID'
,p_attribute_03=>'P318_PARTYAD1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47200797924981364)
,p_name=>'change page load on customer Id'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P318_CUSTMRID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P318_DOCNUMBR'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47201246099981364)
,p_event_id=>wwv_flow_api.id(47200797924981364)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if :P318_CUSTMRID is not null then',
'SELECT Custname,',
'       Custadr1 || '','' || custadr2 Address,',
'      CONTPERS,',
'PARTYCDE,',
'       custphon Phone,',
'       CUSTMOBL Mobile,',
'       Custmail Email,',
'      TEFAXNUM,',
'      PARTYCDE',
'  INTO  :P318_CUSTOMER_CODE,:P318_PRESENT_ADDR, :P318_CONTACT_PERSON,:P137_PARTYCD1,',
'        :P318_HOME_PHONE, :P318_MOBILE_NO, :P318_CUSTMAIL,:P318_TEFAXNUM,:P318_PARTYCDE',
'  FROM nmmrkcus',
' WHERE compcode = :COMPCODE AND custmrid = :P318_CUSTMRID;',
' end if;',
'if :P318_PARTYCDE is not null then',
'  begin',
'     SELECT PRTYNAME,',
'          DELRTYPE,',
'          IDENTIFY,',
'          MOBILENO,',
'          PARTYAD2,',
'          PARTYAD1,',
'          WHSZONFK,',
'          OCCUPATION,',
'          phonenum',
'     INTO :P318_PRTYNAME,',
'          :P318_DELRTYPE,',
'          :P318_IDENTIFY,',
'          :P318_MOBILENO,',
'          :P318_PARTYAD2,',
'          :P318_PARTYAD1,',
'          :P318_WHSZONFK,',
'          :P318_OCCUPATION,',
'          :P318_phonenum',
'     FROM nmmrkpty',
'    WHERE compcode = :COMPCODE AND PARTYCDE = :P318_PARTYCDE;',
'    EXCEPTION',
' WHEN no_data_found',
'   THEN',
'      raise_application_error (-20001, SQLERRM||'' ''||:P318_PARTYCDE);',
' WHEN too_many_rows',
'   THEN',
'      raise_application_error (-20001, SQLERRM||'' ''||:P318_PARTYCDE);',
'   WHEN OTHERS',
'   THEN',
'      raise_application_error (-20001, SQLERRM||'' ''||:P318_PARTYCDE);',
'   end;',
'end if;',
'EXCEPTION',
' WHEN no_data_found',
'   THEN',
'      raise_application_error (-20001, SQLERRM||'' ''||:P318_CUSTMRID);',
' WHEN too_many_rows',
'   THEN',
'      raise_application_error (-20001, SQLERRM||'' ''||:P318_CUSTMRID);',
'   WHEN OTHERS',
'   THEN',
'      raise_application_error (-20001, SQLERRM);',
'END;'))
,p_attribute_02=>'P318_CUSTMRID,P318_PARTYCDE'
,p_attribute_03=>'P318_CUSTOMER_CODE,P318_PRESENT_ADDR,P318_CONTACT_PERSON,P137_PARTYCD1,P318_HOME_PHONE,P318_MOBILE_NO,P318_CUSTMAIL,P318_TEFAXNUM,P318_PARTYCDE,P318_PRTYNAME,P318_DELRTYPE,P318_IDENTIFY,P318_MOBILENO,P318_PARTYAD2,P318_PARTYAD1,P318_WHSZONFK,P318_OCC'
||'UPATION,P318_PHONENUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47201715101981364)
,p_name=>'Change Itemcode'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P318_ITEMCODE'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47202213463981364)
,p_event_id=>wwv_flow_api.id(47201715101981364)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'--:P318_TWITTER:=''1259'';',
'select DESIGNCD d,DESIGNCD,MODLCODE ',
'into :P318_TWITTER,:P318_INTERESTED_BRAND,:P318_INTERESTED_MODEL ',
'from nmitemas ',
'where compcode=:COMPCODE ',
'and ITEMCODE=:P318_ITEMCODE;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_attribute_02=>'P318_ITEMCODE'
,p_attribute_03=>'P318_TWITTER,P318_INTERESTED_MODEL,P318_INTERESTED_BRAND'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47185608604981358)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMCUSVLG'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'P318_DOCNUMBR'
,p_attribute_04=>'DOCNUMBR'
,p_process_when=>'P318_DOCNUMBR'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47166551315981350)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(250041801349668661)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'CUSTOMERS_ENQUIRES'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(47135403674981330)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'  #MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47185151053981358)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47166937578981350)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(250041801349668661)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'CUSTOMERS_ENQUIRES'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47184388805981358)
,p_process_sequence=>25
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMMRKPTY'
,p_attribute_02=>'NMMRKPTY'
,p_attribute_03=>'P318_PARTYCDE'
,p_attribute_04=>'PARTYCDE'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47185983915981358)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMCUSVLG'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'P318_DOCNUMBR'
,p_attribute_04=>'DOCNUMBR'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47186380688981358)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(47135403674981330)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47183979350981356)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(47135806094981330)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47184741050981358)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert nmmrkpty'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' nxtptycde number(10);',
' vcount number;',
' V_DOCNUM varchar2(10);',
'begin',
'IF :P318_CUSTMRID IS not NULL THEN',
'--------------',
'    /*begin',
'      Select        max(to_number(substr(partycde,3,5))) ',
'      into             nxtptycde ',
'      from             NMMRKPTY',
'      where upper(partytyp)=upper(''CU'');',
'',
'     If nxtptycde is NULL then',
'         nxtptycde := 0;',
'      End If;',
'',
'      nxtptycde      := nxtptycde + 1;',
'    If :P318_PARTYCDE is Null then',
'      :P318_PARTYCDE := upper(''CU'')|| lpad(to_char(nxtptycde ),4,0);',
'    end if;',
'',
'    if :P318_WHSZONFK is null then',
'     :P318_WHSZONFK := :P318_WHSZONFK_1;',
'    end if;',
'    exception',
'    when no_data_found then',
'    raise_application_error(-200001,''fsf'');',
'    when too_many_rows then',
'    null;',
'    when others then',
'    raise_application_error(-200001,''fsf'');',
'    end;*/',
'--------------',
'  begin',
'      select count(*)',
'      into vcount',
'      from nmmrkcus',
'      where PARTYCDE = :P318_PARTYCDE',
'       and compcode = :compcode;',
'       exception',
'    when no_data_found then',
'    vcount := 0;',
'    when too_many_rows then',
'    vcount := 0;',
'    when others then',
'    vcount := 0;',
'',
'end;',
'if vcount = 0 then',
'insert into nmmrkpty(COMPCODE,PARTYTYP,PARTYCDE,DELRTYPE,OCCUPATION,PRTYNAME,IDENTIFY,MOBILENO,PARTYAD2,PARTYAD1,WHSZONFK,OPRSTAMP,TIMSTAMP,PHONENUM,CUSTMRID,CUSTOMER_CODE,CREDDAYS )',
'values (:COMPCODE,''CU'',:P318_PARTYCDE,:P318_DELRTYPE,:P318_OCCUPATION,:P318_PRTYNAME,:P318_IDENTIFY,:P318_MOBILENO,:P318_PARTYAD2,:P318_PARTYAD1,:P318_WHSZONFK,:APP_USER,sysdate,',
'       :P318_PHONENUM,:P318_CUSTMRID,:P318_CUSTMRID,90);',
'commit;',
'ELSE',
'    UPDATE nmmrkpty',
'    SET DELRTYPE = :P318_DELRTYPE,',
'        OCCUPATION = :P318_OCCUPATION,',
'        PRTYNAME = :P318_PRTYNAME,',
'        IDENTIFY = :P318_IDENTIFY,',
'        MOBILENO = :P318_MOBILENO,',
'        PARTYAD2 = :P318_PARTYAD2,',
'        PARTYAD1 = :P318_PARTYAD1,',
'        WHSZONFK = :P318_WHSZONFK,',
'        PHONENUM = :P318_PHONENUM',
'    WHERE PARTYCDE = :P318_PARTYCDE',
'     AND COMPCODE = :COMPCODE;',
'    COMMIT;',
'end if;  ',
'',
'END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47186730540981358)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'preinsert on NMCUSVLG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_docnum varchar2(50);',
'begin',
'/*if :P318_PARTYCDE is not null then',
'    begin ',
'     select CUSTMRID',
'      into :P318_CUSTMRID',
'     from nmmrkcus',
'     where compcode = :compcode',
'      and PARTYCDE = :P318_PARTYCDE;',
'     exception',
'     when no_data_found then',
'      :P318_CUSTMRID := '''';',
'    end;',
'end if;*/',
'',
':P318_COMPCODE:=:COMPCODE;',
'Docnumber_Generation(:COMPCODE,''NM'',''CS'', 2, sysdate,:P318_WARECODE, ''NM'', v_docnum);',
':P318_DOCNUMBR:=v_docnum;',
'--:P318_CUSTMRID:=TO_CHAR (SYSDATE, ''rrrrmmdd'')|| LPAD (seq_custmrid.NEXTVAL, 5, 0);',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(47135403674981330)
,p_process_success_message=>'Success Customer visit log &P318_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47166158482981350)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(250041801349668661)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert  Customers Queries'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':COMPCODE:=:P318_COMPCODE;',
':CUSTOMER_ID:=:P318_CUSTMRID;',
':DOCNUMBR:=:P318_DOCNUMBR;',
':DOCTTYPE:=:P318_DOCTTYPE;',
':SUBTTYPE:=:P318_SUBTTYPE;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(47135403674981330)
);
wwv_flow_api.component_end;
end;
/
