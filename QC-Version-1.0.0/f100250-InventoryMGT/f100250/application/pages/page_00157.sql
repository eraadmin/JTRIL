prompt --application/pages/page_00157
begin
--   Manifest
--     PAGE: 00157
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>157
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Accordion navigation menu'
,p_step_title=>'Accordion navigation menu'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script src="#JQUERYUI_DIRECTORY#ui/minified/jquery.ui.accordion.min.js" type="text/javascript"></script>',
'<script type="text/javascript">',
'apex.jQuery(function() {',
'  apex.jQuery("#123").accordion();',
'});',
'</script>',
''))
,p_css_file_urls=>'#WORKSPACE_IMAGES#accordion-nav.css'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140737'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(82428380503924015)
,p_plug_name=>'Accordion navigation menu'
,p_region_name=>'123'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60228630206866564)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_api.id(82428852436924016)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(82405152879630410)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<i>A jQuery Accordion-like navigation menu. <a href="http://apexplained.wordpress.com/2012/08/12/creating-a-jquery-accordion-like-navigation-menu/" target="_blank">Go to blog post ></a></i>',
'<br/><br/>'))
);
wwv_flow_api.component_end;
end;
/
