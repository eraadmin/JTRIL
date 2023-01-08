prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
--   Manifest
--     TEMPLATE: MODAL_DIALOG
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(98602463874128446)
,p_theme_id=>42
,p_name=>'Copy of Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-table {',
'    table-layout: auto;',
'    width: 100%;',
'    border: 1px solid &REPORT_BORDER_COLOR.;',
'    background-color: &BACKGROUND_COLOR. ;',
'    color: green;',
'}',
'.a-IRR-table td {',
'    padding:0px !important;',
'    line-height: 1.4rem !important;',
'    background-color: &BACKGROUND_COLOR.;',
'    border: 1px solid &REPORT_TDBORDER_COLOR.;',
'}',
'.a-IRR-header {',
'    line-height: 1.0rem !important;',
'    margin :1px !important;',
'    padding :1px !important;',
'    background-color: &REPORT_BORDER_COLOR. !important;',
'    border-top: 1px solid white !important;',
'    box-shadow: inset 1px 0 0 0 #205aa2 !important;',
'}',
'.t-Region-headerItems--title {',
'    text-align: center !important;',
'    padding: 0.5rem 0.5rem !important;',
'    background-color: &REGION_HEADER_COLOR. !important;',
'     color: rgb(255, 255, 255) !important;',
'}',
'.t-Region h2.t-Region-title {',
'    color: #fffcfc !important;',
'    height: 15px !important;',
'}',
'body .ui-dialog .ui-dialog-title {',
'    color: #dc1a1a !important;',
'    float: right !important;',
'}',
'.t-Form-inputContainer, .t-Form-inputContainer.col, .t-Form-labelContainer, .t-Form-labelContainer.col {',
'    padding: 0.2rem;',
'    border-radius: 0px;',
'    color: #1738e0;',
'    border-color: blue;',
'}',
'.t-Form--stretchInputs .t-Form-fieldContainer .t-Form-field, .t-Form--stretchInputs .t-Form-fieldContainer .t-Form-inputContainer input[type=text], .t-Form--stretchInputs .t-Form-fieldContainer .t-Form-select, .t-Form--stretchInputs .t-Form-fieldCont'
||'ainer input.datepicker, .t-Form--stretchInputs .t-Form-fieldContainer input.password, .t-Form--stretchInputs .t-Form-fieldContainer input.popup_lov, .t-Form--stretchInputs .t-Form-fieldContainer input.text_field, .t-Form--stretchInputs .t-Form-fieldC'
||'ontainer select.selectlist, .t-Form--stretchInputs .t-Form-fieldContainer select.yes_no, .t-Form--stretchInputs .t-Form-fieldContainer span.display_only, .t-Form-fieldContainer--stretchInputs .t-Form-field, .t-Form-fieldContainer--stretchInputs .t-Fo'
||'rm-inputContainer input[type=text], .t-Form-fieldContainer--stretchInputs .t-Form-select, .t-Form-fieldContainer--stretchInputs input.datepicker, .t-Form-fieldContainer--stretchInputs input.password, .t-Form-fieldContainer--stretchInputs input.popup_'
||'lov, .t-Form-fieldContainer--stretchInputs input.text_field, .t-Form-fieldContainer--stretchInputs select.selectlist, .t-Form-fieldContainer--stretchInputs select.yes_no, .t-Form-fieldContainer--stretchInputs span.display_only {',
'    -webkit-flex: 1;',
'    -ms-flex: 1;',
'    flex: 1;',
'    min-width: 0;',
'    border-color: #1f68a7;',
'}',
'.t-Form-label {',
'    padding: .0rem 0;',
'    line-height: 1.0rem;',
'    display: inline-block;',
'    font-size: 1.1rem;',
'    margin-top: 0px;',
'    font-weight: bold;',
'}',
'.t-Form-checkboxLabel, .t-Form-inputContainer .checkbox_group label, .t-Form-inputContainer .radio_group label, .t-Form-label, .t-Form-radioLabel {',
'    color: #1f68a7 !important;',
'}',
'',
'.a-IG-header {',
'    padding: 0px 1px 0;',
'    border-bottom: 1px solid;',
'}',
'',
'.t-Region-body {',
'    padding: 1px 1px 1px 1px;',
'}',
'',
'.ui-dialog-title{',
'    font-weight: bold !important;',
'    font-size: 15px !important;',
'    text-align: center !important;',
'    color: #2577cf !important;',
'    font-family: cursive !important;',
'}',
'.ui-dialog-titlebar.ui-widget-header.ui-corner-all.ui-helper-clearfix{',
'    height: 40px !important;',
'    background-color: rgb(218,165,32) !important;',
'}'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->   ',
'<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>',
'<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>',
'<head>',
'  <meta charset="utf-8">  ',
'  <title style="line-height: 12px;font-size: 1.3rem;align:&PAGETITLE_ALIGN.;">#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD# >',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="&PAGE_TITLE." style="line-height: 12px;font-size: 1.3rem;">',
'  <div class="t-Dialog-wrapper" style="line-height: 12px;font-size: 1.3rem;">',
'    <div class="t-Dialog-header" style="line-height: 12px;font-size: 1.3rem;">',
'      #REGION_POSITION_01#',
'    </div>',
'     ',
'     <!-- <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'       ',
'      <div><span style="margin-left:0px;color:blue;">Powerd By: ERA Infotech Ltd.</span><br><img src="#WORKSPACE_IMAGES#orbits-2.jpg" style="width:100%;height:50px;"></div>  ',
'    </div>',
'  </div>',
'</div>-->',
'    <div class="t-Dialog-body" style="line-height: 12px;font-size: 1.3rem;" >',
'         ',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#',
'      ',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
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
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert"style="float: left;margin-right: 383px;">',
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
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>true
,p_grid_default_label_col_span=>3
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
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'700'
,p_dialog_width=>'100%'
,p_dialog_max_width=>'1250'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(98602929215128448)
,p_page_template_id=>wwv_flow_api.id(98602463874128446)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>20
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(98603490759128449)
,p_page_template_id=>wwv_flow_api.id(98602463874128446)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(98603955491128449)
,p_page_template_id=>wwv_flow_api.id(98602463874128446)
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
