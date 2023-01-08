prompt --application/shared_components/navigation/breadcrumbs/main_menu
begin
--   Manifest
--     MENU: Main Menu
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(7533132934253244474)
,p_name=>'Main Menu'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(58367764818819749)
,p_short_name=>'Transaction type'
,p_link=>'f?p=&FLOW_ID.:999:&SESSION.'
,p_page_id=>999
);
wwv_flow_api.component_end;
end;
/
