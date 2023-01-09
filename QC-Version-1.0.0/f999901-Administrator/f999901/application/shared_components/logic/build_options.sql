prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 999901
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(15392507445824940)
,p_build_option_name=>'To Be Deleted'
,p_build_option_status=>'EXCLUDE'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(1047743204106388626)
,p_build_option_name=>'Inline page help'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Show informational text on top of key pages that explain how to use the page and components on the page.  Enabling this help for new deployments can make it easier to use however the added text clutters the page and can be a distraction to experience'
||'d users.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(1512971807789757309)
,p_build_option_name=>'Content Completeness Widget'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This build option controls whether the "Content Completeness" plugin region is displayed on the Ticket details page or not.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(1512972000456760690)
,p_build_option_name=>'Validations Widget'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This build option controls whether the "Validations" plugin region is displayed on the Ticket details page or not.'
);
wwv_flow_api.component_end;
end;
/
