<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.sxxy.po.LinkManInfo"%>
<%@page import="com.sxxy.po.CustomerInfo"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'linkman_update.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
		<LINK href="<%=basePath%>resource/css/admin.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="<%=basePath%>resource/js/CheckForm.js"></script>
	<script type="text/javascript" src="<%=basePath%>resource/js/My97DatePicker/WdatePicker.js"></script>
		<title>客户联系人</title>

		<style type="text/css">
.auto-style1 {
	margin-left: 0px;
}
</style>

	</head>

	<body>
		<form action="<%=basePath%>servlet/LinkManAddServlet " method="post" name="form1" onsubmit="return checkForm('form1');">
			<table class=editTable cellSpacing=1 cellPadding=0 width="100%"
				align=center border=0>
				<tr class=editHeaderTr>
					<td class=editHeaderTd colSpan=7 style="height: 49px">
						请输入详细信息
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							关联客户：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<select name="userName" style="width: 145px">
							<%
								List<CustomerInfo> customerList = (List<CustomerInfo>) request
										.getAttribute("customerList");
							%>
							<%
								for (int i = 0; i < customerList.size(); i++) {
									CustomerInfo sourceInfo = customerList.get(i);
							%>
							<option value="<%=sourceInfo.getCustomerId()%>"><%=sourceInfo.getCustomerName()%></option>
							<%
								}
							%>
						</select>
						&nbsp;
					</td>
					<td bgcolor="#FFFDF0" style="width: 13%">
						<div align="center">
							联系人名称：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text"  style="width: 145px" maxlength="20"  name="linkManName"  check_str="联系人名称">
						&nbsp;
					</td>
				</tr>

				<tr>
					<td bgcolor="#FFFDF0">
						<div align="center">
							联系人性别：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="radio" name="LinkManSex" value="男" checked="checked" />
						男&nbsp;&nbsp;
						<input type="radio" name="LinkManSex" value="女" />
						女
						<br />
					</td>
						<td bgcolor="#FFFDF0" style="width: 13%">
						<div align="center">
							联系人年龄：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text" style="width: 145px" name="linkManAge"  check_str="联系人年龄"  check_type="integer">
					</td>
				</tr>
			
				<tr>
					<td bgcolor="#FFFDF0" style="width: 13%">
						<div align="center">
							联系职位：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text" style="width: 145px"  maxlength="20" name="linkManJob">
					</td>
					<td bgcolor="#FFFDF0" style="width: 13%">
						<div align="center">
							联系人手机：
						</div>
					</td>
					<td colspan="3" bgcolor="#FFFFFF">
						<input type="text" style="width: 145px"  maxlength="11"  name="linkManMobile">
						&nbsp;
					</td>
				</tr>

				<tr>
					<td bgcolor="#FFFDF0" style="width: 13%">
						<div align="center">
							与客户关系：
						</div>
					</td>
					<td colspan="5" bgcolor="#FFFFFF">
						<input type="text"style="width: 145px"   maxlength="20"  name="linkManRelation">
						&nbsp;
					</td>
				</tr>
			</table>
			<table class=editTable cellSpacing=1 cellPadding=0 width="100%"
				align=center border=0>
				<tr bgcolor="#ECF3FD">
					<td width="25%"></td>
					<td width="17%"><input type="submit" name="submit"  value="添加"></td>
					<td width="17%"><input type="reset" name="reset"  value="重置"></td>
					<td width="4%"><input type="button" name="button"  onClick="history.back() "  value="返回"></td>
					<td width="43%"></td>
				</tr>
			</table>

		</form>
	</body>
</html>
