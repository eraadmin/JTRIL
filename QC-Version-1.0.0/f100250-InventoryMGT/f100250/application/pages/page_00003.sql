prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Item Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Item Master'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'// Get the modal',
'function getimage(pThis){',
'       var modal = document.getElementById(''myModal'');',
'// Get the image and insert it inside the modal - use its "alt" text as a caption',
'var img = document.getElementById(pThis);',
'var modalImg = document.getElementById("img01");',
'var captionText = document.getElementById("caption");',
'   // modal.style.display = "block";',
'    modalImg.src = pThis.src;',
'    $( "#myModal" ).dialog({',
'       minWidth:430,',
'        minHeight:100,',
'      modal: true,',
'      buttons: {',
'        Close: function() {',
'//$( this ).dialog( "Ok" );',
'$( this ).dialog( "close" );',
'          //  modal.style.display = "none";',
'        }',
'      }',
'    });',
'//img.onclick = function(){',
'    ',
'   // captionText.innerHTML = pThis.alt;',
'//}',
'',
'// Get the <span> element that closes the modal',
'//var span = document.getElementsByClassName("ui-button-text")[0];',
'',
'// When the user clicks on <span> (x), close the modal',
'/*span.onclick = function() { ',
'    modal.style.display = "none";',
'} */',
'    }',
'',
'</script>'))
,p_javascript_file_urls=>'#APP_IMAGES#jquery.qrcode.min.js'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.qrcode'').qrcode("#QR_CODE#");',
'',
'/*$("#zoombox").elevateZoom({',
'  zoomType: "inner",',
'  cursor: "crosshair"',
'});*/',
'//initiate the plugin and pass the id of the div containing gallery images',
'//$("#zoombox").elevateZoom({constrainType:"height", constrainSize:274, zoomType: "lens", containLensZoom: true, gallery:''gallery_01'', cursor: ''pointer'', galleryActiveClass: "active"}); ',
'',
'//pass the images to Fancybox',
'/*$("#zoombox").bind("click", function(e) {  ',
'  var ez =   $(''#zoombox'').data(''elevateZoom'');	',
'	$.fancybox(ez.getGalleryList());',
'  return false;',
'});*/'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.qrcode canvas{',
'    width:60px !important;',
'}',
'/* Style the Image Used to Trigger the Modal */',
'#myImg {',
'    border-radius: 5px;',
'    cursor: pointer;',
'    transition: 1.3s;',
'}',
'#DD td[headers=UM]{min-width:30px}',
'#DD td[headers=PT]{min-width:30px}',
'/*#myImg:hover {opacity: 0.7;}*/',
'',
'/* The Modal (background) */',
'.modal {',
'    display: none; /* Hidden by default */',
'    position: fixed; /* Stay in place */',
'    z-index: 1; /* Sit on top */',
'    padding-top: 20px; /* Location of the box */',
'    left: 0;',
'    top: 0;',
'    width: 100%; /* Full width */',
'    height: 100%; /* Full height */',
'    overflow: hidden; /* Enable scroll if needed */',
'    background-color: rgb(0,0,0); /* Fallback color */',
'    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */',
'}',
'',
'/* Modal Content (Image) */',
'.modal-content {',
'    margin: auto;',
'    display: block;',
'    width: 80%;',
'    max-width: 700px;',
'}',
'',
'/* Caption of Modal Image (Image Text) - Same Width as the Image */',
'#caption {',
'    margin: auto;',
'    display: block;',
'    width: 80%;',
'    max-width: 700px;',
'    text-align: center;',
'    color: #ccc;',
'    padding: 100px 0;',
'    height: 100px;',
'}',
'',
'/* Add Animation - Zoom in the Modal */',
'.modal-content, #caption { ',
'    -webkit-animation-name: zoom;',
'    -webkit-animation-duration: 0.6s;',
'    animation-name: zoom;',
'    animation-duration: 0.6s;',
'}',
'',
'',
'',
'/* The Close Button */',
'.close {',
'    position: absolute;',
'    top: 15px;',
'    right: 35px;',
'    color: #f1f1f1;',
'    font-size: 40px;',
'    font-weight: bold;',
'    transition: 0.3s;',
'}',
'',
'.close:hover,',
'.close:focus {',
'    color: #bbb;',
'    text-decoration: none;',
'    cursor: pointer;',
'}',
'',
'/* 100% Image Width on Smaller Screens */',
'@media only screen and (max-width: 700px){',
'    .modal-content {',
'        width: 100%;',
'    }',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20191016203432'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37810569189457346)
,p_plug_name=>'Item Master'
,p_region_name=>'DD'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct P.rowid id,P.timstamp,p.itemcode itemcode,',
'    p.itemcode qr_code,',
'       p.itemdes1 product_name, ',
'      (SELECT distinct initcap(NMCODDES) CODEDESC',
'  FROM nmcodmas',
' WHERE  compcode=:COMPCODE',
' and NMSOFCDE=p.ITEMMODL and NMHRDCDE=''PTY'' and MODLCODE=''NM'') product_description, ',
'       HUOMCODE unit_mesurmennt,',
'       CATEGORY category, ',
'       (SELECT CODEDESC',
'  FROM sycdedtl',
' WHERE  compcode=:COMPCODE',
' and CHILDCDE=p.ITEMMODL) product_type,',
'       p.SALERATE list_price,',
'       (select sum(apprqnty) from nmsalrec where itemcode=p.itemcode)units,',
'       (select sum(apprqnty)* avg(p.salerate) from nmsalrec where itemcode=p.itemcode)sales,',
'       (select count(partycde) from nmsalrec where itemcode=p.itemcode)customers,',
'       (select max(doctdate) from nmsalrec where itemcode = p.itemcode) last_date_sold,',
'dbms_lob.getlength(i.ITMIMAGE)  ITMIMAGE,',
'decode(nvl(dbms_lob.getlength(i.ITMIMAGE),0),0,null,''<img id="''||p.itemcode||''" onclick="getimage(this)"  href="'' ',
'                          || ''" title="''',
'                          || apex_escape.html_attribute (p.itemdes1) ',
'                          || ''" style="border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;" ''',
'                          || ''src="'' ',
'                          || apex_util.get_blob_file_src(''P315_ITMIMAGE'',p.ITEMCODE,NULL,''attachment'')  ',
'                          || ''" height="75" width="75" />'') IMAGE,',
' null icon_link,',
'null detail_img,',
'null  detail_img_no_style,',
'i.MIMETYPE,',
'i.FILENAME,',
'case when p.itemcode is not null then ''sales'' else null end as tags',
'from nmitemas p,itmimage i',
'where p.COMPCODE=i.COMPCODE(+)',
'and p.ITEMCODE=i.ITEMCODE(+)',
'order by timstamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P315_ITMIMAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'#apexir_UNIT_MESURMENNT{width: 80px;}',
'</style>',
''))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(37810683528457346)
,p_name=>'Item Master'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:193:&SESSION.::&DEBUG.::P193_ITEMCODE:#ITEMCODE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>37750374289353717
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37811775899457349)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37812110696457349)
,p_db_column_name=>'PRODUCT_DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Product Description'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37812544836457349)
,p_db_column_name=>'CATEGORY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37813310646457349)
,p_db_column_name=>'LIST_PRICE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'List Price'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37813806888457351)
,p_db_column_name=>'UNITS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Sale Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37814154030457352)
,p_db_column_name=>'SALES'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37814522226457352)
,p_db_column_name=>'CUSTOMERS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Customer'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37814961306457352)
,p_db_column_name=>'LAST_DATE_SOLD'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Last Date Sold'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37815802699457352)
,p_db_column_name=>'ICON_LINK'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Icon Link'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37816206585457352)
,p_db_column_name=>'DETAIL_IMG'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Detail Img'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37816532092457354)
,p_db_column_name=>'DETAIL_IMG_NO_STYLE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Detail Img No Style'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37816983149457354)
,p_db_column_name=>'TAGS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43789628990693104)
,p_db_column_name=>'UNIT_MESURMENNT'
,p_display_order=>26
,p_column_identifier=>'Q'
,p_column_label=>'Unit of Mesurment'
,p_report_label=>'Unit'
,p_sync_form_label=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'UM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43789776008693105)
,p_db_column_name=>'PRODUCT_TYPE'
,p_display_order=>36
,p_column_identifier=>'R'
,p_column_label=>'Product Type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'PT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44120825514800857)
,p_db_column_name=>'ID'
,p_display_order=>56
,p_column_identifier=>'T'
,p_column_label=>'Id'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44166328215930242)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>58
,p_column_identifier=>'V'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44167063570930242)
,p_db_column_name=>'FILENAME'
,p_display_order=>59
,p_column_identifier=>'W'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44221191586039252)
,p_db_column_name=>'ITMIMAGE'
,p_display_order=>61
,p_column_identifier=>'Y'
,p_column_label=>'Image'
,p_column_html_expression=>'<span style="width:45px;height:45px;">#ITMIMAGE#</span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'CENTER'
,p_format_mask=>'IMAGE:ITMIMAGE:ITMIMAGE:ITEMCODE::::::Attachment:Download:'
,p_tz_dependent=>'N'
,p_static_id=>'img'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44515251262712213)
,p_db_column_name=>'IMAGE'
,p_display_order=>63
,p_column_identifier=>'AA'
,p_column_label=>'IMAGE'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44789808816071367)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>64
,p_column_identifier=>'AB'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40570238710748943)
,p_db_column_name=>'QR_CODE'
,p_display_order=>74
,p_column_identifier=>'AC'
,p_column_label=>'Qr code'
,p_column_html_expression=>'<div id="qr_#QR_CODE#" class="qrcode" data-qrcode="QR#QR_CODE#"></div>'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41478003009533537)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>84
,p_column_identifier=>'AD'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(37819198176475899)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'377589'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ITEMCODE:PRODUCT_DESCRIPTION:UNIT_MESURMENNT:PRODUCT_TYPE:UNITS:SALES:CUSTOMERS:LAST_DATE_SOLD:IMAGE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44122706684800875)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_column=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="myModal" class="modal">',
' <!-- <span class="close">&times;</span>-->',
'  <img class="modal-content" id="img01">',
'  <div id="caption"></div>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44251817813430520)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(163340390685060054)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P3_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P3_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37825424221499675)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(37810569189457346)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:193:&SESSION.::&DEBUG.:193::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40570327249748944)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(37810569189457346)
,p_button_name=>'Print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Print'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38225686273480067)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(37810569189457346)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37817737137469403)
,p_name=>'P3_PARENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(163340390685060054)
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
 p_id=>wwv_flow_api.id(37818161490469409)
,p_name=>'P3_PROGNM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(163340390685060054)
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
 p_id=>wwv_flow_api.id(37818566184469409)
,p_name=>'P3_NO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(163340390685060054)
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
 p_id=>wwv_flow_api.id(56485306959160438)
,p_name=>'P3_RANDOMNO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(37810569189457346)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_random number;',
'begin',
'select dbms_random.value(1,9) num into v_random from dual;',
'return v_random;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Randomno'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40570449426748945)
,p_name=>'Print'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40570327249748944)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40570515741748946)
,p_event_id=>wwv_flow_api.id(40570449426748945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.print();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47042456475358144)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(38225686273480067)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47042549250358145)
,p_event_id=>wwv_flow_api.id(47042456475358144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44262312836431422)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44262672025431422)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
