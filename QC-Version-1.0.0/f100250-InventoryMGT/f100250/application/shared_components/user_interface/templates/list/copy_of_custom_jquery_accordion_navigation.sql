prompt --application/shared_components/user_interface/templates/list/copy_of_custom_jquery_accordion_navigation
begin
--   Manifest
--     REGION TEMPLATE: COPY_OF_CUSTOM_JQUERY_ACCORDION_NAVIGATION
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(82405901070630434)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="cstm-current">',
'  <a href="#LINK#" alt="#TEXT#">#TEXT#</a>',
'</h3>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3>',
'  <a href="#LINK#" alt="#TEXT#">#TEXT#</a>',
'</h3>'))
,p_list_template_name=>'Copy of Custom jQuery Accordion Navigation'
,p_internal_name=>'COPY_OF_CUSTOM_JQUERY_ACCORDION_NAVIGATION'
,p_theme_id=>111
,p_theme_class_id=>9
,p_list_template_before_rows=>'<div id="cstm-accordion">'
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'',
'<script src="#IMAGE_PREFIX#libraries/jquery-ui/1.8/ui/minified/jquery.ui.accordion.min.js" type="text/javascript"></script>',
'<script type="text/javascript">',
'  $(function() {',
'    $("#cstm-accordion").accordion({',
'      header: ''h3'',',
'      active: ''.cstm-current'',',
'      selectedClass: ''active'',',
'      autoHeight: false,',
'      animated: ''bounceslide''',
'    });',
'  });',
'</script>'))
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'  <a href="#LINK#" alt="#TEXT#">',
'    <img src="#IMAGE#" #IMAGE_ATTR# />',
'    #TEXT#',
'  </a>',
'</div>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'  <a href="#LINK#" alt="#TEXT#">',
'    <img src="#IMAGE#" #IMAGE_ATTR# />',
'    #TEXT#',
'  </a>',
'</div>'))
);
wwv_flow_api.component_end;
end;
/
