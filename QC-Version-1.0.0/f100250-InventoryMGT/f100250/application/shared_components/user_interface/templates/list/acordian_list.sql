prompt --application/shared_components/user_interface/templates/list/acordian_list
begin
--   Manifest
--     REGION TEMPLATE: ACORDIAN_LIST
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
 p_id=>wwv_flow_api.id(82388782752367495)
,p_list_template_current=>'<div class="is-lvl1-current"><span>#TEXT#</span></div>'
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div><span>#TEXT#</span>',
'</div>'))
,p_list_template_name=>'Acordian List'
,p_internal_name=>'ACORDIAN_LIST'
,p_theme_id=>111
,p_theme_class_id=>10
,p_list_template_before_rows=>'<div id="accordion-nav"> '
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
' </div>',
' ',
'<script type="text/javascript">',
'  $("div#accordion-nav div span").click(function() {',
'    $(this).parent().siblings().children("ul").slideUp(300);',
'    $(this).siblings("ul").slideToggle(300);',
'  });',
'</script>'))
,p_after_sub_list=>'</ul></div>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#" alt="#TEXT#" class="is-lvl2-current">',
'    <img src="#IMAGE#" #IMAGE_ATTR# />',
'    #TEXT#',
'  </a>',
'</li>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#" alt="#TEXT#">',
'    <img src="#IMAGE#" #IMAGE_ATTR# />',
'    #TEXT#',
'  </a>',
'</li>'))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="is-lvl1-current"><span>#TEXT#</span>',
'<ul>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div><span>#TEXT#</span>',
'<ul style="display:none;">'))
);
wwv_flow_api.component_end;
end;
/
