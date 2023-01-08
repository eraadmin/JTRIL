prompt --application/shared_components/user_interface/templates/report/my_badge_list
begin
--   Manifest
--     ROW TEMPLATE: MY_BADGE_LIST
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(110230865794926706)
,p_row_template_name=>'MY BADGE LIST'
,p_internal_name=>'MY_BADGE_LIST'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <div class="javainhand #CONTAINER_CLASS#">    ',
'<div class="circle-tile ">',
'        <a href="#LINK#"><div class="circle-tile-heading #CLASS1#"><i class="fa #ICON_CLASS#"></i></div></a>',
'        <div class="circle-tile-content #CLASS2#">',
'          <div class="circle-tile-description text-faded">#TITLE#</div>',
'          <div class="circle-tile-number text-faded ">#DATA#</div>',
'          <a class="circle-tile-footer" href="#LINK#">More Info<i class="fa fa fa-chevron-circle-right"></i></a>',
'        </div>',
'      </div>',
'</div>'))
,p_row_template_after_rows=>' '
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
