prompt --application/shared_components/user_interface/templates/page/master_detail
begin
--   Manifest
--     TEMPLATE: MASTER_DETAIL
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(47556057873858111)
,p_theme_id=>111
,p_name=>'Master Detail'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<!--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>-->',
'<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>',
'<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>',
'<!--<script src="#IMAGE_PREFIX#libraries/jquery/1.7.1/jquery-1.7.1.min.js" type="text/javascript"></script>-->',
'<!--<script src="#IMAGE_PREFIX#libraries/jquery-ui/1.8.14/ui/minified/jquery-ui-1.8.14.custom.min.js" type="text/javascript"></script>-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #APEX_JAVASCRIPT#',
'  #TEMPLATE_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #PAGE_JAVASCRIPT#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'    <script language="JavaScript" type="text/javascript">',
'function GetDatabaseData(){ //saves all rows of desired DataBase tables in sqlArr',
'  var adOpenDynamic=2;',
'  var adLockOptimistic=3;',
'  sqlArr=new Array();',
'    alert(adLockOptimistic);',
'  try{',
'    var rs = new ActiveXObject("ADODB.Recordset");',
'    rs.open(''select sysdate from dual'', conn, adOpenDynamic, adLockOptimistic);',
'    var j=0;var tArr=[];',
'    if(!rs.bof){rs.MoveFirst();}',
'    for(var i=0;i<rs.fields.count;++i){tarr[i]>    sqlArr[j]=tArr;j++;',
'    if(!rs.eof){rs.MoveNext();}',
'    while(!rs.eof){',
'      tArr=[];',
'      for(var i=0;i<rs.fields.count;++i){>',
'        tArr[i]=rs.fields(i).value;',
'        if(tArr[i]!=tArr[i]+''''){tArr[i]=''<object>'';}',
'        if(tArr[i]==''null''){tArr[i]=''-'';}',
'      }',
'      sqlArr[j]=tArr;j++;',
'      rs.MoveNext();',
'    }',
'    rs.close();//record set',
'  }',
'  catch(err01){',
'    conn.close();',
'    conn=null;// leave DB',
'    Some error handling...',
'  }',
'}',
'</script>',
'    <script>',
'       ',
'    $(document).ready(function () {',
'',
'        // ANIMATEDLY DISPLAY THE NOTIFICATION COUNTER.',
'        $(''#noti_Counter'')',
'            .css({ opacity: 2 })',
'            .text(&ALERTNO1.)              // ADD DYNAMIC VALUE (YOU CAN EXTRACT DATA FROM DATABASE OR XML).',
'            .css({ top: ''-10px'' })',
'            .animate({ top: ''-2px'', opacity: 1 }, 500);',
'',
'        $(''#noti_Button'').click(function () {',
'',
'            // TOGGLE (SHOW OR HIDE) NOTIFICATION WINDOW.',
'            $(''#notifications'').fadeToggle(''fast'', ''linear'', function () {',
'                if ($(''#notifications'').is('':hidden'')) {',
'                    $(''#noti_Button'').css(''background-color'', ''#2E467C'');',
'                }',
'                else $(''#noti_Button'').css(''background-color'', ''#FFF'');        // CHANGE BACKGROUND COLOR OF THE BUTTON.',
'            });',
'',
'            $(''#noti_Counter'').fadeOut(''slow'');                 // HIDE THE COUNTER.',
'',
'            return false;',
'        });',
'',
'        // HIDE NOTIFICATIONS WHEN CLICKED ANYWHERE ON THE PAGE.',
'        $(document).click(function () {',
'            $(''#notifications'').hide();',
'',
'            // CHECK IF NOTIFICATION COUNTER IS HIDDEN.',
'            if ($(''#noti_Counter'').is('':hidden'')) {',
'                // CHANGE BACKGROUND COLOR OF THE BUTTON.',
'                $(''#noti_Button'').css(''background-color'', ''#2E467C'');',
'            }',
'        });',
'',
'        $(''#notifications'').click(function () {',
'            return false;       // DO NOTHING WHEN CONTAINER IS CLICKED.',
'        });',
'    });',
'        ',
'       ',
'</script>',
'  <style>',
'     #noti_Container {',
'        position:relative;',
'    }',
'       ',
'    /* A CIRCLE LIKE BUTTON IN THE TOP MENU. */',
'    #noti_Button {',
'        width:20px;',
'        height:20px;',
'        line-height:22px;',
'        border-radius:50%;',
'        -moz-border-radius:50%; ',
'        -webkit-border-radius:50%;',
'        background:#FFF;',
'        margin:-3px 10px 0 10px;',
'        cursor:pointer;',
'        float:right;',
'    }',
'        ',
'    /* THE POPULAR RED NOTIFICATIONS COUNTER. */',
'    #noti_Counter {',
'        display:block;',
'        position:absolute;',
'        background:#E1141E;',
'        color:#FFF;',
'        font-size:12px;',
'        font-weight:normal;',
'        padding:1px 3px;',
'        margin:-8px 0 0 25px;',
'        border-radius:2px;',
'        -moz-border-radius:2px; ',
'        -webkit-border-radius:2px;',
'        z-index:1;',
'    }',
'        ',
'    /* THE NOTIFICAIONS WINDOW. THIS REMAINS HIDDEN WHEN THE PAGE LOADS. */',
'    #notifications {',
'        display:none;',
'        width:430px;',
'        position:absolute;',
'        top:32px;',
'        left:702px;',
'        background:#FFF;',
'        border:solid 1px rgba(100, 100, 100, .20);',
'        -webkit-box-shadow:0 3px 8px rgba(0, 0, 0, .20);',
'        z-index: 1;',
'        opacity: 1 ;',
'    }',
'    /* AN ARROW LIKE STRUCTURE JUST OVER THE NOTIFICATIONS WINDOW */',
'    #notifications:before {         ',
'        content: '''';',
'        display:block;',
'        width:0;',
'        height:0;',
'        color:transparent;',
'        border:10px solid #CCC;',
'        border-color:transparent transparent #FFF;',
'        margin-top:-20px;',
'        margin-left:360px;',
'        border-color: #e69c35;',
'        opacity: 1 ;',
'    }',
'       h3 {',
'        display:block;',
'        color:#333; ',
'        background:#FFF;',
'        font-weight:bold;',
'        font-size:13px;    ',
'        padding:8px;',
'        margin:0;',
'        border-bottom:solid 1px rgba(100, 100, 100, .30);',
'    }',
'        ',
'    .seeAll {',
'        background:#F6F7F8;',
'        padding:8px;',
'        font-size:12px;',
'        font-weight:bold;',
'        border-top:solid 1px rgba(100, 100, 100, .30);',
'        text-align:center;',
'    }',
'    .seeAll a {',
'        color:#3b5998;',
'    }',
'    .seeAll a:hover {',
'        background:#F6F7F8;',
'        color:#3b5998;',
'        text-decoration:underline;',
'    }',
'    </style>  ',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding"style="height:28px;">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'     <!-- <a href="#HOME_LINK#" class="t-Header-logo-link"style="max-height: 6rem;height:3rem;">#LOGO#</a>-->',
'        ',
'        <div id="switch"; style="text-align:right; height:20px; position:absolute;position: absolute; top: 5px;margin-left: 108px; font-size:12px;color:white; font-weight:bold;">',
'    <a  style="cursor: pointer;"><font color=''white''><u>Switch Company</u></font></a>',
'        </div>',
' <div>',
'     <div id="noti_Container" style="float:left;text-align:right; height:20px; position:absolute;position: absolute; top: 11px;left: 91%;margin-left: -155px; font-size:12px;color:white; font-weight:bold;">',
'         <div id="noti_Counter"></div>   <!--SHOW NOTIFICATIONS COUNT.--> ',
'                <!--A CIRCLE LIKE BUTTON TO DISPLAY NOTIFICATION DROPDOWN.-->',
'         <div id="noti_Button"><img src="#IMAGE_PREFIX#alert.gif" style="width:20px;width:20px;"/></div>     ',
'     </div>',
'<div style="float:right;text-align:right; height:20px; position:absolute;position: absolute; top: 5px;left: 110%;margin-left: -200px; font-size:12px;color:white; font-weight:bold;">',
'    <a  href="apex_authentication.logout?p_app_id=&APPLOGOUT_ID. &p_session_id=12726700067347" ><font color=''white''>Logout</font></a>',
'</div>',
'        </div>       ',
'',
' ',
'    ',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'           <!--THE NOTIFICAIONS DROPDOWN BOX.-->',
'                <div id="notifications">',
'                    <h3>Notifications</h3>',
'                    <div style="height:300px;margin-top: -16px;" id="notificationsbody" onload = "show1()"><script type = "text/javascript">',
'            function show() {',
'              /* var ajaxRequest = new htmldb_Get(null, null, ''APPLICATION_PROCESS=pendingjob'');',
'                ',
'                var ajaxResult = ajaxRequest.get();',
'               /* for (var i =0; i <ajaxResult.length; i++) {',
'                     alert(ajaxResult.length);',
'                   // themessage += ajaxResult[i]+ "<br>";',
'                    document.getElementById("notifications").innerHTML = ajaxResult;',
'                }*/',
'              //   document.getElementById("notifications").innerHTML = ajaxResult;',
'              ',
'             //   var myArr = new Array();',
'               // var nowhrs = new Date().getHours();',
'              //  var nowmins = new Date().getMinutes();',
'              //  var hrsmins = nowhrs + (nowmins); // decimals of an hour',
'                //alert(hrsmins);',
'               /* var schedule =[[''"The world is filled with willing people...Some willing to work, the rest willing to let them."   - Robert Frost'',[9],[59]],',
'                                [''"I never did anything by accident, nor did any of my inventions come by accident;  they came by work."  - Thomas A. Edison'',[10],[59]],',
'                                [''"Success is the ability to go from failure to failure without losing your enthusiasm."  - Winston Churchill'',[11],[59]],',
'                                [''"If the power to do hard work is not a skill, its the best possible substitute for it." --James A. Garfield'',[12],[59]],',
'                                [''"Begin where you are; work where you are; the hour which you are now wasting, dreaming of some far off success, may be crowded with grand possibilities." - Orison Swett Marden'',[13],[59]],',
'                                [''"He that would have fruit must climb the tree." - Thomas Fuller'',[14],[59]],',
'                                [''"Making a success of the job at hand is the best step toward the kind you want. -- Bernard M. Baruch'',[15],[59]],',
'                                [''"Every job is a self-portrait of the person who did it. Autograph your work with excellence."'',[16],[59]],',
'                                [''"Anyone who has never made a mistake has never tried anything new." - Albert Einstein'',[17],[59]],',
'                                [''"He that would have fruit must climb the tree." - Thomas Fuller'',[18],[59]],',
'                                [''"Knowing is not enough; we must apply. Willing is not enough; we must do." - Johann Wolfgang Von Goethe'',[19],[59]]]',
'                var themessage = "";*/',
'                ',
'               // alert(hrsmins);',
'               // alert(schedule[i][1]);',
'            /*    for (var i =0; i <schedule.length; i++) {if ((nowhrs == schedule[i][1]) && (nowmins < schedule[i][2])) {',
'                    // alert(schedule[i][1]);',
'                    themessage += schedule[i][0] + "<br>";',
'                    document.getElementById("notifications").innerHTML = themessage;',
'                }}*/',
'                 setTimeout(show1, 10000);',
'            }',
'          // show(); // Start task checking ',
'           // hideAfterSomeTime();',
'    </script></div>',
'                   <!-- <div class="seeAll"><a href="#" >See All</a></div>-->',
'                </div>',
'      </div>',
'      <div class="t-Body-contentInner"style="margin-left:35px;">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer"style="display:none;">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'          <div>',
'              ahhjjad',
'          </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'       ',
'      <div><span style="margin-left:0px;color:blue;">Powerd By: ERA Infotech Ltd.</span><br><img src="#WORKSPACE_IMAGES#orbits-2.jpg" style="width:100%;height:50px;"></div>  ',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>',
''))
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
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user">456</span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#">456</span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
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
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'800'
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47556300531858111)
,p_page_template_id=>wwv_flow_api.id(47556057873858111)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47556593361858111)
,p_page_template_id=>wwv_flow_api.id(47556057873858111)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47556965771858111)
,p_page_template_id=>wwv_flow_api.id(47556057873858111)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47557257416858111)
,p_page_template_id=>wwv_flow_api.id(47556057873858111)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47557482527858111)
,p_page_template_id=>wwv_flow_api.id(47556057873858111)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47557809540858112)
,p_page_template_id=>wwv_flow_api.id(47556057873858111)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47558143011858112)
,p_page_template_id=>wwv_flow_api.id(47556057873858111)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47558419865858112)
,p_page_template_id=>wwv_flow_api.id(47556057873858111)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47558763916858112)
,p_page_template_id=>wwv_flow_api.id(47556057873858111)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.component_end;
end;
/
