prompt --application/pages/page_01515
begin
--   Manifest
--     PAGE: 01515
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
 p_id=>1515
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Entry Request WareHouse'
,p_page_mode=>'MODAL'
,p_step_title=>'Entry Request WareHouse'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_step_template=>wwv_flow_api.id(47561185048858115)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170531130542'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68002102082548918)
,p_plug_name=>'Request WareHouse'
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68002557896548922)
,p_plug_name=>'Button_containar'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68002664996548923)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68002900555548926)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68003255463548929)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68003469032548932)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68003808853548935)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68002459864548921)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(68002557896548922)
,p_button_name=>'BTN_send'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68319988064499524)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(68002557896548922)
,p_button_name=>'BTN_OK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:1512:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(69421562029358196)
,p_branch_name=>'Go To Page 1512'
,p_branch_action=>'1512'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68002263549548919)
,p_name=>'P1515_SALESOFFER_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68002102082548918)
,p_prompt=>'offer'
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
 p_id=>wwv_flow_api.id(68002308752548920)
,p_name=>'P1515_WARECODE_TO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(68002102082548918)
,p_prompt=>'Request To'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select S.WAREDESC||'' (''||S.WARECODE||'')'' t, S.WARECODE c',
'       from nmwhsmas s',
'       where S.COMPCODE = :compcode'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style = "width:200px; background-color:#F3F3B6;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68002738003548924)
,p_name=>'P1515_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68002664996548923)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68002848251548925)
,p_name=>'P1515_NEW_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(68002664996548923)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68003056575548927)
,p_name=>'P1515_NEW_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68002900555548926)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68003118916548928)
,p_name=>'P1515_NEW_1_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(68002900555548926)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68003330882548930)
,p_name=>'P1515_NEW_2_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68003255463548929)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68003392061548931)
,p_name=>'P1515_NEW_1_1_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(68003255463548929)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68003615241548933)
,p_name=>'P1515_NEW_2_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68003469032548932)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68003684803548934)
,p_name=>'P1515_NEW_1_1_1_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(68003469032548932)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68003948391548936)
,p_name=>'P1515_NEW_2_1_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68003808853548935)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68004002506548937)
,p_name=>'P1515_NEW_1_1_1_1_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(68003808853548935)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69276223767166019)
,p_name=>'P1515_MINUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(68002102082548918)
,p_prompt=>'MI No'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="width:500px;height:15px;background-color: #FDFCF0;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69278273271166040)
,p_name=>'P1515_WARECODE_FORM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(68002102082548918)
,p_prompt=>'ware'
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
 p_id=>wwv_flow_api.id(71757918323653596)
,p_name=>'P1515_UPDOCNUMBR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(68002102082548918)
,p_prompt=>'updoc'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68319285914492091)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INsert_MI_Requisition'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'dpr_send_request_warehouse(:compcode,:P1515_SALESOFFER_NEW,:P1515_WARECODE_TO,:P1515_WARECODE_FORM,:APP_USER,:P1515_UPDOCNUMBR,:P1515_MINUM);',
'',
'if sql%notfound then',
' raise_application_error(-20002,''Cannot insert data''||''comp''||:compcode||''offr''||:P1515_SALESOFFER_NEW||''wareto''||:P1515_WARECODE_TO||''warefr''||:P1515_WARECODE_FORM||''usr''||:APP_USER||''upd''||:P1515_UPDOCNUMBR||''min''||:P1515_MINUM);',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(68002459864548921)
);
wwv_flow_api.component_end;
end;
/
