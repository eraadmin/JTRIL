prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_tab_set=>'TS1'
,p_name=>'Product Order Tree'
,p_step_title=>'Sample Database Application - Product Order Tree'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_step_template=>wwv_flow_api.id(47564929163858117)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140736'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7576222996318304555)
,p_plug_name=>'Product Orders'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with data as (',
'select ''M'' as link_type,',
'       null as parent,',
'       ''All Categories'' as id,',
'       ''All Categories'' as name,',
'       null as sub_id',
'  from demo_product_info',
'union',
'select distinct(''C'') as link_type,',
'       ''All Categories'' as parent,',
'       category as id,',
'       category as name,',
'       null as sub_id',
'  from demo_product_info',
'union',
'select ''P'' as link_type,',
'       category parent,',
'       to_char(product_id) id,',
'       product_name as name,',
'       product_id as sub_id',
'  from demo_product_info',
'union',
'select ''O'' as link_type,',
'       to_char(product_id) as parent,',
'       null as id,',
'       (select c.cust_first_name || '' '' || c.cust_last_name  ',
'          from demo_customers c, demo_orders o',
'         where c.customer_id = o.customer_id',
'           and o.order_id    = oi.order_id ) || '', ordered ''||to_char(oi.quantity) as name,',
'       order_id as sub_id',
'  from demo_order_items oi',
')',
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       name as title, ',
'       null as icon, ',
'       id as value, ',
'       ''View'' as tooltip, ',
'       case when link_type = ''M''',
'            then apex_util.prepare_url(''f?p=''||:APP_ID||'':3:''||:APP_SESSION||''::NO:RIR'')',
'            when link_type = ''C''',
'            then apex_util.prepare_url(''f?p=''||:APP_ID||'':3:''||:APP_SESSION||''::NO:CIR:IR_CATEGORY:''',
'                 ||name)',
'            when link_type = ''P''',
'            then apex_util.prepare_url(''f?p=''||:APP_ID||'':6:''||:APP_SESSION||''::NO::P6_PRODUCT_ID,P6_BRANCH:''',
'                 ||sub_id||'',19'')',
'            when link_type = ''O''',
'            then apex_util.prepare_url(''f?p=''||:APP_ID||'':29:''||:APP_SESSION||''::NO::P29_ORDER_ID:''',
'                 || sub_id)',
'            else null',
'            end as link ',
'from data',
'start with parent is null',
'connect by prior id = parent',
'order siblings by name'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_no_data_found=>'No data found.'
,p_attribute_01=>'default'
,p_attribute_02=>'S'
,p_attribute_04=>'STATIC'
,p_attribute_05=>'View'
,p_attribute_06=>'tree7539068324455624063'
,p_attribute_07=>'JSTREE'
,p_attribute_10=>'"3"'
,p_attribute_11=>'"2"'
,p_attribute_12=>'"4"'
,p_attribute_15=>'"1"'
,p_attribute_20=>'"5"'
,p_attribute_22=>'"6"'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'"7"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7576223395832304567)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7576222996318304555)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Collapse All'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:apex.widget.tree.collapse_all(''tree7539068324455624063'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7576223612408304572)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7576222996318304555)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Expand All'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:apex.widget.tree.expand_all(''tree7539068324455624063'');'
);
wwv_flow_api.component_end;
end;
/
