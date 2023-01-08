prompt --application/pages/page_00141
begin
--   Manifest
--     PAGE: 00141
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
 p_id=>141
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Generate Customer & Booking'
,p_page_mode=>'MODAL'
,p_step_title=>'Generate Customer & Booking'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript" src="#WORKSPACE_IMAGES#jquery-1.10.2.min.js"></script>',
'',
'',
'',
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'$(document).ready(function() {',
'$(''input,select'').keydown( function(e) {',
'        var key = e.charCode ? e.charCode : e.keyCode ? e.keyCode : 0;',
'        if(key == 13) {',
'            e.preventDefault();',
'            var inputs = $(this).closest(''form'').find('':input:enabled:visible:not(:button):not([type="radio"]):not([readonly="readonly"])'');',
'            var NxtKey = 1;',
'inputs.eq( inputs.index(this)+NxtKey).focus();',
'        }',
'    });',
'});',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#saveEmpBtn").alv("validateForm", {',
'  formsToSubmit: "#empForm1,#empForm2",',
'  errorMsg: "Please fix all errors before continuing"',
'});',
'$("#bokcnfrm").alv("validateForm", {',
'  formsToSubmit: "#bokcnfrm1,#bokcnfrm2,#empForm1",',
'  errorMsg: "Please fix all errors before continuing"',
'});',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-inputContainer, .t-Form-inputContainer.col, .t-Form-labelContainer, .t-Form-labelContainer.col {',
'    padding: 0.2rem;',
'}',
'.t-Form-label {',
'    padding: .0rem 0;',
'    line-height: 1.0rem;',
'    display: inline-block;',
'    -webkit-hyphens: auto;',
'    -moz-hyphens: auto;',
'    -ms-hyphens: auto;',
'    hyphens: auto;',
'    font-size: 1.2rem;',
'    margin-top: 0px;',
'}'))
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#navbar {',
'    display: none !important;',
'    overflow: hidden;',
'    position: absolute;',
'    top: 16px;',
'    right: 10px;',
'    font: normal 11px/12px Arial, sans-serif;',
'    color: #000;',
'    text-shadow: 0 1px 0px rgba(255,255,255,.5);',
'}',
'',
'#header {',
'    height: 0px !important;',
'    overflow: hidden;',
'    width: 100%;',
'}',
'',
'#logo {',
'    display: none!important;',
'    position: absolute;',
'    top: 16px;',
'    left: 10px;',
'}',
'',
'',
'$(function() {',
'  $("#P141_PAYMENT_MODE").alv({',
'    validate: "notEmpty",',
'    triggeringEvent: "blur",',
'    errorMsg: &MESSAGE.,',
'    errorMsgLocation: "after",',
'    allowWhitespace: true',
'  })',
'});'))
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180814105104'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39326502911118495)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>30
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align:right; height:20px; top: 10px;left: 50%;font-size:14px;color:#6633FF; font-weight:bold;"><br>User: &P1_USER_ID.<Br>&P1_USER_NAME.<Br></font>',
'</div>',
'',
'<div style="text-align:center; height:20px; position:absolute;position: absolute; top: 10px;left: 50%; margin-left: -160px;font-size:16px;color:#336633; font-weight:bold;">&P1_COMPNAME.<br><font size=''2'' color=''#336633''>&P1_COMPADD.</font>',
'',
'<div>',
'',
'<html>',
'<head>',
'<script type="text/javascript">',
'function startTime()',
'{',
'var today=new Date();',
'var h=today.getHours();',
'var m=today.getMinutes();',
'var s=today.getSeconds();',
'var don="AM"',
'// add a zero in front of numbers<10',
'm=checkTime(m);',
's=checkTime(s);',
'',
'if (h>=12){ don="PM" }',
'if (h>12) { h-=12 }',
'if (h==0) { h=12 }',
'',
'document.getElementById(''txt'').innerHTML=h+":"+m+":"+s+" "+don;',
't=setTimeout(''startTime()'',500);',
'}',
'',
'function checkTime(i)',
'{',
'if (i<10)',
'  {',
'  i="0" + i;',
'  }',
'return i;',
'}',
'</script>',
'</head>',
'',
'<body onload="startTime()">',
'<div id="txt"></div>',
'</body>',
'</html>',
'',
'</div>',
'',
'</div>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(83632191825081633)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>217
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(83684472273137914)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39289316015115863)
,p_plug_name=>'Generate Customer'
,p_region_name=>'1'
,p_parent_plug_id=>wwv_flow_api.id(83684472273137914)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39291706796115868)
,p_plug_name=>'Customer Information'
,p_region_name=>'empForm1'
,p_parent_plug_id=>wwv_flow_api.id(39289316015115863)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39292942478115868)
,p_plug_name=>' Customer Information'
,p_parent_plug_id=>wwv_flow_api.id(39291706796115868)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;height: 330px;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>7
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="font-size:12px;font-weight:bold;color:green;">Customer Information</span>',
''))
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39297752634115870)
,p_plug_name=>' Nominee Information'
,p_parent_plug_id=>wwv_flow_api.id(39291706796115868)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;height: 330px;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>9
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_header=>'<span style="font-size:12px;font-weight:bold;color:green;">Nominee Information</span>'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39314484331115876)
,p_plug_name=>' 2nd Guarantur'
,p_parent_plug_id=>wwv_flow_api.id(39291706796115868)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_header=>'<span style="font-size:12px;font-weight:bold;color:green;">2nd guarantor</span>'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39316937558115876)
,p_plug_name=>' 1sr guarantur'
,p_parent_plug_id=>wwv_flow_api.id(39291706796115868)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_header=>'<span style="font-size:12px;font-weight:bold;color:green;">1st guarantor</span>'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39331587518241276)
,p_plug_name=>' Company Information'
,p_parent_plug_id=>wwv_flow_api.id(39291706796115868)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;height: 330px;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>8
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_header=>'<span style="font-size:12px;font-weight:bold;color:green;">Company Information</span>'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39304136950115873)
,p_plug_name=>' Booking Information'
,p_region_name=>'2'
,p_parent_plug_id=>wwv_flow_api.id(83684472273137914)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>207
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39304510038115873)
,p_plug_name=>'Reservation'
,p_region_name=>'bokcnfrm1'
,p_parent_plug_id=>wwv_flow_api.id(39304136950115873)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_header=>'<span style="font-size:12px;font-weight:bold;color:green;">Reservation</span>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39310934335115874)
,p_plug_name=>'Installment'
,p_region_name=>'bokcnfrm2'
,p_parent_plug_id=>wwv_flow_api.id(39304136950115873)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>2
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_header=>'<span style="font-size:12px;font-weight:bold;color:green;">Installment</span>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39290473235115866)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(39289316015115863)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Customer'
,p_button_position=>'CREATE'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39291290936115866)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(39289316015115863)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39302889890115871)
,p_button_sequence=>10
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39303672458115871)
,p_button_sequence=>20
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39302548819115871)
,p_button_sequence=>30
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Booking Changes'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_condition=>'P141_ROWID'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39303338604115871)
,p_button_sequence=>40
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39290141372115866)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(83632191825081633)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:142:&SESSION.::&DEBUG.:142::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39289712637115865)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(83632191825081633)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Customer Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P141_S_CUSTMRID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39290869592115866)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(83632191825081633)
,p_button_name=>'GENERATE_CUSTOMER'
,p_button_static_id=>'saveEmpBtn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Customer'
,p_button_position=>'NEXT'
,p_button_condition=>'P141_S_CUSTMRID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46275355279076305)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(83632191825081633)
,p_button_name=>'BOOKING_CONFIRM'
,p_button_static_id=>'bokcnfrm'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Booking Confirm'
,p_button_position=>'NEXT'
,p_button_condition=>'P141_S_CUSTMRID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(39325807243115881)
,p_branch_action=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(138061575792248470)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(39326266366115881)
,p_branch_action=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(138061575792248470)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39292070201115868)
,p_name=>'P141_PARTYCDE'
,p_item_sequence=>2590
,p_item_plug_id=>wwv_flow_api.id(39291706796115868)
,p_prompt=>'Partycde'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39292493890115868)
,p_name=>'P141_PARTYTYP'
,p_item_sequence=>2600
,p_item_plug_id=>wwv_flow_api.id(39291706796115868)
,p_item_default=>'CU'
,p_prompt=>'Partytyp'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39293343534115868)
,p_name=>'P141_CUSTMRID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(39292942478115868)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P138_CUSTOMRID.'
,p_prompt=>'Customer ID'
,p_source=>'CUSTMRID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39293724189115868)
,p_name=>'P141_CUSTTYPE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(39292942478115868)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Type'
,p_source=>'CUSTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.NMCODDES,C.NMSOFCDE',
'FROM nmcodmas C',
'WHERE C.NMHRDCDE = ''CTY''',
'AND C.MODLCODE = ''NM''',
'and c.COMPCODE = :COMPCODE '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Customer Type'
,p_cSize=>25
,p_cMaxlength=>4
,p_cHeight=>1
,p_tag_attributes=>'style="width:100%;"'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39294073461115868)
,p_name=>'P141_IDENTIFY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(39292942478115868)
,p_use_cache_before_default=>'NO'
,p_prompt=>'National ID'
,p_source=>'IDENTIFY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>100
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39294513620115870)
,p_name=>'P141_PRTYNAME'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(39292942478115868)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Name'
,p_source=>'PRTYNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>60
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39294924538115870)
,p_name=>'P141_FATHERS_NAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(39292942478115868)
,p_use_cache_before_default=>'NO'
,p_prompt=>'S.O/D.O/W.O'
,p_source=>'FATHERS_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>250
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39295350692115870)
,p_name=>'P141_MOBILENO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(39292942478115868)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobile No.'
,p_source=>'MOBILENO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>20
,p_cHeight=>1
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39295747683115870)
,p_name=>'P141_TELENOFF'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(39292942478115868)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone Office'
,p_source=>'TELENOFF'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>20
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39296166921115870)
,p_name=>'P141_PRESENT_ADDRESS1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(39292942478115868)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Present Add1'
,p_source=>'PRESENT_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>500
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39296490989115870)
,p_name=>'P141_PRESENT_ADDRESS2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(39292942478115868)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Present Add2'
,p_source=>'PRESENT_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>500
,p_cHeight=>1
,p_tag_attributes=>'style ="resize: horizontal; width: 102%; "'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39296937315115870)
,p_name=>'P141_PRESENT_ADDRESS3'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(39292942478115868)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Present Add3'
,p_source=>'PRESENT_ADDRESS3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>500
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39297334421115870)
,p_name=>'P141_NOMINEE_NAME'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(39297752634115870)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nominee Name'
,p_source=>'NOMINEE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>250
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39298126162115870)
,p_name=>'P141_OCCUPATION'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(39297752634115870)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Occupation'
,p_source=>'OCCUPATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>200
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39298502448115870)
,p_name=>'P141_TELENRES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39331587518241276)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone Res'
,p_source=>'TELENRES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>20
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39298948784115870)
,p_name=>'P141_PERMANENT_ADDRESS1'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(39297752634115870)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Permanent Address1'
,p_source=>'PERMANENT_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>500
,p_cHeight=>1
,p_tag_attributes=>'style ="resize: horizontal; width: 102%; "'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39299297668115871)
,p_name=>'P141_PERMANENT_ADDRESS2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(39297752634115870)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Permanent Address2'
,p_source=>'PERMANENT_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>500
,p_cHeight=>1
,p_tag_attributes=>'style ="resize: horizontal; width: 102%; "'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39299703208115871)
,p_name=>'P141_PERMANENT_ADDRESS3'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(39297752634115870)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Permanent Address3'
,p_source=>'PERMANENT_ADDRESS3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>500
,p_cHeight=>1
,p_tag_attributes=>'style ="resize: horizontal; width: 102%; "'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39300133488115871)
,p_name=>'P141_NOMINEE_RELATIONSHIP'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(39297752634115870)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nominee Relationship'
,p_source=>'NOMINEE_RELATIONSHIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>120
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39300480100115871)
,p_name=>'P141_PEMAILID'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(39297752634115870)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mail ID'
,p_source=>'PEMAILID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39300942092115871)
,p_name=>'P141_ZONLCODE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(39297752634115870)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zone Name'
,p_source=>'ZONLCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(areadesc),areacode',
'from nmwhznms',
'where compcode=:compcode',
'and upper(zonlcode)=upper(''ROOT'')',
'order by areacode'))
,p_cSize=>25
,p_cMaxlength=>6
,p_cHeight=>1
,p_tag_attributes=>'style="width:100%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39301366617115871)
,p_name=>'P141_S_DISTRIC_CODE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(39297752634115870)
,p_prompt=>'district Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(areadesc),areacode',
'from nmwhznms',
'where compcode=:compcode',
'and upper(zonlcode)=upper(:P141_ZONLCODE)',
'order by areacode'))
,p_lov_cascade_parent_items=>'P141_ZONLCODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="width:100%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39301731717115871)
,p_name=>'P141_S_TRNDES'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(39297752634115870)
,p_prompt=>'Thana Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(areadesc),areacode',
'from nmwhznms',
'where compcode=:compcode',
'     and upper(zonlcode)=upper(:P141_S_DISTRIC_CODE)',
'order by 2'))
,p_lov_cascade_parent_items=>'P141_S_DISTRIC_CODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="width:100%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39304951360115873)
,p_name=>'P141_S_BOOKCODE'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_prompt=>'Booking Code/Date'
,p_source=>'BOOKCODE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39305320008115873)
,p_name=>'P141_S_BOOKDATE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_source=>'BOOKDATE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39305719460115873)
,p_name=>'P141_S_SMANCODE'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salesman Code'
,p_source=>'SMANCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT smancode, INITCAP (smanname) smanname',
'  FROM nmsmnmas',
' WHERE compcode = :compcode AND username = :APP_USER'))
,p_cSize=>16
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,1'
,p_attribute_06=>'2'
,p_attribute_07=>'P141_S_SMNNAME'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39306146666115873)
,p_name=>'P141_S_SMNNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39306557992115873)
,p_name=>'P141_S_CUSTMRID'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer ID'
,p_source=>'CUSTMRID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39306882033115873)
,p_name=>'P141_S_PRTYNAME'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39307287817115873)
,p_name=>'P141_S_VINNNO'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_prompt=>'Itemcode'
,p_source=>'ITEMCODE'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT itemcode,',
'         INITCAP (itemdes1) itemdes1,',
'         brand,',
'         modelnam,',
'         NVL (salerate, costrate) salerate,',
'         commgrup,',
'         luomcode,',
'         NVL (costrate, salerate) costrate,',
'         NVL (costrate, salerate) itemrate',
'    FROM vwnmitem',
'   WHERE compcode = :compcode AND finishgd = ''Y''',
'ORDER BY 1'))
,p_cSize=>16
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,1'
,p_attribute_06=>'2,3,4,5,7'
,p_attribute_07=>'P141_S_ITEMDESC,P141_S_BRAND,P141_S_MODELNAME,P141_S_SALERATE,P141_LUOMCODE'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39307750516115873)
,p_name=>'P141_S_ITEMDESC'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>500
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39308099655115873)
,p_name=>'P141_S_ENGINENO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_prompt=>'Engine  No'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39308566336115873)
,p_name=>'P141_S_COLORDESC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_prompt=>'Color'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39308878817115874)
,p_name=>'P141_S_SALERATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_prompt=>'Salerate'
,p_source=>'SALERATE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39309312898115874)
,p_name=>'P141_BKDOCNUM'
,p_item_sequence=>2610
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_prompt=>'Bkdocnum'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39309733610115874)
,p_name=>'P141_BKWARCDE'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P138_WARCODE.'
,p_prompt=>'Warehouse Code'
,p_source=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT w.warecode, w.costcode, INITCAP (w.waredesc) waredesc',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'         AND w.warecode IN (SELECT warecode',
'                              FROM sycstacc',
'                             WHERE compcode = w.compcode AND grupcode = :APP_USER)',
'ORDER BY 1'))
,p_cSize=>16
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,1'
,p_attribute_06=>'2,3'
,p_attribute_07=>'P141_BKCOSTCDE,P141_S_WAREDESC'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39310075495115874)
,p_name=>'P141_BKCOSTCDE'
,p_item_sequence=>2630
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P138_COSTCODE.'
,p_prompt=>'Bkcostcde'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39310517497115874)
,p_name=>'P141_ENUDTLPK'
,p_item_sequence=>2640
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_prompt=>'Enudtlpk'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39311322908115874)
,p_name=>'P141_PAYMENT_MODE'
,p_item_sequence=>1730
,p_item_plug_id=>wwv_flow_api.id(39310934335115874)
,p_prompt=>'Payment Mode'
,p_source=>'PAYMENT_MODE'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Cash;CSH,Credit;CRT'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'..Select Pay Mode..'
,p_cSize=>12
,p_cMaxlength=>3
,p_cHeight=>1
,p_tag_attributes=>'style="width:84%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39311722105115874)
,p_name=>'P141_INSTALLMENT_PAY'
,p_item_sequence=>1750
,p_item_plug_id=>wwv_flow_api.id(39310934335115874)
,p_prompt=>'Installment Pay'
,p_source=>'INSTALLMENT_PAY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_cSize=>12
,p_cMaxlength=>1
,p_cHeight=>1
,p_tag_attributes=>'style="width:84%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39312117791115874)
,p_name=>'P141_NO_OF_INSTALLMENT'
,p_item_sequence=>1790
,p_item_plug_id=>wwv_flow_api.id(39310934335115874)
,p_prompt=>'No Of Installment'
,p_source=>'NO_OF_INSTALLMENT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39312477356115874)
,p_name=>'P141_POSIBLE_INST_START_DATE'
,p_item_sequence=>1800
,p_item_plug_id=>wwv_flow_api.id(39310934335115874)
,p_prompt=>'Possible Inst Start Date'
,p_source=>'POSIBLE_INST_START_DATE'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39312923866115874)
,p_name=>'P141_INTEREST_AMOUNT'
,p_item_sequence=>1830
,p_item_plug_id=>wwv_flow_api.id(39310934335115874)
,p_prompt=>'Interest Amount'
,p_source=>'INTEREST_AMOUNT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39313352379115874)
,p_name=>'P141_LOAN_AMOUNT'
,p_item_sequence=>1850
,p_item_plug_id=>wwv_flow_api.id(39310934335115874)
,p_prompt=>'Loan Amount'
,p_source=>'LOAN_AMOUNT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39313687291115876)
,p_name=>'P141_MONTHLY_INSTALLMENT'
,p_item_sequence=>1870
,p_item_plug_id=>wwv_flow_api.id(39310934335115874)
,p_prompt=>'Monthly Installment'
,p_source=>'MONTHLY_INSTALLMENT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39314893767115876)
,p_name=>'P141_SECOND_GUARANTOR'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(39314484331115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'2nd Guarantor'
,p_source=>'SECOND_GUARANTOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39315333792115876)
,p_name=>'P141_SECOND_GUARANTOR_SO_DO'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(39314484331115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'S.O/D.O/W.O'
,p_source=>'SECOND_GUARANTOR_SO_DO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39315766560115876)
,p_name=>'P141_FIRST_GUARANTOR_ADD1'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(39316937558115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address1'
,p_source=>'FIRST_GUARANTOR_ADD1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39316126483115876)
,p_name=>'P141_SECOND_GUARANTOR_ADD2'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(39314484331115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address2'
,p_source=>'SECOND_GUARANTOR_ADD2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39316538610115876)
,p_name=>'P141_SECOND_GUARANTOR_MOB'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(39314484331115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobile'
,p_source=>'SECOND_GUARANTOR_MOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39317274137115876)
,p_name=>'P141_FIRST_GUARANTOR'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(39316937558115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'1st Guarantor'
,p_source=>'FIRST_GUARANTOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39317758642115876)
,p_name=>'P141_FIRST_GUARANTOR_SO_DO'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(39316937558115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'S.O/D.O/W.O'
,p_source=>'FIRST_GUARANTOR_SO_DO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39318121895115877)
,p_name=>'P141_SECOND_GUARANTOR_ADD1'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(39314484331115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address1'
,p_source=>'SECOND_GUARANTOR_ADD1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39318504805115877)
,p_name=>'P141_FIRST_GUARANTOR_ADD2'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(39316937558115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address2'
,p_source=>'FIRST_GUARANTOR_ADD2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39318932930115877)
,p_name=>'P141_FIRST_GUARANTOR_MOB'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(39316937558115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobile'
,p_source=>'FIRST_GUARANTOR_MOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>250
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39327063346186259)
,p_name=>'P141_BIRTHCRT'
,p_item_sequence=>141
,p_item_plug_id=>wwv_flow_api.id(39292942478115868)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Birth Certificate'
,p_source=>'BIRTHCRT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39327318291186259)
,p_name=>'P141_PASPRTNO'
,p_item_sequence=>142
,p_item_plug_id=>wwv_flow_api.id(39292942478115868)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pasport No.'
,p_source=>'PASPRTNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39327752647186260)
,p_name=>'P141_MOTHER_NAME'
,p_item_sequence=>161
,p_item_plug_id=>wwv_flow_api.id(39292942478115868)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mother Name'
,p_source=>'MOTHER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39328079234186262)
,p_name=>'P141_PTY_AGE'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(39331587518241276)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Age'
,p_source=>'PTY_AGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39328557274186262)
,p_name=>'P141_CUST_COMPANY'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(39331587518241276)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Name'
,p_source=>'CUST_COMPANY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39328894773186262)
,p_name=>'P141_CUST_DESIGNATION'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(39331587518241276)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Designation'
,p_source=>'CUST_DESIGNATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39329344438186262)
,p_name=>'P141_PTYCOM_ADDRESS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(39331587518241276)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Address'
,p_source=>'PTYCOM_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39329752695186262)
,p_name=>'P141_PTY_COM_PHONE'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(39331587518241276)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company  Phone'
,p_source=>'PTY_COM_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39330110074186262)
,p_name=>'P141_PTY_BUSINESS_TYPE'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(39331587518241276)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Business Type'
,p_source=>'PTY_BUSINESS_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39335318575322613)
,p_name=>'P141_PTY_ITN_NUMBER'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(39331587518241276)
,p_use_cache_before_default=>'NO'
,p_prompt=>'TIN Number'
,p_source=>'PTY_ITN_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39335620456322613)
,p_name=>'P141_TTRADELINCE_NO'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(39331587518241276)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Trade License No'
,p_source=>'TTRADELINCE_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39336021727322613)
,p_name=>'P141_SOURCE_OF_FUND'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(39331587518241276)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Source Of Fund'
,p_source=>'SOURCE_OF_FUND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39338518403722089)
,p_name=>'P141_FIRST_GUARANTOR_MNAME'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(39316937558115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mother Name'
,p_source=>'FIRST_GUARANTOR_MNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39338864599722090)
,p_name=>'P141_FIRST_GNTR_OCCUPATION'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(39316937558115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Occupation'
,p_source=>'FIRST_GNTR_OCCUPATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39339195868722090)
,p_name=>'P141_FIRST_GNTR_OCPTIME'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(39316937558115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ocupation Type'
,p_source=>'FIRST_GNTR_OCPTIME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39339616501722090)
,p_name=>'P141_FIRST_GNTR_DEGISNATION'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(39316937558115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Designation'
,p_source=>'FIRST_GNTR_DEGISNATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39340033457722090)
,p_name=>'P141_FIRST_GNTR_AGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39316937558115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Age'
,p_source=>'FIRST_GNTR_AGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39340396902722095)
,p_name=>'P141_FIRST_GNTR_INCOME_YEARLY'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(39316937558115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Income'
,p_source=>'FIRST_GNTR_INCOME_YEARLY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39340826536722095)
,p_name=>'P141_FIRST_GNTR_COMPANY'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(39316937558115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Name'
,p_source=>'FIRST_GNTR_COMPANY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39341227673722095)
,p_name=>'P141_FIRST_GNTR_COMADRESS'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(39316937558115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Address'
,p_source=>'FIRST_GNTR_COMADRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39341570177722095)
,p_name=>'P141_FIRST_GNTR_COMPHONE'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(39316937558115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Phone'
,p_source=>'FIRST_GNTR_COMPHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39341982899722095)
,p_name=>'P141_FIRST_GNTR_RELATIONSHIP'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(39316937558115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Relation'
,p_source=>'FIRST_GNTR_RELATIONSHIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39348092420813346)
,p_name=>'P141_SECOND_GUARANTOR_MNAME'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(39314484331115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mother Name'
,p_source=>'SECOND_GUARANTOR_MNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39348401739813346)
,p_name=>'P141_SECOND_GNTR_OCCUPATION'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(39314484331115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Occupation'
,p_source=>'SECOND_GNTR_OCCUPATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39348852975813349)
,p_name=>'P141_SECOND_GNTR_OCPTIME'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(39314484331115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Occupation Type'
,p_source=>'SECOND_GNTR_OCPTIME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39349267111813349)
,p_name=>'P141_SECOND_GNTR_DEGISNATION'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(39314484331115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Designation'
,p_source=>'SECOND_GNTR_DEGISNATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39349571450813349)
,p_name=>'P141_SECOND_GNTR_AGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39314484331115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Age'
,p_source=>'SECOND_GNTR_AGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39350030904813351)
,p_name=>'P141_SECOND_GNTR_INCOME_YEARLY'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(39314484331115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Income'
,p_source=>'SECOND_GNTR_INCOME_YEARLY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39350368697813351)
,p_name=>'P141_SECOND_GNTR_COMPANY'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(39314484331115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Name'
,p_source=>'SECOND_GNTR_COMPANY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39350836004813351)
,p_name=>'P141_SCEOND_GNTR_COMADRESS'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(39314484331115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Address'
,p_source=>'SCEOND_GNTR_COMADRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39351216980813351)
,p_name=>'P141_SECOND_GNTR_COMPHONE'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(39314484331115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Phone'
,p_source=>'SECOND_GNTR_COMPHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39351567637813351)
,p_name=>'P141_SCEOND_GNTR_RELATIONSHIP'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(39314484331115876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Relation'
,p_source=>'SCEOND_GNTR_RELATIONSHIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39367331868539749)
,p_name=>'P141_S_QUOTATION_NO'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_prompt=>'Reference No/Date'
,p_source=>'REFNUMBR'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct q.docnumbr,q.doctdate,q.itemcode,initcap(q.itemdesc) itemdesc,q.salerate,q.huomcode,q.docttype,',
'q.subttype,q.smancode,q.partycde,q.orgnqnty,q.costcode,q.warecode,initcap(w.waredesc) waredesc,',
'initcap(s.smanname) smanname,i.brand,i.modelnam,q.colorcde,(select initcap(c.nmcoddes)  from nmcodmas c where  c.compcode=q.compcode',
'and c.nmsofcde=q.colorcde',
'and c.nmhrdcde = ''CLR'') nmcoddes',
'from  nmslsofr q,vwnmitem i,nmwhsmas w,nmsmnmas s',
'where q.compcode=:compcode',
'and q.compcode=i.compcode',
'and q.itemcode=i.itemcode',
'and q.compcode=w.compcode',
'and q.warecode=w.warecode',
'and q.compcode=s.compcode',
'and q.smancode=s.smancode',
'--and q.custmrid=:APP_USER'))
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,1'
,p_attribute_06=>'2'
,p_attribute_07=>'P141_S_REF_DATE'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39367599561539752)
,p_name=>'P141_S_REF_DATE'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_prompt=>'Reference Date'
,p_source=>'REFNDATE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39368058497539752)
,p_name=>'P141_S_WAREDESC'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39368368094539752)
,p_name=>'P141_S_BRAND'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39368825603539752)
,p_name=>'P141_S_MODELNAME'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_prompt=>'Model Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46259415591953133)
,p_name=>'P141_DOWN_PAYMENT'
,p_item_sequence=>1810
,p_item_plug_id=>wwv_flow_api.id(39310934335115874)
,p_prompt=>'Down Payment'
,p_source=>'DOWN_PAYMENT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46460708316564676)
,p_name=>'P141_ROWID'
,p_item_sequence=>2650
,p_item_plug_id=>wwv_flow_api.id(39291706796115868)
,p_prompt=>'Rowid'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(83712813603275717)
,p_name=>'P141_RDS_DEFAULT'
,p_item_sequence=>2660
,p_item_plug_id=>wwv_flow_api.id(83684472273137914)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rds Default'
,p_source=>'1'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93801983667254676)
,p_name=>'P141_LUOMCODE'
,p_item_sequence=>2670
,p_item_plug_id=>wwv_flow_api.id(39304510038115873)
,p_prompt=>'Luomcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(39319392226115877)
,p_computation_sequence=>10
,p_computation_item=>'P138_CUSTOMRID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P138_CUSTOMRID.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(39319828037115879)
,p_computation_sequence=>10
,p_computation_item=>'P138_DOCNUMBR'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P138_DOCNUMBR.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(39320188246115879)
,p_computation_sequence=>10
,p_computation_item=>'P138_PARTYCDE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P138_PARTYCDE.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(39320630114115879)
,p_computation_sequence=>10
,p_computation_item=>'P138_WARCODE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P138_WARCODE.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(39321047838115879)
,p_computation_sequence=>10
,p_computation_item=>'P138_COSTCODE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P138_COSTCODE.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46260370775002373)
,p_name=>'assign loan amount'
,p_event_sequence=>1
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P141_DOWN_PAYMENT'
,p_condition_element=>'P141_DOWN_PAYMENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46260826444002375)
,p_event_id=>wwv_flow_api.id(46260370775002373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P141_LOAN_AMOUNT:=round(nvl(:P141_S_SALERATE,0)-nvl(:P141_DOWN_PAYMENT,0));',
'end;'))
,p_attribute_02=>'P141_S_SALERATE,P141_DOWN_PAYMENT'
,p_attribute_03=>'P141_LOAN_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46263065156231511)
,p_name=>'condition Payment mode'
,p_event_sequence=>2
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P141_PAYMENT_MODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46263385645231511)
,p_event_id=>wwv_flow_api.id(46263065156231511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P141_PAYMENT_MODE = ''CRT''',
'   THEN',
'      IF nvl(:P141_FIRST_GUARANTOR,:P141_SECOND_GUARANTOR)  IS NULL',
'      THEN',
'   :MESSAGE:= ''Guarantor Is Needed for Credit Payment...'';',
'--:P141_DOWN_PAYMENT:= :MESSAGE;',
'      END IF;',
'   END IF;',
'end;'))
,p_attribute_02=>'P141_PAYMENT_MODE,P141_FIRST_GUARANTOR,P141_SECOND_GUARANTOR'
,p_attribute_03=>'MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46239217356615548)
,p_name=>'on page load on general customer button'
,p_event_sequence=>4
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46239633154615548)
,p_event_id=>wwv_flow_api.id(46239217356615548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_BE.CTB.JQ.ALV'
,p_attribute_01=>'notEmpty'
,p_attribute_03=>'P141_PRTYNAME,P141_PRESENT_ADDRESS1,P141_CUSTTYPE'
,p_attribute_04=>'blur'
,p_attribute_15=>'after'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46254977811352684)
,p_event_id=>wwv_flow_api.id(46239217356615548)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_BE.CTB.JQ.ALV'
,p_attribute_01=>'notEmpty'
,p_attribute_03=>'P141_CUSTTYPE'
,p_attribute_04=>'blur'
,p_attribute_15=>'after'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46276969642118293)
,p_name=>'on page load for booking confirm button'
,p_event_sequence=>14
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46277438905118304)
,p_event_id=>wwv_flow_api.id(46276969642118293)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_BE.CTB.JQ.ALV'
,p_attribute_01=>'notEmpty'
,p_attribute_03=>'P141_S_VINNNO,P141_S_SALERATE,P141_BKWARCDE,P141_S_SMANCODE'
,p_attribute_04=>'blur'
,p_attribute_15=>'after'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46277924027118307)
,p_event_id=>wwv_flow_api.id(46276969642118293)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_BE.CTB.JQ.ALV'
,p_attribute_01=>'notEmpty'
,p_attribute_03=>'P141_PAYMENT_MODE'
,p_attribute_04=>'blur'
,p_attribute_15=>'after'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46457638689474514)
,p_name=>'when modify mode booking customer id is not null'
,p_event_sequence=>24
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P141_S_CUSTMRID'
,p_condition_element=>'P141_S_CUSTMRID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46457969137474520)
,p_event_id=>wwv_flow_api.id(46457638689474514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P141_S_SMNNAME:=''P141_S_SMNNAME'';',
'select initcap(s.smanname) smanname,',
'itemcode,salerate,bookcode,bookdate,e.warecode,initcap(m.waredesc) waredesc,colorcde,refnumbr,refndate,',
'itemdesc,e.smancode,payment_mode,installment_pay,down_payment,',
'no_of_installment,posible_inst_start_date,interest_amount,loan_amount,monthly_installment',
'into :P141_S_SMNNAME,',
':P141_S_VINNNO,:P141_S_SALERATE,:P141_S_BOOKCODE,:P141_S_BOOKDATE,:P141_BKWARCDE,:P141_S_WAREDESC,',
':P141_S_COLORDESC,:P141_S_QUOTATION_NO,:P141_S_REF_DATE,',
':P141_S_ITEMDESC,:P141_S_SMANCODE,:P141_PAYMENT_MODE,:P141_INSTALLMENT_PAY,:P141_DOWN_PAYMENT,',
':P141_NO_OF_INSTALLMENT,:P141_POSIBLE_INST_START_DATE,:P141_INTEREST_AMOUNT,:P141_LOAN_AMOUNT,:P141_MONTHLY_INSTALLMENT',
'from nmenudtl e,nmsmnmas s,nmwhsmas m',
'where  e.compcode=:compcode',
'and e.compcode=s.compcode',
'and e.smancode=s.smancode',
'and e.compcode=m.compcode',
'and e.warecode=m.warecode',
'and e.custmrid=:P141_S_CUSTMRID;',
'exception',
'when no_data_found then',
':P141_S_SMNNAME:=''P141_S_SMNNAME'';',
'when too_many_rows then',
':P141_S_SMNNAME:=''P141_S_SMNNAME'';',
'when others then null;',
'end;'))
,p_attribute_02=>'P141_S_CUSTMRID'
,p_attribute_03=>'P141_S_SMNNAME,P141_S_VINNNO,P141_S_SALERATE,P141_S_BOOKCODE,P141_S_BOOKDATE,P141_BKWARCDE,P141_S_WAREDESC,P141_S_COLORDESC,P141_S_QUOTATION_NO,P141_S_REF_DATE,P141_S_ITEMDESC,P141_S_SMANCODE,P141_PAYMENT_MODE,P141_INSTALLMENT_PAY,P141_DOWN_PAYMENT,P'
||'141_NO_OF_INSTALLMENT,P141_POSIBLE_INST_START_DATE,P141_INTEREST_AMOUNT,P141_LOAN_AMOUNT,P141_MONTHLY_INSTALLMENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(83712992767281160)
,p_name=>'tab'
,p_event_sequence=>34
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(83713378540281164)
,p_event_id=>wwv_flow_api.id(83712992767281160)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''.apex-rds li:eq('' + apex.item(''P141_RDS_DEFAULT'').setValue() + '') > a'').trigger(''click'');'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39321700832115879)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMCUSVLG'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'P141_ROWID'
,p_attribute_04=>'ROWID'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39322142560115879)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SYCOMPTY'
,p_attribute_02=>'SYCOMPTY'
,p_attribute_03=>'P141_CUSTMRID'
,p_attribute_04=>'CUSTMRID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39289712637115865)
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39322506346115879)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMCUSVLG'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'P141_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39322931518115879)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39303672458115871)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39323339644115879)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39291290936115866)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39323680477115881)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into sycompty'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P141_CUSTMRID IS NOT NULL AND :P141_PARTYCDE is NOT NULL then',
'',
' INSERT INTO SYCOMPTY (COMPCODE,                  CUSTMRID,                     PARTYCDE,                      CUSTTYPE,                      PARTYTYP,',
'                                      IDENTIFY,                     BIRTHCRT,                    PASPRTNO,                        PRTYNAME,                      FATHERS_NAME,',
'                                      MOTHER_NAME,           MOBILENO,                      TELENOFF,                      PRESENT_ADDRESS1,         PRESENT_ADDRESS2,',
'                              PRESENT_ADDRESS3,           PTY_AGE,                      CUST_COMPANY,              CUST_DESIGNATION,          PTYCOM_ADDRESS, ',
'                              PTY_COM_PHONE,              PTY_BUSINESS_TYPE,     PTY_ITN_NUMBER,              TTRADELINCE_NO,             SOURCE_OF_FUND,',
'                               TELENRES,                       NOMINEE_NAME,                  OCCUPATION,              PERMANENT_ADDRESS1,      PERMANENT_ADDRESS2,',
'                      PERMANENT_ADDRESS3,       NOMINEE_RELATIONSHIP,             PEMAILID,                     ZONLCODE,                      AREACODE,',
'                      FIRST_GUARANTOR,        FIRST_GUARANTOR_SO_DO,  FIRST_GUARANTOR_MNAME, FIRST_GUARANTOR_ADD1,   FIRST_GUARANTOR_ADD2,',
'                      FIRST_GUARANTOR_MOB, FIRST_GNTR_OCCUPATION,   FIRST_GNTR_OCPTIME,    FIRST_GNTR_DEGISNATION,          FIRST_GNTR_AGE,',
'                      FIRST_GNTR_INCOME_YEARLY, FIRST_GNTR_COMPANY,  FIRST_GNTR_COMADRESS,FIRST_GNTR_COMPHONE,    FIRST_GNTR_RELATIONSHIP ,',
'                      SECOND_GUARANTOR, SECOND_GUARANTOR_MNAME,  SECOND_GUARANTOR_SO_DO,SECOND_GUARANTOR_ADD1,   SECOND_GUARANTOR_ADD2,',
'                      SECOND_GUARANTOR_MOB,SECOND_GNTR_OCCUPATION, SECOND_GNTR_OCPTIME, SECOND_GNTR_DEGISNATION,SECOND_GNTR_AGE,',
'                      SECOND_GNTR_INCOME_YEARLY, SECOND_GNTR_COMPANY, SCEOND_GNTR_COMADRESS,SECOND_GNTR_COMPHONE,SCEOND_GNTR_RELATIONSHIP,',
'                      CUSTOMER_CODE,                      OPRSTAMP,                      TIMSTAMP,                      PARTYAD1,                      PARTYAD2,                      PARTYAD3 )',
'     VALUES (:COMPCODE,                  :P141_CUSTMRID,                     :P141_PARTYCDE,                      :P141_CUSTTYPE,                      :P141_PARTYTYP,',
'                                      :P141_IDENTIFY,                     :P141_BIRTHCRT,                    :P141_PASPRTNO,                        :P141_PRTYNAME,                      :P141_FATHERS_NAME,',
'                                      :P141_MOTHER_NAME,           :P141_MOBILENO,                      :P141_TELENOFF,                      :P141_PRESENT_ADDRESS1,         :P141_PRESENT_ADDRESS2,',
'                              :P141_PRESENT_ADDRESS3,           :P141_PTY_AGE,                      :P141_CUST_COMPANY,              :P141_CUST_DESIGNATION,          :P141_PTYCOM_ADDRESS, ',
'                              :P141_PTY_COM_PHONE,              :P141_PTY_BUSINESS_TYPE,     :P141_PTY_ITN_NUMBER,              :P141_TTRADELINCE_NO,             :P141_SOURCE_OF_FUND,',
'                               :P141_TELENRES,                       :P141_NOMINEE_NAME,                  :P141_OCCUPATION,              :P141_PERMANENT_ADDRESS1,      :P141_PERMANENT_ADDRESS2,',
'                      :P141_PERMANENT_ADDRESS3,       :P141_NOMINEE_RELATIONSHIP,             :P141_PEMAILID,                    :P141_ZONLCODE,                      :P141_AREACODE,',
'                      :P141_FIRST_GUARANTOR,        :P141_FIRST_GUARANTOR_SO_DO,  :P141_FIRST_GUARANTOR_MNAME, :P141_FIRST_GUARANTOR_ADD1,   :P141_FIRST_GUARANTOR_ADD2,',
'                     :P141_FIRST_GUARANTOR_MOB,:P141_FIRST_GNTR_OCCUPATION,   :P141_FIRST_GNTR_OCPTIME,    :P141_FIRST_GNTR_DEGISNATION,          :P141_FIRST_GNTR_AGE,',
'                      :P141_FIRST_GNTR_INCOME_YEARLY, :P141_FIRST_GNTR_COMPANY,  :P141_FIRST_GNTR_COMADRESS,:P141_FIRST_GNTR_COMPHONE,    :P141_FIRST_GNTR_RELATIONSHIP ,',
'                      :P141_SECOND_GUARANTOR, :P141_SECOND_GUARANTOR_MNAME,  :P141_SECOND_GUARANTOR_SO_DO,:P141_SECOND_GUARANTOR_ADD1,   :P141_SECOND_GUARANTOR_ADD2,',
'                      :P141_SECOND_GUARANTOR_MOB,:P141_SECOND_GNTR_OCCUPATION, :P141_SECOND_GNTR_OCPTIME, :P141_SECOND_GNTR_DEGISNATION,:P141_SECOND_GNTR_AGE,',
'                      :P141_SECOND_GNTR_INCOME_YEARLY, :P141_SECOND_GNTR_COMPANY, :P141_SCEOND_GNTR_COMADRESS,:P141_SECOND_GNTR_COMPHONE,:P141_SCEOND_GNTR_RELATIONSHIP, ',
'             :P141_CUSTMRID,             :APP_USER,             SYSDATE,             :P141_PRESENT_ADDRESS1,             :P141_PRESENT_ADDRESS2,             :P141_PRESENT_ADDRESS3);',
'end if;',
'----------Updata Customer Master---------',
'update nmcusmas set partycde=:P141_PARTYCDE',
'where compcode=:compcode',
'and custmrid=:P141_CUSTMRID;',
'----------Updata Customer Master---------',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39290869592115866)
,p_process_success_message=>'Successfully Insert ....&P141_CUSTMRID.||'' (''||&P141_PARTYCDE.||'')'''
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39324145068115881)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into nmenudtl'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'--------------Insert Into NMENUDTL----------------',
'Insert into NMENUDTL',
'   (COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, ',
'   SERLNUMB, PARTYCDE, CUSTMRID, RAISEDBY, COMMCODE, ',
'   ITEMCODE, HUOMCODE, LUOMCODE, ITEMRATE, COSTRATE, ',
'   SALERATE, BOOKCODE, BOOKDATE, BOOKAPRV, WARECODE, ',
'   COSTCODE, ITEMSERL, ORGNQNTY, APPRQNTY, MSFCAMNT, ',
'   CURRCODE, EXCGRATE, MSLCAMNT, OPRSTAMP, TIMSTAMP, ',
'   STATUSCD, ITEMDESC, ENUDTLPK, SMANCODE, PAYMENT_MODE, ',
'   INSTALLMENT_PAY,NO_OF_INSTALLMENT,POSIBLE_INST_START_DATE,',
'   INTEREST_AMOUNT,LOAN_AMOUNT,MONTHLY_INSTALLMENT,COLORCDE,DOWN_PAYMENT,',
'ENGINENO,refnumbr,refndate)',
' Values',
'   (:COMPCODE, ''BK'', 1,:P141_BKDOCNUM,trunc(sysdate), ',
'    ''000001'',:P141_PARTYCDE,:P141_CUSTMRID, :APP_USER, :P141_S_BRAND,',
'     :P141_S_VINNNO, :P141_LUOMCODE,  :P141_LUOMCODE, :P141_S_SALERATE, :P141_S_SALERATE, ',
'     :P141_S_SALERATE, :P141_BKDOCNUM, trunc(sysdate), ''Y'', :P141_BKWARCDE, ',
'     :P141_BKCOSTCDE, ''000001'', 1, 1, :P141_S_SALERATE,',
'      ''BDT'', 1, :P141_S_SALERATE, :APP_USER,SYSDATE, ',
'      ''APR'', :P141_S_ITEMDESC, :P141_ENUDTLPK,:P141_S_SMANCODE, :P141_PAYMENT_MODE, ',
'      :P141_INSTALLMENT_PAY,:P141_NO_OF_INSTALLMENT,:P141_POSIBLE_INST_START_DATE,',
'   :P141_INTEREST_AMOUNT,:P141_LOAN_AMOUNT,:P141_MONTHLY_INSTALLMENT,:P141_S_COLORDESC,:P141_DOWN_PAYMENT,',
'   :P141_S_ENGINENO,:P141_S_QUOTATION_NO,:P141_S_REF_DATE);',
'   --------------Insert Into NMENUDTL----------------',
'   ',
'   ',
'    ------------Update SYCOMPTY-------',
'         UPDATE sycompty',
'            SET first_guarantor = :P141_first_guarantor,',
'                first_guarantor_so_do = :P141_first_guarantor_so_do,',
'                first_guarantor_add1 = :P141_first_guarantor_add1,',
'                first_guarantor_add2 = :P141_first_guarantor_add2,',
'                first_guarantor_mob = :P141_first_guarantor_mob,',
'                second_guarantor = :P141_second_guarantor,',
'                second_guarantor_so_do = :P141_second_guarantor_so_do,',
'                second_guarantor_add1 = :P141_second_guarantor_add1,',
'                second_guarantor_add2 = :P141_second_guarantor_add2,',
'                second_guarantor_mob = :P141_second_guarantor_mob',
'          WHERE compcode = :COMPCODE AND partycde = :P141_PARTYCDE AND custmrid = :P141_CUSTMRID;',
'',
'         ------------Update SYCOMPTY-------',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(46275355279076305)
,p_process_success_message=>'Successfully Insert ....&P141_BKDOCNUM.||'' (''||&P141_ENUDTLPK.||'')'''
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39324548385115881)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from SYCOMPTY'
,p_attribute_02=>'SYCOMPTY'
,p_attribute_03=>'P141_CUSTMRID'
,p_attribute_04=>'CUSTMRID'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'COMPCODE= :COMPCODE',
'and custmrid=:P141_CUSTMRID'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39324912097115881)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Fetch Row from SYCOMPTY'
,p_attribute_02=>'NMENUDTL'
,p_attribute_03=>'P141_CUSTMRID'
,p_attribute_04=>'CUSTMRID'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'COMPCODE= :COMPCODE',
'and custmrid=:P141_CUSTMRID'))
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39325315931115881)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert into sycompty'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'nxtptycde number(10);',
'Begin',
'',
'----------------Party code generate--------',
'  nxtptycde := 0;',
'  ',
'  Select        max(to_number(substr(partycde,3,5))) ',
'  into             nxtptycde ',
'  from             sycompty',
'  where upper(partytyp)=upper(:P141_PARTYTYP)',
'  and compcode=:compcode;',
'  ',
'  If nxtptycde is NULL then',
'     nxtptycde := 0;',
'  End If;',
'  ',
'  nxtptycde      := nxtptycde + 1;',
'  :P141_PARTYCDE := upper(:P141_PARTYTYP)|| lpad(to_char(nxtptycde ),4,0);',
' -- :P141_grupcode := ''001'';',
' -----------------------customer id generate----------',
' 	:P141_CUSTMRID:= TO_CHAR (sysdate, ''rrrrmmdd'') || LPAD (seq_custmrid.nextval+1, 5, 0);',
'End ;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39290869592115866)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39321362965115879)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert into NMENUDTL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   newno       VARCHAR2 (20);',
'   v_enudtlpk number;',
'begin',
' docnumber_generation (:COMPCODE,',
'                                  ''NM'',',
'                                  ''BK'',',
'                                  1,',
'                                  sysdate,',
'                                  :P141_BKWARCDE,',
'                                  ''NM'',',
'                                  newno);',
'                                  ',
':P141_BKDOCNUM:=newno;',
'------------primary key generate----------',
'select max(ENUDTLPK)+1 into v_enudtlpk from nmenudtl',
'where COMPCODE=:COMPCODE',
'and DOCTTYPE=''BK''',
'and SUBTTYPE=1;',
'',
':P141_ENUDTLPK:=v_enudtlpk;',
'---------------------------------------',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(46275355279076305)
);
wwv_flow_api.component_end;
end;
/
