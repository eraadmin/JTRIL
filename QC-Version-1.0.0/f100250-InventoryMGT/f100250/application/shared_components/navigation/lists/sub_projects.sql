prompt --application/shared_components/navigation/lists/sub_projects
begin
--   Manifest
--     LIST: Sub-Projects
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
 p_id=>wwv_flow_api.id(81824489829178400)
,p_name=>'Sub-Projects'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lvl,',
'   project,',
'    target,',
'   is_current_list_entry,',
'   image,',
'   image_attrib,',
'   image_alt,',
'   attribute1,',
'   attribute2,',
'   attribute3',
'from (',
'select  null lvl,',
'        project,',
'        ''f?p=&APP_ID.:200:''||:APP_SESSION||''::::P200_ID:''||s.id target,',
'        null is_current_list_entry,',
'        null image,',
'        null image_attrib,',
'        null image_alt,',
'        ''Status: ''||nvl((select status_short_desc ',
'           from EBA_PROJ_STATUS_CODES c ',
'           where c.id = s.PROJECT_STATUS),''unknown'')||'', Owners: ''||',
'        PROJECT_OWNER||',
'         decode(project_owner2,null,null,'', ''||project_owner2)||',
'         decode(project_owner3,null,null,'', ''||project_owner3)||',
'         decode(project_owner4,null,null,'', ''||project_owner4)||',
'         decode(project_owner5,null,null,'', ''||project_owner5)||',
'         decode(project_owner6,null,null,'', ''||project_owner6)||',
'         decode(project_owner7,null,null,'', ''||project_owner7)||',
'         decode(project_owner8,null,null,'', ''||project_owner8)||',
'         decode(project_owner9,null,null,'', ''||project_owner9)||',
'         decode(project_owner10,null,null,'', ''||project_owner10)||',
'         decode(project_owner11,null,null,'', ''||project_owner11)||',
'         decode(project_owner12,null,null,'', ''||project_owner12)',
'         as attribute1,',
'       null attribute2,',
'       NVL(upper(',
'          decode(instr(s.PROJECT,'' ''),',
'                 0, ',
'                 substr(s.PROJECT,1,2),',
'                 substr(s.PROJECT,1,1)||substr(s.PROJECT,instr(s.PROJECT,'' '')+1,1)',
'           )),''CP'')  attribute3',
'from eba_proj_status s',
'where parent_project_id = :P200_ID',
'order by lower(project)',
') x'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
