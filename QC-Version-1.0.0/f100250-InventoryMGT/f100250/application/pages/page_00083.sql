prompt --application/pages/page_00083
begin
--   Manifest
--     PAGE: 00083
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
 p_id=>83
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Calendar 1'
,p_step_title=>'Calendar 1'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140809'
);
wwv_flow_api.create_calendar(
 p_id=>wwv_flow_api.id(51751782672000008)
,p_plug_name=>'Calendar 1'
,p_plug_source_type=>'NATIVE_CALENDAR'
,p_plug_source=>'select * from "ACALLOCN"'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_item_display_point=>'ABOVE'
,p_cal_id=>wwv_flow_api.id(51752278198000018)
,p_begin_at_start_of_interval=>'Y'
,p_date_item=>'P83_CALENDAR_DATE'
,p_display_as=>'M'
,p_display_item=>'P83_CALENDAR_DISPLAY'
,p_display_type=>'COL'
,p_easy_sql_table=>'ACALLOCN'
,p_date_column=>'DOCTDATE'
,p_display_column=>'ACCTCODE'
,p_date_type_column=>'P83_CALENDAR_TYPE'
,p_end_date_item=>'P83_CALENDAR_END_DATE'
,p_include_custom_cal=>'N'
,p_custom_cal_days=>3
,p_item_link_open_in=>'W'
,p_include_time_with_date=>'N'
,p_agenda_cal_days_type=>'MONTH'
,p_agenda_cal_days=>30
,p_template_id=>wwv_flow_api.id(47631311915858362)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51753090559000021)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51751782672000008)
,p_button_name=>'MONTHLY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Monthly'
,p_button_position=>'TOP'
,p_button_condition=>'NVL(:P83_CALENDAR_TYPE, ''M'') <> ''M'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_comment=>'Generated 01/28/2015'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51753679989000024)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(51751782672000008)
,p_button_name=>'WEEKLY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Weekly'
,p_button_position=>'TOP'
,p_button_condition=>'P83_CALENDAR_TYPE'
,p_button_condition2=>'W'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'Generated 01/28/2015'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51754282490000026)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(51751782672000008)
,p_button_name=>'DAILY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Daily'
,p_button_position=>'TOP'
,p_button_condition=>'P83_CALENDAR_TYPE'
,p_button_condition2=>'D'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'Generated 01/28/2015'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51754894013000026)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(51751782672000008)
,p_button_name=>'LISTVIEW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'List'
,p_button_position=>'TOP'
,p_button_condition=>'P83_CALENDAR_TYPE'
,p_button_condition2=>'A'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_button_comment=>'Generated 01/28/2015'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51755482753000026)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(51751782672000008)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'< Previous'
,p_button_position=>'TOP'
,p_button_comment=>'Generated 01/28/2015'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51756084753000026)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(51751782672000008)
,p_button_name=>'TODAY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Today'
,p_button_position=>'TOP'
,p_button_comment=>'Generated 01/28/2015'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51756671303000027)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(51751782672000008)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Next >'
,p_button_position=>'TOP'
,p_button_comment=>'Generated 01/28/2015'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51753587030000022)
,p_branch_action=>'f?p=&FLOW_ID.:83:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(51753090559000021)
,p_branch_sequence=>-1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51754189537000026)
,p_branch_action=>'f?p=&FLOW_ID.:83:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(51753679989000024)
,p_branch_sequence=>-1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51754770056000026)
,p_branch_action=>'f?p=&FLOW_ID.:83:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(51754282490000026)
,p_branch_sequence=>-1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51755383995000026)
,p_branch_action=>'f?p=&FLOW_ID.:83:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(51754894013000026)
,p_branch_sequence=>-1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51755994319000026)
,p_branch_action=>'f?p=&FLOW_ID.:83:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(51755482753000026)
,p_branch_sequence=>-1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51756594534000027)
,p_branch_action=>'f?p=&FLOW_ID.:83:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(51756084753000026)
,p_branch_sequence=>-1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51757179409000027)
,p_branch_action=>'f?p=&FLOW_ID.:83:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(51756671303000027)
,p_branch_sequence=>-1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51752580889000019)
,p_name=>'P83_CALENDAR_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(51751782672000008)
,p_use_cache_before_default=>'NO'
,p_prompt=>'P83_CALENDAR_DISPLAY'
,p_source=>'P83_CALENDAR_TYPE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'Generated by Calendar wizard on 01/28/2015'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51752774329000021)
,p_name=>'P83_CALENDAR_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(51751782672000008)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return sysdate;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_source=>'P83_CALENDAR_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'Generated by Calendar wizard on 01/28/2015'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51752980236000021)
,p_name=>'P83_CALENDAR_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(51751782672000008)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return sysdate+3;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_source=>'P83_CALENDAR_END_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'Generated by Calendar wizard on 01/28/2015'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51753380598000022)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Monthly'
,p_process_sql_clob=>' apex_util.month_calendar(''P83_CALENDAR_TYPE'');'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(51753090559000021)
,p_process_comment=>'Generated 01/28/2015'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51753994286000026)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Weekly'
,p_process_sql_clob=>' apex_util.weekly_calendar(''P83_CALENDAR_TYPE'');'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(51753679989000024)
,p_process_comment=>'Generated 01/28/2015'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51754587572000026)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Daily'
,p_process_sql_clob=>' apex_util.daily_calendar(''P83_CALENDAR_TYPE'');'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(51754282490000026)
,p_process_comment=>'Generated 01/28/2015'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51755196059000026)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -List'
,p_process_sql_clob=>' apex_util.agenda_calendar(''P83_CALENDAR_TYPE'');'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(51754894013000026)
,p_process_comment=>'Generated 01/28/2015'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51755777284000026)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Previous'
,p_process_sql_clob=>' apex_util.decrement_calendar;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(51755482753000026)
,p_process_comment=>'Generated 01/28/2015'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51756372030000026)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Today'
,p_process_sql_clob=>' apex_util.today_calendar;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(51756084753000026)
,p_process_comment=>'Generated 01/28/2015'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51756993326000027)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Next'
,p_process_sql_clob=>' apex_util.increment_calendar;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_when_button_id=>wwv_flow_api.id(51756671303000027)
,p_process_comment=>'Generated 01/28/2015'
);
wwv_flow_api.component_end;
end;
/
