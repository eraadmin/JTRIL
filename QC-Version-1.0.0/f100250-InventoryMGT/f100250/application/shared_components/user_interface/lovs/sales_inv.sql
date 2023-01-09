prompt --application/shared_components/user_interface/lovs/sales_inv
begin
--   Manifest
--     SALES INV
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(43496547916160758)
,p_lov_name=>'SALES INV'
,p_lov_query=>'select DOCNUMBR||''/''||docttype||''/''||subttype||'':''||partycde D,DOCNUMBR R from nmsalrec where  DOCTTYPE=''SI'' and SUBTTYPE=2 and STATUSCD=''APR'''
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
