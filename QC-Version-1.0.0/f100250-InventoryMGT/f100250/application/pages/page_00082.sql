prompt --application/pages/page_00082
begin
--   Manifest
--     PAGE: 00082
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
 p_id=>82
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Change Password'
,p_page_mode=>'MODAL'
,p_step_title=>'Change Password'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140809'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57143790659996212)
,p_plug_name=>'Change Password '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
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
 p_id=>wwv_flow_api.id(57203869984472762)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57328490162235525)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY_3'
,p_menu_id=>wwv_flow_api.id(7533132934253244474)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57207175907777234)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_api.id(57143790659996212)
,p_button_name=>'P82_SUBMIT'
,p_button_static_id=>'P82_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Password'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_grid_column=>2
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57328885791243751)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_api.id(57143790659996212)
,p_button_name=>'P82_CANCEL'
,p_button_static_id=>'P82_CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:82::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column=>2
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57143998543996215)
,p_name=>'P82_USERNAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(57143790659996212)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'User  Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57144198659996217)
,p_name=>'P82_OLDPASSWORD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(57143790659996212)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Old Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57144369844996218)
,p_name=>'P82_NEWPASSWORD'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(57143790659996212)
,p_prompt=>'New Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57144579964996218)
,p_name=>'P82_CONFPASSWORD'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(57143790659996212)
,p_prompt=>'Confirm password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57204185455477935)
,p_name=>'P82_QRYPASSWORD'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(57203869984472762)
,p_prompt=>'Old Password encrypt'
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
 p_id=>wwv_flow_api.id(57206393667717255)
,p_name=>'P82_NEWPASENCRYPT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(57203869984472762)
,p_prompt=>'Newpasencrypt'
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
 p_id=>wwv_flow_api.id(57323567473850965)
,p_name=>'P82_QRYOLDPSWRD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(57203869984472762)
,p_prompt=>'Qryoldpswrd'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(57207590382779581)
,p_validation_name=>'compare with old password'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'pswrd varchar2(50);',
'',
'BEGIN',
'select USERPAWD ',
'into pswrd ',
'from syusrmas',
'where USERCODE=:P82_USERNAME;',
'if :P82_QRYPASSWORD <> pswrd  then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Your old password does not match''',
';',
'end if;',
'',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(57207175907777234)
,p_associated_item=>wwv_flow_api.id(57144198659996217)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(57321984763797330)
,p_validation_name=>'compare between old and new password'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'',
'BEGIN',
'if :P82_NEWPASSWORD <> :P82_CONFPASSWORD then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''New password and old password does not match''',
';',
'end if;',
'',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(57207175907777234)
,p_associated_item=>wwv_flow_api.id(57144579964996218)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(57322397474806670)
,p_validation_name=>'P82_OLDPASSWORD'
,p_validation_sequence=>30
,p_validation=>'P82_OLDPASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(57207175907777234)
,p_associated_item=>wwv_flow_api.id(57144198659996217)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(57322592945808734)
,p_validation_name=>'P82_NEWPASSWORD'
,p_validation_sequence=>40
,p_validation=>'P82_NEWPASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(57207175907777234)
,p_associated_item=>wwv_flow_api.id(57144369844996218)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(57322788201810948)
,p_validation_name=>'P82_CONFPASSWORD'
,p_validation_sequence=>50
,p_validation=>'P82_CONFPASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(57207175907777234)
,p_associated_item=>wwv_flow_api.id(57144579964996218)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(57204299036528460)
,p_name=>'old password check'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P82_OLDPASSWORD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(57204584897528460)
,p_event_id=>wwv_flow_api.id(57204299036528460)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'outpswrd varchar2(50);',
'',
'begin',
'select USERPAWD ',
'into :P82_qryoldpswrd',
'from syusrmas',
'where USERCODE=:P82_USERNAME;',
'',
'PROC_CREATE_PASSWORD(:P82_USERNAME,:P82_OLDPASSWORD,outpswrd);',
'',
':P82_QRYPASSWORD:=outpswrd;',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Many data found'');',
'when others then',
'raise_application_error(-20001,''Others problem'');',
'end;'))
,p_attribute_02=>'P82_USERNAME,P82_OLDPASSWORD'
,p_attribute_03=>'P82_QRYPASSWORD,P82_QRYOLDPSWRD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(57206498454736443)
,p_name=>'new password encryption'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P82_NEWPASSWORD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(57206788346736443)
,p_event_id=>wwv_flow_api.id(57206498454736443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'pswrd varchar2(50);',
'outpswrd varchar2(50);',
'rtnpswrd varchar2(50);',
'',
'begin',
'select USERPAWD ',
'into pswrd ',
'from syusrmas',
'where USERCODE=:P82_USERNAME;',
'',
'PROC_CREATE_PASSWORD(:P82_USERNAME,:P82_NEWPASSWORD,outpswrd);',
'',
':P82_NEWPASENCRYPT:=outpswrd;',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Many data found'');',
'when others then',
'raise_application_error(-20001,''Others problem'');',
'end;'))
,p_attribute_02=>'P82_USERNAME,P82_NEWPASSWORD'
,p_attribute_03=>'P82_NEWPASENCRYPT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(57323798819887926)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update syusrmas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P82_QRYOLDPSWRD = :P82_QRYPASSWORD then',
'update syusrmas',
'set USERPAWD = :P82_NEWPASENCRYPT',
'where USERCODE=:P82_USERNAME;',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(57207175907777234)
,p_process_success_message=>'Successfully password change.........'
);
wwv_flow_api.component_end;
end;
/
