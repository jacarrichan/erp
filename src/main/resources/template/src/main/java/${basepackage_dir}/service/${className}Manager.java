<#include "/java_copyright.include">
<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
package ${basepackage}.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

<#include "/java_imports.include">
@SuppressWarnings(value = "all")
@Service
@Transactional
public class ${className}Manager extends BaseManager<${className},${table.idColumn.javaType}>{

	private ${className}Dao ${classNameLower}Dao;
	//增加setXXXX()方法,spring就可以通过autowire自动设置对象属性(默认byName,请注意大小写)
	public void set${className}Dao(${className}Dao dao) {
		this.${classNameLower}Dao = dao;
	}
	public EntityDao getEntityDao() {
		return this.${classNameLower}Dao;
	}
	
	@Transactional(readOnly=true)
	public Page<${className}>  findPage(${className}Query query) {
		return ${classNameLower}Dao.findPage(query);
	}
	
<#list table.columns as column>
	<#if column.unique && !column.pk>
	@Transactional(readOnly=true)
	public ${className} getBy${column.columnName}(${column.javaType} v) {
		return ${classNameLower}Dao.getBy${column.columnName}(v);
	}	
	
	</#if>
</#list>
}
