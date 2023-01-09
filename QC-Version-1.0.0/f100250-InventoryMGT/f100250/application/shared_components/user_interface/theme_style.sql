prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 100250
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(47465411317365188)
,p_theme_id=>111
,p_name=>'Vita - Slate (Copy)'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5","@g_Link-Base":"#c02f64"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#12127321279600786.css'
,p_theme_roller_read_only=>false
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(47631596235858381)
,p_theme_id=>111
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(47631788577858385)
,p_theme_id=>111
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(47631995089858385)
,p_theme_id=>111
,p_name=>'Vita - Slate'
,p_is_current=>true
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(49208693635890468)
,p_theme_id=>111
,p_name=>'Vita (Copy)'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Region-Header-FG":"#e72be7","@g_Region-BG":"#344c9c","@g_Accent-BG":"#c7ddf5","@g_Link-Base":"#c11ef3"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#12053826510209974.css'
,p_theme_roller_read_only=>false
);
wwv_flow_api.component_end;
end;
/
