prompt --application/pages/page_99990_026
begin
--   Manifest
--     PAGE: 99990
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
 p_id=>9999010013
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'View Report'
,p_alias=>'VIEW-REPORT'
,p_page_mode=>'MODAL'
,p_step_title=>'BI Report Design'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function saveReport(){',
'apex.message.confirm( "Do you want to Save the Report?", (okPressed) => { ',
'if ( okPressed ) {',
'   openModal(''SAVEMODAL'');',
'    }});',
'}',
''))
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20220621152503'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34949434680985364)
,p_plug_name=>'View Report'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(1582253198556857860)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(34937098592985354)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1582271165273857916)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34949599287985364)
,p_plug_name=>'View Report'
,p_parent_plug_id=>wwv_flow_api.id(34949434680985364)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(35947461249327906)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_api.id(34949599287985364)
,p_template=>wwv_flow_api.id(1582248360698857849)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_table varchar2(50)  := :P9999010011_OBJECT; ',
'  v_cols  varchar2(5000) := replace(:P9999010011_COLUMNS,'':'','','');',
'  v_where varchar2(5000) := ''compcode = :compcode'';',
'',
'begin',
'    return ''select '' || v_cols || '' from '' || v_table|| '' where ''|| v_where;',
'end;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_api.id(1582259508854857889)
,p_plug_query_max_columns=>50
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P9999010013_UDCOL is not null then',
'    return :P9999010013_UDCOL;',
'else ',
'    return :P9999010011_COLUMNS;',
'end if;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'GENERIC_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_comment=>'column label = user define column name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35947575795327907)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>10
,p_column_heading=>'Col01'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35947617594327908)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>20
,p_column_heading=>'Col02'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35947720798327909)
,p_query_column_id=>3
,p_column_alias=>'COL03'
,p_column_display_sequence=>30
,p_column_heading=>'Col03'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35947810274327910)
,p_query_column_id=>4
,p_column_alias=>'COL04'
,p_column_display_sequence=>40
,p_column_heading=>'Col04'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35947902991327911)
,p_query_column_id=>5
,p_column_alias=>'COL05'
,p_column_display_sequence=>50
,p_column_heading=>'Col05'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35948076245327912)
,p_query_column_id=>6
,p_column_alias=>'COL06'
,p_column_display_sequence=>60
,p_column_heading=>'Col06'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35948145076327913)
,p_query_column_id=>7
,p_column_alias=>'COL07'
,p_column_display_sequence=>70
,p_column_heading=>'Col07'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35948208574327914)
,p_query_column_id=>8
,p_column_alias=>'COL08'
,p_column_display_sequence=>80
,p_column_heading=>'Col08'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35948305259327915)
,p_query_column_id=>9
,p_column_alias=>'COL09'
,p_column_display_sequence=>90
,p_column_heading=>'Col09'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35948445140327916)
,p_query_column_id=>10
,p_column_alias=>'COL10'
,p_column_display_sequence=>100
,p_column_heading=>'Col10'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35948549191327917)
,p_query_column_id=>11
,p_column_alias=>'COL11'
,p_column_display_sequence=>110
,p_column_heading=>'Col11'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35948699538327918)
,p_query_column_id=>12
,p_column_alias=>'COL12'
,p_column_display_sequence=>120
,p_column_heading=>'Col12'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35948734189327919)
,p_query_column_id=>13
,p_column_alias=>'COL13'
,p_column_display_sequence=>130
,p_column_heading=>'Col13'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35948870869327920)
,p_query_column_id=>14
,p_column_alias=>'COL14'
,p_column_display_sequence=>140
,p_column_heading=>'Col14'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35948903612327921)
,p_query_column_id=>15
,p_column_alias=>'COL15'
,p_column_display_sequence=>150
,p_column_heading=>'Col15'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35949027344327922)
,p_query_column_id=>16
,p_column_alias=>'COL16'
,p_column_display_sequence=>160
,p_column_heading=>'Col16'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35949177212327923)
,p_query_column_id=>17
,p_column_alias=>'COL17'
,p_column_display_sequence=>170
,p_column_heading=>'Col17'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35949289658327924)
,p_query_column_id=>18
,p_column_alias=>'COL18'
,p_column_display_sequence=>180
,p_column_heading=>'Col18'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35949326214327925)
,p_query_column_id=>19
,p_column_alias=>'COL19'
,p_column_display_sequence=>190
,p_column_heading=>'Col19'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35949443486327926)
,p_query_column_id=>20
,p_column_alias=>'COL20'
,p_column_display_sequence=>200
,p_column_heading=>'Col20'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35949580445327927)
,p_query_column_id=>21
,p_column_alias=>'COL21'
,p_column_display_sequence=>210
,p_column_heading=>'Col21'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35949662479327928)
,p_query_column_id=>22
,p_column_alias=>'COL22'
,p_column_display_sequence=>220
,p_column_heading=>'Col22'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35949744916327929)
,p_query_column_id=>23
,p_column_alias=>'COL23'
,p_column_display_sequence=>230
,p_column_heading=>'Col23'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35949875013327930)
,p_query_column_id=>24
,p_column_alias=>'COL24'
,p_column_display_sequence=>240
,p_column_heading=>'Col24'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35949934766327931)
,p_query_column_id=>25
,p_column_alias=>'COL25'
,p_column_display_sequence=>250
,p_column_heading=>'Col25'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35950038359327932)
,p_query_column_id=>26
,p_column_alias=>'COL26'
,p_column_display_sequence=>260
,p_column_heading=>'Col26'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35950105502327933)
,p_query_column_id=>27
,p_column_alias=>'COL27'
,p_column_display_sequence=>270
,p_column_heading=>'Col27'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35950298117327934)
,p_query_column_id=>28
,p_column_alias=>'COL28'
,p_column_display_sequence=>280
,p_column_heading=>'Col28'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35950368936327935)
,p_query_column_id=>29
,p_column_alias=>'COL29'
,p_column_display_sequence=>290
,p_column_heading=>'Col29'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35950449486327936)
,p_query_column_id=>30
,p_column_alias=>'COL30'
,p_column_display_sequence=>300
,p_column_heading=>'Col30'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35950542121327937)
,p_query_column_id=>31
,p_column_alias=>'COL31'
,p_column_display_sequence=>310
,p_column_heading=>'Col31'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35950602365327938)
,p_query_column_id=>32
,p_column_alias=>'COL32'
,p_column_display_sequence=>320
,p_column_heading=>'Col32'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35950751032327939)
,p_query_column_id=>33
,p_column_alias=>'COL33'
,p_column_display_sequence=>330
,p_column_heading=>'Col33'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35950824136327940)
,p_query_column_id=>34
,p_column_alias=>'COL34'
,p_column_display_sequence=>340
,p_column_heading=>'Col34'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35950918030327941)
,p_query_column_id=>35
,p_column_alias=>'COL35'
,p_column_display_sequence=>350
,p_column_heading=>'Col35'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35951023021327942)
,p_query_column_id=>36
,p_column_alias=>'COL36'
,p_column_display_sequence=>360
,p_column_heading=>'Col36'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35951104743327943)
,p_query_column_id=>37
,p_column_alias=>'COL37'
,p_column_display_sequence=>370
,p_column_heading=>'Col37'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35951288546327944)
,p_query_column_id=>38
,p_column_alias=>'COL38'
,p_column_display_sequence=>380
,p_column_heading=>'Col38'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35951305002327945)
,p_query_column_id=>39
,p_column_alias=>'COL39'
,p_column_display_sequence=>390
,p_column_heading=>'Col39'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35951489988327946)
,p_query_column_id=>40
,p_column_alias=>'COL40'
,p_column_display_sequence=>400
,p_column_heading=>'Col40'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35951545554327947)
,p_query_column_id=>41
,p_column_alias=>'COL41'
,p_column_display_sequence=>410
,p_column_heading=>'Col41'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35951691236327948)
,p_query_column_id=>42
,p_column_alias=>'COL42'
,p_column_display_sequence=>420
,p_column_heading=>'Col42'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35951767461327949)
,p_query_column_id=>43
,p_column_alias=>'COL43'
,p_column_display_sequence=>430
,p_column_heading=>'Col43'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35951850078327950)
,p_query_column_id=>44
,p_column_alias=>'COL44'
,p_column_display_sequence=>440
,p_column_heading=>'Col44'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36979471954564401)
,p_query_column_id=>45
,p_column_alias=>'COL45'
,p_column_display_sequence=>450
,p_column_heading=>'Col45'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36979578294564402)
,p_query_column_id=>46
,p_column_alias=>'COL46'
,p_column_display_sequence=>460
,p_column_heading=>'Col46'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36979665238564403)
,p_query_column_id=>47
,p_column_alias=>'COL47'
,p_column_display_sequence=>470
,p_column_heading=>'Col47'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36979751242564404)
,p_query_column_id=>48
,p_column_alias=>'COL48'
,p_column_display_sequence=>480
,p_column_heading=>'Col48'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36979874868564405)
,p_query_column_id=>49
,p_column_alias=>'COL49'
,p_column_display_sequence=>490
,p_column_heading=>'Col49'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36979908452564406)
,p_query_column_id=>50
,p_column_alias=>'COL50'
,p_column_display_sequence=>500
,p_column_heading=>'Col50'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37117708946783902)
,p_plug_name=>'Save Report'
,p_region_name=>'SAVEMODAL'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_api.id(1582248828871857852)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34951264204985365)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(34949434680985364)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37118066743783905)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(37117708946783902)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37117935838783904)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(37117708946783902)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34951371234985365)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(34949434680985364)
,p_button_name=>'SAVE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Report'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:saveReport();'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_collections',
'where collection_name = ''ORDER_ITEMS'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34951476429985365)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(34949434680985364)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272131893857923)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(37119900100783924)
,p_branch_name=>'go to 9999010010'
,p_branch_action=>'f?p=&APP_ID.:9999010010:&SESSION.::&DEBUG.:9999010011,9999010012,9999010013::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34952208368985365)
,p_branch_action=>'f?p=&APP_ID.:9999010012:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34951476429985365)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35947151870327903)
,p_name=>'P9999010013_UDCOL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(34949599287985364)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37117873469783903)
,p_name=>'P9999010013_REPORT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(37117708946783902)
,p_prompt=>'Report Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(37118438574783909)
,p_validation_name=>'report name is not null'
,p_validation_sequence=>10
,p_validation=>'P9999010013_REPORT_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(37117935838783904)
,p_associated_item=>wwv_flow_api.id(37117873469783903)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37130957714800382)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34951264204985365)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37131826077800383)
,p_event_id=>wwv_flow_api.id(37130957714800382)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Exit?'
,p_attribute_06=>'Yes'
,p_attribute_07=>'No'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37119157715783916)
,p_event_id=>wwv_flow_api.id(37130957714800382)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;'))
,p_attribute_02=>'P9999010013_REPORT_NAME'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37131385660800383)
,p_event_id=>wwv_flow_api.id(37130957714800382)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37118185633783906)
,p_name=>'close modal'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(37118066743783905)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37118233419783907)
,p_event_id=>wwv_flow_api.id(37118185633783906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(37117708946783902)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35947005493327902)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Doc setup'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select listagg(c004,'':'') within group ( order by seq_id )',
'  into :P9999010013_UDCOL',
'  from apex_collections',
' where collection_name = ''ORDER_ITEMS'';'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37118388657783908)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Report Process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_table varchar2(50)  := :P9999010011_OBJECT; ',
'  v_cols  varchar2(5000) := replace(:P9999010011_COLUMNS,'':'','','');',
'  v_where varchar2(5000) := ''where compcode = :compcode'';',
'  v_sql varchar2(5000);',
'  ',
'  v_REPORT_NO number := SEQ_BI_USERDEFINE_REPORT.nextval;',
'  ',
'BEGIN',
'  v_sql := ''select '' || v_cols || '' from '' || v_table;',
'begin',
' PKG_DML_BI_USERDEFINE_REPORT.INS_BI_USERDEFINE_REPORT',
'    (',
'     in_REPORT_NO             => v_REPORT_NO',
'    ,in_REPORT_TYPE           => ''T''',
'    ,in_REPORT_NAME           => :P9999010013_REPORT_NAME',
'    ,in_USER_QUERY            => :P9999010011_USER_QUERY',
'    ,in_SOURCE_NAME           => NULL',
'    ,in_SIGN_1                => NULL',
'    ,in_SIGN_2                => NULL',
'    ,in_SIGN_3                => NULL',
'    ,in_SIGN_4                => NULL',
'    ,in_SIGN_5                => NULL',
'    ,in_USER_WHERE            => :P9999010011_USER_WHERE',
'    ,in_EXECUTEABLE_QUERY     => v_sql',
'    ,in_EXECUTEABLE_QRY_WHERE => v_where',
'    ,in_USE_CONDITION         => NULL',
'    ,in_SS_CREATOR            => NULL',
'    ,in_SS_CREATED_ON         => SYSDATE',
'    ,in_SS_MODIFIER           => NULL',
'    ,in_SS_MODIFIED_ON        => NULL',
'    ,in_SS_IS_DELETED         => NULL',
'    ,in_SS_IS_UPLOADED        => NULL',
'    ,in_SS_UPLOADED_ON        => NULL',
'    ,in_SS_OG_NO              => NULL',
'    );',
'exception',
'when others then',
'    raise_application_error(-20100,sqlerrm);',
'end;',
'',
'for i in ( select seq_id sl,',
'                    c001 column_name,',
'                    c002 data_type,',
'                    c003 data_length,',
'                    c004 udcol_name',
'             FROM apex_collections',
'            WHERE collection_name = ''ORDER_ITEMS''',
'        ) loop',
'begin',
'    PKG_DML_BI_USERDEFINE_REPORT_DTL.INS_BI_USERDEFINE_REPORT_DTL',
'        (',
'         in_REPORTDTL_NO     => i.sl',
'        ,in_REPORT_NO        => v_REPORT_NO',
'        ,in_SELECTED_COLUMN  => i.column_name',
'        ,in_MAP_COLUMN       => null',
'        ,in_USER_COLUMN_NAME => i.udcol_name',
'        ,in_DATA_TYPE        => i.data_type',
'        ,in_GROUP_COLUMN     => null',
'        ,in_COLUMN_WIDTH     => to_number(i.data_length)',
'        ,in_SS_CREATOR       => null',
'        ,in_SS_CREATED_ON    => SYSDATE',
'        ,in_SS_MODIFIER      => null',
'        ,in_SS_MODIFIED_ON   => null',
'        ,in_SS_IS_DELETED    => null',
'        ,in_SS_IS_UPLOADED   => null',
'        ,in_SS_UPLOADED_ON   => null',
'        ,in_SS_OG_NO         => null',
'        );',
'exception',
'when others then',
'    raise_application_error(-20200,sqlerrm);',
'end;',
'end loop;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Report Saved Successfully.'
);
wwv_flow_api.component_end;
end;
/
