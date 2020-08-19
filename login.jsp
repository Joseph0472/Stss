<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
    <TITLE></TITLE>
    <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>


<STYLE type=text/css>
TD {
	FONT-SIZE: 9pt; FONT-family: 宋体
}
A:link {
	CURSOR: hand; COLOR: #000000; FONT-STYLE: normal; TEXT-DECORATION: none
}
A:visited {
	COLOR: #000000; FONT-STYLE: normal; TEXT-DECORATION: none
}
A:active {
	COLOR: #000000; FONT-STYLE: normal; TEXT-DECORATION: none
}
A:hover {
	COLOR: #3399ff
}
.style1 {	font-size: 14px;
	font-weight: bold;
}
#Layer1 {
	position:absolute;
	left:133px;
	top:155px;
	width:389px;
	height:336px;
	z-index:1;
}
</STYLE>
<script language="javascript">
	    function login()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入用户名");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 if(document.ThisForm.userType.value=="-1")
			 {
			 	alert("请选择登陆身份");
				document.ThisForm.userType.focus();
				return false;
			 }
			 
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,document.ThisForm.userType.value,callback);
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("用户名或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("通过验证");
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		    
		}
</script>
</HEAD>
<BODY style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-BOTTOM-STYLE: none" bgColor=#366ab5 style="overflow:hidden">
<form name="ThisForm" action="<%=path %>/login.action" method="POST">
<TABLE height="100%" cellSpacing=5 cellPadding=0 width="100%" align=center border=0>
  <TBODY>
  <TR>
      <TD vAlign=center align=middle><TABLE cellSpacing=0 cellPadding=0 width=778 align=center border=0>
        <TBODY>
          <TR>
            <TD colSpan=3 height=5><IMG height=5 src="<%=path %>/images/admin_1_1.gif" width=778></TD>
          </TR>
          <TR>
            <TD width=11><IMG height=450 src="<%=path %>/images/admin_left_1.gif" width=11></TD>
            <TD vAlign=top width=756 background="<%=path %>/images/admin_bg.gif"><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                <TBODY>
                  <TR>
                    <TD height=35>&nbsp;</TD>
                  </TR>
                </TBODY>
              </TABLE>
                <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                  <TBODY>
                    <TR>
                      <TD width=390 height=50><IMG height=50 src="<%=path %>/images/admin_2_1.gif" width=390></TD>
                      <TD>&nbsp;</TD>
                    </TR>
                  </TBODY>
                </TABLE>
              <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                  <TBODY>
                    <TR>
                      <TD height=54 valign="top" background="<%=path %>/images/admin_3_4.gif"><table width="70%"  border="0" align="right" cellpadding="0" cellspacing="0">
                          <tr>
                            <td><div style="FONT-WEIGHT: bold; FONT-SIZE: 23pt; FILTER: Glow(Color=#00347F,Strength=4); WIDTH: 100%; COLOR: #ffffff; font-family: 宋体">商务信息学院学生信息管理系统</div></td>
                          </tr>
                      </table></TD>
                    </TR>
                  </TBODY>
                </TABLE>
              <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                  <TBODY>
                    <TR>
                      <TD><IMG height=46 src="<%=path %>/images/admin_4_1.gif" width=440></TD>
                      <TD vAlign=top width=316 rowSpan=7><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                          <TBODY>
                            <TR>
                              <TD><IMG height=19 src="<%=path %>/images/admin_4_2_1.gif" width=314></TD>
                            </TR>
                            <TR>
                              <TD><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                                  <TBODY>
                                 
                                    <TR>
                                      <TD width=32><IMG height=188 src="<%=path %>/images/admin_4_2_2_1.gif" width=32></TD>
                                      <TD width=260 background="<%=path %>/images/admin_4_2_2_bg.gif">
                                      <TABLE style="FONT-SIZE: 12px" cellSpacing=0 cellPadding=0 width="92%" align=center border=0>
                                            <TR>
                                              <TD height=30 colSpan=2><span class="style1">用户登录 </span>
                                            <TR>
                                                  <TD width="10%"><img src="<%=path %>/images/icon_myalbum.gif" width="14" height="14"></TD>
                                                  <TD width="85%" height=30> 用户名：
                                                  <input name="userName" type="text" id="userName" size="15"></TD>
                                            </TR>
                                            <TR>
                                                  <TD><img src="<%=path %>/images/i_open.gif" width="15" height="13"></TD>
                                                  <TD height=30>密&nbsp;&nbsp;码：
                                                      <input name="userPw" type="password" id="userPw" size="17">
                                                  </TD>
                                            </TR>
					                        <TR>
                                                  <TD><img src="<%=path %>/images/i_open.gif" width="15" height="13"></TD>
                                                  <TD height=30>类&nbsp;&nbsp;型：
                                                      <select name="userType" id="userType" style='width:127px;'> 
                                                          <option value="-1" selected="selected">-请选择登陆身份-</option>
                                                          <option value="0">管理员</option>
                                                          <option value="1">老师</option>
                                                          <option value="2">学生</option>
                                                      </select>
                                                  </TD>
                                            </TR>
                                            <TR valign="bottom">
                                                  <TD height=50 colSpan=2 align="left">
                                                      <img onClick="login()" src="<%=path %>/images/login_19.gif">
                                                      <img id="indicator" src="<%=path %>/images/loading.gif" style="display:none"/>
                                                  </TD>
                                            </TR>
                                      </TABLE>
                                      </TD>
                                      <TD width=22><IMG height=188 src="<%=path %>/images/admin_4_2_2_2.gif" width=22></TD>
                                    </TR>
                              </TABLE></TD>
                            </TR>
                            <TR>
                              <TD vAlign=bottom width=314 background="" height=104><TABLE cellSpacing=0 cellPadding=0 width="100%" align=right border=0>
                                  <TBODY>
                                    <TR>
                                      <TD style="FONT-SIZE: 16px; COLOR: #ffffff" vAlign=top align=middle height=45><B></B></TD>
                                    </TR>
                                    <TR>
                                      <TD style="FONT-SIZE: 12px; COLOR: #ffffff" vAlign=bottom align=right>&nbsp;</TD>
                                    </TR>
                                  </TBODY>
                              </TABLE></TD>
                            </TR>
                          </TABLE></TD>
                    </TR>
                    <TR>
                      <TD><IMG height=40 src="<%=path %>/images/admin_5_1.gif" width=440></TD>
                    </TR>
                    <TR>
                      <TD><IMG height=50 src="<%=path %>/images/admin_6_1.gif" width=440></TD>
                    </TR>
                    <TR>
                      <TD><IMG height=50 src="<%=path %>/images/admin_7_1.gif" width=440></TD>
                    </TR>
                    <TR>
                      <TD><IMG height=51 src="<%=path %>/images/admin_8_1.gif" width=440></TD>
                    </TR>
                    <TR>
                      <TD><IMG height=39 src="<%=path %>/images/admin_9_1.gif" width=440></TD>
                    </TR>
                    <TR>
                      <TD><IMG height=35 src="<%=path %>/images/admin_10_1.gif" width=440></TD>
                    </TR>
                </TABLE></TD>
            <TD width=11><IMG height=450 src="<%=path %>/images/admin_right_1.gif" width=11></TD>
          </TR>
          <TR>
            <TD colSpan=3 height=13><IMG height=13 src="<%=path %>/images/admin_1_2.gif" width=778></TD>
          </TR>
        </TBODY>
      </TABLE>
  </TR></TBODY></TABLE>
 </FORM>
</body>
