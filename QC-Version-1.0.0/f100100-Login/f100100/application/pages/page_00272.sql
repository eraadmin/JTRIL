prompt --application/pages/page_00272
begin
--   Manifest
--     PAGE: 00272
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>272
,p_user_interface_id=>wwv_flow_api.id(100064779117690213)
,p_name=>'Employee_allocation'
,p_page_mode=>'MODAL'
,p_step_title=>'Employee_allocation'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(115022350790909979)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20201123180850'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(185758930722609995)
,p_plug_name=>'Employee_allocation'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,COMPCODE, NMPRDHPK, SMANCODE, SMANNAME, ',
'WARECODE, COSTCODE, STATUSCD, USERNAME, ',
'OPRSTAMP, TIMSTAMP, LEADPERS, MODIFYDT, REPORTNG, ',
'BRANDCDE, STARTDATE, ENDDATE, WHSZONFK, DGNTNCDE, PRODUCT_TYPE ,',
'STARTDATE S_STARTDATE,DGNTNCDE S_DGNTNCDE,WHSZONFK S_WHSZONFK,BRANDCDE S_BRANDCDE,REPORTNG S_REPORTNG,PRODUCT_TYPE S_PRODUCT_TYPE,STATUSCD S_STATUSCD,',
'(select WAREDESC  from nmwhsmas',
'where WARECODE=a.WARECODE) WARENAME,',
'(select initcap(area_name_tree) ',
'   from vw_nmwhznmas',
'   where compcode=:compcode',
'   and whszonpk=a.WHSZONFK',
'   and nvl(statuscd,''N'')=''Y'') area_name_tree,',
'   (select  initcap(nmcoddes) nmcoddes',
'from nmcodmas',
'where compcode=a.compcode',
'and NMSOFCDE=a.PRODUCT_TYPE',
'and nmhrdcde=''PRD'') PRODUCT_TYPE_NAME,',
'(select initcap(nmcoddes) ',
'from nmcodmas',
'where compcode=a.compcode',
'and NMSOFCDE=a.BRANDCDE',
'and nmhrdcde=''COM''',
'and modlcode=''NM'' ) brand_name,',
'(  SELECT DISTINCT INITCAP (smanname) ',
'    FROM szprdhdi',
'   WHERE     compcode = a.compcode',
'   and smancode=a.smancode',
'         AND NVL (statuscd, ''N'') = ''Y''',
'         AND NVL (leadpers, ''N'') = ''Y'') Reproting_head,',
'         (SELECT DISTINCT INITCAP (nmcoddes) description',
'  FROM nmcodmas',
' WHERE compcode =a.compcode',
' and NMSOFCDE=  a.DGNTNCDE',
'  AND nmhrdcde = ''DEG''',
'  and modlcode=''NM'') Designation,',
'  (case when LEADPERS=''Y'' then ''Yes'' else ''No''  end) LEADPERS1',
'from SZPRDHDI a',
'where compcode=:COMPCODE',
'and nvl(statuscd,''N'')=''Y''',
'AND smanname is not null',
'and smancode=nvl(:P272_EMPLOYEE_ID,0)',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P272_EMPLOYEE_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185760170236609998)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185760645245609998)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185761253035609999)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185761836908610001)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185762449043610002)
,p_name=>'NMPRDHPK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMPRDHPK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185763085925610002)
,p_name=>'SMANCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SMANCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Employee ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_is_required=>true
,p_max_length=>6
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(smanname)||'' (''||smancode||'')'' Name,smancode r',
'from orbrgs_rml.nmsmnmas',
'where compcode=:compcode',
'union all',
'select initcap(smanname)||'' (''||smancode||'')'' Name,smancode r',
'from orbrgs_cvl.nmsmnmas',
'where compcode=:compcode',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185763720147610002)
,p_name=>'SMANNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SMANNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(smanname)||'' (''||smancode||'')'' Name,smancode r',
'from nmsmnmas',
'where compcode=:compcode',
'and smancode=:SMANCODE',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'SMANCODE'
,p_ajax_items_to_submit=>'SMANCODE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185764285396610003)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Warehouse Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_is_required=>false
,p_max_length=>10
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(waredesc)||'' (''||warecode||'')'' waredesc,warecode',
'from orbrgs_rml.nmwhsmas',
'where compcode=:compcode',
'and nvl(wareflag,''N'')=''Y''',
'union all',
'select initcap(waredesc)||'' (''||warecode||'')'' waredesc,warecode',
'from orbrgs_cvl.nmwhsmas',
'where compcode=:compcode',
'and nvl(wareflag,''N'')=''Y''',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185764887082610003)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185765523153610004)
,p_name=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUSCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Active;Y,In-Active;N'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185766089274610004)
,p_name=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USERNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185766652313610004)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185767301673610005)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185767899488610005)
,p_name=>'LEADPERS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEADPERS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Leader'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:YES;Y,NO;N'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185768500681610005)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185769123570610006)
,p_name=>'REPORTNG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REPORTNG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Reportng Head'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_is_required=>false
,p_max_length=>30
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT  INITCAP (smanname)||'' (''||smancode||'')'' username,smancode',
'    FROM orbrgs_rml.szprdhdi',
'   WHERE     compcode = :compcode',
'         AND NVL (statuscd, ''N'') = ''Y''',
'         AND NVL (leadpers, ''N'') = ''Y''',
'         union all',
' SELECT DISTINCT  INITCAP (smanname)||'' (''||smancode||'')'' username,smancode',
'    FROM orbrgs_cvl.szprdhdi',
'   WHERE     compcode = :compcode',
'         AND NVL (statuscd, ''N'') = ''Y''',
'         AND NVL (leadpers, ''N'') = ''Y''',
'ORDER BY 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185769666705610006)
,p_name=>'BRANDCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRANDCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Brand'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(nmcoddes) brand, nmsofcde',
'from nmcodmas',
'where compcode=:compcode',
'and nmhrdcde=''COM''',
'and modlcode=''NM''',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185770243973610006)
,p_name=>'STARTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STARTDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Effective Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185770880080610007)
,p_name=>'ENDDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENDDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185771461687610007)
,p_name=>'WHSZONFK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WHSZONFK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Zone Information'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP (AREA_NAME_TREE) AREA_NAME_TREE, WHSZONPK',
'  FROM orbrgs_rml.VW_NMWHZNMAS',
' WHERE     COMPCODE = :COMPCODE',
'       AND NVL (STATUSCD, ''N'') = ''Y''',
'       AND NVL (PROD_TYPE, ''0'') = NVL ( :PRODUCT_TYPE, NVL (PROD_TYPE, ''0''))',
'UNION ALL',
'SELECT INITCAP (AREA_NAME_TREE) AREA_NAME_TREE, WHSZONPK',
'  FROM orbrgs_cvl.VW_NMWHZNMAS',
' WHERE     COMPCODE = :COMPCODE',
'       AND NVL (STATUSCD, ''N'') = ''Y''',
'       AND NVL (PROD_TYPE, ''0'') = NVL ( :PRODUCT_TYPE, NVL (PROD_TYPE, ''0''))',
'ORDER BY WHSZONPK'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'PRODUCT_TYPE'
,p_ajax_items_to_submit=>'PRODUCT_TYPE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185772120190610007)
,p_name=>'DGNTNCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DGNTNCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Designation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  INITCAP (nmcoddes) description,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode',
'  AND nmhrdcde = ''DEG''',
'  and modlcode=''NM''',
'  order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185772724130610008)
,p_name=>'PRODUCT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Product Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  initcap(nmcoddes) nmcoddes,nmsofcde',
'from nmcodmas',
'where compcode=:compcode',
'and nmhrdcde=''PRD''',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185773239559610008)
,p_name=>'WARENAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARENAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Warehouse'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(waredesc)||'' (''||warecode||'')'' waredesc,warecode',
'from nmwhsmas',
'where compcode=:compcode',
'and warecode=:WARECODE',
'and nvl(wareflag,''N'')=''Y''',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185773907421610008)
,p_name=>'AREA_NAME_TREE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_NAME_TREE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185774515544610009)
,p_name=>'PRODUCT_TYPE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_TYPE_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185775086748610009)
,p_name=>'BRAND_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRAND_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185775649145610010)
,p_name=>'REPROTING_HEAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REPROTING_HEAD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185776235074610010)
,p_name=>'DESIGNATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESIGNATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185776918638610010)
,p_name=>'LEADPERS1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEADPERS1'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185840790429907028)
,p_name=>'S_STARTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'S_STARTDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Stratdate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>320
,p_value_alignment=>'LEFT'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185840889475907029)
,p_name=>'S_DGNTNCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'S_DGNTNCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>330
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185840976242907030)
,p_name=>'S_WHSZONFK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'S_WHSZONFK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>340
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185841080478907031)
,p_name=>'S_BRANDCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'S_BRANDCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>350
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185841161558907032)
,p_name=>'S_REPORTNG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'S_REPORTNG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>360
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(185841246597907033)
,p_name=>'S_PRODUCT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'S_PRODUCT_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>370
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(187074086531814139)
,p_name=>'S_STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'S_STATUSCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>390
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(185759525899609996)
,p_internal_uid=>335012119578396049
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(185759849816609997)
,p_interactive_grid_id=>wwv_flow_api.id(185759525899609996)
,p_static_id=>'167253'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(185760001315609997)
,p_report_id=>wwv_flow_api.id(185759849816609997)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185761081717609999)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(185760645245609998)
,p_is_visible=>false
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185761640528609999)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(185761253035609999)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185762297300610002)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(185761836908610001)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185762845210610002)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(185762449043610002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185763437731610002)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(185763085925610002)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185764097302610003)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(185763720147610002)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185764631347610003)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(185764285396610003)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>192
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185765235385610003)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(185764887082610003)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185765916616610004)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(185765523153610004)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185766526508610004)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(185766089274610004)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185767032459610004)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(185766652313610004)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185767637529610005)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(185767301673610005)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185768237108610005)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(185767899488610005)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185768906200610005)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(185768500681610005)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185769511944610006)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(185769123570610006)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185770075098610006)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(185769666705610006)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185770723767610007)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(185770243973610006)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185771254142610007)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(185770880080610007)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185771856637610007)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(185771461687610007)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>177
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185772451873610008)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(185772120190610007)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185773040720610008)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(185772724130610008)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>117
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185773706794610008)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(185773239559610008)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185774227467610009)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(185773907421610008)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185774902060610009)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(185774515544610009)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185775482757610009)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(185775086748610009)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185776046222610010)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(185775649145610010)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185776629067610010)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(185776235074610010)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185777273267610011)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(185776918638610010)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185846832860940154)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(185840790429907028)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185847526983940157)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(185840889475907029)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185848056418940159)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(185840976242907030)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185848659483940161)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(185841080478907031)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185849306340940163)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(185841161558907032)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(185849847495940165)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(185841246597907033)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(187209273929001827)
,p_view_id=>wwv_flow_api.id(185760001315609997)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(187074086531814139)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33796723398324867)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(185758930722609995)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(100042305862690193)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33797074727324870)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(185758930722609995)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(100042353897690193)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33797493507324870)
,p_name=>'P272_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(185758930722609995)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33797828846324873)
,p_name=>'P272_EMPLOYEE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(185758930722609995)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33798367336324873)
,p_tabular_form_region_id=>wwv_flow_api.id(185758930722609995)
,p_validation_name=>'WHSZONFK'
,p_validation_sequence=>10
,p_validation=>'WHSZONFK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(33800281165324886)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(33797074727324870)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33800738800324886)
,p_event_id=>wwv_flow_api.id(33800281165324886)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33798685391324876)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(185758930722609995)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Preinsert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P272_EMPLOYEE_ID IS  NULL THEN',
':COMPCODE:=:P272_COMPCODE;',
':OPRSTAMP:=:APP_USER;',
':S_STATUSCD:=:STATUSCD;',
':USERNAME:=:SMANCODE;',
':S_REPORTNG:=:REPORTNG;',
':S_BRANDCDE:=:BRANDCDE;',
':S_DGNTNCDE:=:DGNTNCDE;',
':S_WHSZONFK:=:WHSZONFK;',
':S_STARTDATE:=:STARTDATE;',
':S_PRODUCT_TYPE:=:PRODUCT_TYPE;',
'   SELECT MAX (NVL (NMPRDHPK, 0)) + 1',
'     INTO :NMPRDHPK',
'     FROM SZPRDHDI',
'    --WHERE COMPCODE = :P272_COMPCODE',
'    ;',
'    ',
'    select initcap(smanname)',
'    INTO :SMANNAME',
'from nmsmnmas',
'where compcode=:P272_COMPCODE',
'and smancode=:SMANCODE;',
'select costcode',
'into :COSTCODE',
'from nmwhsmas',
'where compcode=:P272_COMPCODE',
'and warecode=:WARECODE',
'and nvl(wareflag,''N'')=''Y'';',
'END IF;',
'EXCEPTION',
'   WHEN OTHERS --NO_DATA_FOUND',
'   THEN',
'      :NMPRDHPK := 1;',
'END;',
'',
'IF :NMPRDHPK IS NULL THEN',
':NMPRDHPK := 1;',
'END IF;',
'--DUPLICATE_ZONE_CHECK;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33796723398324867)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33799025420324876)
,p_process_sequence=>3
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(185758930722609995)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DUPLICATE_ZONE_CHECK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   S_WHSZONFK   SZPRDHDI.WHSZONFK%TYPE;',
'BEGIN',
'--if :P272_EMPLOYEE_ID IS  NULL THEN',
'   IF     :SMANCODE IS NOT NULL   AND :REPORTNG IS NOT NULL AND :BRANDCDE IS NOT NULL',
'      AND :PRODUCT_TYPE IS NOT NULL',
'      AND :S_WHSZONFK IS NOT NULL',
'   THEN',
'      BEGIN',
'            BEGIN',
'               SELECT DISTINCT WHSZONFK',
'                 INTO S_WHSZONFK  FROM SZPRDHDI',
'                WHERE     COMPCODE = :P272_COMPCODE',
'                      AND SMANCODE = :SMANCODE',
'                      AND PRODUCT_TYPE = :PRODUCT_TYPE',
'                      AND REPORTNG = :REPORTNG',
'                      AND WHSZONFK = :WHSZONFK',
'                      AND BRANDCDE = :BRANDCDE',
'                      AND NVL(STATUSCD,''N'')=:STATUSCD;',
'',
'               IF SQL%FOUND',
'               THEN',
'                  RAISE_APPLICATION_ERROR (-20001,''Employee ID : ''||:SMANCODE||''  ''||''Already Assign for Zone: ''|| S_WHSZONFK);',
'                  --RAISE form_trigger_failure;',
'               END IF;',
'            EXCEPTION',
'               WHEN NO_DATA_FOUND',
'               THEN',
'                  NULL;',
'            END;',
'      END;',
'   END IF;',
'   ',
'   IF     :SMANCODE IS NOT NULL   AND :REPORTNG IS NOT NULL AND :BRANDCDE IS NOT NULL',
'      AND :PRODUCT_TYPE IS NOT NULL',
'      AND :S_WHSZONFK IS NOT NULL',
'   THEN',
'      BEGIN',
'            BEGIN',
'               SELECT DISTINCT WHSZONFK',
'                 INTO S_WHSZONFK  FROM SZPRDHDI',
'                WHERE     COMPCODE = :P272_COMPCODE',
'                      AND SMANCODE = :SMANCODE',
'                      AND PRODUCT_TYPE = :PRODUCT_TYPE',
'                      AND REPORTNG = :REPORTNG',
'                      AND WHSZONFK = :WHSZONFK',
'                      AND BRANDCDE = :BRANDCDE',
'                      AND NVL(STATUSCD,''N'')=:STATUSCD;',
'',
'               IF SQL%FOUND',
'               THEN',
'                  RAISE_APPLICATION_ERROR (-20001,''Employee ID : ''||:SMANCODE||''  ''||''Already Assign for Zone: ''|| S_WHSZONFK);',
'                --  RAISE form_trigger_failure;',
'               END IF;',
'            EXCEPTION',
'               WHEN NO_DATA_FOUND',
'               THEN',
'                  NULL;',
'            END;',
'      END;',
'   END IF;',
'   ',
' ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33799878835324882)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(185758930722609995)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE_UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
's_nmprdhpk   NUMBER;',
's_max_nmprdhpk number;',
's_previous_day date;',
's_enddate date;',
'v_recno number;',
'begin',
'if :P272_EMPLOYEE_ID IS NOT NULL THEN',
'',
'',
'SELECT MAX (NVL (nmprdhpk, 0)) + 1',
'              INTO s_nmprdhpk',
'              FROM szprdhdi',
'             WHERE compcode = :P272_COMPCODE;',
'IF :STATUSCD=''N'' THEN',
':S_STATUSCD:=:STATUSCD;',
':ENDDATE:=:STARTDATE;--TO_DATE(TO_CHAR(:S_STARTDATE-1,''DD-MON-RRRR''),''DD-MON-RRRR'');--TO_DATE(:S_STARTDATE-1,''DD-MM-RRRR'');',
'END IF;',
'',
'IF :S_STARTDATE IS NOT NULL THEN',
'    IF ( (:STARTDATE <>  :S_STARTDATE)',
'        OR (:S_DGNTNCDE <> NVL (:DGNTNCDE, ''0''))',
'        OR (:S_WHSZONFK <> NVL (:WHSZONFK, 0))',
'        OR (:S_BRANDCDE <> NVL (:BRANDCDE, ''0''))',
'        OR (:S_REPORTNG <> NVL (:REPORTNG, ''0''))',
'        OR (:S_PRODUCT_TYPE <> NVL (:PRODUCT_TYPE, ''0'')))',
'        THEN',
':COMPCODE:=:P272_COMPCODE;',
':OPRSTAMP:=:APP_USER;',
':S_STATUSCD:=:STATUSCD;',
':ENDDATE:=:STARTDATE;--TO_DATE(TO_CHAR(:S_STARTDATE-1,''DD-MON-RRRR''),''DD-MON-RRRR'');--TO_DATE(:S_STARTDATE-1,''DD-MM-RRRR'');--to_date(:S_STARTDATE-1,''DD/MM/RRRR'');',
'IF :STARTDATE < :S_STARTDATE  THEN',
'raise_application_error(-20001,:STARTDATE ||''is not less than''||:S_STARTDATE);',
'else',
'',
'        INSERT INTO SZPRDHDI (COMPCODE,',
'                               NMPRDHPK,',
'                               SMANCODE,',
'                               SMANNAME,',
'                               WARECODE,',
'                               COSTCODE,',
'                               STATUSCD,',
'                               USERNAME,',
'                               OPRSTAMP,',
'                               TIMSTAMP,',
'                               LEADPERS,',
'                               MODIFYDT,',
'                               REPORTNG,',
'                               BRANDCDE,',
'                               STARTDATE,',
'                               ENDDATE,',
'                               WHSZONFK,',
'                               DGNTNCDE,',
'                               PRODUCT_TYPE)',
'              VALUES (:COMPCODE,',
'                      s_nmprdhpk,',
'                      :SMANCODE,',
'                      :SMANNAME,',
'                      :WARECODE,',
'                      :COSTCODE,',
'                      ''Y'',',
'                      :USERNAME,',
'                      :OPRSTAMP,',
'                      SYSDATE,',
'                      :LEADPERS,',
'                      :MODIFYDT,',
'                      :REPORTNG,',
'                      :BRANDCDE,',
'                      :STARTDATE,',
'                      NULL,',
'                      :WHSZONFK,',
'                      :DGNTNCDE,',
'                      :PRODUCT_TYPE);',
'    END IF;',
'    END IF;',
'END IF;',
'END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33799462397324881)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(185758930722609995)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33796723398324867)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'Insert Successfully......'
);
wwv_flow_api.component_end;
end;
/
