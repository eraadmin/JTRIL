prompt --application/pages/page_19999
begin
--   Manifest
--     PAGE: 19999
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
 p_id=>19999
,p_user_interface_id=>wwv_flow_api.id(100064779117690213)
,p_name=>'Login Page 2nd'
,p_alias=>'LOGIN-PAGE-2ND'
,p_step_title=>'Login Page 2nd'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'$(''input,select'').keydown( function(e) {',
'        var key = e.charCode ? e.charCode : e.keyCode ? e.keyCode : 0;',
'        if(key == 13) {',
'            e.preventDefault();',
'            var inputs = $(this).closest(''form'').find('':input:enabled:visible:not([type="radio"]):not([readonly="readonly"])'');',
'            var NxtKey = 1;',
'inputs.eq( inputs.index(this)+NxtKey).focus();',
'        }',
'    });',
'});',
'',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-PageBody--login .t-Body{',
'    background:  url("#APP_IMAGES#back.jpg");',
'    background-repeat: no-repeat;',
'    	background-size: cover;',
'}',
'',
'',
'	.t-Login-logo {',
'  background-image: url("#APP_IMAGES#orbits-Logo.png");',
'  background-size: cover; ',
'		  overflow:visible;',
'  		display:inline-block;',
'  		vertical-align:middle;',
'  width: 200px;',
'  height:50px;',
'}',
'',
'',
'#MAIN_RGN{',
'	background-color: #359FFD;',
'/*opacity: 0.5;*/',
'	height:auto;',
'	border-radius:15px;',
'	width:120%;',
'	margin-left:-5%;',
'    BOX-SHADOW: -10px 10px 15px 5px cadetblue;',
'--height:70%;',
'}',
''))
,p_step_template=>wwv_flow_api.id(99942593400690137)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20220703163258'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(149993819662924676)
,p_plug_name=>'Main_RGN'
,p_region_name=>'MAIN_RGN'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(143057754002686652)
,p_plug_name=>'<span style="color:darkblue;font-weight:bold;">Sign In</span>'
,p_region_name=>'SIGNIN'
,p_parent_plug_id=>wwv_flow_api.id(149993819662924676)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:t-Form--stretchInputs:margin-top-none'
,p_plug_template=>wwv_flow_api.id(99985626328690159)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'style="border-radius:25px;"'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'style="height:50%;margin-top:-45%;border-radius:10px;"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42992674863996444)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(143057754002686652)
,p_button_name=>'LOGIN'
,p_button_static_id=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--small:t-Button--pill:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(100042305862690193)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_cattributes=>'style="border-radius:15px;"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42993024415996445)
,p_name=>'P19999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(143057754002686652)
,p_prompt=>'username'
,p_placeholder=>'Enter User Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P9999_PASSWORD'')"'
,p_field_template=>wwv_flow_api.id(100040875324690184)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42993453059996446)
,p_name=>'P19999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(143057754002686652)
,p_prompt=>'password'
,p_placeholder=>'Enter Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_css_classes=>'password'
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P9999_COMNAME'')"'
,p_field_template=>wwv_flow_api.id(100040875324690184)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42993891625996446)
,p_name=>'P19999_COMNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(143057754002686652)
,p_use_cache_before_default=>'NO'
,p_item_default=>'100'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select distinct A.CACMPCDE||'' - ''||A.CACMPNAM d, A.CACMPCDE r',
'From SYPARMAS A, SYRIGHTS B',
'Where A.CACMPCDE = B.COMPCODE',
'And lower(B.USERCODE) = lower(:P19999_USERNAME)',
'order by a.CACMPCDE'))
,p_lov_cascade_parent_items=>'P19999_USERNAME'
,p_ajax_items_to_submit=>'P19999_USERNAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''#LOGIN'')"'
,p_field_template=>wwv_flow_api.id(100041182336690187)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42994226569996447)
,p_name=>'P19999_COMPCODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(143057754002686652)
,p_use_cache_before_default=>'NO'
,p_item_default=>'100'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42994620974996448)
,p_name=>'P19999_REMEMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(143057754002686652)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(100069883682690246)||'.'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(100040875324690184)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42995059322996449)
,p_name=>'P19999_REP_SERVER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(143057754002686652)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42995409649996449)
,p_name=>'P19999_URL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(143057754002686652)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42995958063996460)
,p_validation_name=>'not null'
,p_validation_sequence=>10
,p_validation=>'P19999_COMNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please Select the Company Name'
,p_associated_item=>wwv_flow_api.id(42993891625996446)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42999890168996468)
,p_name=>'set server'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P19999_COMNAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43000374795996471)
,p_event_id=>wwv_flow_api.id(42999890168996468)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CACMPCDE, RPTSRVNM',
'INTO :P19999_COMPCODE, :P19999_REP_SERVER',
'from syparmas',
'where CACMPCDE = :P19999_COMNAME;'))
,p_attribute_02=>'P19999_COMNAME'
,p_attribute_03=>'P19999_COMPCODE,P19999_REP_SERVER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43000773721996472)
,p_name=>'refresh_comname'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P19999_USERNAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43001234088996472)
,p_event_id=>wwv_flow_api.id(43000773721996472)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19999_COMNAME'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42997480261996464)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P19999_USERNAME),',
'    p_consent  => :P19999_REMEMBER = ''Y'' );',
'*/	',
'	',
'begin',
'owa_util.mime_header(''text/html'', FALSE);',
'owa_cookie.send(',
'    name=>''LOGIN_USERNAME_COOKIE'',',
'    value=>:P19999_USERNAME);',
'    ',
'    owa_cookie.send(',
'    name=>''APEX_AT_WORK_COOKIE'',',
'    value=>:P19999_COMNAME);',
'    ',
'',
'   ',
'exception ',
'when no_data_found then null;',
'when too_many_rows then null;',
'when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42996654254996460)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'user locked check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vSTATUS VARCHAR2(2);',
'',
'BEGIN',
'      BEGIN',
'        SELECT VALDFLAG ',
'        INTO vSTATUS',
'        FROM SYUSRMAS',
'        WHERE USERCODE=UPPER (:P19999_USERNAME);',
'       -- divncode=:P19999_COMNAME ;',
'      EXCEPTION',
'      WHEN NO_DATA_FOUND THEN',
'      RAISE_APPLICATION_ERROR(-20015,''USER NOT FOUND ON USER TABLE.'');',
'              WHEN TOO_MANY_ROWS THEN ',
'        RAISE_APPLICATION_ERROR(-20013,''MORE USER FOUND ON USER MASTER TABLE'');',
'      END;',
'',
'IF vSTATUS=''T'' THEN',
'RAISE_APPLICATION_ERROR(-20014,''User Account is Temporarily Locked. Try Again After 10 Minutes.'') ;',
'end if;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42997073063996460)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  pkg_global_variable.g_compcode  := :P19999_COMPCODE;',
'  pkg_global_variable.g_sessionid := :APP_SESSION;',
'END;',
'',
'',
'apex_authentication.login(',
'    p_username => :P19999_USERNAME,',
'    p_password => :P19999_PASSWORD );',
'	',
'',
'BEGIN',
'   wwv_flow_custom_auth_std.login (',
'                                   P_UNAME        => UPPER (:P19999_USERNAME),',
'                                   P_PASSWORD     => :P19999_PASSWORD,',
'                                   P_SESSION_ID   => v (''APP_SESSION''),',
'                                   P_FLOW_PAGE    => ''100100:1'');',
'',
'   :COMPCODE  := :P19999_COMNAME;',
'   :REPSERVER := :P19999_REP_SERVER;',
'',
'BEGIN',
'  pkg_global_variable.g_compcode  := :P19999_COMPCODE;',
'END;',
'',
'    SELECT REPTURLL INTO :REPTURLL ',
'    FROM SYPARMAS',
'    WHERE  CACMPCDE = :COMPCODE;',
'',
'   select',
'   PAG_BODY_BGCLR,',
'   PAG_BODY_BGCLRR,',
'   PAG_BODY_BGCLRL,',
'   PAG_BODY_GRDNT_DIR,',
'   PAG_HDR_BGCLRR,',
'   PAG_HDR_BGCLRL,',
'   DATE_FRMT_MASK,',
'   CURRENCY_FRMT_MASK,',
'   MENU_NAVBAR_BGCLRR,',
'   MENU_NAVBAR_BGCLRL,',
'   MENU_NAVBAR_WIDTH,',
'   MENU_RIGHTBAR_WIDTH,',
'   MENU_MAIN_FNTCLR,',
'   MENU_MAIN_FNTSIZE,',
'   MENU_MAIN_FNTFMLY,',
'   MENU_MAIN_FNTWT,',
'   MENU_SUB_FNTCLR,',
'   MENU_SUB_FNTSIZE,',
'   MENU_SUB_FNTFMLY,',
'   MENU_SUB_FNTWT,',
'   RGN_RGN1_BGCLR,',
'   RGN_RGN1_HEIGHT,',
'   RGN_RGN2_BGCLR,',
'   RGN_RGN2_HEIGHT,',
'   RGN_RGN3_BGCLR,',
'   RGN_RGN3_HEIGHT,',
'   RGN_RGN4_BGCLR,',
'   RGN_RGN4_HEIGHT,',
'   RGN_RGN5_BGCLR,',
'   RGN_RGN5_HEIGHT,',
'   RGN_RGN6_BGCLR,',
'   RGN_RGN6_HEIGHT,',
'   RPT_CLS_BGCLR,',
'   RPT_CLS_HDRBGCLR,',
'   RPT_CLS_HDRFNTCLR,',
'   RPT_CLS_HDRFNTSIZE,',
'   RPT_CLS_HDRFNTFMLY,',
'   RPT_CLS_FNTCLR,',
'   RPT_CLS_FNTSIZE,',
'   RPT_CLS_FNFMLY,',
'   RPT_CLS_BRDRCLR,',
'   RPT_IRR_BGCLR,',
'   RPT_IRR_HDRBGCLR,',
'   RPT_IRR_HDRFNTCLR,',
'   RPT_IRR_HDRFNTSIZE,',
'   RPT_IRR_HDRFNTFMLY,',
'   RPT_IRR_FNTCLR,',
'   RPT_IRR_FNTSIZE,',
'   RPT_IRR_FNFMLY,',
'   RPT_IRR_BRDRCLR,',
'   RPT_IGR_BGCLR,',
'   RPT_IGR_HDRBGCLR,',
'   RPT_IGR_HDRFNTCLR,',
'   RPT_IGR_HDRFNTSIZE,',
'   RPT_IGR_HDRFNTFMLY,',
'   RPT_IGR_FNTCLR,',
'   RPT_IGR_FNTSIZE,',
'   RPT_IGR_FNFMLY,',
'   RPT_IGR_BRDRCLR,',
'   ITEM_CNTR_FNTCLR,',
'   ITEM_CNTR_FNTSIZE,',
'   ITEM_CNTR_FNTWT,',
'   ITEM_CNTR_FNTFMLY,',
'   ITEM_CNTR_HIGHT,',
'   ITEM_CNTR_BGCLR,',
'   ITEM_CNTR_BRDRCLR,',
'   ITEM_CNTR_BRDRRDS,',
'   ITEM_LABL_FNTCLR,',
'   ITEM_LABL_FNTSIZE,',
'   ITEM_LABL_FNTWT,',
'   ITEM_LABL_FNTFMLY,',
'   BTN_NEXT_LBL,',
'   BTN_NEXT_LBL_FNTWT,',
'   BTN_NEXT_FNFMLY,',
'   BTN_NEXT_WIDTH,',
'   BTN_NEXT_HIGHT,',
'   BTN_NEXT_ICON,',
'   BTN_NEXT_CLR,',
'   BTN_NEXT_BGCLRL,',
'   BTN_NEXT_BGCLRR,',
'   BTN_NEXT_GRDNT_DIR,',
'   BTN_NEXT_BRDRCLR,',
'   BTN_NEXT_BRDRRDS,',
'   BTN_CNCL_LBL,',
'   BTN_CNCL_LBL_FNTWT,',
'   BTN_CNCL_WIDTH,',
'   BTN_CNCL_HIGHT,',
'   BTN_CNCL_ICON,',
'   BTN_CNCL_CLR,',
'   BTN_CNCL_BGCLRL,',
'   BTN_CNCL_BGCLRR,',
'   BTN_CNCL_BRDRCLR,',
'   BTN_CNCL_GRDNT_DIR,',
'   BTN_CNCL_BRDRRDS,',
'   BTN_CNCL_FNFMLY,',
'   BTN_SAVE_LBL,',
'   BTN_SAVE_LBL_FNTWT,',
'   BTN_SAVE_WIDTH,',
'   BTN_SAVE_HIGHT,',
'   BTN_SAVE_ICON,',
'   BTN_SAVE_CLR,',
'   BTN_SAVE_BGCLRL,',
'   BTN_SAVE_BGCLRR,',
'   BTN_SAVE_GRDNT_DIR,',
'   BTN_SAVE_BRDRCLR,',
'   BTN_SAVE_BRDRRDS,',
'   BTN_SAVE_FNFMLY,',
'   BTN_BACK_LBL,',
'   BTN_BACK_LBL_FNTWT,',
'   BTN_BACK_WIDTH,',
'   BTN_BACK_HIGHT,',
'   BTN_BACK_ICON,',
'   BTN_BACK_CLR,',
'   BTN_BACK_BGCLRL,',
'   BTN_BACK_BGCLRR,',
'   BTN_BACK_GRDNT_DIR,',
'   BTN_BACK_BRDRCLR,',
'   BTN_BACK_BRDRRDS,',
'   BTN_BACK_FNFMLY,',
'   BTN_SBMT_LBL,',
'   BTN_SBMT_LBL_FNTWT,',
'   BTN_SBMT_WIDTH,',
'   BTN_SBMT_HIGHT,',
'   BTN_SBMT_ICON,',
'   BTN_SBMT_CLR,',
'   BTN_SBMT_BGCLRL,',
'   BTN_SBMT_BGCLRR,',
'   BTN_SBMT_GRDNT_DIR,',
'   BTN_SBMT_BRDRCLR,',
'   BTN_SBMT_BRDRRDS,',
'   BTN_SBMT_FNFMLY,',
'   BTN_DELT_LBL,',
'   BTN_DELT_LBL_FNTWT,',
'   BTN_DELT_WIDTH,',
'   BTN_DELT_HIGHT,',
'   BTN_DELT_ICON,',
'   BTN_DELT_CLR,',
'   BTN_DELT_BGCLRL,',
'   BTN_DELT_BGCLRR,',
'   BTN_DELT_GRDNT_DIR,',
'   BTN_DELT_BRDRCLR,',
'   BTN_DELT_BRDRRDS,',
'   BTN_DELT_FNFMLY,',
'   BTN_PRNT_LBL,',
'   BTN_PRNT_LBL_FNTWT,',
'   BTN_PRNT_WIDTH,',
'   BTN_PRNT_HIGHT,',
'   BTN_PRNT_ICON,',
'   BTN_PRNT_CLR,',
'   BTN_PRNT_BGCLRL,',
'   BTN_PRNT_BGCLRR,',
'   BTN_PRNT_GRDNT_DIR,',
'   BTN_PRNT_BRDRCLR,',
'   BTN_PRNT_BRDRRDS,',
'   BTN_PRNT_FNFMLY,',
'   BTN_RFRS_LBL,',
'   BTN_RFRS_LBL_FNTWT,',
'   BTN_RFRS_WIDTH,',
'   BTN_RFRS_HIGHT,',
'   BTN_RFRS_ICON,',
'   BTN_RFRS_CLR,',
'   BTN_RFRS_BGCLRL,',
'   BTN_RFRS_BGCLRR,',
'   BTN_RFRS_GRDNT_DIR,',
'   BTN_RFRS_BRDRCLR,',
'   BTN_RFRS_BRDRRDS,',
'   BTN_RFRS_FNFMLY,',
'   PAGE_ALRT_BGCLR,',
'   PAGE_ALRT_FNTCLR,',
'   PAGE_ALRT_FNTSIZE,',
'   PAGE_ALRT_FNTFMLY,',
'   PAGE_ALRT_BRDRCLR,',
'   PAGE_ALRT_BRDRRDS',
'   into',
'   :PAG_BODY_BGCLR,',
'   :PAG_BODY_BGCLRR,',
'   :PAG_BODY_BGCLRL,',
'   :PAG_BODY_GRDNT_DIR,',
'   :PAG_HDR_BGCLRR,',
'   :PAG_HDR_BGCLRL,',
'   :DATE_FRMT_MASK,',
'   :CURRENCY_FRMT_MASK,',
'   :MENU_NAVBAR_BGCLRR,',
'   :MENU_NAVBAR_BGCLRL,',
'   :MENU_NAVBAR_WIDTH,',
'   :MENU_RIGHTBAR_WIDTH,',
'   :MENU_MAIN_FNTCLR,',
'   :MENU_MAIN_FNTSIZE,',
'   :MENU_MAIN_FNTFMLY,',
'   :MENU_MAIN_FNTWT,',
'   :MENU_SUB_FNTCLR,',
'   :MENU_SUB_FNTSIZE,',
'   :MENU_SUB_FNTFMLY,',
'   :MENU_SUB_FNTWT,',
'   :RGN_RGN1_BGCLR,',
'   :RGN_RGN1_HEIGHT,',
'   :RGN_RGN2_BGCLR,',
'   :RGN_RGN2_HEIGHT,',
'   :RGN_RGN3_BGCLR,',
'   :RGN_RGN3_HEIGHT,',
'   :RGN_RGN4_BGCLR,',
'   :RGN_RGN4_HEIGHT,',
'   :RGN_RGN5_BGCLR,',
'   :RGN_RGN5_HEIGHT,',
'   :RGN_RGN6_BGCLR,',
'   :RGN_RGN6_HEIGHT,',
'   :RPT_CLS_BGCLR,',
'   :RPT_CLS_HDRBGCLR,',
'   :RPT_CLS_HDRFNTCLR,',
'   :RPT_CLS_HDRFNTSIZE,',
'   :RPT_CLS_HDRFNTFMLY,',
'   :RPT_CLS_FNTCLR,',
'   :RPT_CLS_FNTSIZE,',
'   :RPT_CLS_FNFMLY,',
'   :RPT_CLS_BRDRCLR,',
'   :RPT_IRR_BGCLR,',
'   :RPT_IRR_HDRBGCLR,',
'   :RPT_IRR_HDRFNTCLR,',
'   :RPT_IRR_HDRFNTSIZE,',
'   :RPT_IRR_HDRFNTFMLY,',
'   :RPT_IRR_FNTCLR,',
'   :RPT_IRR_FNTSIZE,',
'   :RPT_IRR_FNFMLY,',
'   :RPT_IRR_BRDRCLR,',
'   :RPT_IGR_BGCLR,',
'   :RPT_IGR_HDRBGCLR,',
'   :RPT_IGR_HDRFNTCLR,',
'   :RPT_IGR_HDRFNTSIZE,',
'   :RPT_IGR_HDRFNTFMLY,',
'   :RPT_IGR_FNTCLR,',
'   :RPT_IGR_FNTSIZE,',
'   :RPT_IGR_FNFMLY,',
'   :RPT_IGR_BRDRCLR,',
'   :ITEM_CNTR_FNTCLR,',
'   :ITEM_CNTR_FNTSIZE,',
'   :ITEM_CNTR_FNTWT,',
'   :ITEM_CNTR_FNTFMLY,',
'   :ITEM_CNTR_HIGHT,',
'   :ITEM_CNTR_BGCLR,',
'   :ITEM_CNTR_BRDRCLR,',
'   :ITEM_CNTR_BRDRRDS,',
'   :ITEM_LABL_FNTCLR,',
'   :ITEM_LABL_FNTSIZE,',
'   :ITEM_LABL_FNTWT,',
'   :ITEM_LABL_FNTFMLY,',
'   :BTN_NEXT_LBL,',
'   :BTN_NEXT_LBL_FNTWT,',
'   :BTN_NEXT_FNFMLY,',
'   :BTN_NEXT_WIDTH,',
'   :BTN_NEXT_HIGHT,',
'   :BTN_NEXT_ICON,',
'   :BTN_NEXT_CLR,',
'   :BTN_NEXT_BGCLRL,',
'   :BTN_NEXT_BGCLRR,',
'   :BTN_NEXT_GRDNT_DIR,',
'   :BTN_NEXT_BRDRCLR,',
'   :BTN_NEXT_BRDRRDS,',
'   :BTN_CNCL_LBL,',
'   :BTN_CNCL_LBL_FNTWT,',
'   :BTN_CNCL_WIDTH,',
'   :BTN_CNCL_HIGHT,',
'   :BTN_CNCL_ICON,',
'   :BTN_CNCL_CLR,',
'   :BTN_CNCL_BGCLRL,',
'   :BTN_CNCL_BGCLRR,',
'   :BTN_CNCL_BRDRCLR,',
'   :BTN_CNCL_GRDNT_DIR,',
'   :BTN_CNCL_BRDRRDS,',
'   :BTN_CNCL_FNFMLY,',
'   :BTN_SAVE_LBL,',
'   :BTN_SAVE_LBL_FNTWT,',
'   :BTN_SAVE_WIDTH,',
'   :BTN_SAVE_HIGHT,',
'   :BTN_SAVE_ICON,',
'   :BTN_SAVE_CLR,',
'   :BTN_SAVE_BGCLRL,',
'   :BTN_SAVE_BGCLRR,',
'   :BTN_SAVE_GRDNT_DIR,',
'   :BTN_SAVE_BRDRCLR,',
'   :BTN_SAVE_BRDRRDS,',
'   :BTN_SAVE_FNFMLY,',
'   :BTN_BACK_LBL,',
'   :BTN_BACK_LBL_FNTWT,',
'   :BTN_BACK_WIDTH,',
'   :BTN_BACK_HIGHT,',
'   :BTN_BACK_ICON,',
'   :BTN_BACK_CLR,',
'   :BTN_BACK_BGCLRL,',
'   :BTN_BACK_BGCLRR,',
'   :BTN_BACK_GRDNT_DIR,',
'   :BTN_BACK_BRDRCLR,',
'   :BTN_BACK_BRDRRDS,',
'   :BTN_BACK_FNFMLY,',
'   :BTN_SBMT_LBL,',
'   :BTN_SBMT_LBL_FNTWT,',
'   :BTN_SBMT_WIDTH,',
'   :BTN_SBMT_HIGHT,',
'   :BTN_SBMT_ICON,',
'   :BTN_SBMT_CLR,',
'   :BTN_SBMT_BGCLRL,',
'   :BTN_SBMT_BGCLRR,',
'   :BTN_SBMT_GRDNT_DIR,',
'   :BTN_SBMT_BRDRCLR,',
'   :BTN_SBMT_BRDRRDS,',
'   :BTN_SBMT_FNFMLY,',
'   :BTN_DELT_LBL,',
'   :BTN_DELT_LBL_FNTWT,',
'   :BTN_DELT_WIDTH,',
'   :BTN_DELT_HIGHT,',
'   :BTN_DELT_ICON,',
'   :BTN_DELT_CLR,',
'   :BTN_DELT_BGCLRL,',
'   :BTN_DELT_BGCLRR,',
'   :BTN_DELT_GRDNT_DIR,',
'   :BTN_DELT_BRDRCLR,',
'   :BTN_DELT_BRDRRDS,',
'   :BTN_DELT_FNFMLY,',
'   :BTN_PRNT_LBL,',
'   :BTN_PRNT_LBL_FNTWT,',
'   :BTN_PRNT_WIDTH,',
'   :BTN_PRNT_HIGHT,',
'   :BTN_PRNT_ICON,',
'   :BTN_PRNT_CLR,',
'   :BTN_PRNT_BGCLRL,',
'   :BTN_PRNT_BGCLRR,',
'   :BTN_PRNT_GRDNT_DIR,',
'   :BTN_PRNT_BRDRCLR,',
'   :BTN_PRNT_BRDRRDS,',
'   :BTN_PRNT_FNFMLY,',
'   :BTN_RFRS_LBL,',
'   :BTN_RFRS_LBL_FNTWT,',
'   :BTN_RFRS_WIDTH,',
'   :BTN_RFRS_HIGHT,',
'   :BTN_RFRS_ICON,',
'   :BTN_RFRS_CLR,',
'   :BTN_RFRS_BGCLRL,',
'   :BTN_RFRS_BGCLRR,',
'   :BTN_RFRS_GRDNT_DIR,',
'   :BTN_RFRS_BRDRCLR,',
'   :BTN_RFRS_BRDRRDS,',
'   :BTN_RFRS_FNFMLY,',
'   :PAGE_ALRT_BGCLR,',
'   :PAGE_ALRT_FNTCLR,',
'   :PAGE_ALRT_FNTSIZE,',
'   :PAGE_ALRT_FNTFMLY,',
'   :PAGE_ALRT_BRDRCLR,',
'   :PAGE_ALRT_BRDRRDS',
'   from sypgtmplt',
'   WHERE CACMPCDE = :COMPCODE AND CAGRPCDE = ''001'';',
'   Exception',
'   When No_Data_Found Then',
'   raise_application_error(-20015,''No Template Data Found For this company '');',
'   When Others Then',
'   raise_application_error(-20016,''Problem Found in Template Data For this company '');',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42999489928996467)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LOGIN HISTORY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vUSERNAME   varchar2(30);',
'v_ip        varchar2(30);',
'vATTEMPNO   NUMBER;',
'begin',
'',
'',
'',
'SELECT SYS_CONTEXT (''USERENV'', ''IP_ADDRESS'') INTO v_ip FROM DUAL;',
'',
'    BEGIN',
'       SELECT USERNAME ',
'        INTO vUSERNAME ',
'        FROM SYUSRMAS ',
'       WHERE USERCODE=UPPER (:P19999_USERNAME);',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN ',
'        RAISE_APPLICATION_ERROR(-20013,''USER NOT FOUND ON USER MASTER TABLE'');',
'        WHEN TOO_MANY_ROWS THEN ',
'        RAISE_APPLICATION_ERROR(-20013,''MORE USER FOUND ON USER MASTER TABLE'');',
'    END;',
'',
'INSERT INTO SYLOGHST(',
'    COMPCODE, USERCODE, USERNAME, IPADDRES, SESIONID,',
'     ATTEMPNO, LOGINTIM, FAILDCNT, OPRSTAMP, LOGNSTAT',
')',
'VALUES(',
'    :P19999_COMNAME, :P19999_USERNAME,vUSERNAME,v_ip,-- owa_util.get_cgi_env(''X-FORWARDED-FOR''), ',
'    :APP_SESSION,',
'     0, TO_CHAR (SYSDATE,''RRRRMMDDHH24MISS''),0, :P19999_USERNAME,''S''',
');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42998281957996465)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42999034863996466)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_url varchar2(4000);',
'begin',
'',
'   v_url:=apex_util.prepare_url',
'                  (p_url             =>  ''f?p=100150:3:&SESSION.:::'',',
'                   p_triggering_element      =>''$(''''#URLS'''')''',
'                  );',
'   :P19999_URL:=v_url;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42998683997996466)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'schema change'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :app_user = ''ABCADM'' THEN',
'update apex_200200.wwv_flows',
'set owner = ''ORBRGS_DMO''; --:OWNER where id = :app_id;',
'elsif :app_user = ''ISMAIL'' THEN',
'update apex_200200.wwv_flows',
'set owner = ''ORBRGS_ATTACH'';',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42997849106996465)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P19999_USERNAME := apex_authentication.get_login_username_cookie;',
':P19999_REMEMBER := case when :P19999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42996296233996460)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET COMPCODE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CACMPCDE, RPTSRVNM',
'INTO :P19999_COMPCODE, :P19999_REP_SERVER',
'from syparmas',
'where CACMPCDE = :P19999_COMNAME;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
