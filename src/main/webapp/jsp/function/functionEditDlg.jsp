<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<script type="text/javascript">
	$(function() {
		$("#pid").combotree({
			width:171,
			url:"function/functionAction!findAllFunctionLists.action",
			idFiled:'id',
		 	textFiled:'name',
		 	parentField:'pid',
		 	onSelect:function(node){
		 		$("#pname").val(node.text);
		 	}
		});
		$("#iconCls").combobox({
			width:171,
			data:$.iconData,
			formatter: function(v){
				return $.formatString('<span class="{0}" style="display:inline-block;vertical-align:middle;width:16px;height:16px;"></span>{1}', v.value, v.value);
			}
		});
		var tempId=$("#tempId").val();
		if(tempId=="F"){
			$("#pid").combotree("disable");
		}
		$("#form").form({
			url :"function/functionAction!persistenceFunctionDig.action",
			onSubmit : function() {
				parent.$.messager.progress({
					title : '提示',
					text : '数据处理中，请稍后....'
				});
				var isValid = $(this).form('validate');
				if (!isValid) {
					parent.$.messager.progress('close');
				}
				return isValid;
			},
			success : function(result) {
				parent.$.messager.progress('close');
				result = $.parseJSON(result);
				if (result.status) {
					parent.reload;
					parent.$.modalDialog.openner.treegrid('reload');//之所以能在这里调用到parent.$.modalDialog.openner_datagrid这个对象，是因为role.jsp页面预定义好了
					parent.$.modalDialog.handler.dialog('close');
					parent.$.messager.show({
						title : result.title,
						msg : result.message,
						timeout : 1000 * 2
					});
				}else{
					parent.$.messager.show({
						title :  result.title,
						msg : result.message,
						timeout : 1000 * 2
					});
				}
			}
		});
	});
	
</script>
<style>
	.easyui-textbox{
		height: 18px;
		width: 170px;
		line-height: 16px;
	    /*border-radius: 3px 3px 3px 3px;*/
	    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
	    transition: border 0.2s linear 0s, box-shadow 0.2s linear 0s;
	}
	
	textarea:focus, input[type="text"]:focus{
	    border-color: rgba(82, 168, 236, 0.8);
	    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px rgba(82, 168, 236, 0.6);
	    outline: 0 none;
		}
		table {
	    background-color: transparent;
	    border-collapse: collapse;
	    border-spacing: 0;
	    max-width: 100%;
	}

	fieldset {
	    border: 0 none;
	    margin: 0;
	    padding: 0;
	}
	legend {
	    -moz-border-bottom-colors: none;
	    -moz-border-left-colors: none;
	    -moz-border-right-colors: none;
	    -moz-border-top-colors: none;
	    border-color: #E5E5E5;
	    border-image: none;
	    border-style: none none solid;
	    border-width: 0 0 1px;
	    color: #999999;
	    line-height: 20px;
	    display: block;
	    margin-bottom: 10px;
	    padding: 0;
	    width: 100%;
	}
	input, textarea {
	    font-weight: normal;
	}
	table ,th,td{
		text-align:left;
		padding: 6px;
	}
</style>
<div class="easyui-layout" data-options="fit:true,border:false">
	<div data-options="region:'center',border:false" title="" style="overflow: hidden;padding: 10px;">
		<input name="tempId" id="tempId"  type="hidden" value="<%=request.getParameter("tempId") %>"/>
		<form id="form" method="post">
			<fieldset>
				<legend><img src="extend/fromedit.png" style="margin-bottom: -3px;"/> 程式编辑</legend>
				<input name="permissionId" id="permissionId"  type="hidden"/>
				<input name="created" id="created"  type="hidden"/>
				<input name="creater" id="creater"  type="hidden"/>
				<input name="status" id="status"  type="hidden"/>
				<input name="state" id="state"  type="hidden"/>
				 <table>
					 <tr>
					    <th>程式名称</th>
						<td><input name="name" id="name" placeholder="请输入程式名称" class="easyui-textbox easyui-validatebox" type="text"/></td>
						<th>父程式名称</th>
						<td><input name="pid"  class="easyui-textbox" id="pid" type="text"/><input name="pname" id="pname"  type="hidden"/></td>
						
					 </tr>
					 <tr>
					    <th>排序编码</th>
						<td><input name="sort" id="sort" type="text" class="easyui-textbox easyui-validatebox" required="required"/></td>
						<th>程式图标</th>
						<td><input id="iconCls" name="iconCls" type="text"/></td>
					 </tr>
					  <tr>
					    <th>程式路径</th>
						<td><input id="url" name="url" type="text" class="easyui-textbox easyui-validatebox" required="required"/></td>
						<th>程式编码</th>
						<td><input id="myid" name="myid" type="text" class="easyui-textbox easyui-validatebox" required="required"/></td>
					 </tr>
					 <tr>
						<th>程式类型</th>
						<td>
							<select id="type" class="easyui-combobox" name="type" style="width:171px;" data-options="required:true">
								<option value="F">菜单</option>
								<option value="O">操作</option>
							</select>
						</td>
						<th>是否启用</th>
						<td><select id="isused" class="easyui-combobox" name="isused" style="width:171px;" data-options="required:true">
								<option value="Y">是</option>
								<option value="N">否</option>
							</select>
						</td>
					</tr>
					 <tr>
						<th>描述</th>
						<td colspan="3"><textarea class="easyui-textbox" name="description"  style="width: 435px;height: 100px;"></textarea></td>
					</tr>
				 </table>
			</fieldset>
		</form>
	</div>
</div>
