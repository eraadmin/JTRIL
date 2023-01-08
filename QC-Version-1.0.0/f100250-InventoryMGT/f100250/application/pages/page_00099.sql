prompt --application/pages/page_00099
begin
--   Manifest
--     PAGE: 00099
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
 p_id=>99
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Service Job Receipt'
,p_step_title=>'Service Job Receipt'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-BadgeList--circular .t-BadgeList-label {',
'    color: #1F68A7;',
'}',
'.t-Region h2.t-Region-title {',
'    color: rgb(255, 255, 255);',
'}',
'.t-Region-headerItems--title {',
'    text-align: center;',
'    padding: 0.0rem 0.0rem;',
'    background-color: #1F68A7;',
'}',
'.t-BadgeList--circular.t-BadgeList--large .t-BadgeList-item {',
'   ',
'    background-color: azure;',
'}',
'.t-BadgeList--circular.t-BadgeList--small .t-BadgeList-label {',
'    font-size: 11px;',
'    padding: 54px 1px 1px 1px;',
'}',
'#R32976917998522781 {',
'    padding: 0 0 2px 0 !important;',
'',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171031180328'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69388362650532331)
,p_plug_name=>' '
,p_region_name=>'Modal'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>80
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<iframe src="&P99_XURLDYNMC." width="925" height="825">',
'  <p>Your browser does not support iframes.</p>',
'</iframe>'))
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70122172021203258)
,p_plug_name=>'Service job receipt '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70123178970203260)
,p_plug_name=>'Document Information'
,p_parent_plug_id=>wwv_flow_api.id(70122172021203258)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70131785124203275)
,p_plug_name=>'Customer Details'
,p_parent_plug_id=>wwv_flow_api.id(70122172021203258)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70134394301203280)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(70122172021203258)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70155399594203293)
,p_plug_name=>'Complain'
,p_parent_plug_id=>wwv_flow_api.id(70134394301203280)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70180267620261695)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>60
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
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70180472815263153)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P99_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P99_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70182597224582464)
,p_plug_name=>'Breadcrumb'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7533132934253244474)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(47631212475858359)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70122369252203258)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(70122172021203258)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(82339713442427971)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:98:&SESSION.::&DEBUG.:99::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70134791483203280)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(70122172021203258)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(82339713442427971)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'COPY'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70134584949203280)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(70122172021203258)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(82339713442427971)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'COPY'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70122571920203258)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(70122172021203258)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(82339713442427971)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'COPY'
,p_button_condition=>'P99_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(59265843358249462)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(70122172021203258)
,p_button_name=>'CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(82339713442427971)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Changes'
,p_button_position=>'COPY'
,p_button_condition=>'P99_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69385710520183845)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(70122172021203258)
,p_button_name=>'PRINT_SERVICE_JOB'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(82339713442427971)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print Service Job'
,p_button_position=>'COPY'
,p_button_condition=>'P99_DOCNUMBR'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69396229454308713)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(70122172021203258)
,p_button_name=>'ADD_CUSTOMER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>wwv_flow_api.id(82339713442427971)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Customer'
,p_button_position=>'COPY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(70160299747203299)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:99::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(95679319843672935)
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59231389671793320)
,p_name=>'P99_ITEMCODE_LOV'
,p_item_sequence=>501
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_prompt=>'Itemcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>22
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69375675333458324)
,p_name=>'P99_S_BILLPRTY'
,p_item_sequence=>431
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bill Party'
,p_source=>'BILLPRTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct partycde||''  -  ''||initcap(prtyname) d,partycde r',
' from sycompty where compcode=:compcode',
' and nvl(spclrate,''N'')=''Y''',
' order by 1'))
,p_cSize=>4
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
 p_id=>wwv_flow_api.id(69375970591458335)
,p_name=>'P99_S_PARTYNM'
,p_item_sequence=>432
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>23
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69376427384458341)
,p_name=>'P99_ESTMATEDATE'
,p_item_sequence=>433
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Est. Date & Cost'
,p_source=>'ESTMDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69376813615458341)
,p_name=>'P99_ESTIMATCOST'
,p_item_sequence=>434
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_source=>'ESTMCOST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(69382705422886211)
,p_name=>'P99_PARTYFLG'
,p_item_sequence=>435
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_prompt=>'Partyflg'
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
 p_id=>wwv_flow_api.id(69388633404532339)
,p_name=>'P99_XURLDYNMC'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(69388362650532331)
,p_prompt=>'Xurldynmc'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70122767939203258)
,p_name=>'P99_DOCNUMBR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(70122172021203258)
,p_prompt=>'Job No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70122968635203260)
,p_name=>'P99_DOCTDATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(70122172021203258)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Service Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70123383158203260)
,p_name=>'P99_S_PKGNUMB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70123591218203260)
,p_name=>'P99_S_PKGNAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Service job type'
,p_source=>'PKGNMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.pkgtitle||''  -  ''|| p.srvpkgpk||''  -  ''||p.vhclcode||''  -  ''||',
'       initcap (d.SRVTYPNM)||''  -  ''||d.TYPDTLFK||''  -  ''||initcap(d.DETAIL_NAME)||''  -  ''||d.typdtlpk||''  -  ''||nvl(p.partyflg,''N'') d,p.srvpkgpk r',
'  from nmsrvpkg p,vwsrvtyp d',
' where     p.compcode = :compcode ',
'       and p.compcode=d.compcode(+)',
'        and p.svctypfk=d.typdtlpk(+)'))
,p_cSize=>5
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
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
 p_id=>wwv_flow_api.id(70123785437203260)
,p_name=>'P99_S_TRNDES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70123986505203260)
,p_name=>'P99_S_PRVNUM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70124172965203260)
,p_name=>'P99_DOCTTYPE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_item_default=>'SV'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70124388525203260)
,p_name=>'P99_SUBTTYPE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_item_default=>'1'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70124589786203260)
,p_name=>'P99_S_SRVCTYP'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Service Type'
,p_source=>'PKGNMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NMCODDES,NMSOFCDE  FROM NMCODMAS ',
'    WHERE COMPCODE = :COMPCODE ',
'    AND MODLCODE = ''NM''',
'    AND   NMHRDCDE = ''SVT''',
'  ORDER BY NMSOFCDE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'.......Please Select Service Type..........'
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="width: 100%;"'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70124788181203260)
,p_name=>'P99_S_SVSUBTYP'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type Detail'
,p_source=>'SRVCTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="width: 100%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SRVTYPNM,SVCTYPPK from srvcstyp',
'where COMPCODE=:COMPCODE',
'and SVCTYPPK =nvl(:P99_S_SVSUBTYP,SVCTYPPK )'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70124978391203260)
,p_name=>'P99_S_SRVTPDTL'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sub Detail'
,p_source=>'TYPDTLFK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="width: 100%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   detail_name, typdtlpk',
'    FROM vwsrvtyp',
'   WHERE compcode = :compcode',
'     AND UPPER (NVL (typdtlfk, ''0'')) =',
'                            UPPER (NVL (:P99_S_SVSUBTYP, NVL (typdtlfk, ''0'')))',
'ORDER BY TO_NUMBER (typdtlpk) ASC'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70125173696203260)
,p_name=>'P99_S_WHSCDE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Service Center'
,p_source=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(waredesc) waredesc,costcode from nmwhsmas',
'where compcode= :compcode',
' and regncode = ''RE''',
'and nvl(srvcwflg,''N'')=''N''',
'and warecode in (select warecode from sycstacc where ',
'compcode=:compcode and grupcode=:APP_USER)',
'order by warecode'))
,p_cSize=>4
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
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
 p_id=>wwv_flow_api.id(70125395974203260)
,p_name=>'P99_S_WHSNAM'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>23
,p_cMaxlength=>4000
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70125582545203260)
,p_name=>'P99_S_SMANCD'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Engineer/Technician'
,p_source=>'SMANCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   smantype||'' | ''||smancode||'' | ''||INITCAP (smanname)||'' | ''||suprcode d,smancode r',
'    FROM nmsmnmas',
'   WHERE compcode = :compcode AND smantype = ''RE'' AND suprcode = :P99_S_JOBCDE',
'ORDER BY smancode'))
,p_cSize=>4
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
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
 p_id=>wwv_flow_api.id(70125799385203261)
,p_name=>'P99_S_SMANNM'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>23
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70125977577203261)
,p_name=>'P99_S_REQDTE'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70126192393203261)
,p_name=>'P99_S_PRVDOC'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70126388677203263)
,p_name=>'P99_S_PRVSUB'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70126568974203264)
,p_name=>'P99_S_PRVSTS'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70126794651203264)
,p_name=>'P99_S_PRVDTE'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70126987487203264)
,p_name=>'P99_S_PRVREF'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70127186672203264)
,p_name=>'P99_S_PRRFDT'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70127373292203266)
,p_name=>'P99_S_REFNUM'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70127582909203266)
,p_name=>'P99_S_REFDAT'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70127777880203266)
,p_name=>'P99_S_RAISED'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Raised By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70127976898203268)
,p_name=>'P99_S_APRDBY'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70128167803203268)
,p_name=>'P99_PARTYAD3'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70128382506203268)
,p_name=>'P99_PARTYAD4'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70128569752203268)
,p_name=>'P99_S_CURCDE'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70128794208203268)
,p_name=>'P99_S_EXGRTE'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70128972763203268)
,p_name=>'P99_S_PRTCDE'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70129192753203268)
,p_name=>'P99_TEFAXNUM'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70129387927203268)
,p_name=>'P99_S_RSNAME'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select initcap(emplname) ',
'	  from nmperson',
'	 Where compcode = :compcode',
'	   And usercode = :APP_USER',
'	   And authtype in (''RAS'',''APR'')',
'	  -- And rownum = 1;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70129578787203269)
,p_name=>'P99_COMPCODE'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70129794237203269)
,p_name=>'P99_ADDRTYPE'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70129967892203269)
,p_name=>'P99_OPRSTAMP'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
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
 p_id=>wwv_flow_api.id(70130174368203269)
,p_name=>'P99_TIMSTAMP'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70130395159203272)
,p_name=>'P99_S_JOBNAM'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70130598375203272)
,p_name=>'P99_S_APPRIGHT'
,p_item_sequence=>1180
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70130797195203274)
,p_name=>'P99_S_TYPDTLPK'
,p_item_sequence=>1200
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70130969299203274)
,p_name=>'P99_CUSTMRID'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Id'
,p_source=>'CUSTMRID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.custmrid||'' , ''||',
'       c.prtyname||'' , ''||',
'       c.partycde||'' , ''||',
'       r.registno||'' , ''||',
'       r.chasisno||'' , ''||',
'       r.enginnum ||'' , ''||',
'       NVL (r.smileage, r.emileage) ||'' , ''||',
'       m.addrtype||'' , ''||',
'       c.partyad1||'' , ''||',
'       c.partyad2||'' , ''||',
'       c.partyad3||'' , ''||',
'       c.partyad4 ||'' , ''||',
'       r.itemcode||'' , ''||',
'       NVL (c.phonenum, c.mobileno) ||'' , ''||',
'       c.mobileno ||'' , ''||',
'       c.tefaxnum||'' , ''||',
'       c.ogcntper||'' , ''||',
'       m.contpers||'' , ''||',
'       c.pemailid ||'' , ''||',
'       r.ogcntper d,c.custmrid r',
'  FROM sycompty c, nmitmreg r, nmcusmas m',
' WHERE     c.compcode = :compcode ',
'       AND c.custmrid = r.custmrid(+)',
'       AND c.compcode = r.compcode(+)',
'       AND c.partycde = m.partycde(+)',
'       AND c.compcode = m.compcode(+)',
'       AND c.custmrid IS NOT NULL',
'   '))
,p_cSize=>32
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'AND p.partycde in (select partycde from nmsrvndr ',
'   where compcode = :compcode ',
'   and (TRDAPNDT is not null or SNDAPNDT is not null or APPNDATE is not null))'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70131180157203274)
,p_name=>'P99_S_JOBCDE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cost Code'
,p_source=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
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
 p_id=>wwv_flow_api.id(70131371699203274)
,p_name=>'P99_CUSTOMERID_LOV'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70131581248203274)
,p_name=>'P99_PAKGNME_LOV'
,p_item_sequence=>161
,p_item_plug_id=>wwv_flow_api.id(70123178970203260)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70131970123203277)
,p_name=>'P99_PARTYCDE'
,p_item_sequence=>1510
,p_item_plug_id=>wwv_flow_api.id(70131785124203275)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70132169102203277)
,p_name=>'P99_PRTYNAME'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_api.id(70131785124203275)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70132384083203277)
,p_name=>'P99_CUSTNAME'
,p_item_sequence=>1470
,p_item_plug_id=>wwv_flow_api.id(70131785124203275)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;font-size:10px;" readonly="readonly"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70132599132203277)
,p_name=>'P99_CONTPERS'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(70131785124203275)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Org. Cont. Person'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;font-size:10px;"readonly="readonly"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70132788137203279)
,p_name=>'P99_PARTYAD1'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(70131785124203275)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;font-size:10px;"readonly="readonly"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70132985723203279)
,p_name=>'P99_PARTYAD2'
,p_item_sequence=>1500
,p_item_plug_id=>wwv_flow_api.id(70131785124203275)
,p_prompt=>'Address 2'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70133183190203279)
,p_name=>'P99_PHONENUM'
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_api.id(70131785124203275)
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;font-size:10px;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70133399446203279)
,p_name=>'P99_MOBILENO'
,p_item_sequence=>1540
,p_item_plug_id=>wwv_flow_api.id(70131785124203275)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobile'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;font-size:10px;"readonly="readonly"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70133584500203279)
,p_name=>'P99_PRTYMAIL'
,p_item_sequence=>1550
,p_item_plug_id=>wwv_flow_api.id(70131785124203275)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;font-size:10px;"readonly="readonly"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70133780367203279)
,p_name=>'P99_COMPCODE1'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_api.id(70131785124203275)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70133967695203279)
,p_name=>'P99_DOCTTYPE1'
,p_item_sequence=>1570
,p_item_plug_id=>wwv_flow_api.id(70131785124203275)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70134185921203279)
,p_name=>'P99_OGCNTPER'
,p_item_sequence=>1580
,p_item_plug_id=>wwv_flow_api.id(70131785124203275)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Registration Person'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_tag_attributes=>'style="color: blue;font-size:10px;"readonly="readonly"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70134991522203280)
,p_name=>'P99_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70135187785203280)
,p_name=>'P99_COMPCODE_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70135372266203280)
,p_name=>'P99_DOCTTYPE_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70135584647203282)
,p_name=>'P99_SUBTTYPE_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70135793105203282)
,p_name=>'P99_LUOMCODE'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70135970577203282)
,p_name=>'P99_ORGNQNTY'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Quantity'
,p_source=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>24
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70136173632203282)
,p_name=>'P99_APPRQNTY'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70136378648203282)
,p_name=>'P99_TRNSQNTY'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'TRNSQNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70136573754203282)
,p_name=>'P99_MSFCAMNT'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'MSFCAMNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70136773313203282)
,p_name=>'P99_CURRCODE'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'CURRCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70136987612203283)
,p_name=>'P99_EXCGRATE'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'EXCGRATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70137191490203283)
,p_name=>'P99_MSLCAMNT'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'MSLCAMNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70137372827203285)
,p_name=>'P99_REFNUMBR'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'REFNUMBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70137596219203285)
,p_name=>'P99_REFNDATE'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'REFNDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70137774778203285)
,p_name=>'P99_UPDOCTYP'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70137998930203285)
,p_name=>'P99_UPSUBTYP'
,p_item_sequence=>1320
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'UPSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70138192650203285)
,p_name=>'P99_UPDOCNUM'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70138374163203285)
,p_name=>'P99_UPDOCDTE'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDOCDTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70138571238203285)
,p_name=>'P99_UPDOCSRL'
,p_item_sequence=>1220
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDOCSRL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70138791686203285)
,p_name=>'P99_DWDOCTYP'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'DWDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70138991214203286)
,p_name=>'P99_DWSUBTYP'
,p_item_sequence=>1430
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'DWSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70139191570203286)
,p_name=>'P99_DWDOCNUM'
,p_item_sequence=>1440
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'DWDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70139393283203286)
,p_name=>'P99_DWDOCDTE'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'DWDOCDTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70139587602203286)
,p_name=>'P99_DWDOCSRL'
,p_item_sequence=>1470
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'DWDOCSRL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70139793667203286)
,p_name=>'P99_ACDOCTYP'
,p_item_sequence=>1500
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'ACDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70139993525203286)
,p_name=>'P99_ACSUBTYP'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'ACSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70140195270203286)
,p_name=>'P99_ACDOCNUM'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'ACDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70140398747203286)
,p_name=>'P99_SRVCTYPE'
,p_item_sequence=>2380
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'SRVCTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70140594905203286)
,p_name=>'P99_NXTSRVDT'
,p_item_sequence=>2390
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'NXTSRVDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70140776110203286)
,p_name=>'P99_TYPDTLFK'
,p_item_sequence=>2400
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'TYPDTLFK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70140979066203286)
,p_name=>'P99_ENGINENO'
,p_is_required=>true
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Engine No.'
,p_source=>'ENGINENO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>100
,p_cHeight=>1
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
 p_id=>wwv_flow_api.id(70141186237203286)
,p_name=>'P99_SRVCHOUR'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Service Hour'
,p_source=>'SRVCHOUR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
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
 p_id=>wwv_flow_api.id(70141380948203286)
,p_name=>'P99_ACTIONTK'
,p_item_sequence=>901
,p_item_plug_id=>wwv_flow_api.id(70155399594203293)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Action Taken'
,p_source=>'ACTIONTK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cMaxlength=>180
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70141567840203286)
,p_name=>'P99_FIPERSON'
,p_item_sequence=>2440
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'FIPERSON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70141792892203286)
,p_name=>'P99_FIREMARK'
,p_item_sequence=>2450
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'FIREMARK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70141999368203286)
,p_name=>'P99_ACDOCDTE'
,p_item_sequence=>1580
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'ACDOCDTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70142170795203288)
,p_name=>'P99_ACDOCSRL'
,p_item_sequence=>1590
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'ACDOCSRL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70142398820203288)
,p_name=>'P99_COSTCODE'
,p_item_sequence=>1690
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70142586813203288)
,p_name=>'P99_WARECODE'
,p_item_sequence=>1710
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70142774780203288)
,p_name=>'P99_POSTFLAG'
,p_item_sequence=>1730
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'POSTFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70142980459203288)
,p_name=>'P99_PRNTFLAG'
,p_item_sequence=>1760
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'PRNTFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70143192073203288)
,p_name=>'P99_PRICFLAG'
,p_item_sequence=>1810
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'PRICFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70143383621203288)
,p_name=>'P99_STATUSCD'
,p_item_sequence=>1850
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70143582099203288)
,p_name=>'P99_OPRSTAMP_1'
,p_item_sequence=>1870
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70143774707203288)
,p_name=>'P99_TIMSTAMP_1'
,p_item_sequence=>1880
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70143970254203288)
,p_name=>'P99_PROCFLAG'
,p_item_sequence=>1910
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'PROCFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70144175276203288)
,p_name=>'P99_TRNSQTY2'
,p_item_sequence=>1920
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'TRNSQTY2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70144398517203288)
,p_name=>'P99_BATCHNUM'
,p_item_sequence=>1930
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70144570359203288)
,p_name=>'P99_MCSERIAL'
,p_item_sequence=>1940
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'MCSERIAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70144787944203288)
,p_name=>'P99_WRPERIOD'
,p_item_sequence=>1950
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'WRPERIOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70144970914203288)
,p_name=>'P99_TRANTYPE'
,p_item_sequence=>1960
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'TRANTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70145198787203288)
,p_name=>'P99_PRVREFNO'
,p_item_sequence=>1990
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'PRVREFNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70145396224203288)
,p_name=>'P99_PRVREFDT'
,p_item_sequence=>2020
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'PRVREFDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70145586112203289)
,p_name=>'P99_DELCCODE'
,p_item_sequence=>2050
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'DELCCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70145799782203289)
,p_name=>'P99_DELWCODE'
,p_item_sequence=>2060
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'DELWCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70145967375203289)
,p_name=>'P99_PURCDATE'
,p_item_sequence=>2070
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'PURCDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
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
 p_id=>wwv_flow_api.id(70146175208203289)
,p_name=>'P99_DGNSQNTY'
,p_item_sequence=>2080
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'DGNSQNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70146394740203289)
,p_name=>'P99_DOCNUMBR_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70146570832203289)
,p_name=>'P99_DOCTDATE_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70146796640203289)
,p_name=>'P99_SERLNUMB'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70146987360203289)
,p_name=>'P99_PARTYCDE_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'PARTYCDE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70147195475203289)
,p_name=>'P99_SMANCODE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'SMANCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70147378762203289)
,p_name=>'P99_RAISEDBY'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70147579505203289)
,p_name=>'P99_APPRVDBY'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'APPRVDBY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70147796332203289)
,p_name=>'P99_APPRDATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'APPRDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70147968611203289)
,p_name=>'P99_REQDDATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'REQDDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70148175185203289)
,p_name=>'P99_COMMCODE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70148377969203289)
,p_name=>'P99_ITEMCODE'
,p_is_required=>true
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vehicle Code/Model'
,p_source=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT itemcode || '' /  '' || itemdes1 || '' /  '' || itemdes2 || '' /  '' || Luomcode d, itemcode  r',
'    FROM nmitemas',
'   WHERE compcode = :compcode  AND statuscd = ''ACT'' AND finishgd = ''Y''',
'ORDER BY Itemcode'))
,p_cSize=>22
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70148589540203289)
,p_name=>'P99_ITEMTYPE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70148793309203289)
,p_name=>'P99_ITEMDESC'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70148984566203291)
,p_name=>'P99_ITEMLONG'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'ITEMLONG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70149189506203291)
,p_name=>'P99_ITEMRATE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'ITEMRATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70149374963203291)
,p_name=>'P99_MARKPCNT'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'MARKPCNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70149575086203291)
,p_name=>'P99_DISCPCNT'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'DISCPCNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70149780193203291)
,p_name=>'P99_DISCAMNT'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'DISCAMNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70149996092203291)
,p_name=>'P99_SPLDISPC'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'SPLDISPC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70150198426203291)
,p_name=>'P99_SPLDISNT'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'SPLDISNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70150383606203291)
,p_name=>'P99_SALERATE'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70150577226203291)
,p_name=>'P99_HUOMCODE'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70150768169203291)
,p_name=>'P99_FACTRVAL'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'FACTRVAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70150984747203291)
,p_name=>'P99_FOCJOBFL'
,p_item_sequence=>2090
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'FOCJOBFL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70151188362203291)
,p_name=>'P99_COMPLETE'
,p_item_sequence=>2130
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'COMPLETE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70151382400203291)
,p_name=>'P99_APRVFLAG'
,p_item_sequence=>2140
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'APRVFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70151587401203291)
,p_name=>'P99_PRTREQNO'
,p_item_sequence=>2150
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'PRTREQNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70151792592203291)
,p_name=>'P99_DELVRYDT'
,p_item_sequence=>2180
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'DELVRYDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70151975283203291)
,p_name=>'P99_STARTDTE'
,p_item_sequence=>2190
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'STARTDTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70152196965203291)
,p_name=>'P99_ENDDDATE'
,p_item_sequence=>2200
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'ENDDDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70152396686203291)
,p_name=>'P99_SRVCNOPK'
,p_item_sequence=>2230
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'SRVCNOPK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70152598276203293)
,p_name=>'P99_TOTCHARG'
,p_item_sequence=>2240
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'TOTCHARG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70152785519203293)
,p_name=>'P99_TOTPAMNT'
,p_item_sequence=>2250
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'TOTPAMNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70152974574203293)
,p_name=>'P99_REGISTNO'
,p_is_required=>true
,p_item_sequence=>499
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Registration No.'
,p_source=>'REGISTNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct s.registno||'' / ''||s.chasisno||'' / ''||s.PRDKEYNO||'' / ''||i.itemcode||'' / ''||i.itemdes1||'' / ''||i.huomcode d,s.registno r from nmitmreg s,nmitemas i',
'where s.compcode= :compcode',
'and s.compcode=i.compcode',
'and s.itemcode=i.itemcode',
'and s.custmrid=:P99_CUSTOMERID_LOV',
'order by 1'))
,p_lov_cascade_parent_items=>'P99_CUSTOMERID_LOV'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>22
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70153196638203293)
,p_name=>'P99_CHASISNO'
,p_is_required=>true
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Chasis No.'
,p_source=>'CHASISNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct s.registno||'' / ''||s.chasisno||'' / ''||s.PRDKEYNO||'' / ''||i.itemcode||'' / ''||i.itemdes1||'' / ''||i.huomcode d,s.registno r from nmitmreg s,nmitemas i',
'where s.compcode= :compcode',
'and s.compcode=i.compcode',
'and s.itemcode=i.itemcode',
'and s.custmrid=:P99_CUSTOMERID_LOV',
'order by 1'))
,p_lov_cascade_parent_items=>'P99_CUSTOMERID_LOV'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>15
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70153394967203293)
,p_name=>'P99_PRDKEYNO'
,p_item_sequence=>2280
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'PRDKEYNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70153578094203293)
,p_name=>'P99_CUSTMRID_1'
,p_item_sequence=>2290
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'CUSTMRID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70153796261203293)
,p_name=>'P99_MILLAGEE'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Millage'
,p_source=>'MILLAGEE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>20
,p_cHeight=>1
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
 p_id=>wwv_flow_api.id(70153967638203293)
,p_name=>'P99_PMTCMPLT'
,p_item_sequence=>2310
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'PMTCMPLT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70154181292203293)
,p_name=>'P99_EMILLAGE'
,p_item_sequence=>2320
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'EMILLAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70154375188203293)
,p_name=>'P99_SRVCEVAT'
,p_item_sequence=>2330
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'SRVCEVAT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70154574377203293)
,p_name=>'P99_TOTALVAT'
,p_item_sequence=>2340
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'TOTALVAT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70154776195203293)
,p_name=>'P99_PKGNMBER'
,p_item_sequence=>2350
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'PKGNMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70154970428203293)
,p_name=>'P99_SVCPKGFK'
,p_item_sequence=>2360
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'SVCPKGFK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70155198523203293)
,p_name=>'P99_JOBCONDT'
,p_item_sequence=>2370
,p_item_plug_id=>wwv_flow_api.id(70134394301203280)
,p_use_cache_before_default=>'NO'
,p_source=>'JOBCONDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70155574121203294)
,p_name=>'P99_REMARKSS'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_api.id(70155399594203293)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Diagnosis Result&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cMaxlength=>180
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70155786899203294)
,p_name=>'P99_CUSTCMPLN'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(70155399594203293)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Complain'
,p_source=>'CUSTCMPLN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70180691398263153)
,p_name=>'P99_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(70180472815263153)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70180895723263153)
,p_name=>'P99_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(70180472815263153)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70181089364263153)
,p_name=>'P99_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(70180472815263153)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(70156085533203294)
,p_validation_name=>'P99_S_WHSCDE'
,p_validation_sequence=>10
,p_validation=>'P99_S_WHSCDE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(70122571920203258)
,p_associated_item=>wwv_flow_api.id(70125173696203260)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(70156294958203294)
,p_validation_name=>'P99_S_SMANCD'
,p_validation_sequence=>20
,p_validation=>'P99_S_SMANCD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(70122571920203258)
,p_associated_item=>wwv_flow_api.id(70125582545203260)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(70156691233203296)
,p_validation_name=>'P99_ORGNQNTY'
,p_validation_sequence=>40
,p_validation=>'P99_ORGNQNTY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(70122571920203258)
,p_associated_item=>wwv_flow_api.id(70135970577203282)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(59287561839764060)
,p_validation_name=>'P99_CUSTMRID'
,p_validation_sequence=>50
,p_validation=>'P99_CUSTMRID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(70122571920203258)
,p_associated_item=>wwv_flow_api.id(70130969299203274)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(59287810782769183)
,p_validation_name=>'P99_SMANCODE'
,p_validation_sequence=>60
,p_validation=>'P99_SMANCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(70122571920203258)
,p_associated_item=>wwv_flow_api.id(70147195475203289)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(69382415198743487)
,p_validation_name=>'P99_S_BILLPRTY'
,p_validation_sequence=>70
,p_validation=>'P99_S_BILLPRTY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P99_PARTYFLG'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(70122571920203258)
,p_associated_item=>wwv_flow_api.id(69375675333458324)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(70157568697203296)
,p_name=>'Customer information on service details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_CUSTMRID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(70157889855203297)
,p_event_id=>wwv_flow_api.id(70157568697203296)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT custname, c.partycde, r.registno,',
'       r.chasisno chassis_no, r.enginnum, r.smileage, m.custadr1,',
'       m.custadr2, r.itemcode, NVL (m.custphon, m.custmobl) custphon,',
'       m.custmobl, m.custmail, c.ogcntper, m.contpers',
'  INTO :P99_CUSTNAME, :P99_PARTYCDE, :P99_REGISTNO,',
'       :P99_CHASISNO, :P99_ENGINENO, :P99_MILLAGEE, :P99_PARTYAD1,',
'       :P99_PARTYAD2, :P99_ITEMCODE, :P99_PHONENUM,',
'       :P99_MOBILENO, :P99_PRTYMAIL, :P99_OGCNTPER, :P99_CONTPERS',
'  from  sycompty c, nmitmreg r, nmcusmas m',
' WHERE     c.compcode = :compcode ',
'       AND c.custmrid = r.custmrid(+)',
'       AND c.compcode = r.compcode(+)',
'       AND c.partycde = m.partycde(+)',
'       AND c.compcode = m.compcode(+)',
'       AND c.custmrid =:P99_CUSTMRID;',
'',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when Others then',
'null;',
'end;'))
,p_attribute_02=>'P99_CUSTMRID'
,p_attribute_03=>'P99_CUSTNAME,P99_PARTYCDE,P99_REGISTNO,P99_CHASISNO,P99_ENGINENO,P99_MILLAGEE,P99_PARTYAD1,P99_PARTYAD2,P99_ITEMCODE,P99_PHONENUM,P99_MOBILENO,P99_PRTYMAIL,P99_OGCNTPER,P99_CONTPERS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   AND p.partycde in (select partycde from nmsrvndr ',
'   where compcode = :compcode',
'   and (TRDAPNDT is not null or SNDAPNDT is not null or APPNDATE is not null))'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(70157988696203297)
,p_name=>'on change on itemcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_ITEMCODE'
,p_condition_element=>'P99_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(70158286997203297)
,p_event_id=>wwv_flow_api.id(70157988696203297)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT ITEMDES1,ITEMDES2,LUOMCODE,LUOMCODE,COMMGRUP,ITEMTYPE,COSTRATE,FACTRVAL,ITEMMODL',
'        INTO :P99_ITEMDESC,:P99_ITEMLONG,:P99_HUOMCODE,:P99_LUOMCODE,:P99_COMMCODE,',
'        :P99_ITEMTYPE,:P99_ITEMRATE,:P99_FACTRVAL,:P99_S_MODLCDE',
'      FROM NMITEMAS',
'         WHERE COMPCODE = :COMPCODE ',
'           AND ITEMCODE = :P99_ITEMCODE; ',
'',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_attribute_02=>'P99_ITEMCODE'
,p_attribute_03=>'P99_ITEMDESC,P99_ITEMLONG,P99_HUOMCODE,P99_LUOMCODE,P99_COMMCODE,P99_ITEMTYPE,P99_ITEMRATE,P99_FACTRVAL,P99_S_MODLCDE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(70158378988203297)
,p_name=>'change on package name '
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_S_PKGNAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(70158673563203297)
,p_event_id=>wwv_flow_api.id(70158378988203297)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT distinct P.SRVPKGPK, INITCAP (d.SRVTYPNM) JOB_SUB_TYPE,PKGTITLE,',
'         initcap(d.DETAIL_NAME) subtyp_datails, D.TYPDTLPK,nvl(p.partyflg,''N'') partyflg',
'     INTO :P99_S_PKGNUMB, :P99_S_SVSUBTYP,:P99_PAKGNME_LOV,   :P99_S_SRVTPDTL, :P99_S_TYPDTLPK,:P99_PARTYFLG',
'     FROM nmsrvpkg p,vwsrvtyp d',
' where     p.compcode = :compcode',
'       and p.compcode=d.compcode(+)',
'        and p.svctypfk=d.typdtlpk(+)',
'      and P.SRVPKGPK = :P99_S_PKGNAME;',
'END;'))
,p_attribute_02=>'P99_S_PKGNAME'
,p_attribute_03=>'P99_S_PKGNUMB,P99_S_SVSUBTYP,P99_PAKGNME_LOV,P99_S_SRVTPDTL,P99_S_TYPDTLPK,P99_PARTYFLG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(70158769486203297)
,p_name=>'change on job code'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_S_WHSCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(70159077038203297)
,p_event_id=>wwv_flow_api.id(70158769486203297)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' Select a.warecode,initcap(a.waredesc) waredesc,initcap(b.costdesc) costdesc ',
'                  into :P99_S_JOBCDE,:P99_S_JOBNAM,:P99_S_WHSNAM',
'                  From nmwhsmas a,syjobmas b',
'            Where a.compcode = :compcode',
'              And a.compcode = b.compcode',
'              And a.regncode = ''RE''',
'              And a.costcode = b.costcode',
'            /*  AND  A.costcode IN (  SELECT cabasecc',
'                                        FROM sycstacc',
'                                       WHERE compcode = :compcode',
'                                         AND grupcode = :APP_USER)*/',
'                                         and b.costcode=:P99_S_WHSCDE;',
'end;'))
,p_attribute_02=>'P99_S_WHSCDE'
,p_attribute_03=>'P99_S_JOBCDE,P99_S_JOBNAM,P99_S_WHSNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(70159179624203297)
,p_name=>'change on salesmancode'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_S_SMANCD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(70159490692203299)
,p_event_id=>wwv_flow_api.id(70159179624203297)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'    ',
'    Select initcap(smanname) smanname  into :P99_S_SMANNM',
'		from NMSMNMAS',
'	Where compcode = :compcode',
'		And smantype = ''RE''',
'		And smancode = :P99_S_SMANCD',
'		And suprcode = :P99_S_JOBCDE; ',
'Exception',
'	When no_data_found then',
'		 null;',
'	When Too_many_rows then',
'		null;',
'End;'))
,p_attribute_02=>'P99_S_SMANCD,P99_S_JOBCDE'
,p_attribute_03=>'P99_S_SMANNM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(70159584854203299)
,p_name=>'show/hide region on customer information'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_CUSTOMERID_LOV'
,p_condition_element=>'P99_CUSTOMERID_LOV'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(70159893147203299)
,p_event_id=>wwv_flow_api.id(70159584854203299)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(70131785124203275)
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(70160089198203299)
,p_event_id=>wwv_flow_api.id(70159584854203299)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(70131785124203275)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(59283109301289382)
,p_name=>'MODIFY mode'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(59283537802289386)
,p_event_id=>wwv_flow_api.id(59283109301289382)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P99_DOCNUMBR is not null then',
'if :P99_S_PKGNAME is not null then',
'BEGIN',
'   SELECT  INITCAP (T.SRVTYPNM) JOB_SUB_TYPE,PKGTITLE,',
'          INITCAP (D.TYPDTLNM) SUBTYP_DATAILS, D.TYPDTLPK',
'     INTO  :P99_S_SVSUBTYP,:P99_PAKGNME_LOV,',
'          :P99_S_SRVTPDTL, :P99_S_TYPDTLPK',
'     FROM NMSRVPKG P, SRVCSTYP T, SVTYPDTL D',
'    WHERE P.COMPCODE = :COMPCODE',
'      AND P.COMPCODE = T.COMPCODE(+)',
'      AND P.SVCTYPFK = T.SVCTYPPK(+)',
'      AND T.COMPCODE = D.COMPCODE(+)',
'      AND T.SVCTYPPK = D.TYPDTLPK(+)',
'      and P.SRVPKGPK = :P99_S_PKGNAME;',
'      exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when Others then',
'null;',
'END;',
'end if;',
'if :P99_S_WHSCDE is not null then',
'begin',
'Select initcap(a.waredesc) waredesc',
'  into :P99_S_WHSNAM',
'                  From nmwhsmas a',
'            Where a.compcode = :compcode',
'              and a.WARECODE=:P99_S_WHSCDE;',
'',
' Select initcap(b.costdesc) costdesc ',
'                 into :P99_S_JOBNAM',
'                  From syjobmas b',
'            Where b.compcode = :compcode',
'              and b.costcode=:P99_S_JOBCDE;',
'              exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when Others then',
'null;',
'end;',
'end if;',
'if :P99_S_SMANCD is not null and :P99_S_JOBCDE is not null then',
'Begin',
'    ',
'    Select initcap(smanname) smanname  into :P99_S_SMANNM',
'        from NMSMNMAS',
'    Where compcode = :compcode',
'        And smantype = ''RE''',
'        And smancode = :P99_S_SMANCD',
'        --And suprcode = :P99_S_JOBCDE',
'        ; ',
'',
'Exception',
'    When no_data_found then',
'         null;',
'    When Too_many_rows then',
'        null;',
'End;',
'end if;',
'if :P99_CUSTMRID is not null then',
'begin',
'SELECT custname, c.partycde, m.custadr1,',
'       m.custadr2, NVL (m.custphon, m.custmobl) custphon,',
'       m.custmobl, m.custmail, c.ogcntper, m.contpers',
'  INTO :P99_CUSTNAME, :P99_PARTYCDE, :P99_PARTYAD1,',
'       :P99_PARTYAD2, :P99_PHONENUM,',
'       :P99_MOBILENO, :P99_PRTYMAIL, :P99_OGCNTPER, :P99_CONTPERS',
'  from  sycompty c, nmitmreg r, nmcusmas m',
' WHERE     c.compcode = :compcode ',
'       AND c.custmrid = r.custmrid(+)',
'       AND c.compcode = r.compcode(+)',
'       AND c.partycde = m.partycde(+)',
'       AND c.compcode = m.compcode(+)',
'       AND c.custmrid =:P99_CUSTMRID;',
'',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when Others then',
'null;',
'end;',
'end if;',
'if :P99_S_BILLPRTY is not null then',
'begin',
'select initcap(prtyname) prtyname',
'into :P99_S_PARTYNM',
' from sycompty where compcode=:compcode',
'and partycde=:P99_S_BILLPRTY;',
'',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when Others then',
'null;',
'end;',
'end if;',
'end if;',
'',
'',
'end;'))
,p_attribute_02=>'P99_CUSTMRID,P99_S_JOBCDE,P99_S_SMANCD,P99_S_WHSCDE,P99_DOCNUMBR,P99_S_PKGNAME,P99_S_BILLPRTY'
,p_attribute_03=>'P99_CONTPERS,P99_OGCNTPER,P99_PRTYMAIL,P99_MOBILENO,P99_PHONENUM,P99_PARTYAD2,P99_PARTYAD1,P99_PARTYCDE,P99_CUSTNAME,P99_S_SMANNM,P99_S_WHSNAM,P99_S_JOBNAM,P99_S_TYPDTLPK,P99_S_SRVTPDTL,P99_S_SVSUBTYP,P99_PAKGNME_LOV,P99_S_PARTYNM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69381474041735714)
,p_name=>'change on billparty'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99_S_BILLPRTY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69381949828735720)
,p_event_id=>wwv_flow_api.id(69381474041735714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select initcap(prtyname) prtyname',
'into :P99_S_PARTYNM',
' from sycompty where compcode=:compcode',
' and partycde=:P99_S_BILLPRTY;',
'exception',
'when no_data_found then',
'null;',
'when Too_many_rows then',
'null;',
'when Others then',
'null;',
'end;'))
,p_attribute_02=>'P99_S_BILLPRTY'
,p_attribute_03=>'P99_S_PARTYNM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69389304322554167)
,p_name=>'Call Report'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(69385710520183845)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69389698377554172)
,p_event_id=>wwv_flow_api.id(69389304322554167)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:$(''#Modal'').dialog(',
'    {',
'        autoOpen: true,',
'        width:950,',
'        height: 850,',
'        modal: true',
'    }).dialog(''moveToTop'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69390648468567202)
,p_name=>'hide Modal region on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69391010063567204)
,p_event_id=>wwv_flow_api.id(69390648468567202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(69388362650532331)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69396599495323358)
,p_name=>'Call New Customer Add'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(69396229454308713)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69396995816323359)
,p_event_id=>wwv_flow_api.id(69396599495323358)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(70122172021203258)
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:8:&APP_SESSION.:::8:::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
,p_attribute_08=>'100'
,p_attribute_09=>'100'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(70156770163203296)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMSERVCE'
,p_attribute_02=>'NMSERVCE'
,p_attribute_03=>'P99_ROWID'
,p_attribute_04=>'SRVCNOPK'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(70180097618260830)
,p_process_sequence=>60
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- code update by Md. Zahidul Islam--',
'begin',
'select PROGNAME into :FX_PROG_NAME from SYMENMAS where PAGEID=:APP_PAGE_ID;',
'',
':FX_PAGE_NO:=:APP_PAGE_ID;',
'exception',
'',
'when no_data_found then',
' --apex_application.g_print_success_message :=''Error..No page found'';',
' htp.init();',
' owa_util.redirect_url(''f?p=''||:APP_ID||'':1:''||:APP_SESSION, true);',
' --apex_application.g_print_success_message :=''Error..No page found'';',
'when too_many_rows then',
' raise_application_error(-20003,''Too Many Page ID found in database'');',
'end;',
'--- code updated--',
'',
'',
'If :P87_PROGNM  is null and :P87_NO is null then',
'   :P87_PROGNM := :FX_PROG_NAME;',
'   :P87_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P87_PROGNM,',
'                                      p_parentnm =>:P87_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P87_OPRSTAMP := :app_user;',
'  --:P87_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P87_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P87_PROGNM;',
'   :FX_PAGE_NO := :P87_NO;',
'Elsif :FX_PROG_NAME <> :P87_PROGNM And :FX_PAGE_NO <> :P87_NO Then',
'   :FX_PROG_NAME := :P87_PROGNM;',
'   :FX_PAGE_NO := :P87_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(70156968275203296)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMSERVCE'
,p_attribute_02=>'NMSERVCE'
,p_attribute_03=>'P99_ROWID'
,p_attribute_04=>'SRVCNOPK'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Record generate successfully<br>Service No. : &P99_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(70157177967203296)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'91'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(70134791483203280)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(59248762896718602)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into nmservce'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'INSERT INTO NMSERVCE (COMPCODE,',
'                      DOCTTYPE,',
'                      SUBTTYPE,',
'                      DOCNUMBR,',
'                      DOCTDATE,',
'                      SERLNUMB,',
'                      PARTYCDE,',
'                      SMANCODE,',
'                      RAISEDBY,',
'                      APPRVDBY,',
'                      APPRDATE,',
'                      COMMCODE,',
'                      ITEMCODE,',
'                      ITEMTYPE,',
'                      ITEMDESC,',
'                      SALERATE,',
'                      LUOMCODE,',
'                      ORGNQNTY,',
'                      APPRQNTY,',
'                      MSFCAMNT,',
'                      REMARKSS,',
'                      COSTCODE,',
'                      WARECODE,',
'                      STATUSCD,',
'                      OPRSTAMP,',
'                      TIMSTAMP,',
'                      WRPERIOD,',
'                      DELCCODE,',
'                      DELWCODE,',
'                      PURCDATE,',
'                      CUSTCMPLN,',
'                      COMPLETE,',
'                      APRVFLAG,',
'                      STARTDTE,',
'                      SRVCNOPK,',
'                      REGISTNO,',
'                      CUSTMRID,',
'                      SRVCEVAT,',
'                      CHASISNO,',
'                      ENGINENO,',
'                      ACTIONTK,',
'                      MILLAGEE,',
'                      PKGNMBER,',
'                      SRVCHOUR,',
'                      SRVCTYPE,',
'                      TYPDTLFK,',
'                     ESTMCOST,',
'                     ESTMDATE,',
'                     BILLPRTY)',
'     VALUES (:COMPCODE,',
'             :P99_DOCTTYPE_1,',
'             :P99_SUBTTYPE_1,',
'             :P99_DOCNUMBR_1,',
'             :P99_DOCTDATE_1,',
'             :P99_SERLNUMB,',
'             :P99_PARTYCDE_1,',
'             :P99_SMANCODE,',
'             :P99_RAISEDBY,',
'             :P99_APPRVDBY,',
'             :P99_APPRDATE,',
'             :P99_COMMCODE,',
'             :P99_ITEMCODE,',
'             :P99_ITEMTYPE,',
'             :P99_ITEMDESC,',
'             :P99_SALERATE,',
'             :P99_LUOMCODE,',
'             :P99_ORGNQNTY,',
'             :P99_APPRQNTY,',
'             :P99_MSFCAMNT,',
'             :P99_REMARKSS,',
'             :P99_COSTCODE,',
'             :P99_WARECODE,',
'             :P99_STATUSCD,',
'             :P99_OPRSTAMP_1,',
'             :P99_TIMSTAMP_1,',
'             :P99_WRPERIOD,',
'             :P99_DELCCODE,',
'             :P99_DELWCODE,',
'             :P99_PURCDATE,',
'             :P99_CUSTCMPLN,',
'             :P99_COMPLETE,',
'             :P99_APRVFLAG,',
'             :P99_STARTDTE,',
'             :P99_SRVCNOPK,',
'             :P99_REGISTNO,',
'             :P99_CUSTMRID,',
'             :P99_SRVCEVAT,',
'             :P99_CHASISNO,',
'             :P99_ENGINENO,',
'             :P99_ACTIONTK,',
'             :P99_MILLAGEE,',
'             :P99_S_PKGNAME,',
'             :P99_SRVCHOUR,',
'             :P99_S_SVSUBTYP,',
'             :P99_S_SRVTPDTL,',
'            :P99_ESTIMATCOST,',
'            :P99_ESTMATEDATE,',
'            :P99_S_BILLPRTY);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(70122571920203258)
,p_process_success_message=>'Service Job Receipt No: ||&P99_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(59266126311261744)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update into nmservce'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update NMSERVCE ',
'SET COMPCODE=:COMPCODE ,',
'                      DOCTTYPE=:P99_DOCTTYPE_1 ,',
'                      SUBTTYPE=:P99_SUBTTYPE_1 ,',
'                      DOCNUMBR=:P99_DOCNUMBR_1 ,',
'                      DOCTDATE=:P99_DOCTDATE_1 ,',
'                      SERLNUMB=:P99_SERLNUMB ,',
'                      PARTYCDE=:P99_PARTYCDE_1 ,',
'                      SMANCODE=:P99_SMANCODE ,',
'                      RAISEDBY=:P99_RAISEDBY ,',
'                      APPRVDBY=:P99_APPRVDBY ,',
'                      APPRDATE=:P99_APPRDATE ,',
'                      COMMCODE=:P99_COMMCODE ,',
'                      ITEMCODE=:P99_ITEMCODE ,',
'                      ITEMTYPE=:P99_ITEMTYPE ,',
'                      ITEMDESC=:P99_ITEMDESC ,',
'                      SALERATE=:P99_SALERATE ,',
'                      LUOMCODE=:P99_LUOMCODE ,',
'                      ORGNQNTY=:P99_ORGNQNTY ,',
'                      APPRQNTY=:P99_APPRQNTY ,',
'                      MSFCAMNT=:P99_MSFCAMNT ,',
'                      REMARKSS=:P99_REMARKSS ,',
'                      COSTCODE=:P99_COSTCODE ,',
'                      WARECODE=:P99_WARECODE ,',
'                      STATUSCD=:P99_STATUSCD ,',
'                      OPRSTAMP=:P99_OPRSTAMP_1 ,',
'                      TIMSTAMP=:P99_TIMSTAMP_1 ,',
'                      WRPERIOD=:P99_WRPERIOD ,',
'                      DELCCODE=:P99_DELCCODE ,',
'                      DELWCODE=:P99_DELWCODE ,',
'                      PURCDATE=:P99_PURCDATE ,',
'                      CUSTCMPLN=:P99_CUSTCMPLN ,',
'                      COMPLETE=:P99_COMPLETE ,',
'                      APRVFLAG=:P99_APRVFLAG ,',
'                      STARTDTE=:P99_STARTDTE ,',
'                      SRVCNOPK=:P99_SRVCNOPK ,',
'                      REGISTNO=:P99_REGISTNO ,',
'                      CUSTMRID=:P99_CUSTMRID ,',
'                      SRVCEVAT=:P99_SRVCEVAT ,',
'                      CHASISNO=:P99_CHASISNO,',
'                      ENGINENO=:P99_ENGINENO,',
'                      ACTIONTK=:P99_ACTIONTK,',
'                      MILLAGEE=:P99_MILLAGEE,',
'                      PKGNMBER=:P99_S_PKGNAME,',
'                      SRVCHOUR=:P99_SRVCHOUR,',
'                      SRVCTYPE=:P99_S_SVSUBTYP,',
'                      TYPDTLFK=:P99_S_SRVTPDTL,',
'                      ESTMCOST=:P99_ESTIMATCOST,',
'                      ESTMDATE=:P99_ESTMATEDATE,',
'                      BILLPRTY=:P99_S_BILLPRTY',
'                      WHERE SRVCNOPK=:P99_SRVCNOPK;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(59265843358249462)
,p_process_success_message=>'Update Successfully..........'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(59269282627566643)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert into nmitmreg'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_DOCNUM VARCHAR2(30);',
'',
'CURSOR CUR_OLDREC IS',
'SELECT REGISTNO FROM NMITMREG ',
'WHERE COMPCODE=:COMPCODE',
'AND REGISTNO=:P99_REGISTNO;',
'V_REGNO VARCHAR2(50);',
'',
'BEGIN',
'          ',
'',
'      OPEN CUR_OLDREC;FETCH CUR_OLDREC INTO V_REGNO;CLOSE CUR_OLDREC;',
'      ',
'      IF V_REGNO IS NULL THEN',
'          Docnumber_generation(:COMPCODE,''NM'',''RG'',1,:P99_DOCTDATE_1,null,''NM'',V_DOCNUM); ',
'        ',
'          INSERT INTO NMITMREG',
'          (',
'          COMPCODE, DOCNUMBR, DOCTTYPE, DOCTDATE, SUBTTYPE, ',
'          UPDOCTYP, UPSUBTYP , UPDOCNUM, UPDOCDTE,PRDKEYNO,ITEMCODE,',
'          CUSTMRID, REGISTNO, CHASISNO, SMILEAGE,OPRSTAMP, TIMSTAMP,OGCNTPER',
'          )',
'          VALUES',
'          (:COMPCODE,V_DOCNUM,''RG'',:P99_DOCTDATE_1,1,',
'          :P99_DOCTTYPE_1,:P99_SUBTTYPE_1,:P99_DOCNUMBR_1,:P99_DOCTDATE_1,null,:P99_ITEMCODE,',
'          :P99_CUSTMRID,:P99_REGISTNO,:P99_CHASISNO,:P99_MILLAGEE,:APP_USER,',
'        to_date(to_char(sysdate,''ddmmrrrr hh24miss''),''ddmmrrrr hh24miss''),:P99_OGCNTPER);',
'  ',
'      else',
'          ',
'      update nmitmreg set registno=:P99_REGISTNO,chasisno=:P99_CHASISNO,SMILEAGE=:P99_MILLAGEE,ITEMCODE=:P99_ITEMCODE',
'      WHERE COMPCODE=:COMPCODE',
'        AND REGISTNO=:P99_REGISTNO;',
'',
'  END IF;',
'',
'  ',
'  EXCEPTION WHEN OTHERS THEN',
'      NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(70122571920203258)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69388987491537890)
,p_process_sequence=>80
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Call report link'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P129_FLAG is null then',
':P129_FLAG:=''A'';',
'else',
':P129_FLAG:=''M'';',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(69385710520183845)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69390295023562435)
,p_process_sequence=>90
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LOAD URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_path varchar2(100);',
'V_comcde varchar2(5);',
'V_prgnme varchar2(500);',
'v_url varchar2(500);',
'v_ip varchar2(50);',
'begin',
'select REPTURLL ',
'into v_ip',
'from syparmas',
'where CACMPCDE=:COMPCODE;',
' v_url :=',
'         v_ip ',
'         || ''/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=''',
';',
'',
'',
'select WEBDRPTH ',
'into V_path',
'from sysyspth',
'where PATHCODE=substr(UPPER(''nmjbrcpt''),1,2);',
'',
'select COMPCODE,PROGDESC',
'into V_comcde,V_prgnme',
'from symenmas',
'where UPPER(PROGNAME)=UPPER(''nmjbrcpt'');',
':P99_XURLDYNMC:=v_url||V_path||''nmjbrcpt.rdf''||''&P0=''||:COMPCODE||''&P14=''||''SV''||''&P15=''||1||''&P13=''||:P99_DOCNUMBR||''&P28=''||:P99_REGISTNO;',
'',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(69385710520183845)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(70157387623203296)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert into nmservce'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT     NVL(MAX(SRVCNOPK),0)+1 INTO :P99_SRVCNOPK FROM NMSERVCE ',
'    WHERE COMPCODE=:COMPCODE;',
'    ',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
'DECLARE',
'    CURSOR CURVAT IS',
'    SELECT COMPGVAT FROM NMCOMPAR',
'    WHERE COMPCODE=:COMPCODE;',
'BEGIN',
'    OPEN CURVAT;FETCH CURVAT INTO :P99_SRVCEVAT;CLOSE CURVAT;',
'END;',
'',
'docnumber_generation(:compcode, :modlcode, :P99_DOCTTYPE,',
'                        :P99_SUBTTYPE, sysdate  ,null,',
'                        :modlcode, :P99_DOCNUMBR);',
' :P99_DOCTTYPE_1 := :P99_DOCTTYPE;',
' :P99_SUBTTYPE_1 := :P99_SUBTTYPE;',
' :P99_DOCNUMBR_1 := :P99_DOCNUMBR;',
' :P99_COMPCODE_1 := :COMPCODE;',
' :P99_DOCTDATE_1 := :P99_DOCTDATE;',
' :P99_CUSTMRID_1 := :P99_CUSTMRID;',
' :P99_SVCPKGFK := :P99_S_PKGNUMB;',
' :P99_SRVCTYPE := :P99_S_SRVCTYP;',
' IF :P99_S_PKGNAME IS NULL --AND :CRQ2.S_SVSUBTYP IS NOT NULL ',
'     THEN',
' :P99_TYPDTLFK := :P99_S_SRVTPDTL;',
' ELSE',
'     :P99_TYPDTLFK := :P99_S_TYPDTLPK;',
' END IF;',
' ',
'    -- FPR_APPROVE_NOW;',
'     ',
'   :P99_REFNUMBR := :P99_S_REFNUM;',
'   :P99_REFNDATE := :P99_S_REFDAT;',
'   :P99_PARTYCDE_1:= NVL( :P99_S_PRTCDE,:P99_PARTYCDE);',
'   :P99_SMANCODE := :P99_S_SMANCD; ',
'   :P99_CURRCODE := :P99_S_CURCDE;',
'   :P99_EXCGRATE := :P99_S_EXGRTE;',
'   :P99_RAISEDBY := :P99_S_RAISED;',
'  -- :P99_APPRVDBY := :P99_S_APRDBY;',
'   :P99_REQDDATE := :P99_S_REQDTE;',
'   :P99_MSFCAMNT := NVL(:P99_SALERATE,0) * NVL(:P99_APPRQNTY,0);',
'   :P99_MSLCAMNT := :P99_MSFCAMNT * :P99_EXCGRATE;',
'   :P99_OPRSTAMP_1:= :APP_USER;',
'   :P99_SERLNUMB := ''0001''; --:CRQ3.S_SRLNUM ;',
'   :P99_WARECODE := NVL(:P99_WARECODE,:P99_S_JOBCDE);',
'   :P99_COSTCODE := :P99_S_WHSCDE; ',
'   :P99_TIMSTAMP_1 := TO_DATE(TO_CHAR(SYSDATE,''DDMMRRRR HH24MISS''),''DDMMRRRR HH24MISS'');',
'   :P99_STATUSCD := ''NEW'';',
'   :P99_APPRVDBY := :APP_USER;',
'   :P99_APPRDATE := sysdate;',
'   :P99_COMMCODE :=''TOY'';',
'         ',
'   :P99_DISCAMNT := NVL(:P99_S_DISCAMNT,0) * NVL(:P99_ORGNQNTY,0);',
'',
'    /*  IF :CRQ2.S_PRVNUM IS NOT NULL THEN',
'       :CRQ3.DWDOCTYP := :CRQ2.S_PRVDOC;',
'         :CRQ3.DWSUBTYP := :CRQ2.S_PRVSUB;',
'         :CRQ3.DWDOCNUM := :CRQ2.S_PRVNUM;',
'         :CRQ3.DWDOCDTE := :CRQ2.S_PRVDTE;',
'      END IF; ',
'      */',
'',
'     :P99_PRVREFNO := :P99_S_PRVREF;',
'     :P99_PRVREFDT := :P99_S_PRRFDT;',
'     ',
'   IF :P99_DELWCODE IS NULL THEN',
'       :P99_DELWCODE := :P99_S_WHSCDE;',
'   END IF;',
'   ',
' IF :P99_DELWCODE IS NOT NULL THEN',
'    BEGIN',
'        SELECT DISTINCT COSTCODE ',
'            INTO :P99_DELCCODE',
'        FROM NMWHSMAS A,SYCOMPTY B',
'            WHERE A.COMPCODE = :COMPCODE',
'                AND A.COMPCODE = B.COMPCODE(+)',
'                AND A.WARECODE = B.WARECODE(+)',
'                AND A.WARECODE = :P99_DELWCODE',
'                AND A.WARECODE LIKE ''%%'' ',
'                AND A.COSTCODE LIKE ''%%''',
'                AND REGNCODE IN (''RS'',''RF'',''RE'');',
'            ',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'                NULL;        ',
'        WHEN TOO_MANY_ROWS THEN',
'                NULL;                ',
'    END;',
'END IF;    ',
'     ',
'   --FPR_APPROVE_NOW;',
'--FPR_INSERT_REGISTRY;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(70122571920203258)
);
wwv_flow_api.component_end;
end;
/
