prompt --application/pages/page_01010
begin
--   Manifest
--     PAGE: 01010
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
 p_id=>1010
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'User Master'
,p_page_mode=>'MODAL'
,p_step_title=>'User Master'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'ui-dialog--stretch'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220119125636'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56693346864743118)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(204981568409688514)
,p_plug_name=>'User Master List'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ROWID", ',
'"USERCODE",',
'"USERNAME",',
'"PASWDATE",',
'"VALDFLAG",',
'"STATDATE",',
'"USERTYPE",',
'"LASTLOGN",',
'Decode(USERTYPE,''L'',''Login User'',''G'',''Group User'') USRTYPE,',
'Decode (VALDFLAG,''A'',''Active'',''N'',''New'',''L'',''Leave'',''S'',''Suspended'',''T'',''Terminated'',''E'',''Expired'',''I'',''Inactive'') USRSTATUS,',
'apex_item.checkbox2(11, USERCODE) delcheckbox,',
'(SELECT INITCAP (CACMPNAM) ',
'    FROM SYPARMAS',
'    WHERE CAGRPCDE = ''001''',
'    AND CACMPCDE = DIVNCODE) DIVNCODE',
'from "#OWNER#"."SYUSRMAS"',
'where DIVNCODE=:compcode',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(204981950269688515)
,p_name=>'Report on SYMENMAS'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>335
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_select_columns=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1011:&SESSION.::&DEBUG.:RP:P1011_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_detail_link_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_detail_link_cond=>'TRNMODE'
,p_detail_link_cond2=>'M'
,p_owner=>'ADMINORBHRM'
,p_internal_uid=>204981950269688515
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40130724584499506)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ROWID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40131188015499507)
,p_db_column_name=>'USERCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40131521435499507)
,p_db_column_name=>'USERNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40131928166499507)
,p_db_column_name=>'PASWDATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Password Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40129946662499506)
,p_db_column_name=>'USRSTATUS'
,p_display_order=>14
,p_column_identifier=>'J'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40132345197499507)
,p_db_column_name=>'VALDFLAG'
,p_display_order=>24
,p_column_identifier=>'E'
,p_column_label=>'Valid Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40132725392499509)
,p_db_column_name=>'STATDATE'
,p_display_order=>34
,p_column_identifier=>'F'
,p_column_label=>'Status Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40133121385499509)
,p_db_column_name=>'USERTYPE'
,p_display_order=>44
,p_column_identifier=>'G'
,p_column_label=>'User Type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40130334113499506)
,p_db_column_name=>'USRTYPE'
,p_display_order=>54
,p_column_identifier=>'K'
,p_column_label=>'User Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40133552485499509)
,p_db_column_name=>'LASTLOGN'
,p_display_order=>64
,p_column_identifier=>'H'
,p_column_label=>'Last Login'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40133991275499509)
,p_db_column_name=>'DELCHECKBOX'
,p_display_order=>74
,p_column_identifier=>'I'
,p_column_label=>'Delete?'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64820179154864010)
,p_db_column_name=>'DIVNCODE'
,p_display_order=>84
,p_column_identifier=>'L'
,p_column_label=>'Division'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(204987279832688528)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'401343'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'USERCODE:USERNAME:PASWDATE:USRSTATUS:STATDATE:USRTYPE:LASTLOGN::DIVNCODE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40134725660499510)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(56693346864743118)
,p_button_name=>'New_Create'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create User'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:1011:&SESSION.::&DEBUG.:1011::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'&BTN_SBMT_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40135116909499512)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(56693346864743118)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure Delete the Program &P1010_DELDOCNUMBER. Really?'', ''DELETE'');'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40135572060499512)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(56693346864743118)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40135951184499512)
,p_name=>'P1010_DELDOCNUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(204981568409688514)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40136347357499512)
,p_name=>'P1010_PROGNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(204981568409688514)
,p_item_default=>':PROGNAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40136701926499514)
,p_name=>'P1010_RANDOMNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(204981568409688514)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_random number;',
'begin',
'select dbms_random.value(1,9) num into v_random from dual;',
'return v_random;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40137500170499514)
,p_name=>'Delete'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f11"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40138062657499515)
,p_event_id=>wwv_flow_api.id(40137500170499514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1010_DELDOCNUMBER'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var deldoc=  $(''#symenmas input[name="f11"]:checked'').map(function(){',
'                  return $(this).val()',
'              }).get().join('':'')',
'',
'$(''#P1010_DELDOCNUMBER'').val(deldoc)'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40138439279499515)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40135572060499512)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40138991158499515)
,p_event_id=>wwv_flow_api.id(40138439279499515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40137144310499514)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Program name on Delete button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  l_deldoc  apex_application_global.vc_arr2 := apex_util.string_to_table(:P1010_DELDOCNUMBER);',
'begin',
'',
'  for i in 1 .. l_deldoc.count',
'   loop',
'      delete from symenmas  where PROGNAME = l_deldoc(i);',
'   end loop;',
'',
'  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
