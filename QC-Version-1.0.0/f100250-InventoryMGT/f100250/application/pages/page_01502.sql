prompt --application/pages/page_01502
begin
--   Manifest
--     PAGE: 01502
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
 p_id=>1502
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Ware House Zone Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Ware House Zone Master'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_last_updated_by=>'SYSADM'
,p_last_upd_yyyymmddhh24miss=>'20170829125715'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70155244554193259)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT ROWID,AREACODE, AREADESC, AREANAME, COMPCODE, LOCATYPE, MODIFYDT, OPRSTAMP, PROD_TYPE, SMANCODE, STATUSCD, TIMSTAMP, WARECODE, WHSZONPK, ZONECODE, ZONLCODE,',
' (select  initcap(nmcoddes) nmcoddes',
'from nmcodmas',
'where compcode=a.compcode',
'and NMSOFCDE=a.PROD_TYPE',
'and nmhrdcde=''PRD'') PRODUCT_TYPE_NAME,',
'(  SELECT DISTINCT INITCAP (smanname) ',
'    FROM nmsmnmas',
'   WHERE     compcode = a.compcode',
'   and smancode=a.smancode) Reproting_head',
'             FROM NMWHZNMS A',
'             Where COMPCODE=:compcode',
'             ',
'order by AREACODE '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(70155663315193259)
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
,p_detail_link=>'f?p=&APP_ID.:1504:&SESSION.::&DEBUG.:1504:P1504_ROWID,P1504_TREEVALUE:#ROWID#,#DEPT_NO#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>33000796189512765
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61159931474063608)
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
 p_id=>wwv_flow_api.id(68648645512339002)
,p_db_column_name=>'WARECODE'
,p_display_order=>14
,p_column_identifier=>'P'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61162740069063608)
,p_db_column_name=>'ROWID'
,p_display_order=>74
,p_column_identifier=>'N'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38146693481122118)
,p_db_column_name=>'AREACODE'
,p_display_order=>84
,p_column_identifier=>'R'
,p_column_label=>'Areacode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38146877111122119)
,p_db_column_name=>'AREADESC'
,p_display_order=>94
,p_column_identifier=>'S'
,p_column_label=>'Area Description'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38146948940122120)
,p_db_column_name=>'AREANAME'
,p_display_order=>104
,p_column_identifier=>'T'
,p_column_label=>'Area Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38147065603122121)
,p_db_column_name=>'LOCATYPE'
,p_display_order=>114
,p_column_identifier=>'U'
,p_column_label=>'Location Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38147181917122122)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>124
,p_column_identifier=>'V'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38147289992122123)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>134
,p_column_identifier=>'W'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38147376755122124)
,p_db_column_name=>'PROD_TYPE'
,p_display_order=>144
,p_column_identifier=>'X'
,p_column_label=>'Prod type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38147423545122125)
,p_db_column_name=>'SMANCODE'
,p_display_order=>154
,p_column_identifier=>'Y'
,p_column_label=>'Salesman'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38147584665122126)
,p_db_column_name=>'STATUSCD'
,p_display_order=>164
,p_column_identifier=>'Z'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38147675649122127)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>174
,p_column_identifier=>'AA'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38147724441122128)
,p_db_column_name=>'WHSZONPK'
,p_display_order=>184
,p_column_identifier=>'AB'
,p_column_label=>'Whszonpk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38147796424122129)
,p_db_column_name=>'ZONECODE'
,p_display_order=>194
,p_column_identifier=>'AC'
,p_column_label=>'Zonecode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38147956971122130)
,p_db_column_name=>'ZONLCODE'
,p_display_order=>204
,p_column_identifier=>'AD'
,p_column_label=>'Zonlcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38148033976122131)
,p_db_column_name=>'PRODUCT_TYPE_NAME'
,p_display_order=>214
,p_column_identifier=>'AE'
,p_column_label=>'Product Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38148174384122132)
,p_db_column_name=>'REPROTING_HEAD'
,p_display_order=>224
,p_column_identifier=>'AF'
,p_column_label=>'Salesman'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(70161509628193804)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'240086'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AREANAME:LOCATYPE:REPROTING_HEAD:PRODUCT_TYPE_NAME:STATUSCD:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38148237350122133)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(70155244554193259)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::::#&P1502_RANDOMNO.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61163945693063610)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(70155244554193259)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1504:&SESSION.::&DEBUG.:1504::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38148322325122134)
,p_name=>'P1502_RANDOMNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(70155244554193259)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
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
wwv_flow_api.component_end;
end;
/
