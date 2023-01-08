prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Enter New Order'
,p_step_title=>'Sample Database Application - Enter New Order'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'<!doctype html>',
'<html lang="en">',
'<head>',
'  <meta charset="utf-8">',
'  <title>jQuery UI Accordion - Default functionality</title>',
'  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">',
'  <script src="//code.jquery.com/jquery-1.10.2.js"></script>',
'  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>',
'  <link rel="stylesheet" href="/resources/demos/style.css">',
'  <script>',
'  $(function() {',
'    $( "#accordion" ).accordion();',
'  });',
'  </script>',
'</head>',
'<body>',
' ',
'<div id="accordion">',
'  <h3>Section 1</h3>',
'  <div>',
'    <p>',
'    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer',
'    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit',
'    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut',
'    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.',
'    </p>',
'  </div>',
'  <h3>Section 2</h3>',
'  <div>',
'    <p>',
'    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet',
'    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor',
'    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In',
'    suscipit faucibus urna.',
'    </p>',
'  </div>',
'  <h3>Section 3</h3>',
'  <div>',
'    <p>',
'    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.',
'    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero',
'    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis',
'    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.',
'    </p>',
'    <ul>',
'      <li>List item one</li>',
'      <li>List item two</li>',
'      <li>List item three</li>',
'    </ul>',
'  </div>',
'  <h3>Section 4</h3>',
'  <div>',
'    <p>',
'    Cras dictum. Pellentesque habitant morbi tristique senectus et netus',
'    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in',
'    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia',
'    mauris vel est.',
'    </p>',
'    <p>',
'    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.',
'    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per',
'    inceptos himenaeos.',
'    </p>',
'  </div>',
'</div>',
' ',
' ',
'</body>',
'</html>'))
,p_step_template=>wwv_flow_api.id(47564929163858117)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20191114181657'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46213140628265669)
,p_plug_name=>'resp'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_api.id(46218180573650046)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47620987743858279)
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4177694361150940559)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_02'
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
 p_id=>wwv_flow_api.id(7550105732731247418)
,p_plug_name=>'Identify Customer'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4177704644248115445)
,p_plug_name=>'New Customer Details'
,p_parent_plug_id=>wwv_flow_api.id(7550105732731247418)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1029425192036972129)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4177738651735458294)
,p_plug_name=>'Existing Cutomer'
,p_parent_plug_id=>wwv_flow_api.id(7550105732731247418)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1029425192036972129)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7550108423858254364)
,p_plug_name=>'Order Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(1377234323533327013)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7558257328591079179)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(4177694361150940559)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&P11_BRANCH.:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7550115342475278708)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(4177694361150940559)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_css_classes=>'rightarrow'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7550115523219278715)
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12:P12_BRANCH:11&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(7550115342475278708)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1378156932180751708)
,p_name=>'P11_TAGS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(4177704644248115445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tags'
,p_source=>'TAGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(1378157125710754765)
,p_name=>'P11_URL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(4177704644248115445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'URL'
,p_source=>'URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(4177704840020115448)
,p_name=>'P11_CUSTOMER_ID_NEW'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(4177704644248115445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer ID'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4177705049288115451)
,p_name=>'P11_CUST_FIRST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(4177704644248115445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'CUST_FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4177705552550115453)
,p_name=>'P11_CUST_LAST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(4177704644248115445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'CUST_LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4177706069985115454)
,p_name=>'P11_CUST_STREET_ADDRESS1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(4177704644248115445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Street Address'
,p_source=>'CUST_STREET_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4177706556013115454)
,p_name=>'P11_CUST_STREET_ADDRESS2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(4177704644248115445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Line 2'
,p_source=>'CUST_STREET_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4177707043160115454)
,p_name=>'P11_CUST_CITY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(4177704644248115445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CUST_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4177707553201115454)
,p_name=>'P11_CUST_STATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(4177704644248115445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State'
,p_source=>'CUST_STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(state_name) display_value, st return_value from   demo_states',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Choose State -'
,p_cSize=>3
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4177708061275115455)
,p_name=>'P11_CUST_EMAIL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(4177704644248115445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'CUST_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>31
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4177708559993115456)
,p_name=>'P11_PHONE_NUMBER1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(4177704644248115445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone Number'
,p_source=>'PHONE_NUMBER1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.MASKED_FIELD'
,p_cSize=>26
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'(999) 999-9999'
,p_attribute_02=>'_'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4177709060218115456)
,p_name=>'P11_PHONE_NUMBER2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(4177704644248115445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Alternate Number'
,p_source=>'PHONE_NUMBER2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.MASKED_FIELD'
,p_cSize=>26
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'(999) 999-9999'
,p_attribute_02=>'_'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4177709543413115456)
,p_name=>'P11_CREDIT_LIMIT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(4177704644248115445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Credit Limit'
,p_source=>'CREDIT_LIMIT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>9
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'5000'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4177710058187115456)
,p_name=>'P11_BRANCH'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(4177704644248115445)
,p_item_default=>'2'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4177710264359115456)
,p_name=>'P11_CUST_POSTAL_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(4177704644248115445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postal Code'
,p_source=>'CUST_POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7550113423081273037)
,p_name=>'P11_CUSTOMER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4177738651735458294)
,p_prompt=>'Customer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct c.CUSTNAME d,r.PARTYCDE r',
'  FROM nmcusmas c, sycompty r',
' WHERE c.PARTYCDE = r.PARTYCDE(+) AND c.compcode = r.compcode',
'       AND c.compcode = :compcode',
'order by 1'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'Choose a customer using the popup selector, or to create a new customer, select Create Order for: <strong>New customer</strong>.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7575777093747599677)
,p_name=>'P11_CUSTOMER_OPTIONS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7550105732731247418)
,p_item_default=>'EXISTING'
,p_prompt=>'Create Order for:'
,p_source=>'EXISTING'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'NEW OR EXISTING CUSTOMER'
,p_lov=>'.'||wwv_flow_api.id(4177742337799473172)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8622667507907141294)
,p_validation_name=>'P11_CUSTOMER_ID Not NUll'
,p_validation_sequence=>10
,p_validation=>'P11_CUSTOMER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P11_CUSTOMER_OPTIONS'
,p_validation_condition2=>'EXISTING'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_api.id(7550113423081273037)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1378345020294787659)
,p_validation_name=>'P11_CUST_FIRST_NAME'
,p_validation_sequence=>20
,p_validation=>'P11_CUST_FIRST_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P11_CUSTOMER_OPTIONS'
,p_validation_condition2=>'NEW'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4180625069663261400)
,p_validation_name=>'P11_CUST_LAST_NAME'
,p_validation_sequence=>40
,p_validation=>'P11_CUST_LAST_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P11_CUSTOMER_OPTIONS'
,p_validation_condition2=>'NEW'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(7550115342475278708)
,p_associated_item=>wwv_flow_api.id(4177705552550115453)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4180627263345278511)
,p_validation_name=>'P11_CUST_STATE'
,p_validation_sequence=>50
,p_validation=>'P11_CUST_STATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P11_CUSTOMER_OPTIONS'
,p_validation_condition2=>'NEW'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(7550115342475278708)
,p_associated_item=>wwv_flow_api.id(4177707553201115454)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4180627745122282673)
,p_validation_name=>'P11_CUST_POSTAL_CODE'
,p_validation_sequence=>60
,p_validation=>'P11_CUST_POSTAL_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P11_CUSTOMER_OPTIONS'
,p_validation_condition2=>'NEW'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(7550115342475278708)
,p_associated_item=>wwv_flow_api.id(4177710264359115456)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4177725538725265258)
,p_validation_name=>'P11_PHONE_NUMBER1'
,p_validation_sequence=>100
,p_validation=>'P11_PHONE_NUMBER1'
,p_validation2=>'^\(?[[:digit:]]{3}\)?[-. ][[:digit:]]{3}[-. ][[:digit:]]{4}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Phone number format not recognized'
,p_validation_condition=>'P11_CUSTOMER_OPTIONS'
,p_validation_condition2=>'NEW'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_api.id(4177708559993115456)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4177725844959267100)
,p_validation_name=>'P11_PHONE_NUMBER2'
,p_validation_sequence=>110
,p_validation=>'P11_PHONE_NUMBER2'
,p_validation2=>'^\(?[[:digit:]]{3}\)?[-. ][[:digit:]]{3}[-. ][[:digit:]]{4}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Phone number format not recognized'
,p_validation_condition=>'P11_CUSTOMER_OPTIONS'
,p_validation_condition2=>'NEW'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_api.id(4177709060218115456)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4180628061052287284)
,p_validation_name=>'P11_CREDIT_LIMIT'
,p_validation_sequence=>190
,p_validation=>'P11_CREDIT_LIMIT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P11_CUSTOMER_OPTIONS'
,p_validation_condition2=>'NEW'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(7550115342475278708)
,p_associated_item=>wwv_flow_api.id(4177709543413115456)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4177726165522282436)
,p_validation_name=>'P11_CREDIT_LIMIT <= 5000'
,p_validation_sequence=>200
,p_validation=>':P11_CREDIT_LIMIT <= 5000'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'A customer''s Credit Limit must be less than or equal to $5,000'
,p_validation_condition=>'P11_CUSTOMER_OPTIONS'
,p_validation_condition2=>'NEW'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_api.id(4177709543413115456)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7575784122930664810)
,p_name=>'Hide / Show Customers'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_CUSTOMER_OPTIONS'
,p_condition_element=>'P11_CUSTOMER_OPTIONS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'EXISTING'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7575784419281664811)
,p_event_id=>wwv_flow_api.id(7575784122930664810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4177738651735458294)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4177714440700133399)
,p_event_id=>wwv_flow_api.id(7575784122930664810)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4177704644248115445)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7575784595025664812)
,p_event_id=>wwv_flow_api.id(7575784122930664810)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4177738651735458294)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63478742084157873)
,p_name=>'Create customer '
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#P11_CUSTOMER_OPTIONS_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63479040020157906)
,p_event_id=>wwv_flow_api.id(63478742084157873)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Create Customer'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:8:&APP_SESSION.:::8:::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'82'
,p_attribute_09=>'80'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63142644023044418)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into sycompty'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'null;',
'/*',
'insert into sycompty (COMPCODE,PARTYCDE,PRTYNAME,STATCODE,ZONLCODE,CREDLIMT,OPRSTAMP,TIMSTAMP)',
'values(:COMPCODE,:P11_CUST_STREET_ADDRESS1,:P11_CUST_FIRST_NAME||'' ''||:P11_CUST_LAST_NAME,:P11_CUST_STATE,:P11_CUST_POSTAL_CODE,:P11_CREDIT_LIMIT,:APP_USER,SYSDATE);',
'*/',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'insert successfully.........'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7558033849194296808)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create or Truncate ORDER Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection',
'  (p_collection_name => ''ORDER'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
