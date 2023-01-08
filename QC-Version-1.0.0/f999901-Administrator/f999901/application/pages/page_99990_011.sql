prompt --application/pages/page_99990_011
begin
--   Manifest
--     PAGE: 99990
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>99990111
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'USER REGISTRATION'
,p_page_mode=>'MODAL'
,p_step_title=>'USER REGISTRATION'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'',
'$(document).on(''change'',''.uppercase'',function(){',
'  var i = "#" + $(this).attr("id");',
'  $(i).val( $(i).val().toUpperCase() );',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.min_length{',
'	background-color:yellow;',
'	border:1px solid red;',
'}',
'',
'/*.t-Dialog-bodyWrapperOut {',
'    position: relative;',
'    flex: 1 0;',
'    background-color: antiquewhite;',
'}',
'.t-Dialog {',
'	background-color: linear-gradient(&PAG_BODY_GRDNT_DIR., &PAG_BODY_BGCLRL., &PAG_BODY_BGCLRR.);',
'}*/',
'',
'.t-Dialog {',
'    background: linear-gradient(skyblue,lightgreen);/*--&PAG_BODY_BGCLRL.;*/',
'	    border-radius:none;',
'}',
'',
'',
'.t-Header-branding {',
'    	background: linear-gradient(to left, lightgreen,lightyellow);',
'}',
'',
'.t-Wizard, body .ui-button.ui-corner-all, body .ui-corner-all, body .ui-datepicker .ui-datepicker-buttonpane button, ',
'body .ui-datepicker .ui-datepicker-header, body .ui-datepicker .ui-datepicker-next, body .ui-datepicker .ui-datepicker-prev {',
'    border-radius: 35px;',
'}'))
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_dialog_height=>'400'
,p_dialog_width=>'800'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210610112725'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(53913919996441722)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:margin-right-md'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(108327719207911444)
,p_plug_name=>'Create Form'
,p_parent_plug_id=>wwv_flow_api.id(53913919996441722)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(108341357236911454)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54183707112962976)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(108341357236911454)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54183354365962976)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(108341357236911454)
,p_button_name=>'CREATE'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54173839474962968)
,p_name=>'P99990111_ROWID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54174257960962970)
,p_name=>'P99990111_USERCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_prompt=>'Usercode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>6
,p_tag_css_classes=>'uppercase'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_css_classes=>'uppercase'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54174626888962970)
,p_name=>'P99990111_USERNAME'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_prompt=>'User Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54175027062962970)
,p_name=>'P99990111_USERPAWD'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>32
,p_cMaxlength=>20
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54175428682962970)
,p_name=>'P99990111_VALDFLAG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54175839467962970)
,p_name=>'P99990111_DIVNCODE'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_prompt=>'Division'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select distinct A.CACMPCDE||'' - ''||A.CACMPNAM d, A.CACMPCDE r',
'From SYPARMAS A',
'order by a.CACMPCDE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Division--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54176285276962971)
,p_name=>'P99990111_EMPLCODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_prompt=>'Emp Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54176653179962971)
,p_name=>'P99990111_EMPLYDOB'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_prompt=>'Date of Birth'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1900:2200'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54177033990962971)
,p_name=>'P99990111_USERTYPE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54177464644962971)
,p_name=>'P99990111_TELNUMBR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54177854341962971)
,p_name=>'P99990111_ADDRESS1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_prompt=>'Address1'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>3
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54178244609962971)
,p_name=>'P99990111_ADDRESS2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_prompt=>'Address2'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>3
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54178643315962971)
,p_name=>'P99990111_ADDRESS3'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54179048681962971)
,p_name=>'P99990111_EMAILID1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_prompt=>'Email ID1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54179427706962971)
,p_name=>'P99990111_EMAILID2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_prompt=>'Email ID 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54179871855962973)
,p_name=>'P99990111_OPRSTAMP'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54180241709962973)
,p_name=>'P99990111_TIMSTAMP'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54180602742962973)
,p_name=>'P99990111_MODIFYDT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54181086670962973)
,p_name=>'P99990111_OPERFLAG'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_item_default=>'Y'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55338535853823239)
,p_name=>'P99990111_CON_PASS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_prompt=>'Confirm'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56347478770792726)
,p_name=>'P99990111_LENGTH'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56348021734792732)
,p_name=>'P99990111_MSG'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(108341357236911454)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:red;"'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56348903536792741)
,p_name=>'P99990111_USRCD_LEN'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(108327719207911444)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(56348550051792737)
,p_validation_name=>'min_pass'
,p_validation_sequence=>10
,p_validation=>':P99990111_LENGTH >= 8'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Password Should Contain Minimum 8 Charecters.'
,p_when_button_pressed=>wwv_flow_api.id(54183354365962976)
,p_associated_item=>wwv_flow_api.id(54175027062962970)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(56349440094792746)
,p_validation_name=>'min 6 char'
,p_validation_sequence=>20
,p_validation=>':P99990111_USRCD_LEN >= 6'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'User Code Must Contain Minimum 6 Charecters.'
,p_when_button_pressed=>wwv_flow_api.id(54183354365962976)
,p_associated_item=>wwv_flow_api.id(54174257960962970)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54190281566962979)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(54183707112962976)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54190757721962979)
,p_event_id=>wwv_flow_api.id(54190281566962979)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(55338653403823240)
,p_name=>'close X'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(55338770297823241)
,p_event_id=>wwv_flow_api.id(55338653403823240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var button = parent.$(''.ui-dialog-titlebar-close''); //get the button',
'button.hide(); //hide the button'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56347228482792724)
,p_name=>'min char'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990111_USERPAWD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56347363818792725)
,p_event_id=>wwv_flow_api.id(56347228482792724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990111_LENGTH'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select length(:P99990111_USERPAWD) from dual;'
,p_attribute_07=>'P99990111_USERPAWD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56347581634792727)
,p_event_id=>wwv_flow_api.id(56347228482792724)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990111_LENGTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56347752563792729)
,p_name=>'lenght_valid'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990111_LENGTH'
,p_condition_element=>'P99990111_LENGTH'
,p_triggering_condition_type=>'LESS_THAN'
,p_triggering_expression=>'8'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P99990111_LENGTH'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56349573017792747)
,p_event_id=>wwv_flow_api.id(56347752563792729)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990111_USERPAWD'
,p_attribute_01=>'min_length'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56348246349792734)
,p_event_id=>wwv_flow_api.id(56347752563792729)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990111_USERPAWD'
,p_attribute_01=>'min_length'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56349055333792742)
,p_name=>'set length'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990111_USERCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56349192119792743)
,p_event_id=>wwv_flow_api.id(56349055333792742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990111_USRCD_LEN'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select length(:P99990111_USERCODE) from dual;'
,p_attribute_07=>'P99990111_USERCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56349223020792744)
,p_name=>'New'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990111_USRCD_LEN'
,p_condition_element=>'P99990111_USRCD_LEN'
,p_triggering_condition_type=>'LESS_THAN'
,p_triggering_expression=>'6'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P99990111_USRCD_LEN'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56349394829792745)
,p_event_id=>wwv_flow_api.id(56349223020792744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990111_USERCODE'
,p_attribute_01=>'min_length'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(57015354132990003)
,p_name=>'SET Y'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990111_USREXIS'
,p_condition_element=>'P99990111_USREXIS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(57015427858990004)
,p_event_id=>wwv_flow_api.id(57015354132990003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990111_MSG'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if',
':P99990111_USREXIS=''Y'' then',
'return ''User Already Exists. Please Input New One..'';',
'else',
'null;',
'end if;'))
,p_attribute_07=>'P99990111_USREXIS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(55338817874823242)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 3/3/2020 6:01:14 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   vErrFlag    VARCHAR2 (1);',
'   vErrMsg     VARCHAR2 (1000);',
'   vUserCode   NUMBER;',
'BEGIN',
'   SELECT COUNT (*) NEW_USER_RQST',
'     INTO vUserCode',
'     FROM USRSGNUP',
'    WHERE USERCODE = :P99990111_USERCODE;',
'',
'   IF vUserCode > 0',
'   THEN',
'      RAISE_APPLICATION_ERROR (',
'         -20094,',
'         ''User Code Already Exists. Please Input New One.'');',
'   ELSE',
'      IF :P99990111_USERPAWD <> :P99990111_CON_PASS',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20084, ''CONFIRM PASSWORD IS NOT MATCHED.'');',
'      ELSE',
'         NULL;',
'      END IF;',
'',
'',
'',
'      BEGIN',
'         DPK_ACCOUNTS.DPR_USERSIGNUP_INSERT (',
'            P_USERCODE   => :P99990111_USERCODE,',
'            P_USERNAME   => :P99990111_USERNAME,',
'            P_USERPAWD   => :P99990111_USERPAWD,',
'            P_CONPASWD   => :P99990111_CON_PASS,',
'            P_VALDFLAG   => :P99990111_VALDFLAG,',
'            P_DIVNCODE   => :P99990111_DIVNCODE,',
'            P_EMPLCODE   => :P99990111_EMPLCODE,',
'            P_EMPLYDOB   => :P99990111_EMPLYDOB,',
'            P_USERTYPE   => :P99990111_USERTYPE,',
'            P_TELNUMBR   => :P99990111_TELNUMBR,',
'            P_ADDRESS1   => :P99990111_ADDRESS1,',
'            P_ADDRESS2   => :P99990111_ADDRESS2,',
'            P_ADDRESS3   => :P99990111_ADDRESS3,',
'            P_EMAILID1   => :P99990111_EMAILID1,',
'            P_EMAILID2   => :P99990111_EMAILID2,',
'            P_OPRSTAMP   => :P99990111_OPRSTAMP,',
'            P_TIMSTAMP   => :P99990111_TIMSTAMP,',
'            P_MODIFYDT   => :P99990111_MODIFYDT,',
'            P_OPERFLAG   => :P99990111_OPERFLAG,',
'            p_ERR_FLAG   => vErrFlag,',
'            p_ERR_MSG    => vErrMsg);',
'      EXCEPTION',
'         WHEN OTHERS',
'         THEN',
'            RAISE_APPLICATION_ERROR (',
'               -20189,',
'               ''ERROR - Package Calling Problem. '' || SQLERRM);',
'      END;',
'   END IF;',
'',
'   IF vErrFlag = ''Y''',
'   THEN',
'      RAISE_APPLICATION_ERROR (-20157, vErrMsg);',
'   END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(54183354365962976)
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'USER INFORMATION SUCCESSFULLY INSERTED. <BR>',
'PLEASE WAIT FOR ADMIN APPROVE.'))
);
wwv_flow_api.component_end;
end;
/
