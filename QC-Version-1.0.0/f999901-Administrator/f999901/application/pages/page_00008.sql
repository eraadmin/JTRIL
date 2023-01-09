prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'chart of account report'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'chart of account'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20200220172310'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46757553290592435)
,p_plug_name=>'Report iframe'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<iframe height=700 width=1000 src="&REPTURLL./reports/rwservlet?report=D:\Orbrgs_Web\Main\sy\bin\syaclist.rdf&userid=orbrgs/orbrgs@orbrgs&server=rep_adminserver_desktop-tu9il7n_asinst_1&destype=cache&desformat=pdf&p0=&COMPCODE.">',
'</iframe>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<iframe height=700 width=1200 src="&REPTURLL./reports/rwservlet?report=D:\Orbrgs_Web\Main\sy\bin\syaclist.rdf&userid=orbrgs/orbrgs@orbrgs&server=&REPSERVER.&destype=cache&desformat=pdf&p0=&COMPCODE.">',
'</iframe>',
'',
'',
''))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46757619292592436)
,p_name=>'P8_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46757553290592435)
,p_source=>'COMPCODE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46758484843592444)
,p_name=>'P8_REPSERVER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(46757553290592435)
,p_source=>'REPSERVER'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46758561147592445)
,p_name=>'P8_REPTURLL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46757553290592435)
,p_source=>'REPTURLL'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
