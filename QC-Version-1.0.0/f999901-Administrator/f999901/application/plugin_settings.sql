prompt --application/plugin_settings
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1209595484347026)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(2828600550781048)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'4'
,p_attribute_02=>'.5'
,p_attribute_03=>'Y'
,p_attribute_04=>'none'
,p_attribute_06=>'100'
,p_attribute_07=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(4465613846435685)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_JET'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(4465730432435685)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_attribute_02=>'N'
,p_attribute_03=>'POPUP:ITEM'
,p_attribute_04=>'default'
,p_attribute_06=>'LIST'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(7450354601540622)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(40137759209333418)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(54334076085154675)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'PLUGIN_BE.CTB.SELECT2'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(93996149620507906)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(181045907726441518)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'PLUGIN_PRETIUS_APEX_RANGE_DATE'
,p_attribute_03=>'2'
,p_attribute_04=>'t-Button t-Button--small'
,p_attribute_05=>'t-Button--hot'
,p_attribute_06=>'t-Cancel'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1120121123913736041)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1767081007640647561)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1833781528487929656)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1919680949066875626)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(2273841879735677551)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.TAGS'
,p_attribute_01=>'NONE'
);
wwv_flow_api.component_end;
end;
/
