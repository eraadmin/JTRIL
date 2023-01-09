prompt --application/shared_components/user_interface/templates/page/copy_of_public
begin
--   Manifest
--     TEMPLATE: COPY_OF_PUBLIC
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
 p_id=>wwv_flow_api.id(114933809498495744)
,p_theme_id=>111
,p_name=>'Copy of Public'
,p_internal_name=>'COPY_OF_PUBLIC'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_14/theme_4_0.css" type="text/css" />',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'<style type="text/css">',
'.lnk a:link {color:#0000FF; text-decoration:underline;}    /* unvisited link */',
'.lnk a:visited {color:green; text-decoration:underline;} /* visited link */',
'.lnk a:hover {color:#00CC99; text-decoration:underline;}   /* mouse over link */',
'.lnk a:active {color:red; text-decoration:underline;}  /* selected link */',
'</style>',
'</head>',
'',
'<body #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%" >',
'<tr>',
'<td id="t14Logo" valign="top"><a href=#HOME_LINK#>#LOGO#</a><br />#REGION_POSITION_06#</td>',
'<td id="t14HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#  ',
'  <table cellspacing="3" align="center">',
'   <tr>',
'    <td style="color:#2A5C9B; font-size:22px; font-weight:bold; text-align:center;">',
'       &COMPANYNAME.',
'    </td>  ',
'    <td style="font-size:22px; font-weight:bold; text-align:center;" width="80px">',
'    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
||'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;',
'    </td>',
'   <tr>',
'    <td style="color:#2A5C9B; font-size:12px; text-align:center;">',
'       &COMPANYADDRESS.',
'    </td>',
'   <tr>',
'    <td style="text-align:center; color:#0000FF;"  class="lnk">    ',
'     <a href="http://www.erainfotechbd.com/"; target="_blank" >',
'       &COMPANYWEB.',
'      </a>',
'    </td>',
'   </tr>',
'  </table>',
'</td>',
'<td id="t14NavBar" valign="top" style="color:#2A5C9B;"> <br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'',
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%" id="t14Tabs">',
'<tr><td></td></tr>',
'</table>',
'',
'<td>#REGION_POSITION_01#</td>',
'',
'',
'<br />',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t14PageBody"  width="100%" height="70%">',
'<td valign="top" id="t14ContentBody" height="100%">',
'<table align="center" summary="" cellpadding="0" width="40%" cellspacing="5" border="0">',
'<tr>',
'<td valign="top" id="t14ContentMiddle" ><div id="t14Messages" >#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##BODY#</div></td>',
'</tr>',
'<td align="left">#REGION_POSITION_03#</td>',
'<td align="center">#REGION_POSITION_02# </td>',
'<td align="right">#REGION_POSITION_04#</td>',
'<tr>',
'</table></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%" id="t14PageFooter" >',
'<tr>',
'<td id="t14Left" valign="top"><span id="t14UserPrompt"></span></td>',
'<td id="t14Center" valign="top"><span id="t14Customize">#CUSTOMIZE# #APP_VERSION#</span></td>',
'<td id="t14Right" valign="top" align="right">#REGION_POSITION_05#</td>',
'</tr>',
'</table>',
'#FORM_CLOSE##DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>'<div class="t14success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t14notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'<div id="t14NavigationBar">#BAR_BODY#</div>'
,p_navbar_entry=>'<a href="#LINK#" class="t14NavigationBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1072197321395876)
,p_page_template_id=>wwv_flow_api.id(114933809498495744)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1072282104395876)
,p_page_template_id=>wwv_flow_api.id(114933809498495744)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1072393565395876)
,p_page_template_id=>wwv_flow_api.id(114933809498495744)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1072457733395876)
,p_page_template_id=>wwv_flow_api.id(114933809498495744)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1072507360395876)
,p_page_template_id=>wwv_flow_api.id(114933809498495744)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1072695159395876)
,p_page_template_id=>wwv_flow_api.id(114933809498495744)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1072702663395876)
,p_page_template_id=>wwv_flow_api.id(114933809498495744)
,p_name=>'Page Position 6'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1072834153395876)
,p_page_template_id=>wwv_flow_api.id(114933809498495744)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1072903985395876)
,p_page_template_id=>wwv_flow_api.id(114933809498495744)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.component_end;
end;
/
