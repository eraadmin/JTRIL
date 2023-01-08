prompt --application/shared_components/navigation/lists/report_tabs
begin
--   Manifest
--     LIST: Report Tabs
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(7561367730765966930)
,p_name=>'Report Tabs'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7561377828734994772)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Customer Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Stacked bar chart of customer orders by Month'
,p_list_text_02=>'chartIcon'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7561377524578993541)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Sales by Category'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Pie chart of sales for each category'
,p_list_text_02=>'chartIcon'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4177754843021701754)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sales by Product'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:RP:::'
,p_list_text_01=>'Bar chart of sales for each product'
,p_list_text_02=>'chartIcon'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7561368638730969225)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Sales by Category / Month'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Vertical bar chart of sales by month'
,p_list_text_02=>'chartIcon'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4179013451152715421)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Sales by State'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'CSS chart of sales by State'
,p_list_text_02=>'chartIcon'
,p_list_item_current_for_pages=>'31'
);
wwv_flow_api.component_end;
end;
/
