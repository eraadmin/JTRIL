prompt --application/pages/page_00134
begin
--   Manifest
--     PAGE: 00134
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
 p_id=>134
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Followup Up History'
,p_step_title=>'Followup Up History'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#navbar {',
'    display: none !important;',
'    overflow: hidden;',
'    position: absolute;',
'    top: 16px;',
'    right: 10px;',
'    font: normal 11px/12px Arial, sans-serif;',
'    color: #000;',
'    text-shadow: 0 1px 0px rgba(255,255,255,.5);',
'}',
'',
'#header {',
'    height: 0px !important;',
'    overflow: hidden;',
'    width: 100%;',
'}',
'#logo {',
'    display: none!important;',
'    position: absolute;',
'    top: 16px;',
'    left: 10px;',
'}'))
,p_step_template=>wwv_flow_api.id(47564929163858117)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140737'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(135956595674337386)
,p_name=>'Followup uncomplete'
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select * from NM_MRK_SCH_FOLLOWUP',
'where compcode=:compcode ',
'and nvl(complete,''N'')=''N'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135957328583337389)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_column_heading=>'Compcode'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135957686367337393)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Docttype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135958152888337393)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Subttype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135958497945337393)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>4
,p_column_heading=>'Docnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135958920823337394)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Doctdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135959303286337394)
,p_query_column_id=>6
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>6
,p_column_heading=>'Serlnumb'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135959678867337394)
,p_query_column_id=>7
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>7
,p_column_heading=>'Partycde'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135960074529337394)
,p_query_column_id=>8
,p_column_alias=>'CUSTMRID'
,p_column_display_sequence=>8
,p_column_heading=>'Custmrid'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135960496317337394)
,p_query_column_id=>9
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>9
,p_column_heading=>'Smancode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135960885429337394)
,p_query_column_id=>10
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>10
,p_column_heading=>'Raisedby'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135961300469337394)
,p_query_column_id=>11
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>11
,p_column_heading=>'Apprvdby'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135961684580337394)
,p_query_column_id=>12
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>12
,p_column_heading=>'Apprdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135962104665337394)
,p_query_column_id=>13
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>13
,p_column_heading=>'Itemcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135962549240337394)
,p_query_column_id=>14
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>14
,p_column_heading=>'Warecode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135962878807337396)
,p_query_column_id=>15
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>15
,p_column_heading=>'Costcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135963334433337396)
,p_query_column_id=>16
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>16
,p_column_heading=>'Refnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135963721092337396)
,p_query_column_id=>17
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>17
,p_column_heading=>'Refndate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135964134250337396)
,p_query_column_id=>18
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>18
,p_column_heading=>'Updoctyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135964499565337396)
,p_query_column_id=>19
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>19
,p_column_heading=>'Upsubtyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135964896534337396)
,p_query_column_id=>20
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>20
,p_column_heading=>'Updocnum'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135965319873337396)
,p_query_column_id=>21
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>21
,p_column_heading=>'Updocdte'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135965697707337400)
,p_query_column_id=>22
,p_column_alias=>'UPDOCSRL'
,p_column_display_sequence=>22
,p_column_heading=>'Updocsrl'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135966142041337400)
,p_query_column_id=>23
,p_column_alias=>'VOC'
,p_column_display_sequence=>24
,p_column_heading=>'Voc'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135966506807337400)
,p_query_column_id=>24
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>25
,p_column_heading=>'Remarks'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135966944497337400)
,p_query_column_id=>25
,p_column_alias=>'PRNTFLAG'
,p_column_display_sequence=>26
,p_column_heading=>'Prntflag'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135967321182337402)
,p_query_column_id=>26
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>28
,p_column_heading=>'Statuscd'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135967688385337402)
,p_query_column_id=>27
,p_column_alias=>'COMPLETE'
,p_column_display_sequence=>29
,p_column_heading=>'Complete'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135968135213337402)
,p_query_column_id=>28
,p_column_alias=>'FOLLOWDT'
,p_column_display_sequence=>23
,p_column_heading=>'Follow Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135968556400337402)
,p_query_column_id=>29
,p_column_alias=>'ENDDDATE'
,p_column_display_sequence=>30
,p_column_heading=>'Endddate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135968945089337402)
,p_query_column_id=>30
,p_column_alias=>'NEXTDATE'
,p_column_display_sequence=>27
,p_column_heading=>'Next Follow-Up Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135969362027337402)
,p_query_column_id=>31
,p_column_alias=>'RMNDTYPE'
,p_column_display_sequence=>31
,p_column_heading=>'Rmndtype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135969749905337402)
,p_query_column_id=>32
,p_column_alias=>'FSTRMNDT'
,p_column_display_sequence=>32
,p_column_heading=>'Fstrmndt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135970108360337404)
,p_query_column_id=>33
,p_column_alias=>'FSTRMTYP'
,p_column_display_sequence=>33
,p_column_heading=>'Fstrmtyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135970473521337405)
,p_query_column_id=>34
,p_column_alias=>'SNDRMNDT'
,p_column_display_sequence=>34
,p_column_heading=>'Sndrmndt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135970890808337405)
,p_query_column_id=>35
,p_column_alias=>'SNDRMTYP'
,p_column_display_sequence=>35
,p_column_heading=>'Sndrmtyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135971288436337405)
,p_query_column_id=>36
,p_column_alias=>'TRDRMNDT'
,p_column_display_sequence=>36
,p_column_heading=>'Trdrmndt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135971708161337405)
,p_query_column_id=>37
,p_column_alias=>'TRDRMTYP'
,p_column_display_sequence=>37
,p_column_heading=>'Trdrmtyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135972157183337405)
,p_query_column_id=>38
,p_column_alias=>'FURRMNDT'
,p_column_display_sequence=>38
,p_column_heading=>'Furrmndt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135972512538337405)
,p_query_column_id=>39
,p_column_alias=>'FURRMTYP'
,p_column_display_sequence=>39
,p_column_heading=>'Furrmtyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135972932237337405)
,p_query_column_id=>40
,p_column_alias=>'FVERMNDT'
,p_column_display_sequence=>40
,p_column_heading=>'Fvermndt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135973304105337405)
,p_query_column_id=>41
,p_column_alias=>'FVERMTYP'
,p_column_display_sequence=>41
,p_column_heading=>'Fvermtyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135973704390337405)
,p_query_column_id=>42
,p_column_alias=>'FSTFLWUP'
,p_column_display_sequence=>42
,p_column_heading=>'Fstflwup'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135974152114337405)
,p_query_column_id=>43
,p_column_alias=>'FLWCTGRY'
,p_column_display_sequence=>43
,p_column_heading=>'Flwctgry'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135974502113337407)
,p_query_column_id=>44
,p_column_alias=>'FLWSUBCT'
,p_column_display_sequence=>44
,p_column_heading=>'Flwsubct'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135974897275337407)
,p_query_column_id=>45
,p_column_alias=>'SNDFLWUP'
,p_column_display_sequence=>45
,p_column_heading=>'Sndflwup'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135975308419337407)
,p_query_column_id=>46
,p_column_alias=>'SNDCTGRY'
,p_column_display_sequence=>46
,p_column_heading=>'Sndctgry'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135975761954337407)
,p_query_column_id=>47
,p_column_alias=>'SNDSUBCT'
,p_column_display_sequence=>47
,p_column_heading=>'Sndsubct'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135976074891337407)
,p_query_column_id=>48
,p_column_alias=>'TRDFLWUP'
,p_column_display_sequence=>48
,p_column_heading=>'Trdflwup'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135976531501337407)
,p_query_column_id=>49
,p_column_alias=>'TRDCTGRY'
,p_column_display_sequence=>49
,p_column_heading=>'Trdctgry'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135976900225337407)
,p_query_column_id=>50
,p_column_alias=>'TRDSUBCT'
,p_column_display_sequence=>50
,p_column_heading=>'Trdsubct'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135977363427337407)
,p_query_column_id=>51
,p_column_alias=>'FURFLWUP'
,p_column_display_sequence=>51
,p_column_heading=>'Furflwup'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135977703176337408)
,p_query_column_id=>52
,p_column_alias=>'FURCTGRY'
,p_column_display_sequence=>52
,p_column_heading=>'Furctgry'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135978127641337408)
,p_query_column_id=>53
,p_column_alias=>'FURSUBCT'
,p_column_display_sequence=>53
,p_column_heading=>'Fursubct'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135978543037337408)
,p_query_column_id=>54
,p_column_alias=>'FVEFLWUP'
,p_column_display_sequence=>54
,p_column_heading=>'Fveflwup'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135978917644337408)
,p_query_column_id=>55
,p_column_alias=>'FVECTGRY'
,p_column_display_sequence=>55
,p_column_heading=>'Fvectgry'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135979343733337408)
,p_query_column_id=>56
,p_column_alias=>'FVESUBCT'
,p_column_display_sequence=>56
,p_column_heading=>'Fvesubct'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135979715238337408)
,p_query_column_id=>57
,p_column_alias=>'FEDBKTYP'
,p_column_display_sequence=>57
,p_column_heading=>'Fedbktyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135980098590337408)
,p_query_column_id=>58
,p_column_alias=>'MAILDATE'
,p_column_display_sequence=>58
,p_column_heading=>'Maildate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135980529225337408)
,p_query_column_id=>59
,p_column_alias=>'MAILFLAG'
,p_column_display_sequence=>59
,p_column_heading=>'Mailflag'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135980898214337408)
,p_query_column_id=>60
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>60
,p_column_heading=>'Oprstamp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135981363963337408)
,p_query_column_id=>61
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>61
,p_column_heading=>'Timstamp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135981756674337410)
,p_query_column_id=>62
,p_column_alias=>'NMCUSTYP'
,p_column_display_sequence=>62
,p_column_heading=>'Nmcustyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(136038185887346383)
,p_name=>'Followup Complete'
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width:80%;"'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select FOLLOWDT, NEXTDATE, REMARKSS from NM_MRK_SCH_FOLLOWUP',
'where compcode=:compcode ',
'and complete=''Y'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROWS_X_TO_Y_OF_Z'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136049644558346394)
,p_query_column_id=>1
,p_column_alias=>'FOLLOWDT'
,p_column_display_sequence=>1
,p_column_heading=>'Follow Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136050379539346394)
,p_query_column_id=>2
,p_column_alias=>'NEXTDATE'
,p_column_display_sequence=>3
,p_column_heading=>'Next Follow-Up Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136048052854346394)
,p_query_column_id=>3
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>2
,p_column_heading=>'Remarks'
);
wwv_flow_api.component_end;
end;
/