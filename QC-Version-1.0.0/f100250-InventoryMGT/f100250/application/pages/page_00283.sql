prompt --application/pages/page_00283
begin
--   Manifest
--     PAGE: 00283
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
 p_id=>283
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'for testing'
,p_step_title=>'for testing'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FGCharge_Bgcolor .a-GV-table tr td:nth-child(23).a-GV-cell,',
'#FGCharge_Bgcolor .a-GV-table th:nth-child(23){',
'background: #f38e00!important;',
'color: #fff!important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SYSADM'
,p_last_upd_yyyymmddhh24miss=>'20171004125333'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47652181005281868)
,p_plug_name=>'Excel Data View'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select WARECODE,',
'       (SELECT INITCAP (J.WAREDESC)',
'           FROM nmwhsmas j',
'         WHERE j.compcode = :compcode',
'         AND j.WARECODE = a.WARECODE) Business_Center,',
'       SMANCODE,',
'        (SELECT INITCAP (J.SMANNAME)',
'           FROM nmsmnmas j',
'         WHERE j.compcode = :compcode',
'         AND j.smancode = a.smancode) Sales_Executive,',
'       DOCTDATE,',
'       NMPRDTYP,',
'       (select S.NMCODDES ',
'        from nmcodmas s',
'        where S.COMPCODE = :compcode',
'        and s.NMHRDCDE = ''PRD''',
'        and S.MODLCODE = ''NM''',
'        and S.NMSOFCDE = a.NMPRDTYP) Product_Type,',
'       CUSTNAME,',
'       CUSTADR1,',
'       CUSTADR2,',
'       OCCUPATION,',
'       CUSTMOBL,',
'       WHSZONFK,',
'       (SELECT s.AREA_NAME_TREE_TYPE',
'          FROM VW_NMWHZNMAS s',
'        WHERE S.COMPCODE = :compcode',
'          AND s.WHSZONPK = a.WHSZONFK) Zone,',
'       ETBCUSTM,',
'       CMPETION,',
'       PROFILEE,',
'       USGSEGMT,',
'       INTERESTED_BRAND,',
'       (SELECT s.nmcoddes',
'          FROM nmcodmas s',
'         WHERE s.compcode = :compcode ',
'           AND s.nmhrdcde = ''COM''  ',
'           AND s.MODLCODE = ''NM''',
'           AND s.NMSOFCDE = a.INTERESTED_BRAND) BRAND,',
'       INTERESTED_MODEL,',
'        (SELECT nmcoddes',
'           from NMCODMAS T,VWNMITEM c',
'            where C.COMPCODE = :compcode',
'            AND T.NMSOFCDE = C.MODLCODE',
'            AND T.NMHRDCDE = ''MOD''',
'            AND T.COMPCODE = C.COMPCODE',
'            AND T.MODLCODE = ''NM''',
'            AND c.finishgd = ''Y''',
'            AND t.NMSOFCDE = a.INTERESTED_MODEL) MODEL,',
'       FUEL_TYPE,',
'       CURRENT_BRAND,',
'       PIPLNSTS,',
'       SRCOFENQ,',
'       PURCHASE_TYPE,',
'       CONTACT_MODE,',
'       PURCHASE_DATE,',
'       COMPCODE,',
'       apex_item.checkbox2(',
'        p_idx => 1,',
'        p_value => CFRMCKFLG ,',
'        p_attributes => ''class="empno"'',',
'        p_checked_values => ''Y'',',
'        p_checked_values_delimiter => '','') CFRMCKFLG ,',
'       ITEMCODE,',
'       (SELECT t.nmcoddes',
'        from NMCODMAS T,VWNMITEM c',
'            where C.COMPCODE = :compcode',
'            AND T.NMSOFCDE = C.MODLCODE',
'            and T.NMHRDCDE = ''MOD''',
'            and T.COMPCODE = C.COMPCODE',
'            and T.MODLCODE = ''NM''',
'            and c.finishgd = ''Y''',
'            and c.itemcode = a.itemcode) Product',
'  from NMMRKINF a',
'  where compcode = :compcode',
'   and nvl(CFRMCKFLG,''N'') = ''N'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(47652274763281868)
,p_name=>'Excel Data View'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'SYSADM'
,p_internal_uid=>15777781359869265
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40094127712661141)
,p_db_column_name=>'CUSTADR2'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Custadr2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40098130377661144)
,p_db_column_name=>'FUEL_TYPE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Fuel Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40098509502661144)
,p_db_column_name=>'CURRENT_BRAND'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Current Brand'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40098950646661144)
,p_db_column_name=>'PIPLNSTS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Piplnsts'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40099386885661144)
,p_db_column_name=>'SRCOFENQ'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Source of<br>Enquiry'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40099703465661145)
,p_db_column_name=>'PURCHASE_TYPE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40100184923661145)
,p_db_column_name=>'CONTACT_MODE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Contact Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40100496295661145)
,p_db_column_name=>'PURCHASE_DATE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Purchase Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40100935042661145)
,p_db_column_name=>'COMPCODE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40091753151661140)
,p_db_column_name=>'WARECODE'
,p_display_order=>34
,p_column_identifier=>'A'
,p_column_label=>'Business Center'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40095299447661142)
,p_db_column_name=>'WHSZONFK'
,p_display_order=>44
,p_column_identifier=>'J'
,p_column_label=>'Zone'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40092508285661140)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>54
,p_column_identifier=>'C'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40092119188661140)
,p_db_column_name=>'SMANCODE'
,p_display_order=>64
,p_column_identifier=>'B'
,p_column_label=>'Sales Executive'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40096917805661143)
,p_db_column_name=>'USGSEGMT'
,p_display_order=>74
,p_column_identifier=>'N'
,p_column_label=>'Usage segment'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40092991908661140)
,p_db_column_name=>'NMPRDTYP'
,p_display_order=>84
,p_column_identifier=>'D'
,p_column_label=>'Product Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40097380122661143)
,p_db_column_name=>'INTERESTED_BRAND'
,p_display_order=>94
,p_column_identifier=>'O'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40097730964661143)
,p_db_column_name=>'INTERESTED_MODEL'
,p_display_order=>104
,p_column_identifier=>'P'
,p_column_label=>'Model'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40101725824661146)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>114
,p_column_identifier=>'Z'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40093357867661141)
,p_db_column_name=>'CUSTNAME'
,p_display_order=>124
,p_column_identifier=>'E'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40093731109661141)
,p_db_column_name=>'CUSTADR1'
,p_display_order=>134
,p_column_identifier=>'F'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40094570379661141)
,p_db_column_name=>'OCCUPATION'
,p_display_order=>144
,p_column_identifier=>'H'
,p_column_label=>'Occupation'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40094927167661142)
,p_db_column_name=>'CUSTMOBL'
,p_display_order=>154
,p_column_identifier=>'I'
,p_column_label=>'Mobile'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40095784100661142)
,p_db_column_name=>'ETBCUSTM'
,p_display_order=>164
,p_column_identifier=>'K'
,p_column_label=>'ETB'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40096145516661142)
,p_db_column_name=>'CMPETION'
,p_display_order=>174
,p_column_identifier=>'L'
,p_column_label=>'Cmpetion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40096547837661143)
,p_db_column_name=>'PROFILEE'
,p_display_order=>184
,p_column_identifier=>'M'
,p_column_label=>'Profile'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40101309454661146)
,p_db_column_name=>'CFRMCKFLG'
,p_display_order=>194
,p_column_identifier=>'Y'
,p_column_label=>'Generate<br>Leads'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40089696457661138)
,p_db_column_name=>'BUSINESS_CENTER'
,p_display_order=>204
,p_column_identifier=>'AA'
,p_column_label=>'Business center'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40090110996661139)
,p_db_column_name=>'SALES_EXECUTIVE'
,p_display_order=>214
,p_column_identifier=>'AB'
,p_column_label=>'Sales executive'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40090535988661139)
,p_db_column_name=>'PRODUCT_TYPE'
,p_display_order=>224
,p_column_identifier=>'AC'
,p_column_label=>'Product type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40090905112661139)
,p_db_column_name=>'ZONE'
,p_display_order=>234
,p_column_identifier=>'AD'
,p_column_label=>'Zone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40091303286661139)
,p_db_column_name=>'BRAND'
,p_display_order=>244
,p_column_identifier=>'AE'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40102179252661146)
,p_db_column_name=>'MODEL'
,p_display_order=>254
,p_column_identifier=>'AF'
,p_column_label=>'Model'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40102502356661146)
,p_db_column_name=>'PRODUCT'
,p_display_order=>264
,p_column_identifier=>'AG'
,p_column_label=>'Product'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(47671698759491814)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'82284'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCTDATE:WARECODE:ZONE:SALES_EXECUTIVE:CUSTNAME:CUSTADR1:OCCUPATION:CUSTMOBL:PRODUCT_TYPE:INTERESTED_BRAND:INTERESTED_MODEL:ITEMCODE:ETBCUSTM:CMPETION:PROFILEE:USGSEGMT:SRCOFENQ:PURCHASE_TYPE:CONTACT_MODE:CFRMCKFLG:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47989142745162205)
,p_plug_name=>'Excel Data View IG'
,p_region_name=>'FGCharge_Bgcolor'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID ID,WARECODE,',
'       SMANCODE,',
'       DOCTDATE,--to_char(DOCTDATE,''dd/mm/rrrr'') DOCTDATE,',
'       NMPRDTYP,',
'       CUSTNAME,',
'       CUSTADR1,',
'       CUSTADR2,',
'       OCCUPATION,',
'       CUSTMOBL,',
'       WHSZONFK,',
'       ETBCUSTM,',
'       CMPETION,',
'       PROFILEE,',
'       USGSEGMT,',
'       INTERESTED_BRAND,',
'       INTERESTED_MODEL,',
'       FUEL_TYPE,',
'       CURRENT_BRAND,',
'       PIPLNSTS,',
'       SRCOFENQ,',
'       PURCHASE_TYPE,',
'       CONTACT_MODE,',
'       PURCHASE_DATE, --to_char(PURCHASE_DATE,''dd/mm/rrrr'') PURCHASE_DATE,',
'       COMPCODE,',
'       CFRMCKFLG ,',
'       ITEMCODE,',
'       DELRTYPE,',
'       errormg',
'  from NMMRKINF a',
'  where compcode = :compcode',
'   and nvl(CFRMCKFLG,''N'') = ''N'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47588799145277720)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>320
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47992793610162241)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Business Center'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP (J.WAREDESC) d,j.WARECODE',
'           FROM nmwhsmas j',
'         WHERE j.compcode = :compcode'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47993010830162243)
,p_name=>'SMANCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SMANCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Sales Executive'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT INITCAP (J.SMANNAME) d,j.smancode',
'           FROM nmsmnmas j',
'         WHERE j.compcode = :compcode'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47993143590162245)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Visit Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_max_length=>10
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47993293017162246)
,p_name=>'NMPRDTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMPRDTYP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Product Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select S.NMCODDES d,S.NMSOFCDE',
'        from nmcodmas s',
'        where S.COMPCODE = :compcode',
'        and s.NMHRDCDE = ''PRD''',
'        and S.MODLCODE = ''NM'''))
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47993418657162248)
,p_name=>'CUSTNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Customer Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>150
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47993589293162249)
,p_name=>'CUSTADR1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTADR1'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Address'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>512
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47993666083162250)
,p_name=>'CUSTADR2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTADR2'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(47993744300162251)
,p_name=>'OCCUPATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OCCUPATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Occupation'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48004179538368202)
,p_name=>'CUSTMOBL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTMOBL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Mobile'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48004248627368203)
,p_name=>'WHSZONFK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WHSZONFK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Zone'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.AREA_NAME_TREE_TYPE d,s.WHSZONPK',
'from VW_NMWHZNMAS s',
'where S.COMPCODE = :compcode'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48004444744368205)
,p_name=>'ETBCUSTM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ETBCUSTM'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'ETB'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48004570879368206)
,p_name=>'CMPETION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CMPETION'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cmpetion'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48004663071368207)
,p_name=>'PROFILEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROFILEE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Profile'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select S.NMCODDES d,S.NMSOFCDE',
'from nmcodmas s',
'where S.COMPCODE = :compcode',
'and S.NMHRDCDE = ''STU''',
'--and (:P237_ETBCUSTM +:P237_CMPETION) between s.SERIALNM and s.NMAMOUNT;'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48004728784368208)
,p_name=>'USGSEGMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USGSEGMT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Usage Segment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nmcoddes d,nmsofcde',
'from nmcodmas',
'where compcode=:compcode',
'and modlcode=''NM''',
'and nmhrdcde = ''AMT'''))
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48004814714368209)
,p_name=>'INTERESTED_BRAND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERESTED_BRAND'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Brand'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes d,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode ',
' AND nmhrdcde = ''COM'' ',
' And MODLCODE = ''NM'''))
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48005099595368211)
,p_name=>'INTERESTED_MODEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERESTED_MODEL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Model'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT T.NMCODDES d,t.nmsofcde',
'from NMCODMAS T,VWNMITEM c',
'where C.COMPCODE = :compcode',
'AND T.NMSOFCDE = C.MODLCODE',
'and T.NMHRDCDE = ''MOD''',
'and T.COMPCODE = C.COMPCODE',
'and T.MODLCODE = ''NM''',
'and c.finishgd = ''Y'' '))
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48005291487368213)
,p_name=>'FUEL_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FUEL_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Fuel type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Petrol;PT,Mobil;MB,Gasoline;GL,Diesel;DS,Kerosene;KS'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48005326691368214)
,p_name=>'CURRENT_BRAND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENT_BRAND'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(48005437326368215)
,p_name=>'PIPLNSTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PIPLNSTS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Pipeline Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.NMCODDES d, C.NMSOFCDE',
'from nmcodmas c',
'where C.COMPCODE = :compcode',
'and C.NMHRDCDE = ''PIP''',
'and c.MODLCODE = ''NM'''))
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48005519739368216)
,p_name=>'SRCOFENQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SRCOFENQ'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Source of Enquiry'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.NMCODDES d, C.NMSOFCDE',
'from nmcodmas c',
'where C.COMPCODE = :compcode',
'and C.NMHRDCDE = ''ENQ''',
'and c.MODLCODE = ''NM'''))
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48005683623368217)
,p_name=>'PURCHASE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURCHASE_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Mode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Hot;H,Cold;C,Warm;W'
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48005800921368218)
,p_name=>'CONTACT_MODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTACT_MODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Contact mode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STATIC:Walk In;WI,eMail;EM,Reference;RF,Outdoor Sales Call;OS,Over Phone;OP,Visit;VS,SMS;SM,Corporate Presentation;CP,',
'Showroom Appointment;SA,Test Drive;TD,Internet;IN,Others;OT'))
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48005896868368219)
,p_name=>'PURCHASE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURCHASE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Purchase date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_max_length=>10
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48005922364368220)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48006054353368221)
,p_name=>'CFRMCKFLG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CFRMCKFLG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Generate Leads'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;Y,No;N'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48006160717368222)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT t.nmcoddes d,c.itemcode',
'        from NMCODMAS T,VWNMITEM c',
'            where C.COMPCODE = :compcode',
'            AND T.NMSOFCDE = C.MODLCODE',
'            and T.NMHRDCDE = ''MOD''',
'            and T.COMPCODE = C.COMPCODE',
'            and T.MODLCODE = ''NM''',
'            and c.finishgd = ''Y'''))
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48006802885368228)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48006878569368229)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48007112124368231)
,p_name=>'DELRTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELRTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Customer Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT c.NMCODDES d,C.NMSOFCDE',
'              FROM nmcodmas C',
'             WHERE     C.NMHRDCDE = ''CTY''',
'                   AND C.MODLCODE = ''NM''',
'                   AND c.COMPCODE = :COMPCODE',
'                   AND C.NMSOFCDE IN (''IND'', ''COR'')'))
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48007779128368238)
,p_name=>'ERRORMG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ERRORMG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<font color="red">Error</font>'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_item_attributes=>'style = "color:red;"'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(47992645343162240)
,p_internal_uid=>16118151939749637
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
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
 p_id=>wwv_flow_api.id(48010310283431967)
,p_interactive_grid_id=>wwv_flow_api.id(47992645343162240)
,p_static_id=>'395721'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(48010360783431968)
,p_report_id=>wwv_flow_api.id(48010310283431967)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40085799206745299)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(48006802885368228)
,p_is_visible=>false
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40087861243796597)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(48007112124368231)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48010835095431971)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(47992793610162241)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>180
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48011367303431974)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(47993010830162243)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48011864763431976)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(47993143590162245)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48012365007431978)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(47993293017162246)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48012880388431980)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(47993418657162248)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>169
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48013408855431982)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(47993589293162249)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>209
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48013880701431984)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(47993666083162250)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48014319778431985)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(47993744300162251)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48014859041431987)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(48004179538368202)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48015326279431989)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(48004248627368203)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>257
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48015853209431991)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(48004444744368205)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48016368591431993)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(48004570879368206)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48016826352431995)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(48004663071368207)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>117
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48017358529431997)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(48004728784368208)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>117
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48017821362431999)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(48004814714368209)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48018397915432001)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(48005099595368211)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48018883477432003)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(48005291487368213)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48019383640432004)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(48005326691368214)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48019862523432006)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(48005437326368215)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48020358800432008)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(48005519739368216)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48020851292432010)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(48005683623368217)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48021326568432012)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(48005800921368218)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48021841234432014)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(48005896868368219)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48022411775432016)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(48005922364368220)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48022833382432018)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(48006054353368221)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48023390603432020)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(48006160717368222)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48200737981060473)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(48007779128368238)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>600
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48214447421541482)
,p_view_id=>wwv_flow_api.id(48010360783431968)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(47588799145277720)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(123931901362257083)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background:gray;"'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(146096439441687223)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40085009590661125)
,p_button_sequence=>61
,p_button_plug_id=>wwv_flow_api.id(146096439441687223)
,p_button_name=>'Upload_excel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload'
,p_button_position=>'CHANGE'
,p_button_execute_validations=>'N'
,p_button_condition=>'P283_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40085426521661125)
,p_button_sequence=>71
,p_button_plug_id=>wwv_flow_api.id(146096439441687223)
,p_button_name=>'Process'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Process'
,p_button_position=>'CHANGE'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40086220816661126)
,p_button_sequence=>81
,p_button_plug_id=>wwv_flow_api.id(146096439441687223)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CHANGE'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40085846325661125)
,p_button_sequence=>91
,p_button_plug_id=>wwv_flow_api.id(146096439441687223)
,p_button_name=>'clear'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:283:&SESSION.::&DEBUG.:RP,275::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40084628488661124)
,p_button_sequence=>101
,p_button_plug_id=>wwv_flow_api.id(146096439441687223)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,275::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40086625643661127)
,p_name=>'P283_FILEPATH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(146096439441687223)
,p_prompt=>'Filepath'
,p_source=>':IMAGE_PREFIX'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40087011574661130)
,p_name=>'P283_FILE'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(146096439441687223)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp'
,p_source=>'BLOB_CONTENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cattributes_element=>'style = ''name=browse'''
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIME_TYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_04=>'CHARACTER_SET'
,p_attribute_05=>'LAST_UPDATED'
,p_attribute_06=>'N'
,p_attribute_12=>'NATIVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40087449951661130)
,p_name=>'P283_SHEET'
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_api.id(146096439441687223)
,p_prompt=>'Sheet'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>' select distinct sheet_name, sheet_nr from (select * from table( as_read_xlsx.read( (select blob_content from XLSX_FILES where id = :P283_FILESIZE)) ));'
,p_lov_cascade_parent_items=>'P283_FILESIZE'
,p_ajax_items_to_submit=>'P283_FILESIZE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40087852492661131)
,p_name=>'P283_FILESIZE'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_api.id(146096439441687223)
,p_prompt=>'Filesize'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40088203502661131)
,p_name=>'P283_FILE_ID'
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_api.id(146096439441687223)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40088644824661131)
,p_name=>'P283_ID'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_api.id(146096439441687223)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40089013394661131)
,p_name=>'P283_FILE_1'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_api.id(146096439441687223)
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cattributes_element=>'style = ''name=browse'''
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIME_TYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_04=>'CHARACTER_SET'
,p_attribute_05=>'LAST_UPDATED'
,p_attribute_06=>'N'
,p_attribute_12=>'NATIVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40103604664661151)
,p_name=>'P283_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(123931901362257083)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40104070048661151)
,p_name=>'P283_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(123931901362257083)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40104416946661151)
,p_name=>'P283_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(123931901362257083)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(40118288051661168)
,p_tabular_form_region_id=>wwv_flow_api.id(47989142745162205)
,p_validation_name=>'check_error_flag'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' if :ERRORMG is not null and :CFRMCKFLG = ''Y'' then',
' -- :CFRMCKFLG := ''N'';',
'  return ''This record has some error..'';',
' end if;',
' return null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(40086220816661126)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40122430664661182)
,p_name=>'frezze report'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40122805456661182)
,p_name=>'refresh'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40121558398661182)
,p_name=>'get_filename'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P283_FILE'
,p_bind_type=>'bind'
,p_bind_event_type=>'dblclick'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40122030767661182)
,p_event_id=>wwv_flow_api.id(40121558398661182)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:apex.submit(2);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40119770703661180)
,p_name=>'Clear_search'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40120255664661181)
,p_event_id=>wwv_flow_api.id(40119770703661180)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P283_FILEPATH,P283_FILE,P283_SHEET,P283_FILESIZE,P283_PROGNM,P283_NO,P283_FILE_ID,P283_ID'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40120678292661181)
,p_name=>'get_val'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P283_FILE_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40121112674661181)
,p_event_id=>wwv_flow_api.id(40120678292661181)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P283_FILE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P283_FILE_1'
,p_attribute_07=>'P283_FILE_1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40118940548661178)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of XLSX_FILES'
,p_attribute_02=>'XLSX_FILES'
,p_attribute_03=>'P283_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P283_FILESIZE'
,p_attribute_11=>'I'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40119383744661179)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert  into nmmrkinf from excel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_query              VARCHAR2 (4000);',
'   v_sheet_name         VARCHAR2 (100);',
'   v_sheet_nr           NUMBER;',
'   v_cnt                NUMBER;',
'   vc                   NUMBER;',
'   v_item               VARCHAR2 (500);',
'   v_delar              VARCHAR2 (500);',
'   v_OCCUPATION         VARCHAR2 (500);',
'   v_USGSEGMT           VARCHAR2 (500);',
'   v_USGSEGMT_excel           VARCHAR2 (500);',
'   v_INTERESTED_BRAND   VARCHAR2 (500);',
'   v_INTERESTED_MODEL   VARCHAR2 (500);',
'   v_FUEL_TYPE          VARCHAR2 (500);',
'   v_PIPLNSTS           VARCHAR2 (500);',
'   v_SRCOFENQ           VARCHAR2 (500);',
'   v_CONTACT_MODE       VARCHAR2 (500);',
'   v_PURCHASE_TYPE      VARCHAR2 (500);',
'   v_warecode           varchar2 (500);',
'   v_del                varchar2 (500);',
'   v_profile            varchar2 (500);',
'   v_errormg            varchar2 (500);',
'BEGIN',
'if :P283_FILESIZE is not null then',
'   SELECT MIN (sheet_nr)',
'     INTO v_sheet_nr',
'     FROM (SELECT *',
'             FROM TABLE (as_read_xlsx.read ( (SELECT blob_content',
'                                                FROM XLSX_FILES',
'                                               WHERE id = :P283_FILESIZE))));',
'',
'   SELECT MIN (sheet_name)',
'     INTO v_sheet_name',
'     FROM (SELECT *',
'             FROM TABLE (as_read_xlsx.read ( (SELECT blob_content',
'                                                FROM XLSX_FILES',
'                                               WHERE id = :P283_FILESIZE))))',
'    WHERE sheet_nr = :P283_SHEET;',
'',
'',
'   v_cnt := 0;',
'',
'   FOR x',
'      IN (WITH xlsx',
'                  AS (SELECT ROW_NR,',
'                             COL_NR,',
'                             CASE CELL_TYPE',
'                                WHEN ''S''',
'                                THEN',
'                                   STRING_VAL',
'                                WHEN ''N''',
'                                THEN',
'                                   TO_CHAR (NUMBER_VAL)',
'                                WHEN ''D''',
'                                THEN',
'                                   TO_CHAR (DATE_VAL,',
'                                            ''YYYY-MM-DD HH24:MI:SS'')',
'                                ELSE',
'                                   FORMULA',
'                             END',
'                                CELL_VAL -- to make PIVOT works we have to have one data type for this column - in our case CHAR',
'                        FROM (SELECT *',
'                                FROM TABLE (as_read_xlsx.',
'                                             read (',
'                                               (SELECT blob_content',
'                                                  FROM XLSX_FILES',
'                                                 WHERE id = :P283_FILESIZE),',
'                                               v_sheet_name))))',
'          SELECT ad.*',
'            FROM xlsx PIVOT (MAX (CELL_VAL)',
'                      FOR COL_NR',
'                      IN  (1 AS SMANCODE,',
'                          2 AS DOCTDATE,',
'                          3 AS NMPRDTYP,',
'                          4 AS DELRTYPE,',
'                          5 AS CUSTNAME,',
'                          6 AS CUST_COMPANY,',
'                          7 AS CUSTADR1,',
'                          8 AS CUSTADR2,',
'                          9 AS OCCUPATION,',
'                          10 AS CUSTMOBL,',
'                          11 AS SALES_POTENTIAL,',
'                          12 AS WHSZONFK,',
'                          13 AS ETBCUSTM,',
'                          14 AS CMPETION,',
'                          15 AS USGSEGMT,',
'                          16 AS INTERESTED_BRAND,',
'                          17 AS INTERESTED_MODEL,',
'                          18 AS FUEL_TYPE,',
'                          19 AS PIPLNSTS,',
'                          20 AS SRCOFENQ,',
'                          21 AS CONTACT_MODE,',
'                          22 AS PURCHASE_DATE,',
'                          23 AS PURCHASE_TYPE,',
'                          24 AS CUSTOMER_REMARKS_SALES)) ad',
'           WHERE row_nr > 1)',
'   LOOP',
'   v_errormg := '''';',
'      BEGIN',
'        SELECT COUNT (*)',
'           INTO vc',
'           FROM nmmrkinf inf',
'          WHERE     inf.COMPCODE = :compcode',
'                AND NVL (inf.CFRMCKFLG, ''N'') = ''Y''',
'                AND inf.DOCTDATE = trunc(TO_DATE (x.DOCTDATE, ''RRRR-MM-DD HH24:MI:SS''))',
'                AND INF.CUSTMOBL = x.CUSTMOBL',
'                AND inf.ITEMCODE in (SELECT DISTINCT C.ITEMCODE',
'                                          FROM NMCODMAS T, VWNMITEM c',
'                                         WHERE     C.COMPCODE = :compcode',
'                                               AND T.NMSOFCDE = C.MODLCODE',
'                                               AND T.NMHRDCDE = ''MOD''',
'                                               AND T.COMPCODE = C.COMPCODE',
'                                               AND T.MODLCODE = ''NM''',
'                                               AND c.finishgd = ''Y''',
'                                               AND NVL (upper(t.NMCODDES), ''C'') like ''%''||upper(x.INTERESTED_MODEL)||''%'');',
'        ',
'        exception',
'        when no_data_found then',
'         vc:=0;',
'         ',
'      END;',
'',
'      IF vc = 0',
'      THEN',
'      ',
'         begin',
'          SELECT DISTINCT c.WARECODE',
'            into v_warecode',
'            FROM nmwhsmas j, sycstacc c',
'           WHERE     j.compcode = :compcode',
'                 AND j.compcode = c.compcode(+)',
'                 AND j.WARECODE = c.WARECODE(+)',
'                 AND c.grupcode = :APP_USER',
'                 AND nvl(J.MAINSTOR,''N'') = ''Y'';',
'           EXCEPTION',
'               WHEN NO_DATA_FOUND',
'            THEN',
'           /*    raise_application_error (',
'                  -20001,',
'                  ''Business center not found for this user: '' || :APP_USER);*/',
'               v_errormg := v_errormg||''Business center not found for this user: '' || :APP_USER||'',  '';',
'         end;',
'       ',
'         begin',
'',
'            select S.NMSOFCDE',
'              into v_profile',
'             from nmcodmas s',
'                where S.COMPCODE = :compcode',
'                and S.NMHRDCDE = ''STU''',
'                and nvl(x.ETBCUSTM,0) + nvl(x.CMPETION,0) between s.SERIALNM and s.NMAMOUNT;',
'',
'            end;',
'         ',
'',
'         --------------------get codmas value------------------------------',
'         BEGIN',
'            SELECT C.NMSOFCDE',
'              INTO v_delar',
'              FROM nmcodmas C',
'             WHERE     C.NMHRDCDE = ''CTY''',
'                   AND C.MODLCODE = ''NM''',
'                   AND c.COMPCODE = :COMPCODE',
'                   AND C.NMSOFCDE IN (''IND'', ''COR'')',
'                   AND upper(c.NMCODDES) like ''%''||upper(x.DELRTYPE)||''%'';',
'          EXCEPTION',
'            WHEN NO_DATA_FOUND',
'            THEN',
'             /*  raise_application_error (',
'                  -20001,',
'                  ''Category not found for this type: '' || upper(x.DELRTYPE));*/',
'          --   apex_error.add_error (p_message => ''Category not found for this type: '' || upper(x.DELRTYPE),p_display_location => apex_error.c_inline_in_notification );',
'           v_errormg := v_errormg|| ''Category not found for this type: '' || upper(x.DELRTYPE)||'',  '';',
'           WHEN Too_many_rows',
'            THEN',
'              /* raise_application_error (',
'                  -20001,',
'                  ''Too many record found for this type: '' || upper(x.DELRTYPE));*/',
'                  v_errormg := v_errormg|| ''Too many record found for this type: '' || upper(x.DELRTYPE)||'',  '';',
'                  v_delar := '''';',
'         END;',
'          ',
'          BEGIN',
'              SELECT DISTINCT C.ITEMCODE',
'              INTO v_item',
'              FROM NMCODMAS T, VWNMITEM c',
'             WHERE     C.COMPCODE = :compcode',
'                   AND T.NMSOFCDE = C.MODLCODE',
'                   AND T.NMHRDCDE = ''MOD''',
'                   AND T.COMPCODE = C.COMPCODE',
'                   AND T.MODLCODE = ''NM''',
'                   AND c.finishgd = ''Y''',
'                   AND NVL (upper(t.NMCODDES), ''C'') like ''%''||upper(x.INTERESTED_MODEL)||''%''',
'                   AND NVL (upper(c.commgrup), ''0'') in (SELECT nmsofcde',
'                                                          FROM nmcodmas',
'                                                         WHERE compcode = :compcode ',
'                                                         AND nmhrdcde = ''COM''  ',
'                                                         and MODLCODE = ''NM''',
'                                                         AND nvl(NMRTDNON,''N'') = ''N''',
'                                                         and upper(nmcoddes) like ''%''|| upper(x.INTERESTED_BRAND)||''%'');',
'                                                                           ',
'                   ',
'         EXCEPTION',
'               WHEN NO_DATA_FOUND',
'            THEN',
'             /*raise_application_error (',
'                  -20001,',
'                  ''Product not found for this Model: '' || x.INTERESTED_MODEL);*/',
'                v_errormg := v_errormg|| ''Product not found for this Model: '' || x.INTERESTED_MODEL||'',  '';  ',
'            WHEN Too_many_rows',
'            THEN',
'                v_item := '''';',
'            WHEN OTHERS',
'            THEN',
'               v_item := 0;',
'         END;',
'         ',
'         BEGIN',
'            SELECT CASE upper(x.OCCUPATION)',
'                      WHEN upper(''Bussiness'') THEN ''BUSSINESS''',
'                      WHEN upper(''Private Jobs'') THEN ''PRIVATE JOBS''',
'                      WHEN upper(''Govt. Jobs'') THEN ''GOVT. JOBS''',
'                   END',
'              INTO v_OCCUPATION',
'              FROM DUAL;',
'         EXCEPTION',
'            WHEN NO_DATA_FOUND',
'            THEN',
'             /*raise_application_error (',
'                  -20001,',
'                  ''Occupation not found for this type: '' ||x.OCCUPATION);*/',
'               v_errormg := v_errormg|| ''Occupation not found for this type: '' ||x.OCCUPATION||'',  '';',
'            WHEN Too_many_rows',
'            THEN',
'                v_OCCUPATION := '''';',
'         END;',
'',
'         BEGIN',
'            SELECT nmsofcde',
'              INTO v_USGSEGMT',
'              FROM nmcodmas',
'             WHERE     compcode = :compcode',
'                   AND modlcode = ''NM''',
'                   AND nmhrdcde = ''AMT''',
'                   AND upper(nmcoddes) like ''%''||upper(x.USGSEGMT)||''%''',
'                   AND upper(NMUPCDE)  = upper(x.NMPRDTYP);',
'         EXCEPTION',
'            WHEN NO_DATA_FOUND',
'            THEN',
'               /*ise_application_error (',
'                  -20001,',
'                  ''Usage segment not found for this type: '' ||x.USGSEGMT);*/',
'               v_errormg := v_errormg|| ''Usage segment not found for this type: '' ||x.USGSEGMT||'',  ''; ',
'            WHEN Too_many_rows',
'            THEN',
'                v_USGSEGMT := '''';',
'         END;',
'',
'         BEGIN',
'            SELECT nmsofcde',
'              INTO v_INTERESTED_BRAND',
'              FROM nmcodmas',
'             WHERE     compcode = :compcode',
'                   AND nmhrdcde = ''COM''',
'                   AND MODLCODE = ''NM''',
'                   AND NVL (NMRTDNON, ''N'') = ''N''',
'                   AND upper(nmcoddes) like ''%''||upper(x.INTERESTED_BRAND)||''%'';',
'         EXCEPTION',
'            WHEN NO_DATA_FOUND',
'            THEN',
'               /*ise_application_error (',
'                   -20001,',
'                  ''Interested Brand not found for this type: ''',
'                  || x.INTERESTED_BRAND);*/',
'                v_errormg := v_errormg||  ''Interested Brand not found for this type: ''|| x.INTERESTED_BRAND||'',  '';',
'            WHEN Too_many_rows',
'            THEN',
'                v_INTERESTED_BRAND := '''';',
'         END;',
'',
'         BEGIN',
'            SELECT DISTINCT t.nmsofcde',
'              INTO v_INTERESTED_MODEL',
'              FROM NMCODMAS T, VWNMITEM c',
'             WHERE     C.COMPCODE = :compcode',
'                   AND T.NMSOFCDE = C.MODLCODE',
'                   AND T.NMHRDCDE = ''MOD''',
'                   AND T.COMPCODE = C.COMPCODE',
'                   AND T.MODLCODE = ''NM''',
'                   AND c.finishgd = ''Y''',
'                   AND upper(NMCODDES) like ''%''||upper(x.INTERESTED_MODEL)||''%'';',
'         EXCEPTION',
'            WHEN NO_DATA_FOUND',
'            THEN',
'              /*aise_application_error (',
'                  -20001,',
'                  ''Interested Model not found for this type: ''',
'                  || x.INTERESTED_MODEL);*/',
'             v_errormg := v_errormg||  ''Interested Model not found for this type: '' || x.INTERESTED_MODEL||'',  '';  ',
'            WHEN Too_many_rows',
'            THEN',
'                v_INTERESTED_MODEL := '''';',
'         END;',
'',
'         BEGIN',
'            SELECT CASE upper(x.FUEL_TYPE)',
'                      WHEN upper(''Petrol'') THEN ''PT''',
'                      WHEN upper(''Mobil'') THEN ''MB''',
'                      WHEN upper(''Gasoline'') THEN ''GL''',
'                      WHEN upper(''Diesel'') THEN ''DS''',
'                      WHEN upper(''Kerosene'') THEN ''KS''',
'                   END',
'              INTO v_FUEL_TYPE',
'              FROM DUAL;',
'         EXCEPTION',
'            WHEN NO_DATA_FOUND',
'            THEN',
'           /*  raise_application_error (',
'                   -20001,',
'                  ''Fuel Type not found for this type: '' || x.FUEL_TYPE);*/',
'              v_errormg := v_errormg||  ''Fuel Type not found for this type: '' || x.FUEL_TYPE||'',  '';  ',
'            WHEN Too_many_rows',
'            THEN',
'                v_FUEL_TYPE := '''';',
'         END;',
'',
'         BEGIN',
'            SELECT C.NMSOFCDE',
'              INTO v_PIPLNSTS',
'              FROM nmcodmas c',
'             WHERE     C.COMPCODE = :compcode',
'                   AND C.NMHRDCDE = ''PIP''',
'                   AND upper(C.NMCODDES) like ''%''||upper(x.PIPLNSTS)||''%'';',
'         EXCEPTION',
'            WHEN NO_DATA_FOUND',
'            THEN',
'               /*ise_application_error (',
'                   -20001,',
'                  ''Pipe Line Status not found for this type: '' || x.PIPLNSTS);*/',
'              v_errormg := v_errormg||  ''Pipe Line Status not found for this type: '' || x.PIPLNSTS||'',  ''; ',
'            WHEN Too_many_rows',
'            THEN',
'                v_PIPLNSTS := '''';',
'         END;',
'',
'         BEGIN',
'            SELECT C.NMSOFCDE',
'              INTO v_SRCOFENQ',
'              FROM nmcodmas c',
'             WHERE     C.COMPCODE = :compcode',
'                   AND C.NMHRDCDE = ''ENQ''',
'                   AND upper(c.NMCODDES) like ''%''||upper(x.SRCOFENQ)||''%'';',
'         EXCEPTION',
'            WHEN NO_DATA_FOUND',
'            THEN',
'             /*raise_application_error (',
'                   -20001,',
'                  ''Source of Enquiry not found for this type: '' || x.SRCOFENQ);*/',
'                v_errormg := v_errormg||  ''Source of Enquiry not found for this type: '' || x.SRCOFENQ||'',  '';',
'            WHEN Too_many_rows',
'            THEN',
'                v_SRCOFENQ := '''';',
'         END;',
'',
'         BEGIN',
'            SELECT CASE upper(x.CONTACT_MODE)',
'                      WHEN upper(''Walk In'') THEN ''WI''',
'                      WHEN upper(''eMail'') THEN ''EM''',
'                      WHEN upper(''Reference'') THEN ''RF''',
'                      WHEN upper(''Outdoor Sales Call'') THEN ''OS''',
'                      WHEN upper(''Over Phone'') THEN ''OP''',
'                      WHEN upper(''Visit'') THEN ''VS''',
'                      WHEN upper(''SMS'') THEN ''SM''',
'                      WHEN upper(''Corporate Presentation'') THEN ''CP''',
'                      WHEN upper(''Showroom Appointment'') THEN ''SA''',
'                      WHEN upper(''Test Drive'') THEN ''TD''',
'                      WHEN upper(''Internet'') THEN ''IN''',
'                      WHEN upper(''Others'') THEN ''OT''',
'                   END',
'              INTO v_CONTACT_MODE',
'              FROM DUAL;',
'         EXCEPTION',
'            WHEN NO_DATA_FOUND',
'            THEN',
'               /*ise_application_error (',
'                   -20001,',
'                  ''Contact mode not found for this mode: '' || x.CONTACT_MODE);*/',
'              v_errormg := v_errormg||  ''Contact mode not found for this mode: '' || x.CONTACT_MODE||'',  '';',
'            WHEN Too_many_rows',
'            THEN',
'                v_CONTACT_MODE := '''';',
'         END;',
'',
'         BEGIN',
'            SELECT NMSOFCDE',
'              INTO v_PURCHASE_TYPE',
'              FROM nmcodmas a',
'             WHERE     a.compcode = :COMPCODE',
'                   AND a.NMHRDCDE = ''MOS''',
'                   AND a.MODLCODE = ''NM''',
'                   AND upper(A.NMCODDES) like ''%''||upper(x.PURCHASE_TYPE)||''%'';',
'         EXCEPTION',
'            WHEN NO_DATA_FOUND',
'            THEN',
'               /*ise_application_error (',
'                   -20001,',
'                  ''Mode not found for this mode: '' || x.PURCHASE_TYPE);*/',
'              v_errormg := v_errormg||  ''Mode not found for this mode: '' || x.PURCHASE_TYPE||'',  '';',
'            WHEN Too_many_rows',
'            THEN',
'                v_PURCHASE_TYPE := '''';',
'         END;',
'',
'         --------------------get codmas value------------------------------',
'         INSERT INTO nmmrkinf (WARECODE,',
'                               SMANCODE,',
'                               DOCTDATE,',
'                               NMPRDTYP,',
'                               CUSTNAME,',
'                               CUSTADR1,',
'                               CUSTADR2,',
'                               OCCUPATION,',
'                               CUSTMOBL,',
'                               WHSZONFK,',
'                               ETBCUSTM,',
'                               CMPETION,',
'                               PROFILEE,',
'                               USGSEGMT,',
'                               INTERESTED_BRAND,',
'                               INTERESTED_MODEL,',
'                               FUEL_TYPE,',
'                               PIPLNSTS,',
'                               SRCOFENQ,',
'                               PURCHASE_TYPE,',
'                               CONTACT_MODE,',
'                               PURCHASE_DATE,',
'                               ITEMCODE,',
'                               COMPCODE,',
'                               CFRMCKFLG,',
'                               OPRSTAMP,',
'                               TIMSTAMP,',
'                               DELRTYPE,',
'                               CUST_COMPANY,',
'                               SALES_POTENTIAL,',
'                               CUSTOMER_REMARKS_SALES,',
'                               errormg)',
'              VALUES (v_warecode,',
'                      x.SMANCODE,',
'                      trunc(TO_DATE (x.DOCTDATE, ''RRRR-MM-DD HH24:MI:SS'')), ',
'                      x.NMPRDTYP,',
'                      x.CUSTNAME,',
'                      x.CUSTADR1,',
'                      x.CUSTADR2,',
'                      v_OCCUPATION,',
'                      x.CUSTMOBL,',
'                      x.WHSZONFK,',
'                      x.ETBCUSTM,',
'                      x.CMPETION,',
'                      v_profile, --''%''||v_profile||''%'',',
'                      v_USGSEGMT,',
'                      v_INTERESTED_BRAND,',
'                      v_INTERESTED_MODEL,',
'                      v_FUEL_TYPE,',
'                      v_PIPLNSTS,',
'                      v_SRCOFENQ,',
'                      v_PURCHASE_TYPE,',
'                      v_CONTACT_MODE,',
'                      trunc(TO_DATE (x.PURCHASE_DATE, ''RRRR-MM-DD HH24:MI:SS'')),',
'                      v_item,',
'                      :compcode,',
'                      ''N'',',
'                      :APP_USER,',
'                      SYSDATE,',
'                      v_delar,',
'                      x.CUST_COMPANY,',
'                      x.SALES_POTENTIAL,',
'                      x.CUSTOMER_REMARKS_SALES,',
'                      v_errormg);',
'      END IF;',
'   END LOOP;',
' end if;',
'exception',
' when others then',
'  null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(40085426521661125)
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40118576483661169)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(47989142745162205)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Excel Data View - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
null;
wwv_flow_api.component_end;
end;
/
