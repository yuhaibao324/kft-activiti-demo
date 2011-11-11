<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.wsria.demo.activiti.util.account.UserUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<%@ include file="/common/global.jsp"%>
	<%@ include file="/common/meta.jsp" %>
	<title>请假管理</title>
	<%@ include file="/common/include-base-styles.jsp" %>
	<%@ include file="/common/include-jquery-ui-theme.jsp" %>
	<link href="${ctx }/js/common/plugins/jqGrid/css/ui.jqgrid.css" type="text/css" rel="stylesheet"/>
	<link href="${ctx }/js/common/plugins/qtip/jquery.qtip.min.css" type="text/css" rel="stylesheet" />
	<%@ include file="/common/include-custom-styles.jsp" %>

	<script src="${ctx }/js/common/jquery.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/jui/jquery-ui.min.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/jqGrid/i18n/grid.locale-cn.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/jqGrid/jquery.jqGrid.min.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/qtip/jquery.qtip.min.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/form/jquery.form.pack.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/validate/jquery.validate.pack.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/validate/messages_cn.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/datepicker/WdatePicker.js" type="text/javascript"></script>
	<script src='${ctx }/js/common/common.js' type="text/javascript"></script>
	<script src='${ctx }/js/module/oa/leave/leave-list.js' type="text/javascript"></script>
</head>
<body>
	<table id="list"></table>
	<div id="pager"></div>
	
	<div id="leaveFormTemplate" class="template">
		<form id="leaveForm" action="${ctx }/oa/leave/leave!save.action" method="post">
			<input type="hidden" id="id" name="id"/>
			<input type="hidden" id="userId" name="userId" value="${cuserId }"/>
			<input type="hidden" id="userName" name="userName" value="${cuserName }"/>
			<table>
				<tr>
					<td class="label" width="80">工号：</td>
					<td>${cuserId }</td>
					<td class="label" width="80">姓名：</td>
					<td>${cuserName }&nbsp;/&nbsp;技术部</td>
				</tr>
				<tr>
					<td class="label">开始时间：</td>
					<td><input id="startTime" name="startTime" readonly="readonly" class="ui-widget-content" style="cursor: pointer" /></td>
					<td class="label">结束时间：</td>
					<td><input id="endTime" name="endTime" readonly="readonly" class="ui-widget-content" style="cursor: pointer" /></td>
				</tr>
				<tr>
					<td class="label">假种：</td>
					<td>
						<select id="leaveType" name="leaveType">
							<option>公休</option>
							<option>调休</option>
							<option>事假</option>
							<option>病假</option>
							<option>产假</option>
							<option>婚假</option>
							<option>其他</option>
						</select>
					</td>
					<td class="label">天数：</td>
					<td><input id="days" name="days" class="ui-widget-content" /></td>
				</tr>
				<tr>
					<td class="label">请假原因：</td>
					<td colspan="5">
						<textarea id="reason" name="reason" class="ui-widget-content" style="width: 80%;height: 100px"></textarea>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>