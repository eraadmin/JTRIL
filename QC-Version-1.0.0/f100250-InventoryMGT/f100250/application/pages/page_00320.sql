prompt --application/pages/page_00320
begin
--   Manifest
--     PAGE: 00320
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
 p_id=>320
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Chart of Accounts'
,p_page_mode=>'MODAL'
,p_step_title=>'Chart of Accounts'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181015124459'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(151364104046564549)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT CONNECT_BY_ROOT UPPER (ACCTNAME) AS ROOT_ACT,',
'              acctcode  account_code,',
'              ACCTNAME,',
'            --  SUBSTR (SYS_CONNECT_BY_PATH (acctname, ''>''), 2) acctname_tree,',
'              LPAD ('' '', LEVEL * 5, '' '') || ACCTCODE || ''-'' || ACCTNAME ACCT_NAME ,',
'              COMPCODE,  MODIFYDT, OPRSTAMP,    TIMSTAMP            ',
'         FROM (SELECT GRUPCODE,',
'                      COMPCODE,',
'                      PARNTACT,',
'                      ACCTCODE,',
'                      MENUSLNO,',
'                      LEVLCODE,',
'                      ACCTNAME,',
'                      ACCTTYPE,',
'                      CTRLFLAG,',
'                      CASHBANK,',
'                      EMPLRECV,',
'                      DFLTCOST,',
'                      COSTREQD,',
'                      HEADFLAG,',
'                      ARACTFLG,',
'                      APACTFLG,',
'                      GLACTFLG,',
'                      STATSFLG,',
'                      SUBCLASS,',
'                      OPRSTAMP,',
'                      TIMSTAMP,',
'                      DEFARFLG,',
'                      DEFAPFLG,',
'                      DFBNKFLG,',
'                      DFCSHFLG,',
'                      CHILDACD,',
'                      COMPCODE || ''#'' || PARNTACT P,',
'                      COMPCODE || ''#'' || CHILDACD C,',
'                      USRACTCDE,',
'                      ACCTRENM,',
'                      PRNTACTD,',
'                      ACCTCDED,',
'                      MODIFYDT,',
'                      PLACFLAG,',
'                      COGSFLAG,',
'                      SLORDRBY,',
'                      GRPHDCDE',
'                 FROM sychrtac',
'                 WHERE COMPCODE=:compcode)',
'   START WITH parntact = ''ROXXX''',
'   CONNECT BY NOCYCLE PRIOR c = p',
'     ORDER BY CHILDACD;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(151364522807564549)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:321:&SESSION.::&DEBUG.:321:P321_ROWID,P321_TREEVALUE:#ROWID#,#ACCTCODE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>183710905876965893
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48869196320970016)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48864722287970010)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>124
,p_column_identifier=>'V'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48865142273970010)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>134
,p_column_identifier=>'W'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48866743093970011)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>174
,p_column_identifier=>'AA'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48892413307032742)
,p_db_column_name=>'ACCTNAME'
,p_display_order=>177
,p_column_identifier=>'AD'
,p_column_label=>'A/C Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48788442077122903)
,p_db_column_name=>'ROOT_ACT'
,p_display_order=>187
,p_column_identifier=>'AE'
,p_column_label=>'Root act'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48788496842122904)
,p_db_column_name=>'ACCOUNT_CODE'
,p_display_order=>197
,p_column_identifier=>'AF'
,p_column_label=>'Account code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48788654751122905)
,p_db_column_name=>'ACCT_NAME'
,p_display_order=>207
,p_column_identifier=>'AG'
,p_column_label=>'Acct name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(151370369120565094)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'812167'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACCTNAME::ROOT_ACT:ACCOUNT_CODE:ACCT_NAME'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48870782852970024)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(151364104046564549)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48871124591970027)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(151364104046564549)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:321:&SESSION.::&DEBUG.:321::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48871612682970030)
,p_name=>'P320_RANDOMNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(151364104046564549)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_random number;',
'begin',
'select dbms_random.value(1,9) num into v_random from dual;',
'return v_random;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47438395658696310)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(48870782852970024)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47438525106696311)
,p_event_id=>wwv_flow_api.id(47438395658696310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
