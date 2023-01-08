prompt --application/pages/page_00217
begin
--   Manifest
--     PAGE: 00217
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
 p_id=>217
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'test'
,p_step_title=>'test'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170612144412'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75164150128582476)
,p_plug_name=>'test'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null url,''Production Order Generate'' Head,count(*)total,''P'' link from nmslsofr  WHERE statuscd=''NEW''',
'union all',
'select null url,''Production Order Approved'' Head,count(*)total,''Q'' link from nmslsofr  WHERE statuscd=''APR'' '))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_num_rows=>15
,p_attribute_01=>'HEAD'
,p_attribute_02=>'TOTAL'
,p_attribute_04=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5'
,p_attribute_05=>'0'
,p_attribute_06=>'XXL'
,p_attribute_07=>'BOX'
,p_attribute_08=>'N'
);
wwv_flow_api.component_end;
end;
/
