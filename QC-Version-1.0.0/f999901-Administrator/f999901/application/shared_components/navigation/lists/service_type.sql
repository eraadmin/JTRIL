prompt --application/shared_components/navigation/lists/service_type
begin
--   Manifest
--     LIST: Service Type
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(57075836933547303)
,p_name=>'Service Type'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(57076050552547306)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Service Type Master'
,p_list_item_link_target=>'f?p=&APP_ID.:99:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(57076415782547307)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Service Type Detail'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
