prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
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
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(100064779117690213)
,p_name=>'Login Page'
,p_alias=>'LOGIN-PAGE'
,p_step_title=>'Login Page'
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
'    background:  url("#APP_FILES#bg.jpg");',
'    background-repeat: no-repeat;',
'    background-size: 100% 100%;',
'}',
'',
'',
'	/* .t-Login-logo {',
'  background-image: url("#APP_IMAGES#orbits-Logo.png");',
'  background-size: cover; ',
'		  overflow:visible;',
'  		display:inline-block;',
'  		vertical-align:middle;',
'  width: 200px;',
'  height:50px;',
'} */',
'',
'',
'#MAIN_RGN{',
'	background-color: #359FFD;',
'	height:auto;',
'	border-radius:15px;',
'	width:120%;',
'	margin-left:-5%;',
'    BOX-SHADOW: -10px 10px 15px 5px cadetblue;',
'--height:70%;',
'}',
'',
'#SLIDE{',
'    BOX-SHADOW: 0px 15px 15px 0px rgb(93, 93, 117);',
'}',
'',
'',
'#SIGNIN{',
'/*border-radius:15px;*/',
'/* border-top-right-radius: 50px 20px; */',
'border-top-right-radius: 50px 50px;',
'	overflow:hidden;',
'    left:200px;',
'}',
'',
'',
'#SIGNUP{',
'--margin-top:10%;',
'	margin-left:10%;',
'background-color: rgba(0, 0, 255, 0.3);',
'}',
'',
'#signup_btn{',
'		background-color: #359FFD;',
'color:white;',
'	font-weight:bold;',
'	border:1px solid white;',
'	border-radius:15px;',
'	',
'}',
'',
'.t-Login-region .t-Login-body .t-Form-fieldContainer:not(.t-Form-fieldContainer--floatingLabel) .apex-item-text .apex-item-select {',
'    font-size: 16px;',
'    border: none;',
'}',
'',
'',
'',
'.t-Login-region {',
'    background-color: transparent;',
'    /* border-top-right-radius: 15px 15px;',
'    border-bottom-right-radius: 15px 15px; */',
'    border-radius: 15px;',
'    BOX-SHADOW:none!important;',
'}',
'',
'.t-Region--carousel .a-Region-carouselLink {',
'    background-color: rgba(0,0,0,.15);',
'    border-radius: 100%;',
'    margin-bottom: -5px;',
'}',
'',
'.t-Login-region{',
'    float:right !important;',
'    /* position: absolute; */',
'}',
'',
'::placeholder {',
'  color: black;',
'  font-weight: bold;',
'}',
'',
'#LOGIN{',
'    background:rgba(0, 0, 0, 0.35);',
'    color: #fff;',
'    font-weight: bold;',
'    font-size:18px;',
'    /* height: 60px; */',
'    padding: 20px;',
'}',
'',
'#LOGIN:hover{',
'    background-color: #004d00;',
'    color: white;',
'}',
'',
'.t-Login-container {',
'    float:right;',
'}',
'',
'.t-Login-region{',
'    width:400px;',
'}',
'',
'#P9999_USERNAME, #P9999_PASSWORD{',
'    font-size: 15px;',
'    background:rgba(255, 255, 255, 0.60);',
'    color: black;',
'    border: none;',
'    font-weight: bold;',
'    padding: 15px;',
'    padding-left: 45px;',
'}',
'#P9999_COMNAME{',
'    font-size: 13px;',
'    background:rgba(255, 255, 255, 0.60);',
'    color: black;',
'    border: none;',
'    font-weight: bold;',
'    padding: 10px;',
'    height: calc(1.2em + 24px);',
'}',
'',
'.apex-item-icon{',
'    font-size: 17px;',
'    font-weight: bold;',
'    margin-left: 20px;',
'}',
'',
'',
'select{',
'    height:100px;',
'',
'}',
'',
''))
,p_step_template=>wwv_flow_api.id(99942593400690137)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'RAZU'
,p_last_upd_yyyymmddhh24miss=>'20221220111238'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(328170122825080658)
,p_plug_name=>'<span style="color:black;font-weight:bold;">Welcome to ERP Solution</span>'
,p_region_name=>'SIGNIN'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(99985626328690159)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'style="height:50%;margin-top:-45%;border-radius:10px;"'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(335106188485318682)
,p_plug_name=>'Main_RGN'
,p_region_name=>'MAIN_RGN'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(335106265579318683)
,p_plug_name=>'SIGNUP'
,p_region_name=>'SIGNUP'
,p_parent_plug_id=>wwv_flow_api.id(335106188485318682)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(344098832352022778)
,p_plug_name=>'slide'
,p_region_name=>'SLIDE'
,p_parent_plug_id=>wwv_flow_api.id(335106265579318683)
,p_region_template_options=>'t-Region--noPadding:js-cycle5s:t-Region--carouselSlide:t-Region--removeHeader:t-Region--hiddenOverflow:margin-top-lg:margin-right-sm'
,p_plug_template=>wwv_flow_api.id(99964178547690149)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(344098905344022779)
,p_plug_name=>'img1'
,p_parent_plug_id=>wwv_flow_api.id(344098832352022778)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<IMG SRC="#APP_IMAGES#img1.png" WIDTH="100%" HEIGHT="150px"></IMG>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(344099016644022780)
,p_plug_name=>'img2'
,p_parent_plug_id=>wwv_flow_api.id(344098832352022778)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<IMG SRC="#APP_IMAGES#img2.jpg" WIDTH="100%" HEIGHT="150px"></IMG>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(344099109034022781)
,p_plug_name=>'img3'
,p_parent_plug_id=>wwv_flow_api.id(344098832352022778)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<IMG SRC="#APP_IMAGES#img3.jpg" WIDTH="100%" HEIGHT="150px"></IMG>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(344099179618022782)
,p_plug_name=>'img4'
,p_parent_plug_id=>wwv_flow_api.id(344098832352022778)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<IMG SRC="#APP_IMAGES#img4.png" WIDTH="100%" HEIGHT="150px"></IMG>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(344099305082022783)
,p_plug_name=>'Powered by'
,p_parent_plug_id=>wwv_flow_api.id(335106265579318683)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h5></h5><br>',
'<h6 style="color:white">Powered By: <b><a href="https://erainfotechbd.com/" target="_blank">ERA Infotech Ltd.</a></b></h6>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(344099385127022784)
,p_plug_name=>'Intro'
,p_parent_plug_id=>wwv_flow_api.id(335106265579318683)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h4 style="color:white;">Welcome to <span style="color:yellow;font-family:arial black;',
'-webkit-text-stroke-color:grey;">PowerBits</span></h4>',
'',
'<p style="color:white;font-size:9px;">Exclusive ERP Solution .. </p>',
'</head>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h4 style="color:white;">Welcome to <span style="color:red;font-family:arial black;font-weight:bold;-webkit-text-stroke-width: 1px;',
'-webkit-text-stroke-color: #fff;">HONDA</span></h4>',
'',
'<p style="color:white;font-size:9px;">Exclusive Distributor of Honda Motor Cars in Bangladesh </p>',
'</head>'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29988631198053393)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(344099385127022784)
,p_button_name=>'Sign_Up'
,p_button_static_id=>'signup_btn'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(100042305862690193)
,p_button_image_alt=>'Sign Up'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=999901:99990111:&SESSION.::&DEBUG.:RP,99990111::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29982748905053382)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(328170122825080658)
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
 p_id=>wwv_flow_api.id(29983150933053386)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(328170122825080658)
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
 p_id=>wwv_flow_api.id(29983520406053387)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(328170122825080658)
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
 p_id=>wwv_flow_api.id(29983975161053387)
,p_name=>'P9999_COMNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(328170122825080658)
,p_use_cache_before_default=>'NO'
,p_item_default=>'100'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select distinct A.CACMPCDE||'' - ''||A.CACMPNAM d, A.CACMPCDE r',
'From SYPARMAS A, SYRIGHTS B',
'Where A.CACMPCDE = B.COMPCODE',
'And lower(B.USERCODE) = lower(:P9999_USERNAME)',
'order by a.CACMPCDE'))
,p_lov_cascade_parent_items=>'P9999_USERNAME'
,p_ajax_items_to_submit=>'P9999_USERNAME'
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
 p_id=>wwv_flow_api.id(29984342030053388)
,p_name=>'P9999_COMPCODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(328170122825080658)
,p_use_cache_before_default=>'NO'
,p_item_default=>'100'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29984768257053388)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(328170122825080658)
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
 p_id=>wwv_flow_api.id(29985179348053388)
,p_name=>'P9999_REP_SERVER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(328170122825080658)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29985522732053388)
,p_name=>'P9999_URL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(328170122825080658)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(29989189976053397)
,p_validation_name=>'not null'
,p_validation_sequence=>10
,p_validation=>'P9999_COMNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please Select the Company Name'
,p_associated_item=>wwv_flow_api.id(29983975161053387)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29993022797053401)
,p_name=>'set server'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999_COMNAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29993515754053402)
,p_event_id=>wwv_flow_api.id(29993022797053401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CACMPCDE, RPTSRVNM',
'INTO :P9999_COMPCODE, :P9999_REP_SERVER',
'from syparmas',
'where CACMPCDE = :P9999_COMNAME;'))
,p_attribute_02=>'P9999_COMNAME'
,p_attribute_03=>'P9999_COMPCODE,P9999_REP_SERVER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29993902838053402)
,p_name=>'refresh_comname'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999_USERNAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29994468321053402)
,p_event_id=>wwv_flow_api.id(29993902838053402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_COMNAME'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29990654674053399)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );',
'*/	',
'	',
'begin',
'owa_util.mime_header(''text/html'', FALSE);',
'owa_cookie.send(',
'    name=>''LOGIN_USERNAME_COOKIE'',',
'    value=>:P9999_USERNAME);',
'    ',
'    owa_cookie.send(',
'    name=>''APEX_AT_WORK_COOKIE'',',
'    value=>:P9999_COMNAME);',
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
 p_id=>wwv_flow_api.id(29989866633053398)
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
'        WHERE USERCODE=UPPER (:P9999_USERNAME);',
'       -- divncode=:P9999_COMNAME ;',
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
 p_id=>wwv_flow_api.id(29990218518053398)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  pkg_global_variable.g_compcode  := :P9999_COMPCODE;',
'  pkg_global_variable.g_sessionid := :APP_SESSION;',
'END;',
'',
'',
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );',
'	',
'',
'BEGIN',
'   wwv_flow_custom_auth_std.login (',
'                                   P_UNAME        => UPPER (:P9999_USERNAME),',
'                                   P_PASSWORD     => :P9999_PASSWORD,',
'                                   P_SESSION_ID   => v (''APP_SESSION''),',
'                                   P_FLOW_PAGE    => ''100100:1'');',
'',
'   :COMPCODE  := :P9999_COMNAME;',
'   :REPSERVER := :P9999_REP_SERVER;',
'',
'BEGIN',
'  pkg_global_variable.g_compcode  := :P9999_COMPCODE;',
'END;',
'',
'    SELECT REPTURLL, REPORT_APP, REPORT_PAGE, SUCCESS_APP, SUCCESS_PAGE',
'    INTO :REPTURLL, :REPORT_APP, :REPORT_PAGE, :SUCCESS_APP, :SUCCESS_PAGE ',
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
'   RPT_IGR_TDCLR,',
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
'   :RPT_IGR_TDCLR,',
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
 p_id=>wwv_flow_api.id(29992696188053400)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LOGIN HISTORY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vUSERNAME   varchar2(100);',
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
'       WHERE USERCODE=UPPER (:P9999_USERNAME);',
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
'    :P9999_COMNAME, :P9999_USERNAME,vUSERNAME,v_ip,-- owa_util.get_cgi_env(''X-FORWARDED-FOR''), ',
'    :APP_SESSION,',
'     0, TO_CHAR (SYSDATE,''RRRRMMDDHH24MISS''),0, :P9999_USERNAME,''S''',
');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29991481404053399)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29992260232053400)
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
'   :P9999_URL:=v_url;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29991813201053400)
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
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29991098298053399)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29989495686053397)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET COMPCODE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CACMPCDE, RPTSRVNM',
'INTO :P9999_COMPCODE, :P9999_REP_SERVER',
'from syparmas',
'where CACMPCDE = :P9999_COMNAME;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
