prompt --application/pages/page_00108
begin
--   Manifest
--     PAGE: 00108
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
 p_id=>108
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'customer_inquiries'
,p_step_title=>'customer_inquiries'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function getCustomerCode(pThis)',
'{',
'',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'   ',
'html_GetElement(''f02_''+vRow).value = document.getElementById(''P108_COMPCODE'').value;',
'html_GetElement(''f03_''+vRow).value = document.getElementById(''P108_CUSTOMER_CODE'').value;',
'',
'}',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#R5631732985316420',
'',
'{',
'    float:right;',
'    display:block;',
'    width:35% !important;  ',
'    margin-top:-25px;',
'    padding:0px 0px; ',
'}',
'',
'',
'#R3436862711303705',
'{',
'    float:left;',
'    display:block;',
'    width:100% !important;  ',
'',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42769796148996902)
,p_plug_name=>'Customer Visits & Inquiries Entry'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42775428730996908)
,p_plug_name=>'Customers Inquiry Main Container'
,p_parent_plug_id=>wwv_flow_api.id(42769796148996902)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>25
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42775850726996908)
,p_plug_name=>'Customers Info'
,p_parent_plug_id=>wwv_flow_api.id(42775428730996908)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>35
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42776178296996908)
,p_plug_name=>'general info'
,p_parent_plug_id=>wwv_flow_api.id(42775850726996908)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<span style="font-size:1.2em"><u>General Info</u></span></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42780999317996911)
,p_plug_name=>'Contact Info'
,p_parent_plug_id=>wwv_flow_api.id(42775850726996908)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<span style="font-size:1.2em"><u>Contact Info</u></span></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42783784151996913)
,p_plug_name=>'Customer Interests & Queries'
,p_parent_plug_id=>wwv_flow_api.id(42775428730996908)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>55
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42784263068996913)
,p_plug_name=>'Customer''s Interest'
,p_parent_plug_id=>wwv_flow_api.id(42783784151996913)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>75
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<span style="font-size:1.2em"><u>Customer''s Interest & Queries</u></span></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(42786600110996914)
,p_name=>'Customers Queries'
,p_parent_plug_id=>wwv_flow_api.id(42784263068996913)
,p_template=>wwv_flow_api.id(47571616129858176)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"COMPCODE",',
'"CUSTOMER_ID",',
'"CUSTOMERS_ENQUIRES"',
'from "#OWNER#"."CUSTOMERS_ENQUIRES"',
'where compcode=:COMPCODE',
'AND CUSTOMER_ID=:P108_CUSTMRID',
''))
,p_display_condition_type=>'NEVER'
,p_lazy_loading=>false
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42788591737996914)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42787048541996914)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'CUSTOMERS_ENQUIRES'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42787395621996914)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'CUSTOMERS_ENQUIRES'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42787787356996914)
,p_query_column_id=>4
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'CUSTOMERS_ENQUIRES'
,p_ref_column_name=>'CUSTOMER_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(42788231812996914)
,p_query_column_id=>5
,p_column_alias=>'CUSTOMERS_ENQUIRES'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'SELECT_LIST'
,p_inline_lov=>'STATIC:Colors Available,Delivery Lead Time,Engine Capacity,Exterior Color,Interior Color,KM/Liter,Max Power,Others,Price'
,p_lov_show_nulls=>'YES'
,p_lov_null_text=>'Select a Queries'
,p_column_width=>16
,p_cattributes=>'onchange="getCustomerCode(this);"'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'CUSTOMERS_ENQUIRES'
,p_ref_column_name=>'CUSTOMERS_ENQUIRES'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42791378051996916)
,p_plug_name=>'Customer''s Current Vehicle Info'
,p_parent_plug_id=>wwv_flow_api.id(42783784151996913)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>85
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<span style="font-size:1.2em"><u>Customer''s Current Vehicle Info</u></span></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42793783316996917)
,p_plug_name=>'Test Drive & Sales Info'
,p_parent_plug_id=>wwv_flow_api.id(42775428730996908)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>95
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42794243089996917)
,p_plug_name=>'Test Drive'
,p_parent_plug_id=>wwv_flow_api.id(42793783316996917)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>75
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<span style="font-size:1.2em"><u>Test Drive Info</u></span></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42796652317996917)
,p_plug_name=>'Sales Info'
,p_parent_plug_id=>wwv_flow_api.id(42793783316996917)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>85
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<span style="font-size:1.2em"><u>Sales Info</u></span></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42832946689427029)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>105
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P108_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P108_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42789450112996916)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(42786600110996914)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Queries'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42771024325996903)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(42769796148996902)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P108_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42789819546996916)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(42786600110996914)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42770231517996903)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(42769796148996902)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:121:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42790216388996916)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(42786600110996914)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42771427387996903)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(42769796148996902)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P108_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42770661881996903)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(42769796148996902)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P108_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42789008555996916)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(42786600110996914)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42771853774996905)
,p_name=>'P108_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(42769796148996902)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42772169205996906)
,p_name=>'P108_COMPCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(42769796148996902)
,p_use_cache_before_default=>'NO'
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42772647419996906)
,p_name=>'P108_DOCTTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(42769796148996902)
,p_use_cache_before_default=>'NO'
,p_item_default=>'CS'
,p_source=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42773004744996906)
,p_name=>'P108_SUBTTYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(42769796148996902)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_source=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42773376952996906)
,p_name=>'P108_DOCNUMBR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(42769796148996902)
,p_use_cache_before_default=>'NO'
,p_source=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42773825054996906)
,p_name=>'P108_RAISEDBY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(42769796148996902)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42774222417996906)
,p_name=>'P108_OPRSTAMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(42769796148996902)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42774603634996908)
,p_name=>'P108_TIMSTAMP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(42769796148996902)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42775029842996908)
,p_name=>'P108_PARTYCD1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(42769796148996902)
,p_use_cache_before_default=>'NO'
,p_source=>'PARTYCD1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42776635735996909)
,p_name=>'P108_CUSTMRID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(42776178296996908)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer'
,p_source=>'CUSTMRID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prtyname ||',
''' (''||custmrid||'')'' customer_name,custmrid customer_code',
'  FROM sycompty',
' WHERE compcode = :compcode',
'and custmrid  is not null;'))
,p_lov_display_null=>'YES'
,p_cSize=>25
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42776984753996909)
,p_name=>'P108_CUSTOMER_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(42776178296996908)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42777431619996909)
,p_name=>'P108_DOCTDATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(42776178296996908)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Visit Date & Time'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>25
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42777823177996909)
,p_name=>'P108_DESIGNATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(42776178296996908)
,p_prompt=>'Designation/Position'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true style="background-color:#E0E0E0; border:1px solid #A9A9A9 ;height:17px;"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42778172252996909)
,p_name=>'P108_CONTACT_PERSON'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(42776178296996908)
,p_prompt=>'Contact Person'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true style="background-color:#E0E0E0; border:1px solid #A9A9A9 ;height:17px;"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42778589439996909)
,p_name=>'P108_CUST_COMPANY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(42776178296996908)
,p_prompt=>'Cust Company'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true style="background-color:#E0E0E0; border:1px solid #A9A9A9 ;height:17px;"'
,p_label_alignment=>'LEFT-BOTTOM'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42779055763996909)
,p_name=>'P108_INDUSTRY_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(42776178296996908)
,p_prompt=>'Industry Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true style="background-color:#E0E0E0; border:1px solid #A9A9A9 ;height:17px;"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42779405405996911)
,p_name=>'P108_PRESENT_ADDR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(42776178296996908)
,p_prompt=>'Present Addr.'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>26
,p_cMaxlength=>4000
,p_cHeight=>2
,p_tag_attributes=>'readonly=true style="background-color:#E0E0E0; border:1px solid #A9A9A9 ;height:17px;"'
,p_field_alignment=>'LEFT-CENTER'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42779804212996911)
,p_name=>'P108_AREA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(42776178296996908)
,p_prompt=>'Area (Thana)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>4000
,p_tag_attributes=>'readonly=true style="background-color:#E0E0E0; border:1px solid #A9A9A9 ;height:17px;"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   areadesc "Area Name",areacode "Area Cocde"',
'    FROM nmwhznms z',
'   WHERE z.compcode = :compcode AND locatype = ''UPZ'' AND areadesc IS NOT NULL',
'ORDER BY 1',
'',
'',
'readonly=true style="background-color:#E0E0E0; border:1px solid #A9A9A9 ;height:17px;"'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42780223644996911)
,p_name=>'P108_CITY_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(42776178296996908)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>18
,p_tag_attributes=>'readonly=true style="background-color:#E0E0E0; border:1px solid #A9A9A9 ;height:17px;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42780653439996911)
,p_name=>'P108_CITY_CODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(42776178296996908)
,p_prompt=>'City (Dist.)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_tag_attributes=>'readonly=true style="background-color:#E0E0E0; border:1px solid #A9A9A9 ;height:17px;"'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42781429423996911)
,p_name=>'P108_HOME_PHONE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(42780999317996911)
,p_prompt=>'Home Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42781832101996913)
,p_name=>'P108_OFFICE_PHONE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(42780999317996911)
,p_prompt=>'Office Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42782209114996913)
,p_name=>'P108_MOBILE_NO'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(42780999317996911)
,p_prompt=>'Mobile No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42782634127996913)
,p_name=>'P108_TEFAXNUM'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(42780999317996911)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fax No'
,p_source=>'TEFAXNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>60
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42782995952996913)
,p_name=>'P108_CUSTMAIL'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(42780999317996911)
,p_use_cache_before_default=>'NO'
,p_prompt=>'eMail ID'
,p_source=>'CUSTMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>150
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42783416479996913)
,p_name=>'P108_CONTACT_MODE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(42780999317996911)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mode of Contact'
,p_source=>'CONTACT_MODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STATIC2:Walk In;WI,eMail;EM,Reference;RF,Outdoor Sales Call;OS,Over Phone;OP,Visit;VS,SMS;SM,Corporate Presentation;CP,',
'Showroom Appointment;SA,Test Drive;TD,Internet;IN,Others;OT'))
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42784658327996913)
,p_name=>'P108_INTERESTED_BRAND'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(42784263068996913)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interested Brand'
,p_source=>'INTERESTED_BRAND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''COM'''))
,p_lov_display_null=>'YES'
,p_cSize=>25
,p_cMaxlength=>8
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42784971558996914)
,p_name=>'P108_INTERESTED_MODEL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(42784263068996913)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interested Model'
,p_source=>'INTERESTED_MODEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''MOD'''))
,p_lov_display_null=>'YES'
,p_cSize=>25
,p_cMaxlength=>8
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42785436649996914)
,p_name=>'P108_INTERIOR_COLOR'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(42784263068996913)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interior Color'
,p_source=>'INTERIOR_COLOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''CLR'''))
,p_lov_display_null=>'YES'
,p_cSize=>25
,p_cMaxlength=>8
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
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
 p_id=>wwv_flow_api.id(42785836923996914)
,p_name=>'P108_EXTERIOR_COLOR'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(42784263068996913)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Exterior Color'
,p_source=>'EXTERIOR_COLOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''CLR'''))
,p_lov_display_null=>'YES'
,p_cSize=>25
,p_cMaxlength=>8
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42786259197996914)
,p_name=>'P108_FUEL_TYPE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(42784263068996913)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fuel Type'
,p_source=>'FUEL_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Petrol;PT,Mobil;MB,Gasoline;GL,Diesel;DS,Kerosene;KS'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'style="width:100%;"'
,p_cattributes_element=>'style="width:100%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42791802552996916)
,p_name=>'P108_CURRENT_BRAND'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(42791378051996916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Current Brand'
,p_source=>'CURRENT_BRAND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''COM'''))
,p_lov_display_null=>'YES'
,p_cSize=>25
,p_cMaxlength=>8
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42792217908996916)
,p_name=>'P108_CURRENT_MODEL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(42791378051996916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Current Model'
,p_source=>'CURRENT_MODEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''MOD'''))
,p_lov_display_null=>'YES'
,p_cSize=>25
,p_cMaxlength=>8
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42792578973996916)
,p_name=>'P108_PURCHASED_FROM'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(42791378051996916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Purchased From'
,p_source=>'PURCHASED_FROM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>27
,p_cMaxlength=>512
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42793030650996916)
,p_name=>'P108_PURCHASE_DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(42791378051996916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Purchase Date'
,p_source=>'PURCHASE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>25
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42793371076996916)
,p_name=>'P108_AVERAGE_MILEAGE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(42791378051996916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Average Mileage'
,p_post_element_text=>'/month'
,p_source=>'AVERAGE_MILEAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>25
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42794644266996917)
,p_name=>'P108_TEST_DRIVE_FLAG'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(42794243089996917)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Test Drive Flag'
,p_post_element_text=>'&nbsp;'
,p_source=>'TEST_DRIVE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42794984284996917)
,p_name=>'P108_TEST_DRIVE_MODEL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(42794243089996917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Model'
,p_pre_element_text=>'&nbsp;'
,p_source=>'TEST_DRIVE_MODEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''MOD'''))
,p_lov_display_null=>'YES'
,p_cSize=>12
,p_cMaxlength=>8
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42795426664996917)
,p_name=>'P108_TEST_DRIVE_DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(42794243089996917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Test Drive Date'
,p_source=>'TEST_DRIVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>25
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42795767264996917)
,p_name=>'P108_TEST_BOOKING_DATE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(42794243089996917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Test Booking Date'
,p_source=>'TEST_BOOKING_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>25
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42796171089996917)
,p_name=>'P108_CUSTOMER_TEST_REMARKS'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(42794243089996917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Remarks'
,p_source=>'CUSTOMER_TEST_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>27
,p_cMaxlength=>512
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42797043561996917)
,p_name=>'P108_SMANCODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(42796652317996917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sales Person'
,p_source=>'SMANCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT smanname sales_person, smancode',
'  FROM nmsmnmas',
' WHERE compcode = :compcode '))
,p_lov_display_null=>'YES'
,p_cSize=>20
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42797369684996917)
,p_name=>'P108_REFERED_BY_SALES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(42796652317996917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Refered By'
,p_source=>'REFERED_BY_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>256
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42797817048996919)
,p_name=>'P108_NEXT_APOINTMENT_ON'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(42796652317996917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Next Apointment Date'
,p_source=>'NEXT_APOINTMENT_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42798243235996919)
,p_name=>'P108_SALES_POTENTIAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(42796652317996917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sales Potential'
,p_source=>'SALES_POTENTIAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1,2,3,4,5'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Sales Potential'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42798639888996919)
,p_name=>'P108_CUSTOMER_REMARKS_SALES'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(42796652317996917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Remarks'
,p_source=>'CUSTOMER_REMARKS_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>22
,p_cMaxlength=>512
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42799062766996919)
,p_name=>'P108_SALESMAN_REMARKS_SALES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(42796652317996917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salesman Remarks'
,p_source=>'SALESMAN_REMARKS_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>22
,p_cMaxlength=>512
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42799382007996919)
,p_name=>'P108_VERIFIED_FLAG_SALES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(42796652317996917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Verified Flag'
,p_source=>'VERIFIED_FLAG_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42799830077996919)
,p_name=>'P108_VERIFIED_BY_SALES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(42796652317996917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Verified By'
,p_source=>'VERIFIED_BY_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>256
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42833252807427029)
,p_name=>'P108_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(42832946689427029)
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
 p_id=>wwv_flow_api.id(42833597521427031)
,p_name=>'P108_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(42832946689427029)
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
 p_id=>wwv_flow_api.id(42834011530427032)
,p_name=>'P108_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(42832946689427029)
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
 p_id=>wwv_flow_api.id(43950763252028895)
,p_name=>'P108_AREA_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(42776178296996908)
,p_use_cache_before_default=>'NO'
,p_source=>'AREA_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>18
,p_cHeight=>1
,p_tag_attributes=>'readonly=true style="background-color:#E0E0E0; border:1px solid #A9A9A9 ;height:17px;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42802111115996920)
,p_name=>'show hide test drive info'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P108_TEST_DRIVE_FLAG'
,p_condition_element=>'P108_TEST_DRIVE_FLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42802578324996920)
,p_event_id=>wwv_flow_api.id(42802111115996920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P108_TEST_DRIVE_MODEL,P108_TEST_DRIVE_DATE,P108_TEST_BOOKING_DATE,P108_CUSTOMER_TEST_REMARKS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42803111441996920)
,p_event_id=>wwv_flow_api.id(42802111115996920)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P108_TEST_DRIVE_MODEL,P108_TEST_DRIVE_DATE,P108_TEST_BOOKING_DATE,P108_CUSTOMER_TEST_REMARKS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42804424463996920)
,p_name=>'get customers details'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P108_CUSTMRID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42804886798996920)
,p_event_id=>wwv_flow_api.id(42804424463996920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   :P108_CUSTOMER_CODE := :P108_CUSTMRID;',
'',
'   SELECT partycde, partyad1, phonenum,',
'          phone_res, tefaxnum, pemailid, mobileno,',
'          contact1, cust_company, cust_designation,',
'          cust_industry_type,areacode',
'     INTO :P108_PARTYCD1, :P108_PRESENT_ADDR, :P108_OFFICE_PHONE,',
'          :P108_HOME_PHONE, :P108_TEFAXNUM, :P108_CUSTMAIL, :P108_MOBILE_NO,',
'          :P108_CONTACT_PERSON, :P108_CUST_COMPANY, :P108_DESIGNATION,',
'          :P108_INDUSTRY_TYPE,:P108_AREA',
'     FROM sycompty',
'    WHERE compcode = :compcode AND custmrid = :P108_CUSTMRID;',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      NULL;                      --raise_application_error (-20001, SQLERRM);',
'END;'))
,p_attribute_02=>'P108_CUSTMRID'
,p_attribute_03=>'P108_PARTYCD1,P108_PRESENT_ADDR,P108_OFFICE_PHONE,P108_HOME_PHONE,P108_TEFAXNUM,P108_CUSTMAIL,P108_MOBILE_NO,P108_CUSTOMER_CODE,P108_CONTACT_PERSON,P108_CUST_COMPANY,P108_DESIGNATION,P108_INDUSTRY_TYPE,P108_AREA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT partycde, partyad1, phonenum,',
'          phone_res, tefaxnum, pemailid, mobileno',
'     INTO :P137_PARTYCD1, :P137_PRESENT_ADDR, :P137_OFFICE_PHONE,',
'          :P137_HOME_PHONE, :P137_TEFAXNUM, :P137_CUSTMAIL, :P137_MOBILE_NO',
'     FROM sycompty',
'    WHERE compcode = :COMPCODE AND custmrid = :P137_CUSTMRID;',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      NULL; --raise_application_error (-20001, SQLERRM);',
'END;',
'',
'P137_PARTYCD1,P137_PRESENT_ADDR,P137_OFFICE_PHONE,P137_HOME_PHONE,P137_TEFAXNUM,P137_CUSTMAIL,P137_MOBILE_NO'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42803469926996920)
,p_name=>'fetch area and city '
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P108_AREA'
,p_condition_element=>'P108_AREA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42803989511996920)
,p_event_id=>wwv_flow_api.id(42803469926996920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'   BEGIN',
'      SELECT areadesc',
'        INTO :P108_AREA_NAME',
'        FROM nmwhznms z',
'       WHERE z.compcode = :COMPCODE',
'         AND locatype = ''UPZ''',
'         AND areacode = :P108_AREA',
'         AND areadesc IS NOT NULL;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'        NULL;',
'   END;',
'',
'   BEGIN',
'      SELECT areacode, areadesc',
'        INTO :P108_CITY_CODE, :P108_CITY_NAME',
'        FROM nmwhznms z',
'       WHERE z.compcode = :compcode',
'         AND z.areacode =',
'                     (SELECT zonlcode',
'                        FROM nmwhznms a',
'                       WHERE a.compcode = :COMPCODE ',
'                         AND a.areacode = :P108_AREA)',
'         AND z.locatype = ''ZLA''',
'         AND areadesc IS NOT NULL;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         NULL;',
'   END;',
'END;'))
,p_attribute_02=>'P108_AREA'
,p_attribute_03=>'P108_CITY_CODE,P108_CITY_NAME,P108_AREA_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42800960722996919)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMCUSVLG'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'P108_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42791053675996916)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(42786600110996914)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'CUSTOMERS_ENQUIRES'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42790579348996916)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(42786600110996914)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'CUSTOMERS_ENQUIRES'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42801328421996920)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMCUSVLG'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'P108_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42801745368996920)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(40514821200616359)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42800566947996919)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'preinsert on NMCUSVLG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P108_COMPCODE:=:COMPCODE;',
'Docnumber_Generation',
'(:COMPCODE,''NM'',''CS'', 2, :P108_DOCTDATE,NULL, ''NM'', :P108_DOCNUMBR);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42789819546996916)
);
wwv_flow_api.component_end;
end;
/
