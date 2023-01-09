prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Report Paraform'
,p_page_mode=>'MODAL'
,p_step_title=>'Report Paraform'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_dialog_height=>'600'
,p_dialog_width=>'900'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20200301190858'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36701358051457509)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37893067273961029)
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
 p_id=>wwv_flow_api.id(62945988823336394)
,p_plug_name=>'Input Parameter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
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
 p_id=>wwv_flow_api.id(37892659903961025)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(36701358051457509)
,p_button_name=>'ADVANCE'
,p_button_static_id=>'PRINT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Advance Option'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6:P6_REPORT_NAME:&P2_REPORT_NAME.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46757780745592437)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(36701358051457509)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Run Report'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:&P2_REPORT_PAGE.:&SESSION.::&DEBUG.:RP,&P2_REPORT_PAGE.::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46758621749592446)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(36701358051457509)
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
 p_id=>wwv_flow_api.id(51584190024235311)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(36701358051457509)
,p_button_name=>'BACK'
,p_button_static_id=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_BACK_LBL.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_BACK_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36701449957457510)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(36701358051457509)
,p_button_name=>'Refresh'
,p_button_static_id=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_RFRS_LBL.'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2::'
,p_icon_css_classes=>'&BTN_RFRS_ICON.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35446684030586575)
,p_name=>'P2_P0_COMPANY_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P0_COMPANY_CODE_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE PARAMETER_ID = ''P0''',
'         AND PROGNAME = :PROGNAME; ',
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
,p_display_when=>'P2_P0_COMPANY_CODE_N'
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
 p_id=>wwv_flow_api.id(35447057650586579)
,p_name=>'P2_P1_ITEM_CODE_FROM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P1_ITEM_CODE_FROM_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P1_ITEM_CODE_FROM_N'
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
 p_id=>wwv_flow_api.id(35447377240586579)
,p_name=>'P2_P2_ITEM_CODE_TO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P2_ITEM_CODE_TO_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P2_ITEM_CODE_TO_N'
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
 p_id=>wwv_flow_api.id(35447793316586579)
,p_name=>'P2_P6_MODEL_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P6_MODEL_CODE_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P6_MODEL_CODE_N'
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
 p_id=>wwv_flow_api.id(35448192866586581)
,p_name=>'P2_P11_FROM_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P11_FROM_DATE_LABEL.'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_display_when=>'P2_P11_FROM_DATE_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35448504854586581)
,p_name=>'P2_P12_TO_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P12_TO_DATE_LABEL.'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_display_when=>'P2_P12_TO_DATE_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35448982984586582)
,p_name=>'P2_P13_REFERENCE_NO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P13_REFERENCE_NO_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P13_REFERENCE_NO_N'
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
 p_id=>wwv_flow_api.id(35449380324586582)
,p_name=>'P2_P14_DOCUMENT_TYPE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P14_DOCUMENT_TYPE_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P14_DOCUMENT_TYPE_N'
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
 p_id=>wwv_flow_api.id(35449700614586582)
,p_name=>'P2_P15_SUB_TYPE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P15_SUB_TYPE_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P15_SUB_TYPE_N'
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
 p_id=>wwv_flow_api.id(35450140145586582)
,p_name=>'P2_P21_USER_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P21_USER_ID_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P21_USER_ID_N'
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
 p_id=>wwv_flow_api.id(35450566140586584)
,p_name=>'P2_P22_REPORT_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_item_default=>':PROGNAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Report Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PROGDESC AS d, PROGNAME AS r',
'  FROM SYMENMAS',
' WHERE PROGTYPE = ''R'' ',
'   AND REP_PROG_NAME = :PROGNAME'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35450946271586584)
,p_name=>'P2_P25_REPORT_DESCRIPTION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P25_REPORT_DESCRIPTN_LABEL.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P2_P25_REPORT_DESCRIPTION_N'
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
 p_id=>wwv_flow_api.id(35451387532586584)
,p_name=>'P2_P27_ZONE_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P27_ZONE_ID_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P27_ZONE_ID_N'
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
 p_id=>wwv_flow_api.id(35451710146586587)
,p_name=>'P2_P29_WARECODE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P29_WARECODE_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P29_WARECODE_N'
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
 p_id=>wwv_flow_api.id(35452173396586587)
,p_name=>'P2_P30_COSTCODE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P30_COSTCODE_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P30_COSTCODE_N'
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
 p_id=>wwv_flow_api.id(35452517783586587)
,p_name=>'P2_P31_STATUS_CODE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P31_STATUS_CODE_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P31_STATUS_CODE_N'
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
 p_id=>wwv_flow_api.id(35452997222586587)
,p_name=>'P2_P44_REGISTRATION_NO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P44_REGISTRATION_NO_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P44_REGISTRATION_NO_N'
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
 p_id=>wwv_flow_api.id(35453313251586587)
,p_name=>'P2_P46_CHASSIS_NO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P46_CHASSIS_NO_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P46_CHASSIS_NO_N'
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
 p_id=>wwv_flow_api.id(35453763480586589)
,p_name=>'P2_P47_ENGINE_NO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P47_ENGINE_NO_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 16/Feb/20 3:18:44 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   CURSOR c1',
'   IS',
'      SELECT LOV_QUERY',
'        FROM SY_REPORT_PARAMETER',
'       WHERE     PARAMETER_ID = ''P47''',
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P47_ENGINE_NO_N'
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
 p_id=>wwv_flow_api.id(35454164582586589)
,p_name=>'P2_P50_COMPLETENESS'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P50_COMPLETENESS_LABEL.'
,p_display_as=>'NATIVE_YES_NO'
,p_display_when=>'P2_P50_COMPLETENESS_N'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35454581654586590)
,p_name=>'P2_P51_CUSTOMER_ID'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P51_CUSTOMER_ID_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P51_CUSTOMER_ID_N'
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
 p_id=>wwv_flow_api.id(35454964014586590)
,p_name=>'P2_P85_FROM_YEAR'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P85_FROM_YEAR_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P85_FROM_YEAR_N'
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
 p_id=>wwv_flow_api.id(35455392630586590)
,p_name=>'P2_P86_TO_YEAR'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P86_TO_YEAR_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P86_TO_YEAR_N'
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
 p_id=>wwv_flow_api.id(37893131220961030)
,p_name=>'P2_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43641126795376902)
,p_name=>'P2_P0_COMPANY_CODE_N'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43641211071376903)
,p_name=>'P2_P1_ITEM_CODE_FROM_N'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43641366875376904)
,p_name=>'P2_P2_ITEM_CODE_TO_N'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43641479534376905)
,p_name=>'P2_P6_MODEL_CODE_N'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43641520920376906)
,p_name=>'P2_P11_FROM_DATE_N'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43641686034376907)
,p_name=>'P2_P12_TO_DATE_N'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43641749928376908)
,p_name=>'P2_P13_REFERENCE_NO_N'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
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
 p_id=>wwv_flow_api.id(43641836958376909)
,p_name=>'P2_P14_DOCUMENT_TYPE_N'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43641978238376910)
,p_name=>'P2_P15_SUB_TYPE_N'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43642086015376911)
,p_name=>'P2_P22_REPORT_NAME_N'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43642156040376912)
,p_name=>'P2_P25_REPORT_DESCRIPTION_N'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43642272844376913)
,p_name=>'P2_P31_STATUS_CODE_N'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43642379976376914)
,p_name=>'P2_P21_USER_ID_N'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43642440691376915)
,p_name=>'P2_P27_ZONE_ID_N'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43642518950376916)
,p_name=>'P2_P29_WARECODE_N'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43642660339376917)
,p_name=>'P2_P30_COSTCODE_N'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43642761628376918)
,p_name=>'P2_P51_CUSTOMER_ID_N'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43642823887376919)
,p_name=>'P2_P44_REGISTRATION_NO_N'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43642978765376920)
,p_name=>'P2_P46_CHASSIS_NO_N'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43643089606376921)
,p_name=>'P2_P47_ENGINE_NO_N'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43643164896376922)
,p_name=>'P2_P50_COMPLETENESS_N'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43643211826376923)
,p_name=>'P2_P85_FROM_YEAR_N'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43643324549376924)
,p_name=>'P2_P86_TO_YEAR_N'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43643401676376925)
,p_name=>'P2_P0_COMPANY_CODE_LABEL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43643594715376926)
,p_name=>'P2_P1_ITEM_CODE_FROM_LABEL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43643650818376927)
,p_name=>'P2_P2_ITEM_CODE_TO_LABEL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43643711343376928)
,p_name=>'P2_P6_MODEL_CODE_LABEL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43643870510376929)
,p_name=>'P2_P11_FROM_DATE_LABEL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43643943143376930)
,p_name=>'P2_P12_TO_DATE_LABEL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43644028796376931)
,p_name=>'P2_P13_REFERENCE_NO_LABEL'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43644188189376932)
,p_name=>'P2_P14_DOCUMENT_TYPE_LABEL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43644226278376933)
,p_name=>'P2_P15_SUB_TYPE_LABEL'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43644372046376934)
,p_name=>'P2_P22_REPORT_NAME_LABEL'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43644454511376935)
,p_name=>'P2_P25_REPORT_DESCRIPTN_LABEL'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43644586210376936)
,p_name=>'P2_P31_STATUS_CODE_LABEL'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43644685277376937)
,p_name=>'P2_P21_USER_ID_LABEL'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43644743584376938)
,p_name=>'P2_P27_ZONE_ID_LABEL'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43644883341376939)
,p_name=>'P2_P29_WARECODE_LABEL'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43644935820376940)
,p_name=>'P2_P30_COSTCODE_LABEL'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43645087953376941)
,p_name=>'P2_P51_CUSTOMER_ID_LABEL'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43645172074376942)
,p_name=>'P2_P44_REGISTRATION_NO_LABEL'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43645294795376943)
,p_name=>'P2_P46_CHASSIS_NO_LABEL'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43645353089376944)
,p_name=>'P2_P47_ENGINE_NO_LABEL'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43645479437376945)
,p_name=>'P2_P50_COMPLETENESS_LABEL'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43645512293376946)
,p_name=>'P2_P85_FROM_YEAR_LABEL'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43645624501376947)
,p_name=>'P2_P86_TO_YEAR_LABEL'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46755411298592414)
,p_name=>'P2_REPORT_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51583901206235309)
,p_name=>'P2_REPORT_PAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54814244024636822)
,p_name=>'P2_P3'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P3_LABEL.'
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
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P3_N'
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
 p_id=>wwv_flow_api.id(54814359673636823)
,p_name=>'P2_P3_N'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54814430259636824)
,p_name=>'P2_P3_LABEL'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54814582901636825)
,p_name=>'P2_P4_N'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54814611690636826)
,p_name=>'P2_P4_LABEL'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54814764644636827)
,p_name=>'P2_P4'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P4_LABEL.'
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
'             AND PROGNAME =',
'                    CASE',
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P4_N'
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
 p_id=>wwv_flow_api.id(54814859281636828)
,p_name=>'P2_P5_DOCUMENT_NO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P5_DOCUMENT_NO_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P5_DOCUMENT_NO_N'
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
 p_id=>wwv_flow_api.id(54814921758636829)
,p_name=>'P2_P5_DOCUMENT_NO_N'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54815094459636830)
,p_name=>'P2_P5_DOCUMENT_NO_LABEL'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54815154456636831)
,p_name=>'P2_P7_ACCOUNT_NO'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P7_ACCOUNT_NO_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P7_ACCOUNT_NO_N'
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
 p_id=>wwv_flow_api.id(54815283655636832)
,p_name=>'P2_P7_ACCOUNT_NO_N'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54815307296636833)
,p_name=>'P2_P7_ACCOUNT_NO_LABEL'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54815492553636834)
,p_name=>'P2_P8'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P8_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P8_N'
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
 p_id=>wwv_flow_api.id(54815597825636835)
,p_name=>'P2_P8_N'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54815673631636836)
,p_name=>'P2_P8_LABEL'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54815786733636837)
,p_name=>'P2_P9_N'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54815842603636838)
,p_name=>'P2_P9_LABEL'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54815943620636839)
,p_name=>'P2_P9'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P9_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P9_N'
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
 p_id=>wwv_flow_api.id(54816015491636840)
,p_name=>'P2_P10'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P10_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P10_N'
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
 p_id=>wwv_flow_api.id(54816133860636841)
,p_name=>'P2_P10_N'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54816201557636842)
,p_name=>'P2_P10_LABEL'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54816334185636843)
,p_name=>'P2_P26_STAT_CODE_N'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54816466291636844)
,p_name=>'P2_P26_STAT_CODE_LABEL'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54816508507636845)
,p_name=>'P2_P26_STAT_CODE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P26_STAT_CODE_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P26_STAT_CODE_N'
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
 p_id=>wwv_flow_api.id(54816685777636846)
,p_name=>'P2_P61_N'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54816790911636847)
,p_name=>'P2_P61_LABEL'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54816822317636848)
,p_name=>'P2_P61'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P61_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P61_N'
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
 p_id=>wwv_flow_api.id(54816974169636849)
,p_name=>'P2_P62'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(62945988823336394)
,p_prompt=>'&P2_P62_LABEL.'
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
'                       WHEN :P2_P22_REPORT_NAME IS NULL THEN :PROGNAME',
'                       ELSE :P2_P22_REPORT_NAME',
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
,p_display_when=>'P2_P62_N'
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
 p_id=>wwv_flow_api.id(54817041556636850)
,p_name=>'P2_P62_N'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54849669215069701)
,p_name=>'P2_P62_LABEL'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_api.id(37893067273961029)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43645812774376949)
,p_name=>'When Change Report Name'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_P22_REPORT_NAME'
,p_condition_element=>'P2_P22_REPORT_NAME'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46754989892592409)
,p_event_id=>wwv_flow_api.id(43645812774376949)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.submit({request:''Load Data When Name Change''})'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51584229487235312)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(51584190024235311)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51584335330235313)
,p_event_id=>wwv_flow_api.id(51584229487235312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37895110266961050)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initial Condition Value'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 26-Feb-20 9:11:16 PM (QP5 v5.227.12220.39754) */',
'BEGIN',
'   :P2_P0_COMPANY_CODE_N := ''N'';',
'   :P2_P1_ITEM_CODE_FROM_N := ''N'';',
'   :P2_P2_ITEM_CODE_TO_N := ''N'';',
'   :P2_P6_MODEL_CODE_N := ''N'';',
'   :P2_P11_FROM_DATE_N := ''N'';',
'   :P2_P12_TO_DATE_N := ''N'';',
'   :P2_P13_REFERENCE_NO_N := ''N'';',
'   :P2_P14_DOCUMENT_TYPE_N := ''N'';',
'   :P2_P15_SUB_TYPE_N := ''N'';',
'   --:P2_P22_REPORT_NAME_N := ''N'';',
'   :P2_P25_REPORT_DESCRIPTION_N := ''N'';',
'   :P2_P31_STATUS_CODE_N := ''N'';',
'   :P2_P21_USER_ID_N := ''N'';',
'   :P2_P27_ZONE_ID_N := ''N'';',
'   :P2_P29_WARECODE_N := ''N'';',
'   :P2_P30_COSTCODE_N := ''N'';',
'   :P2_P51_CUSTOMER_ID_N := ''N'';',
'   :P2_P44_REGISTRATION_NO_N := ''N'';',
'   :P2_P46_CHASSIS_NO_N := ''N'';',
'   :P2_P47_ENGINE_NO_N := ''N'';',
'   :P2_P50_COMPLETENESS_N := ''N'';',
'   :P2_P85_FROM_YEAR_N := ''N'';',
'   :P2_P86_TO_YEAR_N := ''N'';',
'   :P2_P3_N := ''N'';',
'   :P2_P4_N := ''N'';',
'   :P2_P5_DOCUMENT_NO_N := ''N'';',
'   :P2_P7_ACCOUNT_NO_N := ''N'';',
'   :P2_P8_N := ''N'';',
'   :P2_P9_N := ''N'';',
'   :P2_P10_N := ''N'';',
'   :P2_P26_STAT_CODE_N := ''N'';',
'   :P2_P61_N := ''N'';',
'   :P2_P62_N := ''N'';',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37892959955961028)
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
'         :P2_P0_COMPANY_CODE_N := ''Y'';',
'         :P2_P0_COMPANY_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P1''',
'      THEN',
'         :P2_P1_ITEM_CODE_FROM_N := ''Y'';',
'         :P2_P1_ITEM_CODE_FROM_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P2''',
'      THEN',
'         :P2_P2_ITEM_CODE_TO_N := ''Y'';',
'         :P2_P2_ITEM_CODE_TO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P6''',
'      THEN',
'         :P2_P6_MODEL_CODE_N := ''Y'';',
'         :P2_P6_MODEL_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P11''',
'      THEN',
'         :P2_P11_FROM_DATE_N := ''Y'';',
'         :P2_P11_FROM_DATE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P12''',
'      THEN',
'         :P2_P12_TO_DATE_N := ''Y'';',
'         :P2_P12_TO_DATE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P13''',
'      THEN',
'         :P2_P13_REFERENCE_NO_N := ''Y'';',
'         :P2_P13_REFERENCE_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P14''',
'      THEN',
'         :P2_P14_DOCUMENT_TYPE_N := ''Y'';',
'         :P2_P14_DOCUMENT_TYPE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P15''',
'      THEN',
'         :P2_P15_SUB_TYPE_N := ''Y'';',
'         :P2_P15_SUB_TYPE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P21''',
'      THEN',
'         :P2_P21_USER_ID_N := ''Y'';',
'         :P2_P21_USER_ID_LABEL := i.PARAMETER_NAME;',
'     /* ELSIF i.PARAMETER_ID = ''P22''',
'      THEN',
'         :P2_P22_REPORT_NAME_N := ''Y'';',
'         :P2_P22_REPORT_NAME_LABEL := i.PARAMETER_NAME;*/',
'      ELSIF i.PARAMETER_ID = ''P25''',
'      THEN',
'         :P2_P25_REPORT_DESCRIPTION_N := ''Y'';',
'         :P2_P25_REPORT_DESCRIPTN_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P27''',
'      THEN',
'         :P2_P27_ZONE_ID_N := ''Y'';',
'         :P2_P27_ZONE_ID_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P29''',
'      THEN',
'         :P2_P29_WARECODE_N := ''Y'';',
'         :P2_P29_WARECODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P30''',
'      THEN',
'         :P2_P30_COSTCODE_N := ''Y'';',
'         :P2_P30_COSTCODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P31''',
'      THEN',
'         :P2_P31_STATUS_CODE_N := ''Y'';',
'         :P2_P31_STATUS_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P44''',
'      THEN',
'         :P2_P44_REGISTRATION_NO_N := ''Y'';',
'         :P2_P44_REGISTRATION_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P46''',
'      THEN',
'         :P2_P46_CHASSIS_NO_N := ''Y'';',
'         :P2_P46_CHASSIS_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P47''',
'      THEN',
'         :P2_P47_ENGINE_NO_N := ''Y'';',
'         :P2_P47_ENGINE_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P50''',
'      THEN',
'         :P2_P50_COMPLETENESS_N := ''Y'';',
'         :P2_P50_COMPLETENESS_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P51''',
'      THEN',
'         :P2_P51_CUSTOMER_ID_N := ''Y'';',
'         :P2_P51_CUSTOMER_ID_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P85''',
'      THEN',
'         :P2_P85_FROM_YEAR_N := ''Y'';',
'         :P2_P85_FROM_YEAR_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P86''',
'      THEN',
'         :P2_P86_TO_YEAR_N := ''Y'';',
'         :P2_P86_TO_YEAR_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P3''',
'      THEN',
'         :P2_P3_N := ''Y'';',
'         :P2_P3_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P4''',
'      THEN',
'         :P2_P4_N := ''Y'';',
'         :P2_P4_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P5''',
'      THEN',
'         :P2_P5_DOCUMENT_NO_N := ''Y'';',
'         :P2_P5_DOCUMENT_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P7''',
'      THEN',
'         :P2_P7_ACCOUNT_NO_N := ''Y'';',
'         :P2_P7_ACCOUNT_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P8''',
'      THEN',
'         :P2_P8_N := ''Y'';',
'         :P2_P8_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P9''',
'      THEN',
'         :P2_P9_N := ''Y'';',
'         :P2_P9_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P10''',
'      THEN',
'         :P2_P10_N := ''Y'';',
'         :P2_P10_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P26''',
'      THEN',
'         :P2_P26_STAT_CODE_N := ''Y'';',
'         :P2_P26_STAT_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P61''',
'      THEN',
'         :P2_P61_N := ''Y'';',
'         :P2_P61_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P62''',
'      THEN',
'         :P2_P62_N := ''Y'';',
'         :P2_P62_LABEL := i.PARAMETER_NAME;',
'      END IF;',
'',
'      vCount := vCount + 1;',
'   END LOOP;',
'',
'   :P2_ID := vCount;',
'   :P2_REPORT_NAME := :PROGNAME;',
'',
'   BEGIN',
'      SELECT REP_PAGE',
'        INTO :P2_REPORT_PAGE',
'        FROM SYMENMAS',
'       WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         :P2_REPORT_PAGE := 2;',
'   END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P2_P22_REPORT_NAME'
,p_process_when_type=>'ITEM_IS_NULL'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46754756531592407)
,p_process_sequence=>50
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
'       WHERE PROGNAME = :P2_P22_REPORT_NAME AND SHOW_HIDE = ''Y'';',
'',
'   vCount   NUMBER := 0;',
'BEGIN',
'   FOR i IN REP_PARAM',
'   LOOP',
'      IF i.PARAMETER_ID = ''P0''',
'      THEN',
'         :P2_P0_COMPANY_CODE_N := ''Y'';',
'         :P2_P0_COMPANY_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P1''',
'      THEN',
'         :P2_P1_ITEM_CODE_FROM_N := ''Y'';',
'         :P2_P1_ITEM_CODE_FROM_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P2''',
'      THEN',
'         :P2_P2_ITEM_CODE_TO_N := ''Y'';',
'         :P2_P2_ITEM_CODE_TO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P6''',
'      THEN',
'         :P2_P6_MODEL_CODE_N := ''Y'';',
'         :P2_P6_MODEL_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P11''',
'      THEN',
'         :P2_P11_FROM_DATE_N := ''Y'';',
'         :P2_P11_FROM_DATE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P12''',
'      THEN',
'         :P2_P12_TO_DATE_N := ''Y'';',
'         :P2_P12_TO_DATE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P13''',
'      THEN',
'         :P2_P13_REFERENCE_NO_N := ''Y'';',
'         :P2_P13_REFERENCE_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P14''',
'      THEN',
'         :P2_P14_DOCUMENT_TYPE_N := ''Y'';',
'         :P2_P14_DOCUMENT_TYPE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P15''',
'      THEN',
'         :P2_P15_SUB_TYPE_N := ''Y'';',
'         :P2_P15_SUB_TYPE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P21''',
'      THEN',
'         :P2_P21_USER_ID_N := ''Y'';',
'         :P2_P21_USER_ID_LABEL := i.PARAMETER_NAME;',
'      /* ELSIF i.PARAMETER_ID = 11',
'       THEN',
'          :P2_P22_REPORT_NAME_N := ''Y'';',
'          :P2_P22_REPORT_NAME_LABEL := i.PARAMETER_NAME; */',
'      ELSIF i.PARAMETER_ID = ''P25''',
'      THEN',
'         :P2_P25_REPORT_DESCRIPTION_N := ''Y'';',
'         :P2_P25_REPORT_DESCRIPTN_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P27''',
'      THEN',
'         :P2_P27_ZONE_ID_N := ''Y'';',
'         :P2_P27_ZONE_ID_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P29''',
'      THEN',
'         :P2_P29_WARECODE_FROM_N := ''Y'';',
'         :P2_P29_WARECODE_FROM_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P30''',
'      THEN',
'         :P2_P30_WARECODE_TO_N := ''Y'';',
'         :P2_P30_WARECODE_TO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P31''',
'      THEN',
'         :P2_P31_STATUS_CODE_N := ''Y'';',
'         :P2_P31_STATUS_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P44''',
'      THEN',
'         :P2_P44_REGISTRATION_NO_N := ''Y'';',
'         :P2_P44_REGISTRATION_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P46''',
'      THEN',
'         :P2_P46_CHASSIS_NO_N := ''Y'';',
'         :P2_P46_CHASSIS_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P47''',
'      THEN',
'         :P2_P47_ENGINE_NO_N := ''Y'';',
'         :P2_P47_ENGINE_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P50''',
'      THEN',
'         :P2_P50_COMPLETENESS_N := ''Y'';',
'         :P2_P50_COMPLETENESS_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P51''',
'      THEN',
'         :P2_P51_CUSTOMER_ID_N := ''Y'';',
'         :P2_P51_CUSTOMER_ID_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P85''',
'      THEN',
'         :P2_P85_FROM_YEAR_N := ''Y'';',
'         :P2_P85_FROM_YEAR_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P86''',
'      THEN',
'         :P2_P86_TO_YEAR_N := ''Y'';',
'         :P2_P86_TO_YEAR_LABEL := i.PARAMETER_NAME;',
'               ELSIF i.PARAMETER_ID = ''P3''',
'      THEN',
'         :P2_P3_N := ''Y'';',
'         :P2_P3_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P4''',
'      THEN',
'         :P2_P4_N := ''Y'';',
'         :P2_P4_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P5''',
'      THEN',
'         :P2_P5_DOCUMENT_NO_N := ''Y'';',
'         :P2_P5_DOCUMENT_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P7''',
'      THEN',
'         :P2_P7_ACCOUNT_NO_N := ''Y'';',
'         :P2_P7_ACCOUNT_NO_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P8''',
'      THEN',
'         :P2_P8_N := ''Y'';',
'         :P2_P8_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P9''',
'      THEN',
'         :P2_P9_N := ''Y'';',
'         :P2_P9_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P10''',
'      THEN',
'         :P2_P10_N := ''Y'';',
'         :P2_P10_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P26''',
'      THEN',
'         :P2_P26_STAT_CODE_N := ''Y'';',
'         :P2_P26_STAT_CODE_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P61''',
'      THEN',
'         :P2_P61_N := ''Y'';',
'         :P2_P61_LABEL := i.PARAMETER_NAME;',
'      ELSIF i.PARAMETER_ID = ''P62''',
'      THEN',
'         :P2_P62_N := ''Y'';',
'         :P2_P62_LABEL := i.PARAMETER_NAME;',
'      END IF;',
'',
'      vCount := vCount + 1;',
'   END LOOP;',
'',
'   :P2_ID := vCount;',
'   :P2_REPORT_NAME := :P2_P22_REPORT_NAME;',
'',
'   BEGIN',
'      SELECT REP_PAGE',
'        INTO :P2_REPORT_PAGE',
'        FROM SYMENMAS',
'       WHERE PROGNAME = :P2_P22_REPORT_NAME;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         :P2_REPORT_PAGE := 2;',
'   END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P2_P22_REPORT_NAME'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
null;
wwv_flow_api.component_end;
end;
/
