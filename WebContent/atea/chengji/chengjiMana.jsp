<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		<link rel="stylesheet" href="<%=path%>/css/front.css" type="text/css"></link>
		<link rel="stylesheet" href="<%=path%>/css/ww.css" type="text/css"></link>
		<link rel="stylesheet" href="<%=path%>/css/theme.css" type="text/css"></link>
		
		<script type='text/javascript' src='<%=path %>/dwr/interface/kechengService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
        
        <script type="text/javascript" src="<%=path %>/My97DatePicker/WdatePicker.js"></script> 
		
		<style type="text/css">
	       .lbody{background:url(<%=path%>/img/lbg.jpg) right repeat-y #F4F7FB;color:#666666;margin-right:6px;}
	       .lmenu a{display:block;padding:7px 0px 7px 30px;; background:url(<%=path%>/img/circle.gif) no-repeat 15px -1px;}
	       .rpos{float:left;padding:3px 0px 3px 20px;background:url(<%=path%>/img/arrow.gif) center left no-repeat;}
	       .pn-lthead th{height:27px;background-image:url(<%=path%>/img/msg_bg.jpg);}
        </style>

       <script language="javascript">
           function init()
		   { 
		       kechengService.findKechengName(<s:property value="#session.tea.kechengId"/>,callbackKecheng);
		   }
		   
		   function callbackKecheng(data)
           {
              document.getElementById("kechengName").value=data;
           }
       </script>
	</head>
    <body onload="init()">
		<div class="body-box">
		    <table class="pn-ltable" width="100%" cellspacing="1" cellpadding="0" border="0">
				<thead class="pn-lthead">
					<tr>
						<th>
							课程
						</th>
						<th>
							分数
						</th>
						<th>
						   考试时间
						</th>
						<th>
						   考试类型
						</th>
					</tr>
				</thead>
				<tbody class="pn-ltbody" id="tbody">
					<s:iterator value="#request.chengjiList" id="chengji">
					<tr>
						<td align="center">
							<s:property value="#chengji.chengjiOne1"/><!-- //课程名称 -->
						</td>
						<td align="center">
							<s:property value="#chengji.kaoshifenshu"/>
						</td>
						<td align="center">
						    <s:property value="#chengji.kaoshishijian"/>
						</td>
						<td align="center">
						    <s:property value="#chengji.kaoshileixing"/>
						</td>
					</tr>
					</s:iterator>
				</tbody>
			</table>
			<%--<div class="pn-lnoresult">没有相关数据！</div>--%>
			<div class="pn-sp">
				<div class="clear"></div>
			</div>
			
			<div class="pn-lbopt" id="chengjiAdd">
				 <form action="<%=path %>/chengjiAdd.action" method="post"> 
				      <table width="100%" class="pn-ftable" cellpadding="2" cellspacing="1" border="0">
						<tr>
						     <td width="20%" class="pn-flabel pn-flabel-h">
						          课程：
				             <td width="80%" class="pn-fcontent">
					             <input type="text" readonly="readonly" name="kechengName" id="kechengName" value=""/>
					             <input type="hidden" name="kechengId" id="kechengId" value="<s:property value="#session.tea.kechengId"/>"/>
				             </td>
						</tr>
						<tr>
						    <td width="20%" class="pn-flabel pn-flabel-h">
						         分数：
						    </td>
						    <td width="80%" class="pn-fcontent">
						        <input type="text" name="kaoshifenshu" id="kaoshifenshu" size="22" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
						    </td>
						</tr>
						<tr>
						    <td width="20%" class="pn-flabel pn-flabel-h">
						        考试时间：
						    </td>
						    <td width="80%" class="pn-fcontent">
						        <input class="Wdate" readonly="true" type="text" id="kaoshishijian" name="kaoshishijian" onfocus="new WdatePicker(this)"/>
						    </td>
						</tr>
						<tr>
						    <td width="20%" class="pn-flabel pn-flabel-h">
						         考试类型：
						    </td>
						    <td width="80%" class="pn-fcontent">
						        <input type="text" name="kaoshileixing" id="kaoshileixing" size="22"/>
						    </td>
						</tr>
						<tr>
						    <td width="20%" class="pn-flabel pn-flabel-h">
						        &nbsp;
						    </td>
						    <td width="20%" class="pn-fcontent">
						       <input type="hidden" name="stuId" value="${requestScope.stuId}"/>
						       <input type="submit" value="提交" onclick="submitChengji()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
					 <br/>
					 <img src="<%=path %>/images/back.gif" onclick="javascript:history.go(-1);"/>
				 </form>
			</div>
		</div>
	</body>
</html>
