prompt --application/pages/page_00281
begin
--   Manifest
--     PAGE: 00281
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
 p_id=>281
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Lead Generate'
,p_page_mode=>'MODAL'
,p_step_title=>'Lead Generate'
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
'html_GetElement(''f02_''+vRow).value = document.getElementById(''P237_COMPCODE'').value;',
'html_GetElement(''f03_''+vRow).value = document.getElementById(''P237_CUSTOMER_CODE'').value;',
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
 p_id=>wwv_flow_api.id(90281831647547326)
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
 p_id=>wwv_flow_api.id(108305576450759274)
,p_plug_name=>'Customer Visits & Inquiries Entry'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(108311190424759280)
,p_plug_name=>'Customers Inquiry Main Container'
,p_parent_plug_id=>wwv_flow_api.id(108305576450759274)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>25
,p_plug_display_point=>'SUB_REGIONS'
,p_translate_title=>'N'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(108311559558759282)
,p_plug_name=>'Customers Info'
,p_parent_plug_id=>wwv_flow_api.id(108311190424759280)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>35
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46958707390955514)
,p_plug_name=>'Customer info'
,p_parent_plug_id=>wwv_flow_api.id(108311559558759282)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h300:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<span style="font-size:0.9em"><u>Customers Information</u></span></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(108316784002759285)
,p_plug_name=>' Visit Info'
,p_parent_plug_id=>wwv_flow_api.id(108311559558759282)
,p_region_template_options=>'#DEFAULT#:i-h300:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
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
 p_id=>wwv_flow_api.id(108327210309759300)
,p_plug_name=>'Customer''s Current Vehicle Info'
,p_parent_plug_id=>wwv_flow_api.id(108311559558759282)
,p_region_template_options=>'#DEFAULT#:i-h300:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<span style="font-size:0.9em"><u>Customer''s Current Vehicle Info</u></span></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(133754868974782036)
,p_plug_name=>' cus'
,p_parent_plug_id=>wwv_flow_api.id(108311559558759282)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>'<span style="font-size:1.2em"><u>Contact Info</u></span></br>'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(108319563109759288)
,p_plug_name=>'Customer Interests & Queries'
,p_parent_plug_id=>wwv_flow_api.id(108311190424759280)
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
 p_id=>wwv_flow_api.id(108329567355759302)
,p_plug_name=>'Test Drive & Sales Info'
,p_parent_plug_id=>wwv_flow_api.id(108311190424759280)
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
 p_id=>wwv_flow_api.id(108320036877759288)
,p_plug_name=>'Customer''s Interest'
,p_parent_plug_id=>wwv_flow_api.id(108329567355759302)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h220:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>36
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(108322381939759289)
,p_name=>'Customers Queries'
,p_parent_plug_id=>wwv_flow_api.id(108320036877759288)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_report_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
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
'AND CUSTOMER_ID=:P281_CUSTMRID',
''))
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
wwv_flow_api.set_region_column_width(
 p_id=>wwv_flow_api.id(108322381939759289)
,p_plug_column_width=>'style="overflow-y: scroll; height: 169px;"'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38905635518156714)
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
 p_id=>wwv_flow_api.id(38906070368156715)
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
 p_id=>wwv_flow_api.id(38906471204156716)
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
 p_id=>wwv_flow_api.id(38906859754156716)
,p_query_column_id=>4
,p_column_alias=>'CUSTOMERS_ENQUIRES'
,p_column_display_sequence=>5
,p_column_heading=>'Customer Enquires'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>62
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'CUSTOMERS_ENQUIRES'
,p_ref_column_name=>'CUSTOMERS_ENQUIRES'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38907266935156716)
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
 p_id=>wwv_flow_api.id(38907673522156717)
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
 p_id=>wwv_flow_api.id(38908028487156717)
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
 p_id=>wwv_flow_api.id(38908454610156718)
,p_query_column_id=>8
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(108330021983759302)
,p_plug_name=>'Test Drive'
,p_parent_plug_id=>wwv_flow_api.id(108320036877759288)
,p_region_template_options=>'#DEFAULT#:i-h320:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>75
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<span style="font-size:0.9em"><u>Test Drive Info</u></span></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(129612835169122439)
,p_plug_name=>' Customers Interest'
,p_parent_plug_id=>wwv_flow_api.id(108320036877759288)
,p_region_template_options=>'#DEFAULT#:i-h320:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<span style="font-size:0.9em"><u>Customer''s Interest</u></span>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(108332364148759302)
,p_plug_name=>'Sales Info'
,p_parent_plug_id=>wwv_flow_api.id(108329567355759302)
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
 p_id=>wwv_flow_api.id(108311945389759282)
,p_plug_name=>'general info'
,p_parent_plug_id=>wwv_flow_api.id(108305576450759274)
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
 p_id=>wwv_flow_api.id(133734134213255247)
,p_plug_name=>'test'
,p_parent_plug_id=>wwv_flow_api.id(108305576450759274)
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
 p_id=>wwv_flow_api.id(133739580656518987)
,p_plug_name=>'sal'
,p_parent_plug_id=>wwv_flow_api.id(108305576450759274)
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
 p_id=>wwv_flow_api.id(38908863187156718)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(108322381939759289)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38926979992156744)
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
 p_id=>wwv_flow_api.id(38881250197156674)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(90281831647547326)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P281_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38881665244156674)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(90281831647547326)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P281_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38882049564156675)
,p_button_sequence=>75
,p_button_plug_id=>wwv_flow_api.id(90281831647547326)
,p_button_name=>'CLEAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:281:&SESSION.::&DEBUG.:RP,281::'
,p_button_condition=>'P281_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38882474497156675)
,p_button_sequence=>65
,p_button_plug_id=>wwv_flow_api.id(90281831647547326)
,p_button_name=>'CREATE_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Customer'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:90::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38880857386156673)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(90281831647547326)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_redirect_url=>'f?p=&APP_ID.:280:&SESSION.::&DEBUG.:RP,281::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(38946174549156773)
,p_branch_action=>'f?p=&APP_ID.:236:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(38946569815156773)
,p_branch_name=>'Go To Page 237'
,p_branch_action=>'f?p=&APP_ID.:281:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38572404146987632)
,p_name=>'P281_OTHMOBNO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(46958707390955514)
,p_prompt=>'Others Ph.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_api.id(38883131286156676)
,p_name=>'P281_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(108305576450759274)
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
 p_id=>wwv_flow_api.id(38883501479156677)
,p_name=>'P281_COMPCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(108305576450759274)
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
 p_id=>wwv_flow_api.id(38883933817156677)
,p_name=>'P281_DOCTTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(108305576450759274)
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
 p_id=>wwv_flow_api.id(38884391796156678)
,p_name=>'P281_SUBTTYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(108305576450759274)
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
 p_id=>wwv_flow_api.id(38884791017156678)
,p_name=>'P281_DOCNUMBR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(108305576450759274)
,p_use_cache_before_default=>'NO'
,p_source=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38885174914156679)
,p_name=>'P281_RAISEDBY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(108305576450759274)
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
 p_id=>wwv_flow_api.id(38885518233156679)
,p_name=>'P281_OPRSTAMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(108305576450759274)
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
 p_id=>wwv_flow_api.id(38885943937156680)
,p_name=>'P281_TIMSTAMP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(108305576450759274)
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
 p_id=>wwv_flow_api.id(38886349800156680)
,p_name=>'P281_PARTYCD1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(108305576450759274)
,p_use_cache_before_default=>'NO'
,p_source=>'PARTYCD1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38887685228156684)
,p_name=>'P281_DELRTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46958707390955514)
,p_prompt=>'<font color="red">Customer Category</font>'
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
 p_id=>wwv_flow_api.id(38888090334156686)
,p_name=>'P281_OCCUPATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(46958707390955514)
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
 p_id=>wwv_flow_api.id(38888417896156686)
,p_name=>'P281_PRTYNAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46958707390955514)
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
 p_id=>wwv_flow_api.id(38888892834156687)
,p_name=>'P281_PHONENUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(46958707390955514)
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
 p_id=>wwv_flow_api.id(38889276979156687)
,p_name=>'P281_MOBILENO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(46958707390955514)
,p_prompt=>'<font color="red">Mobile No</font>'
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
 p_id=>wwv_flow_api.id(38889639857156688)
,p_name=>'P281_IDENTIFY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(46958707390955514)
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
 p_id=>wwv_flow_api.id(38890064855156688)
,p_name=>'P281_WHSZONFK'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(46958707390955514)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38890473498156689)
,p_name=>'P281_PARTYAD2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(46958707390955514)
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
 p_id=>wwv_flow_api.id(38890827478156689)
,p_name=>'P281_PARTYAD1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(46958707390955514)
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
 p_id=>wwv_flow_api.id(38891205790156689)
,p_name=>'P281_PARTYCDE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(46958707390955514)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38891970007156692)
,p_name=>'P281_WARECODE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(108316784002759285)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' s_warecode varchar2(100);',
'begin',
'SELECT WARECODE',
'into s_warecode',
'FROM',
'( SELECT DISTINCT INITCAP (J.WAREDESC) waredesc, c.WARECODE, 1 ROWN',
'    FROM nmwhsmas j, sycstacc c',
'   WHERE     j.compcode = :compcode',
'         AND j.compcode = c.compcode(+)',
'         AND j.WARECODE = c.WARECODE(+)',
'         AND c.grupcode = :APP_USER',
'         AND nvl(J.MAINSTOR,''N'') = ''Y''',
' /*UNION ALL',
'  SELECT DISTINCT INITCAP (J.WAREDESC) waredesc, c.WARECODE, 2 ROWN',
'    FROM nmwhsmas j, sycstacc c',
'   WHERE     j.compcode = :compcode',
'         AND j.compcode = c.compcode(+)',
'         AND j.WARECODE = c.WARECODE(+)',
'         AND c.grupcode = :APP_USER',
'         AND nvl(J.MAINSTOR,''N'') = ''N''',
'         AND j.WARECODE not like (''D%'')*/',
'ORDER BY ROWN);',
'',
'return s_warecode;',
'',
'exception',
'when too_many_rows then',
' s_warecode:='''';',
' return s_warecode;',
'when no_data_found then',
' s_warecode:='''';',
' return s_warecode;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<font color="red">Business<br>Center</font>'
,p_source=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT waredesc||'' ''||WARECODE D,WARECODE',
'FROM',
'( SELECT DISTINCT INITCAP (J.WAREDESC) waredesc, c.WARECODE, 1 ROWN',
'    FROM nmwhsmas j, sycstacc c',
'   WHERE     j.compcode = :compcode',
'         AND j.compcode = c.compcode(+)',
'         AND j.WARECODE = c.WARECODE(+)',
'         AND c.grupcode = :APP_USER',
'         AND nvl(J.MAINSTOR,''N'') = ''Y''',
' /*UNION ALL',
'  SELECT DISTINCT INITCAP (J.WAREDESC) waredesc, c.WARECODE, 2 ROWN',
'    FROM nmwhsmas j, sycstacc c',
'   WHERE     j.compcode = :compcode',
'         AND j.compcode = c.compcode(+)',
'         AND j.WARECODE = c.WARECODE(+)',
'         AND c.grupcode = :APP_USER',
'         AND nvl(J.MAINSTOR,''N'') = ''N''',
'         AND j.WARECODE not like (''D%'')*/',
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
 p_id=>wwv_flow_api.id(38892762101156694)
,p_name=>'P281_SMNNAME'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(108316784002759285)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38893113376156694)
,p_name=>'P281_WHRNAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(108316784002759285)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38893566374156694)
,p_name=>'P281_DOCTDATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(108316784002759285)
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
 p_id=>wwv_flow_api.id(38893962832156695)
,p_name=>'P281_NMPRDTYP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(108316784002759285)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Product<br>Type</font>'
,p_source=>'NMPRDTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct nmcoddes,nmsofcde',
'from nmcodmas s ,vw_sman_product i',
'where s.compcode=:compcode',
'and modlcode=''NM''',
'and nmhrdcde = ''PRD''',
'and S.NMSOFCDE = I.PRODUCT_TYPE',
'and :APP_USER like (SMANCODE_TREE||''%'')',
'and :APP_USER in (select U.USERCODE',
'                     from syusrmas u',
'                     where U.DIVNCODE = :compcode',
'                      and nvl(U.OPERFLAG,''N'') = ''N'')',
'union all',
'select distinct nmcoddes,nmsofcde',
'from nmcodmas s ',
'where s.compcode=:compcode',
'and modlcode=''NM''',
'and nmhrdcde = ''PRD''',
'and :APP_USER in (select U.USERCODE',
'                     from syusrmas u',
'                     where U.DIVNCODE = :compcode',
'                      and nvl(U.OPERFLAG,''N'') = ''Y'')'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38894345218156695)
,p_name=>'P281_VISITYPE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(108316784002759285)
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
 p_id=>wwv_flow_api.id(38894697061156696)
,p_name=>'P281_CONTACT_MODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(108316784002759285)
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
 p_id=>wwv_flow_api.id(38895136233156696)
,p_name=>'P281_WRECDE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(108316784002759285)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38895539216156697)
,p_name=>'P281_PTYP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(108316784002759285)
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
 p_id=>wwv_flow_api.id(38895987987156697)
,p_name=>'P281_SALES_POTENTIAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(108316784002759285)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sales Potential'
,p_source=>'SALES_POTENTIAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style=''width: 100%;'''
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
 p_id=>wwv_flow_api.id(38896366488156698)
,p_name=>'P281_POSBUYDTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(108316784002759285)
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
 p_id=>wwv_flow_api.id(38896780006156698)
,p_name=>'P281_CATEGORR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(108316784002759285)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category'
,p_source=>'CATEGORR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.NMCODDES d,C.NMSOFCDE',
'from nmcodmas c',
'where C.COMPCODE = :compcode',
'and C.NMHRDCDE = ''CAR'''))
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
 p_id=>wwv_flow_api.id(38898233138156700)
,p_name=>'P281_CURRENT_BRAND'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(108327210309759300)
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
 p_id=>wwv_flow_api.id(38898623251156701)
,p_name=>'P281_CURRENT_MODEL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(108327210309759300)
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
'and nvl(commgrup,''0'')=nvl(:P281_CURRENT_BRAND,nvl(commgrup,''0''))',
'order by 1'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38899042387156702)
,p_name=>'P281_PURCHASED_FROM'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(108327210309759300)
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
 p_id=>wwv_flow_api.id(38899445531156702)
,p_name=>'P281_PURCHASE_DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(108327210309759300)
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
 p_id=>wwv_flow_api.id(38899859522156703)
,p_name=>'P281_VHMADEIN'
,p_item_sequence=>181
,p_item_plug_id=>wwv_flow_api.id(108327210309759300)
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
 p_id=>wwv_flow_api.id(38900266433156703)
,p_name=>'P281_VHCLYEAR'
,p_item_sequence=>182
,p_item_plug_id=>wwv_flow_api.id(108327210309759300)
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
 p_id=>wwv_flow_api.id(38900605682156704)
,p_name=>'P281_AVERAGE_MILEAGE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(108327210309759300)
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
 p_id=>wwv_flow_api.id(38901019598156704)
,p_name=>'P281_ALTRNTVE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(108327210309759300)
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
 p_id=>wwv_flow_api.id(38901477455156705)
,p_name=>'P281_SRSOFUND'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(108327210309759300)
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
 p_id=>wwv_flow_api.id(38901885777156705)
,p_name=>'P281_FUNDSTAT'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(108327210309759300)
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
 p_id=>wwv_flow_api.id(38902278613156705)
,p_name=>'P281_ETBCUSTM'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(108327210309759300)
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
 p_id=>wwv_flow_api.id(38902689098156707)
,p_name=>'P281_CMPETION'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(108327210309759300)
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
 p_id=>wwv_flow_api.id(38903057598156707)
,p_name=>'P281_PROFILEE'
,p_is_required=>true
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(108327210309759300)
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
'and nvl(:P281_ETBCUSTM,0) + nvl(:P281_CMPETION,0) between s.SERIALNM and s.NMAMOUNT'))
,p_lov_cascade_parent_items=>'P281_ETBCUSTM,P281_CMPETION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'style=''width: 500px;'' title="Customer status on total cars..." #0372F0;font-weight:bold;margin-top:0%;background-color:'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38903430173156708)
,p_name=>'P281_PIPLNSTS'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(108327210309759300)
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
 p_id=>wwv_flow_api.id(38903812825156708)
,p_name=>'P281_AREA'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(108327210309759300)
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
 p_id=>wwv_flow_api.id(38910736397156721)
,p_name=>'P281_TEST_DRIVE_FLAG'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(108330021983759302)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Test Drive Flag'
,p_source=>'TEST_DRIVE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_tag_attributes=>'style="width:90%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38911159056156722)
,p_name=>'P281_TEST_DRIVE_MODEL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(108330021983759302)
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
 p_id=>wwv_flow_api.id(38911507520156722)
,p_name=>'P281_TEST_DRIVE_DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(108330021983759302)
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
 p_id=>wwv_flow_api.id(38911920569156723)
,p_name=>'P281_TEST_BOOKING_DATE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(108330021983759302)
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
 p_id=>wwv_flow_api.id(38912365105156723)
,p_name=>'P281_CUSTOMER_TEST_REMARKS'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(108330021983759302)
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
 p_id=>wwv_flow_api.id(38913061332156724)
,p_name=>'P281_INTERESTED_BRAND'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(129612835169122439)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Interested Brand</font>'
,p_source=>'INTERESTED_BRAND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode ',
' AND nmhrdcde = ''COM''  ',
' and MODLCODE = ''NM''',
' AND nvl(NMRTDNON,''N'') = ''N'''))
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
 p_id=>wwv_flow_api.id(38913475430156726)
,p_name=>'P281_INTERESTED_MODEL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(129612835169122439)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Interested Model</font>'
,p_source=>'INTERESTED_MODEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT T.NMCODDES d,t.nmsofcde',
'from NMCODMAS T,VWNMITEM c',
'where C.COMPCODE = :compcode',
'AND T.NMSOFCDE = C.MODLCODE',
'and T.NMHRDCDE = ''MOD''',
'and T.COMPCODE = C.COMPCODE',
'and T.MODLCODE = ''NM''',
'and c.finishgd = ''Y'' ',
'and nvl(c.commgrup,''0'')=:P281_INTERESTED_BRAND'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P281_INTERESTED_BRAND'
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
 p_id=>wwv_flow_api.id(38913885242156726)
,p_name=>'P281_INTERIOR_COLOR'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(129612835169122439)
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
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38914205575156726)
,p_name=>'P281_EXTERIOR_COLOR'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(129612835169122439)
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
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38914685200156727)
,p_name=>'P281_ITEMCODE'
,p_item_sequence=>245
,p_item_plug_id=>wwv_flow_api.id(129612835169122439)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Product</font>'
,p_source=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT T.NMCODDES d,C.ITEMCODE',
'from NMCODMAS T,VWNMITEM c',
'where C.COMPCODE = :compcode',
'AND T.NMSOFCDE = C.MODLCODE',
'and T.NMHRDCDE = ''MOD''',
'and T.COMPCODE = C.COMPCODE',
'and T.MODLCODE = ''NM''',
'and c.finishgd = ''Y'' ',
'and nvl(c.commgrup,''0'')=:P281_INTERESTED_BRAND',
'and nvl(C.MODLCODE,''C'') = :P281_INTERESTED_MODEL',
'/*and nvl(c.commgrup,''0'')=nvl(:P281_INTERESTED_BRAND,nvl(c.commgrup,''0''))',
'and nvl(C.MODLCODE,''C'') = nvl(:INTERESTED_MODEL,nvl(C.MODLCODE,''C''))*/'))
,p_lov_cascade_parent_items=>'P281_INTERESTED_BRAND,P281_INTERESTED_MODEL'
,p_ajax_items_to_submit=>'P281_INTERESTED_BRAND,P281_INTERESTED_MODEL'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_api.id(38915020739156728)
,p_name=>'P281_FUEL_TYPE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(129612835169122439)
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
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38915760115156729)
,p_name=>'P281_CUSTOMER_REMARKS_SALES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(108332364148759302)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Remarks'
,p_source=>'CUSTOMER_REMARKS_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>52
,p_cMaxlength=>512
,p_cHeight=>1
,p_colspan=>6
,p_grid_column=>1
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
 p_id=>wwv_flow_api.id(38916137703156730)
,p_name=>'P281_SALESMAN_REMARKS_SALES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(108332364148759302)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salesman Remarks'
,p_source=>'SALESMAN_REMARKS_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>27
,p_cMaxlength=>512
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
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
 p_id=>wwv_flow_api.id(38916498873156730)
,p_name=>'P281_REFERED_BY_SALES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(108332364148759302)
,p_use_cache_before_default=>'NO'
,p_source=>'REFERED_BY_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38916948475156731)
,p_name=>'P281_NEXT_APOINTMENT_ON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(108332364148759302)
,p_use_cache_before_default=>'NO'
,p_source=>'NEXT_APOINTMENT_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38917298230156731)
,p_name=>'P281_VERIFIED_FLAG_SALES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(108332364148759302)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_FLAG_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38917739413156732)
,p_name=>'P281_VERIFIED_BY_SALES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(108332364148759302)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38918438489156733)
,p_name=>'P281_CUSTMRID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(108311945389759282)
,p_use_cache_before_default=>'NO'
,p_source=>'CUSTMRID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38918844933156733)
,p_name=>'P281_CUSTOMER_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(108311945389759282)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38919246584156734)
,p_name=>'P281_DESIGNATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(108311945389759282)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38919635387156734)
,p_name=>'P281_PRESENT_ADDR'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(108311945389759282)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38920046003156735)
,p_name=>'P281_CONTACT_PERSON'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(108311945389759282)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38920421174156735)
,p_name=>'P281_HOME_PHONE'
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_api.id(108311945389759282)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38920824377156736)
,p_name=>'P281_MOBILE_NO'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_api.id(108311945389759282)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38921216899156736)
,p_name=>'P281_OFFICE_PHONE'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_api.id(108311945389759282)
,p_display_as=>'NATIVE_HIDDEN'
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
 p_id=>wwv_flow_api.id(38921688532156736)
,p_name=>'P281_TEFAXNUM'
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_api.id(108311945389759282)
,p_use_cache_before_default=>'NO'
,p_source=>'TEFAXNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38921998132156737)
,p_name=>'P281_CUSTMAIL'
,p_item_sequence=>91
,p_item_plug_id=>wwv_flow_api.id(108311945389759282)
,p_use_cache_before_default=>'NO'
,p_source=>'CUSTMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38922461417156737)
,p_name=>'P281_CUST_COMPANY'
,p_item_sequence=>101
,p_item_plug_id=>wwv_flow_api.id(108311945389759282)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38922879891156738)
,p_name=>'P281_INDUSTRY_TYPE'
,p_item_sequence=>111
,p_item_plug_id=>wwv_flow_api.id(108311945389759282)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38923234968156738)
,p_name=>'P281_CITY_NAME'
,p_item_sequence=>121
,p_item_plug_id=>wwv_flow_api.id(108311945389759282)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38923642881156739)
,p_name=>'P281_CITY_CODE'
,p_item_sequence=>131
,p_item_plug_id=>wwv_flow_api.id(108311945389759282)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38924361830156740)
,p_name=>'P281_TRACNO'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(133734134213255247)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38924722827156740)
,p_name=>'P281_MOBILNO_1'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(133734134213255247)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38925181027156741)
,p_name=>'P281_MOBILNO'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(133734134213255247)
,p_prompt=>'Mobile No'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT CUSTNAME||''/''||CUSTADR1||''/''||CUSTMOBL Mobile,CUSTMOBL',
'  FROM nmmrkcus',
' WHERE compcode = :compcode',
'  and CUSTMOBL is not null',
'  union all',
'  ( SELECT  CUSTNAME||''/''||CUSTADR1||''/''||CUSTMOBL Mobile,CUSTMOBL',
'  FROM nmcusmas',
' WHERE compcode = :compcode',
'  and CUSTMOBL is not null',
'  minus',
'  SELECT  CUSTNAME||''/''||CUSTADR1||''/''||CUSTMOBL Mobile,CUSTMOBL',
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
 p_id=>wwv_flow_api.id(38925531186156741)
,p_name=>'P281_NATIONLID'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(133734134213255247)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38925973524156742)
,p_name=>'P281_CUSTMID'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(133734134213255247)
,p_prompt=>'Customer ID'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT custmrid ID,',
'       Custname,',
'       Custadr1 || '','' || custadr2 Address,',
'       IDENTIFY NationalID,',
'       custphon Phone,',
'       CUSTMOBL Mobile,',
'       Custmail Email',
'  FROM nmmrkcus',
' WHERE compcode = :compcode',
'  union all',
'  ( SELECT custmrid ID,',
'       Custname,',
'       Custadr1 || '','' || custadr2 Address,',
'       IDENTIFY NationalID,',
'       custphon Phone,',
'       CUSTMOBL Mobile,',
'       Custmail Email',
'  FROM nmcusmas',
' WHERE compcode = :compcode',
'  minus',
'SELECT custmrid ID,',
'       Custname,',
'       Custadr1 || '','' || custadr2 Address,',
'       IDENTIFY NationalID,',
'       custphon Phone,',
'       CUSTMOBL Mobile,',
'       Custmail Email',
'  FROM nmmrkcus',
' WHERE compcode = :compcode)'))
,p_cSize=>15
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,1'
,p_attribute_08=>'ENTERABLE_UNRESTRICTED'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39250609658976410)
,p_name=>'P281_WHSZONFK_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(108316784002759285)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Zone</font>'
,p_source=>'WHSZONFK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct s.AREA_NAME_TREE_TYPE d,s.WHSZONPK',
'from VW_NMWHZNMAS s',
'where S.COMPCODE = :compcode',
'and s.WHSZONPK in (select I.WHSZONFK',
'                       from nmprdhdi i ',
'                       where i.PRODUCT_TYPE = :P281_NMPRDTYP ',
'                       and to_date(:P281_DOCTDATE,''dd-mon-yyyy'') ',
'                       between to_date(I.STARTDATE,''dd-mon-yyyy'') ',
'                       and nvl(to_date(I.ENDDATE,''dd-mon-yyyy''),trunc(sysdate)))',
'and s.LOCATYPE = ''UPZ''',
'/*and :APP_USER in (select U.USERCODE',
'                     from syusrmas u',
'                     where U.DIVNCODE = :compcode',
'                      and nvl(U.OPERFLAG,''N'') = ''N'')',
'union all',
'select distinct s.AREA_NAME_TREE_TYPE d,s.WHSZONPK',
'from VW_NMWHZNMAS s',
'where S.COMPCODE = :compcode',
'and :APP_USER in (select U.USERCODE',
'                     from syusrmas u',
'                     where U.DIVNCODE = :compcode',
'                      and nvl(U.OPERFLAG,''N'') = ''Y'')*/'))
,p_lov_cascade_parent_items=>'P281_DOCTDATE,P281_NMPRDTYP'
,p_ajax_items_to_submit=>'P281_DOCTDATE,P281_NMPRDTYP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39250869570976412)
,p_name=>'P281_SMANCODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(108316784002759285)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Sales<br>Executive</font>'
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
'       AND j.SMANCODE IN (select I.SMANCODE',
'                           from nmprdhdi i ',
'                           where I.WHSZONFK = :P281_WHSZONFK_1 ',
'                            and i.PRODUCT_TYPE = :P281_NMPRDTYP',
'                            and to_date(:P281_DOCTDATE,''dd-mon-yyyy'') ',
'                            between to_date(I.STARTDATE,''dd-mon-yyyy'') ',
'                            and nvl(to_date(I.ENDDATE,''dd-mon-yyyy''),trunc(sysdate)))',
' '))
,p_lov_cascade_parent_items=>'P281_WHSZONFK_1,P281_DOCTDATE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>6
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39251122098976415)
,p_name=>'P281_EXISTS_MOBNO'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(133734134213255247)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39253926288976443)
,p_name=>'P281_USGSEGMT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(108316784002759285)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Usage Segment</font>'
,p_source=>'USGSEGMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nmcoddes,nmsofcde',
'from nmcodmas',
'where compcode = :compcode',
'and modlcode =''NM''',
'and nmhrdcde = ''AMT''',
'and NMUPCDE = :P281_NMPRDTYP'))
,p_lov_cascade_parent_items=>'P281_NMPRDTYP'
,p_ajax_items_to_submit=>'P281_NMPRDTYP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39798935780119746)
,p_name=>'P281_SERLNUMB'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(108305576450759274)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' vc number;',
'begin',
' select count(*)+1',
'  into vc',
' from nmcusvlg',
' where compcode = :compcode;',
' return vc;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39377731850029206)
,p_validation_name=>'ETB'
,p_validation_sequence=>10
,p_validation=>'P281_ETBCUSTM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39377884442029207)
,p_validation_name=>'P281_CMPETION'
,p_validation_sequence=>20
,p_validation=>'P281_CMPETION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39378000742029209)
,p_validation_name=>'P281_SMANCODE'
,p_validation_sequence=>40
,p_validation=>'P281_SMANCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39378166452029210)
,p_validation_name=>'P281_NMPRDTYP'
,p_validation_sequence=>50
,p_validation=>'P281_NMPRDTYP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39378272239029211)
,p_validation_name=>'P281_PIPLNSTS'
,p_validation_sequence=>60
,p_validation=>'P281_PIPLNSTS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39378365058029212)
,p_validation_name=>'P281_INTERESTED_BRAND'
,p_validation_sequence=>70
,p_validation=>'P281_INTERESTED_BRAND'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39378460773029213)
,p_validation_name=>'P281_INTERESTED_MODEL'
,p_validation_sequence=>80
,p_validation=>'P281_INTERESTED_MODEL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39378575545029214)
,p_validation_name=>'P281_ITEMCODE'
,p_validation_sequence=>90
,p_validation=>'P281_ITEMCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39419611896588575)
,p_validation_name=>'P281_WHSZONFK_1'
,p_validation_sequence=>100
,p_validation=>'P281_WHSZONFK_1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(39250609658976410)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39254109793976445)
,p_validation_name=>'mobileno'
,p_validation_sequence=>110
,p_validation=>'P281_MOBILENO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Mobile no cannot be null'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38939602260156764)
,p_name=>'show hide test drive info'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P281_TEST_DRIVE_FLAG'
,p_condition_element=>'P281_TEST_DRIVE_FLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38940162729156765)
,p_event_id=>wwv_flow_api.id(38939602260156764)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P281_TEST_DRIVE_MODEL,P281_TEST_DRIVE_DATE,P281_TEST_BOOKING_DATE,P281_CUSTOMER_TEST_REMARKS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38940686499156766)
,p_event_id=>wwv_flow_api.id(38939602260156764)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P281_TEST_DRIVE_MODEL,P281_TEST_DRIVE_DATE,P281_TEST_BOOKING_DATE,P281_CUSTOMER_TEST_REMARKS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38941041669156766)
,p_name=>'fetch area and city '
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P281_AREA'
,p_condition_element=>'P281_AREA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38941524753156766)
,p_event_id=>wwv_flow_api.id(38941041669156766)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'/*',
'   BEGIN',
'      SELECT areadesc',
'        INTO :P281_CITY_NAME',
'        FROM nmwhznms z',
'       WHERE z.compcode = :COMPCODE',
'         AND locatype = ''UPZ''',
'         AND areacode = :P281_AREA',
'         AND areadesc IS NOT NULL;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         raise_application_error (-20001, SQLERRM);',
'   END;',
'*/',
'   BEGIN',
'      SELECT areacode, areadesc',
'        INTO :P281_CITY_CODE, :P281_CITY_NAME',
'        FROM nmwhznms z',
'       WHERE z.compcode = :compcode',
'         AND z.areacode =',
'                     (SELECT zonlcode',
'                        FROM nmwhznms a',
'                       WHERE a.compcode = :COMPCODE ',
'                         AND a.areacode = :P281_AREA)',
'         AND z.locatype = ''ZLA''',
'         AND areadesc IS NOT NULL;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         raise_application_error (-20002, SQLERRM);',
'   END;',
'END;'))
,p_attribute_02=>'P281_AREA'
,p_attribute_03=>'P281_CITY_CODE,P281_CITY_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38941915943156767)
,p_name=>'check_exists'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P281_MOBILNO_COPY'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38942492878156768)
,p_event_id=>wwv_flow_api.id(38941915943156767)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' vc number;',
'begin',
'',
':P281_NEW := :P281_MOBILNO_COPY;',
'/*',
' SELECT count(*)',
' into vc',
'      FROM nmmrkcus',
'    WHERE compcode = :COMPCODE AND CUSTMOBL = :P281_MOBILNO;',
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
'             INTO :P281_CUSTMRID,',
'                  :P281_CUSTOMER_CODE,',
'                  :P281_PRESENT_ADDR,',
'                  :P281_CONTACT_PERSON,',
'                  :P281_HOME_PHONE,',
'                  :P281_OFFICE_PHONE,',
'                  :P281_TEFAXNUM,',
'                  :P281_CUSTMAIL,',
'                  :P281_PARTYCDE',
'             FROM nmmrkcus',
'            WHERE compcode = :COMPCODE AND CUSTMOBL = :P281_MOBILNO;',
'',
'          select distinct smancode ',
'           into :P281_SMANCODE',
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
'             INTO :P281_PRTYNAME,',
'                  :P281_DELRTYPE,',
'                  :P281_IDENTIFY,',
'                  :P281_MOBILENO,',
'                  :P281_PARTYAD2,',
'                  :P281_PARTYAD1,',
'                  :P281_WHSZONFK,',
'                  :P281_OCCUPATION,',
'                  :P281_phonenum',
'             FROM nmmrkpty',
'            WHERE compcode = :COMPCODE AND PARTYCDE = :P281_PARTYCDE;',
'',
'          end;',
'        END;',
'   end if;',
'*/',
'end;'))
,p_attribute_02=>'P281_MOBILNO_COPY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>'P237_OCCUPATION,P237_WHSZONFK_1,P237_PARTYAD1,P237_PARTYAD2,P237_MOBILENO,P237_IDENTIFY,P237_DELRTYPE,P237_PRTYNAME,P237_SMANCODE,P237_PARTYCDE,P237_CUSTMAIL,P237_TEFAXNUM,P237_OFFICE_PHONE,P237_HOME_PHONE,P237_CONTACT_PERSON,P237_PRESENT_ADDR,P237_C'
||'USTOMER_CODE,P237_CUSTMRID'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38942835435156768)
,p_name=>'salesman assign on page load when doc number is null'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38943374271156769)
,p_event_id=>wwv_flow_api.id(38942835435156768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_smncde varchar2(20);',
'begin',
'if :P281_DOCNUMBR is null then',
'select distinct SMANCODE into :P281_SMANCODE from nmsmnmas',
'where COMPCODE=:COMPCODE',
'and  USERNAME=:APP_USER;',
'end if;',
'end;'))
,p_attribute_02=>'P281_DOCNUMBR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38943857292156770)
,p_event_id=>wwv_flow_api.id(38942835435156768)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P281_DOCNUMBR is null then',
'select distinct SMANNAME into :P281_SMNNAME from nmsmnmas',
'where SMANCODE=:P281_SMANCODE;',
'end if;',
'end;'))
,p_attribute_03=>'P281_SMNNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38944221884156770)
,p_name=>'Change mobile No.'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P281_MOBILNO_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38944750025156771)
,p_event_id=>wwv_flow_api.id(38944221884156770)
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
'    WHERE compcode = :COMPCODE AND CUSTMOBL = :P281_MOBILNO_1;',
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
'             INTO :P281_CUSTMRID,',
'                  :P281_CUSTOMER_CODE,',
'                  :P281_PRESENT_ADDR,',
'                  :P281_CONTACT_PERSON,',
'                  :P281_HOME_PHONE,',
'                  :P281_OFFICE_PHONE,',
'                  :P281_TEFAXNUM,',
'                  :P281_CUSTMAIL,',
'                  :P281_PARTYCDE',
'             FROM nmmrkcus',
'            WHERE compcode = :COMPCODE AND CUSTMOBL = :P281_MOBILNO_1;',
'',
'          select distinct smancode ',
'           into :P281_SMANCODE',
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
'             INTO :P281_PRTYNAME,',
'                  :P281_DELRTYPE,',
'                  :P281_IDENTIFY,',
'                  :P281_MOBILENO,',
'                  :P281_PARTYAD2,',
'                  :P281_PARTYAD1,',
'                  :P281_WHSZONFK,',
'                  :P281_OCCUPATION,',
'                  :P281_phonenum',
'             FROM nmmrkpty',
'            WHERE compcode = :COMPCODE AND PARTYCDE = :P281_PARTYCDE;',
'',
'          end;',
'        END;',
'   end if;',
' exception',
' when no_data_found then',
'      raise_application_error(-20001,sqlerrm);',
'end;'))
,p_attribute_02=>'P281_MOBILNO_1'
,p_attribute_03=>'P281_CUSTMRID,P281_CUSTOMER_CODE,P281_PRESENT_ADDR,P281_CONTACT_PERSON,P281_HOME_PHONE,P281_OFFICE_PHONE,P281_TEFAXNUM,P281_CUSTMAIL,P281_PARTYCDE,P281_PRTYNAME,P281_DELRTYPE,P281_IDENTIFY,P281_MOBILENO,P281_PARTYAD2,P281_PARTYAD1,P281_OCCUPATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38945182158156771)
,p_name=>'Change National Id '
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P281_NATIONLID'
,p_condition_element=>'P281_NATIONLID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38945642110156771)
,p_event_id=>wwv_flow_api.id(38945182158156771)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT CUSTMRID',
'  INTO :P281_CUSTMRID',
'  FROM nmmrkcus',
' WHERE compcode = :COMPCODE',
'AND IDENTIFY= :P281_NATIONLID;',
'end;'))
,p_attribute_02=>'P281_NATIONLID'
,p_attribute_03=>'P281_CUSTMRID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38934238905156759)
,p_name=>'Change Customer ID'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P281_CUSTMID'
,p_condition_element=>'P281_CUSTMID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38934716202156760)
,p_event_id=>wwv_flow_api.id(38934238905156759)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*begin',
'SELECT CUSTMRID',
'  INTO :P281_CUSTMRID',
'  FROM nmmrkcus',
' WHERE compcode = :COMPCODE',
'AND CUSTMRID= :P281_CUSTMID;',
'end;',
'*/',
'BEGIN',
'   SELECT CUSTMRID,',
'          CUSTNAME,',
'          CUSTADR1,',
'          CONTPERS,',
'          CUSTPHON,',
'          CUSTMOBL,',
'          TEFAXNUM,',
'          CUSTMAIL,',
'          PARTYCDE',
'     INTO :P281_CUSTMRID,',
'          :P281_CUSTOMER_CODE,',
'          :P281_PRESENT_ADDR,',
'          :P281_CONTACT_PERSON,',
'          :P281_HOME_PHONE,',
'          :P281_OFFICE_PHONE,',
'          :P281_TEFAXNUM,',
'          :P281_CUSTMAIL,',
'          :P281_PARTYCDE',
'     FROM nmmrkcus',
'    WHERE compcode = :COMPCODE AND CUSTMRID = :P281_CUSTMID;',
'',
'  select distinct smancode ',
'   into :P281_SMANCODE',
'   from nmsmnmas ',
'   where username=:APP_USER',
'     and SMANTYPE = ''CO'';   ',
'     ',
'    begin',
'     SELECT PRTYNAME,',
'          DELRTYPE,',
'          IDENTIFY,',
'          MOBILENO,',
'          PARTYAD2,',
'          PARTYAD1,',
'          WHSZONFK,',
'          OCCUPATION,',
'          phonenum',
'     INTO :P281_PRTYNAME,',
'          :P281_DELRTYPE,',
'          :P281_IDENTIFY,',
'          :P281_MOBILENO,',
'          :P281_PARTYAD2,',
'          :P281_PARTYAD1,',
'          :P281_WHSZONFK,',
'          :P281_OCCUPATION,',
'          :P281_phonenum',
'     FROM nmmrkpty',
'    WHERE compcode = :COMPCODE AND PARTYCDE = :P281_PARTYCDE;',
'   end;',
'END;',
'',
'',
'',
'',
'  '))
,p_attribute_02=>'P281_CUSTMID'
,p_attribute_03=>'P281_CUSTMRID,P281_CUSTOMER_CODE,P281_PRESENT_ADDR,P281_CONTACT_PERSON,P281_HOME_PHONE,P281_OFFICE_PHONE,P281_TEFAXNUM,P281_CUSTMAIL,:P281_PRTYNAME,P281_DELRTYPE,P281_IDENTIFY,P281_MOBILENO,P281_PARTYAD2,P281_PARTYAD1,P281_OCCUPATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38935133511156760)
,p_name=>'Change smanname'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P281_SMANCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38935613760156760)
,p_event_id=>wwv_flow_api.id(38935133511156760)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  SELECT DISTINCT INITCAP (J.SMANNAME) ',
'   into :P281_SMNNAME',
'    FROM nmsmnmas j',
'   WHERE j.compcode = :compcode',
'     and J.SMANCODE = :P281_SMANCODE;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_attribute_02=>'P281_SMANCODE'
,p_attribute_03=>'P281_SMNNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38936010238156761)
,p_name=>'add rows javascript'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38936563379156761)
,p_event_id=>wwv_flow_api.id(38936010238156761)
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
 p_id=>wwv_flow_api.id(38936950286156762)
,p_name=>'Change Tracking No'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P281_TRACNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38937465146156762)
,p_event_id=>wwv_flow_api.id(38936950286156762)
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
'     INTO :P281_CUSTMRID,',
'          :P281_CUSTOMER_CODE,',
'          :P281_PRESENT_ADDR,',
'          :P281_CONTACT_PERSON,',
'          :P281_HOME_PHONE,',
'          :P281_OFFICE_PHONE,',
'          :P281_TEFAXNUM,',
'          :P281_CUSTMAIL,',
'          :P281_PARTYCDE',
'      FROM nmmrkcus s,nmcusvlg g',
'    WHERE s.compcode = :COMPCODE --AND CUSTMOBL = :P281_MOBILNO',
'     and S.CUSTMRID = G.CUSTMRID',
'     and G.DOCNUMBR = :P281_TRACNO;',
'     ',
'  select distinct smancode ',
'   into :P281_SMANCODE',
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
'     INTO :P281_PRTYNAME,',
'          :P281_DELRTYPE,',
'          :P281_IDENTIFY,',
'          :P281_MOBILENO,',
'          :P281_PARTYAD2,',
'          :P281_PARTYAD1,',
'          :P281_WHSZONFK,',
'          :P281_OCCUPATION,',
'          :P281_phonenum',
'     FROM nmmrkpty',
'    WHERE compcode = :COMPCODE AND PARTYCDE = :P281_PARTYCDE;',
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
,p_attribute_02=>'P281_TRACNO'
,p_attribute_03=>'P281_CUSTMRID,P281_CUSTOMER_CODE,P281_PRESENT_ADDR,P281_CONTACT_PERSON,P281_HOME_PHONE,P281_OFFICE_PHONE,P281_TEFAXNUM,P281_CUSTMAIL,P281_PRTYNAME,P281_DELRTYPE,P281_IDENTIFY,P281_MOBILENO,P281_PARTYAD2,P281_PARTYAD1,P281_OCCUPATION'
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
 p_id=>wwv_flow_api.id(38937835725156763)
,p_name=>'GEt_customer_details'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P281_CUSTMRID'
,p_condition_element=>'P281_CUSTMRID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38938336960156763)
,p_event_id=>wwv_flow_api.id(38937835725156763)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if :P281_CUSTMRID is not null then',
'SELECT Custname,',
'       Custadr1 || '','' || custadr2 Address,',
'      CONTPERS,',
'PARTYCDE,',
'       custphon Phone,',
'       CUSTMOBL Mobile,',
'       Custmail Email,',
'      TEFAXNUM,',
'      PARTYCDE,',
'      OTHMOBNO',
'  INTO  :P281_CUSTOMER_CODE,:P281_PRESENT_ADDR, :P281_CONTACT_PERSON,:P137_PARTYCD1,',
'        :P281_HOME_PHONE, :P281_MOBILE_NO, :P281_CUSTMAIL,:P281_TEFAXNUM,:P281_PARTYCDE,:P281_OTHMOBNO',
'  FROM nmmrkcus',
' WHERE compcode = :COMPCODE AND custmrid = :P281_CUSTMRID;',
' end if;',
'if :P281_PARTYCDE is not null then',
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
'     INTO :P281_PRTYNAME,',
'          :P281_DELRTYPE,',
'          :P281_IDENTIFY,',
'          :P281_MOBILENO,',
'          :P281_PARTYAD2,',
'          :P281_PARTYAD1,',
'          :P281_WHSZONFK,',
'          :P281_OCCUPATION,',
'          :P281_phonenum',
'     FROM nmmrkpty',
'    WHERE compcode = :COMPCODE AND PARTYCDE = :P281_PARTYCDE;',
'   end;',
'end if;',
'EXCEPTION',
' WHEN no_data_found',
'   THEN',
'      raise_application_error (-20001, SQLERRM||'' ''||:P281_CUSTMRID);',
' WHEN too_many_rows',
'   THEN',
'      raise_application_error (-20001, SQLERRM||'' ''||:P281_CUSTMRID);',
'   WHEN OTHERS',
'   THEN',
'      raise_application_error (-20001, SQLERRM);',
'END;'))
,p_attribute_02=>'P281_CUSTMRID'
,p_attribute_03=>'P281_CUSTOMER_CODE,P281_PRESENT_ADDR,P281_CONTACT_PERSON,P281_PARTYCD1,P281_HOME_PHONE,P281_MOBILE_NO,P281_CUSTMAIL,P281_TEFAXNUM,P281_PARTYCDE,P281_PRTYNAME,P281_DELRTYPE,P281_IDENTIFY,P281_MOBILENO,P281_PARTYAD2,P281_PARTYAD1, P281_OCCUPATION,P281_'
||'PHONENUM,P281_OTHMOBNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38938704493156763)
,p_name=>'change_partycde'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P281_PARTYCDE'
,p_condition_element=>'P281_PARTYCDE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38939273843156764)
,p_event_id=>wwv_flow_api.id(38938704493156763)
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
' INTO :P281_PRTYNAME,',
'      :P281_DELRTYPE,',
'      :P281_IDENTIFY,',
'      :P281_MOBILENO,',
'      :P281_PARTYAD2,',
'      :P281_PARTYAD1,',
'      :P281_WHSZONFK',
' FROM nmmrkpty',
'WHERE compcode = :COMPCODE AND PARTYCDE = :P281_PARTYCDE;',
'end;'))
,p_attribute_02=>'P281_PARTYCDE'
,p_attribute_03=>'P281_PRTYNAME,P281_DELRTYPE,P281_IDENTIFY,P281_MOBILENO,P281_PARTYAD2,P281_PARTYAD1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38931527135156756)
,p_name=>'set_val'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38932027339156756)
,p_event_id=>wwv_flow_api.id(38931527135156756)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_warecode varchar2(100);',
'begin',
'',
'SELECT WARECODE into :P281_WARECODE',
'FROM',
'( SELECT DISTINCT INITCAP (J.WAREDESC) waredesc, c.WARECODE, 1 ROWN',
'    FROM nmwhsmas j, sycstacc c',
'   WHERE     j.compcode = :compcode',
'         AND j.compcode = c.compcode(+)',
'         AND j.WARECODE = c.WARECODE(+)',
'         AND c.grupcode = :APP_USER',
'         AND nvl(J.MAINSTOR,''N'') = ''Y''',
' UNION ALL',
'  SELECT DISTINCT INITCAP (J.WAREDESC) waredesc, c.WARECODE, 2 ROWN',
'    FROM nmwhsmas j, sycstacc c',
'   WHERE     j.compcode = :compcode',
'         AND j.compcode = c.compcode(+)',
'         AND j.WARECODE = c.WARECODE(+)',
'         AND c.grupcode = :APP_USER',
'         AND nvl(J.MAINSTOR,''N'') = ''N''',
'         AND j.WARECODE not like (''D%'')',
'ORDER BY ROWN);',
'',
'exception',
'when no_data_found then',
':P281_WARECODE:=null;',
'when too_many_rows then',
':P281_WARECODE:=null;',
'when others then',
':P281_WARECODE:=v_warecode;',
'end;'))
,p_attribute_03=>'P281_WARECODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38932401819156757)
,p_name=>'Change_Mobile'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P281_MOBILNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38932922801156758)
,p_event_id=>wwv_flow_api.id(38932401819156757)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' vc number;',
'begin',
'if :P281_MOBILNO is not null tHEN --AND :P281_EXISTS_MOBNO<>1 then',
'     SELECT count(*)',
'     into vc',
'      FROM nmmrkcus',
'    WHERE compcode = :COMPCODE AND CUSTMOBL = :P281_MOBILNO;',
'   if vc=0 then',
'    --apex.message.alert(''My Alert Message'', ''Youve pressed ok!'');',
'    --apex_application.g_print_success_message := ''<span style="color:green">This customer not exists...</span>'';',
'    --raise_application_error(-20001,''This customer not exists...'');',
'    :P281_EXISTS_MOBNO := 1;  ',
'   else',
'    :P281_EXISTS_MOBNO := 0;  ',
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
'             INTO :P281_CUSTMRID,',
'                  :P281_CUSTOMER_CODE,',
'                  :P281_PRESENT_ADDR,',
'                  :P281_CONTACT_PERSON,',
'                  :P281_HOME_PHONE,',
'                  :P281_OFFICE_PHONE,',
'                  :P281_TEFAXNUM,',
'                  :P281_CUSTMAIL,',
'                  :P281_PARTYCDE',
'             FROM nmmrkcus',
'            WHERE compcode = :COMPCODE AND CUSTMOBL = :P281_MOBILNO;',
'',
'          select distinct smancode ',
'           into :P281_SMANCODE',
'           from nmsmnmas ',
'           where username=:APP_USER;',
'        --     and SMANTYPE = ''CO'';',
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
'             INTO :P281_PRTYNAME,',
'                  :P281_DELRTYPE,',
'                  :P281_IDENTIFY,',
'                  :P281_MOBILENO,',
'                  :P281_PARTYAD2,',
'                  :P281_PARTYAD1,',
'                  :P281_WHSZONFK,',
'                  :P281_OCCUPATION,',
'                  :P281_phonenum',
'             FROM nmmrkpty',
'            WHERE compcode = :COMPCODE AND PARTYCDE = :P281_PARTYCDE;',
'',
'          end;',
'        END;',
'   end if;',
' else',
' :P281_EXISTS_MOBNO := 0;  ',
'end if;',
'end;'))
,p_attribute_02=>'P281_MOBILNO'
,p_attribute_03=>'P281_CUSTMRID,P281_CUSTOMER_CODE,P281_PRESENT_ADDR,P281_CONTACT_PERSON,P281_HOME_PHONE,P281_OFFICE_PHONE,P281_TEFAXNUM,P281_CUSTMAIL,P281_PARTYCDE,P281_PRTYNAME,P281_DELRTYPE,P281_IDENTIFY,P281_MOBILENO,P281_PARTYAD2,P281_PARTYAD1,P281_OCCUPATION,P28'
||'1_EXISTS_MOBNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39253778210976441)
,p_name=>'Change_Mobile_2'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P281_MOBILENO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39254008785976444)
,p_event_id=>wwv_flow_api.id(39253778210976441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P281_EXISTS_MOBNO,P281_OTHMOBNO,P281_PRTYNAME,P281_DELRTYPE,P281_IDENTIFY,P281_MOBILENO,P281_PARTYAD2,P281_PARTYAD1,P281_WHSZONFK, P281_OCCUPATION,P281_PHONENUM,P281_CUSTMRID,P281_CUSTOMER_CODE,P281_PRESENT_ADDR,P281_CONTACT_PERSON, P281_HOME_PHONE,P'
||'281_OFFICE_PHONE,P281_TEFAXNUM,P281_CUSTMAIL,P281_PARTYCDE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39253800620976442)
,p_event_id=>wwv_flow_api.id(39253778210976441)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' vc number;',
'begin',
'if :P281_MOBILNO is not null tHEN --AND :P281_EXISTS_MOBNO<>1 then',
'     SELECT count(*)',
'     into vc',
'      FROM nmmrkcus',
'    WHERE compcode = :COMPCODE AND CUSTMOBL = :P281_MOBILENO;',
'   if vc=0 then',
'    --apex.message.alert(''My Alert Message'', ''Youve pressed ok!'');',
'    --apex_application.g_print_success_message := ''<span style="color:green">This customer not exists...</span>'';',
'--    raise_application_error(-20001,''This customer not exists...'');',
'    :P281_EXISTS_MOBNO := 1;  ',
'   else',
'    :P281_EXISTS_MOBNO := 0;  ',
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
'             INTO :P281_CUSTMRID,',
'                  :P281_CUSTOMER_CODE,',
'                  :P281_PRESENT_ADDR,',
'                  :P281_CONTACT_PERSON,',
'                  :P281_HOME_PHONE,',
'                  :P281_OFFICE_PHONE,',
'                  :P281_TEFAXNUM,',
'                  :P281_CUSTMAIL,',
'                  :P281_PARTYCDE',
'             FROM nmmrkcus',
'            WHERE compcode = :COMPCODE AND CUSTMOBL = :P281_MOBILENO;',
'',
'          select distinct smancode ',
'           into :P281_SMANCODE',
'           from nmsmnmas ',
'           where username=:APP_USER',
'             and SMANTYPE = ''CO'';',
'',
'           begin',
'             SELECT PRTYNAME,',
'                  DELRTYPE,',
'                  IDENTIFY,',
'                 -- MOBILENO,',
'                  PARTYAD2,',
'                  PARTYAD1,',
'                  WHSZONFK,',
'                  OCCUPATION,',
'                  phonenum',
'             INTO :P281_PRTYNAME,',
'                  :P281_DELRTYPE,',
'                  :P281_IDENTIFY,',
'                  --:P281_MOBILENO,',
'                  :P281_PARTYAD2,',
'                  :P281_PARTYAD1,',
'                  :P281_WHSZONFK,',
'                  :P281_OCCUPATION,',
'                  :P281_phonenum',
'             FROM nmmrkpty',
'            WHERE compcode = :COMPCODE AND PARTYCDE = :P281_PARTYCDE;',
'',
'          end;',
'          ',
'        END;',
'   end if;',
' else',
' :P281_EXISTS_MOBNO := 0;  ',
'end if;',
'end;'))
,p_attribute_02=>'P281_MOBILENO'
,p_attribute_03=>'P281_CUSTMRID,P281_CUSTOMER_CODE,P281_PRESENT_ADDR,P281_CONTACT_PERSON,P281_HOME_PHONE,P281_OFFICE_PHONE,P281_TEFAXNUM,P281_CUSTMAIL,P281_PARTYCDE,P281_PRTYNAME,P281_DELRTYPE,P281_IDENTIFY,P281_PARTYAD2,P281_PARTYAD1,P281_OCCUPATION,P281_EXISTS_MOBNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38933338500156758)
,p_name=>'Change_Mobile_1'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P281_MOBILNO_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38933839502156759)
,p_event_id=>wwv_flow_api.id(38933338500156758)
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
'    WHERE compcode = :COMPCODE AND CUSTMOBL = :P281_MOBILNO_2;',
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
'             INTO :P281_CUSTMRID,',
'                  :P281_CUSTOMER_CODE,',
'                  :P281_PRESENT_ADDR,',
'                  :P281_CONTACT_PERSON,',
'                  :P281_HOME_PHONE,',
'                  :P281_OFFICE_PHONE,',
'                  :P281_TEFAXNUM,',
'                  :P281_CUSTMAIL,',
'                  :P281_PARTYCDE',
'             FROM nmmrkcus',
'            WHERE compcode = :COMPCODE AND CUSTMOBL = :P281_MOBILNO_2;',
'',
'          select distinct smancode ',
'           into :P281_SMANCODE',
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
'             INTO :P281_PRTYNAME,',
'                  :P281_DELRTYPE,',
'                  :P281_IDENTIFY,',
'                  :P281_MOBILENO,',
'                  :P281_PARTYAD2,',
'                  :P281_PARTYAD1,',
'                  :P281_WHSZONFK,',
'                  :P281_OCCUPATION,',
'                  :P281_phonenum',
'             FROM nmmrkpty',
'            WHERE compcode = :COMPCODE AND PARTYCDE = :P281_PARTYCDE;',
'',
'          end;',
'        END;',
'   end if;',
'end;'))
,p_attribute_02=>'P281_MOBILNO_2'
,p_attribute_03=>'P281_CUSTMRID,P281_CUSTOMER_CODE,P281_PRESENT_ADDR,P281_CONTACT_PERSON,P281_HOME_PHONE,P281_OFFICE_PHONE,P281_TEFAXNUM,P281_CUSTMAIL,P281_PARTYCDE,P281_PRTYNAME,P281_DELRTYPE,P281_IDENTIFY,P281_MOBILENO,P281_PARTYAD2,P281_PARTYAD1,P281_OCCUPATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39251942447976423)
,p_name=>'New'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P281_EXISTS_MOBNO'
,p_condition_element=>'P281_EXISTS_MOBNO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39252200208976426)
,p_event_id=>wwv_flow_api.id(39251942447976423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P281_EXISTS_MOBNO,P281_OTHMOBNO,P281_PRTYNAME,P281_DELRTYPE,P281_IDENTIFY,P281_MOBILENO,P281_PARTYAD2,P281_PARTYAD1,P281_WHSZONFK, P281_OCCUPATION,P281_PHONENUM,P281_CUSTMRID,P281_CUSTOMER_CODE,P281_PRESENT_ADDR,P281_CONTACT_PERSON, P281_HOME_PHONE,P'
||'281_OFFICE_PHONE,P281_TEFAXNUM,P281_CUSTMAIL,P281_PARTYCDE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39252030792976424)
,p_event_id=>wwv_flow_api.id(39251942447976423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'This customer not exists...'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38929914552156754)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMCUSVLG'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'P281_DOCNUMBR'
,p_attribute_04=>'DOCNUMBR'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38498401278142409)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_warecode varchar2(100);',
'begin',
':P281_WARECODE:=''123'';',
'/*',
'SELECT WARECODE into :P281_WARECODE',
'FROM',
'( SELECT DISTINCT INITCAP (J.WAREDESC) waredesc, c.WARECODE, 1 ROWN',
'    FROM nmwhsmas j, sycstacc c',
'   WHERE     j.compcode = :compcode',
'         AND j.compcode = c.compcode(+)',
'         AND j.WARECODE = c.WARECODE(+)',
'         AND c.grupcode = :APP_USER',
'         AND nvl(J.MAINSTOR,''N'') = ''Y''',
' UNION ALL',
'  SELECT DISTINCT INITCAP (J.WAREDESC) waredesc, c.WARECODE, 2 ROWN',
'    FROM nmwhsmas j, sycstacc c',
'   WHERE     j.compcode = :compcode',
'         AND j.compcode = c.compcode(+)',
'         AND j.WARECODE = c.WARECODE(+)',
'         AND c.grupcode = :APP_USER',
'         AND nvl(J.MAINSTOR,''N'') = ''N''',
'         AND j.WARECODE not like (''D%'')',
'ORDER BY ROWN);',
'',
'/*exception',
'when no_data_found then',
':P281_WARECODE:=null;',
'when too_many_rows then',
':P281_WARECODE:=null;',
'when others then',
':P281_WARECODE:=v_warecode;*/',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38909659734156719)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(108322381939759289)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'CUSTOMERS_ENQUIRES'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'  #MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38929566452156754)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38910077584156720)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(108322381939759289)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'CUSTOMERS_ENQUIRES'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38928745428156753)
,p_process_sequence=>25
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMMRKPTY'
,p_attribute_02=>'NMMRKPTY'
,p_attribute_03=>'P281_PARTYCDE'
,p_attribute_04=>'PARTYCDE'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38930301063156754)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMCUSVLG'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'P281_DOCNUMBR'
,p_attribute_04=>'DOCNUMBR'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38930706324156755)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(38881665244156674)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38928303524156752)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(38882049564156675)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38929150241156753)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert nmmrkpty'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' nxtptycde number(10);',
' vcount number;',
'begin',
'IF :P281_CUSTMRID IS NULL THEN',
'--------------',
'    begin',
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
'    If :P281_PARTYCDE is Null then',
'      :P281_PARTYCDE := upper(''CU'')|| lpad(to_char(nxtptycde ),4,0);',
'    end if;',
'',
'    if :P281_WHSZONFK is null then',
'     :P281_WHSZONFK := :P281_WHSZONFK_1;',
'    end if;',
'    exception',
'    when no_data_found then',
'    raise_application_error(-200001,''fsf'');',
'    when too_many_rows then',
'    null;',
'    when others then',
'    raise_application_error(-200001,''fsf'');',
'    end;',
'--------------',
'    begin',
'      select count(*)',
'      into vcount',
'      from nmmrkcus',
'      where PARTYCDE = :P281_PARTYCDE',
'       and compcode = :compcode;',
'     end;',
'     ',
'if vcount = 0 then',
'insert into nmmrkpty(COMPCODE,PARTYTYP,PARTYCDE,DELRTYPE,OCCUPATION,PRTYNAME,IDENTIFY,MOBILENO,PARTYAD2,PARTYAD1,WHSZONFK,OPRSTAMP,TIMSTAMP,PHONENUM,OTHMOBNO)',
'values (:COMPCODE,''CU'',:P281_PARTYCDE,:P281_DELRTYPE,:P281_OCCUPATION,:P281_PRTYNAME,:P281_IDENTIFY,:P281_MOBILENO,:P281_PARTYAD2,:P281_PARTYAD1,:P281_WHSZONFK,:APP_USER,sysdate,',
'       :P281_PHONENUM,:P281_OTHMOBNO);',
'commit;',
'end if;',
'ELSE',
'    UPDATE nmmrkpty',
'    SET DELRTYPE = :P281_DELRTYPE,',
'        OCCUPATION = :P281_OCCUPATION,',
'        PRTYNAME = :P281_PRTYNAME,',
'        IDENTIFY = :P281_IDENTIFY,',
'        MOBILENO = :P281_MOBILENO,',
'        PARTYAD2 = :P281_PARTYAD2,',
'        PARTYAD1 = :P281_PARTYAD1,',
'        WHSZONFK = :P281_WHSZONFK,',
'        PHONENUM = :P281_PHONENUM,',
'        OTHMOBNO = :P281_OTHMOBNO',
'    WHERE PARTYCDE = :P281_PARTYCDE',
'     AND COMPCODE = :COMPCODE;',
'    COMMIT;',
'END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38931162920156755)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'preinsert on NMCUSVLG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_docnum varchar2(50);',
'begin',
'if :P281_PARTYCDE is not null then',
'    begin ',
'     select CUSTMRID',
'      into :P281_CUSTMRID',
'     from nmmrkcus',
'     where compcode = :compcode',
'      and PARTYCDE = :P281_PARTYCDE;',
'     exception',
'     when no_data_found then',
'      :P281_CUSTMRID := '''';',
'    end;',
'end if;',
':P281_COMPCODE:=:COMPCODE;',
'Docnumber_Generation(:COMPCODE,''NM'',''CS'', 2, sysdate,:P281_WARECODE, ''NM'', v_docnum);',
':P281_DOCNUMBR:=v_docnum;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(38881665244156674)
,p_process_success_message=>'Success Customer visit log &P281_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38909244581156719)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(108322381939759289)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert  Customers Queries'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':COMPCODE:=:P281_COMPCODE;',
':CUSTOMER_ID:=:P281_CUSTMRID;',
':DOCNUMBR:=:P281_DOCNUMBR;',
':DOCTTYPE:=:P281_DOCTTYPE;',
':SUBTTYPE:=:P281_SUBTTYPE;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38572340989987631)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'check_mobno'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if length(:P281_MOBILENO) <> 11 then',
' raise_application_error(-20002,''Mobile No must be in 11 digits..'');',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Mobile No must be in 11 digits..'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
