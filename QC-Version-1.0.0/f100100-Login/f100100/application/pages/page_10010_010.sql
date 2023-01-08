prompt --application/pages/page_10010_010
begin
--   Manifest
--     PAGE: 10010
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>10010080
,p_user_interface_id=>wwv_flow_api.id(100064779117690213)
,p_name=>'Landing Page Menu'
,p_alias=>'LANDING-PAGE-MENU'
,p_step_title=>'Landing Page Menu'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IMG{',
'    width: 250PX;',
'    height: 180PX;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADITI'
,p_last_upd_yyyymmddhh24miss=>'20221017165852'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45811799240221766)
,p_plug_name=>'button'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(99961991426690149)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(147389779423336613)
,p_plug_name=>'PAGE_ITEMS'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h480:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(34589761489920730)
,p_name=>'IMAGES_FILES'
,p_parent_plug_id=>wwv_flow_api.id(147389779423336613)
,p_template=>wwv_flow_api.id(99986191011690159)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--5cols:t-Cards--animColorFill'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ROWID,',
'FLOW_ID APPLICATION_ID, ',
'FILE_NAME CARD_TEXT, ',
'MIME_TYPE,',
''' javascript:$s(''''P10010080_IMAGENAME'''',''''''||To_char(FILE_NAME)||'''''')'' as CARD_LINK, ',
'dbms_lob.getlength(FILE_CONTENT) AS CARD_TITLE',
'froM RPL_BACK_IMG--APEX_IMAGES_FILES',
'WHERE FLOW_ID=''301''',
'AND COMPCODE=:COMPCODE',
'--AND  WORKSPACE=''ORBITS''',
'',
'',
'/*select ',
'ROWID,',
'WORKSPACE_DISPLAY_NAME, ',
'APPLICATION_ID, ',
'FILE_NAME CARD_TEXT, ',
'MIME_TYPE,',
''' javascript:$s(''''P10010080_IMAGENAME'''',''''''||To_char(FILE_NAME)||'''''')'' as CARD_LINK, ',
'dbms_lob.getlength(FILE_CONTENT) AS CARD_TITLE',
'froM APEX_IMAGES_FILES',
'WHERE WORKSPACE=''ORBITS''',
'AND APPLICATION_ID=:APP_ID;',
'*/'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(11057987856946050)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97546045057330587)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>10
,p_column_heading=>'Rowid'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97546871027330589)
,p_query_column_id=>2
,p_column_alias=>'APPLICATION_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Application Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97547284373330589)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>70
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97546442389330589)
,p_query_column_id=>4
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Mime Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97548092240330595)
,p_query_column_id=>5
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>50
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97547633713330589)
,p_query_column_id=>6
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>60
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:RPL_BACK_IMG:FILE_CONTENT:ROWID::MIME_TYPE:FILE_NAME:LAST_UPDATED_ON::::'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97544670245330568)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(45811799240221766)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(100042353897690193)
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97544261112330562)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(45811799240221766)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(100042305862690193)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(97541662830330509)
,p_branch_name=>'GO TO HOME'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::P1_BG_IMAGE:&P10010008_IMAGENAME.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(97544670245330568)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97545378725330573)
,p_name=>'P10010080_IMAGENAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(147389779423336613)
,p_prompt=>'Imagename'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(100041182336690187)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97543509910330520)
,p_name=>'clear'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97543106825330515)
,p_event_id=>wwv_flow_api.id(97543509910330520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10010080_IMAGENAME'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(97543811389330521)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE SYHMBGMST',
'       SET LDPGIMGNM= :P10010080_IMAGENAME',
'     WHERE COMPCODE=:COMPCODE ',
'     AND APPID=:APP_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(97544670245330568)
,p_process_success_message=>'IMAGE SUCCESSFULLY CHANGED..'
);
wwv_flow_api.component_end;
end;
/
