prompt --application/pages/page_00192
begin
--   Manifest
--     PAGE: 00192
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
 p_id=>192
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'User Rights'
,p_page_mode=>'MODAL'
,p_step_title=>'User Rights'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var l$Tree;',
'',
'function addFeedback(pMsg){',
'  if($.browser.ie){',
'    $("#P192_FEEDBACK").val(pMsg + "\n\r" + $("#P192_FEEDBACK").val());',
'  }else{',
'    $("#P192_FEEDBACK").val(pMsg + "\n" + $("#P192_FEEDBACK").val());',
'  }',
'};',
'function searchTree(pWhat,pHow){',
'  $.tree.reference(l$Tree).search(pWhat,pHow);',
'  addFeedback("Searching the tree for " + pWhat + " yields nodes:");',
'  $(".search").each(function(){',
'    addFeedback("Matched node: " + $(this).parent().attr(''id'') + $(this).text());',
'  });',
'};',
'',
'function treeOnload(){',
'l$Tree = $("#emptree div.tree");',
'$.extend($.expr['':''], {',
'    ciContains: function(elem, i, match) {',
'        return $(elem).text().toUpperCase().indexOf(match[3].toUpperCase()) >= 0;',
'    }',
'});',
'',
'$.tree.reference(l$Tree).settings.data.async = false;',
'$.tree.reference(l$Tree).settings.callback.onselect = function(NODE, TREE_OBJ){',
'  addFeedback("Selected node: " + $(NODE).attr(''id'') + $("a:first", NODE).text());',
'  $("#P192_PROGNAME").val($(NODE).attr(''id''));',
'  $("#report_rights").trigger("apexrefresh");',
'};',
'$.tree.reference(l$Tree).settings.callback.onopen= function(NODE, TREE_OBJ) { ',
'  addFeedback("Opened node: " + $(NODE).attr(''id'') + $("a:first", NODE).text());',
'  $("#P192_PROGNAME").val($(NODE).attr(''id''));',
'};',
'$.tree.reference(l$Tree).settings.callback.onclose= function(NODE, TREE_OBJ) { ',
'  addFeedback("Closed node: " + $(NODE).attr(''id'') + $("a:first", NODE).text());',
'  $("#P192_PROGNAME").val($(NODE).attr(''id''));',
'};',
'};',
'',
'function resetAndOpenToLevel ( pTree, pMaxLevel ) {',
'   apex.jQuery.tree.reference(pTree).close_all();',
'',
'   $("ul", pTree).each(function ( index ) {',
'      if ( $(this).parents("ul").length <= pMaxLevel ) {',
'         apex.jQuery.tree.reference(pTree).open_branch(this);',
'      };',
'   });',
'};'))
,p_javascript_code_onload=>'treeOnload();'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180830133042'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(37584301824681579)
,p_name=>'ad'
,p_region_name=>'ad'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001,c002, c003, c004,c005,c006,c007,c008,c009,c010,c011,c012,c013 from apex_collections ',
'               where collection_name = ''ORDER''  and c001= ''100'' and c002=:P192_USERNAME'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37584858092681584)
,p_query_column_id=>1
,p_column_alias=>'C001'
,p_column_display_sequence=>1
,p_column_heading=>'C001'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37585305877681586)
,p_query_column_id=>2
,p_column_alias=>'C002'
,p_column_display_sequence=>2
,p_column_heading=>'C002'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37585624287681586)
,p_query_column_id=>3
,p_column_alias=>'C003'
,p_column_display_sequence=>3
,p_column_heading=>'C003'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37586094235681586)
,p_query_column_id=>4
,p_column_alias=>'C004'
,p_column_display_sequence=>4
,p_column_heading=>'C004'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37586450670681586)
,p_query_column_id=>5
,p_column_alias=>'C005'
,p_column_display_sequence=>5
,p_column_heading=>'C005'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37586870568681586)
,p_query_column_id=>6
,p_column_alias=>'C006'
,p_column_display_sequence=>6
,p_column_heading=>'C006'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37587239669681589)
,p_query_column_id=>7
,p_column_alias=>'C007'
,p_column_display_sequence=>7
,p_column_heading=>'C007'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37587642205681589)
,p_query_column_id=>8
,p_column_alias=>'C008'
,p_column_display_sequence=>8
,p_column_heading=>'C008'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37588021048681589)
,p_query_column_id=>9
,p_column_alias=>'C009'
,p_column_display_sequence=>9
,p_column_heading=>'C009'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37588465505681589)
,p_query_column_id=>10
,p_column_alias=>'C010'
,p_column_display_sequence=>10
,p_column_heading=>'C010'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37588897800681589)
,p_query_column_id=>11
,p_column_alias=>'C011'
,p_column_display_sequence=>11
,p_column_heading=>'C011'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37589294556681589)
,p_query_column_id=>12
,p_column_alias=>'C012'
,p_column_display_sequence=>12
,p_column_heading=>'C012'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37589618915681589)
,p_query_column_id=>13
,p_column_alias=>'C013'
,p_column_display_sequence=>13
,p_column_heading=>'C013'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77237272744629941)
,p_plug_name=>'button Container'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93714328495581526)
,p_plug_name=>' TreeRegion'
,p_region_css_classes=>'CalendarHolder'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77024122454383496)
,p_plug_name=>'Rights'
,p_parent_plug_id=>wwv_flow_api.id(93714328495581526)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7617990401804811389)
,p_plug_name=>'Select Items'
,p_parent_plug_id=>wwv_flow_api.id(77024122454383496)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/26 18:51 (Formatter Plus v4.8.8) */',
'DECLARE',
'   l_customer_id   VARCHAR2 (30) := :p11_customer_id;',
'BEGIN',
'--',
'-- display products',
'--',
'   SYS.HTP.p (''<div class="demoProducts" id="report_rights">'');',
'   SYS.HTP.p',
'      (''<table width="100%" cellspacing="0" cellpadding="0" border="0" id="EmpTable">',
'<thead>',
'<tr><th class="left">compcode</th><th>usercode</th><th>parentnm</th><th>progname</th><th>menuleaf</th><th></th></tr>',
'</thead>',
'<tbody>''',
'      );',
'',
'   FOR c1 IN (SELECT  a.compcode, a.usercode, a.parentnm, a.progname, a.menuleaf',
'      FROM (SELECT compcode, usercode, parentnm, progname, menuleaf,(SELECT pageid',
'                         FROM orbrgs.symenmas',
'                        WHERE progname = s.progname',
'                        and pageid is not null',
'                        and compcode=''100'') pagid,',
'                      ''javascript:change_page(''''''',
'                   || ''nmtypsec''',
'                   || '''''',''',
'                   || 999',
'                   || '',''''''',
'                   || s.parentnm',
'                   || '''''')'' lnk',
'              FROM orbrgs.syrights s',
'             WHERE UPPER (usercode) = UPPER (:app_user)',
'and compcode=''100'') a,',
'           orbrgs.symentre b',
'     WHERE a.parentnm = b.parentnm',
'       AND a.progname = b.progname',
'       AND UPPER (a.usercode) = UPPER (:app_user)',
'       AND a.PROGNAME=:P192_PROGNAME',
'START WITH a.parentnm = ''ROOT''',
'CONNECT BY PRIOR a.progname = a.parentnm',
'  ORDER SIBLINGS BY b.menuslno,b.LEVLCODE)',
'   LOOP ',
'      SYS.HTP.p',
'         (   ''<tr><td class="left"><a href="javascript:popUp2(''''''',
'          || apex_util.prepare_url (   ''f?p=&APP_ID.:20:''',
'                                    || :app_session',
'                                    || '':ADD:::P20_PRODUCT_ID:''',
'                                    || apex_escape.html (c1.compcode)',
'                                   )',
'          || '''''',''''700'''',''''400'''');">''',
'          || apex_escape.html (c1.parentnm)',
'          || ''</a></td><td>''',
'          || c1.usercode',
'          || ''</a></td><td>''',
'          || c1.parentnm',
'          || ''</a></td><td>''',
'          || c1.progname',
'          || ''</a></td><td>''',
'          || c1.menuleaf',
'          || ''</td><td><a href="''',
'          || apex_util.prepare_url (   ''f?p=&APP_ID.:1:''',
'                                    || :app_session',
'                                    || '':ADD:::P192_PROGID:''',
'                                    || c1.progname',
'                                   )',
'          || ''" class="uButton uAltButton iconButton plus"><span>Add<i class="iR"></i></span></a></td></tr>''',
'         );',
'   END LOOP;',
'',
'   SYS.HTP.p (''</tbody></table>'');',
'   SYS.HTP.p (''</div>'');',
'--',
'-- display current order',
'--',
'   SYS.HTP.p (''<div class="demoProducts" >'');',
'   SYS.HTP.p',
'      (''<table width="100%" cellspacing="0" cellpadding="0" border="0">',
'<thead>',
'<tr><th class="left">Current Order</th></tr>',
'</thead>',
'</table>',
'<table width="100%" cellspacing="0" cellpadding="0" border="0">',
'<tbody>''',
'      );',
'',
'   DECLARE',
'      c   NUMBER := 0;',
'      t   NUMBER := 0;',
'   BEGIN',
'-- loop over cart values',
'      FOR c1 IN (SELECT   c001 pid, c002 i, c003 p,',
'                          c002 q, c003 ep, ''Remove'' remove',
'                     FROM apex_collections',
'                    WHERE collection_name = ''ORDER''',
'                 GROUP BY c001, c002, c003',
'                 ORDER BY c002)',
'      LOOP',
'         SYS.HTP.p',
'            (   ''<div class="sideCartItem"><a href="''',
'             || apex_util.prepare_url',
'                      (   ''f?p=&APP_ID.:12:&SESSION.:REMOVE:::P192_PRODUCT_ID:''',
'                       || apex_escape.html (c1.pid)',
'                      )',
'             || ''"><img src="#IMAGE_PREFIX#delete.gif" alt="Remove from cart" title="Remove from cart" /></a>&nbsp;&nbsp;',
'    <a href="javascript:popUp2(''''''',
'             || apex_util.prepare_url (   ''f?p=&APP_ID.:20:''',
'                                       || :app_session',
'                                       || '':ADD:::P20_PRODUCT_ID:''',
'                                       || apex_escape.html (c1.pid)',
'                                      )',
'             || '''''',''''700'''',''''400'''');">''',
'             || apex_escape.html (c1.i)',
'             || ''</a>',
'    <span>''',
'             || c1.p',
'             || ''</span>',
'    <span>Quantity: ''',
'             || c1.q',
'             || ''</span>',
'    <span class="subtotal">Subtotal: ''',
'             || c1.ep',
'             || ''</span>',
'</div>''',
'            );',
'         c := c + 1;',
'         t := t ;--+ c1.ep;',
'      END LOOP;',
'',
'      SYS.HTP.p (''</tbody></table>'');',
'',
'      IF c > 0',
'      THEN',
'         SYS.HTP.p',
'                (   ''<div class="sideCartTotal">',
'    <p>Items: <span>''',
'                 || c',
'                 || ''</span></p>',
'    <p class="sideCartTotal">Total: <span>''',
'                 || t',
'                 || ''</span></p>',
'</div>''',
'                );',
'      ELSE',
'         SYS.HTP.p',
'                  (''<div class="alertMessage info" style="margin-top: 8px;">'');',
'         SYS.HTP.p (''<img src="#IMAGE_PREFIX#f_spacer.gif">'');',
'         SYS.HTP.p (''<div class="innerMessage">'');',
'         SYS.HTP.p (''<h3>Note</h3>'');',
'         SYS.HTP.p (''<p>You have no items in your current order.</p>'');',
'         SYS.HTP.p (''</div>'');',
'         SYS.HTP.p (''</div>'');',
'      END IF;',
'   END;',
'',
'   SYS.HTP.p (''</div>'');',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(77152586568814721)
,p_name=>'Review On Rights'
,p_region_name=>'report_rights'
,p_parent_plug_id=>wwv_flow_api.id(93714328495581526)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:i-h640:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return q''{select distinct c001,c002, c003, c004,c005,c006,c007,c008,c009,c010, c011, c012, c013,''<div  style="padding-left: 10px;font-weight:bold;">',
'<a href="javascript:$s(''''''',
'                   || ''P192_PROGNAME_DELETE''',
'                   || '''''',''''''',
'                   || c004',
'                   || '''''')" class="uButton uAltButton iconButton plus"><span><button id="printbut" style="display: block;',
'    font-size: 1.0em;',
'    font-weight: bold;',
'    text-transform: Initcap;',
'    padding: 3px 13px;',
'    margin: 1px auto;',
'    color: #ccc;',
'    background-color: #555;',
'    background: -webkit-linear-gradient(#888, #555);',
'    background: linear-gradient(#888, #555);',
'    border: 0 none;',
'    border-radius: 3px;',
'    text-shadow: 0 -1px 0 #000;',
'    box-shadow: 0 1px 0 #666, 0 0px 0 #444, 0 6px 6px rgba(0,0,0,0.6);',
'    cursor: pointer;',
'    -webkit-transition: all 150ms ease;',
'    transition: all 150ms ease;" type="button">Modify/Delete</button><i class="iR"></i></span></a></div>'' remove_column from apex_collections ',
'               where collection_name = ''ORDER''',
'and c002=nvl(:P192_USERNAME,c002)',
'and c009<>''M''',
'--group by c001,c002,c003,c004,c005,c006,c007,c008,c009',
'order by c006',
'}'';'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P192_USERNAME'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_max_columns=>60
,p_query_num_rows=>15
,p_query_options=>'GENERIC_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37515732005230287)
,p_query_column_id=>1
,p_column_alias=>'COL01'
,p_column_display_sequence=>1
,p_column_heading=>'COL01'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37502996451230259)
,p_query_column_id=>2
,p_column_alias=>'COL02'
,p_column_display_sequence=>2
,p_column_heading=>'COL02'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37503351822230264)
,p_query_column_id=>3
,p_column_alias=>'COL03'
,p_column_display_sequence=>3
,p_column_heading=>'Col03'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37503732646230265)
,p_query_column_id=>4
,p_column_alias=>'COL04'
,p_column_display_sequence=>4
,p_column_heading=>'Col04'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37504125076230265)
,p_query_column_id=>5
,p_column_alias=>'COL05'
,p_column_display_sequence=>5
,p_column_heading=>'Progname Name'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'YES'
,p_column_width=>200
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37504571265230265)
,p_query_column_id=>6
,p_column_alias=>'COL06'
,p_column_display_sequence=>6
,p_column_heading=>'Col06'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37504979628230267)
,p_query_column_id=>7
,p_column_alias=>'COL07'
,p_column_display_sequence=>7
,p_column_heading=>'Col07'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37505310551230267)
,p_query_column_id=>8
,p_column_alias=>'COL08'
,p_column_display_sequence=>8
,p_column_heading=>'Col08'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37505709387230267)
,p_query_column_id=>9
,p_column_alias=>'COL09'
,p_column_display_sequence=>9
,p_column_heading=>'Col09'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37506156252230267)
,p_query_column_id=>10
,p_column_alias=>'COL10'
,p_column_display_sequence=>10
,p_column_heading=>'Add Status'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37506575467230267)
,p_query_column_id=>11
,p_column_alias=>'COL11'
,p_column_display_sequence=>11
,p_column_heading=>'Mod Status'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37506920332230267)
,p_query_column_id=>12
,p_column_alias=>'COL12'
,p_column_display_sequence=>12
,p_column_heading=>'Del Status'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37507361702230276)
,p_query_column_id=>13
,p_column_alias=>'COL13'
,p_column_display_sequence=>13
,p_column_heading=>'Enq Status'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37507786372230276)
,p_query_column_id=>14
,p_column_alias=>'COL14'
,p_column_display_sequence=>14
,p_column_heading=>'Modify/Delete'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:216:&SESSION.::&DEBUG.:216:P216_USERCODE,P216_PROGNAME:#COL02#,#COL04#'
,p_column_linktext=>'#COL14#'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37508169558230276)
,p_query_column_id=>15
,p_column_alias=>'COL15'
,p_column_display_sequence=>15
,p_column_heading=>'Col15'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37508585309230278)
,p_query_column_id=>16
,p_column_alias=>'COL16'
,p_column_display_sequence=>16
,p_column_heading=>'Col16'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37508926828230278)
,p_query_column_id=>17
,p_column_alias=>'COL17'
,p_column_display_sequence=>17
,p_column_heading=>'Col17'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37509331092230278)
,p_query_column_id=>18
,p_column_alias=>'COL18'
,p_column_display_sequence=>18
,p_column_heading=>'Col18'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37509721348230279)
,p_query_column_id=>19
,p_column_alias=>'COL19'
,p_column_display_sequence=>19
,p_column_heading=>'Col19'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37510202139230279)
,p_query_column_id=>20
,p_column_alias=>'COL20'
,p_column_display_sequence=>20
,p_column_heading=>'Col20'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37510520095230279)
,p_query_column_id=>21
,p_column_alias=>'COL21'
,p_column_display_sequence=>21
,p_column_heading=>'Col21'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37510938385230279)
,p_query_column_id=>22
,p_column_alias=>'COL22'
,p_column_display_sequence=>22
,p_column_heading=>'Col22'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37511408628230281)
,p_query_column_id=>23
,p_column_alias=>'COL23'
,p_column_display_sequence=>23
,p_column_heading=>'Col23'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37511784950230281)
,p_query_column_id=>24
,p_column_alias=>'COL24'
,p_column_display_sequence=>24
,p_column_heading=>'Col24'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37512207429230281)
,p_query_column_id=>25
,p_column_alias=>'COL25'
,p_column_display_sequence=>25
,p_column_heading=>'Col25'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37512563242230283)
,p_query_column_id=>26
,p_column_alias=>'COL26'
,p_column_display_sequence=>26
,p_column_heading=>'Col26'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37512924787230283)
,p_query_column_id=>27
,p_column_alias=>'COL27'
,p_column_display_sequence=>27
,p_column_heading=>'Col27'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37513312870230283)
,p_query_column_id=>28
,p_column_alias=>'COL28'
,p_column_display_sequence=>28
,p_column_heading=>'Col28'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37513778069230283)
,p_query_column_id=>29
,p_column_alias=>'COL29'
,p_column_display_sequence=>29
,p_column_heading=>'Col29'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37514153779230283)
,p_query_column_id=>30
,p_column_alias=>'COL30'
,p_column_display_sequence=>30
,p_column_heading=>'Col30'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37514581867230284)
,p_query_column_id=>31
,p_column_alias=>'COL31'
,p_column_display_sequence=>31
,p_column_heading=>'Col31'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37515002596230286)
,p_query_column_id=>32
,p_column_alias=>'COL32'
,p_column_display_sequence=>32
,p_column_heading=>'Col32'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37515367184230286)
,p_query_column_id=>33
,p_column_alias=>'COL33'
,p_column_display_sequence=>33
,p_column_heading=>'Col33'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37516167169230287)
,p_query_column_id=>34
,p_column_alias=>'COL34'
,p_column_display_sequence=>34
,p_column_heading=>'Col34'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37516602985230287)
,p_query_column_id=>35
,p_column_alias=>'COL35'
,p_column_display_sequence=>35
,p_column_heading=>'Col35'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37516954561230287)
,p_query_column_id=>36
,p_column_alias=>'COL36'
,p_column_display_sequence=>36
,p_column_heading=>'Col36'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37517360370230287)
,p_query_column_id=>37
,p_column_alias=>'COL37'
,p_column_display_sequence=>37
,p_column_heading=>'Col37'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37517781511230287)
,p_query_column_id=>38
,p_column_alias=>'COL38'
,p_column_display_sequence=>38
,p_column_heading=>'Col38'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37518189614230287)
,p_query_column_id=>39
,p_column_alias=>'COL39'
,p_column_display_sequence=>39
,p_column_heading=>'Col39'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37518525517230287)
,p_query_column_id=>40
,p_column_alias=>'COL40'
,p_column_display_sequence=>40
,p_column_heading=>'Col40'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37519008559230289)
,p_query_column_id=>41
,p_column_alias=>'COL41'
,p_column_display_sequence=>41
,p_column_heading=>'Col41'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37519358030230289)
,p_query_column_id=>42
,p_column_alias=>'COL42'
,p_column_display_sequence=>42
,p_column_heading=>'Col42'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37519787105230289)
,p_query_column_id=>43
,p_column_alias=>'COL43'
,p_column_display_sequence=>43
,p_column_heading=>'Col43'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37520156338230289)
,p_query_column_id=>44
,p_column_alias=>'COL44'
,p_column_display_sequence=>44
,p_column_heading=>'Col44'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37520549246230289)
,p_query_column_id=>45
,p_column_alias=>'COL45'
,p_column_display_sequence=>45
,p_column_heading=>'Col45'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37520940231230289)
,p_query_column_id=>46
,p_column_alias=>'COL46'
,p_column_display_sequence=>46
,p_column_heading=>'Col46'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37521355707230289)
,p_query_column_id=>47
,p_column_alias=>'COL47'
,p_column_display_sequence=>47
,p_column_heading=>'Col47'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37521748883230289)
,p_query_column_id=>48
,p_column_alias=>'COL48'
,p_column_display_sequence=>48
,p_column_heading=>'Col48'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37522123525230289)
,p_query_column_id=>49
,p_column_alias=>'COL49'
,p_column_display_sequence=>49
,p_column_heading=>'Col49'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37522512781230289)
,p_query_column_id=>50
,p_column_alias=>'COL50'
,p_column_display_sequence=>50
,p_column_heading=>'Col50'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37522948082230289)
,p_query_column_id=>51
,p_column_alias=>'COL51'
,p_column_display_sequence=>51
,p_column_heading=>'Col51'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37523327117230289)
,p_query_column_id=>52
,p_column_alias=>'COL52'
,p_column_display_sequence=>52
,p_column_heading=>'Col52'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37523791275230289)
,p_query_column_id=>53
,p_column_alias=>'COL53'
,p_column_display_sequence=>53
,p_column_heading=>'Col53'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37524196087230290)
,p_query_column_id=>54
,p_column_alias=>'COL54'
,p_column_display_sequence=>54
,p_column_heading=>'Col54'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37524580313230290)
,p_query_column_id=>55
,p_column_alias=>'COL55'
,p_column_display_sequence=>55
,p_column_heading=>'Col55'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37524913839230290)
,p_query_column_id=>56
,p_column_alias=>'COL56'
,p_column_display_sequence=>56
,p_column_heading=>'Col56'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37525382277230290)
,p_query_column_id=>57
,p_column_alias=>'COL57'
,p_column_display_sequence=>57
,p_column_heading=>'Col57'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37525806340230290)
,p_query_column_id=>58
,p_column_alias=>'COL58'
,p_column_display_sequence=>58
,p_column_heading=>'Col58'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37526169191230290)
,p_query_column_id=>59
,p_column_alias=>'COL59'
,p_column_display_sequence=>59
,p_column_heading=>'Col59'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37526553286230290)
,p_query_column_id=>60
,p_column_alias=>'COL60'
,p_column_display_sequence=>60
,p_column_heading=>'Col60'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77235882414596402)
,p_plug_name=>'search'
,p_parent_plug_id=>wwv_flow_api.id(93714328495581526)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--hiddenOverflow:margin-bottom-none:margin-top-none'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(107939721813939253)
,p_plug_name=>'Rights'
,p_parent_plug_id=>wwv_flow_api.id(93714328495581526)
,p_region_css_classes=>'CalendarHolder'
,p_region_template_options=>'#DEFAULT#:i-h640:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>4
,p_plug_display_column=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     CASE',
'              WHEN CONNECT_BY_ISLEAF = 1',
'                 THEN 0',
'              WHEN LEVEL = 1',
'                 THEN 1',
'              ELSE -1',
'           END AS status,',
'           LEVEL, b.progdesc AS title,',
'           CASE',
'              WHEN b.menuleaf = ''M''',
'                 THEN ''fa-angle-down''',
'              ELSE ''#WORKSPACE_IMAGES#bug.gif''',
'           END AS icon,',
'           a.progname AS VALUE, NULL AS tooltip, a.lnk AS LINK',
'      FROM (SELECT compcode, usercode, parentnm, progname, menuleaf,(SELECT pageid',
'                         FROM symenmas',
'                        WHERE progname = s.progname',
'                        and pageid is not null',
'                        and compcode=''101'') pagid,',
'                      ''javascript:$s(''''''',
'                   || ''P192_PROGNAME''',
'                   || '''''',''''''',
'                   || s.progname',
'                   || '''''')'' lnk',
'              FROM syrights s',
'             WHERE UPPER (usercode) = UPPER (:app_user)',
'and compcode=''100'') a,',
'           symentre b',
'     WHERE a.parentnm = b.parentnm',
'       AND a.progname = b.progname',
'       AND UPPER (a.usercode) = UPPER (:app_user)',
'START WITH a.parentnm = ''ROOT''',
'CONNECT BY PRIOR a.progname = a.parentnm',
'  ORDER SIBLINGS BY b.menuslno,b.LEVLCODE'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'default'
,p_attribute_02=>'S'
,p_attribute_03=>'P192_PROGID'
,p_attribute_04=>'N'
,p_attribute_06=>'emptree'
,p_attribute_07=>'JSTREE'
,p_attribute_10=>'"3"'
,p_attribute_11=>'"2"'
,p_attribute_12=>'"4"'
,p_attribute_15=>'"1"'
,p_attribute_20=>'"5"'
,p_attribute_22=>'"6"'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'"7"'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     CASE',
'              WHEN CONNECT_BY_ISLEAF = 1',
'                 THEN 0',
'              WHEN LEVEL = 1',
'                 THEN 1',
'              ELSE -1',
'           END AS status,',
'           LEVEL, b.progdesc AS title,',
'           CASE',
'              WHEN b.menuleaf = ''M''',
'                 THEN ''fa-angle-down''',
'              ELSE ''#WORKSPACE_IMAGES#bug.gif''',
'           END AS icon,',
'           a.progname AS VALUE, NULL AS tooltip, a.lnk AS LINK',
'      FROM (SELECT compcode, usercode, parentnm, progname, menuleaf,(SELECT pageid',
'                         FROM symenmas',
'                        WHERE progname = s.progname',
'                        and pageid is not null',
'                        and compcode=:compcode) pagid,',
'                      ''javascript:change_page(''''''',
'                   || s.progname',
'                   || '''''',''',
'                   || (SELECT pageid',
'                         FROM symenmas',
'                        WHERE progname = s.progname',
'                        )',
'                   || '',''''''',
'                   || s.parentnm',
'                   || '''''')'' lnk',
'              FROM syrights s',
'             WHERE UPPER (usercode) = UPPER (:app_user)',
'and compcode=:compcode) a,',
'           symentre b',
'     WHERE a.parentnm = b.parentnm',
'       AND a.progname = b.progname',
'       AND UPPER (a.usercode) = UPPER (:app_user)',
'START WITH a.parentnm = ''ROOT''',
'CONNECT BY PRIOR a.progname = a.parentnm',
'  ORDER SIBLINGS BY b.menuslno,b.LEVLCODE'))
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(110243806132390921)
,p_plug_name=>' tree2'
,p_parent_plug_id=>wwv_flow_api.id(93714328495581526)
,p_region_css_classes=>'CalendarHolder'
,p_region_template_options=>'js-showMaximizeButton:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>22
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     CASE',
'              WHEN CONNECT_BY_ISLEAF = 1',
'                 THEN 0',
'              WHEN LEVEL = 1',
'                 THEN 1',
'              ELSE -1',
'           END AS status,',
'           LEVEL, b.progdesc AS title,',
'           CASE',
'              WHEN b.menuleaf = ''M''',
'                 THEN ''fa-angle-down''',
'              ELSE ''#WORKSPACE_IMAGES#bug.gif''',
'           END AS icon,',
'           a.progname AS VALUE, NULL AS tooltip, a.lnk AS LINK',
'      FROM (SELECT compcode, usercode, parentnm, progname, menuleaf,(SELECT pageid',
'                         FROM orbrgs.symenmas',
'                        WHERE progname = s.progname',
'                        and pageid is not null',
'                        and compcode=''101'') pagid,',
'                      ''javascript:$s(''''''',
'                   || ''P192_PROGNAME''',
'                   || '''''',''''''',
'                   || s.progname',
'                   || '''''')'' lnk',
'              FROM orbrgs.syrights s',
'             WHERE UPPER (usercode) = UPPER (:app_user)',
'and compcode=''101'') a,',
'           orbrgs.symentre b',
'     WHERE a.parentnm = b.parentnm',
'       AND a.progname = b.progname',
'       AND UPPER (a.usercode) = UPPER (:app_user)',
'START WITH a.parentnm = ''ROOT''',
'CONNECT BY PRIOR a.progname = a.parentnm',
'  ORDER SIBLINGS BY b.menuslno,b.LEVLCODE'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'default'
,p_attribute_02=>'S'
,p_attribute_03=>'P192_PROGID'
,p_attribute_04=>'N'
,p_attribute_06=>'emptree'
,p_attribute_07=>'JSTREE'
,p_attribute_10=>'"3"'
,p_attribute_11=>'"2"'
,p_attribute_12=>'"4"'
,p_attribute_15=>'"1"'
,p_attribute_20=>'"5"'
,p_attribute_22=>'"6"'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'"7"'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     CASE',
'              WHEN CONNECT_BY_ISLEAF = 1',
'                 THEN 0',
'              WHEN LEVEL = 1',
'                 THEN 1',
'              ELSE -1',
'           END AS status,',
'           LEVEL, b.progdesc AS title,',
'           CASE',
'              WHEN b.menuleaf = ''M''',
'                 THEN ''fa-angle-down''',
'              ELSE ''#WORKSPACE_IMAGES#bug.gif''',
'           END AS icon,',
'           a.progname AS VALUE, NULL AS tooltip, a.lnk AS LINK',
'      FROM (SELECT compcode, usercode, parentnm, progname, menuleaf,(SELECT pageid',
'                         FROM symenmas',
'                        WHERE progname = s.progname',
'                        and pageid is not null',
'                        and compcode=:compcode) pagid,',
'                      ''javascript:change_page(''''''',
'                   || s.progname',
'                   || '''''',''',
'                   || (SELECT pageid',
'                         FROM symenmas',
'                        WHERE progname = s.progname',
'                        )',
'                   || '',''''''',
'                   || s.parentnm',
'                   || '''''')'' lnk',
'              FROM syrights s',
'             WHERE UPPER (usercode) = UPPER (:app_user)',
'and compcode=:compcode) a,',
'           symentre b',
'     WHERE a.parentnm = b.parentnm',
'       AND a.progname = b.progname',
'       AND UPPER (a.usercode) = UPPER (:app_user)',
'START WITH a.parentnm = ''ROOT''',
'CONNECT BY PRIOR a.progname = a.parentnm',
'  ORDER SIBLINGS BY b.menuslno,b.LEVLCODE'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37527646873230292)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(77235882414596402)
,p_button_name=>'P192_SEARCH'
,p_button_static_id=>'P1_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37528752281230294)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(107939721813939253)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Collapse All'
,p_button_position=>'COPY'
,p_button_redirect_url=>'javascript:apex.widget.tree.collapse_all(''emptree'');'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37529203073230295)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(107939721813939253)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Expand All'
,p_button_position=>'COPY'
,p_button_redirect_url=>'javascript:apex.widget.tree.expand_all(''emptree'');'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37526912732230290)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77237272744629941)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39493839908082776)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(77237272744629941)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37500665235230245)
,p_name=>'P192_PROGNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(93714328495581526)
,p_prompt=>'Progname'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37501073420230250)
,p_name=>'P192_PROGID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(93714328495581526)
,p_prompt=>'Progid'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37501410029230251)
,p_name=>'P192_FEEDBACK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(93714328495581526)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37501835179230251)
,p_name=>'P192_PROGNAME_DELETE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(93714328495581526)
,p_prompt=>'Progname Delete'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37502274578230253)
,p_name=>'P192_PROGNAME_UPDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(93714328495581526)
,p_prompt=>'Progname Update'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37528045992230292)
,p_name=>'P192_USERNAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77235882414596402)
,p_prompt=>'User Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USERCODE||'' - ''||USERNAME as display_value, USERCODE as return_value ',
'  from SYUSRMAS',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Please Select User Name........'
,p_cHeight=>1
,p_tag_attributes=>'style="width:70%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56499171947336449)
,p_name=>'P192_RANDOMNO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(93714328495581526)
,p_use_cache_before_default=>'NO'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(37580382075599674)
,p_validation_name=>'P192_USERNAME'
,p_validation_sequence=>10
,p_validation=>'P192_USERNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(37526912732230290)
,p_associated_item=>wwv_flow_api.id(37528045992230292)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37532072923230301)
,p_name=>'add  rights to the ORDER Collection'
,p_event_sequence=>5
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P192_PROGNAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37532554937230301)
,p_event_id=>wwv_flow_api.id(37532072923230301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_count number := 0;',
'begin',
'for x in (',
'SELECT   DISTINCT COMPCODE,USERCODE,PARENTNM,PROGNAME,PROGDESC,MODLCODE,LEVLCODE,MENUSLNO,MENULEAF,ADDSTATS,MODSTATS,DELSTATS,ENQSTATS',
'  FROM   (SELECT   DISTINCT COMPCODE,USERCODE,PARENTNM,PROGNAME,PROGDESC,MODLCODE,LEVLCODE,MENUSLNO,MENULEAF,ADDSTATS,MODSTATS,DELSTATS,ENQSTATS',
'            FROM   syrights',
'           WHERE       compcode = :COMPCODE AND PROGNAME = ''ROOT'' AND UPPER (usercode) = UPPER (:app_user)',
'          UNION ALL',
'          SELECT   DISTINCT COMPCODE,USERCODE,PARENTNM,PROGNAME,PROGDESC,MODLCODE,LEVLCODE,MENUSLNO,MENULEAF,ADDSTATS,MODSTATS,DELSTATS,ENQSTATS',
'            FROM   syrights',
'           WHERE       compcode = :COMPCODE AND PROGNAME = :P192_PROGNAME  AND UPPER (usercode) = UPPER (:app_user)',
'          UNION ALL',
'          SELECT   DISTINCT COMPCODE,USERCODE,PARENTNM,PROGNAME,PROGDESC,MODLCODE,LEVLCODE,MENUSLNO,MENULEAF,ADDSTATS,MODSTATS,DELSTATS,ENQSTATS',
'            FROM   syrights',
'           WHERE   compcode = :COMPCODE AND UPPER (usercode) = UPPER (:app_user)',
'                   AND PROGNAME =  (SELECT   parentnm FROM   syrights WHERE       compcode = :COMPCODE',
'                                   AND PROGNAME = :P192_PROGNAME AND UPPER (usercode) = UPPER (:app_user))',
'          UNION ALL',
'          SELECT   DISTINCT COMPCODE,USERCODE,PARENTNM,PROGNAME,PROGDESC,MODLCODE,LEVLCODE,MENUSLNO,MENULEAF,ADDSTATS,MODSTATS,DELSTATS,ENQSTATS',
'            FROM   syrights',
'           WHERE   compcode = :COMPCODE AND UPPER (usercode) = UPPER (:app_user)',
'                   AND PROGNAME = (SELECT   parentnm FROM   syrights WHERE       compcode = :COMPCODE',
'                                   AND PROGNAME = :P192_PROGNAME AND UPPER (usercode) = UPPER (:app_user))',
'          UNION ALL',
'          SELECT   DISTINCT COMPCODE,USERCODE,PARENTNM,PROGNAME,PROGDESC,MODLCODE,LEVLCODE,MENUSLNO,MENULEAF,ADDSTATS,MODSTATS,DELSTATS,ENQSTATS',
'            FROM   syrights',
'           WHERE   compcode = :COMPCODE AND UPPER (usercode) = UPPER (:app_user)',
'                   AND PROGNAME = (SELECT   DISTINCT parentnm FROM   syrights WHERE   compcode = :COMPCODE',
'                                   AND UPPER (usercode) = UPPER (:app_user)',
'                                   AND PROGNAME = (SELECT   parentnm FROM   syrights WHERE   compcode = :COMPCODE',
'                                                   AND PROGNAME = :P192_PROGNAME AND UPPER (usercode) = UPPER (:app_user)))',
'          UNION ALL',
'          SELECT   DISTINCT COMPCODE,USERCODE,PARENTNM,PROGNAME,PROGDESC,MODLCODE,LEVLCODE,MENUSLNO,MENULEAF,ADDSTATS,MODSTATS,DELSTATS,ENQSTATS',
'            FROM   syrights',
'           WHERE   compcode = :COMPCODE AND UPPER (usercode) = UPPER (:app_user)',
'                   AND PROGNAME =(SELECT   DISTINCT parentnm FROM   syrights WHERE   compcode = :COMPCODE',
'                                   AND UPPER (usercode) = UPPER (:app_user)',
'                                   AND PROGNAME =(SELECT   DISTINCT parentnm FROM   syrights WHERE   compcode = :COMPCODE',
'                                                   AND UPPER (usercode) =UPPER (:app_user)',
'                                                   AND PROGNAME =(SELECT   parentnm FROM   syrights WHERE   compcode = :COMPCODE',
'                                        AND PROGNAME = :P192_PROGNAME AND UPPER(usercode) = UPPER(:app_user)))))',
'             )',
'loop',
'  ',
'',
'  apex_collection.add_member(p_collection_name => ''ORDER'', ',
'    p_c001 => x.compcode, ',
'    p_c002 => :P192_USERNAME,',
'    p_c003 => x.parentnm,',
'    p_c004 => x.progname,',
'    p_c005 => x.PROGDESC,',
'    p_c006 => x.MODLCODE,',
'    p_c007 => x.LEVLCODE,',
'    p_c008 => x.MENUSLNO,',
'    p_c009 => x.MENULEAF,',
'    p_c010 => x.ADDSTATS,',
'    p_c011 => x.MODSTATS,',
'    p_c012 => x.DELSTATS,',
'    p_c013 => x.ENQSTATS);',
'end loop;',
'end;'))
,p_attribute_02=>'P192_PROGNAME'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37607365409121733)
,p_event_id=>wwv_flow_api.id(37532072923230301)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#report_rights").trigger("apexrefresh");'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37532990825230303)
,p_name=>'change on prgramname'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P192_PROGNAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37533465571230303)
,p_event_id=>wwv_flow_api.id(37532990825230303)
,p_event_result=>'TRUE'
,p_action_sequence=>35
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#report_rights").trigger("apexrefresh");'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37533988861230303)
,p_event_id=>wwv_flow_api.id(37532990825230303)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'--null;',
':P192_PROGNAME:=:P192_PROGNAME;',
'end;'))
,p_attribute_02=>'P192_PROGNAME'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37534399086230303)
,p_name=>'add  rights to the ORDER Collection on search button'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P192_USERNAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37534822658230303)
,p_event_id=>wwv_flow_api.id(37534399086230303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_count number := 0;',
'begin',
'for x in (select distinct COMPCODE, USERCODE, PARENTNM, PROGNAME, PROGDESC, MODLCODE, LEVLCODE, ',
'          MENUSLNO, MENULEAF,ADDSTATS, MODSTATS, DELSTATS, ENQSTATS from ',
'          syrights where compcode=:COMPCODE and UPPER (usercode) = UPPER (:P192_USERNAME)',
'    ',
')',
'loop',
'apex_collection.add_member(p_collection_name => ''ORDER'', ',
'    p_c001 => x.compcode, ',
'    p_c002 => x.USERCODE,',
'    p_c003 => x.parentnm,',
'    p_c004 => x.progname,',
'    p_c005 => x.PROGDESC,',
'    p_c006 => x.MODLCODE,',
'    p_c007 => x.LEVLCODE,',
'    p_c008 => x.MENUSLNO,',
'    p_c009 => x.MENULEAF,',
'    p_c010 => x.ADDSTATS,',
'    p_c011 => x.MODSTATS,',
'    p_c012 => x.DELSTATS,',
'    p_c013 => x.ENQSTATS);',
'end loop;',
'end;'))
,p_attribute_02=>'P192_USERNAME'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37535341097230303)
,p_event_id=>wwv_flow_api.id(37534399086230303)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#report_rights").trigger("apexrefresh");'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37535805040230303)
,p_name=>'a'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P192_PROGNAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37536273838230303)
,p_event_id=>wwv_flow_api.id(37535805040230303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7617990401804811389)
,p_attribute_01=>'javascript:$a_report(''abc'',''1'',''10'',''10'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37536681633230303)
,p_name=>'b'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P192_PROGNAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37537109797230303)
,p_event_id=>wwv_flow_api.id(37536681633230303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#report_rights").trigger("apexrefresh");',
'$("#ad").trigger("apexrefresh");'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37537588907230303)
,p_name=>'trncate Order Collection on submit button'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(37526912732230290)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37538051078230303)
,p_event_id=>wwv_flow_api.id(37537588907230303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'apex_collection.create_or_truncate_collection',
'  (p_collection_name => ''ORDER'');',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37538418061230303)
,p_name=>'delete rights on change PROGNAME DELETE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P192_PROGNAME_DELETE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37539004674230303)
,p_event_id=>wwv_flow_api.id(37538418061230303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'apex_collection.delete_members( ',
'        p_collection_name => ''ORDER'',',
'        p_attr_number     => 4,',
'        p_attr_value      => :P192_PROGNAME_DELETE );',
'end;'))
,p_attribute_02=>'P192_PROGNAME_DELETE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37539435055230304)
,p_event_id=>wwv_flow_api.id(37538418061230303)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#report_rights").trigger("apexrefresh");'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37539817473230304)
,p_name=>'delete rights on change PROGNAME UPDATE'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P192_PROGNAME_UPDATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37540321712230304)
,p_event_id=>wwv_flow_api.id(37539817473230304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'apex_collection.delete_members( ',
'        p_collection_name => ''ORDER'',',
'        p_attr_number     => 4,',
'        p_attr_value      => :P192_PROGNAME_DELETE );',
'end;'))
,p_attribute_02=>'P192_PROGNAME_DELETE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37540831568230309)
,p_event_id=>wwv_flow_api.id(37539817473230304)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#report_rights").trigger("apexrefresh");'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47437815860696304)
,p_name=>'New'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39493839908082776)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47437984997696305)
,p_event_id=>wwv_flow_api.id(47437815860696304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37531232280230300)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into syrights on submit button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_count number := 0;',
'begin',
'select count(*)  into l_count from syrights',
'where  COMPCODE=:COMPCODE and USERCODE=:P192_USERNAME;',
'',
'if l_count = 0 then',
'for x in (select distinct c001,c002, c003, c004,c005,c006,c007,c008,c009,c010,c011,c012,c013 from apex_collections ',
'               where collection_name = ''ORDER''  and c001= ''100'' and c002=:P192_USERNAME',
'order by c006',
')',
'loop',
'insert into syrights   (COMPCODE, USERCODE, PARENTNM, PROGNAME, PROGDESC, MODLCODE, LEVLCODE, MENUSLNO, MENULEAF,',
'                   ADDSTATS, MODSTATS, DELSTATS, ENQSTATS,OPRSTAMP, TIMSTAMP)',
'values(x.c001,:P192_USERNAME, x.c003, x.c004,x.c005,x.c006,x.c007,x.c008,x.c009,x.c010,x.c011,x.c012,x.c013,:APP_USER,SYSDATE);',
'end loop;',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Insert Successfully............'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct nvl(temps.PROGNAME, new.c004) c004,',
'new.c001, new.c002, new.c003, new.c005, ',
'new.c006, new.c007, new.c008, new.c009,  ',
'nvl(temps.ADDSTATS, new.c010) c010, nvl(temps.MODSTATS, new.c011) c011, nvl(temps.DELSTATS, new.c012) c012,',
'nvl(temps.ENQSTATS, new.c013) c013',
'from apex_collections new',
'full outer join',
'( select *',
'from orbrgs.syrights1',
') temps',
'on (new.c004 = temps.PROGNAME and ',
'new.collection_name = ''ORDER'')'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37531643139230300)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update into syrights on submit button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_count number := 0;',
'begin',
'',
'  merge into syrights emp',
'using (select distinct c001,c002, c003, c004,c005,c006,c007,c008,c009,c010,c011,c012,c013 from apex_collections ',
'               where collection_name = ''ORDER'') x',
'on (emp.PROGNAME = x.c004 and COMPCODE =x.c001 and USERCODE =x.c002 )',
'when matched',
'then',
'',
'update set ADDSTATS= x.c010',
', MODSTATS = x.c011',
', DELSTATS = x.c012',
',ENQSTATS=x.c013',
'where emp.PROGNAME = x.c004',
'and emp.COMPCODE =''159''',
'--delete  where PROGNAME != x.c004',
'when not matched',
'then',
'',
'insert   (COMPCODE, USERCODE, PARENTNM, PROGNAME, PROGDESC, MODLCODE, LEVLCODE, MENUSLNO, MENULEAF,',
'                   ADDSTATS, MODSTATS, DELSTATS, ENQSTATS,OPRSTAMP, TIMSTAMP)',
'values(x.c001,:P192_USERNAME, x.c003, x.c004,x.c005,x.c006,x.c007,x.c008,x.c009,x.c010,x.c011,x.c012,x.c013,:APP_USER,SYSDATE);',
'--end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37530425543230300)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create or Truncate ORDER Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection',
'  (p_collection_name => ''ORDER'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37530879049230300)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Product to the ORDER Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_count number := 0;',
'begin',
'for x in (SELECT  a.compcode, a.usercode, a.parentnm, a.progname, a.menuleaf',
'      FROM (SELECT compcode, usercode, parentnm, progname, menuleaf,(SELECT pageid',
'                         FROM orbrgs.symenmas',
'                        WHERE progname = s.progname',
'                        and pageid is not null',
'                        and compcode=''100'') pagid,',
'                      ''javascript:change_page(''''''',
'                   || ''nmtypsec''',
'                   || '''''',''',
'                   || 999',
'                   || '',''''''',
'                   || s.parentnm',
'                   || '''''')'' lnk',
'              FROM orbrgs.syrights s',
'             WHERE UPPER (usercode) = UPPER (:app_user)',
'and compcode=''100'') a,',
'           orbrgs.symentre b',
'     WHERE a.parentnm = b.parentnm',
'       AND a.progname = b.progname',
'       AND UPPER (a.usercode) = UPPER (:app_user)',
'       AND a.PROGNAME=:P192_PROGNAME',
'START WITH a.parentnm = ''ROOT''',
'CONNECT BY PRIOR a.progname = a.parentnm',
'  ORDER SIBLINGS BY b.menuslno,b.LEVLCODE )',
'loop',
'  /*select count(*) ',
'  into l_count',
'  from wwv_flow_collections',
'  where collection_name = ''ORDER''',
'  and c001 =  x.itemcode;',
'  if l_count >= 10 then',
'    exit;',
'  end if;*/',
'  apex_collection.add_member(p_collection_name => ''ORDER'', ',
'    p_c001 => x.compcode, ',
'    p_c002 => x.usercode,',
'    p_c003 => x.parentnm,',
'    p_c004 => x.progname,',
'    p_c005 => x.menuleaf);',
'end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
