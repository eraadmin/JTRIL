prompt --application/pages/page_10025
begin
--   Manifest
--     PAGE: 10025
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
 p_id=>10025020
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Rec Bin Upload'
,p_page_mode=>'MODAL'
,p_step_title=>'Rec Bin Upload'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20210124151339'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(562617376573412109)
,p_plug_name=>'ITEMS'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(562618147800412117)
,p_plug_name=>'button'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(562618674270412122)
,p_plug_name=>'Excel Data'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001 AS ITEMCODE,',
'C002 AS ITEMDESC,',
'C003 AS ITEMTYPE,',
'C004 AS STORELOCATION,',
'C005 AS UOM,',
'C006 AS MOQ,',
'C007 AS PartCategory,',
'C008 AS StorageBin,',
'C009 AS WARECODE,',
'C010 AS WAREDESC,',
'C011 AS MRPDBP,',
'C012 AS FOB,',
'C013 AS LocalPurchasePrice,',
'C014 AS StockQuantity,',
'C015 AS MovingAveragePrice,',
'C016 AS StockValue,',
'C017 AS Return',
'from',
'apex_collections',
'where collection_name=''XL_LOAD'';'))
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
 p_id=>wwv_flow_api.id(518845003104808755)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>350
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MUKUL'
,p_internal_uid=>518845003104808755
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263105326623711206)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263105631938711242)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Itemdesc'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263106096770711242)
,p_db_column_name=>'ITEMTYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Itemtype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263106437341711242)
,p_db_column_name=>'STORELOCATION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Storelocation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263106876363711242)
,p_db_column_name=>'UOM'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Uom'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263107295568711242)
,p_db_column_name=>'MOQ'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Moq'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263107669283711242)
,p_db_column_name=>'PARTCATEGORY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Partcategory'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263108043388711242)
,p_db_column_name=>'STORAGEBIN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Storagebin'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263108431162711242)
,p_db_column_name=>'WARECODE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263108846652711242)
,p_db_column_name=>'WAREDESC'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Waredesc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263109234879711243)
,p_db_column_name=>'MRPDBP'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Mrpdbp'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263109698805711243)
,p_db_column_name=>'FOB'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fob'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263110091004711243)
,p_db_column_name=>'LOCALPURCHASEPRICE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Localpurchaseprice'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263110470107711245)
,p_db_column_name=>'STOCKQUANTITY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Stockquantity'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263110835069711245)
,p_db_column_name=>'MOVINGAVERAGEPRICE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Movingaverageprice'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263111279268711245)
,p_db_column_name=>'STOCKVALUE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Stockvalue'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263111645636711245)
,p_db_column_name=>'RETURN'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Return'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(522508691905536313)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2631120'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ITEMCODE:ITEMDESC:ITEMTYPE:STORELOCATION:UOM:MOQ:PARTCATEGORY:STORAGEBIN:WARECODE:WAREDESC:MRPDBP:FOB:LOCALPURCHASEPRICE:STOCKQUANTITY:MOVINGAVERAGEPRICE:STOCKVALUE:RETURN'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(563082434166152982)
,p_plug_name=>'button'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(263114078996711425)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(562617376573412109)
,p_button_name=>'Load_Data'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Load Data'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(263113036974711423)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(563082434166152982)
,p_button_name=>'Process_data'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Process Data'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(263112616085711395)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(563082434166152982)
,p_button_name=>'CLEAR'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'CLEAR'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(263113317082711423)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(563082434166152982)
,p_button_name=>'CLOSE'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(263114434452711426)
,p_name=>'P10025020_TRANS_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(562617376573412109)
,p_prompt=>'Transaction Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1900:2200'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(263114838524711492)
,p_name=>'P10025020_TRANS_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(562617376573412109)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(263115265603711492)
,p_name=>'P10025020_WAREHOUSE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(562617376573412109)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(263115616039711493)
,p_name=>'P10025020_FILEPATH'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(562617376573412109)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(263116006481711498)
,p_name=>'P10025020_FILENAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(562617376573412109)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(263116425226711501)
,p_name=>'P10025020_FILETYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(562617376573412109)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(263116810816711501)
,p_name=>'P10025020_FILESIZE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(562617376573412109)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(263117273672711501)
,p_name=>'P10025020_REMARKS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(562617376573412109)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(263117638276711503)
,p_name=>'P10025020_BROWSE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(562617376573412109)
,p_prompt=>'Excel File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_colspan=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'NATIVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(263118056216711503)
,p_name=>'P10025020_DOCTTYPE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(562617376573412109)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
':DOCTTYPE',
''))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(263118468499711503)
,p_name=>'P10025020_SUBTTYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(562617376573412109)
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(263119136783711601)
,p_validation_name=>'date not null'
,p_validation_sequence=>10
,p_validation=>'P10025020_TRANS_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# Must Have value..'
,p_associated_item=>wwv_flow_api.id(263114434452711426)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(263119548592711609)
,p_validation_name=>'ware house not null'
,p_validation_sequence=>20
,p_validation=>'P10025020_WAREHOUSE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# Must Have selected..'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_api.id(263115265603711492)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(263121376907711635)
,p_name=>'close dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(263113317082711423)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(263121815203711654)
,p_event_id=>wwv_flow_api.id(263121376907711635)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(263122253638711660)
,p_name=>'CLEAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(259389423399823216)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(263122731489711662)
,p_event_id=>wwv_flow_api.id(263122253638711660)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' APEX_COLLECTION.TRUNCATE_COLLECTION(',
'        p_collection_name => ''XL_LOAD'');'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(263123234247711664)
,p_event_id=>wwv_flow_api.id(263122253638711660)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(562618674270412122)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(259389893877823220)
,p_name=>'clear data'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(263112616085711395)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(259389938903823221)
,p_event_id=>wwv_flow_api.id(259389893877823220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' APEX_COLLECTION.TRUNCATE_COLLECTION(',
'        p_collection_name => ''XL_LOAD'');'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(259390059115823222)
,p_event_id=>wwv_flow_api.id(259389893877823220)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(562618674270412122)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(263119739673711609)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'PLUGIN_NL.AMIS.SCHEFFER.PROCESS.EXCEL2COLLECTION'
,p_process_name=>'load'
,p_attribute_01=>'P10025020_BROWSE'
,p_attribute_02=>'XL_LOAD'
,p_attribute_03=>'1'
,p_attribute_04=>';'
,p_attribute_05=>'"'
,p_attribute_07=>'Y'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(263114078996711425)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(263120132134711618)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'docnumber'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'doc_number VARCHAR2(50);',
'BEGIN',
'if :P10025020_TRANS_NO is null then',
'      Docnumber_Generation (:COMPCODE,',
'                            ''NM'',',
'                            ''VP'',',
'                            1,',
'                            TRUNC (SYSDATE), ',
'                            NULL,',
'                            ''NM'',',
'                            doc_number);',
'',
'      :P10025020_TRANS_NO := doc_number;',
'end if;',
'exception',
'when others then',
'RAISE_APPLICATION_ERROR (-20017,''The Error Is ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(263120505967711618)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 1/21/2021 9:05:06 PM (QP5 v5.287) */',
'BEGIN',
'   FOR i IN (SELECT C001 AS ITEMCODE,',
'                    C002 AS ITEMDESC,',
'                    C003 AS ITEMTYPE,',
'                    C004 AS STORELOCATION,',
'                    C005 AS UOM,',
'                    C006 AS MOQ,',
'                    C007 AS PARTCATEGORY,',
'                    C008 AS STORAGEBIN,',
'                    C009 AS WARECODE,',
'                    C010 AS WAREDESC,',
'                    C011 AS MRPDBP,',
'                    C012 AS FOB,',
'                    C013 AS LOCALPURCHASEPRICE,',
'                    C014 AS STOCKQTY,',
'                    C015 AS MOVAVGPRICE,',
'                    C016 AS STOCKVALUE,',
'                    C017 AS RETURN',
'               FROM APEX_COLLECTIONS',
'              WHERE COLLECTION_NAME = ''XL_LOAD'')',
'   LOOP',
'      INSERT INTO NMWHIBDT (COMPCODE,',
'                            WARECODE,',
'                            ITEMCODE,',
'                            OPBALDTE,',
'                            OPBALQTY,',
'                            OPBALRTE,',
'                            OPBALVAL,',
'                            TOTALRCP,',
'                            TOTALISS,',
'                            CLBALDTE,',
'                            CLBALQTY,',
'                            CLBALRTE,',
'                            CLBALVAL,',
'                            BINLOCTN,',
'                            LASISSDT,',
'                            LASRCPDT,',
'                            BCARDQTY,',
'                            PHYSCQTY,',
'                            VERFRATE,',
'                            BATCHNUM,',
'                            OPRSTAMP,',
'                            TIMSTAMP,',
'                            BATCHDTE,',
'                            MODIFYDT)',
'              VALUES (',
'                        :COMPCODE,',
'                        i.WARECODE,',
'                        i.ITEMCODE,',
'                        :P10025020_TRANS_DATE,',
'                        NULL,',
'                        NULL,',
'                        NULL,',
'                        NULL,',
'                        NULL,',
'                        :P10025020_TRANS_DATE,',
'                        TO_NUMBER(i.STOCKQTY),',
'                        TO_NUMBER(i.MOVAVGPRICE),',
'                        TO_NUMBER(i.STOCKVALUE),',
'                        i.STORELOCATION || ''/'' || i.STORAGEBIN,',
'                        NULL,',
'                        NULL,',
'                        NULL,',
'                        NULL,',
'                        NULL,',
'                           i.STORELOCATION',
'                        || ''/''',
'                        || i.STORAGEBIN,',
'                        :APP_USER,',
'                        SYSDATE,',
'                        :P10025020_TRANS_DATE,',
'                        SYSDATE);',
'   END LOOP;',
'   ',
'  ',
'    APEX_COLLECTION.TRUNCATE_COLLECTION(',
'        p_collection_name => ''XL_LOAD'');',
'  ',
'   ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(263113036974711423)
,p_process_success_message=>'REC BIN SUCCESSFULLY UPLOADED..'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(263120969729711623)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(40145367806964447)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
