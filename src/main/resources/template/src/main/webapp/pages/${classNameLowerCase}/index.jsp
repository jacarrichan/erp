<%@page import="${basepackage}.domain.*" %>
<#include "/macro.include"/> 
<#include "/custom.include"/> 
<#assign className = table.className>   
<#assign classNameLowerCase = className?lower_case>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=${className}.TABLE_ALIAS%> 维护</title>
	
	<script src="<@jspEl 'ctx'/>/scripts/rest.js" ></script>
	<link href="<c:url value="/widgets/simpletable/simpletable.css"/>" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="<c:url value="/widgets/simpletable/simpletable.js"/>"></script>
	
	<script type="text/javascript" >
		$(document).ready(function() {
			// 分页需要依赖的初始化动作
			window.simpleTable = new SimpleTable('queryForm',<@jspEl 'page.thisPageNumber'/>,<@jspEl 'page.pageSize'/>);
		});
	</script>
</rapid:override>

<rapid:override name="content">
	<form id="queryForm" name="queryForm" method="get" style="display: inline;">
	<div class="queryPanel">
		<fieldset>
			<legend>搜索</legend>
			<table>
				<#list table.notPkColumns?chunk(4) as row>
				<tr>	
					<#list row as column>
					<#if !column.htmlHidden>	
					<td class="tdLabel"><%=${className}.ALIAS_${column.constantName}%></td>		
					<td>
						<#if column.isDateTimeColumn>
						<input value="<fmt:formatDate value='<@jspEl "query."+column.columnNameLower+'Begin'/>' pattern='<%=${className}.FORMAT_${column.constantName}%>'/>" onclick="WdatePicker({dateFmt:'<%=${className}.FORMAT_${column.constantName}%>'})" id="${column.columnNameLower}Begin" name="${column.columnNameLower}Begin"   />
						<input value="<fmt:formatDate value='<@jspEl "query."+column.columnNameLower+'End'/>' pattern='<%=${className}.FORMAT_${column.constantName}%>'/>" onclick="WdatePicker({dateFmt:'<%=${className}.FORMAT_${column.constantName}%>'})" id="${column.columnNameLower}End" name="${column.columnNameLower}End"   />
						<#else>
						<input value="<@jspEl "query."+column.columnNameLower/>" id="${column.columnNameLower}" name="${column.columnNameLower}" maxlength="${column.size}"  class="${column.noRequiredValidateString}"/>
						</#if>
					</td>
					</#if>
					</#list>
				</tr>	
				</#list>			
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='<@jspEl 'ctx'/>/${classNameLowerCase}'"/>
			<input type="button" class="stdButton" style="width:80px" value="新增" onclick="window.location = '<@jspEl 'ctx'/>/${classNameLowerCase}/new'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="doRestBatchDelete('<@jspEl 'ctx'/>/${classNameLowerCase}','items',document.forms.queryForm)"/>
		</div>
	
	</div>
	
	<div class="gridTable">
	
		<simpletable:pageToolbar page="<@jspEl 'page'/>">
		显示在这里是为了提示你如何自定义表头,可修改模板删除此行
		</simpletable:pageToolbar>
	
		<table width="100%"  border="0" cellspacing="0" class="gridBody">
		  <thead>
			  
			  <tr>
				<th style="width:1px;"> </th>
				<th style="width:1px;"><input type="checkbox" onclick="setAllCheckboxState('items',this.checked)"></th>
				
				<!-- 排序时为th增加sortColumn即可,new SimpleTable('sortColumns')会为tableHeader自动增加排序功能; -->
				<#list table.columns as column>
				<#if !column.htmlHidden>
				<th sortColumn="${column.sqlName}" ><%=${className}.ALIAS_${column.constantName}%></th>
				</#if>
				</#list>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="<@jspEl 'page.result'/>" var="item" varStatus="status">
		  	  
			  <tr class="<@jspEl "status.count % 2 == 0 ? 'odd' : 'even'"/>">
				<td><@jspEl 'page.thisPageFirstElementNumber + status.index'/></td>
				<td><input type="checkbox" name="items" value="<@jspEl 'item.' + table.pkColumn.columnNameLower/>"></td>
				
				<#list table.columns as column>
				<#if !column.htmlHidden>
				<td><#rt>
					<#compress>
					<#if column.isDateTimeColumn>
					<c:out value='<@jspEl "item."+column.columnNameLower+"String"/>'/>&nbsp;
					<#else>
					<c:out value='<@jspEl "item."+column.columnNameLower/>'/>&nbsp;
					</#if>
					</#compress>
				<#lt></td>
				</#if>
				</#list>
				<td>
					<a href="<@jspEl 'ctx'/>/${classNameLowerCase}/<@jspEl 'item.'+table.idColumn.columnNameFirstLower/>">查看</a>&nbsp;&nbsp;
					<a href="<@jspEl 'ctx'/>/${classNameLowerCase}/<@jspEl 'item.'+table.idColumn.columnNameFirstLower/>/edit">修改</a>&nbsp;&nbsp;
					<a href="<@jspEl 'ctx'/>/${classNameLowerCase}/<@jspEl 'item.'+table.idColumn.columnNameFirstLower/>" onclick="doRestDelete(this,'你确认删除?');return false;">删除</a>
				</td>
			  </tr>
			  
		  	  </c:forEach>
		  </tbody>
		</table>
	
		<simpletable:pageToolbar page="<@jspEl 'page'/>">
		显示在这里是为了提示你如何自定义表头,可修改模板删除此行
		</simpletable:pageToolbar>
		
	</div>
	</form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>
