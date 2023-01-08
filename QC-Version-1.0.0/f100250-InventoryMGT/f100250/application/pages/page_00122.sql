prompt --application/pages/page_00122
begin
--   Manifest
--     PAGE: 00122
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
 p_id=>122
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Payment Collection'
,p_page_mode=>'MODAL'
,p_step_title=>'Payment Collection'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function serilnoassign(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'',
'for (i = 0; i <=vRow; i++)',
'{',
'var y= pad(i+1, 4);',
'var tmp= ''f02_''.concat(y);',
'html_GetElement(''f02_''+vRow).value = i+0;',
'};',
'}',
'</script>',
'<script type="text/javascript">',
'function serilnocard(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'',
'for (i = 0; i <=vRow; i++)',
'{',
'var y= pad(i+1, 4);',
'var tmp= ''f36_''.concat(y);',
'html_GetElement(''f36_''+vRow).value = i+0;',
'};',
'}',
'</script>',
'<script type="text/javascript">',
'function serilnoddpo(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'',
'for (i = 0; i <=vRow; i++)',
'{',
'var y= pad(i+1, 4);',
'var tmp= ''f26_''.concat(y);',
'html_GetElement(''f26_''+vRow).value = i+0;',
'};',
'}',
'</script>',
'<script language="JavaScript" type="text/javascript">',
'',
' function addTotal()',
' {',
'  var items = document.getElementsByName("f17"); // Tabular form column to add up',
'  var items1 = document.getElementsByName("f35");',
'  var items2 = document.getElementsByName("f25");',
'  var paidamnt=parseFloat(document.getElementById(''P122_CSHPAIDAMNT'').value =0);',
'     ',
'  $total = 0;',
'  $itemValue = 0;',
'  $total1 = 0;',
'  $itemValue1 = 0;',
'  $total2 = 0;',
'  $itemValue2 = 0;',
'                     ',
'',
'  for (var i = 0; i < items.length; i++)',
'  {  ',
'   // if non-numeric character was entered, it will be considered as 0, ',
'   // isNaN returns true if anything but number was entered',
'   if(isNaN(items[i].value) || items[i].value == null || items[i].value == "")',
'    $itemValue = 0;',
'   else',
'    $itemValue = parseFloat(items[i].value); // convert to number',
'   ',
'   $total =$total+ $itemValue; // add up',
'  } ',
'      for (var i = 0; i < items1.length; i++)',
'  {  ',
'   // if non-numeric character was entered, it will be considered as 0, ',
'   // isNaN returns true if anything but number was entered',
'   if(isNaN(items1[i].value) || items1[i].value == null || items1[i].value == "")',
'    $itemValue1 = 0;',
'   else',
'    $itemValue1 = parseFloat(items1[i].value); // convert to number',
'   ',
'   $total1 =$total1+ $itemValue1; // add up',
'  } ',
'     for (var i = 0; i < items2.length; i++)',
'  {  ',
'   // if non-numeric character was entered, it will be considered as 0, ',
'   // isNaN returns true if anything but number was entered',
'   if(isNaN(items2[i].value) || items2[i].value == null || items2[i].value == "")',
'    $itemValue2 = 0;',
'   else',
'    $itemValue2 = parseFloat(items2[i].value); // convert to number',
'   ',
'   $total2 =$total2+ $itemValue2; // add up',
'  }',
'',
'  // $x sets the text field to be updated to the column total just calculated',
' $x(''P122_RECVAMNT'').value = $total+$total1+$total2+paidamnt;',
'',
' }',
'</script>',
'',
'<script language="JavaScript" type="text/javascript">',
'',
'function f_set_multi_items_tabular(pValue, pRow){',
'    var get = new htmldb_Get(null,html_GetElement(''pFlowId'').value,',
'''APPLICATION_PROCESS=Set_Multi_Items_Tabular_122'',0);',
'if(pValue){',
'get.add(''TEMPORARY_APPLICATION_ITEM'',pValue)',
'get.add(''T_ROWNUM'',pRow)',
'',
'}else{',
'get.add(''TEMPORARY_APPLICATION_ITEM'',''null'')',
'',
'}    ',
'',
'    gReturn = get.get(''XML'');',
'',
'    if(gReturn){',
'        var l_Count = gReturn.getElementsByTagName("item").length;',
'        ',
'        for(var i = 0;i<l_Count;i++){',
'            var l_Opt_Xml = gReturn.getElementsByTagName("item")[i];',
'            var l_ID = l_Opt_Xml.getAttribute(''id'');',
'            var l_El = html_GetElement(l_ID);    ',
'            if(l_Opt_Xml.firstChild){',
'                var l_Value = l_Opt_Xml.firstChild.nodeValue;',
'            }else{',
'                var l_Value = '''';',
'            }',
'',
'            if(l_El){',
'                if(l_El.tagName == ''INPUT''){',
'                    l_El.value = l_Value;',
'                }else if(l_El.tagName == ''SPAN'' && l_El.className == ''grabber''){',
'                    l_El.parentNode.innerHTML = l_Value;',
'                    l_El.parentNode.id = l_ID;',
'                }else{',
'                    l_El.innerHTML = l_Value;',
'                }',
'            }',
'        }',
'    }',
'    get = null;',
'}',
'',
'</script>',
'<script language="JavaScript" type="text/javascript">',
'',
'function f_set_multi_items_tabular_branch(pValue, pRow){',
'    var get = new htmldb_Get(null,html_GetElement(''pFlowId'').value,',
'''APPLICATION_PROCESS=Set_Multi_Items_Tabular_122_branch'',0);',
'if(pValue){',
'get.add(''TEMPORARY_APPLICATION_ITEM'',pValue)',
'get.add(''T_ROWNUM'',pRow)',
'',
'}else{',
'get.add(''TEMPORARY_APPLICATION_ITEM'',''null'')',
'',
'}    ',
'',
'    gReturn = get.get(''XML'');',
'',
'    if(gReturn){',
'        var l_Count = gReturn.getElementsByTagName("item").length;',
'        ',
'        for(var i = 0;i<l_Count;i++){',
'            var l_Opt_Xml = gReturn.getElementsByTagName("item")[i];',
'            var l_ID = l_Opt_Xml.getAttribute(''id'');',
'            var l_El = html_GetElement(l_ID);    ',
'            if(l_Opt_Xml.firstChild){',
'                var l_Value = l_Opt_Xml.firstChild.nodeValue;',
'            }else{',
'                var l_Value = '''';',
'            }',
'',
'            if(l_El){',
'                if(l_El.tagName == ''INPUT''){',
'                    l_El.value = l_Value;',
'                }else if(l_El.tagName == ''SPAN'' && l_El.className == ''grabber''){',
'                    l_El.parentNode.innerHTML = l_Value;',
'                    l_El.parentNode.id = l_ID;',
'                }else{',
'                    l_El.innerHTML = l_Value;',
'                }',
'            }',
'        }',
'    }',
'    get = null;',
'}',
'',
'</script>'))
,p_javascript_file_urls=>'#IMAGE_PREFIX#/libraries/jquery-ui/1.8.22/ui/minified/jquery.effects.highlight.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function showHide(pThis) {',
' var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
' if (vRow == "0001")  {',
'                        html_GetElement(''f15_''+vRow).value=document.getElementById(''P122_INVOICE_TOTAL'').value;',
'                        html_GetElement(''f16_''+vRow).value=document.getElementById(''P122_CURRENCY'').value;',
'                      }',
' if (vRow != "0001")  {',
'                       html_GetElement(''f15_''+vRow).value=document.getElementById(''P122_REMAINING_AMT'').value;',
'                       }',
'',
' if (pThis.value==''CSH'') ',
'  {',
'   $x_disableItem(''f04_''+vRow, true);',
'   $x_disableItem(''f05_''+vRow, true);',
'   $x_disableItem(''f06_''+vRow, true);',
'   $x_disableItem(''f07_''+vRow, true);',
'   $x_disableItem(''f10_''+vRow, true);',
'   $x_disableItem(''f11_''+vRow, true);',
'   $x_disableItem(''f12_''+vRow, true);',
'   $x_disableItem(''f13_''+vRow, true);',
'   $x_disableItem(''f14_''+vRow, true);',
'  }',
' if (pThis.value==''CHQ'') ',
'  {',
'   $x_disableItem(''f04_''+vRow, false);',
'   $x_disableItem(''f05_''+vRow, false);',
'   $x_disableItem(''f06_''+vRow, false);',
'   $x_disableItem(''f07_''+vRow, false);',
'   $x_disableItem(''f10_''+vRow, true);',
'   $x_disableItem(''f11_''+vRow, true);',
'   $x_disableItem(''f12_''+vRow, true);',
'   $x_disableItem(''f13_''+vRow, true);',
'   $x_disableItem(''f14_''+vRow, true);',
' }',
'',
'if (pThis.value==''CRD'') ',
'{',
'$x_disableItem(''f04_''+vRow, true);',
'$x_disableItem(''f05_''+vRow, true);',
'$x_disableItem(''f06_''+vRow, true);',
'$x_disableItem(''f07_''+vRow, true);',
'$x_disableItem(''f10_''+vRow, false);',
'$x_disableItem(''f11_''+vRow, false);',
'$x_disableItem(''f12_''+vRow, false);',
'$x_disableItem(''f13_''+vRow, true);',
'$x_disableItem(''f14_''+vRow, true);',
' }',
'',
' if (pThis.value==''DPO'') ',
'{',
'$x_disableItem(''f04_''+vRow, true);',
'$x_disableItem(''f05_''+vRow, true);',
'$x_disableItem(''f06_''+vRow, true);',
'$x_disableItem(''f07_''+vRow, true);',
'$x_disableItem(''f10_''+vRow, true);',
'$x_disableItem(''f11_''+vRow, true);',
'$x_disableItem(''f12_''+vRow, true);',
'$x_disableItem(''f13_''+vRow, false);',
'$x_disableItem(''f14_''+vRow, false);',
' }',
'',
'}',
'',
'',
'function getBankDetails(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P122_BANK_CODE'').value= html_GetElement(''f06_''+vRow).value;',
'html_GetElement(''f08_''+vRow).value=document.getElementById(''P122_BANK_CODE'').value;',
'$(document).ready(function(){  $(''#P122_BANK_CODE'').trigger(''click'');});',
'html_GetElement(''f06_''+vRow).value=document.getElementById(''P122_BANK_NAME'').value;',
'}',
'',
'',
'function getBranchDetails(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P122_BRANCH_CODE'').value= html_GetElement(''f07_''+vRow).value;',
'html_GetElement(''f09_''+vRow).value=document.getElementById(''P122_BRANCH_CODE'').value;',
'$(document).ready(function(){  $(''#P122_BRANCH_CODE'').trigger(''click'');});',
'html_GetElement(''f07_''+vRow).value=document.getElementById(''P122_BRANCH_NAME'').value;',
'}',
'',
'function getCardBank(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P122_CARD_BANK'').value= html_GetElement(''f11_''+vRow).value;',
'}',
'function addTotalPaid()',
' {',
'  var items = document.getElementsByName("f15");',
'  ',
'  $total = 0;',
'  $itemValue = 0;',
'  for (var i = 0; i < items.length; i++)',
'  {  ',
'   if(isNaN(items[i].value) || items[i].value == null || items[i].value == "")',
'    $itemValue = 0;',
'   else',
'    $itemValue = parseFloat(items[i].value); ',
'',
'    $total =$total+ $itemValue;',
'  } ',
'  $x(''P122_TOTAL_PAID'').value = $total;',
'$(document).ready(function(){  $(''#P122_TOTAL_PAID'').trigger(''click'');});',
'',
' }',
'',
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'(function($){;',
' /*** Cascading popup list ***/',
' $.fn.htmldbCascadePopup=function(parent,tempItem,options){',
'  options = $.extend({',
'   loadingTxt    : "Loading ...",',
'   loadingCss    : {"width":"80px","float":"left"}',
'  },options);',
'  return this.each(function(i){',
'   var $self = $(this),',
'   $anchor   = $self.next("a"),',
'   $parent   = $(parent).eq(i),',
'   popupFn   = new Function($anchor.attr("href").substr(11));',
'   $parent.change(function(){$self.val("").effect("highlight",{},2000).focus();});',
'   $anchor.click(function(e){',
'    e.preventDefault();',
'    var parentVal = $parent.val();',
'    if(!parentVal){parentVal="";};',
'    apex.server.process("DUMMY",{',
'     p_arg_names  : tempItem,',
'     p_arg_values : parentVal',
'	 },{',
'	  dataType   : "text",',
'	  beforeSend : function(){',
'       $self',
'       .hide()',
'       .after($("<div/>",{"html":options.loadingTxt,"css":options.loadingCss,"class":"ui-autocomplete-loading"})',
'	    .width($self.outerWidth())',
'	    .height($self.outerHeight())',
'       );',
'	  },',
'	  complete : function(){',
'	   popupFn();',
'       $self',
'       .show()',
'       .next("div.ui-autocomplete-loading")',
'       .remove();',
'	  }',
'    });',
'   });',
'  });',
' };',
'})(apex.jQuery);',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-inputContainer, .t-Form-inputContainer.col, .t-Form-labelContainer, .t-Form-labelContainer.col {',
'    padding: 0.2rem;',
'}',
'.t-Form-label {',
'    padding: .0rem 0;',
'    line-height: 1.0rem;',
'    display: inline-block;',
'    -webkit-hyphens: auto;',
'    -moz-hyphens: auto;',
'    -ms-hyphens: auto;',
'    hyphens: auto;',
'    font-size: 1.2rem;',
'    margin-top: 0px;',
'}',
'.ui-autocomplete-loading{',
' background: url("#IMAGE_PREFIX#libraries/jquery-ui/1.8/themes/base/images/ui-anim_basic_16x16.gif") no-repeat scroll right center transparent;',
'}',
''))
,p_dialog_height=>'800'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180206182714'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87149421350309534)
,p_plug_name=>'Installment & Customer Info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--stretchInputs:t-Form--leftLabels'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>24
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_column=>11
,p_plug_display_point=>'BODY_3'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87150029195316637)
,p_plug_name=>'Vehicle Info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--leftLabels'
,p_region_attributes=>'style="height: 230px;'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>18
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_column=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87151621461335471)
,p_plug_name=>'Payment Receive'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:t-Form--noPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>16
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>9
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44755480868528165)
,p_plug_name=>'Invoice Info'
,p_parent_plug_id=>wwv_flow_api.id(87151621461335471)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>11
,p_plug_grid_column_span=>9
,p_plug_display_column=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87280442425243906)
,p_plug_name=>'ref info'
,p_parent_plug_id=>wwv_flow_api.id(44755480868528165)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88193474752617830)
,p_plug_name=>'customer Information'
,p_parent_plug_id=>wwv_flow_api.id(44755480868528165)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>17
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87274041625103224)
,p_plug_name=>'Customer Information'
,p_parent_plug_id=>wwv_flow_api.id(88193474752617830)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>18
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87280802619247093)
,p_plug_name=>'receive Info'
,p_parent_plug_id=>wwv_flow_api.id(87151621461335471)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--xlarge:t-Form--stretchInputs:t-Form--leftLabels:t-Form--labelsAbove'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>16
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88194329484624668)
,p_plug_name=>'customer Image'
,p_parent_plug_id=>wwv_flow_api.id(87151621461335471)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87219424908935137)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>45
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87499529435803718)
,p_plug_name=>'Payment Detail radio'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--simple:t-TabsRegion-mod--small:t-Form--stretchInputs'
,p_region_attributes=>'style="background-color: #EAEEEE"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47592898119858189)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87530381261023869)
,p_plug_name=>'Cash'
,p_parent_plug_id=>wwv_flow_api.id(87499529435803718)
,p_region_attributes=>'style="background-color: #AEEEEE"'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87530709463027206)
,p_plug_name=>'Card'
,p_parent_plug_id=>wwv_flow_api.id(87499529435803718)
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(88531826280075037)
,p_name=>'Card'
,p_parent_plug_id=>wwv_flow_api.id(87530709463027206)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  APEX_ITEM.SELECT_LIST (31,',
'                          CARD_TYPE,',
'                          ''Visa Card;VISA,Master Card;MASTER,American Express Card;AMEX,DBBL Nexus Card;NEXUS'',',
'                          ''style="width:150px"class="u-TF-item u-TF-item--text"'',',
'                           NULL,',
'                           NULL,',
'                           NULL,',
'                          ''f31_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) CARDTYPE,',
'      apex_item.text (32,',
'                          ACCTCODE,',
'                          80,',
'                          100,',
'                          ''style="width:110px" onchange="serilnocard(this)"class="u-TF-item u-TF-item--text"'',',
'                          ''f32_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) CRDTCADN,',
'APEX_ITEM.SELECT_LIST_FROM_QUERY(33,',
'                           CARD_BANK ,',
'                          ''SELECT   bankname, bankcode FROM acbnkmas WHERE compcode = :compcode ORDER BY bankname, bankcode'',',
'                          ''style="width:250px"class="u-TF-item u-TF-item--text" '',',
'                          NULL,',
'                          NULL,',
'                          NULL,',
'                          ''f33_'' || LPAD (ROWNUM, 4, ''0'')',
'                          ) CARDBANK,',
'     apex_item.text (34,',
'                          CARD_REMARKS,',
'                          80,',
'                          100,',
'                          ''style="width:250px"class="u-TF-item u-TF-item--text" '',',
'                          ''f34_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) CCREMARK,',
'    apex_item.text (35,',
'                          jvlcamnt,',
'                          80,',
'                          100,',
'                          ''style="width:110px" onchange="addTotal();" class="u-TF-item u-TF-item--text"'',',
'                          ''f35_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) TRNLCAMT,',
'apex_item.text (36,',
'                          SERLNUMB,',
'                          80,',
'                          100,',
'                          ''style="width:50px"  readonly="readonly"class="u-TF-item u-TF-item--text"'',',
'                          ''f36_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) SERLNUMB',
'  FROM installment_collection',
'  where compcode = 1',
'UNION ALL',
'SELECT  APEX_ITEM.SELECT_LIST (31,',
'                          NULL,',
'                          ''Visa Card;VISA,Master Card;MASTER,American Express Card;AMEX,DBBL Nexus Card;NEXUS'',',
'                          ''style="width:150px"class="u-TF-item u-TF-item--text"'',',
'                           NULL,',
'                           NULL,',
'                           NULL,',
'                          ''f31_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) CARDTYPE,',
'      apex_item.text (32,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:110px" onchange="serilnocard(this)"class="u-TF-item u-TF-item--text"'',',
'                          ''f32_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) CRDTCADN,',
'   APEX_ITEM.SELECT_LIST_FROM_QUERY(33,',
'                           NULL ,',
'                          ''SELECT   bankname, bankcode FROM acbnkmas WHERE compcode = :compcode ORDER BY bankname, bankcode'',',
'                          ''style="width:250px"class="u-TF-item u-TF-item--text" '',',
'                          NULL,',
'                          NULL,',
'                          NULL,',
'                          ''f33_'' || LPAD (ROWNUM, 4, ''0'')',
'                          ) CARDBANK,',
'     apex_item.text (34,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:250px" class="u-TF-item u-TF-item--text"'',',
'                          ''f34_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) CCREMARK,',
'    apex_item.text (35,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:110px" onchange="addTotal();"class="u-TF-item u-TF-item--text" '',',
'                          ''f35_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) TRNLCAMT,',
'apex_item.text (36,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:50px" onchange="serilnocard(this)" readonly="readonly"class="u-TF-item u-TF-item--text" '',',
'                          ''f36_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) SERLNUMB',
'  FROM DUAL',
'CONNECT BY LEVEL <= 4'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88532405468075050)
,p_query_column_id=>1
,p_column_alias=>'CARDTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Card Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88532770832075053)
,p_query_column_id=>2
,p_column_alias=>'CRDTCADN'
,p_column_display_sequence=>2
,p_column_heading=>'Card No.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88533229456075053)
,p_query_column_id=>3
,p_column_alias=>'CARDBANK'
,p_column_display_sequence=>4
,p_column_heading=>'Card Bank'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88855378245686364)
,p_query_column_id=>4
,p_column_alias=>'CCREMARK'
,p_column_display_sequence=>5
,p_column_heading=>'Card Remark'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88855818297686364)
,p_query_column_id=>5
,p_column_alias=>'TRNLCAMT'
,p_column_display_sequence=>6
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88574029106171007)
,p_query_column_id=>6
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>1
,p_column_heading=>'Srl.'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87531032356030676)
,p_plug_name=>'Cheque'
,p_parent_plug_id=>wwv_flow_api.id(87499529435803718)
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44730782874528100)
,p_name=>'Payment Details'
,p_parent_plug_id=>wwv_flow_api.id(87531032356030676)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'ROWNUM rwid,',
'"DOCNUMBR",',
'"PAYMENT_MODE",',
'"CHEQUENO",',
'"CHEQUEDT",',
'"BANKNAME",',
'"BANKBRCH",',
'"ACCTCODE",',
'"JVLCAMNT",',
'"COMPCODE",',
'"DOCTTYPE",',
'"SUBTTYPE",',
'"DOCTDATE",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"SERLNUMB",',
'"SUBLEDCD",',
'"REF_CODE",',
'"REFDOCNO",',
'NULL bank_name,',
'NULL branch_name',
'from "#OWNER#"."INSTALLMENT_COLLECTION"',
'where compcode=1',
'--:COMPCODE',
'--and DOCNUMBR=nvl(:P122_COLLECTION_DOCNUMBER,1)',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P122_COLLECTION_DOCNUMBER'
,p_lazy_loading=>false
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44731210384528114)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44731620016528119)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>3
,p_column_heading=>'Rowid'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(90894547435551005)
,p_query_column_id=>3
,p_column_alias=>'RWID'
,p_column_display_sequence=>23
,p_column_heading=>'Rwid'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44732009028528119)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>4
,p_column_heading=>'Receipt#'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_cattributes=>'readonly=true'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(89413058093484598)
,p_query_column_id=>5
,p_column_alias=>'PAYMENT_MODE'
,p_column_display_sequence=>18
,p_column_heading=>'Payment Mode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'PAYMENT_MODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44732824556528120)
,p_query_column_id=>6
,p_column_alias=>'CHEQUENO'
,p_column_display_sequence=>5
,p_column_heading=>'Cheque No.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>17
,p_cattributes=>'onchange="serilnoassign(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'CHEQUENO'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44733119811528120)
,p_query_column_id=>7
,p_column_alias=>'CHEQUEDT'
,p_column_display_sequence=>6
,p_column_heading=>'Cheque Date'
,p_use_as_row_header=>'N'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'NO'
,p_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'CHEQUEDT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(89614732990892443)
,p_query_column_id=>8
,p_column_alias=>'BANKNAME'
,p_column_display_sequence=>7
,p_column_heading=>'Bank Code'
,p_use_as_row_header=>'N'
,p_display_as=>'POPUPKEY_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT bankcode AS DIS,bankname  AS RET',
'    FROM acbnkmas',
'   WHERE compcode = :compcode',
'ORDER BY 1'))
,p_lov_show_nulls=>'YES'
,p_column_width=>3
,p_cattributes=>'onchange="f_set_multi_items_tabular(this.value,this.id.substr(this.id.indexOf(''_'')+1))"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'BANKNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(89615166898892446)
,p_query_column_id=>9
,p_column_alias=>'BANKBRCH'
,p_column_display_sequence=>10
,p_column_heading=>'Branch Code'
,p_use_as_row_header=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT BRANCH_NAME AS DIS, ROUTING_NO AS RET',
'    FROM ACBNKVW',
'   WHERE  BANKCODE = :G_POPUP_PARENT_VALUE',
'ORDER BY 1'))
,p_lov_show_nulls=>'YES'
,p_column_width=>8
,p_cattributes=>'onchange="f_set_multi_items_tabular_branch(this.value,this.id.substr(this.id.indexOf(''_'')+1))"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'BANKBRCH'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT BRANCH_NAME, ROUTING_NO bankcode',
'    FROM ACBNKVW',
'   WHERE compcode = :compcode AND BANKCODE = :BANKNAME',
'ORDER BY 1'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(89615544954892446)
,p_query_column_id=>10
,p_column_alias=>'ACCTCODE'
,p_column_display_sequence=>12
,p_column_heading=>'Debit Account'
,p_use_as_row_header=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ACCTNAME, ACCTCODE',
'  FROM SYCHRTAC',
' WHERE COMPCODE = :COMPCODE AND CASHBANK IN (''B'', ''C'')'))
,p_lov_show_nulls=>'YES'
,p_column_width=>35
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'ACCTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(89551378941817242)
,p_query_column_id=>11
,p_column_alias=>'JVLCAMNT'
,p_column_display_sequence=>15
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>15
,p_cattributes=>'onchange="addTotal();"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'JVLCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44738338093528126)
,p_query_column_id=>12
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>9
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44738680848528126)
,p_query_column_id=>13
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>14
,p_column_heading=>'Docttype'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44739165331528126)
,p_query_column_id=>14
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>13
,p_column_heading=>'Subttype'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44739565817528128)
,p_query_column_id=>15
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>16
,p_column_heading=>'Doctdate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44739892256528128)
,p_query_column_id=>16
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>17
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44740344813528128)
,p_query_column_id=>17
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>19
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44740675993528128)
,p_query_column_id=>18
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>2
,p_column_heading=>'Srl.'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>5
,p_cattributes=>'readonly=true'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(89413778680484598)
,p_query_column_id=>19
,p_column_alias=>'SUBLEDCD'
,p_column_display_sequence=>20
,p_column_heading=>'Subledcd'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'SUBLEDCD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(89910181514755287)
,p_query_column_id=>20
,p_column_alias=>'REF_CODE'
,p_column_display_sequence=>21
,p_column_heading=>'Ref Code'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'REF_CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(89933794548788377)
,p_query_column_id=>21
,p_column_alias=>'REFDOCNO'
,p_column_display_sequence=>22
,p_column_heading=>'Refdocno'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INSTALLMENT_COLLECTION'
,p_ref_column_name=>'REFDOCNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(90738546830314041)
,p_query_column_id=>22
,p_column_alias=>'BANK_NAME'
,p_column_display_sequence=>8
,p_column_heading=>'Bank Name'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>30
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(90738879905314044)
,p_query_column_id=>23
,p_column_alias=>'BRANCH_NAME'
,p_column_display_sequence=>11
,p_column_heading=>'Branch Name'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>20
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87531460027033066)
,p_plug_name=>'DD/PO'
,p_parent_plug_id=>wwv_flow_api.id(87499529435803718)
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(88315651807137867)
,p_name=>'DD/PO'
,p_parent_plug_id=>wwv_flow_api.id(87531460027033066)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	',
'SELECT  apex_item.text (21,',
'                          DDPO_NO,',
'                          80,',
'                          100,',
'                          ''style="width:150px" onchange="serilnoddpo(this)"class="u-TF-item u-TF-item--text"'',',
'                          ''f21_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) DDPONUMB,',
'      apex_item.DATE_POPUP (22,',
'                          rownum,',
'                          DDPO_DATE,',
'                          ''DD-MON-YYYY'',',
'                          80,',
'                          100,',
'                          ''style="width:100px" class="u-TF-item u-TF-item--text"'',',
'                          ''f22_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) DDPODATE,',
'',
'APEX_ITEM.SELECT_LIST_FROM_QUERY(23,',
'                           BANKNAME ,',
'                          ''SELECT   bankname, bankcode FROM acbnkmas WHERE compcode = :compcode ORDER BY bankname, bankcode'',',
'                          ''style="width:250px"class="u-TF-item u-TF-item--text" '',',
'                          NULL,',
'                          NULL,',
'                          NULL,',
'                          ''f23_'' || LPAD (ROWNUM, 4, ''0'')',
'                          ) BANKNAME,',
'',
'APEX_ITEM.SELECT_LIST_FROM_QUERY(24,',
'                           BANKBRCH ,',
'                          ''SELECT   bankname, bankcode FROM acnbkmas WHERE compcode = :COMPCODE AND bankcdfk = :BANKNAME'',',
'                          ''style="width:200px"class="u-TF-item u-TF-item--text" '',',
'                          NULL,',
'                          NULL,',
'                          NULL,',
'                          ''f24_'' || LPAD (ROWNUM, 4, ''0'')',
'                          ) BRANCHNM,',
'    apex_item.text (25,',
'                          JVLCAMNT,',
'                          80,',
'                          100,',
'                          ''style="width:110px" onchange="addTotal();"class="u-TF-item u-TF-item--text"'',',
'                          ''f25_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) TRNLCAMT,',
'apex_item.text (26,',
'                          SERLNUMB,',
'                          80,',
'                          100,',
'                          ''style="width:50px" readonly="readonly"class="u-TF-item u-TF-item--text" '',',
'                          ''f26_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) SERLNUMB,',
'APEX_ITEM.SELECT_LIST_FROM_QUERY(27,',
'                           ACCTCODE ,',
'                          ''SELECT   bankname, bankcode FROM acbnkmas WHERE compcode = :compcode ORDER BY bankname, bankcode'',',
'                          ''style="width:200px"class="u-TF-item u-TF-item--text" '',',
'                          NULL,',
'                          NULL,',
'                          NULL,',
'                          ''f27_'' || LPAD (ROWNUM, 4, ''0'')',
'                          ) CCREMARK',
'  FROM installment_collection',
'  where compcode = 1',
'UNION ALL',
'SELECT  apex_item.text (21,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:150px" onchange="serilnoddpo(this)"class="u-TF-item u-TF-item--text"'',',
'                          ''f21_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) DDPONUMB,',
'     apex_item.DATE_POPUP (22,',
'                          rownum,',
'                          NULL,',
'                          ''DD-MON-YYYY'',',
'                          80,',
'                          100,',
'                          ''style="width:100px"class="u-TF-item u-TF-item--text" '',',
'                          ''f22_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) DDPODATE,',
'    APEX_ITEM.SELECT_LIST_FROM_QUERY(23,',
'                           NULL ,',
'                          ''SELECT   bankname, bankcode FROM acbnkmas WHERE compcode = :compcode ORDER BY bankname, bankcode'',',
'                          ''style="width:250px"class="u-TF-item u-TF-item--text" '',',
'                          NULL,',
'                          NULL,',
'                          NULL,',
'                          ''f23_'' || LPAD (ROWNUM, 4, ''0'')',
'                          ) BANKNAME,',
'',
'APEX_ITEM.SELECT_LIST_FROM_QUERY(24,',
'                           NULL ,',
'                          ''SELECT   bankname, bankcode FROM acnbkmas WHERE compcode = :COMPCODE AND bankcdfk = :BANKNAME'',',
'                          ''style="width:200px"class="u-TF-item u-TF-item--text" '',',
'                          NULL,',
'                          NULL,',
'                          NULL,',
'                          ''f24_'' || LPAD (ROWNUM, 4, ''0'')',
'                          ) BRANCHNM,',
'    apex_item.text (25,',
'                          NULL,',
'                          80,',
'                          100,',
'                          ''style="width:110px" onchange="addTotal();"class="u-TF-item u-TF-item--text"'',',
'                          ''f25_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) TRNLCAMT,',
'apex_item.text (26,',
'                         NULL,',
'                          80,',
'                          100,',
'                          ''style="width:50px" readonly="readonly"class="u-TF-item u-TF-item--text"'',',
'                          ''f26_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) SERLNUMB,',
'APEX_ITEM.SELECT_LIST_FROM_QUERY(27,',
'                           NULL ,',
'                          ''SELECT   bankname, bankcode FROM acbnkmas WHERE compcode = :compcode ORDER BY bankname, bankcode'',',
'                          ''style="width:200px"class="u-TF-item u-TF-item--text" '',',
'                          NULL,',
'                          NULL,',
'                          NULL,',
'                          ''f27_'' || LPAD (ROWNUM, 4, ''0'')',
'                          ) CCREMARK',
'  FROM DUAL',
'CONNECT BY LEVEL <= 4'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88829032943620619)
,p_query_column_id=>1
,p_column_alias=>'DDPONUMB'
,p_column_display_sequence=>2
,p_column_heading=>'DD/PO No.'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88829374953620621)
,p_query_column_id=>2
,p_column_alias=>'DDPODATE'
,p_column_display_sequence=>3
,p_column_heading=>'DD/PO Date'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88829816620620621)
,p_query_column_id=>3
,p_column_alias=>'BANKNAME'
,p_column_display_sequence=>4
,p_column_heading=>'Bank Name'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88830244507620621)
,p_query_column_id=>4
,p_column_alias=>'BRANCHNM'
,p_column_display_sequence=>5
,p_column_heading=>'Branch Name'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88830621523620621)
,p_query_column_id=>5
,p_column_alias=>'TRNLCAMT'
,p_column_display_sequence=>7
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88635018318021744)
,p_query_column_id=>6
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>1
,p_column_heading=>'Srl.'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88909304245980779)
,p_query_column_id=>7
,p_column_alias=>'CCREMARK'
,p_column_display_sequence=>6
,p_column_heading=>'Credit Account'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44753907913528156)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(44730782874528100)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44744325527528137)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(87219424908935137)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:122::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44745167067528139)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(87219424908935137)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44744744476528139)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(87219424908935137)
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
 p_id=>wwv_flow_api.id(50008860959370726)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(87219424908935137)
,p_button_name=>'RUN_REPORT2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Run Invoice Report'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:144:&SESSION.::&DEBUG.::P144_COMPCODE,P144_DOCNUMCRD:&P122_COMPCODE.,&P122_COLLECTION_DOCNUMBER.'
,p_button_condition=>'P122_COLLECTION_DOCNUMBER'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44768706945528197)
,p_branch_action=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(87802621177013925)
,p_branch_action=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44754335740528156)
,p_name=>'P122_INVOICE_TOTAL'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(44730782874528100)
,p_prompt=>' Total Invoice Amount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>14
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44754751866528164)
,p_name=>'P122_TOTAL_PAID'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(44730782874528100)
,p_prompt=>'Total Amount Entered'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>14
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44755089942528165)
,p_name=>'P122_REMAINING_AMT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(44730782874528100)
,p_prompt=>'Remaining Amount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>14
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44755920493528165)
,p_name=>'P122_INVOICE_NO'
,p_item_sequence=>22
,p_item_plug_id=>wwv_flow_api.id(87280442425243906)
,p_prompt=>'Invoice No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44756286331528165)
,p_name=>'P122_ITEMCODE'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(87150029195316637)
,p_prompt=>'Itemcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44756695740528167)
,p_name=>'P122_CUSTOMER_ID'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_api.id(87274041625103224)
,p_prompt=>'Customer Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44757076131528167)
,p_name=>'P122_SALES_RATE'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_api.id(44755480868528165)
,p_prompt=>'Sales Rate'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>23
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44757511543528167)
,p_name=>'P122_CURRENCY'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_api.id(44755480868528165)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>1
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
 p_id=>wwv_flow_api.id(44757944079528167)
,p_name=>'P122_INVOICE_DATE'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(44755480868528165)
,p_prompt=>'Invoice Date'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44758287418528169)
,p_name=>'P122_ITEM_NAME'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_api.id(87150029195316637)
,p_prompt=>'Item Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44758694796528169)
,p_name=>'P122_CUSTOMER_NAME'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_api.id(87274041625103224)
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44759147837528169)
,p_name=>'P122_UPDOCTYPE'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_api.id(44755480868528165)
,p_prompt=>'Updoctype'
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
 p_id=>wwv_flow_api.id(44759490988528169)
,p_name=>'P122_UPSUBTYPE'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_api.id(44755480868528165)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44759932861528169)
,p_name=>'P122_PAYMENT_MODE'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_api.id(44755480868528165)
,p_prompt=>'Receive Type'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44760351478528169)
,p_name=>'P122_WARECPDE'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_api.id(87274041625103224)
,p_prompt=>'Cost Center'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_colspan=>2
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44760679261528169)
,p_name=>'P122_COSTCODE'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_api.id(44755480868528165)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44761101142528172)
,p_name=>'P122_REFNUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(87280442425243906)
,p_prompt=>'Ref. No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'2,7,23,22,6,9,16,19,17,20,18,21,11,12,13,14,25,26',
'',
'P122_INVOICE_NO,P122_WARECPDE,P122_WHRNAME,P122_EMIAMNT,P122_CUSTOMER_ID,P122_CUSTOMER_NAME,P122_DWNPAYAMNT,P122_TOTALNOINSTLL,P122_LOANAMNT,P122_TOTLINTRSTAMNT,P122_INTRSRATE,P122_TOTLAMNTPAY,P122_ITEMCODE,P122_ITEM_NAME,P122_TOTALPRICE,P122_QUANTIT'
||'Y,P122_BRAND,P122_UNITPRICE'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44761515567528173)
,p_name=>'P122_REFDATE'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_api.id(44755480868528165)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44761895734528173)
,p_name=>'P122_BANK_CODE'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_api.id(44755480868528165)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44762347487528173)
,p_name=>'P122_BANK_NAME'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_api.id(44755480868528165)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44762679781528173)
,p_name=>'P122_BRANCH_NAME'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_api.id(44755480868528165)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44763140648528175)
,p_name=>'P122_BRANCH_CODE'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_api.id(44755480868528165)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44763564029528175)
,p_name=>'P122_CARD_BANK'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_api.id(44755480868528165)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44763943678528175)
,p_name=>'P122_QUANTITY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(87280442425243906)
,p_prompt=>'Quantity'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>29
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>2
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50008039128339108)
,p_name=>'P122_HOSTNAME'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(44755480868528165)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50008461784339111)
,p_name=>'P122_URL'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_api.id(44755480868528165)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87156399055621899)
,p_name=>'P122_TDUEAMNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(87280442425243906)
,p_prompt=>'Total Due Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87156765084621904)
,p_name=>'P122_EMIAMNT'
,p_item_sequence=>26
,p_item_plug_id=>wwv_flow_api.id(87280442425243906)
,p_prompt=>'Invoice Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87157109745621904)
,p_name=>'P122_RECVAMNT'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_api.id(87280802619247093)
,p_prompt=>'Receipt Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="height:50px;width:200px;font-size:15pt;text-align: center;margin-right: 12px;"readonly=true'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47630058251858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>'style="height:70px;width:20px;font-size:15pt;"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87157488632621904)
,p_name=>'P122_RECVDATE'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(87280442425243906)
,p_prompt=>'Receive Date'
,p_source=>'sysdate'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>35
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87188785154721102)
,p_name=>'P122_WHRNAME'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_api.id(87274041625103224)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>3
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87190795624779387)
,p_name=>'P122_DWNPAYAMNT'
,p_item_sequence=>32
,p_item_plug_id=>wwv_flow_api.id(87280442425243906)
,p_prompt=>'Down Payment'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87191161143779406)
,p_name=>'P122_TOTALNOINSTLL'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_api.id(87280442425243906)
,p_prompt=>'No. of Installment'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87191481325779406)
,p_name=>'P122_LOANAMNT'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(87149421350309534)
,p_prompt=>'Loan Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87191905723779407)
,p_name=>'P122_TOTLINTRSTAMNT'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(87280442425243906)
,p_prompt=>'Interest Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87192300853779407)
,p_name=>'P122_INTRSRATE'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(87149421350309534)
,p_prompt=>'Interest Rate'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87192699982779407)
,p_name=>'P122_TOTLAMNTPAY'
,p_item_sequence=>38
,p_item_plug_id=>wwv_flow_api.id(87280442425243906)
,p_prompt=>'Installment Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87193147176779407)
,p_name=>'P122_FATHERNAME'
,p_item_sequence=>941
,p_item_plug_id=>wwv_flow_api.id(87274041625103224)
,p_prompt=>'Father Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87193515056779407)
,p_name=>'P122_ADDRESS'
,p_item_sequence=>949
,p_item_plug_id=>wwv_flow_api.id(87274041625103224)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87196910368875994)
,p_name=>'P122_BRAND'
,p_item_sequence=>1021
,p_item_plug_id=>wwv_flow_api.id(87150029195316637)
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87197167214875994)
,p_name=>'P122_MODEL'
,p_item_sequence=>1022
,p_item_plug_id=>wwv_flow_api.id(87150029195316637)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87197655706875994)
,p_name=>'P122_UNITPRICE'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(87150029195316637)
,p_prompt=>'Unit Price'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87198050921875995)
,p_name=>'P122_TOTALPRICE'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(87150029195316637)
,p_prompt=>'Total Price'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87198368685875995)
,p_name=>'P122_REMARKS'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(87150029195316637)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87499880963830648)
,p_name=>'P122_PAYMENT_MODE_RADIO'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(87499529435803718)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Mode '
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87534692949280071)
,p_name=>'P122_MODE'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(87499529435803718)
,p_prompt=>'Mode'
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
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87542670147493135)
,p_name=>'P122_CHEQUENO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(87531032356030676)
,p_prompt=>'Cheque No.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87543057733493135)
,p_name=>'P122_CHEQUEDT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(87531032356030676)
,p_prompt=>'Cheque Date'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87543403761493135)
,p_name=>'P122_BANKNAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(87531032356030676)
,p_prompt=>'Bank Name'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87543833951493136)
,p_name=>'P122_BRANCHNM'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(87531032356030676)
,p_prompt=>'Branch Name'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87544257846493136)
,p_name=>'P122_DEBITBANK'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(87531032356030676)
,p_prompt=>'Debit Bank'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87544656723493136)
,p_name=>'P122_PAIDAMNT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(87531032356030676)
,p_prompt=>'Paid Amount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87545494187513023)
,p_name=>'P122_DEBITACCUNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(87530381261023869)
,p_prompt=>'Debite Account'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ACCTNAME, ACCTCODE',
'  FROM SYCHRTAC',
' WHERE COMPCODE = :COMPCODE AND CASHBANK IN (''B'', ''C'')'))
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47630058251858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87545769492513023)
,p_name=>'P122_CSHPAIDAMNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(87530381261023869)
,p_prompt=>'Paid Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'onchange="addTotal();"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47630058251858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87546283533535180)
,p_name=>'P122_CRDTCADN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(87530709463027206)
,p_prompt=>'Card No.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87546638291535180)
,p_name=>'P122_CARDTYPE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(87530709463027206)
,p_prompt=>'Card Type'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87547008954535181)
,p_name=>'P122_CARDBANK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(87530709463027206)
,p_prompt=>'Card Bank'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87547463091535181)
,p_name=>'P122_CCREMARK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(87530709463027206)
,p_prompt=>'Remark'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87547835597535181)
,p_name=>'P122_DEBITBANK1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(87530709463027206)
,p_prompt=>'Debit Bank'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87548265474535181)
,p_name=>'P122_PAIDAMOCRD'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(87530709463027206)
,p_prompt=>'Paid Amount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87548749093552505)
,p_name=>'P122_DDPONO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(87531460027033066)
,p_prompt=>'DD/PO No.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87549066384552505)
,p_name=>'P122_DDPDATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(87531460027033066)
,p_prompt=>'DD/PO Date'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87549443753552505)
,p_name=>'P122_DEBITACCUNT1'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(87531460027033066)
,p_prompt=>'Debit Account'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87549807736552505)
,p_name=>'P122_PAIDDDPO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(87531460027033066)
,p_prompt=>'Paid Amount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88073360006228251)
,p_name=>'P122_MOBILENO'
,p_item_sequence=>944
,p_item_plug_id=>wwv_flow_api.id(87274041625103224)
,p_prompt=>'Mobile No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88073605242228253)
,p_name=>'P122_EMAILID'
,p_item_sequence=>946
,p_item_plug_id=>wwv_flow_api.id(87274041625103224)
,p_prompt=>'Email ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88185261384465110)
,p_name=>'P122_REGISTRTION'
,p_item_sequence=>1026
,p_item_plug_id=>wwv_flow_api.id(87150029195316637)
,p_prompt=>'Registration No.'
,p_source=>'temporary_application_item'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88185521996465122)
,p_name=>'P122_CHASSISNO'
,p_item_sequence=>1024
,p_item_plug_id=>wwv_flow_api.id(87150029195316637)
,p_prompt=>'Chassis No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88185925454465122)
,p_name=>'P122_ENGINENO'
,p_item_sequence=>1023
,p_item_plug_id=>wwv_flow_api.id(87150029195316637)
,p_prompt=>'Engine No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88192546910595436)
,p_name=>'P122_SALSCODE'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_api.id(87274041625103224)
,p_prompt=>'Sales Person'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88192800769595438)
,p_name=>'P122_SALSNAME'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_api.id(87274041625103224)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88193171111595439)
,p_name=>'P122_AREA'
,p_item_sequence=>942
,p_item_plug_id=>wwv_flow_api.id(87274041625103224)
,p_prompt=>'Area'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88204146893800464)
,p_name=>'P122_CUSTMIMAGE'
,p_item_sequence=>1170
,p_item_plug_id=>wwv_flow_api.id(88194329484624668)
,p_prompt=>'&P122_CUSTOMER_ID.&nbsp;&nbsp;:&nbsp;&nbsp;&P122_CUSTOMER_NAME.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="border: 1px;height: 100px;width: 130px;margin-left: 34px;"readonly=true'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47630058251858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88551932244924391)
,p_name=>'P122_DOCNUMCRD'
,p_item_sequence=>1180
,p_item_plug_id=>wwv_flow_api.id(87530709463027206)
,p_prompt=>'Docnumcrd'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88552207499924394)
,p_name=>'P122_DOCDATECRD'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_api.id(87530709463027206)
,p_prompt=>'Docdatecrd'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88552653742924394)
,p_name=>'P122_CARDSRL'
,p_item_sequence=>1200
,p_item_plug_id=>wwv_flow_api.id(87530709463027206)
,p_prompt=>'Cardsrl'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88572544115105845)
,p_name=>'P122_TEST'
,p_item_sequence=>1210
,p_item_plug_id=>wwv_flow_api.id(87531460027033066)
,p_prompt=>'Test'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
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
 p_id=>wwv_flow_api.id(89487457060742212)
,p_name=>'P122_COMPCODE'
,p_item_sequence=>1220
,p_item_plug_id=>wwv_flow_api.id(87280442425243906)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Compcode'
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
 p_id=>wwv_flow_api.id(89888749124288308)
,p_name=>'P122_COLLECTION_DOCNUMBER'
,p_item_sequence=>1230
,p_item_plug_id=>wwv_flow_api.id(87150029195316637)
,p_prompt=>'Xurl'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(89888994159292404)
,p_name=>'P122_XURLTEST'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_api.id(87150029195316637)
,p_prompt=>'Xurltest'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(90296254574623122)
,p_tabular_form_region_id=>wwv_flow_api.id(44730782874528100)
,p_validation_name=>'validation on cheque amount'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'cheque VARCHAR2 (4000);',
'amount NUMBER;',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f04.COUNT',
'   LOOP',
'    ',
'amount := apex_application.g_f15 (i);',
'cheque := apex_application.g_f04 (i);',
'if cheque is not null and amount is null  then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Cheque Amount cannot be null''',
'            ||apex_application.g_f04.COUNT;',
'end if;',
'   END LOOP;',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'Error'
,p_when_button_pressed=>wwv_flow_api.id(44744744476528139)
,p_exec_cond_for_each_row=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44765032323528184)
,p_name=>'add blank row javascript'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44765467288528189)
,p_event_id=>wwv_flow_api.id(44765032323528184)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $mydiv = $("#f01_0011");',
'    if ($mydiv.length){}',
'else',
'{',
'for (i = 0; i <=3; i++)',
'{',
'javascript:addRow();',
'};',
'};',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44765881251528194)
,p_name=>'get bank name'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P122_BANK_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44766378092528194)
,p_event_id=>wwv_flow_api.id(44765881251528194)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT bankname',
'     INTO :P122_BANK_NAME',
'     FROM acbnkmas',
'    WHERE COMPCODE = :COMPCODE ',
'      AND bankcode = :P122_BANK_CODE;',
'END;'))
,p_attribute_02=>'P122_BANK_CODE'
,p_attribute_03=>'P122_BANK_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44766847739528195)
,p_name=>'get branch name'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P122_BRANCH_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44767354493528195)
,p_event_id=>wwv_flow_api.id(44766847739528195)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT   bankname',
'into :P122_BRANCH_NAME',
'    FROM acnbkmas',
'   WHERE compcode = :COMPCODE ',
'     AND BANKCODE= :P122_BRANCH_CODE;',
'end;',
''))
,p_attribute_02=>'P122_BRANCH_CODE'
,p_attribute_03=>'P122_BRANCH_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44767699713528195)
,p_name=>'calculate remaining amount'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P122_TOTAL_PAID'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44768210600528197)
,p_event_id=>wwv_flow_api.id(44767699713528195)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P122_REMAINING_AMT:=:P122_INVOICE_TOTAL-:P122_TOTAL_PAID;',
'END;'))
,p_attribute_02=>'P122_INVOICE_TOTAL,P122_TOTAL_PAID'
,p_attribute_03=>'P122_REMAINING_AMT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50009295358392535)
,p_name=>'get host name'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(50008860959370726)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50009753318392537)
,p_event_id=>wwv_flow_api.id(50009295358392535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P122_HOSTNAME'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'location.hostname'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50010359586409263)
,p_name=>'set url to p122_url'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(50008860959370726)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50010745744409263)
,p_event_id=>wwv_flow_api.id(50010359586409263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P122_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'DECLARE',
'',
'   v_url        VARCHAR2 (500);',
'  v_doctype  VARCHAR2 (2) :=''BL'';',
'',
'BEGIN',
'v_url :=''http://'' || :P122_HOSTNAME|| '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paraform=NO&report=D:\Orbrgs_Web\nm\bin\nminvmny.rdf'' || ''&p13='' || :P122_INVOICE_NO || ''&p15=SI&p17=44'';',
'',
'',
'return v_url;',
'  ',
'END;'))
,p_attribute_07=>'P122_HOSTNAME'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     -- v_url := v_url || ''&p13='' || :P125_SERVICE_NO || ''&p14='' || :P125_SERVICE_DOCTYPE || ''&p15='' ||:P125_SERVICE_SUBTYPE||''&p75=''||:P125_DOCNUMBR;',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50011873736413082)
,p_name=>'assign url to modal page'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(50008860959370726)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50012298402413082)
,p_event_id=>wwv_flow_api.id(50011873736413082)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':XURLTEST:=:P122_URL;',
'end;'))
,p_attribute_02=>'P122_URL'
,p_attribute_03=>'XURLTEST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50027894014488126)
,p_name=>'call modal page'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(50008860959370726)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50028329837488128)
,p_event_id=>wwv_flow_api.id(50027894014488126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P122_URL'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:65:&APP_SESSION.:::65:::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
,p_attribute_08=>'100'
,p_attribute_09=>'100'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(87537535965355102)
,p_name=>'click radio button'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P122_PAYMENT_MODE_RADIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87537898440355102)
,p_event_id=>wwv_flow_api.id(87537535965355102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P122_MODE:=:P122_PAYMENT_MODE_RADIO;',
'end;'))
,p_attribute_02=>'P122_PAYMENT_MODE_RADIO'
,p_attribute_03=>'P122_MODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(87581392562259455)
,p_name=>'Show Cash'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P122_PAYMENT_MODE_RADIO'
,p_condition_element=>'P122_PAYMENT_MODE_RADIO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'CSH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87581838688259460)
,p_event_id=>wwv_flow_api.id(87581392562259455)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(87530381261023869)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87591007407362759)
,p_event_id=>wwv_flow_api.id(87581392562259455)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(87530709463027206)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87591395528365467)
,p_event_id=>wwv_flow_api.id(87581392562259455)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(87531032356030676)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87591771122367587)
,p_event_id=>wwv_flow_api.id(87581392562259455)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(87531460027033066)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(87585054260302437)
,p_name=>'show card'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P122_PAYMENT_MODE_RADIO'
,p_condition_element=>'P122_PAYMENT_MODE_RADIO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'CRD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87585429156302438)
,p_event_id=>wwv_flow_api.id(87585054260302437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(87530709463027206)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87585934929302438)
,p_event_id=>wwv_flow_api.id(87585054260302437)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(87530381261023869)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87592502194375055)
,p_event_id=>wwv_flow_api.id(87585054260302437)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(87531032356030676)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87592898957376511)
,p_event_id=>wwv_flow_api.id(87585054260302437)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(87531460027033066)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(87586283482307892)
,p_name=>'show Check'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P122_PAYMENT_MODE_RADIO'
,p_condition_element=>'P122_PAYMENT_MODE_RADIO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'CHQ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87586713018307892)
,p_event_id=>wwv_flow_api.id(87586283482307892)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(87531032356030676)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87587209465307897)
,p_event_id=>wwv_flow_api.id(87586283482307892)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(87530381261023869)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87593639527382234)
,p_event_id=>wwv_flow_api.id(87586283482307892)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(87530709463027206)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87594047728384134)
,p_event_id=>wwv_flow_api.id(87586283482307892)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(87531460027033066)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(87587587199312617)
,p_name=>'show DDPO'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P122_PAYMENT_MODE_RADIO'
,p_condition_element=>'P122_PAYMENT_MODE_RADIO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'DPO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87588023155312617)
,p_event_id=>wwv_flow_api.id(87587587199312617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(87531460027033066)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87588469687312617)
,p_event_id=>wwv_flow_api.id(87587587199312617)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(87530381261023869)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87595442303389768)
,p_event_id=>wwv_flow_api.id(87587587199312617)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(87530709463027206)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87595845694391605)
,p_event_id=>wwv_flow_api.id(87587587199312617)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(87531032356030676)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(89889190086296401)
,p_name=>'set value on P10_XURL'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(50008860959370726)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(89889623790296412)
,p_event_id=>wwv_flow_api.id(89889190086296401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P122_XURL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'location.hostname;'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(89890009194298727)
,p_name=>'set value on P10_XURLTEST'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(50008860959370726)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(89890452816298727)
,p_event_id=>wwv_flow_api.id(89890009194298727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P122_XURLTEST'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error      VARCHAR2 (4000);',
'   sale         VARCHAR2 (4000);',
'   item         VARCHAR2 (4000);',
'   v_url        VARCHAR2 (500);',
'   v_devdoc     VARCHAR2 (500);',
'   v_gatdoc     VARCHAR2 (500);',
'   l_order_id   VARCHAR2 (50);',
'   l_seq        NUMBER;',
'BEGIN',
'',
'      v_url :=',
'            ''http://''',
'         || :p122_xurl',
'         || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\Orbrgs_Web\nm\bin\''',
'         || ''nmmonrcp.rdf''',
'         || ''&'';',
'      v_url := v_url || ''P0='' || :COMPCODE || ''P13='' || ''MR''|| ''P15='' || :P122_DOCNUMCRD;',
'return v_url;',
'',
'',
'  ',
'END;'))
,p_attribute_07=>'P10_XURL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(90093527474418694)
,p_name=>'new page'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(50008860959370726)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(90093871838418696)
,p_event_id=>wwv_flow_api.id(90093527474418694)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript: window.open(''http://10.11.201.70:8080/apex/f?p=105:144:&APP_SESSION.::::P144_COMPCODE,P144_DOCNUMCRD:&P122_COMPCODE.,&P122_COLLECTION_DOCNUMBER.'',''_blank'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(90278633012768568)
,p_name=>'refresh tabular form'
,p_event_sequence=>175
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f07"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(90279039618768569)
,p_event_id=>wwv_flow_api.id(90278633012768568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(44730782874528100)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(90279535271785963)
,p_event_id=>wwv_flow_api.id(90278633012768568)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $mydiv = $("#f01_0011");',
'    if ($mydiv.length){}',
'else',
'{',
'for (i = 0; i <=3; i++)',
'{',
'javascript:addRow();',
'};',
'};',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(90258338688684907)
,p_name=>'Set cascading LOV after refresh and onload'
,p_event_sequence=>180
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(44730782874528100)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(90258709898684959)
,p_event_id=>wwv_flow_api.id(90258338688684907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("[name=f10]").htmldbCascade(',
' "[name=f07]",',
' "GET_BRN_LOV");',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(90340016267914323)
,p_name=>'add rows after submit'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_bind_event_type=>'apexbeforepagesubmit'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(90340405792914327)
,p_event_id=>wwv_flow_api.id(90340016267914323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $mydiv = $("#f02_0004");',
'    if ($mydiv.length){}',
'else',
'{',
'for (i = 0; i <=3; i++)',
'{',
'javascript:addRow();',
'};'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(90368089416127198)
,p_name=>'Set Cascading Popup LOV'
,p_event_sequence=>200
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(44730782874528100)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(90368547330127200)
,p_event_id=>wwv_flow_api.id(90368089416127198)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("[name=f10]").htmldbCascadePopup(',
'"[name=f07]",',
'"G_POPUP_PARENT_VALUE"',
');'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(87857330906013973)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMPMTDTL'
,p_attribute_02=>'installment_collection'
,p_attribute_03=>'P122_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44752281668528153)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(44730782874528100)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'INSTALLMENT_COLLECTION'
,p_attribute_03=>'ROWID'
,p_attribute_05=>'CHEQUENO is not null'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44744744476528139)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44753094082528155)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(44730782874528100)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'INSTALLMENT_COLLECTION'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(87857708757013974)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMPMTDTL'
,p_attribute_02=>'NMPMTDTL'
,p_attribute_03=>'P122_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(88551198515866984)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Card'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vRow BINARY_INTEGER;',
'BEGIN',
'FOR I IN 1..APEX_APPLICATION.G_F36.COUNT LOOP ',
'',
'vRow := APEX_APPLICATION.G_F36(I);',
'--:P122_TEST:=APEX_APPLICATION.G_F36.COUNT;',
':P122_TEST:=',
'            :P122_TEST',
'         || CHR (10)',
'         || vRow',
'         || ''. '';',
'',
' IF APEX_APPLICATION.G_F36(I) = vRow',
'THEN',
'INSERT INTO INSTALLMENT_COLLECTION',
'                  (ACCTCODE, ADJAMTFC, ADJAMTLC, ADJUST_FLAG, BANKBRCH, ',
'                   BANKCODE, BANKNAME, CARD_BANK, CARD_REMARKS, CARD_TYPE, ',
'                   CHEQUEDT, CHEQUENO, COMPCODE, COSTCODE, CTRLMCRO, ',
'                   CURRCODE, DBCRCODE, DDPO_DATE, DDPO_NO, DOCNUMBR, ',
'                   DOCTDATE, DOCTTYPE, EMPLACCT, EXCGRATE, JVFCAMNT, ',
'                   JVLCAMNT, NARATION, OPRSTAMP, ORGAMTFC, ORGAMTLC, ',
'                   ORIGINAL_AMOUNT, PAYMENT_MODE, REF_CODE, REFDCSTY, ',
'                   REFDOCDT, REFDOCNO, REFDOCTY, SERLNUMB, STATCODE, ',
'                   SUBLEDCD, SUBTTYPE, TIMSTAMP, TOTAL_RECEIPT_AMOUNT',
'                  )',
'                  VALUES (APEX_APPLICATION.g_f32(vRow), NULL, NULL, NULL, NULL, ',
'                   NULL, NULL, APEX_APPLICATION.g_f33(vRow), APEX_APPLICATION.g_f34(vRow), APEX_APPLICATION.g_f31(vRow), ',
'                   NULL, NULL, :COMPCODE, NULL, NULL, ',
'                   NULL, NULL, NULL, NULL, :P122_DOCNUMCRD, ',
'                   :P122_RECVDATE, ''MR'', NULL, NULL, NULL, ',
'                   APEX_APPLICATION.g_f35(vRow), NULL, :APP_USER, :P122_CSHPAIDAMNT, :P122_CSHPAIDAMNT, ',
'                   NULL, ''CRD'', NULL, NULL, ',
'                   NULL, :P122_INVOICE_NO, NULL, APEX_APPLICATION.g_f36(vRow), ''Y'', ',
'                   :P122_CUSTOMER_ID, 1, SYSDATE, :P122_RECVAMNT',
'                  );',
' END IF;',
' END LOOP;',
'COMMIT;',
'  END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44744744476528139)
,p_process_success_message=>'insert cash'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(88634529245011019)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert DD/PO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vRow BINARY_INTEGER;',
'BEGIN',
'FOR I IN 1..APEX_APPLICATION.G_F26.COUNT LOOP ',
'',
'vRow := APEX_APPLICATION.G_F26(I);',
'--:P122_TEST:=APEX_APPLICATION.G_F36.COUNT;',
':P122_TEST:=',
'            :P122_TEST',
'         || CHR (10)',
'         || vRow',
'         || ''. '';',
'',
' IF APEX_APPLICATION.G_F26(I) = vRow',
'THEN',
'INSERT INTO INSTALLMENT_COLLECTION',
'                  (ACCTCODE, ADJAMTFC, ADJAMTLC, ADJUST_FLAG, BANKBRCH, ',
'                   BANKCODE, BANKNAME, CARD_BANK, CARD_REMARKS, CARD_TYPE, ',
'                   CHEQUEDT, CHEQUENO, COMPCODE, COSTCODE, CTRLMCRO, ',
'                   CURRCODE, DBCRCODE, DDPO_DATE, DDPO_NO, DOCNUMBR, ',
'                   DOCTDATE, DOCTTYPE, EMPLACCT, EXCGRATE, JVFCAMNT, ',
'                   JVLCAMNT, NARATION, OPRSTAMP, ORGAMTFC, ORGAMTLC, ',
'                   ORIGINAL_AMOUNT, PAYMENT_MODE, REF_CODE, REFDCSTY, ',
'                   REFDOCDT, REFDOCNO, REFDOCTY, SERLNUMB, STATCODE, ',
'                   SUBLEDCD, SUBTTYPE, TIMSTAMP, TOTAL_RECEIPT_AMOUNT',
'                  )',
'                  VALUES (APEX_APPLICATION.g_f27(vRow), NULL, NULL, NULL, APEX_APPLICATION.g_f24(vRow), ',
'                   NULL, APEX_APPLICATION.g_f23(vRow),NULL, NULL, NULL, ',
'                   NULL, NULL, :COMPCODE, NULL, NULL, ',
'                   NULL, NULL, APEX_APPLICATION.g_f22(vRow), APEX_APPLICATION.g_f21(vRow), :P122_DOCNUMCRD, ',
'                   :P122_RECVDATE, ''MR'', NULL, NULL, NULL, ',
'                   APEX_APPLICATION.g_f25(vRow), NULL, :APP_USER, NULL, NULL, ',
'                   NULL, ''DDP'', NULL, NULL, ',
'                   NULL, :P122_INVOICE_NO, NULL, APEX_APPLICATION.g_f26(vRow), ''Y'', ',
'                   :P122_CUSTOMER_ID, 1, SYSDATE, :P122_RECVAMNT',
'                  );',
' END IF;',
' END LOOP;',
'COMMIT;',
'  END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44744744476528139)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(89178241046801542)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Cash'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P122_CSHPAIDAMNT > 0 then',
'INSERT INTO INSTALLMENT_COLLECTION',
'                  (ACCTCODE, ADJAMTFC, ADJAMTLC, ADJUST_FLAG, BANKBRCH, ',
'                   BANKCODE, BANKNAME, CARD_BANK, CARD_REMARKS, CARD_TYPE, ',
'                   CHEQUEDT, CHEQUENO, COMPCODE, COSTCODE, CTRLMCRO, ',
'                   CURRCODE, DBCRCODE, DDPO_DATE, DDPO_NO, DOCNUMBR, ',
'                   DOCTDATE, DOCTTYPE, EMPLACCT, EXCGRATE, JVFCAMNT, ',
'                   JVLCAMNT, NARATION, OPRSTAMP, ORGAMTFC, ORGAMTLC, ',
'                   ORIGINAL_AMOUNT, PAYMENT_MODE, REF_CODE, REFDCSTY, ',
'                   REFDOCDT, REFDOCNO, REFDOCTY, SERLNUMB, STATCODE, ',
'                   SUBLEDCD, SUBTTYPE, TIMSTAMP, TOTAL_RECEIPT_AMOUNT)',
'           VALUES (NULL, NULL, NULL, NULL, NULL, ',
'                   NULL, NULL, NULL, NULL, NULL, ',
'                   NULL, NULL, :COMPCODE, NULL, NULL, ',
'                   NULL, NULL, NULL, NULL, :P122_DOCNUMCRD, ',
'                   :P122_RECVDATE, ''MR'', NULL, NULL, NULL, ',
'                   :P122_CSHPAIDAMNT, NULL, :APP_USER, :P122_CSHPAIDAMNT, :P122_CSHPAIDAMNT, ',
'                   NULL, ''CSH'', NULL, NULL, ',
'                   NULL, :P122_INVOICE_NO, NULL, ''00001'', ''Y'', ',
'                   :P122_CUSTOMER_ID, 1, SYSDATE, :P122_RECVAMNT',
'                  );',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44744744476528139)
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
 p_id=>wwv_flow_api.id(90258057297664268)
,p_process_sequence=>80
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_BRN_LOV'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_sql VARCHAR2(32700);',
'BEGIN',
'  IF APEX_APPLICATION.G_x07 IS NOT NULL THEN',
'    APEX_UTIL.SET_SESSION_STATE(''G_TEMP'', APEX_APPLICATION.G_x07);',
'    l_sql := ''',
'  SELECT BRANCH_NAME as "DIS", ROUTING_NO as "RET"',
'    FROM ACBNKVW',
'   WHERE compcode = :COMPCODE AND BANKCODE = :G_TEMP',
'ORDER BY 1',
'    '';',
'  APEX_UTIL.JSON_FROM_SQL(l_sql);',
'  ELSE',
'    HTP.prn(''{"row":[]}'');',
'  END IF;',
'  APEX_UTIL.SET_SESSION_STATE(''G_TEMP'', NULL);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90368965199136948)
,p_process_sequence=>80
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DUMMY'
,p_process_sql_clob=>'HTP.PRN(''OK'');'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90801522326397598)
,p_process_sequence=>80
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set_Multi_Items_Tabular_122'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_bankname   acbnkmas.bankname%TYPE;',
'   v_bankcode   acbnkmas.bankcode%TYPE;',
'',
'   CURSOR cur_c',
'   IS',
'      SELECT bankname, bankcode',
'    FROM acbnkmas',
'   WHERE compcode = ''100''',
'and bankcode= :temporary_application_item;',
'BEGIN',
'   FOR c IN cur_c',
'   LOOP',
'      v_bankname := c.bankname;',
'      v_bankcode := c.bankcode;',
'   END LOOP;',
'',
'   OWA_UTIL.mime_header (''text/xml'', FALSE);',
' --  HTP.p (''Cache-Control: no-cache'');',
' --  HTP.p (''Pragma: no-cache'');',
'   OWA_UTIL.http_header_close;',
'   HTP.prn (''<body>'');',
'   HTP.prn (''<desc>this xml genericly sets multiple items</desc>'');',
'   HTP.prn (''<item id="f08_'' || :t_rownum || ''">'' || v_bankname || ''</item>'');',
'   HTP.prn (''</body>'');',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(88573316270149422)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert when dd/po'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
'',
'docnumber_generation(:compcode, ''NM'', ''MR'',1, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''),null,''NM'', newno);',
' ',
':P122_DOCNUMCRD:=newno;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44744744476528139)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44752755125528155)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(44730782874528100)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert into installment_collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
':COMPCODE:=:P122_COMPCODE;',
':OPRSTAMP:=:app_user;',
':TIMSTAMP:=sysdate;',
':DOCTDATE:=sysdate;',
':DOCTTYPE:=''MR'';',
':SUBTTYPE:=1;',
':REFDOCTY:=:P122_UPDOCTYPE;',
':COSTCODE :=:P122_COSTCODE;',
':REFDOCNO :=:P122_INVOICE_NO;',
':REF_CODE :=:P122_REFNUMBER;',
':REFDOCDT :=:P122_REFDATE;',
':SUBLEDCD := :P122_CUSTOMER_ID;',
':PAYMENT_MODE :=''CHQ'';',
'--docnumber_generation(:compcode, ''NM'', :DOCTTYPE,:SUBTTYPE, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''),null,''NM'', newno);',
':DOCNUMBR:= :P122_DOCNUMCRD;  ',
':SERLNUMB :=:SERLNUMB;',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,''Others Problem'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44744744476528139)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44764594560528183)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'check duplicate payment mode'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vAccNo1    VARCHAR2(1024);',
'vAccNo2    VARCHAR2(1024);',
'vAmount    NUMBER;',
'',
'BEGIN',
'--RAISE_APPLICATION_ERROR(-20010,''vAccNo1''  );',
'',
' FOR i IN 1 .. APEX_APPLICATION.g_f03.COUNT',
' LOOP',
'   vAccNo1  := APEX_APPLICATION.g_f03(i);',
'',
'  FOR j IN 1 .. APEX_APPLICATION.g_f03.COUNT',
'  LOOP',
'  BEGIN',
'    vAccNo2  := APEX_APPLICATION.g_f03(j);',
'    ',
'',
'    IF vAccNo1  = vAccNo2 ',
'    AND i <> j ',
'    THEN',
'      RAISE_APPLICATION_ERROR(-20010,''Payment mode cannot be duplicate.''||vAccNo1  );',
'    END IF;',
'  END;',
'  END LOOP;',
' END LOOP; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44744744476528139)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
