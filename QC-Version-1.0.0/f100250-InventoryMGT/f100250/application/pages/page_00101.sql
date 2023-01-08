prompt --application/pages/page_00101
begin
--   Manifest
--     PAGE: 00101
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
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Login'
,p_alias=>'LOGIN'
,p_step_title=>'Login'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript"> ',
'function tabE(obj,e,s)',
'{',
'  if(e.keyCode==13)',
'  {',
'    window.document.getElementById(s).focus();',
'    return false; ',
'  } ',
'} ',
'</script> ',
'',
'<style type="text/css">',
'',
'#LOGINFORM{',
'  width: 480px;',
'}',
'#LOGINFORM > .rc-body > .rc-body-r { /* Use child selectors so that sub-regions are not affected */',
'  height: 100px; /* Apply some arithmetic to get required height = 300 - (height of region title + bottom chrome) */',
'  overflow: auto;',
'}',
'',
'</style>',
'',
'<style type="text/css">',
'.clist{',
' text-align:center;',
' height:160px;',
' padding:20px;',
'}',
'#carousel-container{',
' border:1px solid #CCC;',
' background-color:#FFF;',
' float:left;',
'}',
'#carousel-container li{',
' list-style-image:none;',
'}',
'#carousel-container img{',
' width:80px;',
' height:80px;',
'}',
'#carousel-prev{',
' display:block;',
' float:left;',
' text-decoration:none;',
' height:160px;',
' width:40px;',
'}',
'#carousel-next{',
' display:block;',
' float:left;',
' text-decoration:none;',
' height:160px;',
' width:40px;',
'}',
'#carousel-prev{',
' background: url("#IMAGE_PREFIX#arrowl.gif") no-repeat scroll left 60px transparent;',
'}',
'#carousel-next{',
' background: url("#IMAGE_PREFIX#arrowr.gif") no-repeat scroll right 60px transparent;',
'}',
'</style>',
'<script type="text/javascript" src="#WORKSPACE_IMAGES#jquery.jcarousellite.min.js"></script>'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#carousel-container").jCarouselLite({',
' circular:true,',
' visible:4,',
' scroll:4,',
' speed:600,',
' btnPrev:"#carousel-prev",',
' btnNext:"#carousel-next"',
'});',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#tabs .bg {',
'    height: 8px ! important;',
'    }',
'#header {',
'height: 0px ! important;',
'overflow: hidden;',
'width: 100%;',
'}'))
,p_step_template=>wwv_flow_api.id(47564929163858117)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170413123714'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50964582567932587)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>60
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span id="hasan"><img src="#IMAGE_PREFIX#/Orbits/era_logo_2_01.png" Width="280" height="75"  /></span>',
'',
'<!--',
'',
'<object clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,16,0"',
'width="181" height="75" id="mercantile_bangla.swf" align="right" >',
'<param name=movie value="#IMAGE_PREFIX#/Orbits/mercantile_bangla.swf"><param name=quality value=high><param name=menu value=true>',
'<embed src="#IMAGE_PREFIX#/Orbits/mercantile_bangla.swf" quality=high width="181" height="75" name="mercantile_bangla.swf" align="right" loop="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer">',
'</embed></object>',
'',
'-->'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50964772395932587)
,p_plug_name=>'   '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>250
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html>',
'<head>',
'<style type="text/css">',
'/*',
'body {',
'background-image:url(images/bodyBg.jpg);',
'background-color:#006;',
'}',
'*/',
'#container {',
'position:relative;',
'width:506px;',
'height:103px;',
'overflow:hidden;',
'border:1px double #000;',
'background-color:#fff;',
'margin:100px auto 0 auto;',
'}',
'#div1 {',
'position:absolute;',
'left:0px;',
'top:0px;',
'width:506px;',
'height:103px;',
'}',
'#div2 {',
'position:absolute;',
'left:506px;',
'top:0px;',
'width:506px;',
'height:103px;',
'}',
'#div3 {',
'position:absolute;',
'left:506px;',
'top:0px;',
'width:506px;',
'height:103px;',
'}',
'#div4 {',
'position:absolute;',
'left:506px;',
'top:0px;',
'width:506px;',
'height:103px;',
'}',
'img {',
'border:1px solid #000;',
'margin:2px;',
'float:left;',
'}',
'</style>',
'',
'<script type="text/javascript">',
'var m=0;',
'var n=506;',
'var o=1012;',
'var p=1518;',
'var speed=20;',
'function scrollPics() {',
'document.getElementById(''div1'').style.left=m+''px'';',
'document.getElementById(''div2'').style.left=n+''px'';',
'document.getElementById(''div3'').style.left=o+''px'';',
'document.getElementById(''div4'').style.left=p+''px'';',
'm--;',
'n--;',
'o--;',
'p--;',
'if(m==-506) {',
'm=506;',
'}',
'if(n==-506) {',
'n=506;',
'}',
'if(o==-1012) {',
'o=506;',
'}',
'if(p==-1518) {',
'p=506;',
'}',
'setTimeout(''scrollPics()'',speed);',
'} ',
'window.onload=function() {',
'scrollPics();',
'}',
'</script>',
'',
'</head>',
'<body>',
'',
'<div id="container">',
'',
'<div id="div1">',
'<img src="#IMAGE_PREFIX#/Orbits/slide-1.gif" alt="">',
'<img src="#IMAGE_PREFIX#/Orbits/slide-3.gif" alt="">',
'</div>',
'',
'<div id="div2">',
'<img src="#IMAGE_PREFIX#/Orbits/slide-3.gif" alt="">',
'<img src="#IMAGE_PREFIX#/Orbits/slide-4.gif" alt="">',
'</div>',
'',
'<div id="div3">',
'<img src="#IMAGE_PREFIX#/Orbits/slide-4.gif" alt="">',
'<img src="#IMAGE_PREFIX#/Orbits/slide-6.gif" alt="">',
'</div>',
'',
'<div id="div4">',
'<img src="#IMAGE_PREFIX#/Orbits/slide-6.gif" alt="">',
'</div>',
'</div>',
'',
'</body>',
'</html>'))
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
 p_id=>wwv_flow_api.id(51042968823073694)
,p_plug_name=>'login'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;margin-top: 40%;margin-left: 80%; position: static; !important"'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>130
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
 p_id=>wwv_flow_api.id(51054891365980087)
,p_plug_name=>'as'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>140
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50963380334932586)
,p_plug_name=>'&nbsp; Orbits'
,p_region_name=>'LOGINFORM'
,p_parent_plug_id=>wwv_flow_api.id(51054891365980087)
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:80%; float:right; clear: none;"'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>160
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50964971761932587)
,p_plug_name=>'     mon'
,p_parent_plug_id=>wwv_flow_api.id(51054891365980087)
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;"'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>150
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51786083500682261)
,p_plug_name=>'asd'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>260
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'  FOR c1 IN(',
'    SELECT product_id,',
'      product_name',
'    FROM demo_product_info',
'    WHERE NVL(dbms_lob.getlength(product_image),0) > 0',
'  )LOOP',
'    HTP.prn(''<li>'');         ',
'    HTP.prn(''<div class="clist">'');',
'    HTP.prn(''<img src="f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.:APPLICATION_PROCESS=GET_IMG:NO::P101_PRODUCT_ID:'' || c1.product_id || ''" alt="" />'');',
'    HTP.prn(''<p>'' || c1.product_name || ''</p>'');',
'    HTP.prn(''</div>'');',
'    HTP.prn(''</li>'');',
' ',
'  END LOOP;',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="carousel">',
' <a id="carousel-prev" href="#">&nbsp;</a>',
' <div id="carousel-container">',
'<ul>'))
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
' </div>',
' <a id="carousel-next" href="#">&nbsp;</a>',
'</div>'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50963974134932586)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(51042968823073694)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Login'
,p_button_alignment=>'LEFT'
,p_button_cattributes=>'style="margin-left: 105%;"'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51060280349156668)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(50963380334932586)
,p_button_name=>'P101_EXIT'
,p_button_static_id=>'P101_EXIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Exit'
,p_button_alignment=>'LEFT'
,p_button_cattributes=>'style="margin-left: 75%;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50963568489932586)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(51042968823073694)
,p_prompt=>'User Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_tag_attributes=>'onchange="this.value=this.value.toUpperCase();"style="width:40%;"onkeypress="return tabE(this,event,''P101_PASSWORD'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>'onchange="this.value=this.value.toUpperCase();"style="width:40%;"onkeypress="return tabE(this,event,''P101_PASSWORD'')"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50963794840932586)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(51042968823073694)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_tag_attributes=>'style="width:40%;"onkeypress="return tabE(this,event,''P101_CACMPNAM'')"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_item_comment=>'style="width:40%;"onkeypress="return tabE(this,event,''P101_CACMPNAM'')"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50964196566932586)
,p_name=>'P101_COMP_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(50963380334932586)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50964370231932587)
,p_name=>'P101_USER_FULL_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(50963380334932586)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51023767942168657)
,p_name=>'P101_CACMPNAM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(51042968823073694)
,p_prompt=>'Select Company'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select distinct A.CACMPCDE||'' - ''||A.CACMPNAM, A.CACMPCDE Compnay',
'From SYPARMAS A, SYRIGHTS B',
'Where A.CACMPCDE = B.COMPCODE',
'And lower(B.USERCODE) = Decode(lower(:P101_USERNAME),''SYSTEM'',B.USERCODE,lower(:P101_USERNAME))'))
,p_lov_cascade_parent_items=>'P101_USERNAME'
,p_ajax_items_to_submit=>'P101_USERNAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'style="font-size:15px; color:red; font-weight:bold;"'
,p_tag_attributes=>'style="color:#6633FF;font-weight:bold;"onkeypress="return tabE(this,event,''P101_LOGIN'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51058396524043236)
,p_name=>'P101_XAPPNAME'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(50964971761932587)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ORBITS',
'ERA-Infotech ltd.',
'&date.'))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width:100% !important;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51786490034695040)
,p_name=>'P101_PRODUCT_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(51786083500682261)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(51033676666574809)
,p_computation_sequence=>10
,p_computation_item=>'P1_CACMPNAM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P1_CACMPNAM.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51034193701626726)
,p_name=>'assign compcode in application item'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_CACMPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51034480494626732)
,p_event_id=>wwv_flow_api.id(51034193701626726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
':COMPCODE:=:P101_CACMPNAM;',
'End;'))
,p_attribute_02=>'P101_CACMPNAM'
,p_attribute_03=>'COMPCODE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51062069089465673)
,p_name=>'on page load disable login button'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51062388201465684)
,p_event_id=>wwv_flow_api.id(51062069089465673)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(50963974134932586)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51063169843511469)
,p_event_id=>wwv_flow_api.id(51062069089465673)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_CACMPNAM'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51062483419479223)
,p_name=>'enable login button on company name'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_CACMPNAM'
,p_condition_element=>'P101_CACMPNAM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51062786410479225)
,p_event_id=>wwv_flow_api.id(51062483419479223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(50963974134932586)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51063575163580992)
,p_name=>'enable company name'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_PASSWORD'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51063886269580992)
,p_event_id=>wwv_flow_api.id(51063575163580992)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_CACMPNAM'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51064572066692767)
,p_event_id=>wwv_flow_api.id(51063575163580992)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select CACMPNAM,CACMPCDE into :P101_CACMPNAM,:compcode from syparmas a,syusrmas b',
'where a.CACMPCDE=b.DIVNCODE ',
'and upper(USERCODE)=upper(:P101_USERNAME);',
'end;'))
,p_attribute_02=>'P101_USERNAME'
,p_attribute_03=>'P101_CACMPNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51065567882801050)
,p_event_id=>wwv_flow_api.id(51063575163580992)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(50963974134932586)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(53792769719459230)
,p_name=>'assign user code'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_USERNAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(53793099568459261)
,p_event_id=>wwv_flow_api.id(53792769719459230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P1_DASHBOARD:=:P101_USERNAME;',
'end;'))
,p_attribute_02=>'P101_USERNAME'
,p_attribute_03=>'P1_DASHBOARD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50965389328932587)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );',
'',
':P101_USER_FULL_NAME := ''Hasan Mushariar Ahmmed'';',
'',
'--raise_application_error(-20001, ''Test ''||:P101_USER_FULL_NAME);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50965169587932587)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50965784095932587)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50965572935932587)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cookie  OWA_COOKIE.cookie;',
'begin',
':P101_USERNAME:= apex_authentication.get_login_username_cookie;',
'',
'cookie:=OWA_COOKIE.get(''APEX_AT_WORK_COOKIE'');',
'',
'--:P1_COMPCODE :=  cookie.vals.First;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50965992922932587)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Select CACMPNAM',
' Into :P101_COMP_NAME',
' From SYPARMAS',
' Where CACMPCDE=:COMPCODE;',
' ',
'--:LOGIN_IMAGE := ''"#IMAGE_PREFIX#/ebek/ebek_small_logo.JPG"'';',
'--apex_application.g_print_success_message := ''test   ''||:P101_VALDFLAG;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(53797671655074907)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'redirect main application'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_redirect_url VARCHAR2(1000) := :LOGINAPP_REDIRECT_URL;',
'BEGIN',
'htp.init();',
'owa_util.redirect_url(l_redirect_url); --- Redirect',
'apex_application.g_unrecoverable_error := true;   --- stops all further page processing',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
