prompt --application/shared_components/user_interface/templates/region/jqueryui_accordion
begin
--   Manifest
--     REGION TEMPLATE: JQUERYUI_ACCORDION
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
 p_id=>wwv_flow_api.id(82385597126275405)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'#BODY##SUB_REGION_HEADERS##SUB_REGIONS#',
'</div>',
'<link rel="stylesheet" href="#JQUERYUI_DIRECTORY#themes/base/jquery.ui.accordion.css" type="text/css" />',
'',
'<script src="#JQUERYUI_DIRECTORY#ui/minified/jquery.ui.accordion.min.js" type="text/javascript"></script>',
'',
'<script type="text/javascript">',
'apex.jQuery(function() {',
'  apex.jQuery("##REGION_STATIC_ID#").accordion();',
'});',
'</script>'))
,p_sub_plug_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3><a href="#">#SUB_REGION_TITLE#</a></h3>',
'<div>#SUB_REGION#</div>'))
,p_page_plug_template_name=>'jQueryUI Accordion'
,p_internal_name=>'JQUERYUI_ACCORDION'
,p_theme_id=>111
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(2051890622396084)
,p_plug_template_id=>wwv_flow_api.id(82385597126275405)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(2051943330396084)
,p_plug_template_id=>wwv_flow_api.id(82385597126275405)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.component_end;
end;
/
