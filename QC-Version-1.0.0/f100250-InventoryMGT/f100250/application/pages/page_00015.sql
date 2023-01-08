prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Help'
,p_alias=>'HELP'
,p_step_title=>'Sample Database Application - Help'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'div.helpContainer{width:960px;margin:16px auto;zoom:1}',
'div.helpContainer:before,div.helpContainer:after{content:"\0020";display:block;height:0;overflow:hidden}',
'div.helpContainer:after{clear:both}',
'div.helpContainer div.helpSide{float:left;width:300px}',
'div.helpContainer div.helpSide h1.appNameHeader{position:relative;font:bold 22px/36px Arial,sans-serif;color:#404040;padding:0;margin:0}',
'div.helpContainer div.helpSide h1.appNameHeader img{display:block;position:absolute;left:0;top:0}',
'div.helpContainer div.helpMain{float:right;border-left:1px solid #EEE;width:632px;padding-left:16px}',
'div.helpContainer div.helpMain h2{font:bold 20px/32px Arial,sans-serif;color:#404040;margin:0 0 8px 0}',
'div.helpContainer div.helpMain h3{font:bold 16px/24px Arial,sans-serif;color:#404040;margin:0 0 8px 0}',
'div.helpContainer div.helpMain h4{font:bold 12px/16px Arial,sans-serif;color:#404040;margin:0 0 8px 0}',
'div.helpContainer div.helpMain p{font:normal 12px/16px Arial,sans-serif;color:#404040;margin:0 0 8px 0}',
'div.helpContainer div.helpMain ul{list-style:outside disc;margin:0 0 0 24px}',
'div.helpContainer div.helpMain ul li{font:normal 12px/20px Arial,sans-serif;color:#404040}',
'div.helpContainer div.helpMain .aboutApp,div.helpContainer div.helpMain .textRegion{border-bottom:1px solid #EEE;padding-bottom:16px;margin-bottom:16px}',
'</style>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'button.ui-button.ui-widget.ui-state-default.ui-corner-all.ui-button-icon-only.ui-dialog-titlebar-close {',
'visibility: visible !important;',
'}'))
,p_step_template=>wwv_flow_api.id(40282704356367053)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170816124654'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4177718269885149486)
,p_plug_name=>'Help Container'
,p_region_css_classes=>'helpContainer'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1029425192036972129)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4177718440444149486)
,p_plug_name=>'Help Side'
,p_parent_plug_id=>wwv_flow_api.id(4177718269885149486)
,p_region_css_classes=>'helpSide'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1029425192036972129)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.p(''<h1 class="appNameHeader">'');',
'  for c2 in (select LOGO, application_name from apex_applications where application_id = :APP_ID) loop',
'    if (instr(upper(c2.logo),''<'') = 0 and c2.logo is not null) then ',
'      sys.htp.p(replace(apex_escape.html(c2.LOGO),''TEXT:'',''''));',
'    else',
'      sys.htp.p(apex_escape.html(c2.application_name));',
'    end if;',
'  end loop;',
'sys.htp.p(''</h1>'');',
'sys.htp.p(''<ul class="vapList">'');',
'',
'  for c2 in (select version from apex_applications where application_id = :APP_ID) loop',
'    sys.htp.p('' <li>'');',
'    sys.htp.p(''   <span class="vLabel">App Version</span>'');',
'    sys.htp.p(''   <span class="vValue">''||apex_escape.html(c2.version)||''</span>'');',
'    sys.htp.p('' </li>'');',
'  end loop;',
'',
'sys.htp.p('' <li>'');',
'sys.htp.p(''   <span class="vLabel">Pages</span>'');',
'sys.htp.p(''   <span class="vValue">'');',
'  for c2 in (select to_char(PAGES,''999G999G990'') pages from apex_applications where application_id = :APP_ID) loop',
'    sys.htp.p(c2.pages);',
'  end loop;',
'sys.htp.p(''</span>'');',
'sys.htp.p('' </li>'');',
'',
'sys.htp.p('' <li>'');',
'sys.htp.p(''   <span class="vLabel">Vendor</span>'');',
'sys.htp.p(''   <span class="vValue">Oracle'');',
'sys.htp.p(''</span>'');',
'sys.htp.p('' </li>'');',
'sys.htp.p(''</ul>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4177718667213149492)
,p_plug_name=>'Help Content'
,p_parent_plug_id=>wwv_flow_api.id(4177718269885149486)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47585534000858182)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4177718860772149493)
,p_plug_name=>'Features'
,p_parent_plug_id=>wwv_flow_api.id(4177718667213149492)
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>Features</h2>',
'<p>',
'<ul>',
'<li>Interactive Reports and Standard "Classic" Reports</li>',
'<li>Data Display and Data Entry</li>',
'<li>Charts, Flash Charting and CSS Charting</li>',
'<li>Validations</li>',
'<li>Dynamic Actions (First page of Create Order Wizard)</li>',
'<li>Simple Search</li>',
'<li>Page Branching and Linking</li>',
'<li>Tagging</li>',
'<li>Wizards (see Enter New Order)</li>',
'<li>Tabs with Conditional Display of Administration Tab</li>',
'<li>File Upload and Download</li>',
'<li>List Controls (reference Reports tab)</li>',
'<li>Tree Control (reference Reports tab then Product Order Tree)</li>',
'<li>Map display (reference Reports tab)</li>',
'</ul>',
'</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4177719042455149493)
,p_plug_name=>'About this Application'
,p_parent_plug_id=>wwv_flow_api.id(4177718667213149492)
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>About This Application</h2>',
'<p>This application highlights many Oracle Application Express features and functions.  The application is a simplified sales tracking applications featuring customers, products and sales sample data.  Use this application to familiarize yourself wit'
||'h basic Oracle Application Express functionality.</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4177719241279149494)
,p_plug_name=>'Quick Start'
,p_parent_plug_id=>wwv_flow_api.id(4177718667213149492)
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<H2>Getting Started</h2>',
'<p>Run the application as a developer; at the bottom of the page will be buttons for viewing the page in the Application Express Application Builder. Click on the "Edit Page X" button to see how the pages are defined.</p>',
'<p>If you have questions, ask them on the <a href="https://forums.oracle.com/forums/forum.jspa?forumID=137">OTN Forum</a>.</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88295544419969215)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(4177718269885149486)
,p_button_name=>'P15_CANCEL'
,p_button_static_id=>'P15_CANCEL'
,p_button_action=>'PREVIOUS_PAGE'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(4177720153031149497)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'31'
);
wwv_flow_api.component_end;
end;
/
