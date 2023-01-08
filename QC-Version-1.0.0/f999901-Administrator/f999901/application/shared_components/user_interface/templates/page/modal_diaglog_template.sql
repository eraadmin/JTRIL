prompt --application/shared_components/user_interface/templates/page/modal_diaglog_template
begin
--   Manifest
--     TEMPLATE: MODAL_DIAGLOG_TEMPLATE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11035953351523093)
,p_theme_id=>42
,p_name=>'Modal Diaglog Template'
,p_internal_name=>'MODAL_DIAGLOG_TEMPLATE'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*-------- CUSTOMIZE STATIC REGION CSS START --------*/',
'#RGN1{',
'	 background-color: &RGN_RGN1_BGCLR.;',
'	 height:&RGN_RGN1_HEIGHT.;  ',
'	 /*width:150px;',
'	 color:white;',
'	 font-weight: bold;',
'	 border: 1px solid darkblue;',
'	 border-radius:25px;',
'	 font-family: Arial Black; */',
'}',
'',
'#RGN2{',
'	 background-color: &RGN_RGN2_BGCLR.;',
'	 height:&RGN_RGN2_HEIGHT.; ',
'	 /*width:150px;',
'	 color:white;',
'	 font-weight: bold;',
'	 border: 1px solid darkblue;',
'	 border-radius:25px;',
'	 font-family: Arial Black; */',
'}',
'',
'#RGN3{',
'	 background-color: &RGN_RGN3_BGCLR.;',
'	 height:&RGN_RGN3_HEIGHT.;   ',
'	 /*width:150px;',
'	 color:white;',
'	 font-weight: bold;',
'	 border: 1px solid darkblue;',
'	 border-radius:25px;',
'	 font-family: Arial Black; */',
'}',
'',
'#RGN4{',
'	 background-color: &RGN_RGN4_BGCLR.;',
'	 height:&RGN_RGN4_HEIGHT.; ',
'	 /*width:150px;',
'	 color:white; ',
'	 font-weight: bold;',
'	 border: 1px solid darkblue;',
'	 border-radius:25px;',
'	 font-family: Arial Black; */',
'}',
'',
'#RGN5{',
'	 background-color: &RGN_RGN5_BGCLR.;',
'	 height:&RGN_RGN5_HEIGHT.; ',
'	 /*width:150px;',
'	 color:white;',
'	 font-weight: bold;',
'	 border: 1px solid darkblue;',
'	 border-radius:25px;',
'	 font-family: Arial Black; */',
'}',
'',
'#RGN6{',
'	 background-color: &RGN_RGN6_BGCLR.;',
'	 height:&RGN_RGN6_HEIGHT.;  ',
'	 /*width:150px;',
'	 color:white;',
'	 font-weight: bold;',
'	 border: 1px solid darkblue;',
'	 border-radius:25px;',
'	 font-family: Arial Black; */',
'}',
'/*-------- CUSTOMIZE STATIC REGION CSS CLOSE --------*/',
'',
'',
'/*------------ ITEM CONTAINER CSS START ------------------ */',
'.t-Form--stretchInputs .t-Form-fieldContainer .t-Form-field, .t-Form--stretchInputs .t-Form-fieldContainer .t-Form-inputContainer input[type=text], .t-Form--stretchInputs .t-Form-fieldContainer .t-Form-select, .t-Form--stretchInputs .t-Form-fieldCont'
||'ainer input.datepicker, .t-Form--stretchInputs .t-Form-fieldContainer input.password, .t-Form--stretchInputs .t-Form-fieldContainer input.popup_lov, .t-Form--stretchInputs .t-Form-fieldContainer input.text_field, .t-Form--stretchInputs .t-Form-fieldC'
||'ontainer select.selectlist, .t-Form--stretchInputs .t-Form-fieldContainer select.yes_no, .t-Form--stretchInputs .t-Form-fieldContainer span.display_only, .t-Form-fieldContainer--stretchInputs .t-Form-field, .t-Form-fieldContainer--stretchInputs .t-Fo'
||'rm-inputContainer input[type=text], .t-Form-fieldContainer--stretchInputs .t-Form-select, .t-Form-fieldContainer--stretchInputs input.datepicker, .t-Form-fieldContainer--stretchInputs input.password, .t-Form-fieldContainer--stretchInputs input.popup_'
||'lov, .t-Form-fieldContainer--stretchInputs input.text_field, .t-Form-fieldContainer--stretchInputs select.selectlist, .t-Form-fieldContainer--stretchInputs select.yes_no, .t-Form-fieldContainer--stretchInputs span.display_only {',
'     -webkit-flex: 1;',
'     -ms-flex: 1;',
'     flex: 1;',
'     min-width: 0;',
'     border-color:#a71f1f;',
'	 background-color:&ITEM_BCKGRND_CLR.;',
'	 color: &ITEM_FONT_CLR.;',
'	 display: inline-block;',
'     font-size: &ITEM_FONT_SIZE.;',
'     vertical-align: top;',
'     line-height: 1.6rem;',
'	 height: 20px;',
'     padding: .3rem;',
'     border: .1rem solid;',
'     border-radius: .4rem;',
'     max-width: 100%;',
'     transition: background-color .1s ease,border .1s ease;',
'}',
'/*------------ ITEM CONTAINER CSS CLOSE ------------------ */',
'',
'',
'/*------------ ITEM LABEL CSS START ------------------ */',
'.t-Form-label {',
'     padding: .1rem 0rem;',
'     line-height: 0rem;',
'     display: inline-block;',
'     font-size: 1.1rem;',
'	 font-family: Arial Narrow;',
'     margin-top: 0px;',
'     font-weight: bold;',
'}',
'/*------------ ITEM LABEL CSS CLOSE ------------------ */',
'',
'',
'/*------------ CUSTOMIZE BUTTON CSS START -------------------*/',
'#SUBMIT{',
'     width: &BTN_SBMT_WIDTH.;',
'     height: &BTN_SBMT_HIGHT.;',
'     color: &BTN_SBMT_CLR.;    /* BUTTON LABEL--*/',
'     /*background-color: #2c3e50;*/',
'     background: -webkit-linear-gradient(to left, &BTN_SBMT_BGCLRL., &BTN_SBMT_BGCLRR.);',
'     background: linear-gradient(to left, &BTN_SBMT_BGCLRL., &BTN_SBMT_BGCLRR.);',
'     /*font-weight: bold;*/',
'     border: &BTN_SBMT_BRDRCLR.;',
'     border-radius: &BTN_SBMT_BRDRRDS.;',
'     font-family: &BTN_SBMT_FNFMLY.;',
'}',
'',
'',
'#SAVE{',
'     width: &BTN_SAVE_WIDTH.;',
'     height: &BTN_SAVE_HIGHT.;',
'     color: &BTN_SAVE_CLR.; ',
'     /*background-color: #2c3e50;*/',
'     background: -webkit-linear-gradient(to left, &BTN_SAVE_BGCLRL., &BTN_SAVE_BGCLRR.);',
'     background: linear-gradient(to left, &BTN_SAVE_BGCLRL., &BTN_SAVE_BGCLRR.);',
'     /*font-weight: bold;*/',
'     border: &BTN_SAVE_BRDRCLR.;',
'     border-radius: &BTN_SAVE_BRDRRDS.;',
'     font-family: &BTN_SAVE_FNFMLY.;',
'}',
'',
'#BACK{',
'     width: &BTN_BACK_WIDTH.;',
'     height: &BTN_BACK_HIGHT.;',
'     color: &BTN_BACK_CLR.; ',
'     /*background-color: #2c3e50;*/',
'     background: -webkit-linear-gradient(to left, &BTN_BACK_BGCLRL., &BTN_BACK_BGCLRR.);',
'     background: linear-gradient(to left, &BTN_BACK_BGCLRL., &BTN_BACK_BGCLRR.);',
'     /*font-weight: bold;*/',
'     border: &BTN_BACK_BRDRCLR.;',
'     border-radius: &BTN_BACK_BRDRRDS.;',
'     font-family: &BTN_BACK_FNFMLY.;',
'}',
'',
'',
'#NEXT{',
'     width: &BTN_NEXT_WIDTH.;',
'     height: &BTN_NEXT_HIGHT.;',
'     color: &BTN_NEXT_CLR.; ',
'     /*background-color: #2c3e50;*/',
'     background: -webkit-linear-gradient(to left, &BTN_NEXT_BGCLRL., &BTN_NEXT_BGCLRR.);',
'     background: linear-gradient(to left, &BTN_NEXT_BGCLRL., &BTN_NEXT_BGCLRR.);',
'     /*font-weight: bold;*/',
'     border: &BTN_NEXT_BRDRCLR.;',
'     border-radius: &BTN_NEXT_BRDRRDS.;',
'     font-family: &BTN_NEXT_FNFMLY.;',
'}',
'',
'#REFRESH{',
'     width: &BTN_RFRS_WIDTH.;',
'     height: &BTN_RFRS_HIGHT.;',
'     color: &BTN_RFRS_CLR.; ',
'     /*background-color: #2c3e50;*/',
'     background: -webkit-linear-gradient(to left, &BTN_RFRS_BGCLRL., &BTN_RFRS_BGCLRR.);',
'     background: linear-gradient(to left, &BTN_RFRS_BGCLRL., &BTN_RFRS_BGCLRR.);',
'     /*font-weight: bold;*/',
'     border: &BTN_RFRS_BRDRCLR.;',
'     border-radius: &BTN_RFRS_BRDRRDS.;',
'     font-family: &BTN_RFRS_FNFMLY.;',
'}',
'',
'#PRINT{',
'     width: &BTN_PRNT_WIDTH.;',
'     height: &BTN_PRNT_HIGHT.;',
'     color: &BTN_PRNT_CLR.; ',
'     /*background-color: #2c3e50;*/',
'     background: -webkit-linear-gradient(to left, &BTN_PRNT_BGCLRL., &BTN_PRNT_BGCLRR.);',
'     background: linear-gradient(to left, &BTN_PRNT_BGCLRL., &BTN_PRNT_BGCLRR.);',
'     /*font-weight: bold;*/',
'     border: &BTN_PRNT_BRDRCLR.;',
'     border-radius: &BTN_PRNT_BRDRRDS.;',
'     font-family: &BTN_PRNT_FNFMLY.;',
'}',
'',
'#CANCEL{',
'     width: &BTN_CNCL_WIDTH.;',
'     height: &BTN_CNCL_HIGHT.;',
'     color: &BTN_CNCL_CLR.; ',
'     /*background-color: #2c3e50;*/',
'     background: -webkit-linear-gradient(to left, &BTN_CNCL_BGCLRL., &BTN_CNCL_BGCLRR.);',
'     background: linear-gradient(to left, &BTN_CNCL_BGCLRL., &BTN_CNCL_BGCLRR.);',
'     /*font-weight: bold;*/',
'     border: &BTN_CNCL_BRDRCLR.;',
'     border-radius: &BTN_CNCL_BRDRRDS.;',
'     font-family: &BTN_CNCL_FNFMLY.;',
'}',
'',
'#DELETE{',
'     width: &BTN_DELT_WIDTH.;',
'     height: &BTN_DELT_HIGHT.;',
'     color: &BTN_DELT_CLR.; ',
'     /*background-color: #2c3e50;*/',
'     background: -webkit-linear-gradient(to left, &BTN_DELT_BGCLRL., &BTN_DELT_BGCLRR.);',
'     background: linear-gradient(to left, &BTN_DELT_BGCLRL., &BTN_DELT_BGCLRR.);',
'     /*font-weight: bold;*/',
'     border: &BTN_DELT_BRDRCLR.;',
'     border-radius: &BTN_DELT_BRDRRDS.;',
'     font-family: &BTN_DELT_FNFMLY.;',
'}',
'/*------------ CUSTOMIZE BUTTON CSS CLOSE ----------------*/',
'',
'',
'',
'',
'',
'',
'.a-IRR-table {',
'    table-layout: auto;',
'    width: 100%;',
'    border: 1px solid &REPORT_BORDER_COLOR.;',
'    background-color: &BACKGROUND_COLOR. ;',
'    color: green;',
'}',
'.a-IRR-table td {',
'    padding: 0px 5px;',
'    background-color: &BACKGROUND_COLOR.;',
'    border: 1px solid &REPORT_TDBORDER_COLOR.;',
'}',
'.t-Region-headerItems--title {',
'    text-align: center;',
'    padding: .5rem 0.5rem;',
'    background-color: &REGION_HEADER_COLOR.;',
'    color: rgb(255, 255, 255);',
'}',
'.t-Region h2.t-Region-title {',
'    color: #fffcfc !important;',
'}',
'body .ui-dialog .ui-dialog-title {',
'    color: &BTN_RFRSHCLR.;',
'    float: right !important;',
'}',
'.t-Form-inputContainer, .t-Form-inputContainer.col, .t-Form-labelContainer, .t-Form-labelContainer.col {',
'    padding: .30rem 1.50rem .20rem 1.50rem;',
'    border-radius: 0px;',
'    color: &BTN_RFRSHCLR.;',
'    /*border-color: red;*/',
'}',
'',
'/*-----------region level CSS practice ----*/',
'.t-Region, .t-Region--noPadding, .t-Region--removeHeader, .t-Region--scrollBody, .t-Form--slimPadding{',
'color: red;',
'	background-color:lightyellow;',
'} ',
'/*------------region level css close ------*/',
'',
'',
'',
'.t-Form-checkboxLabel, .t-Form-inputContainer .checkbox_group label, .t-Form-inputContainer .radio_group label, .t-Form-label, .t-Form-radioLabel {',
'    color: #f5a105 !important;',
'}',
'',
'/*t-Button--icon t-Button--iconLeft*/',
'',
'.a-IG-header {',
'    padding: 0px 3px 0;',
'    border-bottom: 1px solid;',
'}',
'',
'.t-Region-body {',
'    padding: 3px 1px 3px 1px;',
'}',
'',
'',
'',
'',
'/*---hover test -----*/',
'',
'.t-Button--success:not(.t-Button--simple):not(.t-Button--hot), .t-Button--success:not(.t-Button--simple):not(.t-Button--hot).is-active, .t-Button--success:not(.t-Button--simple):not(.t-Button--hot):hover',
'{',
'    background-color: #2c3e50; ',
'    background: -webkit-linear-gradient(to left, #71B280, #134E5E);',
'    background: linear-gradient(to left, blue, red);',
'    font-weight: regular;',
'} ',
'',
'/*--------hover test close ---*/',
'/*',
'.a-Button',
'{',
'background-color:#4c2c50;',
'}*/',
'',
'',
'/* --Body Bacground Color-- */',
'.t-Body-main',
'{',
'    background: #ECE9E6;  ',
'    background: -webkit-linear-gradient(to right, #FFFFFF, #ECE9E6); ',
'    background: linear-gradient(to right, #FFFFFF, #ECE9E6); ',
'}',
'',
'',
'/* --Switch Button Color-- */',
'.apex-button-group input:checked+label {',
'    color: white;',
'    background: #71B280;',
'    background: -webkit-linear-gradient(to left, #71B280, #134E5E); ',
'    background: linear-gradient(to left, #71B280, #134E5E); ',
'}',
'',
'',
'/* --Skilbuilder Super LOV-- */',
'body .ui-button-icon-only .ui-button-text, body .ui-button-icons-only .ui-button-text {',
'    padding: .7em !important;',
'    text-indent: -9999999px;',
'}'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body" role="main">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_default_template_options=>'ui-dialog--stretch:t-Dialog--noPadding'
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11036399687523106)
,p_page_template_id=>wwv_flow_api.id(11035953351523093)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11036844860523107)
,p_page_template_id=>wwv_flow_api.id(11035953351523093)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11037368743523107)
,p_page_template_id=>wwv_flow_api.id(11035953351523093)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.component_end;
end;
/
