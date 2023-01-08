prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 100250
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(981178456698168123)
,p_build_option_name=>'To be deleted'
,p_build_option_status=>'EXCLUDE'
,p_build_option_comment=>'For testing items and regions which can presumably be deleted.'
);
wwv_flow_api.component_end;
end;
/
