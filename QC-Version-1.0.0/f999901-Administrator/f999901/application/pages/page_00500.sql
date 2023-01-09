prompt --application/pages/page_00500
begin
--   Manifest
--     PAGE: 00500
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
 p_id=>500
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Report Paraform'
,p_page_mode=>'MODAL'
,p_step_title=>'Report Paraform'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_dialog_height=>'600'
,p_dialog_width=>'900'
,p_last_updated_by=>'RAZU'
,p_last_upd_yyyymmddhh24miss=>'20220530154222'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(148348983547781272)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(149540692770284792)
,p_plug_name=>'Load Data'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(174593614319660157)
,p_plug_name=>'Input Parameter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56439572122502331)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(148348983547781272)
,p_button_name=>'ADVANCE'
,p_button_static_id=>'PRINT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Advance Option'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:501:&SESSION.::&DEBUG.:RP,501:P501_REPORT_NAME:&P500_REPORT_NAME.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56439986543502331)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(148348983547781272)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Run Report'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56440388032502332)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(148348983547781272)
,p_button_name=>'Excecute'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Excecute'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'&REPTURLL./reports/rwservlet?destype=cache&desformat=pdf&report=D:\Orbrgs_Web\Main\sy\bin\syaclist.rdf&userid=orbrgs/orbrgs@orbrgs&p0=&COMPCODE.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56440796857502332)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(148348983547781272)
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
 p_id=>wwv_flow_api.id(56441129637502332)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(148348983547781272)
,p_button_name=>'Refresh'
,p_button_static_id=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_RFRS_LBL.'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:500:&SESSION.::&DEBUG.:RP,47::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'&BTN_RFRS_ICON.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13900461385576901)
,p_name=>'P500_P33_N'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13900572880576902)
,p_name=>'P500_P33_LABEL'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13900666958576903)
,p_name=>'P500_P33'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P33_LABEL.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P500_P33_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13900789355576904)
,p_name=>'P500_P18_N'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13900848974576905)
,p_name=>'P500_P18_LABEL'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13901026584576907)
,p_name=>'P500_P18'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P18_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P18''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P18_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13901366536576910)
,p_name=>'P500_P76_N'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13901437861576911)
,p_name=>'P500_P76_LABEL'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13901536100576912)
,p_name=>'P500_P69_N'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13901679702576913)
,p_name=>'P500_P69_LABEL'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13901708464576914)
,p_name=>'P500_P76'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P76_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P76''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P76_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13901837721576915)
,p_name=>'P500_P69'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P69_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P69''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P69_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14511747589512201)
,p_name=>'P500_P17_LABEL'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14511832575512202)
,p_name=>'P500_P17_N'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14511927736512203)
,p_name=>'P500_P17'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P17_LABEL.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P17''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_display_when=>'P500_P17_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14512125628512205)
,p_name=>'P500_P39_N'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14512238590512206)
,p_name=>'P500_P39_LABEL'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14512315392512207)
,p_name=>'P500_P39'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P39_LABEL.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P39''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_display_when=>'P500_P39_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14512593250512209)
,p_name=>'P500_P80_N'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14512744405512211)
,p_name=>'P500_P80_LABEL'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14512853799512212)
,p_name=>'P500_P80'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P80_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P80''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P88_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14513140767512215)
,p_name=>'P500_P88_N'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14513220392512216)
,p_name=>'P500_P88_LABEL'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14513395336512217)
,p_name=>'P500_P88'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P88_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P88''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P88_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40401495724235102)
,p_name=>'P500_P20_PARTY_CODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P20_PARTY_CODE_LABEL.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P20''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_display_when=>'P500_P20_PARTY_CODE_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40401561245235103)
,p_name=>'P500_P20_PARTY_CODE_N'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40401613947235104)
,p_name=>'P500_P20_PARTY_CODE_LABEL'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56441895840502334)
,p_name=>'P500_P22_REPORT_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_item_default=>':PROGNAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Report Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PROGNAME ||'' - ''||PROGDESC AS d, PROGNAME AS r',
'  FROM SYMENMAS',
' WHERE PROGTYPE = ''R'' ',
' --AND REP_PROG_NAME IS NOT NULL',
' AND REP_PROG_NAME = :PROGNAME',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Report --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56442298753502334)
,p_name=>'P500_REPORT_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_prompt=>'Program Name '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56442636039502335)
,p_name=>'P500_REPORT_PAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56443024002502335)
,p_name=>'P500_P0_COMPANY_CODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P0_COMPANY_CODE_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE PARAMETER_ID = ''P0''',
'         AND PROGNAME = :P500_P22_REPORT_NAME;',
'                  /*  CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END; */',
'         ',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_cHeight=>1
,p_display_when=>'P500_P0_COMPANY_CODE_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56443493567502337)
,p_name=>'P500_P1_ITEM_CODE_FROM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P1_ITEM_CODE_FROM_LABEL.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P1''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_display_when=>'P500_P1_ITEM_CODE_FROM_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56443844400502337)
,p_name=>'P500_P2_ITEM_CODE_TO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P2_ITEM_CODE_TO_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P2''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P2_ITEM_CODE_TO_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56444282265502337)
,p_name=>'P500_P6_MODEL_CODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P6_MODEL_CODE_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P6''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P6_MODEL_CODE_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56444610533502337)
,p_name=>'P500_P11_FROM_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P11_FROM_DATE_LABEL.'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_display_when=>'P500_P11_FROM_DATE_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56445017630502339)
,p_name=>'P500_P12_TO_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P12_TO_DATE_LABEL.'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_display_when=>'P500_P12_TO_DATE_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56445483624502339)
,p_name=>'P500_P13_REFERENCE_NO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P13_REFERENCE_NO_LABEL.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P13''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_display_when=>'P500_P13_REFERENCE_NO_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56445859697502339)
,p_name=>'P500_P14_DOCUMENT_TYPE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P14_DOCUMENT_TYPE_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P14''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P14_DOCUMENT_TYPE_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56446287808502339)
,p_name=>'P500_P15_SUB_TYPE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P15_SUB_TYPE_LABEL.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P15''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P500_P14_DOCUMENT_TYPE'
,p_ajax_items_to_submit=>'P500_P15_SUB_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_display_when=>'P500_P15_SUB_TYPE_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56446680302502340)
,p_name=>'P500_P25_REPORT_DESCRIPTION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P25_REPORT_DESCRIPTN_LABEL.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P500_P25_REPORT_DESCRIPTION_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56447086467502340)
,p_name=>'P500_P31_STATUS_CODE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_item_default=>'ALL'
,p_prompt=>'&P500_P31_STATUS_CODE_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P31''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_cHeight=>1
,p_display_when=>'P500_P31_STATUS_CODE_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56447427648502342)
,p_name=>'P500_P21_USER_ID'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P21_USER_ID_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P21''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P21_USER_ID_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56447833728502342)
,p_name=>'P500_P27_ZONE_ID'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P27_ZONE_ID_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P27''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P27_ZONE_ID_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56448247785502342)
,p_name=>'P500_P29_WARECODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P29_WARECODE_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P29''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P29_WARECODE_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56448620231502343)
,p_name=>'P500_P30_COSTCODE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P30_COSTCODE_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P30''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P30_COSTCODE_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56449065886502343)
,p_name=>'P500_P51_CUSTOMER_ID'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P51_CUSTOMER_ID_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P51''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P51_CUSTOMER_ID_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56449464371502343)
,p_name=>'P500_P44_REGISTRATION_NO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P44_REGISTRATION_NO_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P44''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P44_REGISTRATION_NO_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56449854550502343)
,p_name=>'P500_P46_CHASSIS_NO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P46_CHASSIS_NO_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P46''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P46_CHASSIS_NO_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56450270226502345)
,p_name=>'P500_P500_ENGINE_NO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P500_ENGINE_NO_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P500''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P500_ENGINE_NO_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56450664080502345)
,p_name=>'P500_P50_COMPLETENESS'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P50_COMPLETENESS_LABEL.'
,p_display_as=>'NATIVE_YES_NO'
,p_display_when=>'P500_P50_COMPLETENESS_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56451086514502345)
,p_name=>'P500_P85_FROM_YEAR'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P85_FROM_YEAR_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P85''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P85_FROM_YEAR_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56451440966502345)
,p_name=>'P500_P86_TO_YEAR'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P86_TO_YEAR_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P86''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P86_TO_YEAR_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56451874364502346)
,p_name=>'P500_P3'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P3_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P3''',
'             AND PROGNAME = :P500_P22_REPORT_NAME;',
'                   /* CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;*/',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_cHeight=>1
,p_display_when=>'P500_P3_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56452249732502346)
,p_name=>'P500_P4'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P4_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P4''',
'             AND PROGNAME = :P500_P22_REPORT_NAME;',
'                   /* CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END; */',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_cascade_parent_items=>'P500_P3'
,p_ajax_items_to_submit=>'P500_P4'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_display_when=>'P500_P4_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56452608444502346)
,p_name=>'P500_P5_DOCUMENT_NO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P5_DOCUMENT_NO_LABEL.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P5''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_display_when=>'P500_P5_DOCUMENT_NO_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56453054709502348)
,p_name=>'P500_P7_ACCOUNT_NO'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P7_ACCOUNT_NO_LABEL.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P7''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_display_when=>'P500_P7_ACCOUNT_NO_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56453448651502348)
,p_name=>'P500_P8'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P8_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P8''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P8_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56453805337502348)
,p_name=>'P500_P9'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P9_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P9''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P9_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56454230164502348)
,p_name=>'P500_P10'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P10_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P10''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_cHeight=>1
,p_display_when=>'P500_P10_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56454688061502350)
,p_name=>'P500_P61'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P61_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P61''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P61_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56455086310502350)
,p_name=>'P500_P62'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P62_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P62''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P62_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56455470218502350)
,p_name=>'P500_P26_STAT_CODE'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(174593614319660157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&P500_P26_STAT_CODE_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P26''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P500_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P500_P22_REPORT_NAME',
'                    END;',
'',
'   v_query   VARCHAR2 (2000);',
'BEGIN',
'   OPEN c1;',
'',
'   FETCH c1 INTO v_query;',
'',
'   CLOSE c1;',
'',
'   RETURN (v_query);',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P500_P26_STAT_CODE_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56456105411502351)
,p_name=>'P500_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56456512069502351)
,p_name=>'P500_P0_COMPANY_CODE_N'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56456931234502353)
,p_name=>'P500_P0_COMPANY_CODE_LABEL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56457389288502353)
,p_name=>'P500_P1_ITEM_CODE_FROM_N'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56457707708502353)
,p_name=>'P500_P1_ITEM_CODE_FROM_LABEL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56458151894502353)
,p_name=>'P500_P2_ITEM_CODE_TO_N'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56458557388502353)
,p_name=>'P500_P2_ITEM_CODE_TO_LABEL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56458908259502354)
,p_name=>'P500_P6_MODEL_CODE_N'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56459384889502354)
,p_name=>'P500_P6_MODEL_CODE_LABEL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56459784531502354)
,p_name=>'P500_P11_FROM_DATE_N'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56460117095502354)
,p_name=>'P500_P11_FROM_DATE_LABEL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56460587937502356)
,p_name=>'P500_P12_TO_DATE_N'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56460926834502356)
,p_name=>'P500_P12_TO_DATE_LABEL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56461365359502356)
,p_name=>'P500_P13_REFERENCE_NO_N'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56461731202502356)
,p_name=>'P500_P13_REFERENCE_NO_LABEL'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56462164810502357)
,p_name=>'P500_P14_DOCUMENT_TYPE_N'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56462581656502357)
,p_name=>'P500_P14_DOCUMENT_TYPE_LABEL'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56462913221502357)
,p_name=>'P500_P15_SUB_TYPE_N'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56463364557502357)
,p_name=>'P500_P15_SUB_TYPE_LABEL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56463712554502359)
,p_name=>'P500_P22_REPORT_NAME_N'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56464187545502359)
,p_name=>'P500_P22_REPORT_NAME_LABEL'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56464580032502359)
,p_name=>'P500_P25_REPORT_DESCRIPTION_N'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56464907423502359)
,p_name=>'P500_P25_REPORT_DESCRIPTN_LABEL'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56465309014502359)
,p_name=>'P500_P31_STATUS_CODE_N'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56465773205502360)
,p_name=>'P500_P31_STATUS_CODE_LABEL'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56466188815502360)
,p_name=>'P500_P21_USER_ID_N'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56466517104502360)
,p_name=>'P500_P21_USER_ID_LABEL'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56466947092502360)
,p_name=>'P500_P27_ZONE_ID_N'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56467391920502362)
,p_name=>'P500_P27_ZONE_ID_LABEL'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56467753940502362)
,p_name=>'P500_P29_WARECODE_N'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56468142030502362)
,p_name=>'P500_P29_WARECODE_LABEL'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56468553716502362)
,p_name=>'P500_P30_COSTCODE_N'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56468944978502364)
,p_name=>'P500_P30_COSTCODE_LABEL'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56469307208502364)
,p_name=>'P500_P51_CUSTOMER_ID_N'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56469704740502364)
,p_name=>'P500_P51_CUSTOMER_ID_LABEL'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56470116683502364)
,p_name=>'P500_P44_REGISTRATION_NO_N'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56470585431502365)
,p_name=>'P500_P44_REGISTRATION_NO_LABEL'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56470977084502365)
,p_name=>'P500_P46_CHASSIS_NO_N'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56471327876502365)
,p_name=>'P500_P46_CHASSIS_NO_LABEL'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56471753602502365)
,p_name=>'P500_P500_ENGINE_NO_N'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56472119290502367)
,p_name=>'P500_P500_ENGINE_NO_LABEL'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56472505719502367)
,p_name=>'P500_P50_COMPLETENESS_N'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56472951947502367)
,p_name=>'P500_P50_COMPLETENESS_LABEL'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56473353955502367)
,p_name=>'P500_P85_FROM_YEAR_N'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56473719346502367)
,p_name=>'P500_P85_FROM_YEAR_LABEL'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56474140660502368)
,p_name=>'P500_P86_TO_YEAR_N'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56474531306502368)
,p_name=>'P500_P86_TO_YEAR_LABEL'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56474964236502368)
,p_name=>'P500_P3_N'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56475370907502368)
,p_name=>'P500_P3_LABEL'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56475725297502370)
,p_name=>'P500_P4_N'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56476118765502370)
,p_name=>'P500_P4_LABEL'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56476504531502370)
,p_name=>'P500_P5_DOCUMENT_NO_N'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56476958482502370)
,p_name=>'P500_P5_DOCUMENT_NO_LABEL'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56477358037502371)
,p_name=>'P500_P7_ACCOUNT_NO_N'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56477700786502371)
,p_name=>'P500_P7_ACCOUNT_NO_LABEL'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56478122718502371)
,p_name=>'P500_P8_N'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56478534453502371)
,p_name=>'P500_P8_LABEL'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56478919265502371)
,p_name=>'P500_P9_N'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56479341941502373)
,p_name=>'P500_P9_LABEL'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56479777523502373)
,p_name=>'P500_P10_N'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56480180174502373)
,p_name=>'P500_P10_LABEL'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56480573781502373)
,p_name=>'P500_P26_STAT_CODE_N'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56480997105502375)
,p_name=>'P500_P26_STAT_CODE_LABEL'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56481387498502375)
,p_name=>'P500_P61_N'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56481756967502375)
,p_name=>'P500_P61_LABEL'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56482190021502375)
,p_name=>'P500_P62_N'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56482593585502376)
,p_name=>'P500_P62_LABEL'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(149540692770284792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56484183408502379)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(56440796857502332)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97469127769841342)
,p_event_id=>wwv_flow_api.id(56484183408502379)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P500_P22_REPORT_NAME,P500_REPORT_NAME'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56484657634502379)
,p_event_id=>wwv_flow_api.id(56484183408502379)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12882716646851407)
,p_name=>'Open Report'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(56439986543502331)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(173653918816994036)
,p_event_id=>wwv_flow_api.id(12882716646851407)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P502_P0_COMPANY_CODE        :=      :P500_P0_COMPANY_CODE; ',
':P502_P22_REPORT_NAME        :=      :P500_P22_REPORT_NAME;',
':P502_REPORT_NAME            :=      :P500_REPORT_NAME;',
':P502_REPORT_PAGE            :=      :P500_REPORT_PAGE;',
':P502_P1_ITEM_CODE_FROM      :=      :P500_P1_ITEM_CODE_FROM;',
':P502_P2_ITEM_CODE_TO        :=      :P500_P2_ITEM_CODE_TO;',
':P502_P6_MODEL_CODE          :=      NVL(:P500_P6_MODEL_CODE,NULL);',
':P502_P11_FROM_DATE          :=      :P500_P11_FROM_DATE;',
':P502_P12_TO_DATE            :=      :P500_P12_TO_DATE;',
':P502_P13_REFERENCE_NO       :=      :P500_P13_REFERENCE_NO;',
':P502_P14_DOCUMENT_TYPE      :=      :P500_P14_DOCUMENT_TYPE;',
':P502_P15_SUB_TYPE           :=      :P500_P15_SUB_TYPE;',
':P500_P20_PARTY_CODE         :=      :P500_P20_PARTY_CODE;',
':P502_P25_REPORT_DESCRIPTION :=      :P500_P25_REPORT_DESCRIPTION;',
':P502_P31_STATUS_CODE        :=      :P500_P31_STATUS_CODE;',
':P502_P21_USER_ID            :=      :P500_P21_USER_ID;',
':P502_P27_ZONE_ID            :=      :P500_P27_ZONE_ID;',
':P502_P29_WARECODE           :=      :P500_P29_WARECODE;',
':P502_P30_COSTCODE           :=      :P500_P30_COSTCODE;',
':P502_P51_CUSTOMER_ID        :=      :P500_P51_CUSTOMER_ID;',
':P502_P44_REGISTRATION_NO    :=      :P500_P44_REGISTRATION_NO;',
':P502_P502_CHASSIS_NO        :=      :P500_P502_CHASSIS_NO;',
':P502_P47_ENGINE_NO          :=      :P500_P47_ENGINE_NO;',
':P502_P50_COMPLETENESS       :=      :P500_P50_COMPLETENESS;',
':P502_P85_FROM_YEAR          :=      :P500_P85_FROM_YEAR;',
':P502_P86_TO_YEAR            :=      :P500_P86_TO_YEAR;',
':P502_P3                     :=      :P500_P3;',
':P502_P4                     :=      :P500_P4;',
':P502_P5_DOCUMENT_NO         :=      :P500_P5_DOCUMENT_NO;',
':P502_P7_ACCOUNT_NO          :=      :P500_P7_ACCOUNT_NO;',
':P502_P8                     :=      :P500_P8;',
':P502_P9                     :=      :P500_P9;',
':P502_P10                    :=      :P500_P10;',
':P502_P61                    :=      :P500_P61;',
':P502_P62                    :=      :P500_P62;',
':P502_P33                    :=      :P500_P33;',
':P502_P18                    :=      :P500_P18;',
':P502_P76                    :=      :P500_P76;',
':P502_P69                    :=      :P500_P69;',
':P502_P80                    :=      :P500_P80;',
':P502_P88                    :=      :P500_P88;',
':P502_P39                    :=      :P500_P39;',
':P502_P17                    :=      :P500_P17;',
':P502_P26_STAT_CODE          :=      :P500_P26_STAT_CODE;',
'',
'--RAISE_APPLICATION_ERROR(-20003,:P500_P3 ||'' , ''||:P502_P3 ||'' , ''|| :P500_P4  ||'' , ''||:P502_P4 || '' , ''||:REPTURLL ||'' , ''||:REPSERVER); ',
'END;'))
,p_attribute_02=>'P500_P0_COMPANY_CODE,P500_P22_REPORT_NAME,P500_REPORT_NAME,P500_REPORT_PAGE,P500_P1_ITEM_CODE_FROM,P500_P2_ITEM_CODE_TO,P500_P6_MODEL_CODE,P500_P11_FROM_DATE,P500_P12_TO_DATE,P500_P13_REFERENCE_NO,P500_P14_DOCUMENT_TYPE,P500_P15_SUB_TYPE,P500_P25_REP'
||'ORT_DESCRIPTION,P500_P31_STATUS_CODE,P500_P21_USER_ID,P500_P27_ZONE_ID,P500_P29_WARECODE,P500_P30_COSTCODE,P500_P51_CUSTOMER_ID,P500_P44_REGISTRATION_NO,P500_P502_CHASSIS_NO,P500_P47_ENGINE_NO,P500_P50_COMPLETENESS,P500_P85_FROM_YEAR,P500_P86_TO_YEAR'
||',P500_P3,P500_P4,P500_P5_DOCUMENT_NO,P500_P7_ACCOUNT_NO,P500_P8,P500_P9,P500_P10,P500_P61,P500_P62,P500_P26_STAT_CODE,P500_P33,P500_P18,P500_P76,P500_P69,P500_P17,P500_P39,P500_P80,P500_P88,P500_P20_PARTY_CODE'
,p_attribute_03=>'P502_P0_COMPANY_CODE,P502_P22_REPORT_NAME,P502_REPORT_NAME,P502_REPORT_PAGE,P502_P1_ITEM_CODE_FROM,P502_P2_ITEM_CODE_TO,P502_P6_MODEL_CODE,P502_P11_FROM_DATE,P502_P12_TO_DATE,P502_P13_REFERENCE_NO,P502_P14_DOCUMENT_TYPE,P502_P15_SUB_TYPE,P502_P25_REP'
||'ORT_DESCRIPTION,P502_P31_STATUS_CODE,P502_P21_USER_ID,P502_P27_ZONE_ID,P502_P29_WARECODE,P502_P30_COSTCODE,P502_P51_CUSTOMER_ID,P502_P44_REGISTRATION_NO,P502_P502_CHASSIS_NO,P502_P47_ENGINE_NO,P502_P50_COMPLETENESS,P502_P85_FROM_YEAR,P502_P86_TO_YEAR'
||',P502_P3,P502_P4,P502_P5_DOCUMENT_NO,P502_P7_ACCOUNT_NO,P502_P8,P502_P9,P502_P10,P502_P61,P502_P62,P502_P26_STAT_CODE,P502_P33,P502_P18,P502_P76,P502_P69,P502_P17,P502_P39,P502_P80,P502_P88'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12882892621851408)
,p_event_id=>wwv_flow_api.id(12882716646851407)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open(''f?p=&APP_ID.:502:&APP_SESSION.'',''_blank'');'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56483362681502378)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initial Condition Value'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 26-Feb-20 9:11:16 PM (QP5 v5.227.12220.39754) */',
'BEGIN',
'   :P500_P0_COMPANY_CODE_N := ''N'';',
'   :P500_P1_ITEM_CODE_FROM_N := ''N'';',
'   :P500_P2_ITEM_CODE_TO_N := ''N'';',
'   :P500_P6_MODEL_CODE_N := ''N'';',
'   :P500_P11_FROM_DATE_N := ''N'';',
'   :P500_P12_TO_DATE_N := ''N'';',
'   :P500_P13_REFERENCE_NO_N := ''N'';',
'   :P500_P20_PARTY_CODE_N := ''N'';',
'   :P500_P14_DOCUMENT_TYPE_N := ''N'';',
'   :P500_P15_SUB_TYPE_N := ''N'';',
'   --:P500_P22_REPORT_NAME_N := ''N'';',
'   :P500_P25_REPORT_DESCRIPTION_N := ''N'';',
'   :P500_P31_STATUS_CODE_N := ''N'';',
'   :P500_P21_USER_ID_N := ''N'';',
'   :P500_P27_ZONE_ID_N := ''N'';',
'   :P500_P29_WARECODE_N := ''N'';',
'   :P500_P30_COSTCODE_N := ''N'';',
'   :P500_P51_CUSTOMER_ID_N := ''N'';',
'   :P500_P44_REGISTRATION_NO_N := ''N'';',
'   :P500_P46_CHASSIS_NO_N := ''N'';',
'   :P500_P500_ENGINE_NO_N := ''N'';',
'   :P500_P50_COMPLETENESS_N := ''N'';',
'   :P500_P85_FROM_YEAR_N := ''N'';',
'   :P500_P86_TO_YEAR_N := ''N'';',
'   :P500_P3_N := ''N'';',
'   :P500_P4_N := ''N'';',
'   :P500_P5_DOCUMENT_NO_N := ''N'';',
'   :P500_P7_ACCOUNT_NO_N := ''N'';',
'   :P500_P8_N := ''N'';',
'   :P500_P9_N := ''N'';',
'   :P500_P10_N := ''N'';',
'   :P500_P26_STAT_CODE_N := ''N'';',
'   :P500_P61_N := ''N'';',
'   :P500_P62_N := ''N'';',
'   :P500_P33_N := ''N'';',
'   :P500_P18_N := ''N'';',
'   :P500_P76_N := ''N'';',
'   :P500_P69_N := ''N'';',
'   :P500_P80_N := ''N'';',
'   :P500_P88_N := ''N'';',
'   :P500_P39_N := ''N'';',
'   :P500_P17_N := ''N'';',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56482975130502376)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 26-Feb-20 9:38:45 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR REP_PARAM',
'   IS',
'      SELECT PARAMETER_ID,',
'             PARAMETER_NAME,',
'             PROGNAME',
'        FROM SY_REPORT_PARAMETER',
'       WHERE PROGNAME = :PROGNAME AND SHOW_HIDE = ''Y'';',
'',
'   vCount   NUMBER := 0;',
'BEGIN',
'   FOR i IN REP_PARAM',
'   LOOP',
'      IF i.PARAMETER_ID = ''P0''',
'      THEN',
'         :P500_P0_COMPANY_CODE_N := ''Y'';',
'         :P500_P0_COMPANY_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P1''',
'      THEN',
'         :P500_P1_ITEM_CODE_FROM_N := ''Y'';',
'         :P500_P1_ITEM_CODE_FROM_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P2''',
'      THEN',
'         :P500_P2_ITEM_CODE_TO_N := ''Y'';',
'         :P500_P2_ITEM_CODE_TO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P6''',
'      THEN',
'         :P500_P6_MODEL_CODE_N := ''Y'';',
'         :P500_P6_MODEL_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P11''',
'      THEN',
'         :P500_P11_FROM_DATE_N := ''Y'';',
'         :P500_P11_FROM_DATE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P12''',
'      THEN',
'         :P500_P12_TO_DATE_N := ''Y'';',
'         :P500_P12_TO_DATE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P13''',
'      THEN',
'         :P500_P13_REFERENCE_NO_N := ''Y'';',
'         :P500_P13_REFERENCE_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P14''',
'      THEN',
'         :P500_P14_DOCUMENT_TYPE_N := ''Y'';',
'         :P500_P14_DOCUMENT_TYPE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P15''',
'      THEN',
'         :P500_P15_SUB_TYPE_N := ''Y'';',
'         :P500_P15_SUB_TYPE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P20''',
'      THEN',
'         :P500_P20_PARTY_CODE_N := ''Y'';',
'         :P500_P20_PARTY_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P21''',
'      THEN',
'         :P500_P21_USER_ID_N := ''Y'';',
'         :P500_P21_USER_ID_LABEL := i.PARAMETER_NAME;',
'     /* ELSIF i.PARAMETER_ID = ''P22''',
'      THEN',
'         :P500_P22_REPORT_NAME_N := ''Y'';',
'         :P500_P22_REPORT_NAME_LABEL := i.PARAMETER_NAME;*/',
'      ELSIF i.PARAMETER_ID = ''P25''',
'      THEN',
'         :P500_P25_REPORT_DESCRIPTION_N := ''Y'';',
'         :P500_P25_REPORT_DESCRIPTN_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P27''',
'      THEN',
'         :P500_P27_ZONE_ID_N := ''Y'';',
'         :P500_P27_ZONE_ID_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P29''',
'      THEN',
'         :P500_P29_WARECODE_N := ''Y'';',
'         :P500_P29_WARECODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P30''',
'      THEN',
'         :P500_P30_COSTCODE_N := ''Y'';',
'         :P500_P30_COSTCODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P31''',
'      THEN',
'         :P500_P31_STATUS_CODE_N := ''Y'';',
'         :P500_P31_STATUS_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P44''',
'      THEN',
'         :P500_P44_REGISTRATION_NO_N := ''Y'';',
'         :P500_P44_REGISTRATION_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P46''',
'      THEN',
'         :P500_P46_CHASSIS_NO_N := ''Y'';',
'         :P500_P46_CHASSIS_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P500''',
'      THEN',
'         :P500_P500_ENGINE_NO_N := ''Y'';',
'         :P500_P500_ENGINE_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P50''',
'      THEN',
'         :P500_P50_COMPLETENESS_N := ''Y'';',
'         :P500_P50_COMPLETENESS_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P51''',
'      THEN',
'         :P500_P51_CUSTOMER_ID_N := ''Y'';',
'         :P500_P51_CUSTOMER_ID_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P85''',
'      THEN',
'         :P500_P85_FROM_YEAR_N := ''Y'';',
'         :P500_P85_FROM_YEAR_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P86''',
'      THEN',
'         :P500_P86_TO_YEAR_N := ''Y'';',
'         :P500_P86_TO_YEAR_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P3''',
'      THEN',
'         :P500_P3_N := ''Y'';',
'         :P500_P3_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P4''',
'      THEN',
'         :P500_P4_N := ''Y'';',
'         :P500_P4_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P5''',
'      THEN',
'         :P500_P5_DOCUMENT_NO_N := ''Y'';',
'         :P500_P5_DOCUMENT_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P7''',
'      THEN',
'         :P500_P7_ACCOUNT_NO_N := ''Y'';',
'         :P500_P7_ACCOUNT_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P8''',
'      THEN',
'         :P500_P8_N := ''Y'';',
'         :P500_P8_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P9''',
'      THEN',
'         :P500_P9_N := ''Y'';',
'         :P500_P9_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P10''',
'      THEN',
'         :P500_P10_N := ''Y'';',
'         :P500_P10_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P26''',
'      THEN',
'         :P500_P26_STAT_CODE_N := ''Y'';',
'         :P500_P26_STAT_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P61''',
'      THEN',
'         :P500_P61_N := ''Y'';',
'         :P500_P61_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P62''',
'      THEN',
'         :P500_P62_N := ''Y'';',
'         :P500_P62_LABEL := i.PARAMETER_NAME;',
'      END IF;',
'',
'      vCount := vCount + 1;',
'   END LOOP;',
'',
'   :P500_ID := vCount;',
'   :P500_REPORT_NAME := :PROGNAME;',
'',
'   BEGIN',
'      SELECT REP_PAGE',
'        INTO :P500_REPORT_PAGE',
'        FROM SYMENMAS',
'       WHERE PROGNAME = :PROGNAME',
'         AND PROGTYPE = ''R'';',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         :P500_REPORT_PAGE := 502;',
'   END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_comment=>'P500_P22_REPORT_NAME'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56483736915502378)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data When Name Change'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 27/Feb/20 4:06:08 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR REP_PARAM',
'   IS',
'      SELECT PARAMETER_ID, ',
'             PARAMETER_NAME, ',
'             PROGNAME',
'        FROM SY_REPORT_PARAMETER',
'       WHERE PROGNAME = :P500_P22_REPORT_NAME AND SHOW_HIDE = ''Y'';',
'',
'   vCount   NUMBER := 0;',
'BEGIN',
'--raise_application_error(-20009, :P500_P0_COMPANY_CODE||'' - ''||:P500_P0_COMPANY_CODE_N||'' - ''||:P500_P0_COMPANY_CODE_LABEL||'' - ''||:P500_P22_REPORT_NAME ||'' - ''||:P500_REPORT_NAME);',
'   FOR i IN REP_PARAM',
'   LOOP',
'      IF i.PARAMETER_ID = ''P0''',
'      THEN',
'         :P500_P0_COMPANY_CODE_N := ''Y'';',
'         :P500_P0_COMPANY_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P1''',
'      THEN',
'         :P500_P1_ITEM_CODE_FROM_N := ''Y'';',
'         :P500_P1_ITEM_CODE_FROM_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P2''',
'      THEN',
'         :P500_P2_ITEM_CODE_TO_N := ''Y'';',
'         :P500_P2_ITEM_CODE_TO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P6''',
'      THEN',
'         :P500_P6_MODEL_CODE_N := ''Y'';',
'         :P500_P6_MODEL_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P11''',
'      THEN',
'         :P500_P11_FROM_DATE_N := ''Y'';',
'         :P500_P11_FROM_DATE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P12''',
'      THEN',
'         :P500_P12_TO_DATE_N := ''Y'';',
'         :P500_P12_TO_DATE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P13''',
'      THEN',
'         :P500_P13_REFERENCE_NO_N := ''Y'';',
'         :P500_P13_REFERENCE_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P14''',
'      THEN',
'         :P500_P14_DOCUMENT_TYPE_N := ''Y'';',
'         :P500_P14_DOCUMENT_TYPE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P15''',
'      THEN',
'         :P500_P15_SUB_TYPE_N := ''Y'';',
'         :P500_P15_SUB_TYPE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P20''',
'      THEN',
'         :P500_P20_PARTY_CODE_N := ''Y'';',
'         :P500_P20_PARTY_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P21''',
'      THEN',
'         :P500_P21_USER_ID_N := ''Y'';',
'         :P500_P21_USER_ID_LABEL := i.PARAMETER_NAME;',
'      /* ELSIF i.PARAMETER_ID = 11',
'       THEN',
'          :P500_P22_REPORT_NAME_N := ''Y'';',
'          :P500_P22_REPORT_NAME_LABEL := i.PARAMETER_NAME; */',
'      ELSIF i.PARAMETER_ID = ''P25''',
'      THEN',
'         :P500_P25_REPORT_DESCRIPTION_N := ''Y'';',
'         :P500_P25_REPORT_DESCRIPTN_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P27''',
'      THEN',
'         :P500_P27_ZONE_ID_N := ''Y'';',
'         :P500_P27_ZONE_ID_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P29''',
'      THEN      ',
'         :P500_P29_WARECODE_N := ''Y'';',
'         :P500_P29_WARECODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P30''',
'      THEN',
'         :P500_P30_COSTCODE_N := ''Y'';',
'         :P500_P30_COSTCODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P31''',
'      THEN',
'         :P500_P31_STATUS_CODE_N := ''Y'';',
'         :P500_P31_STATUS_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P44''',
'      THEN',
'         :P500_P44_REGISTRATION_NO_N := ''Y'';',
'         :P500_P44_REGISTRATION_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P46''',
'      THEN',
'         :P500_P46_CHASSIS_NO_N := ''Y'';',
'         :P500_P46_CHASSIS_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P500''',
'      THEN',
'         :P500_P500_ENGINE_NO_N := ''Y'';',
'         :P500_P500_ENGINE_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P50''',
'      THEN',
'         :P500_P50_COMPLETENESS_N := ''Y'';',
'         :P500_P50_COMPLETENESS_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P51''',
'      THEN',
'         :P500_P51_CUSTOMER_ID_N := ''Y'';',
'         :P500_P51_CUSTOMER_ID_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P85''',
'      THEN',
'         :P500_P85_FROM_YEAR_N := ''Y'';',
'         :P500_P85_FROM_YEAR_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P86''',
'      THEN',
'         :P500_P86_TO_YEAR_N := ''Y'';',
'         :P500_P86_TO_YEAR_LABEL := i.PARAMETER_NAME;',
'               ELSIF i.PARAMETER_ID = ''P3''',
'      THEN',
'         :P500_P3_N := ''Y'';',
'         :P500_P3_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P4''',
'      THEN',
'         :P500_P4_N := ''Y'';',
'         :P500_P4_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P5''',
'      THEN',
'         :P500_P5_DOCUMENT_NO_N := ''Y'';',
'         :P500_P5_DOCUMENT_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P7''',
'      THEN',
'         :P500_P7_ACCOUNT_NO_N := ''Y'';',
'         :P500_P7_ACCOUNT_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P8''',
'      THEN',
'         :P500_P8_N := ''Y'';',
'         :P500_P8_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P9''',
'      THEN',
'         :P500_P9_N := ''Y'';',
'         :P500_P9_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P10''',
'      THEN',
'         :P500_P10_N := ''Y'';',
'         :P500_P10_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P26''',
'      THEN',
'         :P500_P26_STAT_CODE_N := ''Y'';',
'         :P500_P26_STAT_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P61''',
'      THEN',
'         :P500_P61_N := ''Y'';',
'         :P500_P61_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P62''',
'      THEN',
'         :P500_P62_N := ''Y'';',
'         :P500_P62_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P33''',
'      THEN',
'         :P500_P33_N := ''Y'';',
'         :P500_P33_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P18''',
'      THEN',
'         :P500_P18_N := ''Y'';',
'         :P500_P18_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P76''',
'      THEN',
'         :P500_P76_N := ''Y'';',
'         :P500_P76_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P69''',
'      THEN',
'         :P500_P69_N := ''Y'';',
'         :P500_P69_LABEL := i.PARAMETER_NAME;',
'         ELSIF i.PARAMETER_ID = ''P88''',
'      THEN',
'         :P500_P88_N := ''Y'';',
'         :P500_P88_LABEL := i.PARAMETER_NAME;',
'         ELSIF i.PARAMETER_ID = ''P80''',
'      THEN',
'         :P500_P80_N := ''Y'';',
'         :P500_P80_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P39''',
'      THEN',
'         :P500_P39_N := ''Y'';',
'         :P500_P39_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P17''',
'      THEN',
'         :P500_P17_N := ''Y'';',
'         :P500_P17_LABEL := i.PARAMETER_NAME;',
'      END IF;',
'',
'      vCount := vCount + 1;',
'   END LOOP;',
'',
'   :P500_ID := vCount;',
'   :P500_REPORT_NAME := :P500_P22_REPORT_NAME;',
'   :P500_REPORT_PAGE := 502;',
'',
'  /* BEGIN',
'      SELECT REP_PAGE',
'        INTO :P500_REPORT_PAGE',
'        FROM SYMENMAS',
'       WHERE PROGNAME = :P500_P22_REPORT_NAME',
'         AND PROGTYPE = ''R'';',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         :P500_REPORT_PAGE := 502;',
'   END;',
'   */',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Item is nor null',
'P500_P22_REPORT_NAME'))
);
wwv_flow_api.component_end;
end;
/
