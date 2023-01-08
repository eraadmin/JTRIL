prompt --application/shared_components/user_interface/templates/list/responsive_link_list
begin
--   Manifest
--     REGION TEMPLATE: RESPONSIVE_LINK_LIST
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
 p_id=>wwv_flow_api.id(46213606936313956)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="selected"><a href="#LINK#" alt="#TEXT#"><u>#TEXT#</u></a></h3>',
'<div></div>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3><a href="#LINK#" alt="#TEXT#" style="text-decoration:none;">#TEXT#</a></h3>',
'<div></div>'))
,p_list_template_name=>'Responsive Link List'
,p_internal_name=>'RESPONSIVE_LINK_LIST'
,p_theme_id=>17
,p_theme_class_id=>21
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="accordion">',
'</div>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<script type="text/javascript">',
'  $(function(){',
'      $(''#accordion'').accordion({',
'          //event:''mouseover'',',
'          header:''h3'',',
'          active:''.selected'',',
'          selectedClass:''active''',
'      });',
'  });',
'</script>'))
,p_sub_list_item_current=>'<div style="margin:1px;"><a href="#LINK#" alt="#TEXT#"><img src="#IMAGE#" #image_attr#="" style="vertical-align:middle;margin:2px;margin-right:4px;"><u>#TEXT#</u></a></div>'
,p_sub_list_item_noncurrent=>'<div style="margin:1px;"><a href="#LINK#" alt="#TEXT#" style="text-decoration:none;"><img src="#IMAGE#" #image_attr#="" style="vertical-align:middle;margin:2px;margin-right:4px;">#TEXT#</a></div>'
);
wwv_flow_api.component_end;
end;
/
