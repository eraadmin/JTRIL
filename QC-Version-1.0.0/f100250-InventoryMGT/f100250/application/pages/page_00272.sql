prompt --application/pages/page_00272
begin
--   Manifest
--     PAGE: 00272
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
 p_id=>272
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Employee_allocation'
,p_page_mode=>'MODAL'
,p_step_title=>'Employee_allocation'
,p_autocomplete_on_off=>'OFF'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181008140029'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(38063697133825073)
,p_plug_name=>'Employee_allocation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
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
'    FROM nmprdhdi',
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
'from NMPRDHDI a',
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
 p_id=>wwv_flow_api.id(38064936647825076)
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
 p_id=>wwv_flow_api.id(38065411656825076)
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
 p_id=>wwv_flow_api.id(38066019446825077)
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
 p_id=>wwv_flow_api.id(38066603319825079)
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
 p_id=>wwv_flow_api.id(38067215454825080)
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
 p_id=>wwv_flow_api.id(38067852336825080)
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
'from nmsmnmas',
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
 p_id=>wwv_flow_api.id(38068486558825080)
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
 p_id=>wwv_flow_api.id(38069051807825081)
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
,p_max_length=>6
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(waredesc)||'' (''||warecode||'')'' waredesc,warecode',
'from nmwhsmas',
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
 p_id=>wwv_flow_api.id(38069653493825081)
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
 p_id=>wwv_flow_api.id(38070289564825082)
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
 p_id=>wwv_flow_api.id(38070855685825082)
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
 p_id=>wwv_flow_api.id(38071418724825082)
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
 p_id=>wwv_flow_api.id(38072068084825083)
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
 p_id=>wwv_flow_api.id(38072665899825083)
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
 p_id=>wwv_flow_api.id(38073267092825083)
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
 p_id=>wwv_flow_api.id(38073889981825084)
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
'    FROM nmprdhdi',
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
 p_id=>wwv_flow_api.id(38074433116825084)
,p_name=>'BRANDCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRANDCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Brand'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(nmcoddes) brand,nmsofcde',
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
 p_id=>wwv_flow_api.id(38075010384825084)
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
 p_id=>wwv_flow_api.id(38075646491825085)
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
 p_id=>wwv_flow_api.id(38076228098825085)
,p_name=>'WHSZONFK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WHSZONFK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Zone Information'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP(AREA_NAME_TREE) AREA_NAME_TREE,WHSZONPK',
'   FROM VW_NMWHZNMAS',
'   WHERE COMPCODE=:P272_COMPCODE',
'   AND NVL(STATUSCD,''N'')=''Y''',
'   AND NVL(PROD_TYPE,''0'')=NVL(:PRODUCT_TYPE,NVL(PROD_TYPE,''0''))',
'   ORDER BY WHSZONPK'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'P272_COMPCODE,PRODUCT_TYPE'
,p_ajax_items_to_submit=>'P272_COMPCODE,PRODUCT_TYPE'
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
 p_id=>wwv_flow_api.id(38076886601825085)
,p_name=>'DGNTNCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DGNTNCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Designation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  INITCAP (nmcoddes) description,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode',
'  AND nmhrdcde = ''DEG''',
'  and modlcode=''NM''',
'  order by 1'))
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
 p_id=>wwv_flow_api.id(38077490541825086)
,p_name=>'PRODUCT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Product Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_api.id(38078005970825086)
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
 p_id=>wwv_flow_api.id(38078673832825086)
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
 p_id=>wwv_flow_api.id(38079281955825087)
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
 p_id=>wwv_flow_api.id(38079853159825087)
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
 p_id=>wwv_flow_api.id(38080415556825088)
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
 p_id=>wwv_flow_api.id(38081001485825088)
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
 p_id=>wwv_flow_api.id(38081685049825088)
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
 p_id=>wwv_flow_api.id(38145556841122106)
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
 p_id=>wwv_flow_api.id(38145655887122107)
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
 p_id=>wwv_flow_api.id(38145742654122108)
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
 p_id=>wwv_flow_api.id(38145846890122109)
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
 p_id=>wwv_flow_api.id(38145927970122110)
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
 p_id=>wwv_flow_api.id(38146013009122111)
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
 p_id=>wwv_flow_api.id(39378852943029217)
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
 p_id=>wwv_flow_api.id(38064292310825074)
,p_internal_uid=>6189798907412471
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET:SAVE'
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
 p_id=>wwv_flow_api.id(38064616227825075)
,p_interactive_grid_id=>wwv_flow_api.id(38064292310825074)
,p_static_id=>'395707'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(38064767726825075)
,p_report_id=>wwv_flow_api.id(38064616227825075)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38065848128825077)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(38065411656825076)
,p_is_visible=>false
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38066406939825077)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(38066019446825077)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38067063711825080)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(38066603319825079)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38067611621825080)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(38067215454825080)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38068204142825080)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(38067852336825080)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38068863713825081)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(38068486558825080)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38069397758825081)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(38069051807825081)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38070001796825081)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(38069653493825081)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38070683027825082)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(38070289564825082)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38071292919825082)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(38070855685825082)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38071798870825082)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(38071418724825082)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38072403940825083)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(38072068084825083)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38073003519825083)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(38072665899825083)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>10
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38073672611825083)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(38073267092825083)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38074278355825084)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(38073889981825084)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38074841509825084)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(38074433116825084)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38075490178825085)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(38075010384825084)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38076020553825085)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(38075646491825085)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38076623048825085)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(38076228098825085)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38077218284825086)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(38076886601825085)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38077807131825086)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(38077490541825086)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38078473205825086)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(38078005970825086)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38078993878825087)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(38078673832825086)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38079668471825087)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(38079281955825087)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38080249168825087)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(38079853159825087)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38080812633825088)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(38080415556825088)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38081395478825088)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(38081001485825088)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38082039678825089)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(38081685049825088)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38151599272155232)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(38145556841122106)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38152293395155235)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(38145655887122107)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38152822830155237)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(38145742654122108)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38153425895155239)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(38145846890122109)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38154072752155241)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(38145927970122110)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38154613907155243)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(38146013009122111)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39514040340216905)
,p_view_id=>wwv_flow_api.id(38064767726825075)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(39378852943029217)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(38250170946786526)
,p_plug_name=>'Button_region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36976368899384147)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(38250170946786526)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:270:&SESSION.::&DEBUG.:RP,272::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36976664746384150)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(38250170946786526)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36976561732384149)
,p_name=>'P272_EMPLOYEE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(38063697133825073)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36976851805384152)
,p_name=>'P272_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(38063697133825073)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39378638650029215)
,p_tabular_form_region_id=>wwv_flow_api.id(38063697133825073)
,p_validation_name=>'WHSZONFK'
,p_validation_sequence=>10
,p_validation=>'WHSZONFK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36976725477384151)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(38063697133825073)
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
'     FROM NMPRDHDI',
'    WHERE COMPCODE = :P272_COMPCODE;',
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
,p_process_when_button_id=>wwv_flow_api.id(36976664746384150)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36976933646384153)
,p_process_sequence=>3
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(38063697133825073)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DUPLICATE_ZONE_CHECK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   S_WHSZONFK   NMPRDHDI.WHSZONFK%TYPE;',
'BEGIN',
'--if :P272_EMPLOYEE_ID IS  NULL THEN',
'   IF     :SMANCODE IS NOT NULL   AND :REPORTNG IS NOT NULL AND :BRANDCDE IS NOT NULL',
'      AND :PRODUCT_TYPE IS NOT NULL',
'      AND :S_WHSZONFK IS NOT NULL',
'   THEN',
'      BEGIN',
'            BEGIN',
'               SELECT DISTINCT WHSZONFK',
'                 INTO S_WHSZONFK  FROM NMPRDHDI',
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
'                 INTO S_WHSZONFK  FROM NMPRDHDI',
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
' /*   IF     :SMANCODE IS NOT NULL   AND :REPORTNG IS NOT NULL',
'      AND :WHSZONFK IS NOT NULL',
'   THEN',
'      BEGIN',
'            BEGIN',
'               SELECT DISTINCT WHSZONFK',
'                 INTO S_WHSZONFK  FROM NMPRDHDI',
'                WHERE     COMPCODE = :P272_COMPCODE',
'                      AND SMANCODE = :SMANCODE',
'                      AND REPORTNG = :REPORTNG',
'                      AND WHSZONFK = :WHSZONFK',
'                      AND NVL(STATUSCD,''N'')=''Y'';',
'',
'               IF SQL%FOUND',
'               THEN',
'                  RAISE_APPLICATION_ERROR (-20001,''Employee ID : ''||:SMANCODE||''  ''||''Already Assign for Zone: ''|| S_WHSZONFK);',
'              --    RAISE form_trigger_failure;',
'               END IF;',
'            EXCEPTION',
'               WHEN NO_DATA_FOUND',
'               THEN',
'                  NULL;',
'            END;',
'      END;',
'   END IF;*/',
'-- END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38145363734122104)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(38063697133825073)
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
'              FROM nmprdhdi',
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
'        INSERT INTO NMPRDHDI (COMPCODE,',
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
 p_id=>wwv_flow_api.id(38082211913825089)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(38063697133825073)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(36976664746384150)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'Insert Successfully......'
);
wwv_flow_api.component_end;
end;
/
