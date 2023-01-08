prompt --application/shared_components/user_interface/lovs/list_of_customer_category
begin
--   Manifest
--     LIST OF CUSTOMER CATEGORY
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
 p_id=>wwv_flow_api.id(63464828788062475)
,p_lov_name=>'LIST OF CUSTOMER CATEGORY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct Initcap(A.NMCODDES) d,To_Char(A.NMSOFCDE ) r',
'                                                 FROM nmcodmas A where A.NMHRDCDE=''CUC'' and A.COMPCODE=:COMPCODE',
'                                                 order by 2'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
