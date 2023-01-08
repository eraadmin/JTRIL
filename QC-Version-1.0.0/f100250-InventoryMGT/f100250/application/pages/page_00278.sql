prompt --application/pages/page_00278
begin
--   Manifest
--     PAGE: 00278
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
 p_id=>278
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'CSI'
,p_alias=>'NMCUSIND'
,p_step_title=>'CSI'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<script type=\201Dtext/JavaScript\201D>'),
unistr('$x(\2018apexir_CUSTOMER_NAME\2019).style.width = \201C1000px\201D;'),
'</script>'))
,p_step_template=>wwv_flow_api.id(47564929163858117)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124816'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101726802695252103)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>3
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101727222772252103)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(101726802695252103)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;float:left;  margin-left: 5%;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101728437348252104)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(101726802695252103)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;  float:right;  margin-right: -20%;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101729203427252104)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101729570129252104)
,p_plug_name=>'Customers'
,p_parent_plug_id=>wwv_flow_api.id(101729203427252104)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2015/05/21 15:01 (Formatter Plus v4.8.8) */',
'SELECT ROWNUM "Srl No", s.srvcnopk "Service Code",',
'       (SELECT docnumbr',
'          FROM nmjobbil',
'         WHERE billnofk = s.srvcnopk) "Bill No",',
'       (SELECT doctdate',
'          FROM nmjobbil',
'         WHERE billnofk = s.srvcnopk) "Bill Date", custname customer_name,',
'       custmobl "Contact No.", registno "Car No.",',
'       itemcode || '':'' || itemdesc model,',
'       (SELECT smanname',
'          FROM nmsmnmas',
'         WHERE smancode = s.smancode) "Tech Name",',
'       (SELECT NVL (sycoddes, ''Not-Received'')',
'          FROM sycodmas',
'         WHERE compcode = ''999''',
'           AND modlcode = ''NM''',
'           AND syhrdcde = ''GRD''',
'           AND sysofcde = c.stisftyp) "S/D-Satisfied",',
'       (SELECT CASE',
'                  WHEN wm_concat (DISTINCT stisftyp) LIKE (''%006%'')',
'                     THEN ''Satisfied''',
'                 WHEN wm_concat (DISTINCT stisftyp) LIKE (''%008%'')',
'                     THEN ''Not Received''',
'                  ELSE ''Dis-Satisfied''',
'               END satis',
'          FROM nmsrvcsi',
'         WHERE stisftyp = c.stisftyp) "Satisfied/Dis-Satisfied",',
'       custphon phone, custmail email, docnumbr service_number,',
'       doctdate servicedate, brand, pkgtitle jobtype, srvcnopk,',
'       chasisno "chasis no", delvrydt deliverydate, custcmpln complain,',
'       remarkss action_taken, c.csi_number csi_number, c.csi_date csi_date,',
'       (SELECT DISTINCT nmcoddes',
'                   FROM nmcodmas',
'                  WHERE compcode = ''100''',
'                    AND nmsofcde = c.fedbktyp',
'                    AND modlcode = ''NM''',
'                    AND nmhrdcde = ''QTP'') fedbktyp,',
'       c.complntdt, c.voc, c.complcls, c.cmplsucls, c.actintkn, c.rslutndt,',
'       c.rslutnmd, c.rslutprs, c.postrsrt, c.stisntrc, c.contctdt, c.COMPLETE,',
'       c.postflag, d.col1, d.col2, d.col3, d.col4, d.col5, d.col6, d.col7,',
'       d.col8,d.COL9, d.COL10, d.COL11, d.COL12, d.COL13, d.COL14',
'  FROM vwnmsvci s,',
'       (SELECT DISTINCT compcode, partycde, docnumbr csi_number,',
'                        doctdate csi_date, docttype, subttype, srvnofk2,',
'                        fedbktyp, wm_concat (DISTINCT complntdt) complntdt,',
'                        CASE',
'                           WHEN NVL (postflag, ''N'') = ''N''',
'                              THEN apex_item.checkbox2 (1, srvnofk2)',
'                           ELSE NULL',
'                        END COMPLETE,',
'                        postflag, wm_concat (DISTINCT voc) voc,',
'                        wm_concat (DISTINCT complcls) complcls,',
'                        wm_concat (DISTINCT cmplsucls) cmplsucls,',
'                        wm_concat (DISTINCT actintkn) actintkn,',
'                        wm_concat (DISTINCT rslutndt) rslutndt,',
'                        wm_concat (DISTINCT rslutnmd) rslutnmd,',
'                        wm_concat (DISTINCT rslutprs) rslutprs,',
'                        wm_concat (DISTINCT postrsrt) postrsrt,',
'                        wm_concat (DISTINCT stisntrc) stisntrc,',
'                        wm_concat (DISTINCT stisftyp) stisftyp,',
'                        wm_concat (DISTINCT contctdt) contctdt',
'                   FROM nmsrvcsi s',
'               GROUP BY compcode,',
'                        partycde,',
'                        docnumbr,',
'                        doctdate,',
'                        docttype,',
'                        subttype,',
'                        srvnofk2,',
'                        fedbktyp,',
'                        postflag) c,',
'       (SELECT compcode, srvnofk2, fedbktyp, col1, col2, col3, col4, col5,',
'               col6, col7, col8,COL9, COL10, COL11, COL12, COL13, COL14',
'          FROM nmsrvfbk) d',
' WHERE s.srvcnopk = c.srvnofk2',
'   AND s.compcode = c.compcode',
'   AND s.srvcnopk = d.srvnofk2',
'   AND s.compcode = d.compcode',
'   AND NVL (c.postflag, ''N'') = nvl(:p278_postflag,c.postflag)',
'   AND c.fedbktyp = d.fedbktyp',
'   AND c.fedbktyp = nvl(:p278_qustyp,c.fedbktyp)',
'order by  d.fedbktyp asc,c.fedbktyp asc;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P278_QUSTYP,P278_POSTFLAG'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'( select GROUPNM from nmsvchrg where  SRVCNOPK =',
'                                       (select SCRGNOFK from nmnegcrg',
'                                       where REFDOCNO=s.docnumbr',
'                                       and COMPCODE=s.COMPCODE)',
'                                       and COMPCODE=s.COMPCODE) "Type of Service",'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(101730061008252104)
,p_name=>'Customers'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'MIKE'
,p_internal_uid=>64575193882571610
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101746925172252114)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>21
,p_column_identifier=>'I'
,p_column_label=>'Customer Name'
,p_sync_form_label=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101747268424252114)
,p_db_column_name=>'PHONE'
,p_display_order=>23
,p_column_identifier=>'K'
,p_column_label=>'Phone'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PHONE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101747737559252114)
,p_db_column_name=>'EMAIL'
,p_display_order=>24
,p_column_identifier=>'L'
,p_column_label=>'Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'EMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101748074975252114)
,p_db_column_name=>'SERVICE_NUMBER'
,p_display_order=>25
,p_column_identifier=>'M'
,p_column_label=>'Service Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'SERVICE_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101748475011252114)
,p_db_column_name=>'BRAND'
,p_display_order=>27
,p_column_identifier=>'O'
,p_column_label=>'Brand'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'BRAND'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101748934645252114)
,p_db_column_name=>'JOBTYPE'
,p_display_order=>28
,p_column_identifier=>'P'
,p_column_label=>'Jobtype'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'JOBTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101749275290252114)
,p_db_column_name=>'COMPLAIN'
,p_display_order=>33
,p_column_identifier=>'U'
,p_column_label=>'Complain'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COMPLAIN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101749741703252114)
,p_db_column_name=>'ACTION_TAKEN'
,p_display_order=>34
,p_column_identifier=>'V'
,p_column_label=>'Action Taken'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ACTION_TAKEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101750165063252114)
,p_db_column_name=>'CSI_NUMBER'
,p_display_order=>35
,p_column_identifier=>'W'
,p_column_label=>'CSI Number'
,p_column_link=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:86:P86_SERVICE_INFO,P86_QUSTYPE,P86_SERVICE_INFO_LOV:#SRVCNOPK#,#FEEDBACK#,#SRVCNOPK#'
,p_column_linktext=>'#CSI_NUMBER#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CSI_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101750510286252114)
,p_db_column_name=>'SRVCNOPK'
,p_display_order=>37
,p_column_identifier=>'Y'
,p_column_label=>'Srvcnopk'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SRVCNOPK'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101730110506252104)
,p_db_column_name=>'FEDBKTYP'
,p_display_order=>42
,p_column_identifier=>'AD'
,p_column_label=>'Feedback Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'FEDBKTYP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101730537425252104)
,p_db_column_name=>'VOC'
,p_display_order=>44
,p_column_identifier=>'AF'
,p_column_label=>'VOC'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'VOC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101730918860252106)
,p_db_column_name=>'COMPLCLS'
,p_display_order=>45
,p_column_identifier=>'AG'
,p_column_label=>'Complaint<br>Classification'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COMPLCLS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101731317443252106)
,p_db_column_name=>'CMPLSUCLS'
,p_display_order=>46
,p_column_identifier=>'AH'
,p_column_label=>'Complaint<br>Sub-Classification'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CMPLSUCLS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101731710489252106)
,p_db_column_name=>'ACTINTKN'
,p_display_order=>47
,p_column_identifier=>'AI'
,p_column_label=>'Action<br>Taken'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ACTINTKN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101732079726252106)
,p_db_column_name=>'RSLUTNMD'
,p_display_order=>49
,p_column_identifier=>'AK'
,p_column_label=>'Mode of<br>Resulation'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'RSLUTNMD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101732552872252106)
,p_db_column_name=>'RSLUTPRS'
,p_display_order=>50
,p_column_identifier=>'AL'
,p_column_label=>'Attend Person'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'RSLUTPRS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101732899634252106)
,p_db_column_name=>'POSTRSRT'
,p_display_order=>51
,p_column_identifier=>'AM'
,p_column_label=>'Post<br>Resulation Rating'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'POSTRSRT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101733330289252106)
,p_db_column_name=>'STISNTRC'
,p_display_order=>52
,p_column_identifier=>'AN'
,p_column_label=>'Satisfaction<br>note Received'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'STISNTRC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101733715524252106)
,p_db_column_name=>'COMPLNTDT'
,p_display_order=>56
,p_column_identifier=>'AR'
,p_column_label=>'Complain<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COMPLNTDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101734102739252106)
,p_db_column_name=>'RSLUTNDT'
,p_display_order=>57
,p_column_identifier=>'AS'
,p_column_label=>'Resulation<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'RSLUTNDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101734534996252106)
,p_db_column_name=>'CONTCTDT'
,p_display_order=>58
,p_column_identifier=>'AT'
,p_column_label=>'Contact<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CONTCTDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101734928937252106)
,p_db_column_name=>'SERVICEDATE'
,p_display_order=>59
,p_column_identifier=>'AU'
,p_column_label=>'Service<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'SERVICEDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101735307265252106)
,p_db_column_name=>'DELIVERYDATE'
,p_display_order=>60
,p_column_identifier=>'AV'
,p_column_label=>'Delivery<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DELIVERYDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101735731936252108)
,p_db_column_name=>'CSI_DATE'
,p_display_order=>61
,p_column_identifier=>'AW'
,p_column_label=>'Csi Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CSI_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101736111795252108)
,p_db_column_name=>'Srl No'
,p_display_order=>62
,p_column_identifier=>'AX'
,p_column_label=>'Srl No'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'Srl No'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101736543223252108)
,p_db_column_name=>'Service Code'
,p_display_order=>63
,p_column_identifier=>'AY'
,p_column_label=>'Service Code'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'Service Code'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101736958045252108)
,p_db_column_name=>'Bill Date'
,p_display_order=>64
,p_column_identifier=>'AZ'
,p_column_label=>'Bill Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Bill Date'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101737330696252109)
,p_db_column_name=>'Contact No.'
,p_display_order=>65
,p_column_identifier=>'BA'
,p_column_label=>'Contact No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Contact No.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101737713131252109)
,p_db_column_name=>'Car No.'
,p_display_order=>66
,p_column_identifier=>'BB'
,p_column_label=>'Car No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Car No.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101738146911252109)
,p_db_column_name=>'MODEL'
,p_display_order=>67
,p_column_identifier=>'BC'
,p_column_label=>'Model'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'MODEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101738472801252109)
,p_db_column_name=>'Tech Name'
,p_display_order=>69
,p_column_identifier=>'BE'
,p_column_label=>'SA Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Tech Name'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101738959831252109)
,p_db_column_name=>'Satisfied/Dis-Satisfied'
,p_display_order=>70
,p_column_identifier=>'BF'
,p_column_label=>'Satisfied/Dis-Satisfied'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Satisfied/Dis-Satisfied'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101739291853252109)
,p_db_column_name=>'chasis no'
,p_display_order=>71
,p_column_identifier=>'BG'
,p_column_label=>'Chasis No'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'chasis no'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101739753726252109)
,p_db_column_name=>'COMPLETE'
,p_display_order=>73
,p_column_identifier=>'BI'
,p_column_label=>'Complete'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COMPLETE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101740098115252109)
,p_db_column_name=>'POSTFLAG'
,p_display_order=>74
,p_column_identifier=>'BJ'
,p_column_label=>'Postflag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'POSTFLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101740534896252109)
,p_db_column_name=>'Bill No'
,p_display_order=>75
,p_column_identifier=>'BK'
,p_column_label=>'Bill No'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Bill No'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101740936783252109)
,p_db_column_name=>'S/D-Satisfied'
,p_display_order=>76
,p_column_identifier=>'BL'
,p_column_label=>'S/D-Satisfied'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'S/D-Satisfied'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101741278327252109)
,p_db_column_name=>'COL1'
,p_display_order=>77
,p_column_identifier=>'BM'
,p_column_label=>'&COL1.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COL1'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P278_QUSTYP'
,p_display_condition2=>'001'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101741747541252109)
,p_db_column_name=>'COL2'
,p_display_order=>78
,p_column_identifier=>'BN'
,p_column_label=>'&COL2.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COL2'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P278_QUSTYP'
,p_display_condition2=>'001'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101742147029252109)
,p_db_column_name=>'COL3'
,p_display_order=>79
,p_column_identifier=>'BO'
,p_column_label=>'&COL3.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COL3'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P278_QUSTYP'
,p_display_condition2=>'001'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101742470799252109)
,p_db_column_name=>'COL4'
,p_display_order=>80
,p_column_identifier=>'BP'
,p_column_label=>'&COL4.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COL4'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P278_QUSTYP'
,p_display_condition2=>'001'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101742956131252111)
,p_db_column_name=>'COL5'
,p_display_order=>81
,p_column_identifier=>'BQ'
,p_column_label=>'&COL5.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COL5'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P278_QUSTYP'
,p_display_condition2=>'001'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101743326374252111)
,p_db_column_name=>'COL6'
,p_display_order=>82
,p_column_identifier=>'BR'
,p_column_label=>'&COL6.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COL6'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P278_QUSTYP'
,p_display_condition2=>'001'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101743667986252111)
,p_db_column_name=>'COL7'
,p_display_order=>83
,p_column_identifier=>'BS'
,p_column_label=>'&COL7.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COL7'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P278_QUSTYP'
,p_display_condition2=>'001'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101744141001252112)
,p_db_column_name=>'COL8'
,p_display_order=>84
,p_column_identifier=>'BT'
,p_column_label=>'&COL8.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COL8'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P278_QUSTYP'
,p_display_condition2=>'001'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101744563424252112)
,p_db_column_name=>'COL9'
,p_display_order=>85
,p_column_identifier=>'BU'
,p_column_label=>'&COL9.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COL9'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P278_QUSTYP'
,p_display_condition2=>'004'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101744909811252112)
,p_db_column_name=>'COL10'
,p_display_order=>86
,p_column_identifier=>'BV'
,p_column_label=>'&COL10.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COL10'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P278_QUSTYP'
,p_display_condition2=>'005'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101745310383252114)
,p_db_column_name=>'COL11'
,p_display_order=>87
,p_column_identifier=>'BW'
,p_column_label=>'&COL11.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COL11'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P278_QUSTYP'
,p_display_condition2=>'005'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101745667964252114)
,p_db_column_name=>'COL12'
,p_display_order=>88
,p_column_identifier=>'BX'
,p_column_label=>'&COL12.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COL12'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P278_QUSTYP'
,p_display_condition2=>'005'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101746093267252114)
,p_db_column_name=>'COL13'
,p_display_order=>89
,p_column_identifier=>'BY'
,p_column_label=>'&COL13.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COL13'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P278_QUSTYP'
,p_display_condition2=>'005'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101746530326252114)
,p_db_column_name=>'COL14'
,p_display_order=>90
,p_column_identifier=>'BZ'
,p_column_label=>'&COL14.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COL14'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P278_QUSTYP'
,p_display_condition2=>'005'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(101750873122252114)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'645961'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CSI_NUMBER:SERVICE_NUMBER:Bill No:Bill Date:Contact No.:Car No.:MODEL:Tech Name:CONTCTDT:Satisfied/Dis-Satisfied:chasis no:CUSTOMER_NAME:FEDBKTYP:COMPLAIN:COMPLNTDT:VOC:COMPLCLS:CMPLSUCLS:ACTION_TAKEN:RSLUTNDT:RSLUTNMD:RSLUTPRS:POSTRSRT:STISNTRC:SERV'
||'ICEDATE:DELIVERYDATE:CSI_DATE:COL1:COL2:COL3:COL4:COL5:COL6:COL7:COL8:COL9:COL10:COL11:COL12:COL13:COL14:COMPLETE'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101754261223252115)
,p_plug_name=>'  '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101754631674252115)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(101754261223252115)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script ></script>',
'<script>',
' ',
'  function spCheckChange(pThis){',
'    var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=CHECKBOX_CHANGE_4'',$v(''pFlowStepId''));  ',
'    get.addParam(''x01'',pThis.value); //Value that was checked',
'    get.addParam(''x02'',pThis.checked ? ''Y'':''N''); // Checked Flag',
'    gReturn = get.get();',
'     ',
'    $x(''checkListDisp'').innerHTML=gReturn;',
'  }',
'   ',
'</script>',
'CHECKBOX List:',
' ',
'<div id="checkListDisp">&F_EMPNO_LIST_4.</div>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101769900386261396)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background:gray;"'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>110
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P278_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P278_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101751422889252115)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(101729570129252104)
,p_button_name=>'Reset_Report'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Reset Report'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:278:&SESSION.::&DEBUG.:RP,1,RIR,CIR::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101751771937252115)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(101729570129252104)
,p_button_name=>'CREATE_IFB'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add IFB'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:293:&SESSION.::&DEBUG.:293::'
,p_button_condition=>'P278_QUSTYP'
,p_button_condition2=>'001'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101752201226252115)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(101729570129252104)
,p_button_name=>'CREATE_1STDAYPSF'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add 1st Day Psf'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:94:&SESSION.::&DEBUG.:94::'
,p_button_condition_type=>'NEVER'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'condition type :value of item/column in expression 1= expression 2',
'expression 1=P78_QUSTYP',
'expression 2=004'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101752597246252115)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(101729570129252104)
,p_button_name=>'CREATE_3rdDAYPSF'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add 3rd Day Psf'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:95::'
,p_button_condition_type=>'NEVER'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'condition type :value of item/column in expression 1= expression 2',
'expression 1=P78_QUSTYP',
'expression 2=003'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101752998530252115)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(101729570129252104)
,p_button_name=>'CHECK_IFB'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_condition=>'P278_QUSTYP'
,p_button_condition2=>'001'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101753435174252115)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(101729570129252104)
,p_button_name=>'CHECK_1stpsf'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_condition=>'P278_QUSTYP'
,p_button_condition2=>'004'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101753784111252115)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(101729570129252104)
,p_button_name=>'CHECK_3rdpsf'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_condition=>'P278_QUSTYP'
,p_button_condition2=>'005'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(101760067587252119)
,p_branch_action=>'f?p=&APP_ID.:278:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101727600920252104)
,p_name=>'P278_QUSTYP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(101727222772252103)
,p_item_default=>'001'
,p_prompt=>'<strong color:red;>Feedback Type</strong >'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct NMCODDES d,NMSOFCDE r from nmcodmas',
'where compcode=:compcode',
'and NMHRDCDE=''QTP''',
'and modlcode=''NM''',
'order by SERIALNM'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="color:#6633FF;font-weight:bold;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'REDIRECT_SET_VALUE'
,p_attribute_04=>'HORIZONTAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101728052185252104)
,p_name=>'P278_SERVICE_INFO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(101727222772252103)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Service Info'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101728851371252104)
,p_name=>'P278_POSTFLAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(101728437348252104)
,p_item_default=>'N'
,p_prompt=>'<strong >Complete Type</strong >'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:New;N,Complete;Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'REDIRECT_SET_VALUE'
,p_attribute_04=>'HORIZONTAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101770212379261396)
,p_name=>'P278_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(101769900386261396)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101770621924261397)
,p_name=>'P278_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(101769900386261396)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101771017968261397)
,p_name=>'P278_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(101769900386261396)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(101755110138252115)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101758189664252119)
,p_name=>'Freeze Column'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(101729570129252104)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101758736016252119)
,p_event_id=>wwv_flow_api.id(101758189664252119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.AF.PLUGIN.JQ.IRFREEZEHEADER'
,p_attribute_01=>'400'
,p_attribute_03=>'500'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101759107849252119)
,p_name=>'value set in service info'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f01"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101759622099252119)
,p_event_id=>wwv_flow_api.id(101759107849252119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P278_SERVICE_INFO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_prog varchar2(500);',
'begin',
'v_prog:=TRIM(BOTH '','' FROM :f_empno_list_4);',
'return v_prog;',
'end;'))
,p_attribute_07=>'F_EMPNO_LIST_4'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(101755448176252115)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_process_sql_clob=>'reset_pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'Go,P278_REPORT_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(101755857338252115)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add 1st psf feedback Question on IFB complete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'FOR i in 1..APEX_APPLICATION.G_F01.count LOOP',
'declare',
' ',
' s_docnumbr varchar2(20);',
' CURSOR CUR_SRVC IS',
' select docnumbr,doctdate,itemcode,itemdesc,brand,registno,chasisno,partycde,SRVCNOPK',
' from vwnmsvci',
' where srvcnopk=APEX_APPLICATION.G_F01(i)',
' AND COMPCODE=:COMPCODE;',
' srvc_rec cur_srvc%rowtype;',
' cunt number;',
' ',
'  mark_no      VARCHAR2 (10); ',
'  qustyp   VARCHAR2 (10); ',
' begin',
'',
'select distinct(QUESTYPE) into qustyp   from nmsrvqus ',
'where SEQREQNO=(',
'select min(distinct(SEQREQNO)) from nmsrvqus',
'where SEQREQNO>',
'(select min(distinct(SEQREQNO)) from nmsrvqus',
'where QUESTYPE=:P278_QUSTYP',
'));',
' select count(distinct DOCNUMBR) into cunt from nmsrvcsi',
' where SRVNOFK2=APEX_APPLICATION.G_F01(i)',
'and FEDBKTYP=qustyp;',
' ',
' if cunt=0 then ',
' Docnumber_Generation(:COMPCODE, ''NM'', ''QU'',1, TRUNC(SYSDATE,''dd''), NULL, ''NM'', s_docnumbr);',
' ',
' open cur_srvc; fetch cur_srvc into srvc_rec;close cur_srvc;',
' ',
' SELECT sysofcde',
'        INTO mark_no',
'        FROM sycodmas',
'       WHERE compcode = ''999''',
'         AND syhrdcde = ''GRD''',
'         AND modlcode = ''NM''',
'         AND syamount = (SELECT DISTINCT defpoint',
'                                    FROM nmsrvqus',
'                                   WHERE compcode = :compcode',
'                                     AND questype = qustyp);',
'                     ',
' for q in (select COMPCODE, DEFPOINT, GRDECODE, OPRSTAMP, QUESTION, REMARKSS, SERLNUMB,TYPDTLFK from nmsrvqus',
' where compcode=:COMPCODE',
' --TYPDTLFK=nvl(:P_TYPDTLFK,TYPDTLFK)',
' and QUESTYPE=qustyp',
' order by serlnumb) ',
'',
' loop',
'                       ',
' insert into NMSRVCSI',
' (COMPCODE, CUSTFDBK, DOCNUMBR, DOCTDATE,   DOCTTYPE,SUBTTYPE, GRDECDE, OPRSTAMP, QUESTION, REMARKSS,partycde, SERLNUMB, SRVNOFK2,FEDBKTYP,STISFTYP)',
'  values (:COMPCODE,Q.DEFPOINT,s_docnumbr,  trunc(sysdate),''QU'',1,      NULL,:APP_USER, Q.QUESTION,NULL,srvc_rec.partycde,Q.SERLNUMB,APEX_APPLICATION.G_F01(i),qustyp,mark_no);',
'',
' end loop;',
'',
'  commit;',
'--:F_EMPNO_LIST_4:='''';',
'  else ',
'  :P94_MESSAGE:=''This service code already exist'';',
'  end if;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
' END;',
'',
'declare',
'qustyp1   VARCHAR2 (10); ',
'',
'begin',
'',
'select distinct(QUESTYPE) into qustyp1   from nmsrvqus ',
'where SEQREQNO=(',
'select min(distinct(SEQREQNO)) from nmsrvqus',
'where SEQREQNO>',
'(select min(distinct(SEQREQNO)) from nmsrvqus',
'where QUESTYPE=:P278_QUSTYP',
'));',
' :P93_MARKNO:=''5'';',
'',
'FOR q IN (SELECT  compcode, partycde, docnumbr , doctdate ,',
'                docttype, subttype, srvnofk2, fedbktyp',
'           FROM nmsrvcsi s',
'          WHERE srvnofk2 = APEX_APPLICATION.G_F01(i) AND compcode = ''100''',
'           and FEDBKTYP=qustyp1',
'       GROUP BY compcode,',
'                partycde,',
'                docnumbr,',
'                doctdate,',
'                docttype,',
'                subttype,',
'                srvnofk2,',
'                fedbktyp,',
'                postflag)',
'      LOOP',
'        insert into nmsrvfbk(COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, PARTYCDE,srvnofk2, fedbktyp, QUESTION, OPRSTAMP, TIMSTAMP,COL9)',
'                values(q.COMPCODE, q.DOCTTYPE, q.SUBTTYPE, q.docnumbr, q.DOCTDATE, q.PARTYCDE,q.srvnofk2, q.fedbktyp, ''QUESTION'', :APP_USER, SYSDATE,:P93_MARKNO);',
'      END LOOP;',
'',
'      COMMIT;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND then',
'   raise_application_error(-20101, ''No date found in nmsrvcsi'');',
'      NULL;',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      NULL;',
'   WHEN OTHERS',
'   THEN',
'      NULL;',
'end;',
'',
'END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(101752998530252115)
,p_process_success_message=>'Complete IFB and generate 1st PSF'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(101756169745252115)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add 3rd psf feedback Question on 1st psf complete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'FOR i in 1..APEX_APPLICATION.G_F01.count LOOP',
'declare',
' s_docnumbr varchar2(20);',
' CURSOR CUR_SRVC IS',
' select docnumbr,doctdate,itemcode,itemdesc,brand,registno,chasisno,partycde,SRVCNOPK',
' from vwnmsvci',
' where srvcnopk=APEX_APPLICATION.G_F01(i)',
' AND COMPCODE=:COMPCODE;',
' srvc_rec cur_srvc%rowtype;',
' cunt number;',
' ',
'  mark_no      VARCHAR2 (10); ',
'  qustyp   VARCHAR2 (10); ',
' begin',
'select distinct(QUESTYPE) into qustyp   from nmsrvqus ',
'where SEQREQNO=(',
'select min(distinct(SEQREQNO)) from nmsrvqus',
'where SEQREQNO>',
'(select min(distinct(SEQREQNO)) from nmsrvqus',
'where QUESTYPE=:P278_QUSTYP',
'));',
'',
' select count(distinct DOCNUMBR) into cunt from nmsrvcsi',
' where SRVNOFK2=APEX_APPLICATION.G_F01(i)',
'and FEDBKTYP=qustyp;',
' ',
' if cunt=0 then ',
' Docnumber_Generation(:COMPCODE, ''NM'', ''QU'',1, TRUNC(SYSDATE,''dd''), NULL, ''NM'', s_docnumbr);',
' ',
' open cur_srvc; fetch cur_srvc into srvc_rec;close cur_srvc;',
' ',
' SELECT sysofcde',
'        INTO mark_no',
'        FROM sycodmas',
'       WHERE compcode = ''999''',
'         AND syhrdcde = ''GRD''',
'         AND modlcode = ''NM''',
'         AND syamount = (SELECT DISTINCT defpoint',
'                                    FROM nmsrvqus',
'                                   WHERE compcode = :compcode',
'                                     AND questype = qustyp);',
'                     ',
' for q in (select COMPCODE, DEFPOINT, GRDECODE, OPRSTAMP, QUESTION, REMARKSS, SERLNUMB,TYPDTLFK from nmsrvqus',
' where compcode=:COMPCODE',
' --TYPDTLFK=nvl(:P_TYPDTLFK,TYPDTLFK)',
' and QUESTYPE=qustyp',
' order by serlnumb) ',
'',
' loop',
'                       ',
' insert into NMSRVCSI',
' (COMPCODE, CUSTFDBK, DOCNUMBR, DOCTDATE,   DOCTTYPE,SUBTTYPE, GRDECDE, OPRSTAMP, QUESTION, REMARKSS,partycde, SERLNUMB, SRVNOFK2,FEDBKTYP,STISFTYP)',
'  values (:COMPCODE,Q.DEFPOINT,s_docnumbr,  trunc(sysdate),''QU'',1,      NULL,:APP_USER, Q.QUESTION,NULL,srvc_rec.partycde,Q.SERLNUMB,APEX_APPLICATION.G_F01(i),qustyp,mark_no);',
'',
' end loop;',
'',
'  commit;',
'--:F_EMPNO_LIST_4:='''';',
'  else ',
'  :P94_MESSAGE:=''This service code already exist'';',
'  end if;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'END;',
'',
'declare',
'qustyp1   VARCHAR2 (10); ',
'',
'begin',
'',
'select distinct(QUESTYPE) into qustyp1   from nmsrvqus ',
'where SEQREQNO=(',
'select min(distinct(SEQREQNO)) from nmsrvqus',
'where SEQREQNO>',
'(select min(distinct(SEQREQNO)) from nmsrvqus',
'where QUESTYPE=:P278_QUSTYP',
'));',
' :P93_MARKNO:=''5'';',
'',
'FOR q IN (SELECT  compcode, partycde, docnumbr , doctdate ,',
'                docttype, subttype, srvnofk2, fedbktyp',
'           FROM nmsrvcsi s',
'          WHERE srvnofk2 = APEX_APPLICATION.G_F01(i) AND compcode = ''100''',
'           and FEDBKTYP=qustyp1',
'       GROUP BY compcode,',
'                partycde,',
'                docnumbr,',
'                doctdate,',
'                docttype,',
'                subttype,',
'                srvnofk2,',
'                fedbktyp,',
'                postflag)',
'      LOOP',
'        insert into nmsrvfbk(COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, PARTYCDE,srvnofk2, fedbktyp, QUESTION, OPRSTAMP, TIMSTAMP, COL10, COL11, COL12, COL13, COL14)',
'                values(q.COMPCODE, q.DOCTTYPE, q.SUBTTYPE, q.docnumbr, q.DOCTDATE, q.PARTYCDE,q.srvnofk2, q.fedbktyp, ''QUESTION'', :APP_USER, SYSDATE,:P93_MARKNO,:P93_MARKNO,:P93_MARKNO,:P93_MARKNO,:P93_MARKNO);',
'      END LOOP;',
'',
'      COMMIT;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND then',
'   raise_application_error(-20101, ''No date found in nmsrvcsi'');',
'      NULL;',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      NULL;',
'   WHEN OTHERS',
'   THEN',
'      NULL;',
'end;',
'END LOOP;',
' END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(101753435174252115)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(101756603503252117)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :REQUEST = ''REPORTS'' then ',
'    :LAST_VIEW := 20;',
'else',
'    :LAST_VIEW := 30 ;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(101757056391252117)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update postflag on nmsrvcsi'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'FOR i in 1..APEX_APPLICATION.G_F01.count LOOP',
'update nmsrvcsi',
'set postflag= ''Y'' ,',
'compltdt=trunc(sysdate)',
'where srvnofk2=APEX_APPLICATION.G_F01(i)',
'and FEDBKTYP=:P278_QUSTYP;',
'END LOOP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(101752998530252115)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(101757459551252117)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update postflag on nmsrvcsi'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'FOR i in 1..APEX_APPLICATION.G_F01.count LOOP',
'update nmsrvcsi',
'set postflag= ''Y'' ,',
'compltdt=trunc(sysdate)',
'where srvnofk2=APEX_APPLICATION.G_F01(i)',
'and FEDBKTYP=:P278_QUSTYP;',
'END LOOP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(101753435174252115)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(101757845026252117)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update postflag on nmsrvcsi'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'FOR i in 1..APEX_APPLICATION.G_F01.count LOOP',
'update nmsrvcsi',
'set postflag= ''Y'',',
'compltdt=trunc(sysdate) ',
'where srvnofk2=APEX_APPLICATION.G_F01(i)',
'and FEDBKTYP=:P278_QUSTYP;',
'END LOOP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(101753784111252115)
);
wwv_flow_api.component_end;
end;
/
