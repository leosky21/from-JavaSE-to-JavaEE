<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style type="text/css">
form div {
	margin: 5px;
}
</style>
<link rel="stylesheet"
	href="${pageContext.request.contextPath  }/jquery-easyui-1.3.5/themes/icon.css"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/jquery-easyui-1.3.5/themes/default/easyui.css"
	type="text/css"></link>

</head>

<body>
	<form id="ff" method="post">
		<div>
			<label for="name">类别名称:</label> <input type="text" name="type" />
		</div>
		<div>
			<label>所属管理员：</label> <input id="cc" name="account.id" />
		</div>
		<div>
			<label for="hot">热点:</label> 是<input type="radio" name="hot"
				value="true" />&nbsp; 否 <input type="radio" name="hot" value="true" />
		</div>
		<div>
			<a id="btn" href="#" class="easyui-linkbutton"
				data-options="iconCls:'icon-add'">添加</a>
		</div>
	</form>
	<input type="hidden" id="shopValue" value="${pageContext.request.contextPath }"> 
</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath  }/jquery-easyui-1.3.5/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath  }/jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath  }/jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	var shop = $('#shopValue').val();

	$(function() {
		$("input[name=type]").validatebox({
			required : true,
			missingMessage : '请输入类别名称'
		});

		//对管理员的下拉列表框进行远程加载
		$("#cc").combobox({
			//将请求发送给accountAction中的query方法处理，这里需要将处理好的数据返回到这边来显示了 ，所以后台需要将数据打包成json格式发过来
			url : shop + '/user/account/query.action',
			valueField : 'id',
			textField : 'login', //我们下拉列表中显示的是管理员的登录名
			panelHeight : 'auto', //自适应高度
			panelWidth : 120, //下拉列表是两个组件组成的
			width : 120, //要同时设置两个宽度才行
			editable : false //下拉框不允许编辑
		});
		//窗体弹出默认时禁用验证
		$("#ff").form("disableValidation");
		//注册button的事件
		$("#btn").click(function() {
			//开启验证
			$("#ff").form("enableValidation");
			//如果验证成功，则提交数据
			if ($("#ff").form("validate")) {
				//调用submit方法提交数据
				$("#ff").form('submit', {
					url : shop + '/category/save.action',
					success : function() {
						//如果成功了，关闭当前窗口
						parent.$("#win").window("close");
						//刷新页面 :获取aindex-->iframe-->datagrid
						//var dg = parent.$("iframe[title='类别管理']").contains().find("#dg").datagrid("reload");
						parent.$("iframe[title='类别管理']").get(0).contentWindow.$("#dg").datagrid("reload");
					//alert(dg);
					}
				});
			}
		});
	});
</script>
</html>