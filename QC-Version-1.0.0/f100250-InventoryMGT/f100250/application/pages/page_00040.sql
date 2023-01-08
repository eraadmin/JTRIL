prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_tab_set=>'TS1'
,p_name=>'Activity Calendar'
,p_step_title=>'Activity Calendar'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124815'
);
wwv_flow_api.create_calendar(
 p_id=>wwv_flow_api.id(1003066873235157027)
,p_plug_name=>'Activity Calendar'
,p_plug_source_type=>'NATIVE_CALENDAR'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'lower(USERID)      "THE_USER",',
'trim(to_char(count(*),''999G999G999G990''))   "Page Events",',
'trunc(time_stamp) the_day',
'from apex_activity_log l',
'where flow_id = :app_id and userid is not null and userid != ''nobody''',
'group by trunc(time_stamp), lower(USERID)',
'order by 2 desc, 1'))
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_item_display_point=>'ABOVE'
,p_cal_id=>wwv_flow_api.id(1003067500338157028)
,p_begin_at_start_of_interval=>'Y'
,p_date_item=>'P40_CALENDAR_DATE'
,p_display_as=>'M'
,p_display_item=>'P40_CALENDAR_DISPLAY'
,p_display_type=>'CUS'
,p_item_format=>'#THE_USER# - #Page Events#'
,p_date_column=>'THE_DAY'
,p_start_of_week=>19721105
,p_start_time=>0
,p_end_time=>23
,p_time_format=>'24HOUR'
,p_week_start_day=>19721105
,p_week_end_day=>19721111
,p_date_type_column=>'P40_CALENDAR_TYPE'
,p_end_date_item=>'P40_CALENDAR_END_DATE'
,p_include_custom_cal=>'N'
,p_custom_cal_days=>3
,p_primary_key_column=>'Page Events'
,p_item_link_open_in=>'W'
,p_include_time_with_date=>'Y'
,p_agenda_cal_days_type=>'MONTH'
,p_agenda_cal_days=>30
,p_calendar_type=>'A'
,p_template_id=>wwv_flow_api.id(47631311915858362)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1003068282867157029)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1003066873235157027)
,p_button_name=>'MONTHLY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Monthly'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''M'',''same''); void(0);'
,p_button_comment=>'Generated 08/24/2012'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1003068489035157029)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1003066873235157027)
,p_button_name=>'WEEKLY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Weekly'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''W'',''same''); void(0);'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'Generated 08/24/2012'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1003068697245157029)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1003066873235157027)
,p_button_name=>'DAILY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Daily'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''D'',''same''); void(0);'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'Generated 08/24/2012'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1003068893090157029)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1003066873235157027)
,p_button_name=>'LISTVIEW'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'List'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''A'',''same''); void(0);'
,p_button_comment=>'Generated 08/24/2012'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1003069098271157029)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(1003066873235157027)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Previous'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''S'',''previous''); void(0);'
,p_button_css_classes=>'leftarrow'
,p_button_comment=>'Generated 08/24/2012'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1003069270366157029)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(1003066873235157027)
,p_button_name=>'TODAY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Today'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''S'',''today''); void(0);'
,p_button_comment=>'Generated 08/24/2012'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1003069495815157029)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(1003066873235157027)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Next'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''S'',''next''); void(0);'
,p_button_css_classes=>'rightarrow'
,p_button_comment=>'Generated 08/24/2012'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1003067787394157028)
,p_name=>'P40_CALENDAR_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1003066873235157027)
,p_use_cache_before_default=>'NO'
,p_prompt=>'P40_CALENDAR_DISPLAY'
,p_source=>'P40_CALENDAR_TYPE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'Generated by Calendar wizard on 08/24/2012'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1003067997767157028)
,p_name=>'P40_CALENDAR_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1003066873235157027)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return sysdate;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_source=>'P40_CALENDAR_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'Generated by Calendar wizard on 08/24/2012'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1003068182253157029)
,p_name=>'P40_CALENDAR_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1003066873235157027)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return sysdate+3;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_source=>'P40_CALENDAR_END_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'Generated by Calendar wizard on 08/24/2012'
);
wwv_flow_api.component_end;
end;
/
