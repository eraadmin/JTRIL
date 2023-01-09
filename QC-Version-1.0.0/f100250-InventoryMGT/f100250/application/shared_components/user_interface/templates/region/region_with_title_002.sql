prompt --application/shared_components/user_interface/templates/region/region_with_title_002
begin
--   Manifest
--     REGION TEMPLATE: REGION_WITH_TITLE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1733913537140258391)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" data-theme="b" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'#SUB_REGIONS#',
'#EDIT#',
'</div>'))
,p_page_plug_template_name=>'Region (With Title)'
,p_internal_name=>'REGION_WITH_TITLE'
,p_theme_id=>150
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(2133379245396089)
,p_plug_template_id=>wwv_flow_api.id(1733913537140258391)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(2133462652396089)
,p_plug_template_id=>wwv_flow_api.id(1733913537140258391)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(2133515516396089)
,p_plug_template_id=>wwv_flow_api.id(1733913537140258391)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.component_end;
end;
/
