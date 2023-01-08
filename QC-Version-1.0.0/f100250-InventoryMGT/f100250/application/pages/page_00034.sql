prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_tab_set=>'TS1'
,p_name=>'Sample Data'
,p_step_title=>'Sample Database Application - Sample Data'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1002365586783416738)
,p_plug_name=>'Sample Data'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_header=>'<p>Manage the sample data that ships with this application for demonstration purposes.</p>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1002365971693416739)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1002365586783416738)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1002366182023416739)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1002365586783416738)
,p_button_name=>'REMOVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Remove'
,p_button_position=>'CREATE'
,p_button_css_classes=>'gear iconLeft'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1002365794022416738)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1002365586783416738)
,p_button_name=>'RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Recreate'
,p_button_position=>'CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1002367272535416743)
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 12-APR-2012 16:01 by MIKE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1002764481593487553)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove Sample Data'
,p_process_sql_clob=>'sample_data_pkg.delete_data;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1002366182023416739)
,p_process_success_message=>'Sample Data reset.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1002366776766416742)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset Sample Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sample_data_pkg.delete_data;',
'sample_data_pkg.insert_data;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1002365794022416738)
,p_process_success_message=>'Sample Data reset.'
);
wwv_flow_api.component_end;
end;
/
