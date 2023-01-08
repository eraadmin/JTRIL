prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Report Parameters Entry'
,p_page_mode=>'MODAL'
,p_step_title=>'Report Parameters Entry'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'800'
,p_dialog_width=>'900'
,p_protection_level=>'C'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20200625163742'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52370052129963844)
,p_plug_name=>'List of Parameter'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_ITEM.DISPLAY_AND_SAVE (p_idx => 1, p_value   => ROW_NUMBER () OVER (ORDER BY NMSOFCDE ASC)) SL_NO,',
'       APEX_ITEM.DISPLAY_AND_SAVE (p_idx => 2, p_value => NMSOFCDE) NMSOFCDE,',
'       APEX_ITEM.DISPLAY_AND_SAVE (p_idx => 3, p_value => NMCODDES) NMCODDES,',
'       APEX_ITEM.CHECKBOX (p_idx => 4, p_value => ROW_NUMBER () OVER (ORDER BY NMSOFCDE ASC)) "Select"',
'  FROM NMCODMAS',
' WHERE COMPCODE = :COMPCODE ',
'   AND MODLCODE = ''NM'' ',
'   AND NMHRDCDE = ''RPM''',
'   AND PRTYFLAG = ''Y'''))
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
 p_id=>wwv_flow_api.id(52370187381963845)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NADIA'
,p_internal_uid=>52370187381963845
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54335100442173309)
,p_db_column_name=>'NMSOFCDE'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'Parameter Code'
,p_allow_sorting=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54335220124173310)
,p_db_column_name=>'NMCODDES'
,p_display_order=>130
,p_column_identifier=>'O'
,p_column_label=>'Parameter Name'
,p_allow_sorting=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54337374506173331)
,p_db_column_name=>'SL_NO'
,p_display_order=>140
,p_column_identifier=>'AJ'
,p_column_label=>'Sl No'
,p_allow_sorting=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54337486329173332)
,p_db_column_name=>'Select'
,p_display_order=>150
,p_column_identifier=>'AK'
,p_column_label=>'Select'
,p_allow_sorting=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(54342825659175225)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'543429'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SL_NO:NMSOFCDE:NMCODDES:Select:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106007813895778845)
,p_plug_name=>'Report Parameter Entry'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noBorder:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_api.id(52348139428895354)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1582271165273857916)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54421663946543510)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(106007813895778845)
,p_button_name=>'NEXT'
,p_button_static_id=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_NEXT_LBL.'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'&BTN_NEXT_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54422013503543510)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(106007813895778845)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54421265766543507)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(106007813895778845)
,p_button_name=>'REFRESH'
,p_button_static_id=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_RFRS_LBL.'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP,12::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'&BTN_RFRS_ICON.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(54272636773729056)
,p_branch_name=>'Go To Page 16'
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(54421663946543510)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54264124351729048)
,p_name=>'P15_PROGNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(52370052129963844)
,p_prompt=>'Progname'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PROGDESC ||'' - '' || PROGNAME AS d, PROGNAME AS r',
'  FROM SYMENMAS',
' WHERE     PROGTYPE = ''R''',
' ORDER BY 1',
'      /* AND MODLCODE = (SELECT DISTINCT MODLCODE',
'                         FROM SYMENMAS',
'                        WHERE PROGNAME = :PROGNAME)*/'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SINGLE'
,p_attribute_08=>'CIC'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54337753125173335)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(54422013503543510)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54337887026173336)
,p_event_id=>wwv_flow_api.id(54337753125173335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36432261061111024)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Parameter Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 25/06/2020 4:33:20 PM (QP5 v5.354) */',
'DECLARE',
'    vSlNo       VARCHAR2 (40);',
'    vParaID     VARCHAR2 (40);',
'    vParaName   VARCHAR2 (40);',
'    vDataCount  NUMBER;',
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (',
'        p_collection_name   => ''REPORT_PARAMETER'');',
'',
'',
'    FOR i IN 1 .. APEX_APPLICATION.G_f04.COUNT',
'    LOOP',
'        FOR j IN 1 .. APEX_APPLICATION.G_f01.COUNT',
'        LOOP',
'            IF APEX_APPLICATION.G_f01 (j) = APEX_APPLICATION.G_f04 (i)',
'            THEN',
'                vSlNo := APEX_APPLICATION.g_f01 (j);',
'                vParaID := APEX_APPLICATION.g_f02 (j);',
'                vParaName := APEX_APPLICATION.g_f03 (j);',
'',
'                --raise_application_error (-20001, vParaName || '' '' || vParaID || '' '' || vSlNo || '' '' || :P15_PROGNAME);',
'',
'',
'                BEGIN',
'                    SELECT COUNT (1)',
'                      INTO vDataCount',
'                      FROM SY_REPORT_PARAMETER',
'                     WHERE     LOWER (PROGNAME) = LOWER ( :P15_PROGNAME)',
'                           AND PARAMETER_ID = vParaID;',
'                EXCEPTION',
'                    WHEN OTHERS',
'                    THEN',
'                        RAISE_APPLICATION_ERROR (',
'                            -20001,',
'                            ''Error To Find Data Existance. '');',
'                END;',
'',
'',
'                IF vDataCount <> 0',
'                THEN',
'                    RAISE_APPLICATION_ERROR (',
'                        -20003,',
'                           vParaName',
'                        || '' Exist ''',
'                        || ''For Report ''',
'                        || :P15_PROGNAME);',
'                END IF;',
'',
'                APEX_COLLECTION.ADD_MEMBER (',
'                    p_collection_name   => ''REPORT_PARAMETER'',',
'                    p_c001              => vParaID,',
'                    p_c002              => vParaName);',
'            END IF;',
'        END LOOP;',
'    END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(54421663946543510)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54337573683173333)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Item Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P15_PROGNAME IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Program Name Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P15_PROGNAME'');',
'   END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(54421663946543510)
);
wwv_flow_api.component_end;
end;
/
